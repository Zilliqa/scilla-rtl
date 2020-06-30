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
@"$dyndisp_147" = global [3 x { i8*, i8* }] zeroinitializer
@"$dyndisp_221" = global [3 x { i8*, i8* }] zeroinitializer
@list_foldl = global { i8*, i8* }* null
@"$dyndisp_469" = global [3 x { i8*, i8* }] zeroinitializer
@list_length = global { i8*, i8* }* null
@"$dyndisp_479" = global [3 x { i8*, i8* }] zeroinitializer
@"$dyndisp_486" = global [3 x { i8*, i8* }] zeroinitializer
@"$dyndisp_493" = global [3 x { i8*, i8* }] zeroinitializer

define internal %TName_List_Int64* @"$fundef_57"(%"$$fundef_57_env_120"* %0, %Int64 %1) {
entry:
  %"$retval_58" = alloca %TName_List_Int64*
  %an = alloca %TName_List_Int64*
  %"$adtval_446_load" = load i8*, i8** @_execptr
  %"$adtval_446_salloc" = call i8* @_salloc(i8* %"$adtval_446_load", i64 1)
  %"$adtval_446" = bitcast i8* %"$adtval_446_salloc" to %CName_Nil_Int64*
  %"$adtgep_447" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_446", i32 0, i32 0
  store i8 1, i8* %"$adtgep_447"
  %"$adtptr_448" = bitcast %CName_Nil_Int64* %"$adtval_446" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_448", %TName_List_Int64** %an
  %a1 = alloca %TName_List_Int64*
  %"$an_449" = load %TName_List_Int64*, %TName_List_Int64** %an
  %"$adtval_450_load" = load i8*, i8** @_execptr
  %"$adtval_450_salloc" = call i8* @_salloc(i8* %"$adtval_450_load", i64 17)
  %"$adtval_450" = bitcast i8* %"$adtval_450_salloc" to %CName_Cons_Int64*
  %"$adtgep_451" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_450", i32 0, i32 0
  store i8 0, i8* %"$adtgep_451"
  %"$adtgep_452" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_450", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_452"
  %"$adtgep_453" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_450", i32 0, i32 2
  store %TName_List_Int64* %"$an_449", %TName_List_Int64** %"$adtgep_453"
  %"$adtptr_454" = bitcast %CName_Cons_Int64* %"$adtval_450" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_454", %TName_List_Int64** %a1
  %"$a1_455" = load %TName_List_Int64*, %TName_List_Int64** %a1
  %"$adtval_456_load" = load i8*, i8** @_execptr
  %"$adtval_456_salloc" = call i8* @_salloc(i8* %"$adtval_456_load", i64 17)
  %"$adtval_456" = bitcast i8* %"$adtval_456_salloc" to %CName_Cons_Int64*
  %"$adtgep_457" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_456", i32 0, i32 0
  store i8 0, i8* %"$adtgep_457"
  %"$adtgep_458" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_456", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_458"
  %"$adtgep_459" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_456", i32 0, i32 2
  store %TName_List_Int64* %"$a1_455", %TName_List_Int64** %"$adtgep_459"
  %"$adtptr_460" = bitcast %CName_Cons_Int64* %"$adtval_456" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_460", %TName_List_Int64** %"$retval_58"
  %"$$retval_58_461" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_58"
  ret %TName_List_Int64* %"$$retval_58_461"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_55"(%"$$fundef_55_env_121"* %0) {
entry:
  %"$retval_56" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_57_env_120"*, %Int64)* @"$fundef_57" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_56"
  %"$$retval_56_445" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_56"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_56_445"
}

define internal %TName_List_Int32* @"$fundef_53"(%"$$fundef_53_env_122"* %0, %Int32 %1) {
entry:
  %"$retval_54" = alloca %TName_List_Int32*
  %an = alloca %TName_List_Int32*
  %"$adtval_426_load" = load i8*, i8** @_execptr
  %"$adtval_426_salloc" = call i8* @_salloc(i8* %"$adtval_426_load", i64 1)
  %"$adtval_426" = bitcast i8* %"$adtval_426_salloc" to %CName_Nil_Int32*
  %"$adtgep_427" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_426", i32 0, i32 0
  store i8 1, i8* %"$adtgep_427"
  %"$adtptr_428" = bitcast %CName_Nil_Int32* %"$adtval_426" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_428", %TName_List_Int32** %an
  %a1 = alloca %TName_List_Int32*
  %"$an_429" = load %TName_List_Int32*, %TName_List_Int32** %an
  %"$adtval_430_load" = load i8*, i8** @_execptr
  %"$adtval_430_salloc" = call i8* @_salloc(i8* %"$adtval_430_load", i64 13)
  %"$adtval_430" = bitcast i8* %"$adtval_430_salloc" to %CName_Cons_Int32*
  %"$adtgep_431" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_430", i32 0, i32 0
  store i8 0, i8* %"$adtgep_431"
  %"$adtgep_432" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_430", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_432"
  %"$adtgep_433" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_430", i32 0, i32 2
  store %TName_List_Int32* %"$an_429", %TName_List_Int32** %"$adtgep_433"
  %"$adtptr_434" = bitcast %CName_Cons_Int32* %"$adtval_430" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_434", %TName_List_Int32** %a1
  %"$a1_435" = load %TName_List_Int32*, %TName_List_Int32** %a1
  %"$adtval_436_load" = load i8*, i8** @_execptr
  %"$adtval_436_salloc" = call i8* @_salloc(i8* %"$adtval_436_load", i64 13)
  %"$adtval_436" = bitcast i8* %"$adtval_436_salloc" to %CName_Cons_Int32*
  %"$adtgep_437" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_436", i32 0, i32 0
  store i8 0, i8* %"$adtgep_437"
  %"$adtgep_438" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_436", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_438"
  %"$adtgep_439" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_436", i32 0, i32 2
  store %TName_List_Int32* %"$a1_435", %TName_List_Int32** %"$adtgep_439"
  %"$adtptr_440" = bitcast %CName_Cons_Int32* %"$adtval_436" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_440", %TName_List_Int32** %"$retval_54"
  %"$$retval_54_441" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_54"
  ret %TName_List_Int32* %"$$retval_54_441"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_51"(%"$$fundef_51_env_123"* %0) {
entry:
  %"$retval_52" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_53_env_122"*, %Int32)* @"$fundef_53" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_52"
  %"$$retval_52_425" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_52"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_52_425"
}

define internal %TName_List_Int64* @"$fundef_49"(%"$$fundef_49_env_124"* %0, %Int64 %1) {
entry:
  %"$retval_50" = alloca %TName_List_Int64*
  %an = alloca %TName_List_Int64*
  %"$adtval_412_load" = load i8*, i8** @_execptr
  %"$adtval_412_salloc" = call i8* @_salloc(i8* %"$adtval_412_load", i64 1)
  %"$adtval_412" = bitcast i8* %"$adtval_412_salloc" to %CName_Nil_Int64*
  %"$adtgep_413" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_412", i32 0, i32 0
  store i8 1, i8* %"$adtgep_413"
  %"$adtptr_414" = bitcast %CName_Nil_Int64* %"$adtval_412" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_414", %TName_List_Int64** %an
  %"$an_415" = load %TName_List_Int64*, %TName_List_Int64** %an
  %"$adtval_416_load" = load i8*, i8** @_execptr
  %"$adtval_416_salloc" = call i8* @_salloc(i8* %"$adtval_416_load", i64 17)
  %"$adtval_416" = bitcast i8* %"$adtval_416_salloc" to %CName_Cons_Int64*
  %"$adtgep_417" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_416", i32 0, i32 0
  store i8 0, i8* %"$adtgep_417"
  %"$adtgep_418" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_416", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_418"
  %"$adtgep_419" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_416", i32 0, i32 2
  store %TName_List_Int64* %"$an_415", %TName_List_Int64** %"$adtgep_419"
  %"$adtptr_420" = bitcast %CName_Cons_Int64* %"$adtval_416" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_420", %TName_List_Int64** %"$retval_50"
  %"$$retval_50_421" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_50"
  ret %TName_List_Int64* %"$$retval_50_421"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_47"(%"$$fundef_47_env_125"* %0) {
entry:
  %"$retval_48" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_49_env_124"*, %Int64)* @"$fundef_49" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_48"
  %"$$retval_48_411" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_48"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_48_411"
}

define internal %TName_List_Int32* @"$fundef_45"(%"$$fundef_45_env_126"* %0, %Int32 %1) {
entry:
  %"$retval_46" = alloca %TName_List_Int32*
  %an = alloca %TName_List_Int32*
  %"$adtval_398_load" = load i8*, i8** @_execptr
  %"$adtval_398_salloc" = call i8* @_salloc(i8* %"$adtval_398_load", i64 1)
  %"$adtval_398" = bitcast i8* %"$adtval_398_salloc" to %CName_Nil_Int32*
  %"$adtgep_399" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_398", i32 0, i32 0
  store i8 1, i8* %"$adtgep_399"
  %"$adtptr_400" = bitcast %CName_Nil_Int32* %"$adtval_398" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_400", %TName_List_Int32** %an
  %"$an_401" = load %TName_List_Int32*, %TName_List_Int32** %an
  %"$adtval_402_load" = load i8*, i8** @_execptr
  %"$adtval_402_salloc" = call i8* @_salloc(i8* %"$adtval_402_load", i64 13)
  %"$adtval_402" = bitcast i8* %"$adtval_402_salloc" to %CName_Cons_Int32*
  %"$adtgep_403" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_402", i32 0, i32 0
  store i8 0, i8* %"$adtgep_403"
  %"$adtgep_404" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_402", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_404"
  %"$adtgep_405" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_402", i32 0, i32 2
  store %TName_List_Int32* %"$an_401", %TName_List_Int32** %"$adtgep_405"
  %"$adtptr_406" = bitcast %CName_Cons_Int32* %"$adtval_402" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_406", %TName_List_Int32** %"$retval_46"
  %"$$retval_46_407" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_46"
  ret %TName_List_Int32* %"$$retval_46_407"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_43"(%"$$fundef_43_env_127"* %0) {
entry:
  %"$retval_44" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_45_env_126"*, %Int32)* @"$fundef_45" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_44"
  %"$$retval_44_397" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_44"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_44_397"
}

define internal %Uint32 @"$fundef_40"(%"$$fundef_40_env_128"* %0, %Int64 %1) {
entry:
  %"$$fundef_40_env_one_386" = getelementptr inbounds %"$$fundef_40_env_128", %"$$fundef_40_env_128"* %0, i32 0, i32 0
  %"$one_envload_387" = load %Uint32, %Uint32* %"$$fundef_40_env_one_386"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_387", %Uint32* %one
  %"$$fundef_40_env_z_388" = getelementptr inbounds %"$$fundef_40_env_128", %"$$fundef_40_env_128"* %0, i32 0, i32 1
  %"$z_envload_389" = load %Uint32, %Uint32* %"$$fundef_40_env_z_388"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_389", %Uint32* %z
  %"$retval_41" = alloca %Uint32
  %"$one_390" = load %Uint32, %Uint32* %one
  %"$z_391" = load %Uint32, %Uint32* %z
  %"$add_call_392" = call %Uint32 @_add_Uint32(%Uint32 %"$one_390", %Uint32 %"$z_391")
  store %Uint32 %"$add_call_392", %Uint32* %"$retval_41"
  %"$$retval_41_393" = load %Uint32, %Uint32* %"$retval_41"
  ret %Uint32 %"$$retval_41_393"
}

define internal { %Uint32 (i8*, %Int64)*, i8* } @"$fundef_38"(%"$$fundef_38_env_129"* %0, %Uint32 %1) {
entry:
  %"$$fundef_38_env_one_376" = getelementptr inbounds %"$$fundef_38_env_129", %"$$fundef_38_env_129"* %0, i32 0, i32 0
  %"$one_envload_377" = load %Uint32, %Uint32* %"$$fundef_38_env_one_376"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_377", %Uint32* %one
  %"$retval_39" = alloca { %Uint32 (i8*, %Int64)*, i8* }
  %"$$fundef_40_envp_378_load" = load i8*, i8** @_execptr
  %"$$fundef_40_envp_378_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_378_load", i64 8)
  %"$$fundef_40_envp_378" = bitcast i8* %"$$fundef_40_envp_378_salloc" to %"$$fundef_40_env_128"*
  %"$$fundef_40_env_voidp_380" = bitcast %"$$fundef_40_env_128"* %"$$fundef_40_envp_378" to i8*
  %"$$fundef_40_cloval_381" = insertvalue { %Uint32 (i8*, %Int64)*, i8* } { %Uint32 (i8*, %Int64)* bitcast (%Uint32 (%"$$fundef_40_env_128"*, %Int64)* @"$fundef_40" to %Uint32 (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_40_env_voidp_380", 1
  %"$$fundef_40_env_one_382" = getelementptr inbounds %"$$fundef_40_env_128", %"$$fundef_40_env_128"* %"$$fundef_40_envp_378", i32 0, i32 0
  %"$one_383" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_383", %Uint32* %"$$fundef_40_env_one_382"
  %"$$fundef_40_env_z_384" = getelementptr inbounds %"$$fundef_40_env_128", %"$$fundef_40_env_128"* %"$$fundef_40_envp_378", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_40_env_z_384"
  store { %Uint32 (i8*, %Int64)*, i8* } %"$$fundef_40_cloval_381", { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_39"
  %"$$retval_39_385" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_39"
  ret { %Uint32 (i8*, %Int64)*, i8* } %"$$retval_39_385"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_36"(%"$$fundef_36_env_130"* %0) {
entry:
  %"$$fundef_36_env_list_foldl_343" = getelementptr inbounds %"$$fundef_36_env_130", %"$$fundef_36_env_130"* %0, i32 0, i32 0
  %"$list_foldl_envload_344" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_36_env_list_foldl_343"
  %list_foldl = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldl_envload_344", { i8*, i8* }** %list_foldl
  %"$retval_37" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$list_foldl_345" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl
  %"$list_foldl_346" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_345", i32 2
  %"$list_foldl_347" = bitcast { i8*, i8* }* %"$list_foldl_346" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_348" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_347"
  %"$list_foldl_fptr_349" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_348", 0
  %"$list_foldl_envptr_350" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_348", 1
  %"$list_foldl_call_351" = call { i8*, i8* }* %"$list_foldl_fptr_349"(i8* %"$list_foldl_envptr_350")
  %"$list_foldl_352" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_351", i32 1
  %"$list_foldl_353" = bitcast { i8*, i8* }* %"$list_foldl_352" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_354" = load { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_353"
  %"$list_foldl_fptr_355" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_354", 0
  %"$list_foldl_envptr_356" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_354", 1
  %"$list_foldl_call_357" = call { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_355"(i8* %"$list_foldl_envptr_356")
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_357", { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %iter = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_38_envp_358_load" = load i8*, i8** @_execptr
  %"$$fundef_38_envp_358_salloc" = call i8* @_salloc(i8* %"$$fundef_38_envp_358_load", i64 4)
  %"$$fundef_38_envp_358" = bitcast i8* %"$$fundef_38_envp_358_salloc" to %"$$fundef_38_env_129"*
  %"$$fundef_38_env_voidp_360" = bitcast %"$$fundef_38_env_129"* %"$$fundef_38_envp_358" to i8*
  %"$$fundef_38_cloval_361" = insertvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int64)*, i8* } (%"$$fundef_38_env_129"*, %Uint32)* @"$fundef_38" to { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_38_env_voidp_360", 1
  %"$$fundef_38_env_one_362" = getelementptr inbounds %"$$fundef_38_env_129", %"$$fundef_38_env_129"* %"$$fundef_38_envp_358", i32 0, i32 0
  %"$one_363" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_363", %Uint32* %"$$fundef_38_env_one_362"
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_38_cloval_361", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %init = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %init
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$foldl_364" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$foldl_fptr_365" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_364", 0
  %"$foldl_envptr_366" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_364", 1
  %"$iter_367" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$foldl_call_368" = call { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_365"(i8* %"$foldl_envptr_366", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_367")
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_368", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$$foldl_4_369" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$$foldl_4_fptr_370" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_369", 0
  %"$$foldl_4_envptr_371" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_369", 1
  %"$init_372" = load %Uint32, %Uint32* %init
  %"$$foldl_4_call_373" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_fptr_370"(i8* %"$$foldl_4_envptr_371", %Uint32 %"$init_372")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_call_373", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5"
  %"$$foldl_5_374" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5"
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_5_374", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_37"
  %"$$retval_37_375" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_37"
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_37_375"
}

define internal %Uint32 @"$fundef_34"(%"$$fundef_34_env_131"* %0, %Int32 %1) {
entry:
  %"$$fundef_34_env_one_335" = getelementptr inbounds %"$$fundef_34_env_131", %"$$fundef_34_env_131"* %0, i32 0, i32 0
  %"$one_envload_336" = load %Uint32, %Uint32* %"$$fundef_34_env_one_335"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_336", %Uint32* %one
  %"$$fundef_34_env_z_337" = getelementptr inbounds %"$$fundef_34_env_131", %"$$fundef_34_env_131"* %0, i32 0, i32 1
  %"$z_envload_338" = load %Uint32, %Uint32* %"$$fundef_34_env_z_337"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_338", %Uint32* %z
  %"$retval_35" = alloca %Uint32
  %"$one_339" = load %Uint32, %Uint32* %one
  %"$z_340" = load %Uint32, %Uint32* %z
  %"$add_call_341" = call %Uint32 @_add_Uint32(%Uint32 %"$one_339", %Uint32 %"$z_340")
  store %Uint32 %"$add_call_341", %Uint32* %"$retval_35"
  %"$$retval_35_342" = load %Uint32, %Uint32* %"$retval_35"
  ret %Uint32 %"$$retval_35_342"
}

define internal { %Uint32 (i8*, %Int32)*, i8* } @"$fundef_32"(%"$$fundef_32_env_132"* %0, %Uint32 %1) {
entry:
  %"$$fundef_32_env_one_325" = getelementptr inbounds %"$$fundef_32_env_132", %"$$fundef_32_env_132"* %0, i32 0, i32 0
  %"$one_envload_326" = load %Uint32, %Uint32* %"$$fundef_32_env_one_325"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_326", %Uint32* %one
  %"$retval_33" = alloca { %Uint32 (i8*, %Int32)*, i8* }
  %"$$fundef_34_envp_327_load" = load i8*, i8** @_execptr
  %"$$fundef_34_envp_327_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_327_load", i64 8)
  %"$$fundef_34_envp_327" = bitcast i8* %"$$fundef_34_envp_327_salloc" to %"$$fundef_34_env_131"*
  %"$$fundef_34_env_voidp_329" = bitcast %"$$fundef_34_env_131"* %"$$fundef_34_envp_327" to i8*
  %"$$fundef_34_cloval_330" = insertvalue { %Uint32 (i8*, %Int32)*, i8* } { %Uint32 (i8*, %Int32)* bitcast (%Uint32 (%"$$fundef_34_env_131"*, %Int32)* @"$fundef_34" to %Uint32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_34_env_voidp_329", 1
  %"$$fundef_34_env_one_331" = getelementptr inbounds %"$$fundef_34_env_131", %"$$fundef_34_env_131"* %"$$fundef_34_envp_327", i32 0, i32 0
  %"$one_332" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_332", %Uint32* %"$$fundef_34_env_one_331"
  %"$$fundef_34_env_z_333" = getelementptr inbounds %"$$fundef_34_env_131", %"$$fundef_34_env_131"* %"$$fundef_34_envp_327", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_34_env_z_333"
  store { %Uint32 (i8*, %Int32)*, i8* } %"$$fundef_34_cloval_330", { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_33"
  %"$$retval_33_334" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_33"
  ret { %Uint32 (i8*, %Int32)*, i8* } %"$$retval_33_334"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_30"(%"$$fundef_30_env_133"* %0) {
entry:
  %"$$fundef_30_env_list_foldl_292" = getelementptr inbounds %"$$fundef_30_env_133", %"$$fundef_30_env_133"* %0, i32 0, i32 0
  %"$list_foldl_envload_293" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_30_env_list_foldl_292"
  %list_foldl = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldl_envload_293", { i8*, i8* }** %list_foldl
  %"$retval_31" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$list_foldl_294" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl
  %"$list_foldl_295" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_294", i32 0
  %"$list_foldl_296" = bitcast { i8*, i8* }* %"$list_foldl_295" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_297" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_296"
  %"$list_foldl_fptr_298" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_297", 0
  %"$list_foldl_envptr_299" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_297", 1
  %"$list_foldl_call_300" = call { i8*, i8* }* %"$list_foldl_fptr_298"(i8* %"$list_foldl_envptr_299")
  %"$list_foldl_301" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_300", i32 1
  %"$list_foldl_302" = bitcast { i8*, i8* }* %"$list_foldl_301" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_303" = load { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_302"
  %"$list_foldl_fptr_304" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_303", 0
  %"$list_foldl_envptr_305" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_303", 1
  %"$list_foldl_call_306" = call { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_304"(i8* %"$list_foldl_envptr_305")
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_306", { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %iter = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_32_envp_307_load" = load i8*, i8** @_execptr
  %"$$fundef_32_envp_307_salloc" = call i8* @_salloc(i8* %"$$fundef_32_envp_307_load", i64 4)
  %"$$fundef_32_envp_307" = bitcast i8* %"$$fundef_32_envp_307_salloc" to %"$$fundef_32_env_132"*
  %"$$fundef_32_env_voidp_309" = bitcast %"$$fundef_32_env_132"* %"$$fundef_32_envp_307" to i8*
  %"$$fundef_32_cloval_310" = insertvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int32)*, i8* } (%"$$fundef_32_env_132"*, %Uint32)* @"$fundef_32" to { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_32_env_voidp_309", 1
  %"$$fundef_32_env_one_311" = getelementptr inbounds %"$$fundef_32_env_132", %"$$fundef_32_env_132"* %"$$fundef_32_envp_307", i32 0, i32 0
  %"$one_312" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_312", %Uint32* %"$$fundef_32_env_one_311"
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_32_cloval_310", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %init = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %init
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$foldl_313" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$foldl_fptr_314" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_313", 0
  %"$foldl_envptr_315" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_313", 1
  %"$iter_316" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$foldl_call_317" = call { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_314"(i8* %"$foldl_envptr_315", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_316")
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_317", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$$foldl_4_318" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$$foldl_4_fptr_319" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_318", 0
  %"$$foldl_4_envptr_320" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_318", 1
  %"$init_321" = load %Uint32, %Uint32* %init
  %"$$foldl_4_call_322" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_fptr_319"(i8* %"$$foldl_4_envptr_320", %Uint32 %"$init_321")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_call_322", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5"
  %"$$foldl_5_323" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5"
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_5_323", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_31"
  %"$$retval_31_324" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_31"
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_31_324"
}

define internal %Uint32 @"$fundef_28"(%"$$fundef_28_env_134"* %0, %TName_List_Int64* %1) {
entry:
  %"$$fundef_28_env_f_250" = getelementptr inbounds %"$$fundef_28_env_134", %"$$fundef_28_env_134"* %0, i32 0, i32 0
  %"$f_envload_251" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_250"
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_251", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_28_env_g_252" = getelementptr inbounds %"$$fundef_28_env_134", %"$$fundef_28_env_134"* %0, i32 0, i32 1
  %"$g_envload_253" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_252"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_253", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_28_env_z_254" = getelementptr inbounds %"$$fundef_28_env_134", %"$$fundef_28_env_134"* %0, i32 0, i32 2
  %"$z_envload_255" = load %Uint32, %Uint32* %"$$fundef_28_env_z_254"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_255", %Uint32* %z
  %"$retval_29" = alloca %Uint32
  %"$l_tag_257" = getelementptr inbounds %TName_List_Int64, %TName_List_Int64* %1, i32 0, i32 0
  %"$l_tag_258" = load i8, i8* %"$l_tag_257"
  switch i8 %"$l_tag_258", label %"$empty_default_259" [
    i8 0, label %"$Cons_260"
    i8 1, label %"$Nil_288"
  ]

"$Cons_260":                                      ; preds = %entry
  %"$l_261" = bitcast %TName_List_Int64* %1 to %CName_Cons_Int64*
  %"$h_gep_262" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_261", i32 0, i32 1
  %"$h_load_263" = load %Int64, %Int64* %"$h_gep_262"
  %h = alloca %Int64
  store %Int64 %"$h_load_263", %Int64* %h
  %"$t_gep_264" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_261", i32 0, i32 2
  %"$t_load_265" = load %TName_List_Int64*, %TName_List_Int64** %"$t_gep_264"
  %t = alloca %TName_List_Int64*
  store %TName_List_Int64* %"$t_load_265", %TName_List_Int64** %t
  %res = alloca %Uint32
  %"$f_0" = alloca { %Uint32 (i8*, %Int64)*, i8* }
  %"$f_266" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_267" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_266", 0
  %"$f_envptr_268" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_266", 1
  %"$z_269" = load %Uint32, %Uint32* %z
  %"$f_call_270" = call { %Uint32 (i8*, %Int64)*, i8* } %"$f_fptr_267"(i8* %"$f_envptr_268", %Uint32 %"$z_269")
  store { %Uint32 (i8*, %Int64)*, i8* } %"$f_call_270", { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0"
  %"$f_1" = alloca %Uint32
  %"$$f_0_271" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0"
  %"$$f_0_fptr_272" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_271", 0
  %"$$f_0_envptr_273" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_271", 1
  %"$h_274" = load %Int64, %Int64* %h
  %"$$f_0_call_275" = call %Uint32 %"$$f_0_fptr_272"(i8* %"$$f_0_envptr_273", %Int64 %"$h_274")
  store %Uint32 %"$$f_0_call_275", %Uint32* %"$f_1"
  %"$$f_1_276" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_276", %Uint32* %res
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$g_277" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_278" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_277", 0
  %"$g_envptr_279" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_277", 1
  %"$res_280" = load %Uint32, %Uint32* %res
  %"$g_call_281" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_fptr_278"(i8* %"$g_envptr_279", %Uint32 %"$res_280")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_call_281", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_282" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_283" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_282", 0
  %"$$g_2_envptr_284" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_282", 1
  %"$t_285" = load %TName_List_Int64*, %TName_List_Int64** %t
  %"$$g_2_call_286" = call %Uint32 %"$$g_2_fptr_283"(i8* %"$$g_2_envptr_284", %TName_List_Int64* %"$t_285")
  store %Uint32 %"$$g_2_call_286", %Uint32* %"$g_3"
  %"$$g_3_287" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_287", %Uint32* %"$retval_29"
  br label %"$matchsucc_256"

"$Nil_288":                                       ; preds = %entry
  %"$l_289" = bitcast %TName_List_Int64* %1 to %CName_Nil_Int64*
  %"$z_290" = load %Uint32, %Uint32* %z
  store %Uint32 %"$z_290", %Uint32* %"$retval_29"
  br label %"$matchsucc_256"

"$empty_default_259":                             ; preds = %entry
  br label %"$matchsucc_256"

"$matchsucc_256":                                 ; preds = %"$Nil_288", %"$Cons_260", %"$empty_default_259"
  %"$$retval_29_291" = load %Uint32, %Uint32* %"$retval_29"
  ret %Uint32 %"$$retval_29_291"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_26"(%"$$fundef_26_env_135"* %0, %Uint32 %1) {
entry:
  %"$$fundef_26_env_f_236" = getelementptr inbounds %"$$fundef_26_env_135", %"$$fundef_26_env_135"* %0, i32 0, i32 0
  %"$f_envload_237" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_f_236"
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_237", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_26_env_g_238" = getelementptr inbounds %"$$fundef_26_env_135", %"$$fundef_26_env_135"* %0, i32 0, i32 1
  %"$g_envload_239" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_g_238"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_239", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_27" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$$fundef_28_envp_240_load" = load i8*, i8** @_execptr
  %"$$fundef_28_envp_240_salloc" = call i8* @_salloc(i8* %"$$fundef_28_envp_240_load", i64 40)
  %"$$fundef_28_envp_240" = bitcast i8* %"$$fundef_28_envp_240_salloc" to %"$$fundef_28_env_134"*
  %"$$fundef_28_env_voidp_242" = bitcast %"$$fundef_28_env_134"* %"$$fundef_28_envp_240" to i8*
  %"$$fundef_28_cloval_243" = insertvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } { %Uint32 (i8*, %TName_List_Int64*)* bitcast (%Uint32 (%"$$fundef_28_env_134"*, %TName_List_Int64*)* @"$fundef_28" to %Uint32 (i8*, %TName_List_Int64*)*), i8* undef }, i8* %"$$fundef_28_env_voidp_242", 1
  %"$$fundef_28_env_f_244" = getelementptr inbounds %"$$fundef_28_env_134", %"$$fundef_28_env_134"* %"$$fundef_28_envp_240", i32 0, i32 0
  %"$f_245" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_245", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_244"
  %"$$fundef_28_env_g_246" = getelementptr inbounds %"$$fundef_28_env_134", %"$$fundef_28_env_134"* %"$$fundef_28_envp_240", i32 0, i32 1
  %"$g_247" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_247", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_246"
  %"$$fundef_28_env_z_248" = getelementptr inbounds %"$$fundef_28_env_134", %"$$fundef_28_env_134"* %"$$fundef_28_envp_240", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_28_env_z_248"
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$fundef_28_cloval_243", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_27"
  %"$$retval_27_249" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_27"
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_27_249"
}

define internal { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_24"(%"$$fundef_24_env_136"* %0, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_25" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_26_envp_227_load" = load i8*, i8** @_execptr
  %"$$fundef_26_envp_227_salloc" = call i8* @_salloc(i8* %"$$fundef_26_envp_227_load", i64 32)
  %"$$fundef_26_envp_227" = bitcast i8* %"$$fundef_26_envp_227_salloc" to %"$$fundef_26_env_135"*
  %"$$fundef_26_env_voidp_229" = bitcast %"$$fundef_26_env_135"* %"$$fundef_26_envp_227" to i8*
  %"$$fundef_26_cloval_230" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_26_env_135"*, %Uint32)* @"$fundef_26" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_26_env_voidp_229", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_26_cloval_230", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_26_env_f_231" = getelementptr inbounds %"$$fundef_26_env_135", %"$$fundef_26_env_135"* %"$$fundef_26_envp_227", i32 0, i32 0
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_f_231"
  %"$$fundef_26_env_g_232" = getelementptr inbounds %"$$fundef_26_env_135", %"$$fundef_26_env_135"* %"$$fundef_26_envp_227", i32 0, i32 1
  %"$g_233" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_233", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_g_232"
  %"$g_234" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_234", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_25"
  %"$$retval_25_235" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_25"
  ret { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_25_235"
}

define internal { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_22"(%"$$fundef_22_env_137"* %0) {
entry:
  %"$retval_23" = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_24_env_136"*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_24" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_23"
  %"$$retval_23_226" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_23"
  ret { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_23_226"
}

define internal { i8*, i8* }* @"$fundef_20"(%"$$fundef_20_env_138"* %0) {
entry:
  %"$retval_21" = alloca { i8*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_22_env_137"*)* @"$fundef_22" to { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_221", i32 0, i32 1) to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_221", i32 0, i32 0), { i8*, i8* }** %"$retval_21"
  %"$$retval_21_222" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_21"
  ret { i8*, i8* }* %"$$retval_21_222"
}

define internal %Uint32 @"$fundef_18"(%"$$fundef_18_env_139"* %0, %TName_List_Int32* %1) {
entry:
  %"$$fundef_18_env_f_176" = getelementptr inbounds %"$$fundef_18_env_139", %"$$fundef_18_env_139"* %0, i32 0, i32 0
  %"$f_envload_177" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_176"
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_177", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_18_env_g_178" = getelementptr inbounds %"$$fundef_18_env_139", %"$$fundef_18_env_139"* %0, i32 0, i32 1
  %"$g_envload_179" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_178"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_179", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_18_env_z_180" = getelementptr inbounds %"$$fundef_18_env_139", %"$$fundef_18_env_139"* %0, i32 0, i32 2
  %"$z_envload_181" = load %Uint32, %Uint32* %"$$fundef_18_env_z_180"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_181", %Uint32* %z
  %"$retval_19" = alloca %Uint32
  %"$l_tag_183" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %1, i32 0, i32 0
  %"$l_tag_184" = load i8, i8* %"$l_tag_183"
  switch i8 %"$l_tag_184", label %"$empty_default_185" [
    i8 0, label %"$Cons_186"
    i8 1, label %"$Nil_214"
  ]

"$Cons_186":                                      ; preds = %entry
  %"$l_187" = bitcast %TName_List_Int32* %1 to %CName_Cons_Int32*
  %"$h_gep_188" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_187", i32 0, i32 1
  %"$h_load_189" = load %Int32, %Int32* %"$h_gep_188"
  %h = alloca %Int32
  store %Int32 %"$h_load_189", %Int32* %h
  %"$t_gep_190" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_187", i32 0, i32 2
  %"$t_load_191" = load %TName_List_Int32*, %TName_List_Int32** %"$t_gep_190"
  %t = alloca %TName_List_Int32*
  store %TName_List_Int32* %"$t_load_191", %TName_List_Int32** %t
  %res = alloca %Uint32
  %"$f_0" = alloca { %Uint32 (i8*, %Int32)*, i8* }
  %"$f_192" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_193" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_192", 0
  %"$f_envptr_194" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_192", 1
  %"$z_195" = load %Uint32, %Uint32* %z
  %"$f_call_196" = call { %Uint32 (i8*, %Int32)*, i8* } %"$f_fptr_193"(i8* %"$f_envptr_194", %Uint32 %"$z_195")
  store { %Uint32 (i8*, %Int32)*, i8* } %"$f_call_196", { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0"
  %"$f_1" = alloca %Uint32
  %"$$f_0_197" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0"
  %"$$f_0_fptr_198" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_197", 0
  %"$$f_0_envptr_199" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_197", 1
  %"$h_200" = load %Int32, %Int32* %h
  %"$$f_0_call_201" = call %Uint32 %"$$f_0_fptr_198"(i8* %"$$f_0_envptr_199", %Int32 %"$h_200")
  store %Uint32 %"$$f_0_call_201", %Uint32* %"$f_1"
  %"$$f_1_202" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_202", %Uint32* %res
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$g_203" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_204" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_203", 0
  %"$g_envptr_205" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_203", 1
  %"$res_206" = load %Uint32, %Uint32* %res
  %"$g_call_207" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_fptr_204"(i8* %"$g_envptr_205", %Uint32 %"$res_206")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_call_207", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_208" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_209" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_208", 0
  %"$$g_2_envptr_210" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_208", 1
  %"$t_211" = load %TName_List_Int32*, %TName_List_Int32** %t
  %"$$g_2_call_212" = call %Uint32 %"$$g_2_fptr_209"(i8* %"$$g_2_envptr_210", %TName_List_Int32* %"$t_211")
  store %Uint32 %"$$g_2_call_212", %Uint32* %"$g_3"
  %"$$g_3_213" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_213", %Uint32* %"$retval_19"
  br label %"$matchsucc_182"

"$Nil_214":                                       ; preds = %entry
  %"$l_215" = bitcast %TName_List_Int32* %1 to %CName_Nil_Int32*
  %"$z_216" = load %Uint32, %Uint32* %z
  store %Uint32 %"$z_216", %Uint32* %"$retval_19"
  br label %"$matchsucc_182"

"$empty_default_185":                             ; preds = %entry
  br label %"$matchsucc_182"

"$matchsucc_182":                                 ; preds = %"$Nil_214", %"$Cons_186", %"$empty_default_185"
  %"$$retval_19_217" = load %Uint32, %Uint32* %"$retval_19"
  ret %Uint32 %"$$retval_19_217"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_16"(%"$$fundef_16_env_140"* %0, %Uint32 %1) {
entry:
  %"$$fundef_16_env_f_162" = getelementptr inbounds %"$$fundef_16_env_140", %"$$fundef_16_env_140"* %0, i32 0, i32 0
  %"$f_envload_163" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_f_162"
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_163", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_16_env_g_164" = getelementptr inbounds %"$$fundef_16_env_140", %"$$fundef_16_env_140"* %0, i32 0, i32 1
  %"$g_envload_165" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_g_164"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_165", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_17" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$$fundef_18_envp_166_load" = load i8*, i8** @_execptr
  %"$$fundef_18_envp_166_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_166_load", i64 40)
  %"$$fundef_18_envp_166" = bitcast i8* %"$$fundef_18_envp_166_salloc" to %"$$fundef_18_env_139"*
  %"$$fundef_18_env_voidp_168" = bitcast %"$$fundef_18_env_139"* %"$$fundef_18_envp_166" to i8*
  %"$$fundef_18_cloval_169" = insertvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } { %Uint32 (i8*, %TName_List_Int32*)* bitcast (%Uint32 (%"$$fundef_18_env_139"*, %TName_List_Int32*)* @"$fundef_18" to %Uint32 (i8*, %TName_List_Int32*)*), i8* undef }, i8* %"$$fundef_18_env_voidp_168", 1
  %"$$fundef_18_env_f_170" = getelementptr inbounds %"$$fundef_18_env_139", %"$$fundef_18_env_139"* %"$$fundef_18_envp_166", i32 0, i32 0
  %"$f_171" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_171", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_170"
  %"$$fundef_18_env_g_172" = getelementptr inbounds %"$$fundef_18_env_139", %"$$fundef_18_env_139"* %"$$fundef_18_envp_166", i32 0, i32 1
  %"$g_173" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_173", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_172"
  %"$$fundef_18_env_z_174" = getelementptr inbounds %"$$fundef_18_env_139", %"$$fundef_18_env_139"* %"$$fundef_18_envp_166", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_18_env_z_174"
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$fundef_18_cloval_169", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_17"
  %"$$retval_17_175" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_17"
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_17_175"
}

define internal { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_14"(%"$$fundef_14_env_141"* %0, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_15" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_16_envp_153_load" = load i8*, i8** @_execptr
  %"$$fundef_16_envp_153_salloc" = call i8* @_salloc(i8* %"$$fundef_16_envp_153_load", i64 32)
  %"$$fundef_16_envp_153" = bitcast i8* %"$$fundef_16_envp_153_salloc" to %"$$fundef_16_env_140"*
  %"$$fundef_16_env_voidp_155" = bitcast %"$$fundef_16_env_140"* %"$$fundef_16_envp_153" to i8*
  %"$$fundef_16_cloval_156" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_16_env_140"*, %Uint32)* @"$fundef_16" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_16_env_voidp_155", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_16_cloval_156", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_16_env_f_157" = getelementptr inbounds %"$$fundef_16_env_140", %"$$fundef_16_env_140"* %"$$fundef_16_envp_153", i32 0, i32 0
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_f_157"
  %"$$fundef_16_env_g_158" = getelementptr inbounds %"$$fundef_16_env_140", %"$$fundef_16_env_140"* %"$$fundef_16_envp_153", i32 0, i32 1
  %"$g_159" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_159", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_g_158"
  %"$g_160" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_160", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_15"
  %"$$retval_15_161" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_15"
  ret { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_15_161"
}

define internal { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_12"(%"$$fundef_12_env_142"* %0) {
entry:
  %"$retval_13" = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_14_env_141"*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_14" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_13"
  %"$$retval_13_152" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_13"
  ret { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_13_152"
}

define internal { i8*, i8* }* @"$fundef_10"(%"$$fundef_10_env_143"* %0) {
entry:
  %"$retval_11" = alloca { i8*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_12_env_142"*)* @"$fundef_12" to { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_147", i32 0, i32 1) to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_147", i32 0, i32 0), { i8*, i8* }** %"$retval_11"
  %"$$retval_11_148" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_11"
  ret { i8*, i8* }* %"$$retval_11_148"
}

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_462"(i8* %0) {
entry:
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_10_env_143"*)* @"$fundef_10" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* bitcast ([3 x { i8*, i8* }]* @"$dyndisp_469" to { { i8*, i8* }* (i8*)*, i8* }*)
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_20_env_138"*)* @"$fundef_20" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_469", i32 0, i32 2) to { { i8*, i8* }* (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_469", i32 0, i32 0), { i8*, i8* }** @list_foldl
  %"$$fundef_30_envp_470_load" = load i8*, i8** @_execptr
  %"$$fundef_30_envp_470_salloc" = call i8* @_salloc(i8* %"$$fundef_30_envp_470_load", i64 8)
  %"$$fundef_30_envp_470" = bitcast i8* %"$$fundef_30_envp_470_salloc" to %"$$fundef_30_env_133"*
  %"$$fundef_30_env_voidp_472" = bitcast %"$$fundef_30_env_133"* %"$$fundef_30_envp_470" to i8*
  %"$$fundef_30_cloval_473" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_30_env_133"*)* @"$fundef_30" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_30_env_voidp_472", 1
  %"$$fundef_30_env_list_foldl_474" = getelementptr inbounds %"$$fundef_30_env_133", %"$$fundef_30_env_133"* %"$$fundef_30_envp_470", i32 0, i32 0
  %"$list_foldl_475" = load { i8*, i8* }*, { i8*, i8* }** @list_foldl
  store { i8*, i8* }* %"$list_foldl_475", { i8*, i8* }** %"$$fundef_30_env_list_foldl_474"
  %"$$fundef_36_env_voidp_477" = bitcast %"$$fundef_30_env_133"* %"$$fundef_30_envp_470" to i8*
  %"$$fundef_36_cloval_478" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_36_env_130"*)* @"$fundef_36" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_36_env_voidp_477", 1
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$$fundef_30_cloval_473", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* bitcast ([3 x { i8*, i8* }]* @"$dyndisp_479" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*)
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$$fundef_36_cloval_478", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_479", i32 0, i32 2) to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_479", i32 0, i32 0), { i8*, i8* }** @list_length
  %"$expr_42" = alloca %Uint32
  %t1 = alloca { i8*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_43_env_127"*)* @"$fundef_43" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* bitcast ([3 x { i8*, i8* }]* @"$dyndisp_486" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*)
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_47_env_125"*)* @"$fundef_47" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_486", i32 0, i32 2) to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_486", i32 0, i32 0), { i8*, i8* }** %t1
  %t2 = alloca { i8*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_51_env_123"*)* @"$fundef_51" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* bitcast ([3 x { i8*, i8* }]* @"$dyndisp_493" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*)
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_55_env_121"*)* @"$fundef_55" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_493", i32 0, i32 2) to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_493", i32 0, i32 0), { i8*, i8* }** %t2
  %some_bool = alloca %Bool*
  %"$adtval_494_load" = load i8*, i8** @_execptr
  %"$adtval_494_salloc" = call i8* @_salloc(i8* %"$adtval_494_load", i64 1)
  %"$adtval_494" = bitcast i8* %"$adtval_494_salloc" to %True*
  %"$adtgep_495" = getelementptr inbounds %True, %True* %"$adtval_494", i32 0, i32 0
  store i8 0, i8* %"$adtgep_495"
  %"$adtptr_496" = bitcast %True* %"$adtval_494" to %Bool*
  store %Bool* %"$adtptr_496", %Bool** %some_bool
  %f = alloca { i8*, i8* }*
  %"$some_bool_498" = load %Bool*, %Bool** %some_bool
  %"$some_bool_tag_499" = getelementptr inbounds %Bool, %Bool* %"$some_bool_498", i32 0, i32 0
  %"$some_bool_tag_500" = load i8, i8* %"$some_bool_tag_499"
  switch i8 %"$some_bool_tag_500", label %"$empty_default_501" [
    i8 0, label %"$True_502"
    i8 1, label %"$False_505"
  ]

"$True_502":                                      ; preds = %entry
  %"$some_bool_503" = bitcast %Bool* %"$some_bool_498" to %True*
  %"$t2_504" = load { i8*, i8* }*, { i8*, i8* }** %t2
  store { i8*, i8* }* %"$t2_504", { i8*, i8* }** %f
  br label %"$matchsucc_497"

"$False_505":                                     ; preds = %entry
  %"$some_bool_506" = bitcast %Bool* %"$some_bool_498" to %False*
  %"$t1_507" = load { i8*, i8* }*, { i8*, i8* }** %t1
  store { i8*, i8* }* %"$t1_507", { i8*, i8* }** %f
  br label %"$matchsucc_497"

"$empty_default_501":                             ; preds = %entry
  br label %"$matchsucc_497"

"$matchsucc_497":                                 ; preds = %"$False_505", %"$True_502", %"$empty_default_501"
  %some_bool2 = alloca %Bool*
  %"$adtval_508_load" = load i8*, i8** @_execptr
  %"$adtval_508_salloc" = call i8* @_salloc(i8* %"$adtval_508_load", i64 1)
  %"$adtval_508" = bitcast i8* %"$adtval_508_salloc" to %False*
  %"$adtgep_509" = getelementptr inbounds %False, %False* %"$adtval_508", i32 0, i32 0
  store i8 1, i8* %"$adtgep_509"
  %"$adtptr_510" = bitcast %False* %"$adtval_508" to %Bool*
  store %Bool* %"$adtptr_510", %Bool** %some_bool2
  %"$some_bool2_512" = load %Bool*, %Bool** %some_bool2
  %"$some_bool2_tag_513" = getelementptr inbounds %Bool, %Bool* %"$some_bool2_512", i32 0, i32 0
  %"$some_bool2_tag_514" = load i8, i8* %"$some_bool2_tag_513"
  switch i8 %"$some_bool2_tag_514", label %"$empty_default_515" [
    i8 0, label %"$True_516"
    i8 1, label %"$False_544"
  ]

"$True_516":                                      ; preds = %"$matchsucc_497"
  %"$some_bool2_517" = bitcast %Bool* %"$some_bool2_512" to %True*
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$f_518" = load { i8*, i8* }*, { i8*, i8* }** %f
  %"$f_519" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_518", i32 0
  %"$f_520" = bitcast { i8*, i8* }* %"$f_519" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_521" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_520"
  %"$f_fptr_522" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_521", 0
  %"$f_envptr_523" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_521", 1
  %"$f_call_524" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_522"(i8* %"$f_envptr_523")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_524", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1
  %len = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$list_length_525" = load { i8*, i8* }*, { i8*, i8* }** @list_length
  %"$list_length_526" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_525", i32 0
  %"$list_length_527" = bitcast { i8*, i8* }* %"$list_length_526" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$list_length_528" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$list_length_527"
  %"$list_length_fptr_529" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$list_length_528", 0
  %"$list_length_envptr_530" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$list_length_528", 1
  %"$list_length_call_531" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$list_length_fptr_529"(i8* %"$list_length_envptr_530")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$list_length_call_531", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len
  %one = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %one
  %f1l = alloca %TName_List_Int32*
  %"$f1_6" = alloca %TName_List_Int32*
  %"$f1_532" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1
  %"$f1_fptr_533" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_532", 0
  %"$f1_envptr_534" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_532", 1
  %"$one_535" = load %Int32, %Int32* %one
  %"$f1_call_536" = call %TName_List_Int32* %"$f1_fptr_533"(i8* %"$f1_envptr_534", %Int32 %"$one_535")
  store %TName_List_Int32* %"$f1_call_536", %TName_List_Int32** %"$f1_6"
  %"$$f1_6_537" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_6"
  store %TName_List_Int32* %"$$f1_6_537", %TName_List_Int32** %f1l
  %"$len_7" = alloca %Uint32
  %"$len_538" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len
  %"$len_fptr_539" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_538", 0
  %"$len_envptr_540" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_538", 1
  %"$f1l_541" = load %TName_List_Int32*, %TName_List_Int32** %f1l
  %"$len_call_542" = call %Uint32 %"$len_fptr_539"(i8* %"$len_envptr_540", %TName_List_Int32* %"$f1l_541")
  store %Uint32 %"$len_call_542", %Uint32* %"$len_7"
  %"$$len_7_543" = load %Uint32, %Uint32* %"$len_7"
  store %Uint32 %"$$len_7_543", %Uint32* %"$expr_42"
  br label %"$matchsucc_511"

"$False_544":                                     ; preds = %"$matchsucc_497"
  %"$some_bool2_545" = bitcast %Bool* %"$some_bool2_512" to %False*
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$f_546" = load { i8*, i8* }*, { i8*, i8* }** %f
  %"$f_547" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_546", i32 2
  %"$f_548" = bitcast { i8*, i8* }* %"$f_547" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_549" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_548"
  %"$f_fptr_550" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_549", 0
  %"$f_envptr_551" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_549", 1
  %"$f_call_552" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_550"(i8* %"$f_envptr_551")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_552", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2
  %len1 = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$list_length_553" = load { i8*, i8* }*, { i8*, i8* }** @list_length
  %"$list_length_554" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_553", i32 2
  %"$list_length_555" = bitcast { i8*, i8* }* %"$list_length_554" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$list_length_556" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$list_length_555"
  %"$list_length_fptr_557" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$list_length_556", 0
  %"$list_length_envptr_558" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$list_length_556", 1
  %"$list_length_call_559" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$list_length_fptr_557"(i8* %"$list_length_envptr_558")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$list_length_call_559", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1
  %one2 = alloca %Int64
  store %Int64 { i64 1 }, %Int64* %one2
  %f2l = alloca %TName_List_Int64*
  %"$f2_8" = alloca %TName_List_Int64*
  %"$f2_560" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2
  %"$f2_fptr_561" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_560", 0
  %"$f2_envptr_562" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_560", 1
  %"$one_563" = load %Int64, %Int64* %one2
  %"$f2_call_564" = call %TName_List_Int64* %"$f2_fptr_561"(i8* %"$f2_envptr_562", %Int64 %"$one_563")
  store %TName_List_Int64* %"$f2_call_564", %TName_List_Int64** %"$f2_8"
  %"$$f2_8_565" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_8"
  store %TName_List_Int64* %"$$f2_8_565", %TName_List_Int64** %f2l
  %"$len_9" = alloca %Uint32
  %"$len_566" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1
  %"$len_fptr_567" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_566", 0
  %"$len_envptr_568" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_566", 1
  %"$f2l_569" = load %TName_List_Int64*, %TName_List_Int64** %f2l
  %"$len_call_570" = call %Uint32 %"$len_fptr_567"(i8* %"$len_envptr_568", %TName_List_Int64* %"$f2l_569")
  store %Uint32 %"$len_call_570", %Uint32* %"$len_9"
  %"$$len_9_571" = load %Uint32, %Uint32* %"$len_9"
  store %Uint32 %"$$len_9_571", %Uint32* %"$expr_42"
  br label %"$matchsucc_511"

"$empty_default_515":                             ; preds = %"$matchsucc_497"
  br label %"$matchsucc_511"

"$matchsucc_511":                                 ; preds = %"$False_544", %"$True_516", %"$empty_default_515"
  %"$$expr_42_572" = load %Uint32, %Uint32* %"$expr_42"
  ret %Uint32 %"$$expr_42_572"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_573" = call %Uint32 @"$scilla_expr_462"(i8* null)
  %"$pval_574" = alloca %Uint32
  %"$memvoidcast_575" = bitcast %Uint32* %"$pval_574" to i8*
  store %Uint32 %"$exprval_573", %Uint32* %"$pval_574"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_63", i8* %"$memvoidcast_575")
  ret void
}
