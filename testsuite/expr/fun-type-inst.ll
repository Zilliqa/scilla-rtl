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
; let t =
; tfun 'B =>
; fun (f : forall 'A. 'A -> List 'A) =>
; @f 'B
; in
; 
; let some_bool = False in
; match some_bool with
; | True =>
; let f11 = @t Int32 in
; let f1 = f11 t1 in
; let len = @list_length Int32 in
; let one = Int32 1 in
; let f1l = f1 one in
; len f1l
; | False =>
; let f22 = @t Int64 in
; let f2 = f22 t2 in
; let len = @list_length Int64 in
; let one = Int64 1 in
; let f2l = f2 one in
; len f2l
; end
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_69" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_91" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_90"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_90" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_92"**, %"$TyDescrTy_ADTTyp_91"* }
%"$TyDescrTy_ADTTyp_Constr_92" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_List_Int64 = type { i8, %CName_Cons_Int64*, %CName_Nil_Int64* }
%CName_Cons_Int64 = type <{ i8, %Int64, %TName_List_Int64* }>
%CName_Nil_Int64 = type <{ i8 }>
%Int64 = type { i64 }
%"$$fundef_67_env_130" = type {}
%"$$fundef_65_env_131" = type {}
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>
%Int32 = type { i32 }
%"$$fundef_63_env_132" = type {}
%"$$fundef_61_env_133" = type {}
%"$$fundef_59_env_134" = type {}
%"$$fundef_57_env_135" = type {}
%"$$fundef_55_env_136" = type {}
%"$$fundef_53_env_137" = type {}
%"$$fundef_51_env_138" = type {}
%"$$fundef_49_env_139" = type {}
%"$$fundef_47_env_140" = type {}
%"$$fundef_45_env_141" = type {}
%Uint32 = type { i32 }
%"$$fundef_42_env_142" = type { %Uint32, %Uint32 }
%"$$fundef_40_env_143" = type { %Uint32 }
%"$$fundef_38_env_144" = type { { i8*, i8* }* }
%"$$fundef_36_env_145" = type { %Uint32, %Uint32 }
%"$$fundef_34_env_146" = type { %Uint32 }
%"$$fundef_32_env_147" = type { { i8*, i8* }* }
%"$$fundef_30_env_148" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_28_env_149" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_26_env_150" = type {}
%"$$fundef_24_env_151" = type {}
%"$$fundef_22_env_152" = type {}
%"$$fundef_20_env_153" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_18_env_154" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_16_env_155" = type {}
%"$$fundef_14_env_156" = type {}
%"$$fundef_12_env_157" = type {}
%Bool = type { i8, %True*, %False* }
%True = type <{ i8 }>
%False = type <{ i8 }>

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_70" = global %"$TyDescrTy_PrimTyp_69" zeroinitializer
@"$TyDescr_Int32_71" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_69"* @"$TyDescr_Int32_Prim_70" to i8*) }
@"$TyDescr_Uint32_Prim_72" = global %"$TyDescrTy_PrimTyp_69" { i32 1, i32 0 }
@"$TyDescr_Uint32_73" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_69"* @"$TyDescr_Uint32_Prim_72" to i8*) }
@"$TyDescr_Int64_Prim_74" = global %"$TyDescrTy_PrimTyp_69" { i32 0, i32 1 }
@"$TyDescr_Int64_75" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_69"* @"$TyDescr_Int64_Prim_74" to i8*) }
@"$TyDescr_Uint64_Prim_76" = global %"$TyDescrTy_PrimTyp_69" { i32 1, i32 1 }
@"$TyDescr_Uint64_77" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_69"* @"$TyDescr_Uint64_Prim_76" to i8*) }
@"$TyDescr_Int128_Prim_78" = global %"$TyDescrTy_PrimTyp_69" { i32 0, i32 2 }
@"$TyDescr_Int128_79" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_69"* @"$TyDescr_Int128_Prim_78" to i8*) }
@"$TyDescr_Uint128_Prim_80" = global %"$TyDescrTy_PrimTyp_69" { i32 1, i32 2 }
@"$TyDescr_Uint128_81" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_69"* @"$TyDescr_Uint128_Prim_80" to i8*) }
@"$TyDescr_Int256_Prim_82" = global %"$TyDescrTy_PrimTyp_69" { i32 0, i32 3 }
@"$TyDescr_Int256_83" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_69"* @"$TyDescr_Int256_Prim_82" to i8*) }
@"$TyDescr_Uint256_Prim_84" = global %"$TyDescrTy_PrimTyp_69" { i32 1, i32 3 }
@"$TyDescr_Uint256_85" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_69"* @"$TyDescr_Uint256_Prim_84" to i8*) }
@"$TyDescr_String_Prim_86" = global %"$TyDescrTy_PrimTyp_69" { i32 2, i32 0 }
@"$TyDescr_String_87" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_69"* @"$TyDescr_String_Prim_86" to i8*) }
@"$TyDescr_Bystr_Prim_88" = global %"$TyDescrTy_PrimTyp_69" { i32 7, i32 0 }
@"$TyDescr_Bystr_89" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_69"* @"$TyDescr_Bystr_Prim_88" to i8*) }
@"$TyDescr_ADT_Bool_93" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_90"* @"$TyDescr_Bool_ADTTyp_Specl_106" to i8*) }
@"$TyDescr_ADT_List_Int64_94" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_90"* @"$TyDescr_List_Int64_ADTTyp_Specl_118" to i8*) }
@"$TyDescr_ADT_List_Int32_95" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_90"* @"$TyDescr_List_Int32_ADTTyp_Specl_127" to i8*) }
@"$TyDescr_Bool_ADTTyp_97" = unnamed_addr constant %"$TyDescrTy_ADTTyp_91" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_108", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_90"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_90"*], [1 x %"$TyDescrTy_ADTTyp_Specl_90"*]* @"$TyDescr_Bool_ADTTyp_m_specls_107", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_98" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_99" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_100" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_92" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_99", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_98", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_101" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_102" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_103" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_92" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_102", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_101", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_104" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_92"*] [%"$TyDescrTy_ADTTyp_Constr_92"* @"$TyDescr_Bool_True_ADTTyp_Constr_100", %"$TyDescrTy_ADTTyp_Constr_92"* @"$TyDescr_Bool_False_ADTTyp_Constr_103"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_105" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_106" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_90" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_105", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_92"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_92"*], [2 x %"$TyDescrTy_ADTTyp_Constr_92"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_104", i32 0, i32 0), %"$TyDescrTy_ADTTyp_91"* @"$TyDescr_Bool_ADTTyp_97" }
@"$TyDescr_Bool_ADTTyp_m_specls_107" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_90"*] [%"$TyDescrTy_ADTTyp_Specl_90"* @"$TyDescr_Bool_ADTTyp_Specl_106"]
@"$TyDescr_ADT_Bool_108" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_109" = unnamed_addr constant %"$TyDescrTy_ADTTyp_91" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_129", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_90"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_90"*], [2 x %"$TyDescrTy_ADTTyp_Specl_90"*]* @"$TyDescr_List_ADTTyp_m_specls_128", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int64_Constr_m_args_110" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_75", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int64_94"]
@"$TyDescr_ADT_Cons_111" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int64_ADTTyp_Constr_112" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_92" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_111", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int64_Constr_m_args_110", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int64_Constr_m_args_113" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_114" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int64_ADTTyp_Constr_115" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_92" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_114", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int64_Constr_m_args_113", i32 0, i32 0) }
@"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_116" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_92"*] [%"$TyDescrTy_ADTTyp_Constr_92"* @"$TyDescr_List_Cons_Int64_ADTTyp_Constr_112", %"$TyDescrTy_ADTTyp_Constr_92"* @"$TyDescr_List_Nil_Int64_ADTTyp_Constr_115"]
@"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_117" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_75"]
@"$TyDescr_List_Int64_ADTTyp_Specl_118" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_90" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_117", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_92"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_92"*], [2 x %"$TyDescrTy_ADTTyp_Constr_92"*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_116", i32 0, i32 0), %"$TyDescrTy_ADTTyp_91"* @"$TyDescr_List_ADTTyp_109" }
@"$TyDescr_List_Cons_Int32_Constr_m_args_119" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_71", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_95"]
@"$TyDescr_ADT_Cons_120" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_121" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_92" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_120", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_119", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_122" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_123" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_124" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_92" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_123", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_122", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_125" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_92"*] [%"$TyDescrTy_ADTTyp_Constr_92"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_121", %"$TyDescrTy_ADTTyp_Constr_92"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_124"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_126" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_71"]
@"$TyDescr_List_Int32_ADTTyp_Specl_127" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_90" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_126", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_92"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_92"*], [2 x %"$TyDescrTy_ADTTyp_Constr_92"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_125", i32 0, i32 0), %"$TyDescrTy_ADTTyp_91"* @"$TyDescr_List_ADTTyp_109" }
@"$TyDescr_List_ADTTyp_m_specls_128" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_90"*] [%"$TyDescrTy_ADTTyp_Specl_90"* @"$TyDescr_List_Int64_ADTTyp_Specl_118", %"$TyDescrTy_ADTTyp_Specl_90"* @"$TyDescr_List_Int32_ADTTyp_Specl_127"]
@"$TyDescr_ADT_List_129" = unnamed_addr constant [4 x i8] c"List"
@list_foldl = global { i8*, i8* }* null
@list_length = global { i8*, i8* }* null

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_67"(%"$$fundef_67_env_130"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_68" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$f_495" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 2
  %"$f_496" = bitcast { i8*, i8* }* %"$f_495" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_497" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_496"
  %"$f_fptr_498" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_497", 0
  %"$f_envptr_499" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_497", 1
  %"$f_call_500" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_498"(i8* %"$f_envptr_499")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_500", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_68"
  %"$$retval_68_501" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_68"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_68_501"
}

define internal { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_65"(%"$$fundef_65_env_131"* %0) {
entry:
  %"$retval_66" = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_67_env_130"*, { i8*, i8* }*)* @"$fundef_67" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66"
  %"$$retval_66_494" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66"
  ret { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_66_494"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_63"(%"$$fundef_63_env_132"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_64" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$f_484" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$f_485" = bitcast { i8*, i8* }* %"$f_484" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_486" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_485"
  %"$f_fptr_487" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_486", 0
  %"$f_envptr_488" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_486", 1
  %"$f_call_489" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_487"(i8* %"$f_envptr_488")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_489", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_64"
  %"$$retval_64_490" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_64"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_64_490"
}

define internal { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_61"(%"$$fundef_61_env_133"* %0) {
entry:
  %"$retval_62" = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_63_env_132"*, { i8*, i8* }*)* @"$fundef_63" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62"
  %"$$retval_62_483" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62"
  ret { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_62_483"
}

define internal %TName_List_Int64* @"$fundef_59"(%"$$fundef_59_env_134"* %0, %Int64 %1) {
entry:
  %"$retval_60" = alloca %TName_List_Int64*
  %an = alloca %TName_List_Int64*
  %"$adtval_464_load" = load i8*, i8** @_execptr
  %"$adtval_464_salloc" = call i8* @_salloc(i8* %"$adtval_464_load", i64 1)
  %"$adtval_464" = bitcast i8* %"$adtval_464_salloc" to %CName_Nil_Int64*
  %"$adtgep_465" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_464", i32 0, i32 0
  store i8 1, i8* %"$adtgep_465"
  %"$adtptr_466" = bitcast %CName_Nil_Int64* %"$adtval_464" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_466", %TName_List_Int64** %an
  %a1 = alloca %TName_List_Int64*
  %"$an_467" = load %TName_List_Int64*, %TName_List_Int64** %an
  %"$adtval_468_load" = load i8*, i8** @_execptr
  %"$adtval_468_salloc" = call i8* @_salloc(i8* %"$adtval_468_load", i64 17)
  %"$adtval_468" = bitcast i8* %"$adtval_468_salloc" to %CName_Cons_Int64*
  %"$adtgep_469" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_468", i32 0, i32 0
  store i8 0, i8* %"$adtgep_469"
  %"$adtgep_470" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_468", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_470"
  %"$adtgep_471" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_468", i32 0, i32 2
  store %TName_List_Int64* %"$an_467", %TName_List_Int64** %"$adtgep_471"
  %"$adtptr_472" = bitcast %CName_Cons_Int64* %"$adtval_468" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_472", %TName_List_Int64** %a1
  %"$a1_473" = load %TName_List_Int64*, %TName_List_Int64** %a1
  %"$adtval_474_load" = load i8*, i8** @_execptr
  %"$adtval_474_salloc" = call i8* @_salloc(i8* %"$adtval_474_load", i64 17)
  %"$adtval_474" = bitcast i8* %"$adtval_474_salloc" to %CName_Cons_Int64*
  %"$adtgep_475" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_474", i32 0, i32 0
  store i8 0, i8* %"$adtgep_475"
  %"$adtgep_476" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_474", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_476"
  %"$adtgep_477" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_474", i32 0, i32 2
  store %TName_List_Int64* %"$a1_473", %TName_List_Int64** %"$adtgep_477"
  %"$adtptr_478" = bitcast %CName_Cons_Int64* %"$adtval_474" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_478", %TName_List_Int64** %"$retval_60"
  %"$$retval_60_479" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_60"
  ret %TName_List_Int64* %"$$retval_60_479"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_57"(%"$$fundef_57_env_135"* %0) {
entry:
  %"$retval_58" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_59_env_134"*, %Int64)* @"$fundef_59" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_58"
  %"$$retval_58_463" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_58"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_58_463"
}

define internal %TName_List_Int32* @"$fundef_55"(%"$$fundef_55_env_136"* %0, %Int32 %1) {
entry:
  %"$retval_56" = alloca %TName_List_Int32*
  %an = alloca %TName_List_Int32*
  %"$adtval_444_load" = load i8*, i8** @_execptr
  %"$adtval_444_salloc" = call i8* @_salloc(i8* %"$adtval_444_load", i64 1)
  %"$adtval_444" = bitcast i8* %"$adtval_444_salloc" to %CName_Nil_Int32*
  %"$adtgep_445" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_444", i32 0, i32 0
  store i8 1, i8* %"$adtgep_445"
  %"$adtptr_446" = bitcast %CName_Nil_Int32* %"$adtval_444" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_446", %TName_List_Int32** %an
  %a1 = alloca %TName_List_Int32*
  %"$an_447" = load %TName_List_Int32*, %TName_List_Int32** %an
  %"$adtval_448_load" = load i8*, i8** @_execptr
  %"$adtval_448_salloc" = call i8* @_salloc(i8* %"$adtval_448_load", i64 13)
  %"$adtval_448" = bitcast i8* %"$adtval_448_salloc" to %CName_Cons_Int32*
  %"$adtgep_449" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_448", i32 0, i32 0
  store i8 0, i8* %"$adtgep_449"
  %"$adtgep_450" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_448", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_450"
  %"$adtgep_451" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_448", i32 0, i32 2
  store %TName_List_Int32* %"$an_447", %TName_List_Int32** %"$adtgep_451"
  %"$adtptr_452" = bitcast %CName_Cons_Int32* %"$adtval_448" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_452", %TName_List_Int32** %a1
  %"$a1_453" = load %TName_List_Int32*, %TName_List_Int32** %a1
  %"$adtval_454_load" = load i8*, i8** @_execptr
  %"$adtval_454_salloc" = call i8* @_salloc(i8* %"$adtval_454_load", i64 13)
  %"$adtval_454" = bitcast i8* %"$adtval_454_salloc" to %CName_Cons_Int32*
  %"$adtgep_455" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_454", i32 0, i32 0
  store i8 0, i8* %"$adtgep_455"
  %"$adtgep_456" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_454", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_456"
  %"$adtgep_457" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_454", i32 0, i32 2
  store %TName_List_Int32* %"$a1_453", %TName_List_Int32** %"$adtgep_457"
  %"$adtptr_458" = bitcast %CName_Cons_Int32* %"$adtval_454" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_458", %TName_List_Int32** %"$retval_56"
  %"$$retval_56_459" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_56"
  ret %TName_List_Int32* %"$$retval_56_459"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_53"(%"$$fundef_53_env_137"* %0) {
entry:
  %"$retval_54" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_55_env_136"*, %Int32)* @"$fundef_55" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_54"
  %"$$retval_54_443" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_54"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_54_443"
}

define internal %TName_List_Int64* @"$fundef_51"(%"$$fundef_51_env_138"* %0, %Int64 %1) {
entry:
  %"$retval_52" = alloca %TName_List_Int64*
  %an = alloca %TName_List_Int64*
  %"$adtval_430_load" = load i8*, i8** @_execptr
  %"$adtval_430_salloc" = call i8* @_salloc(i8* %"$adtval_430_load", i64 1)
  %"$adtval_430" = bitcast i8* %"$adtval_430_salloc" to %CName_Nil_Int64*
  %"$adtgep_431" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_430", i32 0, i32 0
  store i8 1, i8* %"$adtgep_431"
  %"$adtptr_432" = bitcast %CName_Nil_Int64* %"$adtval_430" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_432", %TName_List_Int64** %an
  %"$an_433" = load %TName_List_Int64*, %TName_List_Int64** %an
  %"$adtval_434_load" = load i8*, i8** @_execptr
  %"$adtval_434_salloc" = call i8* @_salloc(i8* %"$adtval_434_load", i64 17)
  %"$adtval_434" = bitcast i8* %"$adtval_434_salloc" to %CName_Cons_Int64*
  %"$adtgep_435" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_434", i32 0, i32 0
  store i8 0, i8* %"$adtgep_435"
  %"$adtgep_436" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_434", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_436"
  %"$adtgep_437" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_434", i32 0, i32 2
  store %TName_List_Int64* %"$an_433", %TName_List_Int64** %"$adtgep_437"
  %"$adtptr_438" = bitcast %CName_Cons_Int64* %"$adtval_434" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_438", %TName_List_Int64** %"$retval_52"
  %"$$retval_52_439" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_52"
  ret %TName_List_Int64* %"$$retval_52_439"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_49"(%"$$fundef_49_env_139"* %0) {
entry:
  %"$retval_50" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_51_env_138"*, %Int64)* @"$fundef_51" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_50"
  %"$$retval_50_429" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_50"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_50_429"
}

define internal %TName_List_Int32* @"$fundef_47"(%"$$fundef_47_env_140"* %0, %Int32 %1) {
entry:
  %"$retval_48" = alloca %TName_List_Int32*
  %an = alloca %TName_List_Int32*
  %"$adtval_416_load" = load i8*, i8** @_execptr
  %"$adtval_416_salloc" = call i8* @_salloc(i8* %"$adtval_416_load", i64 1)
  %"$adtval_416" = bitcast i8* %"$adtval_416_salloc" to %CName_Nil_Int32*
  %"$adtgep_417" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_416", i32 0, i32 0
  store i8 1, i8* %"$adtgep_417"
  %"$adtptr_418" = bitcast %CName_Nil_Int32* %"$adtval_416" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_418", %TName_List_Int32** %an
  %"$an_419" = load %TName_List_Int32*, %TName_List_Int32** %an
  %"$adtval_420_load" = load i8*, i8** @_execptr
  %"$adtval_420_salloc" = call i8* @_salloc(i8* %"$adtval_420_load", i64 13)
  %"$adtval_420" = bitcast i8* %"$adtval_420_salloc" to %CName_Cons_Int32*
  %"$adtgep_421" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_420", i32 0, i32 0
  store i8 0, i8* %"$adtgep_421"
  %"$adtgep_422" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_420", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_422"
  %"$adtgep_423" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_420", i32 0, i32 2
  store %TName_List_Int32* %"$an_419", %TName_List_Int32** %"$adtgep_423"
  %"$adtptr_424" = bitcast %CName_Cons_Int32* %"$adtval_420" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_424", %TName_List_Int32** %"$retval_48"
  %"$$retval_48_425" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_48"
  ret %TName_List_Int32* %"$$retval_48_425"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_45"(%"$$fundef_45_env_141"* %0) {
entry:
  %"$retval_46" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_47_env_140"*, %Int32)* @"$fundef_47" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_46"
  %"$$retval_46_415" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_46"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_46_415"
}

define internal %Uint32 @"$fundef_42"(%"$$fundef_42_env_142"* %0, %Int64 %1) {
entry:
  %"$$fundef_42_env_one_404" = getelementptr inbounds %"$$fundef_42_env_142", %"$$fundef_42_env_142"* %0, i32 0, i32 0
  %"$one_envload_405" = load %Uint32, %Uint32* %"$$fundef_42_env_one_404"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_405", %Uint32* %one
  %"$$fundef_42_env_z_406" = getelementptr inbounds %"$$fundef_42_env_142", %"$$fundef_42_env_142"* %0, i32 0, i32 1
  %"$z_envload_407" = load %Uint32, %Uint32* %"$$fundef_42_env_z_406"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_407", %Uint32* %z
  %"$retval_43" = alloca %Uint32
  %"$one_408" = load %Uint32, %Uint32* %one
  %"$z_409" = load %Uint32, %Uint32* %z
  %"$add_call_410" = call %Uint32 @_add_Uint32(%Uint32 %"$one_408", %Uint32 %"$z_409")
  store %Uint32 %"$add_call_410", %Uint32* %"$retval_43"
  %"$$retval_43_411" = load %Uint32, %Uint32* %"$retval_43"
  ret %Uint32 %"$$retval_43_411"
}

define internal { %Uint32 (i8*, %Int64)*, i8* } @"$fundef_40"(%"$$fundef_40_env_143"* %0, %Uint32 %1) {
entry:
  %"$$fundef_40_env_one_394" = getelementptr inbounds %"$$fundef_40_env_143", %"$$fundef_40_env_143"* %0, i32 0, i32 0
  %"$one_envload_395" = load %Uint32, %Uint32* %"$$fundef_40_env_one_394"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_395", %Uint32* %one
  %"$retval_41" = alloca { %Uint32 (i8*, %Int64)*, i8* }
  %"$$fundef_42_envp_396_load" = load i8*, i8** @_execptr
  %"$$fundef_42_envp_396_salloc" = call i8* @_salloc(i8* %"$$fundef_42_envp_396_load", i64 8)
  %"$$fundef_42_envp_396" = bitcast i8* %"$$fundef_42_envp_396_salloc" to %"$$fundef_42_env_142"*
  %"$$fundef_42_env_voidp_398" = bitcast %"$$fundef_42_env_142"* %"$$fundef_42_envp_396" to i8*
  %"$$fundef_42_cloval_399" = insertvalue { %Uint32 (i8*, %Int64)*, i8* } { %Uint32 (i8*, %Int64)* bitcast (%Uint32 (%"$$fundef_42_env_142"*, %Int64)* @"$fundef_42" to %Uint32 (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_42_env_voidp_398", 1
  %"$$fundef_42_env_one_400" = getelementptr inbounds %"$$fundef_42_env_142", %"$$fundef_42_env_142"* %"$$fundef_42_envp_396", i32 0, i32 0
  %"$one_401" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_401", %Uint32* %"$$fundef_42_env_one_400"
  %"$$fundef_42_env_z_402" = getelementptr inbounds %"$$fundef_42_env_142", %"$$fundef_42_env_142"* %"$$fundef_42_envp_396", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_42_env_z_402"
  store { %Uint32 (i8*, %Int64)*, i8* } %"$$fundef_42_cloval_399", { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_41"
  %"$$retval_41_403" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_41"
  ret { %Uint32 (i8*, %Int64)*, i8* } %"$$retval_41_403"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_144"* %0) {
entry:
  %"$$fundef_38_env_list_foldl_361" = getelementptr inbounds %"$$fundef_38_env_144", %"$$fundef_38_env_144"* %0, i32 0, i32 0
  %"$list_foldl_envload_362" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_38_env_list_foldl_361"
  %list_foldl = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldl_envload_362", { i8*, i8* }** %list_foldl
  %"$retval_39" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$list_foldl_363" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl
  %"$list_foldl_364" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_363", i32 2
  %"$list_foldl_365" = bitcast { i8*, i8* }* %"$list_foldl_364" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_366" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_365"
  %"$list_foldl_fptr_367" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_366", 0
  %"$list_foldl_envptr_368" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_366", 1
  %"$list_foldl_call_369" = call { i8*, i8* }* %"$list_foldl_fptr_367"(i8* %"$list_foldl_envptr_368")
  %"$list_foldl_370" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_369", i32 1
  %"$list_foldl_371" = bitcast { i8*, i8* }* %"$list_foldl_370" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_372" = load { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_371"
  %"$list_foldl_fptr_373" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_372", 0
  %"$list_foldl_envptr_374" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_372", 1
  %"$list_foldl_call_375" = call { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_373"(i8* %"$list_foldl_envptr_374")
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_375", { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %iter = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_40_envp_376_load" = load i8*, i8** @_execptr
  %"$$fundef_40_envp_376_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_376_load", i64 4)
  %"$$fundef_40_envp_376" = bitcast i8* %"$$fundef_40_envp_376_salloc" to %"$$fundef_40_env_143"*
  %"$$fundef_40_env_voidp_378" = bitcast %"$$fundef_40_env_143"* %"$$fundef_40_envp_376" to i8*
  %"$$fundef_40_cloval_379" = insertvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int64)*, i8* } (%"$$fundef_40_env_143"*, %Uint32)* @"$fundef_40" to { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_40_env_voidp_378", 1
  %"$$fundef_40_env_one_380" = getelementptr inbounds %"$$fundef_40_env_143", %"$$fundef_40_env_143"* %"$$fundef_40_envp_376", i32 0, i32 0
  %"$one_381" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_381", %Uint32* %"$$fundef_40_env_one_380"
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_40_cloval_379", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %init = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %init
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$foldl_382" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$foldl_fptr_383" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_382", 0
  %"$foldl_envptr_384" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_382", 1
  %"$iter_385" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$foldl_call_386" = call { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_383"(i8* %"$foldl_envptr_384", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_385")
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_386", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$$foldl_4_387" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$$foldl_4_fptr_388" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_387", 0
  %"$$foldl_4_envptr_389" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_387", 1
  %"$init_390" = load %Uint32, %Uint32* %init
  %"$$foldl_4_call_391" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_fptr_388"(i8* %"$$foldl_4_envptr_389", %Uint32 %"$init_390")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_call_391", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5"
  %"$$foldl_5_392" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5"
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_5_392", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_39"
  %"$$retval_39_393" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_39"
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_39_393"
}

define internal %Uint32 @"$fundef_36"(%"$$fundef_36_env_145"* %0, %Int32 %1) {
entry:
  %"$$fundef_36_env_one_353" = getelementptr inbounds %"$$fundef_36_env_145", %"$$fundef_36_env_145"* %0, i32 0, i32 0
  %"$one_envload_354" = load %Uint32, %Uint32* %"$$fundef_36_env_one_353"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_354", %Uint32* %one
  %"$$fundef_36_env_z_355" = getelementptr inbounds %"$$fundef_36_env_145", %"$$fundef_36_env_145"* %0, i32 0, i32 1
  %"$z_envload_356" = load %Uint32, %Uint32* %"$$fundef_36_env_z_355"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_356", %Uint32* %z
  %"$retval_37" = alloca %Uint32
  %"$one_357" = load %Uint32, %Uint32* %one
  %"$z_358" = load %Uint32, %Uint32* %z
  %"$add_call_359" = call %Uint32 @_add_Uint32(%Uint32 %"$one_357", %Uint32 %"$z_358")
  store %Uint32 %"$add_call_359", %Uint32* %"$retval_37"
  %"$$retval_37_360" = load %Uint32, %Uint32* %"$retval_37"
  ret %Uint32 %"$$retval_37_360"
}

define internal { %Uint32 (i8*, %Int32)*, i8* } @"$fundef_34"(%"$$fundef_34_env_146"* %0, %Uint32 %1) {
entry:
  %"$$fundef_34_env_one_343" = getelementptr inbounds %"$$fundef_34_env_146", %"$$fundef_34_env_146"* %0, i32 0, i32 0
  %"$one_envload_344" = load %Uint32, %Uint32* %"$$fundef_34_env_one_343"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_344", %Uint32* %one
  %"$retval_35" = alloca { %Uint32 (i8*, %Int32)*, i8* }
  %"$$fundef_36_envp_345_load" = load i8*, i8** @_execptr
  %"$$fundef_36_envp_345_salloc" = call i8* @_salloc(i8* %"$$fundef_36_envp_345_load", i64 8)
  %"$$fundef_36_envp_345" = bitcast i8* %"$$fundef_36_envp_345_salloc" to %"$$fundef_36_env_145"*
  %"$$fundef_36_env_voidp_347" = bitcast %"$$fundef_36_env_145"* %"$$fundef_36_envp_345" to i8*
  %"$$fundef_36_cloval_348" = insertvalue { %Uint32 (i8*, %Int32)*, i8* } { %Uint32 (i8*, %Int32)* bitcast (%Uint32 (%"$$fundef_36_env_145"*, %Int32)* @"$fundef_36" to %Uint32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_36_env_voidp_347", 1
  %"$$fundef_36_env_one_349" = getelementptr inbounds %"$$fundef_36_env_145", %"$$fundef_36_env_145"* %"$$fundef_36_envp_345", i32 0, i32 0
  %"$one_350" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_350", %Uint32* %"$$fundef_36_env_one_349"
  %"$$fundef_36_env_z_351" = getelementptr inbounds %"$$fundef_36_env_145", %"$$fundef_36_env_145"* %"$$fundef_36_envp_345", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_36_env_z_351"
  store { %Uint32 (i8*, %Int32)*, i8* } %"$$fundef_36_cloval_348", { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_35"
  %"$$retval_35_352" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_35"
  ret { %Uint32 (i8*, %Int32)*, i8* } %"$$retval_35_352"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_32"(%"$$fundef_32_env_147"* %0) {
entry:
  %"$$fundef_32_env_list_foldl_310" = getelementptr inbounds %"$$fundef_32_env_147", %"$$fundef_32_env_147"* %0, i32 0, i32 0
  %"$list_foldl_envload_311" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_32_env_list_foldl_310"
  %list_foldl = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldl_envload_311", { i8*, i8* }** %list_foldl
  %"$retval_33" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$list_foldl_312" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl
  %"$list_foldl_313" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_312", i32 0
  %"$list_foldl_314" = bitcast { i8*, i8* }* %"$list_foldl_313" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_315" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_314"
  %"$list_foldl_fptr_316" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_315", 0
  %"$list_foldl_envptr_317" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_315", 1
  %"$list_foldl_call_318" = call { i8*, i8* }* %"$list_foldl_fptr_316"(i8* %"$list_foldl_envptr_317")
  %"$list_foldl_319" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_318", i32 1
  %"$list_foldl_320" = bitcast { i8*, i8* }* %"$list_foldl_319" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_321" = load { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_320"
  %"$list_foldl_fptr_322" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_321", 0
  %"$list_foldl_envptr_323" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_321", 1
  %"$list_foldl_call_324" = call { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_322"(i8* %"$list_foldl_envptr_323")
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_324", { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %iter = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_34_envp_325_load" = load i8*, i8** @_execptr
  %"$$fundef_34_envp_325_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_325_load", i64 4)
  %"$$fundef_34_envp_325" = bitcast i8* %"$$fundef_34_envp_325_salloc" to %"$$fundef_34_env_146"*
  %"$$fundef_34_env_voidp_327" = bitcast %"$$fundef_34_env_146"* %"$$fundef_34_envp_325" to i8*
  %"$$fundef_34_cloval_328" = insertvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int32)*, i8* } (%"$$fundef_34_env_146"*, %Uint32)* @"$fundef_34" to { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_34_env_voidp_327", 1
  %"$$fundef_34_env_one_329" = getelementptr inbounds %"$$fundef_34_env_146", %"$$fundef_34_env_146"* %"$$fundef_34_envp_325", i32 0, i32 0
  %"$one_330" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_330", %Uint32* %"$$fundef_34_env_one_329"
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_34_cloval_328", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %init = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %init
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$foldl_331" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$foldl_fptr_332" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_331", 0
  %"$foldl_envptr_333" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_331", 1
  %"$iter_334" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$foldl_call_335" = call { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_332"(i8* %"$foldl_envptr_333", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_334")
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_335", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$$foldl_4_336" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$$foldl_4_fptr_337" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_336", 0
  %"$$foldl_4_envptr_338" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_336", 1
  %"$init_339" = load %Uint32, %Uint32* %init
  %"$$foldl_4_call_340" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_fptr_337"(i8* %"$$foldl_4_envptr_338", %Uint32 %"$init_339")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_call_340", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5"
  %"$$foldl_5_341" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5"
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_5_341", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_33"
  %"$$retval_33_342" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_33"
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_33_342"
}

define internal %Uint32 @"$fundef_30"(%"$$fundef_30_env_148"* %0, %TName_List_Int64* %1) {
entry:
  %"$$fundef_30_env_f_268" = getelementptr inbounds %"$$fundef_30_env_148", %"$$fundef_30_env_148"* %0, i32 0, i32 0
  %"$f_envload_269" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_f_268"
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_269", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_30_env_g_270" = getelementptr inbounds %"$$fundef_30_env_148", %"$$fundef_30_env_148"* %0, i32 0, i32 1
  %"$g_envload_271" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_g_270"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_271", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_30_env_z_272" = getelementptr inbounds %"$$fundef_30_env_148", %"$$fundef_30_env_148"* %0, i32 0, i32 2
  %"$z_envload_273" = load %Uint32, %Uint32* %"$$fundef_30_env_z_272"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_273", %Uint32* %z
  %"$retval_31" = alloca %Uint32
  %"$l_tag_275" = getelementptr inbounds %TName_List_Int64, %TName_List_Int64* %1, i32 0, i32 0
  %"$l_tag_276" = load i8, i8* %"$l_tag_275"
  switch i8 %"$l_tag_276", label %"$empty_default_277" [
    i8 0, label %"$Cons_278"
    i8 1, label %"$Nil_306"
  ]

"$Cons_278":                                      ; preds = %entry
  %"$l_279" = bitcast %TName_List_Int64* %1 to %CName_Cons_Int64*
  %"$h_gep_280" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_279", i32 0, i32 1
  %"$h_load_281" = load %Int64, %Int64* %"$h_gep_280"
  %h = alloca %Int64
  store %Int64 %"$h_load_281", %Int64* %h
  %"$t_gep_282" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_279", i32 0, i32 2
  %"$t_load_283" = load %TName_List_Int64*, %TName_List_Int64** %"$t_gep_282"
  %t = alloca %TName_List_Int64*
  store %TName_List_Int64* %"$t_load_283", %TName_List_Int64** %t
  %res = alloca %Uint32
  %"$f_0" = alloca { %Uint32 (i8*, %Int64)*, i8* }
  %"$f_284" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_285" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_284", 0
  %"$f_envptr_286" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_284", 1
  %"$z_287" = load %Uint32, %Uint32* %z
  %"$f_call_288" = call { %Uint32 (i8*, %Int64)*, i8* } %"$f_fptr_285"(i8* %"$f_envptr_286", %Uint32 %"$z_287")
  store { %Uint32 (i8*, %Int64)*, i8* } %"$f_call_288", { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0"
  %"$f_1" = alloca %Uint32
  %"$$f_0_289" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0"
  %"$$f_0_fptr_290" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_289", 0
  %"$$f_0_envptr_291" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_289", 1
  %"$h_292" = load %Int64, %Int64* %h
  %"$$f_0_call_293" = call %Uint32 %"$$f_0_fptr_290"(i8* %"$$f_0_envptr_291", %Int64 %"$h_292")
  store %Uint32 %"$$f_0_call_293", %Uint32* %"$f_1"
  %"$$f_1_294" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_294", %Uint32* %res
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$g_295" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_296" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_295", 0
  %"$g_envptr_297" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_295", 1
  %"$res_298" = load %Uint32, %Uint32* %res
  %"$g_call_299" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_fptr_296"(i8* %"$g_envptr_297", %Uint32 %"$res_298")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_call_299", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_300" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_301" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_300", 0
  %"$$g_2_envptr_302" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_300", 1
  %"$t_303" = load %TName_List_Int64*, %TName_List_Int64** %t
  %"$$g_2_call_304" = call %Uint32 %"$$g_2_fptr_301"(i8* %"$$g_2_envptr_302", %TName_List_Int64* %"$t_303")
  store %Uint32 %"$$g_2_call_304", %Uint32* %"$g_3"
  %"$$g_3_305" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_305", %Uint32* %"$retval_31"
  br label %"$matchsucc_274"

"$Nil_306":                                       ; preds = %entry
  %"$l_307" = bitcast %TName_List_Int64* %1 to %CName_Nil_Int64*
  %"$z_308" = load %Uint32, %Uint32* %z
  store %Uint32 %"$z_308", %Uint32* %"$retval_31"
  br label %"$matchsucc_274"

"$empty_default_277":                             ; preds = %entry
  br label %"$matchsucc_274"

"$matchsucc_274":                                 ; preds = %"$Nil_306", %"$Cons_278", %"$empty_default_277"
  %"$$retval_31_309" = load %Uint32, %Uint32* %"$retval_31"
  ret %Uint32 %"$$retval_31_309"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_28"(%"$$fundef_28_env_149"* %0, %Uint32 %1) {
entry:
  %"$$fundef_28_env_f_254" = getelementptr inbounds %"$$fundef_28_env_149", %"$$fundef_28_env_149"* %0, i32 0, i32 0
  %"$f_envload_255" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_254"
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_255", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_28_env_g_256" = getelementptr inbounds %"$$fundef_28_env_149", %"$$fundef_28_env_149"* %0, i32 0, i32 1
  %"$g_envload_257" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_256"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_257", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_29" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$$fundef_30_envp_258_load" = load i8*, i8** @_execptr
  %"$$fundef_30_envp_258_salloc" = call i8* @_salloc(i8* %"$$fundef_30_envp_258_load", i64 40)
  %"$$fundef_30_envp_258" = bitcast i8* %"$$fundef_30_envp_258_salloc" to %"$$fundef_30_env_148"*
  %"$$fundef_30_env_voidp_260" = bitcast %"$$fundef_30_env_148"* %"$$fundef_30_envp_258" to i8*
  %"$$fundef_30_cloval_261" = insertvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } { %Uint32 (i8*, %TName_List_Int64*)* bitcast (%Uint32 (%"$$fundef_30_env_148"*, %TName_List_Int64*)* @"$fundef_30" to %Uint32 (i8*, %TName_List_Int64*)*), i8* undef }, i8* %"$$fundef_30_env_voidp_260", 1
  %"$$fundef_30_env_f_262" = getelementptr inbounds %"$$fundef_30_env_148", %"$$fundef_30_env_148"* %"$$fundef_30_envp_258", i32 0, i32 0
  %"$f_263" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_263", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_f_262"
  %"$$fundef_30_env_g_264" = getelementptr inbounds %"$$fundef_30_env_148", %"$$fundef_30_env_148"* %"$$fundef_30_envp_258", i32 0, i32 1
  %"$g_265" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_265", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_g_264"
  %"$$fundef_30_env_z_266" = getelementptr inbounds %"$$fundef_30_env_148", %"$$fundef_30_env_148"* %"$$fundef_30_envp_258", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_30_env_z_266"
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$fundef_30_cloval_261", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_29"
  %"$$retval_29_267" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_29"
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_29_267"
}

define internal { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_26"(%"$$fundef_26_env_150"* %0, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_27" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_28_envp_245_load" = load i8*, i8** @_execptr
  %"$$fundef_28_envp_245_salloc" = call i8* @_salloc(i8* %"$$fundef_28_envp_245_load", i64 32)
  %"$$fundef_28_envp_245" = bitcast i8* %"$$fundef_28_envp_245_salloc" to %"$$fundef_28_env_149"*
  %"$$fundef_28_env_voidp_247" = bitcast %"$$fundef_28_env_149"* %"$$fundef_28_envp_245" to i8*
  %"$$fundef_28_cloval_248" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_28_env_149"*, %Uint32)* @"$fundef_28" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_28_env_voidp_247", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_28_cloval_248", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_28_env_f_249" = getelementptr inbounds %"$$fundef_28_env_149", %"$$fundef_28_env_149"* %"$$fundef_28_envp_245", i32 0, i32 0
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_249"
  %"$$fundef_28_env_g_250" = getelementptr inbounds %"$$fundef_28_env_149", %"$$fundef_28_env_149"* %"$$fundef_28_envp_245", i32 0, i32 1
  %"$g_251" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_251", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_250"
  %"$g_252" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_252", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_27"
  %"$$retval_27_253" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_27"
  ret { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_27_253"
}

define internal { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_24"(%"$$fundef_24_env_151"* %0) {
entry:
  %"$retval_25" = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_26_env_150"*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_26" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_25"
  %"$$retval_25_244" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_25"
  ret { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_25_244"
}

define internal { i8*, i8* }* @"$fundef_22"(%"$$fundef_22_env_152"* %0) {
entry:
  %"$retval_23" = alloca { i8*, i8* }*
  %"$dyndisp_table_237_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_237_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_237_salloc_load", i64 48)
  %"$dyndisp_table_237_salloc" = bitcast i8* %"$dyndisp_table_237_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_237" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_237_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_238" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_237", i32 1
  %"$dyndisp_pcast_239" = bitcast { i8*, i8* }* %"$dyndisp_gep_238" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_24_env_151"*)* @"$fundef_24" to { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_239"
  store { i8*, i8* }* %"$dyndisp_table_237", { i8*, i8* }** %"$retval_23"
  %"$$retval_23_240" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_23"
  ret { i8*, i8* }* %"$$retval_23_240"
}

define internal %Uint32 @"$fundef_20"(%"$$fundef_20_env_153"* %0, %TName_List_Int32* %1) {
entry:
  %"$$fundef_20_env_f_192" = getelementptr inbounds %"$$fundef_20_env_153", %"$$fundef_20_env_153"* %0, i32 0, i32 0
  %"$f_envload_193" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_f_192"
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_193", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_20_env_g_194" = getelementptr inbounds %"$$fundef_20_env_153", %"$$fundef_20_env_153"* %0, i32 0, i32 1
  %"$g_envload_195" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_g_194"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_195", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_20_env_z_196" = getelementptr inbounds %"$$fundef_20_env_153", %"$$fundef_20_env_153"* %0, i32 0, i32 2
  %"$z_envload_197" = load %Uint32, %Uint32* %"$$fundef_20_env_z_196"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_197", %Uint32* %z
  %"$retval_21" = alloca %Uint32
  %"$l_tag_199" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %1, i32 0, i32 0
  %"$l_tag_200" = load i8, i8* %"$l_tag_199"
  switch i8 %"$l_tag_200", label %"$empty_default_201" [
    i8 0, label %"$Cons_202"
    i8 1, label %"$Nil_230"
  ]

"$Cons_202":                                      ; preds = %entry
  %"$l_203" = bitcast %TName_List_Int32* %1 to %CName_Cons_Int32*
  %"$h_gep_204" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_203", i32 0, i32 1
  %"$h_load_205" = load %Int32, %Int32* %"$h_gep_204"
  %h = alloca %Int32
  store %Int32 %"$h_load_205", %Int32* %h
  %"$t_gep_206" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_203", i32 0, i32 2
  %"$t_load_207" = load %TName_List_Int32*, %TName_List_Int32** %"$t_gep_206"
  %t = alloca %TName_List_Int32*
  store %TName_List_Int32* %"$t_load_207", %TName_List_Int32** %t
  %res = alloca %Uint32
  %"$f_0" = alloca { %Uint32 (i8*, %Int32)*, i8* }
  %"$f_208" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_209" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_208", 0
  %"$f_envptr_210" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_208", 1
  %"$z_211" = load %Uint32, %Uint32* %z
  %"$f_call_212" = call { %Uint32 (i8*, %Int32)*, i8* } %"$f_fptr_209"(i8* %"$f_envptr_210", %Uint32 %"$z_211")
  store { %Uint32 (i8*, %Int32)*, i8* } %"$f_call_212", { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0"
  %"$f_1" = alloca %Uint32
  %"$$f_0_213" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0"
  %"$$f_0_fptr_214" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_213", 0
  %"$$f_0_envptr_215" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_213", 1
  %"$h_216" = load %Int32, %Int32* %h
  %"$$f_0_call_217" = call %Uint32 %"$$f_0_fptr_214"(i8* %"$$f_0_envptr_215", %Int32 %"$h_216")
  store %Uint32 %"$$f_0_call_217", %Uint32* %"$f_1"
  %"$$f_1_218" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_218", %Uint32* %res
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$g_219" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_220" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_219", 0
  %"$g_envptr_221" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_219", 1
  %"$res_222" = load %Uint32, %Uint32* %res
  %"$g_call_223" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_fptr_220"(i8* %"$g_envptr_221", %Uint32 %"$res_222")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_call_223", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_224" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_225" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_224", 0
  %"$$g_2_envptr_226" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_224", 1
  %"$t_227" = load %TName_List_Int32*, %TName_List_Int32** %t
  %"$$g_2_call_228" = call %Uint32 %"$$g_2_fptr_225"(i8* %"$$g_2_envptr_226", %TName_List_Int32* %"$t_227")
  store %Uint32 %"$$g_2_call_228", %Uint32* %"$g_3"
  %"$$g_3_229" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_229", %Uint32* %"$retval_21"
  br label %"$matchsucc_198"

"$Nil_230":                                       ; preds = %entry
  %"$l_231" = bitcast %TName_List_Int32* %1 to %CName_Nil_Int32*
  %"$z_232" = load %Uint32, %Uint32* %z
  store %Uint32 %"$z_232", %Uint32* %"$retval_21"
  br label %"$matchsucc_198"

"$empty_default_201":                             ; preds = %entry
  br label %"$matchsucc_198"

"$matchsucc_198":                                 ; preds = %"$Nil_230", %"$Cons_202", %"$empty_default_201"
  %"$$retval_21_233" = load %Uint32, %Uint32* %"$retval_21"
  ret %Uint32 %"$$retval_21_233"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_18"(%"$$fundef_18_env_154"* %0, %Uint32 %1) {
entry:
  %"$$fundef_18_env_f_178" = getelementptr inbounds %"$$fundef_18_env_154", %"$$fundef_18_env_154"* %0, i32 0, i32 0
  %"$f_envload_179" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_178"
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_179", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_18_env_g_180" = getelementptr inbounds %"$$fundef_18_env_154", %"$$fundef_18_env_154"* %0, i32 0, i32 1
  %"$g_envload_181" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_180"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_181", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_19" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$$fundef_20_envp_182_load" = load i8*, i8** @_execptr
  %"$$fundef_20_envp_182_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_182_load", i64 40)
  %"$$fundef_20_envp_182" = bitcast i8* %"$$fundef_20_envp_182_salloc" to %"$$fundef_20_env_153"*
  %"$$fundef_20_env_voidp_184" = bitcast %"$$fundef_20_env_153"* %"$$fundef_20_envp_182" to i8*
  %"$$fundef_20_cloval_185" = insertvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } { %Uint32 (i8*, %TName_List_Int32*)* bitcast (%Uint32 (%"$$fundef_20_env_153"*, %TName_List_Int32*)* @"$fundef_20" to %Uint32 (i8*, %TName_List_Int32*)*), i8* undef }, i8* %"$$fundef_20_env_voidp_184", 1
  %"$$fundef_20_env_f_186" = getelementptr inbounds %"$$fundef_20_env_153", %"$$fundef_20_env_153"* %"$$fundef_20_envp_182", i32 0, i32 0
  %"$f_187" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_187", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_f_186"
  %"$$fundef_20_env_g_188" = getelementptr inbounds %"$$fundef_20_env_153", %"$$fundef_20_env_153"* %"$$fundef_20_envp_182", i32 0, i32 1
  %"$g_189" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_189", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_g_188"
  %"$$fundef_20_env_z_190" = getelementptr inbounds %"$$fundef_20_env_153", %"$$fundef_20_env_153"* %"$$fundef_20_envp_182", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_20_env_z_190"
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$fundef_20_cloval_185", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_19"
  %"$$retval_19_191" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_19"
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_19_191"
}

define internal { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_16"(%"$$fundef_16_env_155"* %0, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_17" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_18_envp_169_load" = load i8*, i8** @_execptr
  %"$$fundef_18_envp_169_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_169_load", i64 32)
  %"$$fundef_18_envp_169" = bitcast i8* %"$$fundef_18_envp_169_salloc" to %"$$fundef_18_env_154"*
  %"$$fundef_18_env_voidp_171" = bitcast %"$$fundef_18_env_154"* %"$$fundef_18_envp_169" to i8*
  %"$$fundef_18_cloval_172" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_18_env_154"*, %Uint32)* @"$fundef_18" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_18_env_voidp_171", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_18_cloval_172", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_18_env_f_173" = getelementptr inbounds %"$$fundef_18_env_154", %"$$fundef_18_env_154"* %"$$fundef_18_envp_169", i32 0, i32 0
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_173"
  %"$$fundef_18_env_g_174" = getelementptr inbounds %"$$fundef_18_env_154", %"$$fundef_18_env_154"* %"$$fundef_18_envp_169", i32 0, i32 1
  %"$g_175" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_175", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_174"
  %"$g_176" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_176", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_17"
  %"$$retval_17_177" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_17"
  ret { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_17_177"
}

define internal { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_14"(%"$$fundef_14_env_156"* %0) {
entry:
  %"$retval_15" = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_16_env_155"*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_16" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_15"
  %"$$retval_15_168" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_15"
  ret { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_15_168"
}

define internal { i8*, i8* }* @"$fundef_12"(%"$$fundef_12_env_157"* %0) {
entry:
  %"$retval_13" = alloca { i8*, i8* }*
  %"$dyndisp_table_161_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_161_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_161_salloc_load", i64 48)
  %"$dyndisp_table_161_salloc" = bitcast i8* %"$dyndisp_table_161_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_161" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_161_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_162" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_161", i32 1
  %"$dyndisp_pcast_163" = bitcast { i8*, i8* }* %"$dyndisp_gep_162" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_14_env_156"*)* @"$fundef_14" to { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_163"
  store { i8*, i8* }* %"$dyndisp_table_161", { i8*, i8* }** %"$retval_13"
  %"$$retval_13_164" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_13"
  ret { i8*, i8* }* %"$$retval_13_164"
}

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_502"(i8* %0) {
entry:
  %"$dyndisp_table_509_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_509_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_509_salloc_load", i64 48)
  %"$dyndisp_table_509_salloc" = bitcast i8* %"$dyndisp_table_509_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_509" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_509_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_510" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_509", i32 0
  %"$dyndisp_pcast_511" = bitcast { i8*, i8* }* %"$dyndisp_gep_510" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_12_env_157"*)* @"$fundef_12" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_511"
  %"$dyndisp_gep_512" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_509", i32 2
  %"$dyndisp_pcast_513" = bitcast { i8*, i8* }* %"$dyndisp_gep_512" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_22_env_152"*)* @"$fundef_22" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_513"
  store { i8*, i8* }* %"$dyndisp_table_509", { i8*, i8* }** @list_foldl
  %"$$fundef_32_envp_514_load" = load i8*, i8** @_execptr
  %"$$fundef_32_envp_514_salloc" = call i8* @_salloc(i8* %"$$fundef_32_envp_514_load", i64 8)
  %"$$fundef_32_envp_514" = bitcast i8* %"$$fundef_32_envp_514_salloc" to %"$$fundef_32_env_147"*
  %"$$fundef_32_env_voidp_516" = bitcast %"$$fundef_32_env_147"* %"$$fundef_32_envp_514" to i8*
  %"$$fundef_32_cloval_517" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_32_env_147"*)* @"$fundef_32" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_32_env_voidp_516", 1
  %"$$fundef_32_env_list_foldl_518" = getelementptr inbounds %"$$fundef_32_env_147", %"$$fundef_32_env_147"* %"$$fundef_32_envp_514", i32 0, i32 0
  %"$list_foldl_519" = load { i8*, i8* }*, { i8*, i8* }** @list_foldl
  store { i8*, i8* }* %"$list_foldl_519", { i8*, i8* }** %"$$fundef_32_env_list_foldl_518"
  %"$$fundef_38_env_voidp_521" = bitcast %"$$fundef_32_env_147"* %"$$fundef_32_envp_514" to i8*
  %"$$fundef_38_cloval_522" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_38_env_144"*)* @"$fundef_38" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_38_env_voidp_521", 1
  %"$dyndisp_table_523_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_523_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_523_salloc_load", i64 48)
  %"$dyndisp_table_523_salloc" = bitcast i8* %"$dyndisp_table_523_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_523" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_523_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_524" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_523", i32 0
  %"$dyndisp_pcast_525" = bitcast { i8*, i8* }* %"$dyndisp_gep_524" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$$fundef_32_cloval_517", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_525"
  %"$dyndisp_gep_526" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_523", i32 2
  %"$dyndisp_pcast_527" = bitcast { i8*, i8* }* %"$dyndisp_gep_526" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$$fundef_38_cloval_522", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_527"
  store { i8*, i8* }* %"$dyndisp_table_523", { i8*, i8* }** @list_length
  %"$expr_44" = alloca %Uint32
  %t1 = alloca { i8*, i8* }*
  %"$dyndisp_table_534_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_534_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_534_salloc_load", i64 48)
  %"$dyndisp_table_534_salloc" = bitcast i8* %"$dyndisp_table_534_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_534" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_534_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_535" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_534", i32 0
  %"$dyndisp_pcast_536" = bitcast { i8*, i8* }* %"$dyndisp_gep_535" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_45_env_141"*)* @"$fundef_45" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_536"
  %"$dyndisp_gep_537" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_534", i32 2
  %"$dyndisp_pcast_538" = bitcast { i8*, i8* }* %"$dyndisp_gep_537" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_49_env_139"*)* @"$fundef_49" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_538"
  store { i8*, i8* }* %"$dyndisp_table_534", { i8*, i8* }** %t1
  %t2 = alloca { i8*, i8* }*
  %"$dyndisp_table_545_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_545_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_545_salloc_load", i64 48)
  %"$dyndisp_table_545_salloc" = bitcast i8* %"$dyndisp_table_545_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_545" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_545_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_546" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_545", i32 0
  %"$dyndisp_pcast_547" = bitcast { i8*, i8* }* %"$dyndisp_gep_546" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_53_env_137"*)* @"$fundef_53" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_547"
  %"$dyndisp_gep_548" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_545", i32 2
  %"$dyndisp_pcast_549" = bitcast { i8*, i8* }* %"$dyndisp_gep_548" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_57_env_135"*)* @"$fundef_57" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_549"
  store { i8*, i8* }* %"$dyndisp_table_545", { i8*, i8* }** %t2
  %t = alloca { i8*, i8* }*
  %"$dyndisp_table_556_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_556_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_556_salloc_load", i64 48)
  %"$dyndisp_table_556_salloc" = bitcast i8* %"$dyndisp_table_556_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_556" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_556_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_557" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_556", i32 0
  %"$dyndisp_pcast_558" = bitcast { i8*, i8* }* %"$dyndisp_gep_557" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_61_env_133"*)* @"$fundef_61" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_558"
  %"$dyndisp_gep_559" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_556", i32 2
  %"$dyndisp_pcast_560" = bitcast { i8*, i8* }* %"$dyndisp_gep_559" to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_65_env_131"*)* @"$fundef_65" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_560"
  store { i8*, i8* }* %"$dyndisp_table_556", { i8*, i8* }** %t
  %some_bool = alloca %Bool*
  %"$adtval_561_load" = load i8*, i8** @_execptr
  %"$adtval_561_salloc" = call i8* @_salloc(i8* %"$adtval_561_load", i64 1)
  %"$adtval_561" = bitcast i8* %"$adtval_561_salloc" to %False*
  %"$adtgep_562" = getelementptr inbounds %False, %False* %"$adtval_561", i32 0, i32 0
  store i8 1, i8* %"$adtgep_562"
  %"$adtptr_563" = bitcast %False* %"$adtval_561" to %Bool*
  store %Bool* %"$adtptr_563", %Bool** %some_bool
  %"$some_bool_565" = load %Bool*, %Bool** %some_bool
  %"$some_bool_tag_566" = getelementptr inbounds %Bool, %Bool* %"$some_bool_565", i32 0, i32 0
  %"$some_bool_tag_567" = load i8, i8* %"$some_bool_tag_566"
  switch i8 %"$some_bool_tag_567", label %"$empty_default_568" [
    i8 0, label %"$True_569"
    i8 1, label %"$False_603"
  ]

"$True_569":                                      ; preds = %entry
  %"$some_bool_570" = bitcast %Bool* %"$some_bool_565" to %True*
  %f11 = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$t_571" = load { i8*, i8* }*, { i8*, i8* }** %t
  %"$t_572" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_571", i32 0
  %"$t_573" = bitcast { i8*, i8* }* %"$t_572" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_574" = load { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_573"
  %"$t_fptr_575" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_574", 0
  %"$t_envptr_576" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_574", 1
  %"$t_call_577" = call { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_575"(i8* %"$t_envptr_576")
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_577", { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$f11_6" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$f11_578" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11
  %"$f11_fptr_579" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_578", 0
  %"$f11_envptr_580" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_578", 1
  %"$t1_581" = load { i8*, i8* }*, { i8*, i8* }** %t1
  %"$f11_call_582" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_fptr_579"(i8* %"$f11_envptr_580", { i8*, i8* }* %"$t1_581")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_call_582", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_6"
  %"$$f11_6_583" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_6"
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$f11_6_583", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1
  %len = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$list_length_584" = load { i8*, i8* }*, { i8*, i8* }** @list_length
  %"$list_length_585" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_584", i32 0
  %"$list_length_586" = bitcast { i8*, i8* }* %"$list_length_585" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$list_length_587" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$list_length_586"
  %"$list_length_fptr_588" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$list_length_587", 0
  %"$list_length_envptr_589" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$list_length_587", 1
  %"$list_length_call_590" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$list_length_fptr_588"(i8* %"$list_length_envptr_589")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$list_length_call_590", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len
  %one = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %one
  %f1l = alloca %TName_List_Int32*
  %"$f1_7" = alloca %TName_List_Int32*
  %"$f1_591" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1
  %"$f1_fptr_592" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_591", 0
  %"$f1_envptr_593" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_591", 1
  %"$one_594" = load %Int32, %Int32* %one
  %"$f1_call_595" = call %TName_List_Int32* %"$f1_fptr_592"(i8* %"$f1_envptr_593", %Int32 %"$one_594")
  store %TName_List_Int32* %"$f1_call_595", %TName_List_Int32** %"$f1_7"
  %"$$f1_7_596" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_7"
  store %TName_List_Int32* %"$$f1_7_596", %TName_List_Int32** %f1l
  %"$len_8" = alloca %Uint32
  %"$len_597" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len
  %"$len_fptr_598" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_597", 0
  %"$len_envptr_599" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_597", 1
  %"$f1l_600" = load %TName_List_Int32*, %TName_List_Int32** %f1l
  %"$len_call_601" = call %Uint32 %"$len_fptr_598"(i8* %"$len_envptr_599", %TName_List_Int32* %"$f1l_600")
  store %Uint32 %"$len_call_601", %Uint32* %"$len_8"
  %"$$len_8_602" = load %Uint32, %Uint32* %"$len_8"
  store %Uint32 %"$$len_8_602", %Uint32* %"$expr_44"
  br label %"$matchsucc_564"

"$False_603":                                     ; preds = %entry
  %"$some_bool_604" = bitcast %Bool* %"$some_bool_565" to %False*
  %f22 = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$t_605" = load { i8*, i8* }*, { i8*, i8* }** %t
  %"$t_606" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_605", i32 2
  %"$t_607" = bitcast { i8*, i8* }* %"$t_606" to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_608" = load { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_607"
  %"$t_fptr_609" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_608", 0
  %"$t_envptr_610" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_608", 1
  %"$t_call_611" = call { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_609"(i8* %"$t_envptr_610")
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_611", { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$f22_9" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$f22_612" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22
  %"$f22_fptr_613" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_612", 0
  %"$f22_envptr_614" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_612", 1
  %"$t2_615" = load { i8*, i8* }*, { i8*, i8* }** %t2
  %"$f22_call_616" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_fptr_613"(i8* %"$f22_envptr_614", { i8*, i8* }* %"$t2_615")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_call_616", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_9"
  %"$$f22_9_617" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_9"
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$f22_9_617", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2
  %len1 = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$list_length_618" = load { i8*, i8* }*, { i8*, i8* }** @list_length
  %"$list_length_619" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_618", i32 2
  %"$list_length_620" = bitcast { i8*, i8* }* %"$list_length_619" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$list_length_621" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$list_length_620"
  %"$list_length_fptr_622" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$list_length_621", 0
  %"$list_length_envptr_623" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$list_length_621", 1
  %"$list_length_call_624" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$list_length_fptr_622"(i8* %"$list_length_envptr_623")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$list_length_call_624", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1
  %one2 = alloca %Int64
  store %Int64 { i64 1 }, %Int64* %one2
  %f2l = alloca %TName_List_Int64*
  %"$f2_10" = alloca %TName_List_Int64*
  %"$f2_625" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2
  %"$f2_fptr_626" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_625", 0
  %"$f2_envptr_627" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_625", 1
  %"$one_628" = load %Int64, %Int64* %one2
  %"$f2_call_629" = call %TName_List_Int64* %"$f2_fptr_626"(i8* %"$f2_envptr_627", %Int64 %"$one_628")
  store %TName_List_Int64* %"$f2_call_629", %TName_List_Int64** %"$f2_10"
  %"$$f2_10_630" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_10"
  store %TName_List_Int64* %"$$f2_10_630", %TName_List_Int64** %f2l
  %"$len_11" = alloca %Uint32
  %"$len_631" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1
  %"$len_fptr_632" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_631", 0
  %"$len_envptr_633" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_631", 1
  %"$f2l_634" = load %TName_List_Int64*, %TName_List_Int64** %f2l
  %"$len_call_635" = call %Uint32 %"$len_fptr_632"(i8* %"$len_envptr_633", %TName_List_Int64* %"$f2l_634")
  store %Uint32 %"$len_call_635", %Uint32* %"$len_11"
  %"$$len_11_636" = load %Uint32, %Uint32* %"$len_11"
  store %Uint32 %"$$len_11_636", %Uint32* %"$expr_44"
  br label %"$matchsucc_564"

"$empty_default_568":                             ; preds = %entry
  br label %"$matchsucc_564"

"$matchsucc_564":                                 ; preds = %"$False_603", %"$True_569", %"$empty_default_568"
  %"$$expr_44_637" = load %Uint32, %Uint32* %"$expr_44"
  ret %Uint32 %"$$expr_44_637"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_638" = call %Uint32 @"$scilla_expr_502"(i8* null)
  %"$pval_639" = alloca %Uint32
  %"$memvoidcast_640" = bitcast %Uint32* %"$pval_639" to i8*
  store %Uint32 %"$exprval_638", %Uint32* %"$pval_639"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_73", i8* %"$memvoidcast_640")
  ret void
}
