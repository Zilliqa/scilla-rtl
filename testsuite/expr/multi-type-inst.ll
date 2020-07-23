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
%"$TyDescrTy_ADTTyp_89" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_88"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_88" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_90"**, %"$TyDescrTy_ADTTyp_89"* }
%"$TyDescrTy_ADTTyp_Constr_90" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_List_Int64 = type { i8, %CName_Cons_Int64*, %CName_Nil_Int64* }
%CName_Cons_Int64 = type <{ i8, %Int64, %TName_List_Int64* }>
%CName_Nil_Int64 = type <{ i8 }>
%"$$fundef_57_env_128" = type {}
%Int64 = type { i64 }
%"$$fundef_55_env_129" = type {}
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>
%"$$fundef_53_env_130" = type {}
%Int32 = type { i32 }
%"$$fundef_51_env_131" = type {}
%"$$fundef_49_env_132" = type {}
%"$$fundef_47_env_133" = type {}
%"$$fundef_45_env_134" = type {}
%"$$fundef_43_env_135" = type {}
%Uint32 = type { i32 }
%"$$fundef_40_env_136" = type { %Uint32, %Uint32 }
%"$$fundef_38_env_137" = type { %Uint32 }
%"$$fundef_36_env_138" = type { { i8*, i8* }* }
%"$$fundef_34_env_139" = type { %Uint32, %Uint32 }
%"$$fundef_32_env_140" = type { %Uint32 }
%"$$fundef_30_env_141" = type { { i8*, i8* }* }
%"$$fundef_28_env_142" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_26_env_143" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_24_env_144" = type {}
%"$$fundef_22_env_145" = type {}
%"$$fundef_20_env_146" = type {}
%"$$fundef_18_env_147" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_16_env_148" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_14_env_149" = type {}
%"$$fundef_12_env_150" = type {}
%"$$fundef_10_env_151" = type {}
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

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
@"$TyDescr_Bnum_Prim_78" = global %"$TyDescrTy_PrimTyp_59" { i32 3, i32 0 }
@"$TyDescr_Bnum_79" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Bnum_Prim_78" to i8*) }
@"$TyDescr_Message_Prim_80" = global %"$TyDescrTy_PrimTyp_59" { i32 4, i32 0 }
@"$TyDescr_Message_81" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Message_Prim_80" to i8*) }
@"$TyDescr_Event_Prim_82" = global %"$TyDescrTy_PrimTyp_59" { i32 5, i32 0 }
@"$TyDescr_Event_83" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Event_Prim_82" to i8*) }
@"$TyDescr_Exception_Prim_84" = global %"$TyDescrTy_PrimTyp_59" { i32 6, i32 0 }
@"$TyDescr_Exception_85" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Exception_Prim_84" to i8*) }
@"$TyDescr_Bystr_Prim_86" = global %"$TyDescrTy_PrimTyp_59" { i32 7, i32 0 }
@"$TyDescr_Bystr_87" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Bystr_Prim_86" to i8*) }
@"$TyDescr_ADT_Bool_91" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_88"* @"$TyDescr_Bool_ADTTyp_Specl_104" to i8*) }
@"$TyDescr_ADT_List_Int64_92" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_88"* @"$TyDescr_List_Int64_ADTTyp_Specl_116" to i8*) }
@"$TyDescr_ADT_List_Int32_93" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_88"* @"$TyDescr_List_Int32_ADTTyp_Specl_125" to i8*) }
@"$TyDescr_Bool_ADTTyp_95" = unnamed_addr constant %"$TyDescrTy_ADTTyp_89" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_106", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_88"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_88"*], [1 x %"$TyDescrTy_ADTTyp_Specl_88"*]* @"$TyDescr_Bool_ADTTyp_m_specls_105", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_96" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_97" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_98" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_90" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_97", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_96", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_99" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_100" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_101" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_90" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_100", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_99", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_102" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_90"*] [%"$TyDescrTy_ADTTyp_Constr_90"* @"$TyDescr_Bool_True_ADTTyp_Constr_98", %"$TyDescrTy_ADTTyp_Constr_90"* @"$TyDescr_Bool_False_ADTTyp_Constr_101"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_103" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_104" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_88" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_103", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_90"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_90"*], [2 x %"$TyDescrTy_ADTTyp_Constr_90"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_102", i32 0, i32 0), %"$TyDescrTy_ADTTyp_89"* @"$TyDescr_Bool_ADTTyp_95" }
@"$TyDescr_Bool_ADTTyp_m_specls_105" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_88"*] [%"$TyDescrTy_ADTTyp_Specl_88"* @"$TyDescr_Bool_ADTTyp_Specl_104"]
@"$TyDescr_ADT_Bool_106" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_107" = unnamed_addr constant %"$TyDescrTy_ADTTyp_89" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_127", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_88"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_88"*], [2 x %"$TyDescrTy_ADTTyp_Specl_88"*]* @"$TyDescr_List_ADTTyp_m_specls_126", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int64_Constr_m_args_108" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_65", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int64_92"]
@"$TyDescr_ADT_Cons_109" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int64_ADTTyp_Constr_110" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_90" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_109", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int64_Constr_m_args_108", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int64_Constr_m_args_111" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_112" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int64_ADTTyp_Constr_113" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_90" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_112", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int64_Constr_m_args_111", i32 0, i32 0) }
@"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_114" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_90"*] [%"$TyDescrTy_ADTTyp_Constr_90"* @"$TyDescr_List_Cons_Int64_ADTTyp_Constr_110", %"$TyDescrTy_ADTTyp_Constr_90"* @"$TyDescr_List_Nil_Int64_ADTTyp_Constr_113"]
@"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_115" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_65"]
@"$TyDescr_List_Int64_ADTTyp_Specl_116" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_88" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_115", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_90"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_90"*], [2 x %"$TyDescrTy_ADTTyp_Constr_90"*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_114", i32 0, i32 0), %"$TyDescrTy_ADTTyp_89"* @"$TyDescr_List_ADTTyp_107" }
@"$TyDescr_List_Cons_Int32_Constr_m_args_117" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_61", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_93"]
@"$TyDescr_ADT_Cons_118" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_119" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_90" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_118", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_117", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_120" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_121" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_122" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_90" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_121", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_120", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_123" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_90"*] [%"$TyDescrTy_ADTTyp_Constr_90"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_119", %"$TyDescrTy_ADTTyp_Constr_90"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_122"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_124" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_61"]
@"$TyDescr_List_Int32_ADTTyp_Specl_125" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_88" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_124", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_90"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_90"*], [2 x %"$TyDescrTy_ADTTyp_Constr_90"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_123", i32 0, i32 0), %"$TyDescrTy_ADTTyp_89"* @"$TyDescr_List_ADTTyp_107" }
@"$TyDescr_List_ADTTyp_m_specls_126" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_88"*] [%"$TyDescrTy_ADTTyp_Specl_88"* @"$TyDescr_List_Int64_ADTTyp_Specl_116", %"$TyDescrTy_ADTTyp_Specl_88"* @"$TyDescr_List_Int32_ADTTyp_Specl_125"]
@"$TyDescr_ADT_List_127" = unnamed_addr constant [4 x i8] c"List"
@list_foldl = global { i8*, i8* }* null
@list_length = global { i8*, i8* }* null

define internal %TName_List_Int64* @"$fundef_57"(%"$$fundef_57_env_128"* %0, %Int64 %1) {
entry:
  %"$retval_58" = alloca %TName_List_Int64*
  %an = alloca %TName_List_Int64*
  %"$adtval_458_load" = load i8*, i8** @_execptr
  %"$adtval_458_salloc" = call i8* @_salloc(i8* %"$adtval_458_load", i64 1)
  %"$adtval_458" = bitcast i8* %"$adtval_458_salloc" to %CName_Nil_Int64*
  %"$adtgep_459" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_458", i32 0, i32 0
  store i8 1, i8* %"$adtgep_459"
  %"$adtptr_460" = bitcast %CName_Nil_Int64* %"$adtval_458" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_460", %TName_List_Int64** %an
  %a1 = alloca %TName_List_Int64*
  %"$an_461" = load %TName_List_Int64*, %TName_List_Int64** %an
  %"$adtval_462_load" = load i8*, i8** @_execptr
  %"$adtval_462_salloc" = call i8* @_salloc(i8* %"$adtval_462_load", i64 17)
  %"$adtval_462" = bitcast i8* %"$adtval_462_salloc" to %CName_Cons_Int64*
  %"$adtgep_463" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_462", i32 0, i32 0
  store i8 0, i8* %"$adtgep_463"
  %"$adtgep_464" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_462", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_464"
  %"$adtgep_465" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_462", i32 0, i32 2
  store %TName_List_Int64* %"$an_461", %TName_List_Int64** %"$adtgep_465"
  %"$adtptr_466" = bitcast %CName_Cons_Int64* %"$adtval_462" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_466", %TName_List_Int64** %a1
  %"$a1_467" = load %TName_List_Int64*, %TName_List_Int64** %a1
  %"$adtval_468_load" = load i8*, i8** @_execptr
  %"$adtval_468_salloc" = call i8* @_salloc(i8* %"$adtval_468_load", i64 17)
  %"$adtval_468" = bitcast i8* %"$adtval_468_salloc" to %CName_Cons_Int64*
  %"$adtgep_469" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_468", i32 0, i32 0
  store i8 0, i8* %"$adtgep_469"
  %"$adtgep_470" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_468", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_470"
  %"$adtgep_471" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_468", i32 0, i32 2
  store %TName_List_Int64* %"$a1_467", %TName_List_Int64** %"$adtgep_471"
  %"$adtptr_472" = bitcast %CName_Cons_Int64* %"$adtval_468" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_472", %TName_List_Int64** %"$retval_58"
  %"$$retval_58_473" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_58"
  ret %TName_List_Int64* %"$$retval_58_473"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_55"(%"$$fundef_55_env_129"* %0) {
entry:
  %"$retval_56" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_57_env_128"*, %Int64)* @"$fundef_57" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_56"
  %"$$retval_56_457" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_56"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_56_457"
}

define internal %TName_List_Int32* @"$fundef_53"(%"$$fundef_53_env_130"* %0, %Int32 %1) {
entry:
  %"$retval_54" = alloca %TName_List_Int32*
  %an = alloca %TName_List_Int32*
  %"$adtval_438_load" = load i8*, i8** @_execptr
  %"$adtval_438_salloc" = call i8* @_salloc(i8* %"$adtval_438_load", i64 1)
  %"$adtval_438" = bitcast i8* %"$adtval_438_salloc" to %CName_Nil_Int32*
  %"$adtgep_439" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_438", i32 0, i32 0
  store i8 1, i8* %"$adtgep_439"
  %"$adtptr_440" = bitcast %CName_Nil_Int32* %"$adtval_438" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_440", %TName_List_Int32** %an
  %a1 = alloca %TName_List_Int32*
  %"$an_441" = load %TName_List_Int32*, %TName_List_Int32** %an
  %"$adtval_442_load" = load i8*, i8** @_execptr
  %"$adtval_442_salloc" = call i8* @_salloc(i8* %"$adtval_442_load", i64 13)
  %"$adtval_442" = bitcast i8* %"$adtval_442_salloc" to %CName_Cons_Int32*
  %"$adtgep_443" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_442", i32 0, i32 0
  store i8 0, i8* %"$adtgep_443"
  %"$adtgep_444" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_442", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_444"
  %"$adtgep_445" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_442", i32 0, i32 2
  store %TName_List_Int32* %"$an_441", %TName_List_Int32** %"$adtgep_445"
  %"$adtptr_446" = bitcast %CName_Cons_Int32* %"$adtval_442" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_446", %TName_List_Int32** %a1
  %"$a1_447" = load %TName_List_Int32*, %TName_List_Int32** %a1
  %"$adtval_448_load" = load i8*, i8** @_execptr
  %"$adtval_448_salloc" = call i8* @_salloc(i8* %"$adtval_448_load", i64 13)
  %"$adtval_448" = bitcast i8* %"$adtval_448_salloc" to %CName_Cons_Int32*
  %"$adtgep_449" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_448", i32 0, i32 0
  store i8 0, i8* %"$adtgep_449"
  %"$adtgep_450" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_448", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_450"
  %"$adtgep_451" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_448", i32 0, i32 2
  store %TName_List_Int32* %"$a1_447", %TName_List_Int32** %"$adtgep_451"
  %"$adtptr_452" = bitcast %CName_Cons_Int32* %"$adtval_448" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_452", %TName_List_Int32** %"$retval_54"
  %"$$retval_54_453" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_54"
  ret %TName_List_Int32* %"$$retval_54_453"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_51"(%"$$fundef_51_env_131"* %0) {
entry:
  %"$retval_52" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_53_env_130"*, %Int32)* @"$fundef_53" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_52"
  %"$$retval_52_437" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_52"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_52_437"
}

define internal %TName_List_Int64* @"$fundef_49"(%"$$fundef_49_env_132"* %0, %Int64 %1) {
entry:
  %"$retval_50" = alloca %TName_List_Int64*
  %an = alloca %TName_List_Int64*
  %"$adtval_424_load" = load i8*, i8** @_execptr
  %"$adtval_424_salloc" = call i8* @_salloc(i8* %"$adtval_424_load", i64 1)
  %"$adtval_424" = bitcast i8* %"$adtval_424_salloc" to %CName_Nil_Int64*
  %"$adtgep_425" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_424", i32 0, i32 0
  store i8 1, i8* %"$adtgep_425"
  %"$adtptr_426" = bitcast %CName_Nil_Int64* %"$adtval_424" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_426", %TName_List_Int64** %an
  %"$an_427" = load %TName_List_Int64*, %TName_List_Int64** %an
  %"$adtval_428_load" = load i8*, i8** @_execptr
  %"$adtval_428_salloc" = call i8* @_salloc(i8* %"$adtval_428_load", i64 17)
  %"$adtval_428" = bitcast i8* %"$adtval_428_salloc" to %CName_Cons_Int64*
  %"$adtgep_429" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_428", i32 0, i32 0
  store i8 0, i8* %"$adtgep_429"
  %"$adtgep_430" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_428", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_430"
  %"$adtgep_431" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_428", i32 0, i32 2
  store %TName_List_Int64* %"$an_427", %TName_List_Int64** %"$adtgep_431"
  %"$adtptr_432" = bitcast %CName_Cons_Int64* %"$adtval_428" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_432", %TName_List_Int64** %"$retval_50"
  %"$$retval_50_433" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_50"
  ret %TName_List_Int64* %"$$retval_50_433"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_47"(%"$$fundef_47_env_133"* %0) {
entry:
  %"$retval_48" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_49_env_132"*, %Int64)* @"$fundef_49" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_48"
  %"$$retval_48_423" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_48"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_48_423"
}

define internal %TName_List_Int32* @"$fundef_45"(%"$$fundef_45_env_134"* %0, %Int32 %1) {
entry:
  %"$retval_46" = alloca %TName_List_Int32*
  %an = alloca %TName_List_Int32*
  %"$adtval_410_load" = load i8*, i8** @_execptr
  %"$adtval_410_salloc" = call i8* @_salloc(i8* %"$adtval_410_load", i64 1)
  %"$adtval_410" = bitcast i8* %"$adtval_410_salloc" to %CName_Nil_Int32*
  %"$adtgep_411" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_410", i32 0, i32 0
  store i8 1, i8* %"$adtgep_411"
  %"$adtptr_412" = bitcast %CName_Nil_Int32* %"$adtval_410" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_412", %TName_List_Int32** %an
  %"$an_413" = load %TName_List_Int32*, %TName_List_Int32** %an
  %"$adtval_414_load" = load i8*, i8** @_execptr
  %"$adtval_414_salloc" = call i8* @_salloc(i8* %"$adtval_414_load", i64 13)
  %"$adtval_414" = bitcast i8* %"$adtval_414_salloc" to %CName_Cons_Int32*
  %"$adtgep_415" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_414", i32 0, i32 0
  store i8 0, i8* %"$adtgep_415"
  %"$adtgep_416" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_414", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_416"
  %"$adtgep_417" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_414", i32 0, i32 2
  store %TName_List_Int32* %"$an_413", %TName_List_Int32** %"$adtgep_417"
  %"$adtptr_418" = bitcast %CName_Cons_Int32* %"$adtval_414" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_418", %TName_List_Int32** %"$retval_46"
  %"$$retval_46_419" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_46"
  ret %TName_List_Int32* %"$$retval_46_419"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_43"(%"$$fundef_43_env_135"* %0) {
entry:
  %"$retval_44" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_45_env_134"*, %Int32)* @"$fundef_45" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_44"
  %"$$retval_44_409" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_44"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_44_409"
}

define internal %Uint32 @"$fundef_40"(%"$$fundef_40_env_136"* %0, %Int64 %1) {
entry:
  %"$$fundef_40_env_one_398" = getelementptr inbounds %"$$fundef_40_env_136", %"$$fundef_40_env_136"* %0, i32 0, i32 0
  %"$one_envload_399" = load %Uint32, %Uint32* %"$$fundef_40_env_one_398"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_399", %Uint32* %one
  %"$$fundef_40_env_z_400" = getelementptr inbounds %"$$fundef_40_env_136", %"$$fundef_40_env_136"* %0, i32 0, i32 1
  %"$z_envload_401" = load %Uint32, %Uint32* %"$$fundef_40_env_z_400"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_401", %Uint32* %z
  %"$retval_41" = alloca %Uint32
  %"$one_402" = load %Uint32, %Uint32* %one
  %"$z_403" = load %Uint32, %Uint32* %z
  %"$add_call_404" = call %Uint32 @_add_Uint32(%Uint32 %"$one_402", %Uint32 %"$z_403")
  store %Uint32 %"$add_call_404", %Uint32* %"$retval_41"
  %"$$retval_41_405" = load %Uint32, %Uint32* %"$retval_41"
  ret %Uint32 %"$$retval_41_405"
}

define internal { %Uint32 (i8*, %Int64)*, i8* } @"$fundef_38"(%"$$fundef_38_env_137"* %0, %Uint32 %1) {
entry:
  %"$$fundef_38_env_one_388" = getelementptr inbounds %"$$fundef_38_env_137", %"$$fundef_38_env_137"* %0, i32 0, i32 0
  %"$one_envload_389" = load %Uint32, %Uint32* %"$$fundef_38_env_one_388"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_389", %Uint32* %one
  %"$retval_39" = alloca { %Uint32 (i8*, %Int64)*, i8* }
  %"$$fundef_40_envp_390_load" = load i8*, i8** @_execptr
  %"$$fundef_40_envp_390_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_390_load", i64 8)
  %"$$fundef_40_envp_390" = bitcast i8* %"$$fundef_40_envp_390_salloc" to %"$$fundef_40_env_136"*
  %"$$fundef_40_env_voidp_392" = bitcast %"$$fundef_40_env_136"* %"$$fundef_40_envp_390" to i8*
  %"$$fundef_40_cloval_393" = insertvalue { %Uint32 (i8*, %Int64)*, i8* } { %Uint32 (i8*, %Int64)* bitcast (%Uint32 (%"$$fundef_40_env_136"*, %Int64)* @"$fundef_40" to %Uint32 (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_40_env_voidp_392", 1
  %"$$fundef_40_env_one_394" = getelementptr inbounds %"$$fundef_40_env_136", %"$$fundef_40_env_136"* %"$$fundef_40_envp_390", i32 0, i32 0
  %"$one_395" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_395", %Uint32* %"$$fundef_40_env_one_394"
  %"$$fundef_40_env_z_396" = getelementptr inbounds %"$$fundef_40_env_136", %"$$fundef_40_env_136"* %"$$fundef_40_envp_390", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_40_env_z_396"
  store { %Uint32 (i8*, %Int64)*, i8* } %"$$fundef_40_cloval_393", { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_39"
  %"$$retval_39_397" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_39"
  ret { %Uint32 (i8*, %Int64)*, i8* } %"$$retval_39_397"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_36"(%"$$fundef_36_env_138"* %0) {
entry:
  %"$$fundef_36_env_list_foldl_355" = getelementptr inbounds %"$$fundef_36_env_138", %"$$fundef_36_env_138"* %0, i32 0, i32 0
  %"$list_foldl_envload_356" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_36_env_list_foldl_355"
  %list_foldl = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldl_envload_356", { i8*, i8* }** %list_foldl
  %"$retval_37" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$list_foldl_357" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl
  %"$list_foldl_358" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_357", i32 2
  %"$list_foldl_359" = bitcast { i8*, i8* }* %"$list_foldl_358" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_360" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_359"
  %"$list_foldl_fptr_361" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_360", 0
  %"$list_foldl_envptr_362" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_360", 1
  %"$list_foldl_call_363" = call { i8*, i8* }* %"$list_foldl_fptr_361"(i8* %"$list_foldl_envptr_362")
  %"$list_foldl_364" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_363", i32 1
  %"$list_foldl_365" = bitcast { i8*, i8* }* %"$list_foldl_364" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_366" = load { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_365"
  %"$list_foldl_fptr_367" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_366", 0
  %"$list_foldl_envptr_368" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_366", 1
  %"$list_foldl_call_369" = call { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_367"(i8* %"$list_foldl_envptr_368")
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_369", { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %iter = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_38_envp_370_load" = load i8*, i8** @_execptr
  %"$$fundef_38_envp_370_salloc" = call i8* @_salloc(i8* %"$$fundef_38_envp_370_load", i64 4)
  %"$$fundef_38_envp_370" = bitcast i8* %"$$fundef_38_envp_370_salloc" to %"$$fundef_38_env_137"*
  %"$$fundef_38_env_voidp_372" = bitcast %"$$fundef_38_env_137"* %"$$fundef_38_envp_370" to i8*
  %"$$fundef_38_cloval_373" = insertvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int64)*, i8* } (%"$$fundef_38_env_137"*, %Uint32)* @"$fundef_38" to { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_38_env_voidp_372", 1
  %"$$fundef_38_env_one_374" = getelementptr inbounds %"$$fundef_38_env_137", %"$$fundef_38_env_137"* %"$$fundef_38_envp_370", i32 0, i32 0
  %"$one_375" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_375", %Uint32* %"$$fundef_38_env_one_374"
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_38_cloval_373", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %init = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %init
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$foldl_376" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$foldl_fptr_377" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_376", 0
  %"$foldl_envptr_378" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_376", 1
  %"$iter_379" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$foldl_call_380" = call { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_377"(i8* %"$foldl_envptr_378", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_379")
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_380", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$$foldl_4_381" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$$foldl_4_fptr_382" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_381", 0
  %"$$foldl_4_envptr_383" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_381", 1
  %"$init_384" = load %Uint32, %Uint32* %init
  %"$$foldl_4_call_385" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_fptr_382"(i8* %"$$foldl_4_envptr_383", %Uint32 %"$init_384")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_call_385", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5"
  %"$$foldl_5_386" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5"
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_5_386", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_37"
  %"$$retval_37_387" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_37"
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_37_387"
}

define internal %Uint32 @"$fundef_34"(%"$$fundef_34_env_139"* %0, %Int32 %1) {
entry:
  %"$$fundef_34_env_one_347" = getelementptr inbounds %"$$fundef_34_env_139", %"$$fundef_34_env_139"* %0, i32 0, i32 0
  %"$one_envload_348" = load %Uint32, %Uint32* %"$$fundef_34_env_one_347"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_348", %Uint32* %one
  %"$$fundef_34_env_z_349" = getelementptr inbounds %"$$fundef_34_env_139", %"$$fundef_34_env_139"* %0, i32 0, i32 1
  %"$z_envload_350" = load %Uint32, %Uint32* %"$$fundef_34_env_z_349"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_350", %Uint32* %z
  %"$retval_35" = alloca %Uint32
  %"$one_351" = load %Uint32, %Uint32* %one
  %"$z_352" = load %Uint32, %Uint32* %z
  %"$add_call_353" = call %Uint32 @_add_Uint32(%Uint32 %"$one_351", %Uint32 %"$z_352")
  store %Uint32 %"$add_call_353", %Uint32* %"$retval_35"
  %"$$retval_35_354" = load %Uint32, %Uint32* %"$retval_35"
  ret %Uint32 %"$$retval_35_354"
}

define internal { %Uint32 (i8*, %Int32)*, i8* } @"$fundef_32"(%"$$fundef_32_env_140"* %0, %Uint32 %1) {
entry:
  %"$$fundef_32_env_one_337" = getelementptr inbounds %"$$fundef_32_env_140", %"$$fundef_32_env_140"* %0, i32 0, i32 0
  %"$one_envload_338" = load %Uint32, %Uint32* %"$$fundef_32_env_one_337"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_338", %Uint32* %one
  %"$retval_33" = alloca { %Uint32 (i8*, %Int32)*, i8* }
  %"$$fundef_34_envp_339_load" = load i8*, i8** @_execptr
  %"$$fundef_34_envp_339_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_339_load", i64 8)
  %"$$fundef_34_envp_339" = bitcast i8* %"$$fundef_34_envp_339_salloc" to %"$$fundef_34_env_139"*
  %"$$fundef_34_env_voidp_341" = bitcast %"$$fundef_34_env_139"* %"$$fundef_34_envp_339" to i8*
  %"$$fundef_34_cloval_342" = insertvalue { %Uint32 (i8*, %Int32)*, i8* } { %Uint32 (i8*, %Int32)* bitcast (%Uint32 (%"$$fundef_34_env_139"*, %Int32)* @"$fundef_34" to %Uint32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_34_env_voidp_341", 1
  %"$$fundef_34_env_one_343" = getelementptr inbounds %"$$fundef_34_env_139", %"$$fundef_34_env_139"* %"$$fundef_34_envp_339", i32 0, i32 0
  %"$one_344" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_344", %Uint32* %"$$fundef_34_env_one_343"
  %"$$fundef_34_env_z_345" = getelementptr inbounds %"$$fundef_34_env_139", %"$$fundef_34_env_139"* %"$$fundef_34_envp_339", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_34_env_z_345"
  store { %Uint32 (i8*, %Int32)*, i8* } %"$$fundef_34_cloval_342", { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_33"
  %"$$retval_33_346" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_33"
  ret { %Uint32 (i8*, %Int32)*, i8* } %"$$retval_33_346"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_30"(%"$$fundef_30_env_141"* %0) {
entry:
  %"$$fundef_30_env_list_foldl_304" = getelementptr inbounds %"$$fundef_30_env_141", %"$$fundef_30_env_141"* %0, i32 0, i32 0
  %"$list_foldl_envload_305" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_30_env_list_foldl_304"
  %list_foldl = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldl_envload_305", { i8*, i8* }** %list_foldl
  %"$retval_31" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$list_foldl_306" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl
  %"$list_foldl_307" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_306", i32 0
  %"$list_foldl_308" = bitcast { i8*, i8* }* %"$list_foldl_307" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_309" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_308"
  %"$list_foldl_fptr_310" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_309", 0
  %"$list_foldl_envptr_311" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_309", 1
  %"$list_foldl_call_312" = call { i8*, i8* }* %"$list_foldl_fptr_310"(i8* %"$list_foldl_envptr_311")
  %"$list_foldl_313" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_312", i32 1
  %"$list_foldl_314" = bitcast { i8*, i8* }* %"$list_foldl_313" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_315" = load { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_314"
  %"$list_foldl_fptr_316" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_315", 0
  %"$list_foldl_envptr_317" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_315", 1
  %"$list_foldl_call_318" = call { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_316"(i8* %"$list_foldl_envptr_317")
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_318", { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %iter = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_32_envp_319_load" = load i8*, i8** @_execptr
  %"$$fundef_32_envp_319_salloc" = call i8* @_salloc(i8* %"$$fundef_32_envp_319_load", i64 4)
  %"$$fundef_32_envp_319" = bitcast i8* %"$$fundef_32_envp_319_salloc" to %"$$fundef_32_env_140"*
  %"$$fundef_32_env_voidp_321" = bitcast %"$$fundef_32_env_140"* %"$$fundef_32_envp_319" to i8*
  %"$$fundef_32_cloval_322" = insertvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int32)*, i8* } (%"$$fundef_32_env_140"*, %Uint32)* @"$fundef_32" to { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_32_env_voidp_321", 1
  %"$$fundef_32_env_one_323" = getelementptr inbounds %"$$fundef_32_env_140", %"$$fundef_32_env_140"* %"$$fundef_32_envp_319", i32 0, i32 0
  %"$one_324" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_324", %Uint32* %"$$fundef_32_env_one_323"
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_32_cloval_322", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %init = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %init
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$foldl_325" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$foldl_fptr_326" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_325", 0
  %"$foldl_envptr_327" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_325", 1
  %"$iter_328" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$foldl_call_329" = call { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_326"(i8* %"$foldl_envptr_327", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_328")
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_329", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$$foldl_4_330" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$$foldl_4_fptr_331" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_330", 0
  %"$$foldl_4_envptr_332" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_330", 1
  %"$init_333" = load %Uint32, %Uint32* %init
  %"$$foldl_4_call_334" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_fptr_331"(i8* %"$$foldl_4_envptr_332", %Uint32 %"$init_333")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_call_334", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5"
  %"$$foldl_5_335" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5"
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_5_335", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_31"
  %"$$retval_31_336" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_31"
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_31_336"
}

define internal %Uint32 @"$fundef_28"(%"$$fundef_28_env_142"* %0, %TName_List_Int64* %1) {
entry:
  %"$$fundef_28_env_f_262" = getelementptr inbounds %"$$fundef_28_env_142", %"$$fundef_28_env_142"* %0, i32 0, i32 0
  %"$f_envload_263" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_262"
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_263", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_28_env_g_264" = getelementptr inbounds %"$$fundef_28_env_142", %"$$fundef_28_env_142"* %0, i32 0, i32 1
  %"$g_envload_265" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_264"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_265", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_28_env_z_266" = getelementptr inbounds %"$$fundef_28_env_142", %"$$fundef_28_env_142"* %0, i32 0, i32 2
  %"$z_envload_267" = load %Uint32, %Uint32* %"$$fundef_28_env_z_266"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_267", %Uint32* %z
  %"$retval_29" = alloca %Uint32
  %"$l_tag_269" = getelementptr inbounds %TName_List_Int64, %TName_List_Int64* %1, i32 0, i32 0
  %"$l_tag_270" = load i8, i8* %"$l_tag_269"
  switch i8 %"$l_tag_270", label %"$empty_default_271" [
    i8 0, label %"$Cons_272"
    i8 1, label %"$Nil_300"
  ]

"$Cons_272":                                      ; preds = %entry
  %"$l_273" = bitcast %TName_List_Int64* %1 to %CName_Cons_Int64*
  %"$h_gep_274" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_273", i32 0, i32 1
  %"$h_load_275" = load %Int64, %Int64* %"$h_gep_274"
  %h = alloca %Int64
  store %Int64 %"$h_load_275", %Int64* %h
  %"$t_gep_276" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_273", i32 0, i32 2
  %"$t_load_277" = load %TName_List_Int64*, %TName_List_Int64** %"$t_gep_276"
  %t = alloca %TName_List_Int64*
  store %TName_List_Int64* %"$t_load_277", %TName_List_Int64** %t
  %res = alloca %Uint32
  %"$f_0" = alloca { %Uint32 (i8*, %Int64)*, i8* }
  %"$f_278" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_279" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_278", 0
  %"$f_envptr_280" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_278", 1
  %"$z_281" = load %Uint32, %Uint32* %z
  %"$f_call_282" = call { %Uint32 (i8*, %Int64)*, i8* } %"$f_fptr_279"(i8* %"$f_envptr_280", %Uint32 %"$z_281")
  store { %Uint32 (i8*, %Int64)*, i8* } %"$f_call_282", { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0"
  %"$f_1" = alloca %Uint32
  %"$$f_0_283" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0"
  %"$$f_0_fptr_284" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_283", 0
  %"$$f_0_envptr_285" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_283", 1
  %"$h_286" = load %Int64, %Int64* %h
  %"$$f_0_call_287" = call %Uint32 %"$$f_0_fptr_284"(i8* %"$$f_0_envptr_285", %Int64 %"$h_286")
  store %Uint32 %"$$f_0_call_287", %Uint32* %"$f_1"
  %"$$f_1_288" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_288", %Uint32* %res
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$g_289" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_290" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_289", 0
  %"$g_envptr_291" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_289", 1
  %"$res_292" = load %Uint32, %Uint32* %res
  %"$g_call_293" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_fptr_290"(i8* %"$g_envptr_291", %Uint32 %"$res_292")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_call_293", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_294" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_295" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_294", 0
  %"$$g_2_envptr_296" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_294", 1
  %"$t_297" = load %TName_List_Int64*, %TName_List_Int64** %t
  %"$$g_2_call_298" = call %Uint32 %"$$g_2_fptr_295"(i8* %"$$g_2_envptr_296", %TName_List_Int64* %"$t_297")
  store %Uint32 %"$$g_2_call_298", %Uint32* %"$g_3"
  %"$$g_3_299" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_299", %Uint32* %"$retval_29"
  br label %"$matchsucc_268"

"$Nil_300":                                       ; preds = %entry
  %"$l_301" = bitcast %TName_List_Int64* %1 to %CName_Nil_Int64*
  %"$z_302" = load %Uint32, %Uint32* %z
  store %Uint32 %"$z_302", %Uint32* %"$retval_29"
  br label %"$matchsucc_268"

"$empty_default_271":                             ; preds = %entry
  br label %"$matchsucc_268"

"$matchsucc_268":                                 ; preds = %"$Nil_300", %"$Cons_272", %"$empty_default_271"
  %"$$retval_29_303" = load %Uint32, %Uint32* %"$retval_29"
  ret %Uint32 %"$$retval_29_303"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_26"(%"$$fundef_26_env_143"* %0, %Uint32 %1) {
entry:
  %"$$fundef_26_env_f_248" = getelementptr inbounds %"$$fundef_26_env_143", %"$$fundef_26_env_143"* %0, i32 0, i32 0
  %"$f_envload_249" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_f_248"
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_249", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_26_env_g_250" = getelementptr inbounds %"$$fundef_26_env_143", %"$$fundef_26_env_143"* %0, i32 0, i32 1
  %"$g_envload_251" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_g_250"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_251", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_27" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$$fundef_28_envp_252_load" = load i8*, i8** @_execptr
  %"$$fundef_28_envp_252_salloc" = call i8* @_salloc(i8* %"$$fundef_28_envp_252_load", i64 40)
  %"$$fundef_28_envp_252" = bitcast i8* %"$$fundef_28_envp_252_salloc" to %"$$fundef_28_env_142"*
  %"$$fundef_28_env_voidp_254" = bitcast %"$$fundef_28_env_142"* %"$$fundef_28_envp_252" to i8*
  %"$$fundef_28_cloval_255" = insertvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } { %Uint32 (i8*, %TName_List_Int64*)* bitcast (%Uint32 (%"$$fundef_28_env_142"*, %TName_List_Int64*)* @"$fundef_28" to %Uint32 (i8*, %TName_List_Int64*)*), i8* undef }, i8* %"$$fundef_28_env_voidp_254", 1
  %"$$fundef_28_env_f_256" = getelementptr inbounds %"$$fundef_28_env_142", %"$$fundef_28_env_142"* %"$$fundef_28_envp_252", i32 0, i32 0
  %"$f_257" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_257", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_256"
  %"$$fundef_28_env_g_258" = getelementptr inbounds %"$$fundef_28_env_142", %"$$fundef_28_env_142"* %"$$fundef_28_envp_252", i32 0, i32 1
  %"$g_259" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_259", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_258"
  %"$$fundef_28_env_z_260" = getelementptr inbounds %"$$fundef_28_env_142", %"$$fundef_28_env_142"* %"$$fundef_28_envp_252", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_28_env_z_260"
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$fundef_28_cloval_255", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_27"
  %"$$retval_27_261" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_27"
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_27_261"
}

define internal { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_24"(%"$$fundef_24_env_144"* %0, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_25" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_26_envp_239_load" = load i8*, i8** @_execptr
  %"$$fundef_26_envp_239_salloc" = call i8* @_salloc(i8* %"$$fundef_26_envp_239_load", i64 32)
  %"$$fundef_26_envp_239" = bitcast i8* %"$$fundef_26_envp_239_salloc" to %"$$fundef_26_env_143"*
  %"$$fundef_26_env_voidp_241" = bitcast %"$$fundef_26_env_143"* %"$$fundef_26_envp_239" to i8*
  %"$$fundef_26_cloval_242" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_26_env_143"*, %Uint32)* @"$fundef_26" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_26_env_voidp_241", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_26_cloval_242", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_26_env_f_243" = getelementptr inbounds %"$$fundef_26_env_143", %"$$fundef_26_env_143"* %"$$fundef_26_envp_239", i32 0, i32 0
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_f_243"
  %"$$fundef_26_env_g_244" = getelementptr inbounds %"$$fundef_26_env_143", %"$$fundef_26_env_143"* %"$$fundef_26_envp_239", i32 0, i32 1
  %"$g_245" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_245", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_g_244"
  %"$g_246" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_246", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_25"
  %"$$retval_25_247" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_25"
  ret { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_25_247"
}

define internal { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_22"(%"$$fundef_22_env_145"* %0) {
entry:
  %"$retval_23" = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_24_env_144"*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_24" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_23"
  %"$$retval_23_238" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_23"
  ret { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_23_238"
}

define internal { i8*, i8* }* @"$fundef_20"(%"$$fundef_20_env_146"* %0) {
entry:
  %"$retval_21" = alloca { i8*, i8* }*
  %"$dyndisp_table_231_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_231_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_231_salloc_load", i64 48)
  %"$dyndisp_table_231_salloc" = bitcast i8* %"$dyndisp_table_231_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_231" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_231_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_232" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_231", i32 1
  %"$dyndisp_pcast_233" = bitcast { i8*, i8* }* %"$dyndisp_gep_232" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_22_env_145"*)* @"$fundef_22" to { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_233"
  store { i8*, i8* }* %"$dyndisp_table_231", { i8*, i8* }** %"$retval_21"
  %"$$retval_21_234" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_21"
  ret { i8*, i8* }* %"$$retval_21_234"
}

define internal %Uint32 @"$fundef_18"(%"$$fundef_18_env_147"* %0, %TName_List_Int32* %1) {
entry:
  %"$$fundef_18_env_f_186" = getelementptr inbounds %"$$fundef_18_env_147", %"$$fundef_18_env_147"* %0, i32 0, i32 0
  %"$f_envload_187" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_186"
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_187", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_18_env_g_188" = getelementptr inbounds %"$$fundef_18_env_147", %"$$fundef_18_env_147"* %0, i32 0, i32 1
  %"$g_envload_189" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_188"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_189", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_18_env_z_190" = getelementptr inbounds %"$$fundef_18_env_147", %"$$fundef_18_env_147"* %0, i32 0, i32 2
  %"$z_envload_191" = load %Uint32, %Uint32* %"$$fundef_18_env_z_190"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_191", %Uint32* %z
  %"$retval_19" = alloca %Uint32
  %"$l_tag_193" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %1, i32 0, i32 0
  %"$l_tag_194" = load i8, i8* %"$l_tag_193"
  switch i8 %"$l_tag_194", label %"$empty_default_195" [
    i8 0, label %"$Cons_196"
    i8 1, label %"$Nil_224"
  ]

"$Cons_196":                                      ; preds = %entry
  %"$l_197" = bitcast %TName_List_Int32* %1 to %CName_Cons_Int32*
  %"$h_gep_198" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_197", i32 0, i32 1
  %"$h_load_199" = load %Int32, %Int32* %"$h_gep_198"
  %h = alloca %Int32
  store %Int32 %"$h_load_199", %Int32* %h
  %"$t_gep_200" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_197", i32 0, i32 2
  %"$t_load_201" = load %TName_List_Int32*, %TName_List_Int32** %"$t_gep_200"
  %t = alloca %TName_List_Int32*
  store %TName_List_Int32* %"$t_load_201", %TName_List_Int32** %t
  %res = alloca %Uint32
  %"$f_0" = alloca { %Uint32 (i8*, %Int32)*, i8* }
  %"$f_202" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_203" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_202", 0
  %"$f_envptr_204" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_202", 1
  %"$z_205" = load %Uint32, %Uint32* %z
  %"$f_call_206" = call { %Uint32 (i8*, %Int32)*, i8* } %"$f_fptr_203"(i8* %"$f_envptr_204", %Uint32 %"$z_205")
  store { %Uint32 (i8*, %Int32)*, i8* } %"$f_call_206", { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0"
  %"$f_1" = alloca %Uint32
  %"$$f_0_207" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0"
  %"$$f_0_fptr_208" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_207", 0
  %"$$f_0_envptr_209" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_207", 1
  %"$h_210" = load %Int32, %Int32* %h
  %"$$f_0_call_211" = call %Uint32 %"$$f_0_fptr_208"(i8* %"$$f_0_envptr_209", %Int32 %"$h_210")
  store %Uint32 %"$$f_0_call_211", %Uint32* %"$f_1"
  %"$$f_1_212" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_212", %Uint32* %res
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$g_213" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_214" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_213", 0
  %"$g_envptr_215" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_213", 1
  %"$res_216" = load %Uint32, %Uint32* %res
  %"$g_call_217" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_fptr_214"(i8* %"$g_envptr_215", %Uint32 %"$res_216")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_call_217", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_218" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_219" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_218", 0
  %"$$g_2_envptr_220" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_218", 1
  %"$t_221" = load %TName_List_Int32*, %TName_List_Int32** %t
  %"$$g_2_call_222" = call %Uint32 %"$$g_2_fptr_219"(i8* %"$$g_2_envptr_220", %TName_List_Int32* %"$t_221")
  store %Uint32 %"$$g_2_call_222", %Uint32* %"$g_3"
  %"$$g_3_223" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_223", %Uint32* %"$retval_19"
  br label %"$matchsucc_192"

"$Nil_224":                                       ; preds = %entry
  %"$l_225" = bitcast %TName_List_Int32* %1 to %CName_Nil_Int32*
  %"$z_226" = load %Uint32, %Uint32* %z
  store %Uint32 %"$z_226", %Uint32* %"$retval_19"
  br label %"$matchsucc_192"

"$empty_default_195":                             ; preds = %entry
  br label %"$matchsucc_192"

"$matchsucc_192":                                 ; preds = %"$Nil_224", %"$Cons_196", %"$empty_default_195"
  %"$$retval_19_227" = load %Uint32, %Uint32* %"$retval_19"
  ret %Uint32 %"$$retval_19_227"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_16"(%"$$fundef_16_env_148"* %0, %Uint32 %1) {
entry:
  %"$$fundef_16_env_f_172" = getelementptr inbounds %"$$fundef_16_env_148", %"$$fundef_16_env_148"* %0, i32 0, i32 0
  %"$f_envload_173" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_f_172"
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_173", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_16_env_g_174" = getelementptr inbounds %"$$fundef_16_env_148", %"$$fundef_16_env_148"* %0, i32 0, i32 1
  %"$g_envload_175" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_g_174"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_175", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_17" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$$fundef_18_envp_176_load" = load i8*, i8** @_execptr
  %"$$fundef_18_envp_176_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_176_load", i64 40)
  %"$$fundef_18_envp_176" = bitcast i8* %"$$fundef_18_envp_176_salloc" to %"$$fundef_18_env_147"*
  %"$$fundef_18_env_voidp_178" = bitcast %"$$fundef_18_env_147"* %"$$fundef_18_envp_176" to i8*
  %"$$fundef_18_cloval_179" = insertvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } { %Uint32 (i8*, %TName_List_Int32*)* bitcast (%Uint32 (%"$$fundef_18_env_147"*, %TName_List_Int32*)* @"$fundef_18" to %Uint32 (i8*, %TName_List_Int32*)*), i8* undef }, i8* %"$$fundef_18_env_voidp_178", 1
  %"$$fundef_18_env_f_180" = getelementptr inbounds %"$$fundef_18_env_147", %"$$fundef_18_env_147"* %"$$fundef_18_envp_176", i32 0, i32 0
  %"$f_181" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_181", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_180"
  %"$$fundef_18_env_g_182" = getelementptr inbounds %"$$fundef_18_env_147", %"$$fundef_18_env_147"* %"$$fundef_18_envp_176", i32 0, i32 1
  %"$g_183" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_183", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_182"
  %"$$fundef_18_env_z_184" = getelementptr inbounds %"$$fundef_18_env_147", %"$$fundef_18_env_147"* %"$$fundef_18_envp_176", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_18_env_z_184"
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$fundef_18_cloval_179", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_17"
  %"$$retval_17_185" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_17"
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_17_185"
}

define internal { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_14"(%"$$fundef_14_env_149"* %0, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_15" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_16_envp_163_load" = load i8*, i8** @_execptr
  %"$$fundef_16_envp_163_salloc" = call i8* @_salloc(i8* %"$$fundef_16_envp_163_load", i64 32)
  %"$$fundef_16_envp_163" = bitcast i8* %"$$fundef_16_envp_163_salloc" to %"$$fundef_16_env_148"*
  %"$$fundef_16_env_voidp_165" = bitcast %"$$fundef_16_env_148"* %"$$fundef_16_envp_163" to i8*
  %"$$fundef_16_cloval_166" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_16_env_148"*, %Uint32)* @"$fundef_16" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_16_env_voidp_165", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_16_cloval_166", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_16_env_f_167" = getelementptr inbounds %"$$fundef_16_env_148", %"$$fundef_16_env_148"* %"$$fundef_16_envp_163", i32 0, i32 0
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_f_167"
  %"$$fundef_16_env_g_168" = getelementptr inbounds %"$$fundef_16_env_148", %"$$fundef_16_env_148"* %"$$fundef_16_envp_163", i32 0, i32 1
  %"$g_169" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_169", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_g_168"
  %"$g_170" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_170", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_15"
  %"$$retval_15_171" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_15"
  ret { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_15_171"
}

define internal { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_12"(%"$$fundef_12_env_150"* %0) {
entry:
  %"$retval_13" = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_14_env_149"*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_14" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_13"
  %"$$retval_13_162" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_13"
  ret { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_13_162"
}

define internal { i8*, i8* }* @"$fundef_10"(%"$$fundef_10_env_151"* %0) {
entry:
  %"$retval_11" = alloca { i8*, i8* }*
  %"$dyndisp_table_155_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_155_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_155_salloc_load", i64 48)
  %"$dyndisp_table_155_salloc" = bitcast i8* %"$dyndisp_table_155_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_155" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_155_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_156" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_155", i32 1
  %"$dyndisp_pcast_157" = bitcast { i8*, i8* }* %"$dyndisp_gep_156" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_12_env_150"*)* @"$fundef_12" to { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_157"
  store { i8*, i8* }* %"$dyndisp_table_155", { i8*, i8* }** %"$retval_11"
  %"$$retval_11_158" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_11"
  ret { i8*, i8* }* %"$$retval_11_158"
}

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_474"(i8* %0) {
entry:
  %"$dyndisp_table_481_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_481_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_481_salloc_load", i64 48)
  %"$dyndisp_table_481_salloc" = bitcast i8* %"$dyndisp_table_481_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_481" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_481_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_482" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_481", i32 0
  %"$dyndisp_pcast_483" = bitcast { i8*, i8* }* %"$dyndisp_gep_482" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_10_env_151"*)* @"$fundef_10" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_483"
  %"$dyndisp_gep_484" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_481", i32 2
  %"$dyndisp_pcast_485" = bitcast { i8*, i8* }* %"$dyndisp_gep_484" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_20_env_146"*)* @"$fundef_20" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_485"
  store { i8*, i8* }* %"$dyndisp_table_481", { i8*, i8* }** @list_foldl
  %"$$fundef_30_envp_486_load" = load i8*, i8** @_execptr
  %"$$fundef_30_envp_486_salloc" = call i8* @_salloc(i8* %"$$fundef_30_envp_486_load", i64 8)
  %"$$fundef_30_envp_486" = bitcast i8* %"$$fundef_30_envp_486_salloc" to %"$$fundef_30_env_141"*
  %"$$fundef_30_env_voidp_488" = bitcast %"$$fundef_30_env_141"* %"$$fundef_30_envp_486" to i8*
  %"$$fundef_30_cloval_489" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_30_env_141"*)* @"$fundef_30" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_30_env_voidp_488", 1
  %"$$fundef_30_env_list_foldl_490" = getelementptr inbounds %"$$fundef_30_env_141", %"$$fundef_30_env_141"* %"$$fundef_30_envp_486", i32 0, i32 0
  %"$list_foldl_491" = load { i8*, i8* }*, { i8*, i8* }** @list_foldl
  store { i8*, i8* }* %"$list_foldl_491", { i8*, i8* }** %"$$fundef_30_env_list_foldl_490"
  %"$$fundef_36_env_voidp_493" = bitcast %"$$fundef_30_env_141"* %"$$fundef_30_envp_486" to i8*
  %"$$fundef_36_cloval_494" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_36_env_138"*)* @"$fundef_36" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_36_env_voidp_493", 1
  %"$dyndisp_table_495_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_495_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_495_salloc_load", i64 48)
  %"$dyndisp_table_495_salloc" = bitcast i8* %"$dyndisp_table_495_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_495" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_495_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_496" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_495", i32 0
  %"$dyndisp_pcast_497" = bitcast { i8*, i8* }* %"$dyndisp_gep_496" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$$fundef_30_cloval_489", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_497"
  %"$dyndisp_gep_498" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_495", i32 2
  %"$dyndisp_pcast_499" = bitcast { i8*, i8* }* %"$dyndisp_gep_498" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$$fundef_36_cloval_494", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_499"
  store { i8*, i8* }* %"$dyndisp_table_495", { i8*, i8* }** @list_length
  %"$expr_42" = alloca %Uint32
  %t1 = alloca { i8*, i8* }*
  %"$dyndisp_table_506_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_506_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_506_salloc_load", i64 48)
  %"$dyndisp_table_506_salloc" = bitcast i8* %"$dyndisp_table_506_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_506" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_506_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_507" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_506", i32 0
  %"$dyndisp_pcast_508" = bitcast { i8*, i8* }* %"$dyndisp_gep_507" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_43_env_135"*)* @"$fundef_43" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_508"
  %"$dyndisp_gep_509" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_506", i32 2
  %"$dyndisp_pcast_510" = bitcast { i8*, i8* }* %"$dyndisp_gep_509" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_47_env_133"*)* @"$fundef_47" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_510"
  store { i8*, i8* }* %"$dyndisp_table_506", { i8*, i8* }** %t1
  %t2 = alloca { i8*, i8* }*
  %"$dyndisp_table_517_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_517_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_517_salloc_load", i64 48)
  %"$dyndisp_table_517_salloc" = bitcast i8* %"$dyndisp_table_517_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_517" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_517_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_518" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_517", i32 0
  %"$dyndisp_pcast_519" = bitcast { i8*, i8* }* %"$dyndisp_gep_518" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_51_env_131"*)* @"$fundef_51" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_519"
  %"$dyndisp_gep_520" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_517", i32 2
  %"$dyndisp_pcast_521" = bitcast { i8*, i8* }* %"$dyndisp_gep_520" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_55_env_129"*)* @"$fundef_55" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_521"
  store { i8*, i8* }* %"$dyndisp_table_517", { i8*, i8* }** %t2
  %some_bool = alloca %TName_Bool*
  %"$adtval_522_load" = load i8*, i8** @_execptr
  %"$adtval_522_salloc" = call i8* @_salloc(i8* %"$adtval_522_load", i64 1)
  %"$adtval_522" = bitcast i8* %"$adtval_522_salloc" to %CName_True*
  %"$adtgep_523" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_522", i32 0, i32 0
  store i8 0, i8* %"$adtgep_523"
  %"$adtptr_524" = bitcast %CName_True* %"$adtval_522" to %TName_Bool*
  store %TName_Bool* %"$adtptr_524", %TName_Bool** %some_bool
  %f = alloca { i8*, i8* }*
  %"$some_bool_526" = load %TName_Bool*, %TName_Bool** %some_bool
  %"$some_bool_tag_527" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool_526", i32 0, i32 0
  %"$some_bool_tag_528" = load i8, i8* %"$some_bool_tag_527"
  switch i8 %"$some_bool_tag_528", label %"$empty_default_529" [
    i8 0, label %"$True_530"
    i8 1, label %"$False_533"
  ]

"$True_530":                                      ; preds = %entry
  %"$some_bool_531" = bitcast %TName_Bool* %"$some_bool_526" to %CName_True*
  %"$t2_532" = load { i8*, i8* }*, { i8*, i8* }** %t2
  store { i8*, i8* }* %"$t2_532", { i8*, i8* }** %f
  br label %"$matchsucc_525"

"$False_533":                                     ; preds = %entry
  %"$some_bool_534" = bitcast %TName_Bool* %"$some_bool_526" to %CName_False*
  %"$t1_535" = load { i8*, i8* }*, { i8*, i8* }** %t1
  store { i8*, i8* }* %"$t1_535", { i8*, i8* }** %f
  br label %"$matchsucc_525"

"$empty_default_529":                             ; preds = %entry
  br label %"$matchsucc_525"

"$matchsucc_525":                                 ; preds = %"$False_533", %"$True_530", %"$empty_default_529"
  %some_bool2 = alloca %TName_Bool*
  %"$adtval_536_load" = load i8*, i8** @_execptr
  %"$adtval_536_salloc" = call i8* @_salloc(i8* %"$adtval_536_load", i64 1)
  %"$adtval_536" = bitcast i8* %"$adtval_536_salloc" to %CName_False*
  %"$adtgep_537" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_536", i32 0, i32 0
  store i8 1, i8* %"$adtgep_537"
  %"$adtptr_538" = bitcast %CName_False* %"$adtval_536" to %TName_Bool*
  store %TName_Bool* %"$adtptr_538", %TName_Bool** %some_bool2
  %"$some_bool2_540" = load %TName_Bool*, %TName_Bool** %some_bool2
  %"$some_bool2_tag_541" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool2_540", i32 0, i32 0
  %"$some_bool2_tag_542" = load i8, i8* %"$some_bool2_tag_541"
  switch i8 %"$some_bool2_tag_542", label %"$empty_default_543" [
    i8 0, label %"$True_544"
    i8 1, label %"$False_572"
  ]

"$True_544":                                      ; preds = %"$matchsucc_525"
  %"$some_bool2_545" = bitcast %TName_Bool* %"$some_bool2_540" to %CName_True*
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$f_546" = load { i8*, i8* }*, { i8*, i8* }** %f
  %"$f_547" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_546", i32 0
  %"$f_548" = bitcast { i8*, i8* }* %"$f_547" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_549" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_548"
  %"$f_fptr_550" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_549", 0
  %"$f_envptr_551" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_549", 1
  %"$f_call_552" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_550"(i8* %"$f_envptr_551")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_552", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1
  %len = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$list_length_553" = load { i8*, i8* }*, { i8*, i8* }** @list_length
  %"$list_length_554" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_553", i32 0
  %"$list_length_555" = bitcast { i8*, i8* }* %"$list_length_554" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$list_length_556" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$list_length_555"
  %"$list_length_fptr_557" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$list_length_556", 0
  %"$list_length_envptr_558" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$list_length_556", 1
  %"$list_length_call_559" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$list_length_fptr_557"(i8* %"$list_length_envptr_558")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$list_length_call_559", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len
  %one = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %one
  %f1l = alloca %TName_List_Int32*
  %"$f1_6" = alloca %TName_List_Int32*
  %"$f1_560" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1
  %"$f1_fptr_561" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_560", 0
  %"$f1_envptr_562" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_560", 1
  %"$one_563" = load %Int32, %Int32* %one
  %"$f1_call_564" = call %TName_List_Int32* %"$f1_fptr_561"(i8* %"$f1_envptr_562", %Int32 %"$one_563")
  store %TName_List_Int32* %"$f1_call_564", %TName_List_Int32** %"$f1_6"
  %"$$f1_6_565" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_6"
  store %TName_List_Int32* %"$$f1_6_565", %TName_List_Int32** %f1l
  %"$len_7" = alloca %Uint32
  %"$len_566" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len
  %"$len_fptr_567" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_566", 0
  %"$len_envptr_568" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_566", 1
  %"$f1l_569" = load %TName_List_Int32*, %TName_List_Int32** %f1l
  %"$len_call_570" = call %Uint32 %"$len_fptr_567"(i8* %"$len_envptr_568", %TName_List_Int32* %"$f1l_569")
  store %Uint32 %"$len_call_570", %Uint32* %"$len_7"
  %"$$len_7_571" = load %Uint32, %Uint32* %"$len_7"
  store %Uint32 %"$$len_7_571", %Uint32* %"$expr_42"
  br label %"$matchsucc_539"

"$False_572":                                     ; preds = %"$matchsucc_525"
  %"$some_bool2_573" = bitcast %TName_Bool* %"$some_bool2_540" to %CName_False*
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$f_574" = load { i8*, i8* }*, { i8*, i8* }** %f
  %"$f_575" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_574", i32 2
  %"$f_576" = bitcast { i8*, i8* }* %"$f_575" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_577" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_576"
  %"$f_fptr_578" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_577", 0
  %"$f_envptr_579" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_577", 1
  %"$f_call_580" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_578"(i8* %"$f_envptr_579")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_580", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2
  %len1 = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$list_length_581" = load { i8*, i8* }*, { i8*, i8* }** @list_length
  %"$list_length_582" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_581", i32 2
  %"$list_length_583" = bitcast { i8*, i8* }* %"$list_length_582" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$list_length_584" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$list_length_583"
  %"$list_length_fptr_585" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$list_length_584", 0
  %"$list_length_envptr_586" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$list_length_584", 1
  %"$list_length_call_587" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$list_length_fptr_585"(i8* %"$list_length_envptr_586")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$list_length_call_587", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1
  %one2 = alloca %Int64
  store %Int64 { i64 1 }, %Int64* %one2
  %f2l = alloca %TName_List_Int64*
  %"$f2_8" = alloca %TName_List_Int64*
  %"$f2_588" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2
  %"$f2_fptr_589" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_588", 0
  %"$f2_envptr_590" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_588", 1
  %"$one_591" = load %Int64, %Int64* %one2
  %"$f2_call_592" = call %TName_List_Int64* %"$f2_fptr_589"(i8* %"$f2_envptr_590", %Int64 %"$one_591")
  store %TName_List_Int64* %"$f2_call_592", %TName_List_Int64** %"$f2_8"
  %"$$f2_8_593" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_8"
  store %TName_List_Int64* %"$$f2_8_593", %TName_List_Int64** %f2l
  %"$len_9" = alloca %Uint32
  %"$len_594" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1
  %"$len_fptr_595" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_594", 0
  %"$len_envptr_596" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_594", 1
  %"$f2l_597" = load %TName_List_Int64*, %TName_List_Int64** %f2l
  %"$len_call_598" = call %Uint32 %"$len_fptr_595"(i8* %"$len_envptr_596", %TName_List_Int64* %"$f2l_597")
  store %Uint32 %"$len_call_598", %Uint32* %"$len_9"
  %"$$len_9_599" = load %Uint32, %Uint32* %"$len_9"
  store %Uint32 %"$$len_9_599", %Uint32* %"$expr_42"
  br label %"$matchsucc_539"

"$empty_default_543":                             ; preds = %"$matchsucc_525"
  br label %"$matchsucc_539"

"$matchsucc_539":                                 ; preds = %"$False_572", %"$True_544", %"$empty_default_543"
  %"$$expr_42_600" = load %Uint32, %Uint32* %"$expr_42"
  ret %Uint32 %"$$expr_42_600"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_601" = call %Uint32 @"$scilla_expr_474"(i8* null)
  %"$pval_602" = alloca %Uint32
  %"$memvoidcast_603" = bitcast %Uint32* %"$pval_602" to i8*
  store %Uint32 %"$exprval_601", %Uint32* %"$pval_602"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_63", i8* %"$memvoidcast_603")
  ret void
}
