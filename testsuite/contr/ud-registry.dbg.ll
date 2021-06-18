

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
%"$ParamDescr_5825" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_5826" = type { %ParamDescrString, i32, %"$ParamDescr_5825"* }
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
@"$stringlit_1734" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1739" = unnamed_addr constant [8 x i8] c"AdminSet"
@"$stringlit_1742" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_1750" = unnamed_addr constant [10 x i8] c"isApproved"
@"$stringlit_1795" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1800" = unnamed_addr constant [11 x i8] c"ApprovedFor"
@"$stringlit_1803" = unnamed_addr constant [4 x i8] c"user"
@"$stringlit_1811" = unnamed_addr constant [8 x i8] c"operator"
@"$stringlit_1819" = unnamed_addr constant [10 x i8] c"isApproved"
@"$stringlit_1834" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1839" = unnamed_addr constant [8 x i8] c"Approved"
@"$stringlit_1842" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_1857" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1862" = unnamed_addr constant [12 x i8] c"NewRegistrar"
@"$stringlit_1865" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_1893" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1898" = unnamed_addr constant [9 x i8] c"NewDomain"
@"$stringlit_1901" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_1909" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_1954" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1959" = unnamed_addr constant [10 x i8] c"Configured"
@"$stringlit_1962" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_1970" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_1978" = unnamed_addr constant [8 x i8] c"resolver"
@"$stringlit_1993" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1998" = unnamed_addr constant [5 x i8] c"Error"
@"$stringlit_2001" = unnamed_addr constant [3 x i8] c"msg"
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
@_creation_block = global i8* null
@initialOwner = global [20 x i8] zeroinitializer
@rootNode = global [32 x i8] zeroinitializer
@"$records_2635" = unnamed_addr constant [8 x i8] c"records\00"
@"$registrar_2645" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$approvals_2658" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_2670" = unnamed_addr constant [10 x i8] c"operators\00"
@"$admins_2686" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_2693" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_2846" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_2896" = unnamed_addr constant [26 x i8] c"Sender not root node owner"
@"$records_2936" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_2994" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$approvals_3094" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$stringlit_3140" = unnamed_addr constant [21 x i8] c"Sender not node owner"
@"$operators_3179" = unnamed_addr constant [10 x i8] c"operators\00"
@"$operators_3336" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3393" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3409" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_3443" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3528" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_3583" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_3588" = unnamed_addr constant [18 x i8] c"onConfigureSuccess"
@"$stringlit_3591" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_3598" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_3605" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_3612" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_3658" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$stringlit_3696" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_3701" = unnamed_addr constant [18 x i8] c"onConfigureFailure"
@"$stringlit_3704" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_3711" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_3719" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_3726" = unnamed_addr constant [10 x i8] c"_recipient"
@"$records_3775" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3791" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_3825" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3911" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_3968" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$records_4008" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4024" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_4058" = unnamed_addr constant [10 x i8] c"operators\00"
@"$approvals_4124" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$records_4153" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_4209" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4214" = unnamed_addr constant [17 x i8] c"onTransferSuccess"
@"$stringlit_4217" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_4224" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4231" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4238" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_4284" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$stringlit_4322" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4327" = unnamed_addr constant [17 x i8] c"onTransferFailure"
@"$stringlit_4330" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_4337" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4344" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4351" = unnamed_addr constant [10 x i8] c"_recipient"
@"$records_4398" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4414" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_4448" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_4530" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4595" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$records_4625" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_4682" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4687" = unnamed_addr constant [15 x i8] c"onAssignSuccess"
@"$stringlit_4690" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_4697" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_4704" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4711" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4718" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_4764" = unnamed_addr constant [45 x i8] c"Sender not parent owner, approved or operator"
@"$stringlit_4802" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4807" = unnamed_addr constant [15 x i8] c"onAssignFailure"
@"$stringlit_4810" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_4817" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_4824" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4832" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4839" = unnamed_addr constant [10 x i8] c"_recipient"
@"$admins_4886" = unnamed_addr constant [7 x i8] c"admins\00"
@"$records_4924" = unnamed_addr constant [8 x i8] c"records\00"
@"$records_4941" = unnamed_addr constant [8 x i8] c"records\00"
@"$registrar_4955" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$records_5216" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_5273" = unnamed_addr constant [12 x i8] c"Sender admin"
@"$admins_5312" = unnamed_addr constant [7 x i8] c"admins\00"
@"$registrar_5393" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$records_5433" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_5450" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$registrar_5514" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$stringlit_5612" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_5617" = unnamed_addr constant [8 x i8] c"register"
@"$stringlit_5620" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_5627" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_5635" = unnamed_addr constant [6 x i8] c"origin"
@"$stringlit_5642" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_5650" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_5657" = unnamed_addr constant [5 x i8] c"label"
@"$records_5705" = unnamed_addr constant [8 x i8] c"records\00"
@_tydescr_table = constant [28 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %_TyDescrTy_Typ* @"$TyDescr_Event_298", %_TyDescrTy_Typ* @"$TyDescr_Int64_280", %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ* @"$TyDescr_Uint256_290", %_TyDescrTy_Typ* @"$TyDescr_Uint32_278", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_304", %_TyDescrTy_Typ* @"$TyDescr_Uint64_282", %_TyDescrTy_Typ* @"$TyDescr_Bnum_294", %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ* @"$TyDescr_Map_322", %_TyDescrTy_Typ* @"$TyDescr_Exception_300", %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ* @"$TyDescr_Int256_288", %_TyDescrTy_Typ* @"$TyDescr_Int128_284", %_TyDescrTy_Typ* @"$TyDescr_Map_320", %_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", %_TyDescrTy_Typ* @"$TyDescr_Bystr_302", %_TyDescrTy_Typ* @"$TyDescr_Message_296", %_TyDescrTy_Typ* @"$TyDescr_Map_321", %_TyDescrTy_Typ* @"$TyDescr_Int32_276"]
@_tydescr_table_length = constant i32 28
@"$pname__scilla_version_5827" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_5828" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_5829" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_initialOwner_5830" = unnamed_addr constant [12 x i8] c"initialOwner"
@"$pname_rootNode_5831" = unnamed_addr constant [8 x i8] c"rootNode"
@_contract_parameters = constant [5 x %"$ParamDescr_5825"] [%"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_5827", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_278" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_5828", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_5829", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_294" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$pname_initialOwner_5830", i32 0, i32 0), i32 12 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pname_rootNode_5831", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306" }]
@_contract_parameters_length = constant i32 5
@"$tpname__amount_5832" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5833" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5834" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_5835" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_5836" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_setAdmin_5837" = unnamed_addr constant [5 x %"$ParamDescr_5825"] [%"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5832", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5833", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5834", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5835", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_5836", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318" }]
@"$tname_setAdmin_5838" = unnamed_addr constant [8 x i8] c"setAdmin"
@"$tpname__amount_5839" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5840" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5841" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5842" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_address_5843" = unnamed_addr constant [7 x i8] c"address"
@"$tparams_approve_5844" = unnamed_addr constant [5 x %"$ParamDescr_5825"] [%"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5839", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5840", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5841", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5842", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5843", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }]
@"$tname_approve_5845" = unnamed_addr constant [7 x i8] c"approve"
@"$tpname__amount_5846" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5847" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5848" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_5849" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_5850" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_approveFor_5851" = unnamed_addr constant [5 x %"$ParamDescr_5825"] [%"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5846", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5847", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5848", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5849", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_5850", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318" }]
@"$tname_approveFor_5852" = unnamed_addr constant [10 x i8] c"approveFor"
@"$tpname__amount_5853" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5854" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5855" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5856" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_owner_5857" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_5858" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_configureNode_5859" = unnamed_addr constant [6 x %"$ParamDescr_5825"] [%"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5853", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5854", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5855", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5856", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5857", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_5858", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }]
@"$tname_configureNode_5860" = unnamed_addr constant [13 x i8] c"configureNode"
@"$tpname__amount_5861" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5862" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5863" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5864" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_resolver_5865" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_configureResolver_5866" = unnamed_addr constant [5 x %"$ParamDescr_5825"] [%"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5861", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5862", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5863", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5864", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_5865", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }]
@"$tname_configureResolver_5867" = unnamed_addr constant [17 x i8] c"configureResolver"
@"$tpname__amount_5868" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5869" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5870" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5871" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_owner_5872" = unnamed_addr constant [5 x i8] c"owner"
@"$tparams_transfer_5873" = unnamed_addr constant [5 x %"$ParamDescr_5825"] [%"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5868", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5869", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5870", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5871", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5872", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }]
@"$tname_transfer_5874" = unnamed_addr constant [8 x i8] c"transfer"
@"$tpname__amount_5875" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5876" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5877" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_parent_5878" = unnamed_addr constant [6 x i8] c"parent"
@"$tpname_label_5879" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_5880" = unnamed_addr constant [5 x i8] c"owner"
@"$tparams_assign_5881" = unnamed_addr constant [6 x %"$ParamDescr_5825"] [%"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5875", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5876", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5877", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_parent_5878", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_5879", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_292" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5880", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }]
@"$tname_assign_5882" = unnamed_addr constant [6 x i8] c"assign"
@"$tpname__amount_5883" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5884" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5885" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_label_5886" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_5887" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_5888" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_bestow_5889" = unnamed_addr constant [6 x %"$ParamDescr_5825"] [%"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5883", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5884", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5885", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_5886", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_292" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5887", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_5888", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }]
@"$tname_bestow_5890" = unnamed_addr constant [6 x i8] c"bestow"
@"$tpname__amount_5891" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5892" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5893" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_5894" = unnamed_addr constant [7 x i8] c"address"
@"$tparams_setRegistrar_5895" = unnamed_addr constant [4 x %"$ParamDescr_5825"] [%"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5891", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5892", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5893", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5894", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308" }]
@"$tname_setRegistrar_5896" = unnamed_addr constant [12 x i8] c"setRegistrar"
@"$tpname__amount_5897" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5898" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5899" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_parent_5900" = unnamed_addr constant [6 x i8] c"parent"
@"$tpname_label_5901" = unnamed_addr constant [5 x i8] c"label"
@"$tparams_register_5902" = unnamed_addr constant [5 x %"$ParamDescr_5825"] [%"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5897", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5898", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5899", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_parent_5900", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_5901", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_292" }]
@"$tname_register_5903" = unnamed_addr constant [8 x i8] c"register"
@"$tpname__amount_5904" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5905" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5906" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5907" = unnamed_addr constant [4 x i8] c"node"
@"$tparams_onResolverConfigured_5908" = unnamed_addr constant [4 x %"$ParamDescr_5825"] [%"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5904", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_286" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5905", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5906", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_325" }, %"$ParamDescr_5825" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5907", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306" }]
@"$tname_onResolverConfigured_5909" = unnamed_addr constant [20 x i8] c"onResolverConfigured"
@_transition_parameters = constant [11 x %"$TransDescr_5826"] [%"$TransDescr_5826" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setAdmin_5838", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_5825"* getelementptr inbounds ([5 x %"$ParamDescr_5825"], [5 x %"$ParamDescr_5825"]* @"$tparams_setAdmin_5837", i32 0, i32 0) }, %"$TransDescr_5826" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_approve_5845", i32 0, i32 0), i32 7 }, i32 5, %"$ParamDescr_5825"* getelementptr inbounds ([5 x %"$ParamDescr_5825"], [5 x %"$ParamDescr_5825"]* @"$tparams_approve_5844", i32 0, i32 0) }, %"$TransDescr_5826" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tname_approveFor_5852", i32 0, i32 0), i32 10 }, i32 5, %"$ParamDescr_5825"* getelementptr inbounds ([5 x %"$ParamDescr_5825"], [5 x %"$ParamDescr_5825"]* @"$tparams_approveFor_5851", i32 0, i32 0) }, %"$TransDescr_5826" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$tname_configureNode_5860", i32 0, i32 0), i32 13 }, i32 6, %"$ParamDescr_5825"* getelementptr inbounds ([6 x %"$ParamDescr_5825"], [6 x %"$ParamDescr_5825"]* @"$tparams_configureNode_5859", i32 0, i32 0) }, %"$TransDescr_5826" { %ParamDescrString { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$tname_configureResolver_5867", i32 0, i32 0), i32 17 }, i32 5, %"$ParamDescr_5825"* getelementptr inbounds ([5 x %"$ParamDescr_5825"], [5 x %"$ParamDescr_5825"]* @"$tparams_configureResolver_5866", i32 0, i32 0) }, %"$TransDescr_5826" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_transfer_5874", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_5825"* getelementptr inbounds ([5 x %"$ParamDescr_5825"], [5 x %"$ParamDescr_5825"]* @"$tparams_transfer_5873", i32 0, i32 0) }, %"$TransDescr_5826" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_assign_5882", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_5825"* getelementptr inbounds ([6 x %"$ParamDescr_5825"], [6 x %"$ParamDescr_5825"]* @"$tparams_assign_5881", i32 0, i32 0) }, %"$TransDescr_5826" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_bestow_5890", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_5825"* getelementptr inbounds ([6 x %"$ParamDescr_5825"], [6 x %"$ParamDescr_5825"]* @"$tparams_bestow_5889", i32 0, i32 0) }, %"$TransDescr_5826" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$tname_setRegistrar_5896", i32 0, i32 0), i32 12 }, i32 4, %"$ParamDescr_5825"* getelementptr inbounds ([4 x %"$ParamDescr_5825"], [4 x %"$ParamDescr_5825"]* @"$tparams_setRegistrar_5895", i32 0, i32 0) }, %"$TransDescr_5826" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_register_5903", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_5825"* getelementptr inbounds ([5 x %"$ParamDescr_5825"], [5 x %"$ParamDescr_5825"]* @"$tparams_register_5902", i32 0, i32 0) }, %"$TransDescr_5826" { %ParamDescrString { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$tname_onResolverConfigured_5909", i32 0, i32 0), i32 20 }, i32 4, %"$ParamDescr_5825"* getelementptr inbounds ([4 x %"$ParamDescr_5825"], [4 x %"$ParamDescr_5825"]* @"$tparams_onResolverConfigured_5908", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 11

define internal %TName_Bool* @"$fundef_211"(%"$$fundef_211_env_402"* %0, %"TName_Option_List_(ByStr20)"* %1) !dbg !4 {
entry:
  %"$$fundef_211_env_BoolUtils.orb_2172" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2173" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_211_env_BoolUtils.orb_2172", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2173", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_211_env_maybeApproved_2174" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %0, i32 0, i32 1
  %"$maybeApproved_envload_2175" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_211_env_maybeApproved_2174", align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  store %TName_Option_ByStr20* %"$maybeApproved_envload_2175", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$fundef_211_env_recordOwner_2176" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %0, i32 0, i32 2
  %"$recordOwner_envload_2177" = load [20 x i8], [20 x i8]* %"$$fundef_211_env_recordOwner_2176", align 1
  %recordOwner = alloca [20 x i8], align 1
  store [20 x i8] %"$recordOwner_envload_2177", [20 x i8]* %recordOwner, align 1
  %"$$fundef_211_env_sender_2178" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %0, i32 0, i32 3
  %"$sender_envload_2179" = load [20 x i8], [20 x i8]* %"$$fundef_211_env_sender_2178", align 1
  %sender = alloca [20 x i8], align 1
  store [20 x i8] %"$sender_envload_2179", [20 x i8]* %sender, align 1
  %"$$fundef_211_env_ud-registry.listByStr20Contains_2180" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %0, i32 0, i32 4
  %"$ud-registry.listByStr20Contains_envload_2181" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_211_env_ud-registry.listByStr20Contains_2180", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2181", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_212" = alloca %TName_Bool*, align 8
  %"$gasrem_2182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2183" = icmp ugt i64 1, %"$gasrem_2182"
  br i1 %"$gascmp_2183", label %"$out_of_gas_2184", label %"$have_gas_2185"

"$out_of_gas_2184":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2185"

"$have_gas_2185":                                 ; preds = %"$out_of_gas_2184", %entry
  %"$consume_2186" = sub i64 %"$gasrem_2182", 1
  store i64 %"$consume_2186", i64* @_gasrem, align 8
  %isOwner = alloca %TName_Bool*, align 8
  %"$execptr_load_2187" = load i8*, i8** @_execptr, align 8
  %"$eq_sender_2188" = alloca [20 x i8], align 1
  %"$sender_2189" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2189", [20 x i8]* %"$eq_sender_2188", align 1
  %"$$eq_sender_2188_2190" = bitcast [20 x i8]* %"$eq_sender_2188" to i8*
  %"$eq_recordOwner_2191" = alloca [20 x i8], align 1
  %"$recordOwner_2192" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_2192", [20 x i8]* %"$eq_recordOwner_2191", align 1
  %"$$eq_recordOwner_2191_2193" = bitcast [20 x i8]* %"$eq_recordOwner_2191" to i8*
  %"$eq_call_2194" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2187", i32 20, i8* %"$$eq_sender_2188_2190", i8* %"$$eq_recordOwner_2191_2193"), !dbg !8
  store %TName_Bool* %"$eq_call_2194", %TName_Bool** %isOwner, align 8, !dbg !8
  %"$gasrem_2196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2197" = icmp ugt i64 1, %"$gasrem_2196"
  br i1 %"$gascmp_2197", label %"$out_of_gas_2198", label %"$have_gas_2199"

"$out_of_gas_2198":                               ; preds = %"$have_gas_2185"
  call void @_out_of_gas()
  br label %"$have_gas_2199"

"$have_gas_2199":                                 ; preds = %"$out_of_gas_2198", %"$have_gas_2185"
  %"$consume_2200" = sub i64 %"$gasrem_2196", 1
  store i64 %"$consume_2200", i64* @_gasrem, align 8
  %isApproved = alloca %TName_Bool*, align 8
  %"$gasrem_2201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2202" = icmp ugt i64 2, %"$gasrem_2201"
  br i1 %"$gascmp_2202", label %"$out_of_gas_2203", label %"$have_gas_2204"

"$out_of_gas_2203":                               ; preds = %"$have_gas_2199"
  call void @_out_of_gas()
  br label %"$have_gas_2204"

"$have_gas_2204":                                 ; preds = %"$out_of_gas_2203", %"$have_gas_2199"
  %"$consume_2205" = sub i64 %"$gasrem_2201", 2
  store i64 %"$consume_2205", i64* @_gasrem, align 8
  %"$maybeApproved_2207" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_2208" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_2207", i32 0, i32 0
  %"$maybeApproved_tag_2209" = load i8, i8* %"$maybeApproved_tag_2208", align 1
  switch i8 %"$maybeApproved_tag_2209", label %"$empty_default_2210" [
    i8 1, label %"$None_2211"
    i8 0, label %"$Some_2221"
  ], !dbg !9

"$None_2211":                                     ; preds = %"$have_gas_2204"
  %"$maybeApproved_2212" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2207" to %CName_None_ByStr20*
  %"$gasrem_2213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2214" = icmp ugt i64 1, %"$gasrem_2213"
  br i1 %"$gascmp_2214", label %"$out_of_gas_2215", label %"$have_gas_2216"

"$out_of_gas_2215":                               ; preds = %"$None_2211"
  call void @_out_of_gas()
  br label %"$have_gas_2216"

"$have_gas_2216":                                 ; preds = %"$out_of_gas_2215", %"$None_2211"
  %"$consume_2217" = sub i64 %"$gasrem_2213", 1
  store i64 %"$consume_2217", i64* @_gasrem, align 8
  %"$adtval_2218_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2218_salloc" = call i8* @_salloc(i8* %"$adtval_2218_load", i64 1)
  %"$adtval_2218" = bitcast i8* %"$adtval_2218_salloc" to %CName_False*
  %"$adtgep_2219" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_2218", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2219", align 1
  %"$adtptr_2220" = bitcast %CName_False* %"$adtval_2218" to %TName_Bool*
  store %TName_Bool* %"$adtptr_2220", %TName_Bool** %isApproved, align 8, !dbg !10
  br label %"$matchsucc_2206"

"$Some_2221":                                     ; preds = %"$have_gas_2204"
  %"$maybeApproved_2222" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2207" to %CName_Some_ByStr20*
  %"$approved_gep_2223" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_2222", i32 0, i32 1
  %"$approved_load_2224" = load [20 x i8], [20 x i8]* %"$approved_gep_2223", align 1
  %approved = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_2224", [20 x i8]* %approved, align 1
  %"$execptr_load_2225" = load i8*, i8** @_execptr, align 8
  %"$eq_sender_2226" = alloca [20 x i8], align 1
  %"$sender_2227" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2227", [20 x i8]* %"$eq_sender_2226", align 1
  %"$$eq_sender_2226_2228" = bitcast [20 x i8]* %"$eq_sender_2226" to i8*
  %"$eq_approved_2229" = alloca [20 x i8], align 1
  %"$approved_2230" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_2230", [20 x i8]* %"$eq_approved_2229", align 1
  %"$$eq_approved_2229_2231" = bitcast [20 x i8]* %"$eq_approved_2229" to i8*
  %"$eq_call_2232" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2225", i32 20, i8* %"$$eq_sender_2226_2228", i8* %"$$eq_approved_2229_2231"), !dbg !13
  store %TName_Bool* %"$eq_call_2232", %TName_Bool** %isApproved, align 8, !dbg !13
  br label %"$matchsucc_2206"

"$empty_default_2210":                            ; preds = %"$have_gas_2204"
  br label %"$matchsucc_2206"

"$matchsucc_2206":                                ; preds = %"$Some_2221", %"$have_gas_2216", %"$empty_default_2210"
  %"$gasrem_2234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2235" = icmp ugt i64 1, %"$gasrem_2234"
  br i1 %"$gascmp_2235", label %"$out_of_gas_2236", label %"$have_gas_2237"

"$out_of_gas_2236":                               ; preds = %"$matchsucc_2206"
  call void @_out_of_gas()
  br label %"$have_gas_2237"

"$have_gas_2237":                                 ; preds = %"$out_of_gas_2236", %"$matchsucc_2206"
  %"$consume_2238" = sub i64 %"$gasrem_2234", 1
  store i64 %"$consume_2238", i64* @_gasrem, align 8
  %isOperator = alloca %TName_Bool*, align 8
  %"$gasrem_2239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2240" = icmp ugt i64 2, %"$gasrem_2239"
  br i1 %"$gascmp_2240", label %"$out_of_gas_2241", label %"$have_gas_2242"

"$out_of_gas_2241":                               ; preds = %"$have_gas_2237"
  call void @_out_of_gas()
  br label %"$have_gas_2242"

"$have_gas_2242":                                 ; preds = %"$out_of_gas_2241", %"$have_gas_2237"
  %"$consume_2243" = sub i64 %"$gasrem_2239", 2
  store i64 %"$consume_2243", i64* @_gasrem, align 8
  %"$maybeOperators_tag_2245" = getelementptr inbounds %"TName_Option_List_(ByStr20)", %"TName_Option_List_(ByStr20)"* %1, i32 0, i32 0
  %"$maybeOperators_tag_2246" = load i8, i8* %"$maybeOperators_tag_2245", align 1
  switch i8 %"$maybeOperators_tag_2246", label %"$empty_default_2247" [
    i8 1, label %"$None_2248"
    i8 0, label %"$Some_2258"
  ], !dbg !15

"$None_2248":                                     ; preds = %"$have_gas_2242"
  %"$maybeOperators_2249" = bitcast %"TName_Option_List_(ByStr20)"* %1 to %"CName_None_List_(ByStr20)"*
  %"$gasrem_2250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2251" = icmp ugt i64 1, %"$gasrem_2250"
  br i1 %"$gascmp_2251", label %"$out_of_gas_2252", label %"$have_gas_2253"

"$out_of_gas_2252":                               ; preds = %"$None_2248"
  call void @_out_of_gas()
  br label %"$have_gas_2253"

"$have_gas_2253":                                 ; preds = %"$out_of_gas_2252", %"$None_2248"
  %"$consume_2254" = sub i64 %"$gasrem_2250", 1
  store i64 %"$consume_2254", i64* @_gasrem, align 8
  %"$adtval_2255_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2255_salloc" = call i8* @_salloc(i8* %"$adtval_2255_load", i64 1)
  %"$adtval_2255" = bitcast i8* %"$adtval_2255_salloc" to %CName_False*
  %"$adtgep_2256" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_2255", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2256", align 1
  %"$adtptr_2257" = bitcast %CName_False* %"$adtval_2255" to %TName_Bool*
  store %TName_Bool* %"$adtptr_2257", %TName_Bool** %isOperator, align 8, !dbg !16
  br label %"$matchsucc_2244"

"$Some_2258":                                     ; preds = %"$have_gas_2242"
  %"$maybeOperators_2259" = bitcast %"TName_Option_List_(ByStr20)"* %1 to %"CName_Some_List_(ByStr20)"*
  %"$operators_gep_2260" = getelementptr inbounds %"CName_Some_List_(ByStr20)", %"CName_Some_List_(ByStr20)"* %"$maybeOperators_2259", i32 0, i32 1
  %"$operators_load_2261" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$operators_gep_2260", align 8
  %operators = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$operators_load_2261", %TName_List_ByStr20** %operators, align 8
  %"$gasrem_2262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2263" = icmp ugt i64 1, %"$gasrem_2262"
  br i1 %"$gascmp_2263", label %"$out_of_gas_2264", label %"$have_gas_2265"

"$out_of_gas_2264":                               ; preds = %"$Some_2258"
  call void @_out_of_gas()
  br label %"$have_gas_2265"

"$have_gas_2265":                                 ; preds = %"$out_of_gas_2264", %"$Some_2258"
  %"$consume_2266" = sub i64 %"$gasrem_2262", 1
  store i64 %"$consume_2266", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_36" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_2267" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_2268" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2267", 0
  %"$ud-registry.listByStr20Contains_envptr_2269" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2267", 1
  %"$operators_2270" = load %TName_List_ByStr20*, %TName_List_ByStr20** %operators, align 8
  %"$ud-registry.listByStr20Contains_call_2271" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_2268"(i8* %"$ud-registry.listByStr20Contains_envptr_2269", %TName_List_ByStr20* %"$operators_2270"), !dbg !19
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_2271", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_36", align 8, !dbg !19
  %"$ud-registry.listByStr20Contains_37" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_36_2272" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_36", align 8
  %"$$ud-registry.listByStr20Contains_36_fptr_2273" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_36_2272", 0
  %"$$ud-registry.listByStr20Contains_36_envptr_2274" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_36_2272", 1
  %"$$ud-registry.listByStr20Contains_36_sender_2275" = alloca [20 x i8], align 1
  %"$sender_2276" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2276", [20 x i8]* %"$$ud-registry.listByStr20Contains_36_sender_2275", align 1
  %"$$ud-registry.listByStr20Contains_36_call_2277" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_36_fptr_2273"(i8* %"$$ud-registry.listByStr20Contains_36_envptr_2274", [20 x i8]* %"$$ud-registry.listByStr20Contains_36_sender_2275"), !dbg !19
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_36_call_2277", %TName_Bool** %"$ud-registry.listByStr20Contains_37", align 8, !dbg !19
  %"$$ud-registry.listByStr20Contains_37_2278" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_37", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_37_2278", %TName_Bool** %isOperator, align 8, !dbg !19
  br label %"$matchsucc_2244"

"$empty_default_2247":                            ; preds = %"$have_gas_2242"
  br label %"$matchsucc_2244"

"$matchsucc_2244":                                ; preds = %"$have_gas_2265", %"$have_gas_2253", %"$empty_default_2247"
  %"$gasrem_2279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2280" = icmp ugt i64 1, %"$gasrem_2279"
  br i1 %"$gascmp_2280", label %"$out_of_gas_2281", label %"$have_gas_2282"

"$out_of_gas_2281":                               ; preds = %"$matchsucc_2244"
  call void @_out_of_gas()
  br label %"$have_gas_2282"

"$have_gas_2282":                                 ; preds = %"$out_of_gas_2281", %"$matchsucc_2244"
  %"$consume_2283" = sub i64 %"$gasrem_2279", 1
  store i64 %"$consume_2283", i64* @_gasrem, align 8
  %b1 = alloca %TName_Bool*, align 8
  %"$gasrem_2284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2285" = icmp ugt i64 1, %"$gasrem_2284"
  br i1 %"$gascmp_2285", label %"$out_of_gas_2286", label %"$have_gas_2287"

"$out_of_gas_2286":                               ; preds = %"$have_gas_2282"
  call void @_out_of_gas()
  br label %"$have_gas_2287"

"$have_gas_2287":                                 ; preds = %"$out_of_gas_2286", %"$have_gas_2282"
  %"$consume_2288" = sub i64 %"$gasrem_2284", 1
  store i64 %"$consume_2288", i64* @_gasrem, align 8
  %"$BoolUtils.orb_38" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_2289" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_2290" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2289", 0
  %"$BoolUtils.orb_envptr_2291" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2289", 1
  %"$isOwner_2292" = load %TName_Bool*, %TName_Bool** %isOwner, align 8
  %"$BoolUtils.orb_call_2293" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_2290"(i8* %"$BoolUtils.orb_envptr_2291", %TName_Bool* %"$isOwner_2292"), !dbg !21
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_2293", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_38", align 8, !dbg !21
  %"$BoolUtils.orb_39" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_38_2294" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_38", align 8
  %"$$BoolUtils.orb_38_fptr_2295" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_38_2294", 0
  %"$$BoolUtils.orb_38_envptr_2296" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_38_2294", 1
  %"$isApproved_2297" = load %TName_Bool*, %TName_Bool** %isApproved, align 8
  %"$$BoolUtils.orb_38_call_2298" = call %TName_Bool* %"$$BoolUtils.orb_38_fptr_2295"(i8* %"$$BoolUtils.orb_38_envptr_2296", %TName_Bool* %"$isApproved_2297"), !dbg !21
  store %TName_Bool* %"$$BoolUtils.orb_38_call_2298", %TName_Bool** %"$BoolUtils.orb_39", align 8, !dbg !21
  %"$$BoolUtils.orb_39_2299" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_39", align 8
  store %TName_Bool* %"$$BoolUtils.orb_39_2299", %TName_Bool** %b1, align 8, !dbg !21
  %"$gasrem_2300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2301" = icmp ugt i64 1, %"$gasrem_2300"
  br i1 %"$gascmp_2301", label %"$out_of_gas_2302", label %"$have_gas_2303"

"$out_of_gas_2302":                               ; preds = %"$have_gas_2287"
  call void @_out_of_gas()
  br label %"$have_gas_2303"

"$have_gas_2303":                                 ; preds = %"$out_of_gas_2302", %"$have_gas_2287"
  %"$consume_2304" = sub i64 %"$gasrem_2300", 1
  store i64 %"$consume_2304", i64* @_gasrem, align 8
  %"$BoolUtils.orb_40" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_2305" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_2306" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2305", 0
  %"$BoolUtils.orb_envptr_2307" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2305", 1
  %"$b1_2308" = load %TName_Bool*, %TName_Bool** %b1, align 8
  %"$BoolUtils.orb_call_2309" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_2306"(i8* %"$BoolUtils.orb_envptr_2307", %TName_Bool* %"$b1_2308"), !dbg !22
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_2309", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_40", align 8, !dbg !22
  %"$BoolUtils.orb_41" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_40_2310" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_40", align 8
  %"$$BoolUtils.orb_40_fptr_2311" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_40_2310", 0
  %"$$BoolUtils.orb_40_envptr_2312" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_40_2310", 1
  %"$isOperator_2313" = load %TName_Bool*, %TName_Bool** %isOperator, align 8
  %"$$BoolUtils.orb_40_call_2314" = call %TName_Bool* %"$$BoolUtils.orb_40_fptr_2311"(i8* %"$$BoolUtils.orb_40_envptr_2312", %TName_Bool* %"$isOperator_2313"), !dbg !22
  store %TName_Bool* %"$$BoolUtils.orb_40_call_2314", %TName_Bool** %"$BoolUtils.orb_41", align 8, !dbg !22
  %"$$BoolUtils.orb_41_2315" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_41", align 8
  store %TName_Bool* %"$$BoolUtils.orb_41_2315", %TName_Bool** %"$retval_212", align 8, !dbg !22
  %"$$retval_212_2316" = load %TName_Bool*, %TName_Bool** %"$retval_212", align 8
  ret %TName_Bool* %"$$retval_212_2316"
}

define internal { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } @"$fundef_209"(%"$$fundef_209_env_403"* %0, %TName_Option_ByStr20* %1) !dbg !23 {
entry:
  %"$$fundef_209_env_BoolUtils.orb_2145" = getelementptr inbounds %"$$fundef_209_env_403", %"$$fundef_209_env_403"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2146" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_209_env_BoolUtils.orb_2145", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2146", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_209_env_recordOwner_2147" = getelementptr inbounds %"$$fundef_209_env_403", %"$$fundef_209_env_403"* %0, i32 0, i32 1
  %"$recordOwner_envload_2148" = load [20 x i8], [20 x i8]* %"$$fundef_209_env_recordOwner_2147", align 1
  %recordOwner = alloca [20 x i8], align 1
  store [20 x i8] %"$recordOwner_envload_2148", [20 x i8]* %recordOwner, align 1
  %"$$fundef_209_env_sender_2149" = getelementptr inbounds %"$$fundef_209_env_403", %"$$fundef_209_env_403"* %0, i32 0, i32 2
  %"$sender_envload_2150" = load [20 x i8], [20 x i8]* %"$$fundef_209_env_sender_2149", align 1
  %sender = alloca [20 x i8], align 1
  store [20 x i8] %"$sender_envload_2150", [20 x i8]* %sender, align 1
  %"$$fundef_209_env_ud-registry.listByStr20Contains_2151" = getelementptr inbounds %"$$fundef_209_env_403", %"$$fundef_209_env_403"* %0, i32 0, i32 3
  %"$ud-registry.listByStr20Contains_envload_2152" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_209_env_ud-registry.listByStr20Contains_2151", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2152", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_210" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$gasrem_2153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2154" = icmp ugt i64 1, %"$gasrem_2153"
  br i1 %"$gascmp_2154", label %"$out_of_gas_2155", label %"$have_gas_2156"

"$out_of_gas_2155":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2156"

"$have_gas_2156":                                 ; preds = %"$out_of_gas_2155", %entry
  %"$consume_2157" = sub i64 %"$gasrem_2153", 1
  store i64 %"$consume_2157", i64* @_gasrem, align 8
  %"$$fundef_211_envp_2158_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_211_envp_2158_salloc" = call i8* @_salloc(i8* %"$$fundef_211_envp_2158_load", i64 80)
  %"$$fundef_211_envp_2158" = bitcast i8* %"$$fundef_211_envp_2158_salloc" to %"$$fundef_211_env_402"*
  %"$$fundef_211_env_voidp_2160" = bitcast %"$$fundef_211_env_402"* %"$$fundef_211_envp_2158" to i8*
  %"$$fundef_211_cloval_2161" = insertvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)* bitcast (%TName_Bool* (%"$$fundef_211_env_402"*, %"TName_Option_List_(ByStr20)"*)* @"$fundef_211" to %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*), i8* undef }, i8* %"$$fundef_211_env_voidp_2160", 1
  %"$$fundef_211_env_BoolUtils.orb_2162" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %"$$fundef_211_envp_2158", i32 0, i32 0
  %"$BoolUtils.orb_2163" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2163", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_211_env_BoolUtils.orb_2162", align 8
  %"$$fundef_211_env_maybeApproved_2164" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %"$$fundef_211_envp_2158", i32 0, i32 1
  store %TName_Option_ByStr20* %1, %TName_Option_ByStr20** %"$$fundef_211_env_maybeApproved_2164", align 8
  %"$$fundef_211_env_recordOwner_2165" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %"$$fundef_211_envp_2158", i32 0, i32 2
  %"$recordOwner_2166" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_2166", [20 x i8]* %"$$fundef_211_env_recordOwner_2165", align 1
  %"$$fundef_211_env_sender_2167" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %"$$fundef_211_envp_2158", i32 0, i32 3
  %"$sender_2168" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2168", [20 x i8]* %"$$fundef_211_env_sender_2167", align 1
  %"$$fundef_211_env_ud-registry.listByStr20Contains_2169" = getelementptr inbounds %"$$fundef_211_env_402", %"$$fundef_211_env_402"* %"$$fundef_211_envp_2158", i32 0, i32 4
  %"$ud-registry.listByStr20Contains_2170" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2170", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_211_env_ud-registry.listByStr20Contains_2169", align 8
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$fundef_211_cloval_2161", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$retval_210", align 8, !dbg !24
  %"$$retval_210_2171" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$retval_210", align 8
  ret { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$retval_210_2171"
}

define internal { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } @"$fundef_207"(%"$$fundef_207_env_404"* %0, [20 x i8]* %1) !dbg !25 {
entry:
  %recordOwner = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_207_env_BoolUtils.orb_2122" = getelementptr inbounds %"$$fundef_207_env_404", %"$$fundef_207_env_404"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2123" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_207_env_BoolUtils.orb_2122", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2123", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_207_env_sender_2124" = getelementptr inbounds %"$$fundef_207_env_404", %"$$fundef_207_env_404"* %0, i32 0, i32 1
  %"$sender_envload_2125" = load [20 x i8], [20 x i8]* %"$$fundef_207_env_sender_2124", align 1
  %sender = alloca [20 x i8], align 1
  store [20 x i8] %"$sender_envload_2125", [20 x i8]* %sender, align 1
  %"$$fundef_207_env_ud-registry.listByStr20Contains_2126" = getelementptr inbounds %"$$fundef_207_env_404", %"$$fundef_207_env_404"* %0, i32 0, i32 2
  %"$ud-registry.listByStr20Contains_envload_2127" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_207_env_ud-registry.listByStr20Contains_2126", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2127", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_208" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$gasrem_2128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2129" = icmp ugt i64 1, %"$gasrem_2128"
  br i1 %"$gascmp_2129", label %"$out_of_gas_2130", label %"$have_gas_2131"

"$out_of_gas_2130":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2131"

"$have_gas_2131":                                 ; preds = %"$out_of_gas_2130", %entry
  %"$consume_2132" = sub i64 %"$gasrem_2128", 1
  store i64 %"$consume_2132", i64* @_gasrem, align 8
  %"$$fundef_209_envp_2133_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_209_envp_2133_salloc" = call i8* @_salloc(i8* %"$$fundef_209_envp_2133_load", i64 72)
  %"$$fundef_209_envp_2133" = bitcast i8* %"$$fundef_209_envp_2133_salloc" to %"$$fundef_209_env_403"*
  %"$$fundef_209_env_voidp_2135" = bitcast %"$$fundef_209_env_403"* %"$$fundef_209_envp_2133" to i8*
  %"$$fundef_209_cloval_2136" = insertvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)* bitcast ({ %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (%"$$fundef_209_env_403"*, %TName_Option_ByStr20*)* @"$fundef_209" to { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*), i8* undef }, i8* %"$$fundef_209_env_voidp_2135", 1
  %"$$fundef_209_env_BoolUtils.orb_2137" = getelementptr inbounds %"$$fundef_209_env_403", %"$$fundef_209_env_403"* %"$$fundef_209_envp_2133", i32 0, i32 0
  %"$BoolUtils.orb_2138" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2138", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_209_env_BoolUtils.orb_2137", align 8
  %"$$fundef_209_env_recordOwner_2139" = getelementptr inbounds %"$$fundef_209_env_403", %"$$fundef_209_env_403"* %"$$fundef_209_envp_2133", i32 0, i32 1
  store [20 x i8] %recordOwner, [20 x i8]* %"$$fundef_209_env_recordOwner_2139", align 1
  %"$$fundef_209_env_sender_2140" = getelementptr inbounds %"$$fundef_209_env_403", %"$$fundef_209_env_403"* %"$$fundef_209_envp_2133", i32 0, i32 2
  %"$sender_2141" = load [20 x i8], [20 x i8]* %sender, align 1
  store [20 x i8] %"$sender_2141", [20 x i8]* %"$$fundef_209_env_sender_2140", align 1
  %"$$fundef_209_env_ud-registry.listByStr20Contains_2142" = getelementptr inbounds %"$$fundef_209_env_403", %"$$fundef_209_env_403"* %"$$fundef_209_envp_2133", i32 0, i32 3
  %"$ud-registry.listByStr20Contains_2143" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2143", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_209_env_ud-registry.listByStr20Contains_2142", align 8
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_209_cloval_2136", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_208", align 8, !dbg !26
  %"$$retval_208_2144" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_208", align 8
  ret { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$retval_208_2144"
}

define internal { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_205"(%"$$fundef_205_env_405"* %0, [20 x i8]* %1) !dbg !27 {
entry:
  %sender = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_205_env_BoolUtils.orb_2103" = getelementptr inbounds %"$$fundef_205_env_405", %"$$fundef_205_env_405"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_2104" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_205_env_BoolUtils.orb_2103", align 8
  %BoolUtils.orb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_2104", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_205_env_ud-registry.listByStr20Contains_2105" = getelementptr inbounds %"$$fundef_205_env_405", %"$$fundef_205_env_405"* %0, i32 0, i32 1
  %"$ud-registry.listByStr20Contains_envload_2106" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_205_env_ud-registry.listByStr20Contains_2105", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_2106", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_206" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_2107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2108" = icmp ugt i64 1, %"$gasrem_2107"
  br i1 %"$gascmp_2108", label %"$out_of_gas_2109", label %"$have_gas_2110"

"$out_of_gas_2109":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2110"

"$have_gas_2110":                                 ; preds = %"$out_of_gas_2109", %entry
  %"$consume_2111" = sub i64 %"$gasrem_2107", 1
  store i64 %"$consume_2111", i64* @_gasrem, align 8
  %"$$fundef_207_envp_2112_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_207_envp_2112_salloc" = call i8* @_salloc(i8* %"$$fundef_207_envp_2112_load", i64 56)
  %"$$fundef_207_envp_2112" = bitcast i8* %"$$fundef_207_envp_2112_salloc" to %"$$fundef_207_env_404"*
  %"$$fundef_207_env_voidp_2114" = bitcast %"$$fundef_207_env_404"* %"$$fundef_207_envp_2112" to i8*
  %"$$fundef_207_cloval_2115" = insertvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (%"$$fundef_207_env_404"*, [20 x i8]*)* @"$fundef_207" to { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_207_env_voidp_2114", 1
  %"$$fundef_207_env_BoolUtils.orb_2116" = getelementptr inbounds %"$$fundef_207_env_404", %"$$fundef_207_env_404"* %"$$fundef_207_envp_2112", i32 0, i32 0
  %"$BoolUtils.orb_2117" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2117", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_207_env_BoolUtils.orb_2116", align 8
  %"$$fundef_207_env_sender_2118" = getelementptr inbounds %"$$fundef_207_env_404", %"$$fundef_207_env_404"* %"$$fundef_207_envp_2112", i32 0, i32 1
  store [20 x i8] %sender, [20 x i8]* %"$$fundef_207_env_sender_2118", align 1
  %"$$fundef_207_env_ud-registry.listByStr20Contains_2119" = getelementptr inbounds %"$$fundef_207_env_404", %"$$fundef_207_env_404"* %"$$fundef_207_envp_2112", i32 0, i32 2
  %"$ud-registry.listByStr20Contains_2120" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2120", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_207_env_ud-registry.listByStr20Contains_2119", align 8
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_207_cloval_2115", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_206", align 8, !dbg !28
  %"$$retval_206_2121" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_206", align 8
  ret { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_206_2121"
}

define internal void @"$fundef_215"(%"$$fundef_215_env_406"* %0, [32 x i8]* %1, %String %2) !dbg !29 {
entry:
  %"$$fundef_215_env_parent_2067" = getelementptr inbounds %"$$fundef_215_env_406", %"$$fundef_215_env_406"* %0, i32 0, i32 0
  %"$parent_envload_2068" = load [32 x i8], [32 x i8]* %"$$fundef_215_env_parent_2067", align 1
  %parent = alloca [32 x i8], align 1
  store [32 x i8] %"$parent_envload_2068", [32 x i8]* %parent, align 1
  %"$retval_216" = alloca [32 x i8], align 1
  %"$gasrem_2069" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2070" = icmp ugt i64 1, %"$gasrem_2069"
  br i1 %"$gascmp_2070", label %"$out_of_gas_2071", label %"$have_gas_2072"

"$out_of_gas_2071":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2072"

"$have_gas_2072":                                 ; preds = %"$out_of_gas_2071", %entry
  %"$consume_2073" = sub i64 %"$gasrem_2069", 1
  store i64 %"$consume_2073", i64* @_gasrem, align 8
  %labelHash = alloca [32 x i8], align 1
  %"$execptr_load_2074" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_label_2075" = alloca %String, align 8
  store %String %2, %String* %"$sha256hash_label_2075", align 8
  %"$$sha256hash_label_2075_2076" = bitcast %String* %"$sha256hash_label_2075" to i8*
  %"$sha256hash_call_2077" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_2074", %_TyDescrTy_Typ* @"$TyDescr_String_292", i8* %"$$sha256hash_label_2075_2076"), !dbg !30
  %"$sha256hash_2079" = load [32 x i8], [32 x i8]* %"$sha256hash_call_2077", align 1
  store [32 x i8] %"$sha256hash_2079", [32 x i8]* %labelHash, align 1, !dbg !30
  %"$gasrem_2080" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2081" = icmp ugt i64 1, %"$gasrem_2080"
  br i1 %"$gascmp_2081", label %"$out_of_gas_2082", label %"$have_gas_2083"

"$out_of_gas_2082":                               ; preds = %"$have_gas_2072"
  call void @_out_of_gas()
  br label %"$have_gas_2083"

"$have_gas_2083":                                 ; preds = %"$out_of_gas_2082", %"$have_gas_2072"
  %"$consume_2084" = sub i64 %"$gasrem_2080", 1
  store i64 %"$consume_2084", i64* @_gasrem, align 8
  %nodeInput = alloca [64 x i8], align 1
  %"$execptr_load_2085" = load i8*, i8** @_execptr, align 8
  %"$concat_parent_2086" = alloca [32 x i8], align 1
  %"$parent_2087" = load [32 x i8], [32 x i8]* %parent, align 1
  store [32 x i8] %"$parent_2087", [32 x i8]* %"$concat_parent_2086", align 1
  %"$$concat_parent_2086_2088" = bitcast [32 x i8]* %"$concat_parent_2086" to i8*
  %"$concat_labelHash_2089" = alloca [32 x i8], align 1
  %"$labelHash_2090" = load [32 x i8], [32 x i8]* %labelHash, align 1
  store [32 x i8] %"$labelHash_2090", [32 x i8]* %"$concat_labelHash_2089", align 1
  %"$$concat_labelHash_2089_2091" = bitcast [32 x i8]* %"$concat_labelHash_2089" to i8*
  %"$concat_call_2092" = call i8* @_concat_ByStrX(i8* %"$execptr_load_2085", i32 32, i8* %"$$concat_parent_2086_2088", i32 32, i8* %"$$concat_labelHash_2089_2091"), !dbg !31
  %"$concat_2093" = bitcast i8* %"$concat_call_2092" to [64 x i8]*
  %"$concat_2094" = load [64 x i8], [64 x i8]* %"$concat_2093", align 1
  store [64 x i8] %"$concat_2094", [64 x i8]* %nodeInput, align 1, !dbg !31
  %"$execptr_load_2095" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_nodeInput_2096" = alloca [64 x i8], align 1
  %"$nodeInput_2097" = load [64 x i8], [64 x i8]* %nodeInput, align 1
  store [64 x i8] %"$nodeInput_2097", [64 x i8]* %"$sha256hash_nodeInput_2096", align 1
  %"$$sha256hash_nodeInput_2096_2098" = bitcast [64 x i8]* %"$sha256hash_nodeInput_2096" to i8*
  %"$sha256hash_call_2099" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_2095", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_304", i8* %"$$sha256hash_nodeInput_2096_2098"), !dbg !32
  %"$sha256hash_2101" = load [32 x i8], [32 x i8]* %"$sha256hash_call_2099", align 1
  store [32 x i8] %"$sha256hash_2101", [32 x i8]* %"$retval_216", align 1, !dbg !32
  %"$$retval_216_2102" = load [32 x i8], [32 x i8]* %"$retval_216", align 1
  store [32 x i8] %"$$retval_216_2102", [32 x i8]* %1, align 1
  ret void
}

define internal { void (i8*, [32 x i8]*, %String)*, i8* } @"$fundef_213"(%"$$fundef_213_env_407"* %0, [32 x i8]* %1) !dbg !33 {
entry:
  %parent = load [32 x i8], [32 x i8]* %1, align 1
  %"$retval_214" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$gasrem_2056" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2057" = icmp ugt i64 1, %"$gasrem_2056"
  br i1 %"$gascmp_2057", label %"$out_of_gas_2058", label %"$have_gas_2059"

"$out_of_gas_2058":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2059"

"$have_gas_2059":                                 ; preds = %"$out_of_gas_2058", %entry
  %"$consume_2060" = sub i64 %"$gasrem_2056", 1
  store i64 %"$consume_2060", i64* @_gasrem, align 8
  %"$$fundef_215_envp_2061_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_215_envp_2061_salloc" = call i8* @_salloc(i8* %"$$fundef_215_envp_2061_load", i64 32)
  %"$$fundef_215_envp_2061" = bitcast i8* %"$$fundef_215_envp_2061_salloc" to %"$$fundef_215_env_406"*
  %"$$fundef_215_env_voidp_2063" = bitcast %"$$fundef_215_env_406"* %"$$fundef_215_envp_2061" to i8*
  %"$$fundef_215_cloval_2064" = insertvalue { void (i8*, [32 x i8]*, %String)*, i8* } { void (i8*, [32 x i8]*, %String)* bitcast (void (%"$$fundef_215_env_406"*, [32 x i8]*, %String)* @"$fundef_215" to void (i8*, [32 x i8]*, %String)*), i8* undef }, i8* %"$$fundef_215_env_voidp_2063", 1
  %"$$fundef_215_env_parent_2065" = getelementptr inbounds %"$$fundef_215_env_406", %"$$fundef_215_env_406"* %"$$fundef_215_envp_2061", i32 0, i32 0
  store [32 x i8] %parent, [32 x i8]* %"$$fundef_215_env_parent_2065", align 1
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$$fundef_215_cloval_2064", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$retval_214", align 8, !dbg !34
  %"$$retval_214_2066" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$retval_214", align 8
  ret { void (i8*, [32 x i8]*, %String)*, i8* } %"$$retval_214_2066"
}

define internal void @"$fundef_217"(%"$$fundef_217_env_408"* %0, [20 x i8]* %1, %TName_Option_ud-registry.Record* %2) !dbg !35 {
entry:
  %"$$fundef_217_env_ud-registry.zeroByStr20_2010" = getelementptr inbounds %"$$fundef_217_env_408", %"$$fundef_217_env_408"* %0, i32 0, i32 0
  %"$ud-registry.zeroByStr20_envload_2011" = load [20 x i8], [20 x i8]* %"$$fundef_217_env_ud-registry.zeroByStr20_2010", align 1
  %ud-registry.zeroByStr20 = alloca [20 x i8], align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_envload_2011", [20 x i8]* %ud-registry.zeroByStr20, align 1
  %"$retval_218" = alloca [20 x i8], align 1
  %"$gasrem_2012" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2013" = icmp ugt i64 2, %"$gasrem_2012"
  br i1 %"$gascmp_2013", label %"$out_of_gas_2014", label %"$have_gas_2015"

"$out_of_gas_2014":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2015"

"$have_gas_2015":                                 ; preds = %"$out_of_gas_2014", %entry
  %"$consume_2016" = sub i64 %"$gasrem_2012", 2
  store i64 %"$consume_2016", i64* @_gasrem, align 8
  %"$maybeRecord_tag_2018" = getelementptr inbounds %TName_Option_ud-registry.Record, %TName_Option_ud-registry.Record* %2, i32 0, i32 0
  %"$maybeRecord_tag_2019" = load i8, i8* %"$maybeRecord_tag_2018", align 1
  switch i8 %"$maybeRecord_tag_2019", label %"$empty_default_2020" [
    i8 1, label %"$None_2021"
    i8 0, label %"$Some_2029"
  ], !dbg !36

"$None_2021":                                     ; preds = %"$have_gas_2015"
  %"$maybeRecord_2022" = bitcast %TName_Option_ud-registry.Record* %2 to %CName_None_ud-registry.Record*
  %"$gasrem_2023" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2024" = icmp ugt i64 1, %"$gasrem_2023"
  br i1 %"$gascmp_2024", label %"$out_of_gas_2025", label %"$have_gas_2026"

"$out_of_gas_2025":                               ; preds = %"$None_2021"
  call void @_out_of_gas()
  br label %"$have_gas_2026"

"$have_gas_2026":                                 ; preds = %"$out_of_gas_2025", %"$None_2021"
  %"$consume_2027" = sub i64 %"$gasrem_2023", 1
  store i64 %"$consume_2027", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_2028" = load [20 x i8], [20 x i8]* %ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_2028", [20 x i8]* %"$retval_218", align 1, !dbg !37
  br label %"$matchsucc_2017"

"$Some_2029":                                     ; preds = %"$have_gas_2015"
  %"$maybeRecord_2030" = bitcast %TName_Option_ud-registry.Record* %2 to %CName_Some_ud-registry.Record*
  %"$record_gep_2031" = getelementptr inbounds %CName_Some_ud-registry.Record, %CName_Some_ud-registry.Record* %"$maybeRecord_2030", i32 0, i32 1
  %"$record_load_2032" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %"$record_gep_2031", align 8
  %record = alloca %TName_ud-registry.Record*, align 8
  store %TName_ud-registry.Record* %"$record_load_2032", %TName_ud-registry.Record** %record, align 8
  %"$gasrem_2033" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2034" = icmp ugt i64 1, %"$gasrem_2033"
  br i1 %"$gascmp_2034", label %"$out_of_gas_2035", label %"$have_gas_2036"

"$out_of_gas_2035":                               ; preds = %"$Some_2029"
  call void @_out_of_gas()
  br label %"$have_gas_2036"

"$have_gas_2036":                                 ; preds = %"$out_of_gas_2035", %"$Some_2029"
  %"$consume_2037" = sub i64 %"$gasrem_2033", 1
  store i64 %"$consume_2037", i64* @_gasrem, align 8
  %"$record_2039" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %record, align 8
  %"$record_tag_2040" = getelementptr inbounds %TName_ud-registry.Record, %TName_ud-registry.Record* %"$record_2039", i32 0, i32 0
  %"$record_tag_2041" = load i8, i8* %"$record_tag_2040", align 1
  switch i8 %"$record_tag_2041", label %"$empty_default_2042" [
    i8 0, label %"$ud-registry.Record_2043"
  ], !dbg !40

"$ud-registry.Record_2043":                       ; preds = %"$have_gas_2036"
  %"$record_2044" = bitcast %TName_ud-registry.Record* %"$record_2039" to %CName_ud-registry.Record*
  %"$owner_gep_2045" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_2044", i32 0, i32 1
  %"$owner_load_2046" = load [20 x i8], [20 x i8]* %"$owner_gep_2045", align 1
  %owner = alloca [20 x i8], align 1
  store [20 x i8] %"$owner_load_2046", [20 x i8]* %owner, align 1
  %"$resolver_gep_2047" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_2044", i32 0, i32 2
  %"$resolver_load_2048" = load [20 x i8], [20 x i8]* %"$resolver_gep_2047", align 1
  %resolver = alloca [20 x i8], align 1
  store [20 x i8] %"$resolver_load_2048", [20 x i8]* %resolver, align 1
  %"$gasrem_2049" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2050" = icmp ugt i64 1, %"$gasrem_2049"
  br i1 %"$gascmp_2050", label %"$out_of_gas_2051", label %"$have_gas_2052"

"$out_of_gas_2051":                               ; preds = %"$ud-registry.Record_2043"
  call void @_out_of_gas()
  br label %"$have_gas_2052"

"$have_gas_2052":                                 ; preds = %"$out_of_gas_2051", %"$ud-registry.Record_2043"
  %"$consume_2053" = sub i64 %"$gasrem_2049", 1
  store i64 %"$consume_2053", i64* @_gasrem, align 8
  %"$owner_2054" = load [20 x i8], [20 x i8]* %owner, align 1
  store [20 x i8] %"$owner_2054", [20 x i8]* %"$retval_218", align 1, !dbg !42
  br label %"$matchsucc_2038"

"$empty_default_2042":                            ; preds = %"$have_gas_2036"
  br label %"$matchsucc_2038"

"$matchsucc_2038":                                ; preds = %"$have_gas_2052", %"$empty_default_2042"
  br label %"$matchsucc_2017"

"$empty_default_2020":                            ; preds = %"$have_gas_2015"
  br label %"$matchsucc_2017"

"$matchsucc_2017":                                ; preds = %"$matchsucc_2038", %"$have_gas_2026", %"$empty_default_2020"
  %"$$retval_218_2055" = load [20 x i8], [20 x i8]* %"$retval_218", align 1
  store [20 x i8] %"$$retval_218_2055", [20 x i8]* %1, align 1
  ret void
}

define internal i8* @"$fundef_219"(%"$$fundef_219_env_409"* %0, %String %1) !dbg !45 {
entry:
  %"$retval_220" = alloca i8*, align 8
  %"$gasrem_1987" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1988" = icmp ugt i64 1, %"$gasrem_1987"
  br i1 %"$gascmp_1988", label %"$out_of_gas_1989", label %"$have_gas_1990"

"$out_of_gas_1989":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1990"

"$have_gas_1990":                                 ; preds = %"$out_of_gas_1989", %entry
  %"$consume_1991" = sub i64 %"$gasrem_1987", 1
  store i64 %"$consume_1991", i64* @_gasrem, align 8
  %"$msgobj_1992_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1992_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1992_salloc_load", i64 81)
  %"$msgobj_1992_salloc" = bitcast i8* %"$msgobj_1992_salloc_salloc" to [81 x i8]*
  %"$msgobj_1992" = bitcast [81 x i8]* %"$msgobj_1992_salloc" to i8*
  store i8 2, i8* %"$msgobj_1992", align 1
  %"$msgobj_fname_1994" = getelementptr i8, i8* %"$msgobj_1992", i32 1
  %"$msgobj_fname_1995" = bitcast i8* %"$msgobj_fname_1994" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1993", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1995", align 8
  %"$msgobj_td_1996" = getelementptr i8, i8* %"$msgobj_1992", i32 17
  %"$msgobj_td_1997" = bitcast i8* %"$msgobj_td_1996" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1997", align 8
  %"$msgobj_v_1999" = getelementptr i8, i8* %"$msgobj_1992", i32 25
  %"$msgobj_v_2000" = bitcast i8* %"$msgobj_v_1999" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1998", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_2000", align 8
  %"$msgobj_fname_2002" = getelementptr i8, i8* %"$msgobj_1992", i32 41
  %"$msgobj_fname_2003" = bitcast i8* %"$msgobj_fname_2002" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2001", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_2003", align 8
  %"$msgobj_td_2004" = getelementptr i8, i8* %"$msgobj_1992", i32 57
  %"$msgobj_td_2005" = bitcast i8* %"$msgobj_td_2004" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_2005", align 8
  %"$msgobj_v_2006" = getelementptr i8, i8* %"$msgobj_1992", i32 65
  %"$msgobj_v_2007" = bitcast i8* %"$msgobj_v_2006" to %String*
  store %String %1, %String* %"$msgobj_v_2007", align 8
  store i8* %"$msgobj_1992", i8** %"$retval_220", align 8, !dbg !46
  %"$$retval_220_2009" = load i8*, i8** %"$retval_220", align 8
  ret i8* %"$$retval_220_2009"
}

define internal i8* @"$fundef_225"(%"$$fundef_225_env_410"* %0, [20 x i8]* %1) !dbg !47 {
entry:
  %resolver = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_225_env_node_1944" = getelementptr inbounds %"$$fundef_225_env_410", %"$$fundef_225_env_410"* %0, i32 0, i32 0
  %"$node_envload_1945" = load [32 x i8], [32 x i8]* %"$$fundef_225_env_node_1944", align 1
  %node = alloca [32 x i8], align 1
  store [32 x i8] %"$node_envload_1945", [32 x i8]* %node, align 1
  %"$$fundef_225_env_owner_1946" = getelementptr inbounds %"$$fundef_225_env_410", %"$$fundef_225_env_410"* %0, i32 0, i32 1
  %"$owner_envload_1947" = load [20 x i8], [20 x i8]* %"$$fundef_225_env_owner_1946", align 1
  %owner = alloca [20 x i8], align 1
  store [20 x i8] %"$owner_envload_1947", [20 x i8]* %owner, align 1
  %"$retval_226" = alloca i8*, align 8
  %"$gasrem_1948" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1949" = icmp ugt i64 1, %"$gasrem_1948"
  br i1 %"$gascmp_1949", label %"$out_of_gas_1950", label %"$have_gas_1951"

"$out_of_gas_1950":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1951"

"$have_gas_1951":                                 ; preds = %"$out_of_gas_1950", %entry
  %"$consume_1952" = sub i64 %"$gasrem_1948", 1
  store i64 %"$consume_1952", i64* @_gasrem, align 8
  %"$msgobj_1953_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1953_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1953_salloc_load", i64 185)
  %"$msgobj_1953_salloc" = bitcast i8* %"$msgobj_1953_salloc_salloc" to [185 x i8]*
  %"$msgobj_1953" = bitcast [185 x i8]* %"$msgobj_1953_salloc" to i8*
  store i8 4, i8* %"$msgobj_1953", align 1
  %"$msgobj_fname_1955" = getelementptr i8, i8* %"$msgobj_1953", i32 1
  %"$msgobj_fname_1956" = bitcast i8* %"$msgobj_fname_1955" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1954", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1956", align 8
  %"$msgobj_td_1957" = getelementptr i8, i8* %"$msgobj_1953", i32 17
  %"$msgobj_td_1958" = bitcast i8* %"$msgobj_td_1957" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1958", align 8
  %"$msgobj_v_1960" = getelementptr i8, i8* %"$msgobj_1953", i32 25
  %"$msgobj_v_1961" = bitcast i8* %"$msgobj_v_1960" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1959", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_1961", align 8
  %"$msgobj_fname_1963" = getelementptr i8, i8* %"$msgobj_1953", i32 41
  %"$msgobj_fname_1964" = bitcast i8* %"$msgobj_fname_1963" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1962", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1964", align 8
  %"$msgobj_td_1965" = getelementptr i8, i8* %"$msgobj_1953", i32 57
  %"$msgobj_td_1966" = bitcast i8* %"$msgobj_td_1965" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_1966", align 8
  %"$node_1967" = load [32 x i8], [32 x i8]* %node, align 1
  %"$msgobj_v_1968" = getelementptr i8, i8* %"$msgobj_1953", i32 65
  %"$msgobj_v_1969" = bitcast i8* %"$msgobj_v_1968" to [32 x i8]*
  store [32 x i8] %"$node_1967", [32 x i8]* %"$msgobj_v_1969", align 1
  %"$msgobj_fname_1971" = getelementptr i8, i8* %"$msgobj_1953", i32 97
  %"$msgobj_fname_1972" = bitcast i8* %"$msgobj_fname_1971" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1970", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1972", align 8
  %"$msgobj_td_1973" = getelementptr i8, i8* %"$msgobj_1953", i32 113
  %"$msgobj_td_1974" = bitcast i8* %"$msgobj_td_1973" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1974", align 8
  %"$owner_1975" = load [20 x i8], [20 x i8]* %owner, align 1
  %"$msgobj_v_1976" = getelementptr i8, i8* %"$msgobj_1953", i32 121
  %"$msgobj_v_1977" = bitcast i8* %"$msgobj_v_1976" to [20 x i8]*
  store [20 x i8] %"$owner_1975", [20 x i8]* %"$msgobj_v_1977", align 1
  %"$msgobj_fname_1979" = getelementptr i8, i8* %"$msgobj_1953", i32 141
  %"$msgobj_fname_1980" = bitcast i8* %"$msgobj_fname_1979" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1978", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_1980", align 8
  %"$msgobj_td_1981" = getelementptr i8, i8* %"$msgobj_1953", i32 157
  %"$msgobj_td_1982" = bitcast i8* %"$msgobj_td_1981" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1982", align 8
  %"$msgobj_v_1983" = getelementptr i8, i8* %"$msgobj_1953", i32 165
  %"$msgobj_v_1984" = bitcast i8* %"$msgobj_v_1983" to [20 x i8]*
  store [20 x i8] %resolver, [20 x i8]* %"$msgobj_v_1984", align 1
  store i8* %"$msgobj_1953", i8** %"$retval_226", align 8, !dbg !48
  %"$$retval_226_1986" = load i8*, i8** %"$retval_226", align 8
  ret i8* %"$$retval_226_1986"
}

define internal { i8* (i8*, [20 x i8]*)*, i8* } @"$fundef_223"(%"$$fundef_223_env_411"* %0, [20 x i8]* %1) !dbg !49 {
entry:
  %owner = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_223_env_node_1929" = getelementptr inbounds %"$$fundef_223_env_411", %"$$fundef_223_env_411"* %0, i32 0, i32 0
  %"$node_envload_1930" = load [32 x i8], [32 x i8]* %"$$fundef_223_env_node_1929", align 1
  %node = alloca [32 x i8], align 1
  store [32 x i8] %"$node_envload_1930", [32 x i8]* %node, align 1
  %"$retval_224" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1931" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1932" = icmp ugt i64 1, %"$gasrem_1931"
  br i1 %"$gascmp_1932", label %"$out_of_gas_1933", label %"$have_gas_1934"

"$out_of_gas_1933":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1934"

"$have_gas_1934":                                 ; preds = %"$out_of_gas_1933", %entry
  %"$consume_1935" = sub i64 %"$gasrem_1931", 1
  store i64 %"$consume_1935", i64* @_gasrem, align 8
  %"$$fundef_225_envp_1936_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_225_envp_1936_salloc" = call i8* @_salloc(i8* %"$$fundef_225_envp_1936_load", i64 52)
  %"$$fundef_225_envp_1936" = bitcast i8* %"$$fundef_225_envp_1936_salloc" to %"$$fundef_225_env_410"*
  %"$$fundef_225_env_voidp_1938" = bitcast %"$$fundef_225_env_410"* %"$$fundef_225_envp_1936" to i8*
  %"$$fundef_225_cloval_1939" = insertvalue { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_225_env_410"*, [20 x i8]*)* @"$fundef_225" to i8* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_225_env_voidp_1938", 1
  %"$$fundef_225_env_node_1940" = getelementptr inbounds %"$$fundef_225_env_410", %"$$fundef_225_env_410"* %"$$fundef_225_envp_1936", i32 0, i32 0
  %"$node_1941" = load [32 x i8], [32 x i8]* %node, align 1
  store [32 x i8] %"$node_1941", [32 x i8]* %"$$fundef_225_env_node_1940", align 1
  %"$$fundef_225_env_owner_1942" = getelementptr inbounds %"$$fundef_225_env_410", %"$$fundef_225_env_410"* %"$$fundef_225_envp_1936", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$$fundef_225_env_owner_1942", align 1
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$fundef_225_cloval_1939", { i8* (i8*, [20 x i8]*)*, i8* }* %"$retval_224", align 8, !dbg !50
  %"$$retval_224_1943" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$retval_224", align 8
  ret { i8* (i8*, [20 x i8]*)*, i8* } %"$$retval_224_1943"
}

define internal { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_221"(%"$$fundef_221_env_412"* %0, [32 x i8]* %1) !dbg !51 {
entry:
  %node = load [32 x i8], [32 x i8]* %1, align 1
  %"$retval_222" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1918" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1919" = icmp ugt i64 1, %"$gasrem_1918"
  br i1 %"$gascmp_1919", label %"$out_of_gas_1920", label %"$have_gas_1921"

"$out_of_gas_1920":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1921"

"$have_gas_1921":                                 ; preds = %"$out_of_gas_1920", %entry
  %"$consume_1922" = sub i64 %"$gasrem_1918", 1
  store i64 %"$consume_1922", i64* @_gasrem, align 8
  %"$$fundef_223_envp_1923_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_223_envp_1923_salloc" = call i8* @_salloc(i8* %"$$fundef_223_envp_1923_load", i64 32)
  %"$$fundef_223_envp_1923" = bitcast i8* %"$$fundef_223_envp_1923_salloc" to %"$$fundef_223_env_411"*
  %"$$fundef_223_env_voidp_1925" = bitcast %"$$fundef_223_env_411"* %"$$fundef_223_envp_1923" to i8*
  %"$$fundef_223_cloval_1926" = insertvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_223_env_411"*, [20 x i8]*)* @"$fundef_223" to { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_223_env_voidp_1925", 1
  %"$$fundef_223_env_node_1927" = getelementptr inbounds %"$$fundef_223_env_411", %"$$fundef_223_env_411"* %"$$fundef_223_envp_1923", i32 0, i32 0
  store [32 x i8] %node, [32 x i8]* %"$$fundef_223_env_node_1927", align 1
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_223_cloval_1926", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_222", align 8, !dbg !52
  %"$$retval_222_1928" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_222", align 8
  ret { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_222_1928"
}

define internal i8* @"$fundef_229"(%"$$fundef_229_env_413"* %0, %String %1) !dbg !53 {
entry:
  %"$$fundef_229_env_parent_1885" = getelementptr inbounds %"$$fundef_229_env_413", %"$$fundef_229_env_413"* %0, i32 0, i32 0
  %"$parent_envload_1886" = load [32 x i8], [32 x i8]* %"$$fundef_229_env_parent_1885", align 1
  %parent = alloca [32 x i8], align 1
  store [32 x i8] %"$parent_envload_1886", [32 x i8]* %parent, align 1
  %"$retval_230" = alloca i8*, align 8
  %"$gasrem_1887" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1888" = icmp ugt i64 1, %"$gasrem_1887"
  br i1 %"$gascmp_1888", label %"$out_of_gas_1889", label %"$have_gas_1890"

"$out_of_gas_1889":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1890"

"$have_gas_1890":                                 ; preds = %"$out_of_gas_1889", %entry
  %"$consume_1891" = sub i64 %"$gasrem_1887", 1
  store i64 %"$consume_1891", i64* @_gasrem, align 8
  %"$msgobj_1892_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1892_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1892_salloc_load", i64 137)
  %"$msgobj_1892_salloc" = bitcast i8* %"$msgobj_1892_salloc_salloc" to [137 x i8]*
  %"$msgobj_1892" = bitcast [137 x i8]* %"$msgobj_1892_salloc" to i8*
  store i8 3, i8* %"$msgobj_1892", align 1
  %"$msgobj_fname_1894" = getelementptr i8, i8* %"$msgobj_1892", i32 1
  %"$msgobj_fname_1895" = bitcast i8* %"$msgobj_fname_1894" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1893", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1895", align 8
  %"$msgobj_td_1896" = getelementptr i8, i8* %"$msgobj_1892", i32 17
  %"$msgobj_td_1897" = bitcast i8* %"$msgobj_td_1896" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1897", align 8
  %"$msgobj_v_1899" = getelementptr i8, i8* %"$msgobj_1892", i32 25
  %"$msgobj_v_1900" = bitcast i8* %"$msgobj_v_1899" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_1898", i32 0, i32 0), i32 9 }, %String* %"$msgobj_v_1900", align 8
  %"$msgobj_fname_1902" = getelementptr i8, i8* %"$msgobj_1892", i32 41
  %"$msgobj_fname_1903" = bitcast i8* %"$msgobj_fname_1902" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_1901", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_1903", align 8
  %"$msgobj_td_1904" = getelementptr i8, i8* %"$msgobj_1892", i32 57
  %"$msgobj_td_1905" = bitcast i8* %"$msgobj_td_1904" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_1905", align 8
  %"$parent_1906" = load [32 x i8], [32 x i8]* %parent, align 1
  %"$msgobj_v_1907" = getelementptr i8, i8* %"$msgobj_1892", i32 65
  %"$msgobj_v_1908" = bitcast i8* %"$msgobj_v_1907" to [32 x i8]*
  store [32 x i8] %"$parent_1906", [32 x i8]* %"$msgobj_v_1908", align 1
  %"$msgobj_fname_1910" = getelementptr i8, i8* %"$msgobj_1892", i32 97
  %"$msgobj_fname_1911" = bitcast i8* %"$msgobj_fname_1910" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1909", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1911", align 8
  %"$msgobj_td_1912" = getelementptr i8, i8* %"$msgobj_1892", i32 113
  %"$msgobj_td_1913" = bitcast i8* %"$msgobj_td_1912" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1913", align 8
  %"$msgobj_v_1914" = getelementptr i8, i8* %"$msgobj_1892", i32 121
  %"$msgobj_v_1915" = bitcast i8* %"$msgobj_v_1914" to %String*
  store %String %1, %String* %"$msgobj_v_1915", align 8
  store i8* %"$msgobj_1892", i8** %"$retval_230", align 8, !dbg !54
  %"$$retval_230_1917" = load i8*, i8** %"$retval_230", align 8
  ret i8* %"$$retval_230_1917"
}

define internal { i8* (i8*, %String)*, i8* } @"$fundef_227"(%"$$fundef_227_env_414"* %0, [32 x i8]* %1) !dbg !55 {
entry:
  %parent = load [32 x i8], [32 x i8]* %1, align 1
  %"$retval_228" = alloca { i8* (i8*, %String)*, i8* }, align 8
  %"$gasrem_1874" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1875" = icmp ugt i64 1, %"$gasrem_1874"
  br i1 %"$gascmp_1875", label %"$out_of_gas_1876", label %"$have_gas_1877"

"$out_of_gas_1876":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1877"

"$have_gas_1877":                                 ; preds = %"$out_of_gas_1876", %entry
  %"$consume_1878" = sub i64 %"$gasrem_1874", 1
  store i64 %"$consume_1878", i64* @_gasrem, align 8
  %"$$fundef_229_envp_1879_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_229_envp_1879_salloc" = call i8* @_salloc(i8* %"$$fundef_229_envp_1879_load", i64 32)
  %"$$fundef_229_envp_1879" = bitcast i8* %"$$fundef_229_envp_1879_salloc" to %"$$fundef_229_env_413"*
  %"$$fundef_229_env_voidp_1881" = bitcast %"$$fundef_229_env_413"* %"$$fundef_229_envp_1879" to i8*
  %"$$fundef_229_cloval_1882" = insertvalue { i8* (i8*, %String)*, i8* } { i8* (i8*, %String)* bitcast (i8* (%"$$fundef_229_env_413"*, %String)* @"$fundef_229" to i8* (i8*, %String)*), i8* undef }, i8* %"$$fundef_229_env_voidp_1881", 1
  %"$$fundef_229_env_parent_1883" = getelementptr inbounds %"$$fundef_229_env_413", %"$$fundef_229_env_413"* %"$$fundef_229_envp_1879", i32 0, i32 0
  store [32 x i8] %parent, [32 x i8]* %"$$fundef_229_env_parent_1883", align 1
  store { i8* (i8*, %String)*, i8* } %"$$fundef_229_cloval_1882", { i8* (i8*, %String)*, i8* }* %"$retval_228", align 8, !dbg !56
  %"$$retval_228_1884" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$retval_228", align 8
  ret { i8* (i8*, %String)*, i8* } %"$$retval_228_1884"
}

define internal i8* @"$fundef_231"(%"$$fundef_231_env_415"* %0, [20 x i8]* %1) !dbg !57 {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_232" = alloca i8*, align 8
  %"$gasrem_1851" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1852" = icmp ugt i64 1, %"$gasrem_1851"
  br i1 %"$gascmp_1852", label %"$out_of_gas_1853", label %"$have_gas_1854"

"$out_of_gas_1853":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1854"

"$have_gas_1854":                                 ; preds = %"$out_of_gas_1853", %entry
  %"$consume_1855" = sub i64 %"$gasrem_1851", 1
  store i64 %"$consume_1855", i64* @_gasrem, align 8
  %"$msgobj_1856_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1856_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1856_salloc_load", i64 85)
  %"$msgobj_1856_salloc" = bitcast i8* %"$msgobj_1856_salloc_salloc" to [85 x i8]*
  %"$msgobj_1856" = bitcast [85 x i8]* %"$msgobj_1856_salloc" to i8*
  store i8 2, i8* %"$msgobj_1856", align 1
  %"$msgobj_fname_1858" = getelementptr i8, i8* %"$msgobj_1856", i32 1
  %"$msgobj_fname_1859" = bitcast i8* %"$msgobj_fname_1858" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1857", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1859", align 8
  %"$msgobj_td_1860" = getelementptr i8, i8* %"$msgobj_1856", i32 17
  %"$msgobj_td_1861" = bitcast i8* %"$msgobj_td_1860" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1861", align 8
  %"$msgobj_v_1863" = getelementptr i8, i8* %"$msgobj_1856", i32 25
  %"$msgobj_v_1864" = bitcast i8* %"$msgobj_v_1863" to %String*
  store %String { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$stringlit_1862", i32 0, i32 0), i32 12 }, %String* %"$msgobj_v_1864", align 8
  %"$msgobj_fname_1866" = getelementptr i8, i8* %"$msgobj_1856", i32 41
  %"$msgobj_fname_1867" = bitcast i8* %"$msgobj_fname_1866" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1865", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1867", align 8
  %"$msgobj_td_1868" = getelementptr i8, i8* %"$msgobj_1856", i32 57
  %"$msgobj_td_1869" = bitcast i8* %"$msgobj_td_1868" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1869", align 8
  %"$msgobj_v_1870" = getelementptr i8, i8* %"$msgobj_1856", i32 65
  %"$msgobj_v_1871" = bitcast i8* %"$msgobj_v_1870" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %"$msgobj_v_1871", align 1
  store i8* %"$msgobj_1856", i8** %"$retval_232", align 8, !dbg !58
  %"$$retval_232_1873" = load i8*, i8** %"$retval_232", align 8
  ret i8* %"$$retval_232_1873"
}

define internal i8* @"$fundef_233"(%"$$fundef_233_env_416"* %0, [20 x i8]* %1) !dbg !59 {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_234" = alloca i8*, align 8
  %"$gasrem_1828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1829" = icmp ugt i64 1, %"$gasrem_1828"
  br i1 %"$gascmp_1829", label %"$out_of_gas_1830", label %"$have_gas_1831"

"$out_of_gas_1830":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1831"

"$have_gas_1831":                                 ; preds = %"$out_of_gas_1830", %entry
  %"$consume_1832" = sub i64 %"$gasrem_1828", 1
  store i64 %"$consume_1832", i64* @_gasrem, align 8
  %"$msgobj_1833_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1833_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1833_salloc_load", i64 85)
  %"$msgobj_1833_salloc" = bitcast i8* %"$msgobj_1833_salloc_salloc" to [85 x i8]*
  %"$msgobj_1833" = bitcast [85 x i8]* %"$msgobj_1833_salloc" to i8*
  store i8 2, i8* %"$msgobj_1833", align 1
  %"$msgobj_fname_1835" = getelementptr i8, i8* %"$msgobj_1833", i32 1
  %"$msgobj_fname_1836" = bitcast i8* %"$msgobj_fname_1835" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1834", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1836", align 8
  %"$msgobj_td_1837" = getelementptr i8, i8* %"$msgobj_1833", i32 17
  %"$msgobj_td_1838" = bitcast i8* %"$msgobj_td_1837" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1838", align 8
  %"$msgobj_v_1840" = getelementptr i8, i8* %"$msgobj_1833", i32 25
  %"$msgobj_v_1841" = bitcast i8* %"$msgobj_v_1840" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1839", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_1841", align 8
  %"$msgobj_fname_1843" = getelementptr i8, i8* %"$msgobj_1833", i32 41
  %"$msgobj_fname_1844" = bitcast i8* %"$msgobj_fname_1843" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1842", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1844", align 8
  %"$msgobj_td_1845" = getelementptr i8, i8* %"$msgobj_1833", i32 57
  %"$msgobj_td_1846" = bitcast i8* %"$msgobj_td_1845" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1846", align 8
  %"$msgobj_v_1847" = getelementptr i8, i8* %"$msgobj_1833", i32 65
  %"$msgobj_v_1848" = bitcast i8* %"$msgobj_v_1847" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %"$msgobj_v_1848", align 1
  store i8* %"$msgobj_1833", i8** %"$retval_234", align 8, !dbg !60
  %"$$retval_234_1850" = load i8*, i8** %"$retval_234", align 8
  ret i8* %"$$retval_234_1850"
}

define internal i8* @"$fundef_239"(%"$$fundef_239_env_417"* %0, %TName_Bool* %1) !dbg !61 {
entry:
  %"$$fundef_239_env_operator_1785" = getelementptr inbounds %"$$fundef_239_env_417", %"$$fundef_239_env_417"* %0, i32 0, i32 0
  %"$operator_envload_1786" = load [20 x i8], [20 x i8]* %"$$fundef_239_env_operator_1785", align 1
  %operator = alloca [20 x i8], align 1
  store [20 x i8] %"$operator_envload_1786", [20 x i8]* %operator, align 1
  %"$$fundef_239_env_user_1787" = getelementptr inbounds %"$$fundef_239_env_417", %"$$fundef_239_env_417"* %0, i32 0, i32 1
  %"$user_envload_1788" = load [20 x i8], [20 x i8]* %"$$fundef_239_env_user_1787", align 1
  %user = alloca [20 x i8], align 1
  store [20 x i8] %"$user_envload_1788", [20 x i8]* %user, align 1
  %"$retval_240" = alloca i8*, align 8
  %"$gasrem_1789" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1790" = icmp ugt i64 1, %"$gasrem_1789"
  br i1 %"$gascmp_1790", label %"$out_of_gas_1791", label %"$have_gas_1792"

"$out_of_gas_1791":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1792"

"$have_gas_1792":                                 ; preds = %"$out_of_gas_1791", %entry
  %"$consume_1793" = sub i64 %"$gasrem_1789", 1
  store i64 %"$consume_1793", i64* @_gasrem, align 8
  %"$msgobj_1794_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1794_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1794_salloc_load", i64 161)
  %"$msgobj_1794_salloc" = bitcast i8* %"$msgobj_1794_salloc_salloc" to [161 x i8]*
  %"$msgobj_1794" = bitcast [161 x i8]* %"$msgobj_1794_salloc" to i8*
  store i8 4, i8* %"$msgobj_1794", align 1
  %"$msgobj_fname_1796" = getelementptr i8, i8* %"$msgobj_1794", i32 1
  %"$msgobj_fname_1797" = bitcast i8* %"$msgobj_fname_1796" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1795", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1797", align 8
  %"$msgobj_td_1798" = getelementptr i8, i8* %"$msgobj_1794", i32 17
  %"$msgobj_td_1799" = bitcast i8* %"$msgobj_td_1798" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1799", align 8
  %"$msgobj_v_1801" = getelementptr i8, i8* %"$msgobj_1794", i32 25
  %"$msgobj_v_1802" = bitcast i8* %"$msgobj_v_1801" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_1800", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_1802", align 8
  %"$msgobj_fname_1804" = getelementptr i8, i8* %"$msgobj_1794", i32 41
  %"$msgobj_fname_1805" = bitcast i8* %"$msgobj_fname_1804" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1803", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1805", align 8
  %"$msgobj_td_1806" = getelementptr i8, i8* %"$msgobj_1794", i32 57
  %"$msgobj_td_1807" = bitcast i8* %"$msgobj_td_1806" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1807", align 8
  %"$user_1808" = load [20 x i8], [20 x i8]* %user, align 1
  %"$msgobj_v_1809" = getelementptr i8, i8* %"$msgobj_1794", i32 65
  %"$msgobj_v_1810" = bitcast i8* %"$msgobj_v_1809" to [20 x i8]*
  store [20 x i8] %"$user_1808", [20 x i8]* %"$msgobj_v_1810", align 1
  %"$msgobj_fname_1812" = getelementptr i8, i8* %"$msgobj_1794", i32 85
  %"$msgobj_fname_1813" = bitcast i8* %"$msgobj_fname_1812" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1811", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_1813", align 8
  %"$msgobj_td_1814" = getelementptr i8, i8* %"$msgobj_1794", i32 101
  %"$msgobj_td_1815" = bitcast i8* %"$msgobj_td_1814" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1815", align 8
  %"$operator_1816" = load [20 x i8], [20 x i8]* %operator, align 1
  %"$msgobj_v_1817" = getelementptr i8, i8* %"$msgobj_1794", i32 109
  %"$msgobj_v_1818" = bitcast i8* %"$msgobj_v_1817" to [20 x i8]*
  store [20 x i8] %"$operator_1816", [20 x i8]* %"$msgobj_v_1818", align 1
  %"$msgobj_fname_1820" = getelementptr i8, i8* %"$msgobj_1794", i32 129
  %"$msgobj_fname_1821" = bitcast i8* %"$msgobj_fname_1820" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1819", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1821", align 8
  %"$msgobj_td_1822" = getelementptr i8, i8* %"$msgobj_1794", i32 145
  %"$msgobj_td_1823" = bitcast i8* %"$msgobj_td_1822" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318", %_TyDescrTy_Typ** %"$msgobj_td_1823", align 8
  %"$msgobj_v_1824" = getelementptr i8, i8* %"$msgobj_1794", i32 153
  %"$msgobj_v_1825" = bitcast i8* %"$msgobj_v_1824" to %TName_Bool**
  store %TName_Bool* %1, %TName_Bool** %"$msgobj_v_1825", align 8
  store i8* %"$msgobj_1794", i8** %"$retval_240", align 8, !dbg !62
  %"$$retval_240_1827" = load i8*, i8** %"$retval_240", align 8
  ret i8* %"$$retval_240_1827"
}

define internal { i8* (i8*, %TName_Bool*)*, i8* } @"$fundef_237"(%"$$fundef_237_env_418"* %0, [20 x i8]* %1) !dbg !63 {
entry:
  %operator = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_237_env_user_1770" = getelementptr inbounds %"$$fundef_237_env_418", %"$$fundef_237_env_418"* %0, i32 0, i32 0
  %"$user_envload_1771" = load [20 x i8], [20 x i8]* %"$$fundef_237_env_user_1770", align 1
  %user = alloca [20 x i8], align 1
  store [20 x i8] %"$user_envload_1771", [20 x i8]* %user, align 1
  %"$retval_238" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_1772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1773" = icmp ugt i64 1, %"$gasrem_1772"
  br i1 %"$gascmp_1773", label %"$out_of_gas_1774", label %"$have_gas_1775"

"$out_of_gas_1774":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1775"

"$have_gas_1775":                                 ; preds = %"$out_of_gas_1774", %entry
  %"$consume_1776" = sub i64 %"$gasrem_1772", 1
  store i64 %"$consume_1776", i64* @_gasrem, align 8
  %"$$fundef_239_envp_1777_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_239_envp_1777_salloc" = call i8* @_salloc(i8* %"$$fundef_239_envp_1777_load", i64 40)
  %"$$fundef_239_envp_1777" = bitcast i8* %"$$fundef_239_envp_1777_salloc" to %"$$fundef_239_env_417"*
  %"$$fundef_239_env_voidp_1779" = bitcast %"$$fundef_239_env_417"* %"$$fundef_239_envp_1777" to i8*
  %"$$fundef_239_cloval_1780" = insertvalue { i8* (i8*, %TName_Bool*)*, i8* } { i8* (i8*, %TName_Bool*)* bitcast (i8* (%"$$fundef_239_env_417"*, %TName_Bool*)* @"$fundef_239" to i8* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_239_env_voidp_1779", 1
  %"$$fundef_239_env_operator_1781" = getelementptr inbounds %"$$fundef_239_env_417", %"$$fundef_239_env_417"* %"$$fundef_239_envp_1777", i32 0, i32 0
  store [20 x i8] %operator, [20 x i8]* %"$$fundef_239_env_operator_1781", align 1
  %"$$fundef_239_env_user_1782" = getelementptr inbounds %"$$fundef_239_env_417", %"$$fundef_239_env_417"* %"$$fundef_239_envp_1777", i32 0, i32 1
  %"$user_1783" = load [20 x i8], [20 x i8]* %user, align 1
  store [20 x i8] %"$user_1783", [20 x i8]* %"$$fundef_239_env_user_1782", align 1
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$fundef_239_cloval_1780", { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_238", align 8, !dbg !64
  %"$$retval_238_1784" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_238", align 8
  ret { i8* (i8*, %TName_Bool*)*, i8* } %"$$retval_238_1784"
}

define internal { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_235"(%"$$fundef_235_env_419"* %0, [20 x i8]* %1) !dbg !65 {
entry:
  %user = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_236" = alloca { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1759" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1760" = icmp ugt i64 1, %"$gasrem_1759"
  br i1 %"$gascmp_1760", label %"$out_of_gas_1761", label %"$have_gas_1762"

"$out_of_gas_1761":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1762"

"$have_gas_1762":                                 ; preds = %"$out_of_gas_1761", %entry
  %"$consume_1763" = sub i64 %"$gasrem_1759", 1
  store i64 %"$consume_1763", i64* @_gasrem, align 8
  %"$$fundef_237_envp_1764_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_237_envp_1764_salloc" = call i8* @_salloc(i8* %"$$fundef_237_envp_1764_load", i64 20)
  %"$$fundef_237_envp_1764" = bitcast i8* %"$$fundef_237_envp_1764_salloc" to %"$$fundef_237_env_418"*
  %"$$fundef_237_env_voidp_1766" = bitcast %"$$fundef_237_env_418"* %"$$fundef_237_envp_1764" to i8*
  %"$$fundef_237_cloval_1767" = insertvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_237_env_418"*, [20 x i8]*)* @"$fundef_237" to { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_237_env_voidp_1766", 1
  %"$$fundef_237_env_user_1768" = getelementptr inbounds %"$$fundef_237_env_418", %"$$fundef_237_env_418"* %"$$fundef_237_envp_1764", i32 0, i32 0
  store [20 x i8] %user, [20 x i8]* %"$$fundef_237_env_user_1768", align 1
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_237_cloval_1767", { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_236", align 8, !dbg !66
  %"$$retval_236_1769" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_236", align 8
  ret { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_236_1769"
}

define internal i8* @"$fundef_243"(%"$$fundef_243_env_420"* %0, %TName_Bool* %1) !dbg !67 {
entry:
  %"$$fundef_243_env_address_1726" = getelementptr inbounds %"$$fundef_243_env_420", %"$$fundef_243_env_420"* %0, i32 0, i32 0
  %"$address_envload_1727" = load [20 x i8], [20 x i8]* %"$$fundef_243_env_address_1726", align 1
  %address = alloca [20 x i8], align 1
  store [20 x i8] %"$address_envload_1727", [20 x i8]* %address, align 1
  %"$retval_244" = alloca i8*, align 8
  %"$gasrem_1728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1729" = icmp ugt i64 1, %"$gasrem_1728"
  br i1 %"$gascmp_1729", label %"$out_of_gas_1730", label %"$have_gas_1731"

"$out_of_gas_1730":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1731"

"$have_gas_1731":                                 ; preds = %"$out_of_gas_1730", %entry
  %"$consume_1732" = sub i64 %"$gasrem_1728", 1
  store i64 %"$consume_1732", i64* @_gasrem, align 8
  %"$msgobj_1733_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1733_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1733_salloc_load", i64 117)
  %"$msgobj_1733_salloc" = bitcast i8* %"$msgobj_1733_salloc_salloc" to [117 x i8]*
  %"$msgobj_1733" = bitcast [117 x i8]* %"$msgobj_1733_salloc" to i8*
  store i8 3, i8* %"$msgobj_1733", align 1
  %"$msgobj_fname_1735" = getelementptr i8, i8* %"$msgobj_1733", i32 1
  %"$msgobj_fname_1736" = bitcast i8* %"$msgobj_fname_1735" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1734", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1736", align 8
  %"$msgobj_td_1737" = getelementptr i8, i8* %"$msgobj_1733", i32 17
  %"$msgobj_td_1738" = bitcast i8* %"$msgobj_td_1737" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_1738", align 8
  %"$msgobj_v_1740" = getelementptr i8, i8* %"$msgobj_1733", i32 25
  %"$msgobj_v_1741" = bitcast i8* %"$msgobj_v_1740" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1739", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_1741", align 8
  %"$msgobj_fname_1743" = getelementptr i8, i8* %"$msgobj_1733", i32 41
  %"$msgobj_fname_1744" = bitcast i8* %"$msgobj_fname_1743" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1742", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1744", align 8
  %"$msgobj_td_1745" = getelementptr i8, i8* %"$msgobj_1733", i32 57
  %"$msgobj_td_1746" = bitcast i8* %"$msgobj_td_1745" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_1746", align 8
  %"$address_1747" = load [20 x i8], [20 x i8]* %address, align 1
  %"$msgobj_v_1748" = getelementptr i8, i8* %"$msgobj_1733", i32 65
  %"$msgobj_v_1749" = bitcast i8* %"$msgobj_v_1748" to [20 x i8]*
  store [20 x i8] %"$address_1747", [20 x i8]* %"$msgobj_v_1749", align 1
  %"$msgobj_fname_1751" = getelementptr i8, i8* %"$msgobj_1733", i32 85
  %"$msgobj_fname_1752" = bitcast i8* %"$msgobj_fname_1751" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1750", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1752", align 8
  %"$msgobj_td_1753" = getelementptr i8, i8* %"$msgobj_1733", i32 101
  %"$msgobj_td_1754" = bitcast i8* %"$msgobj_td_1753" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318", %_TyDescrTy_Typ** %"$msgobj_td_1754", align 8
  %"$msgobj_v_1755" = getelementptr i8, i8* %"$msgobj_1733", i32 109
  %"$msgobj_v_1756" = bitcast i8* %"$msgobj_v_1755" to %TName_Bool**
  store %TName_Bool* %1, %TName_Bool** %"$msgobj_v_1756", align 8
  store i8* %"$msgobj_1733", i8** %"$retval_244", align 8, !dbg !68
  %"$$retval_244_1758" = load i8*, i8** %"$retval_244", align 8
  ret i8* %"$$retval_244_1758"
}

define internal { i8* (i8*, %TName_Bool*)*, i8* } @"$fundef_241"(%"$$fundef_241_env_421"* %0, [20 x i8]* %1) !dbg !69 {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_242" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_1715" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1716" = icmp ugt i64 1, %"$gasrem_1715"
  br i1 %"$gascmp_1716", label %"$out_of_gas_1717", label %"$have_gas_1718"

"$out_of_gas_1717":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1718"

"$have_gas_1718":                                 ; preds = %"$out_of_gas_1717", %entry
  %"$consume_1719" = sub i64 %"$gasrem_1715", 1
  store i64 %"$consume_1719", i64* @_gasrem, align 8
  %"$$fundef_243_envp_1720_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_243_envp_1720_salloc" = call i8* @_salloc(i8* %"$$fundef_243_envp_1720_load", i64 20)
  %"$$fundef_243_envp_1720" = bitcast i8* %"$$fundef_243_envp_1720_salloc" to %"$$fundef_243_env_420"*
  %"$$fundef_243_env_voidp_1722" = bitcast %"$$fundef_243_env_420"* %"$$fundef_243_envp_1720" to i8*
  %"$$fundef_243_cloval_1723" = insertvalue { i8* (i8*, %TName_Bool*)*, i8* } { i8* (i8*, %TName_Bool*)* bitcast (i8* (%"$$fundef_243_env_420"*, %TName_Bool*)* @"$fundef_243" to i8* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_243_env_voidp_1722", 1
  %"$$fundef_243_env_address_1724" = getelementptr inbounds %"$$fundef_243_env_420", %"$$fundef_243_env_420"* %"$$fundef_243_envp_1720", i32 0, i32 0
  store [20 x i8] %address, [20 x i8]* %"$$fundef_243_env_address_1724", align 1
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$fundef_243_cloval_1723", { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_242", align 8, !dbg !70
  %"$$retval_242_1725" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_242", align 8
  ret { i8* (i8*, %TName_Bool*)*, i8* } %"$$retval_242_1725"
}

define internal %TName_Bool* @"$fundef_247"(%"$$fundef_247_env_422"* %0, %TName_Bool* %1) !dbg !71 {
entry:
  %"$$fundef_247_env_b1_1640" = getelementptr inbounds %"$$fundef_247_env_422", %"$$fundef_247_env_422"* %0, i32 0, i32 0
  %"$b1_envload_1641" = load %TName_Bool*, %TName_Bool** %"$$fundef_247_env_b1_1640", align 8
  %b1 = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b1_envload_1641", %TName_Bool** %b1, align 8
  %"$retval_248" = alloca %TName_Bool*, align 8
  %"$gasrem_1642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1643" = icmp ugt i64 2, %"$gasrem_1642"
  br i1 %"$gascmp_1643", label %"$out_of_gas_1644", label %"$have_gas_1645"

"$out_of_gas_1644":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1645"

"$have_gas_1645":                                 ; preds = %"$out_of_gas_1644", %entry
  %"$consume_1646" = sub i64 %"$gasrem_1642", 2
  store i64 %"$consume_1646", i64* @_gasrem, align 8
  %"$b1_1648" = load %TName_Bool*, %TName_Bool** %b1, align 8
  %"$b1_tag_1649" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b1_1648", i32 0, i32 0
  %"$b1_tag_1650" = load i8, i8* %"$b1_tag_1649", align 1
  switch i8 %"$b1_tag_1650", label %"$empty_default_1651" [
    i8 0, label %"$True_1652"
    i8 1, label %"$False_1683"
  ], !dbg !72

"$True_1652":                                     ; preds = %"$have_gas_1645"
  %"$b1_1653" = bitcast %TName_Bool* %"$b1_1648" to %CName_True*
  %"$gasrem_1654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1655" = icmp ugt i64 2, %"$gasrem_1654"
  br i1 %"$gascmp_1655", label %"$out_of_gas_1656", label %"$have_gas_1657"

"$out_of_gas_1656":                               ; preds = %"$True_1652"
  call void @_out_of_gas()
  br label %"$have_gas_1657"

"$have_gas_1657":                                 ; preds = %"$out_of_gas_1656", %"$True_1652"
  %"$consume_1658" = sub i64 %"$gasrem_1654", 2
  store i64 %"$consume_1658", i64* @_gasrem, align 8
  %"$b2_tag_1660" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b2_tag_1661" = load i8, i8* %"$b2_tag_1660", align 1
  switch i8 %"$b2_tag_1661", label %"$empty_default_1662" [
    i8 0, label %"$True_1663"
    i8 1, label %"$False_1673"
  ], !dbg !73

"$True_1663":                                     ; preds = %"$have_gas_1657"
  %"$b2_1664" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_1665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1666" = icmp ugt i64 1, %"$gasrem_1665"
  br i1 %"$gascmp_1666", label %"$out_of_gas_1667", label %"$have_gas_1668"

"$out_of_gas_1667":                               ; preds = %"$True_1663"
  call void @_out_of_gas()
  br label %"$have_gas_1668"

"$have_gas_1668":                                 ; preds = %"$out_of_gas_1667", %"$True_1663"
  %"$consume_1669" = sub i64 %"$gasrem_1665", 1
  store i64 %"$consume_1669", i64* @_gasrem, align 8
  %"$adtval_1670_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1670_salloc" = call i8* @_salloc(i8* %"$adtval_1670_load", i64 1)
  %"$adtval_1670" = bitcast i8* %"$adtval_1670_salloc" to %CName_True*
  %"$adtgep_1671" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1670", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1671", align 1
  %"$adtptr_1672" = bitcast %CName_True* %"$adtval_1670" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1672", %TName_Bool** %"$retval_248", align 8, !dbg !76
  br label %"$matchsucc_1659"

"$False_1673":                                    ; preds = %"$have_gas_1657"
  %"$b2_1674" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_1675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1676" = icmp ugt i64 1, %"$gasrem_1675"
  br i1 %"$gascmp_1676", label %"$out_of_gas_1677", label %"$have_gas_1678"

"$out_of_gas_1677":                               ; preds = %"$False_1673"
  call void @_out_of_gas()
  br label %"$have_gas_1678"

"$have_gas_1678":                                 ; preds = %"$out_of_gas_1677", %"$False_1673"
  %"$consume_1679" = sub i64 %"$gasrem_1675", 1
  store i64 %"$consume_1679", i64* @_gasrem, align 8
  %"$adtval_1680_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1680_salloc" = call i8* @_salloc(i8* %"$adtval_1680_load", i64 1)
  %"$adtval_1680" = bitcast i8* %"$adtval_1680_salloc" to %CName_False*
  %"$adtgep_1681" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1680", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1681", align 1
  %"$adtptr_1682" = bitcast %CName_False* %"$adtval_1680" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1682", %TName_Bool** %"$retval_248", align 8, !dbg !79
  br label %"$matchsucc_1659"

"$empty_default_1662":                            ; preds = %"$have_gas_1657"
  br label %"$matchsucc_1659"

"$matchsucc_1659":                                ; preds = %"$have_gas_1678", %"$have_gas_1668", %"$empty_default_1662"
  br label %"$matchsucc_1647"

"$False_1683":                                    ; preds = %"$have_gas_1645"
  %"$b1_1684" = bitcast %TName_Bool* %"$b1_1648" to %CName_False*
  %"$gasrem_1685" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1686" = icmp ugt i64 2, %"$gasrem_1685"
  br i1 %"$gascmp_1686", label %"$out_of_gas_1687", label %"$have_gas_1688"

"$out_of_gas_1687":                               ; preds = %"$False_1683"
  call void @_out_of_gas()
  br label %"$have_gas_1688"

"$have_gas_1688":                                 ; preds = %"$out_of_gas_1687", %"$False_1683"
  %"$consume_1689" = sub i64 %"$gasrem_1685", 2
  store i64 %"$consume_1689", i64* @_gasrem, align 8
  %"$b2_tag_1691" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b2_tag_1692" = load i8, i8* %"$b2_tag_1691", align 1
  switch i8 %"$b2_tag_1692", label %"$empty_default_1693" [
    i8 0, label %"$True_1694"
    i8 1, label %"$False_1704"
  ], !dbg !81

"$True_1694":                                     ; preds = %"$have_gas_1688"
  %"$b2_1695" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_1696" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1697" = icmp ugt i64 1, %"$gasrem_1696"
  br i1 %"$gascmp_1697", label %"$out_of_gas_1698", label %"$have_gas_1699"

"$out_of_gas_1698":                               ; preds = %"$True_1694"
  call void @_out_of_gas()
  br label %"$have_gas_1699"

"$have_gas_1699":                                 ; preds = %"$out_of_gas_1698", %"$True_1694"
  %"$consume_1700" = sub i64 %"$gasrem_1696", 1
  store i64 %"$consume_1700", i64* @_gasrem, align 8
  %"$adtval_1701_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1701_salloc" = call i8* @_salloc(i8* %"$adtval_1701_load", i64 1)
  %"$adtval_1701" = bitcast i8* %"$adtval_1701_salloc" to %CName_False*
  %"$adtgep_1702" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1701", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1702", align 1
  %"$adtptr_1703" = bitcast %CName_False* %"$adtval_1701" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1703", %TName_Bool** %"$retval_248", align 8, !dbg !83
  br label %"$matchsucc_1690"

"$False_1704":                                    ; preds = %"$have_gas_1688"
  %"$b2_1705" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_1706" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1707" = icmp ugt i64 1, %"$gasrem_1706"
  br i1 %"$gascmp_1707", label %"$out_of_gas_1708", label %"$have_gas_1709"

"$out_of_gas_1708":                               ; preds = %"$False_1704"
  call void @_out_of_gas()
  br label %"$have_gas_1709"

"$have_gas_1709":                                 ; preds = %"$out_of_gas_1708", %"$False_1704"
  %"$consume_1710" = sub i64 %"$gasrem_1706", 1
  store i64 %"$consume_1710", i64* @_gasrem, align 8
  %"$adtval_1711_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1711_salloc" = call i8* @_salloc(i8* %"$adtval_1711_load", i64 1)
  %"$adtval_1711" = bitcast i8* %"$adtval_1711_salloc" to %CName_True*
  %"$adtgep_1712" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1711", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1712", align 1
  %"$adtptr_1713" = bitcast %CName_True* %"$adtval_1711" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1713", %TName_Bool** %"$retval_248", align 8, !dbg !86
  br label %"$matchsucc_1690"

"$empty_default_1693":                            ; preds = %"$have_gas_1688"
  br label %"$matchsucc_1690"

"$matchsucc_1690":                                ; preds = %"$have_gas_1709", %"$have_gas_1699", %"$empty_default_1693"
  br label %"$matchsucc_1647"

"$empty_default_1651":                            ; preds = %"$have_gas_1645"
  br label %"$matchsucc_1647"

"$matchsucc_1647":                                ; preds = %"$matchsucc_1690", %"$matchsucc_1659", %"$empty_default_1651"
  %"$$retval_248_1714" = load %TName_Bool*, %TName_Bool** %"$retval_248", align 8
  ret %TName_Bool* %"$$retval_248_1714"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_245"(%"$$fundef_245_env_423"* %0, %TName_Bool* %1) !dbg !88 {
entry:
  %"$retval_246" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_1629" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1630" = icmp ugt i64 1, %"$gasrem_1629"
  br i1 %"$gascmp_1630", label %"$out_of_gas_1631", label %"$have_gas_1632"

"$out_of_gas_1631":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1632"

"$have_gas_1632":                                 ; preds = %"$out_of_gas_1631", %entry
  %"$consume_1633" = sub i64 %"$gasrem_1629", 1
  store i64 %"$consume_1633", i64* @_gasrem, align 8
  %"$$fundef_247_envp_1634_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_247_envp_1634_salloc" = call i8* @_salloc(i8* %"$$fundef_247_envp_1634_load", i64 8)
  %"$$fundef_247_envp_1634" = bitcast i8* %"$$fundef_247_envp_1634_salloc" to %"$$fundef_247_env_422"*
  %"$$fundef_247_env_voidp_1636" = bitcast %"$$fundef_247_env_422"* %"$$fundef_247_envp_1634" to i8*
  %"$$fundef_247_cloval_1637" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_247_env_422"*, %TName_Bool*)* @"$fundef_247" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_247_env_voidp_1636", 1
  %"$$fundef_247_env_b1_1638" = getelementptr inbounds %"$$fundef_247_env_422", %"$$fundef_247_env_422"* %"$$fundef_247_envp_1634", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_247_env_b1_1638", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_247_cloval_1637", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_246", align 8, !dbg !89
  %"$$retval_246_1639" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_246", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_246_1639"
}

define internal %TName_Bool* @"$fundef_253"(%"$$fundef_253_env_424"* %0, [20 x i8]* %1) !dbg !90 {
entry:
  %v = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_253_env_BoolUtils.negb_1600" = getelementptr inbounds %"$$fundef_253_env_424", %"$$fundef_253_env_424"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1601" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_253_env_BoolUtils.negb_1600", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1601", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_253_env_bs_1602" = getelementptr inbounds %"$$fundef_253_env_424", %"$$fundef_253_env_424"* %0, i32 0, i32 1
  %"$bs_envload_1603" = load [20 x i8], [20 x i8]* %"$$fundef_253_env_bs_1602", align 1
  %bs = alloca [20 x i8], align 1
  store [20 x i8] %"$bs_envload_1603", [20 x i8]* %bs, align 1
  %"$retval_254" = alloca %TName_Bool*, align 8
  %"$gasrem_1604" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1605" = icmp ugt i64 1, %"$gasrem_1604"
  br i1 %"$gascmp_1605", label %"$out_of_gas_1606", label %"$have_gas_1607"

"$out_of_gas_1606":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1607"

"$have_gas_1607":                                 ; preds = %"$out_of_gas_1606", %entry
  %"$consume_1608" = sub i64 %"$gasrem_1604", 1
  store i64 %"$consume_1608", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$execptr_load_1609" = load i8*, i8** @_execptr, align 8
  %"$eq_v_1610" = alloca [20 x i8], align 1
  store [20 x i8] %v, [20 x i8]* %"$eq_v_1610", align 1
  %"$$eq_v_1610_1611" = bitcast [20 x i8]* %"$eq_v_1610" to i8*
  %"$eq_bs_1612" = alloca [20 x i8], align 1
  %"$bs_1613" = load [20 x i8], [20 x i8]* %bs, align 1
  store [20 x i8] %"$bs_1613", [20 x i8]* %"$eq_bs_1612", align 1
  %"$$eq_bs_1612_1614" = bitcast [20 x i8]* %"$eq_bs_1612" to i8*
  %"$eq_call_1615" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_1609", i32 20, i8* %"$$eq_v_1610_1611", i8* %"$$eq_bs_1612_1614"), !dbg !91
  store %TName_Bool* %"$eq_call_1615", %TName_Bool** %b, align 8, !dbg !91
  %"$gasrem_1617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1618" = icmp ugt i64 1, %"$gasrem_1617"
  br i1 %"$gascmp_1618", label %"$out_of_gas_1619", label %"$have_gas_1620"

"$out_of_gas_1619":                               ; preds = %"$have_gas_1607"
  call void @_out_of_gas()
  br label %"$have_gas_1620"

"$have_gas_1620":                                 ; preds = %"$out_of_gas_1619", %"$have_gas_1607"
  %"$consume_1621" = sub i64 %"$gasrem_1617", 1
  store i64 %"$consume_1621", i64* @_gasrem, align 8
  %"$BoolUtils.negb_33" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_1622" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_1623" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1622", 0
  %"$BoolUtils.negb_envptr_1624" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1622", 1
  %"$b_1625" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$BoolUtils.negb_call_1626" = call %TName_Bool* %"$BoolUtils.negb_fptr_1623"(i8* %"$BoolUtils.negb_envptr_1624", %TName_Bool* %"$b_1625"), !dbg !92
  store %TName_Bool* %"$BoolUtils.negb_call_1626", %TName_Bool** %"$BoolUtils.negb_33", align 8, !dbg !92
  %"$$BoolUtils.negb_33_1627" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_33", align 8
  store %TName_Bool* %"$$BoolUtils.negb_33_1627", %TName_Bool** %"$retval_254", align 8, !dbg !92
  %"$$retval_254_1628" = load %TName_Bool*, %TName_Bool** %"$retval_254", align 8
  ret %TName_Bool* %"$$retval_254_1628"
}

define internal %TName_List_ByStr20* @"$fundef_251"(%"$$fundef_251_env_425"* %0, [20 x i8]* %1) !dbg !93 {
entry:
  %bs = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_251_env_BoolUtils.negb_1543" = getelementptr inbounds %"$$fundef_251_env_425", %"$$fundef_251_env_425"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1544" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_251_env_BoolUtils.negb_1543", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1544", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_251_env_ListUtils.list_filter_1545" = getelementptr inbounds %"$$fundef_251_env_425", %"$$fundef_251_env_425"* %0, i32 0, i32 1
  %"$ListUtils.list_filter_envload_1546" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_251_env_ListUtils.list_filter_1545", align 8
  %ListUtils.list_filter = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_envload_1546", { i8*, i8* }** %ListUtils.list_filter, align 8
  %"$$fundef_251_env_list_1547" = getelementptr inbounds %"$$fundef_251_env_425", %"$$fundef_251_env_425"* %0, i32 0, i32 2
  %"$list_envload_1548" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_251_env_list_1547", align 8
  %list = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$list_envload_1548", %TName_List_ByStr20** %list, align 8
  %"$retval_252" = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_1549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1550" = icmp ugt i64 1, %"$gasrem_1549"
  br i1 %"$gascmp_1550", label %"$out_of_gas_1551", label %"$have_gas_1552"

"$out_of_gas_1551":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1552"

"$have_gas_1552":                                 ; preds = %"$out_of_gas_1551", %entry
  %"$consume_1553" = sub i64 %"$gasrem_1549", 1
  store i64 %"$consume_1553", i64* @_gasrem, align 8
  %listByStr20Filter = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1555" = icmp ugt i64 1, %"$gasrem_1554"
  br i1 %"$gascmp_1555", label %"$out_of_gas_1556", label %"$have_gas_1557"

"$out_of_gas_1556":                               ; preds = %"$have_gas_1552"
  call void @_out_of_gas()
  br label %"$have_gas_1557"

"$have_gas_1557":                                 ; preds = %"$out_of_gas_1556", %"$have_gas_1552"
  %"$consume_1558" = sub i64 %"$gasrem_1554", 1
  store i64 %"$consume_1558", i64* @_gasrem, align 8
  %"$ListUtils.list_filter_1559" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_filter, align 8
  %"$ListUtils.list_filter_1560" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_filter_1559", i32 0
  %"$ListUtils.list_filter_1561" = bitcast { i8*, i8* }* %"$ListUtils.list_filter_1560" to { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_filter_1562" = load { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_filter_1561", align 8
  %"$ListUtils.list_filter_fptr_1563" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_filter_1562", 0
  %"$ListUtils.list_filter_envptr_1564" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_filter_1562", 1
  %"$ListUtils.list_filter_call_1565" = call { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_filter_fptr_1563"(i8* %"$ListUtils.list_filter_envptr_1564"), !dbg !94
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_filter_call_1565", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %listByStr20Filter, align 8, !dbg !95
  %"$gasrem_1566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1567" = icmp ugt i64 1, %"$gasrem_1566"
  br i1 %"$gascmp_1567", label %"$out_of_gas_1568", label %"$have_gas_1569"

"$out_of_gas_1568":                               ; preds = %"$have_gas_1557"
  call void @_out_of_gas()
  br label %"$have_gas_1569"

"$have_gas_1569":                                 ; preds = %"$out_of_gas_1568", %"$have_gas_1557"
  %"$consume_1570" = sub i64 %"$gasrem_1566", 1
  store i64 %"$consume_1570", i64* @_gasrem, align 8
  %fn = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1572" = icmp ugt i64 1, %"$gasrem_1571"
  br i1 %"$gascmp_1572", label %"$out_of_gas_1573", label %"$have_gas_1574"

"$out_of_gas_1573":                               ; preds = %"$have_gas_1569"
  call void @_out_of_gas()
  br label %"$have_gas_1574"

"$have_gas_1574":                                 ; preds = %"$out_of_gas_1573", %"$have_gas_1569"
  %"$consume_1575" = sub i64 %"$gasrem_1571", 1
  store i64 %"$consume_1575", i64* @_gasrem, align 8
  %"$$fundef_253_envp_1576_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_253_envp_1576_salloc" = call i8* @_salloc(i8* %"$$fundef_253_envp_1576_load", i64 40)
  %"$$fundef_253_envp_1576" = bitcast i8* %"$$fundef_253_envp_1576_salloc" to %"$$fundef_253_env_424"*
  %"$$fundef_253_env_voidp_1578" = bitcast %"$$fundef_253_env_424"* %"$$fundef_253_envp_1576" to i8*
  %"$$fundef_253_cloval_1579" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_253_env_424"*, [20 x i8]*)* @"$fundef_253" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_253_env_voidp_1578", 1
  %"$$fundef_253_env_BoolUtils.negb_1580" = getelementptr inbounds %"$$fundef_253_env_424", %"$$fundef_253_env_424"* %"$$fundef_253_envp_1576", i32 0, i32 0
  %"$BoolUtils.negb_1581" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1581", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_253_env_BoolUtils.negb_1580", align 8
  %"$$fundef_253_env_bs_1582" = getelementptr inbounds %"$$fundef_253_env_424", %"$$fundef_253_env_424"* %"$$fundef_253_envp_1576", i32 0, i32 1
  store [20 x i8] %bs, [20 x i8]* %"$$fundef_253_env_bs_1582", align 1
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_253_cloval_1579", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %fn, align 8, !dbg !96
  %"$gasrem_1583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1584" = icmp ugt i64 1, %"$gasrem_1583"
  br i1 %"$gascmp_1584", label %"$out_of_gas_1585", label %"$have_gas_1586"

"$out_of_gas_1585":                               ; preds = %"$have_gas_1574"
  call void @_out_of_gas()
  br label %"$have_gas_1586"

"$have_gas_1586":                                 ; preds = %"$out_of_gas_1585", %"$have_gas_1574"
  %"$consume_1587" = sub i64 %"$gasrem_1583", 1
  store i64 %"$consume_1587", i64* @_gasrem, align 8
  %"$listByStr20Filter_34" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$listByStr20Filter_1588" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %listByStr20Filter, align 8
  %"$listByStr20Filter_fptr_1589" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listByStr20Filter_1588", 0
  %"$listByStr20Filter_envptr_1590" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listByStr20Filter_1588", 1
  %"$fn_1591" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %fn, align 8
  %"$listByStr20Filter_call_1592" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$listByStr20Filter_fptr_1589"(i8* %"$listByStr20Filter_envptr_1590", { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$fn_1591"), !dbg !97
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$listByStr20Filter_call_1592", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listByStr20Filter_34", align 8, !dbg !97
  %"$listByStr20Filter_35" = alloca %TName_List_ByStr20*, align 8
  %"$$listByStr20Filter_34_1593" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listByStr20Filter_34", align 8
  %"$$listByStr20Filter_34_fptr_1594" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listByStr20Filter_34_1593", 0
  %"$$listByStr20Filter_34_envptr_1595" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listByStr20Filter_34_1593", 1
  %"$list_1596" = load %TName_List_ByStr20*, %TName_List_ByStr20** %list, align 8
  %"$$listByStr20Filter_34_call_1597" = call %TName_List_ByStr20* %"$$listByStr20Filter_34_fptr_1594"(i8* %"$$listByStr20Filter_34_envptr_1595", %TName_List_ByStr20* %"$list_1596"), !dbg !97
  store %TName_List_ByStr20* %"$$listByStr20Filter_34_call_1597", %TName_List_ByStr20** %"$listByStr20Filter_35", align 8, !dbg !97
  %"$$listByStr20Filter_35_1598" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$listByStr20Filter_35", align 8
  store %TName_List_ByStr20* %"$$listByStr20Filter_35_1598", %TName_List_ByStr20** %"$retval_252", align 8, !dbg !97
  %"$$retval_252_1599" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$retval_252", align 8
  ret %TName_List_ByStr20* %"$$retval_252_1599"
}

define internal { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } @"$fundef_249"(%"$$fundef_249_env_426"* %0, %TName_List_ByStr20* %1) !dbg !98 {
entry:
  %"$$fundef_249_env_BoolUtils.negb_1524" = getelementptr inbounds %"$$fundef_249_env_426", %"$$fundef_249_env_426"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1525" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_249_env_BoolUtils.negb_1524", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1525", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_249_env_ListUtils.list_filter_1526" = getelementptr inbounds %"$$fundef_249_env_426", %"$$fundef_249_env_426"* %0, i32 0, i32 1
  %"$ListUtils.list_filter_envload_1527" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_249_env_ListUtils.list_filter_1526", align 8
  %ListUtils.list_filter = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_envload_1527", { i8*, i8* }** %ListUtils.list_filter, align 8
  %"$retval_250" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1529" = icmp ugt i64 1, %"$gasrem_1528"
  br i1 %"$gascmp_1529", label %"$out_of_gas_1530", label %"$have_gas_1531"

"$out_of_gas_1530":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1531"

"$have_gas_1531":                                 ; preds = %"$out_of_gas_1530", %entry
  %"$consume_1532" = sub i64 %"$gasrem_1528", 1
  store i64 %"$consume_1532", i64* @_gasrem, align 8
  %"$$fundef_251_envp_1533_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_251_envp_1533_salloc" = call i8* @_salloc(i8* %"$$fundef_251_envp_1533_load", i64 32)
  %"$$fundef_251_envp_1533" = bitcast i8* %"$$fundef_251_envp_1533_salloc" to %"$$fundef_251_env_425"*
  %"$$fundef_251_env_voidp_1535" = bitcast %"$$fundef_251_env_425"* %"$$fundef_251_envp_1533" to i8*
  %"$$fundef_251_cloval_1536" = insertvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } { %TName_List_ByStr20* (i8*, [20 x i8]*)* bitcast (%TName_List_ByStr20* (%"$$fundef_251_env_425"*, [20 x i8]*)* @"$fundef_251" to %TName_List_ByStr20* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_251_env_voidp_1535", 1
  %"$$fundef_251_env_BoolUtils.negb_1537" = getelementptr inbounds %"$$fundef_251_env_425", %"$$fundef_251_env_425"* %"$$fundef_251_envp_1533", i32 0, i32 0
  %"$BoolUtils.negb_1538" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1538", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_251_env_BoolUtils.negb_1537", align 8
  %"$$fundef_251_env_ListUtils.list_filter_1539" = getelementptr inbounds %"$$fundef_251_env_425", %"$$fundef_251_env_425"* %"$$fundef_251_envp_1533", i32 0, i32 1
  %"$ListUtils.list_filter_1540" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_filter, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_1540", { i8*, i8* }** %"$$fundef_251_env_ListUtils.list_filter_1539", align 8
  %"$$fundef_251_env_list_1541" = getelementptr inbounds %"$$fundef_251_env_425", %"$$fundef_251_env_425"* %"$$fundef_251_envp_1533", i32 0, i32 2
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_251_env_list_1541", align 8
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$fundef_251_cloval_1536", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_250", align 8, !dbg !99
  %"$$retval_250_1542" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_250", align 8
  ret { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$retval_250_1542"
}

define internal %TName_Bool* @"$fundef_257"(%"$$fundef_257_env_427"* %0, [20 x i8]* %1) !dbg !100 {
entry:
  %bs = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_257_env_BoolUtils.negb_1485" = getelementptr inbounds %"$$fundef_257_env_427", %"$$fundef_257_env_427"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1486" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_257_env_BoolUtils.negb_1485", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1486", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_257_env_list_1487" = getelementptr inbounds %"$$fundef_257_env_427", %"$$fundef_257_env_427"* %0, i32 0, i32 1
  %"$list_envload_1488" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_257_env_list_1487", align 8
  %list = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$list_envload_1488", %TName_List_ByStr20** %list, align 8
  %"$$fundef_257_env_ud-registry.listByStr20Contains_1489" = getelementptr inbounds %"$$fundef_257_env_427", %"$$fundef_257_env_427"* %0, i32 0, i32 2
  %"$ud-registry.listByStr20Contains_envload_1490" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_257_env_ud-registry.listByStr20Contains_1489", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_1490", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_258" = alloca %TName_Bool*, align 8
  %"$gasrem_1491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1492" = icmp ugt i64 1, %"$gasrem_1491"
  br i1 %"$gascmp_1492", label %"$out_of_gas_1493", label %"$have_gas_1494"

"$out_of_gas_1493":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1494"

"$have_gas_1494":                                 ; preds = %"$out_of_gas_1493", %entry
  %"$consume_1495" = sub i64 %"$gasrem_1491", 1
  store i64 %"$consume_1495", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_1496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1497" = icmp ugt i64 1, %"$gasrem_1496"
  br i1 %"$gascmp_1497", label %"$out_of_gas_1498", label %"$have_gas_1499"

"$out_of_gas_1498":                               ; preds = %"$have_gas_1494"
  call void @_out_of_gas()
  br label %"$have_gas_1499"

"$have_gas_1499":                                 ; preds = %"$out_of_gas_1498", %"$have_gas_1494"
  %"$consume_1500" = sub i64 %"$gasrem_1496", 1
  store i64 %"$consume_1500", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_30" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_1501" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_1502" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_1501", 0
  %"$ud-registry.listByStr20Contains_envptr_1503" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_1501", 1
  %"$list_1504" = load %TName_List_ByStr20*, %TName_List_ByStr20** %list, align 8
  %"$ud-registry.listByStr20Contains_call_1505" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_1502"(i8* %"$ud-registry.listByStr20Contains_envptr_1503", %TName_List_ByStr20* %"$list_1504"), !dbg !101
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_1505", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_30", align 8, !dbg !101
  %"$ud-registry.listByStr20Contains_31" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_30_1506" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_30", align 8
  %"$$ud-registry.listByStr20Contains_30_fptr_1507" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_30_1506", 0
  %"$$ud-registry.listByStr20Contains_30_envptr_1508" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_30_1506", 1
  %"$$ud-registry.listByStr20Contains_30_bs_1509" = alloca [20 x i8], align 1
  store [20 x i8] %bs, [20 x i8]* %"$$ud-registry.listByStr20Contains_30_bs_1509", align 1
  %"$$ud-registry.listByStr20Contains_30_call_1510" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_30_fptr_1507"(i8* %"$$ud-registry.listByStr20Contains_30_envptr_1508", [20 x i8]* %"$$ud-registry.listByStr20Contains_30_bs_1509"), !dbg !101
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_30_call_1510", %TName_Bool** %"$ud-registry.listByStr20Contains_31", align 8, !dbg !101
  %"$$ud-registry.listByStr20Contains_31_1511" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_31", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_31_1511", %TName_Bool** %b, align 8, !dbg !101
  %"$gasrem_1512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1513" = icmp ugt i64 1, %"$gasrem_1512"
  br i1 %"$gascmp_1513", label %"$out_of_gas_1514", label %"$have_gas_1515"

"$out_of_gas_1514":                               ; preds = %"$have_gas_1499"
  call void @_out_of_gas()
  br label %"$have_gas_1515"

"$have_gas_1515":                                 ; preds = %"$out_of_gas_1514", %"$have_gas_1499"
  %"$consume_1516" = sub i64 %"$gasrem_1512", 1
  store i64 %"$consume_1516", i64* @_gasrem, align 8
  %"$BoolUtils.negb_32" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_1517" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_1518" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1517", 0
  %"$BoolUtils.negb_envptr_1519" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1517", 1
  %"$b_1520" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$BoolUtils.negb_call_1521" = call %TName_Bool* %"$BoolUtils.negb_fptr_1518"(i8* %"$BoolUtils.negb_envptr_1519", %TName_Bool* %"$b_1520"), !dbg !102
  store %TName_Bool* %"$BoolUtils.negb_call_1521", %TName_Bool** %"$BoolUtils.negb_32", align 8, !dbg !102
  %"$$BoolUtils.negb_32_1522" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_32", align 8
  store %TName_Bool* %"$$BoolUtils.negb_32_1522", %TName_Bool** %"$retval_258", align 8, !dbg !102
  %"$$retval_258_1523" = load %TName_Bool*, %TName_Bool** %"$retval_258", align 8
  ret %TName_Bool* %"$$retval_258_1523"
}

define internal { %TName_Bool* (i8*, [20 x i8]*)*, i8* } @"$fundef_255"(%"$$fundef_255_env_428"* %0, %TName_List_ByStr20* %1) !dbg !103 {
entry:
  %"$$fundef_255_env_BoolUtils.negb_1466" = getelementptr inbounds %"$$fundef_255_env_428", %"$$fundef_255_env_428"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1467" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_255_env_BoolUtils.negb_1466", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1467", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_255_env_ud-registry.listByStr20Contains_1468" = getelementptr inbounds %"$$fundef_255_env_428", %"$$fundef_255_env_428"* %0, i32 0, i32 1
  %"$ud-registry.listByStr20Contains_envload_1469" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_255_env_ud-registry.listByStr20Contains_1468", align 8
  %ud-registry.listByStr20Contains = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_envload_1469", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_256" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1471" = icmp ugt i64 1, %"$gasrem_1470"
  br i1 %"$gascmp_1471", label %"$out_of_gas_1472", label %"$have_gas_1473"

"$out_of_gas_1472":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1473"

"$have_gas_1473":                                 ; preds = %"$out_of_gas_1472", %entry
  %"$consume_1474" = sub i64 %"$gasrem_1470", 1
  store i64 %"$consume_1474", i64* @_gasrem, align 8
  %"$$fundef_257_envp_1475_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_257_envp_1475_salloc" = call i8* @_salloc(i8* %"$$fundef_257_envp_1475_load", i64 40)
  %"$$fundef_257_envp_1475" = bitcast i8* %"$$fundef_257_envp_1475_salloc" to %"$$fundef_257_env_427"*
  %"$$fundef_257_env_voidp_1477" = bitcast %"$$fundef_257_env_427"* %"$$fundef_257_envp_1475" to i8*
  %"$$fundef_257_cloval_1478" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_257_env_427"*, [20 x i8]*)* @"$fundef_257" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_257_env_voidp_1477", 1
  %"$$fundef_257_env_BoolUtils.negb_1479" = getelementptr inbounds %"$$fundef_257_env_427", %"$$fundef_257_env_427"* %"$$fundef_257_envp_1475", i32 0, i32 0
  %"$BoolUtils.negb_1480" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1480", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_257_env_BoolUtils.negb_1479", align 8
  %"$$fundef_257_env_list_1481" = getelementptr inbounds %"$$fundef_257_env_427", %"$$fundef_257_env_427"* %"$$fundef_257_envp_1475", i32 0, i32 1
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_257_env_list_1481", align 8
  %"$$fundef_257_env_ud-registry.listByStr20Contains_1482" = getelementptr inbounds %"$$fundef_257_env_427", %"$$fundef_257_env_427"* %"$$fundef_257_envp_1475", i32 0, i32 2
  %"$ud-registry.listByStr20Contains_1483" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_1483", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_257_env_ud-registry.listByStr20Contains_1482", align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_257_cloval_1478", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_256", align 8, !dbg !104
  %"$$retval_256_1484" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_256", align 8
  ret { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$retval_256_1484"
}

define internal %TName_Bool* @"$fundef_261"(%"$$fundef_261_env_429"* %0, [20 x i8]* %1) !dbg !105 {
entry:
  %bs = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_261_env_ListUtils.list_mem_1421" = getelementptr inbounds %"$$fundef_261_env_429", %"$$fundef_261_env_429"* %0, i32 0, i32 0
  %"$ListUtils.list_mem_envload_1422" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_261_env_ListUtils.list_mem_1421", align 8
  %ListUtils.list_mem = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_envload_1422", { i8*, i8* }** %ListUtils.list_mem, align 8
  %"$$fundef_261_env_list_1423" = getelementptr inbounds %"$$fundef_261_env_429", %"$$fundef_261_env_429"* %0, i32 0, i32 1
  %"$list_envload_1424" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_261_env_list_1423", align 8
  %list = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$list_envload_1424", %TName_List_ByStr20** %list, align 8
  %"$$fundef_261_env_ud-registry.eqByStr20_1425" = getelementptr inbounds %"$$fundef_261_env_429", %"$$fundef_261_env_429"* %0, i32 0, i32 2
  %"$ud-registry.eqByStr20_envload_1426" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_261_env_ud-registry.eqByStr20_1425", align 8
  %ud-registry.eqByStr20 = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_envload_1426", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20, align 8
  %"$retval_262" = alloca %TName_Bool*, align 8
  %"$gasrem_1427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1428" = icmp ugt i64 1, %"$gasrem_1427"
  br i1 %"$gascmp_1428", label %"$out_of_gas_1429", label %"$have_gas_1430"

"$out_of_gas_1429":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1430"

"$have_gas_1430":                                 ; preds = %"$out_of_gas_1429", %entry
  %"$consume_1431" = sub i64 %"$gasrem_1427", 1
  store i64 %"$consume_1431", i64* @_gasrem, align 8
  %listMemByStr20 = alloca { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1433" = icmp ugt i64 1, %"$gasrem_1432"
  br i1 %"$gascmp_1433", label %"$out_of_gas_1434", label %"$have_gas_1435"

"$out_of_gas_1434":                               ; preds = %"$have_gas_1430"
  call void @_out_of_gas()
  br label %"$have_gas_1435"

"$have_gas_1435":                                 ; preds = %"$out_of_gas_1434", %"$have_gas_1430"
  %"$consume_1436" = sub i64 %"$gasrem_1432", 1
  store i64 %"$consume_1436", i64* @_gasrem, align 8
  %"$ListUtils.list_mem_1437" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_mem, align 8
  %"$ListUtils.list_mem_1438" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_mem_1437", i32 0
  %"$ListUtils.list_mem_1439" = bitcast { i8*, i8* }* %"$ListUtils.list_mem_1438" to { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_mem_1440" = load { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_mem_1439", align 8
  %"$ListUtils.list_mem_fptr_1441" = extractvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_mem_1440", 0
  %"$ListUtils.list_mem_envptr_1442" = extractvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_mem_1440", 1
  %"$ListUtils.list_mem_call_1443" = call { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_mem_fptr_1441"(i8* %"$ListUtils.list_mem_envptr_1442"), !dbg !106
  store { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_mem_call_1443", { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %listMemByStr20, align 8, !dbg !107
  %"$gasrem_1444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1445" = icmp ugt i64 1, %"$gasrem_1444"
  br i1 %"$gascmp_1445", label %"$out_of_gas_1446", label %"$have_gas_1447"

"$out_of_gas_1446":                               ; preds = %"$have_gas_1435"
  call void @_out_of_gas()
  br label %"$have_gas_1447"

"$have_gas_1447":                                 ; preds = %"$out_of_gas_1446", %"$have_gas_1435"
  %"$consume_1448" = sub i64 %"$gasrem_1444", 1
  store i64 %"$consume_1448", i64* @_gasrem, align 8
  %"$listMemByStr20_27" = alloca { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$listMemByStr20_1449" = load { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %listMemByStr20, align 8
  %"$listMemByStr20_fptr_1450" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listMemByStr20_1449", 0
  %"$listMemByStr20_envptr_1451" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listMemByStr20_1449", 1
  %"$ud-registry.eqByStr20_1452" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20, align 8
  %"$listMemByStr20_call_1453" = call { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$listMemByStr20_fptr_1450"(i8* %"$listMemByStr20_envptr_1451", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_1452"), !dbg !108
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$listMemByStr20_call_1453", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$listMemByStr20_27", align 8, !dbg !108
  %"$listMemByStr20_28" = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$$listMemByStr20_27_1454" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$listMemByStr20_27", align 8
  %"$$listMemByStr20_27_fptr_1455" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$listMemByStr20_27_1454", 0
  %"$$listMemByStr20_27_envptr_1456" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$listMemByStr20_27_1454", 1
  %"$$listMemByStr20_27_bs_1457" = alloca [20 x i8], align 1
  store [20 x i8] %bs, [20 x i8]* %"$$listMemByStr20_27_bs_1457", align 1
  %"$$listMemByStr20_27_call_1458" = call { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_27_fptr_1455"(i8* %"$$listMemByStr20_27_envptr_1456", [20 x i8]* %"$$listMemByStr20_27_bs_1457"), !dbg !108
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_27_call_1458", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listMemByStr20_28", align 8, !dbg !108
  %"$listMemByStr20_29" = alloca %TName_Bool*, align 8
  %"$$listMemByStr20_28_1459" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listMemByStr20_28", align 8
  %"$$listMemByStr20_28_fptr_1460" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_28_1459", 0
  %"$$listMemByStr20_28_envptr_1461" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_28_1459", 1
  %"$list_1462" = load %TName_List_ByStr20*, %TName_List_ByStr20** %list, align 8
  %"$$listMemByStr20_28_call_1463" = call %TName_Bool* %"$$listMemByStr20_28_fptr_1460"(i8* %"$$listMemByStr20_28_envptr_1461", %TName_List_ByStr20* %"$list_1462"), !dbg !108
  store %TName_Bool* %"$$listMemByStr20_28_call_1463", %TName_Bool** %"$listMemByStr20_29", align 8, !dbg !108
  %"$$listMemByStr20_29_1464" = load %TName_Bool*, %TName_Bool** %"$listMemByStr20_29", align 8
  store %TName_Bool* %"$$listMemByStr20_29_1464", %TName_Bool** %"$retval_262", align 8, !dbg !108
  %"$$retval_262_1465" = load %TName_Bool*, %TName_Bool** %"$retval_262", align 8
  ret %TName_Bool* %"$$retval_262_1465"
}

define internal { %TName_Bool* (i8*, [20 x i8]*)*, i8* } @"$fundef_259"(%"$$fundef_259_env_430"* %0, %TName_List_ByStr20* %1) !dbg !109 {
entry:
  %"$$fundef_259_env_ListUtils.list_mem_1402" = getelementptr inbounds %"$$fundef_259_env_430", %"$$fundef_259_env_430"* %0, i32 0, i32 0
  %"$ListUtils.list_mem_envload_1403" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_259_env_ListUtils.list_mem_1402", align 8
  %ListUtils.list_mem = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_envload_1403", { i8*, i8* }** %ListUtils.list_mem, align 8
  %"$$fundef_259_env_ud-registry.eqByStr20_1404" = getelementptr inbounds %"$$fundef_259_env_430", %"$$fundef_259_env_430"* %0, i32 0, i32 1
  %"$ud-registry.eqByStr20_envload_1405" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_259_env_ud-registry.eqByStr20_1404", align 8
  %ud-registry.eqByStr20 = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_envload_1405", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20, align 8
  %"$retval_260" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1407" = icmp ugt i64 1, %"$gasrem_1406"
  br i1 %"$gascmp_1407", label %"$out_of_gas_1408", label %"$have_gas_1409"

"$out_of_gas_1408":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1409"

"$have_gas_1409":                                 ; preds = %"$out_of_gas_1408", %entry
  %"$consume_1410" = sub i64 %"$gasrem_1406", 1
  store i64 %"$consume_1410", i64* @_gasrem, align 8
  %"$$fundef_261_envp_1411_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_261_envp_1411_salloc" = call i8* @_salloc(i8* %"$$fundef_261_envp_1411_load", i64 32)
  %"$$fundef_261_envp_1411" = bitcast i8* %"$$fundef_261_envp_1411_salloc" to %"$$fundef_261_env_429"*
  %"$$fundef_261_env_voidp_1413" = bitcast %"$$fundef_261_env_429"* %"$$fundef_261_envp_1411" to i8*
  %"$$fundef_261_cloval_1414" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_261_env_429"*, [20 x i8]*)* @"$fundef_261" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_261_env_voidp_1413", 1
  %"$$fundef_261_env_ListUtils.list_mem_1415" = getelementptr inbounds %"$$fundef_261_env_429", %"$$fundef_261_env_429"* %"$$fundef_261_envp_1411", i32 0, i32 0
  %"$ListUtils.list_mem_1416" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_mem, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_1416", { i8*, i8* }** %"$$fundef_261_env_ListUtils.list_mem_1415", align 8
  %"$$fundef_261_env_list_1417" = getelementptr inbounds %"$$fundef_261_env_429", %"$$fundef_261_env_429"* %"$$fundef_261_envp_1411", i32 0, i32 1
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_261_env_list_1417", align 8
  %"$$fundef_261_env_ud-registry.eqByStr20_1418" = getelementptr inbounds %"$$fundef_261_env_429", %"$$fundef_261_env_429"* %"$$fundef_261_envp_1411", i32 0, i32 2
  %"$ud-registry.eqByStr20_1419" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_1419", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_261_env_ud-registry.eqByStr20_1418", align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_261_cloval_1414", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_260", align 8, !dbg !110
  %"$$retval_260_1420" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_260", align 8
  ret { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$retval_260_1420"
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
  %"$eq_call_1399" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_1393", i32 20, i8* %"$$eq_bs1_1394_1396", i8* %"$$eq_bs2_1397_1398"), !dbg !112
  store %TName_Bool* %"$eq_call_1399", %TName_Bool** %"$retval_266", align 8, !dbg !112
  %"$$retval_266_1401" = load %TName_Bool*, %TName_Bool** %"$retval_266", align 8
  ret %TName_Bool* %"$$retval_266_1401"
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
  %"$gasrem_2317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2318" = icmp ugt i64 1, %"$gasrem_2317"
  br i1 %"$gascmp_2318", label %"$out_of_gas_2319", label %"$have_gas_2320"

"$out_of_gas_2319":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2320"

"$have_gas_2320":                                 ; preds = %"$out_of_gas_2319", %entry
  %"$consume_2321" = sub i64 %"$gasrem_2317", 1
  store i64 %"$consume_2321", i64* @_gasrem, align 8
  %"$dyndisp_table_2325_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2325_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2325_salloc_load", i64 48)
  %"$dyndisp_table_2325_salloc" = bitcast i8* %"$dyndisp_table_2325_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2325" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2325_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2326" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2325", i32 0
  %"$dyndisp_pcast_2327" = bitcast { i8*, i8* }* %"$dyndisp_gep_2326" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_155_env_464"*)* @"$fundef_155" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_2327", align 8
  store { i8*, i8* }* %"$dyndisp_table_2325", { i8*, i8* }** @list_foldr, align 8, !dbg !242
  %"$gasrem_2328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2329" = icmp ugt i64 1, %"$gasrem_2328"
  br i1 %"$gascmp_2329", label %"$out_of_gas_2330", label %"$have_gas_2331"

"$out_of_gas_2330":                               ; preds = %"$have_gas_2320"
  call void @_out_of_gas()
  br label %"$have_gas_2331"

"$have_gas_2331":                                 ; preds = %"$out_of_gas_2330", %"$have_gas_2320"
  %"$consume_2332" = sub i64 %"$gasrem_2328", 1
  store i64 %"$consume_2332", i64* @_gasrem, align 8
  %"$dyndisp_table_2336_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2336_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2336_salloc_load", i64 48)
  %"$dyndisp_table_2336_salloc" = bitcast i8* %"$dyndisp_table_2336_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2336" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2336_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2337" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2336", i32 0
  %"$dyndisp_pcast_2338" = bitcast { i8*, i8* }* %"$dyndisp_gep_2337" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_143_env_459"*)* @"$fundef_143" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_2338", align 8
  store { i8*, i8* }* %"$dyndisp_table_2336", { i8*, i8* }** @list_foldk, align 8, !dbg !242
  %"$gasrem_2339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2340" = icmp ugt i64 1, %"$gasrem_2339"
  br i1 %"$gascmp_2340", label %"$out_of_gas_2341", label %"$have_gas_2342"

"$out_of_gas_2341":                               ; preds = %"$have_gas_2331"
  call void @_out_of_gas()
  br label %"$have_gas_2342"

"$have_gas_2342":                                 ; preds = %"$out_of_gas_2341", %"$have_gas_2331"
  %"$consume_2343" = sub i64 %"$gasrem_2339", 1
  store i64 %"$consume_2343", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_171_env_453"*, %TName_Bool*)* @"$fundef_171" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !243
  %"$gasrem_2347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2348" = icmp ugt i64 1, %"$gasrem_2347"
  br i1 %"$gascmp_2348", label %"$out_of_gas_2349", label %"$have_gas_2350"

"$out_of_gas_2349":                               ; preds = %"$have_gas_2342"
  call void @_out_of_gas()
  br label %"$have_gas_2350"

"$have_gas_2350":                                 ; preds = %"$out_of_gas_2349", %"$have_gas_2342"
  %"$consume_2351" = sub i64 %"$gasrem_2347", 1
  store i64 %"$consume_2351", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_167_env_451"*, %TName_Bool*)* @"$fundef_167" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8, !dbg !244
  %"$gasrem_2355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2356" = icmp ugt i64 1, %"$gasrem_2355"
  br i1 %"$gascmp_2356", label %"$out_of_gas_2357", label %"$have_gas_2358"

"$out_of_gas_2357":                               ; preds = %"$have_gas_2350"
  call void @_out_of_gas()
  br label %"$have_gas_2358"

"$have_gas_2358":                                 ; preds = %"$out_of_gas_2357", %"$have_gas_2350"
  %"$consume_2359" = sub i64 %"$gasrem_2355", 1
  store i64 %"$consume_2359", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_165_env_449"*, %TName_Bool*)* @"$fundef_165" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8, !dbg !245
  %"$gasrem_2363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2364" = icmp ugt i64 1, %"$gasrem_2363"
  br i1 %"$gascmp_2364", label %"$out_of_gas_2365", label %"$have_gas_2366"

"$out_of_gas_2365":                               ; preds = %"$have_gas_2358"
  call void @_out_of_gas()
  br label %"$have_gas_2366"

"$have_gas_2366":                                 ; preds = %"$out_of_gas_2365", %"$have_gas_2358"
  %"$consume_2367" = sub i64 %"$gasrem_2363", 1
  store i64 %"$consume_2367", i64* @_gasrem, align 8
  %"$$fundef_197_envp_2368_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_197_envp_2368_salloc" = call i8* @_salloc(i8* %"$$fundef_197_envp_2368_load", i64 8)
  %"$$fundef_197_envp_2368" = bitcast i8* %"$$fundef_197_envp_2368_salloc" to %"$$fundef_197_env_448"*
  %"$$fundef_197_env_voidp_2370" = bitcast %"$$fundef_197_env_448"* %"$$fundef_197_envp_2368" to i8*
  %"$$fundef_197_cloval_2371" = insertvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_197_env_448"*)* @"$fundef_197" to { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_197_env_voidp_2370", 1
  %"$$fundef_197_env_list_foldr_2372" = getelementptr inbounds %"$$fundef_197_env_448", %"$$fundef_197_env_448"* %"$$fundef_197_envp_2368", i32 0, i32 0
  %"$list_foldr_2373" = load { i8*, i8* }*, { i8*, i8* }** @list_foldr, align 8
  store { i8*, i8* }* %"$list_foldr_2373", { i8*, i8* }** %"$$fundef_197_env_list_foldr_2372", align 8
  %"$dyndisp_table_2374_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2374_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2374_salloc_load", i64 48)
  %"$dyndisp_table_2374_salloc" = bitcast i8* %"$dyndisp_table_2374_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2374" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2374_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2375" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2374", i32 0
  %"$dyndisp_pcast_2376" = bitcast { i8*, i8* }* %"$dyndisp_gep_2375" to { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_197_cloval_2371", { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2376", align 8
  store { i8*, i8* }* %"$dyndisp_table_2374", { i8*, i8* }** @ListUtils.list_filter, align 8, !dbg !246
  %"$gasrem_2377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2378" = icmp ugt i64 1, %"$gasrem_2377"
  br i1 %"$gascmp_2378", label %"$out_of_gas_2379", label %"$have_gas_2380"

"$out_of_gas_2379":                               ; preds = %"$have_gas_2366"
  call void @_out_of_gas()
  br label %"$have_gas_2380"

"$have_gas_2380":                                 ; preds = %"$out_of_gas_2379", %"$have_gas_2366"
  %"$consume_2381" = sub i64 %"$gasrem_2377", 1
  store i64 %"$consume_2381", i64* @_gasrem, align 8
  %"$$fundef_187_envp_2382_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_187_envp_2382_salloc" = call i8* @_salloc(i8* %"$$fundef_187_envp_2382_load", i64 8)
  %"$$fundef_187_envp_2382" = bitcast i8* %"$$fundef_187_envp_2382_salloc" to %"$$fundef_187_env_444"*
  %"$$fundef_187_env_voidp_2384" = bitcast %"$$fundef_187_env_444"* %"$$fundef_187_envp_2382" to i8*
  %"$$fundef_187_cloval_2385" = insertvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_187_env_444"*)* @"$fundef_187" to { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_187_env_voidp_2384", 1
  %"$$fundef_187_env_list_foldk_2386" = getelementptr inbounds %"$$fundef_187_env_444", %"$$fundef_187_env_444"* %"$$fundef_187_envp_2382", i32 0, i32 0
  %"$list_foldk_2387" = load { i8*, i8* }*, { i8*, i8* }** @list_foldk, align 8
  store { i8*, i8* }* %"$list_foldk_2387", { i8*, i8* }** %"$$fundef_187_env_list_foldk_2386", align 8
  %"$dyndisp_table_2388_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2388_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2388_salloc_load", i64 48)
  %"$dyndisp_table_2388_salloc" = bitcast i8* %"$dyndisp_table_2388_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2388" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2388_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2389" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2388", i32 0
  %"$dyndisp_pcast_2390" = bitcast { i8*, i8* }* %"$dyndisp_gep_2389" to { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_187_cloval_2385", { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2390", align 8
  store { i8*, i8* }* %"$dyndisp_table_2388", { i8*, i8* }** @ListUtils.list_find, align 8, !dbg !247
  %"$gasrem_2391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2392" = icmp ugt i64 1, %"$gasrem_2391"
  br i1 %"$gascmp_2392", label %"$out_of_gas_2393", label %"$have_gas_2394"

"$out_of_gas_2393":                               ; preds = %"$have_gas_2380"
  call void @_out_of_gas()
  br label %"$have_gas_2394"

"$have_gas_2394":                                 ; preds = %"$out_of_gas_2393", %"$have_gas_2380"
  %"$consume_2395" = sub i64 %"$gasrem_2391", 1
  store i64 %"$consume_2395", i64* @_gasrem, align 8
  %"$$fundef_181_envp_2396_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_181_envp_2396_salloc" = call i8* @_salloc(i8* %"$$fundef_181_envp_2396_load", i64 8)
  %"$$fundef_181_envp_2396" = bitcast i8* %"$$fundef_181_envp_2396_salloc" to %"$$fundef_181_env_439"*
  %"$$fundef_181_env_voidp_2398" = bitcast %"$$fundef_181_env_439"* %"$$fundef_181_envp_2396" to i8*
  %"$$fundef_181_cloval_2399" = insertvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_181_env_439"*)* @"$fundef_181" to { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_181_env_voidp_2398", 1
  %"$$fundef_181_env_ListUtils.list_find_2400" = getelementptr inbounds %"$$fundef_181_env_439", %"$$fundef_181_env_439"* %"$$fundef_181_envp_2396", i32 0, i32 0
  %"$ListUtils.list_find_2401" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_find, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_2401", { i8*, i8* }** %"$$fundef_181_env_ListUtils.list_find_2400", align 8
  %"$dyndisp_table_2402_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2402_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2402_salloc_load", i64 48)
  %"$dyndisp_table_2402_salloc" = bitcast i8* %"$dyndisp_table_2402_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2402" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2402_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2403" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2402", i32 0
  %"$dyndisp_pcast_2404" = bitcast { i8*, i8* }* %"$dyndisp_gep_2403" to { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_181_cloval_2399", { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2404", align 8
  store { i8*, i8* }* %"$dyndisp_table_2402", { i8*, i8* }** @ListUtils.list_exists, align 8, !dbg !248
  %"$gasrem_2405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2406" = icmp ugt i64 1, %"$gasrem_2405"
  br i1 %"$gascmp_2406", label %"$out_of_gas_2407", label %"$have_gas_2408"

"$out_of_gas_2407":                               ; preds = %"$have_gas_2394"
  call void @_out_of_gas()
  br label %"$have_gas_2408"

"$have_gas_2408":                                 ; preds = %"$out_of_gas_2407", %"$have_gas_2394"
  %"$consume_2409" = sub i64 %"$gasrem_2405", 1
  store i64 %"$consume_2409", i64* @_gasrem, align 8
  %"$$fundef_175_envp_2410_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_175_envp_2410_salloc" = call i8* @_salloc(i8* %"$$fundef_175_envp_2410_load", i64 8)
  %"$$fundef_175_envp_2410" = bitcast i8* %"$$fundef_175_envp_2410_salloc" to %"$$fundef_175_env_436"*
  %"$$fundef_175_env_voidp_2412" = bitcast %"$$fundef_175_env_436"* %"$$fundef_175_envp_2410" to i8*
  %"$$fundef_175_cloval_2413" = insertvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_175_env_436"*)* @"$fundef_175" to { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_175_env_voidp_2412", 1
  %"$$fundef_175_env_ListUtils.list_exists_2414" = getelementptr inbounds %"$$fundef_175_env_436", %"$$fundef_175_env_436"* %"$$fundef_175_envp_2410", i32 0, i32 0
  %"$ListUtils.list_exists_2415" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_exists, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_2415", { i8*, i8* }** %"$$fundef_175_env_ListUtils.list_exists_2414", align 8
  %"$dyndisp_table_2416_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2416_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2416_salloc_load", i64 48)
  %"$dyndisp_table_2416_salloc" = bitcast i8* %"$dyndisp_table_2416_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2416" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2416_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2417" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2416", i32 0
  %"$dyndisp_pcast_2418" = bitcast { i8*, i8* }* %"$dyndisp_gep_2417" to { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_175_cloval_2413", { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2418", align 8
  store { i8*, i8* }* %"$dyndisp_table_2416", { i8*, i8* }** @ListUtils.list_mem, align 8, !dbg !249
  %"$gasrem_2419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2420" = icmp ugt i64 1, %"$gasrem_2419"
  br i1 %"$gascmp_2420", label %"$out_of_gas_2421", label %"$have_gas_2422"

"$out_of_gas_2421":                               ; preds = %"$have_gas_2408"
  call void @_out_of_gas()
  br label %"$have_gas_2422"

"$have_gas_2422":                                 ; preds = %"$out_of_gas_2421", %"$have_gas_2408"
  %"$consume_2423" = sub i64 %"$gasrem_2419", 1
  store i64 %"$consume_2423", i64* @_gasrem, align 8
  store [20 x i8] zeroinitializer, [20 x i8]* @ud-registry.zeroByStr20, align 1, !dbg !250
  %"$gasrem_2424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2425" = icmp ugt i64 1, %"$gasrem_2424"
  br i1 %"$gascmp_2425", label %"$out_of_gas_2426", label %"$have_gas_2427"

"$out_of_gas_2426":                               ; preds = %"$have_gas_2422"
  call void @_out_of_gas()
  br label %"$have_gas_2427"

"$have_gas_2427":                                 ; preds = %"$out_of_gas_2426", %"$have_gas_2422"
  %"$consume_2428" = sub i64 %"$gasrem_2424", 1
  store i64 %"$consume_2428", i64* @_gasrem, align 8
  %"$adtval_2429_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2429_salloc" = call i8* @_salloc(i8* %"$adtval_2429_load", i64 1)
  %"$adtval_2429" = bitcast i8* %"$adtval_2429_salloc" to %CName_Nil_ByStr20*
  %"$adtgep_2430" = getelementptr inbounds %CName_Nil_ByStr20, %CName_Nil_ByStr20* %"$adtval_2429", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2430", align 1
  %"$adtptr_2431" = bitcast %CName_Nil_ByStr20* %"$adtval_2429" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2431", %TName_List_ByStr20** @ud-registry.nilByStr20, align 8, !dbg !251
  %"$gasrem_2432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2433" = icmp ugt i64 1, %"$gasrem_2432"
  br i1 %"$gascmp_2433", label %"$out_of_gas_2434", label %"$have_gas_2435"

"$out_of_gas_2434":                               ; preds = %"$have_gas_2427"
  call void @_out_of_gas()
  br label %"$have_gas_2435"

"$have_gas_2435":                                 ; preds = %"$out_of_gas_2434", %"$have_gas_2427"
  %"$consume_2436" = sub i64 %"$gasrem_2432", 1
  store i64 %"$consume_2436", i64* @_gasrem, align 8
  %"$adtval_2437_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2437_salloc" = call i8* @_salloc(i8* %"$adtval_2437_load", i64 1)
  %"$adtval_2437" = bitcast i8* %"$adtval_2437_salloc" to %CName_Nil_Message*
  %"$adtgep_2438" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_2437", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2438", align 1
  %"$adtptr_2439" = bitcast %CName_Nil_Message* %"$adtval_2437" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_2439", %TName_List_Message** @ud-registry.nilMessage, align 8, !dbg !252
  %"$gasrem_2440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2441" = icmp ugt i64 1, %"$gasrem_2440"
  br i1 %"$gascmp_2441", label %"$out_of_gas_2442", label %"$have_gas_2443"

"$out_of_gas_2442":                               ; preds = %"$have_gas_2435"
  call void @_out_of_gas()
  br label %"$have_gas_2443"

"$have_gas_2443":                                 ; preds = %"$out_of_gas_2442", %"$have_gas_2435"
  %"$consume_2444" = sub i64 %"$gasrem_2440", 1
  store i64 %"$consume_2444", i64* @_gasrem, align 8
  %"$$fundef_267_envp_2445_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_267_envp_2445_salloc" = call i8* @_salloc(i8* %"$$fundef_267_envp_2445_load", i64 8)
  %"$$fundef_267_envp_2445" = bitcast i8* %"$$fundef_267_envp_2445_salloc" to %"$$fundef_267_env_433"*
  %"$$fundef_267_env_voidp_2447" = bitcast %"$$fundef_267_env_433"* %"$$fundef_267_envp_2445" to i8*
  %"$$fundef_267_cloval_2448" = insertvalue { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_267_env_433"*, i8*)* @"$fundef_267" to %TName_List_Message* (i8*, i8*)*), i8* undef }, i8* %"$$fundef_267_env_voidp_2447", 1
  %"$$fundef_267_env_ud-registry.nilMessage_2449" = getelementptr inbounds %"$$fundef_267_env_433", %"$$fundef_267_env_433"* %"$$fundef_267_envp_2445", i32 0, i32 0
  %"$ud-registry.nilMessage_2450" = load %TName_List_Message*, %TName_List_Message** @ud-registry.nilMessage, align 8
  store %TName_List_Message* %"$ud-registry.nilMessage_2450", %TName_List_Message** %"$$fundef_267_env_ud-registry.nilMessage_2449", align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } %"$$fundef_267_cloval_2448", { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8, !dbg !253
  %"$gasrem_2451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2452" = icmp ugt i64 1, %"$gasrem_2451"
  br i1 %"$gascmp_2452", label %"$out_of_gas_2453", label %"$have_gas_2454"

"$out_of_gas_2453":                               ; preds = %"$have_gas_2443"
  call void @_out_of_gas()
  br label %"$have_gas_2454"

"$have_gas_2454":                                 ; preds = %"$out_of_gas_2453", %"$have_gas_2443"
  %"$consume_2455" = sub i64 %"$gasrem_2451", 1
  store i64 %"$consume_2455", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_263_env_432"*, [20 x i8]*)* @"$fundef_263" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eqByStr20, align 8, !dbg !254
  %"$gasrem_2459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2460" = icmp ugt i64 1, %"$gasrem_2459"
  br i1 %"$gascmp_2460", label %"$out_of_gas_2461", label %"$have_gas_2462"

"$out_of_gas_2461":                               ; preds = %"$have_gas_2454"
  call void @_out_of_gas()
  br label %"$have_gas_2462"

"$have_gas_2462":                                 ; preds = %"$out_of_gas_2461", %"$have_gas_2454"
  %"$consume_2463" = sub i64 %"$gasrem_2459", 1
  store i64 %"$consume_2463", i64* @_gasrem, align 8
  %"$$fundef_259_envp_2464_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_259_envp_2464_salloc" = call i8* @_salloc(i8* %"$$fundef_259_envp_2464_load", i64 24)
  %"$$fundef_259_envp_2464" = bitcast i8* %"$$fundef_259_envp_2464_salloc" to %"$$fundef_259_env_430"*
  %"$$fundef_259_env_voidp_2466" = bitcast %"$$fundef_259_env_430"* %"$$fundef_259_envp_2464" to i8*
  %"$$fundef_259_cloval_2467" = insertvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_259_env_430"*, %TName_List_ByStr20*)* @"$fundef_259" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_259_env_voidp_2466", 1
  %"$$fundef_259_env_ListUtils.list_mem_2468" = getelementptr inbounds %"$$fundef_259_env_430", %"$$fundef_259_env_430"* %"$$fundef_259_envp_2464", i32 0, i32 0
  %"$ListUtils.list_mem_2469" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_mem, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_2469", { i8*, i8* }** %"$$fundef_259_env_ListUtils.list_mem_2468", align 8
  %"$$fundef_259_env_ud-registry.eqByStr20_2470" = getelementptr inbounds %"$$fundef_259_env_430", %"$$fundef_259_env_430"* %"$$fundef_259_envp_2464", i32 0, i32 1
  %"$ud-registry.eqByStr20_2471" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eqByStr20, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_2471", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_259_env_ud-registry.eqByStr20_2470", align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_259_cloval_2467", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8, !dbg !255
  %"$gasrem_2472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2473" = icmp ugt i64 1, %"$gasrem_2472"
  br i1 %"$gascmp_2473", label %"$out_of_gas_2474", label %"$have_gas_2475"

"$out_of_gas_2474":                               ; preds = %"$have_gas_2462"
  call void @_out_of_gas()
  br label %"$have_gas_2475"

"$have_gas_2475":                                 ; preds = %"$out_of_gas_2474", %"$have_gas_2462"
  %"$consume_2476" = sub i64 %"$gasrem_2472", 1
  store i64 %"$consume_2476", i64* @_gasrem, align 8
  %"$$fundef_255_envp_2477_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_255_envp_2477_salloc" = call i8* @_salloc(i8* %"$$fundef_255_envp_2477_load", i64 32)
  %"$$fundef_255_envp_2477" = bitcast i8* %"$$fundef_255_envp_2477_salloc" to %"$$fundef_255_env_428"*
  %"$$fundef_255_env_voidp_2479" = bitcast %"$$fundef_255_env_428"* %"$$fundef_255_envp_2477" to i8*
  %"$$fundef_255_cloval_2480" = insertvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_255_env_428"*, %TName_List_ByStr20*)* @"$fundef_255" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_255_env_voidp_2479", 1
  %"$$fundef_255_env_BoolUtils.negb_2481" = getelementptr inbounds %"$$fundef_255_env_428", %"$$fundef_255_env_428"* %"$$fundef_255_envp_2477", i32 0, i32 0
  %"$BoolUtils.negb_2482" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_2482", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_255_env_BoolUtils.negb_2481", align 8
  %"$$fundef_255_env_ud-registry.listByStr20Contains_2483" = getelementptr inbounds %"$$fundef_255_env_428", %"$$fundef_255_env_428"* %"$$fundef_255_envp_2477", i32 0, i32 1
  %"$ud-registry.listByStr20Contains_2484" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2484", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_255_env_ud-registry.listByStr20Contains_2483", align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_255_cloval_2480", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes, align 8, !dbg !256
  %"$gasrem_2485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2486" = icmp ugt i64 1, %"$gasrem_2485"
  br i1 %"$gascmp_2486", label %"$out_of_gas_2487", label %"$have_gas_2488"

"$out_of_gas_2487":                               ; preds = %"$have_gas_2475"
  call void @_out_of_gas()
  br label %"$have_gas_2488"

"$have_gas_2488":                                 ; preds = %"$out_of_gas_2487", %"$have_gas_2475"
  %"$consume_2489" = sub i64 %"$gasrem_2485", 1
  store i64 %"$consume_2489", i64* @_gasrem, align 8
  %"$$fundef_249_envp_2490_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_249_envp_2490_salloc" = call i8* @_salloc(i8* %"$$fundef_249_envp_2490_load", i64 24)
  %"$$fundef_249_envp_2490" = bitcast i8* %"$$fundef_249_envp_2490_salloc" to %"$$fundef_249_env_426"*
  %"$$fundef_249_env_voidp_2492" = bitcast %"$$fundef_249_env_426"* %"$$fundef_249_envp_2490" to i8*
  %"$$fundef_249_cloval_2493" = insertvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_249_env_426"*, %TName_List_ByStr20*)* @"$fundef_249" to { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_249_env_voidp_2492", 1
  %"$$fundef_249_env_BoolUtils.negb_2494" = getelementptr inbounds %"$$fundef_249_env_426", %"$$fundef_249_env_426"* %"$$fundef_249_envp_2490", i32 0, i32 0
  %"$BoolUtils.negb_2495" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_2495", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_249_env_BoolUtils.negb_2494", align 8
  %"$$fundef_249_env_ListUtils.list_filter_2496" = getelementptr inbounds %"$$fundef_249_env_426", %"$$fundef_249_env_426"* %"$$fundef_249_envp_2490", i32 0, i32 1
  %"$ListUtils.list_filter_2497" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_filter, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_2497", { i8*, i8* }** %"$$fundef_249_env_ListUtils.list_filter_2496", align 8
  store { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_249_cloval_2493", { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8, !dbg !257
  %"$gasrem_2498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2499" = icmp ugt i64 1, %"$gasrem_2498"
  br i1 %"$gascmp_2499", label %"$out_of_gas_2500", label %"$have_gas_2501"

"$out_of_gas_2500":                               ; preds = %"$have_gas_2488"
  call void @_out_of_gas()
  br label %"$have_gas_2501"

"$have_gas_2501":                                 ; preds = %"$out_of_gas_2500", %"$have_gas_2488"
  %"$consume_2502" = sub i64 %"$gasrem_2498", 1
  store i64 %"$consume_2502", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_245_env_423"*, %TName_Bool*)* @"$fundef_245" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8, !dbg !258
  %"$gasrem_2506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2507" = icmp ugt i64 1, %"$gasrem_2506"
  br i1 %"$gascmp_2507", label %"$out_of_gas_2508", label %"$have_gas_2509"

"$out_of_gas_2508":                               ; preds = %"$have_gas_2501"
  call void @_out_of_gas()
  br label %"$have_gas_2509"

"$have_gas_2509":                                 ; preds = %"$out_of_gas_2508", %"$have_gas_2501"
  %"$consume_2510" = sub i64 %"$gasrem_2506", 1
  store i64 %"$consume_2510", i64* @_gasrem, align 8
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_241_env_421"*, [20 x i8]*)* @"$fundef_241" to { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eAdminSet, align 8, !dbg !259
  %"$gasrem_2514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2515" = icmp ugt i64 1, %"$gasrem_2514"
  br i1 %"$gascmp_2515", label %"$out_of_gas_2516", label %"$have_gas_2517"

"$out_of_gas_2516":                               ; preds = %"$have_gas_2509"
  call void @_out_of_gas()
  br label %"$have_gas_2517"

"$have_gas_2517":                                 ; preds = %"$out_of_gas_2516", %"$have_gas_2509"
  %"$consume_2518" = sub i64 %"$gasrem_2514", 1
  store i64 %"$consume_2518", i64* @_gasrem, align 8
  store { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_235_env_419"*, [20 x i8]*)* @"$fundef_235" to { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApprovedFor, align 8, !dbg !260
  %"$gasrem_2522" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2523" = icmp ugt i64 1, %"$gasrem_2522"
  br i1 %"$gascmp_2523", label %"$out_of_gas_2524", label %"$have_gas_2525"

"$out_of_gas_2524":                               ; preds = %"$have_gas_2517"
  call void @_out_of_gas()
  br label %"$have_gas_2525"

"$have_gas_2525":                                 ; preds = %"$out_of_gas_2524", %"$have_gas_2517"
  %"$consume_2526" = sub i64 %"$gasrem_2522", 1
  store i64 %"$consume_2526", i64* @_gasrem, align 8
  store { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_233_env_416"*, [20 x i8]*)* @"$fundef_233" to i8* (i8*, [20 x i8]*)*), i8* null }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApproved, align 8, !dbg !261
  %"$gasrem_2530" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2531" = icmp ugt i64 1, %"$gasrem_2530"
  br i1 %"$gascmp_2531", label %"$out_of_gas_2532", label %"$have_gas_2533"

"$out_of_gas_2532":                               ; preds = %"$have_gas_2525"
  call void @_out_of_gas()
  br label %"$have_gas_2533"

"$have_gas_2533":                                 ; preds = %"$out_of_gas_2532", %"$have_gas_2525"
  %"$consume_2534" = sub i64 %"$gasrem_2530", 1
  store i64 %"$consume_2534", i64* @_gasrem, align 8
  store { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_231_env_415"*, [20 x i8]*)* @"$fundef_231" to i8* (i8*, [20 x i8]*)*), i8* null }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eNewRegistrar, align 8, !dbg !262
  %"$gasrem_2538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2539" = icmp ugt i64 1, %"$gasrem_2538"
  br i1 %"$gascmp_2539", label %"$out_of_gas_2540", label %"$have_gas_2541"

"$out_of_gas_2540":                               ; preds = %"$have_gas_2533"
  call void @_out_of_gas()
  br label %"$have_gas_2541"

"$have_gas_2541":                                 ; preds = %"$out_of_gas_2540", %"$have_gas_2533"
  %"$consume_2542" = sub i64 %"$gasrem_2538", 1
  store i64 %"$consume_2542", i64* @_gasrem, align 8
  store { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)* bitcast ({ i8* (i8*, %String)*, i8* } (%"$$fundef_227_env_414"*, [32 x i8]*)* @"$fundef_227" to { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*), i8* null }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain, align 8, !dbg !263
  %"$gasrem_2546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2547" = icmp ugt i64 1, %"$gasrem_2546"
  br i1 %"$gascmp_2547", label %"$out_of_gas_2548", label %"$have_gas_2549"

"$out_of_gas_2548":                               ; preds = %"$have_gas_2541"
  call void @_out_of_gas()
  br label %"$have_gas_2549"

"$have_gas_2549":                                 ; preds = %"$out_of_gas_2548", %"$have_gas_2541"
  %"$consume_2550" = sub i64 %"$gasrem_2546", 1
  store i64 %"$consume_2550", i64* @_gasrem, align 8
  store { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)* bitcast ({ { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_221_env_412"*, [32 x i8]*)* @"$fundef_221" to { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*), i8* null }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8, !dbg !264
  %"$gasrem_2554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2555" = icmp ugt i64 1, %"$gasrem_2554"
  br i1 %"$gascmp_2555", label %"$out_of_gas_2556", label %"$have_gas_2557"

"$out_of_gas_2556":                               ; preds = %"$have_gas_2549"
  call void @_out_of_gas()
  br label %"$have_gas_2557"

"$have_gas_2557":                                 ; preds = %"$out_of_gas_2556", %"$have_gas_2549"
  %"$consume_2558" = sub i64 %"$gasrem_2554", 1
  store i64 %"$consume_2558", i64* @_gasrem, align 8
  store { i8* (i8*, %String)*, i8* } { i8* (i8*, %String)* bitcast (i8* (%"$$fundef_219_env_409"*, %String)* @"$fundef_219" to i8* (i8*, %String)*), i8* null }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8, !dbg !265
  %"$gasrem_2562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2563" = icmp ugt i64 1, %"$gasrem_2562"
  br i1 %"$gascmp_2563", label %"$out_of_gas_2564", label %"$have_gas_2565"

"$out_of_gas_2564":                               ; preds = %"$have_gas_2557"
  call void @_out_of_gas()
  br label %"$have_gas_2565"

"$have_gas_2565":                                 ; preds = %"$out_of_gas_2564", %"$have_gas_2557"
  %"$consume_2566" = sub i64 %"$gasrem_2562", 1
  store i64 %"$consume_2566", i64* @_gasrem, align 8
  %"$$fundef_217_envp_2567_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_217_envp_2567_salloc" = call i8* @_salloc(i8* %"$$fundef_217_envp_2567_load", i64 20)
  %"$$fundef_217_envp_2567" = bitcast i8* %"$$fundef_217_envp_2567_salloc" to %"$$fundef_217_env_408"*
  %"$$fundef_217_env_voidp_2569" = bitcast %"$$fundef_217_env_408"* %"$$fundef_217_envp_2567" to i8*
  %"$$fundef_217_cloval_2570" = insertvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)* bitcast (void (%"$$fundef_217_env_408"*, [20 x i8]*, %TName_Option_ud-registry.Record*)* @"$fundef_217" to void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*), i8* undef }, i8* %"$$fundef_217_env_voidp_2569", 1
  %"$$fundef_217_env_ud-registry.zeroByStr20_2571" = getelementptr inbounds %"$$fundef_217_env_408", %"$$fundef_217_env_408"* %"$$fundef_217_envp_2567", i32 0, i32 0
  %"$ud-registry.zeroByStr20_2572" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_2572", [20 x i8]* %"$$fundef_217_env_ud-registry.zeroByStr20_2571", align 1
  store { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$$fundef_217_cloval_2570", { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8, !dbg !266
  %"$gasrem_2573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2574" = icmp ugt i64 1, %"$gasrem_2573"
  br i1 %"$gascmp_2574", label %"$out_of_gas_2575", label %"$have_gas_2576"

"$out_of_gas_2575":                               ; preds = %"$have_gas_2565"
  call void @_out_of_gas()
  br label %"$have_gas_2576"

"$have_gas_2576":                                 ; preds = %"$out_of_gas_2575", %"$have_gas_2565"
  %"$consume_2577" = sub i64 %"$gasrem_2573", 1
  store i64 %"$consume_2577", i64* @_gasrem, align 8
  store { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)* bitcast ({ void (i8*, [32 x i8]*, %String)*, i8* } (%"$$fundef_213_env_407"*, [32 x i8]*)* @"$fundef_213" to { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*), i8* null }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8, !dbg !267
  %"$gasrem_2581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2582" = icmp ugt i64 1, %"$gasrem_2581"
  br i1 %"$gascmp_2582", label %"$out_of_gas_2583", label %"$have_gas_2584"

"$out_of_gas_2583":                               ; preds = %"$have_gas_2576"
  call void @_out_of_gas()
  br label %"$have_gas_2584"

"$have_gas_2584":                                 ; preds = %"$out_of_gas_2583", %"$have_gas_2576"
  %"$consume_2585" = sub i64 %"$gasrem_2581", 1
  store i64 %"$consume_2585", i64* @_gasrem, align 8
  %"$$fundef_205_envp_2586_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_205_envp_2586_salloc" = call i8* @_salloc(i8* %"$$fundef_205_envp_2586_load", i64 32)
  %"$$fundef_205_envp_2586" = bitcast i8* %"$$fundef_205_envp_2586_salloc" to %"$$fundef_205_env_405"*
  %"$$fundef_205_env_voidp_2588" = bitcast %"$$fundef_205_env_405"* %"$$fundef_205_envp_2586" to i8*
  %"$$fundef_205_cloval_2589" = insertvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_205_env_405"*, [20 x i8]*)* @"$fundef_205" to { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_205_env_voidp_2588", 1
  %"$$fundef_205_env_BoolUtils.orb_2590" = getelementptr inbounds %"$$fundef_205_env_405", %"$$fundef_205_env_405"* %"$$fundef_205_envp_2586", i32 0, i32 0
  %"$BoolUtils.orb_2591" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2591", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_205_env_BoolUtils.orb_2590", align 8
  %"$$fundef_205_env_ud-registry.listByStr20Contains_2592" = getelementptr inbounds %"$$fundef_205_env_405", %"$$fundef_205_env_405"* %"$$fundef_205_envp_2586", i32 0, i32 1
  %"$ud-registry.listByStr20Contains_2593" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2593", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_205_env_ud-registry.listByStr20Contains_2592", align 8
  store { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_205_cloval_2589", { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8, !dbg !268
  ret void
}

define void @_init_state() !dbg !269 {
entry:
  %"$records_269" = alloca %Map_ByStr32_ud-registry.Record*, align 8
  %"$gasrem_2594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2595" = icmp ugt i64 1, %"$gasrem_2594"
  br i1 %"$gascmp_2595", label %"$out_of_gas_2596", label %"$have_gas_2597"

"$out_of_gas_2596":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2597"

"$have_gas_2597":                                 ; preds = %"$out_of_gas_2596", %entry
  %"$consume_2598" = sub i64 %"$gasrem_2594", 1
  store i64 %"$consume_2598", i64* @_gasrem, align 8
  %empty = alloca %Map_ByStr32_ud-registry.Record*, align 8
  %"$gasrem_2599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2600" = icmp ugt i64 1, %"$gasrem_2599"
  br i1 %"$gascmp_2600", label %"$out_of_gas_2601", label %"$have_gas_2602"

"$out_of_gas_2601":                               ; preds = %"$have_gas_2597"
  call void @_out_of_gas()
  br label %"$have_gas_2602"

"$have_gas_2602":                                 ; preds = %"$out_of_gas_2601", %"$have_gas_2597"
  %"$consume_2603" = sub i64 %"$gasrem_2599", 1
  store i64 %"$consume_2603", i64* @_gasrem, align 8
  %"$execptr_load_2604" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2605" = call i8* @_new_empty_map(i8* %"$execptr_load_2604")
  %"$_new_empty_map_2606" = bitcast i8* %"$_new_empty_map_call_2605" to %Map_ByStr32_ud-registry.Record*
  store %Map_ByStr32_ud-registry.Record* %"$_new_empty_map_2606", %Map_ByStr32_ud-registry.Record** %empty, align 8, !dbg !270
  %"$gasrem_2607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2608" = icmp ugt i64 1, %"$gasrem_2607"
  br i1 %"$gascmp_2608", label %"$out_of_gas_2609", label %"$have_gas_2610"

"$out_of_gas_2609":                               ; preds = %"$have_gas_2602"
  call void @_out_of_gas()
  br label %"$have_gas_2610"

"$have_gas_2610":                                 ; preds = %"$out_of_gas_2609", %"$have_gas_2602"
  %"$consume_2611" = sub i64 %"$gasrem_2607", 1
  store i64 %"$consume_2611", i64* @_gasrem, align 8
  %rootRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_2612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2613" = icmp ugt i64 1, %"$gasrem_2612"
  br i1 %"$gascmp_2613", label %"$out_of_gas_2614", label %"$have_gas_2615"

"$out_of_gas_2614":                               ; preds = %"$have_gas_2610"
  call void @_out_of_gas()
  br label %"$have_gas_2615"

"$have_gas_2615":                                 ; preds = %"$out_of_gas_2614", %"$have_gas_2610"
  %"$consume_2616" = sub i64 %"$gasrem_2612", 1
  store i64 %"$consume_2616", i64* @_gasrem, align 8
  %"$initialOwner_2617" = load [20 x i8], [20 x i8]* @initialOwner, align 1
  %"$ud-registry.zeroByStr20_2618" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_2619_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2619_salloc" = call i8* @_salloc(i8* %"$adtval_2619_load", i64 41)
  %"$adtval_2619" = bitcast i8* %"$adtval_2619_salloc" to %CName_ud-registry.Record*
  %"$adtgep_2620" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2619", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2620", align 1
  %"$adtgep_2621" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2619", i32 0, i32 1
  store [20 x i8] %"$initialOwner_2617", [20 x i8]* %"$adtgep_2621", align 1
  %"$adtgep_2622" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2619", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_2618", [20 x i8]* %"$adtgep_2622", align 1
  %"$adtptr_2623" = bitcast %CName_ud-registry.Record* %"$adtval_2619" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_2623", %TName_ud-registry.Record** %rootRecord, align 8, !dbg !271
  %"$execptr_load_2624" = load i8*, i8** @_execptr, align 8
  %"$empty_2625" = load %Map_ByStr32_ud-registry.Record*, %Map_ByStr32_ud-registry.Record** %empty, align 8
  %"$$empty_2625_2626" = bitcast %Map_ByStr32_ud-registry.Record* %"$empty_2625" to i8*
  %"$put_rootNode_2627" = alloca [32 x i8], align 1
  %"$rootNode_2628" = load [32 x i8], [32 x i8]* @rootNode, align 1
  store [32 x i8] %"$rootNode_2628", [32 x i8]* %"$put_rootNode_2627", align 1
  %"$$put_rootNode_2627_2629" = bitcast [32 x i8]* %"$put_rootNode_2627" to i8*
  %"$rootRecord_2630" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %rootRecord, align 8
  %"$$rootRecord_2630_2631" = bitcast %TName_ud-registry.Record* %"$rootRecord_2630" to i8*
  %"$put_call_2632" = call i8* @_put(i8* %"$execptr_load_2624", %_TyDescrTy_Typ* @"$TyDescr_Map_322", i8* %"$$empty_2625_2626", i8* %"$$put_rootNode_2627_2629", i8* %"$$rootRecord_2630_2631"), !dbg !272
  %"$put_2633" = bitcast i8* %"$put_call_2632" to %Map_ByStr32_ud-registry.Record*
  store %Map_ByStr32_ud-registry.Record* %"$put_2633", %Map_ByStr32_ud-registry.Record** %"$records_269", align 8, !dbg !272
  %"$execptr_load_2634" = load i8*, i8** @_execptr, align 8
  %"$$records_269_2636" = load %Map_ByStr32_ud-registry.Record*, %Map_ByStr32_ud-registry.Record** %"$records_269", align 8
  %"$update_value_2637" = bitcast %Map_ByStr32_ud-registry.Record* %"$$records_269_2636" to i8*
  call void @_update_field(i8* %"$execptr_load_2634", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_2635", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 0, i8* null, i8* %"$update_value_2637"), !dbg !270
  %"$registrar_270" = alloca [20 x i8], align 1
  %"$gasrem_2638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2639" = icmp ugt i64 1, %"$gasrem_2638"
  br i1 %"$gascmp_2639", label %"$out_of_gas_2640", label %"$have_gas_2641"

"$out_of_gas_2640":                               ; preds = %"$have_gas_2615"
  call void @_out_of_gas()
  br label %"$have_gas_2641"

"$have_gas_2641":                                 ; preds = %"$out_of_gas_2640", %"$have_gas_2615"
  %"$consume_2642" = sub i64 %"$gasrem_2638", 1
  store i64 %"$consume_2642", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_2643" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_2643", [20 x i8]* %"$registrar_270", align 1, !dbg !273
  %"$execptr_load_2644" = load i8*, i8** @_execptr, align 8
  %"$$registrar_270_2646" = load [20 x i8], [20 x i8]* %"$registrar_270", align 1
  %"$update_value_2647" = alloca [20 x i8], align 1
  store [20 x i8] %"$$registrar_270_2646", [20 x i8]* %"$update_value_2647", align 1
  %"$update_value_2648" = bitcast [20 x i8]* %"$update_value_2647" to i8*
  call void @_update_field(i8* %"$execptr_load_2644", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_2645", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i32 0, i8* null, i8* %"$update_value_2648"), !dbg !273
  %"$approvals_271" = alloca %Map_ByStr32_ByStr20*, align 8
  %"$gasrem_2649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2650" = icmp ugt i64 1, %"$gasrem_2649"
  br i1 %"$gascmp_2650", label %"$out_of_gas_2651", label %"$have_gas_2652"

"$out_of_gas_2651":                               ; preds = %"$have_gas_2641"
  call void @_out_of_gas()
  br label %"$have_gas_2652"

"$have_gas_2652":                                 ; preds = %"$out_of_gas_2651", %"$have_gas_2641"
  %"$consume_2653" = sub i64 %"$gasrem_2649", 1
  store i64 %"$consume_2653", i64* @_gasrem, align 8
  %"$execptr_load_2654" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2655" = call i8* @_new_empty_map(i8* %"$execptr_load_2654")
  %"$_new_empty_map_2656" = bitcast i8* %"$_new_empty_map_call_2655" to %Map_ByStr32_ByStr20*
  store %Map_ByStr32_ByStr20* %"$_new_empty_map_2656", %Map_ByStr32_ByStr20** %"$approvals_271", align 8, !dbg !274
  %"$execptr_load_2657" = load i8*, i8** @_execptr, align 8
  %"$$approvals_271_2659" = load %Map_ByStr32_ByStr20*, %Map_ByStr32_ByStr20** %"$approvals_271", align 8
  %"$update_value_2660" = bitcast %Map_ByStr32_ByStr20* %"$$approvals_271_2659" to i8*
  call void @_update_field(i8* %"$execptr_load_2657", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_2658", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 0, i8* null, i8* %"$update_value_2660"), !dbg !274
  %"$operators_272" = alloca %"Map_ByStr20_List_(ByStr20)"*, align 8
  %"$gasrem_2661" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2662" = icmp ugt i64 1, %"$gasrem_2661"
  br i1 %"$gascmp_2662", label %"$out_of_gas_2663", label %"$have_gas_2664"

"$out_of_gas_2663":                               ; preds = %"$have_gas_2652"
  call void @_out_of_gas()
  br label %"$have_gas_2664"

"$have_gas_2664":                                 ; preds = %"$out_of_gas_2663", %"$have_gas_2652"
  %"$consume_2665" = sub i64 %"$gasrem_2661", 1
  store i64 %"$consume_2665", i64* @_gasrem, align 8
  %"$execptr_load_2666" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2667" = call i8* @_new_empty_map(i8* %"$execptr_load_2666")
  %"$_new_empty_map_2668" = bitcast i8* %"$_new_empty_map_call_2667" to %"Map_ByStr20_List_(ByStr20)"*
  store %"Map_ByStr20_List_(ByStr20)"* %"$_new_empty_map_2668", %"Map_ByStr20_List_(ByStr20)"** %"$operators_272", align 8, !dbg !275
  %"$execptr_load_2669" = load i8*, i8** @_execptr, align 8
  %"$$operators_272_2671" = load %"Map_ByStr20_List_(ByStr20)"*, %"Map_ByStr20_List_(ByStr20)"** %"$operators_272", align 8
  %"$update_value_2672" = bitcast %"Map_ByStr20_List_(ByStr20)"* %"$$operators_272_2671" to i8*
  call void @_update_field(i8* %"$execptr_load_2669", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_2670", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 0, i8* null, i8* %"$update_value_2672"), !dbg !275
  %"$admins_273" = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_2673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2674" = icmp ugt i64 1, %"$gasrem_2673"
  br i1 %"$gascmp_2674", label %"$out_of_gas_2675", label %"$have_gas_2676"

"$out_of_gas_2675":                               ; preds = %"$have_gas_2664"
  call void @_out_of_gas()
  br label %"$have_gas_2676"

"$have_gas_2676":                                 ; preds = %"$out_of_gas_2675", %"$have_gas_2664"
  %"$consume_2677" = sub i64 %"$gasrem_2673", 1
  store i64 %"$consume_2677", i64* @_gasrem, align 8
  %"$initialOwner_2678" = load [20 x i8], [20 x i8]* @initialOwner, align 1
  %"$ud-registry.nilByStr20_2679" = load %TName_List_ByStr20*, %TName_List_ByStr20** @ud-registry.nilByStr20, align 8
  %"$adtval_2680_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2680_salloc" = call i8* @_salloc(i8* %"$adtval_2680_load", i64 29)
  %"$adtval_2680" = bitcast i8* %"$adtval_2680_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_2681" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2680", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2681", align 1
  %"$adtgep_2682" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2680", i32 0, i32 1
  store [20 x i8] %"$initialOwner_2678", [20 x i8]* %"$adtgep_2682", align 1
  %"$adtgep_2683" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2680", i32 0, i32 2
  store %TName_List_ByStr20* %"$ud-registry.nilByStr20_2679", %TName_List_ByStr20** %"$adtgep_2683", align 8
  %"$adtptr_2684" = bitcast %CName_Cons_ByStr20* %"$adtval_2680" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2684", %TName_List_ByStr20** %"$admins_273", align 8, !dbg !276
  %"$execptr_load_2685" = load i8*, i8** @_execptr, align 8
  %"$$admins_273_2687" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$admins_273", align 8
  %"$update_value_2688" = bitcast %TName_List_ByStr20* %"$$admins_273_2687" to i8*
  call void @_update_field(i8* %"$execptr_load_2685", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2686", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i8* %"$update_value_2688"), !dbg !276
  ret void
}

declare i8* @_new_empty_map(i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setAdmin_2689"(%Uint128 %_amount, [20 x i8]* %"$_origin_2690", [20 x i8]* %"$_sender_2691", [20 x i8]* %"$address_2692", %TName_Bool* %isApproved) !dbg !277 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2690", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2691", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_2692", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_2694" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_call_2695" = call i8* @_fetch_field(i8* %"$execptr_load_2694", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2693", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i32 1), !dbg !278
  %"$currentAdmins_2696" = bitcast i8* %"$currentAdmins_call_2695" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_2696", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_2697" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_2697_2698" = bitcast %TName_List_ByStr20* %"$currentAdmins_2697" to i8*
  %"$_literal_cost_call_2699" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$currentAdmins_2697_2698")
  %"$gasadd_2700" = add i64 %"$_literal_cost_call_2699", 0
  %"$gasrem_2701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2702" = icmp ugt i64 %"$gasadd_2700", %"$gasrem_2701"
  br i1 %"$gascmp_2702", label %"$out_of_gas_2703", label %"$have_gas_2704"

"$out_of_gas_2703":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2704"

"$have_gas_2704":                                 ; preds = %"$out_of_gas_2703", %entry
  %"$consume_2705" = sub i64 %"$gasrem_2701", %"$gasadd_2700"
  store i64 %"$consume_2705", i64* @_gasrem, align 8
  %"$gasrem_2706" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2707" = icmp ugt i64 1, %"$gasrem_2706"
  br i1 %"$gascmp_2707", label %"$out_of_gas_2708", label %"$have_gas_2709"

"$out_of_gas_2708":                               ; preds = %"$have_gas_2704"
  call void @_out_of_gas()
  br label %"$have_gas_2709"

"$have_gas_2709":                                 ; preds = %"$out_of_gas_2708", %"$have_gas_2704"
  %"$consume_2710" = sub i64 %"$gasrem_2706", 1
  store i64 %"$consume_2710", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_2711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2712" = icmp ugt i64 1, %"$gasrem_2711"
  br i1 %"$gascmp_2712", label %"$out_of_gas_2713", label %"$have_gas_2714"

"$out_of_gas_2713":                               ; preds = %"$have_gas_2709"
  call void @_out_of_gas()
  br label %"$have_gas_2714"

"$have_gas_2714":                                 ; preds = %"$out_of_gas_2713", %"$have_gas_2709"
  %"$consume_2715" = sub i64 %"$gasrem_2711", 1
  store i64 %"$consume_2715", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_51" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_2716" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_2717" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2716", 0
  %"$ud-registry.listByStr20Contains_envptr_2718" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_2716", 1
  %"$currentAdmins_2719" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains_call_2720" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_2717"(i8* %"$ud-registry.listByStr20Contains_envptr_2718", %TName_List_ByStr20* %"$currentAdmins_2719"), !dbg !279
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_2720", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_51", align 8, !dbg !279
  %"$ud-registry.listByStr20Contains_52" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_51_2721" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_51", align 8
  %"$$ud-registry.listByStr20Contains_51_fptr_2722" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_51_2721", 0
  %"$$ud-registry.listByStr20Contains_51_envptr_2723" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_51_2721", 1
  %"$$ud-registry.listByStr20Contains_51__sender_2724" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_51__sender_2724", align 1
  %"$$ud-registry.listByStr20Contains_51_call_2725" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_51_fptr_2722"(i8* %"$$ud-registry.listByStr20Contains_51_envptr_2723", [20 x i8]* %"$$ud-registry.listByStr20Contains_51__sender_2724"), !dbg !279
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_51_call_2725", %TName_Bool** %"$ud-registry.listByStr20Contains_52", align 8, !dbg !279
  %"$$ud-registry.listByStr20Contains_52_2726" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_52", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_52_2726", %TName_Bool** %isSenderAdmin, align 8, !dbg !279
  %"$gasrem_2727" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2728" = icmp ugt i64 2, %"$gasrem_2727"
  br i1 %"$gascmp_2728", label %"$out_of_gas_2729", label %"$have_gas_2730"

"$out_of_gas_2729":                               ; preds = %"$have_gas_2714"
  call void @_out_of_gas()
  br label %"$have_gas_2730"

"$have_gas_2730":                                 ; preds = %"$out_of_gas_2729", %"$have_gas_2714"
  %"$consume_2731" = sub i64 %"$gasrem_2727", 2
  store i64 %"$consume_2731", i64* @_gasrem, align 8
  %"$isSenderAdmin_2733" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_2734" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_2733", i32 0, i32 0
  %"$isSenderAdmin_tag_2735" = load i8, i8* %"$isSenderAdmin_tag_2734", align 1
  switch i8 %"$isSenderAdmin_tag_2735", label %"$empty_default_2736" [
    i8 0, label %"$True_2737"
    i8 1, label %"$False_2879"
  ], !dbg !280

"$True_2737":                                     ; preds = %"$have_gas_2730"
  %"$isSenderAdmin_2738" = bitcast %TName_Bool* %"$isSenderAdmin_2733" to %CName_True*
  %"$gasrem_2739" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2740" = icmp ugt i64 1, %"$gasrem_2739"
  br i1 %"$gascmp_2740", label %"$out_of_gas_2741", label %"$have_gas_2742"

"$out_of_gas_2741":                               ; preds = %"$True_2737"
  call void @_out_of_gas()
  br label %"$have_gas_2742"

"$have_gas_2742":                                 ; preds = %"$out_of_gas_2741", %"$True_2737"
  %"$consume_2743" = sub i64 %"$gasrem_2739", 1
  store i64 %"$consume_2743", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_2744" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2745" = icmp ugt i64 1, %"$gasrem_2744"
  br i1 %"$gascmp_2745", label %"$out_of_gas_2746", label %"$have_gas_2747"

"$out_of_gas_2746":                               ; preds = %"$have_gas_2742"
  call void @_out_of_gas()
  br label %"$have_gas_2747"

"$have_gas_2747":                                 ; preds = %"$out_of_gas_2746", %"$have_gas_2742"
  %"$consume_2748" = sub i64 %"$gasrem_2744", 1
  store i64 %"$consume_2748", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_2749" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2750" = icmp ugt i64 1, %"$gasrem_2749"
  br i1 %"$gascmp_2750", label %"$out_of_gas_2751", label %"$have_gas_2752"

"$out_of_gas_2751":                               ; preds = %"$have_gas_2747"
  call void @_out_of_gas()
  br label %"$have_gas_2752"

"$have_gas_2752":                                 ; preds = %"$out_of_gas_2751", %"$have_gas_2747"
  %"$consume_2753" = sub i64 %"$gasrem_2749", 1
  store i64 %"$consume_2753", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Excludes_46" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Excludes_2754" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes, align 8
  %"$ud-registry.listByStr20Excludes_fptr_2755" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_2754", 0
  %"$ud-registry.listByStr20Excludes_envptr_2756" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_2754", 1
  %"$currentAdmins_2757" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Excludes_call_2758" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_fptr_2755"(i8* %"$ud-registry.listByStr20Excludes_envptr_2756", %TName_List_ByStr20* %"$currentAdmins_2757"), !dbg !281
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_call_2758", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_46", align 8, !dbg !281
  %"$ud-registry.listByStr20Excludes_47" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Excludes_46_2759" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_46", align 8
  %"$$ud-registry.listByStr20Excludes_46_fptr_2760" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_46_2759", 0
  %"$$ud-registry.listByStr20Excludes_46_envptr_2761" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_46_2759", 1
  %"$$ud-registry.listByStr20Excludes_46_address_2762" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20Excludes_46_address_2762", align 1
  %"$$ud-registry.listByStr20Excludes_46_call_2763" = call %TName_Bool* %"$$ud-registry.listByStr20Excludes_46_fptr_2760"(i8* %"$$ud-registry.listByStr20Excludes_46_envptr_2761", [20 x i8]* %"$$ud-registry.listByStr20Excludes_46_address_2762"), !dbg !281
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_46_call_2763", %TName_Bool** %"$ud-registry.listByStr20Excludes_47", align 8, !dbg !281
  %"$$ud-registry.listByStr20Excludes_47_2764" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Excludes_47", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_47_2764", %TName_Bool** %b, align 8, !dbg !281
  %"$gasrem_2765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2766" = icmp ugt i64 1, %"$gasrem_2765"
  br i1 %"$gascmp_2766", label %"$out_of_gas_2767", label %"$have_gas_2768"

"$out_of_gas_2767":                               ; preds = %"$have_gas_2752"
  call void @_out_of_gas()
  br label %"$have_gas_2768"

"$have_gas_2768":                                 ; preds = %"$out_of_gas_2767", %"$have_gas_2752"
  %"$consume_2769" = sub i64 %"$gasrem_2765", 1
  store i64 %"$consume_2769", i64* @_gasrem, align 8
  %"$ud-registry.xandb_48" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-registry.xandb_2770" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8
  %"$ud-registry.xandb_fptr_2771" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_2770", 0
  %"$ud-registry.xandb_envptr_2772" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_2770", 1
  %"$b_2773" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$ud-registry.xandb_call_2774" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_fptr_2771"(i8* %"$ud-registry.xandb_envptr_2772", %TName_Bool* %"$b_2773"), !dbg !284
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_call_2774", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_48", align 8, !dbg !284
  %"$ud-registry.xandb_49" = alloca %TName_Bool*, align 8
  %"$$ud-registry.xandb_48_2775" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_48", align 8
  %"$$ud-registry.xandb_48_fptr_2776" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_48_2775", 0
  %"$$ud-registry.xandb_48_envptr_2777" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_48_2775", 1
  %"$$ud-registry.xandb_48_call_2778" = call %TName_Bool* %"$$ud-registry.xandb_48_fptr_2776"(i8* %"$$ud-registry.xandb_48_envptr_2777", %TName_Bool* %isApproved), !dbg !284
  store %TName_Bool* %"$$ud-registry.xandb_48_call_2778", %TName_Bool** %"$ud-registry.xandb_49", align 8, !dbg !284
  %"$$ud-registry.xandb_49_2779" = load %TName_Bool*, %TName_Bool** %"$ud-registry.xandb_49", align 8
  store %TName_Bool* %"$$ud-registry.xandb_49_2779", %TName_Bool** %needsToChange, align 8, !dbg !284
  %"$gasrem_2780" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2781" = icmp ugt i64 2, %"$gasrem_2780"
  br i1 %"$gascmp_2781", label %"$out_of_gas_2782", label %"$have_gas_2783"

"$out_of_gas_2782":                               ; preds = %"$have_gas_2768"
  call void @_out_of_gas()
  br label %"$have_gas_2783"

"$have_gas_2783":                                 ; preds = %"$out_of_gas_2782", %"$have_gas_2768"
  %"$consume_2784" = sub i64 %"$gasrem_2780", 2
  store i64 %"$consume_2784", i64* @_gasrem, align 8
  %"$needsToChange_2786" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_2787" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_2786", i32 0, i32 0
  %"$needsToChange_tag_2788" = load i8, i8* %"$needsToChange_tag_2787", align 1
  switch i8 %"$needsToChange_tag_2788", label %"$default_2789" [
    i8 0, label %"$True_2790"
  ], !dbg !285

"$True_2790":                                     ; preds = %"$have_gas_2783"
  %"$needsToChange_2791" = bitcast %TName_Bool* %"$needsToChange_2786" to %CName_True*
  %"$gasrem_2792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2793" = icmp ugt i64 1, %"$gasrem_2792"
  br i1 %"$gascmp_2793", label %"$out_of_gas_2794", label %"$have_gas_2795"

"$out_of_gas_2794":                               ; preds = %"$True_2790"
  call void @_out_of_gas()
  br label %"$have_gas_2795"

"$have_gas_2795":                                 ; preds = %"$out_of_gas_2794", %"$True_2790"
  %"$consume_2796" = sub i64 %"$gasrem_2792", 1
  store i64 %"$consume_2796", i64* @_gasrem, align 8
  %newAdmins = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_2797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2798" = icmp ugt i64 2, %"$gasrem_2797"
  br i1 %"$gascmp_2798", label %"$out_of_gas_2799", label %"$have_gas_2800"

"$out_of_gas_2799":                               ; preds = %"$have_gas_2795"
  call void @_out_of_gas()
  br label %"$have_gas_2800"

"$have_gas_2800":                                 ; preds = %"$out_of_gas_2799", %"$have_gas_2795"
  %"$consume_2801" = sub i64 %"$gasrem_2797", 2
  store i64 %"$consume_2801", i64* @_gasrem, align 8
  %"$isApproved_tag_2803" = getelementptr inbounds %TName_Bool, %TName_Bool* %isApproved, i32 0, i32 0
  %"$isApproved_tag_2804" = load i8, i8* %"$isApproved_tag_2803", align 1
  switch i8 %"$isApproved_tag_2804", label %"$empty_default_2805" [
    i8 0, label %"$True_2806"
    i8 1, label %"$False_2819"
  ], !dbg !286

"$True_2806":                                     ; preds = %"$have_gas_2800"
  %"$isApproved_2807" = bitcast %TName_Bool* %isApproved to %CName_True*
  %"$gasrem_2808" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2809" = icmp ugt i64 1, %"$gasrem_2808"
  br i1 %"$gascmp_2809", label %"$out_of_gas_2810", label %"$have_gas_2811"

"$out_of_gas_2810":                               ; preds = %"$True_2806"
  call void @_out_of_gas()
  br label %"$have_gas_2811"

"$have_gas_2811":                                 ; preds = %"$out_of_gas_2810", %"$True_2806"
  %"$consume_2812" = sub i64 %"$gasrem_2808", 1
  store i64 %"$consume_2812", i64* @_gasrem, align 8
  %"$currentAdmins_2813" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$adtval_2814_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2814_salloc" = call i8* @_salloc(i8* %"$adtval_2814_load", i64 29)
  %"$adtval_2814" = bitcast i8* %"$adtval_2814_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_2815" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2814", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2815", align 1
  %"$adtgep_2816" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2814", i32 0, i32 1
  store [20 x i8] %address, [20 x i8]* %"$adtgep_2816", align 1
  %"$adtgep_2817" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2814", i32 0, i32 2
  store %TName_List_ByStr20* %"$currentAdmins_2813", %TName_List_ByStr20** %"$adtgep_2817", align 8
  %"$adtptr_2818" = bitcast %CName_Cons_ByStr20* %"$adtval_2814" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2818", %TName_List_ByStr20** %newAdmins, align 8, !dbg !289
  br label %"$matchsucc_2802"

"$False_2819":                                    ; preds = %"$have_gas_2800"
  %"$isApproved_2820" = bitcast %TName_Bool* %isApproved to %CName_False*
  %"$gasrem_2821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2822" = icmp ugt i64 1, %"$gasrem_2821"
  br i1 %"$gascmp_2822", label %"$out_of_gas_2823", label %"$have_gas_2824"

"$out_of_gas_2823":                               ; preds = %"$False_2819"
  call void @_out_of_gas()
  br label %"$have_gas_2824"

"$have_gas_2824":                                 ; preds = %"$out_of_gas_2823", %"$False_2819"
  %"$consume_2825" = sub i64 %"$gasrem_2821", 1
  store i64 %"$consume_2825", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20FilterOut_44" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20FilterOut_2826" = load { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8
  %"$ud-registry.listByStr20FilterOut_fptr_2827" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_2826", 0
  %"$ud-registry.listByStr20FilterOut_envptr_2828" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_2826", 1
  %"$currentAdmins_2829" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20FilterOut_call_2830" = call { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_fptr_2827"(i8* %"$ud-registry.listByStr20FilterOut_envptr_2828", %TName_List_ByStr20* %"$currentAdmins_2829"), !dbg !292
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_call_2830", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_44", align 8, !dbg !292
  %"$ud-registry.listByStr20FilterOut_45" = alloca %TName_List_ByStr20*, align 8
  %"$$ud-registry.listByStr20FilterOut_44_2831" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_44", align 8
  %"$$ud-registry.listByStr20FilterOut_44_fptr_2832" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_44_2831", 0
  %"$$ud-registry.listByStr20FilterOut_44_envptr_2833" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_44_2831", 1
  %"$$ud-registry.listByStr20FilterOut_44_address_2834" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20FilterOut_44_address_2834", align 1
  %"$$ud-registry.listByStr20FilterOut_44_call_2835" = call %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_44_fptr_2832"(i8* %"$$ud-registry.listByStr20FilterOut_44_envptr_2833", [20 x i8]* %"$$ud-registry.listByStr20FilterOut_44_address_2834"), !dbg !292
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_44_call_2835", %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_45", align 8, !dbg !292
  %"$$ud-registry.listByStr20FilterOut_45_2836" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_45", align 8
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_45_2836", %TName_List_ByStr20** %newAdmins, align 8, !dbg !292
  br label %"$matchsucc_2802"

"$empty_default_2805":                            ; preds = %"$have_gas_2800"
  br label %"$matchsucc_2802"

"$matchsucc_2802":                                ; preds = %"$have_gas_2824", %"$have_gas_2811", %"$empty_default_2805"
  %"$newAdmins_2837" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newAdmins, align 8
  %"$$newAdmins_2837_2838" = bitcast %TName_List_ByStr20* %"$newAdmins_2837" to i8*
  %"$_literal_cost_call_2839" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$newAdmins_2837_2838")
  %"$gasrem_2840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2841" = icmp ugt i64 %"$_literal_cost_call_2839", %"$gasrem_2840"
  br i1 %"$gascmp_2841", label %"$out_of_gas_2842", label %"$have_gas_2843"

"$out_of_gas_2842":                               ; preds = %"$matchsucc_2802"
  call void @_out_of_gas()
  br label %"$have_gas_2843"

"$have_gas_2843":                                 ; preds = %"$out_of_gas_2842", %"$matchsucc_2802"
  %"$consume_2844" = sub i64 %"$gasrem_2840", %"$_literal_cost_call_2839"
  store i64 %"$consume_2844", i64* @_gasrem, align 8
  %"$execptr_load_2845" = load i8*, i8** @_execptr, align 8
  %"$newAdmins_2847" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newAdmins, align 8
  %"$update_value_2848" = bitcast %TName_List_ByStr20* %"$newAdmins_2847" to i8*
  call void @_update_field(i8* %"$execptr_load_2845", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2846", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i8* %"$update_value_2848"), !dbg !294
  %"$gasrem_2849" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2850" = icmp ugt i64 1, %"$gasrem_2849"
  br i1 %"$gascmp_2850", label %"$out_of_gas_2851", label %"$have_gas_2852"

"$out_of_gas_2851":                               ; preds = %"$have_gas_2843"
  call void @_out_of_gas()
  br label %"$have_gas_2852"

"$have_gas_2852":                                 ; preds = %"$out_of_gas_2851", %"$have_gas_2843"
  %"$consume_2853" = sub i64 %"$gasrem_2849", 1
  store i64 %"$consume_2853", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_2854" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2855" = icmp ugt i64 1, %"$gasrem_2854"
  br i1 %"$gascmp_2855", label %"$out_of_gas_2856", label %"$have_gas_2857"

"$out_of_gas_2856":                               ; preds = %"$have_gas_2852"
  call void @_out_of_gas()
  br label %"$have_gas_2857"

"$have_gas_2857":                                 ; preds = %"$out_of_gas_2856", %"$have_gas_2852"
  %"$consume_2858" = sub i64 %"$gasrem_2854", 1
  store i64 %"$consume_2858", i64* @_gasrem, align 8
  %"$ud-registry.eAdminSet_42" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-registry.eAdminSet_2859" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eAdminSet, align 8
  %"$ud-registry.eAdminSet_fptr_2860" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eAdminSet_2859", 0
  %"$ud-registry.eAdminSet_envptr_2861" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eAdminSet_2859", 1
  %"$ud-registry.eAdminSet_address_2862" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eAdminSet_address_2862", align 1
  %"$ud-registry.eAdminSet_call_2863" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.eAdminSet_fptr_2860"(i8* %"$ud-registry.eAdminSet_envptr_2861", [20 x i8]* %"$ud-registry.eAdminSet_address_2862"), !dbg !295
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.eAdminSet_call_2863", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eAdminSet_42", align 8, !dbg !295
  %"$ud-registry.eAdminSet_43" = alloca i8*, align 8
  %"$$ud-registry.eAdminSet_42_2864" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eAdminSet_42", align 8
  %"$$ud-registry.eAdminSet_42_fptr_2865" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eAdminSet_42_2864", 0
  %"$$ud-registry.eAdminSet_42_envptr_2866" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eAdminSet_42_2864", 1
  %"$$ud-registry.eAdminSet_42_call_2867" = call i8* %"$$ud-registry.eAdminSet_42_fptr_2865"(i8* %"$$ud-registry.eAdminSet_42_envptr_2866", %TName_Bool* %isApproved), !dbg !295
  store i8* %"$$ud-registry.eAdminSet_42_call_2867", i8** %"$ud-registry.eAdminSet_43", align 8, !dbg !295
  %"$$ud-registry.eAdminSet_43_2868" = load i8*, i8** %"$ud-registry.eAdminSet_43", align 8
  store i8* %"$$ud-registry.eAdminSet_43_2868", i8** %e, align 8, !dbg !295
  %"$e_2869" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_2871" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_2869")
  %"$gasrem_2872" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2873" = icmp ugt i64 %"$_literal_cost_call_2871", %"$gasrem_2872"
  br i1 %"$gascmp_2873", label %"$out_of_gas_2874", label %"$have_gas_2875"

"$out_of_gas_2874":                               ; preds = %"$have_gas_2857"
  call void @_out_of_gas()
  br label %"$have_gas_2875"

"$have_gas_2875":                                 ; preds = %"$out_of_gas_2874", %"$have_gas_2857"
  %"$consume_2876" = sub i64 %"$gasrem_2872", %"$_literal_cost_call_2871"
  store i64 %"$consume_2876", i64* @_gasrem, align 8
  %"$execptr_load_2877" = load i8*, i8** @_execptr, align 8
  %"$e_2878" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_2877", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_2878"), !dbg !296
  br label %"$matchsucc_2785"

"$default_2789":                                  ; preds = %"$have_gas_2783"
  br label %"$joinp_1"

"$joinp_1":                                       ; preds = %"$default_2789"
  br label %"$matchsucc_2785"

"$matchsucc_2785":                                ; preds = %"$have_gas_2875", %"$joinp_1"
  br label %"$matchsucc_2732"

"$False_2879":                                    ; preds = %"$have_gas_2730"
  %"$isSenderAdmin_2880" = bitcast %TName_Bool* %"$isSenderAdmin_2733" to %CName_False*
  %"$gasrem_2881" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2882" = icmp ugt i64 1, %"$gasrem_2881"
  br i1 %"$gascmp_2882", label %"$out_of_gas_2883", label %"$have_gas_2884"

"$out_of_gas_2883":                               ; preds = %"$False_2879"
  call void @_out_of_gas()
  br label %"$have_gas_2884"

"$have_gas_2884":                                 ; preds = %"$out_of_gas_2883", %"$False_2879"
  %"$consume_2885" = sub i64 %"$gasrem_2881", 1
  store i64 %"$consume_2885", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_2886" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2887" = icmp ugt i64 1, %"$gasrem_2886"
  br i1 %"$gascmp_2887", label %"$out_of_gas_2888", label %"$have_gas_2889"

"$out_of_gas_2888":                               ; preds = %"$have_gas_2884"
  call void @_out_of_gas()
  br label %"$have_gas_2889"

"$have_gas_2889":                                 ; preds = %"$out_of_gas_2888", %"$have_gas_2884"
  %"$consume_2890" = sub i64 %"$gasrem_2886", 1
  store i64 %"$consume_2890", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_2891" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2892" = icmp ugt i64 1, %"$gasrem_2891"
  br i1 %"$gascmp_2892", label %"$out_of_gas_2893", label %"$have_gas_2894"

"$out_of_gas_2893":                               ; preds = %"$have_gas_2889"
  call void @_out_of_gas()
  br label %"$have_gas_2894"

"$have_gas_2894":                                 ; preds = %"$out_of_gas_2893", %"$have_gas_2889"
  %"$consume_2895" = sub i64 %"$gasrem_2891", 1
  store i64 %"$consume_2895", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$stringlit_2896", i32 0, i32 0), i32 26 }, %String* %m, align 8, !dbg !297
  %"$gasrem_2897" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2898" = icmp ugt i64 1, %"$gasrem_2897"
  br i1 %"$gascmp_2898", label %"$out_of_gas_2899", label %"$have_gas_2900"

"$out_of_gas_2899":                               ; preds = %"$have_gas_2894"
  call void @_out_of_gas()
  br label %"$have_gas_2900"

"$have_gas_2900":                                 ; preds = %"$out_of_gas_2899", %"$have_gas_2894"
  %"$consume_2901" = sub i64 %"$gasrem_2897", 1
  store i64 %"$consume_2901", i64* @_gasrem, align 8
  %"$ud-registry.eError_50" = alloca i8*, align 8
  %"$ud-registry.eError_2902" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_2903" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_2902", 0
  %"$ud-registry.eError_envptr_2904" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_2902", 1
  %"$m_2905" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_2906" = call i8* %"$ud-registry.eError_fptr_2903"(i8* %"$ud-registry.eError_envptr_2904", %String %"$m_2905"), !dbg !299
  store i8* %"$ud-registry.eError_call_2906", i8** %"$ud-registry.eError_50", align 8, !dbg !299
  %"$$ud-registry.eError_50_2907" = load i8*, i8** %"$ud-registry.eError_50", align 8
  store i8* %"$$ud-registry.eError_50_2907", i8** %e1, align 8, !dbg !299
  %"$e_2908" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_2910" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_2908")
  %"$gasrem_2911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2912" = icmp ugt i64 %"$_literal_cost_call_2910", %"$gasrem_2911"
  br i1 %"$gascmp_2912", label %"$out_of_gas_2913", label %"$have_gas_2914"

"$out_of_gas_2913":                               ; preds = %"$have_gas_2900"
  call void @_out_of_gas()
  br label %"$have_gas_2914"

"$have_gas_2914":                                 ; preds = %"$out_of_gas_2913", %"$have_gas_2900"
  %"$consume_2915" = sub i64 %"$gasrem_2911", %"$_literal_cost_call_2910"
  store i64 %"$consume_2915", i64* @_gasrem, align 8
  %"$execptr_load_2916" = load i8*, i8** @_execptr, align 8
  %"$e_2917" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_2916", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_2917"), !dbg !300
  br label %"$matchsucc_2732"

"$empty_default_2736":                            ; preds = %"$have_gas_2730"
  br label %"$matchsucc_2732"

"$matchsucc_2732":                                ; preds = %"$have_gas_2914", %"$matchsucc_2785", %"$empty_default_2736"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) !dbg !301 {
entry:
  %"$_amount_2919" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2920" = bitcast i8* %"$_amount_2919" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2920", align 8
  %"$_origin_2921" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2922" = bitcast i8* %"$_origin_2921" to [20 x i8]*
  %"$_sender_2923" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2924" = bitcast i8* %"$_sender_2923" to [20 x i8]*
  %"$address_2925" = getelementptr i8, i8* %0, i32 56
  %"$address_2926" = bitcast i8* %"$address_2925" to [20 x i8]*
  %"$isApproved_2927" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_2928" = bitcast i8* %"$isApproved_2927" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_2928", align 8
  call void @"$setAdmin_2689"(%Uint128 %_amount, [20 x i8]* %"$_origin_2922", [20 x i8]* %"$_sender_2924", [20 x i8]* %"$address_2926", %TName_Bool* %isApproved), !dbg !302
  ret void
}

define internal void @"$approve_2929"(%Uint128 %_amount, [20 x i8]* %"$_origin_2930", [20 x i8]* %"$_sender_2931", [32 x i8]* %"$node_2932", [20 x i8]* %"$address_2933") !dbg !303 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2930", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2931", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_2932", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_2933", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_2934_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2934_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2934_salloc_load", i64 32)
  %"$indices_buf_2934_salloc" = bitcast i8* %"$indices_buf_2934_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2934" = bitcast [32 x i8]* %"$indices_buf_2934_salloc" to i8*
  %"$indices_gep_2935" = getelementptr i8, i8* %"$indices_buf_2934", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2935" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_2937" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_2938" = call i8* @_fetch_field(i8* %"$execptr_load_2937", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_2936", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_2934", i32 1), !dbg !304
  %"$maybeRecord_2939" = bitcast i8* %"$maybeRecord_call_2938" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_2939", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_2940" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_2940_2941" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_2940" to i8*
  %"$_literal_cost_call_2942" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_2940_2941")
  %"$gasadd_2943" = add i64 %"$_literal_cost_call_2942", 0
  %"$gasadd_2944" = add i64 %"$gasadd_2943", 1
  %"$gasrem_2945" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2946" = icmp ugt i64 %"$gasadd_2944", %"$gasrem_2945"
  br i1 %"$gascmp_2946", label %"$out_of_gas_2947", label %"$have_gas_2948"

"$out_of_gas_2947":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2948"

"$have_gas_2948":                                 ; preds = %"$out_of_gas_2947", %entry
  %"$consume_2949" = sub i64 %"$gasrem_2945", %"$gasadd_2944"
  store i64 %"$consume_2949", i64* @_gasrem, align 8
  %"$gasrem_2950" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2951" = icmp ugt i64 1, %"$gasrem_2950"
  br i1 %"$gascmp_2951", label %"$out_of_gas_2952", label %"$have_gas_2953"

"$out_of_gas_2952":                               ; preds = %"$have_gas_2948"
  call void @_out_of_gas()
  br label %"$have_gas_2953"

"$have_gas_2953":                                 ; preds = %"$out_of_gas_2952", %"$have_gas_2948"
  %"$consume_2954" = sub i64 %"$gasrem_2950", 1
  store i64 %"$consume_2954", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_2955" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2956" = icmp ugt i64 1, %"$gasrem_2955"
  br i1 %"$gascmp_2956", label %"$out_of_gas_2957", label %"$have_gas_2958"

"$out_of_gas_2957":                               ; preds = %"$have_gas_2953"
  call void @_out_of_gas()
  br label %"$have_gas_2958"

"$have_gas_2958":                                 ; preds = %"$out_of_gas_2957", %"$have_gas_2953"
  %"$consume_2959" = sub i64 %"$gasrem_2955", 1
  store i64 %"$consume_2959", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_56" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_2960" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_2961" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_2960", 0
  %"$ud-registry.recordMemberOwner_envptr_2962" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_2960", 1
  %"$maybeRecord_2963" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_2964" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_2961"(i8* %"$ud-registry.recordMemberOwner_envptr_2962", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_2964", %TName_Option_ud-registry.Record* %"$maybeRecord_2963"), !dbg !305
  %"$ud-registry.recordMemberOwner_ret_2965" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_2964", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_2965", [20 x i8]* %"$ud-registry.recordMemberOwner_56", align 1, !dbg !305
  %"$$ud-registry.recordMemberOwner_56_2966" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_56", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_56_2966", [20 x i8]* %recordOwner, align 1, !dbg !305
  %"$gasrem_2967" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2968" = icmp ugt i64 1, %"$gasrem_2967"
  br i1 %"$gascmp_2968", label %"$out_of_gas_2969", label %"$have_gas_2970"

"$out_of_gas_2969":                               ; preds = %"$have_gas_2958"
  call void @_out_of_gas()
  br label %"$have_gas_2970"

"$have_gas_2970":                                 ; preds = %"$out_of_gas_2969", %"$have_gas_2958"
  %"$consume_2971" = sub i64 %"$gasrem_2967", 1
  store i64 %"$consume_2971", i64* @_gasrem, align 8
  %isSenderNodeOwner = alloca %TName_Bool*, align 8
  %"$execptr_load_2972" = load i8*, i8** @_execptr, align 8
  %"$eq__sender_2973" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_2973", align 1
  %"$$eq__sender_2973_2974" = bitcast [20 x i8]* %"$eq__sender_2973" to i8*
  %"$eq_recordOwner_2975" = alloca [20 x i8], align 1
  %"$recordOwner_2976" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_2976", [20 x i8]* %"$eq_recordOwner_2975", align 1
  %"$$eq_recordOwner_2975_2977" = bitcast [20 x i8]* %"$eq_recordOwner_2975" to i8*
  %"$eq_call_2978" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2972", i32 20, i8* %"$$eq__sender_2973_2974", i8* %"$$eq_recordOwner_2975_2977"), !dbg !306
  store %TName_Bool* %"$eq_call_2978", %TName_Bool** %isSenderNodeOwner, align 8, !dbg !306
  %"$gasrem_2980" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2981" = icmp ugt i64 2, %"$gasrem_2980"
  br i1 %"$gascmp_2981", label %"$out_of_gas_2982", label %"$have_gas_2983"

"$out_of_gas_2982":                               ; preds = %"$have_gas_2970"
  call void @_out_of_gas()
  br label %"$have_gas_2983"

"$have_gas_2983":                                 ; preds = %"$out_of_gas_2982", %"$have_gas_2970"
  %"$consume_2984" = sub i64 %"$gasrem_2980", 2
  store i64 %"$consume_2984", i64* @_gasrem, align 8
  %"$isSenderNodeOwner_2986" = load %TName_Bool*, %TName_Bool** %isSenderNodeOwner, align 8
  %"$isSenderNodeOwner_tag_2987" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderNodeOwner_2986", i32 0, i32 0
  %"$isSenderNodeOwner_tag_2988" = load i8, i8* %"$isSenderNodeOwner_tag_2987", align 1
  switch i8 %"$isSenderNodeOwner_tag_2988", label %"$empty_default_2989" [
    i8 0, label %"$True_2990"
    i8 1, label %"$False_3123"
  ], !dbg !307

"$True_2990":                                     ; preds = %"$have_gas_2983"
  %"$isSenderNodeOwner_2991" = bitcast %TName_Bool* %"$isSenderNodeOwner_2986" to %CName_True*
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_2992_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2992_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2992_salloc_load", i64 32)
  %"$indices_buf_2992_salloc" = bitcast i8* %"$indices_buf_2992_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2992" = bitcast [32 x i8]* %"$indices_buf_2992_salloc" to i8*
  %"$indices_gep_2993" = getelementptr i8, i8* %"$indices_buf_2992", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_2993" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_2995" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_2996" = call i8* @_fetch_field(i8* %"$execptr_load_2995", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_2994", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_2992", i32 1), !dbg !308
  %"$maybeApproved_2997" = bitcast i8* %"$maybeApproved_call_2996" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_2997", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_2998" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_2998_2999" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2998" to i8*
  %"$_literal_cost_call_3000" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_2998_2999")
  %"$gasadd_3001" = add i64 %"$_literal_cost_call_3000", 0
  %"$gasadd_3002" = add i64 %"$gasadd_3001", 1
  %"$gasrem_3003" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3004" = icmp ugt i64 %"$gasadd_3002", %"$gasrem_3003"
  br i1 %"$gascmp_3004", label %"$out_of_gas_3005", label %"$have_gas_3006"

"$out_of_gas_3005":                               ; preds = %"$True_2990"
  call void @_out_of_gas()
  br label %"$have_gas_3006"

"$have_gas_3006":                                 ; preds = %"$out_of_gas_3005", %"$True_2990"
  %"$consume_3007" = sub i64 %"$gasrem_3003", %"$gasadd_3002"
  store i64 %"$consume_3007", i64* @_gasrem, align 8
  %"$gasrem_3008" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3009" = icmp ugt i64 1, %"$gasrem_3008"
  br i1 %"$gascmp_3009", label %"$out_of_gas_3010", label %"$have_gas_3011"

"$out_of_gas_3010":                               ; preds = %"$have_gas_3006"
  call void @_out_of_gas()
  br label %"$have_gas_3011"

"$have_gas_3011":                                 ; preds = %"$out_of_gas_3010", %"$have_gas_3006"
  %"$consume_3012" = sub i64 %"$gasrem_3008", 1
  store i64 %"$consume_3012", i64* @_gasrem, align 8
  %currentlyApproved = alloca [20 x i8], align 1
  %"$gasrem_3013" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3014" = icmp ugt i64 2, %"$gasrem_3013"
  br i1 %"$gascmp_3014", label %"$out_of_gas_3015", label %"$have_gas_3016"

"$out_of_gas_3015":                               ; preds = %"$have_gas_3011"
  call void @_out_of_gas()
  br label %"$have_gas_3016"

"$have_gas_3016":                                 ; preds = %"$out_of_gas_3015", %"$have_gas_3011"
  %"$consume_3017" = sub i64 %"$gasrem_3013", 2
  store i64 %"$consume_3017", i64* @_gasrem, align 8
  %"$maybeApproved_3019" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_3020" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_3019", i32 0, i32 0
  %"$maybeApproved_tag_3021" = load i8, i8* %"$maybeApproved_tag_3020", align 1
  switch i8 %"$maybeApproved_tag_3021", label %"$empty_default_3022" [
    i8 1, label %"$None_3023"
    i8 0, label %"$Some_3031"
  ], !dbg !311

"$None_3023":                                     ; preds = %"$have_gas_3016"
  %"$maybeApproved_3024" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3019" to %CName_None_ByStr20*
  %"$gasrem_3025" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3026" = icmp ugt i64 1, %"$gasrem_3025"
  br i1 %"$gascmp_3026", label %"$out_of_gas_3027", label %"$have_gas_3028"

"$out_of_gas_3027":                               ; preds = %"$None_3023"
  call void @_out_of_gas()
  br label %"$have_gas_3028"

"$have_gas_3028":                                 ; preds = %"$out_of_gas_3027", %"$None_3023"
  %"$consume_3029" = sub i64 %"$gasrem_3025", 1
  store i64 %"$consume_3029", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_3030" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_3030", [20 x i8]* %currentlyApproved, align 1, !dbg !312
  br label %"$matchsucc_3018"

"$Some_3031":                                     ; preds = %"$have_gas_3016"
  %"$maybeApproved_3032" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3019" to %CName_Some_ByStr20*
  %"$approved_gep_3033" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_3032", i32 0, i32 1
  %"$approved_load_3034" = load [20 x i8], [20 x i8]* %"$approved_gep_3033", align 1
  %approved = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_3034", [20 x i8]* %approved, align 1
  %"$gasrem_3035" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3036" = icmp ugt i64 1, %"$gasrem_3035"
  br i1 %"$gascmp_3036", label %"$out_of_gas_3037", label %"$have_gas_3038"

"$out_of_gas_3037":                               ; preds = %"$Some_3031"
  call void @_out_of_gas()
  br label %"$have_gas_3038"

"$have_gas_3038":                                 ; preds = %"$out_of_gas_3037", %"$Some_3031"
  %"$consume_3039" = sub i64 %"$gasrem_3035", 1
  store i64 %"$consume_3039", i64* @_gasrem, align 8
  %"$approved_3040" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_3040", [20 x i8]* %currentlyApproved, align 1, !dbg !315
  br label %"$matchsucc_3018"

"$empty_default_3022":                            ; preds = %"$have_gas_3016"
  br label %"$matchsucc_3018"

"$matchsucc_3018":                                ; preds = %"$have_gas_3038", %"$have_gas_3028", %"$empty_default_3022"
  %"$gasrem_3041" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3042" = icmp ugt i64 1, %"$gasrem_3041"
  br i1 %"$gascmp_3042", label %"$out_of_gas_3043", label %"$have_gas_3044"

"$out_of_gas_3043":                               ; preds = %"$matchsucc_3018"
  call void @_out_of_gas()
  br label %"$have_gas_3044"

"$have_gas_3044":                                 ; preds = %"$out_of_gas_3043", %"$matchsucc_3018"
  %"$consume_3045" = sub i64 %"$gasrem_3041", 1
  store i64 %"$consume_3045", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_3046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3047" = icmp ugt i64 1, %"$gasrem_3046"
  br i1 %"$gascmp_3047", label %"$out_of_gas_3048", label %"$have_gas_3049"

"$out_of_gas_3048":                               ; preds = %"$have_gas_3044"
  call void @_out_of_gas()
  br label %"$have_gas_3049"

"$have_gas_3049":                                 ; preds = %"$out_of_gas_3048", %"$have_gas_3044"
  %"$consume_3050" = sub i64 %"$gasrem_3046", 1
  store i64 %"$consume_3050", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$execptr_load_3051" = load i8*, i8** @_execptr, align 8
  %"$eq_currentlyApproved_3052" = alloca [20 x i8], align 1
  %"$currentlyApproved_3053" = load [20 x i8], [20 x i8]* %currentlyApproved, align 1
  store [20 x i8] %"$currentlyApproved_3053", [20 x i8]* %"$eq_currentlyApproved_3052", align 1
  %"$$eq_currentlyApproved_3052_3054" = bitcast [20 x i8]* %"$eq_currentlyApproved_3052" to i8*
  %"$eq_address_3055" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$eq_address_3055", align 1
  %"$$eq_address_3055_3056" = bitcast [20 x i8]* %"$eq_address_3055" to i8*
  %"$eq_call_3057" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_3051", i32 20, i8* %"$$eq_currentlyApproved_3052_3054", i8* %"$$eq_address_3055_3056"), !dbg !317
  store %TName_Bool* %"$eq_call_3057", %TName_Bool** %b, align 8, !dbg !317
  %"$gasrem_3059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3060" = icmp ugt i64 1, %"$gasrem_3059"
  br i1 %"$gascmp_3060", label %"$out_of_gas_3061", label %"$have_gas_3062"

"$out_of_gas_3061":                               ; preds = %"$have_gas_3049"
  call void @_out_of_gas()
  br label %"$have_gas_3062"

"$have_gas_3062":                                 ; preds = %"$out_of_gas_3061", %"$have_gas_3049"
  %"$consume_3063" = sub i64 %"$gasrem_3059", 1
  store i64 %"$consume_3063", i64* @_gasrem, align 8
  %"$BoolUtils.negb_54" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_3064" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_3065" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_3064", 0
  %"$BoolUtils.negb_envptr_3066" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_3064", 1
  %"$b_3067" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$BoolUtils.negb_call_3068" = call %TName_Bool* %"$BoolUtils.negb_fptr_3065"(i8* %"$BoolUtils.negb_envptr_3066", %TName_Bool* %"$b_3067"), !dbg !318
  store %TName_Bool* %"$BoolUtils.negb_call_3068", %TName_Bool** %"$BoolUtils.negb_54", align 8, !dbg !318
  %"$$BoolUtils.negb_54_3069" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_54", align 8
  store %TName_Bool* %"$$BoolUtils.negb_54_3069", %TName_Bool** %needsToChange, align 8, !dbg !318
  %"$gasrem_3070" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3071" = icmp ugt i64 2, %"$gasrem_3070"
  br i1 %"$gascmp_3071", label %"$out_of_gas_3072", label %"$have_gas_3073"

"$out_of_gas_3072":                               ; preds = %"$have_gas_3062"
  call void @_out_of_gas()
  br label %"$have_gas_3073"

"$have_gas_3073":                                 ; preds = %"$out_of_gas_3072", %"$have_gas_3062"
  %"$consume_3074" = sub i64 %"$gasrem_3070", 2
  store i64 %"$consume_3074", i64* @_gasrem, align 8
  %"$needsToChange_3076" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_3077" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_3076", i32 0, i32 0
  %"$needsToChange_tag_3078" = load i8, i8* %"$needsToChange_tag_3077", align 1
  switch i8 %"$needsToChange_tag_3078", label %"$default_3079" [
    i8 0, label %"$True_3080"
  ], !dbg !319

"$True_3080":                                     ; preds = %"$have_gas_3073"
  %"$needsToChange_3081" = bitcast %TName_Bool* %"$needsToChange_3076" to %CName_True*
  %"$_literal_cost_address_3082" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$_literal_cost_address_3082", align 1
  %"$$_literal_cost_address_3082_3083" = bitcast [20 x i8]* %"$_literal_cost_address_3082" to i8*
  %"$_literal_cost_call_3084" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i8* %"$$_literal_cost_address_3082_3083")
  %"$gasadd_3085" = add i64 %"$_literal_cost_call_3084", 1
  %"$gasrem_3086" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3087" = icmp ugt i64 %"$gasadd_3085", %"$gasrem_3086"
  br i1 %"$gascmp_3087", label %"$out_of_gas_3088", label %"$have_gas_3089"

"$out_of_gas_3088":                               ; preds = %"$True_3080"
  call void @_out_of_gas()
  br label %"$have_gas_3089"

"$have_gas_3089":                                 ; preds = %"$out_of_gas_3088", %"$True_3080"
  %"$consume_3090" = sub i64 %"$gasrem_3086", %"$gasadd_3085"
  store i64 %"$consume_3090", i64* @_gasrem, align 8
  %"$indices_buf_3091_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3091_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3091_salloc_load", i64 32)
  %"$indices_buf_3091_salloc" = bitcast i8* %"$indices_buf_3091_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3091" = bitcast [32 x i8]* %"$indices_buf_3091_salloc" to i8*
  %"$indices_gep_3092" = getelementptr i8, i8* %"$indices_buf_3091", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3092" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast2, align 1
  %"$execptr_load_3093" = load i8*, i8** @_execptr, align 8
  %"$update_value_3095" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$update_value_3095", align 1
  %"$update_value_3096" = bitcast [20 x i8]* %"$update_value_3095" to i8*
  call void @_update_field(i8* %"$execptr_load_3093", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3094", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_3091", i8* %"$update_value_3096"), !dbg !320
  %"$gasrem_3097" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3098" = icmp ugt i64 1, %"$gasrem_3097"
  br i1 %"$gascmp_3098", label %"$out_of_gas_3099", label %"$have_gas_3100"

"$out_of_gas_3099":                               ; preds = %"$have_gas_3089"
  call void @_out_of_gas()
  br label %"$have_gas_3100"

"$have_gas_3100":                                 ; preds = %"$out_of_gas_3099", %"$have_gas_3089"
  %"$consume_3101" = sub i64 %"$gasrem_3097", 1
  store i64 %"$consume_3101", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3103" = icmp ugt i64 1, %"$gasrem_3102"
  br i1 %"$gascmp_3103", label %"$out_of_gas_3104", label %"$have_gas_3105"

"$out_of_gas_3104":                               ; preds = %"$have_gas_3100"
  call void @_out_of_gas()
  br label %"$have_gas_3105"

"$have_gas_3105":                                 ; preds = %"$out_of_gas_3104", %"$have_gas_3100"
  %"$consume_3106" = sub i64 %"$gasrem_3102", 1
  store i64 %"$consume_3106", i64* @_gasrem, align 8
  %"$ud-registry.eApproved_53" = alloca i8*, align 8
  %"$ud-registry.eApproved_3107" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApproved, align 8
  %"$ud-registry.eApproved_fptr_3108" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApproved_3107", 0
  %"$ud-registry.eApproved_envptr_3109" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApproved_3107", 1
  %"$ud-registry.eApproved_address_3110" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eApproved_address_3110", align 1
  %"$ud-registry.eApproved_call_3111" = call i8* %"$ud-registry.eApproved_fptr_3108"(i8* %"$ud-registry.eApproved_envptr_3109", [20 x i8]* %"$ud-registry.eApproved_address_3110"), !dbg !323
  store i8* %"$ud-registry.eApproved_call_3111", i8** %"$ud-registry.eApproved_53", align 8, !dbg !323
  %"$$ud-registry.eApproved_53_3112" = load i8*, i8** %"$ud-registry.eApproved_53", align 8
  store i8* %"$$ud-registry.eApproved_53_3112", i8** %e, align 8, !dbg !323
  %"$e_3113" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3115" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3113")
  %"$gasrem_3116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3117" = icmp ugt i64 %"$_literal_cost_call_3115", %"$gasrem_3116"
  br i1 %"$gascmp_3117", label %"$out_of_gas_3118", label %"$have_gas_3119"

"$out_of_gas_3118":                               ; preds = %"$have_gas_3105"
  call void @_out_of_gas()
  br label %"$have_gas_3119"

"$have_gas_3119":                                 ; preds = %"$out_of_gas_3118", %"$have_gas_3105"
  %"$consume_3120" = sub i64 %"$gasrem_3116", %"$_literal_cost_call_3115"
  store i64 %"$consume_3120", i64* @_gasrem, align 8
  %"$execptr_load_3121" = load i8*, i8** @_execptr, align 8
  %"$e_3122" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3121", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3122"), !dbg !324
  br label %"$matchsucc_3075"

"$default_3079":                                  ; preds = %"$have_gas_3073"
  br label %"$joinp_2"

"$joinp_2":                                       ; preds = %"$default_3079"
  br label %"$matchsucc_3075"

"$matchsucc_3075":                                ; preds = %"$have_gas_3119", %"$joinp_2"
  br label %"$matchsucc_2985"

"$False_3123":                                    ; preds = %"$have_gas_2983"
  %"$isSenderNodeOwner_3124" = bitcast %TName_Bool* %"$isSenderNodeOwner_2986" to %CName_False*
  %"$gasrem_3125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3126" = icmp ugt i64 1, %"$gasrem_3125"
  br i1 %"$gascmp_3126", label %"$out_of_gas_3127", label %"$have_gas_3128"

"$out_of_gas_3127":                               ; preds = %"$False_3123"
  call void @_out_of_gas()
  br label %"$have_gas_3128"

"$have_gas_3128":                                 ; preds = %"$out_of_gas_3127", %"$False_3123"
  %"$consume_3129" = sub i64 %"$gasrem_3125", 1
  store i64 %"$consume_3129", i64* @_gasrem, align 8
  %e3 = alloca i8*, align 8
  %"$gasrem_3130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3131" = icmp ugt i64 1, %"$gasrem_3130"
  br i1 %"$gascmp_3131", label %"$out_of_gas_3132", label %"$have_gas_3133"

"$out_of_gas_3132":                               ; preds = %"$have_gas_3128"
  call void @_out_of_gas()
  br label %"$have_gas_3133"

"$have_gas_3133":                                 ; preds = %"$out_of_gas_3132", %"$have_gas_3128"
  %"$consume_3134" = sub i64 %"$gasrem_3130", 1
  store i64 %"$consume_3134", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_3135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3136" = icmp ugt i64 1, %"$gasrem_3135"
  br i1 %"$gascmp_3136", label %"$out_of_gas_3137", label %"$have_gas_3138"

"$out_of_gas_3137":                               ; preds = %"$have_gas_3133"
  call void @_out_of_gas()
  br label %"$have_gas_3138"

"$have_gas_3138":                                 ; preds = %"$out_of_gas_3137", %"$have_gas_3133"
  %"$consume_3139" = sub i64 %"$gasrem_3135", 1
  store i64 %"$consume_3139", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_3140", i32 0, i32 0), i32 21 }, %String* %m, align 8, !dbg !325
  %"$gasrem_3141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3142" = icmp ugt i64 1, %"$gasrem_3141"
  br i1 %"$gascmp_3142", label %"$out_of_gas_3143", label %"$have_gas_3144"

"$out_of_gas_3143":                               ; preds = %"$have_gas_3138"
  call void @_out_of_gas()
  br label %"$have_gas_3144"

"$have_gas_3144":                                 ; preds = %"$out_of_gas_3143", %"$have_gas_3138"
  %"$consume_3145" = sub i64 %"$gasrem_3141", 1
  store i64 %"$consume_3145", i64* @_gasrem, align 8
  %"$ud-registry.eError_55" = alloca i8*, align 8
  %"$ud-registry.eError_3146" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3147" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3146", 0
  %"$ud-registry.eError_envptr_3148" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3146", 1
  %"$m_3149" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_3150" = call i8* %"$ud-registry.eError_fptr_3147"(i8* %"$ud-registry.eError_envptr_3148", %String %"$m_3149"), !dbg !327
  store i8* %"$ud-registry.eError_call_3150", i8** %"$ud-registry.eError_55", align 8, !dbg !327
  %"$$ud-registry.eError_55_3151" = load i8*, i8** %"$ud-registry.eError_55", align 8
  store i8* %"$$ud-registry.eError_55_3151", i8** %e3, align 8, !dbg !327
  %"$e_3152" = load i8*, i8** %e3, align 8
  %"$_literal_cost_call_3154" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3152")
  %"$gasrem_3155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3156" = icmp ugt i64 %"$_literal_cost_call_3154", %"$gasrem_3155"
  br i1 %"$gascmp_3156", label %"$out_of_gas_3157", label %"$have_gas_3158"

"$out_of_gas_3157":                               ; preds = %"$have_gas_3144"
  call void @_out_of_gas()
  br label %"$have_gas_3158"

"$have_gas_3158":                                 ; preds = %"$out_of_gas_3157", %"$have_gas_3144"
  %"$consume_3159" = sub i64 %"$gasrem_3155", %"$_literal_cost_call_3154"
  store i64 %"$consume_3159", i64* @_gasrem, align 8
  %"$execptr_load_3160" = load i8*, i8** @_execptr, align 8
  %"$e_3161" = load i8*, i8** %e3, align 8
  call void @_event(i8* %"$execptr_load_3160", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3161"), !dbg !328
  br label %"$matchsucc_2985"

"$empty_default_2989":                            ; preds = %"$have_gas_2983"
  br label %"$matchsucc_2985"

"$matchsucc_2985":                                ; preds = %"$have_gas_3158", %"$matchsucc_3075", %"$empty_default_2989"
  ret void
}

define void @approve(i8* %0) !dbg !329 {
entry:
  %"$_amount_3163" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3164" = bitcast i8* %"$_amount_3163" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3164", align 8
  %"$_origin_3165" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3166" = bitcast i8* %"$_origin_3165" to [20 x i8]*
  %"$_sender_3167" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3168" = bitcast i8* %"$_sender_3167" to [20 x i8]*
  %"$node_3169" = getelementptr i8, i8* %0, i32 56
  %"$node_3170" = bitcast i8* %"$node_3169" to [32 x i8]*
  %"$address_3171" = getelementptr i8, i8* %0, i32 88
  %"$address_3172" = bitcast i8* %"$address_3171" to [20 x i8]*
  call void @"$approve_2929"(%Uint128 %_amount, [20 x i8]* %"$_origin_3166", [20 x i8]* %"$_sender_3168", [32 x i8]* %"$node_3170", [20 x i8]* %"$address_3172"), !dbg !330
  ret void
}

define internal void @"$approveFor_3173"(%Uint128 %_amount, [20 x i8]* %"$_origin_3174", [20 x i8]* %"$_sender_3175", [20 x i8]* %"$address_3176", %TName_Bool* %isApproved) !dbg !331 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3174", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3175", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_3176", align 1
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3177_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3177_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3177_salloc_load", i64 20)
  %"$indices_buf_3177_salloc" = bitcast i8* %"$indices_buf_3177_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3177" = bitcast [20 x i8]* %"$indices_buf_3177_salloc" to i8*
  %"$indices_gep_3178" = getelementptr i8, i8* %"$indices_buf_3177", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3178" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_3180" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3181" = call i8* @_fetch_field(i8* %"$execptr_load_3180", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3179", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_3177", i32 1), !dbg !332
  %"$maybeOperators_3182" = bitcast i8* %"$maybeOperators_call_3181" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3182", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3183" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3183_3184" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3183" to i8*
  %"$_literal_cost_call_3185" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_3183_3184")
  %"$gasadd_3186" = add i64 %"$_literal_cost_call_3185", 0
  %"$gasadd_3187" = add i64 %"$gasadd_3186", 1
  %"$gasrem_3188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3189" = icmp ugt i64 %"$gasadd_3187", %"$gasrem_3188"
  br i1 %"$gascmp_3189", label %"$out_of_gas_3190", label %"$have_gas_3191"

"$out_of_gas_3190":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3191"

"$have_gas_3191":                                 ; preds = %"$out_of_gas_3190", %entry
  %"$consume_3192" = sub i64 %"$gasrem_3188", %"$gasadd_3187"
  store i64 %"$consume_3192", i64* @_gasrem, align 8
  %"$gasrem_3193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3194" = icmp ugt i64 1, %"$gasrem_3193"
  br i1 %"$gascmp_3194", label %"$out_of_gas_3195", label %"$have_gas_3196"

"$out_of_gas_3195":                               ; preds = %"$have_gas_3191"
  call void @_out_of_gas()
  br label %"$have_gas_3196"

"$have_gas_3196":                                 ; preds = %"$out_of_gas_3195", %"$have_gas_3191"
  %"$consume_3197" = sub i64 %"$gasrem_3193", 1
  store i64 %"$consume_3197", i64* @_gasrem, align 8
  %currentOperators = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_3198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3199" = icmp ugt i64 2, %"$gasrem_3198"
  br i1 %"$gascmp_3199", label %"$out_of_gas_3200", label %"$have_gas_3201"

"$out_of_gas_3200":                               ; preds = %"$have_gas_3196"
  call void @_out_of_gas()
  br label %"$have_gas_3201"

"$have_gas_3201":                                 ; preds = %"$out_of_gas_3200", %"$have_gas_3196"
  %"$consume_3202" = sub i64 %"$gasrem_3198", 2
  store i64 %"$consume_3202", i64* @_gasrem, align 8
  %"$maybeOperators_3204" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_tag_3205" = getelementptr inbounds %"TName_Option_List_(ByStr20)", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3204", i32 0, i32 0
  %"$maybeOperators_tag_3206" = load i8, i8* %"$maybeOperators_tag_3205", align 1
  switch i8 %"$maybeOperators_tag_3206", label %"$empty_default_3207" [
    i8 1, label %"$None_3208"
    i8 0, label %"$Some_3216"
  ], !dbg !333

"$None_3208":                                     ; preds = %"$have_gas_3201"
  %"$maybeOperators_3209" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3204" to %"CName_None_List_(ByStr20)"*
  %"$gasrem_3210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3211" = icmp ugt i64 1, %"$gasrem_3210"
  br i1 %"$gascmp_3211", label %"$out_of_gas_3212", label %"$have_gas_3213"

"$out_of_gas_3212":                               ; preds = %"$None_3208"
  call void @_out_of_gas()
  br label %"$have_gas_3213"

"$have_gas_3213":                                 ; preds = %"$out_of_gas_3212", %"$None_3208"
  %"$consume_3214" = sub i64 %"$gasrem_3210", 1
  store i64 %"$consume_3214", i64* @_gasrem, align 8
  %"$ud-registry.nilByStr20_3215" = load %TName_List_ByStr20*, %TName_List_ByStr20** @ud-registry.nilByStr20, align 8
  store %TName_List_ByStr20* %"$ud-registry.nilByStr20_3215", %TName_List_ByStr20** %currentOperators, align 8, !dbg !334
  br label %"$matchsucc_3203"

"$Some_3216":                                     ; preds = %"$have_gas_3201"
  %"$maybeOperators_3217" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3204" to %"CName_Some_List_(ByStr20)"*
  %"$ops_gep_3218" = getelementptr inbounds %"CName_Some_List_(ByStr20)", %"CName_Some_List_(ByStr20)"* %"$maybeOperators_3217", i32 0, i32 1
  %"$ops_load_3219" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ops_gep_3218", align 8
  %ops = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$ops_load_3219", %TName_List_ByStr20** %ops, align 8
  %"$gasrem_3220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3221" = icmp ugt i64 1, %"$gasrem_3220"
  br i1 %"$gascmp_3221", label %"$out_of_gas_3222", label %"$have_gas_3223"

"$out_of_gas_3222":                               ; preds = %"$Some_3216"
  call void @_out_of_gas()
  br label %"$have_gas_3223"

"$have_gas_3223":                                 ; preds = %"$out_of_gas_3222", %"$Some_3216"
  %"$consume_3224" = sub i64 %"$gasrem_3220", 1
  store i64 %"$consume_3224", i64* @_gasrem, align 8
  %"$ops_3225" = load %TName_List_ByStr20*, %TName_List_ByStr20** %ops, align 8
  store %TName_List_ByStr20* %"$ops_3225", %TName_List_ByStr20** %currentOperators, align 8, !dbg !337
  br label %"$matchsucc_3203"

"$empty_default_3207":                            ; preds = %"$have_gas_3201"
  br label %"$matchsucc_3203"

"$matchsucc_3203":                                ; preds = %"$have_gas_3223", %"$have_gas_3213", %"$empty_default_3207"
  %"$gasrem_3226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3227" = icmp ugt i64 1, %"$gasrem_3226"
  br i1 %"$gascmp_3227", label %"$out_of_gas_3228", label %"$have_gas_3229"

"$out_of_gas_3228":                               ; preds = %"$matchsucc_3203"
  call void @_out_of_gas()
  br label %"$have_gas_3229"

"$have_gas_3229":                                 ; preds = %"$out_of_gas_3228", %"$matchsucc_3203"
  %"$consume_3230" = sub i64 %"$gasrem_3226", 1
  store i64 %"$consume_3230", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_3231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3232" = icmp ugt i64 1, %"$gasrem_3231"
  br i1 %"$gascmp_3232", label %"$out_of_gas_3233", label %"$have_gas_3234"

"$out_of_gas_3233":                               ; preds = %"$have_gas_3229"
  call void @_out_of_gas()
  br label %"$have_gas_3234"

"$have_gas_3234":                                 ; preds = %"$out_of_gas_3233", %"$have_gas_3229"
  %"$consume_3235" = sub i64 %"$gasrem_3231", 1
  store i64 %"$consume_3235", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_3236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3237" = icmp ugt i64 1, %"$gasrem_3236"
  br i1 %"$gascmp_3237", label %"$out_of_gas_3238", label %"$have_gas_3239"

"$out_of_gas_3238":                               ; preds = %"$have_gas_3234"
  call void @_out_of_gas()
  br label %"$have_gas_3239"

"$have_gas_3239":                                 ; preds = %"$out_of_gas_3238", %"$have_gas_3234"
  %"$consume_3240" = sub i64 %"$gasrem_3236", 1
  store i64 %"$consume_3240", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Excludes_62" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Excludes_3241" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Excludes, align 8
  %"$ud-registry.listByStr20Excludes_fptr_3242" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_3241", 0
  %"$ud-registry.listByStr20Excludes_envptr_3243" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Excludes_3241", 1
  %"$currentOperators_3244" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$ud-registry.listByStr20Excludes_call_3245" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_fptr_3242"(i8* %"$ud-registry.listByStr20Excludes_envptr_3243", %TName_List_ByStr20* %"$currentOperators_3244"), !dbg !339
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_call_3245", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_62", align 8, !dbg !339
  %"$ud-registry.listByStr20Excludes_63" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Excludes_62_3246" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Excludes_62", align 8
  %"$$ud-registry.listByStr20Excludes_62_fptr_3247" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_62_3246", 0
  %"$$ud-registry.listByStr20Excludes_62_envptr_3248" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Excludes_62_3246", 1
  %"$$ud-registry.listByStr20Excludes_62_address_3249" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20Excludes_62_address_3249", align 1
  %"$$ud-registry.listByStr20Excludes_62_call_3250" = call %TName_Bool* %"$$ud-registry.listByStr20Excludes_62_fptr_3247"(i8* %"$$ud-registry.listByStr20Excludes_62_envptr_3248", [20 x i8]* %"$$ud-registry.listByStr20Excludes_62_address_3249"), !dbg !339
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_62_call_3250", %TName_Bool** %"$ud-registry.listByStr20Excludes_63", align 8, !dbg !339
  %"$$ud-registry.listByStr20Excludes_63_3251" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Excludes_63", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Excludes_63_3251", %TName_Bool** %b, align 8, !dbg !339
  %"$gasrem_3252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3253" = icmp ugt i64 1, %"$gasrem_3252"
  br i1 %"$gascmp_3253", label %"$out_of_gas_3254", label %"$have_gas_3255"

"$out_of_gas_3254":                               ; preds = %"$have_gas_3239"
  call void @_out_of_gas()
  br label %"$have_gas_3255"

"$have_gas_3255":                                 ; preds = %"$out_of_gas_3254", %"$have_gas_3239"
  %"$consume_3256" = sub i64 %"$gasrem_3252", 1
  store i64 %"$consume_3256", i64* @_gasrem, align 8
  %"$ud-registry.xandb_64" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-registry.xandb_3257" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8
  %"$ud-registry.xandb_fptr_3258" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_3257", 0
  %"$ud-registry.xandb_envptr_3259" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_3257", 1
  %"$b_3260" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$ud-registry.xandb_call_3261" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_fptr_3258"(i8* %"$ud-registry.xandb_envptr_3259", %TName_Bool* %"$b_3260"), !dbg !340
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_call_3261", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_64", align 8, !dbg !340
  %"$ud-registry.xandb_65" = alloca %TName_Bool*, align 8
  %"$$ud-registry.xandb_64_3262" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.xandb_64", align 8
  %"$$ud-registry.xandb_64_fptr_3263" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_64_3262", 0
  %"$$ud-registry.xandb_64_envptr_3264" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.xandb_64_3262", 1
  %"$$ud-registry.xandb_64_call_3265" = call %TName_Bool* %"$$ud-registry.xandb_64_fptr_3263"(i8* %"$$ud-registry.xandb_64_envptr_3264", %TName_Bool* %isApproved), !dbg !340
  store %TName_Bool* %"$$ud-registry.xandb_64_call_3265", %TName_Bool** %"$ud-registry.xandb_65", align 8, !dbg !340
  %"$$ud-registry.xandb_65_3266" = load %TName_Bool*, %TName_Bool** %"$ud-registry.xandb_65", align 8
  store %TName_Bool* %"$$ud-registry.xandb_65_3266", %TName_Bool** %needsToChange, align 8, !dbg !340
  %"$gasrem_3267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3268" = icmp ugt i64 2, %"$gasrem_3267"
  br i1 %"$gascmp_3268", label %"$out_of_gas_3269", label %"$have_gas_3270"

"$out_of_gas_3269":                               ; preds = %"$have_gas_3255"
  call void @_out_of_gas()
  br label %"$have_gas_3270"

"$have_gas_3270":                                 ; preds = %"$out_of_gas_3269", %"$have_gas_3255"
  %"$consume_3271" = sub i64 %"$gasrem_3267", 2
  store i64 %"$consume_3271", i64* @_gasrem, align 8
  %"$needsToChange_3273" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_3274" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_3273", i32 0, i32 0
  %"$needsToChange_tag_3275" = load i8, i8* %"$needsToChange_tag_3274", align 1
  switch i8 %"$needsToChange_tag_3275", label %"$default_3276" [
    i8 0, label %"$True_3277"
  ], !dbg !341

"$True_3277":                                     ; preds = %"$have_gas_3270"
  %"$needsToChange_3278" = bitcast %TName_Bool* %"$needsToChange_3273" to %CName_True*
  %"$gasrem_3279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3280" = icmp ugt i64 1, %"$gasrem_3279"
  br i1 %"$gascmp_3280", label %"$out_of_gas_3281", label %"$have_gas_3282"

"$out_of_gas_3281":                               ; preds = %"$True_3277"
  call void @_out_of_gas()
  br label %"$have_gas_3282"

"$have_gas_3282":                                 ; preds = %"$out_of_gas_3281", %"$True_3277"
  %"$consume_3283" = sub i64 %"$gasrem_3279", 1
  store i64 %"$consume_3283", i64* @_gasrem, align 8
  %newOperators = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_3284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3285" = icmp ugt i64 2, %"$gasrem_3284"
  br i1 %"$gascmp_3285", label %"$out_of_gas_3286", label %"$have_gas_3287"

"$out_of_gas_3286":                               ; preds = %"$have_gas_3282"
  call void @_out_of_gas()
  br label %"$have_gas_3287"

"$have_gas_3287":                                 ; preds = %"$out_of_gas_3286", %"$have_gas_3282"
  %"$consume_3288" = sub i64 %"$gasrem_3284", 2
  store i64 %"$consume_3288", i64* @_gasrem, align 8
  %"$isApproved_tag_3290" = getelementptr inbounds %TName_Bool, %TName_Bool* %isApproved, i32 0, i32 0
  %"$isApproved_tag_3291" = load i8, i8* %"$isApproved_tag_3290", align 1
  switch i8 %"$isApproved_tag_3291", label %"$empty_default_3292" [
    i8 0, label %"$True_3293"
    i8 1, label %"$False_3306"
  ], !dbg !342

"$True_3293":                                     ; preds = %"$have_gas_3287"
  %"$isApproved_3294" = bitcast %TName_Bool* %isApproved to %CName_True*
  %"$gasrem_3295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3296" = icmp ugt i64 1, %"$gasrem_3295"
  br i1 %"$gascmp_3296", label %"$out_of_gas_3297", label %"$have_gas_3298"

"$out_of_gas_3297":                               ; preds = %"$True_3293"
  call void @_out_of_gas()
  br label %"$have_gas_3298"

"$have_gas_3298":                                 ; preds = %"$out_of_gas_3297", %"$True_3293"
  %"$consume_3299" = sub i64 %"$gasrem_3295", 1
  store i64 %"$consume_3299", i64* @_gasrem, align 8
  %"$currentOperators_3300" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$adtval_3301_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3301_salloc" = call i8* @_salloc(i8* %"$adtval_3301_load", i64 29)
  %"$adtval_3301" = bitcast i8* %"$adtval_3301_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_3302" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3301", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3302", align 1
  %"$adtgep_3303" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3301", i32 0, i32 1
  store [20 x i8] %address, [20 x i8]* %"$adtgep_3303", align 1
  %"$adtgep_3304" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_3301", i32 0, i32 2
  store %TName_List_ByStr20* %"$currentOperators_3300", %TName_List_ByStr20** %"$adtgep_3304", align 8
  %"$adtptr_3305" = bitcast %CName_Cons_ByStr20* %"$adtval_3301" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_3305", %TName_List_ByStr20** %newOperators, align 8, !dbg !345
  br label %"$matchsucc_3289"

"$False_3306":                                    ; preds = %"$have_gas_3287"
  %"$isApproved_3307" = bitcast %TName_Bool* %isApproved to %CName_False*
  %"$gasrem_3308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3309" = icmp ugt i64 1, %"$gasrem_3308"
  br i1 %"$gascmp_3309", label %"$out_of_gas_3310", label %"$have_gas_3311"

"$out_of_gas_3310":                               ; preds = %"$False_3306"
  call void @_out_of_gas()
  br label %"$have_gas_3311"

"$have_gas_3311":                                 ; preds = %"$out_of_gas_3310", %"$False_3306"
  %"$consume_3312" = sub i64 %"$gasrem_3308", 1
  store i64 %"$consume_3312", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20FilterOut_60" = alloca { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20FilterOut_3313" = load { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8
  %"$ud-registry.listByStr20FilterOut_fptr_3314" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_3313", 0
  %"$ud-registry.listByStr20FilterOut_envptr_3315" = extractvalue { { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20FilterOut_3313", 1
  %"$currentOperators_3316" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$ud-registry.listByStr20FilterOut_call_3317" = call { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_fptr_3314"(i8* %"$ud-registry.listByStr20FilterOut_envptr_3315", %TName_List_ByStr20* %"$currentOperators_3316"), !dbg !348
  store { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_call_3317", { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_60", align 8, !dbg !348
  %"$ud-registry.listByStr20FilterOut_61" = alloca %TName_List_ByStr20*, align 8
  %"$$ud-registry.listByStr20FilterOut_60_3318" = load { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20FilterOut_60", align 8
  %"$$ud-registry.listByStr20FilterOut_60_fptr_3319" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_60_3318", 0
  %"$$ud-registry.listByStr20FilterOut_60_envptr_3320" = extractvalue { %TName_List_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20FilterOut_60_3318", 1
  %"$$ud-registry.listByStr20FilterOut_60_address_3321" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.listByStr20FilterOut_60_address_3321", align 1
  %"$$ud-registry.listByStr20FilterOut_60_call_3322" = call %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_60_fptr_3319"(i8* %"$$ud-registry.listByStr20FilterOut_60_envptr_3320", [20 x i8]* %"$$ud-registry.listByStr20FilterOut_60_address_3321"), !dbg !348
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_60_call_3322", %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_61", align 8, !dbg !348
  %"$$ud-registry.listByStr20FilterOut_61_3323" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ud-registry.listByStr20FilterOut_61", align 8
  store %TName_List_ByStr20* %"$$ud-registry.listByStr20FilterOut_61_3323", %TName_List_ByStr20** %newOperators, align 8, !dbg !348
  br label %"$matchsucc_3289"

"$empty_default_3292":                            ; preds = %"$have_gas_3287"
  br label %"$matchsucc_3289"

"$matchsucc_3289":                                ; preds = %"$have_gas_3311", %"$have_gas_3298", %"$empty_default_3292"
  %"$newOperators_3324" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newOperators, align 8
  %"$$newOperators_3324_3325" = bitcast %TName_List_ByStr20* %"$newOperators_3324" to i8*
  %"$_literal_cost_call_3326" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$newOperators_3324_3325")
  %"$gasadd_3327" = add i64 %"$_literal_cost_call_3326", 1
  %"$gasrem_3328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3329" = icmp ugt i64 %"$gasadd_3327", %"$gasrem_3328"
  br i1 %"$gascmp_3329", label %"$out_of_gas_3330", label %"$have_gas_3331"

"$out_of_gas_3330":                               ; preds = %"$matchsucc_3289"
  call void @_out_of_gas()
  br label %"$have_gas_3331"

"$have_gas_3331":                                 ; preds = %"$out_of_gas_3330", %"$matchsucc_3289"
  %"$consume_3332" = sub i64 %"$gasrem_3328", %"$gasadd_3327"
  store i64 %"$consume_3332", i64* @_gasrem, align 8
  %"$indices_buf_3333_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3333_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3333_salloc_load", i64 20)
  %"$indices_buf_3333_salloc" = bitcast i8* %"$indices_buf_3333_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3333" = bitcast [20 x i8]* %"$indices_buf_3333_salloc" to i8*
  %"$indices_gep_3334" = getelementptr i8, i8* %"$indices_buf_3333", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3334" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_3335" = load i8*, i8** @_execptr, align 8
  %"$newOperators_3337" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newOperators, align 8
  %"$update_value_3338" = bitcast %TName_List_ByStr20* %"$newOperators_3337" to i8*
  call void @_update_field(i8* %"$execptr_load_3335", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3336", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_3333", i8* %"$update_value_3338"), !dbg !350
  %"$gasrem_3339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3340" = icmp ugt i64 1, %"$gasrem_3339"
  br i1 %"$gascmp_3340", label %"$out_of_gas_3341", label %"$have_gas_3342"

"$out_of_gas_3341":                               ; preds = %"$have_gas_3331"
  call void @_out_of_gas()
  br label %"$have_gas_3342"

"$have_gas_3342":                                 ; preds = %"$out_of_gas_3341", %"$have_gas_3331"
  %"$consume_3343" = sub i64 %"$gasrem_3339", 1
  store i64 %"$consume_3343", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3345" = icmp ugt i64 1, %"$gasrem_3344"
  br i1 %"$gascmp_3345", label %"$out_of_gas_3346", label %"$have_gas_3347"

"$out_of_gas_3346":                               ; preds = %"$have_gas_3342"
  call void @_out_of_gas()
  br label %"$have_gas_3347"

"$have_gas_3347":                                 ; preds = %"$out_of_gas_3346", %"$have_gas_3342"
  %"$consume_3348" = sub i64 %"$gasrem_3344", 1
  store i64 %"$consume_3348", i64* @_gasrem, align 8
  %"$ud-registry.eApprovedFor_57" = alloca { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eApprovedFor_3349" = load { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApprovedFor, align 8
  %"$ud-registry.eApprovedFor_fptr_3350" = extractvalue { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_3349", 0
  %"$ud-registry.eApprovedFor_envptr_3351" = extractvalue { { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_3349", 1
  %"$ud-registry.eApprovedFor__sender_3352" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.eApprovedFor__sender_3352", align 1
  %"$ud-registry.eApprovedFor_call_3353" = call { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_fptr_3350"(i8* %"$ud-registry.eApprovedFor_envptr_3351", [20 x i8]* %"$ud-registry.eApprovedFor__sender_3352"), !dbg !351
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApprovedFor_call_3353", { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eApprovedFor_57", align 8, !dbg !351
  %"$ud-registry.eApprovedFor_58" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$ud-registry.eApprovedFor_57_3354" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eApprovedFor_57", align 8
  %"$$ud-registry.eApprovedFor_57_fptr_3355" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eApprovedFor_57_3354", 0
  %"$$ud-registry.eApprovedFor_57_envptr_3356" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eApprovedFor_57_3354", 1
  %"$$ud-registry.eApprovedFor_57_address_3357" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$$ud-registry.eApprovedFor_57_address_3357", align 1
  %"$$ud-registry.eApprovedFor_57_call_3358" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_57_fptr_3355"(i8* %"$$ud-registry.eApprovedFor_57_envptr_3356", [20 x i8]* %"$$ud-registry.eApprovedFor_57_address_3357"), !dbg !351
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_57_call_3358", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eApprovedFor_58", align 8, !dbg !351
  %"$ud-registry.eApprovedFor_59" = alloca i8*, align 8
  %"$$ud-registry.eApprovedFor_58_3359" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-registry.eApprovedFor_58", align 8
  %"$$ud-registry.eApprovedFor_58_fptr_3360" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_58_3359", 0
  %"$$ud-registry.eApprovedFor_58_envptr_3361" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-registry.eApprovedFor_58_3359", 1
  %"$$ud-registry.eApprovedFor_58_call_3362" = call i8* %"$$ud-registry.eApprovedFor_58_fptr_3360"(i8* %"$$ud-registry.eApprovedFor_58_envptr_3361", %TName_Bool* %isApproved), !dbg !351
  store i8* %"$$ud-registry.eApprovedFor_58_call_3362", i8** %"$ud-registry.eApprovedFor_59", align 8, !dbg !351
  %"$$ud-registry.eApprovedFor_59_3363" = load i8*, i8** %"$ud-registry.eApprovedFor_59", align 8
  store i8* %"$$ud-registry.eApprovedFor_59_3363", i8** %e, align 8, !dbg !351
  %"$e_3364" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3366" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3364")
  %"$gasrem_3367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3368" = icmp ugt i64 %"$_literal_cost_call_3366", %"$gasrem_3367"
  br i1 %"$gascmp_3368", label %"$out_of_gas_3369", label %"$have_gas_3370"

"$out_of_gas_3369":                               ; preds = %"$have_gas_3347"
  call void @_out_of_gas()
  br label %"$have_gas_3370"

"$have_gas_3370":                                 ; preds = %"$out_of_gas_3369", %"$have_gas_3347"
  %"$consume_3371" = sub i64 %"$gasrem_3367", %"$_literal_cost_call_3366"
  store i64 %"$consume_3371", i64* @_gasrem, align 8
  %"$execptr_load_3372" = load i8*, i8** @_execptr, align 8
  %"$e_3373" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3372", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3373"), !dbg !352
  br label %"$matchsucc_3272"

"$default_3276":                                  ; preds = %"$have_gas_3270"
  br label %"$joinp_3"

"$joinp_3":                                       ; preds = %"$default_3276"
  br label %"$matchsucc_3272"

"$matchsucc_3272":                                ; preds = %"$have_gas_3370", %"$joinp_3"
  ret void
}

define void @approveFor(i8* %0) !dbg !353 {
entry:
  %"$_amount_3375" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3376" = bitcast i8* %"$_amount_3375" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3376", align 8
  %"$_origin_3377" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3378" = bitcast i8* %"$_origin_3377" to [20 x i8]*
  %"$_sender_3379" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3380" = bitcast i8* %"$_sender_3379" to [20 x i8]*
  %"$address_3381" = getelementptr i8, i8* %0, i32 56
  %"$address_3382" = bitcast i8* %"$address_3381" to [20 x i8]*
  %"$isApproved_3383" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_3384" = bitcast i8* %"$isApproved_3383" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_3384", align 8
  call void @"$approveFor_3173"(%Uint128 %_amount, [20 x i8]* %"$_origin_3378", [20 x i8]* %"$_sender_3380", [20 x i8]* %"$address_3382", %TName_Bool* %isApproved), !dbg !354
  ret void
}

define internal void @"$configureNode_3385"(%Uint128 %_amount, [20 x i8]* %"$_origin_3386", [20 x i8]* %"$_sender_3387", [32 x i8]* %"$node_3388", [20 x i8]* %"$owner_3389", [20 x i8]* %"$resolver_3390") !dbg !355 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3386", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3387", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_3388", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_3389", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_3390", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_3391_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3391_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3391_salloc_load", i64 32)
  %"$indices_buf_3391_salloc" = bitcast i8* %"$indices_buf_3391_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3391" = bitcast [32 x i8]* %"$indices_buf_3391_salloc" to i8*
  %"$indices_gep_3392" = getelementptr i8, i8* %"$indices_buf_3391", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3392" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_3394" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_3395" = call i8* @_fetch_field(i8* %"$execptr_load_3394", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3393", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3391", i32 1), !dbg !356
  %"$maybeRecord_3396" = bitcast i8* %"$maybeRecord_call_3395" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3396", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_3397" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_3397_3398" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3397" to i8*
  %"$_literal_cost_call_3399" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_3397_3398")
  %"$gasadd_3400" = add i64 %"$_literal_cost_call_3399", 0
  %"$gasadd_3401" = add i64 %"$gasadd_3400", 1
  %"$gasrem_3402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3403" = icmp ugt i64 %"$gasadd_3401", %"$gasrem_3402"
  br i1 %"$gascmp_3403", label %"$out_of_gas_3404", label %"$have_gas_3405"

"$out_of_gas_3404":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3405"

"$have_gas_3405":                                 ; preds = %"$out_of_gas_3404", %entry
  %"$consume_3406" = sub i64 %"$gasrem_3402", %"$gasadd_3401"
  store i64 %"$consume_3406", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_3407_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3407_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3407_salloc_load", i64 32)
  %"$indices_buf_3407_salloc" = bitcast i8* %"$indices_buf_3407_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3407" = bitcast [32 x i8]* %"$indices_buf_3407_salloc" to i8*
  %"$indices_gep_3408" = getelementptr i8, i8* %"$indices_buf_3407", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3408" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_3410" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_3411" = call i8* @_fetch_field(i8* %"$execptr_load_3410", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3409", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_3407", i32 1), !dbg !357
  %"$maybeApproved_3412" = bitcast i8* %"$maybeApproved_call_3411" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3412", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_3413" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_3413_3414" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3413" to i8*
  %"$_literal_cost_call_3415" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_3413_3414")
  %"$gasadd_3416" = add i64 %"$_literal_cost_call_3415", 0
  %"$gasadd_3417" = add i64 %"$gasadd_3416", 1
  %"$gasrem_3418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3419" = icmp ugt i64 %"$gasadd_3417", %"$gasrem_3418"
  br i1 %"$gascmp_3419", label %"$out_of_gas_3420", label %"$have_gas_3421"

"$out_of_gas_3420":                               ; preds = %"$have_gas_3405"
  call void @_out_of_gas()
  br label %"$have_gas_3421"

"$have_gas_3421":                                 ; preds = %"$out_of_gas_3420", %"$have_gas_3405"
  %"$consume_3422" = sub i64 %"$gasrem_3418", %"$gasadd_3417"
  store i64 %"$consume_3422", i64* @_gasrem, align 8
  %"$gasrem_3423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3424" = icmp ugt i64 1, %"$gasrem_3423"
  br i1 %"$gascmp_3424", label %"$out_of_gas_3425", label %"$have_gas_3426"

"$out_of_gas_3425":                               ; preds = %"$have_gas_3421"
  call void @_out_of_gas()
  br label %"$have_gas_3426"

"$have_gas_3426":                                 ; preds = %"$out_of_gas_3425", %"$have_gas_3421"
  %"$consume_3427" = sub i64 %"$gasrem_3423", 1
  store i64 %"$consume_3427", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_3428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3429" = icmp ugt i64 1, %"$gasrem_3428"
  br i1 %"$gascmp_3429", label %"$out_of_gas_3430", label %"$have_gas_3431"

"$out_of_gas_3430":                               ; preds = %"$have_gas_3426"
  call void @_out_of_gas()
  br label %"$have_gas_3431"

"$have_gas_3431":                                 ; preds = %"$out_of_gas_3430", %"$have_gas_3426"
  %"$consume_3432" = sub i64 %"$gasrem_3428", 1
  store i64 %"$consume_3432", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_76" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_3433" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_3434" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3433", 0
  %"$ud-registry.recordMemberOwner_envptr_3435" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3433", 1
  %"$maybeRecord_3436" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_3437" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_3434"(i8* %"$ud-registry.recordMemberOwner_envptr_3435", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3437", %TName_Option_ud-registry.Record* %"$maybeRecord_3436"), !dbg !358
  %"$ud-registry.recordMemberOwner_ret_3438" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3437", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3438", [20 x i8]* %"$ud-registry.recordMemberOwner_76", align 1, !dbg !358
  %"$$ud-registry.recordMemberOwner_76_3439" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_76", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_76_3439", [20 x i8]* %recordOwner, align 1, !dbg !358
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3440_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3440_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3440_salloc_load", i64 20)
  %"$indices_buf_3440_salloc" = bitcast i8* %"$indices_buf_3440_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3440" = bitcast [20 x i8]* %"$indices_buf_3440_salloc" to i8*
  %"$recordOwner_3441" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_3442" = getelementptr i8, i8* %"$indices_buf_3440", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3442" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3441", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_3444" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3445" = call i8* @_fetch_field(i8* %"$execptr_load_3444", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3443", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_3440", i32 1), !dbg !359
  %"$maybeOperators_3446" = bitcast i8* %"$maybeOperators_call_3445" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3446", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3447" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3447_3448" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3447" to i8*
  %"$_literal_cost_call_3449" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_3447_3448")
  %"$gasadd_3450" = add i64 %"$_literal_cost_call_3449", 0
  %"$gasadd_3451" = add i64 %"$gasadd_3450", 1
  %"$gasrem_3452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3453" = icmp ugt i64 %"$gasadd_3451", %"$gasrem_3452"
  br i1 %"$gascmp_3453", label %"$out_of_gas_3454", label %"$have_gas_3455"

"$out_of_gas_3454":                               ; preds = %"$have_gas_3431"
  call void @_out_of_gas()
  br label %"$have_gas_3455"

"$have_gas_3455":                                 ; preds = %"$out_of_gas_3454", %"$have_gas_3431"
  %"$consume_3456" = sub i64 %"$gasrem_3452", %"$gasadd_3451"
  store i64 %"$consume_3456", i64* @_gasrem, align 8
  %"$gasrem_3457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3458" = icmp ugt i64 1, %"$gasrem_3457"
  br i1 %"$gascmp_3458", label %"$out_of_gas_3459", label %"$have_gas_3460"

"$out_of_gas_3459":                               ; preds = %"$have_gas_3455"
  call void @_out_of_gas()
  br label %"$have_gas_3460"

"$have_gas_3460":                                 ; preds = %"$out_of_gas_3459", %"$have_gas_3455"
  %"$consume_3461" = sub i64 %"$gasrem_3457", 1
  store i64 %"$consume_3461", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_3462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3463" = icmp ugt i64 1, %"$gasrem_3462"
  br i1 %"$gascmp_3463", label %"$out_of_gas_3464", label %"$have_gas_3465"

"$out_of_gas_3464":                               ; preds = %"$have_gas_3460"
  call void @_out_of_gas()
  br label %"$have_gas_3465"

"$have_gas_3465":                                 ; preds = %"$out_of_gas_3464", %"$have_gas_3460"
  %"$consume_3466" = sub i64 %"$gasrem_3462", 1
  store i64 %"$consume_3466", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_72" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_3467" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_3468" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3467", 0
  %"$ud-registry.getIsOAO_envptr_3469" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3467", 1
  %"$ud-registry.getIsOAO__sender_3470" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_3470", align 1
  %"$ud-registry.getIsOAO_call_3471" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_3468"(i8* %"$ud-registry.getIsOAO_envptr_3469", [20 x i8]* %"$ud-registry.getIsOAO__sender_3470"), !dbg !360
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_3471", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_72", align 8, !dbg !360
  %"$ud-registry.getIsOAO_73" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_72_3472" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_72", align 8
  %"$$ud-registry.getIsOAO_72_fptr_3473" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_72_3472", 0
  %"$$ud-registry.getIsOAO_72_envptr_3474" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_72_3472", 1
  %"$$ud-registry.getIsOAO_72_recordOwner_3475" = alloca [20 x i8], align 1
  %"$recordOwner_3476" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3476", [20 x i8]* %"$$ud-registry.getIsOAO_72_recordOwner_3475", align 1
  %"$$ud-registry.getIsOAO_72_call_3477" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_72_fptr_3473"(i8* %"$$ud-registry.getIsOAO_72_envptr_3474", [20 x i8]* %"$$ud-registry.getIsOAO_72_recordOwner_3475"), !dbg !360
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_72_call_3477", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_73", align 8, !dbg !360
  %"$ud-registry.getIsOAO_74" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_73_3478" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_73", align 8
  %"$$ud-registry.getIsOAO_73_fptr_3479" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_73_3478", 0
  %"$$ud-registry.getIsOAO_73_envptr_3480" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_73_3478", 1
  %"$maybeApproved_3481" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_73_call_3482" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_73_fptr_3479"(i8* %"$$ud-registry.getIsOAO_73_envptr_3480", %TName_Option_ByStr20* %"$maybeApproved_3481"), !dbg !360
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_73_call_3482", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_74", align 8, !dbg !360
  %"$ud-registry.getIsOAO_75" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_74_3483" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_74", align 8
  %"$$ud-registry.getIsOAO_74_fptr_3484" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_74_3483", 0
  %"$$ud-registry.getIsOAO_74_envptr_3485" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_74_3483", 1
  %"$maybeOperators_3486" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_74_call_3487" = call %TName_Bool* %"$$ud-registry.getIsOAO_74_fptr_3484"(i8* %"$$ud-registry.getIsOAO_74_envptr_3485", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3486"), !dbg !360
  store %TName_Bool* %"$$ud-registry.getIsOAO_74_call_3487", %TName_Bool** %"$ud-registry.getIsOAO_75", align 8, !dbg !360
  %"$$ud-registry.getIsOAO_75_3488" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_75", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_75_3488", %TName_Bool** %isSenderOAO, align 8, !dbg !360
  %"$gasrem_3489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3490" = icmp ugt i64 2, %"$gasrem_3489"
  br i1 %"$gascmp_3490", label %"$out_of_gas_3491", label %"$have_gas_3492"

"$out_of_gas_3491":                               ; preds = %"$have_gas_3465"
  call void @_out_of_gas()
  br label %"$have_gas_3492"

"$have_gas_3492":                                 ; preds = %"$out_of_gas_3491", %"$have_gas_3465"
  %"$consume_3493" = sub i64 %"$gasrem_3489", 2
  store i64 %"$consume_3493", i64* @_gasrem, align 8
  %"$isSenderOAO_3495" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_3496" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_3495", i32 0, i32 0
  %"$isSenderOAO_tag_3497" = load i8, i8* %"$isSenderOAO_tag_3496", align 1
  switch i8 %"$isSenderOAO_tag_3497", label %"$empty_default_3498" [
    i8 0, label %"$True_3499"
    i8 1, label %"$False_3641"
  ], !dbg !361

"$True_3499":                                     ; preds = %"$have_gas_3492"
  %"$isSenderOAO_3500" = bitcast %TName_Bool* %"$isSenderOAO_3495" to %CName_True*
  %"$gasrem_3501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3502" = icmp ugt i64 1, %"$gasrem_3501"
  br i1 %"$gascmp_3502", label %"$out_of_gas_3503", label %"$have_gas_3504"

"$out_of_gas_3503":                               ; preds = %"$True_3499"
  call void @_out_of_gas()
  br label %"$have_gas_3504"

"$have_gas_3504":                                 ; preds = %"$out_of_gas_3503", %"$True_3499"
  %"$consume_3505" = sub i64 %"$gasrem_3501", 1
  store i64 %"$consume_3505", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_3506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3507" = icmp ugt i64 1, %"$gasrem_3506"
  br i1 %"$gascmp_3507", label %"$out_of_gas_3508", label %"$have_gas_3509"

"$out_of_gas_3508":                               ; preds = %"$have_gas_3504"
  call void @_out_of_gas()
  br label %"$have_gas_3509"

"$have_gas_3509":                                 ; preds = %"$out_of_gas_3508", %"$have_gas_3504"
  %"$consume_3510" = sub i64 %"$gasrem_3506", 1
  store i64 %"$consume_3510", i64* @_gasrem, align 8
  %"$adtval_3511_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3511_salloc" = call i8* @_salloc(i8* %"$adtval_3511_load", i64 41)
  %"$adtval_3511" = bitcast i8* %"$adtval_3511_salloc" to %CName_ud-registry.Record*
  %"$adtgep_3512" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3511", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3512", align 1
  %"$adtgep_3513" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3511", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_3513", align 1
  %"$adtgep_3514" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3511", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_3514", align 1
  %"$adtptr_3515" = bitcast %CName_ud-registry.Record* %"$adtval_3511" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_3515", %TName_ud-registry.Record** %newRecord, align 8, !dbg !362
  %"$newRecord_3516" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_3516_3517" = bitcast %TName_ud-registry.Record* %"$newRecord_3516" to i8*
  %"$_literal_cost_call_3518" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_3516_3517")
  %"$gasadd_3519" = add i64 %"$_literal_cost_call_3518", 1
  %"$gasrem_3520" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3521" = icmp ugt i64 %"$gasadd_3519", %"$gasrem_3520"
  br i1 %"$gascmp_3521", label %"$out_of_gas_3522", label %"$have_gas_3523"

"$out_of_gas_3522":                               ; preds = %"$have_gas_3509"
  call void @_out_of_gas()
  br label %"$have_gas_3523"

"$have_gas_3523":                                 ; preds = %"$out_of_gas_3522", %"$have_gas_3509"
  %"$consume_3524" = sub i64 %"$gasrem_3520", %"$gasadd_3519"
  store i64 %"$consume_3524", i64* @_gasrem, align 8
  %"$indices_buf_3525_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3525_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3525_salloc_load", i64 32)
  %"$indices_buf_3525_salloc" = bitcast i8* %"$indices_buf_3525_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3525" = bitcast [32 x i8]* %"$indices_buf_3525_salloc" to i8*
  %"$indices_gep_3526" = getelementptr i8, i8* %"$indices_buf_3525", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_3526" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_3527" = load i8*, i8** @_execptr, align 8
  %"$newRecord_3529" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_3530" = bitcast %TName_ud-registry.Record* %"$newRecord_3529" to i8*
  call void @_update_field(i8* %"$execptr_load_3527", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3528", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3525", i8* %"$update_value_3530"), !dbg !365
  %"$gasrem_3531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3532" = icmp ugt i64 1, %"$gasrem_3531"
  br i1 %"$gascmp_3532", label %"$out_of_gas_3533", label %"$have_gas_3534"

"$out_of_gas_3533":                               ; preds = %"$have_gas_3523"
  call void @_out_of_gas()
  br label %"$have_gas_3534"

"$have_gas_3534":                                 ; preds = %"$out_of_gas_3533", %"$have_gas_3523"
  %"$consume_3535" = sub i64 %"$gasrem_3531", 1
  store i64 %"$consume_3535", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3537" = icmp ugt i64 1, %"$gasrem_3536"
  br i1 %"$gascmp_3537", label %"$out_of_gas_3538", label %"$have_gas_3539"

"$out_of_gas_3538":                               ; preds = %"$have_gas_3534"
  call void @_out_of_gas()
  br label %"$have_gas_3539"

"$have_gas_3539":                                 ; preds = %"$out_of_gas_3538", %"$have_gas_3534"
  %"$consume_3540" = sub i64 %"$gasrem_3536", 1
  store i64 %"$consume_3540", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_67" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_3541" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_3542" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3541", 0
  %"$ud-registry.eConfigured_envptr_3543" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3541", 1
  %"$ud-registry.eConfigured_node_3544" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_3544", align 1
  %"$ud-registry.eConfigured_call_3545" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_3542"(i8* %"$ud-registry.eConfigured_envptr_3543", [32 x i8]* %"$ud-registry.eConfigured_node_3544"), !dbg !366
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_3545", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_67", align 8, !dbg !366
  %"$ud-registry.eConfigured_68" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_67_3546" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_67", align 8
  %"$$ud-registry.eConfigured_67_fptr_3547" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_67_3546", 0
  %"$$ud-registry.eConfigured_67_envptr_3548" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_67_3546", 1
  %"$$ud-registry.eConfigured_67_owner_3549" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_67_owner_3549", align 1
  %"$$ud-registry.eConfigured_67_call_3550" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_67_fptr_3547"(i8* %"$$ud-registry.eConfigured_67_envptr_3548", [20 x i8]* %"$$ud-registry.eConfigured_67_owner_3549"), !dbg !366
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_67_call_3550", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_68", align 8, !dbg !366
  %"$ud-registry.eConfigured_69" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_68_3551" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_68", align 8
  %"$$ud-registry.eConfigured_68_fptr_3552" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_68_3551", 0
  %"$$ud-registry.eConfigured_68_envptr_3553" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_68_3551", 1
  %"$$ud-registry.eConfigured_68_resolver_3554" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_68_resolver_3554", align 1
  %"$$ud-registry.eConfigured_68_call_3555" = call i8* %"$$ud-registry.eConfigured_68_fptr_3552"(i8* %"$$ud-registry.eConfigured_68_envptr_3553", [20 x i8]* %"$$ud-registry.eConfigured_68_resolver_3554"), !dbg !366
  store i8* %"$$ud-registry.eConfigured_68_call_3555", i8** %"$ud-registry.eConfigured_69", align 8, !dbg !366
  %"$$ud-registry.eConfigured_69_3556" = load i8*, i8** %"$ud-registry.eConfigured_69", align 8
  store i8* %"$$ud-registry.eConfigured_69_3556", i8** %e, align 8, !dbg !366
  %"$e_3557" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3559" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3557")
  %"$gasrem_3560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3561" = icmp ugt i64 %"$_literal_cost_call_3559", %"$gasrem_3560"
  br i1 %"$gascmp_3561", label %"$out_of_gas_3562", label %"$have_gas_3563"

"$out_of_gas_3562":                               ; preds = %"$have_gas_3539"
  call void @_out_of_gas()
  br label %"$have_gas_3563"

"$have_gas_3563":                                 ; preds = %"$out_of_gas_3562", %"$have_gas_3539"
  %"$consume_3564" = sub i64 %"$gasrem_3560", %"$_literal_cost_call_3559"
  store i64 %"$consume_3564", i64* @_gasrem, align 8
  %"$execptr_load_3565" = load i8*, i8** @_execptr, align 8
  %"$e_3566" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3565", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3566"), !dbg !367
  %"$gasrem_3567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3568" = icmp ugt i64 1, %"$gasrem_3567"
  br i1 %"$gascmp_3568", label %"$out_of_gas_3569", label %"$have_gas_3570"

"$out_of_gas_3569":                               ; preds = %"$have_gas_3563"
  call void @_out_of_gas()
  br label %"$have_gas_3570"

"$have_gas_3570":                                 ; preds = %"$out_of_gas_3569", %"$have_gas_3563"
  %"$consume_3571" = sub i64 %"$gasrem_3567", 1
  store i64 %"$consume_3571", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_3572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3573" = icmp ugt i64 1, %"$gasrem_3572"
  br i1 %"$gascmp_3573", label %"$out_of_gas_3574", label %"$have_gas_3575"

"$out_of_gas_3574":                               ; preds = %"$have_gas_3570"
  call void @_out_of_gas()
  br label %"$have_gas_3575"

"$have_gas_3575":                                 ; preds = %"$out_of_gas_3574", %"$have_gas_3570"
  %"$consume_3576" = sub i64 %"$gasrem_3572", 1
  store i64 %"$consume_3576", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_3577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3578" = icmp ugt i64 1, %"$gasrem_3577"
  br i1 %"$gascmp_3578", label %"$out_of_gas_3579", label %"$have_gas_3580"

"$out_of_gas_3579":                               ; preds = %"$have_gas_3575"
  call void @_out_of_gas()
  br label %"$have_gas_3580"

"$have_gas_3580":                                 ; preds = %"$out_of_gas_3579", %"$have_gas_3575"
  %"$consume_3581" = sub i64 %"$gasrem_3577", 1
  store i64 %"$consume_3581", i64* @_gasrem, align 8
  %"$msgobj_3582_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_3582_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_3582_salloc_load", i64 225)
  %"$msgobj_3582_salloc" = bitcast i8* %"$msgobj_3582_salloc_salloc" to [225 x i8]*
  %"$msgobj_3582" = bitcast [225 x i8]* %"$msgobj_3582_salloc" to i8*
  store i8 5, i8* %"$msgobj_3582", align 1
  %"$msgobj_fname_3584" = getelementptr i8, i8* %"$msgobj_3582", i32 1
  %"$msgobj_fname_3585" = bitcast i8* %"$msgobj_fname_3584" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3583", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3585", align 8
  %"$msgobj_td_3586" = getelementptr i8, i8* %"$msgobj_3582", i32 17
  %"$msgobj_td_3587" = bitcast i8* %"$msgobj_td_3586" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_3587", align 8
  %"$msgobj_v_3589" = getelementptr i8, i8* %"$msgobj_3582", i32 25
  %"$msgobj_v_3590" = bitcast i8* %"$msgobj_v_3589" to %String*
  store %String { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$stringlit_3588", i32 0, i32 0), i32 18 }, %String* %"$msgobj_v_3590", align 8
  %"$msgobj_fname_3592" = getelementptr i8, i8* %"$msgobj_3582", i32 41
  %"$msgobj_fname_3593" = bitcast i8* %"$msgobj_fname_3592" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3591", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3593", align 8
  %"$msgobj_td_3594" = getelementptr i8, i8* %"$msgobj_3582", i32 57
  %"$msgobj_td_3595" = bitcast i8* %"$msgobj_td_3594" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_3595", align 8
  %"$msgobj_v_3596" = getelementptr i8, i8* %"$msgobj_3582", i32 65
  %"$msgobj_v_3597" = bitcast i8* %"$msgobj_v_3596" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_3597", align 1
  %"$msgobj_fname_3599" = getelementptr i8, i8* %"$msgobj_3582", i32 97
  %"$msgobj_fname_3600" = bitcast i8* %"$msgobj_fname_3599" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3598", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_3600", align 8
  %"$msgobj_td_3601" = getelementptr i8, i8* %"$msgobj_3582", i32 113
  %"$msgobj_td_3602" = bitcast i8* %"$msgobj_td_3601" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_3602", align 8
  %"$msgobj_v_3603" = getelementptr i8, i8* %"$msgobj_3582", i32 121
  %"$msgobj_v_3604" = bitcast i8* %"$msgobj_v_3603" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_3604", align 1
  %"$msgobj_fname_3606" = getelementptr i8, i8* %"$msgobj_3582", i32 141
  %"$msgobj_fname_3607" = bitcast i8* %"$msgobj_fname_3606" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_3605", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_3607", align 8
  %"$msgobj_td_3608" = getelementptr i8, i8* %"$msgobj_3582", i32 157
  %"$msgobj_td_3609" = bitcast i8* %"$msgobj_td_3608" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_3609", align 8
  %"$msgobj_v_3610" = getelementptr i8, i8* %"$msgobj_3582", i32 165
  %"$msgobj_v_3611" = bitcast i8* %"$msgobj_v_3610" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_3611", align 8
  %"$msgobj_fname_3613" = getelementptr i8, i8* %"$msgobj_3582", i32 181
  %"$msgobj_fname_3614" = bitcast i8* %"$msgobj_fname_3613" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_3612", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_3614", align 8
  %"$msgobj_td_3615" = getelementptr i8, i8* %"$msgobj_3582", i32 197
  %"$msgobj_td_3616" = bitcast i8* %"$msgobj_td_3615" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_3616", align 8
  %"$msgobj_v_3617" = getelementptr i8, i8* %"$msgobj_3582", i32 205
  %"$msgobj_v_3618" = bitcast i8* %"$msgobj_v_3617" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_3618", align 1
  store i8* %"$msgobj_3582", i8** %m, align 8, !dbg !368
  %"$gasrem_3620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3621" = icmp ugt i64 1, %"$gasrem_3620"
  br i1 %"$gascmp_3621", label %"$out_of_gas_3622", label %"$have_gas_3623"

"$out_of_gas_3622":                               ; preds = %"$have_gas_3580"
  call void @_out_of_gas()
  br label %"$have_gas_3623"

"$have_gas_3623":                                 ; preds = %"$out_of_gas_3622", %"$have_gas_3580"
  %"$consume_3624" = sub i64 %"$gasrem_3620", 1
  store i64 %"$consume_3624", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_66" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_3625" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_3626" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3625", 0
  %"$ud-registry.oneMsg_envptr_3627" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3625", 1
  %"$m_3628" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_3629" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_3626"(i8* %"$ud-registry.oneMsg_envptr_3627", i8* %"$m_3628"), !dbg !369
  store %TName_List_Message* %"$ud-registry.oneMsg_call_3629", %TName_List_Message** %"$ud-registry.oneMsg_66", align 8, !dbg !369
  %"$$ud-registry.oneMsg_66_3630" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_66", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_66_3630", %TName_List_Message** %msgs, align 8, !dbg !369
  %"$msgs_3631" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_3631_3632" = bitcast %TName_List_Message* %"$msgs_3631" to i8*
  %"$_literal_cost_call_3633" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_3631_3632")
  %"$gasrem_3634" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3635" = icmp ugt i64 %"$_literal_cost_call_3633", %"$gasrem_3634"
  br i1 %"$gascmp_3635", label %"$out_of_gas_3636", label %"$have_gas_3637"

"$out_of_gas_3636":                               ; preds = %"$have_gas_3623"
  call void @_out_of_gas()
  br label %"$have_gas_3637"

"$have_gas_3637":                                 ; preds = %"$out_of_gas_3636", %"$have_gas_3623"
  %"$consume_3638" = sub i64 %"$gasrem_3634", %"$_literal_cost_call_3633"
  store i64 %"$consume_3638", i64* @_gasrem, align 8
  %"$execptr_load_3639" = load i8*, i8** @_execptr, align 8
  %"$msgs_3640" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_3639", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_3640"), !dbg !370
  br label %"$matchsucc_3494"

"$False_3641":                                    ; preds = %"$have_gas_3492"
  %"$isSenderOAO_3642" = bitcast %TName_Bool* %"$isSenderOAO_3495" to %CName_False*
  %"$gasrem_3643" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3644" = icmp ugt i64 1, %"$gasrem_3643"
  br i1 %"$gascmp_3644", label %"$out_of_gas_3645", label %"$have_gas_3646"

"$out_of_gas_3645":                               ; preds = %"$False_3641"
  call void @_out_of_gas()
  br label %"$have_gas_3646"

"$have_gas_3646":                                 ; preds = %"$out_of_gas_3645", %"$False_3641"
  %"$consume_3647" = sub i64 %"$gasrem_3643", 1
  store i64 %"$consume_3647", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_3648" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3649" = icmp ugt i64 1, %"$gasrem_3648"
  br i1 %"$gascmp_3649", label %"$out_of_gas_3650", label %"$have_gas_3651"

"$out_of_gas_3650":                               ; preds = %"$have_gas_3646"
  call void @_out_of_gas()
  br label %"$have_gas_3651"

"$have_gas_3651":                                 ; preds = %"$out_of_gas_3650", %"$have_gas_3646"
  %"$consume_3652" = sub i64 %"$gasrem_3648", 1
  store i64 %"$consume_3652", i64* @_gasrem, align 8
  %m5 = alloca %String, align 8
  %"$gasrem_3653" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3654" = icmp ugt i64 1, %"$gasrem_3653"
  br i1 %"$gascmp_3654", label %"$out_of_gas_3655", label %"$have_gas_3656"

"$out_of_gas_3655":                               ; preds = %"$have_gas_3651"
  call void @_out_of_gas()
  br label %"$have_gas_3656"

"$have_gas_3656":                                 ; preds = %"$out_of_gas_3655", %"$have_gas_3651"
  %"$consume_3657" = sub i64 %"$gasrem_3653", 1
  store i64 %"$consume_3657", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_3658", i32 0, i32 0), i32 43 }, %String* %m5, align 8, !dbg !371
  %"$gasrem_3659" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3660" = icmp ugt i64 1, %"$gasrem_3659"
  br i1 %"$gascmp_3660", label %"$out_of_gas_3661", label %"$have_gas_3662"

"$out_of_gas_3661":                               ; preds = %"$have_gas_3656"
  call void @_out_of_gas()
  br label %"$have_gas_3662"

"$have_gas_3662":                                 ; preds = %"$out_of_gas_3661", %"$have_gas_3656"
  %"$consume_3663" = sub i64 %"$gasrem_3659", 1
  store i64 %"$consume_3663", i64* @_gasrem, align 8
  %"$ud-registry.eError_71" = alloca i8*, align 8
  %"$ud-registry.eError_3664" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3665" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3664", 0
  %"$ud-registry.eError_envptr_3666" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3664", 1
  %"$m_3667" = load %String, %String* %m5, align 8
  %"$ud-registry.eError_call_3668" = call i8* %"$ud-registry.eError_fptr_3665"(i8* %"$ud-registry.eError_envptr_3666", %String %"$m_3667"), !dbg !373
  store i8* %"$ud-registry.eError_call_3668", i8** %"$ud-registry.eError_71", align 8, !dbg !373
  %"$$ud-registry.eError_71_3669" = load i8*, i8** %"$ud-registry.eError_71", align 8
  store i8* %"$$ud-registry.eError_71_3669", i8** %e4, align 8, !dbg !373
  %"$e_3670" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_3672" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3670")
  %"$gasrem_3673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3674" = icmp ugt i64 %"$_literal_cost_call_3672", %"$gasrem_3673"
  br i1 %"$gascmp_3674", label %"$out_of_gas_3675", label %"$have_gas_3676"

"$out_of_gas_3675":                               ; preds = %"$have_gas_3662"
  call void @_out_of_gas()
  br label %"$have_gas_3676"

"$have_gas_3676":                                 ; preds = %"$out_of_gas_3675", %"$have_gas_3662"
  %"$consume_3677" = sub i64 %"$gasrem_3673", %"$_literal_cost_call_3672"
  store i64 %"$consume_3677", i64* @_gasrem, align 8
  %"$execptr_load_3678" = load i8*, i8** @_execptr, align 8
  %"$e_3679" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_3678", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3679"), !dbg !374
  %"$gasrem_3680" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3681" = icmp ugt i64 1, %"$gasrem_3680"
  br i1 %"$gascmp_3681", label %"$out_of_gas_3682", label %"$have_gas_3683"

"$out_of_gas_3682":                               ; preds = %"$have_gas_3676"
  call void @_out_of_gas()
  br label %"$have_gas_3683"

"$have_gas_3683":                                 ; preds = %"$out_of_gas_3682", %"$have_gas_3676"
  %"$consume_3684" = sub i64 %"$gasrem_3680", 1
  store i64 %"$consume_3684", i64* @_gasrem, align 8
  %msgs6 = alloca %TName_List_Message*, align 8
  %"$gasrem_3685" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3686" = icmp ugt i64 1, %"$gasrem_3685"
  br i1 %"$gascmp_3686", label %"$out_of_gas_3687", label %"$have_gas_3688"

"$out_of_gas_3687":                               ; preds = %"$have_gas_3683"
  call void @_out_of_gas()
  br label %"$have_gas_3688"

"$have_gas_3688":                                 ; preds = %"$out_of_gas_3687", %"$have_gas_3683"
  %"$consume_3689" = sub i64 %"$gasrem_3685", 1
  store i64 %"$consume_3689", i64* @_gasrem, align 8
  %m7 = alloca i8*, align 8
  %"$gasrem_3690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3691" = icmp ugt i64 1, %"$gasrem_3690"
  br i1 %"$gascmp_3691", label %"$out_of_gas_3692", label %"$have_gas_3693"

"$out_of_gas_3692":                               ; preds = %"$have_gas_3688"
  call void @_out_of_gas()
  br label %"$have_gas_3693"

"$have_gas_3693":                                 ; preds = %"$out_of_gas_3692", %"$have_gas_3688"
  %"$consume_3694" = sub i64 %"$gasrem_3690", 1
  store i64 %"$consume_3694", i64* @_gasrem, align 8
  %"$msgobj_3695_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_3695_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_3695_salloc_load", i64 225)
  %"$msgobj_3695_salloc" = bitcast i8* %"$msgobj_3695_salloc_salloc" to [225 x i8]*
  %"$msgobj_3695" = bitcast [225 x i8]* %"$msgobj_3695_salloc" to i8*
  store i8 5, i8* %"$msgobj_3695", align 1
  %"$msgobj_fname_3697" = getelementptr i8, i8* %"$msgobj_3695", i32 1
  %"$msgobj_fname_3698" = bitcast i8* %"$msgobj_fname_3697" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3696", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3698", align 8
  %"$msgobj_td_3699" = getelementptr i8, i8* %"$msgobj_3695", i32 17
  %"$msgobj_td_3700" = bitcast i8* %"$msgobj_td_3699" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_3700", align 8
  %"$msgobj_v_3702" = getelementptr i8, i8* %"$msgobj_3695", i32 25
  %"$msgobj_v_3703" = bitcast i8* %"$msgobj_v_3702" to %String*
  store %String { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$stringlit_3701", i32 0, i32 0), i32 18 }, %String* %"$msgobj_v_3703", align 8
  %"$msgobj_fname_3705" = getelementptr i8, i8* %"$msgobj_3695", i32 41
  %"$msgobj_fname_3706" = bitcast i8* %"$msgobj_fname_3705" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3704", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3706", align 8
  %"$msgobj_td_3707" = getelementptr i8, i8* %"$msgobj_3695", i32 57
  %"$msgobj_td_3708" = bitcast i8* %"$msgobj_td_3707" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_3708", align 8
  %"$msgobj_v_3709" = getelementptr i8, i8* %"$msgobj_3695", i32 65
  %"$msgobj_v_3710" = bitcast i8* %"$msgobj_v_3709" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_3710", align 1
  %"$msgobj_fname_3712" = getelementptr i8, i8* %"$msgobj_3695", i32 97
  %"$msgobj_fname_3713" = bitcast i8* %"$msgobj_fname_3712" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3711", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_3713", align 8
  %"$msgobj_td_3714" = getelementptr i8, i8* %"$msgobj_3695", i32 113
  %"$msgobj_td_3715" = bitcast i8* %"$msgobj_td_3714" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_3715", align 8
  %"$recordOwner_3716" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$msgobj_v_3717" = getelementptr i8, i8* %"$msgobj_3695", i32 121
  %"$msgobj_v_3718" = bitcast i8* %"$msgobj_v_3717" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3716", [20 x i8]* %"$msgobj_v_3718", align 1
  %"$msgobj_fname_3720" = getelementptr i8, i8* %"$msgobj_3695", i32 141
  %"$msgobj_fname_3721" = bitcast i8* %"$msgobj_fname_3720" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_3719", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_3721", align 8
  %"$msgobj_td_3722" = getelementptr i8, i8* %"$msgobj_3695", i32 157
  %"$msgobj_td_3723" = bitcast i8* %"$msgobj_td_3722" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_3723", align 8
  %"$msgobj_v_3724" = getelementptr i8, i8* %"$msgobj_3695", i32 165
  %"$msgobj_v_3725" = bitcast i8* %"$msgobj_v_3724" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_3725", align 8
  %"$msgobj_fname_3727" = getelementptr i8, i8* %"$msgobj_3695", i32 181
  %"$msgobj_fname_3728" = bitcast i8* %"$msgobj_fname_3727" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_3726", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_3728", align 8
  %"$msgobj_td_3729" = getelementptr i8, i8* %"$msgobj_3695", i32 197
  %"$msgobj_td_3730" = bitcast i8* %"$msgobj_td_3729" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_3730", align 8
  %"$msgobj_v_3731" = getelementptr i8, i8* %"$msgobj_3695", i32 205
  %"$msgobj_v_3732" = bitcast i8* %"$msgobj_v_3731" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_3732", align 1
  store i8* %"$msgobj_3695", i8** %m7, align 8, !dbg !375
  %"$gasrem_3734" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3735" = icmp ugt i64 1, %"$gasrem_3734"
  br i1 %"$gascmp_3735", label %"$out_of_gas_3736", label %"$have_gas_3737"

"$out_of_gas_3736":                               ; preds = %"$have_gas_3693"
  call void @_out_of_gas()
  br label %"$have_gas_3737"

"$have_gas_3737":                                 ; preds = %"$out_of_gas_3736", %"$have_gas_3693"
  %"$consume_3738" = sub i64 %"$gasrem_3734", 1
  store i64 %"$consume_3738", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_70" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_3739" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_3740" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3739", 0
  %"$ud-registry.oneMsg_envptr_3741" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3739", 1
  %"$m_3742" = load i8*, i8** %m7, align 8
  %"$ud-registry.oneMsg_call_3743" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_3740"(i8* %"$ud-registry.oneMsg_envptr_3741", i8* %"$m_3742"), !dbg !376
  store %TName_List_Message* %"$ud-registry.oneMsg_call_3743", %TName_List_Message** %"$ud-registry.oneMsg_70", align 8, !dbg !376
  %"$$ud-registry.oneMsg_70_3744" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_70", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_70_3744", %TName_List_Message** %msgs6, align 8, !dbg !376
  %"$msgs_3745" = load %TName_List_Message*, %TName_List_Message** %msgs6, align 8
  %"$$msgs_3745_3746" = bitcast %TName_List_Message* %"$msgs_3745" to i8*
  %"$_literal_cost_call_3747" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_3745_3746")
  %"$gasrem_3748" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3749" = icmp ugt i64 %"$_literal_cost_call_3747", %"$gasrem_3748"
  br i1 %"$gascmp_3749", label %"$out_of_gas_3750", label %"$have_gas_3751"

"$out_of_gas_3750":                               ; preds = %"$have_gas_3737"
  call void @_out_of_gas()
  br label %"$have_gas_3751"

"$have_gas_3751":                                 ; preds = %"$out_of_gas_3750", %"$have_gas_3737"
  %"$consume_3752" = sub i64 %"$gasrem_3748", %"$_literal_cost_call_3747"
  store i64 %"$consume_3752", i64* @_gasrem, align 8
  %"$execptr_load_3753" = load i8*, i8** @_execptr, align 8
  %"$msgs_3754" = load %TName_List_Message*, %TName_List_Message** %msgs6, align 8
  call void @_send(i8* %"$execptr_load_3753", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_3754"), !dbg !377
  br label %"$matchsucc_3494"

"$empty_default_3498":                            ; preds = %"$have_gas_3492"
  br label %"$matchsucc_3494"

"$matchsucc_3494":                                ; preds = %"$have_gas_3751", %"$have_gas_3637", %"$empty_default_3498"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @configureNode(i8* %0) !dbg !378 {
entry:
  %"$_amount_3756" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3757" = bitcast i8* %"$_amount_3756" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3757", align 8
  %"$_origin_3758" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3759" = bitcast i8* %"$_origin_3758" to [20 x i8]*
  %"$_sender_3760" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3761" = bitcast i8* %"$_sender_3760" to [20 x i8]*
  %"$node_3762" = getelementptr i8, i8* %0, i32 56
  %"$node_3763" = bitcast i8* %"$node_3762" to [32 x i8]*
  %"$owner_3764" = getelementptr i8, i8* %0, i32 88
  %"$owner_3765" = bitcast i8* %"$owner_3764" to [20 x i8]*
  %"$resolver_3766" = getelementptr i8, i8* %0, i32 108
  %"$resolver_3767" = bitcast i8* %"$resolver_3766" to [20 x i8]*
  call void @"$configureNode_3385"(%Uint128 %_amount, [20 x i8]* %"$_origin_3759", [20 x i8]* %"$_sender_3761", [32 x i8]* %"$node_3763", [20 x i8]* %"$owner_3765", [20 x i8]* %"$resolver_3767"), !dbg !379
  ret void
}

define internal void @"$configureResolver_3768"(%Uint128 %_amount, [20 x i8]* %"$_origin_3769", [20 x i8]* %"$_sender_3770", [32 x i8]* %"$node_3771", [20 x i8]* %"$resolver_3772") !dbg !380 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3769", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3770", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_3771", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_3772", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_3773_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3773_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3773_salloc_load", i64 32)
  %"$indices_buf_3773_salloc" = bitcast i8* %"$indices_buf_3773_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3773" = bitcast [32 x i8]* %"$indices_buf_3773_salloc" to i8*
  %"$indices_gep_3774" = getelementptr i8, i8* %"$indices_buf_3773", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3774" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_3776" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_3777" = call i8* @_fetch_field(i8* %"$execptr_load_3776", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3775", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3773", i32 1), !dbg !381
  %"$maybeRecord_3778" = bitcast i8* %"$maybeRecord_call_3777" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3778", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_3779" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_3779_3780" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3779" to i8*
  %"$_literal_cost_call_3781" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_3779_3780")
  %"$gasadd_3782" = add i64 %"$_literal_cost_call_3781", 0
  %"$gasadd_3783" = add i64 %"$gasadd_3782", 1
  %"$gasrem_3784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3785" = icmp ugt i64 %"$gasadd_3783", %"$gasrem_3784"
  br i1 %"$gascmp_3785", label %"$out_of_gas_3786", label %"$have_gas_3787"

"$out_of_gas_3786":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3787"

"$have_gas_3787":                                 ; preds = %"$out_of_gas_3786", %entry
  %"$consume_3788" = sub i64 %"$gasrem_3784", %"$gasadd_3783"
  store i64 %"$consume_3788", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_3789_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3789_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3789_salloc_load", i64 32)
  %"$indices_buf_3789_salloc" = bitcast i8* %"$indices_buf_3789_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3789" = bitcast [32 x i8]* %"$indices_buf_3789_salloc" to i8*
  %"$indices_gep_3790" = getelementptr i8, i8* %"$indices_buf_3789", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3790" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_3792" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_3793" = call i8* @_fetch_field(i8* %"$execptr_load_3792", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3791", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_3789", i32 1), !dbg !382
  %"$maybeApproved_3794" = bitcast i8* %"$maybeApproved_call_3793" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3794", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_3795" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_3795_3796" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3795" to i8*
  %"$_literal_cost_call_3797" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_3795_3796")
  %"$gasadd_3798" = add i64 %"$_literal_cost_call_3797", 0
  %"$gasadd_3799" = add i64 %"$gasadd_3798", 1
  %"$gasrem_3800" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3801" = icmp ugt i64 %"$gasadd_3799", %"$gasrem_3800"
  br i1 %"$gascmp_3801", label %"$out_of_gas_3802", label %"$have_gas_3803"

"$out_of_gas_3802":                               ; preds = %"$have_gas_3787"
  call void @_out_of_gas()
  br label %"$have_gas_3803"

"$have_gas_3803":                                 ; preds = %"$out_of_gas_3802", %"$have_gas_3787"
  %"$consume_3804" = sub i64 %"$gasrem_3800", %"$gasadd_3799"
  store i64 %"$consume_3804", i64* @_gasrem, align 8
  %"$gasrem_3805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3806" = icmp ugt i64 1, %"$gasrem_3805"
  br i1 %"$gascmp_3806", label %"$out_of_gas_3807", label %"$have_gas_3808"

"$out_of_gas_3807":                               ; preds = %"$have_gas_3803"
  call void @_out_of_gas()
  br label %"$have_gas_3808"

"$have_gas_3808":                                 ; preds = %"$out_of_gas_3807", %"$have_gas_3803"
  %"$consume_3809" = sub i64 %"$gasrem_3805", 1
  store i64 %"$consume_3809", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_3810" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3811" = icmp ugt i64 1, %"$gasrem_3810"
  br i1 %"$gascmp_3811", label %"$out_of_gas_3812", label %"$have_gas_3813"

"$out_of_gas_3812":                               ; preds = %"$have_gas_3808"
  call void @_out_of_gas()
  br label %"$have_gas_3813"

"$have_gas_3813":                                 ; preds = %"$out_of_gas_3812", %"$have_gas_3808"
  %"$consume_3814" = sub i64 %"$gasrem_3810", 1
  store i64 %"$consume_3814", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_85" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_3815" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_3816" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3815", 0
  %"$ud-registry.recordMemberOwner_envptr_3817" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3815", 1
  %"$maybeRecord_3818" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_3819" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_3816"(i8* %"$ud-registry.recordMemberOwner_envptr_3817", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3819", %TName_Option_ud-registry.Record* %"$maybeRecord_3818"), !dbg !383
  %"$ud-registry.recordMemberOwner_ret_3820" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3819", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3820", [20 x i8]* %"$ud-registry.recordMemberOwner_85", align 1, !dbg !383
  %"$$ud-registry.recordMemberOwner_85_3821" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_85", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_85_3821", [20 x i8]* %recordOwner, align 1, !dbg !383
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3822_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3822_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3822_salloc_load", i64 20)
  %"$indices_buf_3822_salloc" = bitcast i8* %"$indices_buf_3822_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3822" = bitcast [20 x i8]* %"$indices_buf_3822_salloc" to i8*
  %"$recordOwner_3823" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_3824" = getelementptr i8, i8* %"$indices_buf_3822", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3824" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3823", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_3826" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3827" = call i8* @_fetch_field(i8* %"$execptr_load_3826", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3825", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_3822", i32 1), !dbg !384
  %"$maybeOperators_3828" = bitcast i8* %"$maybeOperators_call_3827" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3828", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3829" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3829_3830" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3829" to i8*
  %"$_literal_cost_call_3831" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_3829_3830")
  %"$gasadd_3832" = add i64 %"$_literal_cost_call_3831", 0
  %"$gasadd_3833" = add i64 %"$gasadd_3832", 1
  %"$gasrem_3834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3835" = icmp ugt i64 %"$gasadd_3833", %"$gasrem_3834"
  br i1 %"$gascmp_3835", label %"$out_of_gas_3836", label %"$have_gas_3837"

"$out_of_gas_3836":                               ; preds = %"$have_gas_3813"
  call void @_out_of_gas()
  br label %"$have_gas_3837"

"$have_gas_3837":                                 ; preds = %"$out_of_gas_3836", %"$have_gas_3813"
  %"$consume_3838" = sub i64 %"$gasrem_3834", %"$gasadd_3833"
  store i64 %"$consume_3838", i64* @_gasrem, align 8
  %"$gasrem_3839" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3840" = icmp ugt i64 1, %"$gasrem_3839"
  br i1 %"$gascmp_3840", label %"$out_of_gas_3841", label %"$have_gas_3842"

"$out_of_gas_3841":                               ; preds = %"$have_gas_3837"
  call void @_out_of_gas()
  br label %"$have_gas_3842"

"$have_gas_3842":                                 ; preds = %"$out_of_gas_3841", %"$have_gas_3837"
  %"$consume_3843" = sub i64 %"$gasrem_3839", 1
  store i64 %"$consume_3843", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_3844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3845" = icmp ugt i64 1, %"$gasrem_3844"
  br i1 %"$gascmp_3845", label %"$out_of_gas_3846", label %"$have_gas_3847"

"$out_of_gas_3846":                               ; preds = %"$have_gas_3842"
  call void @_out_of_gas()
  br label %"$have_gas_3847"

"$have_gas_3847":                                 ; preds = %"$out_of_gas_3846", %"$have_gas_3842"
  %"$consume_3848" = sub i64 %"$gasrem_3844", 1
  store i64 %"$consume_3848", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_81" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_3849" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_3850" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3849", 0
  %"$ud-registry.getIsOAO_envptr_3851" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_3849", 1
  %"$ud-registry.getIsOAO__sender_3852" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_3852", align 1
  %"$ud-registry.getIsOAO_call_3853" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_3850"(i8* %"$ud-registry.getIsOAO_envptr_3851", [20 x i8]* %"$ud-registry.getIsOAO__sender_3852"), !dbg !385
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_3853", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_81", align 8, !dbg !385
  %"$ud-registry.getIsOAO_82" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_81_3854" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_81", align 8
  %"$$ud-registry.getIsOAO_81_fptr_3855" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_81_3854", 0
  %"$$ud-registry.getIsOAO_81_envptr_3856" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_81_3854", 1
  %"$$ud-registry.getIsOAO_81_recordOwner_3857" = alloca [20 x i8], align 1
  %"$recordOwner_3858" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3858", [20 x i8]* %"$$ud-registry.getIsOAO_81_recordOwner_3857", align 1
  %"$$ud-registry.getIsOAO_81_call_3859" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_81_fptr_3855"(i8* %"$$ud-registry.getIsOAO_81_envptr_3856", [20 x i8]* %"$$ud-registry.getIsOAO_81_recordOwner_3857"), !dbg !385
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_81_call_3859", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_82", align 8, !dbg !385
  %"$ud-registry.getIsOAO_83" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_82_3860" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_82", align 8
  %"$$ud-registry.getIsOAO_82_fptr_3861" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_82_3860", 0
  %"$$ud-registry.getIsOAO_82_envptr_3862" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_82_3860", 1
  %"$maybeApproved_3863" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_82_call_3864" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_82_fptr_3861"(i8* %"$$ud-registry.getIsOAO_82_envptr_3862", %TName_Option_ByStr20* %"$maybeApproved_3863"), !dbg !385
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_82_call_3864", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_83", align 8, !dbg !385
  %"$ud-registry.getIsOAO_84" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_83_3865" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_83", align 8
  %"$$ud-registry.getIsOAO_83_fptr_3866" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_83_3865", 0
  %"$$ud-registry.getIsOAO_83_envptr_3867" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_83_3865", 1
  %"$maybeOperators_3868" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_83_call_3869" = call %TName_Bool* %"$$ud-registry.getIsOAO_83_fptr_3866"(i8* %"$$ud-registry.getIsOAO_83_envptr_3867", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3868"), !dbg !385
  store %TName_Bool* %"$$ud-registry.getIsOAO_83_call_3869", %TName_Bool** %"$ud-registry.getIsOAO_84", align 8, !dbg !385
  %"$$ud-registry.getIsOAO_84_3870" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_84", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_84_3870", %TName_Bool** %isSenderOAO, align 8, !dbg !385
  %"$gasrem_3871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3872" = icmp ugt i64 2, %"$gasrem_3871"
  br i1 %"$gascmp_3872", label %"$out_of_gas_3873", label %"$have_gas_3874"

"$out_of_gas_3873":                               ; preds = %"$have_gas_3847"
  call void @_out_of_gas()
  br label %"$have_gas_3874"

"$have_gas_3874":                                 ; preds = %"$out_of_gas_3873", %"$have_gas_3847"
  %"$consume_3875" = sub i64 %"$gasrem_3871", 2
  store i64 %"$consume_3875", i64* @_gasrem, align 8
  %"$isSenderOAO_3877" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_3878" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_3877", i32 0, i32 0
  %"$isSenderOAO_tag_3879" = load i8, i8* %"$isSenderOAO_tag_3878", align 1
  switch i8 %"$isSenderOAO_tag_3879", label %"$empty_default_3880" [
    i8 0, label %"$True_3881"
    i8 1, label %"$False_3951"
  ], !dbg !386

"$True_3881":                                     ; preds = %"$have_gas_3874"
  %"$isSenderOAO_3882" = bitcast %TName_Bool* %"$isSenderOAO_3877" to %CName_True*
  %"$gasrem_3883" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3884" = icmp ugt i64 1, %"$gasrem_3883"
  br i1 %"$gascmp_3884", label %"$out_of_gas_3885", label %"$have_gas_3886"

"$out_of_gas_3885":                               ; preds = %"$True_3881"
  call void @_out_of_gas()
  br label %"$have_gas_3886"

"$have_gas_3886":                                 ; preds = %"$out_of_gas_3885", %"$True_3881"
  %"$consume_3887" = sub i64 %"$gasrem_3883", 1
  store i64 %"$consume_3887", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_3888" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3889" = icmp ugt i64 1, %"$gasrem_3888"
  br i1 %"$gascmp_3889", label %"$out_of_gas_3890", label %"$have_gas_3891"

"$out_of_gas_3890":                               ; preds = %"$have_gas_3886"
  call void @_out_of_gas()
  br label %"$have_gas_3891"

"$have_gas_3891":                                 ; preds = %"$out_of_gas_3890", %"$have_gas_3886"
  %"$consume_3892" = sub i64 %"$gasrem_3888", 1
  store i64 %"$consume_3892", i64* @_gasrem, align 8
  %"$recordOwner_3893" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$adtval_3894_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3894_salloc" = call i8* @_salloc(i8* %"$adtval_3894_load", i64 41)
  %"$adtval_3894" = bitcast i8* %"$adtval_3894_salloc" to %CName_ud-registry.Record*
  %"$adtgep_3895" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3894", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3895", align 1
  %"$adtgep_3896" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3894", i32 0, i32 1
  store [20 x i8] %"$recordOwner_3893", [20 x i8]* %"$adtgep_3896", align 1
  %"$adtgep_3897" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3894", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_3897", align 1
  %"$adtptr_3898" = bitcast %CName_ud-registry.Record* %"$adtval_3894" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_3898", %TName_ud-registry.Record** %newRecord, align 8, !dbg !387
  %"$newRecord_3899" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_3899_3900" = bitcast %TName_ud-registry.Record* %"$newRecord_3899" to i8*
  %"$_literal_cost_call_3901" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_3899_3900")
  %"$gasadd_3902" = add i64 %"$_literal_cost_call_3901", 1
  %"$gasrem_3903" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3904" = icmp ugt i64 %"$gasadd_3902", %"$gasrem_3903"
  br i1 %"$gascmp_3904", label %"$out_of_gas_3905", label %"$have_gas_3906"

"$out_of_gas_3905":                               ; preds = %"$have_gas_3891"
  call void @_out_of_gas()
  br label %"$have_gas_3906"

"$have_gas_3906":                                 ; preds = %"$out_of_gas_3905", %"$have_gas_3891"
  %"$consume_3907" = sub i64 %"$gasrem_3903", %"$gasadd_3902"
  store i64 %"$consume_3907", i64* @_gasrem, align 8
  %"$indices_buf_3908_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3908_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3908_salloc_load", i64 32)
  %"$indices_buf_3908_salloc" = bitcast i8* %"$indices_buf_3908_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3908" = bitcast [32 x i8]* %"$indices_buf_3908_salloc" to i8*
  %"$indices_gep_3909" = getelementptr i8, i8* %"$indices_buf_3908", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_3909" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_3910" = load i8*, i8** @_execptr, align 8
  %"$newRecord_3912" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_3913" = bitcast %TName_ud-registry.Record* %"$newRecord_3912" to i8*
  call void @_update_field(i8* %"$execptr_load_3910", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3911", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_3908", i8* %"$update_value_3913"), !dbg !390
  %"$gasrem_3914" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3915" = icmp ugt i64 1, %"$gasrem_3914"
  br i1 %"$gascmp_3915", label %"$out_of_gas_3916", label %"$have_gas_3917"

"$out_of_gas_3916":                               ; preds = %"$have_gas_3906"
  call void @_out_of_gas()
  br label %"$have_gas_3917"

"$have_gas_3917":                                 ; preds = %"$out_of_gas_3916", %"$have_gas_3906"
  %"$consume_3918" = sub i64 %"$gasrem_3914", 1
  store i64 %"$consume_3918", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3919" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3920" = icmp ugt i64 1, %"$gasrem_3919"
  br i1 %"$gascmp_3920", label %"$out_of_gas_3921", label %"$have_gas_3922"

"$out_of_gas_3921":                               ; preds = %"$have_gas_3917"
  call void @_out_of_gas()
  br label %"$have_gas_3922"

"$have_gas_3922":                                 ; preds = %"$out_of_gas_3921", %"$have_gas_3917"
  %"$consume_3923" = sub i64 %"$gasrem_3919", 1
  store i64 %"$consume_3923", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_77" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_3924" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_3925" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3924", 0
  %"$ud-registry.eConfigured_envptr_3926" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_3924", 1
  %"$ud-registry.eConfigured_node_3927" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_3927", align 1
  %"$ud-registry.eConfigured_call_3928" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_3925"(i8* %"$ud-registry.eConfigured_envptr_3926", [32 x i8]* %"$ud-registry.eConfigured_node_3927"), !dbg !391
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_3928", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_77", align 8, !dbg !391
  %"$ud-registry.eConfigured_78" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_77_3929" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_77", align 8
  %"$$ud-registry.eConfigured_77_fptr_3930" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_77_3929", 0
  %"$$ud-registry.eConfigured_77_envptr_3931" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_77_3929", 1
  %"$$ud-registry.eConfigured_77_recordOwner_3932" = alloca [20 x i8], align 1
  %"$recordOwner_3933" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3933", [20 x i8]* %"$$ud-registry.eConfigured_77_recordOwner_3932", align 1
  %"$$ud-registry.eConfigured_77_call_3934" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_77_fptr_3930"(i8* %"$$ud-registry.eConfigured_77_envptr_3931", [20 x i8]* %"$$ud-registry.eConfigured_77_recordOwner_3932"), !dbg !391
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_77_call_3934", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_78", align 8, !dbg !391
  %"$ud-registry.eConfigured_79" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_78_3935" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_78", align 8
  %"$$ud-registry.eConfigured_78_fptr_3936" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_78_3935", 0
  %"$$ud-registry.eConfigured_78_envptr_3937" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_78_3935", 1
  %"$$ud-registry.eConfigured_78_resolver_3938" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_78_resolver_3938", align 1
  %"$$ud-registry.eConfigured_78_call_3939" = call i8* %"$$ud-registry.eConfigured_78_fptr_3936"(i8* %"$$ud-registry.eConfigured_78_envptr_3937", [20 x i8]* %"$$ud-registry.eConfigured_78_resolver_3938"), !dbg !391
  store i8* %"$$ud-registry.eConfigured_78_call_3939", i8** %"$ud-registry.eConfigured_79", align 8, !dbg !391
  %"$$ud-registry.eConfigured_79_3940" = load i8*, i8** %"$ud-registry.eConfigured_79", align 8
  store i8* %"$$ud-registry.eConfigured_79_3940", i8** %e, align 8, !dbg !391
  %"$e_3941" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3943" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3941")
  %"$gasrem_3944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3945" = icmp ugt i64 %"$_literal_cost_call_3943", %"$gasrem_3944"
  br i1 %"$gascmp_3945", label %"$out_of_gas_3946", label %"$have_gas_3947"

"$out_of_gas_3946":                               ; preds = %"$have_gas_3922"
  call void @_out_of_gas()
  br label %"$have_gas_3947"

"$have_gas_3947":                                 ; preds = %"$out_of_gas_3946", %"$have_gas_3922"
  %"$consume_3948" = sub i64 %"$gasrem_3944", %"$_literal_cost_call_3943"
  store i64 %"$consume_3948", i64* @_gasrem, align 8
  %"$execptr_load_3949" = load i8*, i8** @_execptr, align 8
  %"$e_3950" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3949", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3950"), !dbg !392
  br label %"$matchsucc_3876"

"$False_3951":                                    ; preds = %"$have_gas_3874"
  %"$isSenderOAO_3952" = bitcast %TName_Bool* %"$isSenderOAO_3877" to %CName_False*
  %"$gasrem_3953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3954" = icmp ugt i64 1, %"$gasrem_3953"
  br i1 %"$gascmp_3954", label %"$out_of_gas_3955", label %"$have_gas_3956"

"$out_of_gas_3955":                               ; preds = %"$False_3951"
  call void @_out_of_gas()
  br label %"$have_gas_3956"

"$have_gas_3956":                                 ; preds = %"$out_of_gas_3955", %"$False_3951"
  %"$consume_3957" = sub i64 %"$gasrem_3953", 1
  store i64 %"$consume_3957", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_3958" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3959" = icmp ugt i64 1, %"$gasrem_3958"
  br i1 %"$gascmp_3959", label %"$out_of_gas_3960", label %"$have_gas_3961"

"$out_of_gas_3960":                               ; preds = %"$have_gas_3956"
  call void @_out_of_gas()
  br label %"$have_gas_3961"

"$have_gas_3961":                                 ; preds = %"$out_of_gas_3960", %"$have_gas_3956"
  %"$consume_3962" = sub i64 %"$gasrem_3958", 1
  store i64 %"$consume_3962", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_3963" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3964" = icmp ugt i64 1, %"$gasrem_3963"
  br i1 %"$gascmp_3964", label %"$out_of_gas_3965", label %"$have_gas_3966"

"$out_of_gas_3965":                               ; preds = %"$have_gas_3961"
  call void @_out_of_gas()
  br label %"$have_gas_3966"

"$have_gas_3966":                                 ; preds = %"$out_of_gas_3965", %"$have_gas_3961"
  %"$consume_3967" = sub i64 %"$gasrem_3963", 1
  store i64 %"$consume_3967", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_3968", i32 0, i32 0), i32 43 }, %String* %m, align 8, !dbg !393
  %"$gasrem_3969" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3970" = icmp ugt i64 1, %"$gasrem_3969"
  br i1 %"$gascmp_3970", label %"$out_of_gas_3971", label %"$have_gas_3972"

"$out_of_gas_3971":                               ; preds = %"$have_gas_3966"
  call void @_out_of_gas()
  br label %"$have_gas_3972"

"$have_gas_3972":                                 ; preds = %"$out_of_gas_3971", %"$have_gas_3966"
  %"$consume_3973" = sub i64 %"$gasrem_3969", 1
  store i64 %"$consume_3973", i64* @_gasrem, align 8
  %"$ud-registry.eError_80" = alloca i8*, align 8
  %"$ud-registry.eError_3974" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3975" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3974", 0
  %"$ud-registry.eError_envptr_3976" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3974", 1
  %"$m_3977" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_3978" = call i8* %"$ud-registry.eError_fptr_3975"(i8* %"$ud-registry.eError_envptr_3976", %String %"$m_3977"), !dbg !395
  store i8* %"$ud-registry.eError_call_3978", i8** %"$ud-registry.eError_80", align 8, !dbg !395
  %"$$ud-registry.eError_80_3979" = load i8*, i8** %"$ud-registry.eError_80", align 8
  store i8* %"$$ud-registry.eError_80_3979", i8** %e4, align 8, !dbg !395
  %"$e_3980" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_3982" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3980")
  %"$gasrem_3983" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3984" = icmp ugt i64 %"$_literal_cost_call_3982", %"$gasrem_3983"
  br i1 %"$gascmp_3984", label %"$out_of_gas_3985", label %"$have_gas_3986"

"$out_of_gas_3985":                               ; preds = %"$have_gas_3972"
  call void @_out_of_gas()
  br label %"$have_gas_3986"

"$have_gas_3986":                                 ; preds = %"$out_of_gas_3985", %"$have_gas_3972"
  %"$consume_3987" = sub i64 %"$gasrem_3983", %"$_literal_cost_call_3982"
  store i64 %"$consume_3987", i64* @_gasrem, align 8
  %"$execptr_load_3988" = load i8*, i8** @_execptr, align 8
  %"$e_3989" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_3988", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_3989"), !dbg !396
  br label %"$matchsucc_3876"

"$empty_default_3880":                            ; preds = %"$have_gas_3874"
  br label %"$matchsucc_3876"

"$matchsucc_3876":                                ; preds = %"$have_gas_3986", %"$have_gas_3947", %"$empty_default_3880"
  ret void
}

define void @configureResolver(i8* %0) !dbg !397 {
entry:
  %"$_amount_3991" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3992" = bitcast i8* %"$_amount_3991" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3992", align 8
  %"$_origin_3993" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3994" = bitcast i8* %"$_origin_3993" to [20 x i8]*
  %"$_sender_3995" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3996" = bitcast i8* %"$_sender_3995" to [20 x i8]*
  %"$node_3997" = getelementptr i8, i8* %0, i32 56
  %"$node_3998" = bitcast i8* %"$node_3997" to [32 x i8]*
  %"$resolver_3999" = getelementptr i8, i8* %0, i32 88
  %"$resolver_4000" = bitcast i8* %"$resolver_3999" to [20 x i8]*
  call void @"$configureResolver_3768"(%Uint128 %_amount, [20 x i8]* %"$_origin_3994", [20 x i8]* %"$_sender_3996", [32 x i8]* %"$node_3998", [20 x i8]* %"$resolver_4000"), !dbg !398
  ret void
}

define internal void @"$transfer_4001"(%Uint128 %_amount, [20 x i8]* %"$_origin_4002", [20 x i8]* %"$_sender_4003", [32 x i8]* %"$node_4004", [20 x i8]* %"$owner_4005") !dbg !399 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4002", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4003", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_4004", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_4005", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_4006_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4006_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4006_salloc_load", i64 32)
  %"$indices_buf_4006_salloc" = bitcast i8* %"$indices_buf_4006_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4006" = bitcast [32 x i8]* %"$indices_buf_4006_salloc" to i8*
  %"$indices_gep_4007" = getelementptr i8, i8* %"$indices_buf_4006", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4007" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_4009" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_4010" = call i8* @_fetch_field(i8* %"$execptr_load_4009", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4008", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4006", i32 1), !dbg !400
  %"$maybeRecord_4011" = bitcast i8* %"$maybeRecord_call_4010" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4011", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_4012" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_4012_4013" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4012" to i8*
  %"$_literal_cost_call_4014" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_4012_4013")
  %"$gasadd_4015" = add i64 %"$_literal_cost_call_4014", 0
  %"$gasadd_4016" = add i64 %"$gasadd_4015", 1
  %"$gasrem_4017" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4018" = icmp ugt i64 %"$gasadd_4016", %"$gasrem_4017"
  br i1 %"$gascmp_4018", label %"$out_of_gas_4019", label %"$have_gas_4020"

"$out_of_gas_4019":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4020"

"$have_gas_4020":                                 ; preds = %"$out_of_gas_4019", %entry
  %"$consume_4021" = sub i64 %"$gasrem_4017", %"$gasadd_4016"
  store i64 %"$consume_4021", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_4022_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4022_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4022_salloc_load", i64 32)
  %"$indices_buf_4022_salloc" = bitcast i8* %"$indices_buf_4022_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4022" = bitcast [32 x i8]* %"$indices_buf_4022_salloc" to i8*
  %"$indices_gep_4023" = getelementptr i8, i8* %"$indices_buf_4022", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4023" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_4025" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_4026" = call i8* @_fetch_field(i8* %"$execptr_load_4025", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4024", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_4022", i32 1), !dbg !401
  %"$maybeApproved_4027" = bitcast i8* %"$maybeApproved_call_4026" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_4027", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_4028" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_4028_4029" = bitcast %TName_Option_ByStr20* %"$maybeApproved_4028" to i8*
  %"$_literal_cost_call_4030" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_4028_4029")
  %"$gasadd_4031" = add i64 %"$_literal_cost_call_4030", 0
  %"$gasadd_4032" = add i64 %"$gasadd_4031", 1
  %"$gasrem_4033" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4034" = icmp ugt i64 %"$gasadd_4032", %"$gasrem_4033"
  br i1 %"$gascmp_4034", label %"$out_of_gas_4035", label %"$have_gas_4036"

"$out_of_gas_4035":                               ; preds = %"$have_gas_4020"
  call void @_out_of_gas()
  br label %"$have_gas_4036"

"$have_gas_4036":                                 ; preds = %"$out_of_gas_4035", %"$have_gas_4020"
  %"$consume_4037" = sub i64 %"$gasrem_4033", %"$gasadd_4032"
  store i64 %"$consume_4037", i64* @_gasrem, align 8
  %"$gasrem_4038" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4039" = icmp ugt i64 1, %"$gasrem_4038"
  br i1 %"$gascmp_4039", label %"$out_of_gas_4040", label %"$have_gas_4041"

"$out_of_gas_4040":                               ; preds = %"$have_gas_4036"
  call void @_out_of_gas()
  br label %"$have_gas_4041"

"$have_gas_4041":                                 ; preds = %"$out_of_gas_4040", %"$have_gas_4036"
  %"$consume_4042" = sub i64 %"$gasrem_4038", 1
  store i64 %"$consume_4042", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_4043" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4044" = icmp ugt i64 1, %"$gasrem_4043"
  br i1 %"$gascmp_4044", label %"$out_of_gas_4045", label %"$have_gas_4046"

"$out_of_gas_4045":                               ; preds = %"$have_gas_4041"
  call void @_out_of_gas()
  br label %"$have_gas_4046"

"$have_gas_4046":                                 ; preds = %"$out_of_gas_4045", %"$have_gas_4041"
  %"$consume_4047" = sub i64 %"$gasrem_4043", 1
  store i64 %"$consume_4047", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_96" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_4048" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_4049" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4048", 0
  %"$ud-registry.recordMemberOwner_envptr_4050" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4048", 1
  %"$maybeRecord_4051" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_4052" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_4049"(i8* %"$ud-registry.recordMemberOwner_envptr_4050", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4052", %TName_Option_ud-registry.Record* %"$maybeRecord_4051"), !dbg !402
  %"$ud-registry.recordMemberOwner_ret_4053" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4052", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_4053", [20 x i8]* %"$ud-registry.recordMemberOwner_96", align 1, !dbg !402
  %"$$ud-registry.recordMemberOwner_96_4054" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_96", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_96_4054", [20 x i8]* %recordOwner, align 1, !dbg !402
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_4055_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4055_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4055_salloc_load", i64 20)
  %"$indices_buf_4055_salloc" = bitcast i8* %"$indices_buf_4055_salloc_salloc" to [20 x i8]*
  %"$indices_buf_4055" = bitcast [20 x i8]* %"$indices_buf_4055_salloc" to i8*
  %"$recordOwner_4056" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_4057" = getelementptr i8, i8* %"$indices_buf_4055", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4057" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4056", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_4059" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_4060" = call i8* @_fetch_field(i8* %"$execptr_load_4059", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_4058", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_4055", i32 1), !dbg !403
  %"$maybeOperators_4061" = bitcast i8* %"$maybeOperators_call_4060" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4061", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_4062" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_4062_4063" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4062" to i8*
  %"$_literal_cost_call_4064" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_4062_4063")
  %"$gasadd_4065" = add i64 %"$_literal_cost_call_4064", 0
  %"$gasadd_4066" = add i64 %"$gasadd_4065", 1
  %"$gasrem_4067" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4068" = icmp ugt i64 %"$gasadd_4066", %"$gasrem_4067"
  br i1 %"$gascmp_4068", label %"$out_of_gas_4069", label %"$have_gas_4070"

"$out_of_gas_4069":                               ; preds = %"$have_gas_4046"
  call void @_out_of_gas()
  br label %"$have_gas_4070"

"$have_gas_4070":                                 ; preds = %"$out_of_gas_4069", %"$have_gas_4046"
  %"$consume_4071" = sub i64 %"$gasrem_4067", %"$gasadd_4066"
  store i64 %"$consume_4071", i64* @_gasrem, align 8
  %"$gasrem_4072" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4073" = icmp ugt i64 1, %"$gasrem_4072"
  br i1 %"$gascmp_4073", label %"$out_of_gas_4074", label %"$have_gas_4075"

"$out_of_gas_4074":                               ; preds = %"$have_gas_4070"
  call void @_out_of_gas()
  br label %"$have_gas_4075"

"$have_gas_4075":                                 ; preds = %"$out_of_gas_4074", %"$have_gas_4070"
  %"$consume_4076" = sub i64 %"$gasrem_4072", 1
  store i64 %"$consume_4076", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_4077" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4078" = icmp ugt i64 1, %"$gasrem_4077"
  br i1 %"$gascmp_4078", label %"$out_of_gas_4079", label %"$have_gas_4080"

"$out_of_gas_4079":                               ; preds = %"$have_gas_4075"
  call void @_out_of_gas()
  br label %"$have_gas_4080"

"$have_gas_4080":                                 ; preds = %"$out_of_gas_4079", %"$have_gas_4075"
  %"$consume_4081" = sub i64 %"$gasrem_4077", 1
  store i64 %"$consume_4081", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_92" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_4082" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_4083" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4082", 0
  %"$ud-registry.getIsOAO_envptr_4084" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4082", 1
  %"$ud-registry.getIsOAO__sender_4085" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_4085", align 1
  %"$ud-registry.getIsOAO_call_4086" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_4083"(i8* %"$ud-registry.getIsOAO_envptr_4084", [20 x i8]* %"$ud-registry.getIsOAO__sender_4085"), !dbg !404
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_4086", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_92", align 8, !dbg !404
  %"$ud-registry.getIsOAO_93" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_92_4087" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_92", align 8
  %"$$ud-registry.getIsOAO_92_fptr_4088" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_92_4087", 0
  %"$$ud-registry.getIsOAO_92_envptr_4089" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_92_4087", 1
  %"$$ud-registry.getIsOAO_92_recordOwner_4090" = alloca [20 x i8], align 1
  %"$recordOwner_4091" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_4091", [20 x i8]* %"$$ud-registry.getIsOAO_92_recordOwner_4090", align 1
  %"$$ud-registry.getIsOAO_92_call_4092" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_92_fptr_4088"(i8* %"$$ud-registry.getIsOAO_92_envptr_4089", [20 x i8]* %"$$ud-registry.getIsOAO_92_recordOwner_4090"), !dbg !404
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_92_call_4092", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_93", align 8, !dbg !404
  %"$ud-registry.getIsOAO_94" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_93_4093" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_93", align 8
  %"$$ud-registry.getIsOAO_93_fptr_4094" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_93_4093", 0
  %"$$ud-registry.getIsOAO_93_envptr_4095" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_93_4093", 1
  %"$maybeApproved_4096" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_93_call_4097" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_93_fptr_4094"(i8* %"$$ud-registry.getIsOAO_93_envptr_4095", %TName_Option_ByStr20* %"$maybeApproved_4096"), !dbg !404
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_93_call_4097", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_94", align 8, !dbg !404
  %"$ud-registry.getIsOAO_95" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_94_4098" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_94", align 8
  %"$$ud-registry.getIsOAO_94_fptr_4099" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_94_4098", 0
  %"$$ud-registry.getIsOAO_94_envptr_4100" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_94_4098", 1
  %"$maybeOperators_4101" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_94_call_4102" = call %TName_Bool* %"$$ud-registry.getIsOAO_94_fptr_4099"(i8* %"$$ud-registry.getIsOAO_94_envptr_4100", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4101"), !dbg !404
  store %TName_Bool* %"$$ud-registry.getIsOAO_94_call_4102", %TName_Bool** %"$ud-registry.getIsOAO_95", align 8, !dbg !404
  %"$$ud-registry.getIsOAO_95_4103" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_95", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_95_4103", %TName_Bool** %isSenderOAO, align 8, !dbg !404
  %"$gasrem_4104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4105" = icmp ugt i64 2, %"$gasrem_4104"
  br i1 %"$gascmp_4105", label %"$out_of_gas_4106", label %"$have_gas_4107"

"$out_of_gas_4106":                               ; preds = %"$have_gas_4080"
  call void @_out_of_gas()
  br label %"$have_gas_4107"

"$have_gas_4107":                                 ; preds = %"$out_of_gas_4106", %"$have_gas_4080"
  %"$consume_4108" = sub i64 %"$gasrem_4104", 2
  store i64 %"$consume_4108", i64* @_gasrem, align 8
  %"$isSenderOAO_4110" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_4111" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_4110", i32 0, i32 0
  %"$isSenderOAO_tag_4112" = load i8, i8* %"$isSenderOAO_tag_4111", align 1
  switch i8 %"$isSenderOAO_tag_4112", label %"$empty_default_4113" [
    i8 0, label %"$True_4114"
    i8 1, label %"$False_4267"
  ], !dbg !405

"$True_4114":                                     ; preds = %"$have_gas_4107"
  %"$isSenderOAO_4115" = bitcast %TName_Bool* %"$isSenderOAO_4110" to %CName_True*
  %"$gasrem_4116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4117" = icmp ugt i64 1, %"$gasrem_4116"
  br i1 %"$gascmp_4117", label %"$out_of_gas_4118", label %"$have_gas_4119"

"$out_of_gas_4118":                               ; preds = %"$True_4114"
  call void @_out_of_gas()
  br label %"$have_gas_4119"

"$have_gas_4119":                                 ; preds = %"$out_of_gas_4118", %"$True_4114"
  %"$consume_4120" = sub i64 %"$gasrem_4116", 1
  store i64 %"$consume_4120", i64* @_gasrem, align 8
  %"$indices_buf_4121_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4121_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4121_salloc_load", i64 32)
  %"$indices_buf_4121_salloc" = bitcast i8* %"$indices_buf_4121_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4121" = bitcast [32 x i8]* %"$indices_buf_4121_salloc" to i8*
  %"$indices_gep_4122" = getelementptr i8, i8* %"$indices_buf_4121", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_4122" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_4123" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_4123", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4124", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_4121", i8* null), !dbg !406
  %"$gasrem_4125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4126" = icmp ugt i64 1, %"$gasrem_4125"
  br i1 %"$gascmp_4126", label %"$out_of_gas_4127", label %"$have_gas_4128"

"$out_of_gas_4127":                               ; preds = %"$have_gas_4119"
  call void @_out_of_gas()
  br label %"$have_gas_4128"

"$have_gas_4128":                                 ; preds = %"$out_of_gas_4127", %"$have_gas_4119"
  %"$consume_4129" = sub i64 %"$gasrem_4125", 1
  store i64 %"$consume_4129", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_4130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4131" = icmp ugt i64 1, %"$gasrem_4130"
  br i1 %"$gascmp_4131", label %"$out_of_gas_4132", label %"$have_gas_4133"

"$out_of_gas_4132":                               ; preds = %"$have_gas_4128"
  call void @_out_of_gas()
  br label %"$have_gas_4133"

"$have_gas_4133":                                 ; preds = %"$out_of_gas_4132", %"$have_gas_4128"
  %"$consume_4134" = sub i64 %"$gasrem_4130", 1
  store i64 %"$consume_4134", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_4135" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_4136_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4136_salloc" = call i8* @_salloc(i8* %"$adtval_4136_load", i64 41)
  %"$adtval_4136" = bitcast i8* %"$adtval_4136_salloc" to %CName_ud-registry.Record*
  %"$adtgep_4137" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4136", i32 0, i32 0
  store i8 0, i8* %"$adtgep_4137", align 1
  %"$adtgep_4138" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4136", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_4138", align 1
  %"$adtgep_4139" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4136", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_4135", [20 x i8]* %"$adtgep_4139", align 1
  %"$adtptr_4140" = bitcast %CName_ud-registry.Record* %"$adtval_4136" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_4140", %TName_ud-registry.Record** %newRecord, align 8, !dbg !409
  %"$newRecord_4141" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_4141_4142" = bitcast %TName_ud-registry.Record* %"$newRecord_4141" to i8*
  %"$_literal_cost_call_4143" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_4141_4142")
  %"$gasadd_4144" = add i64 %"$_literal_cost_call_4143", 1
  %"$gasrem_4145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4146" = icmp ugt i64 %"$gasadd_4144", %"$gasrem_4145"
  br i1 %"$gascmp_4146", label %"$out_of_gas_4147", label %"$have_gas_4148"

"$out_of_gas_4147":                               ; preds = %"$have_gas_4133"
  call void @_out_of_gas()
  br label %"$have_gas_4148"

"$have_gas_4148":                                 ; preds = %"$out_of_gas_4147", %"$have_gas_4133"
  %"$consume_4149" = sub i64 %"$gasrem_4145", %"$gasadd_4144"
  store i64 %"$consume_4149", i64* @_gasrem, align 8
  %"$indices_buf_4150_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4150_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4150_salloc_load", i64 32)
  %"$indices_buf_4150_salloc" = bitcast i8* %"$indices_buf_4150_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4150" = bitcast [32 x i8]* %"$indices_buf_4150_salloc" to i8*
  %"$indices_gep_4151" = getelementptr i8, i8* %"$indices_buf_4150", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4151" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast4, align 1
  %"$execptr_load_4152" = load i8*, i8** @_execptr, align 8
  %"$newRecord_4154" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_4155" = bitcast %TName_ud-registry.Record* %"$newRecord_4154" to i8*
  call void @_update_field(i8* %"$execptr_load_4152", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4153", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4150", i8* %"$update_value_4155"), !dbg !410
  %"$gasrem_4156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4157" = icmp ugt i64 1, %"$gasrem_4156"
  br i1 %"$gascmp_4157", label %"$out_of_gas_4158", label %"$have_gas_4159"

"$out_of_gas_4158":                               ; preds = %"$have_gas_4148"
  call void @_out_of_gas()
  br label %"$have_gas_4159"

"$have_gas_4159":                                 ; preds = %"$out_of_gas_4158", %"$have_gas_4148"
  %"$consume_4160" = sub i64 %"$gasrem_4156", 1
  store i64 %"$consume_4160", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_4161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4162" = icmp ugt i64 1, %"$gasrem_4161"
  br i1 %"$gascmp_4162", label %"$out_of_gas_4163", label %"$have_gas_4164"

"$out_of_gas_4163":                               ; preds = %"$have_gas_4159"
  call void @_out_of_gas()
  br label %"$have_gas_4164"

"$have_gas_4164":                                 ; preds = %"$out_of_gas_4163", %"$have_gas_4159"
  %"$consume_4165" = sub i64 %"$gasrem_4161", 1
  store i64 %"$consume_4165", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_87" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_4166" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_4167" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4166", 0
  %"$ud-registry.eConfigured_envptr_4168" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4166", 1
  %"$ud-registry.eConfigured_node_4169" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_4169", align 1
  %"$ud-registry.eConfigured_call_4170" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_4167"(i8* %"$ud-registry.eConfigured_envptr_4168", [32 x i8]* %"$ud-registry.eConfigured_node_4169"), !dbg !411
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_4170", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_87", align 8, !dbg !411
  %"$ud-registry.eConfigured_88" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_87_4171" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_87", align 8
  %"$$ud-registry.eConfigured_87_fptr_4172" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_87_4171", 0
  %"$$ud-registry.eConfigured_87_envptr_4173" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_87_4171", 1
  %"$$ud-registry.eConfigured_87_owner_4174" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_87_owner_4174", align 1
  %"$$ud-registry.eConfigured_87_call_4175" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_87_fptr_4172"(i8* %"$$ud-registry.eConfigured_87_envptr_4173", [20 x i8]* %"$$ud-registry.eConfigured_87_owner_4174"), !dbg !411
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_87_call_4175", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_88", align 8, !dbg !411
  %"$ud-registry.eConfigured_89" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_88_4176" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_88", align 8
  %"$$ud-registry.eConfigured_88_fptr_4177" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_88_4176", 0
  %"$$ud-registry.eConfigured_88_envptr_4178" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_88_4176", 1
  %"$$ud-registry.eConfigured_88_ud-registry.zeroByStr20_4179" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_4180" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_4180", [20 x i8]* %"$$ud-registry.eConfigured_88_ud-registry.zeroByStr20_4179", align 1
  %"$$ud-registry.eConfigured_88_call_4181" = call i8* %"$$ud-registry.eConfigured_88_fptr_4177"(i8* %"$$ud-registry.eConfigured_88_envptr_4178", [20 x i8]* %"$$ud-registry.eConfigured_88_ud-registry.zeroByStr20_4179"), !dbg !411
  store i8* %"$$ud-registry.eConfigured_88_call_4181", i8** %"$ud-registry.eConfigured_89", align 8, !dbg !411
  %"$$ud-registry.eConfigured_89_4182" = load i8*, i8** %"$ud-registry.eConfigured_89", align 8
  store i8* %"$$ud-registry.eConfigured_89_4182", i8** %e, align 8, !dbg !411
  %"$e_4183" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_4185" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4183")
  %"$gasrem_4186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4187" = icmp ugt i64 %"$_literal_cost_call_4185", %"$gasrem_4186"
  br i1 %"$gascmp_4187", label %"$out_of_gas_4188", label %"$have_gas_4189"

"$out_of_gas_4188":                               ; preds = %"$have_gas_4164"
  call void @_out_of_gas()
  br label %"$have_gas_4189"

"$have_gas_4189":                                 ; preds = %"$out_of_gas_4188", %"$have_gas_4164"
  %"$consume_4190" = sub i64 %"$gasrem_4186", %"$_literal_cost_call_4185"
  store i64 %"$consume_4190", i64* @_gasrem, align 8
  %"$execptr_load_4191" = load i8*, i8** @_execptr, align 8
  %"$e_4192" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_4191", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4192"), !dbg !412
  %"$gasrem_4193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4194" = icmp ugt i64 1, %"$gasrem_4193"
  br i1 %"$gascmp_4194", label %"$out_of_gas_4195", label %"$have_gas_4196"

"$out_of_gas_4195":                               ; preds = %"$have_gas_4189"
  call void @_out_of_gas()
  br label %"$have_gas_4196"

"$have_gas_4196":                                 ; preds = %"$out_of_gas_4195", %"$have_gas_4189"
  %"$consume_4197" = sub i64 %"$gasrem_4193", 1
  store i64 %"$consume_4197", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_4198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4199" = icmp ugt i64 1, %"$gasrem_4198"
  br i1 %"$gascmp_4199", label %"$out_of_gas_4200", label %"$have_gas_4201"

"$out_of_gas_4200":                               ; preds = %"$have_gas_4196"
  call void @_out_of_gas()
  br label %"$have_gas_4201"

"$have_gas_4201":                                 ; preds = %"$out_of_gas_4200", %"$have_gas_4196"
  %"$consume_4202" = sub i64 %"$gasrem_4198", 1
  store i64 %"$consume_4202", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_4203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4204" = icmp ugt i64 1, %"$gasrem_4203"
  br i1 %"$gascmp_4204", label %"$out_of_gas_4205", label %"$have_gas_4206"

"$out_of_gas_4205":                               ; preds = %"$have_gas_4201"
  call void @_out_of_gas()
  br label %"$have_gas_4206"

"$have_gas_4206":                                 ; preds = %"$out_of_gas_4205", %"$have_gas_4201"
  %"$consume_4207" = sub i64 %"$gasrem_4203", 1
  store i64 %"$consume_4207", i64* @_gasrem, align 8
  %"$msgobj_4208_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4208_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4208_salloc_load", i64 225)
  %"$msgobj_4208_salloc" = bitcast i8* %"$msgobj_4208_salloc_salloc" to [225 x i8]*
  %"$msgobj_4208" = bitcast [225 x i8]* %"$msgobj_4208_salloc" to i8*
  store i8 5, i8* %"$msgobj_4208", align 1
  %"$msgobj_fname_4210" = getelementptr i8, i8* %"$msgobj_4208", i32 1
  %"$msgobj_fname_4211" = bitcast i8* %"$msgobj_fname_4210" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4209", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4211", align 8
  %"$msgobj_td_4212" = getelementptr i8, i8* %"$msgobj_4208", i32 17
  %"$msgobj_td_4213" = bitcast i8* %"$msgobj_td_4212" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4213", align 8
  %"$msgobj_v_4215" = getelementptr i8, i8* %"$msgobj_4208", i32 25
  %"$msgobj_v_4216" = bitcast i8* %"$msgobj_v_4215" to %String*
  store %String { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$stringlit_4214", i32 0, i32 0), i32 17 }, %String* %"$msgobj_v_4216", align 8
  %"$msgobj_fname_4218" = getelementptr i8, i8* %"$msgobj_4208", i32 41
  %"$msgobj_fname_4219" = bitcast i8* %"$msgobj_fname_4218" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4217", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4219", align 8
  %"$msgobj_td_4220" = getelementptr i8, i8* %"$msgobj_4208", i32 57
  %"$msgobj_td_4221" = bitcast i8* %"$msgobj_td_4220" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_4221", align 8
  %"$msgobj_v_4222" = getelementptr i8, i8* %"$msgobj_4208", i32 65
  %"$msgobj_v_4223" = bitcast i8* %"$msgobj_v_4222" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_4223", align 1
  %"$msgobj_fname_4225" = getelementptr i8, i8* %"$msgobj_4208", i32 97
  %"$msgobj_fname_4226" = bitcast i8* %"$msgobj_fname_4225" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4224", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4226", align 8
  %"$msgobj_td_4227" = getelementptr i8, i8* %"$msgobj_4208", i32 113
  %"$msgobj_td_4228" = bitcast i8* %"$msgobj_td_4227" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4228", align 8
  %"$msgobj_v_4229" = getelementptr i8, i8* %"$msgobj_4208", i32 121
  %"$msgobj_v_4230" = bitcast i8* %"$msgobj_v_4229" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4230", align 1
  %"$msgobj_fname_4232" = getelementptr i8, i8* %"$msgobj_4208", i32 141
  %"$msgobj_fname_4233" = bitcast i8* %"$msgobj_fname_4232" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4231", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4233", align 8
  %"$msgobj_td_4234" = getelementptr i8, i8* %"$msgobj_4208", i32 157
  %"$msgobj_td_4235" = bitcast i8* %"$msgobj_td_4234" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_4235", align 8
  %"$msgobj_v_4236" = getelementptr i8, i8* %"$msgobj_4208", i32 165
  %"$msgobj_v_4237" = bitcast i8* %"$msgobj_v_4236" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4237", align 8
  %"$msgobj_fname_4239" = getelementptr i8, i8* %"$msgobj_4208", i32 181
  %"$msgobj_fname_4240" = bitcast i8* %"$msgobj_fname_4239" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4238", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4240", align 8
  %"$msgobj_td_4241" = getelementptr i8, i8* %"$msgobj_4208", i32 197
  %"$msgobj_td_4242" = bitcast i8* %"$msgobj_td_4241" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_4242", align 8
  %"$msgobj_v_4243" = getelementptr i8, i8* %"$msgobj_4208", i32 205
  %"$msgobj_v_4244" = bitcast i8* %"$msgobj_v_4243" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4244", align 1
  store i8* %"$msgobj_4208", i8** %m, align 8, !dbg !413
  %"$gasrem_4246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4247" = icmp ugt i64 1, %"$gasrem_4246"
  br i1 %"$gascmp_4247", label %"$out_of_gas_4248", label %"$have_gas_4249"

"$out_of_gas_4248":                               ; preds = %"$have_gas_4206"
  call void @_out_of_gas()
  br label %"$have_gas_4249"

"$have_gas_4249":                                 ; preds = %"$out_of_gas_4248", %"$have_gas_4206"
  %"$consume_4250" = sub i64 %"$gasrem_4246", 1
  store i64 %"$consume_4250", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_86" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4251" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4252" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4251", 0
  %"$ud-registry.oneMsg_envptr_4253" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4251", 1
  %"$m_4254" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_4255" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4252"(i8* %"$ud-registry.oneMsg_envptr_4253", i8* %"$m_4254"), !dbg !414
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4255", %TName_List_Message** %"$ud-registry.oneMsg_86", align 8, !dbg !414
  %"$$ud-registry.oneMsg_86_4256" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_86", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_86_4256", %TName_List_Message** %msgs, align 8, !dbg !414
  %"$msgs_4257" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_4257_4258" = bitcast %TName_List_Message* %"$msgs_4257" to i8*
  %"$_literal_cost_call_4259" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_4257_4258")
  %"$gasrem_4260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4261" = icmp ugt i64 %"$_literal_cost_call_4259", %"$gasrem_4260"
  br i1 %"$gascmp_4261", label %"$out_of_gas_4262", label %"$have_gas_4263"

"$out_of_gas_4262":                               ; preds = %"$have_gas_4249"
  call void @_out_of_gas()
  br label %"$have_gas_4263"

"$have_gas_4263":                                 ; preds = %"$out_of_gas_4262", %"$have_gas_4249"
  %"$consume_4264" = sub i64 %"$gasrem_4260", %"$_literal_cost_call_4259"
  store i64 %"$consume_4264", i64* @_gasrem, align 8
  %"$execptr_load_4265" = load i8*, i8** @_execptr, align 8
  %"$msgs_4266" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_4265", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_4266"), !dbg !415
  br label %"$matchsucc_4109"

"$False_4267":                                    ; preds = %"$have_gas_4107"
  %"$isSenderOAO_4268" = bitcast %TName_Bool* %"$isSenderOAO_4110" to %CName_False*
  %"$gasrem_4269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4270" = icmp ugt i64 1, %"$gasrem_4269"
  br i1 %"$gascmp_4270", label %"$out_of_gas_4271", label %"$have_gas_4272"

"$out_of_gas_4271":                               ; preds = %"$False_4267"
  call void @_out_of_gas()
  br label %"$have_gas_4272"

"$have_gas_4272":                                 ; preds = %"$out_of_gas_4271", %"$False_4267"
  %"$consume_4273" = sub i64 %"$gasrem_4269", 1
  store i64 %"$consume_4273", i64* @_gasrem, align 8
  %e5 = alloca i8*, align 8
  %"$gasrem_4274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4275" = icmp ugt i64 1, %"$gasrem_4274"
  br i1 %"$gascmp_4275", label %"$out_of_gas_4276", label %"$have_gas_4277"

"$out_of_gas_4276":                               ; preds = %"$have_gas_4272"
  call void @_out_of_gas()
  br label %"$have_gas_4277"

"$have_gas_4277":                                 ; preds = %"$out_of_gas_4276", %"$have_gas_4272"
  %"$consume_4278" = sub i64 %"$gasrem_4274", 1
  store i64 %"$consume_4278", i64* @_gasrem, align 8
  %m6 = alloca %String, align 8
  %"$gasrem_4279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4280" = icmp ugt i64 1, %"$gasrem_4279"
  br i1 %"$gascmp_4280", label %"$out_of_gas_4281", label %"$have_gas_4282"

"$out_of_gas_4281":                               ; preds = %"$have_gas_4277"
  call void @_out_of_gas()
  br label %"$have_gas_4282"

"$have_gas_4282":                                 ; preds = %"$out_of_gas_4281", %"$have_gas_4277"
  %"$consume_4283" = sub i64 %"$gasrem_4279", 1
  store i64 %"$consume_4283", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_4284", i32 0, i32 0), i32 43 }, %String* %m6, align 8, !dbg !416
  %"$gasrem_4285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4286" = icmp ugt i64 1, %"$gasrem_4285"
  br i1 %"$gascmp_4286", label %"$out_of_gas_4287", label %"$have_gas_4288"

"$out_of_gas_4287":                               ; preds = %"$have_gas_4282"
  call void @_out_of_gas()
  br label %"$have_gas_4288"

"$have_gas_4288":                                 ; preds = %"$out_of_gas_4287", %"$have_gas_4282"
  %"$consume_4289" = sub i64 %"$gasrem_4285", 1
  store i64 %"$consume_4289", i64* @_gasrem, align 8
  %"$ud-registry.eError_91" = alloca i8*, align 8
  %"$ud-registry.eError_4290" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_4291" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4290", 0
  %"$ud-registry.eError_envptr_4292" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4290", 1
  %"$m_4293" = load %String, %String* %m6, align 8
  %"$ud-registry.eError_call_4294" = call i8* %"$ud-registry.eError_fptr_4291"(i8* %"$ud-registry.eError_envptr_4292", %String %"$m_4293"), !dbg !418
  store i8* %"$ud-registry.eError_call_4294", i8** %"$ud-registry.eError_91", align 8, !dbg !418
  %"$$ud-registry.eError_91_4295" = load i8*, i8** %"$ud-registry.eError_91", align 8
  store i8* %"$$ud-registry.eError_91_4295", i8** %e5, align 8, !dbg !418
  %"$e_4296" = load i8*, i8** %e5, align 8
  %"$_literal_cost_call_4298" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4296")
  %"$gasrem_4299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4300" = icmp ugt i64 %"$_literal_cost_call_4298", %"$gasrem_4299"
  br i1 %"$gascmp_4300", label %"$out_of_gas_4301", label %"$have_gas_4302"

"$out_of_gas_4301":                               ; preds = %"$have_gas_4288"
  call void @_out_of_gas()
  br label %"$have_gas_4302"

"$have_gas_4302":                                 ; preds = %"$out_of_gas_4301", %"$have_gas_4288"
  %"$consume_4303" = sub i64 %"$gasrem_4299", %"$_literal_cost_call_4298"
  store i64 %"$consume_4303", i64* @_gasrem, align 8
  %"$execptr_load_4304" = load i8*, i8** @_execptr, align 8
  %"$e_4305" = load i8*, i8** %e5, align 8
  call void @_event(i8* %"$execptr_load_4304", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4305"), !dbg !419
  %"$gasrem_4306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4307" = icmp ugt i64 1, %"$gasrem_4306"
  br i1 %"$gascmp_4307", label %"$out_of_gas_4308", label %"$have_gas_4309"

"$out_of_gas_4308":                               ; preds = %"$have_gas_4302"
  call void @_out_of_gas()
  br label %"$have_gas_4309"

"$have_gas_4309":                                 ; preds = %"$out_of_gas_4308", %"$have_gas_4302"
  %"$consume_4310" = sub i64 %"$gasrem_4306", 1
  store i64 %"$consume_4310", i64* @_gasrem, align 8
  %msgs7 = alloca %TName_List_Message*, align 8
  %"$gasrem_4311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4312" = icmp ugt i64 1, %"$gasrem_4311"
  br i1 %"$gascmp_4312", label %"$out_of_gas_4313", label %"$have_gas_4314"

"$out_of_gas_4313":                               ; preds = %"$have_gas_4309"
  call void @_out_of_gas()
  br label %"$have_gas_4314"

"$have_gas_4314":                                 ; preds = %"$out_of_gas_4313", %"$have_gas_4309"
  %"$consume_4315" = sub i64 %"$gasrem_4311", 1
  store i64 %"$consume_4315", i64* @_gasrem, align 8
  %m8 = alloca i8*, align 8
  %"$gasrem_4316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4317" = icmp ugt i64 1, %"$gasrem_4316"
  br i1 %"$gascmp_4317", label %"$out_of_gas_4318", label %"$have_gas_4319"

"$out_of_gas_4318":                               ; preds = %"$have_gas_4314"
  call void @_out_of_gas()
  br label %"$have_gas_4319"

"$have_gas_4319":                                 ; preds = %"$out_of_gas_4318", %"$have_gas_4314"
  %"$consume_4320" = sub i64 %"$gasrem_4316", 1
  store i64 %"$consume_4320", i64* @_gasrem, align 8
  %"$msgobj_4321_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4321_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4321_salloc_load", i64 225)
  %"$msgobj_4321_salloc" = bitcast i8* %"$msgobj_4321_salloc_salloc" to [225 x i8]*
  %"$msgobj_4321" = bitcast [225 x i8]* %"$msgobj_4321_salloc" to i8*
  store i8 5, i8* %"$msgobj_4321", align 1
  %"$msgobj_fname_4323" = getelementptr i8, i8* %"$msgobj_4321", i32 1
  %"$msgobj_fname_4324" = bitcast i8* %"$msgobj_fname_4323" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4322", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4324", align 8
  %"$msgobj_td_4325" = getelementptr i8, i8* %"$msgobj_4321", i32 17
  %"$msgobj_td_4326" = bitcast i8* %"$msgobj_td_4325" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4326", align 8
  %"$msgobj_v_4328" = getelementptr i8, i8* %"$msgobj_4321", i32 25
  %"$msgobj_v_4329" = bitcast i8* %"$msgobj_v_4328" to %String*
  store %String { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$stringlit_4327", i32 0, i32 0), i32 17 }, %String* %"$msgobj_v_4329", align 8
  %"$msgobj_fname_4331" = getelementptr i8, i8* %"$msgobj_4321", i32 41
  %"$msgobj_fname_4332" = bitcast i8* %"$msgobj_fname_4331" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4330", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4332", align 8
  %"$msgobj_td_4333" = getelementptr i8, i8* %"$msgobj_4321", i32 57
  %"$msgobj_td_4334" = bitcast i8* %"$msgobj_td_4333" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_4334", align 8
  %"$msgobj_v_4335" = getelementptr i8, i8* %"$msgobj_4321", i32 65
  %"$msgobj_v_4336" = bitcast i8* %"$msgobj_v_4335" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_4336", align 1
  %"$msgobj_fname_4338" = getelementptr i8, i8* %"$msgobj_4321", i32 97
  %"$msgobj_fname_4339" = bitcast i8* %"$msgobj_fname_4338" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4337", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4339", align 8
  %"$msgobj_td_4340" = getelementptr i8, i8* %"$msgobj_4321", i32 113
  %"$msgobj_td_4341" = bitcast i8* %"$msgobj_td_4340" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4341", align 8
  %"$msgobj_v_4342" = getelementptr i8, i8* %"$msgobj_4321", i32 121
  %"$msgobj_v_4343" = bitcast i8* %"$msgobj_v_4342" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4343", align 1
  %"$msgobj_fname_4345" = getelementptr i8, i8* %"$msgobj_4321", i32 141
  %"$msgobj_fname_4346" = bitcast i8* %"$msgobj_fname_4345" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4344", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4346", align 8
  %"$msgobj_td_4347" = getelementptr i8, i8* %"$msgobj_4321", i32 157
  %"$msgobj_td_4348" = bitcast i8* %"$msgobj_td_4347" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_4348", align 8
  %"$msgobj_v_4349" = getelementptr i8, i8* %"$msgobj_4321", i32 165
  %"$msgobj_v_4350" = bitcast i8* %"$msgobj_v_4349" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4350", align 8
  %"$msgobj_fname_4352" = getelementptr i8, i8* %"$msgobj_4321", i32 181
  %"$msgobj_fname_4353" = bitcast i8* %"$msgobj_fname_4352" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4351", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4353", align 8
  %"$msgobj_td_4354" = getelementptr i8, i8* %"$msgobj_4321", i32 197
  %"$msgobj_td_4355" = bitcast i8* %"$msgobj_td_4354" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_4355", align 8
  %"$msgobj_v_4356" = getelementptr i8, i8* %"$msgobj_4321", i32 205
  %"$msgobj_v_4357" = bitcast i8* %"$msgobj_v_4356" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4357", align 1
  store i8* %"$msgobj_4321", i8** %m8, align 8, !dbg !420
  %"$gasrem_4359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4360" = icmp ugt i64 1, %"$gasrem_4359"
  br i1 %"$gascmp_4360", label %"$out_of_gas_4361", label %"$have_gas_4362"

"$out_of_gas_4361":                               ; preds = %"$have_gas_4319"
  call void @_out_of_gas()
  br label %"$have_gas_4362"

"$have_gas_4362":                                 ; preds = %"$out_of_gas_4361", %"$have_gas_4319"
  %"$consume_4363" = sub i64 %"$gasrem_4359", 1
  store i64 %"$consume_4363", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_90" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4364" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4365" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4364", 0
  %"$ud-registry.oneMsg_envptr_4366" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4364", 1
  %"$m_4367" = load i8*, i8** %m8, align 8
  %"$ud-registry.oneMsg_call_4368" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4365"(i8* %"$ud-registry.oneMsg_envptr_4366", i8* %"$m_4367"), !dbg !421
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4368", %TName_List_Message** %"$ud-registry.oneMsg_90", align 8, !dbg !421
  %"$$ud-registry.oneMsg_90_4369" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_90", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_90_4369", %TName_List_Message** %msgs7, align 8, !dbg !421
  %"$msgs_4370" = load %TName_List_Message*, %TName_List_Message** %msgs7, align 8
  %"$$msgs_4370_4371" = bitcast %TName_List_Message* %"$msgs_4370" to i8*
  %"$_literal_cost_call_4372" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_4370_4371")
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
  %"$msgs_4379" = load %TName_List_Message*, %TName_List_Message** %msgs7, align 8
  call void @_send(i8* %"$execptr_load_4378", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_4379"), !dbg !422
  br label %"$matchsucc_4109"

"$empty_default_4113":                            ; preds = %"$have_gas_4107"
  br label %"$matchsucc_4109"

"$matchsucc_4109":                                ; preds = %"$have_gas_4376", %"$have_gas_4263", %"$empty_default_4113"
  ret void
}

define void @transfer(i8* %0) !dbg !423 {
entry:
  %"$_amount_4381" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4382" = bitcast i8* %"$_amount_4381" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4382", align 8
  %"$_origin_4383" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4384" = bitcast i8* %"$_origin_4383" to [20 x i8]*
  %"$_sender_4385" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4386" = bitcast i8* %"$_sender_4385" to [20 x i8]*
  %"$node_4387" = getelementptr i8, i8* %0, i32 56
  %"$node_4388" = bitcast i8* %"$node_4387" to [32 x i8]*
  %"$owner_4389" = getelementptr i8, i8* %0, i32 88
  %"$owner_4390" = bitcast i8* %"$owner_4389" to [20 x i8]*
  call void @"$transfer_4001"(%Uint128 %_amount, [20 x i8]* %"$_origin_4384", [20 x i8]* %"$_sender_4386", [32 x i8]* %"$node_4388", [20 x i8]* %"$owner_4390"), !dbg !424
  ret void
}

define internal void @"$assign_4391"(%Uint128 %_amount, [20 x i8]* %"$_origin_4392", [20 x i8]* %"$_sender_4393", [32 x i8]* %"$parent_4394", %String %label, [20 x i8]* %"$owner_4395") !dbg !425 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4392", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4393", align 1
  %parent = load [32 x i8], [32 x i8]* %"$parent_4394", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_4395", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_4396_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4396_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4396_salloc_load", i64 32)
  %"$indices_buf_4396_salloc" = bitcast i8* %"$indices_buf_4396_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4396" = bitcast [32 x i8]* %"$indices_buf_4396_salloc" to i8*
  %"$indices_gep_4397" = getelementptr i8, i8* %"$indices_buf_4396", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4397" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_4399" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_4400" = call i8* @_fetch_field(i8* %"$execptr_load_4399", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4398", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4396", i32 1), !dbg !426
  %"$maybeRecord_4401" = bitcast i8* %"$maybeRecord_call_4400" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4401", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_4402" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_4402_4403" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4402" to i8*
  %"$_literal_cost_call_4404" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_4402_4403")
  %"$gasadd_4405" = add i64 %"$_literal_cost_call_4404", 0
  %"$gasadd_4406" = add i64 %"$gasadd_4405", 1
  %"$gasrem_4407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4408" = icmp ugt i64 %"$gasadd_4406", %"$gasrem_4407"
  br i1 %"$gascmp_4408", label %"$out_of_gas_4409", label %"$have_gas_4410"

"$out_of_gas_4409":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4410"

"$have_gas_4410":                                 ; preds = %"$out_of_gas_4409", %entry
  %"$consume_4411" = sub i64 %"$gasrem_4407", %"$gasadd_4406"
  store i64 %"$consume_4411", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_4412_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4412_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4412_salloc_load", i64 32)
  %"$indices_buf_4412_salloc" = bitcast i8* %"$indices_buf_4412_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4412" = bitcast [32 x i8]* %"$indices_buf_4412_salloc" to i8*
  %"$indices_gep_4413" = getelementptr i8, i8* %"$indices_buf_4412", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4413" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_4415" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_4416" = call i8* @_fetch_field(i8* %"$execptr_load_4415", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4414", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_4412", i32 1), !dbg !427
  %"$maybeApproved_4417" = bitcast i8* %"$maybeApproved_call_4416" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_4417", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_4418" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_4418_4419" = bitcast %TName_Option_ByStr20* %"$maybeApproved_4418" to i8*
  %"$_literal_cost_call_4420" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_4418_4419")
  %"$gasadd_4421" = add i64 %"$_literal_cost_call_4420", 0
  %"$gasadd_4422" = add i64 %"$gasadd_4421", 1
  %"$gasrem_4423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4424" = icmp ugt i64 %"$gasadd_4422", %"$gasrem_4423"
  br i1 %"$gascmp_4424", label %"$out_of_gas_4425", label %"$have_gas_4426"

"$out_of_gas_4425":                               ; preds = %"$have_gas_4410"
  call void @_out_of_gas()
  br label %"$have_gas_4426"

"$have_gas_4426":                                 ; preds = %"$out_of_gas_4425", %"$have_gas_4410"
  %"$consume_4427" = sub i64 %"$gasrem_4423", %"$gasadd_4422"
  store i64 %"$consume_4427", i64* @_gasrem, align 8
  %"$gasrem_4428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4429" = icmp ugt i64 1, %"$gasrem_4428"
  br i1 %"$gascmp_4429", label %"$out_of_gas_4430", label %"$have_gas_4431"

"$out_of_gas_4430":                               ; preds = %"$have_gas_4426"
  call void @_out_of_gas()
  br label %"$have_gas_4431"

"$have_gas_4431":                                 ; preds = %"$out_of_gas_4430", %"$have_gas_4426"
  %"$consume_4432" = sub i64 %"$gasrem_4428", 1
  store i64 %"$consume_4432", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_4433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4434" = icmp ugt i64 1, %"$gasrem_4433"
  br i1 %"$gascmp_4434", label %"$out_of_gas_4435", label %"$have_gas_4436"

"$out_of_gas_4435":                               ; preds = %"$have_gas_4431"
  call void @_out_of_gas()
  br label %"$have_gas_4436"

"$have_gas_4436":                                 ; preds = %"$out_of_gas_4435", %"$have_gas_4431"
  %"$consume_4437" = sub i64 %"$gasrem_4433", 1
  store i64 %"$consume_4437", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_111" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_4438" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_4439" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4438", 0
  %"$ud-registry.recordMemberOwner_envptr_4440" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4438", 1
  %"$maybeRecord_4441" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_4442" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_4439"(i8* %"$ud-registry.recordMemberOwner_envptr_4440", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4442", %TName_Option_ud-registry.Record* %"$maybeRecord_4441"), !dbg !428
  %"$ud-registry.recordMemberOwner_ret_4443" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4442", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_4443", [20 x i8]* %"$ud-registry.recordMemberOwner_111", align 1, !dbg !428
  %"$$ud-registry.recordMemberOwner_111_4444" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_111", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_111_4444", [20 x i8]* %recordOwner, align 1, !dbg !428
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_4445_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4445_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4445_salloc_load", i64 20)
  %"$indices_buf_4445_salloc" = bitcast i8* %"$indices_buf_4445_salloc_salloc" to [20 x i8]*
  %"$indices_buf_4445" = bitcast [20 x i8]* %"$indices_buf_4445_salloc" to i8*
  %"$recordOwner_4446" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_4447" = getelementptr i8, i8* %"$indices_buf_4445", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4447" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4446", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_4449" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_4450" = call i8* @_fetch_field(i8* %"$execptr_load_4449", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_4448", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_320", i32 1, i8* %"$indices_buf_4445", i32 1), !dbg !429
  %"$maybeOperators_4451" = bitcast i8* %"$maybeOperators_call_4450" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4451", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_4452" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_4452_4453" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4452" to i8*
  %"$_literal_cost_call_4454" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_312", i8* %"$$maybeOperators_4452_4453")
  %"$gasadd_4455" = add i64 %"$_literal_cost_call_4454", 0
  %"$gasadd_4456" = add i64 %"$gasadd_4455", 1
  %"$gasrem_4457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4458" = icmp ugt i64 %"$gasadd_4456", %"$gasrem_4457"
  br i1 %"$gascmp_4458", label %"$out_of_gas_4459", label %"$have_gas_4460"

"$out_of_gas_4459":                               ; preds = %"$have_gas_4436"
  call void @_out_of_gas()
  br label %"$have_gas_4460"

"$have_gas_4460":                                 ; preds = %"$out_of_gas_4459", %"$have_gas_4436"
  %"$consume_4461" = sub i64 %"$gasrem_4457", %"$gasadd_4456"
  store i64 %"$consume_4461", i64* @_gasrem, align 8
  %"$gasrem_4462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4463" = icmp ugt i64 1, %"$gasrem_4462"
  br i1 %"$gascmp_4463", label %"$out_of_gas_4464", label %"$have_gas_4465"

"$out_of_gas_4464":                               ; preds = %"$have_gas_4460"
  call void @_out_of_gas()
  br label %"$have_gas_4465"

"$have_gas_4465":                                 ; preds = %"$out_of_gas_4464", %"$have_gas_4460"
  %"$consume_4466" = sub i64 %"$gasrem_4462", 1
  store i64 %"$consume_4466", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_4467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4468" = icmp ugt i64 1, %"$gasrem_4467"
  br i1 %"$gascmp_4468", label %"$out_of_gas_4469", label %"$have_gas_4470"

"$out_of_gas_4469":                               ; preds = %"$have_gas_4465"
  call void @_out_of_gas()
  br label %"$have_gas_4470"

"$have_gas_4470":                                 ; preds = %"$out_of_gas_4469", %"$have_gas_4465"
  %"$consume_4471" = sub i64 %"$gasrem_4467", 1
  store i64 %"$consume_4471", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_107" = alloca { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.getIsOAO_4472" = load { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_4473" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4472", 0
  %"$ud-registry.getIsOAO_envptr_4474" = extractvalue { { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_4472", 1
  %"$ud-registry.getIsOAO__sender_4475" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_4475", align 1
  %"$ud-registry.getIsOAO_call_4476" = call { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_fptr_4473"(i8* %"$ud-registry.getIsOAO_envptr_4474", [20 x i8]* %"$ud-registry.getIsOAO__sender_4475"), !dbg !430
  store { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.getIsOAO_call_4476", { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_107", align 8, !dbg !430
  %"$ud-registry.getIsOAO_108" = alloca { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_107_4477" = load { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.getIsOAO_107", align 8
  %"$$ud-registry.getIsOAO_107_fptr_4478" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_107_4477", 0
  %"$$ud-registry.getIsOAO_107_envptr_4479" = extractvalue { { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.getIsOAO_107_4477", 1
  %"$$ud-registry.getIsOAO_107_recordOwner_4480" = alloca [20 x i8], align 1
  %"$recordOwner_4481" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_4481", [20 x i8]* %"$$ud-registry.getIsOAO_107_recordOwner_4480", align 1
  %"$$ud-registry.getIsOAO_107_call_4482" = call { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_107_fptr_4478"(i8* %"$$ud-registry.getIsOAO_107_envptr_4479", [20 x i8]* %"$$ud-registry.getIsOAO_107_recordOwner_4480"), !dbg !430
  store { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_107_call_4482", { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_108", align 8, !dbg !430
  %"$ud-registry.getIsOAO_109" = alloca { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, align 8
  %"$$ud-registry.getIsOAO_108_4483" = load { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$ud-registry.getIsOAO_108", align 8
  %"$$ud-registry.getIsOAO_108_fptr_4484" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_108_4483", 0
  %"$$ud-registry.getIsOAO_108_envptr_4485" = extractvalue { { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$ud-registry.getIsOAO_108_4483", 1
  %"$maybeApproved_4486" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$ud-registry.getIsOAO_108_call_4487" = call { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_108_fptr_4484"(i8* %"$$ud-registry.getIsOAO_108_envptr_4485", %TName_Option_ByStr20* %"$maybeApproved_4486"), !dbg !430
  store { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_108_call_4487", { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_109", align 8, !dbg !430
  %"$ud-registry.getIsOAO_110" = alloca %TName_Bool*, align 8
  %"$$ud-registry.getIsOAO_109_4488" = load { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* }* %"$ud-registry.getIsOAO_109", align 8
  %"$$ud-registry.getIsOAO_109_fptr_4489" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_109_4488", 0
  %"$$ud-registry.getIsOAO_109_envptr_4490" = extractvalue { %TName_Bool* (i8*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$ud-registry.getIsOAO_109_4488", 1
  %"$maybeOperators_4491" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$ud-registry.getIsOAO_109_call_4492" = call %TName_Bool* %"$$ud-registry.getIsOAO_109_fptr_4489"(i8* %"$$ud-registry.getIsOAO_109_envptr_4490", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_4491"), !dbg !430
  store %TName_Bool* %"$$ud-registry.getIsOAO_109_call_4492", %TName_Bool** %"$ud-registry.getIsOAO_110", align 8, !dbg !430
  %"$$ud-registry.getIsOAO_110_4493" = load %TName_Bool*, %TName_Bool** %"$ud-registry.getIsOAO_110", align 8
  store %TName_Bool* %"$$ud-registry.getIsOAO_110_4493", %TName_Bool** %isSenderOAO, align 8, !dbg !430
  %"$gasrem_4494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4495" = icmp ugt i64 2, %"$gasrem_4494"
  br i1 %"$gascmp_4495", label %"$out_of_gas_4496", label %"$have_gas_4497"

"$out_of_gas_4496":                               ; preds = %"$have_gas_4470"
  call void @_out_of_gas()
  br label %"$have_gas_4497"

"$have_gas_4497":                                 ; preds = %"$out_of_gas_4496", %"$have_gas_4470"
  %"$consume_4498" = sub i64 %"$gasrem_4494", 2
  store i64 %"$consume_4498", i64* @_gasrem, align 8
  %"$isSenderOAO_4500" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_4501" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_4500", i32 0, i32 0
  %"$isSenderOAO_tag_4502" = load i8, i8* %"$isSenderOAO_tag_4501", align 1
  switch i8 %"$isSenderOAO_tag_4502", label %"$empty_default_4503" [
    i8 0, label %"$True_4504"
    i8 1, label %"$False_4747"
  ], !dbg !431

"$True_4504":                                     ; preds = %"$have_gas_4497"
  %"$isSenderOAO_4505" = bitcast %TName_Bool* %"$isSenderOAO_4500" to %CName_True*
  %"$gasrem_4506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4507" = icmp ugt i64 1, %"$gasrem_4506"
  br i1 %"$gascmp_4507", label %"$out_of_gas_4508", label %"$have_gas_4509"

"$out_of_gas_4508":                               ; preds = %"$True_4504"
  call void @_out_of_gas()
  br label %"$have_gas_4509"

"$have_gas_4509":                                 ; preds = %"$out_of_gas_4508", %"$True_4504"
  %"$consume_4510" = sub i64 %"$gasrem_4506", 1
  store i64 %"$consume_4510", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_4511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4512" = icmp ugt i64 1, %"$gasrem_4511"
  br i1 %"$gascmp_4512", label %"$out_of_gas_4513", label %"$have_gas_4514"

"$out_of_gas_4513":                               ; preds = %"$have_gas_4509"
  call void @_out_of_gas()
  br label %"$have_gas_4514"

"$have_gas_4514":                                 ; preds = %"$out_of_gas_4513", %"$have_gas_4509"
  %"$consume_4515" = sub i64 %"$gasrem_4511", 1
  store i64 %"$consume_4515", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_103" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$ud-registry.parentLabelToNode_4516" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_4517" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4516", 0
  %"$ud-registry.parentLabelToNode_envptr_4518" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4516", 1
  %"$ud-registry.parentLabelToNode_parent_4519" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.parentLabelToNode_parent_4519", align 1
  %"$ud-registry.parentLabelToNode_call_4520" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_4517"(i8* %"$ud-registry.parentLabelToNode_envptr_4518", [32 x i8]* %"$ud-registry.parentLabelToNode_parent_4519"), !dbg !432
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_4520", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_103", align 8, !dbg !432
  %"$ud-registry.parentLabelToNode_104" = alloca [32 x i8], align 1
  %"$$ud-registry.parentLabelToNode_103_4521" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_103", align 8
  %"$$ud-registry.parentLabelToNode_103_fptr_4522" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_103_4521", 0
  %"$$ud-registry.parentLabelToNode_103_envptr_4523" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_103_4521", 1
  %"$$ud-registry.parentLabelToNode_103_retalloca_4524" = alloca [32 x i8], align 1
  call void %"$$ud-registry.parentLabelToNode_103_fptr_4522"(i8* %"$$ud-registry.parentLabelToNode_103_envptr_4523", [32 x i8]* %"$$ud-registry.parentLabelToNode_103_retalloca_4524", %String %label), !dbg !432
  %"$$ud-registry.parentLabelToNode_103_ret_4525" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_103_retalloca_4524", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_103_ret_4525", [32 x i8]* %"$ud-registry.parentLabelToNode_104", align 1, !dbg !432
  %"$$ud-registry.parentLabelToNode_104_4526" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_104", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_104_4526", [32 x i8]* %node, align 1, !dbg !432
  %recordExists = alloca %TName_Bool*, align 8
  %"$indices_buf_4527_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4527_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4527_salloc_load", i64 32)
  %"$indices_buf_4527_salloc" = bitcast i8* %"$indices_buf_4527_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4527" = bitcast [32 x i8]* %"$indices_buf_4527_salloc" to i8*
  %"$node_4528" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4529" = getelementptr i8, i8* %"$indices_buf_4527", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_4529" to [32 x i8]*
  store [32 x i8] %"$node_4528", [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_4531" = load i8*, i8** @_execptr, align 8
  %"$recordExists_call_4532" = call i8* @_fetch_field(i8* %"$execptr_load_4531", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4530", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4527", i32 0), !dbg !435
  %"$recordExists_4533" = bitcast i8* %"$recordExists_call_4532" to %TName_Bool*
  store %TName_Bool* %"$recordExists_4533", %TName_Bool** %recordExists, align 8
  %"$recordExists_4534" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$$recordExists_4534_4535" = bitcast %TName_Bool* %"$recordExists_4534" to i8*
  %"$_literal_cost_call_4536" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318", i8* %"$$recordExists_4534_4535")
  %"$gasadd_4537" = add i64 %"$_literal_cost_call_4536", 0
  %"$gasadd_4538" = add i64 %"$gasadd_4537", 1
  %"$gasrem_4539" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4540" = icmp ugt i64 %"$gasadd_4538", %"$gasrem_4539"
  br i1 %"$gascmp_4540", label %"$out_of_gas_4541", label %"$have_gas_4542"

"$out_of_gas_4541":                               ; preds = %"$have_gas_4514"
  call void @_out_of_gas()
  br label %"$have_gas_4542"

"$have_gas_4542":                                 ; preds = %"$out_of_gas_4541", %"$have_gas_4514"
  %"$consume_4543" = sub i64 %"$gasrem_4539", %"$gasadd_4538"
  store i64 %"$consume_4543", i64* @_gasrem, align 8
  %"$gasrem_4544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4545" = icmp ugt i64 2, %"$gasrem_4544"
  br i1 %"$gascmp_4545", label %"$out_of_gas_4546", label %"$have_gas_4547"

"$out_of_gas_4546":                               ; preds = %"$have_gas_4542"
  call void @_out_of_gas()
  br label %"$have_gas_4547"

"$have_gas_4547":                                 ; preds = %"$out_of_gas_4546", %"$have_gas_4542"
  %"$consume_4548" = sub i64 %"$gasrem_4544", 2
  store i64 %"$consume_4548", i64* @_gasrem, align 8
  %"$recordExists_4550" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$recordExists_tag_4551" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$recordExists_4550", i32 0, i32 0
  %"$recordExists_tag_4552" = load i8, i8* %"$recordExists_tag_4551", align 1
  switch i8 %"$recordExists_tag_4552", label %"$default_4553" [
    i8 1, label %"$False_4554"
  ], !dbg !436

"$False_4554":                                    ; preds = %"$have_gas_4547"
  %"$recordExists_4555" = bitcast %TName_Bool* %"$recordExists_4550" to %CName_False*
  %"$gasrem_4556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4557" = icmp ugt i64 1, %"$gasrem_4556"
  br i1 %"$gascmp_4557", label %"$out_of_gas_4558", label %"$have_gas_4559"

"$out_of_gas_4558":                               ; preds = %"$False_4554"
  call void @_out_of_gas()
  br label %"$have_gas_4559"

"$have_gas_4559":                                 ; preds = %"$out_of_gas_4558", %"$False_4554"
  %"$consume_4560" = sub i64 %"$gasrem_4556", 1
  store i64 %"$consume_4560", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_4561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4562" = icmp ugt i64 1, %"$gasrem_4561"
  br i1 %"$gascmp_4562", label %"$out_of_gas_4563", label %"$have_gas_4564"

"$out_of_gas_4563":                               ; preds = %"$have_gas_4559"
  call void @_out_of_gas()
  br label %"$have_gas_4564"

"$have_gas_4564":                                 ; preds = %"$out_of_gas_4563", %"$have_gas_4559"
  %"$consume_4565" = sub i64 %"$gasrem_4561", 1
  store i64 %"$consume_4565", i64* @_gasrem, align 8
  %"$ud-registry.eNewDomain_101" = alloca { i8* (i8*, %String)*, i8* }, align 8
  %"$ud-registry.eNewDomain_4566" = load { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain, align 8
  %"$ud-registry.eNewDomain_fptr_4567" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_4566", 0
  %"$ud-registry.eNewDomain_envptr_4568" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_4566", 1
  %"$ud-registry.eNewDomain_parent_4569" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.eNewDomain_parent_4569", align 1
  %"$ud-registry.eNewDomain_call_4570" = call { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_fptr_4567"(i8* %"$ud-registry.eNewDomain_envptr_4568", [32 x i8]* %"$ud-registry.eNewDomain_parent_4569"), !dbg !437
  store { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_call_4570", { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_101", align 8, !dbg !437
  %"$ud-registry.eNewDomain_102" = alloca i8*, align 8
  %"$$ud-registry.eNewDomain_101_4571" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_101", align 8
  %"$$ud-registry.eNewDomain_101_fptr_4572" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_101_4571", 0
  %"$$ud-registry.eNewDomain_101_envptr_4573" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_101_4571", 1
  %"$$ud-registry.eNewDomain_101_call_4574" = call i8* %"$$ud-registry.eNewDomain_101_fptr_4572"(i8* %"$$ud-registry.eNewDomain_101_envptr_4573", %String %label), !dbg !437
  store i8* %"$$ud-registry.eNewDomain_101_call_4574", i8** %"$ud-registry.eNewDomain_102", align 8, !dbg !437
  %"$$ud-registry.eNewDomain_102_4575" = load i8*, i8** %"$ud-registry.eNewDomain_102", align 8
  store i8* %"$$ud-registry.eNewDomain_102_4575", i8** %e, align 8, !dbg !437
  %"$e_4576" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_4578" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4576")
  %"$gasrem_4579" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4580" = icmp ugt i64 %"$_literal_cost_call_4578", %"$gasrem_4579"
  br i1 %"$gascmp_4580", label %"$out_of_gas_4581", label %"$have_gas_4582"

"$out_of_gas_4581":                               ; preds = %"$have_gas_4564"
  call void @_out_of_gas()
  br label %"$have_gas_4582"

"$have_gas_4582":                                 ; preds = %"$out_of_gas_4581", %"$have_gas_4564"
  %"$consume_4583" = sub i64 %"$gasrem_4579", %"$_literal_cost_call_4578"
  store i64 %"$consume_4583", i64* @_gasrem, align 8
  %"$execptr_load_4584" = load i8*, i8** @_execptr, align 8
  %"$e_4585" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_4584", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4585"), !dbg !440
  br label %"$matchsucc_4549"

"$default_4553":                                  ; preds = %"$have_gas_4547"
  br label %"$joinp_4"

"$joinp_4":                                       ; preds = %"$default_4553"
  br label %"$matchsucc_4549"

"$matchsucc_4549":                                ; preds = %"$have_gas_4582", %"$joinp_4"
  %"$gasrem_4586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4587" = icmp ugt i64 1, %"$gasrem_4586"
  br i1 %"$gascmp_4587", label %"$out_of_gas_4588", label %"$have_gas_4589"

"$out_of_gas_4588":                               ; preds = %"$matchsucc_4549"
  call void @_out_of_gas()
  br label %"$have_gas_4589"

"$have_gas_4589":                                 ; preds = %"$out_of_gas_4588", %"$matchsucc_4549"
  %"$consume_4590" = sub i64 %"$gasrem_4586", 1
  store i64 %"$consume_4590", i64* @_gasrem, align 8
  %"$indices_buf_4591_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4591_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4591_salloc_load", i64 32)
  %"$indices_buf_4591_salloc" = bitcast i8* %"$indices_buf_4591_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4591" = bitcast [32 x i8]* %"$indices_buf_4591_salloc" to i8*
  %"$node_4592" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4593" = getelementptr i8, i8* %"$indices_buf_4591", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4593" to [32 x i8]*
  store [32 x i8] %"$node_4592", [32 x i8]* %indices_cast4, align 1
  %"$execptr_load_4594" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_4594", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4595", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_4591", i8* null), !dbg !441
  %"$gasrem_4596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4597" = icmp ugt i64 1, %"$gasrem_4596"
  br i1 %"$gascmp_4597", label %"$out_of_gas_4598", label %"$have_gas_4599"

"$out_of_gas_4598":                               ; preds = %"$have_gas_4589"
  call void @_out_of_gas()
  br label %"$have_gas_4599"

"$have_gas_4599":                                 ; preds = %"$out_of_gas_4598", %"$have_gas_4589"
  %"$consume_4600" = sub i64 %"$gasrem_4596", 1
  store i64 %"$consume_4600", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_4601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4602" = icmp ugt i64 1, %"$gasrem_4601"
  br i1 %"$gascmp_4602", label %"$out_of_gas_4603", label %"$have_gas_4604"

"$out_of_gas_4603":                               ; preds = %"$have_gas_4599"
  call void @_out_of_gas()
  br label %"$have_gas_4604"

"$have_gas_4604":                                 ; preds = %"$out_of_gas_4603", %"$have_gas_4599"
  %"$consume_4605" = sub i64 %"$gasrem_4601", 1
  store i64 %"$consume_4605", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_4606" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_4607_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4607_salloc" = call i8* @_salloc(i8* %"$adtval_4607_load", i64 41)
  %"$adtval_4607" = bitcast i8* %"$adtval_4607_salloc" to %CName_ud-registry.Record*
  %"$adtgep_4608" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4607", i32 0, i32 0
  store i8 0, i8* %"$adtgep_4608", align 1
  %"$adtgep_4609" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4607", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_4609", align 1
  %"$adtgep_4610" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4607", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_4606", [20 x i8]* %"$adtgep_4610", align 1
  %"$adtptr_4611" = bitcast %CName_ud-registry.Record* %"$adtval_4607" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_4611", %TName_ud-registry.Record** %newRecord, align 8, !dbg !442
  %"$newRecord_4612" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_4612_4613" = bitcast %TName_ud-registry.Record* %"$newRecord_4612" to i8*
  %"$_literal_cost_call_4614" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_4612_4613")
  %"$gasadd_4615" = add i64 %"$_literal_cost_call_4614", 1
  %"$gasrem_4616" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4617" = icmp ugt i64 %"$gasadd_4615", %"$gasrem_4616"
  br i1 %"$gascmp_4617", label %"$out_of_gas_4618", label %"$have_gas_4619"

"$out_of_gas_4618":                               ; preds = %"$have_gas_4604"
  call void @_out_of_gas()
  br label %"$have_gas_4619"

"$have_gas_4619":                                 ; preds = %"$out_of_gas_4618", %"$have_gas_4604"
  %"$consume_4620" = sub i64 %"$gasrem_4616", %"$gasadd_4615"
  store i64 %"$consume_4620", i64* @_gasrem, align 8
  %"$indices_buf_4621_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4621_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4621_salloc_load", i64 32)
  %"$indices_buf_4621_salloc" = bitcast i8* %"$indices_buf_4621_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4621" = bitcast [32 x i8]* %"$indices_buf_4621_salloc" to i8*
  %"$node_4622" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4623" = getelementptr i8, i8* %"$indices_buf_4621", i32 0
  %indices_cast5 = bitcast i8* %"$indices_gep_4623" to [32 x i8]*
  store [32 x i8] %"$node_4622", [32 x i8]* %indices_cast5, align 1
  %"$execptr_load_4624" = load i8*, i8** @_execptr, align 8
  %"$newRecord_4626" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_4627" = bitcast %TName_ud-registry.Record* %"$newRecord_4626" to i8*
  call void @_update_field(i8* %"$execptr_load_4624", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4625", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4621", i8* %"$update_value_4627"), !dbg !443
  %"$gasrem_4628" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4629" = icmp ugt i64 1, %"$gasrem_4628"
  br i1 %"$gascmp_4629", label %"$out_of_gas_4630", label %"$have_gas_4631"

"$out_of_gas_4630":                               ; preds = %"$have_gas_4619"
  call void @_out_of_gas()
  br label %"$have_gas_4631"

"$have_gas_4631":                                 ; preds = %"$out_of_gas_4630", %"$have_gas_4619"
  %"$consume_4632" = sub i64 %"$gasrem_4628", 1
  store i64 %"$consume_4632", i64* @_gasrem, align 8
  %e6 = alloca i8*, align 8
  %"$gasrem_4633" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4634" = icmp ugt i64 1, %"$gasrem_4633"
  br i1 %"$gascmp_4634", label %"$out_of_gas_4635", label %"$have_gas_4636"

"$out_of_gas_4635":                               ; preds = %"$have_gas_4631"
  call void @_out_of_gas()
  br label %"$have_gas_4636"

"$have_gas_4636":                                 ; preds = %"$out_of_gas_4635", %"$have_gas_4631"
  %"$consume_4637" = sub i64 %"$gasrem_4633", 1
  store i64 %"$consume_4637", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_98" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_4638" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_4639" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4638", 0
  %"$ud-registry.eConfigured_envptr_4640" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_4638", 1
  %"$ud-registry.eConfigured_node_4641" = alloca [32 x i8], align 1
  %"$node_4642" = load [32 x i8], [32 x i8]* %node, align 1
  store [32 x i8] %"$node_4642", [32 x i8]* %"$ud-registry.eConfigured_node_4641", align 1
  %"$ud-registry.eConfigured_call_4643" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_4639"(i8* %"$ud-registry.eConfigured_envptr_4640", [32 x i8]* %"$ud-registry.eConfigured_node_4641"), !dbg !444
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_4643", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_98", align 8, !dbg !444
  %"$ud-registry.eConfigured_99" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_98_4644" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_98", align 8
  %"$$ud-registry.eConfigured_98_fptr_4645" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_98_4644", 0
  %"$$ud-registry.eConfigured_98_envptr_4646" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_98_4644", 1
  %"$$ud-registry.eConfigured_98_owner_4647" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_98_owner_4647", align 1
  %"$$ud-registry.eConfigured_98_call_4648" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_98_fptr_4645"(i8* %"$$ud-registry.eConfigured_98_envptr_4646", [20 x i8]* %"$$ud-registry.eConfigured_98_owner_4647"), !dbg !444
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_98_call_4648", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_99", align 8, !dbg !444
  %"$ud-registry.eConfigured_100" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_99_4649" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_99", align 8
  %"$$ud-registry.eConfigured_99_fptr_4650" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_99_4649", 0
  %"$$ud-registry.eConfigured_99_envptr_4651" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_99_4649", 1
  %"$$ud-registry.eConfigured_99_ud-registry.zeroByStr20_4652" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_4653" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_4653", [20 x i8]* %"$$ud-registry.eConfigured_99_ud-registry.zeroByStr20_4652", align 1
  %"$$ud-registry.eConfigured_99_call_4654" = call i8* %"$$ud-registry.eConfigured_99_fptr_4650"(i8* %"$$ud-registry.eConfigured_99_envptr_4651", [20 x i8]* %"$$ud-registry.eConfigured_99_ud-registry.zeroByStr20_4652"), !dbg !444
  store i8* %"$$ud-registry.eConfigured_99_call_4654", i8** %"$ud-registry.eConfigured_100", align 8, !dbg !444
  %"$$ud-registry.eConfigured_100_4655" = load i8*, i8** %"$ud-registry.eConfigured_100", align 8
  store i8* %"$$ud-registry.eConfigured_100_4655", i8** %e6, align 8, !dbg !444
  %"$e_4656" = load i8*, i8** %e6, align 8
  %"$_literal_cost_call_4658" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4656")
  %"$gasrem_4659" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4660" = icmp ugt i64 %"$_literal_cost_call_4658", %"$gasrem_4659"
  br i1 %"$gascmp_4660", label %"$out_of_gas_4661", label %"$have_gas_4662"

"$out_of_gas_4661":                               ; preds = %"$have_gas_4636"
  call void @_out_of_gas()
  br label %"$have_gas_4662"

"$have_gas_4662":                                 ; preds = %"$out_of_gas_4661", %"$have_gas_4636"
  %"$consume_4663" = sub i64 %"$gasrem_4659", %"$_literal_cost_call_4658"
  store i64 %"$consume_4663", i64* @_gasrem, align 8
  %"$execptr_load_4664" = load i8*, i8** @_execptr, align 8
  %"$e_4665" = load i8*, i8** %e6, align 8
  call void @_event(i8* %"$execptr_load_4664", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4665"), !dbg !445
  %"$gasrem_4666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4667" = icmp ugt i64 1, %"$gasrem_4666"
  br i1 %"$gascmp_4667", label %"$out_of_gas_4668", label %"$have_gas_4669"

"$out_of_gas_4668":                               ; preds = %"$have_gas_4662"
  call void @_out_of_gas()
  br label %"$have_gas_4669"

"$have_gas_4669":                                 ; preds = %"$out_of_gas_4668", %"$have_gas_4662"
  %"$consume_4670" = sub i64 %"$gasrem_4666", 1
  store i64 %"$consume_4670", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_4671" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4672" = icmp ugt i64 1, %"$gasrem_4671"
  br i1 %"$gascmp_4672", label %"$out_of_gas_4673", label %"$have_gas_4674"

"$out_of_gas_4673":                               ; preds = %"$have_gas_4669"
  call void @_out_of_gas()
  br label %"$have_gas_4674"

"$have_gas_4674":                                 ; preds = %"$out_of_gas_4673", %"$have_gas_4669"
  %"$consume_4675" = sub i64 %"$gasrem_4671", 1
  store i64 %"$consume_4675", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_4676" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4677" = icmp ugt i64 1, %"$gasrem_4676"
  br i1 %"$gascmp_4677", label %"$out_of_gas_4678", label %"$have_gas_4679"

"$out_of_gas_4678":                               ; preds = %"$have_gas_4674"
  call void @_out_of_gas()
  br label %"$have_gas_4679"

"$have_gas_4679":                                 ; preds = %"$out_of_gas_4678", %"$have_gas_4674"
  %"$consume_4680" = sub i64 %"$gasrem_4676", 1
  store i64 %"$consume_4680", i64* @_gasrem, align 8
  %"$msgobj_4681_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4681_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4681_salloc_load", i64 265)
  %"$msgobj_4681_salloc" = bitcast i8* %"$msgobj_4681_salloc_salloc" to [265 x i8]*
  %"$msgobj_4681" = bitcast [265 x i8]* %"$msgobj_4681_salloc" to i8*
  store i8 6, i8* %"$msgobj_4681", align 1
  %"$msgobj_fname_4683" = getelementptr i8, i8* %"$msgobj_4681", i32 1
  %"$msgobj_fname_4684" = bitcast i8* %"$msgobj_fname_4683" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4682", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4684", align 8
  %"$msgobj_td_4685" = getelementptr i8, i8* %"$msgobj_4681", i32 17
  %"$msgobj_td_4686" = bitcast i8* %"$msgobj_td_4685" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4686", align 8
  %"$msgobj_v_4688" = getelementptr i8, i8* %"$msgobj_4681", i32 25
  %"$msgobj_v_4689" = bitcast i8* %"$msgobj_v_4688" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_4687", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_4689", align 8
  %"$msgobj_fname_4691" = getelementptr i8, i8* %"$msgobj_4681", i32 41
  %"$msgobj_fname_4692" = bitcast i8* %"$msgobj_fname_4691" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_4690", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_4692", align 8
  %"$msgobj_td_4693" = getelementptr i8, i8* %"$msgobj_4681", i32 57
  %"$msgobj_td_4694" = bitcast i8* %"$msgobj_td_4693" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_4694", align 8
  %"$msgobj_v_4695" = getelementptr i8, i8* %"$msgobj_4681", i32 65
  %"$msgobj_v_4696" = bitcast i8* %"$msgobj_v_4695" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_4696", align 1
  %"$msgobj_fname_4698" = getelementptr i8, i8* %"$msgobj_4681", i32 97
  %"$msgobj_fname_4699" = bitcast i8* %"$msgobj_fname_4698" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4697", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4699", align 8
  %"$msgobj_td_4700" = getelementptr i8, i8* %"$msgobj_4681", i32 113
  %"$msgobj_td_4701" = bitcast i8* %"$msgobj_td_4700" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4701", align 8
  %"$msgobj_v_4702" = getelementptr i8, i8* %"$msgobj_4681", i32 121
  %"$msgobj_v_4703" = bitcast i8* %"$msgobj_v_4702" to %String*
  store %String %label, %String* %"$msgobj_v_4703", align 8
  %"$msgobj_fname_4705" = getelementptr i8, i8* %"$msgobj_4681", i32 137
  %"$msgobj_fname_4706" = bitcast i8* %"$msgobj_fname_4705" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4704", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4706", align 8
  %"$msgobj_td_4707" = getelementptr i8, i8* %"$msgobj_4681", i32 153
  %"$msgobj_td_4708" = bitcast i8* %"$msgobj_td_4707" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4708", align 8
  %"$msgobj_v_4709" = getelementptr i8, i8* %"$msgobj_4681", i32 161
  %"$msgobj_v_4710" = bitcast i8* %"$msgobj_v_4709" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4710", align 1
  %"$msgobj_fname_4712" = getelementptr i8, i8* %"$msgobj_4681", i32 181
  %"$msgobj_fname_4713" = bitcast i8* %"$msgobj_fname_4712" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4711", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4713", align 8
  %"$msgobj_td_4714" = getelementptr i8, i8* %"$msgobj_4681", i32 197
  %"$msgobj_td_4715" = bitcast i8* %"$msgobj_td_4714" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_4715", align 8
  %"$msgobj_v_4716" = getelementptr i8, i8* %"$msgobj_4681", i32 205
  %"$msgobj_v_4717" = bitcast i8* %"$msgobj_v_4716" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4717", align 8
  %"$msgobj_fname_4719" = getelementptr i8, i8* %"$msgobj_4681", i32 221
  %"$msgobj_fname_4720" = bitcast i8* %"$msgobj_fname_4719" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4718", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4720", align 8
  %"$msgobj_td_4721" = getelementptr i8, i8* %"$msgobj_4681", i32 237
  %"$msgobj_td_4722" = bitcast i8* %"$msgobj_td_4721" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_4722", align 8
  %"$msgobj_v_4723" = getelementptr i8, i8* %"$msgobj_4681", i32 245
  %"$msgobj_v_4724" = bitcast i8* %"$msgobj_v_4723" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4724", align 1
  store i8* %"$msgobj_4681", i8** %m, align 8, !dbg !446
  %"$gasrem_4726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4727" = icmp ugt i64 1, %"$gasrem_4726"
  br i1 %"$gascmp_4727", label %"$out_of_gas_4728", label %"$have_gas_4729"

"$out_of_gas_4728":                               ; preds = %"$have_gas_4679"
  call void @_out_of_gas()
  br label %"$have_gas_4729"

"$have_gas_4729":                                 ; preds = %"$out_of_gas_4728", %"$have_gas_4679"
  %"$consume_4730" = sub i64 %"$gasrem_4726", 1
  store i64 %"$consume_4730", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_97" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4731" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4732" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4731", 0
  %"$ud-registry.oneMsg_envptr_4733" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4731", 1
  %"$m_4734" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_4735" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4732"(i8* %"$ud-registry.oneMsg_envptr_4733", i8* %"$m_4734"), !dbg !447
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4735", %TName_List_Message** %"$ud-registry.oneMsg_97", align 8, !dbg !447
  %"$$ud-registry.oneMsg_97_4736" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_97", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_97_4736", %TName_List_Message** %msgs, align 8, !dbg !447
  %"$msgs_4737" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_4737_4738" = bitcast %TName_List_Message* %"$msgs_4737" to i8*
  %"$_literal_cost_call_4739" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_4737_4738")
  %"$gasrem_4740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4741" = icmp ugt i64 %"$_literal_cost_call_4739", %"$gasrem_4740"
  br i1 %"$gascmp_4741", label %"$out_of_gas_4742", label %"$have_gas_4743"

"$out_of_gas_4742":                               ; preds = %"$have_gas_4729"
  call void @_out_of_gas()
  br label %"$have_gas_4743"

"$have_gas_4743":                                 ; preds = %"$out_of_gas_4742", %"$have_gas_4729"
  %"$consume_4744" = sub i64 %"$gasrem_4740", %"$_literal_cost_call_4739"
  store i64 %"$consume_4744", i64* @_gasrem, align 8
  %"$execptr_load_4745" = load i8*, i8** @_execptr, align 8
  %"$msgs_4746" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_4745", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_4746"), !dbg !448
  br label %"$matchsucc_4499"

"$False_4747":                                    ; preds = %"$have_gas_4497"
  %"$isSenderOAO_4748" = bitcast %TName_Bool* %"$isSenderOAO_4500" to %CName_False*
  %"$gasrem_4749" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4750" = icmp ugt i64 1, %"$gasrem_4749"
  br i1 %"$gascmp_4750", label %"$out_of_gas_4751", label %"$have_gas_4752"

"$out_of_gas_4751":                               ; preds = %"$False_4747"
  call void @_out_of_gas()
  br label %"$have_gas_4752"

"$have_gas_4752":                                 ; preds = %"$out_of_gas_4751", %"$False_4747"
  %"$consume_4753" = sub i64 %"$gasrem_4749", 1
  store i64 %"$consume_4753", i64* @_gasrem, align 8
  %e7 = alloca i8*, align 8
  %"$gasrem_4754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4755" = icmp ugt i64 1, %"$gasrem_4754"
  br i1 %"$gascmp_4755", label %"$out_of_gas_4756", label %"$have_gas_4757"

"$out_of_gas_4756":                               ; preds = %"$have_gas_4752"
  call void @_out_of_gas()
  br label %"$have_gas_4757"

"$have_gas_4757":                                 ; preds = %"$out_of_gas_4756", %"$have_gas_4752"
  %"$consume_4758" = sub i64 %"$gasrem_4754", 1
  store i64 %"$consume_4758", i64* @_gasrem, align 8
  %m8 = alloca %String, align 8
  %"$gasrem_4759" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4760" = icmp ugt i64 1, %"$gasrem_4759"
  br i1 %"$gascmp_4760", label %"$out_of_gas_4761", label %"$have_gas_4762"

"$out_of_gas_4761":                               ; preds = %"$have_gas_4757"
  call void @_out_of_gas()
  br label %"$have_gas_4762"

"$have_gas_4762":                                 ; preds = %"$out_of_gas_4761", %"$have_gas_4757"
  %"$consume_4763" = sub i64 %"$gasrem_4759", 1
  store i64 %"$consume_4763", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"$stringlit_4764", i32 0, i32 0), i32 45 }, %String* %m8, align 8, !dbg !449
  %"$gasrem_4765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4766" = icmp ugt i64 1, %"$gasrem_4765"
  br i1 %"$gascmp_4766", label %"$out_of_gas_4767", label %"$have_gas_4768"

"$out_of_gas_4767":                               ; preds = %"$have_gas_4762"
  call void @_out_of_gas()
  br label %"$have_gas_4768"

"$have_gas_4768":                                 ; preds = %"$out_of_gas_4767", %"$have_gas_4762"
  %"$consume_4769" = sub i64 %"$gasrem_4765", 1
  store i64 %"$consume_4769", i64* @_gasrem, align 8
  %"$ud-registry.eError_106" = alloca i8*, align 8
  %"$ud-registry.eError_4770" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_4771" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4770", 0
  %"$ud-registry.eError_envptr_4772" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4770", 1
  %"$m_4773" = load %String, %String* %m8, align 8
  %"$ud-registry.eError_call_4774" = call i8* %"$ud-registry.eError_fptr_4771"(i8* %"$ud-registry.eError_envptr_4772", %String %"$m_4773"), !dbg !451
  store i8* %"$ud-registry.eError_call_4774", i8** %"$ud-registry.eError_106", align 8, !dbg !451
  %"$$ud-registry.eError_106_4775" = load i8*, i8** %"$ud-registry.eError_106", align 8
  store i8* %"$$ud-registry.eError_106_4775", i8** %e7, align 8, !dbg !451
  %"$e_4776" = load i8*, i8** %e7, align 8
  %"$_literal_cost_call_4778" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4776")
  %"$gasrem_4779" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4780" = icmp ugt i64 %"$_literal_cost_call_4778", %"$gasrem_4779"
  br i1 %"$gascmp_4780", label %"$out_of_gas_4781", label %"$have_gas_4782"

"$out_of_gas_4781":                               ; preds = %"$have_gas_4768"
  call void @_out_of_gas()
  br label %"$have_gas_4782"

"$have_gas_4782":                                 ; preds = %"$out_of_gas_4781", %"$have_gas_4768"
  %"$consume_4783" = sub i64 %"$gasrem_4779", %"$_literal_cost_call_4778"
  store i64 %"$consume_4783", i64* @_gasrem, align 8
  %"$execptr_load_4784" = load i8*, i8** @_execptr, align 8
  %"$e_4785" = load i8*, i8** %e7, align 8
  call void @_event(i8* %"$execptr_load_4784", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_4785"), !dbg !452
  %"$gasrem_4786" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4787" = icmp ugt i64 1, %"$gasrem_4786"
  br i1 %"$gascmp_4787", label %"$out_of_gas_4788", label %"$have_gas_4789"

"$out_of_gas_4788":                               ; preds = %"$have_gas_4782"
  call void @_out_of_gas()
  br label %"$have_gas_4789"

"$have_gas_4789":                                 ; preds = %"$out_of_gas_4788", %"$have_gas_4782"
  %"$consume_4790" = sub i64 %"$gasrem_4786", 1
  store i64 %"$consume_4790", i64* @_gasrem, align 8
  %msgs9 = alloca %TName_List_Message*, align 8
  %"$gasrem_4791" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4792" = icmp ugt i64 1, %"$gasrem_4791"
  br i1 %"$gascmp_4792", label %"$out_of_gas_4793", label %"$have_gas_4794"

"$out_of_gas_4793":                               ; preds = %"$have_gas_4789"
  call void @_out_of_gas()
  br label %"$have_gas_4794"

"$have_gas_4794":                                 ; preds = %"$out_of_gas_4793", %"$have_gas_4789"
  %"$consume_4795" = sub i64 %"$gasrem_4791", 1
  store i64 %"$consume_4795", i64* @_gasrem, align 8
  %m10 = alloca i8*, align 8
  %"$gasrem_4796" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4797" = icmp ugt i64 1, %"$gasrem_4796"
  br i1 %"$gascmp_4797", label %"$out_of_gas_4798", label %"$have_gas_4799"

"$out_of_gas_4798":                               ; preds = %"$have_gas_4794"
  call void @_out_of_gas()
  br label %"$have_gas_4799"

"$have_gas_4799":                                 ; preds = %"$out_of_gas_4798", %"$have_gas_4794"
  %"$consume_4800" = sub i64 %"$gasrem_4796", 1
  store i64 %"$consume_4800", i64* @_gasrem, align 8
  %"$msgobj_4801_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4801_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4801_salloc_load", i64 265)
  %"$msgobj_4801_salloc" = bitcast i8* %"$msgobj_4801_salloc_salloc" to [265 x i8]*
  %"$msgobj_4801" = bitcast [265 x i8]* %"$msgobj_4801_salloc" to i8*
  store i8 6, i8* %"$msgobj_4801", align 1
  %"$msgobj_fname_4803" = getelementptr i8, i8* %"$msgobj_4801", i32 1
  %"$msgobj_fname_4804" = bitcast i8* %"$msgobj_fname_4803" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4802", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4804", align 8
  %"$msgobj_td_4805" = getelementptr i8, i8* %"$msgobj_4801", i32 17
  %"$msgobj_td_4806" = bitcast i8* %"$msgobj_td_4805" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4806", align 8
  %"$msgobj_v_4808" = getelementptr i8, i8* %"$msgobj_4801", i32 25
  %"$msgobj_v_4809" = bitcast i8* %"$msgobj_v_4808" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_4807", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_4809", align 8
  %"$msgobj_fname_4811" = getelementptr i8, i8* %"$msgobj_4801", i32 41
  %"$msgobj_fname_4812" = bitcast i8* %"$msgobj_fname_4811" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_4810", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_4812", align 8
  %"$msgobj_td_4813" = getelementptr i8, i8* %"$msgobj_4801", i32 57
  %"$msgobj_td_4814" = bitcast i8* %"$msgobj_td_4813" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_4814", align 8
  %"$msgobj_v_4815" = getelementptr i8, i8* %"$msgobj_4801", i32 65
  %"$msgobj_v_4816" = bitcast i8* %"$msgobj_v_4815" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_4816", align 1
  %"$msgobj_fname_4818" = getelementptr i8, i8* %"$msgobj_4801", i32 97
  %"$msgobj_fname_4819" = bitcast i8* %"$msgobj_fname_4818" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4817", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4819", align 8
  %"$msgobj_td_4820" = getelementptr i8, i8* %"$msgobj_4801", i32 113
  %"$msgobj_td_4821" = bitcast i8* %"$msgobj_td_4820" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_4821", align 8
  %"$msgobj_v_4822" = getelementptr i8, i8* %"$msgobj_4801", i32 121
  %"$msgobj_v_4823" = bitcast i8* %"$msgobj_v_4822" to %String*
  store %String %label, %String* %"$msgobj_v_4823", align 8
  %"$msgobj_fname_4825" = getelementptr i8, i8* %"$msgobj_4801", i32 137
  %"$msgobj_fname_4826" = bitcast i8* %"$msgobj_fname_4825" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4824", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4826", align 8
  %"$msgobj_td_4827" = getelementptr i8, i8* %"$msgobj_4801", i32 153
  %"$msgobj_td_4828" = bitcast i8* %"$msgobj_td_4827" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_4828", align 8
  %"$recordOwner_4829" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$msgobj_v_4830" = getelementptr i8, i8* %"$msgobj_4801", i32 161
  %"$msgobj_v_4831" = bitcast i8* %"$msgobj_v_4830" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4829", [20 x i8]* %"$msgobj_v_4831", align 1
  %"$msgobj_fname_4833" = getelementptr i8, i8* %"$msgobj_4801", i32 181
  %"$msgobj_fname_4834" = bitcast i8* %"$msgobj_fname_4833" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4832", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4834", align 8
  %"$msgobj_td_4835" = getelementptr i8, i8* %"$msgobj_4801", i32 197
  %"$msgobj_td_4836" = bitcast i8* %"$msgobj_td_4835" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_4836", align 8
  %"$msgobj_v_4837" = getelementptr i8, i8* %"$msgobj_4801", i32 205
  %"$msgobj_v_4838" = bitcast i8* %"$msgobj_v_4837" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4838", align 8
  %"$msgobj_fname_4840" = getelementptr i8, i8* %"$msgobj_4801", i32 221
  %"$msgobj_fname_4841" = bitcast i8* %"$msgobj_fname_4840" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4839", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4841", align 8
  %"$msgobj_td_4842" = getelementptr i8, i8* %"$msgobj_4801", i32 237
  %"$msgobj_td_4843" = bitcast i8* %"$msgobj_td_4842" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_4843", align 8
  %"$msgobj_v_4844" = getelementptr i8, i8* %"$msgobj_4801", i32 245
  %"$msgobj_v_4845" = bitcast i8* %"$msgobj_v_4844" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4845", align 1
  store i8* %"$msgobj_4801", i8** %m10, align 8, !dbg !453
  %"$gasrem_4847" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4848" = icmp ugt i64 1, %"$gasrem_4847"
  br i1 %"$gascmp_4848", label %"$out_of_gas_4849", label %"$have_gas_4850"

"$out_of_gas_4849":                               ; preds = %"$have_gas_4799"
  call void @_out_of_gas()
  br label %"$have_gas_4850"

"$have_gas_4850":                                 ; preds = %"$out_of_gas_4849", %"$have_gas_4799"
  %"$consume_4851" = sub i64 %"$gasrem_4847", 1
  store i64 %"$consume_4851", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_105" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4852" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4853" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4852", 0
  %"$ud-registry.oneMsg_envptr_4854" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4852", 1
  %"$m_4855" = load i8*, i8** %m10, align 8
  %"$ud-registry.oneMsg_call_4856" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4853"(i8* %"$ud-registry.oneMsg_envptr_4854", i8* %"$m_4855"), !dbg !454
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4856", %TName_List_Message** %"$ud-registry.oneMsg_105", align 8, !dbg !454
  %"$$ud-registry.oneMsg_105_4857" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_105", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_105_4857", %TName_List_Message** %msgs9, align 8, !dbg !454
  %"$msgs_4858" = load %TName_List_Message*, %TName_List_Message** %msgs9, align 8
  %"$$msgs_4858_4859" = bitcast %TName_List_Message* %"$msgs_4858" to i8*
  %"$_literal_cost_call_4860" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_4858_4859")
  %"$gasrem_4861" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4862" = icmp ugt i64 %"$_literal_cost_call_4860", %"$gasrem_4861"
  br i1 %"$gascmp_4862", label %"$out_of_gas_4863", label %"$have_gas_4864"

"$out_of_gas_4863":                               ; preds = %"$have_gas_4850"
  call void @_out_of_gas()
  br label %"$have_gas_4864"

"$have_gas_4864":                                 ; preds = %"$out_of_gas_4863", %"$have_gas_4850"
  %"$consume_4865" = sub i64 %"$gasrem_4861", %"$_literal_cost_call_4860"
  store i64 %"$consume_4865", i64* @_gasrem, align 8
  %"$execptr_load_4866" = load i8*, i8** @_execptr, align 8
  %"$msgs_4867" = load %TName_List_Message*, %TName_List_Message** %msgs9, align 8
  call void @_send(i8* %"$execptr_load_4866", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_4867"), !dbg !455
  br label %"$matchsucc_4499"

"$empty_default_4503":                            ; preds = %"$have_gas_4497"
  br label %"$matchsucc_4499"

"$matchsucc_4499":                                ; preds = %"$have_gas_4864", %"$have_gas_4743", %"$empty_default_4503"
  ret void
}

define void @assign(i8* %0) !dbg !456 {
entry:
  %"$_amount_4869" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4870" = bitcast i8* %"$_amount_4869" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4870", align 8
  %"$_origin_4871" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4872" = bitcast i8* %"$_origin_4871" to [20 x i8]*
  %"$_sender_4873" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4874" = bitcast i8* %"$_sender_4873" to [20 x i8]*
  %"$parent_4875" = getelementptr i8, i8* %0, i32 56
  %"$parent_4876" = bitcast i8* %"$parent_4875" to [32 x i8]*
  %"$label_4877" = getelementptr i8, i8* %0, i32 88
  %"$label_4878" = bitcast i8* %"$label_4877" to %String*
  %label = load %String, %String* %"$label_4878", align 8
  %"$owner_4879" = getelementptr i8, i8* %0, i32 104
  %"$owner_4880" = bitcast i8* %"$owner_4879" to [20 x i8]*
  call void @"$assign_4391"(%Uint128 %_amount, [20 x i8]* %"$_origin_4872", [20 x i8]* %"$_sender_4874", [32 x i8]* %"$parent_4876", %String %label, [20 x i8]* %"$owner_4880"), !dbg !457
  ret void
}

define internal void @"$bestow_4881"(%Uint128 %_amount, [20 x i8]* %"$_origin_4882", [20 x i8]* %"$_sender_4883", %String %label, [20 x i8]* %"$owner_4884", [20 x i8]* %"$resolver_4885") !dbg !458 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4882", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4883", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_4884", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_4885", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_4887" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_call_4888" = call i8* @_fetch_field(i8* %"$execptr_load_4887", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_4886", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i32 1), !dbg !459
  %"$currentAdmins_4889" = bitcast i8* %"$currentAdmins_call_4888" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_4889", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_4890" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_4890_4891" = bitcast %TName_List_ByStr20* %"$currentAdmins_4890" to i8*
  %"$_literal_cost_call_4892" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$currentAdmins_4890_4891")
  %"$gasadd_4893" = add i64 %"$_literal_cost_call_4892", 0
  %"$gasrem_4894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4895" = icmp ugt i64 %"$gasadd_4893", %"$gasrem_4894"
  br i1 %"$gascmp_4895", label %"$out_of_gas_4896", label %"$have_gas_4897"

"$out_of_gas_4896":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4897"

"$have_gas_4897":                                 ; preds = %"$out_of_gas_4896", %entry
  %"$consume_4898" = sub i64 %"$gasrem_4894", %"$gasadd_4893"
  store i64 %"$consume_4898", i64* @_gasrem, align 8
  %"$gasrem_4899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4900" = icmp ugt i64 1, %"$gasrem_4899"
  br i1 %"$gascmp_4900", label %"$out_of_gas_4901", label %"$have_gas_4902"

"$out_of_gas_4901":                               ; preds = %"$have_gas_4897"
  call void @_out_of_gas()
  br label %"$have_gas_4902"

"$have_gas_4902":                                 ; preds = %"$out_of_gas_4901", %"$have_gas_4897"
  %"$consume_4903" = sub i64 %"$gasrem_4899", 1
  store i64 %"$consume_4903", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_4904" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4905" = icmp ugt i64 1, %"$gasrem_4904"
  br i1 %"$gascmp_4905", label %"$out_of_gas_4906", label %"$have_gas_4907"

"$out_of_gas_4906":                               ; preds = %"$have_gas_4902"
  call void @_out_of_gas()
  br label %"$have_gas_4907"

"$have_gas_4907":                                 ; preds = %"$out_of_gas_4906", %"$have_gas_4902"
  %"$consume_4908" = sub i64 %"$gasrem_4904", 1
  store i64 %"$consume_4908", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_129" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$ud-registry.parentLabelToNode_4909" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_4910" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4909", 0
  %"$ud-registry.parentLabelToNode_envptr_4911" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_4909", 1
  %"$ud-registry.parentLabelToNode_rootNode_4912" = alloca [32 x i8], align 1
  %"$rootNode_4913" = load [32 x i8], [32 x i8]* @rootNode, align 1
  store [32 x i8] %"$rootNode_4913", [32 x i8]* %"$ud-registry.parentLabelToNode_rootNode_4912", align 1
  %"$ud-registry.parentLabelToNode_call_4914" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_4910"(i8* %"$ud-registry.parentLabelToNode_envptr_4911", [32 x i8]* %"$ud-registry.parentLabelToNode_rootNode_4912"), !dbg !460
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_4914", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_129", align 8, !dbg !460
  %"$ud-registry.parentLabelToNode_130" = alloca [32 x i8], align 1
  %"$$ud-registry.parentLabelToNode_129_4915" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_129", align 8
  %"$$ud-registry.parentLabelToNode_129_fptr_4916" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_129_4915", 0
  %"$$ud-registry.parentLabelToNode_129_envptr_4917" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_129_4915", 1
  %"$$ud-registry.parentLabelToNode_129_retalloca_4918" = alloca [32 x i8], align 1
  call void %"$$ud-registry.parentLabelToNode_129_fptr_4916"(i8* %"$$ud-registry.parentLabelToNode_129_envptr_4917", [32 x i8]* %"$$ud-registry.parentLabelToNode_129_retalloca_4918", %String %label), !dbg !460
  %"$$ud-registry.parentLabelToNode_129_ret_4919" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_129_retalloca_4918", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_129_ret_4919", [32 x i8]* %"$ud-registry.parentLabelToNode_130", align 1, !dbg !460
  %"$$ud-registry.parentLabelToNode_130_4920" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_130", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_130_4920", [32 x i8]* %node, align 1, !dbg !460
  %recordExists = alloca %TName_Bool*, align 8
  %"$indices_buf_4921_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4921_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4921_salloc_load", i64 32)
  %"$indices_buf_4921_salloc" = bitcast i8* %"$indices_buf_4921_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4921" = bitcast [32 x i8]* %"$indices_buf_4921_salloc" to i8*
  %"$node_4922" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4923" = getelementptr i8, i8* %"$indices_buf_4921", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4923" to [32 x i8]*
  store [32 x i8] %"$node_4922", [32 x i8]* %indices_cast, align 1
  %"$execptr_load_4925" = load i8*, i8** @_execptr, align 8
  %"$recordExists_call_4926" = call i8* @_fetch_field(i8* %"$execptr_load_4925", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4924", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4921", i32 0), !dbg !461
  %"$recordExists_4927" = bitcast i8* %"$recordExists_call_4926" to %TName_Bool*
  store %TName_Bool* %"$recordExists_4927", %TName_Bool** %recordExists, align 8
  %"$recordExists_4928" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$$recordExists_4928_4929" = bitcast %TName_Bool* %"$recordExists_4928" to i8*
  %"$_literal_cost_call_4930" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_318", i8* %"$$recordExists_4928_4929")
  %"$gasadd_4931" = add i64 %"$_literal_cost_call_4930", 0
  %"$gasadd_4932" = add i64 %"$gasadd_4931", 1
  %"$gasrem_4933" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4934" = icmp ugt i64 %"$gasadd_4932", %"$gasrem_4933"
  br i1 %"$gascmp_4934", label %"$out_of_gas_4935", label %"$have_gas_4936"

"$out_of_gas_4935":                               ; preds = %"$have_gas_4907"
  call void @_out_of_gas()
  br label %"$have_gas_4936"

"$have_gas_4936":                                 ; preds = %"$out_of_gas_4935", %"$have_gas_4907"
  %"$consume_4937" = sub i64 %"$gasrem_4933", %"$gasadd_4932"
  store i64 %"$consume_4937", i64* @_gasrem, align 8
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_4938_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4938_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4938_salloc_load", i64 32)
  %"$indices_buf_4938_salloc" = bitcast i8* %"$indices_buf_4938_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4938" = bitcast [32 x i8]* %"$indices_buf_4938_salloc" to i8*
  %"$node_4939" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4940" = getelementptr i8, i8* %"$indices_buf_4938", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4940" to [32 x i8]*
  store [32 x i8] %"$node_4939", [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_4942" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_4943" = call i8* @_fetch_field(i8* %"$execptr_load_4942", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4941", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_4938", i32 1), !dbg !462
  %"$maybeRecord_4944" = bitcast i8* %"$maybeRecord_call_4943" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4944", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_4945" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_4945_4946" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4945" to i8*
  %"$_literal_cost_call_4947" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_4945_4946")
  %"$gasadd_4948" = add i64 %"$_literal_cost_call_4947", 0
  %"$gasadd_4949" = add i64 %"$gasadd_4948", 1
  %"$gasrem_4950" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4951" = icmp ugt i64 %"$gasadd_4949", %"$gasrem_4950"
  br i1 %"$gascmp_4951", label %"$out_of_gas_4952", label %"$have_gas_4953"

"$out_of_gas_4952":                               ; preds = %"$have_gas_4936"
  call void @_out_of_gas()
  br label %"$have_gas_4953"

"$have_gas_4953":                                 ; preds = %"$out_of_gas_4952", %"$have_gas_4936"
  %"$consume_4954" = sub i64 %"$gasrem_4950", %"$gasadd_4949"
  store i64 %"$consume_4954", i64* @_gasrem, align 8
  %currentRegistrar = alloca [20 x i8], align 1
  %"$execptr_load_4956" = load i8*, i8** @_execptr, align 8
  %"$currentRegistrar_call_4957" = call i8* @_fetch_field(i8* %"$execptr_load_4956", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_4955", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i32 0, i8* null, i32 1), !dbg !463
  %"$currentRegistrar_4958" = bitcast i8* %"$currentRegistrar_call_4957" to [20 x i8]*
  %"$currentRegistrar_4959" = load [20 x i8], [20 x i8]* %"$currentRegistrar_4958", align 1
  store [20 x i8] %"$currentRegistrar_4959", [20 x i8]* %currentRegistrar, align 1
  %"$_literal_cost_currentRegistrar_4960" = alloca [20 x i8], align 1
  %"$currentRegistrar_4961" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_4961", [20 x i8]* %"$_literal_cost_currentRegistrar_4960", align 1
  %"$$_literal_cost_currentRegistrar_4960_4962" = bitcast [20 x i8]* %"$_literal_cost_currentRegistrar_4960" to i8*
  %"$_literal_cost_call_4963" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i8* %"$$_literal_cost_currentRegistrar_4960_4962")
  %"$gasadd_4964" = add i64 %"$_literal_cost_call_4963", 0
  %"$gasrem_4965" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4966" = icmp ugt i64 %"$gasadd_4964", %"$gasrem_4965"
  br i1 %"$gascmp_4966", label %"$out_of_gas_4967", label %"$have_gas_4968"

"$out_of_gas_4967":                               ; preds = %"$have_gas_4953"
  call void @_out_of_gas()
  br label %"$have_gas_4968"

"$have_gas_4968":                                 ; preds = %"$out_of_gas_4967", %"$have_gas_4953"
  %"$consume_4969" = sub i64 %"$gasrem_4965", %"$gasadd_4964"
  store i64 %"$consume_4969", i64* @_gasrem, align 8
  %"$gasrem_4970" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4971" = icmp ugt i64 1, %"$gasrem_4970"
  br i1 %"$gascmp_4971", label %"$out_of_gas_4972", label %"$have_gas_4973"

"$out_of_gas_4972":                               ; preds = %"$have_gas_4968"
  call void @_out_of_gas()
  br label %"$have_gas_4973"

"$have_gas_4973":                                 ; preds = %"$out_of_gas_4972", %"$have_gas_4968"
  %"$consume_4974" = sub i64 %"$gasrem_4970", 1
  store i64 %"$consume_4974", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_4975" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4976" = icmp ugt i64 1, %"$gasrem_4975"
  br i1 %"$gascmp_4976", label %"$out_of_gas_4977", label %"$have_gas_4978"

"$out_of_gas_4977":                               ; preds = %"$have_gas_4973"
  call void @_out_of_gas()
  br label %"$have_gas_4978"

"$have_gas_4978":                                 ; preds = %"$out_of_gas_4977", %"$have_gas_4973"
  %"$consume_4979" = sub i64 %"$gasrem_4975", 1
  store i64 %"$consume_4979", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_4980" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4981" = icmp ugt i64 1, %"$gasrem_4980"
  br i1 %"$gascmp_4981", label %"$out_of_gas_4982", label %"$have_gas_4983"

"$out_of_gas_4982":                               ; preds = %"$have_gas_4978"
  call void @_out_of_gas()
  br label %"$have_gas_4983"

"$have_gas_4983":                                 ; preds = %"$out_of_gas_4982", %"$have_gas_4978"
  %"$consume_4984" = sub i64 %"$gasrem_4980", 1
  store i64 %"$consume_4984", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_118" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_4985" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_4986" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_4985", 0
  %"$ud-registry.listByStr20Contains_envptr_4987" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_4985", 1
  %"$currentAdmins_4988" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains_call_4989" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_4986"(i8* %"$ud-registry.listByStr20Contains_envptr_4987", %TName_List_ByStr20* %"$currentAdmins_4988"), !dbg !464
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_4989", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_118", align 8, !dbg !464
  %"$ud-registry.listByStr20Contains_119" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_118_4990" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_118", align 8
  %"$$ud-registry.listByStr20Contains_118_fptr_4991" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_118_4990", 0
  %"$$ud-registry.listByStr20Contains_118_envptr_4992" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_118_4990", 1
  %"$$ud-registry.listByStr20Contains_118__sender_4993" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_118__sender_4993", align 1
  %"$$ud-registry.listByStr20Contains_118_call_4994" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_118_fptr_4991"(i8* %"$$ud-registry.listByStr20Contains_118_envptr_4992", [20 x i8]* %"$$ud-registry.listByStr20Contains_118__sender_4993"), !dbg !464
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_118_call_4994", %TName_Bool** %"$ud-registry.listByStr20Contains_119", align 8, !dbg !464
  %"$$ud-registry.listByStr20Contains_119_4995" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_119", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_119_4995", %TName_Bool** %isSenderAdmin, align 8, !dbg !464
  %"$gasrem_4996" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4997" = icmp ugt i64 1, %"$gasrem_4996"
  br i1 %"$gascmp_4997", label %"$out_of_gas_4998", label %"$have_gas_4999"

"$out_of_gas_4998":                               ; preds = %"$have_gas_4983"
  call void @_out_of_gas()
  br label %"$have_gas_4999"

"$have_gas_4999":                                 ; preds = %"$out_of_gas_4998", %"$have_gas_4983"
  %"$consume_5000" = sub i64 %"$gasrem_4996", 1
  store i64 %"$consume_5000", i64* @_gasrem, align 8
  %isSenderRegistrar = alloca %TName_Bool*, align 8
  %"$execptr_load_5001" = load i8*, i8** @_execptr, align 8
  %"$eq_currentRegistrar_5002" = alloca [20 x i8], align 1
  %"$currentRegistrar_5003" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_5003", [20 x i8]* %"$eq_currentRegistrar_5002", align 1
  %"$$eq_currentRegistrar_5002_5004" = bitcast [20 x i8]* %"$eq_currentRegistrar_5002" to i8*
  %"$eq__sender_5005" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_5005", align 1
  %"$$eq__sender_5005_5006" = bitcast [20 x i8]* %"$eq__sender_5005" to i8*
  %"$eq_call_5007" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5001", i32 20, i8* %"$$eq_currentRegistrar_5002_5004", i8* %"$$eq__sender_5005_5006"), !dbg !465
  store %TName_Bool* %"$eq_call_5007", %TName_Bool** %isSenderRegistrar, align 8, !dbg !465
  %"$gasrem_5009" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5010" = icmp ugt i64 1, %"$gasrem_5009"
  br i1 %"$gascmp_5010", label %"$out_of_gas_5011", label %"$have_gas_5012"

"$out_of_gas_5011":                               ; preds = %"$have_gas_4999"
  call void @_out_of_gas()
  br label %"$have_gas_5012"

"$have_gas_5012":                                 ; preds = %"$out_of_gas_5011", %"$have_gas_4999"
  %"$consume_5013" = sub i64 %"$gasrem_5009", 1
  store i64 %"$consume_5013", i64* @_gasrem, align 8
  %isOkSender = alloca %TName_Bool*, align 8
  %"$gasrem_5014" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5015" = icmp ugt i64 1, %"$gasrem_5014"
  br i1 %"$gascmp_5015", label %"$out_of_gas_5016", label %"$have_gas_5017"

"$out_of_gas_5016":                               ; preds = %"$have_gas_5012"
  call void @_out_of_gas()
  br label %"$have_gas_5017"

"$have_gas_5017":                                 ; preds = %"$out_of_gas_5016", %"$have_gas_5012"
  %"$consume_5018" = sub i64 %"$gasrem_5014", 1
  store i64 %"$consume_5018", i64* @_gasrem, align 8
  %"$BoolUtils.orb_120" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_5019" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_5020" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5019", 0
  %"$BoolUtils.orb_envptr_5021" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5019", 1
  %"$isSenderRegistrar_5022" = load %TName_Bool*, %TName_Bool** %isSenderRegistrar, align 8
  %"$BoolUtils.orb_call_5023" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_5020"(i8* %"$BoolUtils.orb_envptr_5021", %TName_Bool* %"$isSenderRegistrar_5022"), !dbg !466
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_5023", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_120", align 8, !dbg !466
  %"$BoolUtils.orb_121" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_120_5024" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_120", align 8
  %"$$BoolUtils.orb_120_fptr_5025" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_120_5024", 0
  %"$$BoolUtils.orb_120_envptr_5026" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_120_5024", 1
  %"$isSenderAdmin_5027" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$$BoolUtils.orb_120_call_5028" = call %TName_Bool* %"$$BoolUtils.orb_120_fptr_5025"(i8* %"$$BoolUtils.orb_120_envptr_5026", %TName_Bool* %"$isSenderAdmin_5027"), !dbg !466
  store %TName_Bool* %"$$BoolUtils.orb_120_call_5028", %TName_Bool** %"$BoolUtils.orb_121", align 8, !dbg !466
  %"$$BoolUtils.orb_121_5029" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_121", align 8
  store %TName_Bool* %"$$BoolUtils.orb_121_5029", %TName_Bool** %isOkSender, align 8, !dbg !466
  %"$gasrem_5030" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5031" = icmp ugt i64 1, %"$gasrem_5030"
  br i1 %"$gascmp_5031", label %"$out_of_gas_5032", label %"$have_gas_5033"

"$out_of_gas_5032":                               ; preds = %"$have_gas_5017"
  call void @_out_of_gas()
  br label %"$have_gas_5033"

"$have_gas_5033":                                 ; preds = %"$out_of_gas_5032", %"$have_gas_5017"
  %"$consume_5034" = sub i64 %"$gasrem_5030", 1
  store i64 %"$consume_5034", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_5035" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5036" = icmp ugt i64 1, %"$gasrem_5035"
  br i1 %"$gascmp_5036", label %"$out_of_gas_5037", label %"$have_gas_5038"

"$out_of_gas_5037":                               ; preds = %"$have_gas_5033"
  call void @_out_of_gas()
  br label %"$have_gas_5038"

"$have_gas_5038":                                 ; preds = %"$out_of_gas_5037", %"$have_gas_5033"
  %"$consume_5039" = sub i64 %"$gasrem_5035", 1
  store i64 %"$consume_5039", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_122" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_5040" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_5041" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5040", 0
  %"$ud-registry.recordMemberOwner_envptr_5042" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5040", 1
  %"$maybeRecord_5043" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_5044" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_5041"(i8* %"$ud-registry.recordMemberOwner_envptr_5042", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5044", %TName_Option_ud-registry.Record* %"$maybeRecord_5043"), !dbg !467
  %"$ud-registry.recordMemberOwner_ret_5045" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5044", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_5045", [20 x i8]* %"$ud-registry.recordMemberOwner_122", align 1, !dbg !467
  %"$$ud-registry.recordMemberOwner_122_5046" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_122", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_122_5046", [20 x i8]* %recordOwner, align 1, !dbg !467
  %"$gasrem_5047" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5048" = icmp ugt i64 1, %"$gasrem_5047"
  br i1 %"$gascmp_5048", label %"$out_of_gas_5049", label %"$have_gas_5050"

"$out_of_gas_5049":                               ; preds = %"$have_gas_5038"
  call void @_out_of_gas()
  br label %"$have_gas_5050"

"$have_gas_5050":                                 ; preds = %"$out_of_gas_5049", %"$have_gas_5038"
  %"$consume_5051" = sub i64 %"$gasrem_5047", 1
  store i64 %"$consume_5051", i64* @_gasrem, align 8
  %recordIsUnowned = alloca %TName_Bool*, align 8
  %"$execptr_load_5052" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_5053" = alloca [20 x i8], align 1
  %"$recordOwner_5054" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_5054", [20 x i8]* %"$eq_recordOwner_5053", align 1
  %"$$eq_recordOwner_5053_5055" = bitcast [20 x i8]* %"$eq_recordOwner_5053" to i8*
  %"$eq_ud-registry.zeroByStr20_5056" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5057" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5057", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5056", align 1
  %"$$eq_ud-registry.zeroByStr20_5056_5058" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5056" to i8*
  %"$eq_call_5059" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5052", i32 20, i8* %"$$eq_recordOwner_5053_5055", i8* %"$$eq_ud-registry.zeroByStr20_5056_5058"), !dbg !468
  store %TName_Bool* %"$eq_call_5059", %TName_Bool** %recordIsUnowned, align 8, !dbg !468
  %"$gasrem_5061" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5062" = icmp ugt i64 1, %"$gasrem_5061"
  br i1 %"$gascmp_5062", label %"$out_of_gas_5063", label %"$have_gas_5064"

"$out_of_gas_5063":                               ; preds = %"$have_gas_5050"
  call void @_out_of_gas()
  br label %"$have_gas_5064"

"$have_gas_5064":                                 ; preds = %"$out_of_gas_5063", %"$have_gas_5050"
  %"$consume_5065" = sub i64 %"$gasrem_5061", 1
  store i64 %"$consume_5065", i64* @_gasrem, align 8
  %recordIsOwnedByRegistrar = alloca %TName_Bool*, align 8
  %"$execptr_load_5066" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_5067" = alloca [20 x i8], align 1
  %"$recordOwner_5068" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_5068", [20 x i8]* %"$eq_recordOwner_5067", align 1
  %"$$eq_recordOwner_5067_5069" = bitcast [20 x i8]* %"$eq_recordOwner_5067" to i8*
  %"$eq_currentRegistrar_5070" = alloca [20 x i8], align 1
  %"$currentRegistrar_5071" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_5071", [20 x i8]* %"$eq_currentRegistrar_5070", align 1
  %"$$eq_currentRegistrar_5070_5072" = bitcast [20 x i8]* %"$eq_currentRegistrar_5070" to i8*
  %"$eq_call_5073" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5066", i32 20, i8* %"$$eq_recordOwner_5067_5069", i8* %"$$eq_currentRegistrar_5070_5072"), !dbg !469
  store %TName_Bool* %"$eq_call_5073", %TName_Bool** %recordIsOwnedByRegistrar, align 8, !dbg !469
  %"$gasrem_5075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5076" = icmp ugt i64 1, %"$gasrem_5075"
  br i1 %"$gascmp_5076", label %"$out_of_gas_5077", label %"$have_gas_5078"

"$out_of_gas_5077":                               ; preds = %"$have_gas_5064"
  call void @_out_of_gas()
  br label %"$have_gas_5078"

"$have_gas_5078":                                 ; preds = %"$out_of_gas_5077", %"$have_gas_5064"
  %"$consume_5079" = sub i64 %"$gasrem_5075", 1
  store i64 %"$consume_5079", i64* @_gasrem, align 8
  %isRegistrarSenderAndOwned = alloca %TName_Bool*, align 8
  %"$gasrem_5080" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5081" = icmp ugt i64 1, %"$gasrem_5080"
  br i1 %"$gascmp_5081", label %"$out_of_gas_5082", label %"$have_gas_5083"

"$out_of_gas_5082":                               ; preds = %"$have_gas_5078"
  call void @_out_of_gas()
  br label %"$have_gas_5083"

"$have_gas_5083":                                 ; preds = %"$out_of_gas_5082", %"$have_gas_5078"
  %"$consume_5084" = sub i64 %"$gasrem_5080", 1
  store i64 %"$consume_5084", i64* @_gasrem, align 8
  %"$BoolUtils.andb_123" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_5085" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5086" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5085", 0
  %"$BoolUtils.andb_envptr_5087" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5085", 1
  %"$recordIsOwnedByRegistrar_5088" = load %TName_Bool*, %TName_Bool** %recordIsOwnedByRegistrar, align 8
  %"$BoolUtils.andb_call_5089" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5086"(i8* %"$BoolUtils.andb_envptr_5087", %TName_Bool* %"$recordIsOwnedByRegistrar_5088"), !dbg !470
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5089", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_123", align 8, !dbg !470
  %"$BoolUtils.andb_124" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_123_5090" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_123", align 8
  %"$$BoolUtils.andb_123_fptr_5091" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_123_5090", 0
  %"$$BoolUtils.andb_123_envptr_5092" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_123_5090", 1
  %"$isSenderRegistrar_5093" = load %TName_Bool*, %TName_Bool** %isSenderRegistrar, align 8
  %"$$BoolUtils.andb_123_call_5094" = call %TName_Bool* %"$$BoolUtils.andb_123_fptr_5091"(i8* %"$$BoolUtils.andb_123_envptr_5092", %TName_Bool* %"$isSenderRegistrar_5093"), !dbg !470
  store %TName_Bool* %"$$BoolUtils.andb_123_call_5094", %TName_Bool** %"$BoolUtils.andb_124", align 8, !dbg !470
  %"$$BoolUtils.andb_124_5095" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_124", align 8
  store %TName_Bool* %"$$BoolUtils.andb_124_5095", %TName_Bool** %isRegistrarSenderAndOwned, align 8, !dbg !470
  %"$gasrem_5096" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5097" = icmp ugt i64 1, %"$gasrem_5096"
  br i1 %"$gascmp_5097", label %"$out_of_gas_5098", label %"$have_gas_5099"

"$out_of_gas_5098":                               ; preds = %"$have_gas_5083"
  call void @_out_of_gas()
  br label %"$have_gas_5099"

"$have_gas_5099":                                 ; preds = %"$out_of_gas_5098", %"$have_gas_5083"
  %"$consume_5100" = sub i64 %"$gasrem_5096", 1
  store i64 %"$consume_5100", i64* @_gasrem, align 8
  %isOkRecordOwner = alloca %TName_Bool*, align 8
  %"$gasrem_5101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5102" = icmp ugt i64 1, %"$gasrem_5101"
  br i1 %"$gascmp_5102", label %"$out_of_gas_5103", label %"$have_gas_5104"

"$out_of_gas_5103":                               ; preds = %"$have_gas_5099"
  call void @_out_of_gas()
  br label %"$have_gas_5104"

"$have_gas_5104":                                 ; preds = %"$out_of_gas_5103", %"$have_gas_5099"
  %"$consume_5105" = sub i64 %"$gasrem_5101", 1
  store i64 %"$consume_5105", i64* @_gasrem, align 8
  %"$BoolUtils.orb_125" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_5106" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_5107" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5106", 0
  %"$BoolUtils.orb_envptr_5108" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_5106", 1
  %"$recordIsUnowned_5109" = load %TName_Bool*, %TName_Bool** %recordIsUnowned, align 8
  %"$BoolUtils.orb_call_5110" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_5107"(i8* %"$BoolUtils.orb_envptr_5108", %TName_Bool* %"$recordIsUnowned_5109"), !dbg !471
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_5110", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_125", align 8, !dbg !471
  %"$BoolUtils.orb_126" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_125_5111" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_125", align 8
  %"$$BoolUtils.orb_125_fptr_5112" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_125_5111", 0
  %"$$BoolUtils.orb_125_envptr_5113" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_125_5111", 1
  %"$isRegistrarSenderAndOwned_5114" = load %TName_Bool*, %TName_Bool** %isRegistrarSenderAndOwned, align 8
  %"$$BoolUtils.orb_125_call_5115" = call %TName_Bool* %"$$BoolUtils.orb_125_fptr_5112"(i8* %"$$BoolUtils.orb_125_envptr_5113", %TName_Bool* %"$isRegistrarSenderAndOwned_5114"), !dbg !471
  store %TName_Bool* %"$$BoolUtils.orb_125_call_5115", %TName_Bool** %"$BoolUtils.orb_126", align 8, !dbg !471
  %"$$BoolUtils.orb_126_5116" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_126", align 8
  store %TName_Bool* %"$$BoolUtils.orb_126_5116", %TName_Bool** %isOkRecordOwner, align 8, !dbg !471
  %"$gasrem_5117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5118" = icmp ugt i64 1, %"$gasrem_5117"
  br i1 %"$gascmp_5118", label %"$out_of_gas_5119", label %"$have_gas_5120"

"$out_of_gas_5119":                               ; preds = %"$have_gas_5104"
  call void @_out_of_gas()
  br label %"$have_gas_5120"

"$have_gas_5120":                                 ; preds = %"$out_of_gas_5119", %"$have_gas_5104"
  %"$consume_5121" = sub i64 %"$gasrem_5117", 1
  store i64 %"$consume_5121", i64* @_gasrem, align 8
  %"$BoolUtils.andb_127" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_5122" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5123" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5122", 0
  %"$BoolUtils.andb_envptr_5124" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5122", 1
  %"$isOkSender_5125" = load %TName_Bool*, %TName_Bool** %isOkSender, align 8
  %"$BoolUtils.andb_call_5126" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5123"(i8* %"$BoolUtils.andb_envptr_5124", %TName_Bool* %"$isOkSender_5125"), !dbg !472
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5126", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_127", align 8, !dbg !472
  %"$BoolUtils.andb_128" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_127_5127" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_127", align 8
  %"$$BoolUtils.andb_127_fptr_5128" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_127_5127", 0
  %"$$BoolUtils.andb_127_envptr_5129" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_127_5127", 1
  %"$isOkRecordOwner_5130" = load %TName_Bool*, %TName_Bool** %isOkRecordOwner, align 8
  %"$$BoolUtils.andb_127_call_5131" = call %TName_Bool* %"$$BoolUtils.andb_127_fptr_5128"(i8* %"$$BoolUtils.andb_127_envptr_5129", %TName_Bool* %"$isOkRecordOwner_5130"), !dbg !472
  store %TName_Bool* %"$$BoolUtils.andb_127_call_5131", %TName_Bool** %"$BoolUtils.andb_128", align 8, !dbg !472
  %"$$BoolUtils.andb_128_5132" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_128", align 8
  store %TName_Bool* %"$$BoolUtils.andb_128_5132", %TName_Bool** %isOk, align 8, !dbg !472
  %"$gasrem_5133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5134" = icmp ugt i64 2, %"$gasrem_5133"
  br i1 %"$gascmp_5134", label %"$out_of_gas_5135", label %"$have_gas_5136"

"$out_of_gas_5135":                               ; preds = %"$have_gas_5120"
  call void @_out_of_gas()
  br label %"$have_gas_5136"

"$have_gas_5136":                                 ; preds = %"$out_of_gas_5135", %"$have_gas_5120"
  %"$consume_5137" = sub i64 %"$gasrem_5133", 2
  store i64 %"$consume_5137", i64* @_gasrem, align 8
  %"$isOk_5139" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5140" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5139", i32 0, i32 0
  %"$isOk_tag_5141" = load i8, i8* %"$isOk_tag_5140", align 1
  switch i8 %"$isOk_tag_5141", label %"$empty_default_5142" [
    i8 0, label %"$True_5143"
    i8 1, label %"$False_5256"
  ], !dbg !473

"$True_5143":                                     ; preds = %"$have_gas_5136"
  %"$isOk_5144" = bitcast %TName_Bool* %"$isOk_5139" to %CName_True*
  %"$gasrem_5145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5146" = icmp ugt i64 2, %"$gasrem_5145"
  br i1 %"$gascmp_5146", label %"$out_of_gas_5147", label %"$have_gas_5148"

"$out_of_gas_5147":                               ; preds = %"$True_5143"
  call void @_out_of_gas()
  br label %"$have_gas_5148"

"$have_gas_5148":                                 ; preds = %"$out_of_gas_5147", %"$True_5143"
  %"$consume_5149" = sub i64 %"$gasrem_5145", 2
  store i64 %"$consume_5149", i64* @_gasrem, align 8
  %"$recordExists_5151" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$recordExists_tag_5152" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$recordExists_5151", i32 0, i32 0
  %"$recordExists_tag_5153" = load i8, i8* %"$recordExists_tag_5152", align 1
  switch i8 %"$recordExists_tag_5153", label %"$default_5154" [
    i8 1, label %"$False_5155"
  ], !dbg !474

"$False_5155":                                    ; preds = %"$have_gas_5148"
  %"$recordExists_5156" = bitcast %TName_Bool* %"$recordExists_5151" to %CName_False*
  %"$gasrem_5157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5158" = icmp ugt i64 1, %"$gasrem_5157"
  br i1 %"$gascmp_5158", label %"$out_of_gas_5159", label %"$have_gas_5160"

"$out_of_gas_5159":                               ; preds = %"$False_5155"
  call void @_out_of_gas()
  br label %"$have_gas_5160"

"$have_gas_5160":                                 ; preds = %"$out_of_gas_5159", %"$False_5155"
  %"$consume_5161" = sub i64 %"$gasrem_5157", 1
  store i64 %"$consume_5161", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5163" = icmp ugt i64 1, %"$gasrem_5162"
  br i1 %"$gascmp_5163", label %"$out_of_gas_5164", label %"$have_gas_5165"

"$out_of_gas_5164":                               ; preds = %"$have_gas_5160"
  call void @_out_of_gas()
  br label %"$have_gas_5165"

"$have_gas_5165":                                 ; preds = %"$out_of_gas_5164", %"$have_gas_5160"
  %"$consume_5166" = sub i64 %"$gasrem_5162", 1
  store i64 %"$consume_5166", i64* @_gasrem, align 8
  %"$ud-registry.eNewDomain_115" = alloca { i8* (i8*, %String)*, i8* }, align 8
  %"$ud-registry.eNewDomain_5167" = load { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eNewDomain, align 8
  %"$ud-registry.eNewDomain_fptr_5168" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_5167", 0
  %"$ud-registry.eNewDomain_envptr_5169" = extractvalue { { i8* (i8*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eNewDomain_5167", 1
  %"$ud-registry.eNewDomain_rootNode_5170" = alloca [32 x i8], align 1
  %"$rootNode_5171" = load [32 x i8], [32 x i8]* @rootNode, align 1
  store [32 x i8] %"$rootNode_5171", [32 x i8]* %"$ud-registry.eNewDomain_rootNode_5170", align 1
  %"$ud-registry.eNewDomain_call_5172" = call { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_fptr_5168"(i8* %"$ud-registry.eNewDomain_envptr_5169", [32 x i8]* %"$ud-registry.eNewDomain_rootNode_5170"), !dbg !477
  store { i8* (i8*, %String)*, i8* } %"$ud-registry.eNewDomain_call_5172", { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_115", align 8, !dbg !477
  %"$ud-registry.eNewDomain_116" = alloca i8*, align 8
  %"$$ud-registry.eNewDomain_115_5173" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* %"$ud-registry.eNewDomain_115", align 8
  %"$$ud-registry.eNewDomain_115_fptr_5174" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_115_5173", 0
  %"$$ud-registry.eNewDomain_115_envptr_5175" = extractvalue { i8* (i8*, %String)*, i8* } %"$$ud-registry.eNewDomain_115_5173", 1
  %"$$ud-registry.eNewDomain_115_call_5176" = call i8* %"$$ud-registry.eNewDomain_115_fptr_5174"(i8* %"$$ud-registry.eNewDomain_115_envptr_5175", %String %label), !dbg !477
  store i8* %"$$ud-registry.eNewDomain_115_call_5176", i8** %"$ud-registry.eNewDomain_116", align 8, !dbg !477
  %"$$ud-registry.eNewDomain_116_5177" = load i8*, i8** %"$ud-registry.eNewDomain_116", align 8
  store i8* %"$$ud-registry.eNewDomain_116_5177", i8** %e, align 8, !dbg !477
  %"$e_5178" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5180" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5178")
  %"$gasrem_5181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5182" = icmp ugt i64 %"$_literal_cost_call_5180", %"$gasrem_5181"
  br i1 %"$gascmp_5182", label %"$out_of_gas_5183", label %"$have_gas_5184"

"$out_of_gas_5183":                               ; preds = %"$have_gas_5165"
  call void @_out_of_gas()
  br label %"$have_gas_5184"

"$have_gas_5184":                                 ; preds = %"$out_of_gas_5183", %"$have_gas_5165"
  %"$consume_5185" = sub i64 %"$gasrem_5181", %"$_literal_cost_call_5180"
  store i64 %"$consume_5185", i64* @_gasrem, align 8
  %"$execptr_load_5186" = load i8*, i8** @_execptr, align 8
  %"$e_5187" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5186", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5187"), !dbg !480
  br label %"$matchsucc_5150"

"$default_5154":                                  ; preds = %"$have_gas_5148"
  br label %"$joinp_5"

"$joinp_5":                                       ; preds = %"$default_5154"
  br label %"$matchsucc_5150"

"$matchsucc_5150":                                ; preds = %"$have_gas_5184", %"$joinp_5"
  %"$gasrem_5188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5189" = icmp ugt i64 1, %"$gasrem_5188"
  br i1 %"$gascmp_5189", label %"$out_of_gas_5190", label %"$have_gas_5191"

"$out_of_gas_5190":                               ; preds = %"$matchsucc_5150"
  call void @_out_of_gas()
  br label %"$have_gas_5191"

"$have_gas_5191":                                 ; preds = %"$out_of_gas_5190", %"$matchsucc_5150"
  %"$consume_5192" = sub i64 %"$gasrem_5188", 1
  store i64 %"$consume_5192", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_5193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5194" = icmp ugt i64 1, %"$gasrem_5193"
  br i1 %"$gascmp_5194", label %"$out_of_gas_5195", label %"$have_gas_5196"

"$out_of_gas_5195":                               ; preds = %"$have_gas_5191"
  call void @_out_of_gas()
  br label %"$have_gas_5196"

"$have_gas_5196":                                 ; preds = %"$out_of_gas_5195", %"$have_gas_5191"
  %"$consume_5197" = sub i64 %"$gasrem_5193", 1
  store i64 %"$consume_5197", i64* @_gasrem, align 8
  %"$adtval_5198_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_5198_salloc" = call i8* @_salloc(i8* %"$adtval_5198_load", i64 41)
  %"$adtval_5198" = bitcast i8* %"$adtval_5198_salloc" to %CName_ud-registry.Record*
  %"$adtgep_5199" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5198", i32 0, i32 0
  store i8 0, i8* %"$adtgep_5199", align 1
  %"$adtgep_5200" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5198", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_5200", align 1
  %"$adtgep_5201" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_5198", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_5201", align 1
  %"$adtptr_5202" = bitcast %CName_ud-registry.Record* %"$adtval_5198" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_5202", %TName_ud-registry.Record** %newRecord, align 8, !dbg !481
  %"$newRecord_5203" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_5203_5204" = bitcast %TName_ud-registry.Record* %"$newRecord_5203" to i8*
  %"$_literal_cost_call_5205" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_315", i8* %"$$newRecord_5203_5204")
  %"$gasadd_5206" = add i64 %"$_literal_cost_call_5205", 1
  %"$gasrem_5207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5208" = icmp ugt i64 %"$gasadd_5206", %"$gasrem_5207"
  br i1 %"$gascmp_5208", label %"$out_of_gas_5209", label %"$have_gas_5210"

"$out_of_gas_5209":                               ; preds = %"$have_gas_5196"
  call void @_out_of_gas()
  br label %"$have_gas_5210"

"$have_gas_5210":                                 ; preds = %"$out_of_gas_5209", %"$have_gas_5196"
  %"$consume_5211" = sub i64 %"$gasrem_5207", %"$gasadd_5206"
  store i64 %"$consume_5211", i64* @_gasrem, align 8
  %"$indices_buf_5212_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5212_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5212_salloc_load", i64 32)
  %"$indices_buf_5212_salloc" = bitcast i8* %"$indices_buf_5212_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5212" = bitcast [32 x i8]* %"$indices_buf_5212_salloc" to i8*
  %"$node_5213" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5214" = getelementptr i8, i8* %"$indices_buf_5212", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_5214" to [32 x i8]*
  store [32 x i8] %"$node_5213", [32 x i8]* %indices_cast2, align 1
  %"$execptr_load_5215" = load i8*, i8** @_execptr, align 8
  %"$newRecord_5217" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_5218" = bitcast %TName_ud-registry.Record* %"$newRecord_5217" to i8*
  call void @_update_field(i8* %"$execptr_load_5215", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5216", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_5212", i8* %"$update_value_5218"), !dbg !482
  %"$gasrem_5219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5220" = icmp ugt i64 1, %"$gasrem_5219"
  br i1 %"$gascmp_5220", label %"$out_of_gas_5221", label %"$have_gas_5222"

"$out_of_gas_5221":                               ; preds = %"$have_gas_5210"
  call void @_out_of_gas()
  br label %"$have_gas_5222"

"$have_gas_5222":                                 ; preds = %"$out_of_gas_5221", %"$have_gas_5210"
  %"$consume_5223" = sub i64 %"$gasrem_5219", 1
  store i64 %"$consume_5223", i64* @_gasrem, align 8
  %e3 = alloca i8*, align 8
  %"$gasrem_5224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5225" = icmp ugt i64 1, %"$gasrem_5224"
  br i1 %"$gascmp_5225", label %"$out_of_gas_5226", label %"$have_gas_5227"

"$out_of_gas_5226":                               ; preds = %"$have_gas_5222"
  call void @_out_of_gas()
  br label %"$have_gas_5227"

"$have_gas_5227":                                 ; preds = %"$out_of_gas_5226", %"$have_gas_5222"
  %"$consume_5228" = sub i64 %"$gasrem_5224", 1
  store i64 %"$consume_5228", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_112" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_5229" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_5230" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5229", 0
  %"$ud-registry.eConfigured_envptr_5231" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5229", 1
  %"$ud-registry.eConfigured_node_5232" = alloca [32 x i8], align 1
  %"$node_5233" = load [32 x i8], [32 x i8]* %node, align 1
  store [32 x i8] %"$node_5233", [32 x i8]* %"$ud-registry.eConfigured_node_5232", align 1
  %"$ud-registry.eConfigured_call_5234" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_5230"(i8* %"$ud-registry.eConfigured_envptr_5231", [32 x i8]* %"$ud-registry.eConfigured_node_5232"), !dbg !483
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_5234", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_112", align 8, !dbg !483
  %"$ud-registry.eConfigured_113" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_112_5235" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_112", align 8
  %"$$ud-registry.eConfigured_112_fptr_5236" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_112_5235", 0
  %"$$ud-registry.eConfigured_112_envptr_5237" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_112_5235", 1
  %"$$ud-registry.eConfigured_112_owner_5238" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$$ud-registry.eConfigured_112_owner_5238", align 1
  %"$$ud-registry.eConfigured_112_call_5239" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_112_fptr_5236"(i8* %"$$ud-registry.eConfigured_112_envptr_5237", [20 x i8]* %"$$ud-registry.eConfigured_112_owner_5238"), !dbg !483
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_112_call_5239", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_113", align 8, !dbg !483
  %"$ud-registry.eConfigured_114" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_113_5240" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_113", align 8
  %"$$ud-registry.eConfigured_113_fptr_5241" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_113_5240", 0
  %"$$ud-registry.eConfigured_113_envptr_5242" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_113_5240", 1
  %"$$ud-registry.eConfigured_113_resolver_5243" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$$ud-registry.eConfigured_113_resolver_5243", align 1
  %"$$ud-registry.eConfigured_113_call_5244" = call i8* %"$$ud-registry.eConfigured_113_fptr_5241"(i8* %"$$ud-registry.eConfigured_113_envptr_5242", [20 x i8]* %"$$ud-registry.eConfigured_113_resolver_5243"), !dbg !483
  store i8* %"$$ud-registry.eConfigured_113_call_5244", i8** %"$ud-registry.eConfigured_114", align 8, !dbg !483
  %"$$ud-registry.eConfigured_114_5245" = load i8*, i8** %"$ud-registry.eConfigured_114", align 8
  store i8* %"$$ud-registry.eConfigured_114_5245", i8** %e3, align 8, !dbg !483
  %"$e_5246" = load i8*, i8** %e3, align 8
  %"$_literal_cost_call_5248" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5246")
  %"$gasrem_5249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5250" = icmp ugt i64 %"$_literal_cost_call_5248", %"$gasrem_5249"
  br i1 %"$gascmp_5250", label %"$out_of_gas_5251", label %"$have_gas_5252"

"$out_of_gas_5251":                               ; preds = %"$have_gas_5227"
  call void @_out_of_gas()
  br label %"$have_gas_5252"

"$have_gas_5252":                                 ; preds = %"$out_of_gas_5251", %"$have_gas_5227"
  %"$consume_5253" = sub i64 %"$gasrem_5249", %"$_literal_cost_call_5248"
  store i64 %"$consume_5253", i64* @_gasrem, align 8
  %"$execptr_load_5254" = load i8*, i8** @_execptr, align 8
  %"$e_5255" = load i8*, i8** %e3, align 8
  call void @_event(i8* %"$execptr_load_5254", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5255"), !dbg !484
  br label %"$matchsucc_5138"

"$False_5256":                                    ; preds = %"$have_gas_5136"
  %"$isOk_5257" = bitcast %TName_Bool* %"$isOk_5139" to %CName_False*
  %"$gasrem_5258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5259" = icmp ugt i64 1, %"$gasrem_5258"
  br i1 %"$gascmp_5259", label %"$out_of_gas_5260", label %"$have_gas_5261"

"$out_of_gas_5260":                               ; preds = %"$False_5256"
  call void @_out_of_gas()
  br label %"$have_gas_5261"

"$have_gas_5261":                                 ; preds = %"$out_of_gas_5260", %"$False_5256"
  %"$consume_5262" = sub i64 %"$gasrem_5258", 1
  store i64 %"$consume_5262", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_5263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5264" = icmp ugt i64 1, %"$gasrem_5263"
  br i1 %"$gascmp_5264", label %"$out_of_gas_5265", label %"$have_gas_5266"

"$out_of_gas_5265":                               ; preds = %"$have_gas_5261"
  call void @_out_of_gas()
  br label %"$have_gas_5266"

"$have_gas_5266":                                 ; preds = %"$out_of_gas_5265", %"$have_gas_5261"
  %"$consume_5267" = sub i64 %"$gasrem_5263", 1
  store i64 %"$consume_5267", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_5268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5269" = icmp ugt i64 1, %"$gasrem_5268"
  br i1 %"$gascmp_5269", label %"$out_of_gas_5270", label %"$have_gas_5271"

"$out_of_gas_5270":                               ; preds = %"$have_gas_5266"
  call void @_out_of_gas()
  br label %"$have_gas_5271"

"$have_gas_5271":                                 ; preds = %"$out_of_gas_5270", %"$have_gas_5266"
  %"$consume_5272" = sub i64 %"$gasrem_5268", 1
  store i64 %"$consume_5272", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$stringlit_5273", i32 0, i32 0), i32 12 }, %String* %m, align 8, !dbg !485
  %"$gasrem_5274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5275" = icmp ugt i64 1, %"$gasrem_5274"
  br i1 %"$gascmp_5275", label %"$out_of_gas_5276", label %"$have_gas_5277"

"$out_of_gas_5276":                               ; preds = %"$have_gas_5271"
  call void @_out_of_gas()
  br label %"$have_gas_5277"

"$have_gas_5277":                                 ; preds = %"$out_of_gas_5276", %"$have_gas_5271"
  %"$consume_5278" = sub i64 %"$gasrem_5274", 1
  store i64 %"$consume_5278", i64* @_gasrem, align 8
  %"$ud-registry.eError_117" = alloca i8*, align 8
  %"$ud-registry.eError_5279" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_5280" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_5279", 0
  %"$ud-registry.eError_envptr_5281" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_5279", 1
  %"$m_5282" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_5283" = call i8* %"$ud-registry.eError_fptr_5280"(i8* %"$ud-registry.eError_envptr_5281", %String %"$m_5282"), !dbg !487
  store i8* %"$ud-registry.eError_call_5283", i8** %"$ud-registry.eError_117", align 8, !dbg !487
  %"$$ud-registry.eError_117_5284" = load i8*, i8** %"$ud-registry.eError_117", align 8
  store i8* %"$$ud-registry.eError_117_5284", i8** %e4, align 8, !dbg !487
  %"$e_5285" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_5287" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5285")
  %"$gasrem_5288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5289" = icmp ugt i64 %"$_literal_cost_call_5287", %"$gasrem_5288"
  br i1 %"$gascmp_5289", label %"$out_of_gas_5290", label %"$have_gas_5291"

"$out_of_gas_5290":                               ; preds = %"$have_gas_5277"
  call void @_out_of_gas()
  br label %"$have_gas_5291"

"$have_gas_5291":                                 ; preds = %"$out_of_gas_5290", %"$have_gas_5277"
  %"$consume_5292" = sub i64 %"$gasrem_5288", %"$_literal_cost_call_5287"
  store i64 %"$consume_5292", i64* @_gasrem, align 8
  %"$execptr_load_5293" = load i8*, i8** @_execptr, align 8
  %"$e_5294" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_5293", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5294"), !dbg !488
  br label %"$matchsucc_5138"

"$empty_default_5142":                            ; preds = %"$have_gas_5136"
  br label %"$matchsucc_5138"

"$matchsucc_5138":                                ; preds = %"$have_gas_5291", %"$have_gas_5252", %"$empty_default_5142"
  ret void
}

define void @bestow(i8* %0) !dbg !489 {
entry:
  %"$_amount_5296" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5297" = bitcast i8* %"$_amount_5296" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5297", align 8
  %"$_origin_5298" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5299" = bitcast i8* %"$_origin_5298" to [20 x i8]*
  %"$_sender_5300" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5301" = bitcast i8* %"$_sender_5300" to [20 x i8]*
  %"$label_5302" = getelementptr i8, i8* %0, i32 56
  %"$label_5303" = bitcast i8* %"$label_5302" to %String*
  %label = load %String, %String* %"$label_5303", align 8
  %"$owner_5304" = getelementptr i8, i8* %0, i32 72
  %"$owner_5305" = bitcast i8* %"$owner_5304" to [20 x i8]*
  %"$resolver_5306" = getelementptr i8, i8* %0, i32 92
  %"$resolver_5307" = bitcast i8* %"$resolver_5306" to [20 x i8]*
  call void @"$bestow_4881"(%Uint128 %_amount, [20 x i8]* %"$_origin_5299", [20 x i8]* %"$_sender_5301", %String %label, [20 x i8]* %"$owner_5305", [20 x i8]* %"$resolver_5307"), !dbg !490
  ret void
}

define internal void @"$setRegistrar_5308"(%Uint128 %_amount, [20 x i8]* %"$_origin_5309", [20 x i8]* %"$_sender_5310", [20 x i8]* %"$address_5311") !dbg !491 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_5309", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5310", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_5311", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_5313" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_call_5314" = call i8* @_fetch_field(i8* %"$execptr_load_5313", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_5312", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i32 0, i8* null, i32 1), !dbg !492
  %"$currentAdmins_5315" = bitcast i8* %"$currentAdmins_call_5314" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_5315", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_5316" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_5316_5317" = bitcast %TName_List_ByStr20* %"$currentAdmins_5316" to i8*
  %"$_literal_cost_call_5318" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_317", i8* %"$$currentAdmins_5316_5317")
  %"$gasadd_5319" = add i64 %"$_literal_cost_call_5318", 0
  %"$gasrem_5320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5321" = icmp ugt i64 %"$gasadd_5319", %"$gasrem_5320"
  br i1 %"$gascmp_5321", label %"$out_of_gas_5322", label %"$have_gas_5323"

"$out_of_gas_5322":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5323"

"$have_gas_5323":                                 ; preds = %"$out_of_gas_5322", %entry
  %"$consume_5324" = sub i64 %"$gasrem_5320", %"$gasadd_5319"
  store i64 %"$consume_5324", i64* @_gasrem, align 8
  %"$gasrem_5325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5326" = icmp ugt i64 1, %"$gasrem_5325"
  br i1 %"$gascmp_5326", label %"$out_of_gas_5327", label %"$have_gas_5328"

"$out_of_gas_5327":                               ; preds = %"$have_gas_5323"
  call void @_out_of_gas()
  br label %"$have_gas_5328"

"$have_gas_5328":                                 ; preds = %"$out_of_gas_5327", %"$have_gas_5323"
  %"$consume_5329" = sub i64 %"$gasrem_5325", 1
  store i64 %"$consume_5329", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_5330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5331" = icmp ugt i64 1, %"$gasrem_5330"
  br i1 %"$gascmp_5331", label %"$out_of_gas_5332", label %"$have_gas_5333"

"$out_of_gas_5332":                               ; preds = %"$have_gas_5328"
  call void @_out_of_gas()
  br label %"$have_gas_5333"

"$have_gas_5333":                                 ; preds = %"$out_of_gas_5332", %"$have_gas_5328"
  %"$consume_5334" = sub i64 %"$gasrem_5330", 1
  store i64 %"$consume_5334", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_132" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.listByStr20Contains_5335" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_5336" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_5335", 0
  %"$ud-registry.listByStr20Contains_envptr_5337" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$ud-registry.listByStr20Contains_5335", 1
  %"$currentAdmins_5338" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains_call_5339" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_fptr_5336"(i8* %"$ud-registry.listByStr20Contains_envptr_5337", %TName_List_ByStr20* %"$currentAdmins_5338"), !dbg !493
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_call_5339", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_132", align 8, !dbg !493
  %"$ud-registry.listByStr20Contains_133" = alloca %TName_Bool*, align 8
  %"$$ud-registry.listByStr20Contains_132_5340" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.listByStr20Contains_132", align 8
  %"$$ud-registry.listByStr20Contains_132_fptr_5341" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_132_5340", 0
  %"$$ud-registry.listByStr20Contains_132_envptr_5342" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.listByStr20Contains_132_5340", 1
  %"$$ud-registry.listByStr20Contains_132__sender_5343" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$$ud-registry.listByStr20Contains_132__sender_5343", align 1
  %"$$ud-registry.listByStr20Contains_132_call_5344" = call %TName_Bool* %"$$ud-registry.listByStr20Contains_132_fptr_5341"(i8* %"$$ud-registry.listByStr20Contains_132_envptr_5342", [20 x i8]* %"$$ud-registry.listByStr20Contains_132__sender_5343"), !dbg !493
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_132_call_5344", %TName_Bool** %"$ud-registry.listByStr20Contains_133", align 8, !dbg !493
  %"$$ud-registry.listByStr20Contains_133_5345" = load %TName_Bool*, %TName_Bool** %"$ud-registry.listByStr20Contains_133", align 8
  store %TName_Bool* %"$$ud-registry.listByStr20Contains_133_5345", %TName_Bool** %isOk, align 8, !dbg !493
  %"$gasrem_5346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5347" = icmp ugt i64 2, %"$gasrem_5346"
  br i1 %"$gascmp_5347", label %"$out_of_gas_5348", label %"$have_gas_5349"

"$out_of_gas_5348":                               ; preds = %"$have_gas_5333"
  call void @_out_of_gas()
  br label %"$have_gas_5349"

"$have_gas_5349":                                 ; preds = %"$out_of_gas_5348", %"$have_gas_5333"
  %"$consume_5350" = sub i64 %"$gasrem_5346", 2
  store i64 %"$consume_5350", i64* @_gasrem, align 8
  %"$isOk_5352" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5353" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5352", i32 0, i32 0
  %"$isOk_tag_5354" = load i8, i8* %"$isOk_tag_5353", align 1
  switch i8 %"$isOk_tag_5354", label %"$default_5355" [
    i8 0, label %"$True_5356"
  ], !dbg !494

"$True_5356":                                     ; preds = %"$have_gas_5349"
  %"$isOk_5357" = bitcast %TName_Bool* %"$isOk_5352" to %CName_True*
  %"$gasrem_5358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5359" = icmp ugt i64 1, %"$gasrem_5358"
  br i1 %"$gascmp_5359", label %"$out_of_gas_5360", label %"$have_gas_5361"

"$out_of_gas_5360":                               ; preds = %"$True_5356"
  call void @_out_of_gas()
  br label %"$have_gas_5361"

"$have_gas_5361":                                 ; preds = %"$out_of_gas_5360", %"$True_5356"
  %"$consume_5362" = sub i64 %"$gasrem_5358", 1
  store i64 %"$consume_5362", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5364" = icmp ugt i64 1, %"$gasrem_5363"
  br i1 %"$gascmp_5364", label %"$out_of_gas_5365", label %"$have_gas_5366"

"$out_of_gas_5365":                               ; preds = %"$have_gas_5361"
  call void @_out_of_gas()
  br label %"$have_gas_5366"

"$have_gas_5366":                                 ; preds = %"$out_of_gas_5365", %"$have_gas_5361"
  %"$consume_5367" = sub i64 %"$gasrem_5363", 1
  store i64 %"$consume_5367", i64* @_gasrem, align 8
  %"$ud-registry.eNewRegistrar_131" = alloca i8*, align 8
  %"$ud-registry.eNewRegistrar_5368" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eNewRegistrar, align 8
  %"$ud-registry.eNewRegistrar_fptr_5369" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eNewRegistrar_5368", 0
  %"$ud-registry.eNewRegistrar_envptr_5370" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eNewRegistrar_5368", 1
  %"$ud-registry.eNewRegistrar_address_5371" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eNewRegistrar_address_5371", align 1
  %"$ud-registry.eNewRegistrar_call_5372" = call i8* %"$ud-registry.eNewRegistrar_fptr_5369"(i8* %"$ud-registry.eNewRegistrar_envptr_5370", [20 x i8]* %"$ud-registry.eNewRegistrar_address_5371"), !dbg !495
  store i8* %"$ud-registry.eNewRegistrar_call_5372", i8** %"$ud-registry.eNewRegistrar_131", align 8, !dbg !495
  %"$$ud-registry.eNewRegistrar_131_5373" = load i8*, i8** %"$ud-registry.eNewRegistrar_131", align 8
  store i8* %"$$ud-registry.eNewRegistrar_131_5373", i8** %e, align 8, !dbg !495
  %"$e_5374" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5376" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5374")
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
  %"$e_5383" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5382", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5383"), !dbg !498
  %"$_literal_cost_address_5384" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$_literal_cost_address_5384", align 1
  %"$$_literal_cost_address_5384_5385" = bitcast [20 x i8]* %"$_literal_cost_address_5384" to i8*
  %"$_literal_cost_call_5386" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i8* %"$$_literal_cost_address_5384_5385")
  %"$gasrem_5387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5388" = icmp ugt i64 %"$_literal_cost_call_5386", %"$gasrem_5387"
  br i1 %"$gascmp_5388", label %"$out_of_gas_5389", label %"$have_gas_5390"

"$out_of_gas_5389":                               ; preds = %"$have_gas_5380"
  call void @_out_of_gas()
  br label %"$have_gas_5390"

"$have_gas_5390":                                 ; preds = %"$out_of_gas_5389", %"$have_gas_5380"
  %"$consume_5391" = sub i64 %"$gasrem_5387", %"$_literal_cost_call_5386"
  store i64 %"$consume_5391", i64* @_gasrem, align 8
  %"$execptr_load_5392" = load i8*, i8** @_execptr, align 8
  %"$update_value_5394" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$update_value_5394", align 1
  %"$update_value_5395" = bitcast [20 x i8]* %"$update_value_5394" to i8*
  call void @_update_field(i8* %"$execptr_load_5392", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_5393", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i32 0, i8* null, i8* %"$update_value_5395"), !dbg !499
  br label %"$matchsucc_5351"

"$default_5355":                                  ; preds = %"$have_gas_5349"
  br label %"$joinp_6"

"$joinp_6":                                       ; preds = %"$default_5355"
  br label %"$matchsucc_5351"

"$matchsucc_5351":                                ; preds = %"$have_gas_5390", %"$joinp_6"
  ret void
}

define void @setRegistrar(i8* %0) !dbg !500 {
entry:
  %"$_amount_5397" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5398" = bitcast i8* %"$_amount_5397" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5398", align 8
  %"$_origin_5399" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5400" = bitcast i8* %"$_origin_5399" to [20 x i8]*
  %"$_sender_5401" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5402" = bitcast i8* %"$_sender_5401" to [20 x i8]*
  %"$address_5403" = getelementptr i8, i8* %0, i32 56
  %"$address_5404" = bitcast i8* %"$address_5403" to [20 x i8]*
  call void @"$setRegistrar_5308"(%Uint128 %_amount, [20 x i8]* %"$_origin_5400", [20 x i8]* %"$_sender_5402", [20 x i8]* %"$address_5404"), !dbg !501
  ret void
}

define internal void @"$register_5405"(%Uint128 %_amount, [20 x i8]* %"$_origin_5406", [20 x i8]* %"$_sender_5407", [32 x i8]* %"$parent_5408", %String %label) !dbg !502 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_5406", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5407", align 1
  %parent = load [32 x i8], [32 x i8]* %"$parent_5408", align 1
  %"$gasrem_5409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5410" = icmp ugt i64 1, %"$gasrem_5409"
  br i1 %"$gascmp_5410", label %"$out_of_gas_5411", label %"$have_gas_5412"

"$out_of_gas_5411":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5412"

"$have_gas_5412":                                 ; preds = %"$out_of_gas_5411", %entry
  %"$consume_5413" = sub i64 %"$gasrem_5409", 1
  store i64 %"$consume_5413", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_5414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5415" = icmp ugt i64 1, %"$gasrem_5414"
  br i1 %"$gascmp_5415", label %"$out_of_gas_5416", label %"$have_gas_5417"

"$out_of_gas_5416":                               ; preds = %"$have_gas_5412"
  call void @_out_of_gas()
  br label %"$have_gas_5417"

"$have_gas_5417":                                 ; preds = %"$out_of_gas_5416", %"$have_gas_5412"
  %"$consume_5418" = sub i64 %"$gasrem_5414", 1
  store i64 %"$consume_5418", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_138" = alloca { void (i8*, [32 x i8]*, %String)*, i8* }, align 8
  %"$ud-registry.parentLabelToNode_5419" = load { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_5420" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_5419", 0
  %"$ud-registry.parentLabelToNode_envptr_5421" = extractvalue { { void (i8*, [32 x i8]*, %String)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.parentLabelToNode_5419", 1
  %"$ud-registry.parentLabelToNode_parent_5422" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.parentLabelToNode_parent_5422", align 1
  %"$ud-registry.parentLabelToNode_call_5423" = call { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_fptr_5420"(i8* %"$ud-registry.parentLabelToNode_envptr_5421", [32 x i8]* %"$ud-registry.parentLabelToNode_parent_5422"), !dbg !503
  store { void (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_call_5423", { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_138", align 8, !dbg !503
  %"$ud-registry.parentLabelToNode_139" = alloca [32 x i8], align 1
  %"$$ud-registry.parentLabelToNode_138_5424" = load { void (i8*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, %String)*, i8* }* %"$ud-registry.parentLabelToNode_138", align 8
  %"$$ud-registry.parentLabelToNode_138_fptr_5425" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_138_5424", 0
  %"$$ud-registry.parentLabelToNode_138_envptr_5426" = extractvalue { void (i8*, [32 x i8]*, %String)*, i8* } %"$$ud-registry.parentLabelToNode_138_5424", 1
  %"$$ud-registry.parentLabelToNode_138_retalloca_5427" = alloca [32 x i8], align 1
  call void %"$$ud-registry.parentLabelToNode_138_fptr_5425"(i8* %"$$ud-registry.parentLabelToNode_138_envptr_5426", [32 x i8]* %"$$ud-registry.parentLabelToNode_138_retalloca_5427", %String %label), !dbg !503
  %"$$ud-registry.parentLabelToNode_138_ret_5428" = load [32 x i8], [32 x i8]* %"$$ud-registry.parentLabelToNode_138_retalloca_5427", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_138_ret_5428", [32 x i8]* %"$ud-registry.parentLabelToNode_139", align 1, !dbg !503
  %"$$ud-registry.parentLabelToNode_139_5429" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_139", align 1
  store [32 x i8] %"$$ud-registry.parentLabelToNode_139_5429", [32 x i8]* %node, align 1, !dbg !503
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_5430_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5430_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5430_salloc_load", i64 32)
  %"$indices_buf_5430_salloc" = bitcast i8* %"$indices_buf_5430_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5430" = bitcast [32 x i8]* %"$indices_buf_5430_salloc" to i8*
  %"$node_5431" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5432" = getelementptr i8, i8* %"$indices_buf_5430", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_5432" to [32 x i8]*
  store [32 x i8] %"$node_5431", [32 x i8]* %indices_cast, align 1
  %"$execptr_load_5434" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_5435" = call i8* @_fetch_field(i8* %"$execptr_load_5434", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5433", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_5430", i32 1), !dbg !504
  %"$maybeRecord_5436" = bitcast i8* %"$maybeRecord_call_5435" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_5436", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_5437" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_5437_5438" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5437" to i8*
  %"$_literal_cost_call_5439" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_5437_5438")
  %"$gasadd_5440" = add i64 %"$_literal_cost_call_5439", 0
  %"$gasadd_5441" = add i64 %"$gasadd_5440", 1
  %"$gasrem_5442" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5443" = icmp ugt i64 %"$gasadd_5441", %"$gasrem_5442"
  br i1 %"$gascmp_5443", label %"$out_of_gas_5444", label %"$have_gas_5445"

"$out_of_gas_5444":                               ; preds = %"$have_gas_5417"
  call void @_out_of_gas()
  br label %"$have_gas_5445"

"$have_gas_5445":                                 ; preds = %"$out_of_gas_5444", %"$have_gas_5417"
  %"$consume_5446" = sub i64 %"$gasrem_5442", %"$gasadd_5441"
  store i64 %"$consume_5446", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_5447_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5447_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5447_salloc_load", i64 32)
  %"$indices_buf_5447_salloc" = bitcast i8* %"$indices_buf_5447_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5447" = bitcast [32 x i8]* %"$indices_buf_5447_salloc" to i8*
  %"$node_5448" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_5449" = getelementptr i8, i8* %"$indices_buf_5447", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_5449" to [32 x i8]*
  store [32 x i8] %"$node_5448", [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_5451" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_5452" = call i8* @_fetch_field(i8* %"$execptr_load_5451", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_5450", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_321", i32 1, i8* %"$indices_buf_5447", i32 1), !dbg !505
  %"$maybeApproved_5453" = bitcast i8* %"$maybeApproved_call_5452" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_5453", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_5454" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_5454_5455" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5454" to i8*
  %"$_literal_cost_call_5456" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_314", i8* %"$$maybeApproved_5454_5455")
  %"$gasadd_5457" = add i64 %"$_literal_cost_call_5456", 0
  %"$gasadd_5458" = add i64 %"$gasadd_5457", 1
  %"$gasrem_5459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5460" = icmp ugt i64 %"$gasadd_5458", %"$gasrem_5459"
  br i1 %"$gascmp_5460", label %"$out_of_gas_5461", label %"$have_gas_5462"

"$out_of_gas_5461":                               ; preds = %"$have_gas_5445"
  call void @_out_of_gas()
  br label %"$have_gas_5462"

"$have_gas_5462":                                 ; preds = %"$out_of_gas_5461", %"$have_gas_5445"
  %"$consume_5463" = sub i64 %"$gasrem_5459", %"$gasadd_5458"
  store i64 %"$consume_5463", i64* @_gasrem, align 8
  %"$gasrem_5464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5465" = icmp ugt i64 1, %"$gasrem_5464"
  br i1 %"$gascmp_5465", label %"$out_of_gas_5466", label %"$have_gas_5467"

"$out_of_gas_5466":                               ; preds = %"$have_gas_5462"
  call void @_out_of_gas()
  br label %"$have_gas_5467"

"$have_gas_5467":                                 ; preds = %"$out_of_gas_5466", %"$have_gas_5462"
  %"$consume_5468" = sub i64 %"$gasrem_5464", 1
  store i64 %"$consume_5468", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_5469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5470" = icmp ugt i64 1, %"$gasrem_5469"
  br i1 %"$gascmp_5470", label %"$out_of_gas_5471", label %"$have_gas_5472"

"$out_of_gas_5471":                               ; preds = %"$have_gas_5467"
  call void @_out_of_gas()
  br label %"$have_gas_5472"

"$have_gas_5472":                                 ; preds = %"$out_of_gas_5471", %"$have_gas_5467"
  %"$consume_5473" = sub i64 %"$gasrem_5469", 1
  store i64 %"$consume_5473", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_137" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_5474" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_5475" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5474", 0
  %"$ud-registry.recordMemberOwner_envptr_5476" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_5474", 1
  %"$maybeRecord_5477" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_5478" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_5475"(i8* %"$ud-registry.recordMemberOwner_envptr_5476", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5478", %TName_Option_ud-registry.Record* %"$maybeRecord_5477"), !dbg !506
  %"$ud-registry.recordMemberOwner_ret_5479" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_5478", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_5479", [20 x i8]* %"$ud-registry.recordMemberOwner_137", align 1, !dbg !506
  %"$$ud-registry.recordMemberOwner_137_5480" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_137", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_137_5480", [20 x i8]* %recordOwner, align 1, !dbg !506
  %"$gasrem_5481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5482" = icmp ugt i64 1, %"$gasrem_5481"
  br i1 %"$gascmp_5482", label %"$out_of_gas_5483", label %"$have_gas_5484"

"$out_of_gas_5483":                               ; preds = %"$have_gas_5472"
  call void @_out_of_gas()
  br label %"$have_gas_5484"

"$have_gas_5484":                                 ; preds = %"$out_of_gas_5483", %"$have_gas_5472"
  %"$consume_5485" = sub i64 %"$gasrem_5481", 1
  store i64 %"$consume_5485", i64* @_gasrem, align 8
  %approved = alloca [20 x i8], align 1
  %"$gasrem_5486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5487" = icmp ugt i64 2, %"$gasrem_5486"
  br i1 %"$gascmp_5487", label %"$out_of_gas_5488", label %"$have_gas_5489"

"$out_of_gas_5488":                               ; preds = %"$have_gas_5484"
  call void @_out_of_gas()
  br label %"$have_gas_5489"

"$have_gas_5489":                                 ; preds = %"$out_of_gas_5488", %"$have_gas_5484"
  %"$consume_5490" = sub i64 %"$gasrem_5486", 2
  store i64 %"$consume_5490", i64* @_gasrem, align 8
  %"$maybeApproved_5492" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_5493" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_5492", i32 0, i32 0
  %"$maybeApproved_tag_5494" = load i8, i8* %"$maybeApproved_tag_5493", align 1
  switch i8 %"$maybeApproved_tag_5494", label %"$empty_default_5495" [
    i8 1, label %"$None_5496"
    i8 0, label %"$Some_5504"
  ], !dbg !507

"$None_5496":                                     ; preds = %"$have_gas_5489"
  %"$maybeApproved_5497" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5492" to %CName_None_ByStr20*
  %"$gasrem_5498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5499" = icmp ugt i64 1, %"$gasrem_5498"
  br i1 %"$gascmp_5499", label %"$out_of_gas_5500", label %"$have_gas_5501"

"$out_of_gas_5500":                               ; preds = %"$None_5496"
  call void @_out_of_gas()
  br label %"$have_gas_5501"

"$have_gas_5501":                                 ; preds = %"$out_of_gas_5500", %"$None_5496"
  %"$consume_5502" = sub i64 %"$gasrem_5498", 1
  store i64 %"$consume_5502", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_5503" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5503", [20 x i8]* %approved, align 1, !dbg !508
  br label %"$matchsucc_5491"

"$Some_5504":                                     ; preds = %"$have_gas_5489"
  %"$maybeApproved_5505" = bitcast %TName_Option_ByStr20* %"$maybeApproved_5492" to %CName_Some_ByStr20*
  %"$approved_gep_5506" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_5505", i32 0, i32 1
  %"$approved_load_5507" = load [20 x i8], [20 x i8]* %"$approved_gep_5506", align 1
  %approved2 = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_5507", [20 x i8]* %approved2, align 1
  %"$gasrem_5508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5509" = icmp ugt i64 1, %"$gasrem_5508"
  br i1 %"$gascmp_5509", label %"$out_of_gas_5510", label %"$have_gas_5511"

"$out_of_gas_5510":                               ; preds = %"$Some_5504"
  call void @_out_of_gas()
  br label %"$have_gas_5511"

"$have_gas_5511":                                 ; preds = %"$out_of_gas_5510", %"$Some_5504"
  %"$consume_5512" = sub i64 %"$gasrem_5508", 1
  store i64 %"$consume_5512", i64* @_gasrem, align 8
  %"$approved_5513" = load [20 x i8], [20 x i8]* %approved2, align 1
  store [20 x i8] %"$approved_5513", [20 x i8]* %approved2, align 1, !dbg !511
  br label %"$matchsucc_5491"

"$empty_default_5495":                            ; preds = %"$have_gas_5489"
  br label %"$matchsucc_5491"

"$matchsucc_5491":                                ; preds = %"$have_gas_5511", %"$have_gas_5501", %"$empty_default_5495"
  %currentRegistrar = alloca [20 x i8], align 1
  %"$execptr_load_5515" = load i8*, i8** @_execptr, align 8
  %"$currentRegistrar_call_5516" = call i8* @_fetch_field(i8* %"$execptr_load_5515", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_5514", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i32 0, i8* null, i32 1), !dbg !513
  %"$currentRegistrar_5517" = bitcast i8* %"$currentRegistrar_call_5516" to [20 x i8]*
  %"$currentRegistrar_5518" = load [20 x i8], [20 x i8]* %"$currentRegistrar_5517", align 1
  store [20 x i8] %"$currentRegistrar_5518", [20 x i8]* %currentRegistrar, align 1
  %"$_literal_cost_currentRegistrar_5519" = alloca [20 x i8], align 1
  %"$currentRegistrar_5520" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_5520", [20 x i8]* %"$_literal_cost_currentRegistrar_5519", align 1
  %"$$_literal_cost_currentRegistrar_5519_5521" = bitcast [20 x i8]* %"$_literal_cost_currentRegistrar_5519" to i8*
  %"$_literal_cost_call_5522" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", i8* %"$$_literal_cost_currentRegistrar_5519_5521")
  %"$gasadd_5523" = add i64 %"$_literal_cost_call_5522", 0
  %"$gasrem_5524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5525" = icmp ugt i64 %"$gasadd_5523", %"$gasrem_5524"
  br i1 %"$gascmp_5525", label %"$out_of_gas_5526", label %"$have_gas_5527"

"$out_of_gas_5526":                               ; preds = %"$matchsucc_5491"
  call void @_out_of_gas()
  br label %"$have_gas_5527"

"$have_gas_5527":                                 ; preds = %"$out_of_gas_5526", %"$matchsucc_5491"
  %"$consume_5528" = sub i64 %"$gasrem_5524", %"$gasadd_5523"
  store i64 %"$consume_5528", i64* @_gasrem, align 8
  %"$gasrem_5529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5530" = icmp ugt i64 1, %"$gasrem_5529"
  br i1 %"$gascmp_5530", label %"$out_of_gas_5531", label %"$have_gas_5532"

"$out_of_gas_5531":                               ; preds = %"$have_gas_5527"
  call void @_out_of_gas()
  br label %"$have_gas_5532"

"$have_gas_5532":                                 ; preds = %"$out_of_gas_5531", %"$have_gas_5527"
  %"$consume_5533" = sub i64 %"$gasrem_5529", 1
  store i64 %"$consume_5533", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_5534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5535" = icmp ugt i64 1, %"$gasrem_5534"
  br i1 %"$gascmp_5535", label %"$out_of_gas_5536", label %"$have_gas_5537"

"$out_of_gas_5536":                               ; preds = %"$have_gas_5532"
  call void @_out_of_gas()
  br label %"$have_gas_5537"

"$have_gas_5537":                                 ; preds = %"$out_of_gas_5536", %"$have_gas_5532"
  %"$consume_5538" = sub i64 %"$gasrem_5534", 1
  store i64 %"$consume_5538", i64* @_gasrem, align 8
  %isRecordUnowned = alloca %TName_Bool*, align 8
  %"$execptr_load_5539" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_5540" = alloca [20 x i8], align 1
  %"$recordOwner_5541" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_5541", [20 x i8]* %"$eq_recordOwner_5540", align 1
  %"$$eq_recordOwner_5540_5542" = bitcast [20 x i8]* %"$eq_recordOwner_5540" to i8*
  %"$eq_ud-registry.zeroByStr20_5543" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5544" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5544", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5543", align 1
  %"$$eq_ud-registry.zeroByStr20_5543_5545" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5543" to i8*
  %"$eq_call_5546" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5539", i32 20, i8* %"$$eq_recordOwner_5540_5542", i8* %"$$eq_ud-registry.zeroByStr20_5543_5545"), !dbg !514
  store %TName_Bool* %"$eq_call_5546", %TName_Bool** %isRecordUnowned, align 8, !dbg !514
  %"$gasrem_5548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5549" = icmp ugt i64 1, %"$gasrem_5548"
  br i1 %"$gascmp_5549", label %"$out_of_gas_5550", label %"$have_gas_5551"

"$out_of_gas_5550":                               ; preds = %"$have_gas_5537"
  call void @_out_of_gas()
  br label %"$have_gas_5551"

"$have_gas_5551":                                 ; preds = %"$out_of_gas_5550", %"$have_gas_5537"
  %"$consume_5552" = sub i64 %"$gasrem_5548", 1
  store i64 %"$consume_5552", i64* @_gasrem, align 8
  %isUnapproved = alloca %TName_Bool*, align 8
  %"$execptr_load_5553" = load i8*, i8** @_execptr, align 8
  %"$eq_approved_5554" = alloca [20 x i8], align 1
  %"$approved_5555" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_5555", [20 x i8]* %"$eq_approved_5554", align 1
  %"$$eq_approved_5554_5556" = bitcast [20 x i8]* %"$eq_approved_5554" to i8*
  %"$eq_ud-registry.zeroByStr20_5557" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5558" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5558", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5557", align 1
  %"$$eq_ud-registry.zeroByStr20_5557_5559" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5557" to i8*
  %"$eq_call_5560" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5553", i32 20, i8* %"$$eq_approved_5554_5556", i8* %"$$eq_ud-registry.zeroByStr20_5557_5559"), !dbg !515
  store %TName_Bool* %"$eq_call_5560", %TName_Bool** %isUnapproved, align 8, !dbg !515
  %"$gasrem_5562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5563" = icmp ugt i64 1, %"$gasrem_5562"
  br i1 %"$gascmp_5563", label %"$out_of_gas_5564", label %"$have_gas_5565"

"$out_of_gas_5564":                               ; preds = %"$have_gas_5551"
  call void @_out_of_gas()
  br label %"$have_gas_5565"

"$have_gas_5565":                                 ; preds = %"$out_of_gas_5564", %"$have_gas_5551"
  %"$consume_5566" = sub i64 %"$gasrem_5562", 1
  store i64 %"$consume_5566", i64* @_gasrem, align 8
  %"$BoolUtils.andb_135" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_5567" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5568" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5567", 0
  %"$BoolUtils.andb_envptr_5569" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5567", 1
  %"$isRecordUnowned_5570" = load %TName_Bool*, %TName_Bool** %isRecordUnowned, align 8
  %"$BoolUtils.andb_call_5571" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_5568"(i8* %"$BoolUtils.andb_envptr_5569", %TName_Bool* %"$isRecordUnowned_5570"), !dbg !516
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_5571", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8, !dbg !516
  %"$BoolUtils.andb_136" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_135_5572" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8
  %"$$BoolUtils.andb_135_fptr_5573" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_5572", 0
  %"$$BoolUtils.andb_135_envptr_5574" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_5572", 1
  %"$isUnapproved_5575" = load %TName_Bool*, %TName_Bool** %isUnapproved, align 8
  %"$$BoolUtils.andb_135_call_5576" = call %TName_Bool* %"$$BoolUtils.andb_135_fptr_5573"(i8* %"$$BoolUtils.andb_135_envptr_5574", %TName_Bool* %"$isUnapproved_5575"), !dbg !516
  store %TName_Bool* %"$$BoolUtils.andb_135_call_5576", %TName_Bool** %"$BoolUtils.andb_136", align 8, !dbg !516
  %"$$BoolUtils.andb_136_5577" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_136", align 8
  store %TName_Bool* %"$$BoolUtils.andb_136_5577", %TName_Bool** %isOk, align 8, !dbg !516
  %"$gasrem_5578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5579" = icmp ugt i64 2, %"$gasrem_5578"
  br i1 %"$gascmp_5579", label %"$out_of_gas_5580", label %"$have_gas_5581"

"$out_of_gas_5580":                               ; preds = %"$have_gas_5565"
  call void @_out_of_gas()
  br label %"$have_gas_5581"

"$have_gas_5581":                                 ; preds = %"$out_of_gas_5580", %"$have_gas_5565"
  %"$consume_5582" = sub i64 %"$gasrem_5578", 2
  store i64 %"$consume_5582", i64* @_gasrem, align 8
  %"$isOk_5584" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5585" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5584", i32 0, i32 0
  %"$isOk_tag_5586" = load i8, i8* %"$isOk_tag_5585", align 1
  switch i8 %"$isOk_tag_5586", label %"$empty_default_5587" [
    i8 0, label %"$True_5588"
    i8 1, label %"$False_5686"
  ], !dbg !517

"$True_5588":                                     ; preds = %"$have_gas_5581"
  %"$isOk_5589" = bitcast %TName_Bool* %"$isOk_5584" to %CName_True*
  %"$gasrem_5590" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5591" = icmp ugt i64 1, %"$gasrem_5590"
  br i1 %"$gascmp_5591", label %"$out_of_gas_5592", label %"$have_gas_5593"

"$out_of_gas_5592":                               ; preds = %"$True_5588"
  call void @_out_of_gas()
  br label %"$have_gas_5593"

"$have_gas_5593":                                 ; preds = %"$out_of_gas_5592", %"$True_5588"
  %"$consume_5594" = sub i64 %"$gasrem_5590", 1
  store i64 %"$consume_5594", i64* @_gasrem, align 8
  %"$execptr_load_5595" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_5595"), !dbg !518
  %"$gasrem_5596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5597" = icmp ugt i64 1, %"$gasrem_5596"
  br i1 %"$gascmp_5597", label %"$out_of_gas_5598", label %"$have_gas_5599"

"$out_of_gas_5598":                               ; preds = %"$have_gas_5593"
  call void @_out_of_gas()
  br label %"$have_gas_5599"

"$have_gas_5599":                                 ; preds = %"$out_of_gas_5598", %"$have_gas_5593"
  %"$consume_5600" = sub i64 %"$gasrem_5596", 1
  store i64 %"$consume_5600", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_5601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5602" = icmp ugt i64 1, %"$gasrem_5601"
  br i1 %"$gascmp_5602", label %"$out_of_gas_5603", label %"$have_gas_5604"

"$out_of_gas_5603":                               ; preds = %"$have_gas_5599"
  call void @_out_of_gas()
  br label %"$have_gas_5604"

"$have_gas_5604":                                 ; preds = %"$out_of_gas_5603", %"$have_gas_5599"
  %"$consume_5605" = sub i64 %"$gasrem_5601", 1
  store i64 %"$consume_5605", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_5606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5607" = icmp ugt i64 1, %"$gasrem_5606"
  br i1 %"$gascmp_5607", label %"$out_of_gas_5608", label %"$have_gas_5609"

"$out_of_gas_5608":                               ; preds = %"$have_gas_5604"
  call void @_out_of_gas()
  br label %"$have_gas_5609"

"$have_gas_5609":                                 ; preds = %"$out_of_gas_5608", %"$have_gas_5604"
  %"$consume_5610" = sub i64 %"$gasrem_5606", 1
  store i64 %"$consume_5610", i64* @_gasrem, align 8
  %"$msgobj_5611_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_5611_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_5611_salloc_load", i64 321)
  %"$msgobj_5611_salloc" = bitcast i8* %"$msgobj_5611_salloc_salloc" to [321 x i8]*
  %"$msgobj_5611" = bitcast [321 x i8]* %"$msgobj_5611_salloc" to i8*
  store i8 7, i8* %"$msgobj_5611", align 1
  %"$msgobj_fname_5613" = getelementptr i8, i8* %"$msgobj_5611", i32 1
  %"$msgobj_fname_5614" = bitcast i8* %"$msgobj_fname_5613" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_5612", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_5614", align 8
  %"$msgobj_td_5615" = getelementptr i8, i8* %"$msgobj_5611", i32 17
  %"$msgobj_td_5616" = bitcast i8* %"$msgobj_td_5615" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_5616", align 8
  %"$msgobj_v_5618" = getelementptr i8, i8* %"$msgobj_5611", i32 25
  %"$msgobj_v_5619" = bitcast i8* %"$msgobj_v_5618" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_5617", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_5619", align 8
  %"$msgobj_fname_5621" = getelementptr i8, i8* %"$msgobj_5611", i32 41
  %"$msgobj_fname_5622" = bitcast i8* %"$msgobj_fname_5621" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_5620", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_5622", align 8
  %"$msgobj_td_5623" = getelementptr i8, i8* %"$msgobj_5611", i32 57
  %"$msgobj_td_5624" = bitcast i8* %"$msgobj_td_5623" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_286", %_TyDescrTy_Typ** %"$msgobj_td_5624", align 8
  %"$msgobj_v_5625" = getelementptr i8, i8* %"$msgobj_5611", i32 65
  %"$msgobj_v_5626" = bitcast i8* %"$msgobj_v_5625" to %Uint128*
  store %Uint128 %_amount, %Uint128* %"$msgobj_v_5626", align 8
  %"$msgobj_fname_5628" = getelementptr i8, i8* %"$msgobj_5611", i32 81
  %"$msgobj_fname_5629" = bitcast i8* %"$msgobj_fname_5628" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_5627", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_5629", align 8
  %"$msgobj_td_5630" = getelementptr i8, i8* %"$msgobj_5611", i32 97
  %"$msgobj_td_5631" = bitcast i8* %"$msgobj_td_5630" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_308", %_TyDescrTy_Typ** %"$msgobj_td_5631", align 8
  %"$currentRegistrar_5632" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  %"$msgobj_v_5633" = getelementptr i8, i8* %"$msgobj_5611", i32 105
  %"$msgobj_v_5634" = bitcast i8* %"$msgobj_v_5633" to [20 x i8]*
  store [20 x i8] %"$currentRegistrar_5632", [20 x i8]* %"$msgobj_v_5634", align 1
  %"$msgobj_fname_5636" = getelementptr i8, i8* %"$msgobj_5611", i32 125
  %"$msgobj_fname_5637" = bitcast i8* %"$msgobj_fname_5636" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_5635", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_5637", align 8
  %"$msgobj_td_5638" = getelementptr i8, i8* %"$msgobj_5611", i32 141
  %"$msgobj_td_5639" = bitcast i8* %"$msgobj_td_5638" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_325", %_TyDescrTy_Typ** %"$msgobj_td_5639", align 8
  %"$msgobj_v_5640" = getelementptr i8, i8* %"$msgobj_5611", i32 149
  %"$msgobj_v_5641" = bitcast i8* %"$msgobj_v_5640" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_5641", align 1
  %"$msgobj_fname_5643" = getelementptr i8, i8* %"$msgobj_5611", i32 169
  %"$msgobj_fname_5644" = bitcast i8* %"$msgobj_fname_5643" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_5642", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_5644", align 8
  %"$msgobj_td_5645" = getelementptr i8, i8* %"$msgobj_5611", i32 185
  %"$msgobj_td_5646" = bitcast i8* %"$msgobj_td_5645" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_5646", align 8
  %"$node_5647" = load [32 x i8], [32 x i8]* %node, align 1
  %"$msgobj_v_5648" = getelementptr i8, i8* %"$msgobj_5611", i32 193
  %"$msgobj_v_5649" = bitcast i8* %"$msgobj_v_5648" to [32 x i8]*
  store [32 x i8] %"$node_5647", [32 x i8]* %"$msgobj_v_5649", align 1
  %"$msgobj_fname_5651" = getelementptr i8, i8* %"$msgobj_5611", i32 225
  %"$msgobj_fname_5652" = bitcast i8* %"$msgobj_fname_5651" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_5650", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_5652", align 8
  %"$msgobj_td_5653" = getelementptr i8, i8* %"$msgobj_5611", i32 241
  %"$msgobj_td_5654" = bitcast i8* %"$msgobj_td_5653" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_306", %_TyDescrTy_Typ** %"$msgobj_td_5654", align 8
  %"$msgobj_v_5655" = getelementptr i8, i8* %"$msgobj_5611", i32 249
  %"$msgobj_v_5656" = bitcast i8* %"$msgobj_v_5655" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_5656", align 1
  %"$msgobj_fname_5658" = getelementptr i8, i8* %"$msgobj_5611", i32 281
  %"$msgobj_fname_5659" = bitcast i8* %"$msgobj_fname_5658" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_5657", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_5659", align 8
  %"$msgobj_td_5660" = getelementptr i8, i8* %"$msgobj_5611", i32 297
  %"$msgobj_td_5661" = bitcast i8* %"$msgobj_td_5660" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_292", %_TyDescrTy_Typ** %"$msgobj_td_5661", align 8
  %"$msgobj_v_5662" = getelementptr i8, i8* %"$msgobj_5611", i32 305
  %"$msgobj_v_5663" = bitcast i8* %"$msgobj_v_5662" to %String*
  store %String %label, %String* %"$msgobj_v_5663", align 8
  store i8* %"$msgobj_5611", i8** %m, align 8, !dbg !521
  %"$gasrem_5665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5666" = icmp ugt i64 1, %"$gasrem_5665"
  br i1 %"$gascmp_5666", label %"$out_of_gas_5667", label %"$have_gas_5668"

"$out_of_gas_5667":                               ; preds = %"$have_gas_5609"
  call void @_out_of_gas()
  br label %"$have_gas_5668"

"$have_gas_5668":                                 ; preds = %"$out_of_gas_5667", %"$have_gas_5609"
  %"$consume_5669" = sub i64 %"$gasrem_5665", 1
  store i64 %"$consume_5669", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_134" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_5670" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_5671" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_5670", 0
  %"$ud-registry.oneMsg_envptr_5672" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_5670", 1
  %"$m_5673" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_5674" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_5671"(i8* %"$ud-registry.oneMsg_envptr_5672", i8* %"$m_5673"), !dbg !522
  store %TName_List_Message* %"$ud-registry.oneMsg_call_5674", %TName_List_Message** %"$ud-registry.oneMsg_134", align 8, !dbg !522
  %"$$ud-registry.oneMsg_134_5675" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_134", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_134_5675", %TName_List_Message** %msgs, align 8, !dbg !522
  %"$msgs_5676" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_5676_5677" = bitcast %TName_List_Message* %"$msgs_5676" to i8*
  %"$_literal_cost_call_5678" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", i8* %"$$msgs_5676_5677")
  %"$gasrem_5679" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5680" = icmp ugt i64 %"$_literal_cost_call_5678", %"$gasrem_5679"
  br i1 %"$gascmp_5680", label %"$out_of_gas_5681", label %"$have_gas_5682"

"$out_of_gas_5681":                               ; preds = %"$have_gas_5668"
  call void @_out_of_gas()
  br label %"$have_gas_5682"

"$have_gas_5682":                                 ; preds = %"$out_of_gas_5681", %"$have_gas_5668"
  %"$consume_5683" = sub i64 %"$gasrem_5679", %"$_literal_cost_call_5678"
  store i64 %"$consume_5683", i64* @_gasrem, align 8
  %"$execptr_load_5684" = load i8*, i8** @_execptr, align 8
  %"$msgs_5685" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_5684", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_316", %TName_List_Message* %"$msgs_5685"), !dbg !523
  br label %"$matchsucc_5583"

"$False_5686":                                    ; preds = %"$have_gas_5581"
  %"$isOk_5687" = bitcast %TName_Bool* %"$isOk_5584" to %CName_False*
  br label %"$matchsucc_5583"

"$empty_default_5587":                            ; preds = %"$have_gas_5581"
  br label %"$matchsucc_5583"

"$matchsucc_5583":                                ; preds = %"$False_5686", %"$have_gas_5682", %"$empty_default_5587"
  ret void
}

declare void @_accept(i8*)

define void @register(i8* %0) !dbg !524 {
entry:
  %"$_amount_5689" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5690" = bitcast i8* %"$_amount_5689" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5690", align 8
  %"$_origin_5691" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5692" = bitcast i8* %"$_origin_5691" to [20 x i8]*
  %"$_sender_5693" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5694" = bitcast i8* %"$_sender_5693" to [20 x i8]*
  %"$parent_5695" = getelementptr i8, i8* %0, i32 56
  %"$parent_5696" = bitcast i8* %"$parent_5695" to [32 x i8]*
  %"$label_5697" = getelementptr i8, i8* %0, i32 88
  %"$label_5698" = bitcast i8* %"$label_5697" to %String*
  %label = load %String, %String* %"$label_5698", align 8
  call void @"$register_5405"(%Uint128 %_amount, [20 x i8]* %"$_origin_5692", [20 x i8]* %"$_sender_5694", [32 x i8]* %"$parent_5696", %String %label), !dbg !525
  ret void
}

define internal void @"$onResolverConfigured_5699"(%Uint128 %_amount, [20 x i8]* %"$_origin_5700", [20 x i8]* %"$_sender_5701", [32 x i8]* %"$node_5702") !dbg !526 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_5700", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5701", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_5702", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_5703_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5703_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5703_salloc_load", i64 32)
  %"$indices_buf_5703_salloc" = bitcast i8* %"$indices_buf_5703_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5703" = bitcast [32 x i8]* %"$indices_buf_5703_salloc" to i8*
  %"$indices_gep_5704" = getelementptr i8, i8* %"$indices_buf_5703", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_5704" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_5706" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_5707" = call i8* @_fetch_field(i8* %"$execptr_load_5706", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5705", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_322", i32 1, i8* %"$indices_buf_5703", i32 1), !dbg !527
  %"$maybeRecord_5708" = bitcast i8* %"$maybeRecord_call_5707" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_5708", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_5709" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_5709_5710" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5709" to i8*
  %"$_literal_cost_call_5711" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_313", i8* %"$$maybeRecord_5709_5710")
  %"$gasadd_5712" = add i64 %"$_literal_cost_call_5711", 0
  %"$gasadd_5713" = add i64 %"$gasadd_5712", 1
  %"$gasrem_5714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5715" = icmp ugt i64 %"$gasadd_5713", %"$gasrem_5714"
  br i1 %"$gascmp_5715", label %"$out_of_gas_5716", label %"$have_gas_5717"

"$out_of_gas_5716":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5717"

"$have_gas_5717":                                 ; preds = %"$out_of_gas_5716", %entry
  %"$consume_5718" = sub i64 %"$gasrem_5714", %"$gasadd_5713"
  store i64 %"$consume_5718", i64* @_gasrem, align 8
  %"$gasrem_5719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5720" = icmp ugt i64 2, %"$gasrem_5719"
  br i1 %"$gascmp_5720", label %"$out_of_gas_5721", label %"$have_gas_5722"

"$out_of_gas_5721":                               ; preds = %"$have_gas_5717"
  call void @_out_of_gas()
  br label %"$have_gas_5722"

"$have_gas_5722":                                 ; preds = %"$out_of_gas_5721", %"$have_gas_5717"
  %"$consume_5723" = sub i64 %"$gasrem_5719", 2
  store i64 %"$consume_5723", i64* @_gasrem, align 8
  %"$maybeRecord_5725" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_tag_5726" = getelementptr inbounds %TName_Option_ud-registry.Record, %TName_Option_ud-registry.Record* %"$maybeRecord_5725", i32 0, i32 0
  %"$maybeRecord_tag_5727" = load i8, i8* %"$maybeRecord_tag_5726", align 1
  switch i8 %"$maybeRecord_tag_5727", label %"$empty_default_5728" [
    i8 1, label %"$None_5729"
    i8 0, label %"$Some_5731"
  ], !dbg !528

"$None_5729":                                     ; preds = %"$have_gas_5722"
  %"$maybeRecord_5730" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5725" to %CName_None_ud-registry.Record*
  br label %"$matchsucc_5724"

"$Some_5731":                                     ; preds = %"$have_gas_5722"
  %"$maybeRecord_5732" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5725" to %CName_Some_ud-registry.Record*
  %"$record_gep_5733" = getelementptr inbounds %CName_Some_ud-registry.Record, %CName_Some_ud-registry.Record* %"$maybeRecord_5732", i32 0, i32 1
  %"$record_load_5734" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %"$record_gep_5733", align 8
  %record = alloca %TName_ud-registry.Record*, align 8
  store %TName_ud-registry.Record* %"$record_load_5734", %TName_ud-registry.Record** %record, align 8
  %"$gasrem_5735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5736" = icmp ugt i64 1, %"$gasrem_5735"
  br i1 %"$gascmp_5736", label %"$out_of_gas_5737", label %"$have_gas_5738"

"$out_of_gas_5737":                               ; preds = %"$Some_5731"
  call void @_out_of_gas()
  br label %"$have_gas_5738"

"$have_gas_5738":                                 ; preds = %"$out_of_gas_5737", %"$Some_5731"
  %"$consume_5739" = sub i64 %"$gasrem_5735", 1
  store i64 %"$consume_5739", i64* @_gasrem, align 8
  %"$record_5741" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %record, align 8
  %"$record_tag_5742" = getelementptr inbounds %TName_ud-registry.Record, %TName_ud-registry.Record* %"$record_5741", i32 0, i32 0
  %"$record_tag_5743" = load i8, i8* %"$record_tag_5742", align 1
  switch i8 %"$record_tag_5743", label %"$empty_default_5744" [
    i8 0, label %"$ud-registry.Record_5745"
  ], !dbg !529

"$ud-registry.Record_5745":                       ; preds = %"$have_gas_5738"
  %"$record_5746" = bitcast %TName_ud-registry.Record* %"$record_5741" to %CName_ud-registry.Record*
  %"$owner_gep_5747" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_5746", i32 0, i32 1
  %"$owner_load_5748" = load [20 x i8], [20 x i8]* %"$owner_gep_5747", align 1
  %owner = alloca [20 x i8], align 1
  store [20 x i8] %"$owner_load_5748", [20 x i8]* %owner, align 1
  %"$resolver_gep_5749" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_5746", i32 0, i32 2
  %"$resolver_load_5750" = load [20 x i8], [20 x i8]* %"$resolver_gep_5749", align 1
  %resolver = alloca [20 x i8], align 1
  store [20 x i8] %"$resolver_load_5750", [20 x i8]* %resolver, align 1
  %"$gasrem_5751" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5752" = icmp ugt i64 1, %"$gasrem_5751"
  br i1 %"$gascmp_5752", label %"$out_of_gas_5753", label %"$have_gas_5754"

"$out_of_gas_5753":                               ; preds = %"$ud-registry.Record_5745"
  call void @_out_of_gas()
  br label %"$have_gas_5754"

"$have_gas_5754":                                 ; preds = %"$out_of_gas_5753", %"$ud-registry.Record_5745"
  %"$consume_5755" = sub i64 %"$gasrem_5751", 1
  store i64 %"$consume_5755", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$execptr_load_5756" = load i8*, i8** @_execptr, align 8
  %"$eq_resolver_5757" = alloca [20 x i8], align 1
  %"$resolver_5758" = load [20 x i8], [20 x i8]* %resolver, align 1
  store [20 x i8] %"$resolver_5758", [20 x i8]* %"$eq_resolver_5757", align 1
  %"$$eq_resolver_5757_5759" = bitcast [20 x i8]* %"$eq_resolver_5757" to i8*
  %"$eq__sender_5760" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_5760", align 1
  %"$$eq__sender_5760_5761" = bitcast [20 x i8]* %"$eq__sender_5760" to i8*
  %"$eq_call_5762" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5756", i32 20, i8* %"$$eq_resolver_5757_5759", i8* %"$$eq__sender_5760_5761"), !dbg !532
  store %TName_Bool* %"$eq_call_5762", %TName_Bool** %isOk, align 8, !dbg !532
  %"$gasrem_5764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5765" = icmp ugt i64 2, %"$gasrem_5764"
  br i1 %"$gascmp_5765", label %"$out_of_gas_5766", label %"$have_gas_5767"

"$out_of_gas_5766":                               ; preds = %"$have_gas_5754"
  call void @_out_of_gas()
  br label %"$have_gas_5767"

"$have_gas_5767":                                 ; preds = %"$out_of_gas_5766", %"$have_gas_5754"
  %"$consume_5768" = sub i64 %"$gasrem_5764", 2
  store i64 %"$consume_5768", i64* @_gasrem, align 8
  %"$isOk_5770" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5771" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5770", i32 0, i32 0
  %"$isOk_tag_5772" = load i8, i8* %"$isOk_tag_5771", align 1
  switch i8 %"$isOk_tag_5772", label %"$empty_default_5773" [
    i8 0, label %"$True_5774"
    i8 1, label %"$False_5814"
  ], !dbg !535

"$True_5774":                                     ; preds = %"$have_gas_5767"
  %"$isOk_5775" = bitcast %TName_Bool* %"$isOk_5770" to %CName_True*
  %"$gasrem_5776" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5777" = icmp ugt i64 1, %"$gasrem_5776"
  br i1 %"$gascmp_5777", label %"$out_of_gas_5778", label %"$have_gas_5779"

"$out_of_gas_5778":                               ; preds = %"$True_5774"
  call void @_out_of_gas()
  br label %"$have_gas_5779"

"$have_gas_5779":                                 ; preds = %"$out_of_gas_5778", %"$True_5774"
  %"$consume_5780" = sub i64 %"$gasrem_5776", 1
  store i64 %"$consume_5780", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5781" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5782" = icmp ugt i64 1, %"$gasrem_5781"
  br i1 %"$gascmp_5782", label %"$out_of_gas_5783", label %"$have_gas_5784"

"$out_of_gas_5783":                               ; preds = %"$have_gas_5779"
  call void @_out_of_gas()
  br label %"$have_gas_5784"

"$have_gas_5784":                                 ; preds = %"$out_of_gas_5783", %"$have_gas_5779"
  %"$consume_5785" = sub i64 %"$gasrem_5781", 1
  store i64 %"$consume_5785", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_140" = alloca { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$ud-registry.eConfigured_5786" = load { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }, { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_5787" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5786", 0
  %"$ud-registry.eConfigured_envptr_5788" = extractvalue { { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, [32 x i8]*)*, i8* } %"$ud-registry.eConfigured_5786", 1
  %"$ud-registry.eConfigured_node_5789" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_5789", align 1
  %"$ud-registry.eConfigured_call_5790" = call { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_fptr_5787"(i8* %"$ud-registry.eConfigured_envptr_5788", [32 x i8]* %"$ud-registry.eConfigured_node_5789"), !dbg !536
  store { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_call_5790", { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_140", align 8, !dbg !536
  %"$ud-registry.eConfigured_141" = alloca { i8* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$$ud-registry.eConfigured_140_5791" = load { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_140", align 8
  %"$$ud-registry.eConfigured_140_fptr_5792" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_140_5791", 0
  %"$$ud-registry.eConfigured_140_envptr_5793" = extractvalue { { i8* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_140_5791", 1
  %"$$ud-registry.eConfigured_140_owner_5794" = alloca [20 x i8], align 1
  %"$owner_5795" = load [20 x i8], [20 x i8]* %owner, align 1
  store [20 x i8] %"$owner_5795", [20 x i8]* %"$$ud-registry.eConfigured_140_owner_5794", align 1
  %"$$ud-registry.eConfigured_140_call_5796" = call { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_140_fptr_5792"(i8* %"$$ud-registry.eConfigured_140_envptr_5793", [20 x i8]* %"$$ud-registry.eConfigured_140_owner_5794"), !dbg !536
  store { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_140_call_5796", { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_141", align 8, !dbg !536
  %"$ud-registry.eConfigured_142" = alloca i8*, align 8
  %"$$ud-registry.eConfigured_141_5797" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* %"$ud-registry.eConfigured_141", align 8
  %"$$ud-registry.eConfigured_141_fptr_5798" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_141_5797", 0
  %"$$ud-registry.eConfigured_141_envptr_5799" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$$ud-registry.eConfigured_141_5797", 1
  %"$$ud-registry.eConfigured_141_resolver_5800" = alloca [20 x i8], align 1
  %"$resolver_5801" = load [20 x i8], [20 x i8]* %resolver, align 1
  store [20 x i8] %"$resolver_5801", [20 x i8]* %"$$ud-registry.eConfigured_141_resolver_5800", align 1
  %"$$ud-registry.eConfigured_141_call_5802" = call i8* %"$$ud-registry.eConfigured_141_fptr_5798"(i8* %"$$ud-registry.eConfigured_141_envptr_5799", [20 x i8]* %"$$ud-registry.eConfigured_141_resolver_5800"), !dbg !536
  store i8* %"$$ud-registry.eConfigured_141_call_5802", i8** %"$ud-registry.eConfigured_142", align 8, !dbg !536
  %"$$ud-registry.eConfigured_142_5803" = load i8*, i8** %"$ud-registry.eConfigured_142", align 8
  store i8* %"$$ud-registry.eConfigured_142_5803", i8** %e, align 8, !dbg !536
  %"$e_5804" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5806" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5804")
  %"$gasrem_5807" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5808" = icmp ugt i64 %"$_literal_cost_call_5806", %"$gasrem_5807"
  br i1 %"$gascmp_5808", label %"$out_of_gas_5809", label %"$have_gas_5810"

"$out_of_gas_5809":                               ; preds = %"$have_gas_5784"
  call void @_out_of_gas()
  br label %"$have_gas_5810"

"$have_gas_5810":                                 ; preds = %"$out_of_gas_5809", %"$have_gas_5784"
  %"$consume_5811" = sub i64 %"$gasrem_5807", %"$_literal_cost_call_5806"
  store i64 %"$consume_5811", i64* @_gasrem, align 8
  %"$execptr_load_5812" = load i8*, i8** @_execptr, align 8
  %"$e_5813" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5812", %_TyDescrTy_Typ* @"$TyDescr_Event_298", i8* %"$e_5813"), !dbg !539
  br label %"$matchsucc_5769"

"$False_5814":                                    ; preds = %"$have_gas_5767"
  %"$isOk_5815" = bitcast %TName_Bool* %"$isOk_5770" to %CName_False*
  br label %"$matchsucc_5769"

"$empty_default_5773":                            ; preds = %"$have_gas_5767"
  br label %"$matchsucc_5769"

"$matchsucc_5769":                                ; preds = %"$False_5814", %"$have_gas_5810", %"$empty_default_5773"
  br label %"$matchsucc_5740"

"$empty_default_5744":                            ; preds = %"$have_gas_5738"
  br label %"$matchsucc_5740"

"$matchsucc_5740":                                ; preds = %"$matchsucc_5769", %"$empty_default_5744"
  br label %"$matchsucc_5724"

"$empty_default_5728":                            ; preds = %"$have_gas_5722"
  br label %"$matchsucc_5724"

"$matchsucc_5724":                                ; preds = %"$matchsucc_5740", %"$None_5729", %"$empty_default_5728"
  ret void
}

define void @onResolverConfigured(i8* %0) !dbg !540 {
entry:
  %"$_amount_5817" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5818" = bitcast i8* %"$_amount_5817" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5818", align 8
  %"$_origin_5819" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5820" = bitcast i8* %"$_origin_5819" to [20 x i8]*
  %"$_sender_5821" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5822" = bitcast i8* %"$_sender_5821" to [20 x i8]*
  %"$node_5823" = getelementptr i8, i8* %0, i32 56
  %"$node_5824" = bitcast i8* %"$node_5823" to [32 x i8]*
  call void @"$onResolverConfigured_5699"(%Uint128 %_amount, [20 x i8]* %"$_origin_5820", [20 x i8]* %"$_sender_5822", [32 x i8]* %"$node_5824"), !dbg !541
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
