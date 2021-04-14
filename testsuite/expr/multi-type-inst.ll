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
target triple = "x86_64-unknown-linux-gnu"

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
@_gasrem = global i64 0
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
@ListUtils.list_length = global { i8*, i8* }* null

define internal %TName_List_Int64* @"$fundef_57"(%"$$fundef_57_env_128"* %0, %Int64 %1) !dbg !4 {
entry:
  %"$retval_58" = alloca %TName_List_Int64*, align 8
  %"$gasrem_733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_734" = icmp ugt i64 1, %"$gasrem_733"
  br i1 %"$gascmp_734", label %"$out_of_gas_735", label %"$have_gas_736"

"$out_of_gas_735":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_736"

"$have_gas_736":                                  ; preds = %"$out_of_gas_735", %entry
  %"$consume_737" = sub i64 %"$gasrem_733", 1
  store i64 %"$consume_737", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  %"$gasrem_738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_739" = icmp ugt i64 1, %"$gasrem_738"
  br i1 %"$gascmp_739", label %"$out_of_gas_740", label %"$have_gas_741"

"$out_of_gas_740":                                ; preds = %"$have_gas_736"
  call void @_out_of_gas()
  br label %"$have_gas_741"

"$have_gas_741":                                  ; preds = %"$out_of_gas_740", %"$have_gas_736"
  %"$consume_742" = sub i64 %"$gasrem_738", 1
  store i64 %"$consume_742", i64* @_gasrem, align 8
  %"$adtval_743_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_743_salloc" = call i8* @_salloc(i8* %"$adtval_743_load", i64 1)
  %"$adtval_743" = bitcast i8* %"$adtval_743_salloc" to %CName_Nil_Int64*
  %"$adtgep_744" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_743", i32 0, i32 0
  store i8 1, i8* %"$adtgep_744", align 1
  %"$adtptr_745" = bitcast %CName_Nil_Int64* %"$adtval_743" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_745", %TName_List_Int64** %an, align 8, !dbg !8
  %"$gasrem_746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_747" = icmp ugt i64 1, %"$gasrem_746"
  br i1 %"$gascmp_747", label %"$out_of_gas_748", label %"$have_gas_749"

"$out_of_gas_748":                                ; preds = %"$have_gas_741"
  call void @_out_of_gas()
  br label %"$have_gas_749"

"$have_gas_749":                                  ; preds = %"$out_of_gas_748", %"$have_gas_741"
  %"$consume_750" = sub i64 %"$gasrem_746", 1
  store i64 %"$consume_750", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int64*, align 8
  %"$gasrem_751" = load i64, i64* @_gasrem, align 8
  %"$gascmp_752" = icmp ugt i64 1, %"$gasrem_751"
  br i1 %"$gascmp_752", label %"$out_of_gas_753", label %"$have_gas_754"

"$out_of_gas_753":                                ; preds = %"$have_gas_749"
  call void @_out_of_gas()
  br label %"$have_gas_754"

"$have_gas_754":                                  ; preds = %"$out_of_gas_753", %"$have_gas_749"
  %"$consume_755" = sub i64 %"$gasrem_751", 1
  store i64 %"$consume_755", i64* @_gasrem, align 8
  %"$an_756" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_757_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_757_salloc" = call i8* @_salloc(i8* %"$adtval_757_load", i64 17)
  %"$adtval_757" = bitcast i8* %"$adtval_757_salloc" to %CName_Cons_Int64*
  %"$adtgep_758" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_757", i32 0, i32 0
  store i8 0, i8* %"$adtgep_758", align 1
  %"$adtgep_759" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_757", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_759", align 8
  %"$adtgep_760" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_757", i32 0, i32 2
  store %TName_List_Int64* %"$an_756", %TName_List_Int64** %"$adtgep_760", align 8
  %"$adtptr_761" = bitcast %CName_Cons_Int64* %"$adtval_757" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_761", %TName_List_Int64** %a1, align 8, !dbg !9
  %"$gasrem_762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_763" = icmp ugt i64 1, %"$gasrem_762"
  br i1 %"$gascmp_763", label %"$out_of_gas_764", label %"$have_gas_765"

"$out_of_gas_764":                                ; preds = %"$have_gas_754"
  call void @_out_of_gas()
  br label %"$have_gas_765"

"$have_gas_765":                                  ; preds = %"$out_of_gas_764", %"$have_gas_754"
  %"$consume_766" = sub i64 %"$gasrem_762", 1
  store i64 %"$consume_766", i64* @_gasrem, align 8
  %"$a1_767" = load %TName_List_Int64*, %TName_List_Int64** %a1, align 8
  %"$adtval_768_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_768_salloc" = call i8* @_salloc(i8* %"$adtval_768_load", i64 17)
  %"$adtval_768" = bitcast i8* %"$adtval_768_salloc" to %CName_Cons_Int64*
  %"$adtgep_769" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_768", i32 0, i32 0
  store i8 0, i8* %"$adtgep_769", align 1
  %"$adtgep_770" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_768", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_770", align 8
  %"$adtgep_771" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_768", i32 0, i32 2
  store %TName_List_Int64* %"$a1_767", %TName_List_Int64** %"$adtgep_771", align 8
  %"$adtptr_772" = bitcast %CName_Cons_Int64* %"$adtval_768" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_772", %TName_List_Int64** %"$retval_58", align 8, !dbg !10
  %"$$retval_58_773" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_58", align 8
  ret %TName_List_Int64* %"$$retval_58_773"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_55"(%"$$fundef_55_env_129"* %0) !dbg !11 {
entry:
  %"$retval_56" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_725" = icmp ugt i64 1, %"$gasrem_724"
  br i1 %"$gascmp_725", label %"$out_of_gas_726", label %"$have_gas_727"

"$out_of_gas_726":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_727"

"$have_gas_727":                                  ; preds = %"$out_of_gas_726", %entry
  %"$consume_728" = sub i64 %"$gasrem_724", 1
  store i64 %"$consume_728", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_57_env_128"*, %Int64)* @"$fundef_57" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_56", align 8, !dbg !12
  %"$$retval_56_732" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_56", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_56_732"
}

define internal %TName_List_Int32* @"$fundef_53"(%"$$fundef_53_env_130"* %0, %Int32 %1) !dbg !13 {
entry:
  %"$retval_54" = alloca %TName_List_Int32*, align 8
  %"$gasrem_683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_684" = icmp ugt i64 1, %"$gasrem_683"
  br i1 %"$gascmp_684", label %"$out_of_gas_685", label %"$have_gas_686"

"$out_of_gas_685":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_686"

"$have_gas_686":                                  ; preds = %"$out_of_gas_685", %entry
  %"$consume_687" = sub i64 %"$gasrem_683", 1
  store i64 %"$consume_687", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  %"$gasrem_688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_689" = icmp ugt i64 1, %"$gasrem_688"
  br i1 %"$gascmp_689", label %"$out_of_gas_690", label %"$have_gas_691"

"$out_of_gas_690":                                ; preds = %"$have_gas_686"
  call void @_out_of_gas()
  br label %"$have_gas_691"

"$have_gas_691":                                  ; preds = %"$out_of_gas_690", %"$have_gas_686"
  %"$consume_692" = sub i64 %"$gasrem_688", 1
  store i64 %"$consume_692", i64* @_gasrem, align 8
  %"$adtval_693_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_693_salloc" = call i8* @_salloc(i8* %"$adtval_693_load", i64 1)
  %"$adtval_693" = bitcast i8* %"$adtval_693_salloc" to %CName_Nil_Int32*
  %"$adtgep_694" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_693", i32 0, i32 0
  store i8 1, i8* %"$adtgep_694", align 1
  %"$adtptr_695" = bitcast %CName_Nil_Int32* %"$adtval_693" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_695", %TName_List_Int32** %an, align 8, !dbg !14
  %"$gasrem_696" = load i64, i64* @_gasrem, align 8
  %"$gascmp_697" = icmp ugt i64 1, %"$gasrem_696"
  br i1 %"$gascmp_697", label %"$out_of_gas_698", label %"$have_gas_699"

"$out_of_gas_698":                                ; preds = %"$have_gas_691"
  call void @_out_of_gas()
  br label %"$have_gas_699"

"$have_gas_699":                                  ; preds = %"$out_of_gas_698", %"$have_gas_691"
  %"$consume_700" = sub i64 %"$gasrem_696", 1
  store i64 %"$consume_700", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int32*, align 8
  %"$gasrem_701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_702" = icmp ugt i64 1, %"$gasrem_701"
  br i1 %"$gascmp_702", label %"$out_of_gas_703", label %"$have_gas_704"

"$out_of_gas_703":                                ; preds = %"$have_gas_699"
  call void @_out_of_gas()
  br label %"$have_gas_704"

"$have_gas_704":                                  ; preds = %"$out_of_gas_703", %"$have_gas_699"
  %"$consume_705" = sub i64 %"$gasrem_701", 1
  store i64 %"$consume_705", i64* @_gasrem, align 8
  %"$an_706" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_707_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_707_salloc" = call i8* @_salloc(i8* %"$adtval_707_load", i64 13)
  %"$adtval_707" = bitcast i8* %"$adtval_707_salloc" to %CName_Cons_Int32*
  %"$adtgep_708" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_707", i32 0, i32 0
  store i8 0, i8* %"$adtgep_708", align 1
  %"$adtgep_709" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_707", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_709", align 4
  %"$adtgep_710" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_707", i32 0, i32 2
  store %TName_List_Int32* %"$an_706", %TName_List_Int32** %"$adtgep_710", align 8
  %"$adtptr_711" = bitcast %CName_Cons_Int32* %"$adtval_707" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_711", %TName_List_Int32** %a1, align 8, !dbg !15
  %"$gasrem_712" = load i64, i64* @_gasrem, align 8
  %"$gascmp_713" = icmp ugt i64 1, %"$gasrem_712"
  br i1 %"$gascmp_713", label %"$out_of_gas_714", label %"$have_gas_715"

"$out_of_gas_714":                                ; preds = %"$have_gas_704"
  call void @_out_of_gas()
  br label %"$have_gas_715"

"$have_gas_715":                                  ; preds = %"$out_of_gas_714", %"$have_gas_704"
  %"$consume_716" = sub i64 %"$gasrem_712", 1
  store i64 %"$consume_716", i64* @_gasrem, align 8
  %"$a1_717" = load %TName_List_Int32*, %TName_List_Int32** %a1, align 8
  %"$adtval_718_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_718_salloc" = call i8* @_salloc(i8* %"$adtval_718_load", i64 13)
  %"$adtval_718" = bitcast i8* %"$adtval_718_salloc" to %CName_Cons_Int32*
  %"$adtgep_719" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_718", i32 0, i32 0
  store i8 0, i8* %"$adtgep_719", align 1
  %"$adtgep_720" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_718", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_720", align 4
  %"$adtgep_721" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_718", i32 0, i32 2
  store %TName_List_Int32* %"$a1_717", %TName_List_Int32** %"$adtgep_721", align 8
  %"$adtptr_722" = bitcast %CName_Cons_Int32* %"$adtval_718" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_722", %TName_List_Int32** %"$retval_54", align 8, !dbg !16
  %"$$retval_54_723" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_54", align 8
  ret %TName_List_Int32* %"$$retval_54_723"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_51"(%"$$fundef_51_env_131"* %0) !dbg !17 {
entry:
  %"$retval_52" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_674" = load i64, i64* @_gasrem, align 8
  %"$gascmp_675" = icmp ugt i64 1, %"$gasrem_674"
  br i1 %"$gascmp_675", label %"$out_of_gas_676", label %"$have_gas_677"

"$out_of_gas_676":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_677"

"$have_gas_677":                                  ; preds = %"$out_of_gas_676", %entry
  %"$consume_678" = sub i64 %"$gasrem_674", 1
  store i64 %"$consume_678", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_53_env_130"*, %Int32)* @"$fundef_53" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_52", align 8, !dbg !18
  %"$$retval_52_682" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_52", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_52_682"
}

define internal %TName_List_Int64* @"$fundef_49"(%"$$fundef_49_env_132"* %0, %Int64 %1) !dbg !19 {
entry:
  %"$retval_50" = alloca %TName_List_Int64*, align 8
  %"$gasrem_649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_650" = icmp ugt i64 1, %"$gasrem_649"
  br i1 %"$gascmp_650", label %"$out_of_gas_651", label %"$have_gas_652"

"$out_of_gas_651":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_652"

"$have_gas_652":                                  ; preds = %"$out_of_gas_651", %entry
  %"$consume_653" = sub i64 %"$gasrem_649", 1
  store i64 %"$consume_653", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  %"$gasrem_654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_655" = icmp ugt i64 1, %"$gasrem_654"
  br i1 %"$gascmp_655", label %"$out_of_gas_656", label %"$have_gas_657"

"$out_of_gas_656":                                ; preds = %"$have_gas_652"
  call void @_out_of_gas()
  br label %"$have_gas_657"

"$have_gas_657":                                  ; preds = %"$out_of_gas_656", %"$have_gas_652"
  %"$consume_658" = sub i64 %"$gasrem_654", 1
  store i64 %"$consume_658", i64* @_gasrem, align 8
  %"$adtval_659_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_659_salloc" = call i8* @_salloc(i8* %"$adtval_659_load", i64 1)
  %"$adtval_659" = bitcast i8* %"$adtval_659_salloc" to %CName_Nil_Int64*
  %"$adtgep_660" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_659", i32 0, i32 0
  store i8 1, i8* %"$adtgep_660", align 1
  %"$adtptr_661" = bitcast %CName_Nil_Int64* %"$adtval_659" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_661", %TName_List_Int64** %an, align 8, !dbg !20
  %"$gasrem_662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_663" = icmp ugt i64 1, %"$gasrem_662"
  br i1 %"$gascmp_663", label %"$out_of_gas_664", label %"$have_gas_665"

"$out_of_gas_664":                                ; preds = %"$have_gas_657"
  call void @_out_of_gas()
  br label %"$have_gas_665"

"$have_gas_665":                                  ; preds = %"$out_of_gas_664", %"$have_gas_657"
  %"$consume_666" = sub i64 %"$gasrem_662", 1
  store i64 %"$consume_666", i64* @_gasrem, align 8
  %"$an_667" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_668_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_668_salloc" = call i8* @_salloc(i8* %"$adtval_668_load", i64 17)
  %"$adtval_668" = bitcast i8* %"$adtval_668_salloc" to %CName_Cons_Int64*
  %"$adtgep_669" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_668", i32 0, i32 0
  store i8 0, i8* %"$adtgep_669", align 1
  %"$adtgep_670" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_668", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_670", align 8
  %"$adtgep_671" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_668", i32 0, i32 2
  store %TName_List_Int64* %"$an_667", %TName_List_Int64** %"$adtgep_671", align 8
  %"$adtptr_672" = bitcast %CName_Cons_Int64* %"$adtval_668" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_672", %TName_List_Int64** %"$retval_50", align 8, !dbg !21
  %"$$retval_50_673" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_50", align 8
  ret %TName_List_Int64* %"$$retval_50_673"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_47"(%"$$fundef_47_env_133"* %0) !dbg !22 {
entry:
  %"$retval_48" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_641" = icmp ugt i64 1, %"$gasrem_640"
  br i1 %"$gascmp_641", label %"$out_of_gas_642", label %"$have_gas_643"

"$out_of_gas_642":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_643"

"$have_gas_643":                                  ; preds = %"$out_of_gas_642", %entry
  %"$consume_644" = sub i64 %"$gasrem_640", 1
  store i64 %"$consume_644", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_49_env_132"*, %Int64)* @"$fundef_49" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_48", align 8, !dbg !23
  %"$$retval_48_648" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_48", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_48_648"
}

define internal %TName_List_Int32* @"$fundef_45"(%"$$fundef_45_env_134"* %0, %Int32 %1) !dbg !24 {
entry:
  %"$retval_46" = alloca %TName_List_Int32*, align 8
  %"$gasrem_615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_616" = icmp ugt i64 1, %"$gasrem_615"
  br i1 %"$gascmp_616", label %"$out_of_gas_617", label %"$have_gas_618"

"$out_of_gas_617":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_618"

"$have_gas_618":                                  ; preds = %"$out_of_gas_617", %entry
  %"$consume_619" = sub i64 %"$gasrem_615", 1
  store i64 %"$consume_619", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  %"$gasrem_620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_621" = icmp ugt i64 1, %"$gasrem_620"
  br i1 %"$gascmp_621", label %"$out_of_gas_622", label %"$have_gas_623"

"$out_of_gas_622":                                ; preds = %"$have_gas_618"
  call void @_out_of_gas()
  br label %"$have_gas_623"

"$have_gas_623":                                  ; preds = %"$out_of_gas_622", %"$have_gas_618"
  %"$consume_624" = sub i64 %"$gasrem_620", 1
  store i64 %"$consume_624", i64* @_gasrem, align 8
  %"$adtval_625_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_625_salloc" = call i8* @_salloc(i8* %"$adtval_625_load", i64 1)
  %"$adtval_625" = bitcast i8* %"$adtval_625_salloc" to %CName_Nil_Int32*
  %"$adtgep_626" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_625", i32 0, i32 0
  store i8 1, i8* %"$adtgep_626", align 1
  %"$adtptr_627" = bitcast %CName_Nil_Int32* %"$adtval_625" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_627", %TName_List_Int32** %an, align 8, !dbg !25
  %"$gasrem_628" = load i64, i64* @_gasrem, align 8
  %"$gascmp_629" = icmp ugt i64 1, %"$gasrem_628"
  br i1 %"$gascmp_629", label %"$out_of_gas_630", label %"$have_gas_631"

"$out_of_gas_630":                                ; preds = %"$have_gas_623"
  call void @_out_of_gas()
  br label %"$have_gas_631"

"$have_gas_631":                                  ; preds = %"$out_of_gas_630", %"$have_gas_623"
  %"$consume_632" = sub i64 %"$gasrem_628", 1
  store i64 %"$consume_632", i64* @_gasrem, align 8
  %"$an_633" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_634_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_634_salloc" = call i8* @_salloc(i8* %"$adtval_634_load", i64 13)
  %"$adtval_634" = bitcast i8* %"$adtval_634_salloc" to %CName_Cons_Int32*
  %"$adtgep_635" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_634", i32 0, i32 0
  store i8 0, i8* %"$adtgep_635", align 1
  %"$adtgep_636" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_634", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_636", align 4
  %"$adtgep_637" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_634", i32 0, i32 2
  store %TName_List_Int32* %"$an_633", %TName_List_Int32** %"$adtgep_637", align 8
  %"$adtptr_638" = bitcast %CName_Cons_Int32* %"$adtval_634" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_638", %TName_List_Int32** %"$retval_46", align 8, !dbg !26
  %"$$retval_46_639" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_46", align 8
  ret %TName_List_Int32* %"$$retval_46_639"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_43"(%"$$fundef_43_env_135"* %0) !dbg !27 {
entry:
  %"$retval_44" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_607" = icmp ugt i64 1, %"$gasrem_606"
  br i1 %"$gascmp_607", label %"$out_of_gas_608", label %"$have_gas_609"

"$out_of_gas_608":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_609"

"$have_gas_609":                                  ; preds = %"$out_of_gas_608", %entry
  %"$consume_610" = sub i64 %"$gasrem_606", 1
  store i64 %"$consume_610", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_45_env_134"*, %Int32)* @"$fundef_45" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_44", align 8, !dbg !28
  %"$$retval_44_614" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_44", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_44_614"
}

define internal %Uint32 @"$fundef_40"(%"$$fundef_40_env_136"* %0, %Int64 %1) !dbg !29 {
entry:
  %"$$fundef_40_env_one_598" = getelementptr inbounds %"$$fundef_40_env_136", %"$$fundef_40_env_136"* %0, i32 0, i32 0
  %"$one_envload_599" = load %Uint32, %Uint32* %"$$fundef_40_env_one_598", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_599", %Uint32* %one, align 4
  %"$$fundef_40_env_z_600" = getelementptr inbounds %"$$fundef_40_env_136", %"$$fundef_40_env_136"* %0, i32 0, i32 1
  %"$z_envload_601" = load %Uint32, %Uint32* %"$$fundef_40_env_z_600", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_601", %Uint32* %z, align 4
  %"$retval_41" = alloca %Uint32, align 8
  %"$one_602" = load %Uint32, %Uint32* %one, align 4
  %"$z_603" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_604" = call %Uint32 @_add_Uint32(%Uint32 %"$one_602", %Uint32 %"$z_603")
  store %Uint32 %"$add_call_604", %Uint32* %"$retval_41", align 4, !dbg !30
  %"$$retval_41_605" = load %Uint32, %Uint32* %"$retval_41", align 4
  ret %Uint32 %"$$retval_41_605"
}

define internal { %Uint32 (i8*, %Int64)*, i8* } @"$fundef_38"(%"$$fundef_38_env_137"* %0, %Uint32 %1) !dbg !31 {
entry:
  %"$$fundef_38_env_one_583" = getelementptr inbounds %"$$fundef_38_env_137", %"$$fundef_38_env_137"* %0, i32 0, i32 0
  %"$one_envload_584" = load %Uint32, %Uint32* %"$$fundef_38_env_one_583", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_584", %Uint32* %one, align 4
  %"$retval_39" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_586" = icmp ugt i64 1, %"$gasrem_585"
  br i1 %"$gascmp_586", label %"$out_of_gas_587", label %"$have_gas_588"

"$out_of_gas_587":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_588"

"$have_gas_588":                                  ; preds = %"$out_of_gas_587", %entry
  %"$consume_589" = sub i64 %"$gasrem_585", 1
  store i64 %"$consume_589", i64* @_gasrem, align 8
  %"$$fundef_40_envp_590_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_40_envp_590_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_590_load", i64 8)
  %"$$fundef_40_envp_590" = bitcast i8* %"$$fundef_40_envp_590_salloc" to %"$$fundef_40_env_136"*
  %"$$fundef_40_env_voidp_592" = bitcast %"$$fundef_40_env_136"* %"$$fundef_40_envp_590" to i8*
  %"$$fundef_40_cloval_593" = insertvalue { %Uint32 (i8*, %Int64)*, i8* } { %Uint32 (i8*, %Int64)* bitcast (%Uint32 (%"$$fundef_40_env_136"*, %Int64)* @"$fundef_40" to %Uint32 (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_40_env_voidp_592", 1
  %"$$fundef_40_env_one_594" = getelementptr inbounds %"$$fundef_40_env_136", %"$$fundef_40_env_136"* %"$$fundef_40_envp_590", i32 0, i32 0
  %"$one_595" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_595", %Uint32* %"$$fundef_40_env_one_594", align 4
  %"$$fundef_40_env_z_596" = getelementptr inbounds %"$$fundef_40_env_136", %"$$fundef_40_env_136"* %"$$fundef_40_envp_590", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_40_env_z_596", align 4
  store { %Uint32 (i8*, %Int64)*, i8* } %"$$fundef_40_cloval_593", { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_39", align 8, !dbg !32
  %"$$retval_39_597" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_39", align 8
  ret { %Uint32 (i8*, %Int64)*, i8* } %"$$retval_39_597"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_36"(%"$$fundef_36_env_138"* %0) !dbg !33 {
entry:
  %"$$fundef_36_env_list_foldl_505" = getelementptr inbounds %"$$fundef_36_env_138", %"$$fundef_36_env_138"* %0, i32 0, i32 0
  %"$list_foldl_envload_506" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_36_env_list_foldl_505", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_506", { i8*, i8* }** %list_foldl, align 8
  %"$retval_37" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_507" = load i64, i64* @_gasrem, align 8
  %"$gascmp_508" = icmp ugt i64 1, %"$gasrem_507"
  br i1 %"$gascmp_508", label %"$out_of_gas_509", label %"$have_gas_510"

"$out_of_gas_509":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_510"

"$have_gas_510":                                  ; preds = %"$out_of_gas_509", %entry
  %"$consume_511" = sub i64 %"$gasrem_507", 1
  store i64 %"$consume_511", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 1, %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %"$have_gas_510"
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %"$have_gas_510"
  %"$consume_516" = sub i64 %"$gasrem_512", 1
  store i64 %"$consume_516", i64* @_gasrem, align 8
  %"$list_foldl_517" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_518" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_517", i32 2
  %"$list_foldl_519" = bitcast { i8*, i8* }* %"$list_foldl_518" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_520" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_519", align 8
  %"$list_foldl_fptr_521" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_520", 0
  %"$list_foldl_envptr_522" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_520", 1
  %"$list_foldl_call_523" = call { i8*, i8* }* %"$list_foldl_fptr_521"(i8* %"$list_foldl_envptr_522"), !dbg !34
  %"$list_foldl_524" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_523", i32 1
  %"$list_foldl_525" = bitcast { i8*, i8* }* %"$list_foldl_524" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_526" = load { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_525", align 8
  %"$list_foldl_fptr_527" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_526", 0
  %"$list_foldl_envptr_528" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_526", 1
  %"$list_foldl_call_529" = call { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_527"(i8* %"$list_foldl_envptr_528"), !dbg !34
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_529", { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8, !dbg !35
  %"$gasrem_530" = load i64, i64* @_gasrem, align 8
  %"$gascmp_531" = icmp ugt i64 1, %"$gasrem_530"
  br i1 %"$gascmp_531", label %"$out_of_gas_532", label %"$have_gas_533"

"$out_of_gas_532":                                ; preds = %"$have_gas_515"
  call void @_out_of_gas()
  br label %"$have_gas_533"

"$have_gas_533":                                  ; preds = %"$out_of_gas_532", %"$have_gas_515"
  %"$consume_534" = sub i64 %"$gasrem_530", 1
  store i64 %"$consume_534", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_535" = load i64, i64* @_gasrem, align 8
  %"$gascmp_536" = icmp ugt i64 1, %"$gasrem_535"
  br i1 %"$gascmp_536", label %"$out_of_gas_537", label %"$have_gas_538"

"$out_of_gas_537":                                ; preds = %"$have_gas_533"
  call void @_out_of_gas()
  br label %"$have_gas_538"

"$have_gas_538":                                  ; preds = %"$out_of_gas_537", %"$have_gas_533"
  %"$consume_539" = sub i64 %"$gasrem_535", 1
  store i64 %"$consume_539", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !36
  %"$gasrem_540" = load i64, i64* @_gasrem, align 8
  %"$gascmp_541" = icmp ugt i64 1, %"$gasrem_540"
  br i1 %"$gascmp_541", label %"$out_of_gas_542", label %"$have_gas_543"

"$out_of_gas_542":                                ; preds = %"$have_gas_538"
  call void @_out_of_gas()
  br label %"$have_gas_543"

"$have_gas_543":                                  ; preds = %"$out_of_gas_542", %"$have_gas_538"
  %"$consume_544" = sub i64 %"$gasrem_540", 1
  store i64 %"$consume_544", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_546" = icmp ugt i64 1, %"$gasrem_545"
  br i1 %"$gascmp_546", label %"$out_of_gas_547", label %"$have_gas_548"

"$out_of_gas_547":                                ; preds = %"$have_gas_543"
  call void @_out_of_gas()
  br label %"$have_gas_548"

"$have_gas_548":                                  ; preds = %"$out_of_gas_547", %"$have_gas_543"
  %"$consume_549" = sub i64 %"$gasrem_545", 1
  store i64 %"$consume_549", i64* @_gasrem, align 8
  %"$$fundef_38_envp_550_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_38_envp_550_salloc" = call i8* @_salloc(i8* %"$$fundef_38_envp_550_load", i64 4)
  %"$$fundef_38_envp_550" = bitcast i8* %"$$fundef_38_envp_550_salloc" to %"$$fundef_38_env_137"*
  %"$$fundef_38_env_voidp_552" = bitcast %"$$fundef_38_env_137"* %"$$fundef_38_envp_550" to i8*
  %"$$fundef_38_cloval_553" = insertvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int64)*, i8* } (%"$$fundef_38_env_137"*, %Uint32)* @"$fundef_38" to { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_38_env_voidp_552", 1
  %"$$fundef_38_env_one_554" = getelementptr inbounds %"$$fundef_38_env_137", %"$$fundef_38_env_137"* %"$$fundef_38_envp_550", i32 0, i32 0
  %"$one_555" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_555", %Uint32* %"$$fundef_38_env_one_554", align 4
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_38_cloval_553", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8, !dbg !37
  %"$gasrem_556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_557" = icmp ugt i64 1, %"$gasrem_556"
  br i1 %"$gascmp_557", label %"$out_of_gas_558", label %"$have_gas_559"

"$out_of_gas_558":                                ; preds = %"$have_gas_548"
  call void @_out_of_gas()
  br label %"$have_gas_559"

"$have_gas_559":                                  ; preds = %"$out_of_gas_558", %"$have_gas_548"
  %"$consume_560" = sub i64 %"$gasrem_556", 1
  store i64 %"$consume_560", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_562" = icmp ugt i64 1, %"$gasrem_561"
  br i1 %"$gascmp_562", label %"$out_of_gas_563", label %"$have_gas_564"

"$out_of_gas_563":                                ; preds = %"$have_gas_559"
  call void @_out_of_gas()
  br label %"$have_gas_564"

"$have_gas_564":                                  ; preds = %"$out_of_gas_563", %"$have_gas_559"
  %"$consume_565" = sub i64 %"$gasrem_561", 1
  store i64 %"$consume_565", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4, !dbg !38
  %"$gasrem_566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_567" = icmp ugt i64 1, %"$gasrem_566"
  br i1 %"$gascmp_567", label %"$out_of_gas_568", label %"$have_gas_569"

"$out_of_gas_568":                                ; preds = %"$have_gas_564"
  call void @_out_of_gas()
  br label %"$have_gas_569"

"$have_gas_569":                                  ; preds = %"$out_of_gas_568", %"$have_gas_564"
  %"$consume_570" = sub i64 %"$gasrem_566", 1
  store i64 %"$consume_570", i64* @_gasrem, align 8
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_571" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_572" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_571", 0
  %"$foldl_envptr_573" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_571", 1
  %"$iter_574" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_575" = call { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_572"(i8* %"$foldl_envptr_573", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_574"), !dbg !39
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_575", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8, !dbg !39
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$$foldl_4_576" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8
  %"$$foldl_4_fptr_577" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_576", 0
  %"$$foldl_4_envptr_578" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_576", 1
  %"$init_579" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_4_call_580" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_fptr_577"(i8* %"$$foldl_4_envptr_578", %Uint32 %"$init_579"), !dbg !39
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_call_580", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5", align 8, !dbg !39
  %"$$foldl_5_581" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5", align 8
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_5_581", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_37", align 8, !dbg !39
  %"$$retval_37_582" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_37", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_37_582"
}

define internal %Uint32 @"$fundef_34"(%"$$fundef_34_env_139"* %0, %Int32 %1) !dbg !40 {
entry:
  %"$$fundef_34_env_one_497" = getelementptr inbounds %"$$fundef_34_env_139", %"$$fundef_34_env_139"* %0, i32 0, i32 0
  %"$one_envload_498" = load %Uint32, %Uint32* %"$$fundef_34_env_one_497", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_498", %Uint32* %one, align 4
  %"$$fundef_34_env_z_499" = getelementptr inbounds %"$$fundef_34_env_139", %"$$fundef_34_env_139"* %0, i32 0, i32 1
  %"$z_envload_500" = load %Uint32, %Uint32* %"$$fundef_34_env_z_499", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_500", %Uint32* %z, align 4
  %"$retval_35" = alloca %Uint32, align 8
  %"$one_501" = load %Uint32, %Uint32* %one, align 4
  %"$z_502" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_503" = call %Uint32 @_add_Uint32(%Uint32 %"$one_501", %Uint32 %"$z_502")
  store %Uint32 %"$add_call_503", %Uint32* %"$retval_35", align 4, !dbg !41
  %"$$retval_35_504" = load %Uint32, %Uint32* %"$retval_35", align 4
  ret %Uint32 %"$$retval_35_504"
}

define internal { %Uint32 (i8*, %Int32)*, i8* } @"$fundef_32"(%"$$fundef_32_env_140"* %0, %Uint32 %1) !dbg !42 {
entry:
  %"$$fundef_32_env_one_482" = getelementptr inbounds %"$$fundef_32_env_140", %"$$fundef_32_env_140"* %0, i32 0, i32 0
  %"$one_envload_483" = load %Uint32, %Uint32* %"$$fundef_32_env_one_482", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_483", %Uint32* %one, align 4
  %"$retval_33" = alloca { %Uint32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_485" = icmp ugt i64 1, %"$gasrem_484"
  br i1 %"$gascmp_485", label %"$out_of_gas_486", label %"$have_gas_487"

"$out_of_gas_486":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_487"

"$have_gas_487":                                  ; preds = %"$out_of_gas_486", %entry
  %"$consume_488" = sub i64 %"$gasrem_484", 1
  store i64 %"$consume_488", i64* @_gasrem, align 8
  %"$$fundef_34_envp_489_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_34_envp_489_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_489_load", i64 8)
  %"$$fundef_34_envp_489" = bitcast i8* %"$$fundef_34_envp_489_salloc" to %"$$fundef_34_env_139"*
  %"$$fundef_34_env_voidp_491" = bitcast %"$$fundef_34_env_139"* %"$$fundef_34_envp_489" to i8*
  %"$$fundef_34_cloval_492" = insertvalue { %Uint32 (i8*, %Int32)*, i8* } { %Uint32 (i8*, %Int32)* bitcast (%Uint32 (%"$$fundef_34_env_139"*, %Int32)* @"$fundef_34" to %Uint32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_34_env_voidp_491", 1
  %"$$fundef_34_env_one_493" = getelementptr inbounds %"$$fundef_34_env_139", %"$$fundef_34_env_139"* %"$$fundef_34_envp_489", i32 0, i32 0
  %"$one_494" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_494", %Uint32* %"$$fundef_34_env_one_493", align 4
  %"$$fundef_34_env_z_495" = getelementptr inbounds %"$$fundef_34_env_139", %"$$fundef_34_env_139"* %"$$fundef_34_envp_489", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_34_env_z_495", align 4
  store { %Uint32 (i8*, %Int32)*, i8* } %"$$fundef_34_cloval_492", { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_33", align 8, !dbg !43
  %"$$retval_33_496" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_33", align 8
  ret { %Uint32 (i8*, %Int32)*, i8* } %"$$retval_33_496"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_30"(%"$$fundef_30_env_141"* %0) !dbg !44 {
entry:
  %"$$fundef_30_env_list_foldl_404" = getelementptr inbounds %"$$fundef_30_env_141", %"$$fundef_30_env_141"* %0, i32 0, i32 0
  %"$list_foldl_envload_405" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_30_env_list_foldl_404", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_405", { i8*, i8* }** %list_foldl, align 8
  %"$retval_31" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_407" = icmp ugt i64 1, %"$gasrem_406"
  br i1 %"$gascmp_407", label %"$out_of_gas_408", label %"$have_gas_409"

"$out_of_gas_408":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_409"

"$have_gas_409":                                  ; preds = %"$out_of_gas_408", %entry
  %"$consume_410" = sub i64 %"$gasrem_406", 1
  store i64 %"$consume_410", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_412" = icmp ugt i64 1, %"$gasrem_411"
  br i1 %"$gascmp_412", label %"$out_of_gas_413", label %"$have_gas_414"

"$out_of_gas_413":                                ; preds = %"$have_gas_409"
  call void @_out_of_gas()
  br label %"$have_gas_414"

"$have_gas_414":                                  ; preds = %"$out_of_gas_413", %"$have_gas_409"
  %"$consume_415" = sub i64 %"$gasrem_411", 1
  store i64 %"$consume_415", i64* @_gasrem, align 8
  %"$list_foldl_416" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_417" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_416", i32 0
  %"$list_foldl_418" = bitcast { i8*, i8* }* %"$list_foldl_417" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_419" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_418", align 8
  %"$list_foldl_fptr_420" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_419", 0
  %"$list_foldl_envptr_421" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_419", 1
  %"$list_foldl_call_422" = call { i8*, i8* }* %"$list_foldl_fptr_420"(i8* %"$list_foldl_envptr_421"), !dbg !45
  %"$list_foldl_423" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_422", i32 1
  %"$list_foldl_424" = bitcast { i8*, i8* }* %"$list_foldl_423" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_425" = load { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_424", align 8
  %"$list_foldl_fptr_426" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_425", 0
  %"$list_foldl_envptr_427" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_425", 1
  %"$list_foldl_call_428" = call { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_426"(i8* %"$list_foldl_envptr_427"), !dbg !45
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_428", { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8, !dbg !46
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 1, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_414"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_414"
  %"$consume_433" = sub i64 %"$gasrem_429", 1
  store i64 %"$consume_433", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_432"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_432"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !47
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_437"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 1, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_442"
  %"$consume_448" = sub i64 %"$gasrem_444", 1
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %"$$fundef_32_envp_449_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_32_envp_449_salloc" = call i8* @_salloc(i8* %"$$fundef_32_envp_449_load", i64 4)
  %"$$fundef_32_envp_449" = bitcast i8* %"$$fundef_32_envp_449_salloc" to %"$$fundef_32_env_140"*
  %"$$fundef_32_env_voidp_451" = bitcast %"$$fundef_32_env_140"* %"$$fundef_32_envp_449" to i8*
  %"$$fundef_32_cloval_452" = insertvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int32)*, i8* } (%"$$fundef_32_env_140"*, %Uint32)* @"$fundef_32" to { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_32_env_voidp_451", 1
  %"$$fundef_32_env_one_453" = getelementptr inbounds %"$$fundef_32_env_140", %"$$fundef_32_env_140"* %"$$fundef_32_envp_449", i32 0, i32 0
  %"$one_454" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_454", %Uint32* %"$$fundef_32_env_one_453", align 4
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_32_cloval_452", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8, !dbg !48
  %"$gasrem_455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_456" = icmp ugt i64 1, %"$gasrem_455"
  br i1 %"$gascmp_456", label %"$out_of_gas_457", label %"$have_gas_458"

"$out_of_gas_457":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_458"

"$have_gas_458":                                  ; preds = %"$out_of_gas_457", %"$have_gas_447"
  %"$consume_459" = sub i64 %"$gasrem_455", 1
  store i64 %"$consume_459", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 1, %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$have_gas_458"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$have_gas_458"
  %"$consume_464" = sub i64 %"$gasrem_460", 1
  store i64 %"$consume_464", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4, !dbg !49
  %"$gasrem_465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_466" = icmp ugt i64 1, %"$gasrem_465"
  br i1 %"$gascmp_466", label %"$out_of_gas_467", label %"$have_gas_468"

"$out_of_gas_467":                                ; preds = %"$have_gas_463"
  call void @_out_of_gas()
  br label %"$have_gas_468"

"$have_gas_468":                                  ; preds = %"$out_of_gas_467", %"$have_gas_463"
  %"$consume_469" = sub i64 %"$gasrem_465", 1
  store i64 %"$consume_469", i64* @_gasrem, align 8
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_470" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_471" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_470", 0
  %"$foldl_envptr_472" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_470", 1
  %"$iter_473" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_474" = call { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_471"(i8* %"$foldl_envptr_472", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_473"), !dbg !50
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_474", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8, !dbg !50
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$$foldl_4_475" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8
  %"$$foldl_4_fptr_476" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_475", 0
  %"$$foldl_4_envptr_477" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_475", 1
  %"$init_478" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_4_call_479" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_fptr_476"(i8* %"$$foldl_4_envptr_477", %Uint32 %"$init_478"), !dbg !50
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_call_479", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5", align 8, !dbg !50
  %"$$foldl_5_480" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5", align 8
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_5_480", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_31", align 8, !dbg !50
  %"$$retval_31_481" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_31", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_31_481"
}

define internal %Uint32 @"$fundef_28"(%"$$fundef_28_env_142"* %0, %TName_List_Int64* %1) !dbg !51 {
entry:
  %"$$fundef_28_env_f_337" = getelementptr inbounds %"$$fundef_28_env_142", %"$$fundef_28_env_142"* %0, i32 0, i32 0
  %"$f_envload_338" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_337", align 8
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_338", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_28_env_g_339" = getelementptr inbounds %"$$fundef_28_env_142", %"$$fundef_28_env_142"* %0, i32 0, i32 1
  %"$g_envload_340" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_339", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_340", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_28_env_z_341" = getelementptr inbounds %"$$fundef_28_env_142", %"$$fundef_28_env_142"* %0, i32 0, i32 2
  %"$z_envload_342" = load %Uint32, %Uint32* %"$$fundef_28_env_z_341", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_342", %Uint32* %z, align 4
  %"$retval_29" = alloca %Uint32, align 8
  %"$gasrem_343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_344" = icmp ugt i64 2, %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %entry
  %"$consume_347" = sub i64 %"$gasrem_343", 2
  store i64 %"$consume_347", i64* @_gasrem, align 8
  %"$l_tag_349" = getelementptr inbounds %TName_List_Int64, %TName_List_Int64* %1, i32 0, i32 0
  %"$l_tag_350" = load i8, i8* %"$l_tag_349", align 1
  switch i8 %"$l_tag_350", label %"$empty_default_351" [
    i8 0, label %"$Cons_352"
    i8 1, label %"$Nil_395"
  ], !dbg !52

"$Cons_352":                                      ; preds = %"$have_gas_346"
  %"$l_353" = bitcast %TName_List_Int64* %1 to %CName_Cons_Int64*
  %"$h_gep_354" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_353", i32 0, i32 1
  %"$h_load_355" = load %Int64, %Int64* %"$h_gep_354", align 8
  %h = alloca %Int64, align 8
  store %Int64 %"$h_load_355", %Int64* %h, align 8
  %"$t_gep_356" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_353", i32 0, i32 2
  %"$t_load_357" = load %TName_List_Int64*, %TName_List_Int64** %"$t_gep_356", align 8
  %t = alloca %TName_List_Int64*, align 8
  store %TName_List_Int64* %"$t_load_357", %TName_List_Int64** %t, align 8
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 1, %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$Cons_352"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$Cons_352"
  %"$consume_362" = sub i64 %"$gasrem_358", 1
  store i64 %"$consume_362", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 1, %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %"$have_gas_361"
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %"$have_gas_361"
  %"$consume_367" = sub i64 %"$gasrem_363", 1
  store i64 %"$consume_367", i64* @_gasrem, align 8
  %"$f_0" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$f_368" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_369" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_368", 0
  %"$f_envptr_370" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_368", 1
  %"$z_371" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_372" = call { %Uint32 (i8*, %Int64)*, i8* } %"$f_fptr_369"(i8* %"$f_envptr_370", %Uint32 %"$z_371"), !dbg !53
  store { %Uint32 (i8*, %Int64)*, i8* } %"$f_call_372", { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0", align 8, !dbg !53
  %"$f_1" = alloca %Uint32, align 8
  %"$$f_0_373" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0", align 8
  %"$$f_0_fptr_374" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_373", 0
  %"$$f_0_envptr_375" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_373", 1
  %"$h_376" = load %Int64, %Int64* %h, align 8
  %"$$f_0_call_377" = call %Uint32 %"$$f_0_fptr_374"(i8* %"$$f_0_envptr_375", %Int64 %"$h_376"), !dbg !53
  store %Uint32 %"$$f_0_call_377", %Uint32* %"$f_1", align 4, !dbg !53
  %"$$f_1_378" = load %Uint32, %Uint32* %"$f_1", align 4
  store %Uint32 %"$$f_1_378", %Uint32* %res, align 4, !dbg !53
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_366"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_366"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$g_384" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_385" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_384", 0
  %"$g_envptr_386" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_384", 1
  %"$res_387" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_388" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_fptr_385"(i8* %"$g_envptr_386", %Uint32 %"$res_387"), !dbg !56
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_call_388", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2", align 8, !dbg !56
  %"$g_3" = alloca %Uint32, align 8
  %"$$g_2_389" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2", align 8
  %"$$g_2_fptr_390" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_389", 0
  %"$$g_2_envptr_391" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_389", 1
  %"$t_392" = load %TName_List_Int64*, %TName_List_Int64** %t, align 8
  %"$$g_2_call_393" = call %Uint32 %"$$g_2_fptr_390"(i8* %"$$g_2_envptr_391", %TName_List_Int64* %"$t_392"), !dbg !56
  store %Uint32 %"$$g_2_call_393", %Uint32* %"$g_3", align 4, !dbg !56
  %"$$g_3_394" = load %Uint32, %Uint32* %"$g_3", align 4
  store %Uint32 %"$$g_3_394", %Uint32* %"$retval_29", align 4, !dbg !56
  br label %"$matchsucc_348"

"$Nil_395":                                       ; preds = %"$have_gas_346"
  %"$l_396" = bitcast %TName_List_Int64* %1 to %CName_Nil_Int64*
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$Nil_395"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$Nil_395"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  %"$z_402" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_402", %Uint32* %"$retval_29", align 4, !dbg !57
  br label %"$matchsucc_348"

"$empty_default_351":                             ; preds = %"$have_gas_346"
  br label %"$matchsucc_348"

"$matchsucc_348":                                 ; preds = %"$have_gas_400", %"$have_gas_382", %"$empty_default_351"
  %"$$retval_29_403" = load %Uint32, %Uint32* %"$retval_29", align 4
  ret %Uint32 %"$$retval_29_403"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_26"(%"$$fundef_26_env_143"* %0, %Uint32 %1) !dbg !59 {
entry:
  %"$$fundef_26_env_f_318" = getelementptr inbounds %"$$fundef_26_env_143", %"$$fundef_26_env_143"* %0, i32 0, i32 0
  %"$f_envload_319" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_f_318", align 8
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_319", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_26_env_g_320" = getelementptr inbounds %"$$fundef_26_env_143", %"$$fundef_26_env_143"* %0, i32 0, i32 1
  %"$g_envload_321" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_g_320", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_321", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_27" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 1, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %entry
  %"$consume_326" = sub i64 %"$gasrem_322", 1
  store i64 %"$consume_326", i64* @_gasrem, align 8
  %"$$fundef_28_envp_327_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_28_envp_327_salloc" = call i8* @_salloc(i8* %"$$fundef_28_envp_327_load", i64 40)
  %"$$fundef_28_envp_327" = bitcast i8* %"$$fundef_28_envp_327_salloc" to %"$$fundef_28_env_142"*
  %"$$fundef_28_env_voidp_329" = bitcast %"$$fundef_28_env_142"* %"$$fundef_28_envp_327" to i8*
  %"$$fundef_28_cloval_330" = insertvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } { %Uint32 (i8*, %TName_List_Int64*)* bitcast (%Uint32 (%"$$fundef_28_env_142"*, %TName_List_Int64*)* @"$fundef_28" to %Uint32 (i8*, %TName_List_Int64*)*), i8* undef }, i8* %"$$fundef_28_env_voidp_329", 1
  %"$$fundef_28_env_f_331" = getelementptr inbounds %"$$fundef_28_env_142", %"$$fundef_28_env_142"* %"$$fundef_28_envp_327", i32 0, i32 0
  %"$f_332" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_332", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_331", align 8
  %"$$fundef_28_env_g_333" = getelementptr inbounds %"$$fundef_28_env_142", %"$$fundef_28_env_142"* %"$$fundef_28_envp_327", i32 0, i32 1
  %"$g_334" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_334", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_333", align 8
  %"$$fundef_28_env_z_335" = getelementptr inbounds %"$$fundef_28_env_142", %"$$fundef_28_env_142"* %"$$fundef_28_envp_327", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_28_env_z_335", align 4
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$fundef_28_cloval_330", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_27", align 8, !dbg !60
  %"$$retval_27_336" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_27", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_27_336"
}

define internal { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_24"(%"$$fundef_24_env_144"* %0, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !61 {
entry:
  %"$retval_25" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_300" = icmp ugt i64 1, %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %entry
  %"$consume_303" = sub i64 %"$gasrem_299", 1
  store i64 %"$consume_303", i64* @_gasrem, align 8
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_302"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_302"
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %"$$fundef_26_envp_309_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_26_envp_309_salloc" = call i8* @_salloc(i8* %"$$fundef_26_envp_309_load", i64 32)
  %"$$fundef_26_envp_309" = bitcast i8* %"$$fundef_26_envp_309_salloc" to %"$$fundef_26_env_143"*
  %"$$fundef_26_env_voidp_311" = bitcast %"$$fundef_26_env_143"* %"$$fundef_26_envp_309" to i8*
  %"$$fundef_26_cloval_312" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_26_env_143"*, %Uint32)* @"$fundef_26" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_26_env_voidp_311", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_26_cloval_312", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !62
  %"$$fundef_26_env_f_313" = getelementptr inbounds %"$$fundef_26_env_143", %"$$fundef_26_env_143"* %"$$fundef_26_envp_309", i32 0, i32 0
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_f_313", align 8
  %"$$fundef_26_env_g_314" = getelementptr inbounds %"$$fundef_26_env_143", %"$$fundef_26_env_143"* %"$$fundef_26_envp_309", i32 0, i32 1
  %"$g_315" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_315", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_g_314", align 8
  %"$g_316" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_316", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_25", align 8, !dbg !62
  %"$$retval_25_317" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_25", align 8
  ret { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_25_317"
}

define internal { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_22"(%"$$fundef_22_env_145"* %0) !dbg !63 {
entry:
  %"$retval_23" = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 1, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %entry
  %"$consume_294" = sub i64 %"$gasrem_290", 1
  store i64 %"$consume_294", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_24_env_144"*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_24" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_23", align 8, !dbg !64
  %"$$retval_23_298" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_23", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_23_298"
}

define internal { i8*, i8* }* @"$fundef_20"(%"$$fundef_20_env_146"* %0) !dbg !65 {
entry:
  %"$retval_21" = alloca { i8*, i8* }*, align 8
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 1, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %entry
  %"$consume_282" = sub i64 %"$gasrem_278", 1
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %"$dyndisp_table_286_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_286_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_286_salloc_load", i64 48)
  %"$dyndisp_table_286_salloc" = bitcast i8* %"$dyndisp_table_286_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_286" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_286_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_287" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_286", i32 1
  %"$dyndisp_pcast_288" = bitcast { i8*, i8* }* %"$dyndisp_gep_287" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_22_env_145"*)* @"$fundef_22" to { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_288", align 8
  store { i8*, i8* }* %"$dyndisp_table_286", { i8*, i8* }** %"$retval_21", align 8, !dbg !66
  %"$$retval_21_289" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_21", align 8
  ret { i8*, i8* }* %"$$retval_21_289"
}

define internal %Uint32 @"$fundef_18"(%"$$fundef_18_env_147"* %0, %TName_List_Int32* %1) !dbg !67 {
entry:
  %"$$fundef_18_env_f_211" = getelementptr inbounds %"$$fundef_18_env_147", %"$$fundef_18_env_147"* %0, i32 0, i32 0
  %"$f_envload_212" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_211", align 8
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_212", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_18_env_g_213" = getelementptr inbounds %"$$fundef_18_env_147", %"$$fundef_18_env_147"* %0, i32 0, i32 1
  %"$g_envload_214" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_213", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_214", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_18_env_z_215" = getelementptr inbounds %"$$fundef_18_env_147", %"$$fundef_18_env_147"* %0, i32 0, i32 2
  %"$z_envload_216" = load %Uint32, %Uint32* %"$$fundef_18_env_z_215", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_216", %Uint32* %z, align 4
  %"$retval_19" = alloca %Uint32, align 8
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 2, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %entry
  %"$consume_221" = sub i64 %"$gasrem_217", 2
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %"$l_tag_223" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %1, i32 0, i32 0
  %"$l_tag_224" = load i8, i8* %"$l_tag_223", align 1
  switch i8 %"$l_tag_224", label %"$empty_default_225" [
    i8 0, label %"$Cons_226"
    i8 1, label %"$Nil_269"
  ], !dbg !68

"$Cons_226":                                      ; preds = %"$have_gas_220"
  %"$l_227" = bitcast %TName_List_Int32* %1 to %CName_Cons_Int32*
  %"$h_gep_228" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_227", i32 0, i32 1
  %"$h_load_229" = load %Int32, %Int32* %"$h_gep_228", align 4
  %h = alloca %Int32, align 8
  store %Int32 %"$h_load_229", %Int32* %h, align 4
  %"$t_gep_230" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_227", i32 0, i32 2
  %"$t_load_231" = load %TName_List_Int32*, %TName_List_Int32** %"$t_gep_230", align 8
  %t = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$t_load_231", %TName_List_Int32** %t, align 8
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 1, %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %"$Cons_226"
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %"$Cons_226"
  %"$consume_236" = sub i64 %"$gasrem_232", 1
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_238" = icmp ugt i64 1, %"$gasrem_237"
  br i1 %"$gascmp_238", label %"$out_of_gas_239", label %"$have_gas_240"

"$out_of_gas_239":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_240"

"$have_gas_240":                                  ; preds = %"$out_of_gas_239", %"$have_gas_235"
  %"$consume_241" = sub i64 %"$gasrem_237", 1
  store i64 %"$consume_241", i64* @_gasrem, align 8
  %"$f_0" = alloca { %Uint32 (i8*, %Int32)*, i8* }, align 8
  %"$f_242" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_243" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_242", 0
  %"$f_envptr_244" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_242", 1
  %"$z_245" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_246" = call { %Uint32 (i8*, %Int32)*, i8* } %"$f_fptr_243"(i8* %"$f_envptr_244", %Uint32 %"$z_245"), !dbg !69
  store { %Uint32 (i8*, %Int32)*, i8* } %"$f_call_246", { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0", align 8, !dbg !69
  %"$f_1" = alloca %Uint32, align 8
  %"$$f_0_247" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0", align 8
  %"$$f_0_fptr_248" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_247", 0
  %"$$f_0_envptr_249" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_247", 1
  %"$h_250" = load %Int32, %Int32* %h, align 4
  %"$$f_0_call_251" = call %Uint32 %"$$f_0_fptr_248"(i8* %"$$f_0_envptr_249", %Int32 %"$h_250"), !dbg !69
  store %Uint32 %"$$f_0_call_251", %Uint32* %"$f_1", align 4, !dbg !69
  %"$$f_1_252" = load %Uint32, %Uint32* %"$f_1", align 4
  store %Uint32 %"$$f_1_252", %Uint32* %res, align 4, !dbg !69
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_240"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_240"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$g_258" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_259" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_258", 0
  %"$g_envptr_260" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_258", 1
  %"$res_261" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_262" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_fptr_259"(i8* %"$g_envptr_260", %Uint32 %"$res_261"), !dbg !72
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_call_262", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2", align 8, !dbg !72
  %"$g_3" = alloca %Uint32, align 8
  %"$$g_2_263" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2", align 8
  %"$$g_2_fptr_264" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_263", 0
  %"$$g_2_envptr_265" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_263", 1
  %"$t_266" = load %TName_List_Int32*, %TName_List_Int32** %t, align 8
  %"$$g_2_call_267" = call %Uint32 %"$$g_2_fptr_264"(i8* %"$$g_2_envptr_265", %TName_List_Int32* %"$t_266"), !dbg !72
  store %Uint32 %"$$g_2_call_267", %Uint32* %"$g_3", align 4, !dbg !72
  %"$$g_3_268" = load %Uint32, %Uint32* %"$g_3", align 4
  store %Uint32 %"$$g_3_268", %Uint32* %"$retval_19", align 4, !dbg !72
  br label %"$matchsucc_222"

"$Nil_269":                                       ; preds = %"$have_gas_220"
  %"$l_270" = bitcast %TName_List_Int32* %1 to %CName_Nil_Int32*
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 1, %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %"$Nil_269"
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %"$Nil_269"
  %"$consume_275" = sub i64 %"$gasrem_271", 1
  store i64 %"$consume_275", i64* @_gasrem, align 8
  %"$z_276" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_276", %Uint32* %"$retval_19", align 4, !dbg !73
  br label %"$matchsucc_222"

"$empty_default_225":                             ; preds = %"$have_gas_220"
  br label %"$matchsucc_222"

"$matchsucc_222":                                 ; preds = %"$have_gas_274", %"$have_gas_256", %"$empty_default_225"
  %"$$retval_19_277" = load %Uint32, %Uint32* %"$retval_19", align 4
  ret %Uint32 %"$$retval_19_277"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_16"(%"$$fundef_16_env_148"* %0, %Uint32 %1) !dbg !75 {
entry:
  %"$$fundef_16_env_f_192" = getelementptr inbounds %"$$fundef_16_env_148", %"$$fundef_16_env_148"* %0, i32 0, i32 0
  %"$f_envload_193" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_f_192", align 8
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_193", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_16_env_g_194" = getelementptr inbounds %"$$fundef_16_env_148", %"$$fundef_16_env_148"* %0, i32 0, i32 1
  %"$g_envload_195" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_g_194", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_195", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_17" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 1, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %entry
  %"$consume_200" = sub i64 %"$gasrem_196", 1
  store i64 %"$consume_200", i64* @_gasrem, align 8
  %"$$fundef_18_envp_201_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_18_envp_201_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_201_load", i64 40)
  %"$$fundef_18_envp_201" = bitcast i8* %"$$fundef_18_envp_201_salloc" to %"$$fundef_18_env_147"*
  %"$$fundef_18_env_voidp_203" = bitcast %"$$fundef_18_env_147"* %"$$fundef_18_envp_201" to i8*
  %"$$fundef_18_cloval_204" = insertvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } { %Uint32 (i8*, %TName_List_Int32*)* bitcast (%Uint32 (%"$$fundef_18_env_147"*, %TName_List_Int32*)* @"$fundef_18" to %Uint32 (i8*, %TName_List_Int32*)*), i8* undef }, i8* %"$$fundef_18_env_voidp_203", 1
  %"$$fundef_18_env_f_205" = getelementptr inbounds %"$$fundef_18_env_147", %"$$fundef_18_env_147"* %"$$fundef_18_envp_201", i32 0, i32 0
  %"$f_206" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_206", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_205", align 8
  %"$$fundef_18_env_g_207" = getelementptr inbounds %"$$fundef_18_env_147", %"$$fundef_18_env_147"* %"$$fundef_18_envp_201", i32 0, i32 1
  %"$g_208" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_208", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_207", align 8
  %"$$fundef_18_env_z_209" = getelementptr inbounds %"$$fundef_18_env_147", %"$$fundef_18_env_147"* %"$$fundef_18_envp_201", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_18_env_z_209", align 4
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$fundef_18_cloval_204", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_17", align 8, !dbg !76
  %"$$retval_17_210" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_17", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_17_210"
}

define internal { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_14"(%"$$fundef_14_env_149"* %0, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !77 {
entry:
  %"$retval_15" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 1, %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %entry
  %"$consume_177" = sub i64 %"$gasrem_173", 1
  store i64 %"$consume_177", i64* @_gasrem, align 8
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 1, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_176"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_176"
  %"$consume_182" = sub i64 %"$gasrem_178", 1
  store i64 %"$consume_182", i64* @_gasrem, align 8
  %"$$fundef_16_envp_183_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_16_envp_183_salloc" = call i8* @_salloc(i8* %"$$fundef_16_envp_183_load", i64 32)
  %"$$fundef_16_envp_183" = bitcast i8* %"$$fundef_16_envp_183_salloc" to %"$$fundef_16_env_148"*
  %"$$fundef_16_env_voidp_185" = bitcast %"$$fundef_16_env_148"* %"$$fundef_16_envp_183" to i8*
  %"$$fundef_16_cloval_186" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_16_env_148"*, %Uint32)* @"$fundef_16" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_16_env_voidp_185", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_16_cloval_186", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !78
  %"$$fundef_16_env_f_187" = getelementptr inbounds %"$$fundef_16_env_148", %"$$fundef_16_env_148"* %"$$fundef_16_envp_183", i32 0, i32 0
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_f_187", align 8
  %"$$fundef_16_env_g_188" = getelementptr inbounds %"$$fundef_16_env_148", %"$$fundef_16_env_148"* %"$$fundef_16_envp_183", i32 0, i32 1
  %"$g_189" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_189", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_g_188", align 8
  %"$g_190" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_190", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_15", align 8, !dbg !78
  %"$$retval_15_191" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_15", align 8
  ret { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_15_191"
}

define internal { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_12"(%"$$fundef_12_env_150"* %0) !dbg !79 {
entry:
  %"$retval_13" = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %entry
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_14_env_149"*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_14" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_13", align 8, !dbg !80
  %"$$retval_13_172" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_13", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_13_172"
}

define internal { i8*, i8* }* @"$fundef_10"(%"$$fundef_10_env_151"* %0) !dbg !81 {
entry:
  %"$retval_11" = alloca { i8*, i8* }*, align 8
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %entry
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem, align 8
  %"$dyndisp_table_160_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_160_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_160_salloc_load", i64 48)
  %"$dyndisp_table_160_salloc" = bitcast i8* %"$dyndisp_table_160_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_160" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_160_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_161" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_160", i32 1
  %"$dyndisp_pcast_162" = bitcast { i8*, i8* }* %"$dyndisp_gep_161" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_12_env_150"*)* @"$fundef_12" to { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_162", align 8
  store { i8*, i8* }* %"$dyndisp_table_160", { i8*, i8* }** %"$retval_11", align 8, !dbg !82
  %"$$retval_11_163" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_11", align 8
  ret { i8*, i8* }* %"$$retval_11_163"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() !dbg !83 {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_774"(i8* %0) !dbg !84 {
entry:
  %"$gasrem_775" = load i64, i64* @_gasrem, align 8
  %"$gascmp_776" = icmp ugt i64 1, %"$gasrem_775"
  br i1 %"$gascmp_776", label %"$out_of_gas_777", label %"$have_gas_778"

"$out_of_gas_777":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_778"

"$have_gas_778":                                  ; preds = %"$out_of_gas_777", %entry
  %"$consume_779" = sub i64 %"$gasrem_775", 1
  store i64 %"$consume_779", i64* @_gasrem, align 8
  %"$dyndisp_table_786_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_786_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_786_salloc_load", i64 48)
  %"$dyndisp_table_786_salloc" = bitcast i8* %"$dyndisp_table_786_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_786" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_786_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_787" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_786", i32 0
  %"$dyndisp_pcast_788" = bitcast { i8*, i8* }* %"$dyndisp_gep_787" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_10_env_151"*)* @"$fundef_10" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_788", align 8
  %"$dyndisp_gep_789" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_786", i32 2
  %"$dyndisp_pcast_790" = bitcast { i8*, i8* }* %"$dyndisp_gep_789" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_20_env_146"*)* @"$fundef_20" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_790", align 8
  store { i8*, i8* }* %"$dyndisp_table_786", { i8*, i8* }** @list_foldl, align 8, !dbg !85
  %"$gasrem_791" = load i64, i64* @_gasrem, align 8
  %"$gascmp_792" = icmp ugt i64 1, %"$gasrem_791"
  br i1 %"$gascmp_792", label %"$out_of_gas_793", label %"$have_gas_794"

"$out_of_gas_793":                                ; preds = %"$have_gas_778"
  call void @_out_of_gas()
  br label %"$have_gas_794"

"$have_gas_794":                                  ; preds = %"$out_of_gas_793", %"$have_gas_778"
  %"$consume_795" = sub i64 %"$gasrem_791", 1
  store i64 %"$consume_795", i64* @_gasrem, align 8
  %"$$fundef_30_envp_796_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_30_envp_796_salloc" = call i8* @_salloc(i8* %"$$fundef_30_envp_796_load", i64 8)
  %"$$fundef_30_envp_796" = bitcast i8* %"$$fundef_30_envp_796_salloc" to %"$$fundef_30_env_141"*
  %"$$fundef_30_env_voidp_798" = bitcast %"$$fundef_30_env_141"* %"$$fundef_30_envp_796" to i8*
  %"$$fundef_30_cloval_799" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_30_env_141"*)* @"$fundef_30" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_30_env_voidp_798", 1
  %"$$fundef_30_env_list_foldl_800" = getelementptr inbounds %"$$fundef_30_env_141", %"$$fundef_30_env_141"* %"$$fundef_30_envp_796", i32 0, i32 0
  %"$list_foldl_801" = load { i8*, i8* }*, { i8*, i8* }** @list_foldl, align 8
  store { i8*, i8* }* %"$list_foldl_801", { i8*, i8* }** %"$$fundef_30_env_list_foldl_800", align 8
  %"$$fundef_36_env_voidp_803" = bitcast %"$$fundef_30_env_141"* %"$$fundef_30_envp_796" to i8*
  %"$$fundef_36_cloval_804" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_36_env_138"*)* @"$fundef_36" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_36_env_voidp_803", 1
  %"$dyndisp_table_805_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_805_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_805_salloc_load", i64 48)
  %"$dyndisp_table_805_salloc" = bitcast i8* %"$dyndisp_table_805_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_805" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_805_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_806" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_805", i32 0
  %"$dyndisp_pcast_807" = bitcast { i8*, i8* }* %"$dyndisp_gep_806" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$$fundef_30_cloval_799", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_807", align 8
  %"$dyndisp_gep_808" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_805", i32 2
  %"$dyndisp_pcast_809" = bitcast { i8*, i8* }* %"$dyndisp_gep_808" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$$fundef_36_cloval_804", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_809", align 8
  store { i8*, i8* }* %"$dyndisp_table_805", { i8*, i8* }** @ListUtils.list_length, align 8, !dbg !86
  %"$expr_42" = alloca %Uint32, align 8
  %"$gasrem_810" = load i64, i64* @_gasrem, align 8
  %"$gascmp_811" = icmp ugt i64 1, %"$gasrem_810"
  br i1 %"$gascmp_811", label %"$out_of_gas_812", label %"$have_gas_813"

"$out_of_gas_812":                                ; preds = %"$have_gas_794"
  call void @_out_of_gas()
  br label %"$have_gas_813"

"$have_gas_813":                                  ; preds = %"$out_of_gas_812", %"$have_gas_794"
  %"$consume_814" = sub i64 %"$gasrem_810", 1
  store i64 %"$consume_814", i64* @_gasrem, align 8
  %t1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_815" = load i64, i64* @_gasrem, align 8
  %"$gascmp_816" = icmp ugt i64 1, %"$gasrem_815"
  br i1 %"$gascmp_816", label %"$out_of_gas_817", label %"$have_gas_818"

"$out_of_gas_817":                                ; preds = %"$have_gas_813"
  call void @_out_of_gas()
  br label %"$have_gas_818"

"$have_gas_818":                                  ; preds = %"$out_of_gas_817", %"$have_gas_813"
  %"$consume_819" = sub i64 %"$gasrem_815", 1
  store i64 %"$consume_819", i64* @_gasrem, align 8
  %"$dyndisp_table_826_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_826_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_826_salloc_load", i64 48)
  %"$dyndisp_table_826_salloc" = bitcast i8* %"$dyndisp_table_826_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_826" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_826_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_827" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_826", i32 0
  %"$dyndisp_pcast_828" = bitcast { i8*, i8* }* %"$dyndisp_gep_827" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_43_env_135"*)* @"$fundef_43" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_828", align 8
  %"$dyndisp_gep_829" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_826", i32 2
  %"$dyndisp_pcast_830" = bitcast { i8*, i8* }* %"$dyndisp_gep_829" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_47_env_133"*)* @"$fundef_47" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_830", align 8
  store { i8*, i8* }* %"$dyndisp_table_826", { i8*, i8* }** %t1, align 8, !dbg !87
  %"$gasrem_831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_832" = icmp ugt i64 1, %"$gasrem_831"
  br i1 %"$gascmp_832", label %"$out_of_gas_833", label %"$have_gas_834"

"$out_of_gas_833":                                ; preds = %"$have_gas_818"
  call void @_out_of_gas()
  br label %"$have_gas_834"

"$have_gas_834":                                  ; preds = %"$out_of_gas_833", %"$have_gas_818"
  %"$consume_835" = sub i64 %"$gasrem_831", 1
  store i64 %"$consume_835", i64* @_gasrem, align 8
  %t2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_836" = load i64, i64* @_gasrem, align 8
  %"$gascmp_837" = icmp ugt i64 1, %"$gasrem_836"
  br i1 %"$gascmp_837", label %"$out_of_gas_838", label %"$have_gas_839"

"$out_of_gas_838":                                ; preds = %"$have_gas_834"
  call void @_out_of_gas()
  br label %"$have_gas_839"

"$have_gas_839":                                  ; preds = %"$out_of_gas_838", %"$have_gas_834"
  %"$consume_840" = sub i64 %"$gasrem_836", 1
  store i64 %"$consume_840", i64* @_gasrem, align 8
  %"$dyndisp_table_847_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_847_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_847_salloc_load", i64 48)
  %"$dyndisp_table_847_salloc" = bitcast i8* %"$dyndisp_table_847_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_847" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_847_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_848" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_847", i32 0
  %"$dyndisp_pcast_849" = bitcast { i8*, i8* }* %"$dyndisp_gep_848" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_51_env_131"*)* @"$fundef_51" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_849", align 8
  %"$dyndisp_gep_850" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_847", i32 2
  %"$dyndisp_pcast_851" = bitcast { i8*, i8* }* %"$dyndisp_gep_850" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_55_env_129"*)* @"$fundef_55" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_851", align 8
  store { i8*, i8* }* %"$dyndisp_table_847", { i8*, i8* }** %t2, align 8, !dbg !88
  %"$gasrem_852" = load i64, i64* @_gasrem, align 8
  %"$gascmp_853" = icmp ugt i64 1, %"$gasrem_852"
  br i1 %"$gascmp_853", label %"$out_of_gas_854", label %"$have_gas_855"

"$out_of_gas_854":                                ; preds = %"$have_gas_839"
  call void @_out_of_gas()
  br label %"$have_gas_855"

"$have_gas_855":                                  ; preds = %"$out_of_gas_854", %"$have_gas_839"
  %"$consume_856" = sub i64 %"$gasrem_852", 1
  store i64 %"$consume_856", i64* @_gasrem, align 8
  %some_bool = alloca %TName_Bool*, align 8
  %"$gasrem_857" = load i64, i64* @_gasrem, align 8
  %"$gascmp_858" = icmp ugt i64 1, %"$gasrem_857"
  br i1 %"$gascmp_858", label %"$out_of_gas_859", label %"$have_gas_860"

"$out_of_gas_859":                                ; preds = %"$have_gas_855"
  call void @_out_of_gas()
  br label %"$have_gas_860"

"$have_gas_860":                                  ; preds = %"$out_of_gas_859", %"$have_gas_855"
  %"$consume_861" = sub i64 %"$gasrem_857", 1
  store i64 %"$consume_861", i64* @_gasrem, align 8
  %"$adtval_862_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_862_salloc" = call i8* @_salloc(i8* %"$adtval_862_load", i64 1)
  %"$adtval_862" = bitcast i8* %"$adtval_862_salloc" to %CName_True*
  %"$adtgep_863" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_862", i32 0, i32 0
  store i8 0, i8* %"$adtgep_863", align 1
  %"$adtptr_864" = bitcast %CName_True* %"$adtval_862" to %TName_Bool*
  store %TName_Bool* %"$adtptr_864", %TName_Bool** %some_bool, align 8, !dbg !89
  %"$gasrem_865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_866" = icmp ugt i64 1, %"$gasrem_865"
  br i1 %"$gascmp_866", label %"$out_of_gas_867", label %"$have_gas_868"

"$out_of_gas_867":                                ; preds = %"$have_gas_860"
  call void @_out_of_gas()
  br label %"$have_gas_868"

"$have_gas_868":                                  ; preds = %"$out_of_gas_867", %"$have_gas_860"
  %"$consume_869" = sub i64 %"$gasrem_865", 1
  store i64 %"$consume_869", i64* @_gasrem, align 8
  %f = alloca { i8*, i8* }*, align 8
  %"$gasrem_870" = load i64, i64* @_gasrem, align 8
  %"$gascmp_871" = icmp ugt i64 2, %"$gasrem_870"
  br i1 %"$gascmp_871", label %"$out_of_gas_872", label %"$have_gas_873"

"$out_of_gas_872":                                ; preds = %"$have_gas_868"
  call void @_out_of_gas()
  br label %"$have_gas_873"

"$have_gas_873":                                  ; preds = %"$out_of_gas_872", %"$have_gas_868"
  %"$consume_874" = sub i64 %"$gasrem_870", 2
  store i64 %"$consume_874", i64* @_gasrem, align 8
  %"$some_bool_876" = load %TName_Bool*, %TName_Bool** %some_bool, align 8
  %"$some_bool_tag_877" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool_876", i32 0, i32 0
  %"$some_bool_tag_878" = load i8, i8* %"$some_bool_tag_877", align 1
  switch i8 %"$some_bool_tag_878", label %"$empty_default_879" [
    i8 0, label %"$True_880"
    i8 1, label %"$False_888"
  ], !dbg !90

"$True_880":                                      ; preds = %"$have_gas_873"
  %"$some_bool_881" = bitcast %TName_Bool* %"$some_bool_876" to %CName_True*
  %"$gasrem_882" = load i64, i64* @_gasrem, align 8
  %"$gascmp_883" = icmp ugt i64 1, %"$gasrem_882"
  br i1 %"$gascmp_883", label %"$out_of_gas_884", label %"$have_gas_885"

"$out_of_gas_884":                                ; preds = %"$True_880"
  call void @_out_of_gas()
  br label %"$have_gas_885"

"$have_gas_885":                                  ; preds = %"$out_of_gas_884", %"$True_880"
  %"$consume_886" = sub i64 %"$gasrem_882", 1
  store i64 %"$consume_886", i64* @_gasrem, align 8
  %"$t2_887" = load { i8*, i8* }*, { i8*, i8* }** %t2, align 8
  store { i8*, i8* }* %"$t2_887", { i8*, i8* }** %f, align 8, !dbg !91
  br label %"$matchsucc_875"

"$False_888":                                     ; preds = %"$have_gas_873"
  %"$some_bool_889" = bitcast %TName_Bool* %"$some_bool_876" to %CName_False*
  %"$gasrem_890" = load i64, i64* @_gasrem, align 8
  %"$gascmp_891" = icmp ugt i64 1, %"$gasrem_890"
  br i1 %"$gascmp_891", label %"$out_of_gas_892", label %"$have_gas_893"

"$out_of_gas_892":                                ; preds = %"$False_888"
  call void @_out_of_gas()
  br label %"$have_gas_893"

"$have_gas_893":                                  ; preds = %"$out_of_gas_892", %"$False_888"
  %"$consume_894" = sub i64 %"$gasrem_890", 1
  store i64 %"$consume_894", i64* @_gasrem, align 8
  %"$t1_895" = load { i8*, i8* }*, { i8*, i8* }** %t1, align 8
  store { i8*, i8* }* %"$t1_895", { i8*, i8* }** %f, align 8, !dbg !94
  br label %"$matchsucc_875"

"$empty_default_879":                             ; preds = %"$have_gas_873"
  br label %"$matchsucc_875"

"$matchsucc_875":                                 ; preds = %"$have_gas_893", %"$have_gas_885", %"$empty_default_879"
  %"$gasrem_896" = load i64, i64* @_gasrem, align 8
  %"$gascmp_897" = icmp ugt i64 1, %"$gasrem_896"
  br i1 %"$gascmp_897", label %"$out_of_gas_898", label %"$have_gas_899"

"$out_of_gas_898":                                ; preds = %"$matchsucc_875"
  call void @_out_of_gas()
  br label %"$have_gas_899"

"$have_gas_899":                                  ; preds = %"$out_of_gas_898", %"$matchsucc_875"
  %"$consume_900" = sub i64 %"$gasrem_896", 1
  store i64 %"$consume_900", i64* @_gasrem, align 8
  %some_bool2 = alloca %TName_Bool*, align 8
  %"$gasrem_901" = load i64, i64* @_gasrem, align 8
  %"$gascmp_902" = icmp ugt i64 1, %"$gasrem_901"
  br i1 %"$gascmp_902", label %"$out_of_gas_903", label %"$have_gas_904"

"$out_of_gas_903":                                ; preds = %"$have_gas_899"
  call void @_out_of_gas()
  br label %"$have_gas_904"

"$have_gas_904":                                  ; preds = %"$out_of_gas_903", %"$have_gas_899"
  %"$consume_905" = sub i64 %"$gasrem_901", 1
  store i64 %"$consume_905", i64* @_gasrem, align 8
  %"$adtval_906_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_906_salloc" = call i8* @_salloc(i8* %"$adtval_906_load", i64 1)
  %"$adtval_906" = bitcast i8* %"$adtval_906_salloc" to %CName_False*
  %"$adtgep_907" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_906", i32 0, i32 0
  store i8 1, i8* %"$adtgep_907", align 1
  %"$adtptr_908" = bitcast %CName_False* %"$adtval_906" to %TName_Bool*
  store %TName_Bool* %"$adtptr_908", %TName_Bool** %some_bool2, align 8, !dbg !96
  %"$gasrem_909" = load i64, i64* @_gasrem, align 8
  %"$gascmp_910" = icmp ugt i64 2, %"$gasrem_909"
  br i1 %"$gascmp_910", label %"$out_of_gas_911", label %"$have_gas_912"

"$out_of_gas_911":                                ; preds = %"$have_gas_904"
  call void @_out_of_gas()
  br label %"$have_gas_912"

"$have_gas_912":                                  ; preds = %"$out_of_gas_911", %"$have_gas_904"
  %"$consume_913" = sub i64 %"$gasrem_909", 2
  store i64 %"$consume_913", i64* @_gasrem, align 8
  %"$some_bool2_915" = load %TName_Bool*, %TName_Bool** %some_bool2, align 8
  %"$some_bool2_tag_916" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool2_915", i32 0, i32 0
  %"$some_bool2_tag_917" = load i8, i8* %"$some_bool2_tag_916", align 1
  switch i8 %"$some_bool2_tag_917", label %"$empty_default_918" [
    i8 0, label %"$True_919"
    i8 1, label %"$False_992"
  ], !dbg !97

"$True_919":                                      ; preds = %"$have_gas_912"
  %"$some_bool2_920" = bitcast %TName_Bool* %"$some_bool2_915" to %CName_True*
  %"$gasrem_921" = load i64, i64* @_gasrem, align 8
  %"$gascmp_922" = icmp ugt i64 1, %"$gasrem_921"
  br i1 %"$gascmp_922", label %"$out_of_gas_923", label %"$have_gas_924"

"$out_of_gas_923":                                ; preds = %"$True_919"
  call void @_out_of_gas()
  br label %"$have_gas_924"

"$have_gas_924":                                  ; preds = %"$out_of_gas_923", %"$True_919"
  %"$consume_925" = sub i64 %"$gasrem_921", 1
  store i64 %"$consume_925", i64* @_gasrem, align 8
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_926" = load i64, i64* @_gasrem, align 8
  %"$gascmp_927" = icmp ugt i64 1, %"$gasrem_926"
  br i1 %"$gascmp_927", label %"$out_of_gas_928", label %"$have_gas_929"

"$out_of_gas_928":                                ; preds = %"$have_gas_924"
  call void @_out_of_gas()
  br label %"$have_gas_929"

"$have_gas_929":                                  ; preds = %"$out_of_gas_928", %"$have_gas_924"
  %"$consume_930" = sub i64 %"$gasrem_926", 1
  store i64 %"$consume_930", i64* @_gasrem, align 8
  %"$f_931" = load { i8*, i8* }*, { i8*, i8* }** %f, align 8
  %"$f_932" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_931", i32 0
  %"$f_933" = bitcast { i8*, i8* }* %"$f_932" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_934" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_933", align 8
  %"$f_fptr_935" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_934", 0
  %"$f_envptr_936" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_934", 1
  %"$f_call_937" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_935"(i8* %"$f_envptr_936"), !dbg !98
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_937", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8, !dbg !101
  %"$gasrem_938" = load i64, i64* @_gasrem, align 8
  %"$gascmp_939" = icmp ugt i64 1, %"$gasrem_938"
  br i1 %"$gascmp_939", label %"$out_of_gas_940", label %"$have_gas_941"

"$out_of_gas_940":                                ; preds = %"$have_gas_929"
  call void @_out_of_gas()
  br label %"$have_gas_941"

"$have_gas_941":                                  ; preds = %"$out_of_gas_940", %"$have_gas_929"
  %"$consume_942" = sub i64 %"$gasrem_938", 1
  store i64 %"$consume_942", i64* @_gasrem, align 8
  %len = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_943" = load i64, i64* @_gasrem, align 8
  %"$gascmp_944" = icmp ugt i64 1, %"$gasrem_943"
  br i1 %"$gascmp_944", label %"$out_of_gas_945", label %"$have_gas_946"

"$out_of_gas_945":                                ; preds = %"$have_gas_941"
  call void @_out_of_gas()
  br label %"$have_gas_946"

"$have_gas_946":                                  ; preds = %"$out_of_gas_945", %"$have_gas_941"
  %"$consume_947" = sub i64 %"$gasrem_943", 1
  store i64 %"$consume_947", i64* @_gasrem, align 8
  %"$ListUtils.list_length_948" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_949" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_948", i32 0
  %"$ListUtils.list_length_950" = bitcast { i8*, i8* }* %"$ListUtils.list_length_949" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_951" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_950", align 8
  %"$ListUtils.list_length_fptr_952" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_951", 0
  %"$ListUtils.list_length_envptr_953" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_951", 1
  %"$ListUtils.list_length_call_954" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_fptr_952"(i8* %"$ListUtils.list_length_envptr_953"), !dbg !102
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_call_954", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8, !dbg !103
  %"$gasrem_955" = load i64, i64* @_gasrem, align 8
  %"$gascmp_956" = icmp ugt i64 1, %"$gasrem_955"
  br i1 %"$gascmp_956", label %"$out_of_gas_957", label %"$have_gas_958"

"$out_of_gas_957":                                ; preds = %"$have_gas_946"
  call void @_out_of_gas()
  br label %"$have_gas_958"

"$have_gas_958":                                  ; preds = %"$out_of_gas_957", %"$have_gas_946"
  %"$consume_959" = sub i64 %"$gasrem_955", 1
  store i64 %"$consume_959", i64* @_gasrem, align 8
  %one = alloca %Int32, align 8
  %"$gasrem_960" = load i64, i64* @_gasrem, align 8
  %"$gascmp_961" = icmp ugt i64 1, %"$gasrem_960"
  br i1 %"$gascmp_961", label %"$out_of_gas_962", label %"$have_gas_963"

"$out_of_gas_962":                                ; preds = %"$have_gas_958"
  call void @_out_of_gas()
  br label %"$have_gas_963"

"$have_gas_963":                                  ; preds = %"$out_of_gas_962", %"$have_gas_958"
  %"$consume_964" = sub i64 %"$gasrem_960", 1
  store i64 %"$consume_964", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %one, align 4, !dbg !104
  %"$gasrem_965" = load i64, i64* @_gasrem, align 8
  %"$gascmp_966" = icmp ugt i64 1, %"$gasrem_965"
  br i1 %"$gascmp_966", label %"$out_of_gas_967", label %"$have_gas_968"

"$out_of_gas_967":                                ; preds = %"$have_gas_963"
  call void @_out_of_gas()
  br label %"$have_gas_968"

"$have_gas_968":                                  ; preds = %"$out_of_gas_967", %"$have_gas_963"
  %"$consume_969" = sub i64 %"$gasrem_965", 1
  store i64 %"$consume_969", i64* @_gasrem, align 8
  %f1l = alloca %TName_List_Int32*, align 8
  %"$gasrem_970" = load i64, i64* @_gasrem, align 8
  %"$gascmp_971" = icmp ugt i64 1, %"$gasrem_970"
  br i1 %"$gascmp_971", label %"$out_of_gas_972", label %"$have_gas_973"

"$out_of_gas_972":                                ; preds = %"$have_gas_968"
  call void @_out_of_gas()
  br label %"$have_gas_973"

"$have_gas_973":                                  ; preds = %"$out_of_gas_972", %"$have_gas_968"
  %"$consume_974" = sub i64 %"$gasrem_970", 1
  store i64 %"$consume_974", i64* @_gasrem, align 8
  %"$f1_6" = alloca %TName_List_Int32*, align 8
  %"$f1_975" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8
  %"$f1_fptr_976" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_975", 0
  %"$f1_envptr_977" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_975", 1
  %"$one_978" = load %Int32, %Int32* %one, align 4
  %"$f1_call_979" = call %TName_List_Int32* %"$f1_fptr_976"(i8* %"$f1_envptr_977", %Int32 %"$one_978"), !dbg !105
  store %TName_List_Int32* %"$f1_call_979", %TName_List_Int32** %"$f1_6", align 8, !dbg !105
  %"$$f1_6_980" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_6", align 8
  store %TName_List_Int32* %"$$f1_6_980", %TName_List_Int32** %f1l, align 8, !dbg !105
  %"$gasrem_981" = load i64, i64* @_gasrem, align 8
  %"$gascmp_982" = icmp ugt i64 1, %"$gasrem_981"
  br i1 %"$gascmp_982", label %"$out_of_gas_983", label %"$have_gas_984"

"$out_of_gas_983":                                ; preds = %"$have_gas_973"
  call void @_out_of_gas()
  br label %"$have_gas_984"

"$have_gas_984":                                  ; preds = %"$out_of_gas_983", %"$have_gas_973"
  %"$consume_985" = sub i64 %"$gasrem_981", 1
  store i64 %"$consume_985", i64* @_gasrem, align 8
  %"$len_7" = alloca %Uint32, align 8
  %"$len_986" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8
  %"$len_fptr_987" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_986", 0
  %"$len_envptr_988" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_986", 1
  %"$f1l_989" = load %TName_List_Int32*, %TName_List_Int32** %f1l, align 8
  %"$len_call_990" = call %Uint32 %"$len_fptr_987"(i8* %"$len_envptr_988", %TName_List_Int32* %"$f1l_989"), !dbg !106
  store %Uint32 %"$len_call_990", %Uint32* %"$len_7", align 4, !dbg !106
  %"$$len_7_991" = load %Uint32, %Uint32* %"$len_7", align 4
  store %Uint32 %"$$len_7_991", %Uint32* %"$expr_42", align 4, !dbg !106
  br label %"$matchsucc_914"

"$False_992":                                     ; preds = %"$have_gas_912"
  %"$some_bool2_993" = bitcast %TName_Bool* %"$some_bool2_915" to %CName_False*
  %"$gasrem_994" = load i64, i64* @_gasrem, align 8
  %"$gascmp_995" = icmp ugt i64 1, %"$gasrem_994"
  br i1 %"$gascmp_995", label %"$out_of_gas_996", label %"$have_gas_997"

"$out_of_gas_996":                                ; preds = %"$False_992"
  call void @_out_of_gas()
  br label %"$have_gas_997"

"$have_gas_997":                                  ; preds = %"$out_of_gas_996", %"$False_992"
  %"$consume_998" = sub i64 %"$gasrem_994", 1
  store i64 %"$consume_998", i64* @_gasrem, align 8
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_999" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1000" = icmp ugt i64 1, %"$gasrem_999"
  br i1 %"$gascmp_1000", label %"$out_of_gas_1001", label %"$have_gas_1002"

"$out_of_gas_1001":                               ; preds = %"$have_gas_997"
  call void @_out_of_gas()
  br label %"$have_gas_1002"

"$have_gas_1002":                                 ; preds = %"$out_of_gas_1001", %"$have_gas_997"
  %"$consume_1003" = sub i64 %"$gasrem_999", 1
  store i64 %"$consume_1003", i64* @_gasrem, align 8
  %"$f_1004" = load { i8*, i8* }*, { i8*, i8* }** %f, align 8
  %"$f_1005" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_1004", i32 2
  %"$f_1006" = bitcast { i8*, i8* }* %"$f_1005" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_1007" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_1006", align 8
  %"$f_fptr_1008" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_1007", 0
  %"$f_envptr_1009" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_1007", 1
  %"$f_call_1010" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_1008"(i8* %"$f_envptr_1009"), !dbg !107
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_1010", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8, !dbg !109
  %"$gasrem_1011" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1012" = icmp ugt i64 1, %"$gasrem_1011"
  br i1 %"$gascmp_1012", label %"$out_of_gas_1013", label %"$have_gas_1014"

"$out_of_gas_1013":                               ; preds = %"$have_gas_1002"
  call void @_out_of_gas()
  br label %"$have_gas_1014"

"$have_gas_1014":                                 ; preds = %"$out_of_gas_1013", %"$have_gas_1002"
  %"$consume_1015" = sub i64 %"$gasrem_1011", 1
  store i64 %"$consume_1015", i64* @_gasrem, align 8
  %len1 = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_1016" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1017" = icmp ugt i64 1, %"$gasrem_1016"
  br i1 %"$gascmp_1017", label %"$out_of_gas_1018", label %"$have_gas_1019"

"$out_of_gas_1018":                               ; preds = %"$have_gas_1014"
  call void @_out_of_gas()
  br label %"$have_gas_1019"

"$have_gas_1019":                                 ; preds = %"$out_of_gas_1018", %"$have_gas_1014"
  %"$consume_1020" = sub i64 %"$gasrem_1016", 1
  store i64 %"$consume_1020", i64* @_gasrem, align 8
  %"$ListUtils.list_length_1021" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_1022" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_1021", i32 2
  %"$ListUtils.list_length_1023" = bitcast { i8*, i8* }* %"$ListUtils.list_length_1022" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1024" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_1023", align 8
  %"$ListUtils.list_length_fptr_1025" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1024", 0
  %"$ListUtils.list_length_envptr_1026" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1024", 1
  %"$ListUtils.list_length_call_1027" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_fptr_1025"(i8* %"$ListUtils.list_length_envptr_1026"), !dbg !110
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_call_1027", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8, !dbg !111
  %"$gasrem_1028" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1029" = icmp ugt i64 1, %"$gasrem_1028"
  br i1 %"$gascmp_1029", label %"$out_of_gas_1030", label %"$have_gas_1031"

"$out_of_gas_1030":                               ; preds = %"$have_gas_1019"
  call void @_out_of_gas()
  br label %"$have_gas_1031"

"$have_gas_1031":                                 ; preds = %"$out_of_gas_1030", %"$have_gas_1019"
  %"$consume_1032" = sub i64 %"$gasrem_1028", 1
  store i64 %"$consume_1032", i64* @_gasrem, align 8
  %one2 = alloca %Int64, align 8
  %"$gasrem_1033" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1034" = icmp ugt i64 1, %"$gasrem_1033"
  br i1 %"$gascmp_1034", label %"$out_of_gas_1035", label %"$have_gas_1036"

"$out_of_gas_1035":                               ; preds = %"$have_gas_1031"
  call void @_out_of_gas()
  br label %"$have_gas_1036"

"$have_gas_1036":                                 ; preds = %"$out_of_gas_1035", %"$have_gas_1031"
  %"$consume_1037" = sub i64 %"$gasrem_1033", 1
  store i64 %"$consume_1037", i64* @_gasrem, align 8
  store %Int64 { i64 1 }, %Int64* %one2, align 8, !dbg !112
  %"$gasrem_1038" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1039" = icmp ugt i64 1, %"$gasrem_1038"
  br i1 %"$gascmp_1039", label %"$out_of_gas_1040", label %"$have_gas_1041"

"$out_of_gas_1040":                               ; preds = %"$have_gas_1036"
  call void @_out_of_gas()
  br label %"$have_gas_1041"

"$have_gas_1041":                                 ; preds = %"$out_of_gas_1040", %"$have_gas_1036"
  %"$consume_1042" = sub i64 %"$gasrem_1038", 1
  store i64 %"$consume_1042", i64* @_gasrem, align 8
  %f2l = alloca %TName_List_Int64*, align 8
  %"$gasrem_1043" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1044" = icmp ugt i64 1, %"$gasrem_1043"
  br i1 %"$gascmp_1044", label %"$out_of_gas_1045", label %"$have_gas_1046"

"$out_of_gas_1045":                               ; preds = %"$have_gas_1041"
  call void @_out_of_gas()
  br label %"$have_gas_1046"

"$have_gas_1046":                                 ; preds = %"$out_of_gas_1045", %"$have_gas_1041"
  %"$consume_1047" = sub i64 %"$gasrem_1043", 1
  store i64 %"$consume_1047", i64* @_gasrem, align 8
  %"$f2_8" = alloca %TName_List_Int64*, align 8
  %"$f2_1048" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8
  %"$f2_fptr_1049" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1048", 0
  %"$f2_envptr_1050" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1048", 1
  %"$one_1051" = load %Int64, %Int64* %one2, align 8
  %"$f2_call_1052" = call %TName_List_Int64* %"$f2_fptr_1049"(i8* %"$f2_envptr_1050", %Int64 %"$one_1051"), !dbg !113
  store %TName_List_Int64* %"$f2_call_1052", %TName_List_Int64** %"$f2_8", align 8, !dbg !113
  %"$$f2_8_1053" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_8", align 8
  store %TName_List_Int64* %"$$f2_8_1053", %TName_List_Int64** %f2l, align 8, !dbg !113
  %"$gasrem_1054" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1055" = icmp ugt i64 1, %"$gasrem_1054"
  br i1 %"$gascmp_1055", label %"$out_of_gas_1056", label %"$have_gas_1057"

"$out_of_gas_1056":                               ; preds = %"$have_gas_1046"
  call void @_out_of_gas()
  br label %"$have_gas_1057"

"$have_gas_1057":                                 ; preds = %"$out_of_gas_1056", %"$have_gas_1046"
  %"$consume_1058" = sub i64 %"$gasrem_1054", 1
  store i64 %"$consume_1058", i64* @_gasrem, align 8
  %"$len_9" = alloca %Uint32, align 8
  %"$len_1059" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8
  %"$len_fptr_1060" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1059", 0
  %"$len_envptr_1061" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1059", 1
  %"$f2l_1062" = load %TName_List_Int64*, %TName_List_Int64** %f2l, align 8
  %"$len_call_1063" = call %Uint32 %"$len_fptr_1060"(i8* %"$len_envptr_1061", %TName_List_Int64* %"$f2l_1062"), !dbg !114
  store %Uint32 %"$len_call_1063", %Uint32* %"$len_9", align 4, !dbg !114
  %"$$len_9_1064" = load %Uint32, %Uint32* %"$len_9", align 4
  store %Uint32 %"$$len_9_1064", %Uint32* %"$expr_42", align 4, !dbg !114
  br label %"$matchsucc_914"

"$empty_default_918":                             ; preds = %"$have_gas_912"
  br label %"$matchsucc_914"

"$matchsucc_914":                                 ; preds = %"$have_gas_1057", %"$have_gas_984", %"$empty_default_918"
  %"$$expr_42_1065" = load %Uint32, %Uint32* %"$expr_42", align 4
  ret %Uint32 %"$$expr_42_1065"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1066" = call %Uint32 @"$scilla_expr_774"(i8* null)
  %"$pval_1067" = alloca %Uint32, align 8
  %"$memvoidcast_1068" = bitcast %Uint32* %"$pval_1067" to i8*
  store %Uint32 %"$exprval_1066", %Uint32* %"$pval_1067", align 4
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_63", i8* %"$memvoidcast_1068")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "multi-type-inst.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_57", linkageName: "$fundef_57", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 11, column: 14, scope: !4)
!9 = !DILocation(line: 12, column: 14, scope: !4)
!10 = !DILocation(line: 13, column: 5, scope: !4)
!11 = distinct !DISubprogram(name: "$fundef_55", linkageName: "$fundef_55", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 11, column: 5, scope: !11)
!13 = distinct !DISubprogram(name: "$fundef_53", linkageName: "$fundef_53", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = !DILocation(line: 11, column: 14, scope: !13)
!15 = !DILocation(line: 12, column: 14, scope: !13)
!16 = !DILocation(line: 13, column: 5, scope: !13)
!17 = distinct !DISubprogram(name: "$fundef_51", linkageName: "$fundef_51", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 11, column: 5, scope: !17)
!19 = distinct !DISubprogram(name: "$fundef_49", linkageName: "$fundef_49", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!20 = !DILocation(line: 4, column: 14, scope: !19)
!21 = !DILocation(line: 5, column: 5, scope: !19)
!22 = distinct !DISubprogram(name: "$fundef_47", linkageName: "$fundef_47", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!23 = !DILocation(line: 4, column: 5, scope: !22)
!24 = distinct !DISubprogram(name: "$fundef_45", linkageName: "$fundef_45", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!25 = !DILocation(line: 4, column: 14, scope: !24)
!26 = !DILocation(line: 5, column: 5, scope: !24)
!27 = distinct !DISubprogram(name: "$fundef_43", linkageName: "$fundef_43", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DILocation(line: 4, column: 5, scope: !27)
!29 = distinct !DISubprogram(name: "$fundef_40", linkageName: "$fundef_40", scope: !2, file: !2, line: 104, type: !5, scopeLine: 104, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!30 = !DILocation(line: 104, column: 5, scope: !29)
!31 = distinct !DISubprogram(name: "$fundef_38", linkageName: "$fundef_38", scope: !2, file: !2, line: 103, type: !5, scopeLine: 103, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!32 = !DILocation(line: 104, column: 5, scope: !31)
!33 = distinct !DISubprogram(name: "$fundef_36", linkageName: "$fundef_36", scope: !2, file: !2, line: 101, type: !5, scopeLine: 101, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!34 = !DILocation(line: 101, column: 16, scope: !33)
!35 = !DILocation(line: 101, column: 15, scope: !33)
!36 = !DILocation(line: 102, column: 13, scope: !33)
!37 = !DILocation(line: 103, column: 34, scope: !33)
!38 = !DILocation(line: 105, column: 14, scope: !33)
!39 = !DILocation(line: 106, column: 3, scope: !33)
!40 = distinct !DISubprogram(name: "$fundef_34", linkageName: "$fundef_34", scope: !2, file: !2, line: 104, type: !5, scopeLine: 104, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!41 = !DILocation(line: 104, column: 5, scope: !40)
!42 = distinct !DISubprogram(name: "$fundef_32", linkageName: "$fundef_32", scope: !2, file: !2, line: 103, type: !5, scopeLine: 103, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!43 = !DILocation(line: 104, column: 5, scope: !42)
!44 = distinct !DISubprogram(name: "$fundef_30", linkageName: "$fundef_30", scope: !2, file: !2, line: 101, type: !5, scopeLine: 101, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!45 = !DILocation(line: 101, column: 16, scope: !44)
!46 = !DILocation(line: 101, column: 15, scope: !44)
!47 = !DILocation(line: 102, column: 13, scope: !44)
!48 = !DILocation(line: 103, column: 34, scope: !44)
!49 = !DILocation(line: 105, column: 14, scope: !44)
!50 = !DILocation(line: 106, column: 3, scope: !44)
!51 = distinct !DISubprogram(name: "$fundef_28", linkageName: "$fundef_28", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!52 = !DILocation(line: 1, column: 37, scope: !51)
!53 = !DILocation(line: 1, column: 74, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !2, line: 1, column: 52)
!55 = distinct !DILexicalBlock(scope: !51, file: !2, line: 1, column: 37)
!56 = !DILocation(line: 1, column: 83, scope: !54)
!57 = !DILocation(line: 1, column: 100, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !2, line: 1, column: 93)
!59 = distinct !DISubprogram(name: "$fundef_26", linkageName: "$fundef_26", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!60 = !DILocation(line: 1, column: 37, scope: !59)
!61 = distinct !DISubprogram(name: "$fundef_24", linkageName: "$fundef_24", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!62 = !DILocation(line: 1, column: 17, scope: !61)
!63 = distinct !DISubprogram(name: "$fundef_22", linkageName: "$fundef_22", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!64 = !DILocation(line: 1, column: 17, scope: !63)
!65 = distinct !DISubprogram(name: "$fundef_20", linkageName: "$fundef_20", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!66 = !DILocation(line: 1, column: 17, scope: !65)
!67 = distinct !DISubprogram(name: "$fundef_18", linkageName: "$fundef_18", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!68 = !DILocation(line: 1, column: 37, scope: !67)
!69 = !DILocation(line: 1, column: 74, scope: !70)
!70 = distinct !DILexicalBlock(scope: !71, file: !2, line: 1, column: 52)
!71 = distinct !DILexicalBlock(scope: !67, file: !2, line: 1, column: 37)
!72 = !DILocation(line: 1, column: 83, scope: !70)
!73 = !DILocation(line: 1, column: 100, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !2, line: 1, column: 93)
!75 = distinct !DISubprogram(name: "$fundef_16", linkageName: "$fundef_16", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!76 = !DILocation(line: 1, column: 37, scope: !75)
!77 = distinct !DISubprogram(name: "$fundef_14", linkageName: "$fundef_14", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!78 = !DILocation(line: 1, column: 17, scope: !77)
!79 = distinct !DISubprogram(name: "$fundef_12", linkageName: "$fundef_12", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!80 = !DILocation(line: 1, column: 17, scope: !79)
!81 = distinct !DISubprogram(name: "$fundef_10", linkageName: "$fundef_10", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!82 = !DILocation(line: 1, column: 17, scope: !81)
!83 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !2, file: !2, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!84 = distinct !DISubprogram(name: "$scilla_expr_774", linkageName: "$scilla_expr_774", scope: !2, file: !2, type: !5, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!85 = !DILocation(line: 1, column: 17, scope: !84)
!86 = !DILocation(line: 100, column: 3, scope: !84)
!87 = !DILocation(line: 2, column: 3, scope: !84)
!88 = !DILocation(line: 9, column: 3, scope: !84)
!89 = !DILocation(line: 16, column: 17, scope: !84)
!90 = !DILocation(line: 18, column: 3, scope: !84)
!91 = !DILocation(line: 19, column: 13, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 19, column: 5)
!93 = distinct !DILexicalBlock(scope: !84, file: !2, line: 18, column: 3)
!94 = !DILocation(line: 20, column: 14, scope: !95)
!95 = distinct !DILexicalBlock(scope: !93, file: !2, line: 20, column: 5)
!96 = !DILocation(line: 24, column: 18, scope: !84)
!97 = !DILocation(line: 25, column: 1, scope: !84)
!98 = !DILocation(line: 27, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 26, column: 3)
!100 = distinct !DILexicalBlock(scope: !84, file: !2, line: 25, column: 1)
!101 = !DILocation(line: 27, column: 12, scope: !99)
!102 = !DILocation(line: 28, column: 14, scope: !99)
!103 = !DILocation(line: 28, column: 13, scope: !99)
!104 = !DILocation(line: 29, column: 13, scope: !99)
!105 = !DILocation(line: 30, column: 13, scope: !99)
!106 = !DILocation(line: 31, column: 3, scope: !99)
!107 = !DILocation(line: 33, column: 13, scope: !108)
!108 = distinct !DILexicalBlock(scope: !100, file: !2, line: 32, column: 3)
!109 = !DILocation(line: 33, column: 12, scope: !108)
!110 = !DILocation(line: 34, column: 14, scope: !108)
!111 = !DILocation(line: 34, column: 13, scope: !108)
!112 = !DILocation(line: 35, column: 13, scope: !108)
!113 = !DILocation(line: 36, column: 13, scope: !108)
!114 = !DILocation(line: 37, column: 3, scope: !108)
