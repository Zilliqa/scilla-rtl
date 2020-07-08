; let t1 =
; tfun 'A =>
; fun (a : 'A) =>
; let an = Nil {'A} in
; Cons {'A} a an
; in
; 
; let t2 =
; tfun 'A =>
; fun (a : 'A) =>
; let an = Nil {'A} in
; let a1 = Cons {'A} a an in
; Cons {'A} a a1
; in
; 
; let some_bool = True in
; let f =
; match some_bool with
; | True => t2
; | False => t1
; end
; in
; 
; let some_bool2 = False in
; match some_bool2 with
; | True =>
; let f1 = @f Int32 in
; let len = @list_length Int32 in
; let one = Int32 1 in
; let f1l = f1 one in
; len f1l
; | False =>
; let f2 = @f Int64 in
; let len = @list_length Int64 in
; let one = Int64 1 in
; let f2l = f2 one in
; len f2l
; end
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_59" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_81" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_80"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_80" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_82"**, %"$TyDescrTy_ADTTyp_81"* }
%"$TyDescrTy_ADTTyp_Constr_82" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_List_Int64 = type { i8, %CName_Cons_Int64*, %CName_Nil_Int64* }
%CName_Cons_Int64 = type <{ i8, %Int64, %TName_List_Int64* }>
%CName_Nil_Int64 = type <{ i8 }>
%"$$fundef_57_env_120" = type {}
%Int64 = type { i64 }
%"$$fundef_55_env_121" = type {}
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>
%"$$fundef_53_env_122" = type {}
%Int32 = type { i32 }
%"$$fundef_51_env_123" = type {}
%"$$fundef_49_env_124" = type {}
%"$$fundef_47_env_125" = type {}
%"$$fundef_45_env_126" = type {}
%"$$fundef_43_env_127" = type {}
%Uint32 = type { i32 }
%"$$fundef_40_env_128" = type { %Uint32, %Uint32 }
%"$$fundef_38_env_129" = type { %Uint32 }
%"$$fundef_36_env_130" = type { { i8*, i8* }* }
%"$$fundef_34_env_131" = type { %Uint32, %Uint32 }
%"$$fundef_32_env_132" = type { %Uint32 }
%"$$fundef_30_env_133" = type { { i8*, i8* }* }
%"$$fundef_28_env_134" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_26_env_135" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_24_env_136" = type {}
%"$$fundef_22_env_137" = type {}
%"$$fundef_20_env_138" = type {}
%"$$fundef_18_env_139" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_16_env_140" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_14_env_141" = type {}
%"$$fundef_12_env_142" = type {}
%"$$fundef_10_env_143" = type {}
%Bool = type { i8, %True*, %False* }
%True = type <{ i8 }>
%False = type <{ i8 }>

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_60" = global %"$TyDescrTy_PrimTyp_59" zeroinitializer
@"$TyDescr_Int32_61" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Int32_Prim_60" to i8*) }
@"$TyDescr_Uint32_Prim_62" = global %"$TyDescrTy_PrimTyp_59" { i32 1, i32 0 }
@"$TyDescr_Uint32_63" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Uint32_Prim_62" to i8*) }
@"$TyDescr_Int64_Prim_64" = global %"$TyDescrTy_PrimTyp_59" { i32 0, i32 1 }
@"$TyDescr_Int64_65" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Int64_Prim_64" to i8*) }
@"$TyDescr_Uint64_Prim_66" = global %"$TyDescrTy_PrimTyp_59" { i32 1, i32 1 }
@"$TyDescr_Uint64_67" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Uint64_Prim_66" to i8*) }
@"$TyDescr_Int128_Prim_68" = global %"$TyDescrTy_PrimTyp_59" { i32 0, i32 2 }
@"$TyDescr_Int128_69" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Int128_Prim_68" to i8*) }
@"$TyDescr_Uint128_Prim_70" = global %"$TyDescrTy_PrimTyp_59" { i32 1, i32 2 }
@"$TyDescr_Uint128_71" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Uint128_Prim_70" to i8*) }
@"$TyDescr_Int256_Prim_72" = global %"$TyDescrTy_PrimTyp_59" { i32 0, i32 3 }
@"$TyDescr_Int256_73" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Int256_Prim_72" to i8*) }
@"$TyDescr_Uint256_Prim_74" = global %"$TyDescrTy_PrimTyp_59" { i32 1, i32 3 }
@"$TyDescr_Uint256_75" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Uint256_Prim_74" to i8*) }
@"$TyDescr_String_Prim_76" = global %"$TyDescrTy_PrimTyp_59" { i32 2, i32 0 }
@"$TyDescr_String_77" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_String_Prim_76" to i8*) }
@"$TyDescr_Bystr_Prim_78" = global %"$TyDescrTy_PrimTyp_59" { i32 7, i32 0 }
@"$TyDescr_Bystr_79" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Bystr_Prim_78" to i8*) }
@"$TyDescr_ADT_Bool_83" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_80"* @"$TyDescr_Bool_ADTTyp_Specl_96" to i8*) }
@"$TyDescr_ADT_List_Int64_84" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_80"* @"$TyDescr_List_Int64_ADTTyp_Specl_108" to i8*) }
@"$TyDescr_ADT_List_Int32_85" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_80"* @"$TyDescr_List_Int32_ADTTyp_Specl_117" to i8*) }
@"$TyDescr_Bool_ADTTyp_87" = unnamed_addr constant %"$TyDescrTy_ADTTyp_81" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_98", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_80"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_80"*], [1 x %"$TyDescrTy_ADTTyp_Specl_80"*]* @"$TyDescr_Bool_ADTTyp_m_specls_97", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_88" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_89" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_90" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_82" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_89", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_88", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_91" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_92" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_93" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_82" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_92", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_91", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_94" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_82"*] [%"$TyDescrTy_ADTTyp_Constr_82"* @"$TyDescr_Bool_True_ADTTyp_Constr_90", %"$TyDescrTy_ADTTyp_Constr_82"* @"$TyDescr_Bool_False_ADTTyp_Constr_93"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_95" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_96" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_80" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_95", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_82"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_82"*], [2 x %"$TyDescrTy_ADTTyp_Constr_82"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_94", i32 0, i32 0), %"$TyDescrTy_ADTTyp_81"* @"$TyDescr_Bool_ADTTyp_87" }
@"$TyDescr_Bool_ADTTyp_m_specls_97" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_80"*] [%"$TyDescrTy_ADTTyp_Specl_80"* @"$TyDescr_Bool_ADTTyp_Specl_96"]
@"$TyDescr_ADT_Bool_98" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_99" = unnamed_addr constant %"$TyDescrTy_ADTTyp_81" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_119", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_80"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_80"*], [2 x %"$TyDescrTy_ADTTyp_Specl_80"*]* @"$TyDescr_List_ADTTyp_m_specls_118", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int64_Constr_m_args_100" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_65", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int64_84"]
@"$TyDescr_ADT_Cons_101" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int64_ADTTyp_Constr_102" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_82" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_101", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int64_Constr_m_args_100", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int64_Constr_m_args_103" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_104" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int64_ADTTyp_Constr_105" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_82" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_104", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int64_Constr_m_args_103", i32 0, i32 0) }
@"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_106" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_82"*] [%"$TyDescrTy_ADTTyp_Constr_82"* @"$TyDescr_List_Cons_Int64_ADTTyp_Constr_102", %"$TyDescrTy_ADTTyp_Constr_82"* @"$TyDescr_List_Nil_Int64_ADTTyp_Constr_105"]
@"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_107" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_65"]
@"$TyDescr_List_Int64_ADTTyp_Specl_108" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_80" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_107", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_82"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_82"*], [2 x %"$TyDescrTy_ADTTyp_Constr_82"*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_106", i32 0, i32 0), %"$TyDescrTy_ADTTyp_81"* @"$TyDescr_List_ADTTyp_99" }
@"$TyDescr_List_Cons_Int32_Constr_m_args_109" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_61", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_85"]
@"$TyDescr_ADT_Cons_110" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_111" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_82" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_110", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_109", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_112" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_113" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_114" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_82" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_113", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_112", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_115" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_82"*] [%"$TyDescrTy_ADTTyp_Constr_82"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_111", %"$TyDescrTy_ADTTyp_Constr_82"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_114"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_116" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_61"]
@"$TyDescr_List_Int32_ADTTyp_Specl_117" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_80" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_116", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_82"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_82"*], [2 x %"$TyDescrTy_ADTTyp_Constr_82"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_115", i32 0, i32 0), %"$TyDescrTy_ADTTyp_81"* @"$TyDescr_List_ADTTyp_99" }
@"$TyDescr_List_ADTTyp_m_specls_118" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_80"*] [%"$TyDescrTy_ADTTyp_Specl_80"* @"$TyDescr_List_Int64_ADTTyp_Specl_108", %"$TyDescrTy_ADTTyp_Specl_80"* @"$TyDescr_List_Int32_ADTTyp_Specl_117"]
@"$TyDescr_ADT_List_119" = unnamed_addr constant [4 x i8] c"List"
@list_foldl = global { i8*, i8* }* null
@list_length = global { i8*, i8* }* null

define internal %TName_List_Int64* @"$fundef_57"(%"$$fundef_57_env_120"* %0, %Int64 %1) {
entry:
  %"$retval_58" = alloca %TName_List_Int64*
  %an = alloca %TName_List_Int64*
  %"$adtval_450_load" = load i8*, i8** @_execptr
  %"$adtval_450_salloc" = call i8* @_salloc(i8* %"$adtval_450_load", i64 1)
  %"$adtval_450" = bitcast i8* %"$adtval_450_salloc" to %CName_Nil_Int64*
  %"$adtgep_451" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_450", i32 0, i32 0
  store i8 1, i8* %"$adtgep_451"
  %"$adtptr_452" = bitcast %CName_Nil_Int64* %"$adtval_450" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_452", %TName_List_Int64** %an
  %a1 = alloca %TName_List_Int64*
  %"$an_453" = load %TName_List_Int64*, %TName_List_Int64** %an
  %"$adtval_454_load" = load i8*, i8** @_execptr
  %"$adtval_454_salloc" = call i8* @_salloc(i8* %"$adtval_454_load", i64 17)
  %"$adtval_454" = bitcast i8* %"$adtval_454_salloc" to %CName_Cons_Int64*
  %"$adtgep_455" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_454", i32 0, i32 0
  store i8 0, i8* %"$adtgep_455"
  %"$adtgep_456" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_454", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_456"
  %"$adtgep_457" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_454", i32 0, i32 2
  store %TName_List_Int64* %"$an_453", %TName_List_Int64** %"$adtgep_457"
  %"$adtptr_458" = bitcast %CName_Cons_Int64* %"$adtval_454" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_458", %TName_List_Int64** %a1
  %"$a1_459" = load %TName_List_Int64*, %TName_List_Int64** %a1
  %"$adtval_460_load" = load i8*, i8** @_execptr
  %"$adtval_460_salloc" = call i8* @_salloc(i8* %"$adtval_460_load", i64 17)
  %"$adtval_460" = bitcast i8* %"$adtval_460_salloc" to %CName_Cons_Int64*
  %"$adtgep_461" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_460", i32 0, i32 0
  store i8 0, i8* %"$adtgep_461"
  %"$adtgep_462" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_460", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_462"
  %"$adtgep_463" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_460", i32 0, i32 2
  store %TName_List_Int64* %"$a1_459", %TName_List_Int64** %"$adtgep_463"
  %"$adtptr_464" = bitcast %CName_Cons_Int64* %"$adtval_460" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_464", %TName_List_Int64** %"$retval_58"
  %"$$retval_58_465" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_58"
  ret %TName_List_Int64* %"$$retval_58_465"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_55"(%"$$fundef_55_env_121"* %0) {
entry:
  %"$retval_56" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_57_env_120"*, %Int64)* @"$fundef_57" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_56"
  %"$$retval_56_449" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_56"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_56_449"
}

define internal %TName_List_Int32* @"$fundef_53"(%"$$fundef_53_env_122"* %0, %Int32 %1) {
entry:
  %"$retval_54" = alloca %TName_List_Int32*
  %an = alloca %TName_List_Int32*
  %"$adtval_430_load" = load i8*, i8** @_execptr
  %"$adtval_430_salloc" = call i8* @_salloc(i8* %"$adtval_430_load", i64 1)
  %"$adtval_430" = bitcast i8* %"$adtval_430_salloc" to %CName_Nil_Int32*
  %"$adtgep_431" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_430", i32 0, i32 0
  store i8 1, i8* %"$adtgep_431"
  %"$adtptr_432" = bitcast %CName_Nil_Int32* %"$adtval_430" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_432", %TName_List_Int32** %an
  %a1 = alloca %TName_List_Int32*
  %"$an_433" = load %TName_List_Int32*, %TName_List_Int32** %an
  %"$adtval_434_load" = load i8*, i8** @_execptr
  %"$adtval_434_salloc" = call i8* @_salloc(i8* %"$adtval_434_load", i64 13)
  %"$adtval_434" = bitcast i8* %"$adtval_434_salloc" to %CName_Cons_Int32*
  %"$adtgep_435" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_434", i32 0, i32 0
  store i8 0, i8* %"$adtgep_435"
  %"$adtgep_436" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_434", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_436"
  %"$adtgep_437" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_434", i32 0, i32 2
  store %TName_List_Int32* %"$an_433", %TName_List_Int32** %"$adtgep_437"
  %"$adtptr_438" = bitcast %CName_Cons_Int32* %"$adtval_434" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_438", %TName_List_Int32** %a1
  %"$a1_439" = load %TName_List_Int32*, %TName_List_Int32** %a1
  %"$adtval_440_load" = load i8*, i8** @_execptr
  %"$adtval_440_salloc" = call i8* @_salloc(i8* %"$adtval_440_load", i64 13)
  %"$adtval_440" = bitcast i8* %"$adtval_440_salloc" to %CName_Cons_Int32*
  %"$adtgep_441" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_440", i32 0, i32 0
  store i8 0, i8* %"$adtgep_441"
  %"$adtgep_442" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_440", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_442"
  %"$adtgep_443" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_440", i32 0, i32 2
  store %TName_List_Int32* %"$a1_439", %TName_List_Int32** %"$adtgep_443"
  %"$adtptr_444" = bitcast %CName_Cons_Int32* %"$adtval_440" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_444", %TName_List_Int32** %"$retval_54"
  %"$$retval_54_445" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_54"
  ret %TName_List_Int32* %"$$retval_54_445"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_51"(%"$$fundef_51_env_123"* %0) {
entry:
  %"$retval_52" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_53_env_122"*, %Int32)* @"$fundef_53" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_52"
  %"$$retval_52_429" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_52"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_52_429"
}

define internal %TName_List_Int64* @"$fundef_49"(%"$$fundef_49_env_124"* %0, %Int64 %1) {
entry:
  %"$retval_50" = alloca %TName_List_Int64*
  %an = alloca %TName_List_Int64*
  %"$adtval_416_load" = load i8*, i8** @_execptr
  %"$adtval_416_salloc" = call i8* @_salloc(i8* %"$adtval_416_load", i64 1)
  %"$adtval_416" = bitcast i8* %"$adtval_416_salloc" to %CName_Nil_Int64*
  %"$adtgep_417" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_416", i32 0, i32 0
  store i8 1, i8* %"$adtgep_417"
  %"$adtptr_418" = bitcast %CName_Nil_Int64* %"$adtval_416" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_418", %TName_List_Int64** %an
  %"$an_419" = load %TName_List_Int64*, %TName_List_Int64** %an
  %"$adtval_420_load" = load i8*, i8** @_execptr
  %"$adtval_420_salloc" = call i8* @_salloc(i8* %"$adtval_420_load", i64 17)
  %"$adtval_420" = bitcast i8* %"$adtval_420_salloc" to %CName_Cons_Int64*
  %"$adtgep_421" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_420", i32 0, i32 0
  store i8 0, i8* %"$adtgep_421"
  %"$adtgep_422" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_420", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_422"
  %"$adtgep_423" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_420", i32 0, i32 2
  store %TName_List_Int64* %"$an_419", %TName_List_Int64** %"$adtgep_423"
  %"$adtptr_424" = bitcast %CName_Cons_Int64* %"$adtval_420" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_424", %TName_List_Int64** %"$retval_50"
  %"$$retval_50_425" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_50"
  ret %TName_List_Int64* %"$$retval_50_425"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_47"(%"$$fundef_47_env_125"* %0) {
entry:
  %"$retval_48" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_49_env_124"*, %Int64)* @"$fundef_49" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_48"
  %"$$retval_48_415" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_48"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_48_415"
}

define internal %TName_List_Int32* @"$fundef_45"(%"$$fundef_45_env_126"* %0, %Int32 %1) {
entry:
  %"$retval_46" = alloca %TName_List_Int32*
  %an = alloca %TName_List_Int32*
  %"$adtval_402_load" = load i8*, i8** @_execptr
  %"$adtval_402_salloc" = call i8* @_salloc(i8* %"$adtval_402_load", i64 1)
  %"$adtval_402" = bitcast i8* %"$adtval_402_salloc" to %CName_Nil_Int32*
  %"$adtgep_403" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_402", i32 0, i32 0
  store i8 1, i8* %"$adtgep_403"
  %"$adtptr_404" = bitcast %CName_Nil_Int32* %"$adtval_402" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_404", %TName_List_Int32** %an
  %"$an_405" = load %TName_List_Int32*, %TName_List_Int32** %an
  %"$adtval_406_load" = load i8*, i8** @_execptr
  %"$adtval_406_salloc" = call i8* @_salloc(i8* %"$adtval_406_load", i64 13)
  %"$adtval_406" = bitcast i8* %"$adtval_406_salloc" to %CName_Cons_Int32*
  %"$adtgep_407" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_406", i32 0, i32 0
  store i8 0, i8* %"$adtgep_407"
  %"$adtgep_408" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_406", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_408"
  %"$adtgep_409" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_406", i32 0, i32 2
  store %TName_List_Int32* %"$an_405", %TName_List_Int32** %"$adtgep_409"
  %"$adtptr_410" = bitcast %CName_Cons_Int32* %"$adtval_406" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_410", %TName_List_Int32** %"$retval_46"
  %"$$retval_46_411" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_46"
  ret %TName_List_Int32* %"$$retval_46_411"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_43"(%"$$fundef_43_env_127"* %0) {
entry:
  %"$retval_44" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_45_env_126"*, %Int32)* @"$fundef_45" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_44"
  %"$$retval_44_401" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_44"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_44_401"
}

define internal %Uint32 @"$fundef_40"(%"$$fundef_40_env_128"* %0, %Int64 %1) {
entry:
  %"$$fundef_40_env_one_390" = getelementptr inbounds %"$$fundef_40_env_128", %"$$fundef_40_env_128"* %0, i32 0, i32 0
  %"$one_envload_391" = load %Uint32, %Uint32* %"$$fundef_40_env_one_390"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_391", %Uint32* %one
  %"$$fundef_40_env_z_392" = getelementptr inbounds %"$$fundef_40_env_128", %"$$fundef_40_env_128"* %0, i32 0, i32 1
  %"$z_envload_393" = load %Uint32, %Uint32* %"$$fundef_40_env_z_392"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_393", %Uint32* %z
  %"$retval_41" = alloca %Uint32
  %"$one_394" = load %Uint32, %Uint32* %one
  %"$z_395" = load %Uint32, %Uint32* %z
  %"$add_call_396" = call %Uint32 @_add_Uint32(%Uint32 %"$one_394", %Uint32 %"$z_395")
  store %Uint32 %"$add_call_396", %Uint32* %"$retval_41"
  %"$$retval_41_397" = load %Uint32, %Uint32* %"$retval_41"
  ret %Uint32 %"$$retval_41_397"
}

define internal { %Uint32 (i8*, %Int64)*, i8* } @"$fundef_38"(%"$$fundef_38_env_129"* %0, %Uint32 %1) {
entry:
  %"$$fundef_38_env_one_380" = getelementptr inbounds %"$$fundef_38_env_129", %"$$fundef_38_env_129"* %0, i32 0, i32 0
  %"$one_envload_381" = load %Uint32, %Uint32* %"$$fundef_38_env_one_380"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_381", %Uint32* %one
  %"$retval_39" = alloca { %Uint32 (i8*, %Int64)*, i8* }
  %"$$fundef_40_envp_382_load" = load i8*, i8** @_execptr
  %"$$fundef_40_envp_382_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_382_load", i64 8)
  %"$$fundef_40_envp_382" = bitcast i8* %"$$fundef_40_envp_382_salloc" to %"$$fundef_40_env_128"*
  %"$$fundef_40_env_voidp_384" = bitcast %"$$fundef_40_env_128"* %"$$fundef_40_envp_382" to i8*
  %"$$fundef_40_cloval_385" = insertvalue { %Uint32 (i8*, %Int64)*, i8* } { %Uint32 (i8*, %Int64)* bitcast (%Uint32 (%"$$fundef_40_env_128"*, %Int64)* @"$fundef_40" to %Uint32 (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_40_env_voidp_384", 1
  %"$$fundef_40_env_one_386" = getelementptr inbounds %"$$fundef_40_env_128", %"$$fundef_40_env_128"* %"$$fundef_40_envp_382", i32 0, i32 0
  %"$one_387" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_387", %Uint32* %"$$fundef_40_env_one_386"
  %"$$fundef_40_env_z_388" = getelementptr inbounds %"$$fundef_40_env_128", %"$$fundef_40_env_128"* %"$$fundef_40_envp_382", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_40_env_z_388"
  store { %Uint32 (i8*, %Int64)*, i8* } %"$$fundef_40_cloval_385", { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_39"
  %"$$retval_39_389" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_39"
  ret { %Uint32 (i8*, %Int64)*, i8* } %"$$retval_39_389"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_36"(%"$$fundef_36_env_130"* %0) {
entry:
  %"$$fundef_36_env_list_foldl_347" = getelementptr inbounds %"$$fundef_36_env_130", %"$$fundef_36_env_130"* %0, i32 0, i32 0
  %"$list_foldl_envload_348" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_36_env_list_foldl_347"
  %list_foldl = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldl_envload_348", { i8*, i8* }** %list_foldl
  %"$retval_37" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$list_foldl_349" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl
  %"$list_foldl_350" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_349", i32 2
  %"$list_foldl_351" = bitcast { i8*, i8* }* %"$list_foldl_350" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_352" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_351"
  %"$list_foldl_fptr_353" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_352", 0
  %"$list_foldl_envptr_354" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_352", 1
  %"$list_foldl_call_355" = call { i8*, i8* }* %"$list_foldl_fptr_353"(i8* %"$list_foldl_envptr_354")
  %"$list_foldl_356" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_355", i32 1
  %"$list_foldl_357" = bitcast { i8*, i8* }* %"$list_foldl_356" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_358" = load { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_357"
  %"$list_foldl_fptr_359" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_358", 0
  %"$list_foldl_envptr_360" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_358", 1
  %"$list_foldl_call_361" = call { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_359"(i8* %"$list_foldl_envptr_360")
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_361", { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %iter = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_38_envp_362_load" = load i8*, i8** @_execptr
  %"$$fundef_38_envp_362_salloc" = call i8* @_salloc(i8* %"$$fundef_38_envp_362_load", i64 4)
  %"$$fundef_38_envp_362" = bitcast i8* %"$$fundef_38_envp_362_salloc" to %"$$fundef_38_env_129"*
  %"$$fundef_38_env_voidp_364" = bitcast %"$$fundef_38_env_129"* %"$$fundef_38_envp_362" to i8*
  %"$$fundef_38_cloval_365" = insertvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int64)*, i8* } (%"$$fundef_38_env_129"*, %Uint32)* @"$fundef_38" to { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_38_env_voidp_364", 1
  %"$$fundef_38_env_one_366" = getelementptr inbounds %"$$fundef_38_env_129", %"$$fundef_38_env_129"* %"$$fundef_38_envp_362", i32 0, i32 0
  %"$one_367" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_367", %Uint32* %"$$fundef_38_env_one_366"
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_38_cloval_365", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %init = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %init
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$foldl_368" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$foldl_fptr_369" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_368", 0
  %"$foldl_envptr_370" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_368", 1
  %"$iter_371" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$foldl_call_372" = call { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_369"(i8* %"$foldl_envptr_370", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_371")
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_372", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$$foldl_4_373" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$$foldl_4_fptr_374" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_373", 0
  %"$$foldl_4_envptr_375" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_373", 1
  %"$init_376" = load %Uint32, %Uint32* %init
  %"$$foldl_4_call_377" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_fptr_374"(i8* %"$$foldl_4_envptr_375", %Uint32 %"$init_376")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_call_377", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5"
  %"$$foldl_5_378" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5"
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_5_378", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_37"
  %"$$retval_37_379" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_37"
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_37_379"
}

define internal %Uint32 @"$fundef_34"(%"$$fundef_34_env_131"* %0, %Int32 %1) {
entry:
  %"$$fundef_34_env_one_339" = getelementptr inbounds %"$$fundef_34_env_131", %"$$fundef_34_env_131"* %0, i32 0, i32 0
  %"$one_envload_340" = load %Uint32, %Uint32* %"$$fundef_34_env_one_339"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_340", %Uint32* %one
  %"$$fundef_34_env_z_341" = getelementptr inbounds %"$$fundef_34_env_131", %"$$fundef_34_env_131"* %0, i32 0, i32 1
  %"$z_envload_342" = load %Uint32, %Uint32* %"$$fundef_34_env_z_341"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_342", %Uint32* %z
  %"$retval_35" = alloca %Uint32
  %"$one_343" = load %Uint32, %Uint32* %one
  %"$z_344" = load %Uint32, %Uint32* %z
  %"$add_call_345" = call %Uint32 @_add_Uint32(%Uint32 %"$one_343", %Uint32 %"$z_344")
  store %Uint32 %"$add_call_345", %Uint32* %"$retval_35"
  %"$$retval_35_346" = load %Uint32, %Uint32* %"$retval_35"
  ret %Uint32 %"$$retval_35_346"
}

define internal { %Uint32 (i8*, %Int32)*, i8* } @"$fundef_32"(%"$$fundef_32_env_132"* %0, %Uint32 %1) {
entry:
  %"$$fundef_32_env_one_329" = getelementptr inbounds %"$$fundef_32_env_132", %"$$fundef_32_env_132"* %0, i32 0, i32 0
  %"$one_envload_330" = load %Uint32, %Uint32* %"$$fundef_32_env_one_329"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_330", %Uint32* %one
  %"$retval_33" = alloca { %Uint32 (i8*, %Int32)*, i8* }
  %"$$fundef_34_envp_331_load" = load i8*, i8** @_execptr
  %"$$fundef_34_envp_331_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_331_load", i64 8)
  %"$$fundef_34_envp_331" = bitcast i8* %"$$fundef_34_envp_331_salloc" to %"$$fundef_34_env_131"*
  %"$$fundef_34_env_voidp_333" = bitcast %"$$fundef_34_env_131"* %"$$fundef_34_envp_331" to i8*
  %"$$fundef_34_cloval_334" = insertvalue { %Uint32 (i8*, %Int32)*, i8* } { %Uint32 (i8*, %Int32)* bitcast (%Uint32 (%"$$fundef_34_env_131"*, %Int32)* @"$fundef_34" to %Uint32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_34_env_voidp_333", 1
  %"$$fundef_34_env_one_335" = getelementptr inbounds %"$$fundef_34_env_131", %"$$fundef_34_env_131"* %"$$fundef_34_envp_331", i32 0, i32 0
  %"$one_336" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_336", %Uint32* %"$$fundef_34_env_one_335"
  %"$$fundef_34_env_z_337" = getelementptr inbounds %"$$fundef_34_env_131", %"$$fundef_34_env_131"* %"$$fundef_34_envp_331", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_34_env_z_337"
  store { %Uint32 (i8*, %Int32)*, i8* } %"$$fundef_34_cloval_334", { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_33"
  %"$$retval_33_338" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_33"
  ret { %Uint32 (i8*, %Int32)*, i8* } %"$$retval_33_338"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_30"(%"$$fundef_30_env_133"* %0) {
entry:
  %"$$fundef_30_env_list_foldl_296" = getelementptr inbounds %"$$fundef_30_env_133", %"$$fundef_30_env_133"* %0, i32 0, i32 0
  %"$list_foldl_envload_297" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_30_env_list_foldl_296"
  %list_foldl = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldl_envload_297", { i8*, i8* }** %list_foldl
  %"$retval_31" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$list_foldl_298" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl
  %"$list_foldl_299" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_298", i32 0
  %"$list_foldl_300" = bitcast { i8*, i8* }* %"$list_foldl_299" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_301" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_300"
  %"$list_foldl_fptr_302" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_301", 0
  %"$list_foldl_envptr_303" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_301", 1
  %"$list_foldl_call_304" = call { i8*, i8* }* %"$list_foldl_fptr_302"(i8* %"$list_foldl_envptr_303")
  %"$list_foldl_305" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_304", i32 1
  %"$list_foldl_306" = bitcast { i8*, i8* }* %"$list_foldl_305" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_307" = load { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_306"
  %"$list_foldl_fptr_308" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_307", 0
  %"$list_foldl_envptr_309" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_307", 1
  %"$list_foldl_call_310" = call { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_308"(i8* %"$list_foldl_envptr_309")
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_310", { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %iter = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_32_envp_311_load" = load i8*, i8** @_execptr
  %"$$fundef_32_envp_311_salloc" = call i8* @_salloc(i8* %"$$fundef_32_envp_311_load", i64 4)
  %"$$fundef_32_envp_311" = bitcast i8* %"$$fundef_32_envp_311_salloc" to %"$$fundef_32_env_132"*
  %"$$fundef_32_env_voidp_313" = bitcast %"$$fundef_32_env_132"* %"$$fundef_32_envp_311" to i8*
  %"$$fundef_32_cloval_314" = insertvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int32)*, i8* } (%"$$fundef_32_env_132"*, %Uint32)* @"$fundef_32" to { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_32_env_voidp_313", 1
  %"$$fundef_32_env_one_315" = getelementptr inbounds %"$$fundef_32_env_132", %"$$fundef_32_env_132"* %"$$fundef_32_envp_311", i32 0, i32 0
  %"$one_316" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_316", %Uint32* %"$$fundef_32_env_one_315"
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_32_cloval_314", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %init = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %init
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$foldl_317" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$foldl_fptr_318" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_317", 0
  %"$foldl_envptr_319" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_317", 1
  %"$iter_320" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$foldl_call_321" = call { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_318"(i8* %"$foldl_envptr_319", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_320")
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_321", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$$foldl_4_322" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$$foldl_4_fptr_323" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_322", 0
  %"$$foldl_4_envptr_324" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_322", 1
  %"$init_325" = load %Uint32, %Uint32* %init
  %"$$foldl_4_call_326" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_fptr_323"(i8* %"$$foldl_4_envptr_324", %Uint32 %"$init_325")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_call_326", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5"
  %"$$foldl_5_327" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5"
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_5_327", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_31"
  %"$$retval_31_328" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_31"
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_31_328"
}

define internal %Uint32 @"$fundef_28"(%"$$fundef_28_env_134"* %0, %TName_List_Int64* %1) {
entry:
  %"$$fundef_28_env_f_254" = getelementptr inbounds %"$$fundef_28_env_134", %"$$fundef_28_env_134"* %0, i32 0, i32 0
  %"$f_envload_255" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_254"
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_255", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_28_env_g_256" = getelementptr inbounds %"$$fundef_28_env_134", %"$$fundef_28_env_134"* %0, i32 0, i32 1
  %"$g_envload_257" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_256"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_257", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_28_env_z_258" = getelementptr inbounds %"$$fundef_28_env_134", %"$$fundef_28_env_134"* %0, i32 0, i32 2
  %"$z_envload_259" = load %Uint32, %Uint32* %"$$fundef_28_env_z_258"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_259", %Uint32* %z
  %"$retval_29" = alloca %Uint32
  %"$l_tag_261" = getelementptr inbounds %TName_List_Int64, %TName_List_Int64* %1, i32 0, i32 0
  %"$l_tag_262" = load i8, i8* %"$l_tag_261"
  switch i8 %"$l_tag_262", label %"$empty_default_263" [
    i8 0, label %"$Cons_264"
    i8 1, label %"$Nil_292"
  ]

"$Cons_264":                                      ; preds = %entry
  %"$l_265" = bitcast %TName_List_Int64* %1 to %CName_Cons_Int64*
  %"$h_gep_266" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_265", i32 0, i32 1
  %"$h_load_267" = load %Int64, %Int64* %"$h_gep_266"
  %h = alloca %Int64
  store %Int64 %"$h_load_267", %Int64* %h
  %"$t_gep_268" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_265", i32 0, i32 2
  %"$t_load_269" = load %TName_List_Int64*, %TName_List_Int64** %"$t_gep_268"
  %t = alloca %TName_List_Int64*
  store %TName_List_Int64* %"$t_load_269", %TName_List_Int64** %t
  %res = alloca %Uint32
  %"$f_0" = alloca { %Uint32 (i8*, %Int64)*, i8* }
  %"$f_270" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_271" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_270", 0
  %"$f_envptr_272" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_270", 1
  %"$z_273" = load %Uint32, %Uint32* %z
  %"$f_call_274" = call { %Uint32 (i8*, %Int64)*, i8* } %"$f_fptr_271"(i8* %"$f_envptr_272", %Uint32 %"$z_273")
  store { %Uint32 (i8*, %Int64)*, i8* } %"$f_call_274", { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0"
  %"$f_1" = alloca %Uint32
  %"$$f_0_275" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0"
  %"$$f_0_fptr_276" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_275", 0
  %"$$f_0_envptr_277" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_275", 1
  %"$h_278" = load %Int64, %Int64* %h
  %"$$f_0_call_279" = call %Uint32 %"$$f_0_fptr_276"(i8* %"$$f_0_envptr_277", %Int64 %"$h_278")
  store %Uint32 %"$$f_0_call_279", %Uint32* %"$f_1"
  %"$$f_1_280" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_280", %Uint32* %res
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$g_281" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_282" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_281", 0
  %"$g_envptr_283" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_281", 1
  %"$res_284" = load %Uint32, %Uint32* %res
  %"$g_call_285" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_fptr_282"(i8* %"$g_envptr_283", %Uint32 %"$res_284")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_call_285", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_286" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_287" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_286", 0
  %"$$g_2_envptr_288" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_286", 1
  %"$t_289" = load %TName_List_Int64*, %TName_List_Int64** %t
  %"$$g_2_call_290" = call %Uint32 %"$$g_2_fptr_287"(i8* %"$$g_2_envptr_288", %TName_List_Int64* %"$t_289")
  store %Uint32 %"$$g_2_call_290", %Uint32* %"$g_3"
  %"$$g_3_291" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_291", %Uint32* %"$retval_29"
  br label %"$matchsucc_260"

"$Nil_292":                                       ; preds = %entry
  %"$l_293" = bitcast %TName_List_Int64* %1 to %CName_Nil_Int64*
  %"$z_294" = load %Uint32, %Uint32* %z
  store %Uint32 %"$z_294", %Uint32* %"$retval_29"
  br label %"$matchsucc_260"

"$empty_default_263":                             ; preds = %entry
  br label %"$matchsucc_260"

"$matchsucc_260":                                 ; preds = %"$Nil_292", %"$Cons_264", %"$empty_default_263"
  %"$$retval_29_295" = load %Uint32, %Uint32* %"$retval_29"
  ret %Uint32 %"$$retval_29_295"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_26"(%"$$fundef_26_env_135"* %0, %Uint32 %1) {
entry:
  %"$$fundef_26_env_f_240" = getelementptr inbounds %"$$fundef_26_env_135", %"$$fundef_26_env_135"* %0, i32 0, i32 0
  %"$f_envload_241" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_f_240"
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_241", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_26_env_g_242" = getelementptr inbounds %"$$fundef_26_env_135", %"$$fundef_26_env_135"* %0, i32 0, i32 1
  %"$g_envload_243" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_g_242"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_243", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_27" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$$fundef_28_envp_244_load" = load i8*, i8** @_execptr
  %"$$fundef_28_envp_244_salloc" = call i8* @_salloc(i8* %"$$fundef_28_envp_244_load", i64 40)
  %"$$fundef_28_envp_244" = bitcast i8* %"$$fundef_28_envp_244_salloc" to %"$$fundef_28_env_134"*
  %"$$fundef_28_env_voidp_246" = bitcast %"$$fundef_28_env_134"* %"$$fundef_28_envp_244" to i8*
  %"$$fundef_28_cloval_247" = insertvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } { %Uint32 (i8*, %TName_List_Int64*)* bitcast (%Uint32 (%"$$fundef_28_env_134"*, %TName_List_Int64*)* @"$fundef_28" to %Uint32 (i8*, %TName_List_Int64*)*), i8* undef }, i8* %"$$fundef_28_env_voidp_246", 1
  %"$$fundef_28_env_f_248" = getelementptr inbounds %"$$fundef_28_env_134", %"$$fundef_28_env_134"* %"$$fundef_28_envp_244", i32 0, i32 0
  %"$f_249" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_249", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_248"
  %"$$fundef_28_env_g_250" = getelementptr inbounds %"$$fundef_28_env_134", %"$$fundef_28_env_134"* %"$$fundef_28_envp_244", i32 0, i32 1
  %"$g_251" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_251", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_250"
  %"$$fundef_28_env_z_252" = getelementptr inbounds %"$$fundef_28_env_134", %"$$fundef_28_env_134"* %"$$fundef_28_envp_244", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_28_env_z_252"
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$fundef_28_cloval_247", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_27"
  %"$$retval_27_253" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_27"
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_27_253"
}

define internal { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_24"(%"$$fundef_24_env_136"* %0, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_25" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_26_envp_231_load" = load i8*, i8** @_execptr
  %"$$fundef_26_envp_231_salloc" = call i8* @_salloc(i8* %"$$fundef_26_envp_231_load", i64 32)
  %"$$fundef_26_envp_231" = bitcast i8* %"$$fundef_26_envp_231_salloc" to %"$$fundef_26_env_135"*
  %"$$fundef_26_env_voidp_233" = bitcast %"$$fundef_26_env_135"* %"$$fundef_26_envp_231" to i8*
  %"$$fundef_26_cloval_234" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_26_env_135"*, %Uint32)* @"$fundef_26" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_26_env_voidp_233", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_26_cloval_234", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_26_env_f_235" = getelementptr inbounds %"$$fundef_26_env_135", %"$$fundef_26_env_135"* %"$$fundef_26_envp_231", i32 0, i32 0
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_f_235"
  %"$$fundef_26_env_g_236" = getelementptr inbounds %"$$fundef_26_env_135", %"$$fundef_26_env_135"* %"$$fundef_26_envp_231", i32 0, i32 1
  %"$g_237" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_237", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_g_236"
  %"$g_238" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_238", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_25"
  %"$$retval_25_239" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_25"
  ret { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_25_239"
}

define internal { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_22"(%"$$fundef_22_env_137"* %0) {
entry:
  %"$retval_23" = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_24_env_136"*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_24" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_23"
  %"$$retval_23_230" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_23"
  ret { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_23_230"
}

define internal { i8*, i8* }* @"$fundef_20"(%"$$fundef_20_env_138"* %0) {
entry:
  %"$retval_21" = alloca { i8*, i8* }*
  %"$dyndisp_table_223_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_223_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_223_salloc_load", i64 48)
  %"$dyndisp_table_223_salloc" = bitcast i8* %"$dyndisp_table_223_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_223" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_223_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_224" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_223", i32 1
  %"$dyndisp_pcast_225" = bitcast { i8*, i8* }* %"$dyndisp_gep_224" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_22_env_137"*)* @"$fundef_22" to { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_225"
  store { i8*, i8* }* %"$dyndisp_table_223", { i8*, i8* }** %"$retval_21"
  %"$$retval_21_226" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_21"
  ret { i8*, i8* }* %"$$retval_21_226"
}

define internal %Uint32 @"$fundef_18"(%"$$fundef_18_env_139"* %0, %TName_List_Int32* %1) {
entry:
  %"$$fundef_18_env_f_178" = getelementptr inbounds %"$$fundef_18_env_139", %"$$fundef_18_env_139"* %0, i32 0, i32 0
  %"$f_envload_179" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_178"
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_179", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_18_env_g_180" = getelementptr inbounds %"$$fundef_18_env_139", %"$$fundef_18_env_139"* %0, i32 0, i32 1
  %"$g_envload_181" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_180"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_181", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_18_env_z_182" = getelementptr inbounds %"$$fundef_18_env_139", %"$$fundef_18_env_139"* %0, i32 0, i32 2
  %"$z_envload_183" = load %Uint32, %Uint32* %"$$fundef_18_env_z_182"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_183", %Uint32* %z
  %"$retval_19" = alloca %Uint32
  %"$l_tag_185" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %1, i32 0, i32 0
  %"$l_tag_186" = load i8, i8* %"$l_tag_185"
  switch i8 %"$l_tag_186", label %"$empty_default_187" [
    i8 0, label %"$Cons_188"
    i8 1, label %"$Nil_216"
  ]

"$Cons_188":                                      ; preds = %entry
  %"$l_189" = bitcast %TName_List_Int32* %1 to %CName_Cons_Int32*
  %"$h_gep_190" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_189", i32 0, i32 1
  %"$h_load_191" = load %Int32, %Int32* %"$h_gep_190"
  %h = alloca %Int32
  store %Int32 %"$h_load_191", %Int32* %h
  %"$t_gep_192" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_189", i32 0, i32 2
  %"$t_load_193" = load %TName_List_Int32*, %TName_List_Int32** %"$t_gep_192"
  %t = alloca %TName_List_Int32*
  store %TName_List_Int32* %"$t_load_193", %TName_List_Int32** %t
  %res = alloca %Uint32
  %"$f_0" = alloca { %Uint32 (i8*, %Int32)*, i8* }
  %"$f_194" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_195" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_194", 0
  %"$f_envptr_196" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_194", 1
  %"$z_197" = load %Uint32, %Uint32* %z
  %"$f_call_198" = call { %Uint32 (i8*, %Int32)*, i8* } %"$f_fptr_195"(i8* %"$f_envptr_196", %Uint32 %"$z_197")
  store { %Uint32 (i8*, %Int32)*, i8* } %"$f_call_198", { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0"
  %"$f_1" = alloca %Uint32
  %"$$f_0_199" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0"
  %"$$f_0_fptr_200" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_199", 0
  %"$$f_0_envptr_201" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_199", 1
  %"$h_202" = load %Int32, %Int32* %h
  %"$$f_0_call_203" = call %Uint32 %"$$f_0_fptr_200"(i8* %"$$f_0_envptr_201", %Int32 %"$h_202")
  store %Uint32 %"$$f_0_call_203", %Uint32* %"$f_1"
  %"$$f_1_204" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_204", %Uint32* %res
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$g_205" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_206" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_205", 0
  %"$g_envptr_207" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_205", 1
  %"$res_208" = load %Uint32, %Uint32* %res
  %"$g_call_209" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_fptr_206"(i8* %"$g_envptr_207", %Uint32 %"$res_208")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_call_209", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_210" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_211" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_210", 0
  %"$$g_2_envptr_212" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_210", 1
  %"$t_213" = load %TName_List_Int32*, %TName_List_Int32** %t
  %"$$g_2_call_214" = call %Uint32 %"$$g_2_fptr_211"(i8* %"$$g_2_envptr_212", %TName_List_Int32* %"$t_213")
  store %Uint32 %"$$g_2_call_214", %Uint32* %"$g_3"
  %"$$g_3_215" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_215", %Uint32* %"$retval_19"
  br label %"$matchsucc_184"

"$Nil_216":                                       ; preds = %entry
  %"$l_217" = bitcast %TName_List_Int32* %1 to %CName_Nil_Int32*
  %"$z_218" = load %Uint32, %Uint32* %z
  store %Uint32 %"$z_218", %Uint32* %"$retval_19"
  br label %"$matchsucc_184"

"$empty_default_187":                             ; preds = %entry
  br label %"$matchsucc_184"

"$matchsucc_184":                                 ; preds = %"$Nil_216", %"$Cons_188", %"$empty_default_187"
  %"$$retval_19_219" = load %Uint32, %Uint32* %"$retval_19"
  ret %Uint32 %"$$retval_19_219"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_16"(%"$$fundef_16_env_140"* %0, %Uint32 %1) {
entry:
  %"$$fundef_16_env_f_164" = getelementptr inbounds %"$$fundef_16_env_140", %"$$fundef_16_env_140"* %0, i32 0, i32 0
  %"$f_envload_165" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_f_164"
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_165", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_16_env_g_166" = getelementptr inbounds %"$$fundef_16_env_140", %"$$fundef_16_env_140"* %0, i32 0, i32 1
  %"$g_envload_167" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_g_166"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_167", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_17" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$$fundef_18_envp_168_load" = load i8*, i8** @_execptr
  %"$$fundef_18_envp_168_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_168_load", i64 40)
  %"$$fundef_18_envp_168" = bitcast i8* %"$$fundef_18_envp_168_salloc" to %"$$fundef_18_env_139"*
  %"$$fundef_18_env_voidp_170" = bitcast %"$$fundef_18_env_139"* %"$$fundef_18_envp_168" to i8*
  %"$$fundef_18_cloval_171" = insertvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } { %Uint32 (i8*, %TName_List_Int32*)* bitcast (%Uint32 (%"$$fundef_18_env_139"*, %TName_List_Int32*)* @"$fundef_18" to %Uint32 (i8*, %TName_List_Int32*)*), i8* undef }, i8* %"$$fundef_18_env_voidp_170", 1
  %"$$fundef_18_env_f_172" = getelementptr inbounds %"$$fundef_18_env_139", %"$$fundef_18_env_139"* %"$$fundef_18_envp_168", i32 0, i32 0
  %"$f_173" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_173", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_172"
  %"$$fundef_18_env_g_174" = getelementptr inbounds %"$$fundef_18_env_139", %"$$fundef_18_env_139"* %"$$fundef_18_envp_168", i32 0, i32 1
  %"$g_175" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_175", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_174"
  %"$$fundef_18_env_z_176" = getelementptr inbounds %"$$fundef_18_env_139", %"$$fundef_18_env_139"* %"$$fundef_18_envp_168", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_18_env_z_176"
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$fundef_18_cloval_171", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_17"
  %"$$retval_17_177" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_17"
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_17_177"
}

define internal { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_14"(%"$$fundef_14_env_141"* %0, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_15" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_16_envp_155_load" = load i8*, i8** @_execptr
  %"$$fundef_16_envp_155_salloc" = call i8* @_salloc(i8* %"$$fundef_16_envp_155_load", i64 32)
  %"$$fundef_16_envp_155" = bitcast i8* %"$$fundef_16_envp_155_salloc" to %"$$fundef_16_env_140"*
  %"$$fundef_16_env_voidp_157" = bitcast %"$$fundef_16_env_140"* %"$$fundef_16_envp_155" to i8*
  %"$$fundef_16_cloval_158" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_16_env_140"*, %Uint32)* @"$fundef_16" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_16_env_voidp_157", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_16_cloval_158", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_16_env_f_159" = getelementptr inbounds %"$$fundef_16_env_140", %"$$fundef_16_env_140"* %"$$fundef_16_envp_155", i32 0, i32 0
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_f_159"
  %"$$fundef_16_env_g_160" = getelementptr inbounds %"$$fundef_16_env_140", %"$$fundef_16_env_140"* %"$$fundef_16_envp_155", i32 0, i32 1
  %"$g_161" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_161", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_g_160"
  %"$g_162" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_162", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_15"
  %"$$retval_15_163" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_15"
  ret { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_15_163"
}

define internal { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_12"(%"$$fundef_12_env_142"* %0) {
entry:
  %"$retval_13" = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_14_env_141"*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_14" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_13"
  %"$$retval_13_154" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_13"
  ret { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_13_154"
}

define internal { i8*, i8* }* @"$fundef_10"(%"$$fundef_10_env_143"* %0) {
entry:
  %"$retval_11" = alloca { i8*, i8* }*
  %"$dyndisp_table_147_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_147_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_147_salloc_load", i64 48)
  %"$dyndisp_table_147_salloc" = bitcast i8* %"$dyndisp_table_147_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_147" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_147_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_148" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_147", i32 1
  %"$dyndisp_pcast_149" = bitcast { i8*, i8* }* %"$dyndisp_gep_148" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_12_env_142"*)* @"$fundef_12" to { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_149"
  store { i8*, i8* }* %"$dyndisp_table_147", { i8*, i8* }** %"$retval_11"
  %"$$retval_11_150" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_11"
  ret { i8*, i8* }* %"$$retval_11_150"
}

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_466"(i8* %0) {
entry:
  %"$dyndisp_table_473_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_473_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_473_salloc_load", i64 48)
  %"$dyndisp_table_473_salloc" = bitcast i8* %"$dyndisp_table_473_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_473" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_473_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_474" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_473", i32 0
  %"$dyndisp_pcast_475" = bitcast { i8*, i8* }* %"$dyndisp_gep_474" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_10_env_143"*)* @"$fundef_10" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_475"
  %"$dyndisp_gep_476" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_473", i32 2
  %"$dyndisp_pcast_477" = bitcast { i8*, i8* }* %"$dyndisp_gep_476" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_20_env_138"*)* @"$fundef_20" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_477"
  store { i8*, i8* }* %"$dyndisp_table_473", { i8*, i8* }** @list_foldl
  %"$$fundef_30_envp_478_load" = load i8*, i8** @_execptr
  %"$$fundef_30_envp_478_salloc" = call i8* @_salloc(i8* %"$$fundef_30_envp_478_load", i64 8)
  %"$$fundef_30_envp_478" = bitcast i8* %"$$fundef_30_envp_478_salloc" to %"$$fundef_30_env_133"*
  %"$$fundef_30_env_voidp_480" = bitcast %"$$fundef_30_env_133"* %"$$fundef_30_envp_478" to i8*
  %"$$fundef_30_cloval_481" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_30_env_133"*)* @"$fundef_30" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_30_env_voidp_480", 1
  %"$$fundef_30_env_list_foldl_482" = getelementptr inbounds %"$$fundef_30_env_133", %"$$fundef_30_env_133"* %"$$fundef_30_envp_478", i32 0, i32 0
  %"$list_foldl_483" = load { i8*, i8* }*, { i8*, i8* }** @list_foldl
  store { i8*, i8* }* %"$list_foldl_483", { i8*, i8* }** %"$$fundef_30_env_list_foldl_482"
  %"$$fundef_36_env_voidp_485" = bitcast %"$$fundef_30_env_133"* %"$$fundef_30_envp_478" to i8*
  %"$$fundef_36_cloval_486" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_36_env_130"*)* @"$fundef_36" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_36_env_voidp_485", 1
  %"$dyndisp_table_487_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_487_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_487_salloc_load", i64 48)
  %"$dyndisp_table_487_salloc" = bitcast i8* %"$dyndisp_table_487_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_487" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_487_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_488" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_487", i32 0
  %"$dyndisp_pcast_489" = bitcast { i8*, i8* }* %"$dyndisp_gep_488" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$$fundef_30_cloval_481", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_489"
  %"$dyndisp_gep_490" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_487", i32 2
  %"$dyndisp_pcast_491" = bitcast { i8*, i8* }* %"$dyndisp_gep_490" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$$fundef_36_cloval_486", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_491"
  store { i8*, i8* }* %"$dyndisp_table_487", { i8*, i8* }** @list_length
  %"$expr_42" = alloca %Uint32
  %t1 = alloca { i8*, i8* }*
  %"$dyndisp_table_498_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_498_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_498_salloc_load", i64 48)
  %"$dyndisp_table_498_salloc" = bitcast i8* %"$dyndisp_table_498_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_498" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_498_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_499" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_498", i32 0
  %"$dyndisp_pcast_500" = bitcast { i8*, i8* }* %"$dyndisp_gep_499" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_43_env_127"*)* @"$fundef_43" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_500"
  %"$dyndisp_gep_501" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_498", i32 2
  %"$dyndisp_pcast_502" = bitcast { i8*, i8* }* %"$dyndisp_gep_501" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_47_env_125"*)* @"$fundef_47" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_502"
  store { i8*, i8* }* %"$dyndisp_table_498", { i8*, i8* }** %t1
  %t2 = alloca { i8*, i8* }*
  %"$dyndisp_table_509_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_509_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_509_salloc_load", i64 48)
  %"$dyndisp_table_509_salloc" = bitcast i8* %"$dyndisp_table_509_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_509" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_509_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_510" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_509", i32 0
  %"$dyndisp_pcast_511" = bitcast { i8*, i8* }* %"$dyndisp_gep_510" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_51_env_123"*)* @"$fundef_51" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_511"
  %"$dyndisp_gep_512" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_509", i32 2
  %"$dyndisp_pcast_513" = bitcast { i8*, i8* }* %"$dyndisp_gep_512" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_55_env_121"*)* @"$fundef_55" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_513"
  store { i8*, i8* }* %"$dyndisp_table_509", { i8*, i8* }** %t2
  %some_bool = alloca %Bool*
  %"$adtval_514_load" = load i8*, i8** @_execptr
  %"$adtval_514_salloc" = call i8* @_salloc(i8* %"$adtval_514_load", i64 1)
  %"$adtval_514" = bitcast i8* %"$adtval_514_salloc" to %True*
  %"$adtgep_515" = getelementptr inbounds %True, %True* %"$adtval_514", i32 0, i32 0
  store i8 0, i8* %"$adtgep_515"
  %"$adtptr_516" = bitcast %True* %"$adtval_514" to %Bool*
  store %Bool* %"$adtptr_516", %Bool** %some_bool
  %f = alloca { i8*, i8* }*
  %"$some_bool_518" = load %Bool*, %Bool** %some_bool
  %"$some_bool_tag_519" = getelementptr inbounds %Bool, %Bool* %"$some_bool_518", i32 0, i32 0
  %"$some_bool_tag_520" = load i8, i8* %"$some_bool_tag_519"
  switch i8 %"$some_bool_tag_520", label %"$empty_default_521" [
    i8 0, label %"$True_522"
    i8 1, label %"$False_525"
  ]

"$True_522":                                      ; preds = %entry
  %"$some_bool_523" = bitcast %Bool* %"$some_bool_518" to %True*
  %"$t2_524" = load { i8*, i8* }*, { i8*, i8* }** %t2
  store { i8*, i8* }* %"$t2_524", { i8*, i8* }** %f
  br label %"$matchsucc_517"

"$False_525":                                     ; preds = %entry
  %"$some_bool_526" = bitcast %Bool* %"$some_bool_518" to %False*
  %"$t1_527" = load { i8*, i8* }*, { i8*, i8* }** %t1
  store { i8*, i8* }* %"$t1_527", { i8*, i8* }** %f
  br label %"$matchsucc_517"

"$empty_default_521":                             ; preds = %entry
  br label %"$matchsucc_517"

"$matchsucc_517":                                 ; preds = %"$False_525", %"$True_522", %"$empty_default_521"
  %some_bool2 = alloca %Bool*
  %"$adtval_528_load" = load i8*, i8** @_execptr
  %"$adtval_528_salloc" = call i8* @_salloc(i8* %"$adtval_528_load", i64 1)
  %"$adtval_528" = bitcast i8* %"$adtval_528_salloc" to %False*
  %"$adtgep_529" = getelementptr inbounds %False, %False* %"$adtval_528", i32 0, i32 0
  store i8 1, i8* %"$adtgep_529"
  %"$adtptr_530" = bitcast %False* %"$adtval_528" to %Bool*
  store %Bool* %"$adtptr_530", %Bool** %some_bool2
  %"$some_bool2_532" = load %Bool*, %Bool** %some_bool2
  %"$some_bool2_tag_533" = getelementptr inbounds %Bool, %Bool* %"$some_bool2_532", i32 0, i32 0
  %"$some_bool2_tag_534" = load i8, i8* %"$some_bool2_tag_533"
  switch i8 %"$some_bool2_tag_534", label %"$empty_default_535" [
    i8 0, label %"$True_536"
    i8 1, label %"$False_564"
  ]

"$True_536":                                      ; preds = %"$matchsucc_517"
  %"$some_bool2_537" = bitcast %Bool* %"$some_bool2_532" to %True*
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$f_538" = load { i8*, i8* }*, { i8*, i8* }** %f
  %"$f_539" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_538", i32 0
  %"$f_540" = bitcast { i8*, i8* }* %"$f_539" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_541" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_540"
  %"$f_fptr_542" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_541", 0
  %"$f_envptr_543" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_541", 1
  %"$f_call_544" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_542"(i8* %"$f_envptr_543")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_544", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1
  %len = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$list_length_545" = load { i8*, i8* }*, { i8*, i8* }** @list_length
  %"$list_length_546" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_545", i32 0
  %"$list_length_547" = bitcast { i8*, i8* }* %"$list_length_546" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$list_length_548" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$list_length_547"
  %"$list_length_fptr_549" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$list_length_548", 0
  %"$list_length_envptr_550" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$list_length_548", 1
  %"$list_length_call_551" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$list_length_fptr_549"(i8* %"$list_length_envptr_550")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$list_length_call_551", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len
  %one = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %one
  %f1l = alloca %TName_List_Int32*
  %"$f1_6" = alloca %TName_List_Int32*
  %"$f1_552" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1
  %"$f1_fptr_553" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_552", 0
  %"$f1_envptr_554" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_552", 1
  %"$one_555" = load %Int32, %Int32* %one
  %"$f1_call_556" = call %TName_List_Int32* %"$f1_fptr_553"(i8* %"$f1_envptr_554", %Int32 %"$one_555")
  store %TName_List_Int32* %"$f1_call_556", %TName_List_Int32** %"$f1_6"
  %"$$f1_6_557" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_6"
  store %TName_List_Int32* %"$$f1_6_557", %TName_List_Int32** %f1l
  %"$len_7" = alloca %Uint32
  %"$len_558" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len
  %"$len_fptr_559" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_558", 0
  %"$len_envptr_560" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_558", 1
  %"$f1l_561" = load %TName_List_Int32*, %TName_List_Int32** %f1l
  %"$len_call_562" = call %Uint32 %"$len_fptr_559"(i8* %"$len_envptr_560", %TName_List_Int32* %"$f1l_561")
  store %Uint32 %"$len_call_562", %Uint32* %"$len_7"
  %"$$len_7_563" = load %Uint32, %Uint32* %"$len_7"
  store %Uint32 %"$$len_7_563", %Uint32* %"$expr_42"
  br label %"$matchsucc_531"

"$False_564":                                     ; preds = %"$matchsucc_517"
  %"$some_bool2_565" = bitcast %Bool* %"$some_bool2_532" to %False*
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$f_566" = load { i8*, i8* }*, { i8*, i8* }** %f
  %"$f_567" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_566", i32 2
  %"$f_568" = bitcast { i8*, i8* }* %"$f_567" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_569" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_568"
  %"$f_fptr_570" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_569", 0
  %"$f_envptr_571" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_569", 1
  %"$f_call_572" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_570"(i8* %"$f_envptr_571")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_572", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2
  %len1 = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$list_length_573" = load { i8*, i8* }*, { i8*, i8* }** @list_length
  %"$list_length_574" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_573", i32 2
  %"$list_length_575" = bitcast { i8*, i8* }* %"$list_length_574" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$list_length_576" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$list_length_575"
  %"$list_length_fptr_577" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$list_length_576", 0
  %"$list_length_envptr_578" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$list_length_576", 1
  %"$list_length_call_579" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$list_length_fptr_577"(i8* %"$list_length_envptr_578")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$list_length_call_579", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1
  %one2 = alloca %Int64
  store %Int64 { i64 1 }, %Int64* %one2
  %f2l = alloca %TName_List_Int64*
  %"$f2_8" = alloca %TName_List_Int64*
  %"$f2_580" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2
  %"$f2_fptr_581" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_580", 0
  %"$f2_envptr_582" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_580", 1
  %"$one_583" = load %Int64, %Int64* %one2
  %"$f2_call_584" = call %TName_List_Int64* %"$f2_fptr_581"(i8* %"$f2_envptr_582", %Int64 %"$one_583")
  store %TName_List_Int64* %"$f2_call_584", %TName_List_Int64** %"$f2_8"
  %"$$f2_8_585" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_8"
  store %TName_List_Int64* %"$$f2_8_585", %TName_List_Int64** %f2l
  %"$len_9" = alloca %Uint32
  %"$len_586" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1
  %"$len_fptr_587" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_586", 0
  %"$len_envptr_588" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_586", 1
  %"$f2l_589" = load %TName_List_Int64*, %TName_List_Int64** %f2l
  %"$len_call_590" = call %Uint32 %"$len_fptr_587"(i8* %"$len_envptr_588", %TName_List_Int64* %"$f2l_589")
  store %Uint32 %"$len_call_590", %Uint32* %"$len_9"
  %"$$len_9_591" = load %Uint32, %Uint32* %"$len_9"
  store %Uint32 %"$$len_9_591", %Uint32* %"$expr_42"
  br label %"$matchsucc_531"

"$empty_default_535":                             ; preds = %"$matchsucc_517"
  br label %"$matchsucc_531"

"$matchsucc_531":                                 ; preds = %"$False_564", %"$True_536", %"$empty_default_535"
  %"$$expr_42_592" = load %Uint32, %Uint32* %"$expr_42"
  ret %Uint32 %"$$expr_42_592"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_593" = call %Uint32 @"$scilla_expr_466"(i8* null)
  %"$pval_594" = alloca %Uint32
  %"$memvoidcast_595" = bitcast %Uint32* %"$pval_594" to i8*
  store %Uint32 %"$exprval_593", %Uint32* %"$pval_594"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_63", i8* %"$memvoidcast_595")
  ret void
}
