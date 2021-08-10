

; gas_remaining: 4001329
; ModuleID = 'Registry'
source_filename = "Registry"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin19.6.0"

%"$TyDescrTy_PrimTyp_160" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_196" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_195"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_195" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_197"**, %"$TyDescrTy_ADTTyp_196"* }
%"$TyDescrTy_ADTTyp_Constr_197" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_205" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_210" = type { i32, %"$TyDescr_AddrFieldTyp_209"* }
%"$TyDescr_AddrFieldTyp_209" = type { %TyDescrString, %_TyDescrTy_Typ* }
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
%TName_Option_ByStr20 = type { i8, %CName_Some_ByStr20*, %CName_None_ByStr20* }
%CName_Some_ByStr20 = type <{ i8, [20 x i8] }>
%CName_None_ByStr20 = type <{ i8 }>
%"TName_Option_List_(ByStr20)" = type { i8, %"CName_Some_List_(ByStr20)"*, %"CName_None_List_(ByStr20)"* }
%"CName_Some_List_(ByStr20)" = type <{ i8, %TName_List_ByStr20* }>
%"CName_None_List_(ByStr20)" = type <{ i8 }>
%Uint32 = type { i32 }
%"$ParamDescr_5267" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_5268" = type { %ParamDescrString, i32, %"$ParamDescr_5267"* }
%"$$fundef_119_env_288" = type { { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } }
%"$$fundef_121_env_289" = type {}
%"$$fundef_123_env_290" = type { [20 x i8] }
%"$$fundef_125_env_291" = type {}
%"$$fundef_127_env_292" = type {}
%"$$fundef_129_env_293" = type {}
%"$$fundef_131_env_294" = type {}
%"$$fundef_133_env_295" = type {}
%"$$fundef_135_env_296" = type {}
%"$$fundef_137_env_297" = type {}
%"$$fundef_139_env_298" = type {}
%"$$fundef_143_env_299" = type { { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, [20 x i8] }
%"$$fundef_141_env_300" = type { { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { i8*, i8* }* }
%"$$fundef_145_env_301" = type { { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } }
%"$$fundef_147_env_302" = type { { i8*, i8* }*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_151_env_303" = type { [20 x i8] }
%"$$fundef_149_env_304" = type {}
%"$$fundef_153_env_305" = type { %TName_List_Message* }
%"$$fundef_93_env_306" = type { { i8*, i8* }*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_91_env_307" = type { { i8*, i8* }* }
%"$$fundef_89_env_308" = type { { i8*, i8* }* }
%"$$fundef_99_env_309" = type { { i8*, i8* }*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_97_env_310" = type { { i8*, i8* }* }
%"$$fundef_95_env_311" = type { { i8*, i8* }* }
%"$$fundef_109_env_312" = type { %TName_Option_ByStr20*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, [20 x i8] }
%"$$fundef_107_env_313" = type { %TName_Option_ByStr20*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_105_env_314" = type { %TName_Option_ByStr20*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_103_env_315" = type { { i8*, i8* }* }
%"$$fundef_101_env_316" = type { { i8*, i8* }* }
%"$$fundef_117_env_317" = type { { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, [20 x i8] }
%"$$fundef_115_env_318" = type { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } }
%"$$fundef_113_env_319" = type { { i8*, i8* }* }
%"$$fundef_111_env_320" = type { { i8*, i8* }* }
%"$$fundef_83_env_321" = type {}
%"$$fundef_85_env_322" = type {}
%"$$fundef_87_env_323" = type {}
%"$$fundef_71_env_324" = type { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, %TName_List_ByStr20* }
%"$$fundef_69_env_325" = type { { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, %TName_Option_ByStr20* }
%"$$fundef_67_env_326" = type { { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } }
%"$$fundef_65_env_327" = type {}
%"$$fundef_63_env_328" = type {}
%"$$fundef_61_env_329" = type {}
%"$$fundef_81_env_330" = type { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, %TName_List_ByStr20* }
%"$$fundef_79_env_331" = type { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } }
%"$$fundef_77_env_332" = type {}
%"$$fundef_75_env_333" = type {}
%"$$fundef_73_env_334" = type {}
%Map_ByStr32_ud-registry.Record = type { [32 x i8], %TName_ud-registry.Record* }
%Map_ByStr32_ByStr20 = type { [32 x i8], [20 x i8] }
%"Map_ByStr20_List_(ByStr20)" = type { [20 x i8], %TName_List_ByStr20* }
%Uint128 = type { i128 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_161" = global %"$TyDescrTy_PrimTyp_160" zeroinitializer
@"$TyDescr_Int32_162" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_160"* @"$TyDescr_Int32_Prim_161" to i8*) }
@"$TyDescr_Uint32_Prim_163" = global %"$TyDescrTy_PrimTyp_160" { i32 1, i32 0 }
@"$TyDescr_Uint32_164" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_160"* @"$TyDescr_Uint32_Prim_163" to i8*) }
@"$TyDescr_Int64_Prim_165" = global %"$TyDescrTy_PrimTyp_160" { i32 0, i32 1 }
@"$TyDescr_Int64_166" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_160"* @"$TyDescr_Int64_Prim_165" to i8*) }
@"$TyDescr_Uint64_Prim_167" = global %"$TyDescrTy_PrimTyp_160" { i32 1, i32 1 }
@"$TyDescr_Uint64_168" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_160"* @"$TyDescr_Uint64_Prim_167" to i8*) }
@"$TyDescr_Int128_Prim_169" = global %"$TyDescrTy_PrimTyp_160" { i32 0, i32 2 }
@"$TyDescr_Int128_170" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_160"* @"$TyDescr_Int128_Prim_169" to i8*) }
@"$TyDescr_Uint128_Prim_171" = global %"$TyDescrTy_PrimTyp_160" { i32 1, i32 2 }
@"$TyDescr_Uint128_172" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_160"* @"$TyDescr_Uint128_Prim_171" to i8*) }
@"$TyDescr_Int256_Prim_173" = global %"$TyDescrTy_PrimTyp_160" { i32 0, i32 3 }
@"$TyDescr_Int256_174" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_160"* @"$TyDescr_Int256_Prim_173" to i8*) }
@"$TyDescr_Uint256_Prim_175" = global %"$TyDescrTy_PrimTyp_160" { i32 1, i32 3 }
@"$TyDescr_Uint256_176" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_160"* @"$TyDescr_Uint256_Prim_175" to i8*) }
@"$TyDescr_String_Prim_177" = global %"$TyDescrTy_PrimTyp_160" { i32 2, i32 0 }
@"$TyDescr_String_178" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_160"* @"$TyDescr_String_Prim_177" to i8*) }
@"$TyDescr_Bnum_Prim_179" = global %"$TyDescrTy_PrimTyp_160" { i32 3, i32 0 }
@"$TyDescr_Bnum_180" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_160"* @"$TyDescr_Bnum_Prim_179" to i8*) }
@"$TyDescr_Message_Prim_181" = global %"$TyDescrTy_PrimTyp_160" { i32 4, i32 0 }
@"$TyDescr_Message_182" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_160"* @"$TyDescr_Message_Prim_181" to i8*) }
@"$TyDescr_Event_Prim_183" = global %"$TyDescrTy_PrimTyp_160" { i32 5, i32 0 }
@"$TyDescr_Event_184" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_160"* @"$TyDescr_Event_Prim_183" to i8*) }
@"$TyDescr_Exception_Prim_185" = global %"$TyDescrTy_PrimTyp_160" { i32 6, i32 0 }
@"$TyDescr_Exception_186" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_160"* @"$TyDescr_Exception_Prim_185" to i8*) }
@"$TyDescr_Bystr_Prim_187" = global %"$TyDescrTy_PrimTyp_160" { i32 7, i32 0 }
@"$TyDescr_Bystr_188" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_160"* @"$TyDescr_Bystr_Prim_187" to i8*) }
@"$TyDescr_Bystr64_Prim_189" = global %"$TyDescrTy_PrimTyp_160" { i32 8, i32 64 }
@"$TyDescr_Bystr64_190" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_160"* @"$TyDescr_Bystr64_Prim_189" to i8*) }
@"$TyDescr_Bystr32_Prim_191" = global %"$TyDescrTy_PrimTyp_160" { i32 8, i32 32 }
@"$TyDescr_Bystr32_192" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_160"* @"$TyDescr_Bystr32_Prim_191" to i8*) }
@"$TyDescr_Bystr20_Prim_193" = global %"$TyDescrTy_PrimTyp_160" { i32 8, i32 20 }
@"$TyDescr_Bystr20_194" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_160"* @"$TyDescr_Bystr20_Prim_193" to i8*) }
@"$TyDescr_ADT_Option_List_(ByStr20)_198" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_195"* @"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_221" to i8*) }
@"$TyDescr_ADT_Option_ud-registry.Record_199" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_195"* @"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_230" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_200" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_195"* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_239" to i8*) }
@"$TyDescr_ADT_ud-registry.Record_201" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_195"* @"$TyDescr_ud-registry.Record_ADTTyp_Specl_248" to i8*) }
@"$TyDescr_ADT_List_Message_202" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_195"* @"$TyDescr_List_Message_ADTTyp_Specl_260" to i8*) }
@"$TyDescr_ADT_List_ByStr20_203" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_195"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_269" to i8*) }
@"$TyDescr_ADT_Bool_204" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_195"* @"$TyDescr_Bool_ADTTyp_Specl_281" to i8*) }
@"$TyDescr_Map_206" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_205"* @"$TyDescr_MapTyp_284" to i8*) }
@"$TyDescr_Map_207" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_205"* @"$TyDescr_MapTyp_285" to i8*) }
@"$TyDescr_Map_208" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_205"* @"$TyDescr_MapTyp_286" to i8*) }
@"$TyDescr_Addr_211" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_210"* @"$TyDescr_AddrFields_287" to i8*) }
@"$TyDescr_Option_ADTTyp_212" = unnamed_addr constant %"$TyDescrTy_ADTTyp_196" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_241", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 3, %"$TyDescrTy_ADTTyp_Specl_195"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_195"*], [3 x %"$TyDescrTy_ADTTyp_Specl_195"*]* @"$TyDescr_Option_ADTTyp_m_specls_240", i32 0, i32 0) }
@"$TyDescr_Option_Some_List_(ByStr20)_Constr_m_args_213" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_203"]
@"$TyDescr_ADT_Some_214" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_List_(ByStr20)_ADTTyp_Constr_215" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_197" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_214", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_List_(ByStr20)_Constr_m_args_213", i32 0, i32 0) }
@"$TyDescr_Option_None_List_(ByStr20)_Constr_m_args_216" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_217" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_List_(ByStr20)_ADTTyp_Constr_218" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_197" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_217", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_List_(ByStr20)_Constr_m_args_216", i32 0, i32 0) }
@"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_m_constrs_219" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_197"*] [%"$TyDescrTy_ADTTyp_Constr_197"* @"$TyDescr_Option_Some_List_(ByStr20)_ADTTyp_Constr_215", %"$TyDescrTy_ADTTyp_Constr_197"* @"$TyDescr_Option_None_List_(ByStr20)_ADTTyp_Constr_218"]
@"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_m_TArgs_220" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_203"]
@"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_221" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_195" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_m_TArgs_220", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_197"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_197"*], [2 x %"$TyDescrTy_ADTTyp_Constr_197"*]* @"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_m_constrs_219", i32 0, i32 0), %"$TyDescrTy_ADTTyp_196"* @"$TyDescr_Option_ADTTyp_212" }
@"$TyDescr_Option_Some_ud-registry.Record_Constr_m_args_222" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_201"]
@"$TyDescr_ADT_Some_223" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ud-registry.Record_ADTTyp_Constr_224" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_197" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_223", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ud-registry.Record_Constr_m_args_222", i32 0, i32 0) }
@"$TyDescr_Option_None_ud-registry.Record_Constr_m_args_225" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_226" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ud-registry.Record_ADTTyp_Constr_227" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_197" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_226", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ud-registry.Record_Constr_m_args_225", i32 0, i32 0) }
@"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_m_constrs_228" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_197"*] [%"$TyDescrTy_ADTTyp_Constr_197"* @"$TyDescr_Option_Some_ud-registry.Record_ADTTyp_Constr_224", %"$TyDescrTy_ADTTyp_Constr_197"* @"$TyDescr_Option_None_ud-registry.Record_ADTTyp_Constr_227"]
@"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_m_TArgs_229" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_201"]
@"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_230" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_195" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_m_TArgs_229", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_197"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_197"*], [2 x %"$TyDescrTy_ADTTyp_Constr_197"*]* @"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_m_constrs_228", i32 0, i32 0), %"$TyDescrTy_ADTTyp_196"* @"$TyDescr_Option_ADTTyp_212" }
@"$TyDescr_Option_Some_ByStr20_Constr_m_args_231" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_194"]
@"$TyDescr_ADT_Some_232" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_ADTTyp_Constr_233" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_197" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_232", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_Constr_m_args_231", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_Constr_m_args_234" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_235" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_ADTTyp_Constr_236" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_197" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_235", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_Constr_m_args_234", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_constrs_237" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_197"*] [%"$TyDescrTy_ADTTyp_Constr_197"* @"$TyDescr_Option_Some_ByStr20_ADTTyp_Constr_233", %"$TyDescrTy_ADTTyp_Constr_197"* @"$TyDescr_Option_None_ByStr20_ADTTyp_Constr_236"]
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_TArgs_238" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_194"]
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_239" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_195" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_TArgs_238", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_197"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_197"*], [2 x %"$TyDescrTy_ADTTyp_Constr_197"*]* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_constrs_237", i32 0, i32 0), %"$TyDescrTy_ADTTyp_196"* @"$TyDescr_Option_ADTTyp_212" }
@"$TyDescr_Option_ADTTyp_m_specls_240" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_195"*] [%"$TyDescrTy_ADTTyp_Specl_195"* @"$TyDescr_Option_List_(ByStr20)_ADTTyp_Specl_221", %"$TyDescrTy_ADTTyp_Specl_195"* @"$TyDescr_Option_ud-registry.Record_ADTTyp_Specl_230", %"$TyDescrTy_ADTTyp_Specl_195"* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_239"]
@"$TyDescr_ADT_Option_241" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_ud-registry.Record_ADTTyp_242" = unnamed_addr constant %"$TyDescrTy_ADTTyp_196" { %TyDescrString { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$TyDescr_ADT_ud-registry.Record_250", i32 0, i32 0), i32 18 }, i32 0, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_195"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_195"*], [1 x %"$TyDescrTy_ADTTyp_Specl_195"*]* @"$TyDescr_ud-registry.Record_ADTTyp_m_specls_249", i32 0, i32 0) }
@"$TyDescr_ud-registry.Record_ud-registry.Record_Constr_m_args_243" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194"]
@"$TyDescr_ADT_ud-registry.Record_244" = unnamed_addr constant [18 x i8] c"ud-registry.Record"
@"$TyDescr_ud-registry.Record_ud-registry.Record_ADTTyp_Constr_245" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_197" { %TyDescrString { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$TyDescr_ADT_ud-registry.Record_244", i32 0, i32 0), i32 18 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_ud-registry.Record_ud-registry.Record_Constr_m_args_243", i32 0, i32 0) }
@"$TyDescr_ud-registry.Record_ADTTyp_Specl_m_constrs_246" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_197"*] [%"$TyDescrTy_ADTTyp_Constr_197"* @"$TyDescr_ud-registry.Record_ud-registry.Record_ADTTyp_Constr_245"]
@"$TyDescr_ud-registry.Record_ADTTyp_Specl_m_TArgs_247" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ud-registry.Record_ADTTyp_Specl_248" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_195" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_ud-registry.Record_ADTTyp_Specl_m_TArgs_247", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_197"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_197"*], [1 x %"$TyDescrTy_ADTTyp_Constr_197"*]* @"$TyDescr_ud-registry.Record_ADTTyp_Specl_m_constrs_246", i32 0, i32 0), %"$TyDescrTy_ADTTyp_196"* @"$TyDescr_ud-registry.Record_ADTTyp_242" }
@"$TyDescr_ud-registry.Record_ADTTyp_m_specls_249" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_195"*] [%"$TyDescrTy_ADTTyp_Specl_195"* @"$TyDescr_ud-registry.Record_ADTTyp_Specl_248"]
@"$TyDescr_ADT_ud-registry.Record_250" = unnamed_addr constant [18 x i8] c"ud-registry.Record"
@"$TyDescr_List_ADTTyp_251" = unnamed_addr constant %"$TyDescrTy_ADTTyp_196" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_271", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_195"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_195"*], [2 x %"$TyDescrTy_ADTTyp_Specl_195"*]* @"$TyDescr_List_ADTTyp_m_specls_270", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_252" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_182", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_202"]
@"$TyDescr_ADT_Cons_253" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_254" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_197" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_253", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_252", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_255" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_256" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_257" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_197" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_256", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_255", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_258" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_197"*] [%"$TyDescrTy_ADTTyp_Constr_197"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_254", %"$TyDescrTy_ADTTyp_Constr_197"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_257"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_259" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_182"]
@"$TyDescr_List_Message_ADTTyp_Specl_260" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_195" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_259", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_197"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_197"*], [2 x %"$TyDescrTy_ADTTyp_Constr_197"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_258", i32 0, i32 0), %"$TyDescrTy_ADTTyp_196"* @"$TyDescr_List_ADTTyp_251" }
@"$TyDescr_List_Cons_ByStr20_Constr_m_args_261" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_203"]
@"$TyDescr_ADT_Cons_262" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_263" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_197" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_262", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_Constr_m_args_261", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_Constr_m_args_264" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_265" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_266" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_197" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_265", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_Constr_m_args_264", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_267" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_197"*] [%"$TyDescrTy_ADTTyp_Constr_197"* @"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_263", %"$TyDescrTy_ADTTyp_Constr_197"* @"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_266"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_268" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_194"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_269" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_195" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_268", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_197"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_197"*], [2 x %"$TyDescrTy_ADTTyp_Constr_197"*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_267", i32 0, i32 0), %"$TyDescrTy_ADTTyp_196"* @"$TyDescr_List_ADTTyp_251" }
@"$TyDescr_List_ADTTyp_m_specls_270" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_195"*] [%"$TyDescrTy_ADTTyp_Specl_195"* @"$TyDescr_List_Message_ADTTyp_Specl_260", %"$TyDescrTy_ADTTyp_Specl_195"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_269"]
@"$TyDescr_ADT_List_271" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Bool_ADTTyp_272" = unnamed_addr constant %"$TyDescrTy_ADTTyp_196" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_283", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_195"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_195"*], [1 x %"$TyDescrTy_ADTTyp_Specl_195"*]* @"$TyDescr_Bool_ADTTyp_m_specls_282", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_273" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_274" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_275" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_197" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_274", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_273", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_276" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_277" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_278" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_197" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_277", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_276", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_279" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_197"*] [%"$TyDescrTy_ADTTyp_Constr_197"* @"$TyDescr_Bool_True_ADTTyp_Constr_275", %"$TyDescrTy_ADTTyp_Constr_197"* @"$TyDescr_Bool_False_ADTTyp_Constr_278"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_280" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_281" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_195" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_280", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_197"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_197"*], [2 x %"$TyDescrTy_ADTTyp_Constr_197"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_279", i32 0, i32 0), %"$TyDescrTy_ADTTyp_196"* @"$TyDescr_Bool_ADTTyp_272" }
@"$TyDescr_Bool_ADTTyp_m_specls_282" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_195"*] [%"$TyDescrTy_ADTTyp_Specl_195"* @"$TyDescr_Bool_ADTTyp_Specl_281"]
@"$TyDescr_ADT_Bool_283" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_284" = unnamed_addr constant %"$TyDescr_MapTyp_205" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_203" }
@"$TyDescr_MapTyp_285" = unnamed_addr constant %"$TyDescr_MapTyp_205" { %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194" }
@"$TyDescr_MapTyp_286" = unnamed_addr constant %"$TyDescr_MapTyp_205" { %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192", %_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_201" }
@"$TyDescr_AddrFields_287" = unnamed_addr constant %"$TyDescr_AddrTyp_210" { i32 -1, %"$TyDescr_AddrFieldTyp_209"* null }
@"$stringlit_1488" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1493" = unnamed_addr constant [8 x i8] c"AdminSet"
@"$stringlit_1496" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_1503" = unnamed_addr constant [10 x i8] c"isApproved"
@"$stringlit_1518" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1523" = unnamed_addr constant [11 x i8] c"ApprovedFor"
@"$stringlit_1526" = unnamed_addr constant [4 x i8] c"user"
@"$stringlit_1533" = unnamed_addr constant [8 x i8] c"operator"
@"$stringlit_1540" = unnamed_addr constant [10 x i8] c"isApproved"
@"$stringlit_1555" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1560" = unnamed_addr constant [8 x i8] c"Approved"
@"$stringlit_1563" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_1578" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1583" = unnamed_addr constant [12 x i8] c"NewRegistrar"
@"$stringlit_1586" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_1601" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1606" = unnamed_addr constant [9 x i8] c"NewDomain"
@"$stringlit_1609" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_1616" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_1631" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1636" = unnamed_addr constant [10 x i8] c"Configured"
@"$stringlit_1639" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_1646" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_1653" = unnamed_addr constant [8 x i8] c"resolver"
@"$stringlit_1668" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_1673" = unnamed_addr constant [5 x i8] c"Error"
@"$stringlit_1676" = unnamed_addr constant [3 x i8] c"msg"
@list_foldr = global { i8*, i8* }* null
@list_foldk = global { i8*, i8* }* null
@BoolUtils.andb = global { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.orb = global { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } zeroinitializer
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
@ud-registry.listByStr20Contains = global { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } zeroinitializer
@ud-registry.listByStr20Excludes = global { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } zeroinitializer
@ud-registry.listByStr20FilterOut = global { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } zeroinitializer
@ud-registry.xandb = global { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } zeroinitializer
@ud-registry.eAdminSet = global { i8* (i8*, [20 x i8]*, %TName_Bool*)*, i8* } zeroinitializer
@ud-registry.eApprovedFor = global { i8* (i8*, [20 x i8]*, [20 x i8]*, %TName_Bool*)*, i8* } zeroinitializer
@ud-registry.eApproved = global { i8* (i8*, [20 x i8]*)*, i8* } zeroinitializer
@ud-registry.eNewRegistrar = global { i8* (i8*, [20 x i8]*)*, i8* } zeroinitializer
@ud-registry.eNewDomain = global { i8* (i8*, [32 x i8]*, %String)*, i8* } zeroinitializer
@ud-registry.eConfigured = global { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* } zeroinitializer
@ud-registry.eError = global { i8* (i8*, %String)*, i8* } zeroinitializer
@ud-registry.recordMemberOwner = global { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } zeroinitializer
@ud-registry.parentLabelToNode = global { void (i8*, [32 x i8]*, [32 x i8]*, %String)*, i8* } zeroinitializer
@ud-registry.getIsOAO = global { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@_cparam_initialOwner = global [20 x i8] zeroinitializer
@_cparam_rootNode = global [32 x i8] zeroinitializer
@"$records_2252" = unnamed_addr constant [8 x i8] c"records\00"
@"$registrar_2262" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$approvals_2275" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_2287" = unnamed_addr constant [10 x i8] c"operators\00"
@"$admins_2303" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_2310" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_2443" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_2488" = unnamed_addr constant [26 x i8] c"Sender not root node owner"
@"$records_2528" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_2591" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$approvals_2696" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$stringlit_2742" = unnamed_addr constant [21 x i8] c"Sender not node owner"
@"$operators_2781" = unnamed_addr constant [10 x i8] c"operators\00"
@"$operators_2923" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_2971" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_2987" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_3021" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3093" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_3139" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_3144" = unnamed_addr constant [18 x i8] c"onConfigureSuccess"
@"$stringlit_3147" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_3154" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_3161" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_3168" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_3214" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$stringlit_3252" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_3257" = unnamed_addr constant [18 x i8] c"onConfigureFailure"
@"$stringlit_3260" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_3267" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_3275" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_3282" = unnamed_addr constant [10 x i8] c"_recipient"
@"$records_3331" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3347" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_3381" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_3454" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_3502" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$records_3542" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3558" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_3592" = unnamed_addr constant [10 x i8] c"operators\00"
@"$approvals_3645" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$records_3674" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_3721" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_3726" = unnamed_addr constant [17 x i8] c"onTransferSuccess"
@"$stringlit_3729" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_3736" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_3743" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_3750" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_3796" = unnamed_addr constant [43 x i8] c"Sender not node owner, approved or operator"
@"$stringlit_3834" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_3839" = unnamed_addr constant [17 x i8] c"onTransferFailure"
@"$stringlit_3842" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_3849" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_3856" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_3863" = unnamed_addr constant [10 x i8] c"_recipient"
@"$records_3910" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_3926" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$operators_3960" = unnamed_addr constant [10 x i8] c"operators\00"
@"$records_4024" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4084" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$records_4114" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_4162" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4167" = unnamed_addr constant [15 x i8] c"onAssignSuccess"
@"$stringlit_4170" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_4177" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_4184" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4191" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4198" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_4244" = unnamed_addr constant [45 x i8] c"Sender not parent owner, approved or operator"
@"$stringlit_4282" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_4287" = unnamed_addr constant [15 x i8] c"onAssignFailure"
@"$stringlit_4290" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_4297" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_4304" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_4312" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_4319" = unnamed_addr constant [10 x i8] c"_recipient"
@"$admins_4366" = unnamed_addr constant [7 x i8] c"admins\00"
@"$records_4399" = unnamed_addr constant [8 x i8] c"records\00"
@"$records_4416" = unnamed_addr constant [8 x i8] c"records\00"
@"$registrar_4430" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$records_4676" = unnamed_addr constant [8 x i8] c"records\00"
@"$stringlit_4724" = unnamed_addr constant [12 x i8] c"Sender admin"
@"$admins_4763" = unnamed_addr constant [7 x i8] c"admins\00"
@"$registrar_4839" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$records_4874" = unnamed_addr constant [8 x i8] c"records\00"
@"$approvals_4891" = unnamed_addr constant [10 x i8] c"approvals\00"
@"$registrar_4955" = unnamed_addr constant [10 x i8] c"registrar\00"
@"$stringlit_5058" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_5063" = unnamed_addr constant [8 x i8] c"register"
@"$stringlit_5066" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_5073" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_5081" = unnamed_addr constant [6 x i8] c"origin"
@"$stringlit_5088" = unnamed_addr constant [4 x i8] c"node"
@"$stringlit_5096" = unnamed_addr constant [6 x i8] c"parent"
@"$stringlit_5103" = unnamed_addr constant [5 x i8] c"label"
@"$records_5151" = unnamed_addr constant [8 x i8] c"records\00"
@_tydescr_table = constant [28 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_202", %_TyDescrTy_Typ* @"$TyDescr_Event_184", %_TyDescrTy_Typ* @"$TyDescr_Int64_166", %_TyDescrTy_Typ* @"$TyDescr_Addr_211", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_204", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_200", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ* @"$TyDescr_Uint256_176", %_TyDescrTy_Typ* @"$TyDescr_Uint32_164", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_190", %_TyDescrTy_Typ* @"$TyDescr_Uint64_168", %_TyDescrTy_Typ* @"$TyDescr_Bnum_180", %_TyDescrTy_Typ* @"$TyDescr_Uint128_172", %_TyDescrTy_Typ* @"$TyDescr_Map_208", %_TyDescrTy_Typ* @"$TyDescr_Exception_186", %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_203", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_198", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_199", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192", %_TyDescrTy_Typ* @"$TyDescr_Int256_174", %_TyDescrTy_Typ* @"$TyDescr_Int128_170", %_TyDescrTy_Typ* @"$TyDescr_Map_206", %_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_201", %_TyDescrTy_Typ* @"$TyDescr_Bystr_188", %_TyDescrTy_Typ* @"$TyDescr_Message_182", %_TyDescrTy_Typ* @"$TyDescr_Map_207", %_TyDescrTy_Typ* @"$TyDescr_Int32_162"]
@_tydescr_table_length = constant i32 28
@"$pname__scilla_version_5269" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_5270" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_5271" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_initialOwner_5272" = unnamed_addr constant [12 x i8] c"initialOwner"
@"$pname_rootNode_5273" = unnamed_addr constant [8 x i8] c"rootNode"
@_contract_parameters = constant [5 x %"$ParamDescr_5267"] [%"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_5269", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_164" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_5270", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_5271", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_180" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$pname_initialOwner_5272", i32 0, i32 0), i32 12 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pname_rootNode_5273", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192" }]
@_contract_parameters_length = constant i32 5
@"$tpname__amount_5274" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5275" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5276" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_5277" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_5278" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_setAdmin_5279" = unnamed_addr constant [5 x %"$ParamDescr_5267"] [%"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5274", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_172" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5275", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5276", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5277", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_5278", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_204" }]
@"$tname_setAdmin_5280" = unnamed_addr constant [8 x i8] c"setAdmin"
@"$tpname__amount_5281" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5282" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5283" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5284" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_address_5285" = unnamed_addr constant [7 x i8] c"address"
@"$tparams_approve_5286" = unnamed_addr constant [5 x %"$ParamDescr_5267"] [%"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5281", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_172" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5282", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5283", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5284", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5285", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194" }]
@"$tname_approve_5287" = unnamed_addr constant [7 x i8] c"approve"
@"$tpname__amount_5288" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5289" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5290" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_5291" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_5292" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_approveFor_5293" = unnamed_addr constant [5 x %"$ParamDescr_5267"] [%"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5288", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_172" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5289", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5290", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5291", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_5292", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_204" }]
@"$tname_approveFor_5294" = unnamed_addr constant [10 x i8] c"approveFor"
@"$tpname__amount_5295" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5296" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5297" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5298" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_owner_5299" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_5300" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_configureNode_5301" = unnamed_addr constant [6 x %"$ParamDescr_5267"] [%"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5295", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_172" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5296", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5297", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5298", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5299", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_5300", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194" }]
@"$tname_configureNode_5302" = unnamed_addr constant [13 x i8] c"configureNode"
@"$tpname__amount_5303" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5304" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5305" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5306" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_resolver_5307" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_configureResolver_5308" = unnamed_addr constant [5 x %"$ParamDescr_5267"] [%"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5303", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_172" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5304", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5305", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5306", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_5307", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194" }]
@"$tname_configureResolver_5309" = unnamed_addr constant [17 x i8] c"configureResolver"
@"$tpname__amount_5310" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5311" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5312" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5313" = unnamed_addr constant [4 x i8] c"node"
@"$tpname_owner_5314" = unnamed_addr constant [5 x i8] c"owner"
@"$tparams_transfer_5315" = unnamed_addr constant [5 x %"$ParamDescr_5267"] [%"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5310", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_172" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5311", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5312", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5313", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5314", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194" }]
@"$tname_transfer_5316" = unnamed_addr constant [8 x i8] c"transfer"
@"$tpname__amount_5317" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5318" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5319" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_parent_5320" = unnamed_addr constant [6 x i8] c"parent"
@"$tpname_label_5321" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_5322" = unnamed_addr constant [5 x i8] c"owner"
@"$tparams_assign_5323" = unnamed_addr constant [6 x %"$ParamDescr_5267"] [%"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5317", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_172" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5318", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5319", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_parent_5320", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_5321", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_178" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5322", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194" }]
@"$tname_assign_5324" = unnamed_addr constant [6 x i8] c"assign"
@"$tpname__amount_5325" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5326" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5327" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_label_5328" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_5329" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_5330" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_bestow_5331" = unnamed_addr constant [6 x %"$ParamDescr_5267"] [%"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5325", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_172" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5326", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5327", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_5328", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_178" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_5329", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_5330", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194" }]
@"$tname_bestow_5332" = unnamed_addr constant [6 x i8] c"bestow"
@"$tpname__amount_5333" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5334" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5335" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_5336" = unnamed_addr constant [7 x i8] c"address"
@"$tparams_setRegistrar_5337" = unnamed_addr constant [4 x %"$ParamDescr_5267"] [%"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5333", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_172" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5334", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5335", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_5336", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194" }]
@"$tname_setRegistrar_5338" = unnamed_addr constant [12 x i8] c"setRegistrar"
@"$tpname__amount_5339" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5340" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5341" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_parent_5342" = unnamed_addr constant [6 x i8] c"parent"
@"$tpname_label_5343" = unnamed_addr constant [5 x i8] c"label"
@"$tparams_register_5344" = unnamed_addr constant [5 x %"$ParamDescr_5267"] [%"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5339", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_172" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5340", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5341", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_parent_5342", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_5343", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_178" }]
@"$tname_register_5345" = unnamed_addr constant [8 x i8] c"register"
@"$tpname__amount_5346" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5347" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5348" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_node_5349" = unnamed_addr constant [4 x i8] c"node"
@"$tparams_onResolverConfigured_5350" = unnamed_addr constant [4 x %"$ParamDescr_5267"] [%"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5346", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_172" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5347", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5348", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_211" }, %"$ParamDescr_5267" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_node_5349", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192" }]
@"$tname_onResolverConfigured_5351" = unnamed_addr constant [20 x i8] c"onResolverConfigured"
@_transition_parameters = constant [11 x %"$TransDescr_5268"] [%"$TransDescr_5268" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setAdmin_5280", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_5267"* getelementptr inbounds ([5 x %"$ParamDescr_5267"], [5 x %"$ParamDescr_5267"]* @"$tparams_setAdmin_5279", i32 0, i32 0) }, %"$TransDescr_5268" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_approve_5287", i32 0, i32 0), i32 7 }, i32 5, %"$ParamDescr_5267"* getelementptr inbounds ([5 x %"$ParamDescr_5267"], [5 x %"$ParamDescr_5267"]* @"$tparams_approve_5286", i32 0, i32 0) }, %"$TransDescr_5268" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tname_approveFor_5294", i32 0, i32 0), i32 10 }, i32 5, %"$ParamDescr_5267"* getelementptr inbounds ([5 x %"$ParamDescr_5267"], [5 x %"$ParamDescr_5267"]* @"$tparams_approveFor_5293", i32 0, i32 0) }, %"$TransDescr_5268" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$tname_configureNode_5302", i32 0, i32 0), i32 13 }, i32 6, %"$ParamDescr_5267"* getelementptr inbounds ([6 x %"$ParamDescr_5267"], [6 x %"$ParamDescr_5267"]* @"$tparams_configureNode_5301", i32 0, i32 0) }, %"$TransDescr_5268" { %ParamDescrString { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$tname_configureResolver_5309", i32 0, i32 0), i32 17 }, i32 5, %"$ParamDescr_5267"* getelementptr inbounds ([5 x %"$ParamDescr_5267"], [5 x %"$ParamDescr_5267"]* @"$tparams_configureResolver_5308", i32 0, i32 0) }, %"$TransDescr_5268" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_transfer_5316", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_5267"* getelementptr inbounds ([5 x %"$ParamDescr_5267"], [5 x %"$ParamDescr_5267"]* @"$tparams_transfer_5315", i32 0, i32 0) }, %"$TransDescr_5268" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_assign_5324", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_5267"* getelementptr inbounds ([6 x %"$ParamDescr_5267"], [6 x %"$ParamDescr_5267"]* @"$tparams_assign_5323", i32 0, i32 0) }, %"$TransDescr_5268" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_bestow_5332", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_5267"* getelementptr inbounds ([6 x %"$ParamDescr_5267"], [6 x %"$ParamDescr_5267"]* @"$tparams_bestow_5331", i32 0, i32 0) }, %"$TransDescr_5268" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$tname_setRegistrar_5338", i32 0, i32 0), i32 12 }, i32 4, %"$ParamDescr_5267"* getelementptr inbounds ([4 x %"$ParamDescr_5267"], [4 x %"$ParamDescr_5267"]* @"$tparams_setRegistrar_5337", i32 0, i32 0) }, %"$TransDescr_5268" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_register_5345", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_5267"* getelementptr inbounds ([5 x %"$ParamDescr_5267"], [5 x %"$ParamDescr_5267"]* @"$tparams_register_5344", i32 0, i32 0) }, %"$TransDescr_5268" { %ParamDescrString { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"$tname_onResolverConfigured_5351", i32 0, i32 0), i32 20 }, i32 4, %"$ParamDescr_5267"* getelementptr inbounds ([4 x %"$ParamDescr_5267"], [4 x %"$ParamDescr_5267"]* @"$tparams_onResolverConfigured_5350", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 11

define internal %TName_Bool* @"$fundef_119"(%"$$fundef_119_env_288"* %0, [20 x i8]* %1, [20 x i8]* %2, %TName_Option_ByStr20* %3, %"TName_Option_List_(ByStr20)"* %4) !dbg !4 {
entry:
  %recordOwner = load [20 x i8], [20 x i8]* %2, align 1
  %sender = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_119_env_BoolUtils.orb_1796" = getelementptr inbounds %"$$fundef_119_env_288", %"$$fundef_119_env_288"* %0, i32 0, i32 0
  %"$BoolUtils.orb_envload_1797" = load { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* %"$$fundef_119_env_BoolUtils.orb_1796", align 8
  %BoolUtils.orb = alloca { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_envload_1797", { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$$fundef_119_env_ud-registry.listByStr20Contains_1798" = getelementptr inbounds %"$$fundef_119_env_288", %"$$fundef_119_env_288"* %0, i32 0, i32 1
  %"$ud-registry.listByStr20Contains_envload_1799" = load { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* %"$$fundef_119_env_ud-registry.listByStr20Contains_1798", align 8
  %ud-registry.listByStr20Contains = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_envload_1799", { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_120" = alloca %TName_Bool*, align 8
  %"$gasrem_1800" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1801" = icmp ugt i64 1, %"$gasrem_1800"
  br i1 %"$gascmp_1801", label %"$out_of_gas_1802", label %"$have_gas_1803"

"$out_of_gas_1802":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1803"

"$have_gas_1803":                                 ; preds = %"$out_of_gas_1802", %entry
  %"$consume_1804" = sub i64 %"$gasrem_1800", 1
  store i64 %"$consume_1804", i64* @_gasrem, align 8
  %isOwner = alloca %TName_Bool*, align 8
  %"$gasrem_1805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1806" = icmp ugt i64 20, %"$gasrem_1805"
  br i1 %"$gascmp_1806", label %"$out_of_gas_1807", label %"$have_gas_1808"

"$out_of_gas_1807":                               ; preds = %"$have_gas_1803"
  call void @_out_of_gas()
  br label %"$have_gas_1808"

"$have_gas_1808":                                 ; preds = %"$out_of_gas_1807", %"$have_gas_1803"
  %"$consume_1809" = sub i64 %"$gasrem_1805", 20
  store i64 %"$consume_1809", i64* @_gasrem, align 8
  %"$execptr_load_1810" = load i8*, i8** @_execptr, align 8
  %"$eq_sender_1811" = alloca [20 x i8], align 1
  store [20 x i8] %sender, [20 x i8]* %"$eq_sender_1811", align 1
  %"$$eq_sender_1811_1812" = bitcast [20 x i8]* %"$eq_sender_1811" to i8*
  %"$eq_recordOwner_1813" = alloca [20 x i8], align 1
  store [20 x i8] %recordOwner, [20 x i8]* %"$eq_recordOwner_1813", align 1
  %"$$eq_recordOwner_1813_1814" = bitcast [20 x i8]* %"$eq_recordOwner_1813" to i8*
  %"$eq_call_1815" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_1810", i32 20, i8* %"$$eq_sender_1811_1812", i8* %"$$eq_recordOwner_1813_1814"), !dbg !8
  store %TName_Bool* %"$eq_call_1815", %TName_Bool** %isOwner, align 8, !dbg !8
  %"$gasrem_1817" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1818" = icmp ugt i64 1, %"$gasrem_1817"
  br i1 %"$gascmp_1818", label %"$out_of_gas_1819", label %"$have_gas_1820"

"$out_of_gas_1819":                               ; preds = %"$have_gas_1808"
  call void @_out_of_gas()
  br label %"$have_gas_1820"

"$have_gas_1820":                                 ; preds = %"$out_of_gas_1819", %"$have_gas_1808"
  %"$consume_1821" = sub i64 %"$gasrem_1817", 1
  store i64 %"$consume_1821", i64* @_gasrem, align 8
  %isApproved = alloca %TName_Bool*, align 8
  %"$gasrem_1822" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1823" = icmp ugt i64 2, %"$gasrem_1822"
  br i1 %"$gascmp_1823", label %"$out_of_gas_1824", label %"$have_gas_1825"

"$out_of_gas_1824":                               ; preds = %"$have_gas_1820"
  call void @_out_of_gas()
  br label %"$have_gas_1825"

"$have_gas_1825":                                 ; preds = %"$out_of_gas_1824", %"$have_gas_1820"
  %"$consume_1826" = sub i64 %"$gasrem_1822", 2
  store i64 %"$consume_1826", i64* @_gasrem, align 8
  %"$maybeApproved_tag_1828" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %3, i32 0, i32 0
  %"$maybeApproved_tag_1829" = load i8, i8* %"$maybeApproved_tag_1828", align 1
  switch i8 %"$maybeApproved_tag_1829", label %"$empty_default_1830" [
    i8 1, label %"$None_1831"
    i8 0, label %"$Some_1841"
  ], !dbg !9

"$None_1831":                                     ; preds = %"$have_gas_1825"
  %"$maybeApproved_1832" = bitcast %TName_Option_ByStr20* %3 to %CName_None_ByStr20*
  %"$gasrem_1833" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1834" = icmp ugt i64 1, %"$gasrem_1833"
  br i1 %"$gascmp_1834", label %"$out_of_gas_1835", label %"$have_gas_1836"

"$out_of_gas_1835":                               ; preds = %"$None_1831"
  call void @_out_of_gas()
  br label %"$have_gas_1836"

"$have_gas_1836":                                 ; preds = %"$out_of_gas_1835", %"$None_1831"
  %"$consume_1837" = sub i64 %"$gasrem_1833", 1
  store i64 %"$consume_1837", i64* @_gasrem, align 8
  %"$adtval_1838_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1838_salloc" = call i8* @_salloc(i8* %"$adtval_1838_load", i64 1)
  %"$adtval_1838" = bitcast i8* %"$adtval_1838_salloc" to %CName_False*
  %"$adtgep_1839" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1838", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1839", align 1
  %"$adtptr_1840" = bitcast %CName_False* %"$adtval_1838" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1840", %TName_Bool** %isApproved, align 8, !dbg !10
  br label %"$matchsucc_1827"

"$Some_1841":                                     ; preds = %"$have_gas_1825"
  %"$maybeApproved_1842" = bitcast %TName_Option_ByStr20* %3 to %CName_Some_ByStr20*
  %"$approved_gep_1843" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_1842", i32 0, i32 1
  %"$approved_load_1844" = load [20 x i8], [20 x i8]* %"$approved_gep_1843", align 1
  %approved = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_1844", [20 x i8]* %approved, align 1
  %"$gasrem_1845" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1846" = icmp ugt i64 20, %"$gasrem_1845"
  br i1 %"$gascmp_1846", label %"$out_of_gas_1847", label %"$have_gas_1848"

"$out_of_gas_1847":                               ; preds = %"$Some_1841"
  call void @_out_of_gas()
  br label %"$have_gas_1848"

"$have_gas_1848":                                 ; preds = %"$out_of_gas_1847", %"$Some_1841"
  %"$consume_1849" = sub i64 %"$gasrem_1845", 20
  store i64 %"$consume_1849", i64* @_gasrem, align 8
  %"$execptr_load_1850" = load i8*, i8** @_execptr, align 8
  %"$eq_sender_1851" = alloca [20 x i8], align 1
  store [20 x i8] %sender, [20 x i8]* %"$eq_sender_1851", align 1
  %"$$eq_sender_1851_1852" = bitcast [20 x i8]* %"$eq_sender_1851" to i8*
  %"$eq_approved_1853" = alloca [20 x i8], align 1
  %"$approved_1854" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_1854", [20 x i8]* %"$eq_approved_1853", align 1
  %"$$eq_approved_1853_1855" = bitcast [20 x i8]* %"$eq_approved_1853" to i8*
  %"$eq_call_1856" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_1850", i32 20, i8* %"$$eq_sender_1851_1852", i8* %"$$eq_approved_1853_1855"), !dbg !13
  store %TName_Bool* %"$eq_call_1856", %TName_Bool** %isApproved, align 8, !dbg !13
  br label %"$matchsucc_1827"

"$empty_default_1830":                            ; preds = %"$have_gas_1825"
  br label %"$matchsucc_1827"

"$matchsucc_1827":                                ; preds = %"$have_gas_1848", %"$have_gas_1836", %"$empty_default_1830"
  %"$gasrem_1858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1859" = icmp ugt i64 1, %"$gasrem_1858"
  br i1 %"$gascmp_1859", label %"$out_of_gas_1860", label %"$have_gas_1861"

"$out_of_gas_1860":                               ; preds = %"$matchsucc_1827"
  call void @_out_of_gas()
  br label %"$have_gas_1861"

"$have_gas_1861":                                 ; preds = %"$out_of_gas_1860", %"$matchsucc_1827"
  %"$consume_1862" = sub i64 %"$gasrem_1858", 1
  store i64 %"$consume_1862", i64* @_gasrem, align 8
  %isOperator = alloca %TName_Bool*, align 8
  %"$gasrem_1863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1864" = icmp ugt i64 2, %"$gasrem_1863"
  br i1 %"$gascmp_1864", label %"$out_of_gas_1865", label %"$have_gas_1866"

"$out_of_gas_1865":                               ; preds = %"$have_gas_1861"
  call void @_out_of_gas()
  br label %"$have_gas_1866"

"$have_gas_1866":                                 ; preds = %"$out_of_gas_1865", %"$have_gas_1861"
  %"$consume_1867" = sub i64 %"$gasrem_1863", 2
  store i64 %"$consume_1867", i64* @_gasrem, align 8
  %"$maybeOperators_tag_1869" = getelementptr inbounds %"TName_Option_List_(ByStr20)", %"TName_Option_List_(ByStr20)"* %4, i32 0, i32 0
  %"$maybeOperators_tag_1870" = load i8, i8* %"$maybeOperators_tag_1869", align 1
  switch i8 %"$maybeOperators_tag_1870", label %"$empty_default_1871" [
    i8 1, label %"$None_1872"
    i8 0, label %"$Some_1882"
  ], !dbg !15

"$None_1872":                                     ; preds = %"$have_gas_1866"
  %"$maybeOperators_1873" = bitcast %"TName_Option_List_(ByStr20)"* %4 to %"CName_None_List_(ByStr20)"*
  %"$gasrem_1874" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1875" = icmp ugt i64 1, %"$gasrem_1874"
  br i1 %"$gascmp_1875", label %"$out_of_gas_1876", label %"$have_gas_1877"

"$out_of_gas_1876":                               ; preds = %"$None_1872"
  call void @_out_of_gas()
  br label %"$have_gas_1877"

"$have_gas_1877":                                 ; preds = %"$out_of_gas_1876", %"$None_1872"
  %"$consume_1878" = sub i64 %"$gasrem_1874", 1
  store i64 %"$consume_1878", i64* @_gasrem, align 8
  %"$adtval_1879_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1879_salloc" = call i8* @_salloc(i8* %"$adtval_1879_load", i64 1)
  %"$adtval_1879" = bitcast i8* %"$adtval_1879_salloc" to %CName_False*
  %"$adtgep_1880" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1879", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1880", align 1
  %"$adtptr_1881" = bitcast %CName_False* %"$adtval_1879" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1881", %TName_Bool** %isOperator, align 8, !dbg !16
  br label %"$matchsucc_1868"

"$Some_1882":                                     ; preds = %"$have_gas_1866"
  %"$maybeOperators_1883" = bitcast %"TName_Option_List_(ByStr20)"* %4 to %"CName_Some_List_(ByStr20)"*
  %"$operators_gep_1884" = getelementptr inbounds %"CName_Some_List_(ByStr20)", %"CName_Some_List_(ByStr20)"* %"$maybeOperators_1883", i32 0, i32 1
  %"$operators_load_1885" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$operators_gep_1884", align 8
  %operators = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$operators_load_1885", %TName_List_ByStr20** %operators, align 8
  %"$gasrem_1886" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1887" = icmp ugt i64 1, %"$gasrem_1886"
  br i1 %"$gascmp_1887", label %"$out_of_gas_1888", label %"$have_gas_1889"

"$out_of_gas_1888":                               ; preds = %"$Some_1882"
  call void @_out_of_gas()
  br label %"$have_gas_1889"

"$have_gas_1889":                                 ; preds = %"$out_of_gas_1888", %"$Some_1882"
  %"$consume_1890" = sub i64 %"$gasrem_1886", 1
  store i64 %"$consume_1890", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_1891" = load { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_1892" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_1891", 0
  %"$ud-registry.listByStr20Contains_envptr_1893" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_1891", 1
  %"$operators_1894" = load %TName_List_ByStr20*, %TName_List_ByStr20** %operators, align 8
  %"$ud-registry.listByStr20Contains_sender_1895" = alloca [20 x i8], align 1
  store [20 x i8] %sender, [20 x i8]* %"$ud-registry.listByStr20Contains_sender_1895", align 1
  %"$ud-registry.listByStr20Contains_call_1896" = call %TName_Bool* %"$ud-registry.listByStr20Contains_fptr_1892"(i8* %"$ud-registry.listByStr20Contains_envptr_1893", %TName_List_ByStr20* %"$operators_1894", [20 x i8]* %"$ud-registry.listByStr20Contains_sender_1895"), !dbg !19
  store %TName_Bool* %"$ud-registry.listByStr20Contains_call_1896", %TName_Bool** %isOperator, align 8, !dbg !19
  br label %"$matchsucc_1868"

"$empty_default_1871":                            ; preds = %"$have_gas_1866"
  br label %"$matchsucc_1868"

"$matchsucc_1868":                                ; preds = %"$have_gas_1889", %"$have_gas_1877", %"$empty_default_1871"
  %"$gasrem_1897" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1898" = icmp ugt i64 1, %"$gasrem_1897"
  br i1 %"$gascmp_1898", label %"$out_of_gas_1899", label %"$have_gas_1900"

"$out_of_gas_1899":                               ; preds = %"$matchsucc_1868"
  call void @_out_of_gas()
  br label %"$have_gas_1900"

"$have_gas_1900":                                 ; preds = %"$out_of_gas_1899", %"$matchsucc_1868"
  %"$consume_1901" = sub i64 %"$gasrem_1897", 1
  store i64 %"$consume_1901", i64* @_gasrem, align 8
  %b1 = alloca %TName_Bool*, align 8
  %"$gasrem_1902" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1903" = icmp ugt i64 1, %"$gasrem_1902"
  br i1 %"$gascmp_1903", label %"$out_of_gas_1904", label %"$have_gas_1905"

"$out_of_gas_1904":                               ; preds = %"$have_gas_1900"
  call void @_out_of_gas()
  br label %"$have_gas_1905"

"$have_gas_1905":                                 ; preds = %"$out_of_gas_1904", %"$have_gas_1900"
  %"$consume_1906" = sub i64 %"$gasrem_1902", 1
  store i64 %"$consume_1906", i64* @_gasrem, align 8
  %"$BoolUtils.orb_1907" = load { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_1908" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_1907", 0
  %"$BoolUtils.orb_envptr_1909" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_1907", 1
  %"$isOwner_1910" = load %TName_Bool*, %TName_Bool** %isOwner, align 8
  %"$isApproved_1911" = load %TName_Bool*, %TName_Bool** %isApproved, align 8
  %"$BoolUtils.orb_call_1912" = call %TName_Bool* %"$BoolUtils.orb_fptr_1908"(i8* %"$BoolUtils.orb_envptr_1909", %TName_Bool* %"$isOwner_1910", %TName_Bool* %"$isApproved_1911"), !dbg !21
  store %TName_Bool* %"$BoolUtils.orb_call_1912", %TName_Bool** %b1, align 8, !dbg !21
  %"$gasrem_1913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1914" = icmp ugt i64 1, %"$gasrem_1913"
  br i1 %"$gascmp_1914", label %"$out_of_gas_1915", label %"$have_gas_1916"

"$out_of_gas_1915":                               ; preds = %"$have_gas_1905"
  call void @_out_of_gas()
  br label %"$have_gas_1916"

"$have_gas_1916":                                 ; preds = %"$out_of_gas_1915", %"$have_gas_1905"
  %"$consume_1917" = sub i64 %"$gasrem_1913", 1
  store i64 %"$consume_1917", i64* @_gasrem, align 8
  %"$BoolUtils.orb_1918" = load { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* %BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_1919" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_1918", 0
  %"$BoolUtils.orb_envptr_1920" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_1918", 1
  %"$b1_1921" = load %TName_Bool*, %TName_Bool** %b1, align 8
  %"$isOperator_1922" = load %TName_Bool*, %TName_Bool** %isOperator, align 8
  %"$BoolUtils.orb_call_1923" = call %TName_Bool* %"$BoolUtils.orb_fptr_1919"(i8* %"$BoolUtils.orb_envptr_1920", %TName_Bool* %"$b1_1921", %TName_Bool* %"$isOperator_1922"), !dbg !22
  store %TName_Bool* %"$BoolUtils.orb_call_1923", %TName_Bool** %"$retval_120", align 8, !dbg !22
  %"$$retval_120_1924" = load %TName_Bool*, %TName_Bool** %"$retval_120", align 8
  ret %TName_Bool* %"$$retval_120_1924"
}

define internal void @"$fundef_121"(%"$$fundef_121_env_289"* %0, [32 x i8]* %1, [32 x i8]* %2, %String %3) !dbg !23 {
entry:
  %parent = load [32 x i8], [32 x i8]* %2, align 1
  %"$retval_122" = alloca [32 x i8], align 1
  %"$gasrem_1731" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1732" = icmp ugt i64 1, %"$gasrem_1731"
  br i1 %"$gascmp_1732", label %"$out_of_gas_1733", label %"$have_gas_1734"

"$out_of_gas_1733":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1734"

"$have_gas_1734":                                 ; preds = %"$out_of_gas_1733", %entry
  %"$consume_1735" = sub i64 %"$gasrem_1731", 1
  store i64 %"$consume_1735", i64* @_gasrem, align 8
  %labelHash = alloca [32 x i8], align 1
  %"$_literal_cost_label_1736" = alloca %String, align 8
  store %String %3, %String* %"$_literal_cost_label_1736", align 8
  %"$$_literal_cost_label_1736_1737" = bitcast %String* %"$_literal_cost_label_1736" to i8*
  %"$_literal_cost_call_1738" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_178", i8* %"$$_literal_cost_label_1736_1737")
  %"$gasdivceil_1739" = urem i64 %"$_literal_cost_call_1738", 960
  %"$gasdivceil_1740" = udiv i64 %"$_literal_cost_call_1738", 960
  %"$gasdivceil_1741" = icmp eq i64 %"$gasdivceil_1739", 0
  %"$gasdivceil_1742" = add i64 %"$gasdivceil_1740", 1
  %"$gasdivceil_1743" = select i1 %"$gasdivceil_1741", i64 %"$gasdivceil_1740", i64 %"$gasdivceil_1742"
  %"$gasrem_1744" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1745" = icmp ugt i64 %"$gasdivceil_1743", %"$gasrem_1744"
  br i1 %"$gascmp_1745", label %"$out_of_gas_1746", label %"$have_gas_1747"

"$out_of_gas_1746":                               ; preds = %"$have_gas_1734"
  call void @_out_of_gas()
  br label %"$have_gas_1747"

"$have_gas_1747":                                 ; preds = %"$out_of_gas_1746", %"$have_gas_1734"
  %"$consume_1748" = sub i64 %"$gasrem_1744", %"$gasdivceil_1743"
  store i64 %"$consume_1748", i64* @_gasrem, align 8
  %"$execptr_load_1749" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_label_1750" = alloca %String, align 8
  store %String %3, %String* %"$sha256hash_label_1750", align 8
  %"$$sha256hash_label_1750_1751" = bitcast %String* %"$sha256hash_label_1750" to i8*
  %"$sha256hash_call_1752" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_1749", %_TyDescrTy_Typ* @"$TyDescr_String_178", i8* %"$$sha256hash_label_1750_1751"), !dbg !24
  %"$sha256hash_1754" = load [32 x i8], [32 x i8]* %"$sha256hash_call_1752", align 1
  store [32 x i8] %"$sha256hash_1754", [32 x i8]* %labelHash, align 1, !dbg !24
  %"$gasrem_1755" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1756" = icmp ugt i64 1, %"$gasrem_1755"
  br i1 %"$gascmp_1756", label %"$out_of_gas_1757", label %"$have_gas_1758"

"$out_of_gas_1757":                               ; preds = %"$have_gas_1747"
  call void @_out_of_gas()
  br label %"$have_gas_1758"

"$have_gas_1758":                                 ; preds = %"$out_of_gas_1757", %"$have_gas_1747"
  %"$consume_1759" = sub i64 %"$gasrem_1755", 1
  store i64 %"$consume_1759", i64* @_gasrem, align 8
  %nodeInput = alloca [64 x i8], align 1
  %"$gasrem_1760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1761" = icmp ugt i64 64, %"$gasrem_1760"
  br i1 %"$gascmp_1761", label %"$out_of_gas_1762", label %"$have_gas_1763"

"$out_of_gas_1762":                               ; preds = %"$have_gas_1758"
  call void @_out_of_gas()
  br label %"$have_gas_1763"

"$have_gas_1763":                                 ; preds = %"$out_of_gas_1762", %"$have_gas_1758"
  %"$consume_1764" = sub i64 %"$gasrem_1760", 64
  store i64 %"$consume_1764", i64* @_gasrem, align 8
  %"$execptr_load_1765" = load i8*, i8** @_execptr, align 8
  %"$concat_parent_1766" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$concat_parent_1766", align 1
  %"$$concat_parent_1766_1767" = bitcast [32 x i8]* %"$concat_parent_1766" to i8*
  %"$concat_labelHash_1768" = alloca [32 x i8], align 1
  %"$labelHash_1769" = load [32 x i8], [32 x i8]* %labelHash, align 1
  store [32 x i8] %"$labelHash_1769", [32 x i8]* %"$concat_labelHash_1768", align 1
  %"$$concat_labelHash_1768_1770" = bitcast [32 x i8]* %"$concat_labelHash_1768" to i8*
  %"$concat_call_1771" = call i8* @_concat_ByStrX(i8* %"$execptr_load_1765", i32 32, i8* %"$$concat_parent_1766_1767", i32 32, i8* %"$$concat_labelHash_1768_1770"), !dbg !25
  %"$concat_1772" = bitcast i8* %"$concat_call_1771" to [64 x i8]*
  %"$concat_1773" = load [64 x i8], [64 x i8]* %"$concat_1772", align 1
  store [64 x i8] %"$concat_1773", [64 x i8]* %nodeInput, align 1, !dbg !25
  %"$_literal_cost_nodeInput_1774" = alloca [64 x i8], align 1
  %"$nodeInput_1775" = load [64 x i8], [64 x i8]* %nodeInput, align 1
  store [64 x i8] %"$nodeInput_1775", [64 x i8]* %"$_literal_cost_nodeInput_1774", align 1
  %"$$_literal_cost_nodeInput_1774_1776" = bitcast [64 x i8]* %"$_literal_cost_nodeInput_1774" to i8*
  %"$_literal_cost_call_1777" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr64_190", i8* %"$$_literal_cost_nodeInput_1774_1776")
  %"$gasdivceil_1778" = urem i64 %"$_literal_cost_call_1777", 960
  %"$gasdivceil_1779" = udiv i64 %"$_literal_cost_call_1777", 960
  %"$gasdivceil_1780" = icmp eq i64 %"$gasdivceil_1778", 0
  %"$gasdivceil_1781" = add i64 %"$gasdivceil_1779", 1
  %"$gasdivceil_1782" = select i1 %"$gasdivceil_1780", i64 %"$gasdivceil_1779", i64 %"$gasdivceil_1781"
  %"$gasrem_1783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1784" = icmp ugt i64 %"$gasdivceil_1782", %"$gasrem_1783"
  br i1 %"$gascmp_1784", label %"$out_of_gas_1785", label %"$have_gas_1786"

"$out_of_gas_1785":                               ; preds = %"$have_gas_1763"
  call void @_out_of_gas()
  br label %"$have_gas_1786"

"$have_gas_1786":                                 ; preds = %"$out_of_gas_1785", %"$have_gas_1763"
  %"$consume_1787" = sub i64 %"$gasrem_1783", %"$gasdivceil_1782"
  store i64 %"$consume_1787", i64* @_gasrem, align 8
  %"$execptr_load_1788" = load i8*, i8** @_execptr, align 8
  %"$sha256hash_nodeInput_1789" = alloca [64 x i8], align 1
  %"$nodeInput_1790" = load [64 x i8], [64 x i8]* %nodeInput, align 1
  store [64 x i8] %"$nodeInput_1790", [64 x i8]* %"$sha256hash_nodeInput_1789", align 1
  %"$$sha256hash_nodeInput_1789_1791" = bitcast [64 x i8]* %"$sha256hash_nodeInput_1789" to i8*
  %"$sha256hash_call_1792" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_1788", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_190", i8* %"$$sha256hash_nodeInput_1789_1791"), !dbg !26
  %"$sha256hash_1794" = load [32 x i8], [32 x i8]* %"$sha256hash_call_1792", align 1
  store [32 x i8] %"$sha256hash_1794", [32 x i8]* %"$retval_122", align 1, !dbg !26
  %"$$retval_122_1795" = load [32 x i8], [32 x i8]* %"$retval_122", align 1
  store [32 x i8] %"$$retval_122_1795", [32 x i8]* %1, align 1
  ret void
}

define internal void @"$fundef_123"(%"$$fundef_123_env_290"* %0, [20 x i8]* %1, %TName_Option_ud-registry.Record* %2) !dbg !27 {
entry:
  %"$$fundef_123_env_ud-registry.zeroByStr20_1685" = getelementptr inbounds %"$$fundef_123_env_290", %"$$fundef_123_env_290"* %0, i32 0, i32 0
  %"$ud-registry.zeroByStr20_envload_1686" = load [20 x i8], [20 x i8]* %"$$fundef_123_env_ud-registry.zeroByStr20_1685", align 1
  %ud-registry.zeroByStr20 = alloca [20 x i8], align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_envload_1686", [20 x i8]* %ud-registry.zeroByStr20, align 1
  %"$retval_124" = alloca [20 x i8], align 1
  %"$gasrem_1687" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1688" = icmp ugt i64 2, %"$gasrem_1687"
  br i1 %"$gascmp_1688", label %"$out_of_gas_1689", label %"$have_gas_1690"

"$out_of_gas_1689":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1690"

"$have_gas_1690":                                 ; preds = %"$out_of_gas_1689", %entry
  %"$consume_1691" = sub i64 %"$gasrem_1687", 2
  store i64 %"$consume_1691", i64* @_gasrem, align 8
  %"$maybeRecord_tag_1693" = getelementptr inbounds %TName_Option_ud-registry.Record, %TName_Option_ud-registry.Record* %2, i32 0, i32 0
  %"$maybeRecord_tag_1694" = load i8, i8* %"$maybeRecord_tag_1693", align 1
  switch i8 %"$maybeRecord_tag_1694", label %"$empty_default_1695" [
    i8 1, label %"$None_1696"
    i8 0, label %"$Some_1704"
  ], !dbg !28

"$None_1696":                                     ; preds = %"$have_gas_1690"
  %"$maybeRecord_1697" = bitcast %TName_Option_ud-registry.Record* %2 to %CName_None_ud-registry.Record*
  %"$gasrem_1698" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1699" = icmp ugt i64 1, %"$gasrem_1698"
  br i1 %"$gascmp_1699", label %"$out_of_gas_1700", label %"$have_gas_1701"

"$out_of_gas_1700":                               ; preds = %"$None_1696"
  call void @_out_of_gas()
  br label %"$have_gas_1701"

"$have_gas_1701":                                 ; preds = %"$out_of_gas_1700", %"$None_1696"
  %"$consume_1702" = sub i64 %"$gasrem_1698", 1
  store i64 %"$consume_1702", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_1703" = load [20 x i8], [20 x i8]* %ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_1703", [20 x i8]* %"$retval_124", align 1, !dbg !29
  br label %"$matchsucc_1692"

"$Some_1704":                                     ; preds = %"$have_gas_1690"
  %"$maybeRecord_1705" = bitcast %TName_Option_ud-registry.Record* %2 to %CName_Some_ud-registry.Record*
  %"$record_gep_1706" = getelementptr inbounds %CName_Some_ud-registry.Record, %CName_Some_ud-registry.Record* %"$maybeRecord_1705", i32 0, i32 1
  %"$record_load_1707" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %"$record_gep_1706", align 8
  %record = alloca %TName_ud-registry.Record*, align 8
  store %TName_ud-registry.Record* %"$record_load_1707", %TName_ud-registry.Record** %record, align 8
  %"$gasrem_1708" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1709" = icmp ugt i64 1, %"$gasrem_1708"
  br i1 %"$gascmp_1709", label %"$out_of_gas_1710", label %"$have_gas_1711"

"$out_of_gas_1710":                               ; preds = %"$Some_1704"
  call void @_out_of_gas()
  br label %"$have_gas_1711"

"$have_gas_1711":                                 ; preds = %"$out_of_gas_1710", %"$Some_1704"
  %"$consume_1712" = sub i64 %"$gasrem_1708", 1
  store i64 %"$consume_1712", i64* @_gasrem, align 8
  %"$record_1714" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %record, align 8
  %"$record_tag_1715" = getelementptr inbounds %TName_ud-registry.Record, %TName_ud-registry.Record* %"$record_1714", i32 0, i32 0
  %"$record_tag_1716" = load i8, i8* %"$record_tag_1715", align 1
  switch i8 %"$record_tag_1716", label %"$empty_default_1717" [
    i8 0, label %"$ud-registry.Record_1718"
  ], !dbg !32

"$ud-registry.Record_1718":                       ; preds = %"$have_gas_1711"
  %"$record_1719" = bitcast %TName_ud-registry.Record* %"$record_1714" to %CName_ud-registry.Record*
  %"$owner_gep_1720" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_1719", i32 0, i32 1
  %"$owner_load_1721" = load [20 x i8], [20 x i8]* %"$owner_gep_1720", align 1
  %owner = alloca [20 x i8], align 1
  store [20 x i8] %"$owner_load_1721", [20 x i8]* %owner, align 1
  %"$resolver_gep_1722" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_1719", i32 0, i32 2
  %"$resolver_load_1723" = load [20 x i8], [20 x i8]* %"$resolver_gep_1722", align 1
  %resolver = alloca [20 x i8], align 1
  store [20 x i8] %"$resolver_load_1723", [20 x i8]* %resolver, align 1
  %"$gasrem_1724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1725" = icmp ugt i64 1, %"$gasrem_1724"
  br i1 %"$gascmp_1725", label %"$out_of_gas_1726", label %"$have_gas_1727"

"$out_of_gas_1726":                               ; preds = %"$ud-registry.Record_1718"
  call void @_out_of_gas()
  br label %"$have_gas_1727"

"$have_gas_1727":                                 ; preds = %"$out_of_gas_1726", %"$ud-registry.Record_1718"
  %"$consume_1728" = sub i64 %"$gasrem_1724", 1
  store i64 %"$consume_1728", i64* @_gasrem, align 8
  %"$owner_1729" = load [20 x i8], [20 x i8]* %owner, align 1
  store [20 x i8] %"$owner_1729", [20 x i8]* %"$retval_124", align 1, !dbg !34
  br label %"$matchsucc_1713"

"$empty_default_1717":                            ; preds = %"$have_gas_1711"
  br label %"$matchsucc_1713"

"$matchsucc_1713":                                ; preds = %"$have_gas_1727", %"$empty_default_1717"
  br label %"$matchsucc_1692"

"$empty_default_1695":                            ; preds = %"$have_gas_1690"
  br label %"$matchsucc_1692"

"$matchsucc_1692":                                ; preds = %"$matchsucc_1713", %"$have_gas_1701", %"$empty_default_1695"
  %"$$retval_124_1730" = load [20 x i8], [20 x i8]* %"$retval_124", align 1
  store [20 x i8] %"$$retval_124_1730", [20 x i8]* %1, align 1
  ret void
}

define internal i8* @"$fundef_125"(%"$$fundef_125_env_291"* %0, %String %1) !dbg !37 {
entry:
  %"$retval_126" = alloca i8*, align 8
  %"$gasrem_1662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1663" = icmp ugt i64 1, %"$gasrem_1662"
  br i1 %"$gascmp_1663", label %"$out_of_gas_1664", label %"$have_gas_1665"

"$out_of_gas_1664":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1665"

"$have_gas_1665":                                 ; preds = %"$out_of_gas_1664", %entry
  %"$consume_1666" = sub i64 %"$gasrem_1662", 1
  store i64 %"$consume_1666", i64* @_gasrem, align 8
  %"$msgobj_1667_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1667_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1667_salloc_load", i64 81)
  %"$msgobj_1667_salloc" = bitcast i8* %"$msgobj_1667_salloc_salloc" to [81 x i8]*
  %"$msgobj_1667" = bitcast [81 x i8]* %"$msgobj_1667_salloc" to i8*
  store i8 2, i8* %"$msgobj_1667", align 1
  %"$msgobj_fname_1669" = getelementptr i8, i8* %"$msgobj_1667", i32 1
  %"$msgobj_fname_1670" = bitcast i8* %"$msgobj_fname_1669" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1668", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1670", align 8
  %"$msgobj_td_1671" = getelementptr i8, i8* %"$msgobj_1667", i32 17
  %"$msgobj_td_1672" = bitcast i8* %"$msgobj_td_1671" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_1672", align 8
  %"$msgobj_v_1674" = getelementptr i8, i8* %"$msgobj_1667", i32 25
  %"$msgobj_v_1675" = bitcast i8* %"$msgobj_v_1674" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1673", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_1675", align 8
  %"$msgobj_fname_1677" = getelementptr i8, i8* %"$msgobj_1667", i32 41
  %"$msgobj_fname_1678" = bitcast i8* %"$msgobj_fname_1677" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1676", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_1678", align 8
  %"$msgobj_td_1679" = getelementptr i8, i8* %"$msgobj_1667", i32 57
  %"$msgobj_td_1680" = bitcast i8* %"$msgobj_td_1679" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_1680", align 8
  %"$msgobj_v_1681" = getelementptr i8, i8* %"$msgobj_1667", i32 65
  %"$msgobj_v_1682" = bitcast i8* %"$msgobj_v_1681" to %String*
  store %String %1, %String* %"$msgobj_v_1682", align 8
  store i8* %"$msgobj_1667", i8** %"$retval_126", align 8, !dbg !38
  %"$$retval_126_1684" = load i8*, i8** %"$retval_126", align 8
  ret i8* %"$$retval_126_1684"
}

define internal i8* @"$fundef_127"(%"$$fundef_127_env_292"* %0, [32 x i8]* %1, [20 x i8]* %2, [20 x i8]* %3) !dbg !39 {
entry:
  %resolver = load [20 x i8], [20 x i8]* %3, align 1
  %owner = load [20 x i8], [20 x i8]* %2, align 1
  %node = load [32 x i8], [32 x i8]* %1, align 1
  %"$retval_128" = alloca i8*, align 8
  %"$gasrem_1625" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1626" = icmp ugt i64 1, %"$gasrem_1625"
  br i1 %"$gascmp_1626", label %"$out_of_gas_1627", label %"$have_gas_1628"

"$out_of_gas_1627":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1628"

"$have_gas_1628":                                 ; preds = %"$out_of_gas_1627", %entry
  %"$consume_1629" = sub i64 %"$gasrem_1625", 1
  store i64 %"$consume_1629", i64* @_gasrem, align 8
  %"$msgobj_1630_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1630_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1630_salloc_load", i64 185)
  %"$msgobj_1630_salloc" = bitcast i8* %"$msgobj_1630_salloc_salloc" to [185 x i8]*
  %"$msgobj_1630" = bitcast [185 x i8]* %"$msgobj_1630_salloc" to i8*
  store i8 4, i8* %"$msgobj_1630", align 1
  %"$msgobj_fname_1632" = getelementptr i8, i8* %"$msgobj_1630", i32 1
  %"$msgobj_fname_1633" = bitcast i8* %"$msgobj_fname_1632" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1631", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1633", align 8
  %"$msgobj_td_1634" = getelementptr i8, i8* %"$msgobj_1630", i32 17
  %"$msgobj_td_1635" = bitcast i8* %"$msgobj_td_1634" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_1635", align 8
  %"$msgobj_v_1637" = getelementptr i8, i8* %"$msgobj_1630", i32 25
  %"$msgobj_v_1638" = bitcast i8* %"$msgobj_v_1637" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1636", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_1638", align 8
  %"$msgobj_fname_1640" = getelementptr i8, i8* %"$msgobj_1630", i32 41
  %"$msgobj_fname_1641" = bitcast i8* %"$msgobj_fname_1640" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1639", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1641", align 8
  %"$msgobj_td_1642" = getelementptr i8, i8* %"$msgobj_1630", i32 57
  %"$msgobj_td_1643" = bitcast i8* %"$msgobj_td_1642" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192", %_TyDescrTy_Typ** %"$msgobj_td_1643", align 8
  %"$msgobj_v_1644" = getelementptr i8, i8* %"$msgobj_1630", i32 65
  %"$msgobj_v_1645" = bitcast i8* %"$msgobj_v_1644" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_1645", align 1
  %"$msgobj_fname_1647" = getelementptr i8, i8* %"$msgobj_1630", i32 97
  %"$msgobj_fname_1648" = bitcast i8* %"$msgobj_fname_1647" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1646", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1648", align 8
  %"$msgobj_td_1649" = getelementptr i8, i8* %"$msgobj_1630", i32 113
  %"$msgobj_td_1650" = bitcast i8* %"$msgobj_td_1649" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_1650", align 8
  %"$msgobj_v_1651" = getelementptr i8, i8* %"$msgobj_1630", i32 121
  %"$msgobj_v_1652" = bitcast i8* %"$msgobj_v_1651" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_1652", align 1
  %"$msgobj_fname_1654" = getelementptr i8, i8* %"$msgobj_1630", i32 141
  %"$msgobj_fname_1655" = bitcast i8* %"$msgobj_fname_1654" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1653", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_1655", align 8
  %"$msgobj_td_1656" = getelementptr i8, i8* %"$msgobj_1630", i32 157
  %"$msgobj_td_1657" = bitcast i8* %"$msgobj_td_1656" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_1657", align 8
  %"$msgobj_v_1658" = getelementptr i8, i8* %"$msgobj_1630", i32 165
  %"$msgobj_v_1659" = bitcast i8* %"$msgobj_v_1658" to [20 x i8]*
  store [20 x i8] %resolver, [20 x i8]* %"$msgobj_v_1659", align 1
  store i8* %"$msgobj_1630", i8** %"$retval_128", align 8, !dbg !40
  %"$$retval_128_1661" = load i8*, i8** %"$retval_128", align 8
  ret i8* %"$$retval_128_1661"
}

define internal i8* @"$fundef_129"(%"$$fundef_129_env_293"* %0, [32 x i8]* %1, %String %2) !dbg !41 {
entry:
  %parent = load [32 x i8], [32 x i8]* %1, align 1
  %"$retval_130" = alloca i8*, align 8
  %"$gasrem_1595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1596" = icmp ugt i64 1, %"$gasrem_1595"
  br i1 %"$gascmp_1596", label %"$out_of_gas_1597", label %"$have_gas_1598"

"$out_of_gas_1597":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1598"

"$have_gas_1598":                                 ; preds = %"$out_of_gas_1597", %entry
  %"$consume_1599" = sub i64 %"$gasrem_1595", 1
  store i64 %"$consume_1599", i64* @_gasrem, align 8
  %"$msgobj_1600_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1600_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1600_salloc_load", i64 137)
  %"$msgobj_1600_salloc" = bitcast i8* %"$msgobj_1600_salloc_salloc" to [137 x i8]*
  %"$msgobj_1600" = bitcast [137 x i8]* %"$msgobj_1600_salloc" to i8*
  store i8 3, i8* %"$msgobj_1600", align 1
  %"$msgobj_fname_1602" = getelementptr i8, i8* %"$msgobj_1600", i32 1
  %"$msgobj_fname_1603" = bitcast i8* %"$msgobj_fname_1602" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1601", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1603", align 8
  %"$msgobj_td_1604" = getelementptr i8, i8* %"$msgobj_1600", i32 17
  %"$msgobj_td_1605" = bitcast i8* %"$msgobj_td_1604" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_1605", align 8
  %"$msgobj_v_1607" = getelementptr i8, i8* %"$msgobj_1600", i32 25
  %"$msgobj_v_1608" = bitcast i8* %"$msgobj_v_1607" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_1606", i32 0, i32 0), i32 9 }, %String* %"$msgobj_v_1608", align 8
  %"$msgobj_fname_1610" = getelementptr i8, i8* %"$msgobj_1600", i32 41
  %"$msgobj_fname_1611" = bitcast i8* %"$msgobj_fname_1610" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_1609", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_1611", align 8
  %"$msgobj_td_1612" = getelementptr i8, i8* %"$msgobj_1600", i32 57
  %"$msgobj_td_1613" = bitcast i8* %"$msgobj_td_1612" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192", %_TyDescrTy_Typ** %"$msgobj_td_1613", align 8
  %"$msgobj_v_1614" = getelementptr i8, i8* %"$msgobj_1600", i32 65
  %"$msgobj_v_1615" = bitcast i8* %"$msgobj_v_1614" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_1615", align 1
  %"$msgobj_fname_1617" = getelementptr i8, i8* %"$msgobj_1600", i32 97
  %"$msgobj_fname_1618" = bitcast i8* %"$msgobj_fname_1617" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1616", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_1618", align 8
  %"$msgobj_td_1619" = getelementptr i8, i8* %"$msgobj_1600", i32 113
  %"$msgobj_td_1620" = bitcast i8* %"$msgobj_td_1619" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_1620", align 8
  %"$msgobj_v_1621" = getelementptr i8, i8* %"$msgobj_1600", i32 121
  %"$msgobj_v_1622" = bitcast i8* %"$msgobj_v_1621" to %String*
  store %String %2, %String* %"$msgobj_v_1622", align 8
  store i8* %"$msgobj_1600", i8** %"$retval_130", align 8, !dbg !42
  %"$$retval_130_1624" = load i8*, i8** %"$retval_130", align 8
  ret i8* %"$$retval_130_1624"
}

define internal i8* @"$fundef_131"(%"$$fundef_131_env_294"* %0, [20 x i8]* %1) !dbg !43 {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_132" = alloca i8*, align 8
  %"$gasrem_1572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1573" = icmp ugt i64 1, %"$gasrem_1572"
  br i1 %"$gascmp_1573", label %"$out_of_gas_1574", label %"$have_gas_1575"

"$out_of_gas_1574":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1575"

"$have_gas_1575":                                 ; preds = %"$out_of_gas_1574", %entry
  %"$consume_1576" = sub i64 %"$gasrem_1572", 1
  store i64 %"$consume_1576", i64* @_gasrem, align 8
  %"$msgobj_1577_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1577_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1577_salloc_load", i64 85)
  %"$msgobj_1577_salloc" = bitcast i8* %"$msgobj_1577_salloc_salloc" to [85 x i8]*
  %"$msgobj_1577" = bitcast [85 x i8]* %"$msgobj_1577_salloc" to i8*
  store i8 2, i8* %"$msgobj_1577", align 1
  %"$msgobj_fname_1579" = getelementptr i8, i8* %"$msgobj_1577", i32 1
  %"$msgobj_fname_1580" = bitcast i8* %"$msgobj_fname_1579" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1578", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1580", align 8
  %"$msgobj_td_1581" = getelementptr i8, i8* %"$msgobj_1577", i32 17
  %"$msgobj_td_1582" = bitcast i8* %"$msgobj_td_1581" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_1582", align 8
  %"$msgobj_v_1584" = getelementptr i8, i8* %"$msgobj_1577", i32 25
  %"$msgobj_v_1585" = bitcast i8* %"$msgobj_v_1584" to %String*
  store %String { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$stringlit_1583", i32 0, i32 0), i32 12 }, %String* %"$msgobj_v_1585", align 8
  %"$msgobj_fname_1587" = getelementptr i8, i8* %"$msgobj_1577", i32 41
  %"$msgobj_fname_1588" = bitcast i8* %"$msgobj_fname_1587" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1586", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1588", align 8
  %"$msgobj_td_1589" = getelementptr i8, i8* %"$msgobj_1577", i32 57
  %"$msgobj_td_1590" = bitcast i8* %"$msgobj_td_1589" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_1590", align 8
  %"$msgobj_v_1591" = getelementptr i8, i8* %"$msgobj_1577", i32 65
  %"$msgobj_v_1592" = bitcast i8* %"$msgobj_v_1591" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %"$msgobj_v_1592", align 1
  store i8* %"$msgobj_1577", i8** %"$retval_132", align 8, !dbg !44
  %"$$retval_132_1594" = load i8*, i8** %"$retval_132", align 8
  ret i8* %"$$retval_132_1594"
}

define internal i8* @"$fundef_133"(%"$$fundef_133_env_295"* %0, [20 x i8]* %1) !dbg !45 {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_134" = alloca i8*, align 8
  %"$gasrem_1549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1550" = icmp ugt i64 1, %"$gasrem_1549"
  br i1 %"$gascmp_1550", label %"$out_of_gas_1551", label %"$have_gas_1552"

"$out_of_gas_1551":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1552"

"$have_gas_1552":                                 ; preds = %"$out_of_gas_1551", %entry
  %"$consume_1553" = sub i64 %"$gasrem_1549", 1
  store i64 %"$consume_1553", i64* @_gasrem, align 8
  %"$msgobj_1554_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1554_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1554_salloc_load", i64 85)
  %"$msgobj_1554_salloc" = bitcast i8* %"$msgobj_1554_salloc_salloc" to [85 x i8]*
  %"$msgobj_1554" = bitcast [85 x i8]* %"$msgobj_1554_salloc" to i8*
  store i8 2, i8* %"$msgobj_1554", align 1
  %"$msgobj_fname_1556" = getelementptr i8, i8* %"$msgobj_1554", i32 1
  %"$msgobj_fname_1557" = bitcast i8* %"$msgobj_fname_1556" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1555", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1557", align 8
  %"$msgobj_td_1558" = getelementptr i8, i8* %"$msgobj_1554", i32 17
  %"$msgobj_td_1559" = bitcast i8* %"$msgobj_td_1558" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_1559", align 8
  %"$msgobj_v_1561" = getelementptr i8, i8* %"$msgobj_1554", i32 25
  %"$msgobj_v_1562" = bitcast i8* %"$msgobj_v_1561" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1560", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_1562", align 8
  %"$msgobj_fname_1564" = getelementptr i8, i8* %"$msgobj_1554", i32 41
  %"$msgobj_fname_1565" = bitcast i8* %"$msgobj_fname_1564" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1563", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1565", align 8
  %"$msgobj_td_1566" = getelementptr i8, i8* %"$msgobj_1554", i32 57
  %"$msgobj_td_1567" = bitcast i8* %"$msgobj_td_1566" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_1567", align 8
  %"$msgobj_v_1568" = getelementptr i8, i8* %"$msgobj_1554", i32 65
  %"$msgobj_v_1569" = bitcast i8* %"$msgobj_v_1568" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %"$msgobj_v_1569", align 1
  store i8* %"$msgobj_1554", i8** %"$retval_134", align 8, !dbg !46
  %"$$retval_134_1571" = load i8*, i8** %"$retval_134", align 8
  ret i8* %"$$retval_134_1571"
}

define internal i8* @"$fundef_135"(%"$$fundef_135_env_296"* %0, [20 x i8]* %1, [20 x i8]* %2, %TName_Bool* %3) !dbg !47 {
entry:
  %operator = load [20 x i8], [20 x i8]* %2, align 1
  %user = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_136" = alloca i8*, align 8
  %"$gasrem_1512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1513" = icmp ugt i64 1, %"$gasrem_1512"
  br i1 %"$gascmp_1513", label %"$out_of_gas_1514", label %"$have_gas_1515"

"$out_of_gas_1514":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1515"

"$have_gas_1515":                                 ; preds = %"$out_of_gas_1514", %entry
  %"$consume_1516" = sub i64 %"$gasrem_1512", 1
  store i64 %"$consume_1516", i64* @_gasrem, align 8
  %"$msgobj_1517_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1517_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1517_salloc_load", i64 161)
  %"$msgobj_1517_salloc" = bitcast i8* %"$msgobj_1517_salloc_salloc" to [161 x i8]*
  %"$msgobj_1517" = bitcast [161 x i8]* %"$msgobj_1517_salloc" to i8*
  store i8 4, i8* %"$msgobj_1517", align 1
  %"$msgobj_fname_1519" = getelementptr i8, i8* %"$msgobj_1517", i32 1
  %"$msgobj_fname_1520" = bitcast i8* %"$msgobj_fname_1519" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1518", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1520", align 8
  %"$msgobj_td_1521" = getelementptr i8, i8* %"$msgobj_1517", i32 17
  %"$msgobj_td_1522" = bitcast i8* %"$msgobj_td_1521" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_1522", align 8
  %"$msgobj_v_1524" = getelementptr i8, i8* %"$msgobj_1517", i32 25
  %"$msgobj_v_1525" = bitcast i8* %"$msgobj_v_1524" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_1523", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_1525", align 8
  %"$msgobj_fname_1527" = getelementptr i8, i8* %"$msgobj_1517", i32 41
  %"$msgobj_fname_1528" = bitcast i8* %"$msgobj_fname_1527" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_1526", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_1528", align 8
  %"$msgobj_td_1529" = getelementptr i8, i8* %"$msgobj_1517", i32 57
  %"$msgobj_td_1530" = bitcast i8* %"$msgobj_td_1529" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_1530", align 8
  %"$msgobj_v_1531" = getelementptr i8, i8* %"$msgobj_1517", i32 65
  %"$msgobj_v_1532" = bitcast i8* %"$msgobj_v_1531" to [20 x i8]*
  store [20 x i8] %user, [20 x i8]* %"$msgobj_v_1532", align 1
  %"$msgobj_fname_1534" = getelementptr i8, i8* %"$msgobj_1517", i32 85
  %"$msgobj_fname_1535" = bitcast i8* %"$msgobj_fname_1534" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1533", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_1535", align 8
  %"$msgobj_td_1536" = getelementptr i8, i8* %"$msgobj_1517", i32 101
  %"$msgobj_td_1537" = bitcast i8* %"$msgobj_td_1536" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_1537", align 8
  %"$msgobj_v_1538" = getelementptr i8, i8* %"$msgobj_1517", i32 109
  %"$msgobj_v_1539" = bitcast i8* %"$msgobj_v_1538" to [20 x i8]*
  store [20 x i8] %operator, [20 x i8]* %"$msgobj_v_1539", align 1
  %"$msgobj_fname_1541" = getelementptr i8, i8* %"$msgobj_1517", i32 129
  %"$msgobj_fname_1542" = bitcast i8* %"$msgobj_fname_1541" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1540", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1542", align 8
  %"$msgobj_td_1543" = getelementptr i8, i8* %"$msgobj_1517", i32 145
  %"$msgobj_td_1544" = bitcast i8* %"$msgobj_td_1543" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_204", %_TyDescrTy_Typ** %"$msgobj_td_1544", align 8
  %"$msgobj_v_1545" = getelementptr i8, i8* %"$msgobj_1517", i32 153
  %"$msgobj_v_1546" = bitcast i8* %"$msgobj_v_1545" to %TName_Bool**
  store %TName_Bool* %3, %TName_Bool** %"$msgobj_v_1546", align 8
  store i8* %"$msgobj_1517", i8** %"$retval_136", align 8, !dbg !48
  %"$$retval_136_1548" = load i8*, i8** %"$retval_136", align 8
  ret i8* %"$$retval_136_1548"
}

define internal i8* @"$fundef_137"(%"$$fundef_137_env_297"* %0, [20 x i8]* %1, %TName_Bool* %2) !dbg !49 {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_138" = alloca i8*, align 8
  %"$gasrem_1482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1483" = icmp ugt i64 1, %"$gasrem_1482"
  br i1 %"$gascmp_1483", label %"$out_of_gas_1484", label %"$have_gas_1485"

"$out_of_gas_1484":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1485"

"$have_gas_1485":                                 ; preds = %"$out_of_gas_1484", %entry
  %"$consume_1486" = sub i64 %"$gasrem_1482", 1
  store i64 %"$consume_1486", i64* @_gasrem, align 8
  %"$msgobj_1487_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_1487_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_1487_salloc_load", i64 117)
  %"$msgobj_1487_salloc" = bitcast i8* %"$msgobj_1487_salloc_salloc" to [117 x i8]*
  %"$msgobj_1487" = bitcast [117 x i8]* %"$msgobj_1487_salloc" to i8*
  store i8 3, i8* %"$msgobj_1487", align 1
  %"$msgobj_fname_1489" = getelementptr i8, i8* %"$msgobj_1487", i32 1
  %"$msgobj_fname_1490" = bitcast i8* %"$msgobj_fname_1489" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1488", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1490", align 8
  %"$msgobj_td_1491" = getelementptr i8, i8* %"$msgobj_1487", i32 17
  %"$msgobj_td_1492" = bitcast i8* %"$msgobj_td_1491" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_1492", align 8
  %"$msgobj_v_1494" = getelementptr i8, i8* %"$msgobj_1487", i32 25
  %"$msgobj_v_1495" = bitcast i8* %"$msgobj_v_1494" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_1493", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_1495", align 8
  %"$msgobj_fname_1497" = getelementptr i8, i8* %"$msgobj_1487", i32 41
  %"$msgobj_fname_1498" = bitcast i8* %"$msgobj_fname_1497" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_1496", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_1498", align 8
  %"$msgobj_td_1499" = getelementptr i8, i8* %"$msgobj_1487", i32 57
  %"$msgobj_td_1500" = bitcast i8* %"$msgobj_td_1499" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_1500", align 8
  %"$msgobj_v_1501" = getelementptr i8, i8* %"$msgobj_1487", i32 65
  %"$msgobj_v_1502" = bitcast i8* %"$msgobj_v_1501" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %"$msgobj_v_1502", align 1
  %"$msgobj_fname_1504" = getelementptr i8, i8* %"$msgobj_1487", i32 85
  %"$msgobj_fname_1505" = bitcast i8* %"$msgobj_fname_1504" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_1503", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_1505", align 8
  %"$msgobj_td_1506" = getelementptr i8, i8* %"$msgobj_1487", i32 101
  %"$msgobj_td_1507" = bitcast i8* %"$msgobj_td_1506" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_204", %_TyDescrTy_Typ** %"$msgobj_td_1507", align 8
  %"$msgobj_v_1508" = getelementptr i8, i8* %"$msgobj_1487", i32 109
  %"$msgobj_v_1509" = bitcast i8* %"$msgobj_v_1508" to %TName_Bool**
  store %TName_Bool* %2, %TName_Bool** %"$msgobj_v_1509", align 8
  store i8* %"$msgobj_1487", i8** %"$retval_138", align 8, !dbg !50
  %"$$retval_138_1511" = load i8*, i8** %"$retval_138", align 8
  ret i8* %"$$retval_138_1511"
}

define internal %TName_Bool* @"$fundef_139"(%"$$fundef_139_env_298"* %0, %TName_Bool* %1, %TName_Bool* %2) !dbg !51 {
entry:
  %"$retval_140" = alloca %TName_Bool*, align 8
  %"$gasrem_1410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1411" = icmp ugt i64 2, %"$gasrem_1410"
  br i1 %"$gascmp_1411", label %"$out_of_gas_1412", label %"$have_gas_1413"

"$out_of_gas_1412":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1413"

"$have_gas_1413":                                 ; preds = %"$out_of_gas_1412", %entry
  %"$consume_1414" = sub i64 %"$gasrem_1410", 2
  store i64 %"$consume_1414", i64* @_gasrem, align 8
  %"$b1_tag_1416" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b1_tag_1417" = load i8, i8* %"$b1_tag_1416", align 1
  switch i8 %"$b1_tag_1417", label %"$empty_default_1418" [
    i8 0, label %"$True_1419"
    i8 1, label %"$False_1450"
  ], !dbg !52

"$True_1419":                                     ; preds = %"$have_gas_1413"
  %"$b1_1420" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_1421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1422" = icmp ugt i64 2, %"$gasrem_1421"
  br i1 %"$gascmp_1422", label %"$out_of_gas_1423", label %"$have_gas_1424"

"$out_of_gas_1423":                               ; preds = %"$True_1419"
  call void @_out_of_gas()
  br label %"$have_gas_1424"

"$have_gas_1424":                                 ; preds = %"$out_of_gas_1423", %"$True_1419"
  %"$consume_1425" = sub i64 %"$gasrem_1421", 2
  store i64 %"$consume_1425", i64* @_gasrem, align 8
  %"$b2_tag_1427" = getelementptr inbounds %TName_Bool, %TName_Bool* %2, i32 0, i32 0
  %"$b2_tag_1428" = load i8, i8* %"$b2_tag_1427", align 1
  switch i8 %"$b2_tag_1428", label %"$empty_default_1429" [
    i8 0, label %"$True_1430"
    i8 1, label %"$False_1440"
  ], !dbg !53

"$True_1430":                                     ; preds = %"$have_gas_1424"
  %"$b2_1431" = bitcast %TName_Bool* %2 to %CName_True*
  %"$gasrem_1432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1433" = icmp ugt i64 1, %"$gasrem_1432"
  br i1 %"$gascmp_1433", label %"$out_of_gas_1434", label %"$have_gas_1435"

"$out_of_gas_1434":                               ; preds = %"$True_1430"
  call void @_out_of_gas()
  br label %"$have_gas_1435"

"$have_gas_1435":                                 ; preds = %"$out_of_gas_1434", %"$True_1430"
  %"$consume_1436" = sub i64 %"$gasrem_1432", 1
  store i64 %"$consume_1436", i64* @_gasrem, align 8
  %"$adtval_1437_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1437_salloc" = call i8* @_salloc(i8* %"$adtval_1437_load", i64 1)
  %"$adtval_1437" = bitcast i8* %"$adtval_1437_salloc" to %CName_True*
  %"$adtgep_1438" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1437", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1438", align 1
  %"$adtptr_1439" = bitcast %CName_True* %"$adtval_1437" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1439", %TName_Bool** %"$retval_140", align 8, !dbg !56
  br label %"$matchsucc_1426"

"$False_1440":                                    ; preds = %"$have_gas_1424"
  %"$b2_1441" = bitcast %TName_Bool* %2 to %CName_False*
  %"$gasrem_1442" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1443" = icmp ugt i64 1, %"$gasrem_1442"
  br i1 %"$gascmp_1443", label %"$out_of_gas_1444", label %"$have_gas_1445"

"$out_of_gas_1444":                               ; preds = %"$False_1440"
  call void @_out_of_gas()
  br label %"$have_gas_1445"

"$have_gas_1445":                                 ; preds = %"$out_of_gas_1444", %"$False_1440"
  %"$consume_1446" = sub i64 %"$gasrem_1442", 1
  store i64 %"$consume_1446", i64* @_gasrem, align 8
  %"$adtval_1447_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1447_salloc" = call i8* @_salloc(i8* %"$adtval_1447_load", i64 1)
  %"$adtval_1447" = bitcast i8* %"$adtval_1447_salloc" to %CName_False*
  %"$adtgep_1448" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1447", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1448", align 1
  %"$adtptr_1449" = bitcast %CName_False* %"$adtval_1447" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1449", %TName_Bool** %"$retval_140", align 8, !dbg !59
  br label %"$matchsucc_1426"

"$empty_default_1429":                            ; preds = %"$have_gas_1424"
  br label %"$matchsucc_1426"

"$matchsucc_1426":                                ; preds = %"$have_gas_1445", %"$have_gas_1435", %"$empty_default_1429"
  br label %"$matchsucc_1415"

"$False_1450":                                    ; preds = %"$have_gas_1413"
  %"$b1_1451" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_1452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1453" = icmp ugt i64 2, %"$gasrem_1452"
  br i1 %"$gascmp_1453", label %"$out_of_gas_1454", label %"$have_gas_1455"

"$out_of_gas_1454":                               ; preds = %"$False_1450"
  call void @_out_of_gas()
  br label %"$have_gas_1455"

"$have_gas_1455":                                 ; preds = %"$out_of_gas_1454", %"$False_1450"
  %"$consume_1456" = sub i64 %"$gasrem_1452", 2
  store i64 %"$consume_1456", i64* @_gasrem, align 8
  %"$b2_tag_1458" = getelementptr inbounds %TName_Bool, %TName_Bool* %2, i32 0, i32 0
  %"$b2_tag_1459" = load i8, i8* %"$b2_tag_1458", align 1
  switch i8 %"$b2_tag_1459", label %"$empty_default_1460" [
    i8 0, label %"$True_1461"
    i8 1, label %"$False_1471"
  ], !dbg !61

"$True_1461":                                     ; preds = %"$have_gas_1455"
  %"$b2_1462" = bitcast %TName_Bool* %2 to %CName_True*
  %"$gasrem_1463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1464" = icmp ugt i64 1, %"$gasrem_1463"
  br i1 %"$gascmp_1464", label %"$out_of_gas_1465", label %"$have_gas_1466"

"$out_of_gas_1465":                               ; preds = %"$True_1461"
  call void @_out_of_gas()
  br label %"$have_gas_1466"

"$have_gas_1466":                                 ; preds = %"$out_of_gas_1465", %"$True_1461"
  %"$consume_1467" = sub i64 %"$gasrem_1463", 1
  store i64 %"$consume_1467", i64* @_gasrem, align 8
  %"$adtval_1468_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1468_salloc" = call i8* @_salloc(i8* %"$adtval_1468_load", i64 1)
  %"$adtval_1468" = bitcast i8* %"$adtval_1468_salloc" to %CName_False*
  %"$adtgep_1469" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1468", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1469", align 1
  %"$adtptr_1470" = bitcast %CName_False* %"$adtval_1468" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1470", %TName_Bool** %"$retval_140", align 8, !dbg !63
  br label %"$matchsucc_1457"

"$False_1471":                                    ; preds = %"$have_gas_1455"
  %"$b2_1472" = bitcast %TName_Bool* %2 to %CName_False*
  %"$gasrem_1473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1474" = icmp ugt i64 1, %"$gasrem_1473"
  br i1 %"$gascmp_1474", label %"$out_of_gas_1475", label %"$have_gas_1476"

"$out_of_gas_1475":                               ; preds = %"$False_1471"
  call void @_out_of_gas()
  br label %"$have_gas_1476"

"$have_gas_1476":                                 ; preds = %"$out_of_gas_1475", %"$False_1471"
  %"$consume_1477" = sub i64 %"$gasrem_1473", 1
  store i64 %"$consume_1477", i64* @_gasrem, align 8
  %"$adtval_1478_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1478_salloc" = call i8* @_salloc(i8* %"$adtval_1478_load", i64 1)
  %"$adtval_1478" = bitcast i8* %"$adtval_1478_salloc" to %CName_True*
  %"$adtgep_1479" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1478", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1479", align 1
  %"$adtptr_1480" = bitcast %CName_True* %"$adtval_1478" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1480", %TName_Bool** %"$retval_140", align 8, !dbg !66
  br label %"$matchsucc_1457"

"$empty_default_1460":                            ; preds = %"$have_gas_1455"
  br label %"$matchsucc_1457"

"$matchsucc_1457":                                ; preds = %"$have_gas_1476", %"$have_gas_1466", %"$empty_default_1460"
  br label %"$matchsucc_1415"

"$empty_default_1418":                            ; preds = %"$have_gas_1413"
  br label %"$matchsucc_1415"

"$matchsucc_1415":                                ; preds = %"$matchsucc_1457", %"$matchsucc_1426", %"$empty_default_1418"
  %"$$retval_140_1481" = load %TName_Bool*, %TName_Bool** %"$retval_140", align 8
  ret %TName_Bool* %"$$retval_140_1481"
}

define internal %TName_Bool* @"$fundef_143"(%"$$fundef_143_env_299"* %0, [20 x i8]* %1) !dbg !68 {
entry:
  %v = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_143_env_BoolUtils.negb_1376" = getelementptr inbounds %"$$fundef_143_env_299", %"$$fundef_143_env_299"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1377" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_143_env_BoolUtils.negb_1376", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1377", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_143_env_bs_1378" = getelementptr inbounds %"$$fundef_143_env_299", %"$$fundef_143_env_299"* %0, i32 0, i32 1
  %"$bs_envload_1379" = load [20 x i8], [20 x i8]* %"$$fundef_143_env_bs_1378", align 1
  %bs = alloca [20 x i8], align 1
  store [20 x i8] %"$bs_envload_1379", [20 x i8]* %bs, align 1
  %"$retval_144" = alloca %TName_Bool*, align 8
  %"$gasrem_1380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1381" = icmp ugt i64 1, %"$gasrem_1380"
  br i1 %"$gascmp_1381", label %"$out_of_gas_1382", label %"$have_gas_1383"

"$out_of_gas_1382":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1383"

"$have_gas_1383":                                 ; preds = %"$out_of_gas_1382", %entry
  %"$consume_1384" = sub i64 %"$gasrem_1380", 1
  store i64 %"$consume_1384", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_1385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1386" = icmp ugt i64 20, %"$gasrem_1385"
  br i1 %"$gascmp_1386", label %"$out_of_gas_1387", label %"$have_gas_1388"

"$out_of_gas_1387":                               ; preds = %"$have_gas_1383"
  call void @_out_of_gas()
  br label %"$have_gas_1388"

"$have_gas_1388":                                 ; preds = %"$out_of_gas_1387", %"$have_gas_1383"
  %"$consume_1389" = sub i64 %"$gasrem_1385", 20
  store i64 %"$consume_1389", i64* @_gasrem, align 8
  %"$execptr_load_1390" = load i8*, i8** @_execptr, align 8
  %"$eq_v_1391" = alloca [20 x i8], align 1
  store [20 x i8] %v, [20 x i8]* %"$eq_v_1391", align 1
  %"$$eq_v_1391_1392" = bitcast [20 x i8]* %"$eq_v_1391" to i8*
  %"$eq_bs_1393" = alloca [20 x i8], align 1
  %"$bs_1394" = load [20 x i8], [20 x i8]* %bs, align 1
  store [20 x i8] %"$bs_1394", [20 x i8]* %"$eq_bs_1393", align 1
  %"$$eq_bs_1393_1395" = bitcast [20 x i8]* %"$eq_bs_1393" to i8*
  %"$eq_call_1396" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_1390", i32 20, i8* %"$$eq_v_1391_1392", i8* %"$$eq_bs_1393_1395"), !dbg !69
  store %TName_Bool* %"$eq_call_1396", %TName_Bool** %b, align 8, !dbg !69
  %"$gasrem_1398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1399" = icmp ugt i64 1, %"$gasrem_1398"
  br i1 %"$gascmp_1399", label %"$out_of_gas_1400", label %"$have_gas_1401"

"$out_of_gas_1400":                               ; preds = %"$have_gas_1388"
  call void @_out_of_gas()
  br label %"$have_gas_1401"

"$have_gas_1401":                                 ; preds = %"$out_of_gas_1400", %"$have_gas_1388"
  %"$consume_1402" = sub i64 %"$gasrem_1398", 1
  store i64 %"$consume_1402", i64* @_gasrem, align 8
  %"$BoolUtils.negb_34" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_1403" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_1404" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1403", 0
  %"$BoolUtils.negb_envptr_1405" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1403", 1
  %"$b_1406" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$BoolUtils.negb_call_1407" = call %TName_Bool* %"$BoolUtils.negb_fptr_1404"(i8* %"$BoolUtils.negb_envptr_1405", %TName_Bool* %"$b_1406"), !dbg !70
  store %TName_Bool* %"$BoolUtils.negb_call_1407", %TName_Bool** %"$BoolUtils.negb_34", align 8, !dbg !70
  %"$$BoolUtils.negb_34_1408" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_34", align 8
  store %TName_Bool* %"$$BoolUtils.negb_34_1408", %TName_Bool** %"$retval_144", align 8, !dbg !70
  %"$$retval_144_1409" = load %TName_Bool*, %TName_Bool** %"$retval_144", align 8
  ret %TName_Bool* %"$$retval_144_1409"
}

define internal %TName_List_ByStr20* @"$fundef_141"(%"$$fundef_141_env_300"* %0, %TName_List_ByStr20* %1, [20 x i8]* %2) !dbg !71 {
entry:
  %bs = load [20 x i8], [20 x i8]* %2, align 1
  %"$$fundef_141_env_BoolUtils.negb_1322" = getelementptr inbounds %"$$fundef_141_env_300", %"$$fundef_141_env_300"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1323" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_141_env_BoolUtils.negb_1322", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1323", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_141_env_ListUtils.list_filter_1324" = getelementptr inbounds %"$$fundef_141_env_300", %"$$fundef_141_env_300"* %0, i32 0, i32 1
  %"$ListUtils.list_filter_envload_1325" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_141_env_ListUtils.list_filter_1324", align 8
  %ListUtils.list_filter = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_envload_1325", { i8*, i8* }** %ListUtils.list_filter, align 8
  %"$retval_142" = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_1326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1327" = icmp ugt i64 1, %"$gasrem_1326"
  br i1 %"$gascmp_1327", label %"$out_of_gas_1328", label %"$have_gas_1329"

"$out_of_gas_1328":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1329"

"$have_gas_1329":                                 ; preds = %"$out_of_gas_1328", %entry
  %"$consume_1330" = sub i64 %"$gasrem_1326", 1
  store i64 %"$consume_1330", i64* @_gasrem, align 8
  %listByStr20Filter = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1332" = icmp ugt i64 1, %"$gasrem_1331"
  br i1 %"$gascmp_1332", label %"$out_of_gas_1333", label %"$have_gas_1334"

"$out_of_gas_1333":                               ; preds = %"$have_gas_1329"
  call void @_out_of_gas()
  br label %"$have_gas_1334"

"$have_gas_1334":                                 ; preds = %"$out_of_gas_1333", %"$have_gas_1329"
  %"$consume_1335" = sub i64 %"$gasrem_1331", 1
  store i64 %"$consume_1335", i64* @_gasrem, align 8
  %"$ListUtils.list_filter_1336" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_filter, align 8
  %"$ListUtils.list_filter_1337" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_filter_1336", i32 0
  %"$ListUtils.list_filter_1338" = bitcast { i8*, i8* }* %"$ListUtils.list_filter_1337" to { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_filter_1339" = load { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_filter_1338", align 8
  %"$ListUtils.list_filter_fptr_1340" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_filter_1339", 0
  %"$ListUtils.list_filter_envptr_1341" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_filter_1339", 1
  %"$ListUtils.list_filter_call_1342" = call { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_filter_fptr_1340"(i8* %"$ListUtils.list_filter_envptr_1341"), !dbg !72
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_filter_call_1342", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %listByStr20Filter, align 8, !dbg !73
  %"$gasrem_1343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1344" = icmp ugt i64 1, %"$gasrem_1343"
  br i1 %"$gascmp_1344", label %"$out_of_gas_1345", label %"$have_gas_1346"

"$out_of_gas_1345":                               ; preds = %"$have_gas_1334"
  call void @_out_of_gas()
  br label %"$have_gas_1346"

"$have_gas_1346":                                 ; preds = %"$out_of_gas_1345", %"$have_gas_1334"
  %"$consume_1347" = sub i64 %"$gasrem_1343", 1
  store i64 %"$consume_1347", i64* @_gasrem, align 8
  %fn = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1349" = icmp ugt i64 1, %"$gasrem_1348"
  br i1 %"$gascmp_1349", label %"$out_of_gas_1350", label %"$have_gas_1351"

"$out_of_gas_1350":                               ; preds = %"$have_gas_1346"
  call void @_out_of_gas()
  br label %"$have_gas_1351"

"$have_gas_1351":                                 ; preds = %"$out_of_gas_1350", %"$have_gas_1346"
  %"$consume_1352" = sub i64 %"$gasrem_1348", 1
  store i64 %"$consume_1352", i64* @_gasrem, align 8
  %"$$fundef_143_envp_1353_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_143_envp_1353_salloc" = call i8* @_salloc(i8* %"$$fundef_143_envp_1353_load", i64 40)
  %"$$fundef_143_envp_1353" = bitcast i8* %"$$fundef_143_envp_1353_salloc" to %"$$fundef_143_env_299"*
  %"$$fundef_143_env_voidp_1355" = bitcast %"$$fundef_143_env_299"* %"$$fundef_143_envp_1353" to i8*
  %"$$fundef_143_cloval_1356" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_143_env_299"*, [20 x i8]*)* @"$fundef_143" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_143_env_voidp_1355", 1
  %"$$fundef_143_env_BoolUtils.negb_1357" = getelementptr inbounds %"$$fundef_143_env_299", %"$$fundef_143_env_299"* %"$$fundef_143_envp_1353", i32 0, i32 0
  %"$BoolUtils.negb_1358" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1358", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_143_env_BoolUtils.negb_1357", align 8
  %"$$fundef_143_env_bs_1359" = getelementptr inbounds %"$$fundef_143_env_299", %"$$fundef_143_env_299"* %"$$fundef_143_envp_1353", i32 0, i32 1
  store [20 x i8] %bs, [20 x i8]* %"$$fundef_143_env_bs_1359", align 1
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_143_cloval_1356", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %fn, align 8, !dbg !74
  %"$gasrem_1360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1361" = icmp ugt i64 1, %"$gasrem_1360"
  br i1 %"$gascmp_1361", label %"$out_of_gas_1362", label %"$have_gas_1363"

"$out_of_gas_1362":                               ; preds = %"$have_gas_1351"
  call void @_out_of_gas()
  br label %"$have_gas_1363"

"$have_gas_1363":                                 ; preds = %"$out_of_gas_1362", %"$have_gas_1351"
  %"$consume_1364" = sub i64 %"$gasrem_1360", 1
  store i64 %"$consume_1364", i64* @_gasrem, align 8
  %"$listByStr20Filter_35" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$listByStr20Filter_1365" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %listByStr20Filter, align 8
  %"$listByStr20Filter_fptr_1366" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listByStr20Filter_1365", 0
  %"$listByStr20Filter_envptr_1367" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listByStr20Filter_1365", 1
  %"$fn_1368" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %fn, align 8
  %"$listByStr20Filter_call_1369" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$listByStr20Filter_fptr_1366"(i8* %"$listByStr20Filter_envptr_1367", { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$fn_1368"), !dbg !75
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$listByStr20Filter_call_1369", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listByStr20Filter_35", align 8, !dbg !75
  %"$listByStr20Filter_36" = alloca %TName_List_ByStr20*, align 8
  %"$$listByStr20Filter_35_1370" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listByStr20Filter_35", align 8
  %"$$listByStr20Filter_35_fptr_1371" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listByStr20Filter_35_1370", 0
  %"$$listByStr20Filter_35_envptr_1372" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listByStr20Filter_35_1370", 1
  %"$$listByStr20Filter_35_call_1373" = call %TName_List_ByStr20* %"$$listByStr20Filter_35_fptr_1371"(i8* %"$$listByStr20Filter_35_envptr_1372", %TName_List_ByStr20* %1), !dbg !75
  store %TName_List_ByStr20* %"$$listByStr20Filter_35_call_1373", %TName_List_ByStr20** %"$listByStr20Filter_36", align 8, !dbg !75
  %"$$listByStr20Filter_36_1374" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$listByStr20Filter_36", align 8
  store %TName_List_ByStr20* %"$$listByStr20Filter_36_1374", %TName_List_ByStr20** %"$retval_142", align 8, !dbg !75
  %"$$retval_142_1375" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$retval_142", align 8
  ret %TName_List_ByStr20* %"$$retval_142_1375"
}

define internal %TName_Bool* @"$fundef_145"(%"$$fundef_145_env_301"* %0, %TName_List_ByStr20* %1, [20 x i8]* %2) !dbg !76 {
entry:
  %bs = load [20 x i8], [20 x i8]* %2, align 1
  %"$$fundef_145_env_BoolUtils.negb_1291" = getelementptr inbounds %"$$fundef_145_env_301", %"$$fundef_145_env_301"* %0, i32 0, i32 0
  %"$BoolUtils.negb_envload_1292" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_145_env_BoolUtils.negb_1291", align 8
  %BoolUtils.negb = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_envload_1292", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$$fundef_145_env_ud-registry.listByStr20Contains_1293" = getelementptr inbounds %"$$fundef_145_env_301", %"$$fundef_145_env_301"* %0, i32 0, i32 1
  %"$ud-registry.listByStr20Contains_envload_1294" = load { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* %"$$fundef_145_env_ud-registry.listByStr20Contains_1293", align 8
  %ud-registry.listByStr20Contains = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_envload_1294", { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$retval_146" = alloca %TName_Bool*, align 8
  %"$gasrem_1295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1296" = icmp ugt i64 1, %"$gasrem_1295"
  br i1 %"$gascmp_1296", label %"$out_of_gas_1297", label %"$have_gas_1298"

"$out_of_gas_1297":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1298"

"$have_gas_1298":                                 ; preds = %"$out_of_gas_1297", %entry
  %"$consume_1299" = sub i64 %"$gasrem_1295", 1
  store i64 %"$consume_1299", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_1300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1301" = icmp ugt i64 1, %"$gasrem_1300"
  br i1 %"$gascmp_1301", label %"$out_of_gas_1302", label %"$have_gas_1303"

"$out_of_gas_1302":                               ; preds = %"$have_gas_1298"
  call void @_out_of_gas()
  br label %"$have_gas_1303"

"$have_gas_1303":                                 ; preds = %"$out_of_gas_1302", %"$have_gas_1298"
  %"$consume_1304" = sub i64 %"$gasrem_1300", 1
  store i64 %"$consume_1304", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_1305" = load { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* %ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_1306" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_1305", 0
  %"$ud-registry.listByStr20Contains_envptr_1307" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_1305", 1
  %"$ud-registry.listByStr20Contains_bs_1308" = alloca [20 x i8], align 1
  store [20 x i8] %bs, [20 x i8]* %"$ud-registry.listByStr20Contains_bs_1308", align 1
  %"$ud-registry.listByStr20Contains_call_1309" = call %TName_Bool* %"$ud-registry.listByStr20Contains_fptr_1306"(i8* %"$ud-registry.listByStr20Contains_envptr_1307", %TName_List_ByStr20* %1, [20 x i8]* %"$ud-registry.listByStr20Contains_bs_1308"), !dbg !77
  store %TName_Bool* %"$ud-registry.listByStr20Contains_call_1309", %TName_Bool** %b, align 8, !dbg !77
  %"$gasrem_1310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1311" = icmp ugt i64 1, %"$gasrem_1310"
  br i1 %"$gascmp_1311", label %"$out_of_gas_1312", label %"$have_gas_1313"

"$out_of_gas_1312":                               ; preds = %"$have_gas_1303"
  call void @_out_of_gas()
  br label %"$have_gas_1313"

"$have_gas_1313":                                 ; preds = %"$out_of_gas_1312", %"$have_gas_1303"
  %"$consume_1314" = sub i64 %"$gasrem_1310", 1
  store i64 %"$consume_1314", i64* @_gasrem, align 8
  %"$BoolUtils.negb_33" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_1315" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_1316" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1315", 0
  %"$BoolUtils.negb_envptr_1317" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1315", 1
  %"$b_1318" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$BoolUtils.negb_call_1319" = call %TName_Bool* %"$BoolUtils.negb_fptr_1316"(i8* %"$BoolUtils.negb_envptr_1317", %TName_Bool* %"$b_1318"), !dbg !78
  store %TName_Bool* %"$BoolUtils.negb_call_1319", %TName_Bool** %"$BoolUtils.negb_33", align 8, !dbg !78
  %"$$BoolUtils.negb_33_1320" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_33", align 8
  store %TName_Bool* %"$$BoolUtils.negb_33_1320", %TName_Bool** %"$retval_146", align 8, !dbg !78
  %"$$retval_146_1321" = load %TName_Bool*, %TName_Bool** %"$retval_146", align 8
  ret %TName_Bool* %"$$retval_146_1321"
}

define internal %TName_Bool* @"$fundef_147"(%"$$fundef_147_env_302"* %0, %TName_List_ByStr20* %1, [20 x i8]* %2) !dbg !79 {
entry:
  %bs = load [20 x i8], [20 x i8]* %2, align 1
  %"$$fundef_147_env_ListUtils.list_mem_1249" = getelementptr inbounds %"$$fundef_147_env_302", %"$$fundef_147_env_302"* %0, i32 0, i32 0
  %"$ListUtils.list_mem_envload_1250" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_147_env_ListUtils.list_mem_1249", align 8
  %ListUtils.list_mem = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_envload_1250", { i8*, i8* }** %ListUtils.list_mem, align 8
  %"$$fundef_147_env_ud-registry.eqByStr20_1251" = getelementptr inbounds %"$$fundef_147_env_302", %"$$fundef_147_env_302"* %0, i32 0, i32 1
  %"$ud-registry.eqByStr20_envload_1252" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_147_env_ud-registry.eqByStr20_1251", align 8
  %ud-registry.eqByStr20 = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_envload_1252", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20, align 8
  %"$retval_148" = alloca %TName_Bool*, align 8
  %"$gasrem_1253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1254" = icmp ugt i64 1, %"$gasrem_1253"
  br i1 %"$gascmp_1254", label %"$out_of_gas_1255", label %"$have_gas_1256"

"$out_of_gas_1255":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1256"

"$have_gas_1256":                                 ; preds = %"$out_of_gas_1255", %entry
  %"$consume_1257" = sub i64 %"$gasrem_1253", 1
  store i64 %"$consume_1257", i64* @_gasrem, align 8
  %listMemByStr20 = alloca { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1259" = icmp ugt i64 1, %"$gasrem_1258"
  br i1 %"$gascmp_1259", label %"$out_of_gas_1260", label %"$have_gas_1261"

"$out_of_gas_1260":                               ; preds = %"$have_gas_1256"
  call void @_out_of_gas()
  br label %"$have_gas_1261"

"$have_gas_1261":                                 ; preds = %"$out_of_gas_1260", %"$have_gas_1256"
  %"$consume_1262" = sub i64 %"$gasrem_1258", 1
  store i64 %"$consume_1262", i64* @_gasrem, align 8
  %"$ListUtils.list_mem_1263" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_mem, align 8
  %"$ListUtils.list_mem_1264" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_mem_1263", i32 0
  %"$ListUtils.list_mem_1265" = bitcast { i8*, i8* }* %"$ListUtils.list_mem_1264" to { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_mem_1266" = load { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_mem_1265", align 8
  %"$ListUtils.list_mem_fptr_1267" = extractvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_mem_1266", 0
  %"$ListUtils.list_mem_envptr_1268" = extractvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_mem_1266", 1
  %"$ListUtils.list_mem_call_1269" = call { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_mem_fptr_1267"(i8* %"$ListUtils.list_mem_envptr_1268"), !dbg !80
  store { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_mem_call_1269", { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %listMemByStr20, align 8, !dbg !81
  %"$gasrem_1270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1271" = icmp ugt i64 1, %"$gasrem_1270"
  br i1 %"$gascmp_1271", label %"$out_of_gas_1272", label %"$have_gas_1273"

"$out_of_gas_1272":                               ; preds = %"$have_gas_1261"
  call void @_out_of_gas()
  br label %"$have_gas_1273"

"$have_gas_1273":                                 ; preds = %"$out_of_gas_1272", %"$have_gas_1261"
  %"$consume_1274" = sub i64 %"$gasrem_1270", 1
  store i64 %"$consume_1274", i64* @_gasrem, align 8
  %"$listMemByStr20_30" = alloca { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$listMemByStr20_1275" = load { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %listMemByStr20, align 8
  %"$listMemByStr20_fptr_1276" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listMemByStr20_1275", 0
  %"$listMemByStr20_envptr_1277" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$listMemByStr20_1275", 1
  %"$ud-registry.eqByStr20_1278" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %ud-registry.eqByStr20, align 8
  %"$listMemByStr20_call_1279" = call { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$listMemByStr20_fptr_1276"(i8* %"$listMemByStr20_envptr_1277", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_1278"), !dbg !82
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$listMemByStr20_call_1279", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$listMemByStr20_30", align 8, !dbg !82
  %"$listMemByStr20_31" = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$$listMemByStr20_30_1280" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$listMemByStr20_30", align 8
  %"$$listMemByStr20_30_fptr_1281" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$listMemByStr20_30_1280", 0
  %"$$listMemByStr20_30_envptr_1282" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$listMemByStr20_30_1280", 1
  %"$$listMemByStr20_30_bs_1283" = alloca [20 x i8], align 1
  store [20 x i8] %bs, [20 x i8]* %"$$listMemByStr20_30_bs_1283", align 1
  %"$$listMemByStr20_30_call_1284" = call { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_30_fptr_1281"(i8* %"$$listMemByStr20_30_envptr_1282", [20 x i8]* %"$$listMemByStr20_30_bs_1283"), !dbg !82
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_30_call_1284", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listMemByStr20_31", align 8, !dbg !82
  %"$listMemByStr20_32" = alloca %TName_Bool*, align 8
  %"$$listMemByStr20_31_1285" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$listMemByStr20_31", align 8
  %"$$listMemByStr20_31_fptr_1286" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_31_1285", 0
  %"$$listMemByStr20_31_envptr_1287" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$listMemByStr20_31_1285", 1
  %"$$listMemByStr20_31_call_1288" = call %TName_Bool* %"$$listMemByStr20_31_fptr_1286"(i8* %"$$listMemByStr20_31_envptr_1287", %TName_List_ByStr20* %1), !dbg !82
  store %TName_Bool* %"$$listMemByStr20_31_call_1288", %TName_Bool** %"$listMemByStr20_32", align 8, !dbg !82
  %"$$listMemByStr20_32_1289" = load %TName_Bool*, %TName_Bool** %"$listMemByStr20_32", align 8
  store %TName_Bool* %"$$listMemByStr20_32_1289", %TName_Bool** %"$retval_148", align 8, !dbg !82
  %"$$retval_148_1290" = load %TName_Bool*, %TName_Bool** %"$retval_148", align 8
  ret %TName_Bool* %"$$retval_148_1290"
}

define internal %TName_Bool* @"$fundef_151"(%"$$fundef_151_env_303"* %0, [20 x i8]* %1) !dbg !83 {
entry:
  %bs2 = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_151_env_bs1_1233" = getelementptr inbounds %"$$fundef_151_env_303", %"$$fundef_151_env_303"* %0, i32 0, i32 0
  %"$bs1_envload_1234" = load [20 x i8], [20 x i8]* %"$$fundef_151_env_bs1_1233", align 1
  %bs1 = alloca [20 x i8], align 1
  store [20 x i8] %"$bs1_envload_1234", [20 x i8]* %bs1, align 1
  %"$retval_152" = alloca %TName_Bool*, align 8
  %"$gasrem_1235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1236" = icmp ugt i64 20, %"$gasrem_1235"
  br i1 %"$gascmp_1236", label %"$out_of_gas_1237", label %"$have_gas_1238"

"$out_of_gas_1237":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1238"

"$have_gas_1238":                                 ; preds = %"$out_of_gas_1237", %entry
  %"$consume_1239" = sub i64 %"$gasrem_1235", 20
  store i64 %"$consume_1239", i64* @_gasrem, align 8
  %"$execptr_load_1240" = load i8*, i8** @_execptr, align 8
  %"$eq_bs1_1241" = alloca [20 x i8], align 1
  %"$bs1_1242" = load [20 x i8], [20 x i8]* %bs1, align 1
  store [20 x i8] %"$bs1_1242", [20 x i8]* %"$eq_bs1_1241", align 1
  %"$$eq_bs1_1241_1243" = bitcast [20 x i8]* %"$eq_bs1_1241" to i8*
  %"$eq_bs2_1244" = alloca [20 x i8], align 1
  store [20 x i8] %bs2, [20 x i8]* %"$eq_bs2_1244", align 1
  %"$$eq_bs2_1244_1245" = bitcast [20 x i8]* %"$eq_bs2_1244" to i8*
  %"$eq_call_1246" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_1240", i32 20, i8* %"$$eq_bs1_1241_1243", i8* %"$$eq_bs2_1244_1245"), !dbg !84
  store %TName_Bool* %"$eq_call_1246", %TName_Bool** %"$retval_152", align 8, !dbg !84
  %"$$retval_152_1248" = load %TName_Bool*, %TName_Bool** %"$retval_152", align 8
  ret %TName_Bool* %"$$retval_152_1248"
}

define internal { %TName_Bool* (i8*, [20 x i8]*)*, i8* } @"$fundef_149"(%"$$fundef_149_env_304"* %0, [20 x i8]* %1) !dbg !85 {
entry:
  %bs1 = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_150" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1223" = icmp ugt i64 1, %"$gasrem_1222"
  br i1 %"$gascmp_1223", label %"$out_of_gas_1224", label %"$have_gas_1225"

"$out_of_gas_1224":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1225"

"$have_gas_1225":                                 ; preds = %"$out_of_gas_1224", %entry
  %"$consume_1226" = sub i64 %"$gasrem_1222", 1
  store i64 %"$consume_1226", i64* @_gasrem, align 8
  %"$$fundef_151_envp_1227_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_151_envp_1227_salloc" = call i8* @_salloc(i8* %"$$fundef_151_envp_1227_load", i64 20)
  %"$$fundef_151_envp_1227" = bitcast i8* %"$$fundef_151_envp_1227_salloc" to %"$$fundef_151_env_303"*
  %"$$fundef_151_env_voidp_1229" = bitcast %"$$fundef_151_env_303"* %"$$fundef_151_envp_1227" to i8*
  %"$$fundef_151_cloval_1230" = insertvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_151_env_303"*, [20 x i8]*)* @"$fundef_151" to %TName_Bool* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_151_env_voidp_1229", 1
  %"$$fundef_151_env_bs1_1231" = getelementptr inbounds %"$$fundef_151_env_303", %"$$fundef_151_env_303"* %"$$fundef_151_envp_1227", i32 0, i32 0
  store [20 x i8] %bs1, [20 x i8]* %"$$fundef_151_env_bs1_1231", align 1
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$fundef_151_cloval_1230", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_150", align 8, !dbg !86
  %"$$retval_150_1232" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$retval_150", align 8
  ret { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$retval_150_1232"
}

define internal %TName_List_Message* @"$fundef_153"(%"$$fundef_153_env_305"* %0, i8* %1) !dbg !87 {
entry:
  %"$$fundef_153_env_ud-registry.nilMessage_1208" = getelementptr inbounds %"$$fundef_153_env_305", %"$$fundef_153_env_305"* %0, i32 0, i32 0
  %"$ud-registry.nilMessage_envload_1209" = load %TName_List_Message*, %TName_List_Message** %"$$fundef_153_env_ud-registry.nilMessage_1208", align 8
  %ud-registry.nilMessage = alloca %TName_List_Message*, align 8
  store %TName_List_Message* %"$ud-registry.nilMessage_envload_1209", %TName_List_Message** %ud-registry.nilMessage, align 8
  %"$retval_154" = alloca %TName_List_Message*, align 8
  %"$gasrem_1210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1211" = icmp ugt i64 1, %"$gasrem_1210"
  br i1 %"$gascmp_1211", label %"$out_of_gas_1212", label %"$have_gas_1213"

"$out_of_gas_1212":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1213"

"$have_gas_1213":                                 ; preds = %"$out_of_gas_1212", %entry
  %"$consume_1214" = sub i64 %"$gasrem_1210", 1
  store i64 %"$consume_1214", i64* @_gasrem, align 8
  %"$ud-registry.nilMessage_1215" = load %TName_List_Message*, %TName_List_Message** %ud-registry.nilMessage, align 8
  %"$adtval_1216_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1216_salloc" = call i8* @_salloc(i8* %"$adtval_1216_load", i64 17)
  %"$adtval_1216" = bitcast i8* %"$adtval_1216_salloc" to %CName_Cons_Message*
  %"$adtgep_1217" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1216", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1217", align 1
  %"$adtgep_1218" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1216", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_1218", align 8
  %"$adtgep_1219" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_1216", i32 0, i32 2
  store %TName_List_Message* %"$ud-registry.nilMessage_1215", %TName_List_Message** %"$adtgep_1219", align 8
  %"$adtptr_1220" = bitcast %CName_Cons_Message* %"$adtval_1216" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_1220", %TName_List_Message** %"$retval_154", align 8, !dbg !88
  %"$$retval_154_1221" = load %TName_List_Message*, %TName_List_Message** %"$retval_154", align 8
  ret %TName_List_Message* %"$$retval_154_1221"
}

define internal { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_93"(%"$$fundef_93_env_306"* %0, [20 x i8]* %1) !dbg !89 {
entry:
  %m = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_93_env_ListUtils.list_exists_1159" = getelementptr inbounds %"$$fundef_93_env_306", %"$$fundef_93_env_306"* %0, i32 0, i32 0
  %"$ListUtils.list_exists_envload_1160" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_93_env_ListUtils.list_exists_1159", align 8
  %ListUtils.list_exists = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_envload_1160", { i8*, i8* }** %ListUtils.list_exists, align 8
  %"$$fundef_93_env_f_1161" = getelementptr inbounds %"$$fundef_93_env_306", %"$$fundef_93_env_306"* %0, i32 0, i32 1
  %"$f_envload_1162" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_93_env_f_1161", align 8
  %f = alloca { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_envload_1162", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$retval_94" = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_1163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1164" = icmp ugt i64 1, %"$gasrem_1163"
  br i1 %"$gascmp_1164", label %"$out_of_gas_1165", label %"$have_gas_1166"

"$out_of_gas_1165":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1166"

"$have_gas_1166":                                 ; preds = %"$out_of_gas_1165", %entry
  %"$consume_1167" = sub i64 %"$gasrem_1163", 1
  store i64 %"$consume_1167", i64* @_gasrem, align 8
  %ex_pred = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1169" = icmp ugt i64 1, %"$gasrem_1168"
  br i1 %"$gascmp_1169", label %"$out_of_gas_1170", label %"$have_gas_1171"

"$out_of_gas_1170":                               ; preds = %"$have_gas_1166"
  call void @_out_of_gas()
  br label %"$have_gas_1171"

"$have_gas_1171":                                 ; preds = %"$out_of_gas_1170", %"$have_gas_1166"
  %"$consume_1172" = sub i64 %"$gasrem_1168", 1
  store i64 %"$consume_1172", i64* @_gasrem, align 8
  %"$f_28" = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$f_1173" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$f_fptr_1174" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_1173", 0
  %"$f_envptr_1175" = extractvalue { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_1173", 1
  %"$f_m_1176" = alloca [20 x i8], align 1
  store [20 x i8] %m, [20 x i8]* %"$f_m_1176", align 1
  %"$f_call_1177" = call { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_fptr_1174"(i8* %"$f_envptr_1175", [20 x i8]* %"$f_m_1176"), !dbg !91
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_call_1177", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$f_28", align 8, !dbg !91
  %"$$f_28_1178" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$f_28", align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$$f_28_1178", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %ex_pred, align 8, !dbg !91
  %"$gasrem_1179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1180" = icmp ugt i64 1, %"$gasrem_1179"
  br i1 %"$gascmp_1180", label %"$out_of_gas_1181", label %"$have_gas_1182"

"$out_of_gas_1181":                               ; preds = %"$have_gas_1171"
  call void @_out_of_gas()
  br label %"$have_gas_1182"

"$have_gas_1182":                                 ; preds = %"$out_of_gas_1181", %"$have_gas_1171"
  %"$consume_1183" = sub i64 %"$gasrem_1179", 1
  store i64 %"$consume_1183", i64* @_gasrem, align 8
  %ex = alloca { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1185" = icmp ugt i64 1, %"$gasrem_1184"
  br i1 %"$gascmp_1185", label %"$out_of_gas_1186", label %"$have_gas_1187"

"$out_of_gas_1186":                               ; preds = %"$have_gas_1182"
  call void @_out_of_gas()
  br label %"$have_gas_1187"

"$have_gas_1187":                                 ; preds = %"$out_of_gas_1186", %"$have_gas_1182"
  %"$consume_1188" = sub i64 %"$gasrem_1184", 1
  store i64 %"$consume_1188", i64* @_gasrem, align 8
  %"$ListUtils.list_exists_1189" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_exists, align 8
  %"$ListUtils.list_exists_1190" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_exists_1189", i32 0
  %"$ListUtils.list_exists_1191" = bitcast { i8*, i8* }* %"$ListUtils.list_exists_1190" to { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_exists_1192" = load { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_exists_1191", align 8
  %"$ListUtils.list_exists_fptr_1193" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_exists_1192", 0
  %"$ListUtils.list_exists_envptr_1194" = extractvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_exists_1192", 1
  %"$ListUtils.list_exists_call_1195" = call { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_exists_fptr_1193"(i8* %"$ListUtils.list_exists_envptr_1194"), !dbg !92
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_exists_call_1195", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %ex, align 8, !dbg !93
  %"$gasrem_1196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1197" = icmp ugt i64 1, %"$gasrem_1196"
  br i1 %"$gascmp_1197", label %"$out_of_gas_1198", label %"$have_gas_1199"

"$out_of_gas_1198":                               ; preds = %"$have_gas_1187"
  call void @_out_of_gas()
  br label %"$have_gas_1199"

"$have_gas_1199":                                 ; preds = %"$out_of_gas_1198", %"$have_gas_1187"
  %"$consume_1200" = sub i64 %"$gasrem_1196", 1
  store i64 %"$consume_1200", i64* @_gasrem, align 8
  %"$ex_29" = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$ex_1201" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %ex, align 8
  %"$ex_fptr_1202" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ex_1201", 0
  %"$ex_envptr_1203" = extractvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ex_1201", 1
  %"$ex_pred_1204" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %ex_pred, align 8
  %"$ex_call_1205" = call { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$ex_fptr_1202"(i8* %"$ex_envptr_1203", { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$ex_pred_1204"), !dbg !94
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$ex_call_1205", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$ex_29", align 8, !dbg !94
  %"$$ex_29_1206" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$ex_29", align 8
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$ex_29_1206", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_94", align 8, !dbg !94
  %"$$retval_94_1207" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_94", align 8
  ret { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_94_1207"
}

define internal { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_91"(%"$$fundef_91_env_307"* %0, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1) !dbg !95 {
entry:
  %"$$fundef_91_env_ListUtils.list_exists_1144" = getelementptr inbounds %"$$fundef_91_env_307", %"$$fundef_91_env_307"* %0, i32 0, i32 0
  %"$ListUtils.list_exists_envload_1145" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_91_env_ListUtils.list_exists_1144", align 8
  %ListUtils.list_exists = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_envload_1145", { i8*, i8* }** %ListUtils.list_exists, align 8
  %"$retval_92" = alloca { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_1146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1147" = icmp ugt i64 1, %"$gasrem_1146"
  br i1 %"$gascmp_1147", label %"$out_of_gas_1148", label %"$have_gas_1149"

"$out_of_gas_1148":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1149"

"$have_gas_1149":                                 ; preds = %"$out_of_gas_1148", %entry
  %"$consume_1150" = sub i64 %"$gasrem_1146", 1
  store i64 %"$consume_1150", i64* @_gasrem, align 8
  %"$$fundef_93_envp_1151_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_93_envp_1151_salloc" = call i8* @_salloc(i8* %"$$fundef_93_envp_1151_load", i64 24)
  %"$$fundef_93_envp_1151" = bitcast i8* %"$$fundef_93_envp_1151_salloc" to %"$$fundef_93_env_306"*
  %"$$fundef_93_env_voidp_1153" = bitcast %"$$fundef_93_env_306"* %"$$fundef_93_envp_1151" to i8*
  %"$$fundef_93_cloval_1154" = insertvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_93_env_306"*, [20 x i8]*)* @"$fundef_93" to { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_93_env_voidp_1153", 1
  %"$$fundef_93_env_ListUtils.list_exists_1155" = getelementptr inbounds %"$$fundef_93_env_306", %"$$fundef_93_env_306"* %"$$fundef_93_envp_1151", i32 0, i32 0
  %"$ListUtils.list_exists_1156" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_exists, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_1156", { i8*, i8* }** %"$$fundef_93_env_ListUtils.list_exists_1155", align 8
  %"$$fundef_93_env_f_1157" = getelementptr inbounds %"$$fundef_93_env_306", %"$$fundef_93_env_306"* %"$$fundef_93_envp_1151", i32 0, i32 1
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_93_env_f_1157", align 8
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_93_cloval_1154", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_92", align 8, !dbg !96
  %"$$retval_92_1158" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_92", align 8
  ret { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_92_1158"
}

define internal { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_89"(%"$$fundef_89_env_308"* %0) !dbg !97 {
entry:
  %"$$fundef_89_env_ListUtils.list_exists_1130" = getelementptr inbounds %"$$fundef_89_env_308", %"$$fundef_89_env_308"* %0, i32 0, i32 0
  %"$ListUtils.list_exists_envload_1131" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_89_env_ListUtils.list_exists_1130", align 8
  %ListUtils.list_exists = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_envload_1131", { i8*, i8* }** %ListUtils.list_exists, align 8
  %"$retval_90" = alloca { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1133" = icmp ugt i64 1, %"$gasrem_1132"
  br i1 %"$gascmp_1133", label %"$out_of_gas_1134", label %"$have_gas_1135"

"$out_of_gas_1134":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1135"

"$have_gas_1135":                                 ; preds = %"$out_of_gas_1134", %entry
  %"$consume_1136" = sub i64 %"$gasrem_1132", 1
  store i64 %"$consume_1136", i64* @_gasrem, align 8
  %"$$fundef_91_envp_1137_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_91_envp_1137_salloc" = call i8* @_salloc(i8* %"$$fundef_91_envp_1137_load", i64 8)
  %"$$fundef_91_envp_1137" = bitcast i8* %"$$fundef_91_envp_1137_salloc" to %"$$fundef_91_env_307"*
  %"$$fundef_91_env_voidp_1139" = bitcast %"$$fundef_91_env_307"* %"$$fundef_91_envp_1137" to i8*
  %"$$fundef_91_cloval_1140" = insertvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })* bitcast ({ { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_91_env_307"*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })* @"$fundef_91" to { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*), i8* undef }, i8* %"$$fundef_91_env_voidp_1139", 1
  %"$$fundef_91_env_ListUtils.list_exists_1141" = getelementptr inbounds %"$$fundef_91_env_307", %"$$fundef_91_env_307"* %"$$fundef_91_envp_1137", i32 0, i32 0
  %"$ListUtils.list_exists_1142" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_exists, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_1142", { i8*, i8* }** %"$$fundef_91_env_ListUtils.list_exists_1141", align 8
  store { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_91_cloval_1140", { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_90", align 8, !dbg !98
  %"$$retval_90_1143" = load { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_90", align 8
  ret { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_90_1143"
}

define internal %TName_Bool* @"$fundef_99"(%"$$fundef_99_env_309"* %0, %TName_List_ByStr20* %1) !dbg !99 {
entry:
  %"$$fundef_99_env_ListUtils.list_find_1056" = getelementptr inbounds %"$$fundef_99_env_309", %"$$fundef_99_env_309"* %0, i32 0, i32 0
  %"$ListUtils.list_find_envload_1057" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_99_env_ListUtils.list_find_1056", align 8
  %ListUtils.list_find = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_envload_1057", { i8*, i8* }** %ListUtils.list_find, align 8
  %"$$fundef_99_env_p_1058" = getelementptr inbounds %"$$fundef_99_env_309", %"$$fundef_99_env_309"* %0, i32 0, i32 1
  %"$p_envload_1059" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_99_env_p_1058", align 8
  %p = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_envload_1059", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  %"$retval_100" = alloca %TName_Bool*, align 8
  %"$gasrem_1060" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1061" = icmp ugt i64 1, %"$gasrem_1060"
  br i1 %"$gascmp_1061", label %"$out_of_gas_1062", label %"$have_gas_1063"

"$out_of_gas_1062":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1063"

"$have_gas_1063":                                 ; preds = %"$out_of_gas_1062", %entry
  %"$consume_1064" = sub i64 %"$gasrem_1060", 1
  store i64 %"$consume_1064", i64* @_gasrem, align 8
  %find = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1065" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1066" = icmp ugt i64 1, %"$gasrem_1065"
  br i1 %"$gascmp_1066", label %"$out_of_gas_1067", label %"$have_gas_1068"

"$out_of_gas_1067":                               ; preds = %"$have_gas_1063"
  call void @_out_of_gas()
  br label %"$have_gas_1068"

"$have_gas_1068":                                 ; preds = %"$out_of_gas_1067", %"$have_gas_1063"
  %"$consume_1069" = sub i64 %"$gasrem_1065", 1
  store i64 %"$consume_1069", i64* @_gasrem, align 8
  %"$ListUtils.list_find_1070" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_find, align 8
  %"$ListUtils.list_find_1071" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_find_1070", i32 0
  %"$ListUtils.list_find_1072" = bitcast { i8*, i8* }* %"$ListUtils.list_find_1071" to { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_find_1073" = load { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$ListUtils.list_find_1072", align 8
  %"$ListUtils.list_find_fptr_1074" = extractvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_find_1073", 0
  %"$ListUtils.list_find_envptr_1075" = extractvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$ListUtils.list_find_1073", 1
  %"$ListUtils.list_find_call_1076" = call { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_find_fptr_1074"(i8* %"$ListUtils.list_find_envptr_1075"), !dbg !100
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$ListUtils.list_find_call_1076", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %find, align 8, !dbg !101
  %"$gasrem_1077" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1078" = icmp ugt i64 1, %"$gasrem_1077"
  br i1 %"$gascmp_1078", label %"$out_of_gas_1079", label %"$have_gas_1080"

"$out_of_gas_1079":                               ; preds = %"$have_gas_1068"
  call void @_out_of_gas()
  br label %"$have_gas_1080"

"$have_gas_1080":                                 ; preds = %"$out_of_gas_1079", %"$have_gas_1068"
  %"$consume_1081" = sub i64 %"$gasrem_1077", 1
  store i64 %"$consume_1081", i64* @_gasrem, align 8
  %search = alloca %TName_Option_ByStr20*, align 8
  %"$gasrem_1082" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1083" = icmp ugt i64 1, %"$gasrem_1082"
  br i1 %"$gascmp_1083", label %"$out_of_gas_1084", label %"$have_gas_1085"

"$out_of_gas_1084":                               ; preds = %"$have_gas_1080"
  call void @_out_of_gas()
  br label %"$have_gas_1085"

"$have_gas_1085":                                 ; preds = %"$out_of_gas_1084", %"$have_gas_1080"
  %"$consume_1086" = sub i64 %"$gasrem_1082", 1
  store i64 %"$consume_1086", i64* @_gasrem, align 8
  %"$find_26" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$find_1087" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %find, align 8
  %"$find_fptr_1088" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$find_1087", 0
  %"$find_envptr_1089" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$find_1087", 1
  %"$p_1090" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  %"$find_call_1091" = call { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$find_fptr_1088"(i8* %"$find_envptr_1089", { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_1090"), !dbg !102
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$find_call_1091", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$find_26", align 8, !dbg !102
  %"$find_27" = alloca %TName_Option_ByStr20*, align 8
  %"$$find_26_1092" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$find_26", align 8
  %"$$find_26_fptr_1093" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$find_26_1092", 0
  %"$$find_26_envptr_1094" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$find_26_1092", 1
  %"$$find_26_call_1095" = call %TName_Option_ByStr20* %"$$find_26_fptr_1093"(i8* %"$$find_26_envptr_1094", %TName_List_ByStr20* %1), !dbg !102
  store %TName_Option_ByStr20* %"$$find_26_call_1095", %TName_Option_ByStr20** %"$find_27", align 8, !dbg !102
  %"$$find_27_1096" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$find_27", align 8
  store %TName_Option_ByStr20* %"$$find_27_1096", %TName_Option_ByStr20** %search, align 8, !dbg !102
  %"$gasrem_1097" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1098" = icmp ugt i64 2, %"$gasrem_1097"
  br i1 %"$gascmp_1098", label %"$out_of_gas_1099", label %"$have_gas_1100"

"$out_of_gas_1099":                               ; preds = %"$have_gas_1085"
  call void @_out_of_gas()
  br label %"$have_gas_1100"

"$have_gas_1100":                                 ; preds = %"$out_of_gas_1099", %"$have_gas_1085"
  %"$consume_1101" = sub i64 %"$gasrem_1097", 2
  store i64 %"$consume_1101", i64* @_gasrem, align 8
  %"$search_1103" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %search, align 8
  %"$search_tag_1104" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$search_1103", i32 0, i32 0
  %"$search_tag_1105" = load i8, i8* %"$search_tag_1104", align 1
  switch i8 %"$search_tag_1105", label %"$empty_default_1106" [
    i8 0, label %"$Some_1107"
    i8 1, label %"$None_1119"
  ], !dbg !103

"$Some_1107":                                     ; preds = %"$have_gas_1100"
  %"$search_1108" = bitcast %TName_Option_ByStr20* %"$search_1103" to %CName_Some_ByStr20*
  %"$$search_3_gep_1109" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$search_1108", i32 0, i32 1
  %"$$search_3_load_1110" = load [20 x i8], [20 x i8]* %"$$search_3_gep_1109", align 1
  %"$search_3" = alloca [20 x i8], align 1
  store [20 x i8] %"$$search_3_load_1110", [20 x i8]* %"$search_3", align 1
  %"$gasrem_1111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1112" = icmp ugt i64 1, %"$gasrem_1111"
  br i1 %"$gascmp_1112", label %"$out_of_gas_1113", label %"$have_gas_1114"

"$out_of_gas_1113":                               ; preds = %"$Some_1107"
  call void @_out_of_gas()
  br label %"$have_gas_1114"

"$have_gas_1114":                                 ; preds = %"$out_of_gas_1113", %"$Some_1107"
  %"$consume_1115" = sub i64 %"$gasrem_1111", 1
  store i64 %"$consume_1115", i64* @_gasrem, align 8
  %"$adtval_1116_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1116_salloc" = call i8* @_salloc(i8* %"$adtval_1116_load", i64 1)
  %"$adtval_1116" = bitcast i8* %"$adtval_1116_salloc" to %CName_True*
  %"$adtgep_1117" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1116", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1117", align 1
  %"$adtptr_1118" = bitcast %CName_True* %"$adtval_1116" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1118", %TName_Bool** %"$retval_100", align 8, !dbg !104
  br label %"$matchsucc_1102"

"$None_1119":                                     ; preds = %"$have_gas_1100"
  %"$search_1120" = bitcast %TName_Option_ByStr20* %"$search_1103" to %CName_None_ByStr20*
  %"$gasrem_1121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1122" = icmp ugt i64 1, %"$gasrem_1121"
  br i1 %"$gascmp_1122", label %"$out_of_gas_1123", label %"$have_gas_1124"

"$out_of_gas_1123":                               ; preds = %"$None_1119"
  call void @_out_of_gas()
  br label %"$have_gas_1124"

"$have_gas_1124":                                 ; preds = %"$out_of_gas_1123", %"$None_1119"
  %"$consume_1125" = sub i64 %"$gasrem_1121", 1
  store i64 %"$consume_1125", i64* @_gasrem, align 8
  %"$adtval_1126_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1126_salloc" = call i8* @_salloc(i8* %"$adtval_1126_load", i64 1)
  %"$adtval_1126" = bitcast i8* %"$adtval_1126_salloc" to %CName_False*
  %"$adtgep_1127" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_1126", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1127", align 1
  %"$adtptr_1128" = bitcast %CName_False* %"$adtval_1126" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1128", %TName_Bool** %"$retval_100", align 8, !dbg !107
  br label %"$matchsucc_1102"

"$empty_default_1106":                            ; preds = %"$have_gas_1100"
  br label %"$matchsucc_1102"

"$matchsucc_1102":                                ; preds = %"$have_gas_1124", %"$have_gas_1114", %"$empty_default_1106"
  %"$$retval_100_1129" = load %TName_Bool*, %TName_Bool** %"$retval_100", align 8
  ret %TName_Bool* %"$$retval_100_1129"
}

define internal { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_97"(%"$$fundef_97_env_310"* %0, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1) !dbg !109 {
entry:
  %"$$fundef_97_env_ListUtils.list_find_1041" = getelementptr inbounds %"$$fundef_97_env_310", %"$$fundef_97_env_310"* %0, i32 0, i32 0
  %"$ListUtils.list_find_envload_1042" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_97_env_ListUtils.list_find_1041", align 8
  %ListUtils.list_find = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_envload_1042", { i8*, i8* }** %ListUtils.list_find, align 8
  %"$retval_98" = alloca { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_1043" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1044" = icmp ugt i64 1, %"$gasrem_1043"
  br i1 %"$gascmp_1044", label %"$out_of_gas_1045", label %"$have_gas_1046"

"$out_of_gas_1045":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1046"

"$have_gas_1046":                                 ; preds = %"$out_of_gas_1045", %entry
  %"$consume_1047" = sub i64 %"$gasrem_1043", 1
  store i64 %"$consume_1047", i64* @_gasrem, align 8
  %"$$fundef_99_envp_1048_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_99_envp_1048_salloc" = call i8* @_salloc(i8* %"$$fundef_99_envp_1048_load", i64 24)
  %"$$fundef_99_envp_1048" = bitcast i8* %"$$fundef_99_envp_1048_salloc" to %"$$fundef_99_env_309"*
  %"$$fundef_99_env_voidp_1050" = bitcast %"$$fundef_99_env_309"* %"$$fundef_99_envp_1048" to i8*
  %"$$fundef_99_cloval_1051" = insertvalue { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } { %TName_Bool* (i8*, %TName_List_ByStr20*)* bitcast (%TName_Bool* (%"$$fundef_99_env_309"*, %TName_List_ByStr20*)* @"$fundef_99" to %TName_Bool* (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_99_env_voidp_1050", 1
  %"$$fundef_99_env_ListUtils.list_find_1052" = getelementptr inbounds %"$$fundef_99_env_309", %"$$fundef_99_env_309"* %"$$fundef_99_envp_1048", i32 0, i32 0
  %"$ListUtils.list_find_1053" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_find, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_1053", { i8*, i8* }** %"$$fundef_99_env_ListUtils.list_find_1052", align 8
  %"$$fundef_99_env_p_1054" = getelementptr inbounds %"$$fundef_99_env_309", %"$$fundef_99_env_309"* %"$$fundef_99_envp_1048", i32 0, i32 1
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_99_env_p_1054", align 8
  store { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_99_cloval_1051", { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_98", align 8, !dbg !110
  %"$$retval_98_1055" = load { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_98", align 8
  ret { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_98_1055"
}

define internal { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_95"(%"$$fundef_95_env_311"* %0) !dbg !111 {
entry:
  %"$$fundef_95_env_ListUtils.list_find_1027" = getelementptr inbounds %"$$fundef_95_env_311", %"$$fundef_95_env_311"* %0, i32 0, i32 0
  %"$ListUtils.list_find_envload_1028" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_95_env_ListUtils.list_find_1027", align 8
  %ListUtils.list_find = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_envload_1028", { i8*, i8* }** %ListUtils.list_find, align 8
  %"$retval_96" = alloca { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_1029" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1030" = icmp ugt i64 1, %"$gasrem_1029"
  br i1 %"$gascmp_1030", label %"$out_of_gas_1031", label %"$have_gas_1032"

"$out_of_gas_1031":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1032"

"$have_gas_1032":                                 ; preds = %"$out_of_gas_1031", %entry
  %"$consume_1033" = sub i64 %"$gasrem_1029", 1
  store i64 %"$consume_1033", i64* @_gasrem, align 8
  %"$$fundef_97_envp_1034_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_97_envp_1034_salloc" = call i8* @_salloc(i8* %"$$fundef_97_envp_1034_load", i64 8)
  %"$$fundef_97_envp_1034" = bitcast i8* %"$$fundef_97_envp_1034_salloc" to %"$$fundef_97_env_310"*
  %"$$fundef_97_env_voidp_1036" = bitcast %"$$fundef_97_env_310"* %"$$fundef_97_envp_1034" to i8*
  %"$$fundef_97_cloval_1037" = insertvalue { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* bitcast ({ %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_97_env_310"*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* @"$fundef_97" to { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*), i8* undef }, i8* %"$$fundef_97_env_voidp_1036", 1
  %"$$fundef_97_env_ListUtils.list_find_1038" = getelementptr inbounds %"$$fundef_97_env_310", %"$$fundef_97_env_310"* %"$$fundef_97_envp_1034", i32 0, i32 0
  %"$ListUtils.list_find_1039" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_find, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_1039", { i8*, i8* }** %"$$fundef_97_env_ListUtils.list_find_1038", align 8
  store { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_97_cloval_1037", { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_96", align 8, !dbg !112
  %"$$retval_96_1040" = load { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_96", align 8
  ret { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_96_1040"
}

define internal %TName_Option_ByStr20* @"$fundef_109"(%"$$fundef_109_env_312"* %0, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %1) !dbg !113 {
entry:
  %"$$fundef_109_env_init_969" = getelementptr inbounds %"$$fundef_109_env_312", %"$$fundef_109_env_312"* %0, i32 0, i32 0
  %"$init_envload_970" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_109_env_init_969", align 8
  %init = alloca %TName_Option_ByStr20*, align 8
  store %TName_Option_ByStr20* %"$init_envload_970", %TName_Option_ByStr20** %init, align 8
  %"$$fundef_109_env_p_971" = getelementptr inbounds %"$$fundef_109_env_312", %"$$fundef_109_env_312"* %0, i32 0, i32 1
  %"$p_envload_972" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_109_env_p_971", align 8
  %p = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_envload_972", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  %"$$fundef_109_env_x_973" = getelementptr inbounds %"$$fundef_109_env_312", %"$$fundef_109_env_312"* %0, i32 0, i32 2
  %"$x_envload_974" = load [20 x i8], [20 x i8]* %"$$fundef_109_env_x_973", align 1
  %x = alloca [20 x i8], align 1
  store [20 x i8] %"$x_envload_974", [20 x i8]* %x, align 1
  %"$retval_110" = alloca %TName_Option_ByStr20*, align 8
  %"$gasrem_975" = load i64, i64* @_gasrem, align 8
  %"$gascmp_976" = icmp ugt i64 1, %"$gasrem_975"
  br i1 %"$gascmp_976", label %"$out_of_gas_977", label %"$have_gas_978"

"$out_of_gas_977":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_978"

"$have_gas_978":                                  ; preds = %"$out_of_gas_977", %entry
  %"$consume_979" = sub i64 %"$gasrem_975", 1
  store i64 %"$consume_979", i64* @_gasrem, align 8
  %p_x = alloca %TName_Bool*, align 8
  %"$gasrem_980" = load i64, i64* @_gasrem, align 8
  %"$gascmp_981" = icmp ugt i64 1, %"$gasrem_980"
  br i1 %"$gascmp_981", label %"$out_of_gas_982", label %"$have_gas_983"

"$out_of_gas_982":                                ; preds = %"$have_gas_978"
  call void @_out_of_gas()
  br label %"$have_gas_983"

"$have_gas_983":                                  ; preds = %"$out_of_gas_982", %"$have_gas_978"
  %"$consume_984" = sub i64 %"$gasrem_980", 1
  store i64 %"$consume_984", i64* @_gasrem, align 8
  %"$p_22" = alloca %TName_Bool*, align 8
  %"$p_985" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  %"$p_fptr_986" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_985", 0
  %"$p_envptr_987" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_985", 1
  %"$p_x_988" = alloca [20 x i8], align 1
  %"$x_989" = load [20 x i8], [20 x i8]* %x, align 1
  store [20 x i8] %"$x_989", [20 x i8]* %"$p_x_988", align 1
  %"$p_call_990" = call %TName_Bool* %"$p_fptr_986"(i8* %"$p_envptr_987", [20 x i8]* %"$p_x_988"), !dbg !114
  store %TName_Bool* %"$p_call_990", %TName_Bool** %"$p_22", align 8, !dbg !114
  %"$$p_22_991" = load %TName_Bool*, %TName_Bool** %"$p_22", align 8
  store %TName_Bool* %"$$p_22_991", %TName_Bool** %p_x, align 8, !dbg !114
  %"$gasrem_992" = load i64, i64* @_gasrem, align 8
  %"$gascmp_993" = icmp ugt i64 2, %"$gasrem_992"
  br i1 %"$gascmp_993", label %"$out_of_gas_994", label %"$have_gas_995"

"$out_of_gas_994":                                ; preds = %"$have_gas_983"
  call void @_out_of_gas()
  br label %"$have_gas_995"

"$have_gas_995":                                  ; preds = %"$out_of_gas_994", %"$have_gas_983"
  %"$consume_996" = sub i64 %"$gasrem_992", 2
  store i64 %"$consume_996", i64* @_gasrem, align 8
  %"$p_x_998" = load %TName_Bool*, %TName_Bool** %p_x, align 8
  %"$p_x_tag_999" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$p_x_998", i32 0, i32 0
  %"$p_x_tag_1000" = load i8, i8* %"$p_x_tag_999", align 1
  switch i8 %"$p_x_tag_1000", label %"$empty_default_1001" [
    i8 0, label %"$True_1002"
    i8 1, label %"$False_1014"
  ], !dbg !115

"$True_1002":                                     ; preds = %"$have_gas_995"
  %"$p_x_1003" = bitcast %TName_Bool* %"$p_x_998" to %CName_True*
  %"$gasrem_1004" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1005" = icmp ugt i64 1, %"$gasrem_1004"
  br i1 %"$gascmp_1005", label %"$out_of_gas_1006", label %"$have_gas_1007"

"$out_of_gas_1006":                               ; preds = %"$True_1002"
  call void @_out_of_gas()
  br label %"$have_gas_1007"

"$have_gas_1007":                                 ; preds = %"$out_of_gas_1006", %"$True_1002"
  %"$consume_1008" = sub i64 %"$gasrem_1004", 1
  store i64 %"$consume_1008", i64* @_gasrem, align 8
  %"$x_1009" = load [20 x i8], [20 x i8]* %x, align 1
  %"$adtval_1010_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1010_salloc" = call i8* @_salloc(i8* %"$adtval_1010_load", i64 21)
  %"$adtval_1010" = bitcast i8* %"$adtval_1010_salloc" to %CName_Some_ByStr20*
  %"$adtgep_1011" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$adtval_1010", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1011", align 1
  %"$adtgep_1012" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$adtval_1010", i32 0, i32 1
  store [20 x i8] %"$x_1009", [20 x i8]* %"$adtgep_1012", align 1
  %"$adtptr_1013" = bitcast %CName_Some_ByStr20* %"$adtval_1010" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$adtptr_1013", %TName_Option_ByStr20** %"$retval_110", align 8, !dbg !116
  br label %"$matchsucc_997"

"$False_1014":                                    ; preds = %"$have_gas_995"
  %"$p_x_1015" = bitcast %TName_Bool* %"$p_x_998" to %CName_False*
  %"$gasrem_1016" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1017" = icmp ugt i64 1, %"$gasrem_1016"
  br i1 %"$gascmp_1017", label %"$out_of_gas_1018", label %"$have_gas_1019"

"$out_of_gas_1018":                               ; preds = %"$False_1014"
  call void @_out_of_gas()
  br label %"$have_gas_1019"

"$have_gas_1019":                                 ; preds = %"$out_of_gas_1018", %"$False_1014"
  %"$consume_1020" = sub i64 %"$gasrem_1016", 1
  store i64 %"$consume_1020", i64* @_gasrem, align 8
  %"$recurse_23" = alloca %TName_Option_ByStr20*, align 8
  %"$recurse_fptr_1021" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %1, 0
  %"$recurse_envptr_1022" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %1, 1
  %"$init_1023" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init, align 8
  %"$recurse_call_1024" = call %TName_Option_ByStr20* %"$recurse_fptr_1021"(i8* %"$recurse_envptr_1022", %TName_Option_ByStr20* %"$init_1023"), !dbg !119
  store %TName_Option_ByStr20* %"$recurse_call_1024", %TName_Option_ByStr20** %"$recurse_23", align 8, !dbg !119
  %"$$recurse_23_1025" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$recurse_23", align 8
  store %TName_Option_ByStr20* %"$$recurse_23_1025", %TName_Option_ByStr20** %"$retval_110", align 8, !dbg !119
  br label %"$matchsucc_997"

"$empty_default_1001":                            ; preds = %"$have_gas_995"
  br label %"$matchsucc_997"

"$matchsucc_997":                                 ; preds = %"$have_gas_1019", %"$have_gas_1007", %"$empty_default_1001"
  %"$$retval_110_1026" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$retval_110", align 8
  ret %TName_Option_ByStr20* %"$$retval_110_1026"
}

define internal { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } @"$fundef_107"(%"$$fundef_107_env_313"* %0, [20 x i8]* %1) !dbg !121 {
entry:
  %x = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_107_env_init_950" = getelementptr inbounds %"$$fundef_107_env_313", %"$$fundef_107_env_313"* %0, i32 0, i32 0
  %"$init_envload_951" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_107_env_init_950", align 8
  %init = alloca %TName_Option_ByStr20*, align 8
  store %TName_Option_ByStr20* %"$init_envload_951", %TName_Option_ByStr20** %init, align 8
  %"$$fundef_107_env_p_952" = getelementptr inbounds %"$$fundef_107_env_313", %"$$fundef_107_env_313"* %0, i32 0, i32 1
  %"$p_envload_953" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_107_env_p_952", align 8
  %p = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_envload_953", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  %"$retval_108" = alloca { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, align 8
  %"$gasrem_954" = load i64, i64* @_gasrem, align 8
  %"$gascmp_955" = icmp ugt i64 1, %"$gasrem_954"
  br i1 %"$gascmp_955", label %"$out_of_gas_956", label %"$have_gas_957"

"$out_of_gas_956":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_957"

"$have_gas_957":                                  ; preds = %"$out_of_gas_956", %entry
  %"$consume_958" = sub i64 %"$gasrem_954", 1
  store i64 %"$consume_958", i64* @_gasrem, align 8
  %"$$fundef_109_envp_959_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_109_envp_959_salloc" = call i8* @_salloc(i8* %"$$fundef_109_envp_959_load", i64 48)
  %"$$fundef_109_envp_959" = bitcast i8* %"$$fundef_109_envp_959_salloc" to %"$$fundef_109_env_312"*
  %"$$fundef_109_env_voidp_961" = bitcast %"$$fundef_109_env_312"* %"$$fundef_109_envp_959" to i8*
  %"$$fundef_109_cloval_962" = insertvalue { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })* bitcast (%TName_Option_ByStr20* (%"$$fundef_109_env_312"*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })* @"$fundef_109" to %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*), i8* undef }, i8* %"$$fundef_109_env_voidp_961", 1
  %"$$fundef_109_env_init_963" = getelementptr inbounds %"$$fundef_109_env_312", %"$$fundef_109_env_312"* %"$$fundef_109_envp_959", i32 0, i32 0
  %"$init_964" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init, align 8
  store %TName_Option_ByStr20* %"$init_964", %TName_Option_ByStr20** %"$$fundef_109_env_init_963", align 8
  %"$$fundef_109_env_p_965" = getelementptr inbounds %"$$fundef_109_env_312", %"$$fundef_109_env_312"* %"$$fundef_109_envp_959", i32 0, i32 1
  %"$p_966" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_966", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_109_env_p_965", align 8
  %"$$fundef_109_env_x_967" = getelementptr inbounds %"$$fundef_109_env_312", %"$$fundef_109_env_312"* %"$$fundef_109_envp_959", i32 0, i32 2
  store [20 x i8] %x, [20 x i8]* %"$$fundef_109_env_x_967", align 1
  store { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$fundef_109_cloval_962", { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_108", align 8, !dbg !122
  %"$$retval_108_968" = load { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_108", align 8
  ret { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$retval_108_968"
}

define internal { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } @"$fundef_105"(%"$$fundef_105_env_314"* %0, %TName_Option_ByStr20* %1) !dbg !123 {
entry:
  %"$$fundef_105_env_init_932" = getelementptr inbounds %"$$fundef_105_env_314", %"$$fundef_105_env_314"* %0, i32 0, i32 0
  %"$init_envload_933" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_105_env_init_932", align 8
  %init = alloca %TName_Option_ByStr20*, align 8
  store %TName_Option_ByStr20* %"$init_envload_933", %TName_Option_ByStr20** %init, align 8
  %"$$fundef_105_env_p_934" = getelementptr inbounds %"$$fundef_105_env_314", %"$$fundef_105_env_314"* %0, i32 0, i32 1
  %"$p_envload_935" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_105_env_p_934", align 8
  %p = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_envload_935", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  %"$retval_106" = alloca { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_937" = icmp ugt i64 1, %"$gasrem_936"
  br i1 %"$gascmp_937", label %"$out_of_gas_938", label %"$have_gas_939"

"$out_of_gas_938":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_939"

"$have_gas_939":                                  ; preds = %"$out_of_gas_938", %entry
  %"$consume_940" = sub i64 %"$gasrem_936", 1
  store i64 %"$consume_940", i64* @_gasrem, align 8
  %"$$fundef_107_envp_941_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_107_envp_941_salloc" = call i8* @_salloc(i8* %"$$fundef_107_envp_941_load", i64 24)
  %"$$fundef_107_envp_941" = bitcast i8* %"$$fundef_107_envp_941_salloc" to %"$$fundef_107_env_313"*
  %"$$fundef_107_env_voidp_943" = bitcast %"$$fundef_107_env_313"* %"$$fundef_107_envp_941" to i8*
  %"$$fundef_107_cloval_944" = insertvalue { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (%"$$fundef_107_env_313"*, [20 x i8]*)* @"$fundef_107" to { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_107_env_voidp_943", 1
  %"$$fundef_107_env_init_945" = getelementptr inbounds %"$$fundef_107_env_313", %"$$fundef_107_env_313"* %"$$fundef_107_envp_941", i32 0, i32 0
  %"$init_946" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init, align 8
  store %TName_Option_ByStr20* %"$init_946", %TName_Option_ByStr20** %"$$fundef_107_env_init_945", align 8
  %"$$fundef_107_env_p_947" = getelementptr inbounds %"$$fundef_107_env_313", %"$$fundef_107_env_313"* %"$$fundef_107_envp_941", i32 0, i32 1
  %"$p_948" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %p, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$p_948", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_107_env_p_947", align 8
  store { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_107_cloval_944", { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_106", align 8, !dbg !124
  %"$$retval_106_949" = load { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$retval_106", align 8
  ret { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$retval_106_949"
}

define internal { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_103"(%"$$fundef_103_env_315"* %0, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1) !dbg !125 {
entry:
  %"$$fundef_103_env_list_foldk_860" = getelementptr inbounds %"$$fundef_103_env_315", %"$$fundef_103_env_315"* %0, i32 0, i32 0
  %"$list_foldk_envload_861" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_103_env_list_foldk_860", align 8
  %list_foldk = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldk_envload_861", { i8*, i8* }** %list_foldk, align 8
  %"$retval_104" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_863" = icmp ugt i64 1, %"$gasrem_862"
  br i1 %"$gascmp_863", label %"$out_of_gas_864", label %"$have_gas_865"

"$out_of_gas_864":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_865"

"$have_gas_865":                                  ; preds = %"$out_of_gas_864", %entry
  %"$consume_866" = sub i64 %"$gasrem_862", 1
  store i64 %"$consume_866", i64* @_gasrem, align 8
  %foldk = alloca { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, align 8
  %"$gasrem_867" = load i64, i64* @_gasrem, align 8
  %"$gascmp_868" = icmp ugt i64 1, %"$gasrem_867"
  br i1 %"$gascmp_868", label %"$out_of_gas_869", label %"$have_gas_870"

"$out_of_gas_869":                                ; preds = %"$have_gas_865"
  call void @_out_of_gas()
  br label %"$have_gas_870"

"$have_gas_870":                                  ; preds = %"$out_of_gas_869", %"$have_gas_865"
  %"$consume_871" = sub i64 %"$gasrem_867", 1
  store i64 %"$consume_871", i64* @_gasrem, align 8
  %"$list_foldk_872" = load { i8*, i8* }*, { i8*, i8* }** %list_foldk, align 8
  %"$list_foldk_873" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldk_872", i32 0
  %"$list_foldk_874" = bitcast { i8*, i8* }* %"$list_foldk_873" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldk_875" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldk_874", align 8
  %"$list_foldk_fptr_876" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldk_875", 0
  %"$list_foldk_envptr_877" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldk_875", 1
  %"$list_foldk_call_878" = call { i8*, i8* }* %"$list_foldk_fptr_876"(i8* %"$list_foldk_envptr_877"), !dbg !126
  %"$list_foldk_879" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldk_call_878", i32 2
  %"$list_foldk_880" = bitcast { i8*, i8* }* %"$list_foldk_879" to { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldk_881" = load { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldk_880", align 8
  %"$list_foldk_fptr_882" = extractvalue { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldk_881", 0
  %"$list_foldk_envptr_883" = extractvalue { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldk_881", 1
  %"$list_foldk_call_884" = call { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$list_foldk_fptr_882"(i8* %"$list_foldk_envptr_883"), !dbg !126
  store { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$list_foldk_call_884", { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %foldk, align 8, !dbg !127
  %"$gasrem_885" = load i64, i64* @_gasrem, align 8
  %"$gascmp_886" = icmp ugt i64 1, %"$gasrem_885"
  br i1 %"$gascmp_886", label %"$out_of_gas_887", label %"$have_gas_888"

"$out_of_gas_887":                                ; preds = %"$have_gas_870"
  call void @_out_of_gas()
  br label %"$have_gas_888"

"$have_gas_888":                                  ; preds = %"$out_of_gas_887", %"$have_gas_870"
  %"$consume_889" = sub i64 %"$gasrem_885", 1
  store i64 %"$consume_889", i64* @_gasrem, align 8
  %init = alloca %TName_Option_ByStr20*, align 8
  %"$gasrem_890" = load i64, i64* @_gasrem, align 8
  %"$gascmp_891" = icmp ugt i64 1, %"$gasrem_890"
  br i1 %"$gascmp_891", label %"$out_of_gas_892", label %"$have_gas_893"

"$out_of_gas_892":                                ; preds = %"$have_gas_888"
  call void @_out_of_gas()
  br label %"$have_gas_893"

"$have_gas_893":                                  ; preds = %"$out_of_gas_892", %"$have_gas_888"
  %"$consume_894" = sub i64 %"$gasrem_890", 1
  store i64 %"$consume_894", i64* @_gasrem, align 8
  %"$adtval_895_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_895_salloc" = call i8* @_salloc(i8* %"$adtval_895_load", i64 1)
  %"$adtval_895" = bitcast i8* %"$adtval_895_salloc" to %CName_None_ByStr20*
  %"$adtgep_896" = getelementptr inbounds %CName_None_ByStr20, %CName_None_ByStr20* %"$adtval_895", i32 0, i32 0
  store i8 1, i8* %"$adtgep_896", align 1
  %"$adtptr_897" = bitcast %CName_None_ByStr20* %"$adtval_895" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$adtptr_897", %TName_Option_ByStr20** %init, align 8, !dbg !128
  %"$gasrem_898" = load i64, i64* @_gasrem, align 8
  %"$gascmp_899" = icmp ugt i64 1, %"$gasrem_898"
  br i1 %"$gascmp_899", label %"$out_of_gas_900", label %"$have_gas_901"

"$out_of_gas_900":                                ; preds = %"$have_gas_893"
  call void @_out_of_gas()
  br label %"$have_gas_901"

"$have_gas_901":                                  ; preds = %"$out_of_gas_900", %"$have_gas_893"
  %"$consume_902" = sub i64 %"$gasrem_898", 1
  store i64 %"$consume_902", i64* @_gasrem, align 8
  %predicate_step = alloca { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$gasrem_903" = load i64, i64* @_gasrem, align 8
  %"$gascmp_904" = icmp ugt i64 1, %"$gasrem_903"
  br i1 %"$gascmp_904", label %"$out_of_gas_905", label %"$have_gas_906"

"$out_of_gas_905":                                ; preds = %"$have_gas_901"
  call void @_out_of_gas()
  br label %"$have_gas_906"

"$have_gas_906":                                  ; preds = %"$out_of_gas_905", %"$have_gas_901"
  %"$consume_907" = sub i64 %"$gasrem_903", 1
  store i64 %"$consume_907", i64* @_gasrem, align 8
  %"$$fundef_105_envp_908_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_105_envp_908_salloc" = call i8* @_salloc(i8* %"$$fundef_105_envp_908_load", i64 24)
  %"$$fundef_105_envp_908" = bitcast i8* %"$$fundef_105_envp_908_salloc" to %"$$fundef_105_env_314"*
  %"$$fundef_105_env_voidp_910" = bitcast %"$$fundef_105_env_314"* %"$$fundef_105_envp_908" to i8*
  %"$$fundef_105_cloval_911" = insertvalue { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)* bitcast ({ { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (%"$$fundef_105_env_314"*, %TName_Option_ByStr20*)* @"$fundef_105" to { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*), i8* undef }, i8* %"$$fundef_105_env_voidp_910", 1
  %"$$fundef_105_env_init_912" = getelementptr inbounds %"$$fundef_105_env_314", %"$$fundef_105_env_314"* %"$$fundef_105_envp_908", i32 0, i32 0
  %"$init_913" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init, align 8
  store %TName_Option_ByStr20* %"$init_913", %TName_Option_ByStr20** %"$$fundef_105_env_init_912", align 8
  %"$$fundef_105_env_p_914" = getelementptr inbounds %"$$fundef_105_env_314", %"$$fundef_105_env_314"* %"$$fundef_105_envp_908", i32 0, i32 1
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_105_env_p_914", align 8
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_105_cloval_911", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %predicate_step, align 8, !dbg !129
  %"$gasrem_915" = load i64, i64* @_gasrem, align 8
  %"$gascmp_916" = icmp ugt i64 1, %"$gasrem_915"
  br i1 %"$gascmp_916", label %"$out_of_gas_917", label %"$have_gas_918"

"$out_of_gas_917":                                ; preds = %"$have_gas_906"
  call void @_out_of_gas()
  br label %"$have_gas_918"

"$have_gas_918":                                  ; preds = %"$out_of_gas_917", %"$have_gas_906"
  %"$consume_919" = sub i64 %"$gasrem_915", 1
  store i64 %"$consume_919", i64* @_gasrem, align 8
  %"$foldk_24" = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$foldk_920" = load { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %foldk, align 8
  %"$foldk_fptr_921" = extractvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$foldk_920", 0
  %"$foldk_envptr_922" = extractvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$foldk_920", 1
  %"$predicate_step_923" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %predicate_step, align 8
  %"$foldk_call_924" = call { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$foldk_fptr_921"(i8* %"$foldk_envptr_922", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$predicate_step_923"), !dbg !130
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$foldk_call_924", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$foldk_24", align 8, !dbg !130
  %"$foldk_25" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$$foldk_24_925" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$foldk_24", align 8
  %"$$foldk_24_fptr_926" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$foldk_24_925", 0
  %"$$foldk_24_envptr_927" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$foldk_24_925", 1
  %"$init_928" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %init, align 8
  %"$$foldk_24_call_929" = call { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldk_24_fptr_926"(i8* %"$$foldk_24_envptr_927", %TName_Option_ByStr20* %"$init_928"), !dbg !130
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldk_24_call_929", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldk_25", align 8, !dbg !130
  %"$$foldk_25_930" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldk_25", align 8
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldk_25_930", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_104", align 8, !dbg !130
  %"$$retval_104_931" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_104", align 8
  ret { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_104_931"
}

define internal { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_101"(%"$$fundef_101_env_316"* %0) !dbg !131 {
entry:
  %"$$fundef_101_env_list_foldk_846" = getelementptr inbounds %"$$fundef_101_env_316", %"$$fundef_101_env_316"* %0, i32 0, i32 0
  %"$list_foldk_envload_847" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_101_env_list_foldk_846", align 8
  %list_foldk = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldk_envload_847", { i8*, i8* }** %list_foldk, align 8
  %"$retval_102" = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_849" = icmp ugt i64 1, %"$gasrem_848"
  br i1 %"$gascmp_849", label %"$out_of_gas_850", label %"$have_gas_851"

"$out_of_gas_850":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_851"

"$have_gas_851":                                  ; preds = %"$out_of_gas_850", %entry
  %"$consume_852" = sub i64 %"$gasrem_848", 1
  store i64 %"$consume_852", i64* @_gasrem, align 8
  %"$$fundef_103_envp_853_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_103_envp_853_salloc" = call i8* @_salloc(i8* %"$$fundef_103_envp_853_load", i64 8)
  %"$$fundef_103_envp_853" = bitcast i8* %"$$fundef_103_envp_853_salloc" to %"$$fundef_103_env_315"*
  %"$$fundef_103_env_voidp_855" = bitcast %"$$fundef_103_env_315"* %"$$fundef_103_envp_853" to i8*
  %"$$fundef_103_cloval_856" = insertvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* bitcast ({ %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_103_env_315"*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* @"$fundef_103" to { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*), i8* undef }, i8* %"$$fundef_103_env_voidp_855", 1
  %"$$fundef_103_env_list_foldk_857" = getelementptr inbounds %"$$fundef_103_env_315", %"$$fundef_103_env_315"* %"$$fundef_103_envp_853", i32 0, i32 0
  %"$list_foldk_858" = load { i8*, i8* }*, { i8*, i8* }** %list_foldk, align 8
  store { i8*, i8* }* %"$list_foldk_858", { i8*, i8* }** %"$$fundef_103_env_list_foldk_857", align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_103_cloval_856", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_102", align 8, !dbg !132
  %"$$retval_102_859" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_102", align 8
  ret { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_102_859"
}

define internal %TName_List_ByStr20* @"$fundef_117"(%"$$fundef_117_env_317"* %0, %TName_List_ByStr20* %1) !dbg !133 {
entry:
  %"$$fundef_117_env_f_794" = getelementptr inbounds %"$$fundef_117_env_317", %"$$fundef_117_env_317"* %0, i32 0, i32 0
  %"$f_envload_795" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_117_env_f_794", align 8
  %f = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_envload_795", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$$fundef_117_env_h_796" = getelementptr inbounds %"$$fundef_117_env_317", %"$$fundef_117_env_317"* %0, i32 0, i32 1
  %"$h_envload_797" = load [20 x i8], [20 x i8]* %"$$fundef_117_env_h_796", align 1
  %h = alloca [20 x i8], align 1
  store [20 x i8] %"$h_envload_797", [20 x i8]* %h, align 1
  %"$retval_118" = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_798" = load i64, i64* @_gasrem, align 8
  %"$gascmp_799" = icmp ugt i64 1, %"$gasrem_798"
  br i1 %"$gascmp_799", label %"$out_of_gas_800", label %"$have_gas_801"

"$out_of_gas_800":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_801"

"$have_gas_801":                                  ; preds = %"$out_of_gas_800", %entry
  %"$consume_802" = sub i64 %"$gasrem_798", 1
  store i64 %"$consume_802", i64* @_gasrem, align 8
  %h1 = alloca %TName_Bool*, align 8
  %"$gasrem_803" = load i64, i64* @_gasrem, align 8
  %"$gascmp_804" = icmp ugt i64 1, %"$gasrem_803"
  br i1 %"$gascmp_804", label %"$out_of_gas_805", label %"$have_gas_806"

"$out_of_gas_805":                                ; preds = %"$have_gas_801"
  call void @_out_of_gas()
  br label %"$have_gas_806"

"$have_gas_806":                                  ; preds = %"$out_of_gas_805", %"$have_gas_801"
  %"$consume_807" = sub i64 %"$gasrem_803", 1
  store i64 %"$consume_807", i64* @_gasrem, align 8
  %"$f_19" = alloca %TName_Bool*, align 8
  %"$f_808" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$f_fptr_809" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_808", 0
  %"$f_envptr_810" = extractvalue { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_808", 1
  %"$f_h_811" = alloca [20 x i8], align 1
  %"$h_812" = load [20 x i8], [20 x i8]* %h, align 1
  store [20 x i8] %"$h_812", [20 x i8]* %"$f_h_811", align 1
  %"$f_call_813" = call %TName_Bool* %"$f_fptr_809"(i8* %"$f_envptr_810", [20 x i8]* %"$f_h_811"), !dbg !134
  store %TName_Bool* %"$f_call_813", %TName_Bool** %"$f_19", align 8, !dbg !134
  %"$$f_19_814" = load %TName_Bool*, %TName_Bool** %"$f_19", align 8
  store %TName_Bool* %"$$f_19_814", %TName_Bool** %h1, align 8, !dbg !134
  %"$gasrem_815" = load i64, i64* @_gasrem, align 8
  %"$gascmp_816" = icmp ugt i64 2, %"$gasrem_815"
  br i1 %"$gascmp_816", label %"$out_of_gas_817", label %"$have_gas_818"

"$out_of_gas_817":                                ; preds = %"$have_gas_806"
  call void @_out_of_gas()
  br label %"$have_gas_818"

"$have_gas_818":                                  ; preds = %"$out_of_gas_817", %"$have_gas_806"
  %"$consume_819" = sub i64 %"$gasrem_815", 2
  store i64 %"$consume_819", i64* @_gasrem, align 8
  %"$h1_821" = load %TName_Bool*, %TName_Bool** %h1, align 8
  %"$h1_tag_822" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$h1_821", i32 0, i32 0
  %"$h1_tag_823" = load i8, i8* %"$h1_tag_822", align 1
  switch i8 %"$h1_tag_823", label %"$empty_default_824" [
    i8 0, label %"$True_825"
    i8 1, label %"$False_838"
  ], !dbg !135

"$True_825":                                      ; preds = %"$have_gas_818"
  %"$h1_826" = bitcast %TName_Bool* %"$h1_821" to %CName_True*
  %"$gasrem_827" = load i64, i64* @_gasrem, align 8
  %"$gascmp_828" = icmp ugt i64 1, %"$gasrem_827"
  br i1 %"$gascmp_828", label %"$out_of_gas_829", label %"$have_gas_830"

"$out_of_gas_829":                                ; preds = %"$True_825"
  call void @_out_of_gas()
  br label %"$have_gas_830"

"$have_gas_830":                                  ; preds = %"$out_of_gas_829", %"$True_825"
  %"$consume_831" = sub i64 %"$gasrem_827", 1
  store i64 %"$consume_831", i64* @_gasrem, align 8
  %"$h_832" = load [20 x i8], [20 x i8]* %h, align 1
  %"$adtval_833_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_833_salloc" = call i8* @_salloc(i8* %"$adtval_833_load", i64 29)
  %"$adtval_833" = bitcast i8* %"$adtval_833_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_834" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_833", i32 0, i32 0
  store i8 0, i8* %"$adtgep_834", align 1
  %"$adtgep_835" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_833", i32 0, i32 1
  store [20 x i8] %"$h_832", [20 x i8]* %"$adtgep_835", align 1
  %"$adtgep_836" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_833", i32 0, i32 2
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$adtgep_836", align 8
  %"$adtptr_837" = bitcast %CName_Cons_ByStr20* %"$adtval_833" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_837", %TName_List_ByStr20** %"$retval_118", align 8, !dbg !136
  br label %"$matchsucc_820"

"$False_838":                                     ; preds = %"$have_gas_818"
  %"$h1_839" = bitcast %TName_Bool* %"$h1_821" to %CName_False*
  %"$gasrem_840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_841" = icmp ugt i64 1, %"$gasrem_840"
  br i1 %"$gascmp_841", label %"$out_of_gas_842", label %"$have_gas_843"

"$out_of_gas_842":                                ; preds = %"$False_838"
  call void @_out_of_gas()
  br label %"$have_gas_843"

"$have_gas_843":                                  ; preds = %"$out_of_gas_842", %"$False_838"
  %"$consume_844" = sub i64 %"$gasrem_840", 1
  store i64 %"$consume_844", i64* @_gasrem, align 8
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$retval_118", align 8, !dbg !139
  br label %"$matchsucc_820"

"$empty_default_824":                             ; preds = %"$have_gas_818"
  br label %"$matchsucc_820"

"$matchsucc_820":                                 ; preds = %"$have_gas_843", %"$have_gas_830", %"$empty_default_824"
  %"$$retval_118_845" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$retval_118", align 8
  ret %TName_List_ByStr20* %"$$retval_118_845"
}

define internal { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_115"(%"$$fundef_115_env_318"* %0, [20 x i8]* %1) !dbg !141 {
entry:
  %h = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_115_env_f_779" = getelementptr inbounds %"$$fundef_115_env_318", %"$$fundef_115_env_318"* %0, i32 0, i32 0
  %"$f_envload_780" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_115_env_f_779", align 8
  %f = alloca { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_envload_780", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$retval_116" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_781" = load i64, i64* @_gasrem, align 8
  %"$gascmp_782" = icmp ugt i64 1, %"$gasrem_781"
  br i1 %"$gascmp_782", label %"$out_of_gas_783", label %"$have_gas_784"

"$out_of_gas_783":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_784"

"$have_gas_784":                                  ; preds = %"$out_of_gas_783", %entry
  %"$consume_785" = sub i64 %"$gasrem_781", 1
  store i64 %"$consume_785", i64* @_gasrem, align 8
  %"$$fundef_117_envp_786_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_117_envp_786_salloc" = call i8* @_salloc(i8* %"$$fundef_117_envp_786_load", i64 40)
  %"$$fundef_117_envp_786" = bitcast i8* %"$$fundef_117_envp_786_salloc" to %"$$fundef_117_env_317"*
  %"$$fundef_117_env_voidp_788" = bitcast %"$$fundef_117_env_317"* %"$$fundef_117_envp_786" to i8*
  %"$$fundef_117_cloval_789" = insertvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)* bitcast (%TName_List_ByStr20* (%"$$fundef_117_env_317"*, %TName_List_ByStr20*)* @"$fundef_117" to %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_117_env_voidp_788", 1
  %"$$fundef_117_env_f_790" = getelementptr inbounds %"$$fundef_117_env_317", %"$$fundef_117_env_317"* %"$$fundef_117_envp_786", i32 0, i32 0
  %"$f_791" = load { %TName_Bool* (i8*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %f, align 8
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %"$f_791", { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_117_env_f_790", align 8
  %"$$fundef_117_env_h_792" = getelementptr inbounds %"$$fundef_117_env_317", %"$$fundef_117_env_317"* %"$$fundef_117_envp_786", i32 0, i32 1
  store [20 x i8] %h, [20 x i8]* %"$$fundef_117_env_h_792", align 1
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_117_cloval_789", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_116", align 8, !dbg !142
  %"$$retval_116_793" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_116", align 8
  ret { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_116_793"
}

define internal { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_113"(%"$$fundef_113_env_319"* %0, { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1) !dbg !143 {
entry:
  %"$$fundef_113_env_list_foldr_709" = getelementptr inbounds %"$$fundef_113_env_319", %"$$fundef_113_env_319"* %0, i32 0, i32 0
  %"$list_foldr_envload_710" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_113_env_list_foldr_709", align 8
  %list_foldr = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldr_envload_710", { i8*, i8* }** %list_foldr, align 8
  %"$retval_114" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_712" = icmp ugt i64 1, %"$gasrem_711"
  br i1 %"$gascmp_712", label %"$out_of_gas_713", label %"$have_gas_714"

"$out_of_gas_713":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_714"

"$have_gas_714":                                  ; preds = %"$out_of_gas_713", %entry
  %"$consume_715" = sub i64 %"$gasrem_711", 1
  store i64 %"$consume_715", i64* @_gasrem, align 8
  %foldr = alloca { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_716" = load i64, i64* @_gasrem, align 8
  %"$gascmp_717" = icmp ugt i64 1, %"$gasrem_716"
  br i1 %"$gascmp_717", label %"$out_of_gas_718", label %"$have_gas_719"

"$out_of_gas_718":                                ; preds = %"$have_gas_714"
  call void @_out_of_gas()
  br label %"$have_gas_719"

"$have_gas_719":                                  ; preds = %"$out_of_gas_718", %"$have_gas_714"
  %"$consume_720" = sub i64 %"$gasrem_716", 1
  store i64 %"$consume_720", i64* @_gasrem, align 8
  %"$list_foldr_721" = load { i8*, i8* }*, { i8*, i8* }** %list_foldr, align 8
  %"$list_foldr_722" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldr_721", i32 0
  %"$list_foldr_723" = bitcast { i8*, i8* }* %"$list_foldr_722" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldr_724" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldr_723", align 8
  %"$list_foldr_fptr_725" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldr_724", 0
  %"$list_foldr_envptr_726" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldr_724", 1
  %"$list_foldr_call_727" = call { i8*, i8* }* %"$list_foldr_fptr_725"(i8* %"$list_foldr_envptr_726"), !dbg !144
  %"$list_foldr_728" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldr_call_727", i32 1
  %"$list_foldr_729" = bitcast { i8*, i8* }* %"$list_foldr_728" to { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldr_730" = load { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldr_729", align 8
  %"$list_foldr_fptr_731" = extractvalue { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldr_730", 0
  %"$list_foldr_envptr_732" = extractvalue { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldr_730", 1
  %"$list_foldr_call_733" = call { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$list_foldr_fptr_731"(i8* %"$list_foldr_envptr_732"), !dbg !144
  store { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$list_foldr_call_733", { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %foldr, align 8, !dbg !145
  %"$gasrem_734" = load i64, i64* @_gasrem, align 8
  %"$gascmp_735" = icmp ugt i64 1, %"$gasrem_734"
  br i1 %"$gascmp_735", label %"$out_of_gas_736", label %"$have_gas_737"

"$out_of_gas_736":                                ; preds = %"$have_gas_719"
  call void @_out_of_gas()
  br label %"$have_gas_737"

"$have_gas_737":                                  ; preds = %"$out_of_gas_736", %"$have_gas_719"
  %"$consume_738" = sub i64 %"$gasrem_734", 1
  store i64 %"$consume_738", i64* @_gasrem, align 8
  %iter = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_739" = load i64, i64* @_gasrem, align 8
  %"$gascmp_740" = icmp ugt i64 1, %"$gasrem_739"
  br i1 %"$gascmp_740", label %"$out_of_gas_741", label %"$have_gas_742"

"$out_of_gas_741":                                ; preds = %"$have_gas_737"
  call void @_out_of_gas()
  br label %"$have_gas_742"

"$have_gas_742":                                  ; preds = %"$out_of_gas_741", %"$have_gas_737"
  %"$consume_743" = sub i64 %"$gasrem_739", 1
  store i64 %"$consume_743", i64* @_gasrem, align 8
  %"$$fundef_115_envp_744_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_115_envp_744_salloc" = call i8* @_salloc(i8* %"$$fundef_115_envp_744_load", i64 16)
  %"$$fundef_115_envp_744" = bitcast i8* %"$$fundef_115_envp_744_salloc" to %"$$fundef_115_env_318"*
  %"$$fundef_115_env_voidp_746" = bitcast %"$$fundef_115_env_318"* %"$$fundef_115_envp_744" to i8*
  %"$$fundef_115_cloval_747" = insertvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_115_env_318"*, [20 x i8]*)* @"$fundef_115" to { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_115_env_voidp_746", 1
  %"$$fundef_115_env_f_748" = getelementptr inbounds %"$$fundef_115_env_318", %"$$fundef_115_env_318"* %"$$fundef_115_envp_744", i32 0, i32 0
  store { %TName_Bool* (i8*, [20 x i8]*)*, i8* } %1, { %TName_Bool* (i8*, [20 x i8]*)*, i8* }* %"$$fundef_115_env_f_748", align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$fundef_115_cloval_747", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %iter, align 8, !dbg !146
  %"$gasrem_749" = load i64, i64* @_gasrem, align 8
  %"$gascmp_750" = icmp ugt i64 1, %"$gasrem_749"
  br i1 %"$gascmp_750", label %"$out_of_gas_751", label %"$have_gas_752"

"$out_of_gas_751":                                ; preds = %"$have_gas_742"
  call void @_out_of_gas()
  br label %"$have_gas_752"

"$have_gas_752":                                  ; preds = %"$out_of_gas_751", %"$have_gas_742"
  %"$consume_753" = sub i64 %"$gasrem_749", 1
  store i64 %"$consume_753", i64* @_gasrem, align 8
  %init = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_755" = icmp ugt i64 1, %"$gasrem_754"
  br i1 %"$gascmp_755", label %"$out_of_gas_756", label %"$have_gas_757"

"$out_of_gas_756":                                ; preds = %"$have_gas_752"
  call void @_out_of_gas()
  br label %"$have_gas_757"

"$have_gas_757":                                  ; preds = %"$out_of_gas_756", %"$have_gas_752"
  %"$consume_758" = sub i64 %"$gasrem_754", 1
  store i64 %"$consume_758", i64* @_gasrem, align 8
  %"$adtval_759_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_759_salloc" = call i8* @_salloc(i8* %"$adtval_759_load", i64 1)
  %"$adtval_759" = bitcast i8* %"$adtval_759_salloc" to %CName_Nil_ByStr20*
  %"$adtgep_760" = getelementptr inbounds %CName_Nil_ByStr20, %CName_Nil_ByStr20* %"$adtval_759", i32 0, i32 0
  store i8 1, i8* %"$adtgep_760", align 1
  %"$adtptr_761" = bitcast %CName_Nil_ByStr20* %"$adtval_759" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_761", %TName_List_ByStr20** %init, align 8, !dbg !147
  %"$gasrem_762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_763" = icmp ugt i64 1, %"$gasrem_762"
  br i1 %"$gascmp_763", label %"$out_of_gas_764", label %"$have_gas_765"

"$out_of_gas_764":                                ; preds = %"$have_gas_757"
  call void @_out_of_gas()
  br label %"$have_gas_765"

"$have_gas_765":                                  ; preds = %"$out_of_gas_764", %"$have_gas_757"
  %"$consume_766" = sub i64 %"$gasrem_762", 1
  store i64 %"$consume_766", i64* @_gasrem, align 8
  %"$foldr_20" = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$foldr_767" = load { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %foldr, align 8
  %"$foldr_fptr_768" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$foldr_767", 0
  %"$foldr_envptr_769" = extractvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$foldr_767", 1
  %"$iter_770" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %iter, align 8
  %"$foldr_call_771" = call { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$foldr_fptr_768"(i8* %"$foldr_envptr_769", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$iter_770"), !dbg !148
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$foldr_call_771", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_20", align 8, !dbg !148
  %"$foldr_21" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$$foldr_20_772" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_20", align 8
  %"$$foldr_20_fptr_773" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_20_772", 0
  %"$$foldr_20_envptr_774" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_20_772", 1
  %"$init_775" = load %TName_List_ByStr20*, %TName_List_ByStr20** %init, align 8
  %"$$foldr_20_call_776" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_20_fptr_773"(i8* %"$$foldr_20_envptr_774", %TName_List_ByStr20* %"$init_775"), !dbg !148
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_20_call_776", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_21", align 8, !dbg !148
  %"$$foldr_21_777" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldr_21", align 8
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldr_21_777", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_114", align 8, !dbg !148
  %"$$retval_114_778" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_114", align 8
  ret { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_114_778"
}

define internal { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_111"(%"$$fundef_111_env_320"* %0) !dbg !149 {
entry:
  %"$$fundef_111_env_list_foldr_695" = getelementptr inbounds %"$$fundef_111_env_320", %"$$fundef_111_env_320"* %0, i32 0, i32 0
  %"$list_foldr_envload_696" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_111_env_list_foldr_695", align 8
  %list_foldr = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldr_envload_696", { i8*, i8* }** %list_foldr, align 8
  %"$retval_112" = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_698" = icmp ugt i64 1, %"$gasrem_697"
  br i1 %"$gascmp_698", label %"$out_of_gas_699", label %"$have_gas_700"

"$out_of_gas_699":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_700"

"$have_gas_700":                                  ; preds = %"$out_of_gas_699", %entry
  %"$consume_701" = sub i64 %"$gasrem_697", 1
  store i64 %"$consume_701", i64* @_gasrem, align 8
  %"$$fundef_113_envp_702_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_113_envp_702_salloc" = call i8* @_salloc(i8* %"$$fundef_113_envp_702_load", i64 8)
  %"$$fundef_113_envp_702" = bitcast i8* %"$$fundef_113_envp_702_salloc" to %"$$fundef_113_env_319"*
  %"$$fundef_113_env_voidp_704" = bitcast %"$$fundef_113_env_319"* %"$$fundef_113_envp_702" to i8*
  %"$$fundef_113_cloval_705" = insertvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* bitcast ({ %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_113_env_319"*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })* @"$fundef_113" to { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*), i8* undef }, i8* %"$$fundef_113_env_voidp_704", 1
  %"$$fundef_113_env_list_foldr_706" = getelementptr inbounds %"$$fundef_113_env_319", %"$$fundef_113_env_319"* %"$$fundef_113_envp_702", i32 0, i32 0
  %"$list_foldr_707" = load { i8*, i8* }*, { i8*, i8* }** %list_foldr, align 8
  store { i8*, i8* }* %"$list_foldr_707", { i8*, i8* }** %"$$fundef_113_env_list_foldr_706", align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$fundef_113_cloval_705", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_112", align 8, !dbg !150
  %"$$retval_112_708" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_112", align 8
  ret { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_112_708"
}

define internal %TName_Bool* @"$fundef_83"(%"$$fundef_83_env_321"* %0, %TName_Bool* %1) !dbg !151 {
entry:
  %"$retval_84" = alloca %TName_Bool*, align 8
  %"$gasrem_665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_666" = icmp ugt i64 2, %"$gasrem_665"
  br i1 %"$gascmp_666", label %"$out_of_gas_667", label %"$have_gas_668"

"$out_of_gas_667":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_668"

"$have_gas_668":                                  ; preds = %"$out_of_gas_667", %entry
  %"$consume_669" = sub i64 %"$gasrem_665", 2
  store i64 %"$consume_669", i64* @_gasrem, align 8
  %"$b_tag_671" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_672" = load i8, i8* %"$b_tag_671", align 1
  switch i8 %"$b_tag_672", label %"$empty_default_673" [
    i8 0, label %"$True_674"
    i8 1, label %"$False_684"
  ], !dbg !153

"$True_674":                                      ; preds = %"$have_gas_668"
  %"$b_675" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_676" = load i64, i64* @_gasrem, align 8
  %"$gascmp_677" = icmp ugt i64 1, %"$gasrem_676"
  br i1 %"$gascmp_677", label %"$out_of_gas_678", label %"$have_gas_679"

"$out_of_gas_678":                                ; preds = %"$True_674"
  call void @_out_of_gas()
  br label %"$have_gas_679"

"$have_gas_679":                                  ; preds = %"$out_of_gas_678", %"$True_674"
  %"$consume_680" = sub i64 %"$gasrem_676", 1
  store i64 %"$consume_680", i64* @_gasrem, align 8
  %"$adtval_681_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_681_salloc" = call i8* @_salloc(i8* %"$adtval_681_load", i64 1)
  %"$adtval_681" = bitcast i8* %"$adtval_681_salloc" to %CName_False*
  %"$adtgep_682" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_681", i32 0, i32 0
  store i8 1, i8* %"$adtgep_682", align 1
  %"$adtptr_683" = bitcast %CName_False* %"$adtval_681" to %TName_Bool*
  store %TName_Bool* %"$adtptr_683", %TName_Bool** %"$retval_84", align 8, !dbg !154
  br label %"$matchsucc_670"

"$False_684":                                     ; preds = %"$have_gas_668"
  %"$b_685" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_687" = icmp ugt i64 1, %"$gasrem_686"
  br i1 %"$gascmp_687", label %"$out_of_gas_688", label %"$have_gas_689"

"$out_of_gas_688":                                ; preds = %"$False_684"
  call void @_out_of_gas()
  br label %"$have_gas_689"

"$have_gas_689":                                  ; preds = %"$out_of_gas_688", %"$False_684"
  %"$consume_690" = sub i64 %"$gasrem_686", 1
  store i64 %"$consume_690", i64* @_gasrem, align 8
  %"$adtval_691_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_691_salloc" = call i8* @_salloc(i8* %"$adtval_691_load", i64 1)
  %"$adtval_691" = bitcast i8* %"$adtval_691_salloc" to %CName_True*
  %"$adtgep_692" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_691", i32 0, i32 0
  store i8 0, i8* %"$adtgep_692", align 1
  %"$adtptr_693" = bitcast %CName_True* %"$adtval_691" to %TName_Bool*
  store %TName_Bool* %"$adtptr_693", %TName_Bool** %"$retval_84", align 8, !dbg !157
  br label %"$matchsucc_670"

"$empty_default_673":                             ; preds = %"$have_gas_668"
  br label %"$matchsucc_670"

"$matchsucc_670":                                 ; preds = %"$have_gas_689", %"$have_gas_679", %"$empty_default_673"
  %"$$retval_84_694" = load %TName_Bool*, %TName_Bool** %"$retval_84", align 8
  ret %TName_Bool* %"$$retval_84_694"
}

define internal %TName_Bool* @"$fundef_85"(%"$$fundef_85_env_322"* %0, %TName_Bool* %1, %TName_Bool* %2) !dbg !159 {
entry:
  %"$retval_86" = alloca %TName_Bool*, align 8
  %"$gasrem_638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_639" = icmp ugt i64 2, %"$gasrem_638"
  br i1 %"$gascmp_639", label %"$out_of_gas_640", label %"$have_gas_641"

"$out_of_gas_640":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_641"

"$have_gas_641":                                  ; preds = %"$out_of_gas_640", %entry
  %"$consume_642" = sub i64 %"$gasrem_638", 2
  store i64 %"$consume_642", i64* @_gasrem, align 8
  %"$b_tag_644" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_645" = load i8, i8* %"$b_tag_644", align 1
  switch i8 %"$b_tag_645", label %"$empty_default_646" [
    i8 0, label %"$True_647"
    i8 1, label %"$False_657"
  ], !dbg !160

"$True_647":                                      ; preds = %"$have_gas_641"
  %"$b_648" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_650" = icmp ugt i64 1, %"$gasrem_649"
  br i1 %"$gascmp_650", label %"$out_of_gas_651", label %"$have_gas_652"

"$out_of_gas_651":                                ; preds = %"$True_647"
  call void @_out_of_gas()
  br label %"$have_gas_652"

"$have_gas_652":                                  ; preds = %"$out_of_gas_651", %"$True_647"
  %"$consume_653" = sub i64 %"$gasrem_649", 1
  store i64 %"$consume_653", i64* @_gasrem, align 8
  %"$adtval_654_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_654_salloc" = call i8* @_salloc(i8* %"$adtval_654_load", i64 1)
  %"$adtval_654" = bitcast i8* %"$adtval_654_salloc" to %CName_True*
  %"$adtgep_655" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_654", i32 0, i32 0
  store i8 0, i8* %"$adtgep_655", align 1
  %"$adtptr_656" = bitcast %CName_True* %"$adtval_654" to %TName_Bool*
  store %TName_Bool* %"$adtptr_656", %TName_Bool** %"$retval_86", align 8, !dbg !161
  br label %"$matchsucc_643"

"$False_657":                                     ; preds = %"$have_gas_641"
  %"$b_658" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_659" = load i64, i64* @_gasrem, align 8
  %"$gascmp_660" = icmp ugt i64 1, %"$gasrem_659"
  br i1 %"$gascmp_660", label %"$out_of_gas_661", label %"$have_gas_662"

"$out_of_gas_661":                                ; preds = %"$False_657"
  call void @_out_of_gas()
  br label %"$have_gas_662"

"$have_gas_662":                                  ; preds = %"$out_of_gas_661", %"$False_657"
  %"$consume_663" = sub i64 %"$gasrem_659", 1
  store i64 %"$consume_663", i64* @_gasrem, align 8
  store %TName_Bool* %2, %TName_Bool** %"$retval_86", align 8, !dbg !164
  br label %"$matchsucc_643"

"$empty_default_646":                             ; preds = %"$have_gas_641"
  br label %"$matchsucc_643"

"$matchsucc_643":                                 ; preds = %"$have_gas_662", %"$have_gas_652", %"$empty_default_646"
  %"$$retval_86_664" = load %TName_Bool*, %TName_Bool** %"$retval_86", align 8
  ret %TName_Bool* %"$$retval_86_664"
}

define internal %TName_Bool* @"$fundef_87"(%"$$fundef_87_env_323"* %0, %TName_Bool* %1, %TName_Bool* %2) !dbg !166 {
entry:
  %"$retval_88" = alloca %TName_Bool*, align 8
  %"$gasrem_611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_612" = icmp ugt i64 2, %"$gasrem_611"
  br i1 %"$gascmp_612", label %"$out_of_gas_613", label %"$have_gas_614"

"$out_of_gas_613":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_614"

"$have_gas_614":                                  ; preds = %"$out_of_gas_613", %entry
  %"$consume_615" = sub i64 %"$gasrem_611", 2
  store i64 %"$consume_615", i64* @_gasrem, align 8
  %"$b_tag_617" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_618" = load i8, i8* %"$b_tag_617", align 1
  switch i8 %"$b_tag_618", label %"$empty_default_619" [
    i8 1, label %"$False_620"
    i8 0, label %"$True_630"
  ], !dbg !167

"$False_620":                                     ; preds = %"$have_gas_614"
  %"$b_621" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_623" = icmp ugt i64 1, %"$gasrem_622"
  br i1 %"$gascmp_623", label %"$out_of_gas_624", label %"$have_gas_625"

"$out_of_gas_624":                                ; preds = %"$False_620"
  call void @_out_of_gas()
  br label %"$have_gas_625"

"$have_gas_625":                                  ; preds = %"$out_of_gas_624", %"$False_620"
  %"$consume_626" = sub i64 %"$gasrem_622", 1
  store i64 %"$consume_626", i64* @_gasrem, align 8
  %"$adtval_627_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_627_salloc" = call i8* @_salloc(i8* %"$adtval_627_load", i64 1)
  %"$adtval_627" = bitcast i8* %"$adtval_627_salloc" to %CName_False*
  %"$adtgep_628" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_627", i32 0, i32 0
  store i8 1, i8* %"$adtgep_628", align 1
  %"$adtptr_629" = bitcast %CName_False* %"$adtval_627" to %TName_Bool*
  store %TName_Bool* %"$adtptr_629", %TName_Bool** %"$retval_88", align 8, !dbg !168
  br label %"$matchsucc_616"

"$True_630":                                      ; preds = %"$have_gas_614"
  %"$b_631" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_633" = icmp ugt i64 1, %"$gasrem_632"
  br i1 %"$gascmp_633", label %"$out_of_gas_634", label %"$have_gas_635"

"$out_of_gas_634":                                ; preds = %"$True_630"
  call void @_out_of_gas()
  br label %"$have_gas_635"

"$have_gas_635":                                  ; preds = %"$out_of_gas_634", %"$True_630"
  %"$consume_636" = sub i64 %"$gasrem_632", 1
  store i64 %"$consume_636", i64* @_gasrem, align 8
  store %TName_Bool* %2, %TName_Bool** %"$retval_88", align 8, !dbg !171
  br label %"$matchsucc_616"

"$empty_default_619":                             ; preds = %"$have_gas_614"
  br label %"$matchsucc_616"

"$matchsucc_616":                                 ; preds = %"$have_gas_635", %"$have_gas_625", %"$empty_default_619"
  %"$$retval_88_637" = load %TName_Bool*, %TName_Bool** %"$retval_88", align 8
  ret %TName_Bool* %"$$retval_88_637"
}

define internal %TName_Option_ByStr20* @"$fundef_71"(%"$$fundef_71_env_324"* %0, %TName_Option_ByStr20* %1) !dbg !173 {
entry:
  %"$$fundef_71_env_g_591" = getelementptr inbounds %"$$fundef_71_env_324", %"$$fundef_71_env_324"* %0, i32 0, i32 0
  %"$g_envload_592" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_71_env_g_591", align 8
  %g = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_envload_592", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  %"$$fundef_71_env_t_593" = getelementptr inbounds %"$$fundef_71_env_324", %"$$fundef_71_env_324"* %0, i32 0, i32 1
  %"$t_envload_594" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_71_env_t_593", align 8
  %t = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$t_envload_594", %TName_List_ByStr20** %t, align 8
  %"$retval_72" = alloca %TName_Option_ByStr20*, align 8
  %"$gasrem_595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_596" = icmp ugt i64 1, %"$gasrem_595"
  br i1 %"$gascmp_596", label %"$out_of_gas_597", label %"$have_gas_598"

"$out_of_gas_597":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_598"

"$have_gas_598":                                  ; preds = %"$out_of_gas_597", %entry
  %"$consume_599" = sub i64 %"$gasrem_595", 1
  store i64 %"$consume_599", i64* @_gasrem, align 8
  %"$g_14" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$g_600" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  %"$g_fptr_601" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_600", 0
  %"$g_envptr_602" = extractvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_600", 1
  %"$g_call_603" = call { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_fptr_601"(i8* %"$g_envptr_602", %TName_Option_ByStr20* %1), !dbg !175
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_call_603", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_14", align 8, !dbg !175
  %"$g_15" = alloca %TName_Option_ByStr20*, align 8
  %"$$g_14_604" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_14", align 8
  %"$$g_14_fptr_605" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_14_604", 0
  %"$$g_14_envptr_606" = extractvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_14_604", 1
  %"$t_607" = load %TName_List_ByStr20*, %TName_List_ByStr20** %t, align 8
  %"$$g_14_call_608" = call %TName_Option_ByStr20* %"$$g_14_fptr_605"(i8* %"$$g_14_envptr_606", %TName_List_ByStr20* %"$t_607"), !dbg !175
  store %TName_Option_ByStr20* %"$$g_14_call_608", %TName_Option_ByStr20** %"$g_15", align 8, !dbg !175
  %"$$g_15_609" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$g_15", align 8
  store %TName_Option_ByStr20* %"$$g_15_609", %TName_Option_ByStr20** %"$retval_72", align 8, !dbg !175
  %"$$retval_72_610" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$retval_72", align 8
  ret %TName_Option_ByStr20* %"$$retval_72_610"
}

define internal %TName_Option_ByStr20* @"$fundef_69"(%"$$fundef_69_env_325"* %0, %TName_List_ByStr20* %1) !dbg !176 {
entry:
  %"$$fundef_69_env_f_521" = getelementptr inbounds %"$$fundef_69_env_325", %"$$fundef_69_env_325"* %0, i32 0, i32 0
  %"$f_envload_522" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_69_env_f_521", align 8
  %f = alloca { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_envload_522", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %f, align 8
  %"$$fundef_69_env_g_523" = getelementptr inbounds %"$$fundef_69_env_325", %"$$fundef_69_env_325"* %0, i32 0, i32 1
  %"$g_envload_524" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_69_env_g_523", align 8
  %g = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_envload_524", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  %"$$fundef_69_env_z_525" = getelementptr inbounds %"$$fundef_69_env_325", %"$$fundef_69_env_325"* %0, i32 0, i32 2
  %"$z_envload_526" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$$fundef_69_env_z_525", align 8
  %z = alloca %TName_Option_ByStr20*, align 8
  store %TName_Option_ByStr20* %"$z_envload_526", %TName_Option_ByStr20** %z, align 8
  %"$retval_70" = alloca %TName_Option_ByStr20*, align 8
  %"$gasrem_527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_528" = icmp ugt i64 2, %"$gasrem_527"
  br i1 %"$gascmp_528", label %"$out_of_gas_529", label %"$have_gas_530"

"$out_of_gas_529":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_530"

"$have_gas_530":                                  ; preds = %"$out_of_gas_529", %entry
  %"$consume_531" = sub i64 %"$gasrem_527", 2
  store i64 %"$consume_531", i64* @_gasrem, align 8
  %"$l_tag_533" = getelementptr inbounds %TName_List_ByStr20, %TName_List_ByStr20* %1, i32 0, i32 0
  %"$l_tag_534" = load i8, i8* %"$l_tag_533", align 1
  switch i8 %"$l_tag_534", label %"$empty_default_535" [
    i8 0, label %"$Cons_536"
    i8 1, label %"$Nil_582"
  ], !dbg !177

"$Cons_536":                                      ; preds = %"$have_gas_530"
  %"$l_537" = bitcast %TName_List_ByStr20* %1 to %CName_Cons_ByStr20*
  %"$h_gep_538" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_537", i32 0, i32 1
  %"$h_load_539" = load [20 x i8], [20 x i8]* %"$h_gep_538", align 1
  %h = alloca [20 x i8], align 1
  store [20 x i8] %"$h_load_539", [20 x i8]* %h, align 1
  %"$t_gep_540" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_537", i32 0, i32 2
  %"$t_load_541" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$t_gep_540", align 8
  %t = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$t_load_541", %TName_List_ByStr20** %t, align 8
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 1, %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %"$Cons_536"
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %"$Cons_536"
  %"$consume_546" = sub i64 %"$gasrem_542", 1
  store i64 %"$consume_546", i64* @_gasrem, align 8
  %partial = alloca { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$have_gas_545"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$have_gas_545"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  %"$$fundef_71_envp_552_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_71_envp_552_salloc" = call i8* @_salloc(i8* %"$$fundef_71_envp_552_load", i64 24)
  %"$$fundef_71_envp_552" = bitcast i8* %"$$fundef_71_envp_552_salloc" to %"$$fundef_71_env_324"*
  %"$$fundef_71_env_voidp_554" = bitcast %"$$fundef_71_env_324"* %"$$fundef_71_envp_552" to i8*
  %"$$fundef_71_cloval_555" = insertvalue { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)* bitcast (%TName_Option_ByStr20* (%"$$fundef_71_env_324"*, %TName_Option_ByStr20*)* @"$fundef_71" to %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*), i8* undef }, i8* %"$$fundef_71_env_voidp_554", 1
  %"$$fundef_71_env_g_556" = getelementptr inbounds %"$$fundef_71_env_324", %"$$fundef_71_env_324"* %"$$fundef_71_envp_552", i32 0, i32 0
  %"$g_557" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_557", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_71_env_g_556", align 8
  %"$$fundef_71_env_t_558" = getelementptr inbounds %"$$fundef_71_env_324", %"$$fundef_71_env_324"* %"$$fundef_71_envp_552", i32 0, i32 1
  %"$t_559" = load %TName_List_ByStr20*, %TName_List_ByStr20** %t, align 8
  store %TName_List_ByStr20* %"$t_559", %TName_List_ByStr20** %"$$fundef_71_env_t_558", align 8
  store { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_71_cloval_555", { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }* %partial, align 8, !dbg !178
  %"$gasrem_560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_561" = icmp ugt i64 1, %"$gasrem_560"
  br i1 %"$gascmp_561", label %"$out_of_gas_562", label %"$have_gas_563"

"$out_of_gas_562":                                ; preds = %"$have_gas_550"
  call void @_out_of_gas()
  br label %"$have_gas_563"

"$have_gas_563":                                  ; preds = %"$out_of_gas_562", %"$have_gas_550"
  %"$consume_564" = sub i64 %"$gasrem_560", 1
  store i64 %"$consume_564", i64* @_gasrem, align 8
  %"$f_16" = alloca { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  %"$f_565" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %f, align 8
  %"$f_fptr_566" = extractvalue { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_565", 0
  %"$f_envptr_567" = extractvalue { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_565", 1
  %"$z_568" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %z, align 8
  %"$f_call_569" = call { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_fptr_566"(i8* %"$f_envptr_567", %TName_Option_ByStr20* %"$z_568"), !dbg !181
  store { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_call_569", { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$f_16", align 8, !dbg !181
  %"$f_17" = alloca { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, align 8
  %"$$f_16_570" = load { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$f_16", align 8
  %"$$f_16_fptr_571" = extractvalue { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$f_16_570", 0
  %"$$f_16_envptr_572" = extractvalue { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } %"$$f_16_570", 1
  %"$$f_16_h_573" = alloca [20 x i8], align 1
  %"$h_574" = load [20 x i8], [20 x i8]* %h, align 1
  store [20 x i8] %"$h_574", [20 x i8]* %"$$f_16_h_573", align 1
  %"$$f_16_call_575" = call { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_16_fptr_571"(i8* %"$$f_16_envptr_572", [20 x i8]* %"$$f_16_h_573"), !dbg !181
  store { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_16_call_575", { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$f_17", align 8, !dbg !181
  %"$f_18" = alloca %TName_Option_ByStr20*, align 8
  %"$$f_17_576" = load { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$f_17", align 8
  %"$$f_17_fptr_577" = extractvalue { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_17_576", 0
  %"$$f_17_envptr_578" = extractvalue { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$f_17_576", 1
  %"$partial_579" = load { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* }* %partial, align 8
  %"$$f_17_call_580" = call %TName_Option_ByStr20* %"$$f_17_fptr_577"(i8* %"$$f_17_envptr_578", { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* } %"$partial_579"), !dbg !181
  store %TName_Option_ByStr20* %"$$f_17_call_580", %TName_Option_ByStr20** %"$f_18", align 8, !dbg !181
  %"$$f_18_581" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$f_18", align 8
  store %TName_Option_ByStr20* %"$$f_18_581", %TName_Option_ByStr20** %"$retval_70", align 8, !dbg !181
  br label %"$matchsucc_532"

"$Nil_582":                                       ; preds = %"$have_gas_530"
  %"$l_583" = bitcast %TName_List_ByStr20* %1 to %CName_Nil_ByStr20*
  %"$gasrem_584" = load i64, i64* @_gasrem, align 8
  %"$gascmp_585" = icmp ugt i64 1, %"$gasrem_584"
  br i1 %"$gascmp_585", label %"$out_of_gas_586", label %"$have_gas_587"

"$out_of_gas_586":                                ; preds = %"$Nil_582"
  call void @_out_of_gas()
  br label %"$have_gas_587"

"$have_gas_587":                                  ; preds = %"$out_of_gas_586", %"$Nil_582"
  %"$consume_588" = sub i64 %"$gasrem_584", 1
  store i64 %"$consume_588", i64* @_gasrem, align 8
  %"$z_589" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %z, align 8
  store %TName_Option_ByStr20* %"$z_589", %TName_Option_ByStr20** %"$retval_70", align 8, !dbg !182
  br label %"$matchsucc_532"

"$empty_default_535":                             ; preds = %"$have_gas_530"
  br label %"$matchsucc_532"

"$matchsucc_532":                                 ; preds = %"$have_gas_587", %"$have_gas_563", %"$empty_default_535"
  %"$$retval_70_590" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$retval_70", align 8
  ret %TName_Option_ByStr20* %"$$retval_70_590"
}

define internal { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_67"(%"$$fundef_67_env_326"* %0, %TName_Option_ByStr20* %1) !dbg !184 {
entry:
  %"$$fundef_67_env_f_502" = getelementptr inbounds %"$$fundef_67_env_326", %"$$fundef_67_env_326"* %0, i32 0, i32 0
  %"$f_envload_503" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_67_env_f_502", align 8
  %f = alloca { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_envload_503", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %f, align 8
  %"$$fundef_67_env_g_504" = getelementptr inbounds %"$$fundef_67_env_326", %"$$fundef_67_env_326"* %0, i32 0, i32 1
  %"$g_envload_505" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_67_env_g_504", align 8
  %g = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_envload_505", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  %"$retval_68" = alloca { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %entry
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %"$$fundef_69_envp_511_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_69_envp_511_salloc" = call i8* @_salloc(i8* %"$$fundef_69_envp_511_load", i64 40)
  %"$$fundef_69_envp_511" = bitcast i8* %"$$fundef_69_envp_511_salloc" to %"$$fundef_69_env_325"*
  %"$$fundef_69_env_voidp_513" = bitcast %"$$fundef_69_env_325"* %"$$fundef_69_envp_511" to i8*
  %"$$fundef_69_cloval_514" = insertvalue { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)* bitcast (%TName_Option_ByStr20* (%"$$fundef_69_env_325"*, %TName_List_ByStr20*)* @"$fundef_69" to %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_69_env_voidp_513", 1
  %"$$fundef_69_env_f_515" = getelementptr inbounds %"$$fundef_69_env_325", %"$$fundef_69_env_325"* %"$$fundef_69_envp_511", i32 0, i32 0
  %"$f_516" = load { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %f, align 8
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$f_516", { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_69_env_f_515", align 8
  %"$$fundef_69_env_g_517" = getelementptr inbounds %"$$fundef_69_env_325", %"$$fundef_69_env_325"* %"$$fundef_69_envp_511", i32 0, i32 1
  %"$g_518" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_518", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_69_env_g_517", align 8
  %"$$fundef_69_env_z_519" = getelementptr inbounds %"$$fundef_69_env_325", %"$$fundef_69_env_325"* %"$$fundef_69_envp_511", i32 0, i32 2
  store %TName_Option_ByStr20* %1, %TName_Option_ByStr20** %"$$fundef_69_env_z_519", align 8
  store { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_69_cloval_514", { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_68", align 8, !dbg !185
  %"$$retval_68_520" = load { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_68", align 8
  ret { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_68_520"
}

define internal { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } @"$fundef_65"(%"$$fundef_65_env_327"* %0, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %1) !dbg !186 {
entry:
  %"$retval_66" = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  %"$gasrem_483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_484" = icmp ugt i64 1, %"$gasrem_483"
  br i1 %"$gascmp_484", label %"$out_of_gas_485", label %"$have_gas_486"

"$out_of_gas_485":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_486"

"$have_gas_486":                                  ; preds = %"$out_of_gas_485", %entry
  %"$consume_487" = sub i64 %"$gasrem_483", 1
  store i64 %"$consume_487", i64* @_gasrem, align 8
  %"$gasrem_488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_489" = icmp ugt i64 1, %"$gasrem_488"
  br i1 %"$gascmp_489", label %"$out_of_gas_490", label %"$have_gas_491"

"$out_of_gas_490":                                ; preds = %"$have_gas_486"
  call void @_out_of_gas()
  br label %"$have_gas_491"

"$have_gas_491":                                  ; preds = %"$out_of_gas_490", %"$have_gas_486"
  %"$consume_492" = sub i64 %"$gasrem_488", 1
  store i64 %"$consume_492", i64* @_gasrem, align 8
  %"$$fundef_67_envp_493_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_67_envp_493_salloc" = call i8* @_salloc(i8* %"$$fundef_67_envp_493_load", i64 32)
  %"$$fundef_67_envp_493" = bitcast i8* %"$$fundef_67_envp_493_salloc" to %"$$fundef_67_env_326"*
  %"$$fundef_67_env_voidp_495" = bitcast %"$$fundef_67_env_326"* %"$$fundef_67_envp_493" to i8*
  %"$$fundef_67_cloval_496" = insertvalue { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)* bitcast ({ %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_67_env_326"*, %TName_Option_ByStr20*)* @"$fundef_67" to { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*), i8* undef }, i8* %"$$fundef_67_env_voidp_495", 1
  %g = alloca { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$fundef_67_cloval_496", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8, !dbg !187
  %"$$fundef_67_env_f_497" = getelementptr inbounds %"$$fundef_67_env_326", %"$$fundef_67_env_326"* %"$$fundef_67_envp_493", i32 0, i32 0
  store { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %1, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_67_env_f_497", align 8
  %"$$fundef_67_env_g_498" = getelementptr inbounds %"$$fundef_67_env_326", %"$$fundef_67_env_326"* %"$$fundef_67_envp_493", i32 0, i32 1
  %"$g_499" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_499", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$$fundef_67_env_g_498", align 8
  %"$g_500" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$g_500", { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_66", align 8, !dbg !187
  %"$$retval_66_501" = load { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }, { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* }* %"$retval_66", align 8
  ret { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } %"$$retval_66_501"
}

define internal { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } @"$fundef_63"(%"$$fundef_63_env_328"* %0) !dbg !188 {
entry:
  %"$retval_64" = alloca { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, align 8
  %"$gasrem_474" = load i64, i64* @_gasrem, align 8
  %"$gascmp_475" = icmp ugt i64 1, %"$gasrem_474"
  br i1 %"$gascmp_475", label %"$out_of_gas_476", label %"$have_gas_477"

"$out_of_gas_476":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_477"

"$have_gas_477":                                  ; preds = %"$out_of_gas_476", %entry
  %"$consume_478" = sub i64 %"$gasrem_474", 1
  store i64 %"$consume_478", i64* @_gasrem, align 8
  store { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })* bitcast ({ { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (%"$$fundef_65_env_327"*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })* @"$fundef_65" to { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*), i8* null }, { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_64", align 8, !dbg !189
  %"$$retval_64_482" = load { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }, { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* }* %"$retval_64", align 8
  ret { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } %"$$retval_64_482"
}

define internal { i8*, i8* }* @"$fundef_61"(%"$$fundef_61_env_329"* %0) !dbg !190 {
entry:
  %"$retval_62" = alloca { i8*, i8* }*, align 8
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 1, %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %entry
  %"$consume_466" = sub i64 %"$gasrem_462", 1
  store i64 %"$consume_466", i64* @_gasrem, align 8
  %"$dyndisp_table_470_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_470_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_470_salloc_load", i64 48)
  %"$dyndisp_table_470_salloc" = bitcast i8* %"$dyndisp_table_470_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_470" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_470_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_471" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_470", i32 2
  %"$dyndisp_pcast_472" = bitcast { i8*, i8* }* %"$dyndisp_gep_471" to { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (%"$$fundef_63_env_328"*)* @"$fundef_63" to { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* } (i8*, { { { %TName_Option_ByStr20* (i8*, { %TName_Option_ByStr20* (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, %TName_Option_ByStr20*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_472", align 8
  store { i8*, i8* }* %"$dyndisp_table_470", { i8*, i8* }** %"$retval_62", align 8, !dbg !191
  %"$$retval_62_473" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_62", align 8
  ret { i8*, i8* }* %"$$retval_62_473"
}

define internal %TName_List_ByStr20* @"$fundef_81"(%"$$fundef_81_env_330"* %0, %TName_List_ByStr20* %1) !dbg !192 {
entry:
  %"$$fundef_81_env_f_394" = getelementptr inbounds %"$$fundef_81_env_330", %"$$fundef_81_env_330"* %0, i32 0, i32 0
  %"$f_envload_395" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_81_env_f_394", align 8
  %f = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_envload_395", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$$fundef_81_env_g_396" = getelementptr inbounds %"$$fundef_81_env_330", %"$$fundef_81_env_330"* %0, i32 0, i32 1
  %"$g_envload_397" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_81_env_g_396", align 8
  %g = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_envload_397", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  %"$$fundef_81_env_z_398" = getelementptr inbounds %"$$fundef_81_env_330", %"$$fundef_81_env_330"* %0, i32 0, i32 2
  %"$z_envload_399" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$$fundef_81_env_z_398", align 8
  %z = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$z_envload_399", %TName_List_ByStr20** %z, align 8
  %"$retval_82" = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_401" = icmp ugt i64 2, %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %entry
  %"$consume_404" = sub i64 %"$gasrem_400", 2
  store i64 %"$consume_404", i64* @_gasrem, align 8
  %"$l_tag_406" = getelementptr inbounds %TName_List_ByStr20, %TName_List_ByStr20* %1, i32 0, i32 0
  %"$l_tag_407" = load i8, i8* %"$l_tag_406", align 1
  switch i8 %"$l_tag_407", label %"$empty_default_408" [
    i8 0, label %"$Cons_409"
    i8 1, label %"$Nil_453"
  ], !dbg !193

"$Cons_409":                                      ; preds = %"$have_gas_403"
  %"$l_410" = bitcast %TName_List_ByStr20* %1 to %CName_Cons_ByStr20*
  %"$h_gep_411" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_410", i32 0, i32 1
  %"$h_load_412" = load [20 x i8], [20 x i8]* %"$h_gep_411", align 1
  %h = alloca [20 x i8], align 1
  store [20 x i8] %"$h_load_412", [20 x i8]* %h, align 1
  %"$t_gep_413" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_410", i32 0, i32 2
  %"$t_load_414" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$t_gep_413", align 8
  %t = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$t_load_414", %TName_List_ByStr20** %t, align 8
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 1, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$Cons_409"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$Cons_409"
  %"$consume_419" = sub i64 %"$gasrem_415", 1
  store i64 %"$consume_419", i64* @_gasrem, align 8
  %res = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_418"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_418"
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem, align 8
  %"$g_10" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$g_425" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  %"$g_fptr_426" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_425", 0
  %"$g_envptr_427" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_425", 1
  %"$z_428" = load %TName_List_ByStr20*, %TName_List_ByStr20** %z, align 8
  %"$g_call_429" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_fptr_426"(i8* %"$g_envptr_427", %TName_List_ByStr20* %"$z_428"), !dbg !194
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$g_call_429", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_10", align 8, !dbg !194
  %"$g_11" = alloca %TName_List_ByStr20*, align 8
  %"$$g_10_430" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_10", align 8
  %"$$g_10_fptr_431" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_10_430", 0
  %"$$g_10_envptr_432" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_10_430", 1
  %"$t_433" = load %TName_List_ByStr20*, %TName_List_ByStr20** %t, align 8
  %"$$g_10_call_434" = call %TName_List_ByStr20* %"$$g_10_fptr_431"(i8* %"$$g_10_envptr_432", %TName_List_ByStr20* %"$t_433"), !dbg !194
  store %TName_List_ByStr20* %"$$g_10_call_434", %TName_List_ByStr20** %"$g_11", align 8, !dbg !194
  %"$$g_11_435" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$g_11", align 8
  store %TName_List_ByStr20* %"$$g_11_435", %TName_List_ByStr20** %res, align 8, !dbg !194
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_423"
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %"$f_12" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$f_441" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$f_fptr_442" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_441", 0
  %"$f_envptr_443" = extractvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_441", 1
  %"$f_h_444" = alloca [20 x i8], align 1
  %"$h_445" = load [20 x i8], [20 x i8]* %h, align 1
  store [20 x i8] %"$h_445", [20 x i8]* %"$f_h_444", align 1
  %"$f_call_446" = call { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$f_fptr_442"(i8* %"$f_envptr_443", [20 x i8]* %"$f_h_444"), !dbg !197
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$f_call_446", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$f_12", align 8, !dbg !197
  %"$f_13" = alloca %TName_List_ByStr20*, align 8
  %"$$f_12_447" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$f_12", align 8
  %"$$f_12_fptr_448" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$f_12_447", 0
  %"$$f_12_envptr_449" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$f_12_447", 1
  %"$res_450" = load %TName_List_ByStr20*, %TName_List_ByStr20** %res, align 8
  %"$$f_12_call_451" = call %TName_List_ByStr20* %"$$f_12_fptr_448"(i8* %"$$f_12_envptr_449", %TName_List_ByStr20* %"$res_450"), !dbg !197
  store %TName_List_ByStr20* %"$$f_12_call_451", %TName_List_ByStr20** %"$f_13", align 8, !dbg !197
  %"$$f_13_452" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$f_13", align 8
  store %TName_List_ByStr20* %"$$f_13_452", %TName_List_ByStr20** %"$retval_82", align 8, !dbg !197
  br label %"$matchsucc_405"

"$Nil_453":                                       ; preds = %"$have_gas_403"
  %"$l_454" = bitcast %TName_List_ByStr20* %1 to %CName_Nil_ByStr20*
  %"$gasrem_455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_456" = icmp ugt i64 1, %"$gasrem_455"
  br i1 %"$gascmp_456", label %"$out_of_gas_457", label %"$have_gas_458"

"$out_of_gas_457":                                ; preds = %"$Nil_453"
  call void @_out_of_gas()
  br label %"$have_gas_458"

"$have_gas_458":                                  ; preds = %"$out_of_gas_457", %"$Nil_453"
  %"$consume_459" = sub i64 %"$gasrem_455", 1
  store i64 %"$consume_459", i64* @_gasrem, align 8
  %"$z_460" = load %TName_List_ByStr20*, %TName_List_ByStr20** %z, align 8
  store %TName_List_ByStr20* %"$z_460", %TName_List_ByStr20** %"$retval_82", align 8, !dbg !198
  br label %"$matchsucc_405"

"$empty_default_408":                             ; preds = %"$have_gas_403"
  br label %"$matchsucc_405"

"$matchsucc_405":                                 ; preds = %"$have_gas_458", %"$have_gas_439", %"$empty_default_408"
  %"$$retval_82_461" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$retval_82", align 8
  ret %TName_List_ByStr20* %"$$retval_82_461"
}

define internal { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_79"(%"$$fundef_79_env_331"* %0, %TName_List_ByStr20* %1) !dbg !200 {
entry:
  %"$$fundef_79_env_f_375" = getelementptr inbounds %"$$fundef_79_env_331", %"$$fundef_79_env_331"* %0, i32 0, i32 0
  %"$f_envload_376" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_79_env_f_375", align 8
  %f = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_envload_376", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f, align 8
  %"$$fundef_79_env_g_377" = getelementptr inbounds %"$$fundef_79_env_331", %"$$fundef_79_env_331"* %0, i32 0, i32 1
  %"$g_envload_378" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_79_env_g_377", align 8
  %g = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_envload_378", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  %"$retval_80" = alloca { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %entry
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %"$$fundef_81_envp_384_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_81_envp_384_salloc" = call i8* @_salloc(i8* %"$$fundef_81_envp_384_load", i64 40)
  %"$$fundef_81_envp_384" = bitcast i8* %"$$fundef_81_envp_384_salloc" to %"$$fundef_81_env_330"*
  %"$$fundef_81_env_voidp_386" = bitcast %"$$fundef_81_env_330"* %"$$fundef_81_envp_384" to i8*
  %"$$fundef_81_cloval_387" = insertvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)* bitcast (%TName_List_ByStr20* (%"$$fundef_81_env_330"*, %TName_List_ByStr20*)* @"$fundef_81" to %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_81_env_voidp_386", 1
  %"$$fundef_81_env_f_388" = getelementptr inbounds %"$$fundef_81_env_330", %"$$fundef_81_env_330"* %"$$fundef_81_envp_384", i32 0, i32 0
  %"$f_389" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %f, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$f_389", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_81_env_f_388", align 8
  %"$$fundef_81_env_g_390" = getelementptr inbounds %"$$fundef_81_env_330", %"$$fundef_81_env_330"* %"$$fundef_81_envp_384", i32 0, i32 1
  %"$g_391" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_391", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_81_env_g_390", align 8
  %"$$fundef_81_env_z_392" = getelementptr inbounds %"$$fundef_81_env_330", %"$$fundef_81_env_330"* %"$$fundef_81_envp_384", i32 0, i32 2
  store %TName_List_ByStr20* %1, %TName_List_ByStr20** %"$$fundef_81_env_z_392", align 8
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_81_cloval_387", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_80", align 8, !dbg !201
  %"$$retval_80_393" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_80", align 8
  ret { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_80_393"
}

define internal { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_77"(%"$$fundef_77_env_332"* %0, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1) !dbg !202 {
entry:
  %"$retval_78" = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %entry
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_359"
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %"$$fundef_79_envp_366_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_79_envp_366_salloc" = call i8* @_salloc(i8* %"$$fundef_79_envp_366_load", i64 32)
  %"$$fundef_79_envp_366" = bitcast i8* %"$$fundef_79_envp_366_salloc" to %"$$fundef_79_env_331"*
  %"$$fundef_79_env_voidp_368" = bitcast %"$$fundef_79_env_331"* %"$$fundef_79_envp_366" to i8*
  %"$$fundef_79_cloval_369" = insertvalue { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)* bitcast ({ %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_79_env_331"*, %TName_List_ByStr20*)* @"$fundef_79" to { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_79_env_voidp_368", 1
  %g = alloca { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_79_cloval_369", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8, !dbg !203
  %"$$fundef_79_env_f_370" = getelementptr inbounds %"$$fundef_79_env_331", %"$$fundef_79_env_331"* %"$$fundef_79_envp_366", i32 0, i32 0
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } %1, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_79_env_f_370", align 8
  %"$$fundef_79_env_g_371" = getelementptr inbounds %"$$fundef_79_env_331", %"$$fundef_79_env_331"* %"$$fundef_79_envp_366", i32 0, i32 1
  %"$g_372" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_372", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$$fundef_79_env_g_371", align 8
  %"$g_373" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %g, align 8
  store { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$g_373", { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_78", align 8, !dbg !203
  %"$$retval_78_374" = load { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_78", align 8
  ret { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_78_374"
}

define internal { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } @"$fundef_75"(%"$$fundef_75_env_333"* %0) !dbg !204 {
entry:
  %"$retval_76" = alloca { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, align 8
  %"$gasrem_347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_348" = icmp ugt i64 1, %"$gasrem_347"
  br i1 %"$gascmp_348", label %"$out_of_gas_349", label %"$have_gas_350"

"$out_of_gas_349":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_350"

"$have_gas_350":                                  ; preds = %"$out_of_gas_349", %entry
  %"$consume_351" = sub i64 %"$gasrem_347", 1
  store i64 %"$consume_351", i64* @_gasrem, align 8
  store { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })* bitcast ({ { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_77_env_332"*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })* @"$fundef_77" to { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*), i8* null }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_76", align 8, !dbg !205
  %"$$retval_76_355" = load { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }, { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* }* %"$retval_76", align 8
  ret { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } %"$$retval_76_355"
}

define internal { i8*, i8* }* @"$fundef_73"(%"$$fundef_73_env_334"* %0) !dbg !206 {
entry:
  %"$retval_74" = alloca { i8*, i8* }*, align 8
  %"$gasrem_335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_336" = icmp ugt i64 1, %"$gasrem_335"
  br i1 %"$gascmp_336", label %"$out_of_gas_337", label %"$have_gas_338"

"$out_of_gas_337":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_338"

"$have_gas_338":                                  ; preds = %"$out_of_gas_337", %entry
  %"$consume_339" = sub i64 %"$gasrem_335", 1
  store i64 %"$consume_339", i64* @_gasrem, align 8
  %"$dyndisp_table_343_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_343_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_343_salloc_load", i64 48)
  %"$dyndisp_table_343_salloc" = bitcast i8* %"$dyndisp_table_343_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_343" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_343_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_344" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_343", i32 1
  %"$dyndisp_pcast_345" = bitcast { i8*, i8* }* %"$dyndisp_gep_344" to { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_75_env_333"*)* @"$fundef_75" to { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_345", align 8
  store { i8*, i8* }* %"$dyndisp_table_343", { i8*, i8* }** %"$retval_74", align 8, !dbg !207
  %"$$retval_74_346" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_74", align 8
  ret { i8*, i8* }* %"$$retval_74_346"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare [32 x i8]* @_sha256hash(i8*, %_TyDescrTy_Typ*, i8*)

declare i8* @_concat_ByStrX(i8*, i32, i8*, i32, i8*)

define void @_init_libs() !dbg !208 {
entry:
  %"$gasrem_1925" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1926" = icmp ugt i64 1, %"$gasrem_1925"
  br i1 %"$gascmp_1926", label %"$out_of_gas_1927", label %"$have_gas_1928"

"$out_of_gas_1927":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1928"

"$have_gas_1928":                                 ; preds = %"$out_of_gas_1927", %entry
  %"$consume_1929" = sub i64 %"$gasrem_1925", 1
  store i64 %"$consume_1929", i64* @_gasrem, align 8
  %"$dyndisp_table_1933_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1933_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1933_salloc_load", i64 48)
  %"$dyndisp_table_1933_salloc" = bitcast i8* %"$dyndisp_table_1933_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1933" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1933_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1934" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1933", i32 0
  %"$dyndisp_pcast_1935" = bitcast { i8*, i8* }* %"$dyndisp_gep_1934" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_73_env_334"*)* @"$fundef_73" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_1935", align 8
  store { i8*, i8* }* %"$dyndisp_table_1933", { i8*, i8* }** @list_foldr, align 8, !dbg !210
  %"$gasrem_1936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1937" = icmp ugt i64 1, %"$gasrem_1936"
  br i1 %"$gascmp_1937", label %"$out_of_gas_1938", label %"$have_gas_1939"

"$out_of_gas_1938":                               ; preds = %"$have_gas_1928"
  call void @_out_of_gas()
  br label %"$have_gas_1939"

"$have_gas_1939":                                 ; preds = %"$out_of_gas_1938", %"$have_gas_1928"
  %"$consume_1940" = sub i64 %"$gasrem_1936", 1
  store i64 %"$consume_1940", i64* @_gasrem, align 8
  %"$dyndisp_table_1944_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1944_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1944_salloc_load", i64 48)
  %"$dyndisp_table_1944_salloc" = bitcast i8* %"$dyndisp_table_1944_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1944" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1944_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1945" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1944", i32 0
  %"$dyndisp_pcast_1946" = bitcast { i8*, i8* }* %"$dyndisp_gep_1945" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_61_env_329"*)* @"$fundef_61" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_1946", align 8
  store { i8*, i8* }* %"$dyndisp_table_1944", { i8*, i8* }** @list_foldk, align 8, !dbg !210
  %"$gasrem_1947" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1948" = icmp ugt i64 2, %"$gasrem_1947"
  br i1 %"$gascmp_1948", label %"$out_of_gas_1949", label %"$have_gas_1950"

"$out_of_gas_1949":                               ; preds = %"$have_gas_1939"
  call void @_out_of_gas()
  br label %"$have_gas_1950"

"$have_gas_1950":                                 ; preds = %"$out_of_gas_1949", %"$have_gas_1939"
  %"$consume_1951" = sub i64 %"$gasrem_1947", 2
  store i64 %"$consume_1951", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_87_env_323"*, %TName_Bool*, %TName_Bool*)* @"$fundef_87" to %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !211
  %"$gasrem_1955" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1956" = icmp ugt i64 2, %"$gasrem_1955"
  br i1 %"$gascmp_1956", label %"$out_of_gas_1957", label %"$have_gas_1958"

"$out_of_gas_1957":                               ; preds = %"$have_gas_1950"
  call void @_out_of_gas()
  br label %"$have_gas_1958"

"$have_gas_1958":                                 ; preds = %"$out_of_gas_1957", %"$have_gas_1950"
  %"$consume_1959" = sub i64 %"$gasrem_1955", 2
  store i64 %"$consume_1959", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_85_env_322"*, %TName_Bool*, %TName_Bool*)* @"$fundef_85" to %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8, !dbg !212
  %"$gasrem_1963" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1964" = icmp ugt i64 1, %"$gasrem_1963"
  br i1 %"$gascmp_1964", label %"$out_of_gas_1965", label %"$have_gas_1966"

"$out_of_gas_1965":                               ; preds = %"$have_gas_1958"
  call void @_out_of_gas()
  br label %"$have_gas_1966"

"$have_gas_1966":                                 ; preds = %"$out_of_gas_1965", %"$have_gas_1958"
  %"$consume_1967" = sub i64 %"$gasrem_1963", 1
  store i64 %"$consume_1967", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_83_env_321"*, %TName_Bool*)* @"$fundef_83" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8, !dbg !213
  %"$gasrem_1971" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1972" = icmp ugt i64 1, %"$gasrem_1971"
  br i1 %"$gascmp_1972", label %"$out_of_gas_1973", label %"$have_gas_1974"

"$out_of_gas_1973":                               ; preds = %"$have_gas_1966"
  call void @_out_of_gas()
  br label %"$have_gas_1974"

"$have_gas_1974":                                 ; preds = %"$out_of_gas_1973", %"$have_gas_1966"
  %"$consume_1975" = sub i64 %"$gasrem_1971", 1
  store i64 %"$consume_1975", i64* @_gasrem, align 8
  %"$$fundef_111_envp_1976_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_111_envp_1976_salloc" = call i8* @_salloc(i8* %"$$fundef_111_envp_1976_load", i64 8)
  %"$$fundef_111_envp_1976" = bitcast i8* %"$$fundef_111_envp_1976_salloc" to %"$$fundef_111_env_320"*
  %"$$fundef_111_env_voidp_1978" = bitcast %"$$fundef_111_env_320"* %"$$fundef_111_envp_1976" to i8*
  %"$$fundef_111_cloval_1979" = insertvalue { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_111_env_320"*)* @"$fundef_111" to { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_111_env_voidp_1978", 1
  %"$$fundef_111_env_list_foldr_1980" = getelementptr inbounds %"$$fundef_111_env_320", %"$$fundef_111_env_320"* %"$$fundef_111_envp_1976", i32 0, i32 0
  %"$list_foldr_1981" = load { i8*, i8* }*, { i8*, i8* }** @list_foldr, align 8
  store { i8*, i8* }* %"$list_foldr_1981", { i8*, i8* }** %"$$fundef_111_env_list_foldr_1980", align 8
  %"$dyndisp_table_1982_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1982_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1982_salloc_load", i64 48)
  %"$dyndisp_table_1982_salloc" = bitcast i8* %"$dyndisp_table_1982_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1982" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1982_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1983" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1982", i32 0
  %"$dyndisp_pcast_1984" = bitcast { i8*, i8* }* %"$dyndisp_gep_1983" to { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_111_cloval_1979", { { { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1984", align 8
  store { i8*, i8* }* %"$dyndisp_table_1982", { i8*, i8* }** @ListUtils.list_filter, align 8, !dbg !214
  %"$gasrem_1985" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1986" = icmp ugt i64 1, %"$gasrem_1985"
  br i1 %"$gascmp_1986", label %"$out_of_gas_1987", label %"$have_gas_1988"

"$out_of_gas_1987":                               ; preds = %"$have_gas_1974"
  call void @_out_of_gas()
  br label %"$have_gas_1988"

"$have_gas_1988":                                 ; preds = %"$out_of_gas_1987", %"$have_gas_1974"
  %"$consume_1989" = sub i64 %"$gasrem_1985", 1
  store i64 %"$consume_1989", i64* @_gasrem, align 8
  %"$$fundef_101_envp_1990_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_101_envp_1990_salloc" = call i8* @_salloc(i8* %"$$fundef_101_envp_1990_load", i64 8)
  %"$$fundef_101_envp_1990" = bitcast i8* %"$$fundef_101_envp_1990_salloc" to %"$$fundef_101_env_316"*
  %"$$fundef_101_env_voidp_1992" = bitcast %"$$fundef_101_env_316"* %"$$fundef_101_envp_1990" to i8*
  %"$$fundef_101_cloval_1993" = insertvalue { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_101_env_316"*)* @"$fundef_101" to { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_101_env_voidp_1992", 1
  %"$$fundef_101_env_list_foldk_1994" = getelementptr inbounds %"$$fundef_101_env_316", %"$$fundef_101_env_316"* %"$$fundef_101_envp_1990", i32 0, i32 0
  %"$list_foldk_1995" = load { i8*, i8* }*, { i8*, i8* }** @list_foldk, align 8
  store { i8*, i8* }* %"$list_foldk_1995", { i8*, i8* }** %"$$fundef_101_env_list_foldk_1994", align 8
  %"$dyndisp_table_1996_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1996_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1996_salloc_load", i64 48)
  %"$dyndisp_table_1996_salloc" = bitcast i8* %"$dyndisp_table_1996_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1996" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1996_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1997" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1996", i32 0
  %"$dyndisp_pcast_1998" = bitcast { i8*, i8* }* %"$dyndisp_gep_1997" to { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_101_cloval_1993", { { { %TName_Option_ByStr20* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1998", align 8
  store { i8*, i8* }* %"$dyndisp_table_1996", { i8*, i8* }** @ListUtils.list_find, align 8, !dbg !215
  %"$gasrem_1999" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2000" = icmp ugt i64 1, %"$gasrem_1999"
  br i1 %"$gascmp_2000", label %"$out_of_gas_2001", label %"$have_gas_2002"

"$out_of_gas_2001":                               ; preds = %"$have_gas_1988"
  call void @_out_of_gas()
  br label %"$have_gas_2002"

"$have_gas_2002":                                 ; preds = %"$out_of_gas_2001", %"$have_gas_1988"
  %"$consume_2003" = sub i64 %"$gasrem_1999", 1
  store i64 %"$consume_2003", i64* @_gasrem, align 8
  %"$$fundef_95_envp_2004_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_95_envp_2004_salloc" = call i8* @_salloc(i8* %"$$fundef_95_envp_2004_load", i64 8)
  %"$$fundef_95_envp_2004" = bitcast i8* %"$$fundef_95_envp_2004_salloc" to %"$$fundef_95_env_311"*
  %"$$fundef_95_env_voidp_2006" = bitcast %"$$fundef_95_env_311"* %"$$fundef_95_envp_2004" to i8*
  %"$$fundef_95_cloval_2007" = insertvalue { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_95_env_311"*)* @"$fundef_95" to { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_95_env_voidp_2006", 1
  %"$$fundef_95_env_ListUtils.list_find_2008" = getelementptr inbounds %"$$fundef_95_env_311", %"$$fundef_95_env_311"* %"$$fundef_95_envp_2004", i32 0, i32 0
  %"$ListUtils.list_find_2009" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_find, align 8
  store { i8*, i8* }* %"$ListUtils.list_find_2009", { i8*, i8* }** %"$$fundef_95_env_ListUtils.list_find_2008", align 8
  %"$dyndisp_table_2010_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2010_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2010_salloc_load", i64 48)
  %"$dyndisp_table_2010_salloc" = bitcast i8* %"$dyndisp_table_2010_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2010" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2010_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2011" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2010", i32 0
  %"$dyndisp_pcast_2012" = bitcast { i8*, i8* }* %"$dyndisp_gep_2011" to { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_95_cloval_2007", { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, { %TName_Bool* (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2012", align 8
  store { i8*, i8* }* %"$dyndisp_table_2010", { i8*, i8* }** @ListUtils.list_exists, align 8, !dbg !216
  %"$gasrem_2013" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2014" = icmp ugt i64 1, %"$gasrem_2013"
  br i1 %"$gascmp_2014", label %"$out_of_gas_2015", label %"$have_gas_2016"

"$out_of_gas_2015":                               ; preds = %"$have_gas_2002"
  call void @_out_of_gas()
  br label %"$have_gas_2016"

"$have_gas_2016":                                 ; preds = %"$out_of_gas_2015", %"$have_gas_2002"
  %"$consume_2017" = sub i64 %"$gasrem_2013", 1
  store i64 %"$consume_2017", i64* @_gasrem, align 8
  %"$$fundef_89_envp_2018_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_89_envp_2018_salloc" = call i8* @_salloc(i8* %"$$fundef_89_envp_2018_load", i64 8)
  %"$$fundef_89_envp_2018" = bitcast i8* %"$$fundef_89_envp_2018_salloc" to %"$$fundef_89_env_308"*
  %"$$fundef_89_env_voidp_2020" = bitcast %"$$fundef_89_env_308"* %"$$fundef_89_envp_2018" to i8*
  %"$$fundef_89_cloval_2021" = insertvalue { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (%"$$fundef_89_env_308"*)* @"$fundef_89" to { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_89_env_voidp_2020", 1
  %"$$fundef_89_env_ListUtils.list_exists_2022" = getelementptr inbounds %"$$fundef_89_env_308", %"$$fundef_89_env_308"* %"$$fundef_89_envp_2018", i32 0, i32 0
  %"$ListUtils.list_exists_2023" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_exists, align 8
  store { i8*, i8* }* %"$ListUtils.list_exists_2023", { i8*, i8* }** %"$$fundef_89_env_ListUtils.list_exists_2022", align 8
  %"$dyndisp_table_2024_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_2024_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_2024_salloc_load", i64 48)
  %"$dyndisp_table_2024_salloc" = bitcast i8* %"$dyndisp_table_2024_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_2024" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_2024_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_2025" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_2024", i32 0
  %"$dyndisp_pcast_2026" = bitcast { i8*, i8* }* %"$dyndisp_gep_2025" to { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_89_cloval_2021", { { { { %TName_Bool* (i8*, %TName_List_ByStr20*)*, i8* } (i8*, [20 x i8]*)*, i8* } (i8*, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_2026", align 8
  store { i8*, i8* }* %"$dyndisp_table_2024", { i8*, i8* }** @ListUtils.list_mem, align 8, !dbg !217
  %"$gasrem_2027" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2028" = icmp ugt i64 1, %"$gasrem_2027"
  br i1 %"$gascmp_2028", label %"$out_of_gas_2029", label %"$have_gas_2030"

"$out_of_gas_2029":                               ; preds = %"$have_gas_2016"
  call void @_out_of_gas()
  br label %"$have_gas_2030"

"$have_gas_2030":                                 ; preds = %"$out_of_gas_2029", %"$have_gas_2016"
  %"$consume_2031" = sub i64 %"$gasrem_2027", 1
  store i64 %"$consume_2031", i64* @_gasrem, align 8
  store [20 x i8] zeroinitializer, [20 x i8]* @ud-registry.zeroByStr20, align 1, !dbg !218
  %"$gasrem_2032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2033" = icmp ugt i64 1, %"$gasrem_2032"
  br i1 %"$gascmp_2033", label %"$out_of_gas_2034", label %"$have_gas_2035"

"$out_of_gas_2034":                               ; preds = %"$have_gas_2030"
  call void @_out_of_gas()
  br label %"$have_gas_2035"

"$have_gas_2035":                                 ; preds = %"$out_of_gas_2034", %"$have_gas_2030"
  %"$consume_2036" = sub i64 %"$gasrem_2032", 1
  store i64 %"$consume_2036", i64* @_gasrem, align 8
  %"$adtval_2037_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2037_salloc" = call i8* @_salloc(i8* %"$adtval_2037_load", i64 1)
  %"$adtval_2037" = bitcast i8* %"$adtval_2037_salloc" to %CName_Nil_ByStr20*
  %"$adtgep_2038" = getelementptr inbounds %CName_Nil_ByStr20, %CName_Nil_ByStr20* %"$adtval_2037", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2038", align 1
  %"$adtptr_2039" = bitcast %CName_Nil_ByStr20* %"$adtval_2037" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2039", %TName_List_ByStr20** @ud-registry.nilByStr20, align 8, !dbg !219
  %"$gasrem_2040" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2041" = icmp ugt i64 1, %"$gasrem_2040"
  br i1 %"$gascmp_2041", label %"$out_of_gas_2042", label %"$have_gas_2043"

"$out_of_gas_2042":                               ; preds = %"$have_gas_2035"
  call void @_out_of_gas()
  br label %"$have_gas_2043"

"$have_gas_2043":                                 ; preds = %"$out_of_gas_2042", %"$have_gas_2035"
  %"$consume_2044" = sub i64 %"$gasrem_2040", 1
  store i64 %"$consume_2044", i64* @_gasrem, align 8
  %"$adtval_2045_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2045_salloc" = call i8* @_salloc(i8* %"$adtval_2045_load", i64 1)
  %"$adtval_2045" = bitcast i8* %"$adtval_2045_salloc" to %CName_Nil_Message*
  %"$adtgep_2046" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_2045", i32 0, i32 0
  store i8 1, i8* %"$adtgep_2046", align 1
  %"$adtptr_2047" = bitcast %CName_Nil_Message* %"$adtval_2045" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_2047", %TName_List_Message** @ud-registry.nilMessage, align 8, !dbg !220
  %"$gasrem_2048" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2049" = icmp ugt i64 1, %"$gasrem_2048"
  br i1 %"$gascmp_2049", label %"$out_of_gas_2050", label %"$have_gas_2051"

"$out_of_gas_2050":                               ; preds = %"$have_gas_2043"
  call void @_out_of_gas()
  br label %"$have_gas_2051"

"$have_gas_2051":                                 ; preds = %"$out_of_gas_2050", %"$have_gas_2043"
  %"$consume_2052" = sub i64 %"$gasrem_2048", 1
  store i64 %"$consume_2052", i64* @_gasrem, align 8
  %"$$fundef_153_envp_2053_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_153_envp_2053_salloc" = call i8* @_salloc(i8* %"$$fundef_153_envp_2053_load", i64 8)
  %"$$fundef_153_envp_2053" = bitcast i8* %"$$fundef_153_envp_2053_salloc" to %"$$fundef_153_env_305"*
  %"$$fundef_153_env_voidp_2055" = bitcast %"$$fundef_153_env_305"* %"$$fundef_153_envp_2053" to i8*
  %"$$fundef_153_cloval_2056" = insertvalue { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_153_env_305"*, i8*)* @"$fundef_153" to %TName_List_Message* (i8*, i8*)*), i8* undef }, i8* %"$$fundef_153_env_voidp_2055", 1
  %"$$fundef_153_env_ud-registry.nilMessage_2057" = getelementptr inbounds %"$$fundef_153_env_305", %"$$fundef_153_env_305"* %"$$fundef_153_envp_2053", i32 0, i32 0
  %"$ud-registry.nilMessage_2058" = load %TName_List_Message*, %TName_List_Message** @ud-registry.nilMessage, align 8
  store %TName_List_Message* %"$ud-registry.nilMessage_2058", %TName_List_Message** %"$$fundef_153_env_ud-registry.nilMessage_2057", align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } %"$$fundef_153_cloval_2056", { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8, !dbg !221
  %"$gasrem_2059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2060" = icmp ugt i64 1, %"$gasrem_2059"
  br i1 %"$gascmp_2060", label %"$out_of_gas_2061", label %"$have_gas_2062"

"$out_of_gas_2061":                               ; preds = %"$have_gas_2051"
  call void @_out_of_gas()
  br label %"$have_gas_2062"

"$have_gas_2062":                                 ; preds = %"$out_of_gas_2061", %"$have_gas_2051"
  %"$consume_2063" = sub i64 %"$gasrem_2059", 1
  store i64 %"$consume_2063", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ %TName_Bool* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_149_env_304"*, [20 x i8]*)* @"$fundef_149" to { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eqByStr20, align 8, !dbg !222
  %"$gasrem_2067" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2068" = icmp ugt i64 2, %"$gasrem_2067"
  br i1 %"$gascmp_2068", label %"$out_of_gas_2069", label %"$have_gas_2070"

"$out_of_gas_2069":                               ; preds = %"$have_gas_2062"
  call void @_out_of_gas()
  br label %"$have_gas_2070"

"$have_gas_2070":                                 ; preds = %"$out_of_gas_2069", %"$have_gas_2062"
  %"$consume_2071" = sub i64 %"$gasrem_2067", 2
  store i64 %"$consume_2071", i64* @_gasrem, align 8
  %"$$fundef_147_envp_2072_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_147_envp_2072_salloc" = call i8* @_salloc(i8* %"$$fundef_147_envp_2072_load", i64 24)
  %"$$fundef_147_envp_2072" = bitcast i8* %"$$fundef_147_envp_2072_salloc" to %"$$fundef_147_env_302"*
  %"$$fundef_147_env_voidp_2074" = bitcast %"$$fundef_147_env_302"* %"$$fundef_147_envp_2072" to i8*
  %"$$fundef_147_cloval_2075" = insertvalue { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_147_env_302"*, %TName_List_ByStr20*, [20 x i8]*)* @"$fundef_147" to %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_147_env_voidp_2074", 1
  %"$$fundef_147_env_ListUtils.list_mem_2076" = getelementptr inbounds %"$$fundef_147_env_302", %"$$fundef_147_env_302"* %"$$fundef_147_envp_2072", i32 0, i32 0
  %"$ListUtils.list_mem_2077" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_mem, align 8
  store { i8*, i8* }* %"$ListUtils.list_mem_2077", { i8*, i8* }** %"$$fundef_147_env_ListUtils.list_mem_2076", align 8
  %"$$fundef_147_env_ud-registry.eqByStr20_2078" = getelementptr inbounds %"$$fundef_147_env_302", %"$$fundef_147_env_302"* %"$$fundef_147_envp_2072", i32 0, i32 1
  %"$ud-registry.eqByStr20_2079" = load { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-registry.eqByStr20, align 8
  store { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eqByStr20_2079", { { %TName_Bool* (i8*, [20 x i8]*)*, i8* } (i8*, [20 x i8]*)*, i8* }* %"$$fundef_147_env_ud-registry.eqByStr20_2078", align 8
  store { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$$fundef_147_cloval_2075", { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* @ud-registry.listByStr20Contains, align 8, !dbg !223
  %"$gasrem_2080" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2081" = icmp ugt i64 2, %"$gasrem_2080"
  br i1 %"$gascmp_2081", label %"$out_of_gas_2082", label %"$have_gas_2083"

"$out_of_gas_2082":                               ; preds = %"$have_gas_2070"
  call void @_out_of_gas()
  br label %"$have_gas_2083"

"$have_gas_2083":                                 ; preds = %"$out_of_gas_2082", %"$have_gas_2070"
  %"$consume_2084" = sub i64 %"$gasrem_2080", 2
  store i64 %"$consume_2084", i64* @_gasrem, align 8
  %"$$fundef_145_envp_2085_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_145_envp_2085_salloc" = call i8* @_salloc(i8* %"$$fundef_145_envp_2085_load", i64 32)
  %"$$fundef_145_envp_2085" = bitcast i8* %"$$fundef_145_envp_2085_salloc" to %"$$fundef_145_env_301"*
  %"$$fundef_145_env_voidp_2087" = bitcast %"$$fundef_145_env_301"* %"$$fundef_145_envp_2085" to i8*
  %"$$fundef_145_cloval_2088" = insertvalue { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)* bitcast (%TName_Bool* (%"$$fundef_145_env_301"*, %TName_List_ByStr20*, [20 x i8]*)* @"$fundef_145" to %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_145_env_voidp_2087", 1
  %"$$fundef_145_env_BoolUtils.negb_2089" = getelementptr inbounds %"$$fundef_145_env_301", %"$$fundef_145_env_301"* %"$$fundef_145_envp_2085", i32 0, i32 0
  %"$BoolUtils.negb_2090" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_2090", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_145_env_BoolUtils.negb_2089", align 8
  %"$$fundef_145_env_ud-registry.listByStr20Contains_2091" = getelementptr inbounds %"$$fundef_145_env_301", %"$$fundef_145_env_301"* %"$$fundef_145_envp_2085", i32 0, i32 1
  %"$ud-registry.listByStr20Contains_2092" = load { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  store { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_2092", { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* %"$$fundef_145_env_ud-registry.listByStr20Contains_2091", align 8
  store { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$$fundef_145_cloval_2088", { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* @ud-registry.listByStr20Excludes, align 8, !dbg !224
  %"$gasrem_2093" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2094" = icmp ugt i64 2, %"$gasrem_2093"
  br i1 %"$gascmp_2094", label %"$out_of_gas_2095", label %"$have_gas_2096"

"$out_of_gas_2095":                               ; preds = %"$have_gas_2083"
  call void @_out_of_gas()
  br label %"$have_gas_2096"

"$have_gas_2096":                                 ; preds = %"$out_of_gas_2095", %"$have_gas_2083"
  %"$consume_2097" = sub i64 %"$gasrem_2093", 2
  store i64 %"$consume_2097", i64* @_gasrem, align 8
  %"$$fundef_141_envp_2098_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_141_envp_2098_salloc" = call i8* @_salloc(i8* %"$$fundef_141_envp_2098_load", i64 24)
  %"$$fundef_141_envp_2098" = bitcast i8* %"$$fundef_141_envp_2098_salloc" to %"$$fundef_141_env_300"*
  %"$$fundef_141_env_voidp_2100" = bitcast %"$$fundef_141_env_300"* %"$$fundef_141_envp_2098" to i8*
  %"$$fundef_141_cloval_2101" = insertvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*, [20 x i8]*)* bitcast (%TName_List_ByStr20* (%"$$fundef_141_env_300"*, %TName_List_ByStr20*, [20 x i8]*)* @"$fundef_141" to %TName_List_ByStr20* (i8*, %TName_List_ByStr20*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_141_env_voidp_2100", 1
  %"$$fundef_141_env_BoolUtils.negb_2102" = getelementptr inbounds %"$$fundef_141_env_300", %"$$fundef_141_env_300"* %"$$fundef_141_envp_2098", i32 0, i32 0
  %"$BoolUtils.negb_2103" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_2103", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$fundef_141_env_BoolUtils.negb_2102", align 8
  %"$$fundef_141_env_ListUtils.list_filter_2104" = getelementptr inbounds %"$$fundef_141_env_300", %"$$fundef_141_env_300"* %"$$fundef_141_envp_2098", i32 0, i32 1
  %"$ListUtils.list_filter_2105" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_filter, align 8
  store { i8*, i8* }* %"$ListUtils.list_filter_2105", { i8*, i8* }** %"$$fundef_141_env_ListUtils.list_filter_2104", align 8
  store { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$$fundef_141_cloval_2101", { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8, !dbg !225
  %"$gasrem_2106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2107" = icmp ugt i64 2, %"$gasrem_2106"
  br i1 %"$gascmp_2107", label %"$out_of_gas_2108", label %"$have_gas_2109"

"$out_of_gas_2108":                               ; preds = %"$have_gas_2096"
  call void @_out_of_gas()
  br label %"$have_gas_2109"

"$have_gas_2109":                                 ; preds = %"$out_of_gas_2108", %"$have_gas_2096"
  %"$consume_2110" = sub i64 %"$gasrem_2106", 2
  store i64 %"$consume_2110", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_139_env_298"*, %TName_Bool*, %TName_Bool*)* @"$fundef_139" to %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8, !dbg !226
  %"$gasrem_2114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2115" = icmp ugt i64 2, %"$gasrem_2114"
  br i1 %"$gascmp_2115", label %"$out_of_gas_2116", label %"$have_gas_2117"

"$out_of_gas_2116":                               ; preds = %"$have_gas_2109"
  call void @_out_of_gas()
  br label %"$have_gas_2117"

"$have_gas_2117":                                 ; preds = %"$out_of_gas_2116", %"$have_gas_2109"
  %"$consume_2118" = sub i64 %"$gasrem_2114", 2
  store i64 %"$consume_2118", i64* @_gasrem, align 8
  store { i8* (i8*, [20 x i8]*, %TName_Bool*)*, i8* } { i8* (i8*, [20 x i8]*, %TName_Bool*)* bitcast (i8* (%"$$fundef_137_env_297"*, [20 x i8]*, %TName_Bool*)* @"$fundef_137" to i8* (i8*, [20 x i8]*, %TName_Bool*)*), i8* null }, { i8* (i8*, [20 x i8]*, %TName_Bool*)*, i8* }* @ud-registry.eAdminSet, align 8, !dbg !227
  %"$gasrem_2122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2123" = icmp ugt i64 3, %"$gasrem_2122"
  br i1 %"$gascmp_2123", label %"$out_of_gas_2124", label %"$have_gas_2125"

"$out_of_gas_2124":                               ; preds = %"$have_gas_2117"
  call void @_out_of_gas()
  br label %"$have_gas_2125"

"$have_gas_2125":                                 ; preds = %"$out_of_gas_2124", %"$have_gas_2117"
  %"$consume_2126" = sub i64 %"$gasrem_2122", 3
  store i64 %"$consume_2126", i64* @_gasrem, align 8
  store { i8* (i8*, [20 x i8]*, [20 x i8]*, %TName_Bool*)*, i8* } { i8* (i8*, [20 x i8]*, [20 x i8]*, %TName_Bool*)* bitcast (i8* (%"$$fundef_135_env_296"*, [20 x i8]*, [20 x i8]*, %TName_Bool*)* @"$fundef_135" to i8* (i8*, [20 x i8]*, [20 x i8]*, %TName_Bool*)*), i8* null }, { i8* (i8*, [20 x i8]*, [20 x i8]*, %TName_Bool*)*, i8* }* @ud-registry.eApprovedFor, align 8, !dbg !228
  %"$gasrem_2130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2131" = icmp ugt i64 1, %"$gasrem_2130"
  br i1 %"$gascmp_2131", label %"$out_of_gas_2132", label %"$have_gas_2133"

"$out_of_gas_2132":                               ; preds = %"$have_gas_2125"
  call void @_out_of_gas()
  br label %"$have_gas_2133"

"$have_gas_2133":                                 ; preds = %"$out_of_gas_2132", %"$have_gas_2125"
  %"$consume_2134" = sub i64 %"$gasrem_2130", 1
  store i64 %"$consume_2134", i64* @_gasrem, align 8
  store { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_133_env_295"*, [20 x i8]*)* @"$fundef_133" to i8* (i8*, [20 x i8]*)*), i8* null }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApproved, align 8, !dbg !229
  %"$gasrem_2138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2139" = icmp ugt i64 1, %"$gasrem_2138"
  br i1 %"$gascmp_2139", label %"$out_of_gas_2140", label %"$have_gas_2141"

"$out_of_gas_2140":                               ; preds = %"$have_gas_2133"
  call void @_out_of_gas()
  br label %"$have_gas_2141"

"$have_gas_2141":                                 ; preds = %"$out_of_gas_2140", %"$have_gas_2133"
  %"$consume_2142" = sub i64 %"$gasrem_2138", 1
  store i64 %"$consume_2142", i64* @_gasrem, align 8
  store { i8* (i8*, [20 x i8]*)*, i8* } { i8* (i8*, [20 x i8]*)* bitcast (i8* (%"$$fundef_131_env_294"*, [20 x i8]*)* @"$fundef_131" to i8* (i8*, [20 x i8]*)*), i8* null }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eNewRegistrar, align 8, !dbg !230
  %"$gasrem_2146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2147" = icmp ugt i64 2, %"$gasrem_2146"
  br i1 %"$gascmp_2147", label %"$out_of_gas_2148", label %"$have_gas_2149"

"$out_of_gas_2148":                               ; preds = %"$have_gas_2141"
  call void @_out_of_gas()
  br label %"$have_gas_2149"

"$have_gas_2149":                                 ; preds = %"$out_of_gas_2148", %"$have_gas_2141"
  %"$consume_2150" = sub i64 %"$gasrem_2146", 2
  store i64 %"$consume_2150", i64* @_gasrem, align 8
  store { i8* (i8*, [32 x i8]*, %String)*, i8* } { i8* (i8*, [32 x i8]*, %String)* bitcast (i8* (%"$$fundef_129_env_293"*, [32 x i8]*, %String)* @"$fundef_129" to i8* (i8*, [32 x i8]*, %String)*), i8* null }, { i8* (i8*, [32 x i8]*, %String)*, i8* }* @ud-registry.eNewDomain, align 8, !dbg !231
  %"$gasrem_2154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2155" = icmp ugt i64 3, %"$gasrem_2154"
  br i1 %"$gascmp_2155", label %"$out_of_gas_2156", label %"$have_gas_2157"

"$out_of_gas_2156":                               ; preds = %"$have_gas_2149"
  call void @_out_of_gas()
  br label %"$have_gas_2157"

"$have_gas_2157":                                 ; preds = %"$out_of_gas_2156", %"$have_gas_2149"
  %"$consume_2158" = sub i64 %"$gasrem_2154", 3
  store i64 %"$consume_2158", i64* @_gasrem, align 8
  store { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* } { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)* bitcast (i8* (%"$$fundef_127_env_292"*, [32 x i8]*, [20 x i8]*, [20 x i8]*)* @"$fundef_127" to i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*), i8* null }, { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8, !dbg !232
  %"$gasrem_2162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2163" = icmp ugt i64 1, %"$gasrem_2162"
  br i1 %"$gascmp_2163", label %"$out_of_gas_2164", label %"$have_gas_2165"

"$out_of_gas_2164":                               ; preds = %"$have_gas_2157"
  call void @_out_of_gas()
  br label %"$have_gas_2165"

"$have_gas_2165":                                 ; preds = %"$out_of_gas_2164", %"$have_gas_2157"
  %"$consume_2166" = sub i64 %"$gasrem_2162", 1
  store i64 %"$consume_2166", i64* @_gasrem, align 8
  store { i8* (i8*, %String)*, i8* } { i8* (i8*, %String)* bitcast (i8* (%"$$fundef_125_env_291"*, %String)* @"$fundef_125" to i8* (i8*, %String)*), i8* null }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8, !dbg !233
  %"$gasrem_2170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2171" = icmp ugt i64 1, %"$gasrem_2170"
  br i1 %"$gascmp_2171", label %"$out_of_gas_2172", label %"$have_gas_2173"

"$out_of_gas_2172":                               ; preds = %"$have_gas_2165"
  call void @_out_of_gas()
  br label %"$have_gas_2173"

"$have_gas_2173":                                 ; preds = %"$out_of_gas_2172", %"$have_gas_2165"
  %"$consume_2174" = sub i64 %"$gasrem_2170", 1
  store i64 %"$consume_2174", i64* @_gasrem, align 8
  %"$$fundef_123_envp_2175_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_123_envp_2175_salloc" = call i8* @_salloc(i8* %"$$fundef_123_envp_2175_load", i64 20)
  %"$$fundef_123_envp_2175" = bitcast i8* %"$$fundef_123_envp_2175_salloc" to %"$$fundef_123_env_290"*
  %"$$fundef_123_env_voidp_2177" = bitcast %"$$fundef_123_env_290"* %"$$fundef_123_envp_2175" to i8*
  %"$$fundef_123_cloval_2178" = insertvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)* bitcast (void (%"$$fundef_123_env_290"*, [20 x i8]*, %TName_Option_ud-registry.Record*)* @"$fundef_123" to void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*), i8* undef }, i8* %"$$fundef_123_env_voidp_2177", 1
  %"$$fundef_123_env_ud-registry.zeroByStr20_2179" = getelementptr inbounds %"$$fundef_123_env_290", %"$$fundef_123_env_290"* %"$$fundef_123_envp_2175", i32 0, i32 0
  %"$ud-registry.zeroByStr20_2180" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_2180", [20 x i8]* %"$$fundef_123_env_ud-registry.zeroByStr20_2179", align 1
  store { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$$fundef_123_cloval_2178", { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8, !dbg !234
  %"$gasrem_2181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2182" = icmp ugt i64 2, %"$gasrem_2181"
  br i1 %"$gascmp_2182", label %"$out_of_gas_2183", label %"$have_gas_2184"

"$out_of_gas_2183":                               ; preds = %"$have_gas_2173"
  call void @_out_of_gas()
  br label %"$have_gas_2184"

"$have_gas_2184":                                 ; preds = %"$out_of_gas_2183", %"$have_gas_2173"
  %"$consume_2185" = sub i64 %"$gasrem_2181", 2
  store i64 %"$consume_2185", i64* @_gasrem, align 8
  store { void (i8*, [32 x i8]*, [32 x i8]*, %String)*, i8* } { void (i8*, [32 x i8]*, [32 x i8]*, %String)* bitcast (void (%"$$fundef_121_env_289"*, [32 x i8]*, [32 x i8]*, %String)* @"$fundef_121" to void (i8*, [32 x i8]*, [32 x i8]*, %String)*), i8* null }, { void (i8*, [32 x i8]*, [32 x i8]*, %String)*, i8* }* @ud-registry.parentLabelToNode, align 8, !dbg !235
  %"$gasrem_2189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2190" = icmp ugt i64 4, %"$gasrem_2189"
  br i1 %"$gascmp_2190", label %"$out_of_gas_2191", label %"$have_gas_2192"

"$out_of_gas_2191":                               ; preds = %"$have_gas_2184"
  call void @_out_of_gas()
  br label %"$have_gas_2192"

"$have_gas_2192":                                 ; preds = %"$out_of_gas_2191", %"$have_gas_2184"
  %"$consume_2193" = sub i64 %"$gasrem_2189", 4
  store i64 %"$consume_2193", i64* @_gasrem, align 8
  %"$$fundef_119_envp_2194_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_119_envp_2194_salloc" = call i8* @_salloc(i8* %"$$fundef_119_envp_2194_load", i64 32)
  %"$$fundef_119_envp_2194" = bitcast i8* %"$$fundef_119_envp_2194_salloc" to %"$$fundef_119_env_288"*
  %"$$fundef_119_env_voidp_2196" = bitcast %"$$fundef_119_env_288"* %"$$fundef_119_envp_2194" to i8*
  %"$$fundef_119_cloval_2197" = insertvalue { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* } { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)* bitcast (%TName_Bool* (%"$$fundef_119_env_288"*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)* @"$fundef_119" to %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*), i8* undef }, i8* %"$$fundef_119_env_voidp_2196", 1
  %"$$fundef_119_env_BoolUtils.orb_2198" = getelementptr inbounds %"$$fundef_119_env_288", %"$$fundef_119_env_288"* %"$$fundef_119_envp_2194", i32 0, i32 0
  %"$BoolUtils.orb_2199" = load { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  store { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_2199", { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* %"$$fundef_119_env_BoolUtils.orb_2198", align 8
  %"$$fundef_119_env_ud-registry.listByStr20Contains_2200" = getelementptr inbounds %"$$fundef_119_env_288", %"$$fundef_119_env_288"* %"$$fundef_119_envp_2194", i32 0, i32 1
  %"$ud-registry.listByStr20Contains_2201" = load { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  store { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_2201", { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* %"$$fundef_119_env_ud-registry.listByStr20Contains_2200", align 8
  store { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$$fundef_119_cloval_2197", { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* }* @ud-registry.getIsOAO, align 8, !dbg !236
  ret void
}

define void @_init_state() !dbg !237 {
entry:
  %"$records_155" = alloca %Map_ByStr32_ud-registry.Record*, align 8
  %"$gasrem_2202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2203" = icmp ugt i64 1, %"$gasrem_2202"
  br i1 %"$gascmp_2203", label %"$out_of_gas_2204", label %"$have_gas_2205"

"$out_of_gas_2204":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2205"

"$have_gas_2205":                                 ; preds = %"$out_of_gas_2204", %entry
  %"$consume_2206" = sub i64 %"$gasrem_2202", 1
  store i64 %"$consume_2206", i64* @_gasrem, align 8
  %empty = alloca %Map_ByStr32_ud-registry.Record*, align 8
  %"$gasrem_2207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2208" = icmp ugt i64 1, %"$gasrem_2207"
  br i1 %"$gascmp_2208", label %"$out_of_gas_2209", label %"$have_gas_2210"

"$out_of_gas_2209":                               ; preds = %"$have_gas_2205"
  call void @_out_of_gas()
  br label %"$have_gas_2210"

"$have_gas_2210":                                 ; preds = %"$out_of_gas_2209", %"$have_gas_2205"
  %"$consume_2211" = sub i64 %"$gasrem_2207", 1
  store i64 %"$consume_2211", i64* @_gasrem, align 8
  %"$execptr_load_2212" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2213" = call i8* @_new_empty_map(i8* %"$execptr_load_2212")
  %"$_new_empty_map_2214" = bitcast i8* %"$_new_empty_map_call_2213" to %Map_ByStr32_ud-registry.Record*
  store %Map_ByStr32_ud-registry.Record* %"$_new_empty_map_2214", %Map_ByStr32_ud-registry.Record** %empty, align 8, !dbg !238
  %"$gasrem_2215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2216" = icmp ugt i64 1, %"$gasrem_2215"
  br i1 %"$gascmp_2216", label %"$out_of_gas_2217", label %"$have_gas_2218"

"$out_of_gas_2217":                               ; preds = %"$have_gas_2210"
  call void @_out_of_gas()
  br label %"$have_gas_2218"

"$have_gas_2218":                                 ; preds = %"$out_of_gas_2217", %"$have_gas_2210"
  %"$consume_2219" = sub i64 %"$gasrem_2215", 1
  store i64 %"$consume_2219", i64* @_gasrem, align 8
  %rootRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_2220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2221" = icmp ugt i64 1, %"$gasrem_2220"
  br i1 %"$gascmp_2221", label %"$out_of_gas_2222", label %"$have_gas_2223"

"$out_of_gas_2222":                               ; preds = %"$have_gas_2218"
  call void @_out_of_gas()
  br label %"$have_gas_2223"

"$have_gas_2223":                                 ; preds = %"$out_of_gas_2222", %"$have_gas_2218"
  %"$consume_2224" = sub i64 %"$gasrem_2220", 1
  store i64 %"$consume_2224", i64* @_gasrem, align 8
  %"$initialOwner_2225" = load [20 x i8], [20 x i8]* @_cparam_initialOwner, align 1
  %"$ud-registry.zeroByStr20_2226" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_2227_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2227_salloc" = call i8* @_salloc(i8* %"$adtval_2227_load", i64 41)
  %"$adtval_2227" = bitcast i8* %"$adtval_2227_salloc" to %CName_ud-registry.Record*
  %"$adtgep_2228" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2227", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2228", align 1
  %"$adtgep_2229" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2227", i32 0, i32 1
  store [20 x i8] %"$initialOwner_2225", [20 x i8]* %"$adtgep_2229", align 1
  %"$adtgep_2230" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_2227", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_2226", [20 x i8]* %"$adtgep_2230", align 1
  %"$adtptr_2231" = bitcast %CName_ud-registry.Record* %"$adtval_2227" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_2231", %TName_ud-registry.Record** %rootRecord, align 8, !dbg !239
  %"$empty_2232" = load %Map_ByStr32_ud-registry.Record*, %Map_ByStr32_ud-registry.Record** %empty, align 8
  %"$$empty_2232_2233" = bitcast %Map_ByStr32_ud-registry.Record* %"$empty_2232" to i8*
  %"$_lengthof_call_2234" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_208", i8* %"$$empty_2232_2233")
  %"$gasadd_2235" = add i64 1, %"$_lengthof_call_2234"
  %"$gasrem_2236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2237" = icmp ugt i64 %"$gasadd_2235", %"$gasrem_2236"
  br i1 %"$gascmp_2237", label %"$out_of_gas_2238", label %"$have_gas_2239"

"$out_of_gas_2238":                               ; preds = %"$have_gas_2223"
  call void @_out_of_gas()
  br label %"$have_gas_2239"

"$have_gas_2239":                                 ; preds = %"$out_of_gas_2238", %"$have_gas_2223"
  %"$consume_2240" = sub i64 %"$gasrem_2236", %"$gasadd_2235"
  store i64 %"$consume_2240", i64* @_gasrem, align 8
  %"$execptr_load_2241" = load i8*, i8** @_execptr, align 8
  %"$empty_2242" = load %Map_ByStr32_ud-registry.Record*, %Map_ByStr32_ud-registry.Record** %empty, align 8
  %"$$empty_2242_2243" = bitcast %Map_ByStr32_ud-registry.Record* %"$empty_2242" to i8*
  %"$put_rootNode_2244" = alloca [32 x i8], align 1
  %"$rootNode_2245" = load [32 x i8], [32 x i8]* @_cparam_rootNode, align 1
  store [32 x i8] %"$rootNode_2245", [32 x i8]* %"$put_rootNode_2244", align 1
  %"$$put_rootNode_2244_2246" = bitcast [32 x i8]* %"$put_rootNode_2244" to i8*
  %"$rootRecord_2247" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %rootRecord, align 8
  %"$$rootRecord_2247_2248" = bitcast %TName_ud-registry.Record* %"$rootRecord_2247" to i8*
  %"$put_call_2249" = call i8* @_put(i8* %"$execptr_load_2241", %_TyDescrTy_Typ* @"$TyDescr_Map_208", i8* %"$$empty_2242_2243", i8* %"$$put_rootNode_2244_2246", i8* %"$$rootRecord_2247_2248"), !dbg !240
  %"$put_2250" = bitcast i8* %"$put_call_2249" to %Map_ByStr32_ud-registry.Record*
  store %Map_ByStr32_ud-registry.Record* %"$put_2250", %Map_ByStr32_ud-registry.Record** %"$records_155", align 8, !dbg !240
  %"$execptr_load_2251" = load i8*, i8** @_execptr, align 8
  %"$$records_155_2253" = load %Map_ByStr32_ud-registry.Record*, %Map_ByStr32_ud-registry.Record** %"$records_155", align 8
  %"$update_value_2254" = bitcast %Map_ByStr32_ud-registry.Record* %"$$records_155_2253" to i8*
  call void @_update_field(i8* %"$execptr_load_2251", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_2252", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_208", i32 0, i8* null, i8* %"$update_value_2254"), !dbg !238
  %"$registrar_156" = alloca [20 x i8], align 1
  %"$gasrem_2255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2256" = icmp ugt i64 1, %"$gasrem_2255"
  br i1 %"$gascmp_2256", label %"$out_of_gas_2257", label %"$have_gas_2258"

"$out_of_gas_2257":                               ; preds = %"$have_gas_2239"
  call void @_out_of_gas()
  br label %"$have_gas_2258"

"$have_gas_2258":                                 ; preds = %"$out_of_gas_2257", %"$have_gas_2239"
  %"$consume_2259" = sub i64 %"$gasrem_2255", 1
  store i64 %"$consume_2259", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_2260" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_2260", [20 x i8]* %"$registrar_156", align 1, !dbg !241
  %"$execptr_load_2261" = load i8*, i8** @_execptr, align 8
  %"$$registrar_156_2263" = load [20 x i8], [20 x i8]* %"$registrar_156", align 1
  %"$update_value_2264" = alloca [20 x i8], align 1
  store [20 x i8] %"$$registrar_156_2263", [20 x i8]* %"$update_value_2264", align 1
  %"$update_value_2265" = bitcast [20 x i8]* %"$update_value_2264" to i8*
  call void @_update_field(i8* %"$execptr_load_2261", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_2262", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", i32 0, i8* null, i8* %"$update_value_2265"), !dbg !241
  %"$approvals_157" = alloca %Map_ByStr32_ByStr20*, align 8
  %"$gasrem_2266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2267" = icmp ugt i64 1, %"$gasrem_2266"
  br i1 %"$gascmp_2267", label %"$out_of_gas_2268", label %"$have_gas_2269"

"$out_of_gas_2268":                               ; preds = %"$have_gas_2258"
  call void @_out_of_gas()
  br label %"$have_gas_2269"

"$have_gas_2269":                                 ; preds = %"$out_of_gas_2268", %"$have_gas_2258"
  %"$consume_2270" = sub i64 %"$gasrem_2266", 1
  store i64 %"$consume_2270", i64* @_gasrem, align 8
  %"$execptr_load_2271" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2272" = call i8* @_new_empty_map(i8* %"$execptr_load_2271")
  %"$_new_empty_map_2273" = bitcast i8* %"$_new_empty_map_call_2272" to %Map_ByStr32_ByStr20*
  store %Map_ByStr32_ByStr20* %"$_new_empty_map_2273", %Map_ByStr32_ByStr20** %"$approvals_157", align 8, !dbg !242
  %"$execptr_load_2274" = load i8*, i8** @_execptr, align 8
  %"$$approvals_157_2276" = load %Map_ByStr32_ByStr20*, %Map_ByStr32_ByStr20** %"$approvals_157", align 8
  %"$update_value_2277" = bitcast %Map_ByStr32_ByStr20* %"$$approvals_157_2276" to i8*
  call void @_update_field(i8* %"$execptr_load_2274", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_2275", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_207", i32 0, i8* null, i8* %"$update_value_2277"), !dbg !242
  %"$operators_158" = alloca %"Map_ByStr20_List_(ByStr20)"*, align 8
  %"$gasrem_2278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2279" = icmp ugt i64 1, %"$gasrem_2278"
  br i1 %"$gascmp_2279", label %"$out_of_gas_2280", label %"$have_gas_2281"

"$out_of_gas_2280":                               ; preds = %"$have_gas_2269"
  call void @_out_of_gas()
  br label %"$have_gas_2281"

"$have_gas_2281":                                 ; preds = %"$out_of_gas_2280", %"$have_gas_2269"
  %"$consume_2282" = sub i64 %"$gasrem_2278", 1
  store i64 %"$consume_2282", i64* @_gasrem, align 8
  %"$execptr_load_2283" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2284" = call i8* @_new_empty_map(i8* %"$execptr_load_2283")
  %"$_new_empty_map_2285" = bitcast i8* %"$_new_empty_map_call_2284" to %"Map_ByStr20_List_(ByStr20)"*
  store %"Map_ByStr20_List_(ByStr20)"* %"$_new_empty_map_2285", %"Map_ByStr20_List_(ByStr20)"** %"$operators_158", align 8, !dbg !243
  %"$execptr_load_2286" = load i8*, i8** @_execptr, align 8
  %"$$operators_158_2288" = load %"Map_ByStr20_List_(ByStr20)"*, %"Map_ByStr20_List_(ByStr20)"** %"$operators_158", align 8
  %"$update_value_2289" = bitcast %"Map_ByStr20_List_(ByStr20)"* %"$$operators_158_2288" to i8*
  call void @_update_field(i8* %"$execptr_load_2286", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_2287", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_206", i32 0, i8* null, i8* %"$update_value_2289"), !dbg !243
  %"$admins_159" = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_2290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2291" = icmp ugt i64 1, %"$gasrem_2290"
  br i1 %"$gascmp_2291", label %"$out_of_gas_2292", label %"$have_gas_2293"

"$out_of_gas_2292":                               ; preds = %"$have_gas_2281"
  call void @_out_of_gas()
  br label %"$have_gas_2293"

"$have_gas_2293":                                 ; preds = %"$out_of_gas_2292", %"$have_gas_2281"
  %"$consume_2294" = sub i64 %"$gasrem_2290", 1
  store i64 %"$consume_2294", i64* @_gasrem, align 8
  %"$initialOwner_2295" = load [20 x i8], [20 x i8]* @_cparam_initialOwner, align 1
  %"$ud-registry.nilByStr20_2296" = load %TName_List_ByStr20*, %TName_List_ByStr20** @ud-registry.nilByStr20, align 8
  %"$adtval_2297_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2297_salloc" = call i8* @_salloc(i8* %"$adtval_2297_load", i64 29)
  %"$adtval_2297" = bitcast i8* %"$adtval_2297_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_2298" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2297", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2298", align 1
  %"$adtgep_2299" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2297", i32 0, i32 1
  store [20 x i8] %"$initialOwner_2295", [20 x i8]* %"$adtgep_2299", align 1
  %"$adtgep_2300" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2297", i32 0, i32 2
  store %TName_List_ByStr20* %"$ud-registry.nilByStr20_2296", %TName_List_ByStr20** %"$adtgep_2300", align 8
  %"$adtptr_2301" = bitcast %CName_Cons_ByStr20* %"$adtval_2297" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2301", %TName_List_ByStr20** %"$admins_159", align 8, !dbg !244
  %"$execptr_load_2302" = load i8*, i8** @_execptr, align 8
  %"$$admins_159_2304" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$admins_159", align 8
  %"$update_value_2305" = bitcast %TName_List_ByStr20* %"$$admins_159_2304" to i8*
  call void @_update_field(i8* %"$execptr_load_2302", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2303", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_203", i32 0, i8* null, i8* %"$update_value_2305"), !dbg !244
  ret void
}

declare i8* @_new_empty_map(i8*)

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setAdmin_2306"(%Uint128 %_amount, [20 x i8]* %"$_origin_2307", [20 x i8]* %"$_sender_2308", [20 x i8]* %"$address_2309", %TName_Bool* %isApproved) !dbg !245 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2307", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2308", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_2309", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_2311" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_call_2312" = call i8* @_fetch_field(i8* %"$execptr_load_2311", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2310", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_203", i32 0, i8* null, i32 1), !dbg !246
  %"$currentAdmins_2313" = bitcast i8* %"$currentAdmins_call_2312" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_2313", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_2314" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_2314_2315" = bitcast %TName_List_ByStr20* %"$currentAdmins_2314" to i8*
  %"$_literal_cost_call_2316" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_203", i8* %"$$currentAdmins_2314_2315")
  %"$gasadd_2317" = add i64 %"$_literal_cost_call_2316", 0
  %"$gasrem_2318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2319" = icmp ugt i64 %"$gasadd_2317", %"$gasrem_2318"
  br i1 %"$gascmp_2319", label %"$out_of_gas_2320", label %"$have_gas_2321"

"$out_of_gas_2320":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2321"

"$have_gas_2321":                                 ; preds = %"$out_of_gas_2320", %entry
  %"$consume_2322" = sub i64 %"$gasrem_2318", %"$gasadd_2317"
  store i64 %"$consume_2322", i64* @_gasrem, align 8
  %"$gasrem_2323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2324" = icmp ugt i64 1, %"$gasrem_2323"
  br i1 %"$gascmp_2324", label %"$out_of_gas_2325", label %"$have_gas_2326"

"$out_of_gas_2325":                               ; preds = %"$have_gas_2321"
  call void @_out_of_gas()
  br label %"$have_gas_2326"

"$have_gas_2326":                                 ; preds = %"$out_of_gas_2325", %"$have_gas_2321"
  %"$consume_2327" = sub i64 %"$gasrem_2323", 1
  store i64 %"$consume_2327", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_2328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2329" = icmp ugt i64 1, %"$gasrem_2328"
  br i1 %"$gascmp_2329", label %"$out_of_gas_2330", label %"$have_gas_2331"

"$out_of_gas_2330":                               ; preds = %"$have_gas_2326"
  call void @_out_of_gas()
  br label %"$have_gas_2331"

"$have_gas_2331":                                 ; preds = %"$out_of_gas_2330", %"$have_gas_2326"
  %"$consume_2332" = sub i64 %"$gasrem_2328", 1
  store i64 %"$consume_2332", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_2333" = load { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_2334" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_2333", 0
  %"$ud-registry.listByStr20Contains_envptr_2335" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_2333", 1
  %"$currentAdmins_2336" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains__sender_2337" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.listByStr20Contains__sender_2337", align 1
  %"$ud-registry.listByStr20Contains_call_2338" = call %TName_Bool* %"$ud-registry.listByStr20Contains_fptr_2334"(i8* %"$ud-registry.listByStr20Contains_envptr_2335", %TName_List_ByStr20* %"$currentAdmins_2336", [20 x i8]* %"$ud-registry.listByStr20Contains__sender_2337"), !dbg !247
  store %TName_Bool* %"$ud-registry.listByStr20Contains_call_2338", %TName_Bool** %isSenderAdmin, align 8, !dbg !247
  %"$gasrem_2339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2340" = icmp ugt i64 2, %"$gasrem_2339"
  br i1 %"$gascmp_2340", label %"$out_of_gas_2341", label %"$have_gas_2342"

"$out_of_gas_2341":                               ; preds = %"$have_gas_2331"
  call void @_out_of_gas()
  br label %"$have_gas_2342"

"$have_gas_2342":                                 ; preds = %"$out_of_gas_2341", %"$have_gas_2331"
  %"$consume_2343" = sub i64 %"$gasrem_2339", 2
  store i64 %"$consume_2343", i64* @_gasrem, align 8
  %"$isSenderAdmin_2345" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_2346" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_2345", i32 0, i32 0
  %"$isSenderAdmin_tag_2347" = load i8, i8* %"$isSenderAdmin_tag_2346", align 1
  switch i8 %"$isSenderAdmin_tag_2347", label %"$empty_default_2348" [
    i8 0, label %"$True_2349"
    i8 1, label %"$False_2471"
  ], !dbg !248

"$True_2349":                                     ; preds = %"$have_gas_2342"
  %"$isSenderAdmin_2350" = bitcast %TName_Bool* %"$isSenderAdmin_2345" to %CName_True*
  %"$gasrem_2351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2352" = icmp ugt i64 1, %"$gasrem_2351"
  br i1 %"$gascmp_2352", label %"$out_of_gas_2353", label %"$have_gas_2354"

"$out_of_gas_2353":                               ; preds = %"$True_2349"
  call void @_out_of_gas()
  br label %"$have_gas_2354"

"$have_gas_2354":                                 ; preds = %"$out_of_gas_2353", %"$True_2349"
  %"$consume_2355" = sub i64 %"$gasrem_2351", 1
  store i64 %"$consume_2355", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_2356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2357" = icmp ugt i64 1, %"$gasrem_2356"
  br i1 %"$gascmp_2357", label %"$out_of_gas_2358", label %"$have_gas_2359"

"$out_of_gas_2358":                               ; preds = %"$have_gas_2354"
  call void @_out_of_gas()
  br label %"$have_gas_2359"

"$have_gas_2359":                                 ; preds = %"$out_of_gas_2358", %"$have_gas_2354"
  %"$consume_2360" = sub i64 %"$gasrem_2356", 1
  store i64 %"$consume_2360", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_2361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2362" = icmp ugt i64 1, %"$gasrem_2361"
  br i1 %"$gascmp_2362", label %"$out_of_gas_2363", label %"$have_gas_2364"

"$out_of_gas_2363":                               ; preds = %"$have_gas_2359"
  call void @_out_of_gas()
  br label %"$have_gas_2364"

"$have_gas_2364":                                 ; preds = %"$out_of_gas_2363", %"$have_gas_2359"
  %"$consume_2365" = sub i64 %"$gasrem_2361", 1
  store i64 %"$consume_2365", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Excludes_2366" = load { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* @ud-registry.listByStr20Excludes, align 8
  %"$ud-registry.listByStr20Excludes_fptr_2367" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_2366", 0
  %"$ud-registry.listByStr20Excludes_envptr_2368" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_2366", 1
  %"$currentAdmins_2369" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Excludes_address_2370" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.listByStr20Excludes_address_2370", align 1
  %"$ud-registry.listByStr20Excludes_call_2371" = call %TName_Bool* %"$ud-registry.listByStr20Excludes_fptr_2367"(i8* %"$ud-registry.listByStr20Excludes_envptr_2368", %TName_List_ByStr20* %"$currentAdmins_2369", [20 x i8]* %"$ud-registry.listByStr20Excludes_address_2370"), !dbg !249
  store %TName_Bool* %"$ud-registry.listByStr20Excludes_call_2371", %TName_Bool** %b, align 8, !dbg !249
  %"$gasrem_2372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2373" = icmp ugt i64 1, %"$gasrem_2372"
  br i1 %"$gascmp_2373", label %"$out_of_gas_2374", label %"$have_gas_2375"

"$out_of_gas_2374":                               ; preds = %"$have_gas_2364"
  call void @_out_of_gas()
  br label %"$have_gas_2375"

"$have_gas_2375":                                 ; preds = %"$out_of_gas_2374", %"$have_gas_2364"
  %"$consume_2376" = sub i64 %"$gasrem_2372", 1
  store i64 %"$consume_2376", i64* @_gasrem, align 8
  %"$ud-registry.xandb_2377" = load { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8
  %"$ud-registry.xandb_fptr_2378" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_2377", 0
  %"$ud-registry.xandb_envptr_2379" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_2377", 1
  %"$b_2380" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$ud-registry.xandb_call_2381" = call %TName_Bool* %"$ud-registry.xandb_fptr_2378"(i8* %"$ud-registry.xandb_envptr_2379", %TName_Bool* %"$b_2380", %TName_Bool* %isApproved), !dbg !252
  store %TName_Bool* %"$ud-registry.xandb_call_2381", %TName_Bool** %needsToChange, align 8, !dbg !252
  %"$gasrem_2382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2383" = icmp ugt i64 2, %"$gasrem_2382"
  br i1 %"$gascmp_2383", label %"$out_of_gas_2384", label %"$have_gas_2385"

"$out_of_gas_2384":                               ; preds = %"$have_gas_2375"
  call void @_out_of_gas()
  br label %"$have_gas_2385"

"$have_gas_2385":                                 ; preds = %"$out_of_gas_2384", %"$have_gas_2375"
  %"$consume_2386" = sub i64 %"$gasrem_2382", 2
  store i64 %"$consume_2386", i64* @_gasrem, align 8
  %"$needsToChange_2388" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_2389" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_2388", i32 0, i32 0
  %"$needsToChange_tag_2390" = load i8, i8* %"$needsToChange_tag_2389", align 1
  switch i8 %"$needsToChange_tag_2390", label %"$default_2391" [
    i8 0, label %"$True_2392"
  ], !dbg !253

"$True_2392":                                     ; preds = %"$have_gas_2385"
  %"$needsToChange_2393" = bitcast %TName_Bool* %"$needsToChange_2388" to %CName_True*
  %"$gasrem_2394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2395" = icmp ugt i64 1, %"$gasrem_2394"
  br i1 %"$gascmp_2395", label %"$out_of_gas_2396", label %"$have_gas_2397"

"$out_of_gas_2396":                               ; preds = %"$True_2392"
  call void @_out_of_gas()
  br label %"$have_gas_2397"

"$have_gas_2397":                                 ; preds = %"$out_of_gas_2396", %"$True_2392"
  %"$consume_2398" = sub i64 %"$gasrem_2394", 1
  store i64 %"$consume_2398", i64* @_gasrem, align 8
  %newAdmins = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_2399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2400" = icmp ugt i64 2, %"$gasrem_2399"
  br i1 %"$gascmp_2400", label %"$out_of_gas_2401", label %"$have_gas_2402"

"$out_of_gas_2401":                               ; preds = %"$have_gas_2397"
  call void @_out_of_gas()
  br label %"$have_gas_2402"

"$have_gas_2402":                                 ; preds = %"$out_of_gas_2401", %"$have_gas_2397"
  %"$consume_2403" = sub i64 %"$gasrem_2399", 2
  store i64 %"$consume_2403", i64* @_gasrem, align 8
  %"$isApproved_tag_2405" = getelementptr inbounds %TName_Bool, %TName_Bool* %isApproved, i32 0, i32 0
  %"$isApproved_tag_2406" = load i8, i8* %"$isApproved_tag_2405", align 1
  switch i8 %"$isApproved_tag_2406", label %"$empty_default_2407" [
    i8 0, label %"$True_2408"
    i8 1, label %"$False_2421"
  ], !dbg !254

"$True_2408":                                     ; preds = %"$have_gas_2402"
  %"$isApproved_2409" = bitcast %TName_Bool* %isApproved to %CName_True*
  %"$gasrem_2410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2411" = icmp ugt i64 1, %"$gasrem_2410"
  br i1 %"$gascmp_2411", label %"$out_of_gas_2412", label %"$have_gas_2413"

"$out_of_gas_2412":                               ; preds = %"$True_2408"
  call void @_out_of_gas()
  br label %"$have_gas_2413"

"$have_gas_2413":                                 ; preds = %"$out_of_gas_2412", %"$True_2408"
  %"$consume_2414" = sub i64 %"$gasrem_2410", 1
  store i64 %"$consume_2414", i64* @_gasrem, align 8
  %"$currentAdmins_2415" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$adtval_2416_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2416_salloc" = call i8* @_salloc(i8* %"$adtval_2416_load", i64 29)
  %"$adtval_2416" = bitcast i8* %"$adtval_2416_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_2417" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2416", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2417", align 1
  %"$adtgep_2418" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2416", i32 0, i32 1
  store [20 x i8] %address, [20 x i8]* %"$adtgep_2418", align 1
  %"$adtgep_2419" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2416", i32 0, i32 2
  store %TName_List_ByStr20* %"$currentAdmins_2415", %TName_List_ByStr20** %"$adtgep_2419", align 8
  %"$adtptr_2420" = bitcast %CName_Cons_ByStr20* %"$adtval_2416" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2420", %TName_List_ByStr20** %newAdmins, align 8, !dbg !257
  br label %"$matchsucc_2404"

"$False_2421":                                    ; preds = %"$have_gas_2402"
  %"$isApproved_2422" = bitcast %TName_Bool* %isApproved to %CName_False*
  %"$gasrem_2423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2424" = icmp ugt i64 1, %"$gasrem_2423"
  br i1 %"$gascmp_2424", label %"$out_of_gas_2425", label %"$have_gas_2426"

"$out_of_gas_2425":                               ; preds = %"$False_2421"
  call void @_out_of_gas()
  br label %"$have_gas_2426"

"$have_gas_2426":                                 ; preds = %"$out_of_gas_2425", %"$False_2421"
  %"$consume_2427" = sub i64 %"$gasrem_2423", 1
  store i64 %"$consume_2427", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20FilterOut_2428" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8
  %"$ud-registry.listByStr20FilterOut_fptr_2429" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_2428", 0
  %"$ud-registry.listByStr20FilterOut_envptr_2430" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_2428", 1
  %"$currentAdmins_2431" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20FilterOut_address_2432" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.listByStr20FilterOut_address_2432", align 1
  %"$ud-registry.listByStr20FilterOut_call_2433" = call %TName_List_ByStr20* %"$ud-registry.listByStr20FilterOut_fptr_2429"(i8* %"$ud-registry.listByStr20FilterOut_envptr_2430", %TName_List_ByStr20* %"$currentAdmins_2431", [20 x i8]* %"$ud-registry.listByStr20FilterOut_address_2432"), !dbg !260
  store %TName_List_ByStr20* %"$ud-registry.listByStr20FilterOut_call_2433", %TName_List_ByStr20** %newAdmins, align 8, !dbg !260
  br label %"$matchsucc_2404"

"$empty_default_2407":                            ; preds = %"$have_gas_2402"
  br label %"$matchsucc_2404"

"$matchsucc_2404":                                ; preds = %"$have_gas_2426", %"$have_gas_2413", %"$empty_default_2407"
  %"$newAdmins_2434" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newAdmins, align 8
  %"$$newAdmins_2434_2435" = bitcast %TName_List_ByStr20* %"$newAdmins_2434" to i8*
  %"$_literal_cost_call_2436" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_203", i8* %"$$newAdmins_2434_2435")
  %"$gasrem_2437" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2438" = icmp ugt i64 %"$_literal_cost_call_2436", %"$gasrem_2437"
  br i1 %"$gascmp_2438", label %"$out_of_gas_2439", label %"$have_gas_2440"

"$out_of_gas_2439":                               ; preds = %"$matchsucc_2404"
  call void @_out_of_gas()
  br label %"$have_gas_2440"

"$have_gas_2440":                                 ; preds = %"$out_of_gas_2439", %"$matchsucc_2404"
  %"$consume_2441" = sub i64 %"$gasrem_2437", %"$_literal_cost_call_2436"
  store i64 %"$consume_2441", i64* @_gasrem, align 8
  %"$execptr_load_2442" = load i8*, i8** @_execptr, align 8
  %"$newAdmins_2444" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newAdmins, align 8
  %"$update_value_2445" = bitcast %TName_List_ByStr20* %"$newAdmins_2444" to i8*
  call void @_update_field(i8* %"$execptr_load_2442", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_2443", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_203", i32 0, i8* null, i8* %"$update_value_2445"), !dbg !262
  %"$gasrem_2446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2447" = icmp ugt i64 1, %"$gasrem_2446"
  br i1 %"$gascmp_2447", label %"$out_of_gas_2448", label %"$have_gas_2449"

"$out_of_gas_2448":                               ; preds = %"$have_gas_2440"
  call void @_out_of_gas()
  br label %"$have_gas_2449"

"$have_gas_2449":                                 ; preds = %"$out_of_gas_2448", %"$have_gas_2440"
  %"$consume_2450" = sub i64 %"$gasrem_2446", 1
  store i64 %"$consume_2450", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_2451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2452" = icmp ugt i64 1, %"$gasrem_2451"
  br i1 %"$gascmp_2452", label %"$out_of_gas_2453", label %"$have_gas_2454"

"$out_of_gas_2453":                               ; preds = %"$have_gas_2449"
  call void @_out_of_gas()
  br label %"$have_gas_2454"

"$have_gas_2454":                                 ; preds = %"$out_of_gas_2453", %"$have_gas_2449"
  %"$consume_2455" = sub i64 %"$gasrem_2451", 1
  store i64 %"$consume_2455", i64* @_gasrem, align 8
  %"$ud-registry.eAdminSet_2456" = load { i8* (i8*, [20 x i8]*, %TName_Bool*)*, i8* }, { i8* (i8*, [20 x i8]*, %TName_Bool*)*, i8* }* @ud-registry.eAdminSet, align 8
  %"$ud-registry.eAdminSet_fptr_2457" = extractvalue { i8* (i8*, [20 x i8]*, %TName_Bool*)*, i8* } %"$ud-registry.eAdminSet_2456", 0
  %"$ud-registry.eAdminSet_envptr_2458" = extractvalue { i8* (i8*, [20 x i8]*, %TName_Bool*)*, i8* } %"$ud-registry.eAdminSet_2456", 1
  %"$ud-registry.eAdminSet_address_2459" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eAdminSet_address_2459", align 1
  %"$ud-registry.eAdminSet_call_2460" = call i8* %"$ud-registry.eAdminSet_fptr_2457"(i8* %"$ud-registry.eAdminSet_envptr_2458", [20 x i8]* %"$ud-registry.eAdminSet_address_2459", %TName_Bool* %isApproved), !dbg !263
  store i8* %"$ud-registry.eAdminSet_call_2460", i8** %e, align 8, !dbg !263
  %"$e_2461" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_2463" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_2461")
  %"$gasrem_2464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2465" = icmp ugt i64 %"$_literal_cost_call_2463", %"$gasrem_2464"
  br i1 %"$gascmp_2465", label %"$out_of_gas_2466", label %"$have_gas_2467"

"$out_of_gas_2466":                               ; preds = %"$have_gas_2454"
  call void @_out_of_gas()
  br label %"$have_gas_2467"

"$have_gas_2467":                                 ; preds = %"$out_of_gas_2466", %"$have_gas_2454"
  %"$consume_2468" = sub i64 %"$gasrem_2464", %"$_literal_cost_call_2463"
  store i64 %"$consume_2468", i64* @_gasrem, align 8
  %"$execptr_load_2469" = load i8*, i8** @_execptr, align 8
  %"$e_2470" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_2469", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_2470"), !dbg !264
  br label %"$matchsucc_2387"

"$default_2391":                                  ; preds = %"$have_gas_2385"
  br label %"$joinp_4"

"$joinp_4":                                       ; preds = %"$default_2391"
  br label %"$matchsucc_2387"

"$matchsucc_2387":                                ; preds = %"$have_gas_2467", %"$joinp_4"
  br label %"$matchsucc_2344"

"$False_2471":                                    ; preds = %"$have_gas_2342"
  %"$isSenderAdmin_2472" = bitcast %TName_Bool* %"$isSenderAdmin_2345" to %CName_False*
  %"$gasrem_2473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2474" = icmp ugt i64 1, %"$gasrem_2473"
  br i1 %"$gascmp_2474", label %"$out_of_gas_2475", label %"$have_gas_2476"

"$out_of_gas_2475":                               ; preds = %"$False_2471"
  call void @_out_of_gas()
  br label %"$have_gas_2476"

"$have_gas_2476":                                 ; preds = %"$out_of_gas_2475", %"$False_2471"
  %"$consume_2477" = sub i64 %"$gasrem_2473", 1
  store i64 %"$consume_2477", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_2478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2479" = icmp ugt i64 1, %"$gasrem_2478"
  br i1 %"$gascmp_2479", label %"$out_of_gas_2480", label %"$have_gas_2481"

"$out_of_gas_2480":                               ; preds = %"$have_gas_2476"
  call void @_out_of_gas()
  br label %"$have_gas_2481"

"$have_gas_2481":                                 ; preds = %"$out_of_gas_2480", %"$have_gas_2476"
  %"$consume_2482" = sub i64 %"$gasrem_2478", 1
  store i64 %"$consume_2482", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_2483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2484" = icmp ugt i64 1, %"$gasrem_2483"
  br i1 %"$gascmp_2484", label %"$out_of_gas_2485", label %"$have_gas_2486"

"$out_of_gas_2485":                               ; preds = %"$have_gas_2481"
  call void @_out_of_gas()
  br label %"$have_gas_2486"

"$have_gas_2486":                                 ; preds = %"$out_of_gas_2485", %"$have_gas_2481"
  %"$consume_2487" = sub i64 %"$gasrem_2483", 1
  store i64 %"$consume_2487", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$stringlit_2488", i32 0, i32 0), i32 26 }, %String* %m, align 8, !dbg !265
  %"$gasrem_2489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2490" = icmp ugt i64 1, %"$gasrem_2489"
  br i1 %"$gascmp_2490", label %"$out_of_gas_2491", label %"$have_gas_2492"

"$out_of_gas_2491":                               ; preds = %"$have_gas_2486"
  call void @_out_of_gas()
  br label %"$have_gas_2492"

"$have_gas_2492":                                 ; preds = %"$out_of_gas_2491", %"$have_gas_2486"
  %"$consume_2493" = sub i64 %"$gasrem_2489", 1
  store i64 %"$consume_2493", i64* @_gasrem, align 8
  %"$ud-registry.eError_37" = alloca i8*, align 8
  %"$ud-registry.eError_2494" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_2495" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_2494", 0
  %"$ud-registry.eError_envptr_2496" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_2494", 1
  %"$m_2497" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_2498" = call i8* %"$ud-registry.eError_fptr_2495"(i8* %"$ud-registry.eError_envptr_2496", %String %"$m_2497"), !dbg !267
  store i8* %"$ud-registry.eError_call_2498", i8** %"$ud-registry.eError_37", align 8, !dbg !267
  %"$$ud-registry.eError_37_2499" = load i8*, i8** %"$ud-registry.eError_37", align 8
  store i8* %"$$ud-registry.eError_37_2499", i8** %e1, align 8, !dbg !267
  %"$e_2500" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_2502" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_2500")
  %"$gasrem_2503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2504" = icmp ugt i64 %"$_literal_cost_call_2502", %"$gasrem_2503"
  br i1 %"$gascmp_2504", label %"$out_of_gas_2505", label %"$have_gas_2506"

"$out_of_gas_2505":                               ; preds = %"$have_gas_2492"
  call void @_out_of_gas()
  br label %"$have_gas_2506"

"$have_gas_2506":                                 ; preds = %"$out_of_gas_2505", %"$have_gas_2492"
  %"$consume_2507" = sub i64 %"$gasrem_2503", %"$_literal_cost_call_2502"
  store i64 %"$consume_2507", i64* @_gasrem, align 8
  %"$execptr_load_2508" = load i8*, i8** @_execptr, align 8
  %"$e_2509" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_2508", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_2509"), !dbg !268
  br label %"$matchsucc_2344"

"$empty_default_2348":                            ; preds = %"$have_gas_2342"
  br label %"$matchsucc_2344"

"$matchsucc_2344":                                ; preds = %"$have_gas_2506", %"$matchsucc_2387", %"$empty_default_2348"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) !dbg !269 {
entry:
  %"$_amount_2511" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2512" = bitcast i8* %"$_amount_2511" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2512", align 8
  %"$_origin_2513" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2514" = bitcast i8* %"$_origin_2513" to [20 x i8]*
  %"$_sender_2515" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2516" = bitcast i8* %"$_sender_2515" to [20 x i8]*
  %"$address_2517" = getelementptr i8, i8* %0, i32 56
  %"$address_2518" = bitcast i8* %"$address_2517" to [20 x i8]*
  %"$isApproved_2519" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_2520" = bitcast i8* %"$isApproved_2519" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_2520", align 8
  call void @"$setAdmin_2306"(%Uint128 %_amount, [20 x i8]* %"$_origin_2514", [20 x i8]* %"$_sender_2516", [20 x i8]* %"$address_2518", %TName_Bool* %isApproved), !dbg !270
  ret void
}

define internal void @"$approve_2521"(%Uint128 %_amount, [20 x i8]* %"$_origin_2522", [20 x i8]* %"$_sender_2523", [32 x i8]* %"$node_2524", [20 x i8]* %"$address_2525") !dbg !271 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2522", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2523", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_2524", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_2525", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_2526_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2526_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2526_salloc_load", i64 32)
  %"$indices_buf_2526_salloc" = bitcast i8* %"$indices_buf_2526_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2526" = bitcast [32 x i8]* %"$indices_buf_2526_salloc" to i8*
  %"$indices_gep_2527" = getelementptr i8, i8* %"$indices_buf_2526", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2527" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_2529" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_2530" = call i8* @_fetch_field(i8* %"$execptr_load_2529", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_2528", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_208", i32 1, i8* %"$indices_buf_2526", i32 1), !dbg !272
  %"$maybeRecord_2531" = bitcast i8* %"$maybeRecord_call_2530" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_2531", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_2532" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_2532_2533" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_2532" to i8*
  %"$_literal_cost_call_2534" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_199", i8* %"$$maybeRecord_2532_2533")
  %"$gasadd_2535" = add i64 %"$_literal_cost_call_2534", 0
  %"$gasadd_2536" = add i64 %"$gasadd_2535", 1
  %"$gasrem_2537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2538" = icmp ugt i64 %"$gasadd_2536", %"$gasrem_2537"
  br i1 %"$gascmp_2538", label %"$out_of_gas_2539", label %"$have_gas_2540"

"$out_of_gas_2539":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2540"

"$have_gas_2540":                                 ; preds = %"$out_of_gas_2539", %entry
  %"$consume_2541" = sub i64 %"$gasrem_2537", %"$gasadd_2536"
  store i64 %"$consume_2541", i64* @_gasrem, align 8
  %"$gasrem_2542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2543" = icmp ugt i64 1, %"$gasrem_2542"
  br i1 %"$gascmp_2543", label %"$out_of_gas_2544", label %"$have_gas_2545"

"$out_of_gas_2544":                               ; preds = %"$have_gas_2540"
  call void @_out_of_gas()
  br label %"$have_gas_2545"

"$have_gas_2545":                                 ; preds = %"$out_of_gas_2544", %"$have_gas_2540"
  %"$consume_2546" = sub i64 %"$gasrem_2542", 1
  store i64 %"$consume_2546", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_2547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2548" = icmp ugt i64 1, %"$gasrem_2547"
  br i1 %"$gascmp_2548", label %"$out_of_gas_2549", label %"$have_gas_2550"

"$out_of_gas_2549":                               ; preds = %"$have_gas_2545"
  call void @_out_of_gas()
  br label %"$have_gas_2550"

"$have_gas_2550":                                 ; preds = %"$out_of_gas_2549", %"$have_gas_2545"
  %"$consume_2551" = sub i64 %"$gasrem_2547", 1
  store i64 %"$consume_2551", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_38" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_2552" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_2553" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_2552", 0
  %"$ud-registry.recordMemberOwner_envptr_2554" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_2552", 1
  %"$maybeRecord_2555" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_2556" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_2553"(i8* %"$ud-registry.recordMemberOwner_envptr_2554", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_2556", %TName_Option_ud-registry.Record* %"$maybeRecord_2555"), !dbg !273
  %"$ud-registry.recordMemberOwner_ret_2557" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_2556", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_2557", [20 x i8]* %"$ud-registry.recordMemberOwner_38", align 1, !dbg !273
  %"$$ud-registry.recordMemberOwner_38_2558" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_38", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_38_2558", [20 x i8]* %recordOwner, align 1, !dbg !273
  %"$gasrem_2559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2560" = icmp ugt i64 1, %"$gasrem_2559"
  br i1 %"$gascmp_2560", label %"$out_of_gas_2561", label %"$have_gas_2562"

"$out_of_gas_2561":                               ; preds = %"$have_gas_2550"
  call void @_out_of_gas()
  br label %"$have_gas_2562"

"$have_gas_2562":                                 ; preds = %"$out_of_gas_2561", %"$have_gas_2550"
  %"$consume_2563" = sub i64 %"$gasrem_2559", 1
  store i64 %"$consume_2563", i64* @_gasrem, align 8
  %isSenderNodeOwner = alloca %TName_Bool*, align 8
  %"$gasrem_2564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2565" = icmp ugt i64 20, %"$gasrem_2564"
  br i1 %"$gascmp_2565", label %"$out_of_gas_2566", label %"$have_gas_2567"

"$out_of_gas_2566":                               ; preds = %"$have_gas_2562"
  call void @_out_of_gas()
  br label %"$have_gas_2567"

"$have_gas_2567":                                 ; preds = %"$out_of_gas_2566", %"$have_gas_2562"
  %"$consume_2568" = sub i64 %"$gasrem_2564", 20
  store i64 %"$consume_2568", i64* @_gasrem, align 8
  %"$execptr_load_2569" = load i8*, i8** @_execptr, align 8
  %"$eq__sender_2570" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_2570", align 1
  %"$$eq__sender_2570_2571" = bitcast [20 x i8]* %"$eq__sender_2570" to i8*
  %"$eq_recordOwner_2572" = alloca [20 x i8], align 1
  %"$recordOwner_2573" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_2573", [20 x i8]* %"$eq_recordOwner_2572", align 1
  %"$$eq_recordOwner_2572_2574" = bitcast [20 x i8]* %"$eq_recordOwner_2572" to i8*
  %"$eq_call_2575" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2569", i32 20, i8* %"$$eq__sender_2570_2571", i8* %"$$eq_recordOwner_2572_2574"), !dbg !274
  store %TName_Bool* %"$eq_call_2575", %TName_Bool** %isSenderNodeOwner, align 8, !dbg !274
  %"$gasrem_2577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2578" = icmp ugt i64 2, %"$gasrem_2577"
  br i1 %"$gascmp_2578", label %"$out_of_gas_2579", label %"$have_gas_2580"

"$out_of_gas_2579":                               ; preds = %"$have_gas_2567"
  call void @_out_of_gas()
  br label %"$have_gas_2580"

"$have_gas_2580":                                 ; preds = %"$out_of_gas_2579", %"$have_gas_2567"
  %"$consume_2581" = sub i64 %"$gasrem_2577", 2
  store i64 %"$consume_2581", i64* @_gasrem, align 8
  %"$isSenderNodeOwner_2583" = load %TName_Bool*, %TName_Bool** %isSenderNodeOwner, align 8
  %"$isSenderNodeOwner_tag_2584" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderNodeOwner_2583", i32 0, i32 0
  %"$isSenderNodeOwner_tag_2585" = load i8, i8* %"$isSenderNodeOwner_tag_2584", align 1
  switch i8 %"$isSenderNodeOwner_tag_2585", label %"$empty_default_2586" [
    i8 0, label %"$True_2587"
    i8 1, label %"$False_2725"
  ], !dbg !275

"$True_2587":                                     ; preds = %"$have_gas_2580"
  %"$isSenderNodeOwner_2588" = bitcast %TName_Bool* %"$isSenderNodeOwner_2583" to %CName_True*
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_2589_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2589_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2589_salloc_load", i64 32)
  %"$indices_buf_2589_salloc" = bitcast i8* %"$indices_buf_2589_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2589" = bitcast [32 x i8]* %"$indices_buf_2589_salloc" to i8*
  %"$indices_gep_2590" = getelementptr i8, i8* %"$indices_buf_2589", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_2590" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_2592" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_2593" = call i8* @_fetch_field(i8* %"$execptr_load_2592", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_2591", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_207", i32 1, i8* %"$indices_buf_2589", i32 1), !dbg !276
  %"$maybeApproved_2594" = bitcast i8* %"$maybeApproved_call_2593" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_2594", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_2595" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_2595_2596" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2595" to i8*
  %"$_literal_cost_call_2597" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_200", i8* %"$$maybeApproved_2595_2596")
  %"$gasadd_2598" = add i64 %"$_literal_cost_call_2597", 0
  %"$gasadd_2599" = add i64 %"$gasadd_2598", 1
  %"$gasrem_2600" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2601" = icmp ugt i64 %"$gasadd_2599", %"$gasrem_2600"
  br i1 %"$gascmp_2601", label %"$out_of_gas_2602", label %"$have_gas_2603"

"$out_of_gas_2602":                               ; preds = %"$True_2587"
  call void @_out_of_gas()
  br label %"$have_gas_2603"

"$have_gas_2603":                                 ; preds = %"$out_of_gas_2602", %"$True_2587"
  %"$consume_2604" = sub i64 %"$gasrem_2600", %"$gasadd_2599"
  store i64 %"$consume_2604", i64* @_gasrem, align 8
  %"$gasrem_2605" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2606" = icmp ugt i64 1, %"$gasrem_2605"
  br i1 %"$gascmp_2606", label %"$out_of_gas_2607", label %"$have_gas_2608"

"$out_of_gas_2607":                               ; preds = %"$have_gas_2603"
  call void @_out_of_gas()
  br label %"$have_gas_2608"

"$have_gas_2608":                                 ; preds = %"$out_of_gas_2607", %"$have_gas_2603"
  %"$consume_2609" = sub i64 %"$gasrem_2605", 1
  store i64 %"$consume_2609", i64* @_gasrem, align 8
  %currentlyApproved = alloca [20 x i8], align 1
  %"$gasrem_2610" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2611" = icmp ugt i64 2, %"$gasrem_2610"
  br i1 %"$gascmp_2611", label %"$out_of_gas_2612", label %"$have_gas_2613"

"$out_of_gas_2612":                               ; preds = %"$have_gas_2608"
  call void @_out_of_gas()
  br label %"$have_gas_2613"

"$have_gas_2613":                                 ; preds = %"$out_of_gas_2612", %"$have_gas_2608"
  %"$consume_2614" = sub i64 %"$gasrem_2610", 2
  store i64 %"$consume_2614", i64* @_gasrem, align 8
  %"$maybeApproved_2616" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_2617" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_2616", i32 0, i32 0
  %"$maybeApproved_tag_2618" = load i8, i8* %"$maybeApproved_tag_2617", align 1
  switch i8 %"$maybeApproved_tag_2618", label %"$empty_default_2619" [
    i8 1, label %"$None_2620"
    i8 0, label %"$Some_2628"
  ], !dbg !279

"$None_2620":                                     ; preds = %"$have_gas_2613"
  %"$maybeApproved_2621" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2616" to %CName_None_ByStr20*
  %"$gasrem_2622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2623" = icmp ugt i64 1, %"$gasrem_2622"
  br i1 %"$gascmp_2623", label %"$out_of_gas_2624", label %"$have_gas_2625"

"$out_of_gas_2624":                               ; preds = %"$None_2620"
  call void @_out_of_gas()
  br label %"$have_gas_2625"

"$have_gas_2625":                                 ; preds = %"$out_of_gas_2624", %"$None_2620"
  %"$consume_2626" = sub i64 %"$gasrem_2622", 1
  store i64 %"$consume_2626", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_2627" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_2627", [20 x i8]* %currentlyApproved, align 1, !dbg !280
  br label %"$matchsucc_2615"

"$Some_2628":                                     ; preds = %"$have_gas_2613"
  %"$maybeApproved_2629" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2616" to %CName_Some_ByStr20*
  %"$approved_gep_2630" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_2629", i32 0, i32 1
  %"$approved_load_2631" = load [20 x i8], [20 x i8]* %"$approved_gep_2630", align 1
  %approved = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_2631", [20 x i8]* %approved, align 1
  %"$gasrem_2632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2633" = icmp ugt i64 1, %"$gasrem_2632"
  br i1 %"$gascmp_2633", label %"$out_of_gas_2634", label %"$have_gas_2635"

"$out_of_gas_2634":                               ; preds = %"$Some_2628"
  call void @_out_of_gas()
  br label %"$have_gas_2635"

"$have_gas_2635":                                 ; preds = %"$out_of_gas_2634", %"$Some_2628"
  %"$consume_2636" = sub i64 %"$gasrem_2632", 1
  store i64 %"$consume_2636", i64* @_gasrem, align 8
  %"$approved_2637" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_2637", [20 x i8]* %currentlyApproved, align 1, !dbg !283
  br label %"$matchsucc_2615"

"$empty_default_2619":                            ; preds = %"$have_gas_2613"
  br label %"$matchsucc_2615"

"$matchsucc_2615":                                ; preds = %"$have_gas_2635", %"$have_gas_2625", %"$empty_default_2619"
  %"$gasrem_2638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2639" = icmp ugt i64 1, %"$gasrem_2638"
  br i1 %"$gascmp_2639", label %"$out_of_gas_2640", label %"$have_gas_2641"

"$out_of_gas_2640":                               ; preds = %"$matchsucc_2615"
  call void @_out_of_gas()
  br label %"$have_gas_2641"

"$have_gas_2641":                                 ; preds = %"$out_of_gas_2640", %"$matchsucc_2615"
  %"$consume_2642" = sub i64 %"$gasrem_2638", 1
  store i64 %"$consume_2642", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_2643" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2644" = icmp ugt i64 1, %"$gasrem_2643"
  br i1 %"$gascmp_2644", label %"$out_of_gas_2645", label %"$have_gas_2646"

"$out_of_gas_2645":                               ; preds = %"$have_gas_2641"
  call void @_out_of_gas()
  br label %"$have_gas_2646"

"$have_gas_2646":                                 ; preds = %"$out_of_gas_2645", %"$have_gas_2641"
  %"$consume_2647" = sub i64 %"$gasrem_2643", 1
  store i64 %"$consume_2647", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_2648" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2649" = icmp ugt i64 20, %"$gasrem_2648"
  br i1 %"$gascmp_2649", label %"$out_of_gas_2650", label %"$have_gas_2651"

"$out_of_gas_2650":                               ; preds = %"$have_gas_2646"
  call void @_out_of_gas()
  br label %"$have_gas_2651"

"$have_gas_2651":                                 ; preds = %"$out_of_gas_2650", %"$have_gas_2646"
  %"$consume_2652" = sub i64 %"$gasrem_2648", 20
  store i64 %"$consume_2652", i64* @_gasrem, align 8
  %"$execptr_load_2653" = load i8*, i8** @_execptr, align 8
  %"$eq_currentlyApproved_2654" = alloca [20 x i8], align 1
  %"$currentlyApproved_2655" = load [20 x i8], [20 x i8]* %currentlyApproved, align 1
  store [20 x i8] %"$currentlyApproved_2655", [20 x i8]* %"$eq_currentlyApproved_2654", align 1
  %"$$eq_currentlyApproved_2654_2656" = bitcast [20 x i8]* %"$eq_currentlyApproved_2654" to i8*
  %"$eq_address_2657" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$eq_address_2657", align 1
  %"$$eq_address_2657_2658" = bitcast [20 x i8]* %"$eq_address_2657" to i8*
  %"$eq_call_2659" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_2653", i32 20, i8* %"$$eq_currentlyApproved_2654_2656", i8* %"$$eq_address_2657_2658"), !dbg !285
  store %TName_Bool* %"$eq_call_2659", %TName_Bool** %b, align 8, !dbg !285
  %"$gasrem_2661" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2662" = icmp ugt i64 1, %"$gasrem_2661"
  br i1 %"$gascmp_2662", label %"$out_of_gas_2663", label %"$have_gas_2664"

"$out_of_gas_2663":                               ; preds = %"$have_gas_2651"
  call void @_out_of_gas()
  br label %"$have_gas_2664"

"$have_gas_2664":                                 ; preds = %"$out_of_gas_2663", %"$have_gas_2651"
  %"$consume_2665" = sub i64 %"$gasrem_2661", 1
  store i64 %"$consume_2665", i64* @_gasrem, align 8
  %"$BoolUtils.negb_39" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_2666" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_2667" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_2666", 0
  %"$BoolUtils.negb_envptr_2668" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_2666", 1
  %"$b_2669" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$BoolUtils.negb_call_2670" = call %TName_Bool* %"$BoolUtils.negb_fptr_2667"(i8* %"$BoolUtils.negb_envptr_2668", %TName_Bool* %"$b_2669"), !dbg !286
  store %TName_Bool* %"$BoolUtils.negb_call_2670", %TName_Bool** %"$BoolUtils.negb_39", align 8, !dbg !286
  %"$$BoolUtils.negb_39_2671" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_39", align 8
  store %TName_Bool* %"$$BoolUtils.negb_39_2671", %TName_Bool** %needsToChange, align 8, !dbg !286
  %"$gasrem_2672" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2673" = icmp ugt i64 2, %"$gasrem_2672"
  br i1 %"$gascmp_2673", label %"$out_of_gas_2674", label %"$have_gas_2675"

"$out_of_gas_2674":                               ; preds = %"$have_gas_2664"
  call void @_out_of_gas()
  br label %"$have_gas_2675"

"$have_gas_2675":                                 ; preds = %"$out_of_gas_2674", %"$have_gas_2664"
  %"$consume_2676" = sub i64 %"$gasrem_2672", 2
  store i64 %"$consume_2676", i64* @_gasrem, align 8
  %"$needsToChange_2678" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_2679" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_2678", i32 0, i32 0
  %"$needsToChange_tag_2680" = load i8, i8* %"$needsToChange_tag_2679", align 1
  switch i8 %"$needsToChange_tag_2680", label %"$default_2681" [
    i8 0, label %"$True_2682"
  ], !dbg !287

"$True_2682":                                     ; preds = %"$have_gas_2675"
  %"$needsToChange_2683" = bitcast %TName_Bool* %"$needsToChange_2678" to %CName_True*
  %"$_literal_cost_address_2684" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$_literal_cost_address_2684", align 1
  %"$$_literal_cost_address_2684_2685" = bitcast [20 x i8]* %"$_literal_cost_address_2684" to i8*
  %"$_literal_cost_call_2686" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", i8* %"$$_literal_cost_address_2684_2685")
  %"$gasadd_2687" = add i64 %"$_literal_cost_call_2686", 1
  %"$gasrem_2688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2689" = icmp ugt i64 %"$gasadd_2687", %"$gasrem_2688"
  br i1 %"$gascmp_2689", label %"$out_of_gas_2690", label %"$have_gas_2691"

"$out_of_gas_2690":                               ; preds = %"$True_2682"
  call void @_out_of_gas()
  br label %"$have_gas_2691"

"$have_gas_2691":                                 ; preds = %"$out_of_gas_2690", %"$True_2682"
  %"$consume_2692" = sub i64 %"$gasrem_2688", %"$gasadd_2687"
  store i64 %"$consume_2692", i64* @_gasrem, align 8
  %"$indices_buf_2693_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2693_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2693_salloc_load", i64 32)
  %"$indices_buf_2693_salloc" = bitcast i8* %"$indices_buf_2693_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2693" = bitcast [32 x i8]* %"$indices_buf_2693_salloc" to i8*
  %"$indices_gep_2694" = getelementptr i8, i8* %"$indices_buf_2693", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_2694" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast2, align 1
  %"$execptr_load_2695" = load i8*, i8** @_execptr, align 8
  %"$update_value_2697" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$update_value_2697", align 1
  %"$update_value_2698" = bitcast [20 x i8]* %"$update_value_2697" to i8*
  call void @_update_field(i8* %"$execptr_load_2695", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_2696", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_207", i32 1, i8* %"$indices_buf_2693", i8* %"$update_value_2698"), !dbg !288
  %"$gasrem_2699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2700" = icmp ugt i64 1, %"$gasrem_2699"
  br i1 %"$gascmp_2700", label %"$out_of_gas_2701", label %"$have_gas_2702"

"$out_of_gas_2701":                               ; preds = %"$have_gas_2691"
  call void @_out_of_gas()
  br label %"$have_gas_2702"

"$have_gas_2702":                                 ; preds = %"$out_of_gas_2701", %"$have_gas_2691"
  %"$consume_2703" = sub i64 %"$gasrem_2699", 1
  store i64 %"$consume_2703", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_2704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2705" = icmp ugt i64 1, %"$gasrem_2704"
  br i1 %"$gascmp_2705", label %"$out_of_gas_2706", label %"$have_gas_2707"

"$out_of_gas_2706":                               ; preds = %"$have_gas_2702"
  call void @_out_of_gas()
  br label %"$have_gas_2707"

"$have_gas_2707":                                 ; preds = %"$out_of_gas_2706", %"$have_gas_2702"
  %"$consume_2708" = sub i64 %"$gasrem_2704", 1
  store i64 %"$consume_2708", i64* @_gasrem, align 8
  %"$ud-registry.eApproved_40" = alloca i8*, align 8
  %"$ud-registry.eApproved_2709" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eApproved, align 8
  %"$ud-registry.eApproved_fptr_2710" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApproved_2709", 0
  %"$ud-registry.eApproved_envptr_2711" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eApproved_2709", 1
  %"$ud-registry.eApproved_address_2712" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eApproved_address_2712", align 1
  %"$ud-registry.eApproved_call_2713" = call i8* %"$ud-registry.eApproved_fptr_2710"(i8* %"$ud-registry.eApproved_envptr_2711", [20 x i8]* %"$ud-registry.eApproved_address_2712"), !dbg !291
  store i8* %"$ud-registry.eApproved_call_2713", i8** %"$ud-registry.eApproved_40", align 8, !dbg !291
  %"$$ud-registry.eApproved_40_2714" = load i8*, i8** %"$ud-registry.eApproved_40", align 8
  store i8* %"$$ud-registry.eApproved_40_2714", i8** %e, align 8, !dbg !291
  %"$e_2715" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_2717" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_2715")
  %"$gasrem_2718" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2719" = icmp ugt i64 %"$_literal_cost_call_2717", %"$gasrem_2718"
  br i1 %"$gascmp_2719", label %"$out_of_gas_2720", label %"$have_gas_2721"

"$out_of_gas_2720":                               ; preds = %"$have_gas_2707"
  call void @_out_of_gas()
  br label %"$have_gas_2721"

"$have_gas_2721":                                 ; preds = %"$out_of_gas_2720", %"$have_gas_2707"
  %"$consume_2722" = sub i64 %"$gasrem_2718", %"$_literal_cost_call_2717"
  store i64 %"$consume_2722", i64* @_gasrem, align 8
  %"$execptr_load_2723" = load i8*, i8** @_execptr, align 8
  %"$e_2724" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_2723", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_2724"), !dbg !292
  br label %"$matchsucc_2677"

"$default_2681":                                  ; preds = %"$have_gas_2675"
  br label %"$joinp_5"

"$joinp_5":                                       ; preds = %"$default_2681"
  br label %"$matchsucc_2677"

"$matchsucc_2677":                                ; preds = %"$have_gas_2721", %"$joinp_5"
  br label %"$matchsucc_2582"

"$False_2725":                                    ; preds = %"$have_gas_2580"
  %"$isSenderNodeOwner_2726" = bitcast %TName_Bool* %"$isSenderNodeOwner_2583" to %CName_False*
  %"$gasrem_2727" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2728" = icmp ugt i64 1, %"$gasrem_2727"
  br i1 %"$gascmp_2728", label %"$out_of_gas_2729", label %"$have_gas_2730"

"$out_of_gas_2729":                               ; preds = %"$False_2725"
  call void @_out_of_gas()
  br label %"$have_gas_2730"

"$have_gas_2730":                                 ; preds = %"$out_of_gas_2729", %"$False_2725"
  %"$consume_2731" = sub i64 %"$gasrem_2727", 1
  store i64 %"$consume_2731", i64* @_gasrem, align 8
  %e3 = alloca i8*, align 8
  %"$gasrem_2732" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2733" = icmp ugt i64 1, %"$gasrem_2732"
  br i1 %"$gascmp_2733", label %"$out_of_gas_2734", label %"$have_gas_2735"

"$out_of_gas_2734":                               ; preds = %"$have_gas_2730"
  call void @_out_of_gas()
  br label %"$have_gas_2735"

"$have_gas_2735":                                 ; preds = %"$out_of_gas_2734", %"$have_gas_2730"
  %"$consume_2736" = sub i64 %"$gasrem_2732", 1
  store i64 %"$consume_2736", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_2737" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2738" = icmp ugt i64 1, %"$gasrem_2737"
  br i1 %"$gascmp_2738", label %"$out_of_gas_2739", label %"$have_gas_2740"

"$out_of_gas_2739":                               ; preds = %"$have_gas_2735"
  call void @_out_of_gas()
  br label %"$have_gas_2740"

"$have_gas_2740":                                 ; preds = %"$out_of_gas_2739", %"$have_gas_2735"
  %"$consume_2741" = sub i64 %"$gasrem_2737", 1
  store i64 %"$consume_2741", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_2742", i32 0, i32 0), i32 21 }, %String* %m, align 8, !dbg !293
  %"$gasrem_2743" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2744" = icmp ugt i64 1, %"$gasrem_2743"
  br i1 %"$gascmp_2744", label %"$out_of_gas_2745", label %"$have_gas_2746"

"$out_of_gas_2745":                               ; preds = %"$have_gas_2740"
  call void @_out_of_gas()
  br label %"$have_gas_2746"

"$have_gas_2746":                                 ; preds = %"$out_of_gas_2745", %"$have_gas_2740"
  %"$consume_2747" = sub i64 %"$gasrem_2743", 1
  store i64 %"$consume_2747", i64* @_gasrem, align 8
  %"$ud-registry.eError_41" = alloca i8*, align 8
  %"$ud-registry.eError_2748" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_2749" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_2748", 0
  %"$ud-registry.eError_envptr_2750" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_2748", 1
  %"$m_2751" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_2752" = call i8* %"$ud-registry.eError_fptr_2749"(i8* %"$ud-registry.eError_envptr_2750", %String %"$m_2751"), !dbg !295
  store i8* %"$ud-registry.eError_call_2752", i8** %"$ud-registry.eError_41", align 8, !dbg !295
  %"$$ud-registry.eError_41_2753" = load i8*, i8** %"$ud-registry.eError_41", align 8
  store i8* %"$$ud-registry.eError_41_2753", i8** %e3, align 8, !dbg !295
  %"$e_2754" = load i8*, i8** %e3, align 8
  %"$_literal_cost_call_2756" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_2754")
  %"$gasrem_2757" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2758" = icmp ugt i64 %"$_literal_cost_call_2756", %"$gasrem_2757"
  br i1 %"$gascmp_2758", label %"$out_of_gas_2759", label %"$have_gas_2760"

"$out_of_gas_2759":                               ; preds = %"$have_gas_2746"
  call void @_out_of_gas()
  br label %"$have_gas_2760"

"$have_gas_2760":                                 ; preds = %"$out_of_gas_2759", %"$have_gas_2746"
  %"$consume_2761" = sub i64 %"$gasrem_2757", %"$_literal_cost_call_2756"
  store i64 %"$consume_2761", i64* @_gasrem, align 8
  %"$execptr_load_2762" = load i8*, i8** @_execptr, align 8
  %"$e_2763" = load i8*, i8** %e3, align 8
  call void @_event(i8* %"$execptr_load_2762", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_2763"), !dbg !296
  br label %"$matchsucc_2582"

"$empty_default_2586":                            ; preds = %"$have_gas_2580"
  br label %"$matchsucc_2582"

"$matchsucc_2582":                                ; preds = %"$have_gas_2760", %"$matchsucc_2677", %"$empty_default_2586"
  ret void
}

define void @approve(i8* %0) !dbg !297 {
entry:
  %"$_amount_2765" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2766" = bitcast i8* %"$_amount_2765" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2766", align 8
  %"$_origin_2767" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2768" = bitcast i8* %"$_origin_2767" to [20 x i8]*
  %"$_sender_2769" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2770" = bitcast i8* %"$_sender_2769" to [20 x i8]*
  %"$node_2771" = getelementptr i8, i8* %0, i32 56
  %"$node_2772" = bitcast i8* %"$node_2771" to [32 x i8]*
  %"$address_2773" = getelementptr i8, i8* %0, i32 88
  %"$address_2774" = bitcast i8* %"$address_2773" to [20 x i8]*
  call void @"$approve_2521"(%Uint128 %_amount, [20 x i8]* %"$_origin_2768", [20 x i8]* %"$_sender_2770", [32 x i8]* %"$node_2772", [20 x i8]* %"$address_2774"), !dbg !298
  ret void
}

define internal void @"$approveFor_2775"(%Uint128 %_amount, [20 x i8]* %"$_origin_2776", [20 x i8]* %"$_sender_2777", [20 x i8]* %"$address_2778", %TName_Bool* %isApproved) !dbg !299 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2776", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2777", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_2778", align 1
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_2779_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2779_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2779_salloc_load", i64 20)
  %"$indices_buf_2779_salloc" = bitcast i8* %"$indices_buf_2779_salloc_salloc" to [20 x i8]*
  %"$indices_buf_2779" = bitcast [20 x i8]* %"$indices_buf_2779_salloc" to i8*
  %"$indices_gep_2780" = getelementptr i8, i8* %"$indices_buf_2779", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2780" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_2782" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_2783" = call i8* @_fetch_field(i8* %"$execptr_load_2782", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_2781", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_206", i32 1, i8* %"$indices_buf_2779", i32 1), !dbg !300
  %"$maybeOperators_2784" = bitcast i8* %"$maybeOperators_call_2783" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_2784", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_2785" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_2785_2786" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_2785" to i8*
  %"$_literal_cost_call_2787" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_198", i8* %"$$maybeOperators_2785_2786")
  %"$gasadd_2788" = add i64 %"$_literal_cost_call_2787", 0
  %"$gasadd_2789" = add i64 %"$gasadd_2788", 1
  %"$gasrem_2790" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2791" = icmp ugt i64 %"$gasadd_2789", %"$gasrem_2790"
  br i1 %"$gascmp_2791", label %"$out_of_gas_2792", label %"$have_gas_2793"

"$out_of_gas_2792":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2793"

"$have_gas_2793":                                 ; preds = %"$out_of_gas_2792", %entry
  %"$consume_2794" = sub i64 %"$gasrem_2790", %"$gasadd_2789"
  store i64 %"$consume_2794", i64* @_gasrem, align 8
  %"$gasrem_2795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2796" = icmp ugt i64 1, %"$gasrem_2795"
  br i1 %"$gascmp_2796", label %"$out_of_gas_2797", label %"$have_gas_2798"

"$out_of_gas_2797":                               ; preds = %"$have_gas_2793"
  call void @_out_of_gas()
  br label %"$have_gas_2798"

"$have_gas_2798":                                 ; preds = %"$out_of_gas_2797", %"$have_gas_2793"
  %"$consume_2799" = sub i64 %"$gasrem_2795", 1
  store i64 %"$consume_2799", i64* @_gasrem, align 8
  %currentOperators = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_2800" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2801" = icmp ugt i64 2, %"$gasrem_2800"
  br i1 %"$gascmp_2801", label %"$out_of_gas_2802", label %"$have_gas_2803"

"$out_of_gas_2802":                               ; preds = %"$have_gas_2798"
  call void @_out_of_gas()
  br label %"$have_gas_2803"

"$have_gas_2803":                                 ; preds = %"$out_of_gas_2802", %"$have_gas_2798"
  %"$consume_2804" = sub i64 %"$gasrem_2800", 2
  store i64 %"$consume_2804", i64* @_gasrem, align 8
  %"$maybeOperators_2806" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_tag_2807" = getelementptr inbounds %"TName_Option_List_(ByStr20)", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_2806", i32 0, i32 0
  %"$maybeOperators_tag_2808" = load i8, i8* %"$maybeOperators_tag_2807", align 1
  switch i8 %"$maybeOperators_tag_2808", label %"$empty_default_2809" [
    i8 1, label %"$None_2810"
    i8 0, label %"$Some_2818"
  ], !dbg !301

"$None_2810":                                     ; preds = %"$have_gas_2803"
  %"$maybeOperators_2811" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_2806" to %"CName_None_List_(ByStr20)"*
  %"$gasrem_2812" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2813" = icmp ugt i64 1, %"$gasrem_2812"
  br i1 %"$gascmp_2813", label %"$out_of_gas_2814", label %"$have_gas_2815"

"$out_of_gas_2814":                               ; preds = %"$None_2810"
  call void @_out_of_gas()
  br label %"$have_gas_2815"

"$have_gas_2815":                                 ; preds = %"$out_of_gas_2814", %"$None_2810"
  %"$consume_2816" = sub i64 %"$gasrem_2812", 1
  store i64 %"$consume_2816", i64* @_gasrem, align 8
  %"$ud-registry.nilByStr20_2817" = load %TName_List_ByStr20*, %TName_List_ByStr20** @ud-registry.nilByStr20, align 8
  store %TName_List_ByStr20* %"$ud-registry.nilByStr20_2817", %TName_List_ByStr20** %currentOperators, align 8, !dbg !302
  br label %"$matchsucc_2805"

"$Some_2818":                                     ; preds = %"$have_gas_2803"
  %"$maybeOperators_2819" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_2806" to %"CName_Some_List_(ByStr20)"*
  %"$ops_gep_2820" = getelementptr inbounds %"CName_Some_List_(ByStr20)", %"CName_Some_List_(ByStr20)"* %"$maybeOperators_2819", i32 0, i32 1
  %"$ops_load_2821" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$ops_gep_2820", align 8
  %ops = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$ops_load_2821", %TName_List_ByStr20** %ops, align 8
  %"$gasrem_2822" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2823" = icmp ugt i64 1, %"$gasrem_2822"
  br i1 %"$gascmp_2823", label %"$out_of_gas_2824", label %"$have_gas_2825"

"$out_of_gas_2824":                               ; preds = %"$Some_2818"
  call void @_out_of_gas()
  br label %"$have_gas_2825"

"$have_gas_2825":                                 ; preds = %"$out_of_gas_2824", %"$Some_2818"
  %"$consume_2826" = sub i64 %"$gasrem_2822", 1
  store i64 %"$consume_2826", i64* @_gasrem, align 8
  %"$ops_2827" = load %TName_List_ByStr20*, %TName_List_ByStr20** %ops, align 8
  store %TName_List_ByStr20* %"$ops_2827", %TName_List_ByStr20** %currentOperators, align 8, !dbg !305
  br label %"$matchsucc_2805"

"$empty_default_2809":                            ; preds = %"$have_gas_2803"
  br label %"$matchsucc_2805"

"$matchsucc_2805":                                ; preds = %"$have_gas_2825", %"$have_gas_2815", %"$empty_default_2809"
  %"$gasrem_2828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2829" = icmp ugt i64 1, %"$gasrem_2828"
  br i1 %"$gascmp_2829", label %"$out_of_gas_2830", label %"$have_gas_2831"

"$out_of_gas_2830":                               ; preds = %"$matchsucc_2805"
  call void @_out_of_gas()
  br label %"$have_gas_2831"

"$have_gas_2831":                                 ; preds = %"$out_of_gas_2830", %"$matchsucc_2805"
  %"$consume_2832" = sub i64 %"$gasrem_2828", 1
  store i64 %"$consume_2832", i64* @_gasrem, align 8
  %needsToChange = alloca %TName_Bool*, align 8
  %"$gasrem_2833" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2834" = icmp ugt i64 1, %"$gasrem_2833"
  br i1 %"$gascmp_2834", label %"$out_of_gas_2835", label %"$have_gas_2836"

"$out_of_gas_2835":                               ; preds = %"$have_gas_2831"
  call void @_out_of_gas()
  br label %"$have_gas_2836"

"$have_gas_2836":                                 ; preds = %"$out_of_gas_2835", %"$have_gas_2831"
  %"$consume_2837" = sub i64 %"$gasrem_2833", 1
  store i64 %"$consume_2837", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_2838" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2839" = icmp ugt i64 1, %"$gasrem_2838"
  br i1 %"$gascmp_2839", label %"$out_of_gas_2840", label %"$have_gas_2841"

"$out_of_gas_2840":                               ; preds = %"$have_gas_2836"
  call void @_out_of_gas()
  br label %"$have_gas_2841"

"$have_gas_2841":                                 ; preds = %"$out_of_gas_2840", %"$have_gas_2836"
  %"$consume_2842" = sub i64 %"$gasrem_2838", 1
  store i64 %"$consume_2842", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Excludes_2843" = load { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* @ud-registry.listByStr20Excludes, align 8
  %"$ud-registry.listByStr20Excludes_fptr_2844" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_2843", 0
  %"$ud-registry.listByStr20Excludes_envptr_2845" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Excludes_2843", 1
  %"$currentOperators_2846" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$ud-registry.listByStr20Excludes_address_2847" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.listByStr20Excludes_address_2847", align 1
  %"$ud-registry.listByStr20Excludes_call_2848" = call %TName_Bool* %"$ud-registry.listByStr20Excludes_fptr_2844"(i8* %"$ud-registry.listByStr20Excludes_envptr_2845", %TName_List_ByStr20* %"$currentOperators_2846", [20 x i8]* %"$ud-registry.listByStr20Excludes_address_2847"), !dbg !307
  store %TName_Bool* %"$ud-registry.listByStr20Excludes_call_2848", %TName_Bool** %b, align 8, !dbg !307
  %"$gasrem_2849" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2850" = icmp ugt i64 1, %"$gasrem_2849"
  br i1 %"$gascmp_2850", label %"$out_of_gas_2851", label %"$have_gas_2852"

"$out_of_gas_2851":                               ; preds = %"$have_gas_2841"
  call void @_out_of_gas()
  br label %"$have_gas_2852"

"$have_gas_2852":                                 ; preds = %"$out_of_gas_2851", %"$have_gas_2841"
  %"$consume_2853" = sub i64 %"$gasrem_2849", 1
  store i64 %"$consume_2853", i64* @_gasrem, align 8
  %"$ud-registry.xandb_2854" = load { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* @ud-registry.xandb, align 8
  %"$ud-registry.xandb_fptr_2855" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_2854", 0
  %"$ud-registry.xandb_envptr_2856" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$ud-registry.xandb_2854", 1
  %"$b_2857" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$ud-registry.xandb_call_2858" = call %TName_Bool* %"$ud-registry.xandb_fptr_2855"(i8* %"$ud-registry.xandb_envptr_2856", %TName_Bool* %"$b_2857", %TName_Bool* %isApproved), !dbg !308
  store %TName_Bool* %"$ud-registry.xandb_call_2858", %TName_Bool** %needsToChange, align 8, !dbg !308
  %"$gasrem_2859" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2860" = icmp ugt i64 2, %"$gasrem_2859"
  br i1 %"$gascmp_2860", label %"$out_of_gas_2861", label %"$have_gas_2862"

"$out_of_gas_2861":                               ; preds = %"$have_gas_2852"
  call void @_out_of_gas()
  br label %"$have_gas_2862"

"$have_gas_2862":                                 ; preds = %"$out_of_gas_2861", %"$have_gas_2852"
  %"$consume_2863" = sub i64 %"$gasrem_2859", 2
  store i64 %"$consume_2863", i64* @_gasrem, align 8
  %"$needsToChange_2865" = load %TName_Bool*, %TName_Bool** %needsToChange, align 8
  %"$needsToChange_tag_2866" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$needsToChange_2865", i32 0, i32 0
  %"$needsToChange_tag_2867" = load i8, i8* %"$needsToChange_tag_2866", align 1
  switch i8 %"$needsToChange_tag_2867", label %"$default_2868" [
    i8 0, label %"$True_2869"
  ], !dbg !309

"$True_2869":                                     ; preds = %"$have_gas_2862"
  %"$needsToChange_2870" = bitcast %TName_Bool* %"$needsToChange_2865" to %CName_True*
  %"$gasrem_2871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2872" = icmp ugt i64 1, %"$gasrem_2871"
  br i1 %"$gascmp_2872", label %"$out_of_gas_2873", label %"$have_gas_2874"

"$out_of_gas_2873":                               ; preds = %"$True_2869"
  call void @_out_of_gas()
  br label %"$have_gas_2874"

"$have_gas_2874":                                 ; preds = %"$out_of_gas_2873", %"$True_2869"
  %"$consume_2875" = sub i64 %"$gasrem_2871", 1
  store i64 %"$consume_2875", i64* @_gasrem, align 8
  %newOperators = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_2876" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2877" = icmp ugt i64 2, %"$gasrem_2876"
  br i1 %"$gascmp_2877", label %"$out_of_gas_2878", label %"$have_gas_2879"

"$out_of_gas_2878":                               ; preds = %"$have_gas_2874"
  call void @_out_of_gas()
  br label %"$have_gas_2879"

"$have_gas_2879":                                 ; preds = %"$out_of_gas_2878", %"$have_gas_2874"
  %"$consume_2880" = sub i64 %"$gasrem_2876", 2
  store i64 %"$consume_2880", i64* @_gasrem, align 8
  %"$isApproved_tag_2882" = getelementptr inbounds %TName_Bool, %TName_Bool* %isApproved, i32 0, i32 0
  %"$isApproved_tag_2883" = load i8, i8* %"$isApproved_tag_2882", align 1
  switch i8 %"$isApproved_tag_2883", label %"$empty_default_2884" [
    i8 0, label %"$True_2885"
    i8 1, label %"$False_2898"
  ], !dbg !310

"$True_2885":                                     ; preds = %"$have_gas_2879"
  %"$isApproved_2886" = bitcast %TName_Bool* %isApproved to %CName_True*
  %"$gasrem_2887" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2888" = icmp ugt i64 1, %"$gasrem_2887"
  br i1 %"$gascmp_2888", label %"$out_of_gas_2889", label %"$have_gas_2890"

"$out_of_gas_2889":                               ; preds = %"$True_2885"
  call void @_out_of_gas()
  br label %"$have_gas_2890"

"$have_gas_2890":                                 ; preds = %"$out_of_gas_2889", %"$True_2885"
  %"$consume_2891" = sub i64 %"$gasrem_2887", 1
  store i64 %"$consume_2891", i64* @_gasrem, align 8
  %"$currentOperators_2892" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$adtval_2893_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_2893_salloc" = call i8* @_salloc(i8* %"$adtval_2893_load", i64 29)
  %"$adtval_2893" = bitcast i8* %"$adtval_2893_salloc" to %CName_Cons_ByStr20*
  %"$adtgep_2894" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2893", i32 0, i32 0
  store i8 0, i8* %"$adtgep_2894", align 1
  %"$adtgep_2895" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2893", i32 0, i32 1
  store [20 x i8] %address, [20 x i8]* %"$adtgep_2895", align 1
  %"$adtgep_2896" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$adtval_2893", i32 0, i32 2
  store %TName_List_ByStr20* %"$currentOperators_2892", %TName_List_ByStr20** %"$adtgep_2896", align 8
  %"$adtptr_2897" = bitcast %CName_Cons_ByStr20* %"$adtval_2893" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_2897", %TName_List_ByStr20** %newOperators, align 8, !dbg !313
  br label %"$matchsucc_2881"

"$False_2898":                                    ; preds = %"$have_gas_2879"
  %"$isApproved_2899" = bitcast %TName_Bool* %isApproved to %CName_False*
  %"$gasrem_2900" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2901" = icmp ugt i64 1, %"$gasrem_2900"
  br i1 %"$gascmp_2901", label %"$out_of_gas_2902", label %"$have_gas_2903"

"$out_of_gas_2902":                               ; preds = %"$False_2898"
  call void @_out_of_gas()
  br label %"$have_gas_2903"

"$have_gas_2903":                                 ; preds = %"$out_of_gas_2902", %"$False_2898"
  %"$consume_2904" = sub i64 %"$gasrem_2900", 1
  store i64 %"$consume_2904", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20FilterOut_2905" = load { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }, { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* @ud-registry.listByStr20FilterOut, align 8
  %"$ud-registry.listByStr20FilterOut_fptr_2906" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_2905", 0
  %"$ud-registry.listByStr20FilterOut_envptr_2907" = extractvalue { %TName_List_ByStr20* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20FilterOut_2905", 1
  %"$currentOperators_2908" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentOperators, align 8
  %"$ud-registry.listByStr20FilterOut_address_2909" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.listByStr20FilterOut_address_2909", align 1
  %"$ud-registry.listByStr20FilterOut_call_2910" = call %TName_List_ByStr20* %"$ud-registry.listByStr20FilterOut_fptr_2906"(i8* %"$ud-registry.listByStr20FilterOut_envptr_2907", %TName_List_ByStr20* %"$currentOperators_2908", [20 x i8]* %"$ud-registry.listByStr20FilterOut_address_2909"), !dbg !316
  store %TName_List_ByStr20* %"$ud-registry.listByStr20FilterOut_call_2910", %TName_List_ByStr20** %newOperators, align 8, !dbg !316
  br label %"$matchsucc_2881"

"$empty_default_2884":                            ; preds = %"$have_gas_2879"
  br label %"$matchsucc_2881"

"$matchsucc_2881":                                ; preds = %"$have_gas_2903", %"$have_gas_2890", %"$empty_default_2884"
  %"$newOperators_2911" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newOperators, align 8
  %"$$newOperators_2911_2912" = bitcast %TName_List_ByStr20* %"$newOperators_2911" to i8*
  %"$_literal_cost_call_2913" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_203", i8* %"$$newOperators_2911_2912")
  %"$gasadd_2914" = add i64 %"$_literal_cost_call_2913", 1
  %"$gasrem_2915" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2916" = icmp ugt i64 %"$gasadd_2914", %"$gasrem_2915"
  br i1 %"$gascmp_2916", label %"$out_of_gas_2917", label %"$have_gas_2918"

"$out_of_gas_2917":                               ; preds = %"$matchsucc_2881"
  call void @_out_of_gas()
  br label %"$have_gas_2918"

"$have_gas_2918":                                 ; preds = %"$out_of_gas_2917", %"$matchsucc_2881"
  %"$consume_2919" = sub i64 %"$gasrem_2915", %"$gasadd_2914"
  store i64 %"$consume_2919", i64* @_gasrem, align 8
  %"$indices_buf_2920_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2920_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2920_salloc_load", i64 20)
  %"$indices_buf_2920_salloc" = bitcast i8* %"$indices_buf_2920_salloc_salloc" to [20 x i8]*
  %"$indices_buf_2920" = bitcast [20 x i8]* %"$indices_buf_2920_salloc" to i8*
  %"$indices_gep_2921" = getelementptr i8, i8* %"$indices_buf_2920", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_2921" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_2922" = load i8*, i8** @_execptr, align 8
  %"$newOperators_2924" = load %TName_List_ByStr20*, %TName_List_ByStr20** %newOperators, align 8
  %"$update_value_2925" = bitcast %TName_List_ByStr20* %"$newOperators_2924" to i8*
  call void @_update_field(i8* %"$execptr_load_2922", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_2923", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_206", i32 1, i8* %"$indices_buf_2920", i8* %"$update_value_2925"), !dbg !318
  %"$gasrem_2926" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2927" = icmp ugt i64 1, %"$gasrem_2926"
  br i1 %"$gascmp_2927", label %"$out_of_gas_2928", label %"$have_gas_2929"

"$out_of_gas_2928":                               ; preds = %"$have_gas_2918"
  call void @_out_of_gas()
  br label %"$have_gas_2929"

"$have_gas_2929":                                 ; preds = %"$out_of_gas_2928", %"$have_gas_2918"
  %"$consume_2930" = sub i64 %"$gasrem_2926", 1
  store i64 %"$consume_2930", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_2931" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2932" = icmp ugt i64 1, %"$gasrem_2931"
  br i1 %"$gascmp_2932", label %"$out_of_gas_2933", label %"$have_gas_2934"

"$out_of_gas_2933":                               ; preds = %"$have_gas_2929"
  call void @_out_of_gas()
  br label %"$have_gas_2934"

"$have_gas_2934":                                 ; preds = %"$out_of_gas_2933", %"$have_gas_2929"
  %"$consume_2935" = sub i64 %"$gasrem_2931", 1
  store i64 %"$consume_2935", i64* @_gasrem, align 8
  %"$ud-registry.eApprovedFor_2936" = load { i8* (i8*, [20 x i8]*, [20 x i8]*, %TName_Bool*)*, i8* }, { i8* (i8*, [20 x i8]*, [20 x i8]*, %TName_Bool*)*, i8* }* @ud-registry.eApprovedFor, align 8
  %"$ud-registry.eApprovedFor_fptr_2937" = extractvalue { i8* (i8*, [20 x i8]*, [20 x i8]*, %TName_Bool*)*, i8* } %"$ud-registry.eApprovedFor_2936", 0
  %"$ud-registry.eApprovedFor_envptr_2938" = extractvalue { i8* (i8*, [20 x i8]*, [20 x i8]*, %TName_Bool*)*, i8* } %"$ud-registry.eApprovedFor_2936", 1
  %"$ud-registry.eApprovedFor__sender_2939" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.eApprovedFor__sender_2939", align 1
  %"$ud-registry.eApprovedFor_address_2940" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eApprovedFor_address_2940", align 1
  %"$ud-registry.eApprovedFor_call_2941" = call i8* %"$ud-registry.eApprovedFor_fptr_2937"(i8* %"$ud-registry.eApprovedFor_envptr_2938", [20 x i8]* %"$ud-registry.eApprovedFor__sender_2939", [20 x i8]* %"$ud-registry.eApprovedFor_address_2940", %TName_Bool* %isApproved), !dbg !319
  store i8* %"$ud-registry.eApprovedFor_call_2941", i8** %e, align 8, !dbg !319
  %"$e_2942" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_2944" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_2942")
  %"$gasrem_2945" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2946" = icmp ugt i64 %"$_literal_cost_call_2944", %"$gasrem_2945"
  br i1 %"$gascmp_2946", label %"$out_of_gas_2947", label %"$have_gas_2948"

"$out_of_gas_2947":                               ; preds = %"$have_gas_2934"
  call void @_out_of_gas()
  br label %"$have_gas_2948"

"$have_gas_2948":                                 ; preds = %"$out_of_gas_2947", %"$have_gas_2934"
  %"$consume_2949" = sub i64 %"$gasrem_2945", %"$_literal_cost_call_2944"
  store i64 %"$consume_2949", i64* @_gasrem, align 8
  %"$execptr_load_2950" = load i8*, i8** @_execptr, align 8
  %"$e_2951" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_2950", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_2951"), !dbg !320
  br label %"$matchsucc_2864"

"$default_2868":                                  ; preds = %"$have_gas_2862"
  br label %"$joinp_6"

"$joinp_6":                                       ; preds = %"$default_2868"
  br label %"$matchsucc_2864"

"$matchsucc_2864":                                ; preds = %"$have_gas_2948", %"$joinp_6"
  ret void
}

define void @approveFor(i8* %0) !dbg !321 {
entry:
  %"$_amount_2953" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2954" = bitcast i8* %"$_amount_2953" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2954", align 8
  %"$_origin_2955" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2956" = bitcast i8* %"$_origin_2955" to [20 x i8]*
  %"$_sender_2957" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2958" = bitcast i8* %"$_sender_2957" to [20 x i8]*
  %"$address_2959" = getelementptr i8, i8* %0, i32 56
  %"$address_2960" = bitcast i8* %"$address_2959" to [20 x i8]*
  %"$isApproved_2961" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_2962" = bitcast i8* %"$isApproved_2961" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_2962", align 8
  call void @"$approveFor_2775"(%Uint128 %_amount, [20 x i8]* %"$_origin_2956", [20 x i8]* %"$_sender_2958", [20 x i8]* %"$address_2960", %TName_Bool* %isApproved), !dbg !322
  ret void
}

define internal void @"$configureNode_2963"(%Uint128 %_amount, [20 x i8]* %"$_origin_2964", [20 x i8]* %"$_sender_2965", [32 x i8]* %"$node_2966", [20 x i8]* %"$owner_2967", [20 x i8]* %"$resolver_2968") !dbg !323 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2964", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2965", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_2966", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_2967", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_2968", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_2969_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2969_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2969_salloc_load", i64 32)
  %"$indices_buf_2969_salloc" = bitcast i8* %"$indices_buf_2969_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2969" = bitcast [32 x i8]* %"$indices_buf_2969_salloc" to i8*
  %"$indices_gep_2970" = getelementptr i8, i8* %"$indices_buf_2969", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2970" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_2972" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_2973" = call i8* @_fetch_field(i8* %"$execptr_load_2972", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_2971", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_208", i32 1, i8* %"$indices_buf_2969", i32 1), !dbg !324
  %"$maybeRecord_2974" = bitcast i8* %"$maybeRecord_call_2973" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_2974", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_2975" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_2975_2976" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_2975" to i8*
  %"$_literal_cost_call_2977" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_199", i8* %"$$maybeRecord_2975_2976")
  %"$gasadd_2978" = add i64 %"$_literal_cost_call_2977", 0
  %"$gasadd_2979" = add i64 %"$gasadd_2978", 1
  %"$gasrem_2980" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2981" = icmp ugt i64 %"$gasadd_2979", %"$gasrem_2980"
  br i1 %"$gascmp_2981", label %"$out_of_gas_2982", label %"$have_gas_2983"

"$out_of_gas_2982":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2983"

"$have_gas_2983":                                 ; preds = %"$out_of_gas_2982", %entry
  %"$consume_2984" = sub i64 %"$gasrem_2980", %"$gasadd_2979"
  store i64 %"$consume_2984", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_2985_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2985_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2985_salloc_load", i64 32)
  %"$indices_buf_2985_salloc" = bitcast i8* %"$indices_buf_2985_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2985" = bitcast [32 x i8]* %"$indices_buf_2985_salloc" to i8*
  %"$indices_gep_2986" = getelementptr i8, i8* %"$indices_buf_2985", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_2986" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_2988" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_2989" = call i8* @_fetch_field(i8* %"$execptr_load_2988", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_2987", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_207", i32 1, i8* %"$indices_buf_2985", i32 1), !dbg !325
  %"$maybeApproved_2990" = bitcast i8* %"$maybeApproved_call_2989" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_2990", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_2991" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_2991_2992" = bitcast %TName_Option_ByStr20* %"$maybeApproved_2991" to i8*
  %"$_literal_cost_call_2993" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_200", i8* %"$$maybeApproved_2991_2992")
  %"$gasadd_2994" = add i64 %"$_literal_cost_call_2993", 0
  %"$gasadd_2995" = add i64 %"$gasadd_2994", 1
  %"$gasrem_2996" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2997" = icmp ugt i64 %"$gasadd_2995", %"$gasrem_2996"
  br i1 %"$gascmp_2997", label %"$out_of_gas_2998", label %"$have_gas_2999"

"$out_of_gas_2998":                               ; preds = %"$have_gas_2983"
  call void @_out_of_gas()
  br label %"$have_gas_2999"

"$have_gas_2999":                                 ; preds = %"$out_of_gas_2998", %"$have_gas_2983"
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
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_3006" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3007" = icmp ugt i64 1, %"$gasrem_3006"
  br i1 %"$gascmp_3007", label %"$out_of_gas_3008", label %"$have_gas_3009"

"$out_of_gas_3008":                               ; preds = %"$have_gas_3004"
  call void @_out_of_gas()
  br label %"$have_gas_3009"

"$have_gas_3009":                                 ; preds = %"$out_of_gas_3008", %"$have_gas_3004"
  %"$consume_3010" = sub i64 %"$gasrem_3006", 1
  store i64 %"$consume_3010", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_42" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_3011" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_3012" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3011", 0
  %"$ud-registry.recordMemberOwner_envptr_3013" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3011", 1
  %"$maybeRecord_3014" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_3015" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_3012"(i8* %"$ud-registry.recordMemberOwner_envptr_3013", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3015", %TName_Option_ud-registry.Record* %"$maybeRecord_3014"), !dbg !326
  %"$ud-registry.recordMemberOwner_ret_3016" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3015", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3016", [20 x i8]* %"$ud-registry.recordMemberOwner_42", align 1, !dbg !326
  %"$$ud-registry.recordMemberOwner_42_3017" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_42", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_42_3017", [20 x i8]* %recordOwner, align 1, !dbg !326
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3018_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3018_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3018_salloc_load", i64 20)
  %"$indices_buf_3018_salloc" = bitcast i8* %"$indices_buf_3018_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3018" = bitcast [20 x i8]* %"$indices_buf_3018_salloc" to i8*
  %"$recordOwner_3019" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_3020" = getelementptr i8, i8* %"$indices_buf_3018", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3020" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3019", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_3022" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3023" = call i8* @_fetch_field(i8* %"$execptr_load_3022", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3021", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_206", i32 1, i8* %"$indices_buf_3018", i32 1), !dbg !327
  %"$maybeOperators_3024" = bitcast i8* %"$maybeOperators_call_3023" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3024", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3025" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3025_3026" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3025" to i8*
  %"$_literal_cost_call_3027" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_198", i8* %"$$maybeOperators_3025_3026")
  %"$gasadd_3028" = add i64 %"$_literal_cost_call_3027", 0
  %"$gasadd_3029" = add i64 %"$gasadd_3028", 1
  %"$gasrem_3030" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3031" = icmp ugt i64 %"$gasadd_3029", %"$gasrem_3030"
  br i1 %"$gascmp_3031", label %"$out_of_gas_3032", label %"$have_gas_3033"

"$out_of_gas_3032":                               ; preds = %"$have_gas_3009"
  call void @_out_of_gas()
  br label %"$have_gas_3033"

"$have_gas_3033":                                 ; preds = %"$out_of_gas_3032", %"$have_gas_3009"
  %"$consume_3034" = sub i64 %"$gasrem_3030", %"$gasadd_3029"
  store i64 %"$consume_3034", i64* @_gasrem, align 8
  %"$gasrem_3035" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3036" = icmp ugt i64 1, %"$gasrem_3035"
  br i1 %"$gascmp_3036", label %"$out_of_gas_3037", label %"$have_gas_3038"

"$out_of_gas_3037":                               ; preds = %"$have_gas_3033"
  call void @_out_of_gas()
  br label %"$have_gas_3038"

"$have_gas_3038":                                 ; preds = %"$out_of_gas_3037", %"$have_gas_3033"
  %"$consume_3039" = sub i64 %"$gasrem_3035", 1
  store i64 %"$consume_3039", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_3040" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3041" = icmp ugt i64 1, %"$gasrem_3040"
  br i1 %"$gascmp_3041", label %"$out_of_gas_3042", label %"$have_gas_3043"

"$out_of_gas_3042":                               ; preds = %"$have_gas_3038"
  call void @_out_of_gas()
  br label %"$have_gas_3043"

"$have_gas_3043":                                 ; preds = %"$out_of_gas_3042", %"$have_gas_3038"
  %"$consume_3044" = sub i64 %"$gasrem_3040", 1
  store i64 %"$consume_3044", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_3045" = load { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_3046" = extractvalue { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$ud-registry.getIsOAO_3045", 0
  %"$ud-registry.getIsOAO_envptr_3047" = extractvalue { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$ud-registry.getIsOAO_3045", 1
  %"$ud-registry.getIsOAO__sender_3048" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_3048", align 1
  %"$ud-registry.getIsOAO_recordOwner_3049" = alloca [20 x i8], align 1
  %"$recordOwner_3050" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3050", [20 x i8]* %"$ud-registry.getIsOAO_recordOwner_3049", align 1
  %"$maybeApproved_3051" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeOperators_3052" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$ud-registry.getIsOAO_call_3053" = call %TName_Bool* %"$ud-registry.getIsOAO_fptr_3046"(i8* %"$ud-registry.getIsOAO_envptr_3047", [20 x i8]* %"$ud-registry.getIsOAO__sender_3048", [20 x i8]* %"$ud-registry.getIsOAO_recordOwner_3049", %TName_Option_ByStr20* %"$maybeApproved_3051", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3052"), !dbg !328
  store %TName_Bool* %"$ud-registry.getIsOAO_call_3053", %TName_Bool** %isSenderOAO, align 8, !dbg !328
  %"$gasrem_3054" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3055" = icmp ugt i64 2, %"$gasrem_3054"
  br i1 %"$gascmp_3055", label %"$out_of_gas_3056", label %"$have_gas_3057"

"$out_of_gas_3056":                               ; preds = %"$have_gas_3043"
  call void @_out_of_gas()
  br label %"$have_gas_3057"

"$have_gas_3057":                                 ; preds = %"$out_of_gas_3056", %"$have_gas_3043"
  %"$consume_3058" = sub i64 %"$gasrem_3054", 2
  store i64 %"$consume_3058", i64* @_gasrem, align 8
  %"$isSenderOAO_3060" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_3061" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_3060", i32 0, i32 0
  %"$isSenderOAO_tag_3062" = load i8, i8* %"$isSenderOAO_tag_3061", align 1
  switch i8 %"$isSenderOAO_tag_3062", label %"$empty_default_3063" [
    i8 0, label %"$True_3064"
    i8 1, label %"$False_3197"
  ], !dbg !329

"$True_3064":                                     ; preds = %"$have_gas_3057"
  %"$isSenderOAO_3065" = bitcast %TName_Bool* %"$isSenderOAO_3060" to %CName_True*
  %"$gasrem_3066" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3067" = icmp ugt i64 1, %"$gasrem_3066"
  br i1 %"$gascmp_3067", label %"$out_of_gas_3068", label %"$have_gas_3069"

"$out_of_gas_3068":                               ; preds = %"$True_3064"
  call void @_out_of_gas()
  br label %"$have_gas_3069"

"$have_gas_3069":                                 ; preds = %"$out_of_gas_3068", %"$True_3064"
  %"$consume_3070" = sub i64 %"$gasrem_3066", 1
  store i64 %"$consume_3070", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_3071" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3072" = icmp ugt i64 1, %"$gasrem_3071"
  br i1 %"$gascmp_3072", label %"$out_of_gas_3073", label %"$have_gas_3074"

"$out_of_gas_3073":                               ; preds = %"$have_gas_3069"
  call void @_out_of_gas()
  br label %"$have_gas_3074"

"$have_gas_3074":                                 ; preds = %"$out_of_gas_3073", %"$have_gas_3069"
  %"$consume_3075" = sub i64 %"$gasrem_3071", 1
  store i64 %"$consume_3075", i64* @_gasrem, align 8
  %"$adtval_3076_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3076_salloc" = call i8* @_salloc(i8* %"$adtval_3076_load", i64 41)
  %"$adtval_3076" = bitcast i8* %"$adtval_3076_salloc" to %CName_ud-registry.Record*
  %"$adtgep_3077" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3076", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3077", align 1
  %"$adtgep_3078" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3076", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_3078", align 1
  %"$adtgep_3079" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3076", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_3079", align 1
  %"$adtptr_3080" = bitcast %CName_ud-registry.Record* %"$adtval_3076" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_3080", %TName_ud-registry.Record** %newRecord, align 8, !dbg !330
  %"$newRecord_3081" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_3081_3082" = bitcast %TName_ud-registry.Record* %"$newRecord_3081" to i8*
  %"$_literal_cost_call_3083" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_201", i8* %"$$newRecord_3081_3082")
  %"$gasadd_3084" = add i64 %"$_literal_cost_call_3083", 1
  %"$gasrem_3085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3086" = icmp ugt i64 %"$gasadd_3084", %"$gasrem_3085"
  br i1 %"$gascmp_3086", label %"$out_of_gas_3087", label %"$have_gas_3088"

"$out_of_gas_3087":                               ; preds = %"$have_gas_3074"
  call void @_out_of_gas()
  br label %"$have_gas_3088"

"$have_gas_3088":                                 ; preds = %"$out_of_gas_3087", %"$have_gas_3074"
  %"$consume_3089" = sub i64 %"$gasrem_3085", %"$gasadd_3084"
  store i64 %"$consume_3089", i64* @_gasrem, align 8
  %"$indices_buf_3090_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3090_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3090_salloc_load", i64 32)
  %"$indices_buf_3090_salloc" = bitcast i8* %"$indices_buf_3090_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3090" = bitcast [32 x i8]* %"$indices_buf_3090_salloc" to i8*
  %"$indices_gep_3091" = getelementptr i8, i8* %"$indices_buf_3090", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_3091" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_3092" = load i8*, i8** @_execptr, align 8
  %"$newRecord_3094" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_3095" = bitcast %TName_ud-registry.Record* %"$newRecord_3094" to i8*
  call void @_update_field(i8* %"$execptr_load_3092", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3093", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_208", i32 1, i8* %"$indices_buf_3090", i8* %"$update_value_3095"), !dbg !333
  %"$gasrem_3096" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3097" = icmp ugt i64 1, %"$gasrem_3096"
  br i1 %"$gascmp_3097", label %"$out_of_gas_3098", label %"$have_gas_3099"

"$out_of_gas_3098":                               ; preds = %"$have_gas_3088"
  call void @_out_of_gas()
  br label %"$have_gas_3099"

"$have_gas_3099":                                 ; preds = %"$out_of_gas_3098", %"$have_gas_3088"
  %"$consume_3100" = sub i64 %"$gasrem_3096", 1
  store i64 %"$consume_3100", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3102" = icmp ugt i64 1, %"$gasrem_3101"
  br i1 %"$gascmp_3102", label %"$out_of_gas_3103", label %"$have_gas_3104"

"$out_of_gas_3103":                               ; preds = %"$have_gas_3099"
  call void @_out_of_gas()
  br label %"$have_gas_3104"

"$have_gas_3104":                                 ; preds = %"$out_of_gas_3103", %"$have_gas_3099"
  %"$consume_3105" = sub i64 %"$gasrem_3101", 1
  store i64 %"$consume_3105", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_3106" = load { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* }, { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_3107" = extractvalue { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_3106", 0
  %"$ud-registry.eConfigured_envptr_3108" = extractvalue { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_3106", 1
  %"$ud-registry.eConfigured_node_3109" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_3109", align 1
  %"$ud-registry.eConfigured_owner_3110" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$ud-registry.eConfigured_owner_3110", align 1
  %"$ud-registry.eConfigured_resolver_3111" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$ud-registry.eConfigured_resolver_3111", align 1
  %"$ud-registry.eConfigured_call_3112" = call i8* %"$ud-registry.eConfigured_fptr_3107"(i8* %"$ud-registry.eConfigured_envptr_3108", [32 x i8]* %"$ud-registry.eConfigured_node_3109", [20 x i8]* %"$ud-registry.eConfigured_owner_3110", [20 x i8]* %"$ud-registry.eConfigured_resolver_3111"), !dbg !334
  store i8* %"$ud-registry.eConfigured_call_3112", i8** %e, align 8, !dbg !334
  %"$e_3113" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3115" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_3113")
  %"$gasrem_3116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3117" = icmp ugt i64 %"$_literal_cost_call_3115", %"$gasrem_3116"
  br i1 %"$gascmp_3117", label %"$out_of_gas_3118", label %"$have_gas_3119"

"$out_of_gas_3118":                               ; preds = %"$have_gas_3104"
  call void @_out_of_gas()
  br label %"$have_gas_3119"

"$have_gas_3119":                                 ; preds = %"$out_of_gas_3118", %"$have_gas_3104"
  %"$consume_3120" = sub i64 %"$gasrem_3116", %"$_literal_cost_call_3115"
  store i64 %"$consume_3120", i64* @_gasrem, align 8
  %"$execptr_load_3121" = load i8*, i8** @_execptr, align 8
  %"$e_3122" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3121", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_3122"), !dbg !335
  %"$gasrem_3123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3124" = icmp ugt i64 1, %"$gasrem_3123"
  br i1 %"$gascmp_3124", label %"$out_of_gas_3125", label %"$have_gas_3126"

"$out_of_gas_3125":                               ; preds = %"$have_gas_3119"
  call void @_out_of_gas()
  br label %"$have_gas_3126"

"$have_gas_3126":                                 ; preds = %"$out_of_gas_3125", %"$have_gas_3119"
  %"$consume_3127" = sub i64 %"$gasrem_3123", 1
  store i64 %"$consume_3127", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_3128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3129" = icmp ugt i64 1, %"$gasrem_3128"
  br i1 %"$gascmp_3129", label %"$out_of_gas_3130", label %"$have_gas_3131"

"$out_of_gas_3130":                               ; preds = %"$have_gas_3126"
  call void @_out_of_gas()
  br label %"$have_gas_3131"

"$have_gas_3131":                                 ; preds = %"$out_of_gas_3130", %"$have_gas_3126"
  %"$consume_3132" = sub i64 %"$gasrem_3128", 1
  store i64 %"$consume_3132", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_3133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3134" = icmp ugt i64 1, %"$gasrem_3133"
  br i1 %"$gascmp_3134", label %"$out_of_gas_3135", label %"$have_gas_3136"

"$out_of_gas_3135":                               ; preds = %"$have_gas_3131"
  call void @_out_of_gas()
  br label %"$have_gas_3136"

"$have_gas_3136":                                 ; preds = %"$out_of_gas_3135", %"$have_gas_3131"
  %"$consume_3137" = sub i64 %"$gasrem_3133", 1
  store i64 %"$consume_3137", i64* @_gasrem, align 8
  %"$msgobj_3138_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_3138_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_3138_salloc_load", i64 225)
  %"$msgobj_3138_salloc" = bitcast i8* %"$msgobj_3138_salloc_salloc" to [225 x i8]*
  %"$msgobj_3138" = bitcast [225 x i8]* %"$msgobj_3138_salloc" to i8*
  store i8 5, i8* %"$msgobj_3138", align 1
  %"$msgobj_fname_3140" = getelementptr i8, i8* %"$msgobj_3138", i32 1
  %"$msgobj_fname_3141" = bitcast i8* %"$msgobj_fname_3140" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3139", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3141", align 8
  %"$msgobj_td_3142" = getelementptr i8, i8* %"$msgobj_3138", i32 17
  %"$msgobj_td_3143" = bitcast i8* %"$msgobj_td_3142" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_3143", align 8
  %"$msgobj_v_3145" = getelementptr i8, i8* %"$msgobj_3138", i32 25
  %"$msgobj_v_3146" = bitcast i8* %"$msgobj_v_3145" to %String*
  store %String { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$stringlit_3144", i32 0, i32 0), i32 18 }, %String* %"$msgobj_v_3146", align 8
  %"$msgobj_fname_3148" = getelementptr i8, i8* %"$msgobj_3138", i32 41
  %"$msgobj_fname_3149" = bitcast i8* %"$msgobj_fname_3148" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3147", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3149", align 8
  %"$msgobj_td_3150" = getelementptr i8, i8* %"$msgobj_3138", i32 57
  %"$msgobj_td_3151" = bitcast i8* %"$msgobj_td_3150" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192", %_TyDescrTy_Typ** %"$msgobj_td_3151", align 8
  %"$msgobj_v_3152" = getelementptr i8, i8* %"$msgobj_3138", i32 65
  %"$msgobj_v_3153" = bitcast i8* %"$msgobj_v_3152" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_3153", align 1
  %"$msgobj_fname_3155" = getelementptr i8, i8* %"$msgobj_3138", i32 97
  %"$msgobj_fname_3156" = bitcast i8* %"$msgobj_fname_3155" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3154", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_3156", align 8
  %"$msgobj_td_3157" = getelementptr i8, i8* %"$msgobj_3138", i32 113
  %"$msgobj_td_3158" = bitcast i8* %"$msgobj_td_3157" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_3158", align 8
  %"$msgobj_v_3159" = getelementptr i8, i8* %"$msgobj_3138", i32 121
  %"$msgobj_v_3160" = bitcast i8* %"$msgobj_v_3159" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_3160", align 1
  %"$msgobj_fname_3162" = getelementptr i8, i8* %"$msgobj_3138", i32 141
  %"$msgobj_fname_3163" = bitcast i8* %"$msgobj_fname_3162" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_3161", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_3163", align 8
  %"$msgobj_td_3164" = getelementptr i8, i8* %"$msgobj_3138", i32 157
  %"$msgobj_td_3165" = bitcast i8* %"$msgobj_td_3164" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_172", %_TyDescrTy_Typ** %"$msgobj_td_3165", align 8
  %"$msgobj_v_3166" = getelementptr i8, i8* %"$msgobj_3138", i32 165
  %"$msgobj_v_3167" = bitcast i8* %"$msgobj_v_3166" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_3167", align 8
  %"$msgobj_fname_3169" = getelementptr i8, i8* %"$msgobj_3138", i32 181
  %"$msgobj_fname_3170" = bitcast i8* %"$msgobj_fname_3169" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_3168", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_3170", align 8
  %"$msgobj_td_3171" = getelementptr i8, i8* %"$msgobj_3138", i32 197
  %"$msgobj_td_3172" = bitcast i8* %"$msgobj_td_3171" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_3172", align 8
  %"$msgobj_v_3173" = getelementptr i8, i8* %"$msgobj_3138", i32 205
  %"$msgobj_v_3174" = bitcast i8* %"$msgobj_v_3173" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_3174", align 1
  store i8* %"$msgobj_3138", i8** %m, align 8, !dbg !336
  %"$gasrem_3176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3177" = icmp ugt i64 1, %"$gasrem_3176"
  br i1 %"$gascmp_3177", label %"$out_of_gas_3178", label %"$have_gas_3179"

"$out_of_gas_3178":                               ; preds = %"$have_gas_3136"
  call void @_out_of_gas()
  br label %"$have_gas_3179"

"$have_gas_3179":                                 ; preds = %"$out_of_gas_3178", %"$have_gas_3136"
  %"$consume_3180" = sub i64 %"$gasrem_3176", 1
  store i64 %"$consume_3180", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_43" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_3181" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_3182" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3181", 0
  %"$ud-registry.oneMsg_envptr_3183" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3181", 1
  %"$m_3184" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_3185" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_3182"(i8* %"$ud-registry.oneMsg_envptr_3183", i8* %"$m_3184"), !dbg !337
  store %TName_List_Message* %"$ud-registry.oneMsg_call_3185", %TName_List_Message** %"$ud-registry.oneMsg_43", align 8, !dbg !337
  %"$$ud-registry.oneMsg_43_3186" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_43", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_43_3186", %TName_List_Message** %msgs, align 8, !dbg !337
  %"$msgs_3187" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_3187_3188" = bitcast %TName_List_Message* %"$msgs_3187" to i8*
  %"$_literal_cost_call_3189" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_202", i8* %"$$msgs_3187_3188")
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
  %"$msgs_3196" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_3195", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_202", %TName_List_Message* %"$msgs_3196"), !dbg !338
  br label %"$matchsucc_3059"

"$False_3197":                                    ; preds = %"$have_gas_3057"
  %"$isSenderOAO_3198" = bitcast %TName_Bool* %"$isSenderOAO_3060" to %CName_False*
  %"$gasrem_3199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3200" = icmp ugt i64 1, %"$gasrem_3199"
  br i1 %"$gascmp_3200", label %"$out_of_gas_3201", label %"$have_gas_3202"

"$out_of_gas_3201":                               ; preds = %"$False_3197"
  call void @_out_of_gas()
  br label %"$have_gas_3202"

"$have_gas_3202":                                 ; preds = %"$out_of_gas_3201", %"$False_3197"
  %"$consume_3203" = sub i64 %"$gasrem_3199", 1
  store i64 %"$consume_3203", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_3204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3205" = icmp ugt i64 1, %"$gasrem_3204"
  br i1 %"$gascmp_3205", label %"$out_of_gas_3206", label %"$have_gas_3207"

"$out_of_gas_3206":                               ; preds = %"$have_gas_3202"
  call void @_out_of_gas()
  br label %"$have_gas_3207"

"$have_gas_3207":                                 ; preds = %"$out_of_gas_3206", %"$have_gas_3202"
  %"$consume_3208" = sub i64 %"$gasrem_3204", 1
  store i64 %"$consume_3208", i64* @_gasrem, align 8
  %m5 = alloca %String, align 8
  %"$gasrem_3209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3210" = icmp ugt i64 1, %"$gasrem_3209"
  br i1 %"$gascmp_3210", label %"$out_of_gas_3211", label %"$have_gas_3212"

"$out_of_gas_3211":                               ; preds = %"$have_gas_3207"
  call void @_out_of_gas()
  br label %"$have_gas_3212"

"$have_gas_3212":                                 ; preds = %"$out_of_gas_3211", %"$have_gas_3207"
  %"$consume_3213" = sub i64 %"$gasrem_3209", 1
  store i64 %"$consume_3213", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_3214", i32 0, i32 0), i32 43 }, %String* %m5, align 8, !dbg !339
  %"$gasrem_3215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3216" = icmp ugt i64 1, %"$gasrem_3215"
  br i1 %"$gascmp_3216", label %"$out_of_gas_3217", label %"$have_gas_3218"

"$out_of_gas_3217":                               ; preds = %"$have_gas_3212"
  call void @_out_of_gas()
  br label %"$have_gas_3218"

"$have_gas_3218":                                 ; preds = %"$out_of_gas_3217", %"$have_gas_3212"
  %"$consume_3219" = sub i64 %"$gasrem_3215", 1
  store i64 %"$consume_3219", i64* @_gasrem, align 8
  %"$ud-registry.eError_44" = alloca i8*, align 8
  %"$ud-registry.eError_3220" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3221" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3220", 0
  %"$ud-registry.eError_envptr_3222" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3220", 1
  %"$m_3223" = load %String, %String* %m5, align 8
  %"$ud-registry.eError_call_3224" = call i8* %"$ud-registry.eError_fptr_3221"(i8* %"$ud-registry.eError_envptr_3222", %String %"$m_3223"), !dbg !341
  store i8* %"$ud-registry.eError_call_3224", i8** %"$ud-registry.eError_44", align 8, !dbg !341
  %"$$ud-registry.eError_44_3225" = load i8*, i8** %"$ud-registry.eError_44", align 8
  store i8* %"$$ud-registry.eError_44_3225", i8** %e4, align 8, !dbg !341
  %"$e_3226" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_3228" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_3226")
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
  %"$e_3235" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_3234", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_3235"), !dbg !342
  %"$gasrem_3236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3237" = icmp ugt i64 1, %"$gasrem_3236"
  br i1 %"$gascmp_3237", label %"$out_of_gas_3238", label %"$have_gas_3239"

"$out_of_gas_3238":                               ; preds = %"$have_gas_3232"
  call void @_out_of_gas()
  br label %"$have_gas_3239"

"$have_gas_3239":                                 ; preds = %"$out_of_gas_3238", %"$have_gas_3232"
  %"$consume_3240" = sub i64 %"$gasrem_3236", 1
  store i64 %"$consume_3240", i64* @_gasrem, align 8
  %msgs6 = alloca %TName_List_Message*, align 8
  %"$gasrem_3241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3242" = icmp ugt i64 1, %"$gasrem_3241"
  br i1 %"$gascmp_3242", label %"$out_of_gas_3243", label %"$have_gas_3244"

"$out_of_gas_3243":                               ; preds = %"$have_gas_3239"
  call void @_out_of_gas()
  br label %"$have_gas_3244"

"$have_gas_3244":                                 ; preds = %"$out_of_gas_3243", %"$have_gas_3239"
  %"$consume_3245" = sub i64 %"$gasrem_3241", 1
  store i64 %"$consume_3245", i64* @_gasrem, align 8
  %"$m_0" = alloca i8*, align 8
  %"$gasrem_3246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3247" = icmp ugt i64 1, %"$gasrem_3246"
  br i1 %"$gascmp_3247", label %"$out_of_gas_3248", label %"$have_gas_3249"

"$out_of_gas_3248":                               ; preds = %"$have_gas_3244"
  call void @_out_of_gas()
  br label %"$have_gas_3249"

"$have_gas_3249":                                 ; preds = %"$out_of_gas_3248", %"$have_gas_3244"
  %"$consume_3250" = sub i64 %"$gasrem_3246", 1
  store i64 %"$consume_3250", i64* @_gasrem, align 8
  %"$msgobj_3251_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_3251_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_3251_salloc_load", i64 225)
  %"$msgobj_3251_salloc" = bitcast i8* %"$msgobj_3251_salloc_salloc" to [225 x i8]*
  %"$msgobj_3251" = bitcast [225 x i8]* %"$msgobj_3251_salloc" to i8*
  store i8 5, i8* %"$msgobj_3251", align 1
  %"$msgobj_fname_3253" = getelementptr i8, i8* %"$msgobj_3251", i32 1
  %"$msgobj_fname_3254" = bitcast i8* %"$msgobj_fname_3253" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3252", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3254", align 8
  %"$msgobj_td_3255" = getelementptr i8, i8* %"$msgobj_3251", i32 17
  %"$msgobj_td_3256" = bitcast i8* %"$msgobj_td_3255" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_3256", align 8
  %"$msgobj_v_3258" = getelementptr i8, i8* %"$msgobj_3251", i32 25
  %"$msgobj_v_3259" = bitcast i8* %"$msgobj_v_3258" to %String*
  store %String { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"$stringlit_3257", i32 0, i32 0), i32 18 }, %String* %"$msgobj_v_3259", align 8
  %"$msgobj_fname_3261" = getelementptr i8, i8* %"$msgobj_3251", i32 41
  %"$msgobj_fname_3262" = bitcast i8* %"$msgobj_fname_3261" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3260", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3262", align 8
  %"$msgobj_td_3263" = getelementptr i8, i8* %"$msgobj_3251", i32 57
  %"$msgobj_td_3264" = bitcast i8* %"$msgobj_td_3263" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192", %_TyDescrTy_Typ** %"$msgobj_td_3264", align 8
  %"$msgobj_v_3265" = getelementptr i8, i8* %"$msgobj_3251", i32 65
  %"$msgobj_v_3266" = bitcast i8* %"$msgobj_v_3265" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_3266", align 1
  %"$msgobj_fname_3268" = getelementptr i8, i8* %"$msgobj_3251", i32 97
  %"$msgobj_fname_3269" = bitcast i8* %"$msgobj_fname_3268" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3267", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_3269", align 8
  %"$msgobj_td_3270" = getelementptr i8, i8* %"$msgobj_3251", i32 113
  %"$msgobj_td_3271" = bitcast i8* %"$msgobj_td_3270" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_3271", align 8
  %"$recordOwner_3272" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$msgobj_v_3273" = getelementptr i8, i8* %"$msgobj_3251", i32 121
  %"$msgobj_v_3274" = bitcast i8* %"$msgobj_v_3273" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3272", [20 x i8]* %"$msgobj_v_3274", align 1
  %"$msgobj_fname_3276" = getelementptr i8, i8* %"$msgobj_3251", i32 141
  %"$msgobj_fname_3277" = bitcast i8* %"$msgobj_fname_3276" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_3275", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_3277", align 8
  %"$msgobj_td_3278" = getelementptr i8, i8* %"$msgobj_3251", i32 157
  %"$msgobj_td_3279" = bitcast i8* %"$msgobj_td_3278" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_172", %_TyDescrTy_Typ** %"$msgobj_td_3279", align 8
  %"$msgobj_v_3280" = getelementptr i8, i8* %"$msgobj_3251", i32 165
  %"$msgobj_v_3281" = bitcast i8* %"$msgobj_v_3280" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_3281", align 8
  %"$msgobj_fname_3283" = getelementptr i8, i8* %"$msgobj_3251", i32 181
  %"$msgobj_fname_3284" = bitcast i8* %"$msgobj_fname_3283" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_3282", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_3284", align 8
  %"$msgobj_td_3285" = getelementptr i8, i8* %"$msgobj_3251", i32 197
  %"$msgobj_td_3286" = bitcast i8* %"$msgobj_td_3285" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_3286", align 8
  %"$msgobj_v_3287" = getelementptr i8, i8* %"$msgobj_3251", i32 205
  %"$msgobj_v_3288" = bitcast i8* %"$msgobj_v_3287" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_3288", align 1
  store i8* %"$msgobj_3251", i8** %"$m_0", align 8, !dbg !343
  %"$gasrem_3290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3291" = icmp ugt i64 1, %"$gasrem_3290"
  br i1 %"$gascmp_3291", label %"$out_of_gas_3292", label %"$have_gas_3293"

"$out_of_gas_3292":                               ; preds = %"$have_gas_3249"
  call void @_out_of_gas()
  br label %"$have_gas_3293"

"$have_gas_3293":                                 ; preds = %"$out_of_gas_3292", %"$have_gas_3249"
  %"$consume_3294" = sub i64 %"$gasrem_3290", 1
  store i64 %"$consume_3294", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_45" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_3295" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_3296" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3295", 0
  %"$ud-registry.oneMsg_envptr_3297" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3295", 1
  %"$$m_0_3298" = load i8*, i8** %"$m_0", align 8
  %"$ud-registry.oneMsg_call_3299" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_3296"(i8* %"$ud-registry.oneMsg_envptr_3297", i8* %"$$m_0_3298"), !dbg !344
  store %TName_List_Message* %"$ud-registry.oneMsg_call_3299", %TName_List_Message** %"$ud-registry.oneMsg_45", align 8, !dbg !344
  %"$$ud-registry.oneMsg_45_3300" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_45", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_45_3300", %TName_List_Message** %msgs6, align 8, !dbg !344
  %"$msgs_3301" = load %TName_List_Message*, %TName_List_Message** %msgs6, align 8
  %"$$msgs_3301_3302" = bitcast %TName_List_Message* %"$msgs_3301" to i8*
  %"$_literal_cost_call_3303" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_202", i8* %"$$msgs_3301_3302")
  %"$gasrem_3304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3305" = icmp ugt i64 %"$_literal_cost_call_3303", %"$gasrem_3304"
  br i1 %"$gascmp_3305", label %"$out_of_gas_3306", label %"$have_gas_3307"

"$out_of_gas_3306":                               ; preds = %"$have_gas_3293"
  call void @_out_of_gas()
  br label %"$have_gas_3307"

"$have_gas_3307":                                 ; preds = %"$out_of_gas_3306", %"$have_gas_3293"
  %"$consume_3308" = sub i64 %"$gasrem_3304", %"$_literal_cost_call_3303"
  store i64 %"$consume_3308", i64* @_gasrem, align 8
  %"$execptr_load_3309" = load i8*, i8** @_execptr, align 8
  %"$msgs_3310" = load %TName_List_Message*, %TName_List_Message** %msgs6, align 8
  call void @_send(i8* %"$execptr_load_3309", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_202", %TName_List_Message* %"$msgs_3310"), !dbg !345
  br label %"$matchsucc_3059"

"$empty_default_3063":                            ; preds = %"$have_gas_3057"
  br label %"$matchsucc_3059"

"$matchsucc_3059":                                ; preds = %"$have_gas_3307", %"$have_gas_3193", %"$empty_default_3063"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @configureNode(i8* %0) !dbg !346 {
entry:
  %"$_amount_3312" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3313" = bitcast i8* %"$_amount_3312" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3313", align 8
  %"$_origin_3314" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3315" = bitcast i8* %"$_origin_3314" to [20 x i8]*
  %"$_sender_3316" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3317" = bitcast i8* %"$_sender_3316" to [20 x i8]*
  %"$node_3318" = getelementptr i8, i8* %0, i32 56
  %"$node_3319" = bitcast i8* %"$node_3318" to [32 x i8]*
  %"$owner_3320" = getelementptr i8, i8* %0, i32 88
  %"$owner_3321" = bitcast i8* %"$owner_3320" to [20 x i8]*
  %"$resolver_3322" = getelementptr i8, i8* %0, i32 108
  %"$resolver_3323" = bitcast i8* %"$resolver_3322" to [20 x i8]*
  call void @"$configureNode_2963"(%Uint128 %_amount, [20 x i8]* %"$_origin_3315", [20 x i8]* %"$_sender_3317", [32 x i8]* %"$node_3319", [20 x i8]* %"$owner_3321", [20 x i8]* %"$resolver_3323"), !dbg !347
  ret void
}

define internal void @"$configureResolver_3324"(%Uint128 %_amount, [20 x i8]* %"$_origin_3325", [20 x i8]* %"$_sender_3326", [32 x i8]* %"$node_3327", [20 x i8]* %"$resolver_3328") !dbg !348 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3325", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3326", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_3327", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_3328", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_3329_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3329_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3329_salloc_load", i64 32)
  %"$indices_buf_3329_salloc" = bitcast i8* %"$indices_buf_3329_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3329" = bitcast [32 x i8]* %"$indices_buf_3329_salloc" to i8*
  %"$indices_gep_3330" = getelementptr i8, i8* %"$indices_buf_3329", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3330" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_3332" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_3333" = call i8* @_fetch_field(i8* %"$execptr_load_3332", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3331", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_208", i32 1, i8* %"$indices_buf_3329", i32 1), !dbg !349
  %"$maybeRecord_3334" = bitcast i8* %"$maybeRecord_call_3333" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3334", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_3335" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_3335_3336" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3335" to i8*
  %"$_literal_cost_call_3337" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_199", i8* %"$$maybeRecord_3335_3336")
  %"$gasadd_3338" = add i64 %"$_literal_cost_call_3337", 0
  %"$gasadd_3339" = add i64 %"$gasadd_3338", 1
  %"$gasrem_3340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3341" = icmp ugt i64 %"$gasadd_3339", %"$gasrem_3340"
  br i1 %"$gascmp_3341", label %"$out_of_gas_3342", label %"$have_gas_3343"

"$out_of_gas_3342":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3343"

"$have_gas_3343":                                 ; preds = %"$out_of_gas_3342", %entry
  %"$consume_3344" = sub i64 %"$gasrem_3340", %"$gasadd_3339"
  store i64 %"$consume_3344", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_3345_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3345_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3345_salloc_load", i64 32)
  %"$indices_buf_3345_salloc" = bitcast i8* %"$indices_buf_3345_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3345" = bitcast [32 x i8]* %"$indices_buf_3345_salloc" to i8*
  %"$indices_gep_3346" = getelementptr i8, i8* %"$indices_buf_3345", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3346" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_3348" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_3349" = call i8* @_fetch_field(i8* %"$execptr_load_3348", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3347", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_207", i32 1, i8* %"$indices_buf_3345", i32 1), !dbg !350
  %"$maybeApproved_3350" = bitcast i8* %"$maybeApproved_call_3349" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3350", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_3351" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_3351_3352" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3351" to i8*
  %"$_literal_cost_call_3353" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_200", i8* %"$$maybeApproved_3351_3352")
  %"$gasadd_3354" = add i64 %"$_literal_cost_call_3353", 0
  %"$gasadd_3355" = add i64 %"$gasadd_3354", 1
  %"$gasrem_3356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3357" = icmp ugt i64 %"$gasadd_3355", %"$gasrem_3356"
  br i1 %"$gascmp_3357", label %"$out_of_gas_3358", label %"$have_gas_3359"

"$out_of_gas_3358":                               ; preds = %"$have_gas_3343"
  call void @_out_of_gas()
  br label %"$have_gas_3359"

"$have_gas_3359":                                 ; preds = %"$out_of_gas_3358", %"$have_gas_3343"
  %"$consume_3360" = sub i64 %"$gasrem_3356", %"$gasadd_3355"
  store i64 %"$consume_3360", i64* @_gasrem, align 8
  %"$gasrem_3361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3362" = icmp ugt i64 1, %"$gasrem_3361"
  br i1 %"$gascmp_3362", label %"$out_of_gas_3363", label %"$have_gas_3364"

"$out_of_gas_3363":                               ; preds = %"$have_gas_3359"
  call void @_out_of_gas()
  br label %"$have_gas_3364"

"$have_gas_3364":                                 ; preds = %"$out_of_gas_3363", %"$have_gas_3359"
  %"$consume_3365" = sub i64 %"$gasrem_3361", 1
  store i64 %"$consume_3365", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_3366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3367" = icmp ugt i64 1, %"$gasrem_3366"
  br i1 %"$gascmp_3367", label %"$out_of_gas_3368", label %"$have_gas_3369"

"$out_of_gas_3368":                               ; preds = %"$have_gas_3364"
  call void @_out_of_gas()
  br label %"$have_gas_3369"

"$have_gas_3369":                                 ; preds = %"$out_of_gas_3368", %"$have_gas_3364"
  %"$consume_3370" = sub i64 %"$gasrem_3366", 1
  store i64 %"$consume_3370", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_46" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_3371" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_3372" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3371", 0
  %"$ud-registry.recordMemberOwner_envptr_3373" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3371", 1
  %"$maybeRecord_3374" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_3375" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_3372"(i8* %"$ud-registry.recordMemberOwner_envptr_3373", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3375", %TName_Option_ud-registry.Record* %"$maybeRecord_3374"), !dbg !351
  %"$ud-registry.recordMemberOwner_ret_3376" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3375", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3376", [20 x i8]* %"$ud-registry.recordMemberOwner_46", align 1, !dbg !351
  %"$$ud-registry.recordMemberOwner_46_3377" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_46", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_46_3377", [20 x i8]* %recordOwner, align 1, !dbg !351
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3378_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3378_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3378_salloc_load", i64 20)
  %"$indices_buf_3378_salloc" = bitcast i8* %"$indices_buf_3378_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3378" = bitcast [20 x i8]* %"$indices_buf_3378_salloc" to i8*
  %"$recordOwner_3379" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_3380" = getelementptr i8, i8* %"$indices_buf_3378", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3380" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3379", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_3382" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3383" = call i8* @_fetch_field(i8* %"$execptr_load_3382", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3381", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_206", i32 1, i8* %"$indices_buf_3378", i32 1), !dbg !352
  %"$maybeOperators_3384" = bitcast i8* %"$maybeOperators_call_3383" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3384", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3385" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3385_3386" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3385" to i8*
  %"$_literal_cost_call_3387" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_198", i8* %"$$maybeOperators_3385_3386")
  %"$gasadd_3388" = add i64 %"$_literal_cost_call_3387", 0
  %"$gasadd_3389" = add i64 %"$gasadd_3388", 1
  %"$gasrem_3390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3391" = icmp ugt i64 %"$gasadd_3389", %"$gasrem_3390"
  br i1 %"$gascmp_3391", label %"$out_of_gas_3392", label %"$have_gas_3393"

"$out_of_gas_3392":                               ; preds = %"$have_gas_3369"
  call void @_out_of_gas()
  br label %"$have_gas_3393"

"$have_gas_3393":                                 ; preds = %"$out_of_gas_3392", %"$have_gas_3369"
  %"$consume_3394" = sub i64 %"$gasrem_3390", %"$gasadd_3389"
  store i64 %"$consume_3394", i64* @_gasrem, align 8
  %"$gasrem_3395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3396" = icmp ugt i64 1, %"$gasrem_3395"
  br i1 %"$gascmp_3396", label %"$out_of_gas_3397", label %"$have_gas_3398"

"$out_of_gas_3397":                               ; preds = %"$have_gas_3393"
  call void @_out_of_gas()
  br label %"$have_gas_3398"

"$have_gas_3398":                                 ; preds = %"$out_of_gas_3397", %"$have_gas_3393"
  %"$consume_3399" = sub i64 %"$gasrem_3395", 1
  store i64 %"$consume_3399", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_3400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3401" = icmp ugt i64 1, %"$gasrem_3400"
  br i1 %"$gascmp_3401", label %"$out_of_gas_3402", label %"$have_gas_3403"

"$out_of_gas_3402":                               ; preds = %"$have_gas_3398"
  call void @_out_of_gas()
  br label %"$have_gas_3403"

"$have_gas_3403":                                 ; preds = %"$out_of_gas_3402", %"$have_gas_3398"
  %"$consume_3404" = sub i64 %"$gasrem_3400", 1
  store i64 %"$consume_3404", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_3405" = load { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_3406" = extractvalue { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$ud-registry.getIsOAO_3405", 0
  %"$ud-registry.getIsOAO_envptr_3407" = extractvalue { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$ud-registry.getIsOAO_3405", 1
  %"$ud-registry.getIsOAO__sender_3408" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_3408", align 1
  %"$ud-registry.getIsOAO_recordOwner_3409" = alloca [20 x i8], align 1
  %"$recordOwner_3410" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3410", [20 x i8]* %"$ud-registry.getIsOAO_recordOwner_3409", align 1
  %"$maybeApproved_3411" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeOperators_3412" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$ud-registry.getIsOAO_call_3413" = call %TName_Bool* %"$ud-registry.getIsOAO_fptr_3406"(i8* %"$ud-registry.getIsOAO_envptr_3407", [20 x i8]* %"$ud-registry.getIsOAO__sender_3408", [20 x i8]* %"$ud-registry.getIsOAO_recordOwner_3409", %TName_Option_ByStr20* %"$maybeApproved_3411", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3412"), !dbg !353
  store %TName_Bool* %"$ud-registry.getIsOAO_call_3413", %TName_Bool** %isSenderOAO, align 8, !dbg !353
  %"$gasrem_3414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3415" = icmp ugt i64 2, %"$gasrem_3414"
  br i1 %"$gascmp_3415", label %"$out_of_gas_3416", label %"$have_gas_3417"

"$out_of_gas_3416":                               ; preds = %"$have_gas_3403"
  call void @_out_of_gas()
  br label %"$have_gas_3417"

"$have_gas_3417":                                 ; preds = %"$out_of_gas_3416", %"$have_gas_3403"
  %"$consume_3418" = sub i64 %"$gasrem_3414", 2
  store i64 %"$consume_3418", i64* @_gasrem, align 8
  %"$isSenderOAO_3420" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_3421" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_3420", i32 0, i32 0
  %"$isSenderOAO_tag_3422" = load i8, i8* %"$isSenderOAO_tag_3421", align 1
  switch i8 %"$isSenderOAO_tag_3422", label %"$empty_default_3423" [
    i8 0, label %"$True_3424"
    i8 1, label %"$False_3485"
  ], !dbg !354

"$True_3424":                                     ; preds = %"$have_gas_3417"
  %"$isSenderOAO_3425" = bitcast %TName_Bool* %"$isSenderOAO_3420" to %CName_True*
  %"$gasrem_3426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3427" = icmp ugt i64 1, %"$gasrem_3426"
  br i1 %"$gascmp_3427", label %"$out_of_gas_3428", label %"$have_gas_3429"

"$out_of_gas_3428":                               ; preds = %"$True_3424"
  call void @_out_of_gas()
  br label %"$have_gas_3429"

"$have_gas_3429":                                 ; preds = %"$out_of_gas_3428", %"$True_3424"
  %"$consume_3430" = sub i64 %"$gasrem_3426", 1
  store i64 %"$consume_3430", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_3431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3432" = icmp ugt i64 1, %"$gasrem_3431"
  br i1 %"$gascmp_3432", label %"$out_of_gas_3433", label %"$have_gas_3434"

"$out_of_gas_3433":                               ; preds = %"$have_gas_3429"
  call void @_out_of_gas()
  br label %"$have_gas_3434"

"$have_gas_3434":                                 ; preds = %"$out_of_gas_3433", %"$have_gas_3429"
  %"$consume_3435" = sub i64 %"$gasrem_3431", 1
  store i64 %"$consume_3435", i64* @_gasrem, align 8
  %"$recordOwner_3436" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$adtval_3437_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3437_salloc" = call i8* @_salloc(i8* %"$adtval_3437_load", i64 41)
  %"$adtval_3437" = bitcast i8* %"$adtval_3437_salloc" to %CName_ud-registry.Record*
  %"$adtgep_3438" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3437", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3438", align 1
  %"$adtgep_3439" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3437", i32 0, i32 1
  store [20 x i8] %"$recordOwner_3436", [20 x i8]* %"$adtgep_3439", align 1
  %"$adtgep_3440" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3437", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_3440", align 1
  %"$adtptr_3441" = bitcast %CName_ud-registry.Record* %"$adtval_3437" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_3441", %TName_ud-registry.Record** %newRecord, align 8, !dbg !355
  %"$newRecord_3442" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_3442_3443" = bitcast %TName_ud-registry.Record* %"$newRecord_3442" to i8*
  %"$_literal_cost_call_3444" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_201", i8* %"$$newRecord_3442_3443")
  %"$gasadd_3445" = add i64 %"$_literal_cost_call_3444", 1
  %"$gasrem_3446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3447" = icmp ugt i64 %"$gasadd_3445", %"$gasrem_3446"
  br i1 %"$gascmp_3447", label %"$out_of_gas_3448", label %"$have_gas_3449"

"$out_of_gas_3448":                               ; preds = %"$have_gas_3434"
  call void @_out_of_gas()
  br label %"$have_gas_3449"

"$have_gas_3449":                                 ; preds = %"$out_of_gas_3448", %"$have_gas_3434"
  %"$consume_3450" = sub i64 %"$gasrem_3446", %"$gasadd_3445"
  store i64 %"$consume_3450", i64* @_gasrem, align 8
  %"$indices_buf_3451_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3451_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3451_salloc_load", i64 32)
  %"$indices_buf_3451_salloc" = bitcast i8* %"$indices_buf_3451_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3451" = bitcast [32 x i8]* %"$indices_buf_3451_salloc" to i8*
  %"$indices_gep_3452" = getelementptr i8, i8* %"$indices_buf_3451", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_3452" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_3453" = load i8*, i8** @_execptr, align 8
  %"$newRecord_3455" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_3456" = bitcast %TName_ud-registry.Record* %"$newRecord_3455" to i8*
  call void @_update_field(i8* %"$execptr_load_3453", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3454", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_208", i32 1, i8* %"$indices_buf_3451", i8* %"$update_value_3456"), !dbg !358
  %"$gasrem_3457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3458" = icmp ugt i64 1, %"$gasrem_3457"
  br i1 %"$gascmp_3458", label %"$out_of_gas_3459", label %"$have_gas_3460"

"$out_of_gas_3459":                               ; preds = %"$have_gas_3449"
  call void @_out_of_gas()
  br label %"$have_gas_3460"

"$have_gas_3460":                                 ; preds = %"$out_of_gas_3459", %"$have_gas_3449"
  %"$consume_3461" = sub i64 %"$gasrem_3457", 1
  store i64 %"$consume_3461", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3463" = icmp ugt i64 1, %"$gasrem_3462"
  br i1 %"$gascmp_3463", label %"$out_of_gas_3464", label %"$have_gas_3465"

"$out_of_gas_3464":                               ; preds = %"$have_gas_3460"
  call void @_out_of_gas()
  br label %"$have_gas_3465"

"$have_gas_3465":                                 ; preds = %"$out_of_gas_3464", %"$have_gas_3460"
  %"$consume_3466" = sub i64 %"$gasrem_3462", 1
  store i64 %"$consume_3466", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_3467" = load { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* }, { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_3468" = extractvalue { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_3467", 0
  %"$ud-registry.eConfigured_envptr_3469" = extractvalue { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_3467", 1
  %"$ud-registry.eConfigured_node_3470" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_3470", align 1
  %"$ud-registry.eConfigured_recordOwner_3471" = alloca [20 x i8], align 1
  %"$recordOwner_3472" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3472", [20 x i8]* %"$ud-registry.eConfigured_recordOwner_3471", align 1
  %"$ud-registry.eConfigured_resolver_3473" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$ud-registry.eConfigured_resolver_3473", align 1
  %"$ud-registry.eConfigured_call_3474" = call i8* %"$ud-registry.eConfigured_fptr_3468"(i8* %"$ud-registry.eConfigured_envptr_3469", [32 x i8]* %"$ud-registry.eConfigured_node_3470", [20 x i8]* %"$ud-registry.eConfigured_recordOwner_3471", [20 x i8]* %"$ud-registry.eConfigured_resolver_3473"), !dbg !359
  store i8* %"$ud-registry.eConfigured_call_3474", i8** %e, align 8, !dbg !359
  %"$e_3475" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3477" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_3475")
  %"$gasrem_3478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3479" = icmp ugt i64 %"$_literal_cost_call_3477", %"$gasrem_3478"
  br i1 %"$gascmp_3479", label %"$out_of_gas_3480", label %"$have_gas_3481"

"$out_of_gas_3480":                               ; preds = %"$have_gas_3465"
  call void @_out_of_gas()
  br label %"$have_gas_3481"

"$have_gas_3481":                                 ; preds = %"$out_of_gas_3480", %"$have_gas_3465"
  %"$consume_3482" = sub i64 %"$gasrem_3478", %"$_literal_cost_call_3477"
  store i64 %"$consume_3482", i64* @_gasrem, align 8
  %"$execptr_load_3483" = load i8*, i8** @_execptr, align 8
  %"$e_3484" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3483", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_3484"), !dbg !360
  br label %"$matchsucc_3419"

"$False_3485":                                    ; preds = %"$have_gas_3417"
  %"$isSenderOAO_3486" = bitcast %TName_Bool* %"$isSenderOAO_3420" to %CName_False*
  %"$gasrem_3487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3488" = icmp ugt i64 1, %"$gasrem_3487"
  br i1 %"$gascmp_3488", label %"$out_of_gas_3489", label %"$have_gas_3490"

"$out_of_gas_3489":                               ; preds = %"$False_3485"
  call void @_out_of_gas()
  br label %"$have_gas_3490"

"$have_gas_3490":                                 ; preds = %"$out_of_gas_3489", %"$False_3485"
  %"$consume_3491" = sub i64 %"$gasrem_3487", 1
  store i64 %"$consume_3491", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_3492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3493" = icmp ugt i64 1, %"$gasrem_3492"
  br i1 %"$gascmp_3493", label %"$out_of_gas_3494", label %"$have_gas_3495"

"$out_of_gas_3494":                               ; preds = %"$have_gas_3490"
  call void @_out_of_gas()
  br label %"$have_gas_3495"

"$have_gas_3495":                                 ; preds = %"$out_of_gas_3494", %"$have_gas_3490"
  %"$consume_3496" = sub i64 %"$gasrem_3492", 1
  store i64 %"$consume_3496", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_3497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3498" = icmp ugt i64 1, %"$gasrem_3497"
  br i1 %"$gascmp_3498", label %"$out_of_gas_3499", label %"$have_gas_3500"

"$out_of_gas_3499":                               ; preds = %"$have_gas_3495"
  call void @_out_of_gas()
  br label %"$have_gas_3500"

"$have_gas_3500":                                 ; preds = %"$out_of_gas_3499", %"$have_gas_3495"
  %"$consume_3501" = sub i64 %"$gasrem_3497", 1
  store i64 %"$consume_3501", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_3502", i32 0, i32 0), i32 43 }, %String* %m, align 8, !dbg !361
  %"$gasrem_3503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3504" = icmp ugt i64 1, %"$gasrem_3503"
  br i1 %"$gascmp_3504", label %"$out_of_gas_3505", label %"$have_gas_3506"

"$out_of_gas_3505":                               ; preds = %"$have_gas_3500"
  call void @_out_of_gas()
  br label %"$have_gas_3506"

"$have_gas_3506":                                 ; preds = %"$out_of_gas_3505", %"$have_gas_3500"
  %"$consume_3507" = sub i64 %"$gasrem_3503", 1
  store i64 %"$consume_3507", i64* @_gasrem, align 8
  %"$ud-registry.eError_47" = alloca i8*, align 8
  %"$ud-registry.eError_3508" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3509" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3508", 0
  %"$ud-registry.eError_envptr_3510" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3508", 1
  %"$m_3511" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_3512" = call i8* %"$ud-registry.eError_fptr_3509"(i8* %"$ud-registry.eError_envptr_3510", %String %"$m_3511"), !dbg !363
  store i8* %"$ud-registry.eError_call_3512", i8** %"$ud-registry.eError_47", align 8, !dbg !363
  %"$$ud-registry.eError_47_3513" = load i8*, i8** %"$ud-registry.eError_47", align 8
  store i8* %"$$ud-registry.eError_47_3513", i8** %e4, align 8, !dbg !363
  %"$e_3514" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_3516" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_3514")
  %"$gasrem_3517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3518" = icmp ugt i64 %"$_literal_cost_call_3516", %"$gasrem_3517"
  br i1 %"$gascmp_3518", label %"$out_of_gas_3519", label %"$have_gas_3520"

"$out_of_gas_3519":                               ; preds = %"$have_gas_3506"
  call void @_out_of_gas()
  br label %"$have_gas_3520"

"$have_gas_3520":                                 ; preds = %"$out_of_gas_3519", %"$have_gas_3506"
  %"$consume_3521" = sub i64 %"$gasrem_3517", %"$_literal_cost_call_3516"
  store i64 %"$consume_3521", i64* @_gasrem, align 8
  %"$execptr_load_3522" = load i8*, i8** @_execptr, align 8
  %"$e_3523" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_3522", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_3523"), !dbg !364
  br label %"$matchsucc_3419"

"$empty_default_3423":                            ; preds = %"$have_gas_3417"
  br label %"$matchsucc_3419"

"$matchsucc_3419":                                ; preds = %"$have_gas_3520", %"$have_gas_3481", %"$empty_default_3423"
  ret void
}

define void @configureResolver(i8* %0) !dbg !365 {
entry:
  %"$_amount_3525" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3526" = bitcast i8* %"$_amount_3525" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3526", align 8
  %"$_origin_3527" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3528" = bitcast i8* %"$_origin_3527" to [20 x i8]*
  %"$_sender_3529" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3530" = bitcast i8* %"$_sender_3529" to [20 x i8]*
  %"$node_3531" = getelementptr i8, i8* %0, i32 56
  %"$node_3532" = bitcast i8* %"$node_3531" to [32 x i8]*
  %"$resolver_3533" = getelementptr i8, i8* %0, i32 88
  %"$resolver_3534" = bitcast i8* %"$resolver_3533" to [20 x i8]*
  call void @"$configureResolver_3324"(%Uint128 %_amount, [20 x i8]* %"$_origin_3528", [20 x i8]* %"$_sender_3530", [32 x i8]* %"$node_3532", [20 x i8]* %"$resolver_3534"), !dbg !366
  ret void
}

define internal void @"$transfer_3535"(%Uint128 %_amount, [20 x i8]* %"$_origin_3536", [20 x i8]* %"$_sender_3537", [32 x i8]* %"$node_3538", [20 x i8]* %"$owner_3539") !dbg !367 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3536", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3537", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_3538", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_3539", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_3540_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3540_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3540_salloc_load", i64 32)
  %"$indices_buf_3540_salloc" = bitcast i8* %"$indices_buf_3540_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3540" = bitcast [32 x i8]* %"$indices_buf_3540_salloc" to i8*
  %"$indices_gep_3541" = getelementptr i8, i8* %"$indices_buf_3540", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3541" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_3543" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_3544" = call i8* @_fetch_field(i8* %"$execptr_load_3543", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3542", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_208", i32 1, i8* %"$indices_buf_3540", i32 1), !dbg !368
  %"$maybeRecord_3545" = bitcast i8* %"$maybeRecord_call_3544" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3545", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_3546" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_3546_3547" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3546" to i8*
  %"$_literal_cost_call_3548" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_199", i8* %"$$maybeRecord_3546_3547")
  %"$gasadd_3549" = add i64 %"$_literal_cost_call_3548", 0
  %"$gasadd_3550" = add i64 %"$gasadd_3549", 1
  %"$gasrem_3551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3552" = icmp ugt i64 %"$gasadd_3550", %"$gasrem_3551"
  br i1 %"$gascmp_3552", label %"$out_of_gas_3553", label %"$have_gas_3554"

"$out_of_gas_3553":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3554"

"$have_gas_3554":                                 ; preds = %"$out_of_gas_3553", %entry
  %"$consume_3555" = sub i64 %"$gasrem_3551", %"$gasadd_3550"
  store i64 %"$consume_3555", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_3556_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3556_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3556_salloc_load", i64 32)
  %"$indices_buf_3556_salloc" = bitcast i8* %"$indices_buf_3556_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3556" = bitcast [32 x i8]* %"$indices_buf_3556_salloc" to i8*
  %"$indices_gep_3557" = getelementptr i8, i8* %"$indices_buf_3556", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3557" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_3559" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_3560" = call i8* @_fetch_field(i8* %"$execptr_load_3559", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3558", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_207", i32 1, i8* %"$indices_buf_3556", i32 1), !dbg !369
  %"$maybeApproved_3561" = bitcast i8* %"$maybeApproved_call_3560" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3561", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_3562" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_3562_3563" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3562" to i8*
  %"$_literal_cost_call_3564" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_200", i8* %"$$maybeApproved_3562_3563")
  %"$gasadd_3565" = add i64 %"$_literal_cost_call_3564", 0
  %"$gasadd_3566" = add i64 %"$gasadd_3565", 1
  %"$gasrem_3567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3568" = icmp ugt i64 %"$gasadd_3566", %"$gasrem_3567"
  br i1 %"$gascmp_3568", label %"$out_of_gas_3569", label %"$have_gas_3570"

"$out_of_gas_3569":                               ; preds = %"$have_gas_3554"
  call void @_out_of_gas()
  br label %"$have_gas_3570"

"$have_gas_3570":                                 ; preds = %"$out_of_gas_3569", %"$have_gas_3554"
  %"$consume_3571" = sub i64 %"$gasrem_3567", %"$gasadd_3566"
  store i64 %"$consume_3571", i64* @_gasrem, align 8
  %"$gasrem_3572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3573" = icmp ugt i64 1, %"$gasrem_3572"
  br i1 %"$gascmp_3573", label %"$out_of_gas_3574", label %"$have_gas_3575"

"$out_of_gas_3574":                               ; preds = %"$have_gas_3570"
  call void @_out_of_gas()
  br label %"$have_gas_3575"

"$have_gas_3575":                                 ; preds = %"$out_of_gas_3574", %"$have_gas_3570"
  %"$consume_3576" = sub i64 %"$gasrem_3572", 1
  store i64 %"$consume_3576", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_3577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3578" = icmp ugt i64 1, %"$gasrem_3577"
  br i1 %"$gascmp_3578", label %"$out_of_gas_3579", label %"$have_gas_3580"

"$out_of_gas_3579":                               ; preds = %"$have_gas_3575"
  call void @_out_of_gas()
  br label %"$have_gas_3580"

"$have_gas_3580":                                 ; preds = %"$out_of_gas_3579", %"$have_gas_3575"
  %"$consume_3581" = sub i64 %"$gasrem_3577", 1
  store i64 %"$consume_3581", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_48" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_3582" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_3583" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3582", 0
  %"$ud-registry.recordMemberOwner_envptr_3584" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3582", 1
  %"$maybeRecord_3585" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_3586" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_3583"(i8* %"$ud-registry.recordMemberOwner_envptr_3584", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3586", %TName_Option_ud-registry.Record* %"$maybeRecord_3585"), !dbg !370
  %"$ud-registry.recordMemberOwner_ret_3587" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3586", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3587", [20 x i8]* %"$ud-registry.recordMemberOwner_48", align 1, !dbg !370
  %"$$ud-registry.recordMemberOwner_48_3588" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_48", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_48_3588", [20 x i8]* %recordOwner, align 1, !dbg !370
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3589_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3589_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3589_salloc_load", i64 20)
  %"$indices_buf_3589_salloc" = bitcast i8* %"$indices_buf_3589_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3589" = bitcast [20 x i8]* %"$indices_buf_3589_salloc" to i8*
  %"$recordOwner_3590" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_3591" = getelementptr i8, i8* %"$indices_buf_3589", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3591" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3590", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_3593" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3594" = call i8* @_fetch_field(i8* %"$execptr_load_3593", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3592", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_206", i32 1, i8* %"$indices_buf_3589", i32 1), !dbg !371
  %"$maybeOperators_3595" = bitcast i8* %"$maybeOperators_call_3594" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3595", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3596" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3596_3597" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3596" to i8*
  %"$_literal_cost_call_3598" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_198", i8* %"$$maybeOperators_3596_3597")
  %"$gasadd_3599" = add i64 %"$_literal_cost_call_3598", 0
  %"$gasadd_3600" = add i64 %"$gasadd_3599", 1
  %"$gasrem_3601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3602" = icmp ugt i64 %"$gasadd_3600", %"$gasrem_3601"
  br i1 %"$gascmp_3602", label %"$out_of_gas_3603", label %"$have_gas_3604"

"$out_of_gas_3603":                               ; preds = %"$have_gas_3580"
  call void @_out_of_gas()
  br label %"$have_gas_3604"

"$have_gas_3604":                                 ; preds = %"$out_of_gas_3603", %"$have_gas_3580"
  %"$consume_3605" = sub i64 %"$gasrem_3601", %"$gasadd_3600"
  store i64 %"$consume_3605", i64* @_gasrem, align 8
  %"$gasrem_3606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3607" = icmp ugt i64 1, %"$gasrem_3606"
  br i1 %"$gascmp_3607", label %"$out_of_gas_3608", label %"$have_gas_3609"

"$out_of_gas_3608":                               ; preds = %"$have_gas_3604"
  call void @_out_of_gas()
  br label %"$have_gas_3609"

"$have_gas_3609":                                 ; preds = %"$out_of_gas_3608", %"$have_gas_3604"
  %"$consume_3610" = sub i64 %"$gasrem_3606", 1
  store i64 %"$consume_3610", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_3611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3612" = icmp ugt i64 1, %"$gasrem_3611"
  br i1 %"$gascmp_3612", label %"$out_of_gas_3613", label %"$have_gas_3614"

"$out_of_gas_3613":                               ; preds = %"$have_gas_3609"
  call void @_out_of_gas()
  br label %"$have_gas_3614"

"$have_gas_3614":                                 ; preds = %"$out_of_gas_3613", %"$have_gas_3609"
  %"$consume_3615" = sub i64 %"$gasrem_3611", 1
  store i64 %"$consume_3615", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_3616" = load { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_3617" = extractvalue { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$ud-registry.getIsOAO_3616", 0
  %"$ud-registry.getIsOAO_envptr_3618" = extractvalue { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$ud-registry.getIsOAO_3616", 1
  %"$ud-registry.getIsOAO__sender_3619" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_3619", align 1
  %"$ud-registry.getIsOAO_recordOwner_3620" = alloca [20 x i8], align 1
  %"$recordOwner_3621" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3621", [20 x i8]* %"$ud-registry.getIsOAO_recordOwner_3620", align 1
  %"$maybeApproved_3622" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeOperators_3623" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$ud-registry.getIsOAO_call_3624" = call %TName_Bool* %"$ud-registry.getIsOAO_fptr_3617"(i8* %"$ud-registry.getIsOAO_envptr_3618", [20 x i8]* %"$ud-registry.getIsOAO__sender_3619", [20 x i8]* %"$ud-registry.getIsOAO_recordOwner_3620", %TName_Option_ByStr20* %"$maybeApproved_3622", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3623"), !dbg !372
  store %TName_Bool* %"$ud-registry.getIsOAO_call_3624", %TName_Bool** %isSenderOAO, align 8, !dbg !372
  %"$gasrem_3625" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3626" = icmp ugt i64 2, %"$gasrem_3625"
  br i1 %"$gascmp_3626", label %"$out_of_gas_3627", label %"$have_gas_3628"

"$out_of_gas_3627":                               ; preds = %"$have_gas_3614"
  call void @_out_of_gas()
  br label %"$have_gas_3628"

"$have_gas_3628":                                 ; preds = %"$out_of_gas_3627", %"$have_gas_3614"
  %"$consume_3629" = sub i64 %"$gasrem_3625", 2
  store i64 %"$consume_3629", i64* @_gasrem, align 8
  %"$isSenderOAO_3631" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_3632" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_3631", i32 0, i32 0
  %"$isSenderOAO_tag_3633" = load i8, i8* %"$isSenderOAO_tag_3632", align 1
  switch i8 %"$isSenderOAO_tag_3633", label %"$empty_default_3634" [
    i8 0, label %"$True_3635"
    i8 1, label %"$False_3779"
  ], !dbg !373

"$True_3635":                                     ; preds = %"$have_gas_3628"
  %"$isSenderOAO_3636" = bitcast %TName_Bool* %"$isSenderOAO_3631" to %CName_True*
  %"$gasrem_3637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3638" = icmp ugt i64 1, %"$gasrem_3637"
  br i1 %"$gascmp_3638", label %"$out_of_gas_3639", label %"$have_gas_3640"

"$out_of_gas_3639":                               ; preds = %"$True_3635"
  call void @_out_of_gas()
  br label %"$have_gas_3640"

"$have_gas_3640":                                 ; preds = %"$out_of_gas_3639", %"$True_3635"
  %"$consume_3641" = sub i64 %"$gasrem_3637", 1
  store i64 %"$consume_3641", i64* @_gasrem, align 8
  %"$indices_buf_3642_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3642_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3642_salloc_load", i64 32)
  %"$indices_buf_3642_salloc" = bitcast i8* %"$indices_buf_3642_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3642" = bitcast [32 x i8]* %"$indices_buf_3642_salloc" to i8*
  %"$indices_gep_3643" = getelementptr i8, i8* %"$indices_buf_3642", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_3643" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_3644" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_3644", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3645", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_207", i32 1, i8* %"$indices_buf_3642", i8* null), !dbg !374
  %"$gasrem_3646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3647" = icmp ugt i64 1, %"$gasrem_3646"
  br i1 %"$gascmp_3647", label %"$out_of_gas_3648", label %"$have_gas_3649"

"$out_of_gas_3648":                               ; preds = %"$have_gas_3640"
  call void @_out_of_gas()
  br label %"$have_gas_3649"

"$have_gas_3649":                                 ; preds = %"$out_of_gas_3648", %"$have_gas_3640"
  %"$consume_3650" = sub i64 %"$gasrem_3646", 1
  store i64 %"$consume_3650", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_3651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3652" = icmp ugt i64 1, %"$gasrem_3651"
  br i1 %"$gascmp_3652", label %"$out_of_gas_3653", label %"$have_gas_3654"

"$out_of_gas_3653":                               ; preds = %"$have_gas_3649"
  call void @_out_of_gas()
  br label %"$have_gas_3654"

"$have_gas_3654":                                 ; preds = %"$out_of_gas_3653", %"$have_gas_3649"
  %"$consume_3655" = sub i64 %"$gasrem_3651", 1
  store i64 %"$consume_3655", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_3656" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_3657_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_3657_salloc" = call i8* @_salloc(i8* %"$adtval_3657_load", i64 41)
  %"$adtval_3657" = bitcast i8* %"$adtval_3657_salloc" to %CName_ud-registry.Record*
  %"$adtgep_3658" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3657", i32 0, i32 0
  store i8 0, i8* %"$adtgep_3658", align 1
  %"$adtgep_3659" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3657", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_3659", align 1
  %"$adtgep_3660" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_3657", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_3656", [20 x i8]* %"$adtgep_3660", align 1
  %"$adtptr_3661" = bitcast %CName_ud-registry.Record* %"$adtval_3657" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_3661", %TName_ud-registry.Record** %newRecord, align 8, !dbg !377
  %"$newRecord_3662" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_3662_3663" = bitcast %TName_ud-registry.Record* %"$newRecord_3662" to i8*
  %"$_literal_cost_call_3664" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_201", i8* %"$$newRecord_3662_3663")
  %"$gasadd_3665" = add i64 %"$_literal_cost_call_3664", 1
  %"$gasrem_3666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3667" = icmp ugt i64 %"$gasadd_3665", %"$gasrem_3666"
  br i1 %"$gascmp_3667", label %"$out_of_gas_3668", label %"$have_gas_3669"

"$out_of_gas_3668":                               ; preds = %"$have_gas_3654"
  call void @_out_of_gas()
  br label %"$have_gas_3669"

"$have_gas_3669":                                 ; preds = %"$out_of_gas_3668", %"$have_gas_3654"
  %"$consume_3670" = sub i64 %"$gasrem_3666", %"$gasadd_3665"
  store i64 %"$consume_3670", i64* @_gasrem, align 8
  %"$indices_buf_3671_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3671_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3671_salloc_load", i64 32)
  %"$indices_buf_3671_salloc" = bitcast i8* %"$indices_buf_3671_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3671" = bitcast [32 x i8]* %"$indices_buf_3671_salloc" to i8*
  %"$indices_gep_3672" = getelementptr i8, i8* %"$indices_buf_3671", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_3672" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast4, align 1
  %"$execptr_load_3673" = load i8*, i8** @_execptr, align 8
  %"$newRecord_3675" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_3676" = bitcast %TName_ud-registry.Record* %"$newRecord_3675" to i8*
  call void @_update_field(i8* %"$execptr_load_3673", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3674", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_208", i32 1, i8* %"$indices_buf_3671", i8* %"$update_value_3676"), !dbg !378
  %"$gasrem_3677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3678" = icmp ugt i64 1, %"$gasrem_3677"
  br i1 %"$gascmp_3678", label %"$out_of_gas_3679", label %"$have_gas_3680"

"$out_of_gas_3679":                               ; preds = %"$have_gas_3669"
  call void @_out_of_gas()
  br label %"$have_gas_3680"

"$have_gas_3680":                                 ; preds = %"$out_of_gas_3679", %"$have_gas_3669"
  %"$consume_3681" = sub i64 %"$gasrem_3677", 1
  store i64 %"$consume_3681", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_3682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3683" = icmp ugt i64 1, %"$gasrem_3682"
  br i1 %"$gascmp_3683", label %"$out_of_gas_3684", label %"$have_gas_3685"

"$out_of_gas_3684":                               ; preds = %"$have_gas_3680"
  call void @_out_of_gas()
  br label %"$have_gas_3685"

"$have_gas_3685":                                 ; preds = %"$out_of_gas_3684", %"$have_gas_3680"
  %"$consume_3686" = sub i64 %"$gasrem_3682", 1
  store i64 %"$consume_3686", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_3687" = load { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* }, { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_3688" = extractvalue { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_3687", 0
  %"$ud-registry.eConfigured_envptr_3689" = extractvalue { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_3687", 1
  %"$ud-registry.eConfigured_node_3690" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_3690", align 1
  %"$ud-registry.eConfigured_owner_3691" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$ud-registry.eConfigured_owner_3691", align 1
  %"$ud-registry.eConfigured_ud-registry.zeroByStr20_3692" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_3693" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_3693", [20 x i8]* %"$ud-registry.eConfigured_ud-registry.zeroByStr20_3692", align 1
  %"$ud-registry.eConfigured_call_3694" = call i8* %"$ud-registry.eConfigured_fptr_3688"(i8* %"$ud-registry.eConfigured_envptr_3689", [32 x i8]* %"$ud-registry.eConfigured_node_3690", [20 x i8]* %"$ud-registry.eConfigured_owner_3691", [20 x i8]* %"$ud-registry.eConfigured_ud-registry.zeroByStr20_3692"), !dbg !379
  store i8* %"$ud-registry.eConfigured_call_3694", i8** %e, align 8, !dbg !379
  %"$e_3695" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_3697" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_3695")
  %"$gasrem_3698" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3699" = icmp ugt i64 %"$_literal_cost_call_3697", %"$gasrem_3698"
  br i1 %"$gascmp_3699", label %"$out_of_gas_3700", label %"$have_gas_3701"

"$out_of_gas_3700":                               ; preds = %"$have_gas_3685"
  call void @_out_of_gas()
  br label %"$have_gas_3701"

"$have_gas_3701":                                 ; preds = %"$out_of_gas_3700", %"$have_gas_3685"
  %"$consume_3702" = sub i64 %"$gasrem_3698", %"$_literal_cost_call_3697"
  store i64 %"$consume_3702", i64* @_gasrem, align 8
  %"$execptr_load_3703" = load i8*, i8** @_execptr, align 8
  %"$e_3704" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_3703", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_3704"), !dbg !380
  %"$gasrem_3705" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3706" = icmp ugt i64 1, %"$gasrem_3705"
  br i1 %"$gascmp_3706", label %"$out_of_gas_3707", label %"$have_gas_3708"

"$out_of_gas_3707":                               ; preds = %"$have_gas_3701"
  call void @_out_of_gas()
  br label %"$have_gas_3708"

"$have_gas_3708":                                 ; preds = %"$out_of_gas_3707", %"$have_gas_3701"
  %"$consume_3709" = sub i64 %"$gasrem_3705", 1
  store i64 %"$consume_3709", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_3710" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3711" = icmp ugt i64 1, %"$gasrem_3710"
  br i1 %"$gascmp_3711", label %"$out_of_gas_3712", label %"$have_gas_3713"

"$out_of_gas_3712":                               ; preds = %"$have_gas_3708"
  call void @_out_of_gas()
  br label %"$have_gas_3713"

"$have_gas_3713":                                 ; preds = %"$out_of_gas_3712", %"$have_gas_3708"
  %"$consume_3714" = sub i64 %"$gasrem_3710", 1
  store i64 %"$consume_3714", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_3715" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3716" = icmp ugt i64 1, %"$gasrem_3715"
  br i1 %"$gascmp_3716", label %"$out_of_gas_3717", label %"$have_gas_3718"

"$out_of_gas_3717":                               ; preds = %"$have_gas_3713"
  call void @_out_of_gas()
  br label %"$have_gas_3718"

"$have_gas_3718":                                 ; preds = %"$out_of_gas_3717", %"$have_gas_3713"
  %"$consume_3719" = sub i64 %"$gasrem_3715", 1
  store i64 %"$consume_3719", i64* @_gasrem, align 8
  %"$msgobj_3720_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_3720_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_3720_salloc_load", i64 225)
  %"$msgobj_3720_salloc" = bitcast i8* %"$msgobj_3720_salloc_salloc" to [225 x i8]*
  %"$msgobj_3720" = bitcast [225 x i8]* %"$msgobj_3720_salloc" to i8*
  store i8 5, i8* %"$msgobj_3720", align 1
  %"$msgobj_fname_3722" = getelementptr i8, i8* %"$msgobj_3720", i32 1
  %"$msgobj_fname_3723" = bitcast i8* %"$msgobj_fname_3722" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3721", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3723", align 8
  %"$msgobj_td_3724" = getelementptr i8, i8* %"$msgobj_3720", i32 17
  %"$msgobj_td_3725" = bitcast i8* %"$msgobj_td_3724" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_3725", align 8
  %"$msgobj_v_3727" = getelementptr i8, i8* %"$msgobj_3720", i32 25
  %"$msgobj_v_3728" = bitcast i8* %"$msgobj_v_3727" to %String*
  store %String { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$stringlit_3726", i32 0, i32 0), i32 17 }, %String* %"$msgobj_v_3728", align 8
  %"$msgobj_fname_3730" = getelementptr i8, i8* %"$msgobj_3720", i32 41
  %"$msgobj_fname_3731" = bitcast i8* %"$msgobj_fname_3730" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3729", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3731", align 8
  %"$msgobj_td_3732" = getelementptr i8, i8* %"$msgobj_3720", i32 57
  %"$msgobj_td_3733" = bitcast i8* %"$msgobj_td_3732" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192", %_TyDescrTy_Typ** %"$msgobj_td_3733", align 8
  %"$msgobj_v_3734" = getelementptr i8, i8* %"$msgobj_3720", i32 65
  %"$msgobj_v_3735" = bitcast i8* %"$msgobj_v_3734" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_3735", align 1
  %"$msgobj_fname_3737" = getelementptr i8, i8* %"$msgobj_3720", i32 97
  %"$msgobj_fname_3738" = bitcast i8* %"$msgobj_fname_3737" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3736", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_3738", align 8
  %"$msgobj_td_3739" = getelementptr i8, i8* %"$msgobj_3720", i32 113
  %"$msgobj_td_3740" = bitcast i8* %"$msgobj_td_3739" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_3740", align 8
  %"$msgobj_v_3741" = getelementptr i8, i8* %"$msgobj_3720", i32 121
  %"$msgobj_v_3742" = bitcast i8* %"$msgobj_v_3741" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_3742", align 1
  %"$msgobj_fname_3744" = getelementptr i8, i8* %"$msgobj_3720", i32 141
  %"$msgobj_fname_3745" = bitcast i8* %"$msgobj_fname_3744" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_3743", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_3745", align 8
  %"$msgobj_td_3746" = getelementptr i8, i8* %"$msgobj_3720", i32 157
  %"$msgobj_td_3747" = bitcast i8* %"$msgobj_td_3746" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_172", %_TyDescrTy_Typ** %"$msgobj_td_3747", align 8
  %"$msgobj_v_3748" = getelementptr i8, i8* %"$msgobj_3720", i32 165
  %"$msgobj_v_3749" = bitcast i8* %"$msgobj_v_3748" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_3749", align 8
  %"$msgobj_fname_3751" = getelementptr i8, i8* %"$msgobj_3720", i32 181
  %"$msgobj_fname_3752" = bitcast i8* %"$msgobj_fname_3751" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_3750", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_3752", align 8
  %"$msgobj_td_3753" = getelementptr i8, i8* %"$msgobj_3720", i32 197
  %"$msgobj_td_3754" = bitcast i8* %"$msgobj_td_3753" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_3754", align 8
  %"$msgobj_v_3755" = getelementptr i8, i8* %"$msgobj_3720", i32 205
  %"$msgobj_v_3756" = bitcast i8* %"$msgobj_v_3755" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_3756", align 1
  store i8* %"$msgobj_3720", i8** %m, align 8, !dbg !381
  %"$gasrem_3758" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3759" = icmp ugt i64 1, %"$gasrem_3758"
  br i1 %"$gascmp_3759", label %"$out_of_gas_3760", label %"$have_gas_3761"

"$out_of_gas_3760":                               ; preds = %"$have_gas_3718"
  call void @_out_of_gas()
  br label %"$have_gas_3761"

"$have_gas_3761":                                 ; preds = %"$out_of_gas_3760", %"$have_gas_3718"
  %"$consume_3762" = sub i64 %"$gasrem_3758", 1
  store i64 %"$consume_3762", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_49" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_3763" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_3764" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3763", 0
  %"$ud-registry.oneMsg_envptr_3765" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3763", 1
  %"$m_3766" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_3767" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_3764"(i8* %"$ud-registry.oneMsg_envptr_3765", i8* %"$m_3766"), !dbg !382
  store %TName_List_Message* %"$ud-registry.oneMsg_call_3767", %TName_List_Message** %"$ud-registry.oneMsg_49", align 8, !dbg !382
  %"$$ud-registry.oneMsg_49_3768" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_49", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_49_3768", %TName_List_Message** %msgs, align 8, !dbg !382
  %"$msgs_3769" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_3769_3770" = bitcast %TName_List_Message* %"$msgs_3769" to i8*
  %"$_literal_cost_call_3771" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_202", i8* %"$$msgs_3769_3770")
  %"$gasrem_3772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3773" = icmp ugt i64 %"$_literal_cost_call_3771", %"$gasrem_3772"
  br i1 %"$gascmp_3773", label %"$out_of_gas_3774", label %"$have_gas_3775"

"$out_of_gas_3774":                               ; preds = %"$have_gas_3761"
  call void @_out_of_gas()
  br label %"$have_gas_3775"

"$have_gas_3775":                                 ; preds = %"$out_of_gas_3774", %"$have_gas_3761"
  %"$consume_3776" = sub i64 %"$gasrem_3772", %"$_literal_cost_call_3771"
  store i64 %"$consume_3776", i64* @_gasrem, align 8
  %"$execptr_load_3777" = load i8*, i8** @_execptr, align 8
  %"$msgs_3778" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_3777", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_202", %TName_List_Message* %"$msgs_3778"), !dbg !383
  br label %"$matchsucc_3630"

"$False_3779":                                    ; preds = %"$have_gas_3628"
  %"$isSenderOAO_3780" = bitcast %TName_Bool* %"$isSenderOAO_3631" to %CName_False*
  %"$gasrem_3781" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3782" = icmp ugt i64 1, %"$gasrem_3781"
  br i1 %"$gascmp_3782", label %"$out_of_gas_3783", label %"$have_gas_3784"

"$out_of_gas_3783":                               ; preds = %"$False_3779"
  call void @_out_of_gas()
  br label %"$have_gas_3784"

"$have_gas_3784":                                 ; preds = %"$out_of_gas_3783", %"$False_3779"
  %"$consume_3785" = sub i64 %"$gasrem_3781", 1
  store i64 %"$consume_3785", i64* @_gasrem, align 8
  %e5 = alloca i8*, align 8
  %"$gasrem_3786" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3787" = icmp ugt i64 1, %"$gasrem_3786"
  br i1 %"$gascmp_3787", label %"$out_of_gas_3788", label %"$have_gas_3789"

"$out_of_gas_3788":                               ; preds = %"$have_gas_3784"
  call void @_out_of_gas()
  br label %"$have_gas_3789"

"$have_gas_3789":                                 ; preds = %"$out_of_gas_3788", %"$have_gas_3784"
  %"$consume_3790" = sub i64 %"$gasrem_3786", 1
  store i64 %"$consume_3790", i64* @_gasrem, align 8
  %m6 = alloca %String, align 8
  %"$gasrem_3791" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3792" = icmp ugt i64 1, %"$gasrem_3791"
  br i1 %"$gascmp_3792", label %"$out_of_gas_3793", label %"$have_gas_3794"

"$out_of_gas_3793":                               ; preds = %"$have_gas_3789"
  call void @_out_of_gas()
  br label %"$have_gas_3794"

"$have_gas_3794":                                 ; preds = %"$out_of_gas_3793", %"$have_gas_3789"
  %"$consume_3795" = sub i64 %"$gasrem_3791", 1
  store i64 %"$consume_3795", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"$stringlit_3796", i32 0, i32 0), i32 43 }, %String* %m6, align 8, !dbg !384
  %"$gasrem_3797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3798" = icmp ugt i64 1, %"$gasrem_3797"
  br i1 %"$gascmp_3798", label %"$out_of_gas_3799", label %"$have_gas_3800"

"$out_of_gas_3799":                               ; preds = %"$have_gas_3794"
  call void @_out_of_gas()
  br label %"$have_gas_3800"

"$have_gas_3800":                                 ; preds = %"$out_of_gas_3799", %"$have_gas_3794"
  %"$consume_3801" = sub i64 %"$gasrem_3797", 1
  store i64 %"$consume_3801", i64* @_gasrem, align 8
  %"$ud-registry.eError_50" = alloca i8*, align 8
  %"$ud-registry.eError_3802" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_3803" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3802", 0
  %"$ud-registry.eError_envptr_3804" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_3802", 1
  %"$m_3805" = load %String, %String* %m6, align 8
  %"$ud-registry.eError_call_3806" = call i8* %"$ud-registry.eError_fptr_3803"(i8* %"$ud-registry.eError_envptr_3804", %String %"$m_3805"), !dbg !386
  store i8* %"$ud-registry.eError_call_3806", i8** %"$ud-registry.eError_50", align 8, !dbg !386
  %"$$ud-registry.eError_50_3807" = load i8*, i8** %"$ud-registry.eError_50", align 8
  store i8* %"$$ud-registry.eError_50_3807", i8** %e5, align 8, !dbg !386
  %"$e_3808" = load i8*, i8** %e5, align 8
  %"$_literal_cost_call_3810" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_3808")
  %"$gasrem_3811" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3812" = icmp ugt i64 %"$_literal_cost_call_3810", %"$gasrem_3811"
  br i1 %"$gascmp_3812", label %"$out_of_gas_3813", label %"$have_gas_3814"

"$out_of_gas_3813":                               ; preds = %"$have_gas_3800"
  call void @_out_of_gas()
  br label %"$have_gas_3814"

"$have_gas_3814":                                 ; preds = %"$out_of_gas_3813", %"$have_gas_3800"
  %"$consume_3815" = sub i64 %"$gasrem_3811", %"$_literal_cost_call_3810"
  store i64 %"$consume_3815", i64* @_gasrem, align 8
  %"$execptr_load_3816" = load i8*, i8** @_execptr, align 8
  %"$e_3817" = load i8*, i8** %e5, align 8
  call void @_event(i8* %"$execptr_load_3816", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_3817"), !dbg !387
  %"$gasrem_3818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3819" = icmp ugt i64 1, %"$gasrem_3818"
  br i1 %"$gascmp_3819", label %"$out_of_gas_3820", label %"$have_gas_3821"

"$out_of_gas_3820":                               ; preds = %"$have_gas_3814"
  call void @_out_of_gas()
  br label %"$have_gas_3821"

"$have_gas_3821":                                 ; preds = %"$out_of_gas_3820", %"$have_gas_3814"
  %"$consume_3822" = sub i64 %"$gasrem_3818", 1
  store i64 %"$consume_3822", i64* @_gasrem, align 8
  %msgs7 = alloca %TName_List_Message*, align 8
  %"$gasrem_3823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3824" = icmp ugt i64 1, %"$gasrem_3823"
  br i1 %"$gascmp_3824", label %"$out_of_gas_3825", label %"$have_gas_3826"

"$out_of_gas_3825":                               ; preds = %"$have_gas_3821"
  call void @_out_of_gas()
  br label %"$have_gas_3826"

"$have_gas_3826":                                 ; preds = %"$out_of_gas_3825", %"$have_gas_3821"
  %"$consume_3827" = sub i64 %"$gasrem_3823", 1
  store i64 %"$consume_3827", i64* @_gasrem, align 8
  %"$m_1" = alloca i8*, align 8
  %"$gasrem_3828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3829" = icmp ugt i64 1, %"$gasrem_3828"
  br i1 %"$gascmp_3829", label %"$out_of_gas_3830", label %"$have_gas_3831"

"$out_of_gas_3830":                               ; preds = %"$have_gas_3826"
  call void @_out_of_gas()
  br label %"$have_gas_3831"

"$have_gas_3831":                                 ; preds = %"$out_of_gas_3830", %"$have_gas_3826"
  %"$consume_3832" = sub i64 %"$gasrem_3828", 1
  store i64 %"$consume_3832", i64* @_gasrem, align 8
  %"$msgobj_3833_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_3833_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_3833_salloc_load", i64 225)
  %"$msgobj_3833_salloc" = bitcast i8* %"$msgobj_3833_salloc_salloc" to [225 x i8]*
  %"$msgobj_3833" = bitcast [225 x i8]* %"$msgobj_3833_salloc" to i8*
  store i8 5, i8* %"$msgobj_3833", align 1
  %"$msgobj_fname_3835" = getelementptr i8, i8* %"$msgobj_3833", i32 1
  %"$msgobj_fname_3836" = bitcast i8* %"$msgobj_fname_3835" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3834", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3836", align 8
  %"$msgobj_td_3837" = getelementptr i8, i8* %"$msgobj_3833", i32 17
  %"$msgobj_td_3838" = bitcast i8* %"$msgobj_td_3837" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_3838", align 8
  %"$msgobj_v_3840" = getelementptr i8, i8* %"$msgobj_3833", i32 25
  %"$msgobj_v_3841" = bitcast i8* %"$msgobj_v_3840" to %String*
  store %String { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$stringlit_3839", i32 0, i32 0), i32 17 }, %String* %"$msgobj_v_3841", align 8
  %"$msgobj_fname_3843" = getelementptr i8, i8* %"$msgobj_3833", i32 41
  %"$msgobj_fname_3844" = bitcast i8* %"$msgobj_fname_3843" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_3842", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_3844", align 8
  %"$msgobj_td_3845" = getelementptr i8, i8* %"$msgobj_3833", i32 57
  %"$msgobj_td_3846" = bitcast i8* %"$msgobj_td_3845" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192", %_TyDescrTy_Typ** %"$msgobj_td_3846", align 8
  %"$msgobj_v_3847" = getelementptr i8, i8* %"$msgobj_3833", i32 65
  %"$msgobj_v_3848" = bitcast i8* %"$msgobj_v_3847" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %"$msgobj_v_3848", align 1
  %"$msgobj_fname_3850" = getelementptr i8, i8* %"$msgobj_3833", i32 97
  %"$msgobj_fname_3851" = bitcast i8* %"$msgobj_fname_3850" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3849", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_3851", align 8
  %"$msgobj_td_3852" = getelementptr i8, i8* %"$msgobj_3833", i32 113
  %"$msgobj_td_3853" = bitcast i8* %"$msgobj_td_3852" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_3853", align 8
  %"$msgobj_v_3854" = getelementptr i8, i8* %"$msgobj_3833", i32 121
  %"$msgobj_v_3855" = bitcast i8* %"$msgobj_v_3854" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_3855", align 1
  %"$msgobj_fname_3857" = getelementptr i8, i8* %"$msgobj_3833", i32 141
  %"$msgobj_fname_3858" = bitcast i8* %"$msgobj_fname_3857" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_3856", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_3858", align 8
  %"$msgobj_td_3859" = getelementptr i8, i8* %"$msgobj_3833", i32 157
  %"$msgobj_td_3860" = bitcast i8* %"$msgobj_td_3859" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_172", %_TyDescrTy_Typ** %"$msgobj_td_3860", align 8
  %"$msgobj_v_3861" = getelementptr i8, i8* %"$msgobj_3833", i32 165
  %"$msgobj_v_3862" = bitcast i8* %"$msgobj_v_3861" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_3862", align 8
  %"$msgobj_fname_3864" = getelementptr i8, i8* %"$msgobj_3833", i32 181
  %"$msgobj_fname_3865" = bitcast i8* %"$msgobj_fname_3864" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_3863", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_3865", align 8
  %"$msgobj_td_3866" = getelementptr i8, i8* %"$msgobj_3833", i32 197
  %"$msgobj_td_3867" = bitcast i8* %"$msgobj_td_3866" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_3867", align 8
  %"$msgobj_v_3868" = getelementptr i8, i8* %"$msgobj_3833", i32 205
  %"$msgobj_v_3869" = bitcast i8* %"$msgobj_v_3868" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_3869", align 1
  store i8* %"$msgobj_3833", i8** %"$m_1", align 8, !dbg !388
  %"$gasrem_3871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3872" = icmp ugt i64 1, %"$gasrem_3871"
  br i1 %"$gascmp_3872", label %"$out_of_gas_3873", label %"$have_gas_3874"

"$out_of_gas_3873":                               ; preds = %"$have_gas_3831"
  call void @_out_of_gas()
  br label %"$have_gas_3874"

"$have_gas_3874":                                 ; preds = %"$out_of_gas_3873", %"$have_gas_3831"
  %"$consume_3875" = sub i64 %"$gasrem_3871", 1
  store i64 %"$consume_3875", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_51" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_3876" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_3877" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3876", 0
  %"$ud-registry.oneMsg_envptr_3878" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_3876", 1
  %"$$m_1_3879" = load i8*, i8** %"$m_1", align 8
  %"$ud-registry.oneMsg_call_3880" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_3877"(i8* %"$ud-registry.oneMsg_envptr_3878", i8* %"$$m_1_3879"), !dbg !389
  store %TName_List_Message* %"$ud-registry.oneMsg_call_3880", %TName_List_Message** %"$ud-registry.oneMsg_51", align 8, !dbg !389
  %"$$ud-registry.oneMsg_51_3881" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_51", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_51_3881", %TName_List_Message** %msgs7, align 8, !dbg !389
  %"$msgs_3882" = load %TName_List_Message*, %TName_List_Message** %msgs7, align 8
  %"$$msgs_3882_3883" = bitcast %TName_List_Message* %"$msgs_3882" to i8*
  %"$_literal_cost_call_3884" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_202", i8* %"$$msgs_3882_3883")
  %"$gasrem_3885" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3886" = icmp ugt i64 %"$_literal_cost_call_3884", %"$gasrem_3885"
  br i1 %"$gascmp_3886", label %"$out_of_gas_3887", label %"$have_gas_3888"

"$out_of_gas_3887":                               ; preds = %"$have_gas_3874"
  call void @_out_of_gas()
  br label %"$have_gas_3888"

"$have_gas_3888":                                 ; preds = %"$out_of_gas_3887", %"$have_gas_3874"
  %"$consume_3889" = sub i64 %"$gasrem_3885", %"$_literal_cost_call_3884"
  store i64 %"$consume_3889", i64* @_gasrem, align 8
  %"$execptr_load_3890" = load i8*, i8** @_execptr, align 8
  %"$msgs_3891" = load %TName_List_Message*, %TName_List_Message** %msgs7, align 8
  call void @_send(i8* %"$execptr_load_3890", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_202", %TName_List_Message* %"$msgs_3891"), !dbg !390
  br label %"$matchsucc_3630"

"$empty_default_3634":                            ; preds = %"$have_gas_3628"
  br label %"$matchsucc_3630"

"$matchsucc_3630":                                ; preds = %"$have_gas_3888", %"$have_gas_3775", %"$empty_default_3634"
  ret void
}

define void @transfer(i8* %0) !dbg !391 {
entry:
  %"$_amount_3893" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3894" = bitcast i8* %"$_amount_3893" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3894", align 8
  %"$_origin_3895" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3896" = bitcast i8* %"$_origin_3895" to [20 x i8]*
  %"$_sender_3897" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3898" = bitcast i8* %"$_sender_3897" to [20 x i8]*
  %"$node_3899" = getelementptr i8, i8* %0, i32 56
  %"$node_3900" = bitcast i8* %"$node_3899" to [32 x i8]*
  %"$owner_3901" = getelementptr i8, i8* %0, i32 88
  %"$owner_3902" = bitcast i8* %"$owner_3901" to [20 x i8]*
  call void @"$transfer_3535"(%Uint128 %_amount, [20 x i8]* %"$_origin_3896", [20 x i8]* %"$_sender_3898", [32 x i8]* %"$node_3900", [20 x i8]* %"$owner_3902"), !dbg !392
  ret void
}

define internal void @"$assign_3903"(%Uint128 %_amount, [20 x i8]* %"$_origin_3904", [20 x i8]* %"$_sender_3905", [32 x i8]* %"$parent_3906", %String %label, [20 x i8]* %"$owner_3907") !dbg !393 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3904", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3905", align 1
  %parent = load [32 x i8], [32 x i8]* %"$parent_3906", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_3907", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_3908_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3908_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3908_salloc_load", i64 32)
  %"$indices_buf_3908_salloc" = bitcast i8* %"$indices_buf_3908_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3908" = bitcast [32 x i8]* %"$indices_buf_3908_salloc" to i8*
  %"$indices_gep_3909" = getelementptr i8, i8* %"$indices_buf_3908", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3909" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_3911" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_3912" = call i8* @_fetch_field(i8* %"$execptr_load_3911", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_3910", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_208", i32 1, i8* %"$indices_buf_3908", i32 1), !dbg !394
  %"$maybeRecord_3913" = bitcast i8* %"$maybeRecord_call_3912" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_3913", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_3914" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_3914_3915" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_3914" to i8*
  %"$_literal_cost_call_3916" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_199", i8* %"$$maybeRecord_3914_3915")
  %"$gasadd_3917" = add i64 %"$_literal_cost_call_3916", 0
  %"$gasadd_3918" = add i64 %"$gasadd_3917", 1
  %"$gasrem_3919" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3920" = icmp ugt i64 %"$gasadd_3918", %"$gasrem_3919"
  br i1 %"$gascmp_3920", label %"$out_of_gas_3921", label %"$have_gas_3922"

"$out_of_gas_3921":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3922"

"$have_gas_3922":                                 ; preds = %"$out_of_gas_3921", %entry
  %"$consume_3923" = sub i64 %"$gasrem_3919", %"$gasadd_3918"
  store i64 %"$consume_3923", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_3924_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3924_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3924_salloc_load", i64 32)
  %"$indices_buf_3924_salloc" = bitcast i8* %"$indices_buf_3924_salloc_salloc" to [32 x i8]*
  %"$indices_buf_3924" = bitcast [32 x i8]* %"$indices_buf_3924_salloc" to i8*
  %"$indices_gep_3925" = getelementptr i8, i8* %"$indices_buf_3924", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_3925" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_3927" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_3928" = call i8* @_fetch_field(i8* %"$execptr_load_3927", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_3926", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_207", i32 1, i8* %"$indices_buf_3924", i32 1), !dbg !395
  %"$maybeApproved_3929" = bitcast i8* %"$maybeApproved_call_3928" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_3929", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_3930" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_3930_3931" = bitcast %TName_Option_ByStr20* %"$maybeApproved_3930" to i8*
  %"$_literal_cost_call_3932" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_200", i8* %"$$maybeApproved_3930_3931")
  %"$gasadd_3933" = add i64 %"$_literal_cost_call_3932", 0
  %"$gasadd_3934" = add i64 %"$gasadd_3933", 1
  %"$gasrem_3935" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3936" = icmp ugt i64 %"$gasadd_3934", %"$gasrem_3935"
  br i1 %"$gascmp_3936", label %"$out_of_gas_3937", label %"$have_gas_3938"

"$out_of_gas_3937":                               ; preds = %"$have_gas_3922"
  call void @_out_of_gas()
  br label %"$have_gas_3938"

"$have_gas_3938":                                 ; preds = %"$out_of_gas_3937", %"$have_gas_3922"
  %"$consume_3939" = sub i64 %"$gasrem_3935", %"$gasadd_3934"
  store i64 %"$consume_3939", i64* @_gasrem, align 8
  %"$gasrem_3940" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3941" = icmp ugt i64 1, %"$gasrem_3940"
  br i1 %"$gascmp_3941", label %"$out_of_gas_3942", label %"$have_gas_3943"

"$out_of_gas_3942":                               ; preds = %"$have_gas_3938"
  call void @_out_of_gas()
  br label %"$have_gas_3943"

"$have_gas_3943":                                 ; preds = %"$out_of_gas_3942", %"$have_gas_3938"
  %"$consume_3944" = sub i64 %"$gasrem_3940", 1
  store i64 %"$consume_3944", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_3945" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3946" = icmp ugt i64 1, %"$gasrem_3945"
  br i1 %"$gascmp_3946", label %"$out_of_gas_3947", label %"$have_gas_3948"

"$out_of_gas_3947":                               ; preds = %"$have_gas_3943"
  call void @_out_of_gas()
  br label %"$have_gas_3948"

"$have_gas_3948":                                 ; preds = %"$out_of_gas_3947", %"$have_gas_3943"
  %"$consume_3949" = sub i64 %"$gasrem_3945", 1
  store i64 %"$consume_3949", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_52" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_3950" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_3951" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3950", 0
  %"$ud-registry.recordMemberOwner_envptr_3952" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_3950", 1
  %"$maybeRecord_3953" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_3954" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_3951"(i8* %"$ud-registry.recordMemberOwner_envptr_3952", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3954", %TName_Option_ud-registry.Record* %"$maybeRecord_3953"), !dbg !396
  %"$ud-registry.recordMemberOwner_ret_3955" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_3954", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_3955", [20 x i8]* %"$ud-registry.recordMemberOwner_52", align 1, !dbg !396
  %"$$ud-registry.recordMemberOwner_52_3956" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_52", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_52_3956", [20 x i8]* %recordOwner, align 1, !dbg !396
  %maybeOperators = alloca %"TName_Option_List_(ByStr20)"*, align 8
  %"$indices_buf_3957_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3957_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3957_salloc_load", i64 20)
  %"$indices_buf_3957_salloc" = bitcast i8* %"$indices_buf_3957_salloc_salloc" to [20 x i8]*
  %"$indices_buf_3957" = bitcast [20 x i8]* %"$indices_buf_3957_salloc" to i8*
  %"$recordOwner_3958" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$indices_gep_3959" = getelementptr i8, i8* %"$indices_buf_3957", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_3959" to [20 x i8]*
  store [20 x i8] %"$recordOwner_3958", [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_3961" = load i8*, i8** @_execptr, align 8
  %"$maybeOperators_call_3962" = call i8* @_fetch_field(i8* %"$execptr_load_3961", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$operators_3960", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_206", i32 1, i8* %"$indices_buf_3957", i32 1), !dbg !397
  %"$maybeOperators_3963" = bitcast i8* %"$maybeOperators_call_3962" to %"TName_Option_List_(ByStr20)"*
  store %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3963", %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$maybeOperators_3964" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$$maybeOperators_3964_3965" = bitcast %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3964" to i8*
  %"$_literal_cost_call_3966" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_List_(ByStr20)_198", i8* %"$$maybeOperators_3964_3965")
  %"$gasadd_3967" = add i64 %"$_literal_cost_call_3966", 0
  %"$gasadd_3968" = add i64 %"$gasadd_3967", 1
  %"$gasrem_3969" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3970" = icmp ugt i64 %"$gasadd_3968", %"$gasrem_3969"
  br i1 %"$gascmp_3970", label %"$out_of_gas_3971", label %"$have_gas_3972"

"$out_of_gas_3971":                               ; preds = %"$have_gas_3948"
  call void @_out_of_gas()
  br label %"$have_gas_3972"

"$have_gas_3972":                                 ; preds = %"$out_of_gas_3971", %"$have_gas_3948"
  %"$consume_3973" = sub i64 %"$gasrem_3969", %"$gasadd_3968"
  store i64 %"$consume_3973", i64* @_gasrem, align 8
  %"$gasrem_3974" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3975" = icmp ugt i64 1, %"$gasrem_3974"
  br i1 %"$gascmp_3975", label %"$out_of_gas_3976", label %"$have_gas_3977"

"$out_of_gas_3976":                               ; preds = %"$have_gas_3972"
  call void @_out_of_gas()
  br label %"$have_gas_3977"

"$have_gas_3977":                                 ; preds = %"$out_of_gas_3976", %"$have_gas_3972"
  %"$consume_3978" = sub i64 %"$gasrem_3974", 1
  store i64 %"$consume_3978", i64* @_gasrem, align 8
  %isSenderOAO = alloca %TName_Bool*, align 8
  %"$gasrem_3979" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3980" = icmp ugt i64 1, %"$gasrem_3979"
  br i1 %"$gascmp_3980", label %"$out_of_gas_3981", label %"$have_gas_3982"

"$out_of_gas_3981":                               ; preds = %"$have_gas_3977"
  call void @_out_of_gas()
  br label %"$have_gas_3982"

"$have_gas_3982":                                 ; preds = %"$out_of_gas_3981", %"$have_gas_3977"
  %"$consume_3983" = sub i64 %"$gasrem_3979", 1
  store i64 %"$consume_3983", i64* @_gasrem, align 8
  %"$ud-registry.getIsOAO_3984" = load { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* }, { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* }* @ud-registry.getIsOAO, align 8
  %"$ud-registry.getIsOAO_fptr_3985" = extractvalue { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$ud-registry.getIsOAO_3984", 0
  %"$ud-registry.getIsOAO_envptr_3986" = extractvalue { %TName_Bool* (i8*, [20 x i8]*, [20 x i8]*, %TName_Option_ByStr20*, %"TName_Option_List_(ByStr20)"*)*, i8* } %"$ud-registry.getIsOAO_3984", 1
  %"$ud-registry.getIsOAO__sender_3987" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.getIsOAO__sender_3987", align 1
  %"$ud-registry.getIsOAO_recordOwner_3988" = alloca [20 x i8], align 1
  %"$recordOwner_3989" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_3989", [20 x i8]* %"$ud-registry.getIsOAO_recordOwner_3988", align 1
  %"$maybeApproved_3990" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeOperators_3991" = load %"TName_Option_List_(ByStr20)"*, %"TName_Option_List_(ByStr20)"** %maybeOperators, align 8
  %"$ud-registry.getIsOAO_call_3992" = call %TName_Bool* %"$ud-registry.getIsOAO_fptr_3985"(i8* %"$ud-registry.getIsOAO_envptr_3986", [20 x i8]* %"$ud-registry.getIsOAO__sender_3987", [20 x i8]* %"$ud-registry.getIsOAO_recordOwner_3988", %TName_Option_ByStr20* %"$maybeApproved_3990", %"TName_Option_List_(ByStr20)"* %"$maybeOperators_3991"), !dbg !398
  store %TName_Bool* %"$ud-registry.getIsOAO_call_3992", %TName_Bool** %isSenderOAO, align 8, !dbg !398
  %"$gasrem_3993" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3994" = icmp ugt i64 2, %"$gasrem_3993"
  br i1 %"$gascmp_3994", label %"$out_of_gas_3995", label %"$have_gas_3996"

"$out_of_gas_3995":                               ; preds = %"$have_gas_3982"
  call void @_out_of_gas()
  br label %"$have_gas_3996"

"$have_gas_3996":                                 ; preds = %"$out_of_gas_3995", %"$have_gas_3982"
  %"$consume_3997" = sub i64 %"$gasrem_3993", 2
  store i64 %"$consume_3997", i64* @_gasrem, align 8
  %"$isSenderOAO_3999" = load %TName_Bool*, %TName_Bool** %isSenderOAO, align 8
  %"$isSenderOAO_tag_4000" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderOAO_3999", i32 0, i32 0
  %"$isSenderOAO_tag_4001" = load i8, i8* %"$isSenderOAO_tag_4000", align 1
  switch i8 %"$isSenderOAO_tag_4001", label %"$empty_default_4002" [
    i8 0, label %"$True_4003"
    i8 1, label %"$False_4227"
  ], !dbg !399

"$True_4003":                                     ; preds = %"$have_gas_3996"
  %"$isSenderOAO_4004" = bitcast %TName_Bool* %"$isSenderOAO_3999" to %CName_True*
  %"$gasrem_4005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4006" = icmp ugt i64 1, %"$gasrem_4005"
  br i1 %"$gascmp_4006", label %"$out_of_gas_4007", label %"$have_gas_4008"

"$out_of_gas_4007":                               ; preds = %"$True_4003"
  call void @_out_of_gas()
  br label %"$have_gas_4008"

"$have_gas_4008":                                 ; preds = %"$out_of_gas_4007", %"$True_4003"
  %"$consume_4009" = sub i64 %"$gasrem_4005", 1
  store i64 %"$consume_4009", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_4010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4011" = icmp ugt i64 1, %"$gasrem_4010"
  br i1 %"$gascmp_4011", label %"$out_of_gas_4012", label %"$have_gas_4013"

"$out_of_gas_4012":                               ; preds = %"$have_gas_4008"
  call void @_out_of_gas()
  br label %"$have_gas_4013"

"$have_gas_4013":                                 ; preds = %"$out_of_gas_4012", %"$have_gas_4008"
  %"$consume_4014" = sub i64 %"$gasrem_4010", 1
  store i64 %"$consume_4014", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_4015" = load { void (i8*, [32 x i8]*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, [32 x i8]*, %String)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_4016" = extractvalue { void (i8*, [32 x i8]*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_4015", 0
  %"$ud-registry.parentLabelToNode_envptr_4017" = extractvalue { void (i8*, [32 x i8]*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_4015", 1
  %"$ud-registry.parentLabelToNode_parent_4018" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.parentLabelToNode_parent_4018", align 1
  %"$ud-registry.parentLabelToNode_retalloca_4019" = alloca [32 x i8], align 1
  call void %"$ud-registry.parentLabelToNode_fptr_4016"(i8* %"$ud-registry.parentLabelToNode_envptr_4017", [32 x i8]* %"$ud-registry.parentLabelToNode_retalloca_4019", [32 x i8]* %"$ud-registry.parentLabelToNode_parent_4018", %String %label), !dbg !400
  %"$ud-registry.parentLabelToNode_ret_4020" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_retalloca_4019", align 1
  store [32 x i8] %"$ud-registry.parentLabelToNode_ret_4020", [32 x i8]* %node, align 1, !dbg !400
  %recordExists = alloca %TName_Bool*, align 8
  %"$indices_buf_4021_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4021_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4021_salloc_load", i64 32)
  %"$indices_buf_4021_salloc" = bitcast i8* %"$indices_buf_4021_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4021" = bitcast [32 x i8]* %"$indices_buf_4021_salloc" to i8*
  %"$node_4022" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4023" = getelementptr i8, i8* %"$indices_buf_4021", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_4023" to [32 x i8]*
  store [32 x i8] %"$node_4022", [32 x i8]* %indices_cast3, align 1
  %"$execptr_load_4025" = load i8*, i8** @_execptr, align 8
  %"$recordExists_call_4026" = call i8* @_fetch_field(i8* %"$execptr_load_4025", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4024", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_208", i32 1, i8* %"$indices_buf_4021", i32 0), !dbg !403
  %"$recordExists_4027" = bitcast i8* %"$recordExists_call_4026" to %TName_Bool*
  store %TName_Bool* %"$recordExists_4027", %TName_Bool** %recordExists, align 8
  %"$recordExists_4028" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$$recordExists_4028_4029" = bitcast %TName_Bool* %"$recordExists_4028" to i8*
  %"$_literal_cost_call_4030" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_204", i8* %"$$recordExists_4028_4029")
  %"$gasadd_4031" = add i64 %"$_literal_cost_call_4030", 0
  %"$gasadd_4032" = add i64 %"$gasadd_4031", 1
  %"$gasrem_4033" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4034" = icmp ugt i64 %"$gasadd_4032", %"$gasrem_4033"
  br i1 %"$gascmp_4034", label %"$out_of_gas_4035", label %"$have_gas_4036"

"$out_of_gas_4035":                               ; preds = %"$have_gas_4013"
  call void @_out_of_gas()
  br label %"$have_gas_4036"

"$have_gas_4036":                                 ; preds = %"$out_of_gas_4035", %"$have_gas_4013"
  %"$consume_4037" = sub i64 %"$gasrem_4033", %"$gasadd_4032"
  store i64 %"$consume_4037", i64* @_gasrem, align 8
  %"$gasrem_4038" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4039" = icmp ugt i64 2, %"$gasrem_4038"
  br i1 %"$gascmp_4039", label %"$out_of_gas_4040", label %"$have_gas_4041"

"$out_of_gas_4040":                               ; preds = %"$have_gas_4036"
  call void @_out_of_gas()
  br label %"$have_gas_4041"

"$have_gas_4041":                                 ; preds = %"$out_of_gas_4040", %"$have_gas_4036"
  %"$consume_4042" = sub i64 %"$gasrem_4038", 2
  store i64 %"$consume_4042", i64* @_gasrem, align 8
  %"$recordExists_4044" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$recordExists_tag_4045" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$recordExists_4044", i32 0, i32 0
  %"$recordExists_tag_4046" = load i8, i8* %"$recordExists_tag_4045", align 1
  switch i8 %"$recordExists_tag_4046", label %"$default_4047" [
    i8 1, label %"$False_4048"
  ], !dbg !404

"$False_4048":                                    ; preds = %"$have_gas_4041"
  %"$recordExists_4049" = bitcast %TName_Bool* %"$recordExists_4044" to %CName_False*
  %"$gasrem_4050" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4051" = icmp ugt i64 1, %"$gasrem_4050"
  br i1 %"$gascmp_4051", label %"$out_of_gas_4052", label %"$have_gas_4053"

"$out_of_gas_4052":                               ; preds = %"$False_4048"
  call void @_out_of_gas()
  br label %"$have_gas_4053"

"$have_gas_4053":                                 ; preds = %"$out_of_gas_4052", %"$False_4048"
  %"$consume_4054" = sub i64 %"$gasrem_4050", 1
  store i64 %"$consume_4054", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_4055" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4056" = icmp ugt i64 1, %"$gasrem_4055"
  br i1 %"$gascmp_4056", label %"$out_of_gas_4057", label %"$have_gas_4058"

"$out_of_gas_4057":                               ; preds = %"$have_gas_4053"
  call void @_out_of_gas()
  br label %"$have_gas_4058"

"$have_gas_4058":                                 ; preds = %"$out_of_gas_4057", %"$have_gas_4053"
  %"$consume_4059" = sub i64 %"$gasrem_4055", 1
  store i64 %"$consume_4059", i64* @_gasrem, align 8
  %"$ud-registry.eNewDomain_4060" = load { i8* (i8*, [32 x i8]*, %String)*, i8* }, { i8* (i8*, [32 x i8]*, %String)*, i8* }* @ud-registry.eNewDomain, align 8
  %"$ud-registry.eNewDomain_fptr_4061" = extractvalue { i8* (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.eNewDomain_4060", 0
  %"$ud-registry.eNewDomain_envptr_4062" = extractvalue { i8* (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.eNewDomain_4060", 1
  %"$ud-registry.eNewDomain_parent_4063" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.eNewDomain_parent_4063", align 1
  %"$ud-registry.eNewDomain_call_4064" = call i8* %"$ud-registry.eNewDomain_fptr_4061"(i8* %"$ud-registry.eNewDomain_envptr_4062", [32 x i8]* %"$ud-registry.eNewDomain_parent_4063", %String %label), !dbg !405
  store i8* %"$ud-registry.eNewDomain_call_4064", i8** %e, align 8, !dbg !405
  %"$e_4065" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_4067" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_4065")
  %"$gasrem_4068" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4069" = icmp ugt i64 %"$_literal_cost_call_4067", %"$gasrem_4068"
  br i1 %"$gascmp_4069", label %"$out_of_gas_4070", label %"$have_gas_4071"

"$out_of_gas_4070":                               ; preds = %"$have_gas_4058"
  call void @_out_of_gas()
  br label %"$have_gas_4071"

"$have_gas_4071":                                 ; preds = %"$out_of_gas_4070", %"$have_gas_4058"
  %"$consume_4072" = sub i64 %"$gasrem_4068", %"$_literal_cost_call_4067"
  store i64 %"$consume_4072", i64* @_gasrem, align 8
  %"$execptr_load_4073" = load i8*, i8** @_execptr, align 8
  %"$e_4074" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_4073", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_4074"), !dbg !408
  br label %"$matchsucc_4043"

"$default_4047":                                  ; preds = %"$have_gas_4041"
  br label %"$joinp_7"

"$joinp_7":                                       ; preds = %"$default_4047"
  br label %"$matchsucc_4043"

"$matchsucc_4043":                                ; preds = %"$have_gas_4071", %"$joinp_7"
  %"$gasrem_4075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4076" = icmp ugt i64 1, %"$gasrem_4075"
  br i1 %"$gascmp_4076", label %"$out_of_gas_4077", label %"$have_gas_4078"

"$out_of_gas_4077":                               ; preds = %"$matchsucc_4043"
  call void @_out_of_gas()
  br label %"$have_gas_4078"

"$have_gas_4078":                                 ; preds = %"$out_of_gas_4077", %"$matchsucc_4043"
  %"$consume_4079" = sub i64 %"$gasrem_4075", 1
  store i64 %"$consume_4079", i64* @_gasrem, align 8
  %"$indices_buf_4080_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4080_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4080_salloc_load", i64 32)
  %"$indices_buf_4080_salloc" = bitcast i8* %"$indices_buf_4080_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4080" = bitcast [32 x i8]* %"$indices_buf_4080_salloc" to i8*
  %"$node_4081" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4082" = getelementptr i8, i8* %"$indices_buf_4080", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4082" to [32 x i8]*
  store [32 x i8] %"$node_4081", [32 x i8]* %indices_cast4, align 1
  %"$execptr_load_4083" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_4083", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4084", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_207", i32 1, i8* %"$indices_buf_4080", i8* null), !dbg !409
  %"$gasrem_4085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4086" = icmp ugt i64 1, %"$gasrem_4085"
  br i1 %"$gascmp_4086", label %"$out_of_gas_4087", label %"$have_gas_4088"

"$out_of_gas_4087":                               ; preds = %"$have_gas_4078"
  call void @_out_of_gas()
  br label %"$have_gas_4088"

"$have_gas_4088":                                 ; preds = %"$out_of_gas_4087", %"$have_gas_4078"
  %"$consume_4089" = sub i64 %"$gasrem_4085", 1
  store i64 %"$consume_4089", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_4090" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4091" = icmp ugt i64 1, %"$gasrem_4090"
  br i1 %"$gascmp_4091", label %"$out_of_gas_4092", label %"$have_gas_4093"

"$out_of_gas_4092":                               ; preds = %"$have_gas_4088"
  call void @_out_of_gas()
  br label %"$have_gas_4093"

"$have_gas_4093":                                 ; preds = %"$out_of_gas_4092", %"$have_gas_4088"
  %"$consume_4094" = sub i64 %"$gasrem_4090", 1
  store i64 %"$consume_4094", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_4095" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  %"$adtval_4096_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4096_salloc" = call i8* @_salloc(i8* %"$adtval_4096_load", i64 41)
  %"$adtval_4096" = bitcast i8* %"$adtval_4096_salloc" to %CName_ud-registry.Record*
  %"$adtgep_4097" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4096", i32 0, i32 0
  store i8 0, i8* %"$adtgep_4097", align 1
  %"$adtgep_4098" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4096", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_4098", align 1
  %"$adtgep_4099" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4096", i32 0, i32 2
  store [20 x i8] %"$ud-registry.zeroByStr20_4095", [20 x i8]* %"$adtgep_4099", align 1
  %"$adtptr_4100" = bitcast %CName_ud-registry.Record* %"$adtval_4096" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_4100", %TName_ud-registry.Record** %newRecord, align 8, !dbg !410
  %"$newRecord_4101" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_4101_4102" = bitcast %TName_ud-registry.Record* %"$newRecord_4101" to i8*
  %"$_literal_cost_call_4103" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_201", i8* %"$$newRecord_4101_4102")
  %"$gasadd_4104" = add i64 %"$_literal_cost_call_4103", 1
  %"$gasrem_4105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4106" = icmp ugt i64 %"$gasadd_4104", %"$gasrem_4105"
  br i1 %"$gascmp_4106", label %"$out_of_gas_4107", label %"$have_gas_4108"

"$out_of_gas_4107":                               ; preds = %"$have_gas_4093"
  call void @_out_of_gas()
  br label %"$have_gas_4108"

"$have_gas_4108":                                 ; preds = %"$out_of_gas_4107", %"$have_gas_4093"
  %"$consume_4109" = sub i64 %"$gasrem_4105", %"$gasadd_4104"
  store i64 %"$consume_4109", i64* @_gasrem, align 8
  %"$indices_buf_4110_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4110_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4110_salloc_load", i64 32)
  %"$indices_buf_4110_salloc" = bitcast i8* %"$indices_buf_4110_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4110" = bitcast [32 x i8]* %"$indices_buf_4110_salloc" to i8*
  %"$node_4111" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4112" = getelementptr i8, i8* %"$indices_buf_4110", i32 0
  %indices_cast5 = bitcast i8* %"$indices_gep_4112" to [32 x i8]*
  store [32 x i8] %"$node_4111", [32 x i8]* %indices_cast5, align 1
  %"$execptr_load_4113" = load i8*, i8** @_execptr, align 8
  %"$newRecord_4115" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_4116" = bitcast %TName_ud-registry.Record* %"$newRecord_4115" to i8*
  call void @_update_field(i8* %"$execptr_load_4113", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4114", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_208", i32 1, i8* %"$indices_buf_4110", i8* %"$update_value_4116"), !dbg !411
  %"$gasrem_4117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4118" = icmp ugt i64 1, %"$gasrem_4117"
  br i1 %"$gascmp_4118", label %"$out_of_gas_4119", label %"$have_gas_4120"

"$out_of_gas_4119":                               ; preds = %"$have_gas_4108"
  call void @_out_of_gas()
  br label %"$have_gas_4120"

"$have_gas_4120":                                 ; preds = %"$out_of_gas_4119", %"$have_gas_4108"
  %"$consume_4121" = sub i64 %"$gasrem_4117", 1
  store i64 %"$consume_4121", i64* @_gasrem, align 8
  %e6 = alloca i8*, align 8
  %"$gasrem_4122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4123" = icmp ugt i64 1, %"$gasrem_4122"
  br i1 %"$gascmp_4123", label %"$out_of_gas_4124", label %"$have_gas_4125"

"$out_of_gas_4124":                               ; preds = %"$have_gas_4120"
  call void @_out_of_gas()
  br label %"$have_gas_4125"

"$have_gas_4125":                                 ; preds = %"$out_of_gas_4124", %"$have_gas_4120"
  %"$consume_4126" = sub i64 %"$gasrem_4122", 1
  store i64 %"$consume_4126", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_4127" = load { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* }, { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_4128" = extractvalue { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_4127", 0
  %"$ud-registry.eConfigured_envptr_4129" = extractvalue { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_4127", 1
  %"$ud-registry.eConfigured_node_4130" = alloca [32 x i8], align 1
  %"$node_4131" = load [32 x i8], [32 x i8]* %node, align 1
  store [32 x i8] %"$node_4131", [32 x i8]* %"$ud-registry.eConfigured_node_4130", align 1
  %"$ud-registry.eConfigured_owner_4132" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$ud-registry.eConfigured_owner_4132", align 1
  %"$ud-registry.eConfigured_ud-registry.zeroByStr20_4133" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_4134" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_4134", [20 x i8]* %"$ud-registry.eConfigured_ud-registry.zeroByStr20_4133", align 1
  %"$ud-registry.eConfigured_call_4135" = call i8* %"$ud-registry.eConfigured_fptr_4128"(i8* %"$ud-registry.eConfigured_envptr_4129", [32 x i8]* %"$ud-registry.eConfigured_node_4130", [20 x i8]* %"$ud-registry.eConfigured_owner_4132", [20 x i8]* %"$ud-registry.eConfigured_ud-registry.zeroByStr20_4133"), !dbg !412
  store i8* %"$ud-registry.eConfigured_call_4135", i8** %e6, align 8, !dbg !412
  %"$e_4136" = load i8*, i8** %e6, align 8
  %"$_literal_cost_call_4138" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_4136")
  %"$gasrem_4139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4140" = icmp ugt i64 %"$_literal_cost_call_4138", %"$gasrem_4139"
  br i1 %"$gascmp_4140", label %"$out_of_gas_4141", label %"$have_gas_4142"

"$out_of_gas_4141":                               ; preds = %"$have_gas_4125"
  call void @_out_of_gas()
  br label %"$have_gas_4142"

"$have_gas_4142":                                 ; preds = %"$out_of_gas_4141", %"$have_gas_4125"
  %"$consume_4143" = sub i64 %"$gasrem_4139", %"$_literal_cost_call_4138"
  store i64 %"$consume_4143", i64* @_gasrem, align 8
  %"$execptr_load_4144" = load i8*, i8** @_execptr, align 8
  %"$e_4145" = load i8*, i8** %e6, align 8
  call void @_event(i8* %"$execptr_load_4144", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_4145"), !dbg !413
  %"$gasrem_4146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4147" = icmp ugt i64 1, %"$gasrem_4146"
  br i1 %"$gascmp_4147", label %"$out_of_gas_4148", label %"$have_gas_4149"

"$out_of_gas_4148":                               ; preds = %"$have_gas_4142"
  call void @_out_of_gas()
  br label %"$have_gas_4149"

"$have_gas_4149":                                 ; preds = %"$out_of_gas_4148", %"$have_gas_4142"
  %"$consume_4150" = sub i64 %"$gasrem_4146", 1
  store i64 %"$consume_4150", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_4151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4152" = icmp ugt i64 1, %"$gasrem_4151"
  br i1 %"$gascmp_4152", label %"$out_of_gas_4153", label %"$have_gas_4154"

"$out_of_gas_4153":                               ; preds = %"$have_gas_4149"
  call void @_out_of_gas()
  br label %"$have_gas_4154"

"$have_gas_4154":                                 ; preds = %"$out_of_gas_4153", %"$have_gas_4149"
  %"$consume_4155" = sub i64 %"$gasrem_4151", 1
  store i64 %"$consume_4155", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_4156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4157" = icmp ugt i64 1, %"$gasrem_4156"
  br i1 %"$gascmp_4157", label %"$out_of_gas_4158", label %"$have_gas_4159"

"$out_of_gas_4158":                               ; preds = %"$have_gas_4154"
  call void @_out_of_gas()
  br label %"$have_gas_4159"

"$have_gas_4159":                                 ; preds = %"$out_of_gas_4158", %"$have_gas_4154"
  %"$consume_4160" = sub i64 %"$gasrem_4156", 1
  store i64 %"$consume_4160", i64* @_gasrem, align 8
  %"$msgobj_4161_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4161_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4161_salloc_load", i64 265)
  %"$msgobj_4161_salloc" = bitcast i8* %"$msgobj_4161_salloc_salloc" to [265 x i8]*
  %"$msgobj_4161" = bitcast [265 x i8]* %"$msgobj_4161_salloc" to i8*
  store i8 6, i8* %"$msgobj_4161", align 1
  %"$msgobj_fname_4163" = getelementptr i8, i8* %"$msgobj_4161", i32 1
  %"$msgobj_fname_4164" = bitcast i8* %"$msgobj_fname_4163" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4162", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4164", align 8
  %"$msgobj_td_4165" = getelementptr i8, i8* %"$msgobj_4161", i32 17
  %"$msgobj_td_4166" = bitcast i8* %"$msgobj_td_4165" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_4166", align 8
  %"$msgobj_v_4168" = getelementptr i8, i8* %"$msgobj_4161", i32 25
  %"$msgobj_v_4169" = bitcast i8* %"$msgobj_v_4168" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_4167", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_4169", align 8
  %"$msgobj_fname_4171" = getelementptr i8, i8* %"$msgobj_4161", i32 41
  %"$msgobj_fname_4172" = bitcast i8* %"$msgobj_fname_4171" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_4170", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_4172", align 8
  %"$msgobj_td_4173" = getelementptr i8, i8* %"$msgobj_4161", i32 57
  %"$msgobj_td_4174" = bitcast i8* %"$msgobj_td_4173" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192", %_TyDescrTy_Typ** %"$msgobj_td_4174", align 8
  %"$msgobj_v_4175" = getelementptr i8, i8* %"$msgobj_4161", i32 65
  %"$msgobj_v_4176" = bitcast i8* %"$msgobj_v_4175" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_4176", align 1
  %"$msgobj_fname_4178" = getelementptr i8, i8* %"$msgobj_4161", i32 97
  %"$msgobj_fname_4179" = bitcast i8* %"$msgobj_fname_4178" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4177", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4179", align 8
  %"$msgobj_td_4180" = getelementptr i8, i8* %"$msgobj_4161", i32 113
  %"$msgobj_td_4181" = bitcast i8* %"$msgobj_td_4180" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_4181", align 8
  %"$msgobj_v_4182" = getelementptr i8, i8* %"$msgobj_4161", i32 121
  %"$msgobj_v_4183" = bitcast i8* %"$msgobj_v_4182" to %String*
  store %String %label, %String* %"$msgobj_v_4183", align 8
  %"$msgobj_fname_4185" = getelementptr i8, i8* %"$msgobj_4161", i32 137
  %"$msgobj_fname_4186" = bitcast i8* %"$msgobj_fname_4185" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4184", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4186", align 8
  %"$msgobj_td_4187" = getelementptr i8, i8* %"$msgobj_4161", i32 153
  %"$msgobj_td_4188" = bitcast i8* %"$msgobj_td_4187" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_4188", align 8
  %"$msgobj_v_4189" = getelementptr i8, i8* %"$msgobj_4161", i32 161
  %"$msgobj_v_4190" = bitcast i8* %"$msgobj_v_4189" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_4190", align 1
  %"$msgobj_fname_4192" = getelementptr i8, i8* %"$msgobj_4161", i32 181
  %"$msgobj_fname_4193" = bitcast i8* %"$msgobj_fname_4192" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4191", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4193", align 8
  %"$msgobj_td_4194" = getelementptr i8, i8* %"$msgobj_4161", i32 197
  %"$msgobj_td_4195" = bitcast i8* %"$msgobj_td_4194" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_172", %_TyDescrTy_Typ** %"$msgobj_td_4195", align 8
  %"$msgobj_v_4196" = getelementptr i8, i8* %"$msgobj_4161", i32 205
  %"$msgobj_v_4197" = bitcast i8* %"$msgobj_v_4196" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4197", align 8
  %"$msgobj_fname_4199" = getelementptr i8, i8* %"$msgobj_4161", i32 221
  %"$msgobj_fname_4200" = bitcast i8* %"$msgobj_fname_4199" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4198", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4200", align 8
  %"$msgobj_td_4201" = getelementptr i8, i8* %"$msgobj_4161", i32 237
  %"$msgobj_td_4202" = bitcast i8* %"$msgobj_td_4201" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_4202", align 8
  %"$msgobj_v_4203" = getelementptr i8, i8* %"$msgobj_4161", i32 245
  %"$msgobj_v_4204" = bitcast i8* %"$msgobj_v_4203" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4204", align 1
  store i8* %"$msgobj_4161", i8** %m, align 8, !dbg !414
  %"$gasrem_4206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4207" = icmp ugt i64 1, %"$gasrem_4206"
  br i1 %"$gascmp_4207", label %"$out_of_gas_4208", label %"$have_gas_4209"

"$out_of_gas_4208":                               ; preds = %"$have_gas_4159"
  call void @_out_of_gas()
  br label %"$have_gas_4209"

"$have_gas_4209":                                 ; preds = %"$out_of_gas_4208", %"$have_gas_4159"
  %"$consume_4210" = sub i64 %"$gasrem_4206", 1
  store i64 %"$consume_4210", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_53" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4211" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4212" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4211", 0
  %"$ud-registry.oneMsg_envptr_4213" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4211", 1
  %"$m_4214" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_4215" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4212"(i8* %"$ud-registry.oneMsg_envptr_4213", i8* %"$m_4214"), !dbg !415
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4215", %TName_List_Message** %"$ud-registry.oneMsg_53", align 8, !dbg !415
  %"$$ud-registry.oneMsg_53_4216" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_53", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_53_4216", %TName_List_Message** %msgs, align 8, !dbg !415
  %"$msgs_4217" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_4217_4218" = bitcast %TName_List_Message* %"$msgs_4217" to i8*
  %"$_literal_cost_call_4219" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_202", i8* %"$$msgs_4217_4218")
  %"$gasrem_4220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4221" = icmp ugt i64 %"$_literal_cost_call_4219", %"$gasrem_4220"
  br i1 %"$gascmp_4221", label %"$out_of_gas_4222", label %"$have_gas_4223"

"$out_of_gas_4222":                               ; preds = %"$have_gas_4209"
  call void @_out_of_gas()
  br label %"$have_gas_4223"

"$have_gas_4223":                                 ; preds = %"$out_of_gas_4222", %"$have_gas_4209"
  %"$consume_4224" = sub i64 %"$gasrem_4220", %"$_literal_cost_call_4219"
  store i64 %"$consume_4224", i64* @_gasrem, align 8
  %"$execptr_load_4225" = load i8*, i8** @_execptr, align 8
  %"$msgs_4226" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_4225", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_202", %TName_List_Message* %"$msgs_4226"), !dbg !416
  br label %"$matchsucc_3998"

"$False_4227":                                    ; preds = %"$have_gas_3996"
  %"$isSenderOAO_4228" = bitcast %TName_Bool* %"$isSenderOAO_3999" to %CName_False*
  %"$gasrem_4229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4230" = icmp ugt i64 1, %"$gasrem_4229"
  br i1 %"$gascmp_4230", label %"$out_of_gas_4231", label %"$have_gas_4232"

"$out_of_gas_4231":                               ; preds = %"$False_4227"
  call void @_out_of_gas()
  br label %"$have_gas_4232"

"$have_gas_4232":                                 ; preds = %"$out_of_gas_4231", %"$False_4227"
  %"$consume_4233" = sub i64 %"$gasrem_4229", 1
  store i64 %"$consume_4233", i64* @_gasrem, align 8
  %e7 = alloca i8*, align 8
  %"$gasrem_4234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4235" = icmp ugt i64 1, %"$gasrem_4234"
  br i1 %"$gascmp_4235", label %"$out_of_gas_4236", label %"$have_gas_4237"

"$out_of_gas_4236":                               ; preds = %"$have_gas_4232"
  call void @_out_of_gas()
  br label %"$have_gas_4237"

"$have_gas_4237":                                 ; preds = %"$out_of_gas_4236", %"$have_gas_4232"
  %"$consume_4238" = sub i64 %"$gasrem_4234", 1
  store i64 %"$consume_4238", i64* @_gasrem, align 8
  %m8 = alloca %String, align 8
  %"$gasrem_4239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4240" = icmp ugt i64 1, %"$gasrem_4239"
  br i1 %"$gascmp_4240", label %"$out_of_gas_4241", label %"$have_gas_4242"

"$out_of_gas_4241":                               ; preds = %"$have_gas_4237"
  call void @_out_of_gas()
  br label %"$have_gas_4242"

"$have_gas_4242":                                 ; preds = %"$out_of_gas_4241", %"$have_gas_4237"
  %"$consume_4243" = sub i64 %"$gasrem_4239", 1
  store i64 %"$consume_4243", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"$stringlit_4244", i32 0, i32 0), i32 45 }, %String* %m8, align 8, !dbg !417
  %"$gasrem_4245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4246" = icmp ugt i64 1, %"$gasrem_4245"
  br i1 %"$gascmp_4246", label %"$out_of_gas_4247", label %"$have_gas_4248"

"$out_of_gas_4247":                               ; preds = %"$have_gas_4242"
  call void @_out_of_gas()
  br label %"$have_gas_4248"

"$have_gas_4248":                                 ; preds = %"$out_of_gas_4247", %"$have_gas_4242"
  %"$consume_4249" = sub i64 %"$gasrem_4245", 1
  store i64 %"$consume_4249", i64* @_gasrem, align 8
  %"$ud-registry.eError_54" = alloca i8*, align 8
  %"$ud-registry.eError_4250" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_4251" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4250", 0
  %"$ud-registry.eError_envptr_4252" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4250", 1
  %"$m_4253" = load %String, %String* %m8, align 8
  %"$ud-registry.eError_call_4254" = call i8* %"$ud-registry.eError_fptr_4251"(i8* %"$ud-registry.eError_envptr_4252", %String %"$m_4253"), !dbg !419
  store i8* %"$ud-registry.eError_call_4254", i8** %"$ud-registry.eError_54", align 8, !dbg !419
  %"$$ud-registry.eError_54_4255" = load i8*, i8** %"$ud-registry.eError_54", align 8
  store i8* %"$$ud-registry.eError_54_4255", i8** %e7, align 8, !dbg !419
  %"$e_4256" = load i8*, i8** %e7, align 8
  %"$_literal_cost_call_4258" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_4256")
  %"$gasrem_4259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4260" = icmp ugt i64 %"$_literal_cost_call_4258", %"$gasrem_4259"
  br i1 %"$gascmp_4260", label %"$out_of_gas_4261", label %"$have_gas_4262"

"$out_of_gas_4261":                               ; preds = %"$have_gas_4248"
  call void @_out_of_gas()
  br label %"$have_gas_4262"

"$have_gas_4262":                                 ; preds = %"$out_of_gas_4261", %"$have_gas_4248"
  %"$consume_4263" = sub i64 %"$gasrem_4259", %"$_literal_cost_call_4258"
  store i64 %"$consume_4263", i64* @_gasrem, align 8
  %"$execptr_load_4264" = load i8*, i8** @_execptr, align 8
  %"$e_4265" = load i8*, i8** %e7, align 8
  call void @_event(i8* %"$execptr_load_4264", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_4265"), !dbg !420
  %"$gasrem_4266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4267" = icmp ugt i64 1, %"$gasrem_4266"
  br i1 %"$gascmp_4267", label %"$out_of_gas_4268", label %"$have_gas_4269"

"$out_of_gas_4268":                               ; preds = %"$have_gas_4262"
  call void @_out_of_gas()
  br label %"$have_gas_4269"

"$have_gas_4269":                                 ; preds = %"$out_of_gas_4268", %"$have_gas_4262"
  %"$consume_4270" = sub i64 %"$gasrem_4266", 1
  store i64 %"$consume_4270", i64* @_gasrem, align 8
  %msgs9 = alloca %TName_List_Message*, align 8
  %"$gasrem_4271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4272" = icmp ugt i64 1, %"$gasrem_4271"
  br i1 %"$gascmp_4272", label %"$out_of_gas_4273", label %"$have_gas_4274"

"$out_of_gas_4273":                               ; preds = %"$have_gas_4269"
  call void @_out_of_gas()
  br label %"$have_gas_4274"

"$have_gas_4274":                                 ; preds = %"$out_of_gas_4273", %"$have_gas_4269"
  %"$consume_4275" = sub i64 %"$gasrem_4271", 1
  store i64 %"$consume_4275", i64* @_gasrem, align 8
  %"$m_2" = alloca i8*, align 8
  %"$gasrem_4276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4277" = icmp ugt i64 1, %"$gasrem_4276"
  br i1 %"$gascmp_4277", label %"$out_of_gas_4278", label %"$have_gas_4279"

"$out_of_gas_4278":                               ; preds = %"$have_gas_4274"
  call void @_out_of_gas()
  br label %"$have_gas_4279"

"$have_gas_4279":                                 ; preds = %"$out_of_gas_4278", %"$have_gas_4274"
  %"$consume_4280" = sub i64 %"$gasrem_4276", 1
  store i64 %"$consume_4280", i64* @_gasrem, align 8
  %"$msgobj_4281_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_4281_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_4281_salloc_load", i64 265)
  %"$msgobj_4281_salloc" = bitcast i8* %"$msgobj_4281_salloc_salloc" to [265 x i8]*
  %"$msgobj_4281" = bitcast [265 x i8]* %"$msgobj_4281_salloc" to i8*
  store i8 6, i8* %"$msgobj_4281", align 1
  %"$msgobj_fname_4283" = getelementptr i8, i8* %"$msgobj_4281", i32 1
  %"$msgobj_fname_4284" = bitcast i8* %"$msgobj_fname_4283" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_4282", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_4284", align 8
  %"$msgobj_td_4285" = getelementptr i8, i8* %"$msgobj_4281", i32 17
  %"$msgobj_td_4286" = bitcast i8* %"$msgobj_td_4285" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_4286", align 8
  %"$msgobj_v_4288" = getelementptr i8, i8* %"$msgobj_4281", i32 25
  %"$msgobj_v_4289" = bitcast i8* %"$msgobj_v_4288" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_4287", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_4289", align 8
  %"$msgobj_fname_4291" = getelementptr i8, i8* %"$msgobj_4281", i32 41
  %"$msgobj_fname_4292" = bitcast i8* %"$msgobj_fname_4291" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_4290", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_4292", align 8
  %"$msgobj_td_4293" = getelementptr i8, i8* %"$msgobj_4281", i32 57
  %"$msgobj_td_4294" = bitcast i8* %"$msgobj_td_4293" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192", %_TyDescrTy_Typ** %"$msgobj_td_4294", align 8
  %"$msgobj_v_4295" = getelementptr i8, i8* %"$msgobj_4281", i32 65
  %"$msgobj_v_4296" = bitcast i8* %"$msgobj_v_4295" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_4296", align 1
  %"$msgobj_fname_4298" = getelementptr i8, i8* %"$msgobj_4281", i32 97
  %"$msgobj_fname_4299" = bitcast i8* %"$msgobj_fname_4298" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4297", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4299", align 8
  %"$msgobj_td_4300" = getelementptr i8, i8* %"$msgobj_4281", i32 113
  %"$msgobj_td_4301" = bitcast i8* %"$msgobj_td_4300" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_4301", align 8
  %"$msgobj_v_4302" = getelementptr i8, i8* %"$msgobj_4281", i32 121
  %"$msgobj_v_4303" = bitcast i8* %"$msgobj_v_4302" to %String*
  store %String %label, %String* %"$msgobj_v_4303", align 8
  %"$msgobj_fname_4305" = getelementptr i8, i8* %"$msgobj_4281", i32 137
  %"$msgobj_fname_4306" = bitcast i8* %"$msgobj_fname_4305" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4304", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_4306", align 8
  %"$msgobj_td_4307" = getelementptr i8, i8* %"$msgobj_4281", i32 153
  %"$msgobj_td_4308" = bitcast i8* %"$msgobj_td_4307" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_4308", align 8
  %"$recordOwner_4309" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  %"$msgobj_v_4310" = getelementptr i8, i8* %"$msgobj_4281", i32 161
  %"$msgobj_v_4311" = bitcast i8* %"$msgobj_v_4310" to [20 x i8]*
  store [20 x i8] %"$recordOwner_4309", [20 x i8]* %"$msgobj_v_4311", align 1
  %"$msgobj_fname_4313" = getelementptr i8, i8* %"$msgobj_4281", i32 181
  %"$msgobj_fname_4314" = bitcast i8* %"$msgobj_fname_4313" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_4312", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_4314", align 8
  %"$msgobj_td_4315" = getelementptr i8, i8* %"$msgobj_4281", i32 197
  %"$msgobj_td_4316" = bitcast i8* %"$msgobj_td_4315" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_172", %_TyDescrTy_Typ** %"$msgobj_td_4316", align 8
  %"$msgobj_v_4317" = getelementptr i8, i8* %"$msgobj_4281", i32 205
  %"$msgobj_v_4318" = bitcast i8* %"$msgobj_v_4317" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_4318", align 8
  %"$msgobj_fname_4320" = getelementptr i8, i8* %"$msgobj_4281", i32 221
  %"$msgobj_fname_4321" = bitcast i8* %"$msgobj_fname_4320" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_4319", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_4321", align 8
  %"$msgobj_td_4322" = getelementptr i8, i8* %"$msgobj_4281", i32 237
  %"$msgobj_td_4323" = bitcast i8* %"$msgobj_td_4322" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_4323", align 8
  %"$msgobj_v_4324" = getelementptr i8, i8* %"$msgobj_4281", i32 245
  %"$msgobj_v_4325" = bitcast i8* %"$msgobj_v_4324" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_4325", align 1
  store i8* %"$msgobj_4281", i8** %"$m_2", align 8, !dbg !421
  %"$gasrem_4327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4328" = icmp ugt i64 1, %"$gasrem_4327"
  br i1 %"$gascmp_4328", label %"$out_of_gas_4329", label %"$have_gas_4330"

"$out_of_gas_4329":                               ; preds = %"$have_gas_4279"
  call void @_out_of_gas()
  br label %"$have_gas_4330"

"$have_gas_4330":                                 ; preds = %"$out_of_gas_4329", %"$have_gas_4279"
  %"$consume_4331" = sub i64 %"$gasrem_4327", 1
  store i64 %"$consume_4331", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_55" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_4332" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_4333" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4332", 0
  %"$ud-registry.oneMsg_envptr_4334" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_4332", 1
  %"$$m_2_4335" = load i8*, i8** %"$m_2", align 8
  %"$ud-registry.oneMsg_call_4336" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_4333"(i8* %"$ud-registry.oneMsg_envptr_4334", i8* %"$$m_2_4335"), !dbg !422
  store %TName_List_Message* %"$ud-registry.oneMsg_call_4336", %TName_List_Message** %"$ud-registry.oneMsg_55", align 8, !dbg !422
  %"$$ud-registry.oneMsg_55_4337" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_55", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_55_4337", %TName_List_Message** %msgs9, align 8, !dbg !422
  %"$msgs_4338" = load %TName_List_Message*, %TName_List_Message** %msgs9, align 8
  %"$$msgs_4338_4339" = bitcast %TName_List_Message* %"$msgs_4338" to i8*
  %"$_literal_cost_call_4340" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_202", i8* %"$$msgs_4338_4339")
  %"$gasrem_4341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4342" = icmp ugt i64 %"$_literal_cost_call_4340", %"$gasrem_4341"
  br i1 %"$gascmp_4342", label %"$out_of_gas_4343", label %"$have_gas_4344"

"$out_of_gas_4343":                               ; preds = %"$have_gas_4330"
  call void @_out_of_gas()
  br label %"$have_gas_4344"

"$have_gas_4344":                                 ; preds = %"$out_of_gas_4343", %"$have_gas_4330"
  %"$consume_4345" = sub i64 %"$gasrem_4341", %"$_literal_cost_call_4340"
  store i64 %"$consume_4345", i64* @_gasrem, align 8
  %"$execptr_load_4346" = load i8*, i8** @_execptr, align 8
  %"$msgs_4347" = load %TName_List_Message*, %TName_List_Message** %msgs9, align 8
  call void @_send(i8* %"$execptr_load_4346", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_202", %TName_List_Message* %"$msgs_4347"), !dbg !423
  br label %"$matchsucc_3998"

"$empty_default_4002":                            ; preds = %"$have_gas_3996"
  br label %"$matchsucc_3998"

"$matchsucc_3998":                                ; preds = %"$have_gas_4344", %"$have_gas_4223", %"$empty_default_4002"
  ret void
}

define void @assign(i8* %0) !dbg !424 {
entry:
  %"$_amount_4349" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4350" = bitcast i8* %"$_amount_4349" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4350", align 8
  %"$_origin_4351" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4352" = bitcast i8* %"$_origin_4351" to [20 x i8]*
  %"$_sender_4353" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4354" = bitcast i8* %"$_sender_4353" to [20 x i8]*
  %"$parent_4355" = getelementptr i8, i8* %0, i32 56
  %"$parent_4356" = bitcast i8* %"$parent_4355" to [32 x i8]*
  %"$label_4357" = getelementptr i8, i8* %0, i32 88
  %"$label_4358" = bitcast i8* %"$label_4357" to %String*
  %label = load %String, %String* %"$label_4358", align 8
  %"$owner_4359" = getelementptr i8, i8* %0, i32 104
  %"$owner_4360" = bitcast i8* %"$owner_4359" to [20 x i8]*
  call void @"$assign_3903"(%Uint128 %_amount, [20 x i8]* %"$_origin_4352", [20 x i8]* %"$_sender_4354", [32 x i8]* %"$parent_4356", %String %label, [20 x i8]* %"$owner_4360"), !dbg !425
  ret void
}

define internal void @"$bestow_4361"(%Uint128 %_amount, [20 x i8]* %"$_origin_4362", [20 x i8]* %"$_sender_4363", %String %label, [20 x i8]* %"$owner_4364", [20 x i8]* %"$resolver_4365") !dbg !426 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4362", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4363", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_4364", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_4365", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_4367" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_call_4368" = call i8* @_fetch_field(i8* %"$execptr_load_4367", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_4366", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_203", i32 0, i8* null, i32 1), !dbg !427
  %"$currentAdmins_4369" = bitcast i8* %"$currentAdmins_call_4368" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_4369", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_4370" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_4370_4371" = bitcast %TName_List_ByStr20* %"$currentAdmins_4370" to i8*
  %"$_literal_cost_call_4372" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_203", i8* %"$$currentAdmins_4370_4371")
  %"$gasadd_4373" = add i64 %"$_literal_cost_call_4372", 0
  %"$gasrem_4374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4375" = icmp ugt i64 %"$gasadd_4373", %"$gasrem_4374"
  br i1 %"$gascmp_4375", label %"$out_of_gas_4376", label %"$have_gas_4377"

"$out_of_gas_4376":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4377"

"$have_gas_4377":                                 ; preds = %"$out_of_gas_4376", %entry
  %"$consume_4378" = sub i64 %"$gasrem_4374", %"$gasadd_4373"
  store i64 %"$consume_4378", i64* @_gasrem, align 8
  %"$gasrem_4379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4380" = icmp ugt i64 1, %"$gasrem_4379"
  br i1 %"$gascmp_4380", label %"$out_of_gas_4381", label %"$have_gas_4382"

"$out_of_gas_4381":                               ; preds = %"$have_gas_4377"
  call void @_out_of_gas()
  br label %"$have_gas_4382"

"$have_gas_4382":                                 ; preds = %"$out_of_gas_4381", %"$have_gas_4377"
  %"$consume_4383" = sub i64 %"$gasrem_4379", 1
  store i64 %"$consume_4383", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_4384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4385" = icmp ugt i64 1, %"$gasrem_4384"
  br i1 %"$gascmp_4385", label %"$out_of_gas_4386", label %"$have_gas_4387"

"$out_of_gas_4386":                               ; preds = %"$have_gas_4382"
  call void @_out_of_gas()
  br label %"$have_gas_4387"

"$have_gas_4387":                                 ; preds = %"$out_of_gas_4386", %"$have_gas_4382"
  %"$consume_4388" = sub i64 %"$gasrem_4384", 1
  store i64 %"$consume_4388", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_4389" = load { void (i8*, [32 x i8]*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, [32 x i8]*, %String)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_4390" = extractvalue { void (i8*, [32 x i8]*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_4389", 0
  %"$ud-registry.parentLabelToNode_envptr_4391" = extractvalue { void (i8*, [32 x i8]*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_4389", 1
  %"$ud-registry.parentLabelToNode_rootNode_4392" = alloca [32 x i8], align 1
  %"$rootNode_4393" = load [32 x i8], [32 x i8]* @_cparam_rootNode, align 1
  store [32 x i8] %"$rootNode_4393", [32 x i8]* %"$ud-registry.parentLabelToNode_rootNode_4392", align 1
  %"$ud-registry.parentLabelToNode_retalloca_4394" = alloca [32 x i8], align 1
  call void %"$ud-registry.parentLabelToNode_fptr_4390"(i8* %"$ud-registry.parentLabelToNode_envptr_4391", [32 x i8]* %"$ud-registry.parentLabelToNode_retalloca_4394", [32 x i8]* %"$ud-registry.parentLabelToNode_rootNode_4392", %String %label), !dbg !428
  %"$ud-registry.parentLabelToNode_ret_4395" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_retalloca_4394", align 1
  store [32 x i8] %"$ud-registry.parentLabelToNode_ret_4395", [32 x i8]* %node, align 1, !dbg !428
  %recordExists = alloca %TName_Bool*, align 8
  %"$indices_buf_4396_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4396_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4396_salloc_load", i64 32)
  %"$indices_buf_4396_salloc" = bitcast i8* %"$indices_buf_4396_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4396" = bitcast [32 x i8]* %"$indices_buf_4396_salloc" to i8*
  %"$node_4397" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4398" = getelementptr i8, i8* %"$indices_buf_4396", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4398" to [32 x i8]*
  store [32 x i8] %"$node_4397", [32 x i8]* %indices_cast, align 1
  %"$execptr_load_4400" = load i8*, i8** @_execptr, align 8
  %"$recordExists_call_4401" = call i8* @_fetch_field(i8* %"$execptr_load_4400", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4399", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_208", i32 1, i8* %"$indices_buf_4396", i32 0), !dbg !429
  %"$recordExists_4402" = bitcast i8* %"$recordExists_call_4401" to %TName_Bool*
  store %TName_Bool* %"$recordExists_4402", %TName_Bool** %recordExists, align 8
  %"$recordExists_4403" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$$recordExists_4403_4404" = bitcast %TName_Bool* %"$recordExists_4403" to i8*
  %"$_literal_cost_call_4405" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_204", i8* %"$$recordExists_4403_4404")
  %"$gasadd_4406" = add i64 %"$_literal_cost_call_4405", 0
  %"$gasadd_4407" = add i64 %"$gasadd_4406", 1
  %"$gasrem_4408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4409" = icmp ugt i64 %"$gasadd_4407", %"$gasrem_4408"
  br i1 %"$gascmp_4409", label %"$out_of_gas_4410", label %"$have_gas_4411"

"$out_of_gas_4410":                               ; preds = %"$have_gas_4387"
  call void @_out_of_gas()
  br label %"$have_gas_4411"

"$have_gas_4411":                                 ; preds = %"$out_of_gas_4410", %"$have_gas_4387"
  %"$consume_4412" = sub i64 %"$gasrem_4408", %"$gasadd_4407"
  store i64 %"$consume_4412", i64* @_gasrem, align 8
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_4413_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4413_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4413_salloc_load", i64 32)
  %"$indices_buf_4413_salloc" = bitcast i8* %"$indices_buf_4413_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4413" = bitcast [32 x i8]* %"$indices_buf_4413_salloc" to i8*
  %"$node_4414" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4415" = getelementptr i8, i8* %"$indices_buf_4413", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4415" to [32 x i8]*
  store [32 x i8] %"$node_4414", [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_4417" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_4418" = call i8* @_fetch_field(i8* %"$execptr_load_4417", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4416", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_208", i32 1, i8* %"$indices_buf_4413", i32 1), !dbg !430
  %"$maybeRecord_4419" = bitcast i8* %"$maybeRecord_call_4418" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4419", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_4420" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_4420_4421" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4420" to i8*
  %"$_literal_cost_call_4422" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_199", i8* %"$$maybeRecord_4420_4421")
  %"$gasadd_4423" = add i64 %"$_literal_cost_call_4422", 0
  %"$gasadd_4424" = add i64 %"$gasadd_4423", 1
  %"$gasrem_4425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4426" = icmp ugt i64 %"$gasadd_4424", %"$gasrem_4425"
  br i1 %"$gascmp_4426", label %"$out_of_gas_4427", label %"$have_gas_4428"

"$out_of_gas_4427":                               ; preds = %"$have_gas_4411"
  call void @_out_of_gas()
  br label %"$have_gas_4428"

"$have_gas_4428":                                 ; preds = %"$out_of_gas_4427", %"$have_gas_4411"
  %"$consume_4429" = sub i64 %"$gasrem_4425", %"$gasadd_4424"
  store i64 %"$consume_4429", i64* @_gasrem, align 8
  %currentRegistrar = alloca [20 x i8], align 1
  %"$execptr_load_4431" = load i8*, i8** @_execptr, align 8
  %"$currentRegistrar_call_4432" = call i8* @_fetch_field(i8* %"$execptr_load_4431", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_4430", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", i32 0, i8* null, i32 1), !dbg !431
  %"$currentRegistrar_4433" = bitcast i8* %"$currentRegistrar_call_4432" to [20 x i8]*
  %"$currentRegistrar_4434" = load [20 x i8], [20 x i8]* %"$currentRegistrar_4433", align 1
  store [20 x i8] %"$currentRegistrar_4434", [20 x i8]* %currentRegistrar, align 1
  %"$_literal_cost_currentRegistrar_4435" = alloca [20 x i8], align 1
  %"$currentRegistrar_4436" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_4436", [20 x i8]* %"$_literal_cost_currentRegistrar_4435", align 1
  %"$$_literal_cost_currentRegistrar_4435_4437" = bitcast [20 x i8]* %"$_literal_cost_currentRegistrar_4435" to i8*
  %"$_literal_cost_call_4438" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", i8* %"$$_literal_cost_currentRegistrar_4435_4437")
  %"$gasadd_4439" = add i64 %"$_literal_cost_call_4438", 0
  %"$gasrem_4440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4441" = icmp ugt i64 %"$gasadd_4439", %"$gasrem_4440"
  br i1 %"$gascmp_4441", label %"$out_of_gas_4442", label %"$have_gas_4443"

"$out_of_gas_4442":                               ; preds = %"$have_gas_4428"
  call void @_out_of_gas()
  br label %"$have_gas_4443"

"$have_gas_4443":                                 ; preds = %"$out_of_gas_4442", %"$have_gas_4428"
  %"$consume_4444" = sub i64 %"$gasrem_4440", %"$gasadd_4439"
  store i64 %"$consume_4444", i64* @_gasrem, align 8
  %"$gasrem_4445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4446" = icmp ugt i64 1, %"$gasrem_4445"
  br i1 %"$gascmp_4446", label %"$out_of_gas_4447", label %"$have_gas_4448"

"$out_of_gas_4447":                               ; preds = %"$have_gas_4443"
  call void @_out_of_gas()
  br label %"$have_gas_4448"

"$have_gas_4448":                                 ; preds = %"$out_of_gas_4447", %"$have_gas_4443"
  %"$consume_4449" = sub i64 %"$gasrem_4445", 1
  store i64 %"$consume_4449", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_4450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4451" = icmp ugt i64 1, %"$gasrem_4450"
  br i1 %"$gascmp_4451", label %"$out_of_gas_4452", label %"$have_gas_4453"

"$out_of_gas_4452":                               ; preds = %"$have_gas_4448"
  call void @_out_of_gas()
  br label %"$have_gas_4453"

"$have_gas_4453":                                 ; preds = %"$out_of_gas_4452", %"$have_gas_4448"
  %"$consume_4454" = sub i64 %"$gasrem_4450", 1
  store i64 %"$consume_4454", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_4455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4456" = icmp ugt i64 1, %"$gasrem_4455"
  br i1 %"$gascmp_4456", label %"$out_of_gas_4457", label %"$have_gas_4458"

"$out_of_gas_4457":                               ; preds = %"$have_gas_4453"
  call void @_out_of_gas()
  br label %"$have_gas_4458"

"$have_gas_4458":                                 ; preds = %"$out_of_gas_4457", %"$have_gas_4453"
  %"$consume_4459" = sub i64 %"$gasrem_4455", 1
  store i64 %"$consume_4459", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_4460" = load { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_4461" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_4460", 0
  %"$ud-registry.listByStr20Contains_envptr_4462" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_4460", 1
  %"$currentAdmins_4463" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains__sender_4464" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.listByStr20Contains__sender_4464", align 1
  %"$ud-registry.listByStr20Contains_call_4465" = call %TName_Bool* %"$ud-registry.listByStr20Contains_fptr_4461"(i8* %"$ud-registry.listByStr20Contains_envptr_4462", %TName_List_ByStr20* %"$currentAdmins_4463", [20 x i8]* %"$ud-registry.listByStr20Contains__sender_4464"), !dbg !432
  store %TName_Bool* %"$ud-registry.listByStr20Contains_call_4465", %TName_Bool** %isSenderAdmin, align 8, !dbg !432
  %"$gasrem_4466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4467" = icmp ugt i64 1, %"$gasrem_4466"
  br i1 %"$gascmp_4467", label %"$out_of_gas_4468", label %"$have_gas_4469"

"$out_of_gas_4468":                               ; preds = %"$have_gas_4458"
  call void @_out_of_gas()
  br label %"$have_gas_4469"

"$have_gas_4469":                                 ; preds = %"$out_of_gas_4468", %"$have_gas_4458"
  %"$consume_4470" = sub i64 %"$gasrem_4466", 1
  store i64 %"$consume_4470", i64* @_gasrem, align 8
  %isSenderRegistrar = alloca %TName_Bool*, align 8
  %"$gasrem_4471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4472" = icmp ugt i64 20, %"$gasrem_4471"
  br i1 %"$gascmp_4472", label %"$out_of_gas_4473", label %"$have_gas_4474"

"$out_of_gas_4473":                               ; preds = %"$have_gas_4469"
  call void @_out_of_gas()
  br label %"$have_gas_4474"

"$have_gas_4474":                                 ; preds = %"$out_of_gas_4473", %"$have_gas_4469"
  %"$consume_4475" = sub i64 %"$gasrem_4471", 20
  store i64 %"$consume_4475", i64* @_gasrem, align 8
  %"$execptr_load_4476" = load i8*, i8** @_execptr, align 8
  %"$eq_currentRegistrar_4477" = alloca [20 x i8], align 1
  %"$currentRegistrar_4478" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_4478", [20 x i8]* %"$eq_currentRegistrar_4477", align 1
  %"$$eq_currentRegistrar_4477_4479" = bitcast [20 x i8]* %"$eq_currentRegistrar_4477" to i8*
  %"$eq__sender_4480" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_4480", align 1
  %"$$eq__sender_4480_4481" = bitcast [20 x i8]* %"$eq__sender_4480" to i8*
  %"$eq_call_4482" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_4476", i32 20, i8* %"$$eq_currentRegistrar_4477_4479", i8* %"$$eq__sender_4480_4481"), !dbg !433
  store %TName_Bool* %"$eq_call_4482", %TName_Bool** %isSenderRegistrar, align 8, !dbg !433
  %"$gasrem_4484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4485" = icmp ugt i64 1, %"$gasrem_4484"
  br i1 %"$gascmp_4485", label %"$out_of_gas_4486", label %"$have_gas_4487"

"$out_of_gas_4486":                               ; preds = %"$have_gas_4474"
  call void @_out_of_gas()
  br label %"$have_gas_4487"

"$have_gas_4487":                                 ; preds = %"$out_of_gas_4486", %"$have_gas_4474"
  %"$consume_4488" = sub i64 %"$gasrem_4484", 1
  store i64 %"$consume_4488", i64* @_gasrem, align 8
  %isOkSender = alloca %TName_Bool*, align 8
  %"$gasrem_4489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4490" = icmp ugt i64 1, %"$gasrem_4489"
  br i1 %"$gascmp_4490", label %"$out_of_gas_4491", label %"$have_gas_4492"

"$out_of_gas_4491":                               ; preds = %"$have_gas_4487"
  call void @_out_of_gas()
  br label %"$have_gas_4492"

"$have_gas_4492":                                 ; preds = %"$out_of_gas_4491", %"$have_gas_4487"
  %"$consume_4493" = sub i64 %"$gasrem_4489", 1
  store i64 %"$consume_4493", i64* @_gasrem, align 8
  %"$BoolUtils.orb_4494" = load { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_4495" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_4494", 0
  %"$BoolUtils.orb_envptr_4496" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_4494", 1
  %"$isSenderRegistrar_4497" = load %TName_Bool*, %TName_Bool** %isSenderRegistrar, align 8
  %"$isSenderAdmin_4498" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$BoolUtils.orb_call_4499" = call %TName_Bool* %"$BoolUtils.orb_fptr_4495"(i8* %"$BoolUtils.orb_envptr_4496", %TName_Bool* %"$isSenderRegistrar_4497", %TName_Bool* %"$isSenderAdmin_4498"), !dbg !434
  store %TName_Bool* %"$BoolUtils.orb_call_4499", %TName_Bool** %isOkSender, align 8, !dbg !434
  %"$gasrem_4500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4501" = icmp ugt i64 1, %"$gasrem_4500"
  br i1 %"$gascmp_4501", label %"$out_of_gas_4502", label %"$have_gas_4503"

"$out_of_gas_4502":                               ; preds = %"$have_gas_4492"
  call void @_out_of_gas()
  br label %"$have_gas_4503"

"$have_gas_4503":                                 ; preds = %"$out_of_gas_4502", %"$have_gas_4492"
  %"$consume_4504" = sub i64 %"$gasrem_4500", 1
  store i64 %"$consume_4504", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_4505" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4506" = icmp ugt i64 1, %"$gasrem_4505"
  br i1 %"$gascmp_4506", label %"$out_of_gas_4507", label %"$have_gas_4508"

"$out_of_gas_4507":                               ; preds = %"$have_gas_4503"
  call void @_out_of_gas()
  br label %"$have_gas_4508"

"$have_gas_4508":                                 ; preds = %"$out_of_gas_4507", %"$have_gas_4503"
  %"$consume_4509" = sub i64 %"$gasrem_4505", 1
  store i64 %"$consume_4509", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_56" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_4510" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_4511" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4510", 0
  %"$ud-registry.recordMemberOwner_envptr_4512" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4510", 1
  %"$maybeRecord_4513" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_4514" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_4511"(i8* %"$ud-registry.recordMemberOwner_envptr_4512", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4514", %TName_Option_ud-registry.Record* %"$maybeRecord_4513"), !dbg !435
  %"$ud-registry.recordMemberOwner_ret_4515" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4514", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_4515", [20 x i8]* %"$ud-registry.recordMemberOwner_56", align 1, !dbg !435
  %"$$ud-registry.recordMemberOwner_56_4516" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_56", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_56_4516", [20 x i8]* %recordOwner, align 1, !dbg !435
  %"$gasrem_4517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4518" = icmp ugt i64 1, %"$gasrem_4517"
  br i1 %"$gascmp_4518", label %"$out_of_gas_4519", label %"$have_gas_4520"

"$out_of_gas_4519":                               ; preds = %"$have_gas_4508"
  call void @_out_of_gas()
  br label %"$have_gas_4520"

"$have_gas_4520":                                 ; preds = %"$out_of_gas_4519", %"$have_gas_4508"
  %"$consume_4521" = sub i64 %"$gasrem_4517", 1
  store i64 %"$consume_4521", i64* @_gasrem, align 8
  %recordIsUnowned = alloca %TName_Bool*, align 8
  %"$gasrem_4522" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4523" = icmp ugt i64 20, %"$gasrem_4522"
  br i1 %"$gascmp_4523", label %"$out_of_gas_4524", label %"$have_gas_4525"

"$out_of_gas_4524":                               ; preds = %"$have_gas_4520"
  call void @_out_of_gas()
  br label %"$have_gas_4525"

"$have_gas_4525":                                 ; preds = %"$out_of_gas_4524", %"$have_gas_4520"
  %"$consume_4526" = sub i64 %"$gasrem_4522", 20
  store i64 %"$consume_4526", i64* @_gasrem, align 8
  %"$execptr_load_4527" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_4528" = alloca [20 x i8], align 1
  %"$recordOwner_4529" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_4529", [20 x i8]* %"$eq_recordOwner_4528", align 1
  %"$$eq_recordOwner_4528_4530" = bitcast [20 x i8]* %"$eq_recordOwner_4528" to i8*
  %"$eq_ud-registry.zeroByStr20_4531" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_4532" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_4532", [20 x i8]* %"$eq_ud-registry.zeroByStr20_4531", align 1
  %"$$eq_ud-registry.zeroByStr20_4531_4533" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_4531" to i8*
  %"$eq_call_4534" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_4527", i32 20, i8* %"$$eq_recordOwner_4528_4530", i8* %"$$eq_ud-registry.zeroByStr20_4531_4533"), !dbg !436
  store %TName_Bool* %"$eq_call_4534", %TName_Bool** %recordIsUnowned, align 8, !dbg !436
  %"$gasrem_4536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4537" = icmp ugt i64 1, %"$gasrem_4536"
  br i1 %"$gascmp_4537", label %"$out_of_gas_4538", label %"$have_gas_4539"

"$out_of_gas_4538":                               ; preds = %"$have_gas_4525"
  call void @_out_of_gas()
  br label %"$have_gas_4539"

"$have_gas_4539":                                 ; preds = %"$out_of_gas_4538", %"$have_gas_4525"
  %"$consume_4540" = sub i64 %"$gasrem_4536", 1
  store i64 %"$consume_4540", i64* @_gasrem, align 8
  %recordIsOwnedByRegistrar = alloca %TName_Bool*, align 8
  %"$gasrem_4541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4542" = icmp ugt i64 20, %"$gasrem_4541"
  br i1 %"$gascmp_4542", label %"$out_of_gas_4543", label %"$have_gas_4544"

"$out_of_gas_4543":                               ; preds = %"$have_gas_4539"
  call void @_out_of_gas()
  br label %"$have_gas_4544"

"$have_gas_4544":                                 ; preds = %"$out_of_gas_4543", %"$have_gas_4539"
  %"$consume_4545" = sub i64 %"$gasrem_4541", 20
  store i64 %"$consume_4545", i64* @_gasrem, align 8
  %"$execptr_load_4546" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_4547" = alloca [20 x i8], align 1
  %"$recordOwner_4548" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_4548", [20 x i8]* %"$eq_recordOwner_4547", align 1
  %"$$eq_recordOwner_4547_4549" = bitcast [20 x i8]* %"$eq_recordOwner_4547" to i8*
  %"$eq_currentRegistrar_4550" = alloca [20 x i8], align 1
  %"$currentRegistrar_4551" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_4551", [20 x i8]* %"$eq_currentRegistrar_4550", align 1
  %"$$eq_currentRegistrar_4550_4552" = bitcast [20 x i8]* %"$eq_currentRegistrar_4550" to i8*
  %"$eq_call_4553" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_4546", i32 20, i8* %"$$eq_recordOwner_4547_4549", i8* %"$$eq_currentRegistrar_4550_4552"), !dbg !437
  store %TName_Bool* %"$eq_call_4553", %TName_Bool** %recordIsOwnedByRegistrar, align 8, !dbg !437
  %"$gasrem_4555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4556" = icmp ugt i64 1, %"$gasrem_4555"
  br i1 %"$gascmp_4556", label %"$out_of_gas_4557", label %"$have_gas_4558"

"$out_of_gas_4557":                               ; preds = %"$have_gas_4544"
  call void @_out_of_gas()
  br label %"$have_gas_4558"

"$have_gas_4558":                                 ; preds = %"$out_of_gas_4557", %"$have_gas_4544"
  %"$consume_4559" = sub i64 %"$gasrem_4555", 1
  store i64 %"$consume_4559", i64* @_gasrem, align 8
  %isRegistrarSenderAndOwned = alloca %TName_Bool*, align 8
  %"$gasrem_4560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4561" = icmp ugt i64 1, %"$gasrem_4560"
  br i1 %"$gascmp_4561", label %"$out_of_gas_4562", label %"$have_gas_4563"

"$out_of_gas_4562":                               ; preds = %"$have_gas_4558"
  call void @_out_of_gas()
  br label %"$have_gas_4563"

"$have_gas_4563":                                 ; preds = %"$out_of_gas_4562", %"$have_gas_4558"
  %"$consume_4564" = sub i64 %"$gasrem_4560", 1
  store i64 %"$consume_4564", i64* @_gasrem, align 8
  %"$BoolUtils.andb_4565" = load { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_4566" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4565", 0
  %"$BoolUtils.andb_envptr_4567" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4565", 1
  %"$recordIsOwnedByRegistrar_4568" = load %TName_Bool*, %TName_Bool** %recordIsOwnedByRegistrar, align 8
  %"$isSenderRegistrar_4569" = load %TName_Bool*, %TName_Bool** %isSenderRegistrar, align 8
  %"$BoolUtils.andb_call_4570" = call %TName_Bool* %"$BoolUtils.andb_fptr_4566"(i8* %"$BoolUtils.andb_envptr_4567", %TName_Bool* %"$recordIsOwnedByRegistrar_4568", %TName_Bool* %"$isSenderRegistrar_4569"), !dbg !438
  store %TName_Bool* %"$BoolUtils.andb_call_4570", %TName_Bool** %isRegistrarSenderAndOwned, align 8, !dbg !438
  %"$gasrem_4571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4572" = icmp ugt i64 1, %"$gasrem_4571"
  br i1 %"$gascmp_4572", label %"$out_of_gas_4573", label %"$have_gas_4574"

"$out_of_gas_4573":                               ; preds = %"$have_gas_4563"
  call void @_out_of_gas()
  br label %"$have_gas_4574"

"$have_gas_4574":                                 ; preds = %"$out_of_gas_4573", %"$have_gas_4563"
  %"$consume_4575" = sub i64 %"$gasrem_4571", 1
  store i64 %"$consume_4575", i64* @_gasrem, align 8
  %isOkRecordOwner = alloca %TName_Bool*, align 8
  %"$gasrem_4576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4577" = icmp ugt i64 1, %"$gasrem_4576"
  br i1 %"$gascmp_4577", label %"$out_of_gas_4578", label %"$have_gas_4579"

"$out_of_gas_4578":                               ; preds = %"$have_gas_4574"
  call void @_out_of_gas()
  br label %"$have_gas_4579"

"$have_gas_4579":                                 ; preds = %"$out_of_gas_4578", %"$have_gas_4574"
  %"$consume_4580" = sub i64 %"$gasrem_4576", 1
  store i64 %"$consume_4580", i64* @_gasrem, align 8
  %"$BoolUtils.orb_4581" = load { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_4582" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_4581", 0
  %"$BoolUtils.orb_envptr_4583" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_4581", 1
  %"$recordIsUnowned_4584" = load %TName_Bool*, %TName_Bool** %recordIsUnowned, align 8
  %"$isRegistrarSenderAndOwned_4585" = load %TName_Bool*, %TName_Bool** %isRegistrarSenderAndOwned, align 8
  %"$BoolUtils.orb_call_4586" = call %TName_Bool* %"$BoolUtils.orb_fptr_4582"(i8* %"$BoolUtils.orb_envptr_4583", %TName_Bool* %"$recordIsUnowned_4584", %TName_Bool* %"$isRegistrarSenderAndOwned_4585"), !dbg !439
  store %TName_Bool* %"$BoolUtils.orb_call_4586", %TName_Bool** %isOkRecordOwner, align 8, !dbg !439
  %"$gasrem_4587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4588" = icmp ugt i64 1, %"$gasrem_4587"
  br i1 %"$gascmp_4588", label %"$out_of_gas_4589", label %"$have_gas_4590"

"$out_of_gas_4589":                               ; preds = %"$have_gas_4579"
  call void @_out_of_gas()
  br label %"$have_gas_4590"

"$have_gas_4590":                                 ; preds = %"$out_of_gas_4589", %"$have_gas_4579"
  %"$consume_4591" = sub i64 %"$gasrem_4587", 1
  store i64 %"$consume_4591", i64* @_gasrem, align 8
  %"$BoolUtils.andb_4592" = load { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_4593" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4592", 0
  %"$BoolUtils.andb_envptr_4594" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4592", 1
  %"$isOkSender_4595" = load %TName_Bool*, %TName_Bool** %isOkSender, align 8
  %"$isOkRecordOwner_4596" = load %TName_Bool*, %TName_Bool** %isOkRecordOwner, align 8
  %"$BoolUtils.andb_call_4597" = call %TName_Bool* %"$BoolUtils.andb_fptr_4593"(i8* %"$BoolUtils.andb_envptr_4594", %TName_Bool* %"$isOkSender_4595", %TName_Bool* %"$isOkRecordOwner_4596"), !dbg !440
  store %TName_Bool* %"$BoolUtils.andb_call_4597", %TName_Bool** %isOk, align 8, !dbg !440
  %"$gasrem_4598" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4599" = icmp ugt i64 2, %"$gasrem_4598"
  br i1 %"$gascmp_4599", label %"$out_of_gas_4600", label %"$have_gas_4601"

"$out_of_gas_4600":                               ; preds = %"$have_gas_4590"
  call void @_out_of_gas()
  br label %"$have_gas_4601"

"$have_gas_4601":                                 ; preds = %"$out_of_gas_4600", %"$have_gas_4590"
  %"$consume_4602" = sub i64 %"$gasrem_4598", 2
  store i64 %"$consume_4602", i64* @_gasrem, align 8
  %"$isOk_4604" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_4605" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_4604", i32 0, i32 0
  %"$isOk_tag_4606" = load i8, i8* %"$isOk_tag_4605", align 1
  switch i8 %"$isOk_tag_4606", label %"$empty_default_4607" [
    i8 0, label %"$True_4608"
    i8 1, label %"$False_4707"
  ], !dbg !441

"$True_4608":                                     ; preds = %"$have_gas_4601"
  %"$isOk_4609" = bitcast %TName_Bool* %"$isOk_4604" to %CName_True*
  %"$gasrem_4610" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4611" = icmp ugt i64 2, %"$gasrem_4610"
  br i1 %"$gascmp_4611", label %"$out_of_gas_4612", label %"$have_gas_4613"

"$out_of_gas_4612":                               ; preds = %"$True_4608"
  call void @_out_of_gas()
  br label %"$have_gas_4613"

"$have_gas_4613":                                 ; preds = %"$out_of_gas_4612", %"$True_4608"
  %"$consume_4614" = sub i64 %"$gasrem_4610", 2
  store i64 %"$consume_4614", i64* @_gasrem, align 8
  %"$recordExists_4616" = load %TName_Bool*, %TName_Bool** %recordExists, align 8
  %"$recordExists_tag_4617" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$recordExists_4616", i32 0, i32 0
  %"$recordExists_tag_4618" = load i8, i8* %"$recordExists_tag_4617", align 1
  switch i8 %"$recordExists_tag_4618", label %"$default_4619" [
    i8 1, label %"$False_4620"
  ], !dbg !442

"$False_4620":                                    ; preds = %"$have_gas_4613"
  %"$recordExists_4621" = bitcast %TName_Bool* %"$recordExists_4616" to %CName_False*
  %"$gasrem_4622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4623" = icmp ugt i64 1, %"$gasrem_4622"
  br i1 %"$gascmp_4623", label %"$out_of_gas_4624", label %"$have_gas_4625"

"$out_of_gas_4624":                               ; preds = %"$False_4620"
  call void @_out_of_gas()
  br label %"$have_gas_4625"

"$have_gas_4625":                                 ; preds = %"$out_of_gas_4624", %"$False_4620"
  %"$consume_4626" = sub i64 %"$gasrem_4622", 1
  store i64 %"$consume_4626", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_4627" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4628" = icmp ugt i64 1, %"$gasrem_4627"
  br i1 %"$gascmp_4628", label %"$out_of_gas_4629", label %"$have_gas_4630"

"$out_of_gas_4629":                               ; preds = %"$have_gas_4625"
  call void @_out_of_gas()
  br label %"$have_gas_4630"

"$have_gas_4630":                                 ; preds = %"$out_of_gas_4629", %"$have_gas_4625"
  %"$consume_4631" = sub i64 %"$gasrem_4627", 1
  store i64 %"$consume_4631", i64* @_gasrem, align 8
  %"$ud-registry.eNewDomain_4632" = load { i8* (i8*, [32 x i8]*, %String)*, i8* }, { i8* (i8*, [32 x i8]*, %String)*, i8* }* @ud-registry.eNewDomain, align 8
  %"$ud-registry.eNewDomain_fptr_4633" = extractvalue { i8* (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.eNewDomain_4632", 0
  %"$ud-registry.eNewDomain_envptr_4634" = extractvalue { i8* (i8*, [32 x i8]*, %String)*, i8* } %"$ud-registry.eNewDomain_4632", 1
  %"$ud-registry.eNewDomain_rootNode_4635" = alloca [32 x i8], align 1
  %"$rootNode_4636" = load [32 x i8], [32 x i8]* @_cparam_rootNode, align 1
  store [32 x i8] %"$rootNode_4636", [32 x i8]* %"$ud-registry.eNewDomain_rootNode_4635", align 1
  %"$ud-registry.eNewDomain_call_4637" = call i8* %"$ud-registry.eNewDomain_fptr_4633"(i8* %"$ud-registry.eNewDomain_envptr_4634", [32 x i8]* %"$ud-registry.eNewDomain_rootNode_4635", %String %label), !dbg !445
  store i8* %"$ud-registry.eNewDomain_call_4637", i8** %e, align 8, !dbg !445
  %"$e_4638" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_4640" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_4638")
  %"$gasrem_4641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4642" = icmp ugt i64 %"$_literal_cost_call_4640", %"$gasrem_4641"
  br i1 %"$gascmp_4642", label %"$out_of_gas_4643", label %"$have_gas_4644"

"$out_of_gas_4643":                               ; preds = %"$have_gas_4630"
  call void @_out_of_gas()
  br label %"$have_gas_4644"

"$have_gas_4644":                                 ; preds = %"$out_of_gas_4643", %"$have_gas_4630"
  %"$consume_4645" = sub i64 %"$gasrem_4641", %"$_literal_cost_call_4640"
  store i64 %"$consume_4645", i64* @_gasrem, align 8
  %"$execptr_load_4646" = load i8*, i8** @_execptr, align 8
  %"$e_4647" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_4646", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_4647"), !dbg !448
  br label %"$matchsucc_4615"

"$default_4619":                                  ; preds = %"$have_gas_4613"
  br label %"$joinp_8"

"$joinp_8":                                       ; preds = %"$default_4619"
  br label %"$matchsucc_4615"

"$matchsucc_4615":                                ; preds = %"$have_gas_4644", %"$joinp_8"
  %"$gasrem_4648" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4649" = icmp ugt i64 1, %"$gasrem_4648"
  br i1 %"$gascmp_4649", label %"$out_of_gas_4650", label %"$have_gas_4651"

"$out_of_gas_4650":                               ; preds = %"$matchsucc_4615"
  call void @_out_of_gas()
  br label %"$have_gas_4651"

"$have_gas_4651":                                 ; preds = %"$out_of_gas_4650", %"$matchsucc_4615"
  %"$consume_4652" = sub i64 %"$gasrem_4648", 1
  store i64 %"$consume_4652", i64* @_gasrem, align 8
  %newRecord = alloca %TName_ud-registry.Record*, align 8
  %"$gasrem_4653" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4654" = icmp ugt i64 1, %"$gasrem_4653"
  br i1 %"$gascmp_4654", label %"$out_of_gas_4655", label %"$have_gas_4656"

"$out_of_gas_4655":                               ; preds = %"$have_gas_4651"
  call void @_out_of_gas()
  br label %"$have_gas_4656"

"$have_gas_4656":                                 ; preds = %"$out_of_gas_4655", %"$have_gas_4651"
  %"$consume_4657" = sub i64 %"$gasrem_4653", 1
  store i64 %"$consume_4657", i64* @_gasrem, align 8
  %"$adtval_4658_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4658_salloc" = call i8* @_salloc(i8* %"$adtval_4658_load", i64 41)
  %"$adtval_4658" = bitcast i8* %"$adtval_4658_salloc" to %CName_ud-registry.Record*
  %"$adtgep_4659" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4658", i32 0, i32 0
  store i8 0, i8* %"$adtgep_4659", align 1
  %"$adtgep_4660" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4658", i32 0, i32 1
  store [20 x i8] %owner, [20 x i8]* %"$adtgep_4660", align 1
  %"$adtgep_4661" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$adtval_4658", i32 0, i32 2
  store [20 x i8] %resolver, [20 x i8]* %"$adtgep_4661", align 1
  %"$adtptr_4662" = bitcast %CName_ud-registry.Record* %"$adtval_4658" to %TName_ud-registry.Record*
  store %TName_ud-registry.Record* %"$adtptr_4662", %TName_ud-registry.Record** %newRecord, align 8, !dbg !449
  %"$newRecord_4663" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$$newRecord_4663_4664" = bitcast %TName_ud-registry.Record* %"$newRecord_4663" to i8*
  %"$_literal_cost_call_4665" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_ud-registry.Record_201", i8* %"$$newRecord_4663_4664")
  %"$gasadd_4666" = add i64 %"$_literal_cost_call_4665", 1
  %"$gasrem_4667" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4668" = icmp ugt i64 %"$gasadd_4666", %"$gasrem_4667"
  br i1 %"$gascmp_4668", label %"$out_of_gas_4669", label %"$have_gas_4670"

"$out_of_gas_4669":                               ; preds = %"$have_gas_4656"
  call void @_out_of_gas()
  br label %"$have_gas_4670"

"$have_gas_4670":                                 ; preds = %"$out_of_gas_4669", %"$have_gas_4656"
  %"$consume_4671" = sub i64 %"$gasrem_4667", %"$gasadd_4666"
  store i64 %"$consume_4671", i64* @_gasrem, align 8
  %"$indices_buf_4672_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4672_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4672_salloc_load", i64 32)
  %"$indices_buf_4672_salloc" = bitcast i8* %"$indices_buf_4672_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4672" = bitcast [32 x i8]* %"$indices_buf_4672_salloc" to i8*
  %"$node_4673" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4674" = getelementptr i8, i8* %"$indices_buf_4672", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4674" to [32 x i8]*
  store [32 x i8] %"$node_4673", [32 x i8]* %indices_cast2, align 1
  %"$execptr_load_4675" = load i8*, i8** @_execptr, align 8
  %"$newRecord_4677" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %newRecord, align 8
  %"$update_value_4678" = bitcast %TName_ud-registry.Record* %"$newRecord_4677" to i8*
  call void @_update_field(i8* %"$execptr_load_4675", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4676", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_208", i32 1, i8* %"$indices_buf_4672", i8* %"$update_value_4678"), !dbg !450
  %"$gasrem_4679" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4680" = icmp ugt i64 1, %"$gasrem_4679"
  br i1 %"$gascmp_4680", label %"$out_of_gas_4681", label %"$have_gas_4682"

"$out_of_gas_4681":                               ; preds = %"$have_gas_4670"
  call void @_out_of_gas()
  br label %"$have_gas_4682"

"$have_gas_4682":                                 ; preds = %"$out_of_gas_4681", %"$have_gas_4670"
  %"$consume_4683" = sub i64 %"$gasrem_4679", 1
  store i64 %"$consume_4683", i64* @_gasrem, align 8
  %e3 = alloca i8*, align 8
  %"$gasrem_4684" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4685" = icmp ugt i64 1, %"$gasrem_4684"
  br i1 %"$gascmp_4685", label %"$out_of_gas_4686", label %"$have_gas_4687"

"$out_of_gas_4686":                               ; preds = %"$have_gas_4682"
  call void @_out_of_gas()
  br label %"$have_gas_4687"

"$have_gas_4687":                                 ; preds = %"$out_of_gas_4686", %"$have_gas_4682"
  %"$consume_4688" = sub i64 %"$gasrem_4684", 1
  store i64 %"$consume_4688", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_4689" = load { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* }, { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_4690" = extractvalue { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_4689", 0
  %"$ud-registry.eConfigured_envptr_4691" = extractvalue { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_4689", 1
  %"$ud-registry.eConfigured_node_4692" = alloca [32 x i8], align 1
  %"$node_4693" = load [32 x i8], [32 x i8]* %node, align 1
  store [32 x i8] %"$node_4693", [32 x i8]* %"$ud-registry.eConfigured_node_4692", align 1
  %"$ud-registry.eConfigured_owner_4694" = alloca [20 x i8], align 1
  store [20 x i8] %owner, [20 x i8]* %"$ud-registry.eConfigured_owner_4694", align 1
  %"$ud-registry.eConfigured_resolver_4695" = alloca [20 x i8], align 1
  store [20 x i8] %resolver, [20 x i8]* %"$ud-registry.eConfigured_resolver_4695", align 1
  %"$ud-registry.eConfigured_call_4696" = call i8* %"$ud-registry.eConfigured_fptr_4690"(i8* %"$ud-registry.eConfigured_envptr_4691", [32 x i8]* %"$ud-registry.eConfigured_node_4692", [20 x i8]* %"$ud-registry.eConfigured_owner_4694", [20 x i8]* %"$ud-registry.eConfigured_resolver_4695"), !dbg !451
  store i8* %"$ud-registry.eConfigured_call_4696", i8** %e3, align 8, !dbg !451
  %"$e_4697" = load i8*, i8** %e3, align 8
  %"$_literal_cost_call_4699" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_4697")
  %"$gasrem_4700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4701" = icmp ugt i64 %"$_literal_cost_call_4699", %"$gasrem_4700"
  br i1 %"$gascmp_4701", label %"$out_of_gas_4702", label %"$have_gas_4703"

"$out_of_gas_4702":                               ; preds = %"$have_gas_4687"
  call void @_out_of_gas()
  br label %"$have_gas_4703"

"$have_gas_4703":                                 ; preds = %"$out_of_gas_4702", %"$have_gas_4687"
  %"$consume_4704" = sub i64 %"$gasrem_4700", %"$_literal_cost_call_4699"
  store i64 %"$consume_4704", i64* @_gasrem, align 8
  %"$execptr_load_4705" = load i8*, i8** @_execptr, align 8
  %"$e_4706" = load i8*, i8** %e3, align 8
  call void @_event(i8* %"$execptr_load_4705", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_4706"), !dbg !452
  br label %"$matchsucc_4603"

"$False_4707":                                    ; preds = %"$have_gas_4601"
  %"$isOk_4708" = bitcast %TName_Bool* %"$isOk_4604" to %CName_False*
  %"$gasrem_4709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4710" = icmp ugt i64 1, %"$gasrem_4709"
  br i1 %"$gascmp_4710", label %"$out_of_gas_4711", label %"$have_gas_4712"

"$out_of_gas_4711":                               ; preds = %"$False_4707"
  call void @_out_of_gas()
  br label %"$have_gas_4712"

"$have_gas_4712":                                 ; preds = %"$out_of_gas_4711", %"$False_4707"
  %"$consume_4713" = sub i64 %"$gasrem_4709", 1
  store i64 %"$consume_4713", i64* @_gasrem, align 8
  %e4 = alloca i8*, align 8
  %"$gasrem_4714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4715" = icmp ugt i64 1, %"$gasrem_4714"
  br i1 %"$gascmp_4715", label %"$out_of_gas_4716", label %"$have_gas_4717"

"$out_of_gas_4716":                               ; preds = %"$have_gas_4712"
  call void @_out_of_gas()
  br label %"$have_gas_4717"

"$have_gas_4717":                                 ; preds = %"$out_of_gas_4716", %"$have_gas_4712"
  %"$consume_4718" = sub i64 %"$gasrem_4714", 1
  store i64 %"$consume_4718", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_4719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4720" = icmp ugt i64 1, %"$gasrem_4719"
  br i1 %"$gascmp_4720", label %"$out_of_gas_4721", label %"$have_gas_4722"

"$out_of_gas_4721":                               ; preds = %"$have_gas_4717"
  call void @_out_of_gas()
  br label %"$have_gas_4722"

"$have_gas_4722":                                 ; preds = %"$out_of_gas_4721", %"$have_gas_4717"
  %"$consume_4723" = sub i64 %"$gasrem_4719", 1
  store i64 %"$consume_4723", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$stringlit_4724", i32 0, i32 0), i32 12 }, %String* %m, align 8, !dbg !453
  %"$gasrem_4725" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4726" = icmp ugt i64 1, %"$gasrem_4725"
  br i1 %"$gascmp_4726", label %"$out_of_gas_4727", label %"$have_gas_4728"

"$out_of_gas_4727":                               ; preds = %"$have_gas_4722"
  call void @_out_of_gas()
  br label %"$have_gas_4728"

"$have_gas_4728":                                 ; preds = %"$out_of_gas_4727", %"$have_gas_4722"
  %"$consume_4729" = sub i64 %"$gasrem_4725", 1
  store i64 %"$consume_4729", i64* @_gasrem, align 8
  %"$ud-registry.eError_57" = alloca i8*, align 8
  %"$ud-registry.eError_4730" = load { i8* (i8*, %String)*, i8* }, { i8* (i8*, %String)*, i8* }* @ud-registry.eError, align 8
  %"$ud-registry.eError_fptr_4731" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4730", 0
  %"$ud-registry.eError_envptr_4732" = extractvalue { i8* (i8*, %String)*, i8* } %"$ud-registry.eError_4730", 1
  %"$m_4733" = load %String, %String* %m, align 8
  %"$ud-registry.eError_call_4734" = call i8* %"$ud-registry.eError_fptr_4731"(i8* %"$ud-registry.eError_envptr_4732", %String %"$m_4733"), !dbg !455
  store i8* %"$ud-registry.eError_call_4734", i8** %"$ud-registry.eError_57", align 8, !dbg !455
  %"$$ud-registry.eError_57_4735" = load i8*, i8** %"$ud-registry.eError_57", align 8
  store i8* %"$$ud-registry.eError_57_4735", i8** %e4, align 8, !dbg !455
  %"$e_4736" = load i8*, i8** %e4, align 8
  %"$_literal_cost_call_4738" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_4736")
  %"$gasrem_4739" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4740" = icmp ugt i64 %"$_literal_cost_call_4738", %"$gasrem_4739"
  br i1 %"$gascmp_4740", label %"$out_of_gas_4741", label %"$have_gas_4742"

"$out_of_gas_4741":                               ; preds = %"$have_gas_4728"
  call void @_out_of_gas()
  br label %"$have_gas_4742"

"$have_gas_4742":                                 ; preds = %"$out_of_gas_4741", %"$have_gas_4728"
  %"$consume_4743" = sub i64 %"$gasrem_4739", %"$_literal_cost_call_4738"
  store i64 %"$consume_4743", i64* @_gasrem, align 8
  %"$execptr_load_4744" = load i8*, i8** @_execptr, align 8
  %"$e_4745" = load i8*, i8** %e4, align 8
  call void @_event(i8* %"$execptr_load_4744", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_4745"), !dbg !456
  br label %"$matchsucc_4603"

"$empty_default_4607":                            ; preds = %"$have_gas_4601"
  br label %"$matchsucc_4603"

"$matchsucc_4603":                                ; preds = %"$have_gas_4742", %"$have_gas_4703", %"$empty_default_4607"
  ret void
}

define void @bestow(i8* %0) !dbg !457 {
entry:
  %"$_amount_4747" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4748" = bitcast i8* %"$_amount_4747" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4748", align 8
  %"$_origin_4749" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4750" = bitcast i8* %"$_origin_4749" to [20 x i8]*
  %"$_sender_4751" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4752" = bitcast i8* %"$_sender_4751" to [20 x i8]*
  %"$label_4753" = getelementptr i8, i8* %0, i32 56
  %"$label_4754" = bitcast i8* %"$label_4753" to %String*
  %label = load %String, %String* %"$label_4754", align 8
  %"$owner_4755" = getelementptr i8, i8* %0, i32 72
  %"$owner_4756" = bitcast i8* %"$owner_4755" to [20 x i8]*
  %"$resolver_4757" = getelementptr i8, i8* %0, i32 92
  %"$resolver_4758" = bitcast i8* %"$resolver_4757" to [20 x i8]*
  call void @"$bestow_4361"(%Uint128 %_amount, [20 x i8]* %"$_origin_4750", [20 x i8]* %"$_sender_4752", %String %label, [20 x i8]* %"$owner_4756", [20 x i8]* %"$resolver_4758"), !dbg !458
  ret void
}

define internal void @"$setRegistrar_4759"(%Uint128 %_amount, [20 x i8]* %"$_origin_4760", [20 x i8]* %"$_sender_4761", [20 x i8]* %"$address_4762") !dbg !459 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4760", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4761", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_4762", align 1
  %currentAdmins = alloca %TName_List_ByStr20*, align 8
  %"$execptr_load_4764" = load i8*, i8** @_execptr, align 8
  %"$currentAdmins_call_4765" = call i8* @_fetch_field(i8* %"$execptr_load_4764", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_4763", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_203", i32 0, i8* null, i32 1), !dbg !460
  %"$currentAdmins_4766" = bitcast i8* %"$currentAdmins_call_4765" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$currentAdmins_4766", %TName_List_ByStr20** %currentAdmins, align 8
  %"$currentAdmins_4767" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$$currentAdmins_4767_4768" = bitcast %TName_List_ByStr20* %"$currentAdmins_4767" to i8*
  %"$_literal_cost_call_4769" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_203", i8* %"$$currentAdmins_4767_4768")
  %"$gasadd_4770" = add i64 %"$_literal_cost_call_4769", 0
  %"$gasrem_4771" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4772" = icmp ugt i64 %"$gasadd_4770", %"$gasrem_4771"
  br i1 %"$gascmp_4772", label %"$out_of_gas_4773", label %"$have_gas_4774"

"$out_of_gas_4773":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4774"

"$have_gas_4774":                                 ; preds = %"$out_of_gas_4773", %entry
  %"$consume_4775" = sub i64 %"$gasrem_4771", %"$gasadd_4770"
  store i64 %"$consume_4775", i64* @_gasrem, align 8
  %"$gasrem_4776" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4777" = icmp ugt i64 1, %"$gasrem_4776"
  br i1 %"$gascmp_4777", label %"$out_of_gas_4778", label %"$have_gas_4779"

"$out_of_gas_4778":                               ; preds = %"$have_gas_4774"
  call void @_out_of_gas()
  br label %"$have_gas_4779"

"$have_gas_4779":                                 ; preds = %"$out_of_gas_4778", %"$have_gas_4774"
  %"$consume_4780" = sub i64 %"$gasrem_4776", 1
  store i64 %"$consume_4780", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_4781" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4782" = icmp ugt i64 1, %"$gasrem_4781"
  br i1 %"$gascmp_4782", label %"$out_of_gas_4783", label %"$have_gas_4784"

"$out_of_gas_4783":                               ; preds = %"$have_gas_4779"
  call void @_out_of_gas()
  br label %"$have_gas_4784"

"$have_gas_4784":                                 ; preds = %"$out_of_gas_4783", %"$have_gas_4779"
  %"$consume_4785" = sub i64 %"$gasrem_4781", 1
  store i64 %"$consume_4785", i64* @_gasrem, align 8
  %"$ud-registry.listByStr20Contains_4786" = load { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }, { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* }* @ud-registry.listByStr20Contains, align 8
  %"$ud-registry.listByStr20Contains_fptr_4787" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_4786", 0
  %"$ud-registry.listByStr20Contains_envptr_4788" = extractvalue { %TName_Bool* (i8*, %TName_List_ByStr20*, [20 x i8]*)*, i8* } %"$ud-registry.listByStr20Contains_4786", 1
  %"$currentAdmins_4789" = load %TName_List_ByStr20*, %TName_List_ByStr20** %currentAdmins, align 8
  %"$ud-registry.listByStr20Contains__sender_4790" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$ud-registry.listByStr20Contains__sender_4790", align 1
  %"$ud-registry.listByStr20Contains_call_4791" = call %TName_Bool* %"$ud-registry.listByStr20Contains_fptr_4787"(i8* %"$ud-registry.listByStr20Contains_envptr_4788", %TName_List_ByStr20* %"$currentAdmins_4789", [20 x i8]* %"$ud-registry.listByStr20Contains__sender_4790"), !dbg !461
  store %TName_Bool* %"$ud-registry.listByStr20Contains_call_4791", %TName_Bool** %isOk, align 8, !dbg !461
  %"$gasrem_4792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4793" = icmp ugt i64 2, %"$gasrem_4792"
  br i1 %"$gascmp_4793", label %"$out_of_gas_4794", label %"$have_gas_4795"

"$out_of_gas_4794":                               ; preds = %"$have_gas_4784"
  call void @_out_of_gas()
  br label %"$have_gas_4795"

"$have_gas_4795":                                 ; preds = %"$out_of_gas_4794", %"$have_gas_4784"
  %"$consume_4796" = sub i64 %"$gasrem_4792", 2
  store i64 %"$consume_4796", i64* @_gasrem, align 8
  %"$isOk_4798" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_4799" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_4798", i32 0, i32 0
  %"$isOk_tag_4800" = load i8, i8* %"$isOk_tag_4799", align 1
  switch i8 %"$isOk_tag_4800", label %"$default_4801" [
    i8 0, label %"$True_4802"
  ], !dbg !462

"$True_4802":                                     ; preds = %"$have_gas_4795"
  %"$isOk_4803" = bitcast %TName_Bool* %"$isOk_4798" to %CName_True*
  %"$gasrem_4804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4805" = icmp ugt i64 1, %"$gasrem_4804"
  br i1 %"$gascmp_4805", label %"$out_of_gas_4806", label %"$have_gas_4807"

"$out_of_gas_4806":                               ; preds = %"$True_4802"
  call void @_out_of_gas()
  br label %"$have_gas_4807"

"$have_gas_4807":                                 ; preds = %"$out_of_gas_4806", %"$True_4802"
  %"$consume_4808" = sub i64 %"$gasrem_4804", 1
  store i64 %"$consume_4808", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_4809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4810" = icmp ugt i64 1, %"$gasrem_4809"
  br i1 %"$gascmp_4810", label %"$out_of_gas_4811", label %"$have_gas_4812"

"$out_of_gas_4811":                               ; preds = %"$have_gas_4807"
  call void @_out_of_gas()
  br label %"$have_gas_4812"

"$have_gas_4812":                                 ; preds = %"$out_of_gas_4811", %"$have_gas_4807"
  %"$consume_4813" = sub i64 %"$gasrem_4809", 1
  store i64 %"$consume_4813", i64* @_gasrem, align 8
  %"$ud-registry.eNewRegistrar_58" = alloca i8*, align 8
  %"$ud-registry.eNewRegistrar_4814" = load { i8* (i8*, [20 x i8]*)*, i8* }, { i8* (i8*, [20 x i8]*)*, i8* }* @ud-registry.eNewRegistrar, align 8
  %"$ud-registry.eNewRegistrar_fptr_4815" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eNewRegistrar_4814", 0
  %"$ud-registry.eNewRegistrar_envptr_4816" = extractvalue { i8* (i8*, [20 x i8]*)*, i8* } %"$ud-registry.eNewRegistrar_4814", 1
  %"$ud-registry.eNewRegistrar_address_4817" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-registry.eNewRegistrar_address_4817", align 1
  %"$ud-registry.eNewRegistrar_call_4818" = call i8* %"$ud-registry.eNewRegistrar_fptr_4815"(i8* %"$ud-registry.eNewRegistrar_envptr_4816", [20 x i8]* %"$ud-registry.eNewRegistrar_address_4817"), !dbg !463
  store i8* %"$ud-registry.eNewRegistrar_call_4818", i8** %"$ud-registry.eNewRegistrar_58", align 8, !dbg !463
  %"$$ud-registry.eNewRegistrar_58_4819" = load i8*, i8** %"$ud-registry.eNewRegistrar_58", align 8
  store i8* %"$$ud-registry.eNewRegistrar_58_4819", i8** %e, align 8, !dbg !463
  %"$e_4820" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_4822" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_4820")
  %"$gasrem_4823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4824" = icmp ugt i64 %"$_literal_cost_call_4822", %"$gasrem_4823"
  br i1 %"$gascmp_4824", label %"$out_of_gas_4825", label %"$have_gas_4826"

"$out_of_gas_4825":                               ; preds = %"$have_gas_4812"
  call void @_out_of_gas()
  br label %"$have_gas_4826"

"$have_gas_4826":                                 ; preds = %"$out_of_gas_4825", %"$have_gas_4812"
  %"$consume_4827" = sub i64 %"$gasrem_4823", %"$_literal_cost_call_4822"
  store i64 %"$consume_4827", i64* @_gasrem, align 8
  %"$execptr_load_4828" = load i8*, i8** @_execptr, align 8
  %"$e_4829" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_4828", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_4829"), !dbg !466
  %"$_literal_cost_address_4830" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$_literal_cost_address_4830", align 1
  %"$$_literal_cost_address_4830_4831" = bitcast [20 x i8]* %"$_literal_cost_address_4830" to i8*
  %"$_literal_cost_call_4832" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", i8* %"$$_literal_cost_address_4830_4831")
  %"$gasrem_4833" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4834" = icmp ugt i64 %"$_literal_cost_call_4832", %"$gasrem_4833"
  br i1 %"$gascmp_4834", label %"$out_of_gas_4835", label %"$have_gas_4836"

"$out_of_gas_4835":                               ; preds = %"$have_gas_4826"
  call void @_out_of_gas()
  br label %"$have_gas_4836"

"$have_gas_4836":                                 ; preds = %"$out_of_gas_4835", %"$have_gas_4826"
  %"$consume_4837" = sub i64 %"$gasrem_4833", %"$_literal_cost_call_4832"
  store i64 %"$consume_4837", i64* @_gasrem, align 8
  %"$execptr_load_4838" = load i8*, i8** @_execptr, align 8
  %"$update_value_4840" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$update_value_4840", align 1
  %"$update_value_4841" = bitcast [20 x i8]* %"$update_value_4840" to i8*
  call void @_update_field(i8* %"$execptr_load_4838", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_4839", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", i32 0, i8* null, i8* %"$update_value_4841"), !dbg !467
  br label %"$matchsucc_4797"

"$default_4801":                                  ; preds = %"$have_gas_4795"
  br label %"$joinp_9"

"$joinp_9":                                       ; preds = %"$default_4801"
  br label %"$matchsucc_4797"

"$matchsucc_4797":                                ; preds = %"$have_gas_4836", %"$joinp_9"
  ret void
}

define void @setRegistrar(i8* %0) !dbg !468 {
entry:
  %"$_amount_4843" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4844" = bitcast i8* %"$_amount_4843" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4844", align 8
  %"$_origin_4845" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4846" = bitcast i8* %"$_origin_4845" to [20 x i8]*
  %"$_sender_4847" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4848" = bitcast i8* %"$_sender_4847" to [20 x i8]*
  %"$address_4849" = getelementptr i8, i8* %0, i32 56
  %"$address_4850" = bitcast i8* %"$address_4849" to [20 x i8]*
  call void @"$setRegistrar_4759"(%Uint128 %_amount, [20 x i8]* %"$_origin_4846", [20 x i8]* %"$_sender_4848", [20 x i8]* %"$address_4850"), !dbg !469
  ret void
}

define internal void @"$register_4851"(%Uint128 %_amount, [20 x i8]* %"$_origin_4852", [20 x i8]* %"$_sender_4853", [32 x i8]* %"$parent_4854", %String %label) !dbg !470 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4852", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4853", align 1
  %parent = load [32 x i8], [32 x i8]* %"$parent_4854", align 1
  %"$gasrem_4855" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4856" = icmp ugt i64 1, %"$gasrem_4855"
  br i1 %"$gascmp_4856", label %"$out_of_gas_4857", label %"$have_gas_4858"

"$out_of_gas_4857":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4858"

"$have_gas_4858":                                 ; preds = %"$out_of_gas_4857", %entry
  %"$consume_4859" = sub i64 %"$gasrem_4855", 1
  store i64 %"$consume_4859", i64* @_gasrem, align 8
  %node = alloca [32 x i8], align 1
  %"$gasrem_4860" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4861" = icmp ugt i64 1, %"$gasrem_4860"
  br i1 %"$gascmp_4861", label %"$out_of_gas_4862", label %"$have_gas_4863"

"$out_of_gas_4862":                               ; preds = %"$have_gas_4858"
  call void @_out_of_gas()
  br label %"$have_gas_4863"

"$have_gas_4863":                                 ; preds = %"$out_of_gas_4862", %"$have_gas_4858"
  %"$consume_4864" = sub i64 %"$gasrem_4860", 1
  store i64 %"$consume_4864", i64* @_gasrem, align 8
  %"$ud-registry.parentLabelToNode_4865" = load { void (i8*, [32 x i8]*, [32 x i8]*, %String)*, i8* }, { void (i8*, [32 x i8]*, [32 x i8]*, %String)*, i8* }* @ud-registry.parentLabelToNode, align 8
  %"$ud-registry.parentLabelToNode_fptr_4866" = extractvalue { void (i8*, [32 x i8]*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_4865", 0
  %"$ud-registry.parentLabelToNode_envptr_4867" = extractvalue { void (i8*, [32 x i8]*, [32 x i8]*, %String)*, i8* } %"$ud-registry.parentLabelToNode_4865", 1
  %"$ud-registry.parentLabelToNode_parent_4868" = alloca [32 x i8], align 1
  store [32 x i8] %parent, [32 x i8]* %"$ud-registry.parentLabelToNode_parent_4868", align 1
  %"$ud-registry.parentLabelToNode_retalloca_4869" = alloca [32 x i8], align 1
  call void %"$ud-registry.parentLabelToNode_fptr_4866"(i8* %"$ud-registry.parentLabelToNode_envptr_4867", [32 x i8]* %"$ud-registry.parentLabelToNode_retalloca_4869", [32 x i8]* %"$ud-registry.parentLabelToNode_parent_4868", %String %label), !dbg !471
  %"$ud-registry.parentLabelToNode_ret_4870" = load [32 x i8], [32 x i8]* %"$ud-registry.parentLabelToNode_retalloca_4869", align 1
  store [32 x i8] %"$ud-registry.parentLabelToNode_ret_4870", [32 x i8]* %node, align 1, !dbg !471
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_4871_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4871_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4871_salloc_load", i64 32)
  %"$indices_buf_4871_salloc" = bitcast i8* %"$indices_buf_4871_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4871" = bitcast [32 x i8]* %"$indices_buf_4871_salloc" to i8*
  %"$node_4872" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4873" = getelementptr i8, i8* %"$indices_buf_4871", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4873" to [32 x i8]*
  store [32 x i8] %"$node_4872", [32 x i8]* %indices_cast, align 1
  %"$execptr_load_4875" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_4876" = call i8* @_fetch_field(i8* %"$execptr_load_4875", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_4874", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_208", i32 1, i8* %"$indices_buf_4871", i32 1), !dbg !472
  %"$maybeRecord_4877" = bitcast i8* %"$maybeRecord_call_4876" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_4877", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_4878" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_4878_4879" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_4878" to i8*
  %"$_literal_cost_call_4880" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_199", i8* %"$$maybeRecord_4878_4879")
  %"$gasadd_4881" = add i64 %"$_literal_cost_call_4880", 0
  %"$gasadd_4882" = add i64 %"$gasadd_4881", 1
  %"$gasrem_4883" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4884" = icmp ugt i64 %"$gasadd_4882", %"$gasrem_4883"
  br i1 %"$gascmp_4884", label %"$out_of_gas_4885", label %"$have_gas_4886"

"$out_of_gas_4885":                               ; preds = %"$have_gas_4863"
  call void @_out_of_gas()
  br label %"$have_gas_4886"

"$have_gas_4886":                                 ; preds = %"$out_of_gas_4885", %"$have_gas_4863"
  %"$consume_4887" = sub i64 %"$gasrem_4883", %"$gasadd_4882"
  store i64 %"$consume_4887", i64* @_gasrem, align 8
  %maybeApproved = alloca %TName_Option_ByStr20*, align 8
  %"$indices_buf_4888_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4888_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4888_salloc_load", i64 32)
  %"$indices_buf_4888_salloc" = bitcast i8* %"$indices_buf_4888_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4888" = bitcast [32 x i8]* %"$indices_buf_4888_salloc" to i8*
  %"$node_4889" = load [32 x i8], [32 x i8]* %node, align 1
  %"$indices_gep_4890" = getelementptr i8, i8* %"$indices_buf_4888", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4890" to [32 x i8]*
  store [32 x i8] %"$node_4889", [32 x i8]* %indices_cast1, align 1
  %"$execptr_load_4892" = load i8*, i8** @_execptr, align 8
  %"$maybeApproved_call_4893" = call i8* @_fetch_field(i8* %"$execptr_load_4892", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$approvals_4891", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_207", i32 1, i8* %"$indices_buf_4888", i32 1), !dbg !473
  %"$maybeApproved_4894" = bitcast i8* %"$maybeApproved_call_4893" to %TName_Option_ByStr20*
  store %TName_Option_ByStr20* %"$maybeApproved_4894", %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_4895" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$$maybeApproved_4895_4896" = bitcast %TName_Option_ByStr20* %"$maybeApproved_4895" to i8*
  %"$_literal_cost_call_4897" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_200", i8* %"$$maybeApproved_4895_4896")
  %"$gasadd_4898" = add i64 %"$_literal_cost_call_4897", 0
  %"$gasadd_4899" = add i64 %"$gasadd_4898", 1
  %"$gasrem_4900" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4901" = icmp ugt i64 %"$gasadd_4899", %"$gasrem_4900"
  br i1 %"$gascmp_4901", label %"$out_of_gas_4902", label %"$have_gas_4903"

"$out_of_gas_4902":                               ; preds = %"$have_gas_4886"
  call void @_out_of_gas()
  br label %"$have_gas_4903"

"$have_gas_4903":                                 ; preds = %"$out_of_gas_4902", %"$have_gas_4886"
  %"$consume_4904" = sub i64 %"$gasrem_4900", %"$gasadd_4899"
  store i64 %"$consume_4904", i64* @_gasrem, align 8
  %"$gasrem_4905" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4906" = icmp ugt i64 1, %"$gasrem_4905"
  br i1 %"$gascmp_4906", label %"$out_of_gas_4907", label %"$have_gas_4908"

"$out_of_gas_4907":                               ; preds = %"$have_gas_4903"
  call void @_out_of_gas()
  br label %"$have_gas_4908"

"$have_gas_4908":                                 ; preds = %"$out_of_gas_4907", %"$have_gas_4903"
  %"$consume_4909" = sub i64 %"$gasrem_4905", 1
  store i64 %"$consume_4909", i64* @_gasrem, align 8
  %recordOwner = alloca [20 x i8], align 1
  %"$gasrem_4910" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4911" = icmp ugt i64 1, %"$gasrem_4910"
  br i1 %"$gascmp_4911", label %"$out_of_gas_4912", label %"$have_gas_4913"

"$out_of_gas_4912":                               ; preds = %"$have_gas_4908"
  call void @_out_of_gas()
  br label %"$have_gas_4913"

"$have_gas_4913":                                 ; preds = %"$out_of_gas_4912", %"$have_gas_4908"
  %"$consume_4914" = sub i64 %"$gasrem_4910", 1
  store i64 %"$consume_4914", i64* @_gasrem, align 8
  %"$ud-registry.recordMemberOwner_59" = alloca [20 x i8], align 1
  %"$ud-registry.recordMemberOwner_4915" = load { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }, { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* }* @ud-registry.recordMemberOwner, align 8
  %"$ud-registry.recordMemberOwner_fptr_4916" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4915", 0
  %"$ud-registry.recordMemberOwner_envptr_4917" = extractvalue { void (i8*, [20 x i8]*, %TName_Option_ud-registry.Record*)*, i8* } %"$ud-registry.recordMemberOwner_4915", 1
  %"$maybeRecord_4918" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$ud-registry.recordMemberOwner_retalloca_4919" = alloca [20 x i8], align 1
  call void %"$ud-registry.recordMemberOwner_fptr_4916"(i8* %"$ud-registry.recordMemberOwner_envptr_4917", [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4919", %TName_Option_ud-registry.Record* %"$maybeRecord_4918"), !dbg !474
  %"$ud-registry.recordMemberOwner_ret_4920" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_retalloca_4919", align 1
  store [20 x i8] %"$ud-registry.recordMemberOwner_ret_4920", [20 x i8]* %"$ud-registry.recordMemberOwner_59", align 1, !dbg !474
  %"$$ud-registry.recordMemberOwner_59_4921" = load [20 x i8], [20 x i8]* %"$ud-registry.recordMemberOwner_59", align 1
  store [20 x i8] %"$$ud-registry.recordMemberOwner_59_4921", [20 x i8]* %recordOwner, align 1, !dbg !474
  %"$gasrem_4922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4923" = icmp ugt i64 1, %"$gasrem_4922"
  br i1 %"$gascmp_4923", label %"$out_of_gas_4924", label %"$have_gas_4925"

"$out_of_gas_4924":                               ; preds = %"$have_gas_4913"
  call void @_out_of_gas()
  br label %"$have_gas_4925"

"$have_gas_4925":                                 ; preds = %"$out_of_gas_4924", %"$have_gas_4913"
  %"$consume_4926" = sub i64 %"$gasrem_4922", 1
  store i64 %"$consume_4926", i64* @_gasrem, align 8
  %approved = alloca [20 x i8], align 1
  %"$gasrem_4927" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4928" = icmp ugt i64 2, %"$gasrem_4927"
  br i1 %"$gascmp_4928", label %"$out_of_gas_4929", label %"$have_gas_4930"

"$out_of_gas_4929":                               ; preds = %"$have_gas_4925"
  call void @_out_of_gas()
  br label %"$have_gas_4930"

"$have_gas_4930":                                 ; preds = %"$out_of_gas_4929", %"$have_gas_4925"
  %"$consume_4931" = sub i64 %"$gasrem_4927", 2
  store i64 %"$consume_4931", i64* @_gasrem, align 8
  %"$maybeApproved_4933" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %maybeApproved, align 8
  %"$maybeApproved_tag_4934" = getelementptr inbounds %TName_Option_ByStr20, %TName_Option_ByStr20* %"$maybeApproved_4933", i32 0, i32 0
  %"$maybeApproved_tag_4935" = load i8, i8* %"$maybeApproved_tag_4934", align 1
  switch i8 %"$maybeApproved_tag_4935", label %"$empty_default_4936" [
    i8 1, label %"$None_4937"
    i8 0, label %"$Some_4945"
  ], !dbg !475

"$None_4937":                                     ; preds = %"$have_gas_4930"
  %"$maybeApproved_4938" = bitcast %TName_Option_ByStr20* %"$maybeApproved_4933" to %CName_None_ByStr20*
  %"$gasrem_4939" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4940" = icmp ugt i64 1, %"$gasrem_4939"
  br i1 %"$gascmp_4940", label %"$out_of_gas_4941", label %"$have_gas_4942"

"$out_of_gas_4941":                               ; preds = %"$None_4937"
  call void @_out_of_gas()
  br label %"$have_gas_4942"

"$have_gas_4942":                                 ; preds = %"$out_of_gas_4941", %"$None_4937"
  %"$consume_4943" = sub i64 %"$gasrem_4939", 1
  store i64 %"$consume_4943", i64* @_gasrem, align 8
  %"$ud-registry.zeroByStr20_4944" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_4944", [20 x i8]* %approved, align 1, !dbg !476
  br label %"$matchsucc_4932"

"$Some_4945":                                     ; preds = %"$have_gas_4930"
  %"$maybeApproved_4946" = bitcast %TName_Option_ByStr20* %"$maybeApproved_4933" to %CName_Some_ByStr20*
  %"$approved_gep_4947" = getelementptr inbounds %CName_Some_ByStr20, %CName_Some_ByStr20* %"$maybeApproved_4946", i32 0, i32 1
  %"$approved_load_4948" = load [20 x i8], [20 x i8]* %"$approved_gep_4947", align 1
  %approved2 = alloca [20 x i8], align 1
  store [20 x i8] %"$approved_load_4948", [20 x i8]* %approved2, align 1
  %"$gasrem_4949" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4950" = icmp ugt i64 1, %"$gasrem_4949"
  br i1 %"$gascmp_4950", label %"$out_of_gas_4951", label %"$have_gas_4952"

"$out_of_gas_4951":                               ; preds = %"$Some_4945"
  call void @_out_of_gas()
  br label %"$have_gas_4952"

"$have_gas_4952":                                 ; preds = %"$out_of_gas_4951", %"$Some_4945"
  %"$consume_4953" = sub i64 %"$gasrem_4949", 1
  store i64 %"$consume_4953", i64* @_gasrem, align 8
  %"$approved_4954" = load [20 x i8], [20 x i8]* %approved2, align 1
  store [20 x i8] %"$approved_4954", [20 x i8]* %approved2, align 1, !dbg !479
  br label %"$matchsucc_4932"

"$empty_default_4936":                            ; preds = %"$have_gas_4930"
  br label %"$matchsucc_4932"

"$matchsucc_4932":                                ; preds = %"$have_gas_4952", %"$have_gas_4942", %"$empty_default_4936"
  %currentRegistrar = alloca [20 x i8], align 1
  %"$execptr_load_4956" = load i8*, i8** @_execptr, align 8
  %"$currentRegistrar_call_4957" = call i8* @_fetch_field(i8* %"$execptr_load_4956", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$registrar_4955", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", i32 0, i8* null, i32 1), !dbg !481
  %"$currentRegistrar_4958" = bitcast i8* %"$currentRegistrar_call_4957" to [20 x i8]*
  %"$currentRegistrar_4959" = load [20 x i8], [20 x i8]* %"$currentRegistrar_4958", align 1
  store [20 x i8] %"$currentRegistrar_4959", [20 x i8]* %currentRegistrar, align 1
  %"$_literal_cost_currentRegistrar_4960" = alloca [20 x i8], align 1
  %"$currentRegistrar_4961" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  store [20 x i8] %"$currentRegistrar_4961", [20 x i8]* %"$_literal_cost_currentRegistrar_4960", align 1
  %"$$_literal_cost_currentRegistrar_4960_4962" = bitcast [20 x i8]* %"$_literal_cost_currentRegistrar_4960" to i8*
  %"$_literal_cost_call_4963" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", i8* %"$$_literal_cost_currentRegistrar_4960_4962")
  %"$gasadd_4964" = add i64 %"$_literal_cost_call_4963", 0
  %"$gasrem_4965" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4966" = icmp ugt i64 %"$gasadd_4964", %"$gasrem_4965"
  br i1 %"$gascmp_4966", label %"$out_of_gas_4967", label %"$have_gas_4968"

"$out_of_gas_4967":                               ; preds = %"$matchsucc_4932"
  call void @_out_of_gas()
  br label %"$have_gas_4968"

"$have_gas_4968":                                 ; preds = %"$out_of_gas_4967", %"$matchsucc_4932"
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
  %isRecordUnowned = alloca %TName_Bool*, align 8
  %"$gasrem_4980" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4981" = icmp ugt i64 20, %"$gasrem_4980"
  br i1 %"$gascmp_4981", label %"$out_of_gas_4982", label %"$have_gas_4983"

"$out_of_gas_4982":                               ; preds = %"$have_gas_4978"
  call void @_out_of_gas()
  br label %"$have_gas_4983"

"$have_gas_4983":                                 ; preds = %"$out_of_gas_4982", %"$have_gas_4978"
  %"$consume_4984" = sub i64 %"$gasrem_4980", 20
  store i64 %"$consume_4984", i64* @_gasrem, align 8
  %"$execptr_load_4985" = load i8*, i8** @_execptr, align 8
  %"$eq_recordOwner_4986" = alloca [20 x i8], align 1
  %"$recordOwner_4987" = load [20 x i8], [20 x i8]* %recordOwner, align 1
  store [20 x i8] %"$recordOwner_4987", [20 x i8]* %"$eq_recordOwner_4986", align 1
  %"$$eq_recordOwner_4986_4988" = bitcast [20 x i8]* %"$eq_recordOwner_4986" to i8*
  %"$eq_ud-registry.zeroByStr20_4989" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_4990" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_4990", [20 x i8]* %"$eq_ud-registry.zeroByStr20_4989", align 1
  %"$$eq_ud-registry.zeroByStr20_4989_4991" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_4989" to i8*
  %"$eq_call_4992" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_4985", i32 20, i8* %"$$eq_recordOwner_4986_4988", i8* %"$$eq_ud-registry.zeroByStr20_4989_4991"), !dbg !482
  store %TName_Bool* %"$eq_call_4992", %TName_Bool** %isRecordUnowned, align 8, !dbg !482
  %"$gasrem_4994" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4995" = icmp ugt i64 1, %"$gasrem_4994"
  br i1 %"$gascmp_4995", label %"$out_of_gas_4996", label %"$have_gas_4997"

"$out_of_gas_4996":                               ; preds = %"$have_gas_4983"
  call void @_out_of_gas()
  br label %"$have_gas_4997"

"$have_gas_4997":                                 ; preds = %"$out_of_gas_4996", %"$have_gas_4983"
  %"$consume_4998" = sub i64 %"$gasrem_4994", 1
  store i64 %"$consume_4998", i64* @_gasrem, align 8
  %isUnapproved = alloca %TName_Bool*, align 8
  %"$gasrem_4999" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5000" = icmp ugt i64 20, %"$gasrem_4999"
  br i1 %"$gascmp_5000", label %"$out_of_gas_5001", label %"$have_gas_5002"

"$out_of_gas_5001":                               ; preds = %"$have_gas_4997"
  call void @_out_of_gas()
  br label %"$have_gas_5002"

"$have_gas_5002":                                 ; preds = %"$out_of_gas_5001", %"$have_gas_4997"
  %"$consume_5003" = sub i64 %"$gasrem_4999", 20
  store i64 %"$consume_5003", i64* @_gasrem, align 8
  %"$execptr_load_5004" = load i8*, i8** @_execptr, align 8
  %"$eq_approved_5005" = alloca [20 x i8], align 1
  %"$approved_5006" = load [20 x i8], [20 x i8]* %approved, align 1
  store [20 x i8] %"$approved_5006", [20 x i8]* %"$eq_approved_5005", align 1
  %"$$eq_approved_5005_5007" = bitcast [20 x i8]* %"$eq_approved_5005" to i8*
  %"$eq_ud-registry.zeroByStr20_5008" = alloca [20 x i8], align 1
  %"$ud-registry.zeroByStr20_5009" = load [20 x i8], [20 x i8]* @ud-registry.zeroByStr20, align 1
  store [20 x i8] %"$ud-registry.zeroByStr20_5009", [20 x i8]* %"$eq_ud-registry.zeroByStr20_5008", align 1
  %"$$eq_ud-registry.zeroByStr20_5008_5010" = bitcast [20 x i8]* %"$eq_ud-registry.zeroByStr20_5008" to i8*
  %"$eq_call_5011" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5004", i32 20, i8* %"$$eq_approved_5005_5007", i8* %"$$eq_ud-registry.zeroByStr20_5008_5010"), !dbg !483
  store %TName_Bool* %"$eq_call_5011", %TName_Bool** %isUnapproved, align 8, !dbg !483
  %"$gasrem_5013" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5014" = icmp ugt i64 1, %"$gasrem_5013"
  br i1 %"$gascmp_5014", label %"$out_of_gas_5015", label %"$have_gas_5016"

"$out_of_gas_5015":                               ; preds = %"$have_gas_5002"
  call void @_out_of_gas()
  br label %"$have_gas_5016"

"$have_gas_5016":                                 ; preds = %"$out_of_gas_5015", %"$have_gas_5002"
  %"$consume_5017" = sub i64 %"$gasrem_5013", 1
  store i64 %"$consume_5017", i64* @_gasrem, align 8
  %"$BoolUtils.andb_5018" = load { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_5019" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5018", 0
  %"$BoolUtils.andb_envptr_5020" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_5018", 1
  %"$isRecordUnowned_5021" = load %TName_Bool*, %TName_Bool** %isRecordUnowned, align 8
  %"$isUnapproved_5022" = load %TName_Bool*, %TName_Bool** %isUnapproved, align 8
  %"$BoolUtils.andb_call_5023" = call %TName_Bool* %"$BoolUtils.andb_fptr_5019"(i8* %"$BoolUtils.andb_envptr_5020", %TName_Bool* %"$isRecordUnowned_5021", %TName_Bool* %"$isUnapproved_5022"), !dbg !484
  store %TName_Bool* %"$BoolUtils.andb_call_5023", %TName_Bool** %isOk, align 8, !dbg !484
  %"$gasrem_5024" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5025" = icmp ugt i64 2, %"$gasrem_5024"
  br i1 %"$gascmp_5025", label %"$out_of_gas_5026", label %"$have_gas_5027"

"$out_of_gas_5026":                               ; preds = %"$have_gas_5016"
  call void @_out_of_gas()
  br label %"$have_gas_5027"

"$have_gas_5027":                                 ; preds = %"$out_of_gas_5026", %"$have_gas_5016"
  %"$consume_5028" = sub i64 %"$gasrem_5024", 2
  store i64 %"$consume_5028", i64* @_gasrem, align 8
  %"$isOk_5030" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5031" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5030", i32 0, i32 0
  %"$isOk_tag_5032" = load i8, i8* %"$isOk_tag_5031", align 1
  switch i8 %"$isOk_tag_5032", label %"$empty_default_5033" [
    i8 0, label %"$True_5034"
    i8 1, label %"$False_5132"
  ], !dbg !485

"$True_5034":                                     ; preds = %"$have_gas_5027"
  %"$isOk_5035" = bitcast %TName_Bool* %"$isOk_5030" to %CName_True*
  %"$gasrem_5036" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5037" = icmp ugt i64 1, %"$gasrem_5036"
  br i1 %"$gascmp_5037", label %"$out_of_gas_5038", label %"$have_gas_5039"

"$out_of_gas_5038":                               ; preds = %"$True_5034"
  call void @_out_of_gas()
  br label %"$have_gas_5039"

"$have_gas_5039":                                 ; preds = %"$out_of_gas_5038", %"$True_5034"
  %"$consume_5040" = sub i64 %"$gasrem_5036", 1
  store i64 %"$consume_5040", i64* @_gasrem, align 8
  %"$execptr_load_5041" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_5041"), !dbg !486
  %"$gasrem_5042" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5043" = icmp ugt i64 1, %"$gasrem_5042"
  br i1 %"$gascmp_5043", label %"$out_of_gas_5044", label %"$have_gas_5045"

"$out_of_gas_5044":                               ; preds = %"$have_gas_5039"
  call void @_out_of_gas()
  br label %"$have_gas_5045"

"$have_gas_5045":                                 ; preds = %"$out_of_gas_5044", %"$have_gas_5039"
  %"$consume_5046" = sub i64 %"$gasrem_5042", 1
  store i64 %"$consume_5046", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_5047" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5048" = icmp ugt i64 1, %"$gasrem_5047"
  br i1 %"$gascmp_5048", label %"$out_of_gas_5049", label %"$have_gas_5050"

"$out_of_gas_5049":                               ; preds = %"$have_gas_5045"
  call void @_out_of_gas()
  br label %"$have_gas_5050"

"$have_gas_5050":                                 ; preds = %"$out_of_gas_5049", %"$have_gas_5045"
  %"$consume_5051" = sub i64 %"$gasrem_5047", 1
  store i64 %"$consume_5051", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_5052" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5053" = icmp ugt i64 1, %"$gasrem_5052"
  br i1 %"$gascmp_5053", label %"$out_of_gas_5054", label %"$have_gas_5055"

"$out_of_gas_5054":                               ; preds = %"$have_gas_5050"
  call void @_out_of_gas()
  br label %"$have_gas_5055"

"$have_gas_5055":                                 ; preds = %"$out_of_gas_5054", %"$have_gas_5050"
  %"$consume_5056" = sub i64 %"$gasrem_5052", 1
  store i64 %"$consume_5056", i64* @_gasrem, align 8
  %"$msgobj_5057_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_5057_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_5057_salloc_load", i64 321)
  %"$msgobj_5057_salloc" = bitcast i8* %"$msgobj_5057_salloc_salloc" to [321 x i8]*
  %"$msgobj_5057" = bitcast [321 x i8]* %"$msgobj_5057_salloc" to i8*
  store i8 7, i8* %"$msgobj_5057", align 1
  %"$msgobj_fname_5059" = getelementptr i8, i8* %"$msgobj_5057", i32 1
  %"$msgobj_fname_5060" = bitcast i8* %"$msgobj_fname_5059" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_5058", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_5060", align 8
  %"$msgobj_td_5061" = getelementptr i8, i8* %"$msgobj_5057", i32 17
  %"$msgobj_td_5062" = bitcast i8* %"$msgobj_td_5061" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_5062", align 8
  %"$msgobj_v_5064" = getelementptr i8, i8* %"$msgobj_5057", i32 25
  %"$msgobj_v_5065" = bitcast i8* %"$msgobj_v_5064" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_5063", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_5065", align 8
  %"$msgobj_fname_5067" = getelementptr i8, i8* %"$msgobj_5057", i32 41
  %"$msgobj_fname_5068" = bitcast i8* %"$msgobj_fname_5067" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_5066", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_5068", align 8
  %"$msgobj_td_5069" = getelementptr i8, i8* %"$msgobj_5057", i32 57
  %"$msgobj_td_5070" = bitcast i8* %"$msgobj_td_5069" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_172", %_TyDescrTy_Typ** %"$msgobj_td_5070", align 8
  %"$msgobj_v_5071" = getelementptr i8, i8* %"$msgobj_5057", i32 65
  %"$msgobj_v_5072" = bitcast i8* %"$msgobj_v_5071" to %Uint128*
  store %Uint128 %_amount, %Uint128* %"$msgobj_v_5072", align 8
  %"$msgobj_fname_5074" = getelementptr i8, i8* %"$msgobj_5057", i32 81
  %"$msgobj_fname_5075" = bitcast i8* %"$msgobj_fname_5074" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_5073", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_5075", align 8
  %"$msgobj_td_5076" = getelementptr i8, i8* %"$msgobj_5057", i32 97
  %"$msgobj_td_5077" = bitcast i8* %"$msgobj_td_5076" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_5077", align 8
  %"$currentRegistrar_5078" = load [20 x i8], [20 x i8]* %currentRegistrar, align 1
  %"$msgobj_v_5079" = getelementptr i8, i8* %"$msgobj_5057", i32 105
  %"$msgobj_v_5080" = bitcast i8* %"$msgobj_v_5079" to [20 x i8]*
  store [20 x i8] %"$currentRegistrar_5078", [20 x i8]* %"$msgobj_v_5080", align 1
  %"$msgobj_fname_5082" = getelementptr i8, i8* %"$msgobj_5057", i32 125
  %"$msgobj_fname_5083" = bitcast i8* %"$msgobj_fname_5082" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_5081", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_5083", align 8
  %"$msgobj_td_5084" = getelementptr i8, i8* %"$msgobj_5057", i32 141
  %"$msgobj_td_5085" = bitcast i8* %"$msgobj_td_5084" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_194", %_TyDescrTy_Typ** %"$msgobj_td_5085", align 8
  %"$msgobj_v_5086" = getelementptr i8, i8* %"$msgobj_5057", i32 149
  %"$msgobj_v_5087" = bitcast i8* %"$msgobj_v_5086" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_5087", align 1
  %"$msgobj_fname_5089" = getelementptr i8, i8* %"$msgobj_5057", i32 169
  %"$msgobj_fname_5090" = bitcast i8* %"$msgobj_fname_5089" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_5088", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_5090", align 8
  %"$msgobj_td_5091" = getelementptr i8, i8* %"$msgobj_5057", i32 185
  %"$msgobj_td_5092" = bitcast i8* %"$msgobj_td_5091" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192", %_TyDescrTy_Typ** %"$msgobj_td_5092", align 8
  %"$node_5093" = load [32 x i8], [32 x i8]* %node, align 1
  %"$msgobj_v_5094" = getelementptr i8, i8* %"$msgobj_5057", i32 193
  %"$msgobj_v_5095" = bitcast i8* %"$msgobj_v_5094" to [32 x i8]*
  store [32 x i8] %"$node_5093", [32 x i8]* %"$msgobj_v_5095", align 1
  %"$msgobj_fname_5097" = getelementptr i8, i8* %"$msgobj_5057", i32 225
  %"$msgobj_fname_5098" = bitcast i8* %"$msgobj_fname_5097" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_5096", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_5098", align 8
  %"$msgobj_td_5099" = getelementptr i8, i8* %"$msgobj_5057", i32 241
  %"$msgobj_td_5100" = bitcast i8* %"$msgobj_td_5099" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_192", %_TyDescrTy_Typ** %"$msgobj_td_5100", align 8
  %"$msgobj_v_5101" = getelementptr i8, i8* %"$msgobj_5057", i32 249
  %"$msgobj_v_5102" = bitcast i8* %"$msgobj_v_5101" to [32 x i8]*
  store [32 x i8] %parent, [32 x i8]* %"$msgobj_v_5102", align 1
  %"$msgobj_fname_5104" = getelementptr i8, i8* %"$msgobj_5057", i32 281
  %"$msgobj_fname_5105" = bitcast i8* %"$msgobj_fname_5104" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_5103", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_5105", align 8
  %"$msgobj_td_5106" = getelementptr i8, i8* %"$msgobj_5057", i32 297
  %"$msgobj_td_5107" = bitcast i8* %"$msgobj_td_5106" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_178", %_TyDescrTy_Typ** %"$msgobj_td_5107", align 8
  %"$msgobj_v_5108" = getelementptr i8, i8* %"$msgobj_5057", i32 305
  %"$msgobj_v_5109" = bitcast i8* %"$msgobj_v_5108" to %String*
  store %String %label, %String* %"$msgobj_v_5109", align 8
  store i8* %"$msgobj_5057", i8** %m, align 8, !dbg !489
  %"$gasrem_5111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5112" = icmp ugt i64 1, %"$gasrem_5111"
  br i1 %"$gascmp_5112", label %"$out_of_gas_5113", label %"$have_gas_5114"

"$out_of_gas_5113":                               ; preds = %"$have_gas_5055"
  call void @_out_of_gas()
  br label %"$have_gas_5114"

"$have_gas_5114":                                 ; preds = %"$out_of_gas_5113", %"$have_gas_5055"
  %"$consume_5115" = sub i64 %"$gasrem_5111", 1
  store i64 %"$consume_5115", i64* @_gasrem, align 8
  %"$ud-registry.oneMsg_60" = alloca %TName_List_Message*, align 8
  %"$ud-registry.oneMsg_5116" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-registry.oneMsg, align 8
  %"$ud-registry.oneMsg_fptr_5117" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_5116", 0
  %"$ud-registry.oneMsg_envptr_5118" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-registry.oneMsg_5116", 1
  %"$m_5119" = load i8*, i8** %m, align 8
  %"$ud-registry.oneMsg_call_5120" = call %TName_List_Message* %"$ud-registry.oneMsg_fptr_5117"(i8* %"$ud-registry.oneMsg_envptr_5118", i8* %"$m_5119"), !dbg !490
  store %TName_List_Message* %"$ud-registry.oneMsg_call_5120", %TName_List_Message** %"$ud-registry.oneMsg_60", align 8, !dbg !490
  %"$$ud-registry.oneMsg_60_5121" = load %TName_List_Message*, %TName_List_Message** %"$ud-registry.oneMsg_60", align 8
  store %TName_List_Message* %"$$ud-registry.oneMsg_60_5121", %TName_List_Message** %msgs, align 8, !dbg !490
  %"$msgs_5122" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_5122_5123" = bitcast %TName_List_Message* %"$msgs_5122" to i8*
  %"$_literal_cost_call_5124" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_202", i8* %"$$msgs_5122_5123")
  %"$gasrem_5125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5126" = icmp ugt i64 %"$_literal_cost_call_5124", %"$gasrem_5125"
  br i1 %"$gascmp_5126", label %"$out_of_gas_5127", label %"$have_gas_5128"

"$out_of_gas_5127":                               ; preds = %"$have_gas_5114"
  call void @_out_of_gas()
  br label %"$have_gas_5128"

"$have_gas_5128":                                 ; preds = %"$out_of_gas_5127", %"$have_gas_5114"
  %"$consume_5129" = sub i64 %"$gasrem_5125", %"$_literal_cost_call_5124"
  store i64 %"$consume_5129", i64* @_gasrem, align 8
  %"$execptr_load_5130" = load i8*, i8** @_execptr, align 8
  %"$msgs_5131" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_5130", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_202", %TName_List_Message* %"$msgs_5131"), !dbg !491
  br label %"$matchsucc_5029"

"$False_5132":                                    ; preds = %"$have_gas_5027"
  %"$isOk_5133" = bitcast %TName_Bool* %"$isOk_5030" to %CName_False*
  br label %"$matchsucc_5029"

"$empty_default_5033":                            ; preds = %"$have_gas_5027"
  br label %"$matchsucc_5029"

"$matchsucc_5029":                                ; preds = %"$False_5132", %"$have_gas_5128", %"$empty_default_5033"
  ret void
}

declare void @_accept(i8*)

define void @register(i8* %0) !dbg !492 {
entry:
  %"$_amount_5135" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5136" = bitcast i8* %"$_amount_5135" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5136", align 8
  %"$_origin_5137" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5138" = bitcast i8* %"$_origin_5137" to [20 x i8]*
  %"$_sender_5139" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5140" = bitcast i8* %"$_sender_5139" to [20 x i8]*
  %"$parent_5141" = getelementptr i8, i8* %0, i32 56
  %"$parent_5142" = bitcast i8* %"$parent_5141" to [32 x i8]*
  %"$label_5143" = getelementptr i8, i8* %0, i32 88
  %"$label_5144" = bitcast i8* %"$label_5143" to %String*
  %label = load %String, %String* %"$label_5144", align 8
  call void @"$register_4851"(%Uint128 %_amount, [20 x i8]* %"$_origin_5138", [20 x i8]* %"$_sender_5140", [32 x i8]* %"$parent_5142", %String %label), !dbg !493
  ret void
}

define internal void @"$onResolverConfigured_5145"(%Uint128 %_amount, [20 x i8]* %"$_origin_5146", [20 x i8]* %"$_sender_5147", [32 x i8]* %"$node_5148") !dbg !494 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_5146", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_5147", align 1
  %node = load [32 x i8], [32 x i8]* %"$node_5148", align 1
  %maybeRecord = alloca %TName_Option_ud-registry.Record*, align 8
  %"$indices_buf_5149_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_5149_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_5149_salloc_load", i64 32)
  %"$indices_buf_5149_salloc" = bitcast i8* %"$indices_buf_5149_salloc_salloc" to [32 x i8]*
  %"$indices_buf_5149" = bitcast [32 x i8]* %"$indices_buf_5149_salloc" to i8*
  %"$indices_gep_5150" = getelementptr i8, i8* %"$indices_buf_5149", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_5150" to [32 x i8]*
  store [32 x i8] %node, [32 x i8]* %indices_cast, align 1
  %"$execptr_load_5152" = load i8*, i8** @_execptr, align 8
  %"$maybeRecord_call_5153" = call i8* @_fetch_field(i8* %"$execptr_load_5152", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$records_5151", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_208", i32 1, i8* %"$indices_buf_5149", i32 1), !dbg !495
  %"$maybeRecord_5154" = bitcast i8* %"$maybeRecord_call_5153" to %TName_Option_ud-registry.Record*
  store %TName_Option_ud-registry.Record* %"$maybeRecord_5154", %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_5155" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$$maybeRecord_5155_5156" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5155" to i8*
  %"$_literal_cost_call_5157" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ud-registry.Record_199", i8* %"$$maybeRecord_5155_5156")
  %"$gasadd_5158" = add i64 %"$_literal_cost_call_5157", 0
  %"$gasadd_5159" = add i64 %"$gasadd_5158", 1
  %"$gasrem_5160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5161" = icmp ugt i64 %"$gasadd_5159", %"$gasrem_5160"
  br i1 %"$gascmp_5161", label %"$out_of_gas_5162", label %"$have_gas_5163"

"$out_of_gas_5162":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_5163"

"$have_gas_5163":                                 ; preds = %"$out_of_gas_5162", %entry
  %"$consume_5164" = sub i64 %"$gasrem_5160", %"$gasadd_5159"
  store i64 %"$consume_5164", i64* @_gasrem, align 8
  %"$gasrem_5165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5166" = icmp ugt i64 2, %"$gasrem_5165"
  br i1 %"$gascmp_5166", label %"$out_of_gas_5167", label %"$have_gas_5168"

"$out_of_gas_5167":                               ; preds = %"$have_gas_5163"
  call void @_out_of_gas()
  br label %"$have_gas_5168"

"$have_gas_5168":                                 ; preds = %"$out_of_gas_5167", %"$have_gas_5163"
  %"$consume_5169" = sub i64 %"$gasrem_5165", 2
  store i64 %"$consume_5169", i64* @_gasrem, align 8
  %"$maybeRecord_5171" = load %TName_Option_ud-registry.Record*, %TName_Option_ud-registry.Record** %maybeRecord, align 8
  %"$maybeRecord_tag_5172" = getelementptr inbounds %TName_Option_ud-registry.Record, %TName_Option_ud-registry.Record* %"$maybeRecord_5171", i32 0, i32 0
  %"$maybeRecord_tag_5173" = load i8, i8* %"$maybeRecord_tag_5172", align 1
  switch i8 %"$maybeRecord_tag_5173", label %"$empty_default_5174" [
    i8 1, label %"$None_5175"
    i8 0, label %"$Some_5177"
  ], !dbg !496

"$None_5175":                                     ; preds = %"$have_gas_5168"
  %"$maybeRecord_5176" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5171" to %CName_None_ud-registry.Record*
  br label %"$matchsucc_5170"

"$Some_5177":                                     ; preds = %"$have_gas_5168"
  %"$maybeRecord_5178" = bitcast %TName_Option_ud-registry.Record* %"$maybeRecord_5171" to %CName_Some_ud-registry.Record*
  %"$record_gep_5179" = getelementptr inbounds %CName_Some_ud-registry.Record, %CName_Some_ud-registry.Record* %"$maybeRecord_5178", i32 0, i32 1
  %"$record_load_5180" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %"$record_gep_5179", align 8
  %record = alloca %TName_ud-registry.Record*, align 8
  store %TName_ud-registry.Record* %"$record_load_5180", %TName_ud-registry.Record** %record, align 8
  %"$gasrem_5181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5182" = icmp ugt i64 1, %"$gasrem_5181"
  br i1 %"$gascmp_5182", label %"$out_of_gas_5183", label %"$have_gas_5184"

"$out_of_gas_5183":                               ; preds = %"$Some_5177"
  call void @_out_of_gas()
  br label %"$have_gas_5184"

"$have_gas_5184":                                 ; preds = %"$out_of_gas_5183", %"$Some_5177"
  %"$consume_5185" = sub i64 %"$gasrem_5181", 1
  store i64 %"$consume_5185", i64* @_gasrem, align 8
  %"$record_5187" = load %TName_ud-registry.Record*, %TName_ud-registry.Record** %record, align 8
  %"$record_tag_5188" = getelementptr inbounds %TName_ud-registry.Record, %TName_ud-registry.Record* %"$record_5187", i32 0, i32 0
  %"$record_tag_5189" = load i8, i8* %"$record_tag_5188", align 1
  switch i8 %"$record_tag_5189", label %"$empty_default_5190" [
    i8 0, label %"$ud-registry.Record_5191"
  ], !dbg !497

"$ud-registry.Record_5191":                       ; preds = %"$have_gas_5184"
  %"$record_5192" = bitcast %TName_ud-registry.Record* %"$record_5187" to %CName_ud-registry.Record*
  %"$owner_gep_5193" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_5192", i32 0, i32 1
  %"$owner_load_5194" = load [20 x i8], [20 x i8]* %"$owner_gep_5193", align 1
  %owner = alloca [20 x i8], align 1
  store [20 x i8] %"$owner_load_5194", [20 x i8]* %owner, align 1
  %"$resolver_gep_5195" = getelementptr inbounds %CName_ud-registry.Record, %CName_ud-registry.Record* %"$record_5192", i32 0, i32 2
  %"$resolver_load_5196" = load [20 x i8], [20 x i8]* %"$resolver_gep_5195", align 1
  %resolver = alloca [20 x i8], align 1
  store [20 x i8] %"$resolver_load_5196", [20 x i8]* %resolver, align 1
  %"$gasrem_5197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5198" = icmp ugt i64 1, %"$gasrem_5197"
  br i1 %"$gascmp_5198", label %"$out_of_gas_5199", label %"$have_gas_5200"

"$out_of_gas_5199":                               ; preds = %"$ud-registry.Record_5191"
  call void @_out_of_gas()
  br label %"$have_gas_5200"

"$have_gas_5200":                                 ; preds = %"$out_of_gas_5199", %"$ud-registry.Record_5191"
  %"$consume_5201" = sub i64 %"$gasrem_5197", 1
  store i64 %"$consume_5201", i64* @_gasrem, align 8
  %isOk = alloca %TName_Bool*, align 8
  %"$gasrem_5202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5203" = icmp ugt i64 20, %"$gasrem_5202"
  br i1 %"$gascmp_5203", label %"$out_of_gas_5204", label %"$have_gas_5205"

"$out_of_gas_5204":                               ; preds = %"$have_gas_5200"
  call void @_out_of_gas()
  br label %"$have_gas_5205"

"$have_gas_5205":                                 ; preds = %"$out_of_gas_5204", %"$have_gas_5200"
  %"$consume_5206" = sub i64 %"$gasrem_5202", 20
  store i64 %"$consume_5206", i64* @_gasrem, align 8
  %"$execptr_load_5207" = load i8*, i8** @_execptr, align 8
  %"$eq_resolver_5208" = alloca [20 x i8], align 1
  %"$resolver_5209" = load [20 x i8], [20 x i8]* %resolver, align 1
  store [20 x i8] %"$resolver_5209", [20 x i8]* %"$eq_resolver_5208", align 1
  %"$$eq_resolver_5208_5210" = bitcast [20 x i8]* %"$eq_resolver_5208" to i8*
  %"$eq__sender_5211" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_5211", align 1
  %"$$eq__sender_5211_5212" = bitcast [20 x i8]* %"$eq__sender_5211" to i8*
  %"$eq_call_5213" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_5207", i32 20, i8* %"$$eq_resolver_5208_5210", i8* %"$$eq__sender_5211_5212"), !dbg !500
  store %TName_Bool* %"$eq_call_5213", %TName_Bool** %isOk, align 8, !dbg !500
  %"$gasrem_5215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5216" = icmp ugt i64 2, %"$gasrem_5215"
  br i1 %"$gascmp_5216", label %"$out_of_gas_5217", label %"$have_gas_5218"

"$out_of_gas_5217":                               ; preds = %"$have_gas_5205"
  call void @_out_of_gas()
  br label %"$have_gas_5218"

"$have_gas_5218":                                 ; preds = %"$out_of_gas_5217", %"$have_gas_5205"
  %"$consume_5219" = sub i64 %"$gasrem_5215", 2
  store i64 %"$consume_5219", i64* @_gasrem, align 8
  %"$isOk_5221" = load %TName_Bool*, %TName_Bool** %isOk, align 8
  %"$isOk_tag_5222" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isOk_5221", i32 0, i32 0
  %"$isOk_tag_5223" = load i8, i8* %"$isOk_tag_5222", align 1
  switch i8 %"$isOk_tag_5223", label %"$empty_default_5224" [
    i8 0, label %"$True_5225"
    i8 1, label %"$False_5256"
  ], !dbg !503

"$True_5225":                                     ; preds = %"$have_gas_5218"
  %"$isOk_5226" = bitcast %TName_Bool* %"$isOk_5221" to %CName_True*
  %"$gasrem_5227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5228" = icmp ugt i64 1, %"$gasrem_5227"
  br i1 %"$gascmp_5228", label %"$out_of_gas_5229", label %"$have_gas_5230"

"$out_of_gas_5229":                               ; preds = %"$True_5225"
  call void @_out_of_gas()
  br label %"$have_gas_5230"

"$have_gas_5230":                                 ; preds = %"$out_of_gas_5229", %"$True_5225"
  %"$consume_5231" = sub i64 %"$gasrem_5227", 1
  store i64 %"$consume_5231", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_5232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5233" = icmp ugt i64 1, %"$gasrem_5232"
  br i1 %"$gascmp_5233", label %"$out_of_gas_5234", label %"$have_gas_5235"

"$out_of_gas_5234":                               ; preds = %"$have_gas_5230"
  call void @_out_of_gas()
  br label %"$have_gas_5235"

"$have_gas_5235":                                 ; preds = %"$out_of_gas_5234", %"$have_gas_5230"
  %"$consume_5236" = sub i64 %"$gasrem_5232", 1
  store i64 %"$consume_5236", i64* @_gasrem, align 8
  %"$ud-registry.eConfigured_5237" = load { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* }, { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* }* @ud-registry.eConfigured, align 8
  %"$ud-registry.eConfigured_fptr_5238" = extractvalue { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_5237", 0
  %"$ud-registry.eConfigured_envptr_5239" = extractvalue { i8* (i8*, [32 x i8]*, [20 x i8]*, [20 x i8]*)*, i8* } %"$ud-registry.eConfigured_5237", 1
  %"$ud-registry.eConfigured_node_5240" = alloca [32 x i8], align 1
  store [32 x i8] %node, [32 x i8]* %"$ud-registry.eConfigured_node_5240", align 1
  %"$ud-registry.eConfigured_owner_5241" = alloca [20 x i8], align 1
  %"$owner_5242" = load [20 x i8], [20 x i8]* %owner, align 1
  store [20 x i8] %"$owner_5242", [20 x i8]* %"$ud-registry.eConfigured_owner_5241", align 1
  %"$ud-registry.eConfigured_resolver_5243" = alloca [20 x i8], align 1
  %"$resolver_5244" = load [20 x i8], [20 x i8]* %resolver, align 1
  store [20 x i8] %"$resolver_5244", [20 x i8]* %"$ud-registry.eConfigured_resolver_5243", align 1
  %"$ud-registry.eConfigured_call_5245" = call i8* %"$ud-registry.eConfigured_fptr_5238"(i8* %"$ud-registry.eConfigured_envptr_5239", [32 x i8]* %"$ud-registry.eConfigured_node_5240", [20 x i8]* %"$ud-registry.eConfigured_owner_5241", [20 x i8]* %"$ud-registry.eConfigured_resolver_5243"), !dbg !504
  store i8* %"$ud-registry.eConfigured_call_5245", i8** %e, align 8, !dbg !504
  %"$e_5246" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_5248" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_5246")
  %"$gasrem_5249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_5250" = icmp ugt i64 %"$_literal_cost_call_5248", %"$gasrem_5249"
  br i1 %"$gascmp_5250", label %"$out_of_gas_5251", label %"$have_gas_5252"

"$out_of_gas_5251":                               ; preds = %"$have_gas_5235"
  call void @_out_of_gas()
  br label %"$have_gas_5252"

"$have_gas_5252":                                 ; preds = %"$out_of_gas_5251", %"$have_gas_5235"
  %"$consume_5253" = sub i64 %"$gasrem_5249", %"$_literal_cost_call_5248"
  store i64 %"$consume_5253", i64* @_gasrem, align 8
  %"$execptr_load_5254" = load i8*, i8** @_execptr, align 8
  %"$e_5255" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_5254", %_TyDescrTy_Typ* @"$TyDescr_Event_184", i8* %"$e_5255"), !dbg !507
  br label %"$matchsucc_5220"

"$False_5256":                                    ; preds = %"$have_gas_5218"
  %"$isOk_5257" = bitcast %TName_Bool* %"$isOk_5221" to %CName_False*
  br label %"$matchsucc_5220"

"$empty_default_5224":                            ; preds = %"$have_gas_5218"
  br label %"$matchsucc_5220"

"$matchsucc_5220":                                ; preds = %"$False_5256", %"$have_gas_5252", %"$empty_default_5224"
  br label %"$matchsucc_5186"

"$empty_default_5190":                            ; preds = %"$have_gas_5184"
  br label %"$matchsucc_5186"

"$matchsucc_5186":                                ; preds = %"$matchsucc_5220", %"$empty_default_5190"
  br label %"$matchsucc_5170"

"$empty_default_5174":                            ; preds = %"$have_gas_5168"
  br label %"$matchsucc_5170"

"$matchsucc_5170":                                ; preds = %"$matchsucc_5186", %"$None_5175", %"$empty_default_5174"
  ret void
}

define void @onResolverConfigured(i8* %0) !dbg !508 {
entry:
  %"$_amount_5259" = getelementptr i8, i8* %0, i32 0
  %"$_amount_5260" = bitcast i8* %"$_amount_5259" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_5260", align 8
  %"$_origin_5261" = getelementptr i8, i8* %0, i32 16
  %"$_origin_5262" = bitcast i8* %"$_origin_5261" to [20 x i8]*
  %"$_sender_5263" = getelementptr i8, i8* %0, i32 36
  %"$_sender_5264" = bitcast i8* %"$_sender_5263" to [20 x i8]*
  %"$node_5265" = getelementptr i8, i8* %0, i32 56
  %"$node_5266" = bitcast i8* %"$node_5265" to [32 x i8]*
  call void @"$onResolverConfigured_5145"(%Uint128 %_amount, [20 x i8]* %"$_origin_5262", [20 x i8]* %"$_sender_5264", [32 x i8]* %"$node_5266"), !dbg !509
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "ud-registry.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_119", linkageName: "$fundef_119", scope: !2, file: !2, line: 97, type: !5, scopeLine: 97, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
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
!23 = distinct !DISubprogram(name: "$fundef_121", linkageName: "$fundef_121", scope: !2, file: !2, line: 91, type: !5, scopeLine: 91, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!24 = !DILocation(line: 92, column: 21, scope: !23)
!25 = !DILocation(line: 93, column: 21, scope: !23)
!26 = !DILocation(line: 94, column: 7, scope: !23)
!27 = distinct !DISubprogram(name: "$fundef_123", linkageName: "$fundef_123", scope: !2, file: !2, line: 82, type: !5, scopeLine: 82, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DILocation(line: 82, column: 5, scope: !27)
!29 = !DILocation(line: 83, column: 15, scope: !30)
!30 = distinct !DILexicalBlock(scope: !31, file: !2, line: 83, column: 7)
!31 = distinct !DILexicalBlock(scope: !27, file: !2, line: 82, column: 5)
!32 = !DILocation(line: 85, column: 7, scope: !33)
!33 = distinct !DILexicalBlock(scope: !31, file: !2, line: 84, column: 7)
!34 = !DILocation(line: 86, column: 34, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !2, line: 86, column: 9)
!36 = distinct !DILexicalBlock(scope: !33, file: !2, line: 85, column: 7)
!37 = distinct !DISubprogram(name: "$fundef_125", linkageName: "$fundef_125", scope: !2, file: !2, line: 77, type: !5, scopeLine: 77, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!38 = !DILocation(line: 77, column: 5, scope: !37)
!39 = distinct !DISubprogram(name: "$fundef_127", linkageName: "$fundef_127", scope: !2, file: !2, line: 72, type: !5, scopeLine: 72, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!40 = !DILocation(line: 74, column: 5, scope: !39)
!41 = distinct !DISubprogram(name: "$fundef_129", linkageName: "$fundef_129", scope: !2, file: !2, line: 68, type: !5, scopeLine: 68, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!42 = !DILocation(line: 69, column: 5, scope: !41)
!43 = distinct !DISubprogram(name: "$fundef_131", linkageName: "$fundef_131", scope: !2, file: !2, line: 65, type: !5, scopeLine: 65, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!44 = !DILocation(line: 65, column: 5, scope: !43)
!45 = distinct !DISubprogram(name: "$fundef_133", linkageName: "$fundef_133", scope: !2, file: !2, line: 62, type: !5, scopeLine: 62, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!46 = !DILocation(line: 62, column: 5, scope: !45)
!47 = distinct !DISubprogram(name: "$fundef_135", linkageName: "$fundef_135", scope: !2, file: !2, line: 57, type: !5, scopeLine: 57, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!48 = !DILocation(line: 59, column: 5, scope: !47)
!49 = distinct !DISubprogram(name: "$fundef_137", linkageName: "$fundef_137", scope: !2, file: !2, line: 53, type: !5, scopeLine: 53, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!50 = !DILocation(line: 54, column: 5, scope: !49)
!51 = distinct !DISubprogram(name: "$fundef_139", linkageName: "$fundef_139", scope: !2, file: !2, line: 38, type: !5, scopeLine: 38, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!52 = !DILocation(line: 39, column: 5, scope: !51)
!53 = !DILocation(line: 41, column: 7, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !2, line: 40, column: 7)
!55 = distinct !DILexicalBlock(scope: !51, file: !2, line: 39, column: 5)
!56 = !DILocation(line: 42, column: 17, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !2, line: 42, column: 9)
!58 = distinct !DILexicalBlock(scope: !54, file: !2, line: 41, column: 7)
!59 = !DILocation(line: 43, column: 18, scope: !60)
!60 = distinct !DILexicalBlock(scope: !58, file: !2, line: 43, column: 9)
!61 = !DILocation(line: 46, column: 7, scope: !62)
!62 = distinct !DILexicalBlock(scope: !55, file: !2, line: 45, column: 7)
!63 = !DILocation(line: 47, column: 17, scope: !64)
!64 = distinct !DILexicalBlock(scope: !65, file: !2, line: 47, column: 9)
!65 = distinct !DILexicalBlock(scope: !62, file: !2, line: 46, column: 7)
!66 = !DILocation(line: 48, column: 18, scope: !67)
!67 = distinct !DILexicalBlock(scope: !65, file: !2, line: 48, column: 9)
!68 = distinct !DISubprogram(name: "$fundef_143", linkageName: "$fundef_143", scope: !2, file: !2, line: 33, type: !5, scopeLine: 33, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!69 = !DILocation(line: 33, column: 15, scope: !68)
!70 = !DILocation(line: 34, column: 8, scope: !68)
!71 = distinct !DISubprogram(name: "$fundef_141", linkageName: "$fundef_141", scope: !2, file: !2, line: 30, type: !5, scopeLine: 30, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!72 = !DILocation(line: 31, column: 30, scope: !71)
!73 = !DILocation(line: 31, column: 29, scope: !71)
!74 = !DILocation(line: 33, column: 7, scope: !71)
!75 = !DILocation(line: 35, column: 7, scope: !71)
!76 = distinct !DISubprogram(name: "$fundef_145", linkageName: "$fundef_145", scope: !2, file: !2, line: 26, type: !5, scopeLine: 26, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!77 = !DILocation(line: 27, column: 13, scope: !76)
!78 = !DILocation(line: 27, column: 44, scope: !76)
!79 = distinct !DISubprogram(name: "$fundef_147", linkageName: "$fundef_147", scope: !2, file: !2, line: 21, type: !5, scopeLine: 21, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!80 = !DILocation(line: 22, column: 27, scope: !79)
!81 = !DILocation(line: 22, column: 26, scope: !79)
!82 = !DILocation(line: 23, column: 7, scope: !79)
!83 = distinct !DISubprogram(name: "$fundef_151", linkageName: "$fundef_151", scope: !2, file: !2, line: 18, type: !5, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!84 = !DILocation(line: 18, column: 5, scope: !83)
!85 = distinct !DISubprogram(name: "$fundef_149", linkageName: "$fundef_149", scope: !2, file: !2, line: 17, type: !5, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!86 = !DILocation(line: 18, column: 5, scope: !85)
!87 = distinct !DISubprogram(name: "$fundef_153", linkageName: "$fundef_153", scope: !2, file: !2, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!88 = !DILocation(line: 14, column: 5, scope: !87)
!89 = distinct !DISubprogram(name: "$fundef_93", linkageName: "$fundef_93", scope: !90, file: !90, line: 252, type: !5, scopeLine: 252, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!90 = !DIFile(filename: "ListUtils.scillib", directory: "../src/stdlib")
!91 = !DILocation(line: 252, column: 19, scope: !89)
!92 = !DILocation(line: 253, column: 15, scope: !89)
!93 = !DILocation(line: 253, column: 14, scope: !89)
!94 = !DILocation(line: 254, column: 5, scope: !89)
!95 = distinct !DISubprogram(name: "$fundef_91", linkageName: "$fundef_91", scope: !90, file: !90, line: 251, type: !5, scopeLine: 251, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!96 = !DILocation(line: 252, column: 5, scope: !95)
!97 = distinct !DISubprogram(name: "$fundef_89", linkageName: "$fundef_89", scope: !90, file: !90, line: 251, type: !5, scopeLine: 251, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!98 = !DILocation(line: 251, column: 33, scope: !97)
!99 = distinct !DISubprogram(name: "$fundef_99", linkageName: "$fundef_99", scope: !90, file: !90, line: 241, type: !5, scopeLine: 241, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!100 = !DILocation(line: 241, column: 17, scope: !99)
!101 = !DILocation(line: 241, column: 16, scope: !99)
!102 = !DILocation(line: 242, column: 18, scope: !99)
!103 = !DILocation(line: 243, column: 5, scope: !99)
!104 = !DILocation(line: 244, column: 17, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !90, line: 244, column: 7)
!106 = distinct !DILexicalBlock(scope: !99, file: !90, line: 243, column: 5)
!107 = !DILocation(line: 245, column: 15, scope: !108)
!108 = distinct !DILexicalBlock(scope: !106, file: !90, line: 245, column: 7)
!109 = distinct !DISubprogram(name: "$fundef_97", linkageName: "$fundef_97", scope: !90, file: !90, line: 240, type: !5, scopeLine: 240, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!110 = !DILocation(line: 241, column: 5, scope: !109)
!111 = distinct !DISubprogram(name: "$fundef_95", linkageName: "$fundef_95", scope: !90, file: !90, line: 240, type: !5, scopeLine: 240, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!112 = !DILocation(line: 240, column: 27, scope: !111)
!113 = distinct !DISubprogram(name: "$fundef_109", linkageName: "$fundef_109", scope: !90, file: !90, line: 230, type: !5, scopeLine: 230, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!114 = !DILocation(line: 230, column: 19, scope: !113)
!115 = !DILocation(line: 231, column: 9, scope: !113)
!116 = !DILocation(line: 232, column: 19, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !90, line: 232, column: 11)
!118 = distinct !DILexicalBlock(scope: !113, file: !90, line: 231, column: 9)
!119 = !DILocation(line: 233, column: 20, scope: !120)
!120 = distinct !DILexicalBlock(scope: !118, file: !90, line: 233, column: 11)
!121 = distinct !DISubprogram(name: "$fundef_107", linkageName: "$fundef_107", scope: !90, file: !90, line: 229, type: !5, scopeLine: 229, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!122 = !DILocation(line: 230, column: 9, scope: !121)
!123 = distinct !DISubprogram(name: "$fundef_105", linkageName: "$fundef_105", scope: !90, file: !90, line: 228, type: !5, scopeLine: 228, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!124 = !DILocation(line: 229, column: 7, scope: !123)
!125 = distinct !DISubprogram(name: "$fundef_103", linkageName: "$fundef_103", scope: !90, file: !90, line: 224, type: !5, scopeLine: 224, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!126 = !DILocation(line: 224, column: 18, scope: !125)
!127 = !DILocation(line: 224, column: 17, scope: !125)
!128 = !DILocation(line: 225, column: 16, scope: !125)
!129 = !DILocation(line: 228, column: 35, scope: !125)
!130 = !DILocation(line: 235, column: 5, scope: !125)
!131 = distinct !DISubprogram(name: "$fundef_101", linkageName: "$fundef_101", scope: !90, file: !90, line: 224, type: !5, scopeLine: 224, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!132 = !DILocation(line: 224, column: 5, scope: !131)
!133 = distinct !DISubprogram(name: "$fundef_117", linkageName: "$fundef_117", scope: !90, file: !90, line: 40, type: !5, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!134 = !DILocation(line: 40, column: 16, scope: !133)
!135 = !DILocation(line: 41, column: 7, scope: !133)
!136 = !DILocation(line: 42, column: 17, scope: !137)
!137 = distinct !DILexicalBlock(scope: !138, file: !90, line: 42, column: 9)
!138 = distinct !DILexicalBlock(scope: !133, file: !90, line: 41, column: 7)
!139 = !DILocation(line: 43, column: 18, scope: !140)
!140 = distinct !DILexicalBlock(scope: !138, file: !90, line: 43, column: 9)
!141 = distinct !DISubprogram(name: "$fundef_115", linkageName: "$fundef_115", scope: !90, file: !90, line: 39, type: !5, scopeLine: 39, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!142 = !DILocation(line: 40, column: 7, scope: !141)
!143 = distinct !DISubprogram(name: "$fundef_113", linkageName: "$fundef_113", scope: !90, file: !90, line: 38, type: !5, scopeLine: 38, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!144 = !DILocation(line: 38, column: 18, scope: !143)
!145 = !DILocation(line: 38, column: 17, scope: !143)
!146 = !DILocation(line: 39, column: 32, scope: !143)
!147 = !DILocation(line: 45, column: 16, scope: !143)
!148 = !DILocation(line: 46, column: 5, scope: !143)
!149 = distinct !DISubprogram(name: "$fundef_111", linkageName: "$fundef_111", scope: !90, file: !90, line: 38, type: !5, scopeLine: 38, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!150 = !DILocation(line: 38, column: 5, scope: !149)
!151 = distinct !DISubprogram(name: "$fundef_83", linkageName: "$fundef_83", scope: !152, file: !152, line: 22, type: !5, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!152 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!153 = !DILocation(line: 22, column: 5, scope: !151)
!154 = !DILocation(line: 23, column: 15, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !152, line: 23, column: 7)
!156 = distinct !DILexicalBlock(scope: !151, file: !152, line: 22, column: 5)
!157 = !DILocation(line: 24, column: 16, scope: !158)
!158 = distinct !DILexicalBlock(scope: !156, file: !152, line: 24, column: 7)
!159 = distinct !DISubprogram(name: "$fundef_85", linkageName: "$fundef_85", scope: !152, file: !152, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!160 = !DILocation(line: 15, column: 5, scope: !159)
!161 = !DILocation(line: 16, column: 16, scope: !162)
!162 = distinct !DILexicalBlock(scope: !163, file: !152, line: 16, column: 7)
!163 = distinct !DILexicalBlock(scope: !159, file: !152, line: 15, column: 5)
!164 = !DILocation(line: 17, column: 16, scope: !165)
!165 = distinct !DILexicalBlock(scope: !163, file: !152, line: 17, column: 7)
!166 = distinct !DISubprogram(name: "$fundef_87", linkageName: "$fundef_87", scope: !152, file: !152, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!167 = !DILocation(line: 8, column: 5, scope: !166)
!168 = !DILocation(line: 9, column: 16, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !152, line: 9, column: 7)
!170 = distinct !DILexicalBlock(scope: !166, file: !152, line: 8, column: 5)
!171 = !DILocation(line: 10, column: 16, scope: !172)
!172 = distinct !DILexicalBlock(scope: !170, file: !152, line: 10, column: 7)
!173 = distinct !DISubprogram(name: "$fundef_71", linkageName: "$fundef_71", scope: !174, file: !174, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!174 = !DIFile(filename: "Prelude", directory: ".")
!175 = !DILocation(line: 1, column: 94, scope: !173)
!176 = distinct !DISubprogram(name: "$fundef_69", linkageName: "$fundef_69", scope: !174, file: !174, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!177 = !DILocation(line: 1, column: 37, scope: !176)
!178 = !DILocation(line: 1, column: 94, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !174, line: 1, column: 52)
!180 = distinct !DILexicalBlock(scope: !176, file: !174, line: 1, column: 37)
!181 = !DILocation(line: 1, column: 106, scope: !179)
!182 = !DILocation(line: 1, column: 129, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !174, line: 1, column: 122)
!184 = distinct !DISubprogram(name: "$fundef_67", linkageName: "$fundef_67", scope: !174, file: !174, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!185 = !DILocation(line: 1, column: 37, scope: !184)
!186 = distinct !DISubprogram(name: "$fundef_65", linkageName: "$fundef_65", scope: !174, file: !174, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!187 = !DILocation(line: 1, column: 17, scope: !186)
!188 = distinct !DISubprogram(name: "$fundef_63", linkageName: "$fundef_63", scope: !174, file: !174, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!189 = !DILocation(line: 1, column: 17, scope: !188)
!190 = distinct !DISubprogram(name: "$fundef_61", linkageName: "$fundef_61", scope: !174, file: !174, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!191 = !DILocation(line: 1, column: 17, scope: !190)
!192 = distinct !DISubprogram(name: "$fundef_81", linkageName: "$fundef_81", scope: !174, file: !174, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!193 = !DILocation(line: 1, column: 37, scope: !192)
!194 = !DILocation(line: 1, column: 74, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !174, line: 1, column: 52)
!196 = distinct !DILexicalBlock(scope: !192, file: !174, line: 1, column: 37)
!197 = !DILocation(line: 1, column: 83, scope: !195)
!198 = !DILocation(line: 1, column: 100, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !174, line: 1, column: 93)
!200 = distinct !DISubprogram(name: "$fundef_79", linkageName: "$fundef_79", scope: !174, file: !174, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!201 = !DILocation(line: 1, column: 37, scope: !200)
!202 = distinct !DISubprogram(name: "$fundef_77", linkageName: "$fundef_77", scope: !174, file: !174, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!203 = !DILocation(line: 1, column: 17, scope: !202)
!204 = distinct !DISubprogram(name: "$fundef_75", linkageName: "$fundef_75", scope: !174, file: !174, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!205 = !DILocation(line: 1, column: 17, scope: !204)
!206 = distinct !DISubprogram(name: "$fundef_73", linkageName: "$fundef_73", scope: !174, file: !174, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!207 = !DILocation(line: 1, column: 17, scope: !206)
!208 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !209, file: !209, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!209 = !DIFile(filename: ".", directory: ".")
!210 = !DILocation(line: 1, column: 17, scope: !208)
!211 = !DILocation(line: 7, column: 3, scope: !208)
!212 = !DILocation(line: 14, column: 21, scope: !208)
!213 = !DILocation(line: 22, column: 5, scope: !208)
!214 = !DILocation(line: 36, column: 3, scope: !208)
!215 = !DILocation(line: 222, column: 3, scope: !208)
!216 = !DILocation(line: 239, column: 3, scope: !208)
!217 = !DILocation(line: 250, column: 3, scope: !208)
!218 = !DILocation(line: 7, column: 19, scope: !208)
!219 = !DILocation(line: 10, column: 18, scope: !208)
!220 = !DILocation(line: 11, column: 18, scope: !208)
!221 = !DILocation(line: 14, column: 5, scope: !208)
!222 = !DILocation(line: 17, column: 3, scope: !208)
!223 = !DILocation(line: 21, column: 3, scope: !208)
!224 = !DILocation(line: 26, column: 3, scope: !208)
!225 = !DILocation(line: 30, column: 3, scope: !208)
!226 = !DILocation(line: 38, column: 3, scope: !208)
!227 = !DILocation(line: 53, column: 3, scope: !208)
!228 = !DILocation(line: 57, column: 3, scope: !208)
!229 = !DILocation(line: 62, column: 5, scope: !208)
!230 = !DILocation(line: 65, column: 5, scope: !208)
!231 = !DILocation(line: 68, column: 3, scope: !208)
!232 = !DILocation(line: 72, column: 3, scope: !208)
!233 = !DILocation(line: 77, column: 5, scope: !208)
!234 = !DILocation(line: 82, column: 5, scope: !208)
!235 = !DILocation(line: 91, column: 3, scope: !208)
!236 = !DILocation(line: 97, column: 3, scope: !208)
!237 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !209, file: !209, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!238 = !DILocation(line: 114, column: 15, scope: !237)
!239 = !DILocation(line: 115, column: 20, scope: !237)
!240 = !DILocation(line: 116, column: 5, scope: !237)
!241 = !DILocation(line: 117, column: 28, scope: !237)
!242 = !DILocation(line: 118, column: 40, scope: !237)
!243 = !DILocation(line: 119, column: 47, scope: !237)
!244 = !DILocation(line: 120, column: 30, scope: !237)
!245 = distinct !DISubprogram(name: "setAdmin", linkageName: "setAdmin", scope: !2, file: !2, line: 121, type: !5, scopeLine: 121, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!246 = !DILocation(line: 122, column: 3, scope: !245)
!247 = !DILocation(line: 123, column: 19, scope: !245)
!248 = !DILocation(line: 124, column: 3, scope: !245)
!249 = !DILocation(line: 127, column: 15, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !2, line: 125, column: 5)
!251 = distinct !DILexicalBlock(scope: !245, file: !2, line: 124, column: 3)
!252 = !DILocation(line: 127, column: 60, scope: !250)
!253 = !DILocation(line: 128, column: 5, scope: !250)
!254 = !DILocation(line: 130, column: 19, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !2, line: 129, column: 7)
!256 = distinct !DILexicalBlock(scope: !250, file: !2, line: 128, column: 5)
!257 = !DILocation(line: 131, column: 19, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !2, line: 131, column: 11)
!259 = distinct !DILexicalBlock(scope: !255, file: !2, line: 130, column: 19)
!260 = !DILocation(line: 132, column: 20, scope: !261)
!261 = distinct !DILexicalBlock(scope: !259, file: !2, line: 132, column: 11)
!262 = !DILocation(line: 134, column: 7, scope: !255)
!263 = !DILocation(line: 135, column: 11, scope: !255)
!264 = !DILocation(line: 136, column: 7, scope: !255)
!265 = !DILocation(line: 140, column: 44, scope: !266)
!266 = distinct !DILexicalBlock(scope: !251, file: !2, line: 139, column: 5)
!267 = !DILocation(line: 140, column: 49, scope: !266)
!268 = !DILocation(line: 141, column: 5, scope: !266)
!269 = distinct !DISubprogram(name: "setAdmin", linkageName: "setAdmin", scope: !2, file: !2, line: 121, type: !5, scopeLine: 121, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!270 = !DILocation(line: 121, column: 12, scope: !269)
!271 = distinct !DISubprogram(name: "approve", linkageName: "approve", scope: !2, file: !2, line: 144, type: !5, scopeLine: 144, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!272 = !DILocation(line: 145, column: 3, scope: !271)
!273 = !DILocation(line: 146, column: 17, scope: !271)
!274 = !DILocation(line: 147, column: 23, scope: !271)
!275 = !DILocation(line: 148, column: 3, scope: !271)
!276 = !DILocation(line: 150, column: 5, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !2, line: 149, column: 5)
!278 = distinct !DILexicalBlock(scope: !271, file: !2, line: 148, column: 3)
!279 = !DILocation(line: 151, column: 25, scope: !277)
!280 = !DILocation(line: 152, column: 17, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !2, line: 152, column: 9)
!282 = distinct !DILexicalBlock(scope: !277, file: !2, line: 151, column: 25)
!283 = !DILocation(line: 153, column: 26, scope: !284)
!284 = distinct !DILexicalBlock(scope: !282, file: !2, line: 153, column: 9)
!285 = !DILocation(line: 155, column: 29, scope: !277)
!286 = !DILocation(line: 155, column: 69, scope: !277)
!287 = !DILocation(line: 156, column: 5, scope: !277)
!288 = !DILocation(line: 158, column: 7, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !2, line: 157, column: 7)
!290 = distinct !DILexicalBlock(scope: !277, file: !2, line: 156, column: 5)
!291 = !DILocation(line: 159, column: 11, scope: !289)
!292 = !DILocation(line: 160, column: 7, scope: !289)
!293 = !DILocation(line: 164, column: 39, scope: !294)
!294 = distinct !DILexicalBlock(scope: !278, file: !2, line: 163, column: 5)
!295 = !DILocation(line: 164, column: 44, scope: !294)
!296 = !DILocation(line: 165, column: 5, scope: !294)
!297 = distinct !DISubprogram(name: "approve", linkageName: "approve", scope: !2, file: !2, line: 144, type: !5, scopeLine: 144, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!298 = !DILocation(line: 144, column: 12, scope: !297)
!299 = distinct !DISubprogram(name: "approveFor", linkageName: "approveFor", scope: !2, file: !2, line: 168, type: !5, scopeLine: 168, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!300 = !DILocation(line: 169, column: 3, scope: !299)
!301 = !DILocation(line: 170, column: 22, scope: !299)
!302 = !DILocation(line: 171, column: 15, scope: !303)
!303 = distinct !DILexicalBlock(scope: !304, file: !2, line: 171, column: 7)
!304 = distinct !DILexicalBlock(scope: !299, file: !2, line: 170, column: 22)
!305 = !DILocation(line: 172, column: 19, scope: !306)
!306 = distinct !DILexicalBlock(scope: !304, file: !2, line: 172, column: 7)
!307 = !DILocation(line: 174, column: 27, scope: !299)
!308 = !DILocation(line: 175, column: 5, scope: !299)
!309 = !DILocation(line: 176, column: 3, scope: !299)
!310 = !DILocation(line: 178, column: 20, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !2, line: 177, column: 5)
!312 = distinct !DILexicalBlock(scope: !299, file: !2, line: 176, column: 3)
!313 = !DILocation(line: 179, column: 17, scope: !314)
!314 = distinct !DILexicalBlock(scope: !315, file: !2, line: 179, column: 9)
!315 = distinct !DILexicalBlock(scope: !311, file: !2, line: 178, column: 20)
!316 = !DILocation(line: 180, column: 18, scope: !317)
!317 = distinct !DILexicalBlock(scope: !315, file: !2, line: 180, column: 9)
!318 = !DILocation(line: 182, column: 5, scope: !311)
!319 = !DILocation(line: 183, column: 9, scope: !311)
!320 = !DILocation(line: 184, column: 5, scope: !311)
!321 = distinct !DISubprogram(name: "approveFor", linkageName: "approveFor", scope: !2, file: !2, line: 168, type: !5, scopeLine: 168, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!322 = !DILocation(line: 168, column: 12, scope: !321)
!323 = distinct !DISubprogram(name: "configureNode", linkageName: "configureNode", scope: !2, file: !2, line: 188, type: !5, scopeLine: 188, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!324 = !DILocation(line: 189, column: 3, scope: !323)
!325 = !DILocation(line: 190, column: 3, scope: !323)
!326 = !DILocation(line: 191, column: 17, scope: !323)
!327 = !DILocation(line: 192, column: 3, scope: !323)
!328 = !DILocation(line: 193, column: 17, scope: !323)
!329 = !DILocation(line: 194, column: 3, scope: !323)
!330 = !DILocation(line: 196, column: 17, scope: !331)
!331 = distinct !DILexicalBlock(scope: !332, file: !2, line: 195, column: 5)
!332 = distinct !DILexicalBlock(scope: !323, file: !2, line: 194, column: 3)
!333 = !DILocation(line: 197, column: 5, scope: !331)
!334 = !DILocation(line: 198, column: 9, scope: !331)
!335 = !DILocation(line: 199, column: 5, scope: !331)
!336 = !DILocation(line: 200, column: 20, scope: !331)
!337 = !DILocation(line: 202, column: 10, scope: !331)
!338 = !DILocation(line: 203, column: 5, scope: !331)
!339 = !DILocation(line: 205, column: 61, scope: !340)
!340 = distinct !DILexicalBlock(scope: !332, file: !2, line: 204, column: 5)
!341 = !DILocation(line: 205, column: 66, scope: !340)
!342 = !DILocation(line: 206, column: 5, scope: !340)
!343 = !DILocation(line: 207, column: 20, scope: !340)
!344 = !DILocation(line: 209, column: 10, scope: !340)
!345 = !DILocation(line: 210, column: 5, scope: !340)
!346 = distinct !DISubprogram(name: "configureNode", linkageName: "configureNode", scope: !2, file: !2, line: 188, type: !5, scopeLine: 188, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!347 = !DILocation(line: 188, column: 12, scope: !346)
!348 = distinct !DISubprogram(name: "configureResolver", linkageName: "configureResolver", scope: !2, file: !2, line: 213, type: !5, scopeLine: 213, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!349 = !DILocation(line: 214, column: 3, scope: !348)
!350 = !DILocation(line: 215, column: 3, scope: !348)
!351 = !DILocation(line: 216, column: 17, scope: !348)
!352 = !DILocation(line: 217, column: 3, scope: !348)
!353 = !DILocation(line: 218, column: 17, scope: !348)
!354 = !DILocation(line: 219, column: 3, scope: !348)
!355 = !DILocation(line: 221, column: 17, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !2, line: 220, column: 5)
!357 = distinct !DILexicalBlock(scope: !348, file: !2, line: 219, column: 3)
!358 = !DILocation(line: 222, column: 5, scope: !356)
!359 = !DILocation(line: 223, column: 9, scope: !356)
!360 = !DILocation(line: 224, column: 5, scope: !356)
!361 = !DILocation(line: 226, column: 61, scope: !362)
!362 = distinct !DILexicalBlock(scope: !357, file: !2, line: 225, column: 5)
!363 = !DILocation(line: 226, column: 66, scope: !362)
!364 = !DILocation(line: 227, column: 5, scope: !362)
!365 = distinct !DISubprogram(name: "configureResolver", linkageName: "configureResolver", scope: !2, file: !2, line: 213, type: !5, scopeLine: 213, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!366 = !DILocation(line: 213, column: 12, scope: !365)
!367 = distinct !DISubprogram(name: "transfer", linkageName: "transfer", scope: !2, file: !2, line: 230, type: !5, scopeLine: 230, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!368 = !DILocation(line: 231, column: 3, scope: !367)
!369 = !DILocation(line: 232, column: 3, scope: !367)
!370 = !DILocation(line: 233, column: 17, scope: !367)
!371 = !DILocation(line: 234, column: 3, scope: !367)
!372 = !DILocation(line: 235, column: 17, scope: !367)
!373 = !DILocation(line: 236, column: 3, scope: !367)
!374 = !DILocation(line: 238, column: 5, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !2, line: 237, column: 5)
!376 = distinct !DILexicalBlock(scope: !367, file: !2, line: 236, column: 3)
!377 = !DILocation(line: 239, column: 17, scope: !375)
!378 = !DILocation(line: 240, column: 5, scope: !375)
!379 = !DILocation(line: 241, column: 9, scope: !375)
!380 = !DILocation(line: 242, column: 5, scope: !375)
!381 = !DILocation(line: 243, column: 20, scope: !375)
!382 = !DILocation(line: 245, column: 10, scope: !375)
!383 = !DILocation(line: 246, column: 5, scope: !375)
!384 = !DILocation(line: 248, column: 61, scope: !385)
!385 = distinct !DILexicalBlock(scope: !376, file: !2, line: 247, column: 5)
!386 = !DILocation(line: 248, column: 66, scope: !385)
!387 = !DILocation(line: 249, column: 5, scope: !385)
!388 = !DILocation(line: 250, column: 20, scope: !385)
!389 = !DILocation(line: 252, column: 10, scope: !385)
!390 = !DILocation(line: 253, column: 5, scope: !385)
!391 = distinct !DISubprogram(name: "transfer", linkageName: "transfer", scope: !2, file: !2, line: 230, type: !5, scopeLine: 230, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!392 = !DILocation(line: 230, column: 12, scope: !391)
!393 = distinct !DISubprogram(name: "assign", linkageName: "assign", scope: !2, file: !2, line: 256, type: !5, scopeLine: 256, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!394 = !DILocation(line: 257, column: 3, scope: !393)
!395 = !DILocation(line: 258, column: 3, scope: !393)
!396 = !DILocation(line: 259, column: 17, scope: !393)
!397 = !DILocation(line: 260, column: 3, scope: !393)
!398 = !DILocation(line: 261, column: 17, scope: !393)
!399 = !DILocation(line: 262, column: 3, scope: !393)
!400 = !DILocation(line: 264, column: 12, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !2, line: 263, column: 5)
!402 = distinct !DILexicalBlock(scope: !393, file: !2, line: 262, column: 3)
!403 = !DILocation(line: 265, column: 5, scope: !401)
!404 = !DILocation(line: 266, column: 5, scope: !401)
!405 = !DILocation(line: 268, column: 11, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !2, line: 267, column: 7)
!407 = distinct !DILexicalBlock(scope: !401, file: !2, line: 266, column: 5)
!408 = !DILocation(line: 269, column: 7, scope: !406)
!409 = !DILocation(line: 272, column: 5, scope: !401)
!410 = !DILocation(line: 273, column: 17, scope: !401)
!411 = !DILocation(line: 274, column: 5, scope: !401)
!412 = !DILocation(line: 275, column: 9, scope: !401)
!413 = !DILocation(line: 276, column: 5, scope: !401)
!414 = !DILocation(line: 277, column: 20, scope: !401)
!415 = !DILocation(line: 279, column: 10, scope: !401)
!416 = !DILocation(line: 280, column: 5, scope: !401)
!417 = !DILocation(line: 282, column: 63, scope: !418)
!418 = distinct !DILexicalBlock(scope: !402, file: !2, line: 281, column: 5)
!419 = !DILocation(line: 282, column: 68, scope: !418)
!420 = !DILocation(line: 283, column: 5, scope: !418)
!421 = !DILocation(line: 284, column: 20, scope: !418)
!422 = !DILocation(line: 286, column: 10, scope: !418)
!423 = !DILocation(line: 287, column: 5, scope: !418)
!424 = distinct !DISubprogram(name: "assign", linkageName: "assign", scope: !2, file: !2, line: 256, type: !5, scopeLine: 256, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!425 = !DILocation(line: 256, column: 12, scope: !424)
!426 = distinct !DISubprogram(name: "bestow", linkageName: "bestow", scope: !2, file: !2, line: 290, type: !5, scopeLine: 290, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!427 = !DILocation(line: 291, column: 3, scope: !426)
!428 = !DILocation(line: 292, column: 10, scope: !426)
!429 = !DILocation(line: 293, column: 3, scope: !426)
!430 = !DILocation(line: 294, column: 3, scope: !426)
!431 = !DILocation(line: 295, column: 3, scope: !426)
!432 = !DILocation(line: 297, column: 25, scope: !426)
!433 = !DILocation(line: 298, column: 29, scope: !426)
!434 = !DILocation(line: 299, column: 22, scope: !426)
!435 = !DILocation(line: 300, column: 23, scope: !426)
!436 = !DILocation(line: 301, column: 27, scope: !426)
!437 = !DILocation(line: 302, column: 36, scope: !426)
!438 = !DILocation(line: 303, column: 37, scope: !426)
!439 = !DILocation(line: 304, column: 27, scope: !426)
!440 = !DILocation(line: 305, column: 7, scope: !426)
!441 = !DILocation(line: 306, column: 3, scope: !426)
!442 = !DILocation(line: 308, column: 5, scope: !443)
!443 = distinct !DILexicalBlock(scope: !444, file: !2, line: 307, column: 5)
!444 = distinct !DILexicalBlock(scope: !426, file: !2, line: 306, column: 3)
!445 = !DILocation(line: 310, column: 11, scope: !446)
!446 = distinct !DILexicalBlock(scope: !447, file: !2, line: 309, column: 7)
!447 = distinct !DILexicalBlock(scope: !443, file: !2, line: 308, column: 5)
!448 = !DILocation(line: 311, column: 7, scope: !446)
!449 = !DILocation(line: 314, column: 17, scope: !443)
!450 = !DILocation(line: 315, column: 5, scope: !443)
!451 = !DILocation(line: 316, column: 9, scope: !443)
!452 = !DILocation(line: 317, column: 5, scope: !443)
!453 = !DILocation(line: 319, column: 30, scope: !454)
!454 = distinct !DILexicalBlock(scope: !444, file: !2, line: 318, column: 5)
!455 = !DILocation(line: 319, column: 35, scope: !454)
!456 = !DILocation(line: 320, column: 5, scope: !454)
!457 = distinct !DISubprogram(name: "bestow", linkageName: "bestow", scope: !2, file: !2, line: 290, type: !5, scopeLine: 290, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!458 = !DILocation(line: 290, column: 12, scope: !457)
!459 = distinct !DISubprogram(name: "setRegistrar", linkageName: "setRegistrar", scope: !2, file: !2, line: 323, type: !5, scopeLine: 323, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!460 = !DILocation(line: 324, column: 3, scope: !459)
!461 = !DILocation(line: 325, column: 10, scope: !459)
!462 = !DILocation(line: 326, column: 3, scope: !459)
!463 = !DILocation(line: 328, column: 9, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !2, line: 327, column: 5)
!465 = distinct !DILexicalBlock(scope: !459, file: !2, line: 326, column: 3)
!466 = !DILocation(line: 329, column: 5, scope: !464)
!467 = !DILocation(line: 330, column: 5, scope: !464)
!468 = distinct !DISubprogram(name: "setRegistrar", linkageName: "setRegistrar", scope: !2, file: !2, line: 323, type: !5, scopeLine: 323, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!469 = !DILocation(line: 323, column: 12, scope: !468)
!470 = distinct !DISubprogram(name: "register", linkageName: "register", scope: !2, file: !2, line: 334, type: !5, scopeLine: 334, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!471 = !DILocation(line: 335, column: 10, scope: !470)
!472 = !DILocation(line: 336, column: 3, scope: !470)
!473 = !DILocation(line: 337, column: 3, scope: !470)
!474 = !DILocation(line: 338, column: 17, scope: !470)
!475 = !DILocation(line: 340, column: 5, scope: !470)
!476 = !DILocation(line: 341, column: 15, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !2, line: 341, column: 7)
!478 = distinct !DILexicalBlock(scope: !470, file: !2, line: 340, column: 5)
!479 = !DILocation(line: 342, column: 24, scope: !480)
!480 = distinct !DILexicalBlock(scope: !478, file: !2, line: 342, column: 7)
!481 = !DILocation(line: 344, column: 3, scope: !470)
!482 = !DILocation(line: 346, column: 27, scope: !470)
!483 = !DILocation(line: 347, column: 24, scope: !470)
!484 = !DILocation(line: 348, column: 7, scope: !470)
!485 = !DILocation(line: 349, column: 3, scope: !470)
!486 = !DILocation(line: 351, column: 5, scope: !487)
!487 = distinct !DILexicalBlock(scope: !488, file: !2, line: 350, column: 5)
!488 = distinct !DILexicalBlock(scope: !470, file: !2, line: 349, column: 3)
!489 = !DILocation(line: 353, column: 15, scope: !487)
!490 = !DILocation(line: 355, column: 9, scope: !487)
!491 = !DILocation(line: 356, column: 5, scope: !487)
!492 = distinct !DISubprogram(name: "register", linkageName: "register", scope: !2, file: !2, line: 334, type: !5, scopeLine: 334, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!493 = !DILocation(line: 334, column: 12, scope: !492)
!494 = distinct !DISubprogram(name: "onResolverConfigured", linkageName: "onResolverConfigured", scope: !2, file: !2, line: 360, type: !5, scopeLine: 360, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!495 = !DILocation(line: 361, column: 3, scope: !494)
!496 = !DILocation(line: 362, column: 3, scope: !494)
!497 = !DILocation(line: 365, column: 5, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !2, line: 364, column: 5)
!499 = distinct !DILexicalBlock(scope: !494, file: !2, line: 362, column: 3)
!500 = !DILocation(line: 367, column: 14, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !2, line: 366, column: 7)
!502 = distinct !DILexicalBlock(scope: !498, file: !2, line: 365, column: 5)
!503 = !DILocation(line: 368, column: 7, scope: !501)
!504 = !DILocation(line: 370, column: 13, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !2, line: 369, column: 9)
!506 = distinct !DILexicalBlock(scope: !501, file: !2, line: 368, column: 7)
!507 = !DILocation(line: 371, column: 9, scope: !505)
!508 = distinct !DISubprogram(name: "onResolverConfigured", linkageName: "onResolverConfigured", scope: !2, file: !2, line: 360, type: !5, scopeLine: 360, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!509 = !DILocation(line: 360, column: 12, scope: !508)
