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
@"$dyndisp_161" = global [3 x { i8*, i8* }] zeroinitializer
@"$dyndisp_235" = global [3 x { i8*, i8* }] zeroinitializer
@list_foldl = global { i8*, i8* }* null
@"$dyndisp_505" = global [3 x { i8*, i8* }] zeroinitializer
@list_length = global { i8*, i8* }* null
@"$dyndisp_515" = global [3 x { i8*, i8* }] zeroinitializer
@"$dyndisp_522" = global [3 x { i8*, i8* }] zeroinitializer
@"$dyndisp_529" = global [3 x { i8*, i8* }] zeroinitializer
@"$dyndisp_536" = global [3 x { i8*, i8* }] zeroinitializer

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_67"(%"$$fundef_67_env_130"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_68" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$f_491" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 2
  %"$f_492" = bitcast { i8*, i8* }* %"$f_491" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_493" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_492"
  %"$f_fptr_494" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_493", 0
  %"$f_envptr_495" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_493", 1
  %"$f_call_496" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_494"(i8* %"$f_envptr_495")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_496", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_68"
  %"$$retval_68_497" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_68"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_68_497"
}

define internal { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_65"(%"$$fundef_65_env_131"* %0) {
entry:
  %"$retval_66" = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_67_env_130"*, { i8*, i8* }*)* @"$fundef_67" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66"
  %"$$retval_66_490" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66"
  ret { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_66_490"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_63"(%"$$fundef_63_env_132"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_64" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$f_480" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$f_481" = bitcast { i8*, i8* }* %"$f_480" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_482" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_481"
  %"$f_fptr_483" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_482", 0
  %"$f_envptr_484" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_482", 1
  %"$f_call_485" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_483"(i8* %"$f_envptr_484")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_485", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_64"
  %"$$retval_64_486" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_64"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_64_486"
}

define internal { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_61"(%"$$fundef_61_env_133"* %0) {
entry:
  %"$retval_62" = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_63_env_132"*, { i8*, i8* }*)* @"$fundef_63" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62"
  %"$$retval_62_479" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62"
  ret { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_62_479"
}

define internal %TName_List_Int64* @"$fundef_59"(%"$$fundef_59_env_134"* %0, %Int64 %1) {
entry:
  %"$retval_60" = alloca %TName_List_Int64*
  %an = alloca %TName_List_Int64*
  %"$adtval_460_load" = load i8*, i8** @_execptr
  %"$adtval_460_salloc" = call i8* @_salloc(i8* %"$adtval_460_load", i64 1)
  %"$adtval_460" = bitcast i8* %"$adtval_460_salloc" to %CName_Nil_Int64*
  %"$adtgep_461" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_460", i32 0, i32 0
  store i8 1, i8* %"$adtgep_461"
  %"$adtptr_462" = bitcast %CName_Nil_Int64* %"$adtval_460" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_462", %TName_List_Int64** %an
  %a1 = alloca %TName_List_Int64*
  %"$an_463" = load %TName_List_Int64*, %TName_List_Int64** %an
  %"$adtval_464_load" = load i8*, i8** @_execptr
  %"$adtval_464_salloc" = call i8* @_salloc(i8* %"$adtval_464_load", i64 17)
  %"$adtval_464" = bitcast i8* %"$adtval_464_salloc" to %CName_Cons_Int64*
  %"$adtgep_465" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_464", i32 0, i32 0
  store i8 0, i8* %"$adtgep_465"
  %"$adtgep_466" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_464", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_466"
  %"$adtgep_467" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_464", i32 0, i32 2
  store %TName_List_Int64* %"$an_463", %TName_List_Int64** %"$adtgep_467"
  %"$adtptr_468" = bitcast %CName_Cons_Int64* %"$adtval_464" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_468", %TName_List_Int64** %a1
  %"$a1_469" = load %TName_List_Int64*, %TName_List_Int64** %a1
  %"$adtval_470_load" = load i8*, i8** @_execptr
  %"$adtval_470_salloc" = call i8* @_salloc(i8* %"$adtval_470_load", i64 17)
  %"$adtval_470" = bitcast i8* %"$adtval_470_salloc" to %CName_Cons_Int64*
  %"$adtgep_471" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_470", i32 0, i32 0
  store i8 0, i8* %"$adtgep_471"
  %"$adtgep_472" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_470", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_472"
  %"$adtgep_473" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_470", i32 0, i32 2
  store %TName_List_Int64* %"$a1_469", %TName_List_Int64** %"$adtgep_473"
  %"$adtptr_474" = bitcast %CName_Cons_Int64* %"$adtval_470" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_474", %TName_List_Int64** %"$retval_60"
  %"$$retval_60_475" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_60"
  ret %TName_List_Int64* %"$$retval_60_475"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_57"(%"$$fundef_57_env_135"* %0) {
entry:
  %"$retval_58" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_59_env_134"*, %Int64)* @"$fundef_59" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_58"
  %"$$retval_58_459" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_58"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_58_459"
}

define internal %TName_List_Int32* @"$fundef_55"(%"$$fundef_55_env_136"* %0, %Int32 %1) {
entry:
  %"$retval_56" = alloca %TName_List_Int32*
  %an = alloca %TName_List_Int32*
  %"$adtval_440_load" = load i8*, i8** @_execptr
  %"$adtval_440_salloc" = call i8* @_salloc(i8* %"$adtval_440_load", i64 1)
  %"$adtval_440" = bitcast i8* %"$adtval_440_salloc" to %CName_Nil_Int32*
  %"$adtgep_441" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_440", i32 0, i32 0
  store i8 1, i8* %"$adtgep_441"
  %"$adtptr_442" = bitcast %CName_Nil_Int32* %"$adtval_440" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_442", %TName_List_Int32** %an
  %a1 = alloca %TName_List_Int32*
  %"$an_443" = load %TName_List_Int32*, %TName_List_Int32** %an
  %"$adtval_444_load" = load i8*, i8** @_execptr
  %"$adtval_444_salloc" = call i8* @_salloc(i8* %"$adtval_444_load", i64 13)
  %"$adtval_444" = bitcast i8* %"$adtval_444_salloc" to %CName_Cons_Int32*
  %"$adtgep_445" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_444", i32 0, i32 0
  store i8 0, i8* %"$adtgep_445"
  %"$adtgep_446" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_444", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_446"
  %"$adtgep_447" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_444", i32 0, i32 2
  store %TName_List_Int32* %"$an_443", %TName_List_Int32** %"$adtgep_447"
  %"$adtptr_448" = bitcast %CName_Cons_Int32* %"$adtval_444" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_448", %TName_List_Int32** %a1
  %"$a1_449" = load %TName_List_Int32*, %TName_List_Int32** %a1
  %"$adtval_450_load" = load i8*, i8** @_execptr
  %"$adtval_450_salloc" = call i8* @_salloc(i8* %"$adtval_450_load", i64 13)
  %"$adtval_450" = bitcast i8* %"$adtval_450_salloc" to %CName_Cons_Int32*
  %"$adtgep_451" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_450", i32 0, i32 0
  store i8 0, i8* %"$adtgep_451"
  %"$adtgep_452" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_450", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_452"
  %"$adtgep_453" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_450", i32 0, i32 2
  store %TName_List_Int32* %"$a1_449", %TName_List_Int32** %"$adtgep_453"
  %"$adtptr_454" = bitcast %CName_Cons_Int32* %"$adtval_450" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_454", %TName_List_Int32** %"$retval_56"
  %"$$retval_56_455" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_56"
  ret %TName_List_Int32* %"$$retval_56_455"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_53"(%"$$fundef_53_env_137"* %0) {
entry:
  %"$retval_54" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_55_env_136"*, %Int32)* @"$fundef_55" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_54"
  %"$$retval_54_439" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_54"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_54_439"
}

define internal %TName_List_Int64* @"$fundef_51"(%"$$fundef_51_env_138"* %0, %Int64 %1) {
entry:
  %"$retval_52" = alloca %TName_List_Int64*
  %an = alloca %TName_List_Int64*
  %"$adtval_426_load" = load i8*, i8** @_execptr
  %"$adtval_426_salloc" = call i8* @_salloc(i8* %"$adtval_426_load", i64 1)
  %"$adtval_426" = bitcast i8* %"$adtval_426_salloc" to %CName_Nil_Int64*
  %"$adtgep_427" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_426", i32 0, i32 0
  store i8 1, i8* %"$adtgep_427"
  %"$adtptr_428" = bitcast %CName_Nil_Int64* %"$adtval_426" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_428", %TName_List_Int64** %an
  %"$an_429" = load %TName_List_Int64*, %TName_List_Int64** %an
  %"$adtval_430_load" = load i8*, i8** @_execptr
  %"$adtval_430_salloc" = call i8* @_salloc(i8* %"$adtval_430_load", i64 17)
  %"$adtval_430" = bitcast i8* %"$adtval_430_salloc" to %CName_Cons_Int64*
  %"$adtgep_431" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_430", i32 0, i32 0
  store i8 0, i8* %"$adtgep_431"
  %"$adtgep_432" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_430", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_432"
  %"$adtgep_433" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_430", i32 0, i32 2
  store %TName_List_Int64* %"$an_429", %TName_List_Int64** %"$adtgep_433"
  %"$adtptr_434" = bitcast %CName_Cons_Int64* %"$adtval_430" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_434", %TName_List_Int64** %"$retval_52"
  %"$$retval_52_435" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_52"
  ret %TName_List_Int64* %"$$retval_52_435"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_49"(%"$$fundef_49_env_139"* %0) {
entry:
  %"$retval_50" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_51_env_138"*, %Int64)* @"$fundef_51" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_50"
  %"$$retval_50_425" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_50"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_50_425"
}

define internal %TName_List_Int32* @"$fundef_47"(%"$$fundef_47_env_140"* %0, %Int32 %1) {
entry:
  %"$retval_48" = alloca %TName_List_Int32*
  %an = alloca %TName_List_Int32*
  %"$adtval_412_load" = load i8*, i8** @_execptr
  %"$adtval_412_salloc" = call i8* @_salloc(i8* %"$adtval_412_load", i64 1)
  %"$adtval_412" = bitcast i8* %"$adtval_412_salloc" to %CName_Nil_Int32*
  %"$adtgep_413" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_412", i32 0, i32 0
  store i8 1, i8* %"$adtgep_413"
  %"$adtptr_414" = bitcast %CName_Nil_Int32* %"$adtval_412" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_414", %TName_List_Int32** %an
  %"$an_415" = load %TName_List_Int32*, %TName_List_Int32** %an
  %"$adtval_416_load" = load i8*, i8** @_execptr
  %"$adtval_416_salloc" = call i8* @_salloc(i8* %"$adtval_416_load", i64 13)
  %"$adtval_416" = bitcast i8* %"$adtval_416_salloc" to %CName_Cons_Int32*
  %"$adtgep_417" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_416", i32 0, i32 0
  store i8 0, i8* %"$adtgep_417"
  %"$adtgep_418" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_416", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_418"
  %"$adtgep_419" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_416", i32 0, i32 2
  store %TName_List_Int32* %"$an_415", %TName_List_Int32** %"$adtgep_419"
  %"$adtptr_420" = bitcast %CName_Cons_Int32* %"$adtval_416" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_420", %TName_List_Int32** %"$retval_48"
  %"$$retval_48_421" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_48"
  ret %TName_List_Int32* %"$$retval_48_421"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_45"(%"$$fundef_45_env_141"* %0) {
entry:
  %"$retval_46" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_47_env_140"*, %Int32)* @"$fundef_47" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_46"
  %"$$retval_46_411" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_46"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_46_411"
}

define internal %Uint32 @"$fundef_42"(%"$$fundef_42_env_142"* %0, %Int64 %1) {
entry:
  %"$$fundef_42_env_one_400" = getelementptr inbounds %"$$fundef_42_env_142", %"$$fundef_42_env_142"* %0, i32 0, i32 0
  %"$one_envload_401" = load %Uint32, %Uint32* %"$$fundef_42_env_one_400"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_401", %Uint32* %one
  %"$$fundef_42_env_z_402" = getelementptr inbounds %"$$fundef_42_env_142", %"$$fundef_42_env_142"* %0, i32 0, i32 1
  %"$z_envload_403" = load %Uint32, %Uint32* %"$$fundef_42_env_z_402"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_403", %Uint32* %z
  %"$retval_43" = alloca %Uint32
  %"$one_404" = load %Uint32, %Uint32* %one
  %"$z_405" = load %Uint32, %Uint32* %z
  %"$add_call_406" = call %Uint32 @_add_Uint32(%Uint32 %"$one_404", %Uint32 %"$z_405")
  store %Uint32 %"$add_call_406", %Uint32* %"$retval_43"
  %"$$retval_43_407" = load %Uint32, %Uint32* %"$retval_43"
  ret %Uint32 %"$$retval_43_407"
}

define internal { %Uint32 (i8*, %Int64)*, i8* } @"$fundef_40"(%"$$fundef_40_env_143"* %0, %Uint32 %1) {
entry:
  %"$$fundef_40_env_one_390" = getelementptr inbounds %"$$fundef_40_env_143", %"$$fundef_40_env_143"* %0, i32 0, i32 0
  %"$one_envload_391" = load %Uint32, %Uint32* %"$$fundef_40_env_one_390"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_391", %Uint32* %one
  %"$retval_41" = alloca { %Uint32 (i8*, %Int64)*, i8* }
  %"$$fundef_42_envp_392_load" = load i8*, i8** @_execptr
  %"$$fundef_42_envp_392_salloc" = call i8* @_salloc(i8* %"$$fundef_42_envp_392_load", i64 8)
  %"$$fundef_42_envp_392" = bitcast i8* %"$$fundef_42_envp_392_salloc" to %"$$fundef_42_env_142"*
  %"$$fundef_42_env_voidp_394" = bitcast %"$$fundef_42_env_142"* %"$$fundef_42_envp_392" to i8*
  %"$$fundef_42_cloval_395" = insertvalue { %Uint32 (i8*, %Int64)*, i8* } { %Uint32 (i8*, %Int64)* bitcast (%Uint32 (%"$$fundef_42_env_142"*, %Int64)* @"$fundef_42" to %Uint32 (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_42_env_voidp_394", 1
  %"$$fundef_42_env_one_396" = getelementptr inbounds %"$$fundef_42_env_142", %"$$fundef_42_env_142"* %"$$fundef_42_envp_392", i32 0, i32 0
  %"$one_397" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_397", %Uint32* %"$$fundef_42_env_one_396"
  %"$$fundef_42_env_z_398" = getelementptr inbounds %"$$fundef_42_env_142", %"$$fundef_42_env_142"* %"$$fundef_42_envp_392", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_42_env_z_398"
  store { %Uint32 (i8*, %Int64)*, i8* } %"$$fundef_42_cloval_395", { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_41"
  %"$$retval_41_399" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_41"
  ret { %Uint32 (i8*, %Int64)*, i8* } %"$$retval_41_399"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_144"* %0) {
entry:
  %"$$fundef_38_env_list_foldl_357" = getelementptr inbounds %"$$fundef_38_env_144", %"$$fundef_38_env_144"* %0, i32 0, i32 0
  %"$list_foldl_envload_358" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_38_env_list_foldl_357"
  %list_foldl = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldl_envload_358", { i8*, i8* }** %list_foldl
  %"$retval_39" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$list_foldl_359" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl
  %"$list_foldl_360" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_359", i32 2
  %"$list_foldl_361" = bitcast { i8*, i8* }* %"$list_foldl_360" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_362" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_361"
  %"$list_foldl_fptr_363" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_362", 0
  %"$list_foldl_envptr_364" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_362", 1
  %"$list_foldl_call_365" = call { i8*, i8* }* %"$list_foldl_fptr_363"(i8* %"$list_foldl_envptr_364")
  %"$list_foldl_366" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_365", i32 1
  %"$list_foldl_367" = bitcast { i8*, i8* }* %"$list_foldl_366" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_368" = load { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_367"
  %"$list_foldl_fptr_369" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_368", 0
  %"$list_foldl_envptr_370" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_368", 1
  %"$list_foldl_call_371" = call { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_369"(i8* %"$list_foldl_envptr_370")
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_371", { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %iter = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_40_envp_372_load" = load i8*, i8** @_execptr
  %"$$fundef_40_envp_372_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_372_load", i64 4)
  %"$$fundef_40_envp_372" = bitcast i8* %"$$fundef_40_envp_372_salloc" to %"$$fundef_40_env_143"*
  %"$$fundef_40_env_voidp_374" = bitcast %"$$fundef_40_env_143"* %"$$fundef_40_envp_372" to i8*
  %"$$fundef_40_cloval_375" = insertvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int64)*, i8* } (%"$$fundef_40_env_143"*, %Uint32)* @"$fundef_40" to { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_40_env_voidp_374", 1
  %"$$fundef_40_env_one_376" = getelementptr inbounds %"$$fundef_40_env_143", %"$$fundef_40_env_143"* %"$$fundef_40_envp_372", i32 0, i32 0
  %"$one_377" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_377", %Uint32* %"$$fundef_40_env_one_376"
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_40_cloval_375", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %init = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %init
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$foldl_378" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$foldl_fptr_379" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_378", 0
  %"$foldl_envptr_380" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_378", 1
  %"$iter_381" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$foldl_call_382" = call { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_379"(i8* %"$foldl_envptr_380", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_381")
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_382", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$$foldl_4_383" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$$foldl_4_fptr_384" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_383", 0
  %"$$foldl_4_envptr_385" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_383", 1
  %"$init_386" = load %Uint32, %Uint32* %init
  %"$$foldl_4_call_387" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_fptr_384"(i8* %"$$foldl_4_envptr_385", %Uint32 %"$init_386")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_call_387", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5"
  %"$$foldl_5_388" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5"
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_5_388", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_39"
  %"$$retval_39_389" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_39"
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_39_389"
}

define internal %Uint32 @"$fundef_36"(%"$$fundef_36_env_145"* %0, %Int32 %1) {
entry:
  %"$$fundef_36_env_one_349" = getelementptr inbounds %"$$fundef_36_env_145", %"$$fundef_36_env_145"* %0, i32 0, i32 0
  %"$one_envload_350" = load %Uint32, %Uint32* %"$$fundef_36_env_one_349"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_350", %Uint32* %one
  %"$$fundef_36_env_z_351" = getelementptr inbounds %"$$fundef_36_env_145", %"$$fundef_36_env_145"* %0, i32 0, i32 1
  %"$z_envload_352" = load %Uint32, %Uint32* %"$$fundef_36_env_z_351"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_352", %Uint32* %z
  %"$retval_37" = alloca %Uint32
  %"$one_353" = load %Uint32, %Uint32* %one
  %"$z_354" = load %Uint32, %Uint32* %z
  %"$add_call_355" = call %Uint32 @_add_Uint32(%Uint32 %"$one_353", %Uint32 %"$z_354")
  store %Uint32 %"$add_call_355", %Uint32* %"$retval_37"
  %"$$retval_37_356" = load %Uint32, %Uint32* %"$retval_37"
  ret %Uint32 %"$$retval_37_356"
}

define internal { %Uint32 (i8*, %Int32)*, i8* } @"$fundef_34"(%"$$fundef_34_env_146"* %0, %Uint32 %1) {
entry:
  %"$$fundef_34_env_one_339" = getelementptr inbounds %"$$fundef_34_env_146", %"$$fundef_34_env_146"* %0, i32 0, i32 0
  %"$one_envload_340" = load %Uint32, %Uint32* %"$$fundef_34_env_one_339"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_340", %Uint32* %one
  %"$retval_35" = alloca { %Uint32 (i8*, %Int32)*, i8* }
  %"$$fundef_36_envp_341_load" = load i8*, i8** @_execptr
  %"$$fundef_36_envp_341_salloc" = call i8* @_salloc(i8* %"$$fundef_36_envp_341_load", i64 8)
  %"$$fundef_36_envp_341" = bitcast i8* %"$$fundef_36_envp_341_salloc" to %"$$fundef_36_env_145"*
  %"$$fundef_36_env_voidp_343" = bitcast %"$$fundef_36_env_145"* %"$$fundef_36_envp_341" to i8*
  %"$$fundef_36_cloval_344" = insertvalue { %Uint32 (i8*, %Int32)*, i8* } { %Uint32 (i8*, %Int32)* bitcast (%Uint32 (%"$$fundef_36_env_145"*, %Int32)* @"$fundef_36" to %Uint32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_36_env_voidp_343", 1
  %"$$fundef_36_env_one_345" = getelementptr inbounds %"$$fundef_36_env_145", %"$$fundef_36_env_145"* %"$$fundef_36_envp_341", i32 0, i32 0
  %"$one_346" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_346", %Uint32* %"$$fundef_36_env_one_345"
  %"$$fundef_36_env_z_347" = getelementptr inbounds %"$$fundef_36_env_145", %"$$fundef_36_env_145"* %"$$fundef_36_envp_341", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_36_env_z_347"
  store { %Uint32 (i8*, %Int32)*, i8* } %"$$fundef_36_cloval_344", { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_35"
  %"$$retval_35_348" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_35"
  ret { %Uint32 (i8*, %Int32)*, i8* } %"$$retval_35_348"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_32"(%"$$fundef_32_env_147"* %0) {
entry:
  %"$$fundef_32_env_list_foldl_306" = getelementptr inbounds %"$$fundef_32_env_147", %"$$fundef_32_env_147"* %0, i32 0, i32 0
  %"$list_foldl_envload_307" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_32_env_list_foldl_306"
  %list_foldl = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldl_envload_307", { i8*, i8* }** %list_foldl
  %"$retval_33" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$list_foldl_308" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl
  %"$list_foldl_309" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_308", i32 0
  %"$list_foldl_310" = bitcast { i8*, i8* }* %"$list_foldl_309" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_311" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_310"
  %"$list_foldl_fptr_312" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_311", 0
  %"$list_foldl_envptr_313" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_311", 1
  %"$list_foldl_call_314" = call { i8*, i8* }* %"$list_foldl_fptr_312"(i8* %"$list_foldl_envptr_313")
  %"$list_foldl_315" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_314", i32 1
  %"$list_foldl_316" = bitcast { i8*, i8* }* %"$list_foldl_315" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_317" = load { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_316"
  %"$list_foldl_fptr_318" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_317", 0
  %"$list_foldl_envptr_319" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_317", 1
  %"$list_foldl_call_320" = call { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_318"(i8* %"$list_foldl_envptr_319")
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_320", { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %iter = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_34_envp_321_load" = load i8*, i8** @_execptr
  %"$$fundef_34_envp_321_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_321_load", i64 4)
  %"$$fundef_34_envp_321" = bitcast i8* %"$$fundef_34_envp_321_salloc" to %"$$fundef_34_env_146"*
  %"$$fundef_34_env_voidp_323" = bitcast %"$$fundef_34_env_146"* %"$$fundef_34_envp_321" to i8*
  %"$$fundef_34_cloval_324" = insertvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int32)*, i8* } (%"$$fundef_34_env_146"*, %Uint32)* @"$fundef_34" to { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_34_env_voidp_323", 1
  %"$$fundef_34_env_one_325" = getelementptr inbounds %"$$fundef_34_env_146", %"$$fundef_34_env_146"* %"$$fundef_34_envp_321", i32 0, i32 0
  %"$one_326" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_326", %Uint32* %"$$fundef_34_env_one_325"
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_34_cloval_324", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %init = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %init
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$foldl_327" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$foldl_fptr_328" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_327", 0
  %"$foldl_envptr_329" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_327", 1
  %"$iter_330" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$foldl_call_331" = call { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_328"(i8* %"$foldl_envptr_329", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_330")
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_331", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$$foldl_4_332" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$$foldl_4_fptr_333" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_332", 0
  %"$$foldl_4_envptr_334" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_332", 1
  %"$init_335" = load %Uint32, %Uint32* %init
  %"$$foldl_4_call_336" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_fptr_333"(i8* %"$$foldl_4_envptr_334", %Uint32 %"$init_335")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_call_336", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5"
  %"$$foldl_5_337" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5"
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_5_337", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_33"
  %"$$retval_33_338" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_33"
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_33_338"
}

define internal %Uint32 @"$fundef_30"(%"$$fundef_30_env_148"* %0, %TName_List_Int64* %1) {
entry:
  %"$$fundef_30_env_f_264" = getelementptr inbounds %"$$fundef_30_env_148", %"$$fundef_30_env_148"* %0, i32 0, i32 0
  %"$f_envload_265" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_f_264"
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_265", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_30_env_g_266" = getelementptr inbounds %"$$fundef_30_env_148", %"$$fundef_30_env_148"* %0, i32 0, i32 1
  %"$g_envload_267" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_g_266"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_267", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_30_env_z_268" = getelementptr inbounds %"$$fundef_30_env_148", %"$$fundef_30_env_148"* %0, i32 0, i32 2
  %"$z_envload_269" = load %Uint32, %Uint32* %"$$fundef_30_env_z_268"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_269", %Uint32* %z
  %"$retval_31" = alloca %Uint32
  %"$l_tag_271" = getelementptr inbounds %TName_List_Int64, %TName_List_Int64* %1, i32 0, i32 0
  %"$l_tag_272" = load i8, i8* %"$l_tag_271"
  switch i8 %"$l_tag_272", label %"$empty_default_273" [
    i8 0, label %"$Cons_274"
    i8 1, label %"$Nil_302"
  ]

"$Cons_274":                                      ; preds = %entry
  %"$l_275" = bitcast %TName_List_Int64* %1 to %CName_Cons_Int64*
  %"$h_gep_276" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_275", i32 0, i32 1
  %"$h_load_277" = load %Int64, %Int64* %"$h_gep_276"
  %h = alloca %Int64
  store %Int64 %"$h_load_277", %Int64* %h
  %"$t_gep_278" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_275", i32 0, i32 2
  %"$t_load_279" = load %TName_List_Int64*, %TName_List_Int64** %"$t_gep_278"
  %t = alloca %TName_List_Int64*
  store %TName_List_Int64* %"$t_load_279", %TName_List_Int64** %t
  %res = alloca %Uint32
  %"$f_0" = alloca { %Uint32 (i8*, %Int64)*, i8* }
  %"$f_280" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_281" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_280", 0
  %"$f_envptr_282" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_280", 1
  %"$z_283" = load %Uint32, %Uint32* %z
  %"$f_call_284" = call { %Uint32 (i8*, %Int64)*, i8* } %"$f_fptr_281"(i8* %"$f_envptr_282", %Uint32 %"$z_283")
  store { %Uint32 (i8*, %Int64)*, i8* } %"$f_call_284", { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0"
  %"$f_1" = alloca %Uint32
  %"$$f_0_285" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0"
  %"$$f_0_fptr_286" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_285", 0
  %"$$f_0_envptr_287" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_285", 1
  %"$h_288" = load %Int64, %Int64* %h
  %"$$f_0_call_289" = call %Uint32 %"$$f_0_fptr_286"(i8* %"$$f_0_envptr_287", %Int64 %"$h_288")
  store %Uint32 %"$$f_0_call_289", %Uint32* %"$f_1"
  %"$$f_1_290" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_290", %Uint32* %res
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$g_291" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_292" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_291", 0
  %"$g_envptr_293" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_291", 1
  %"$res_294" = load %Uint32, %Uint32* %res
  %"$g_call_295" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_fptr_292"(i8* %"$g_envptr_293", %Uint32 %"$res_294")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_call_295", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_296" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_297" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_296", 0
  %"$$g_2_envptr_298" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_296", 1
  %"$t_299" = load %TName_List_Int64*, %TName_List_Int64** %t
  %"$$g_2_call_300" = call %Uint32 %"$$g_2_fptr_297"(i8* %"$$g_2_envptr_298", %TName_List_Int64* %"$t_299")
  store %Uint32 %"$$g_2_call_300", %Uint32* %"$g_3"
  %"$$g_3_301" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_301", %Uint32* %"$retval_31"
  br label %"$matchsucc_270"

"$Nil_302":                                       ; preds = %entry
  %"$l_303" = bitcast %TName_List_Int64* %1 to %CName_Nil_Int64*
  %"$z_304" = load %Uint32, %Uint32* %z
  store %Uint32 %"$z_304", %Uint32* %"$retval_31"
  br label %"$matchsucc_270"

"$empty_default_273":                             ; preds = %entry
  br label %"$matchsucc_270"

"$matchsucc_270":                                 ; preds = %"$Nil_302", %"$Cons_274", %"$empty_default_273"
  %"$$retval_31_305" = load %Uint32, %Uint32* %"$retval_31"
  ret %Uint32 %"$$retval_31_305"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_28"(%"$$fundef_28_env_149"* %0, %Uint32 %1) {
entry:
  %"$$fundef_28_env_f_250" = getelementptr inbounds %"$$fundef_28_env_149", %"$$fundef_28_env_149"* %0, i32 0, i32 0
  %"$f_envload_251" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_250"
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_251", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_28_env_g_252" = getelementptr inbounds %"$$fundef_28_env_149", %"$$fundef_28_env_149"* %0, i32 0, i32 1
  %"$g_envload_253" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_252"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_253", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_29" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$$fundef_30_envp_254_load" = load i8*, i8** @_execptr
  %"$$fundef_30_envp_254_salloc" = call i8* @_salloc(i8* %"$$fundef_30_envp_254_load", i64 40)
  %"$$fundef_30_envp_254" = bitcast i8* %"$$fundef_30_envp_254_salloc" to %"$$fundef_30_env_148"*
  %"$$fundef_30_env_voidp_256" = bitcast %"$$fundef_30_env_148"* %"$$fundef_30_envp_254" to i8*
  %"$$fundef_30_cloval_257" = insertvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } { %Uint32 (i8*, %TName_List_Int64*)* bitcast (%Uint32 (%"$$fundef_30_env_148"*, %TName_List_Int64*)* @"$fundef_30" to %Uint32 (i8*, %TName_List_Int64*)*), i8* undef }, i8* %"$$fundef_30_env_voidp_256", 1
  %"$$fundef_30_env_f_258" = getelementptr inbounds %"$$fundef_30_env_148", %"$$fundef_30_env_148"* %"$$fundef_30_envp_254", i32 0, i32 0
  %"$f_259" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_259", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_f_258"
  %"$$fundef_30_env_g_260" = getelementptr inbounds %"$$fundef_30_env_148", %"$$fundef_30_env_148"* %"$$fundef_30_envp_254", i32 0, i32 1
  %"$g_261" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_261", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_g_260"
  %"$$fundef_30_env_z_262" = getelementptr inbounds %"$$fundef_30_env_148", %"$$fundef_30_env_148"* %"$$fundef_30_envp_254", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_30_env_z_262"
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$fundef_30_cloval_257", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_29"
  %"$$retval_29_263" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_29"
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_29_263"
}

define internal { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_26"(%"$$fundef_26_env_150"* %0, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_27" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_28_envp_241_load" = load i8*, i8** @_execptr
  %"$$fundef_28_envp_241_salloc" = call i8* @_salloc(i8* %"$$fundef_28_envp_241_load", i64 32)
  %"$$fundef_28_envp_241" = bitcast i8* %"$$fundef_28_envp_241_salloc" to %"$$fundef_28_env_149"*
  %"$$fundef_28_env_voidp_243" = bitcast %"$$fundef_28_env_149"* %"$$fundef_28_envp_241" to i8*
  %"$$fundef_28_cloval_244" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_28_env_149"*, %Uint32)* @"$fundef_28" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_28_env_voidp_243", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_28_cloval_244", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_28_env_f_245" = getelementptr inbounds %"$$fundef_28_env_149", %"$$fundef_28_env_149"* %"$$fundef_28_envp_241", i32 0, i32 0
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_245"
  %"$$fundef_28_env_g_246" = getelementptr inbounds %"$$fundef_28_env_149", %"$$fundef_28_env_149"* %"$$fundef_28_envp_241", i32 0, i32 1
  %"$g_247" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_247", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_246"
  %"$g_248" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_248", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_27"
  %"$$retval_27_249" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_27"
  ret { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_27_249"
}

define internal { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_24"(%"$$fundef_24_env_151"* %0) {
entry:
  %"$retval_25" = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_26_env_150"*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_26" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_25"
  %"$$retval_25_240" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_25"
  ret { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_25_240"
}

define internal { i8*, i8* }* @"$fundef_22"(%"$$fundef_22_env_152"* %0) {
entry:
  %"$retval_23" = alloca { i8*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_24_env_151"*)* @"$fundef_24" to { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_235", i32 0, i32 1) to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_235", i32 0, i32 0), { i8*, i8* }** %"$retval_23"
  %"$$retval_23_236" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_23"
  ret { i8*, i8* }* %"$$retval_23_236"
}

define internal %Uint32 @"$fundef_20"(%"$$fundef_20_env_153"* %0, %TName_List_Int32* %1) {
entry:
  %"$$fundef_20_env_f_190" = getelementptr inbounds %"$$fundef_20_env_153", %"$$fundef_20_env_153"* %0, i32 0, i32 0
  %"$f_envload_191" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_f_190"
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_191", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_20_env_g_192" = getelementptr inbounds %"$$fundef_20_env_153", %"$$fundef_20_env_153"* %0, i32 0, i32 1
  %"$g_envload_193" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_g_192"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_193", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_20_env_z_194" = getelementptr inbounds %"$$fundef_20_env_153", %"$$fundef_20_env_153"* %0, i32 0, i32 2
  %"$z_envload_195" = load %Uint32, %Uint32* %"$$fundef_20_env_z_194"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_195", %Uint32* %z
  %"$retval_21" = alloca %Uint32
  %"$l_tag_197" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %1, i32 0, i32 0
  %"$l_tag_198" = load i8, i8* %"$l_tag_197"
  switch i8 %"$l_tag_198", label %"$empty_default_199" [
    i8 0, label %"$Cons_200"
    i8 1, label %"$Nil_228"
  ]

"$Cons_200":                                      ; preds = %entry
  %"$l_201" = bitcast %TName_List_Int32* %1 to %CName_Cons_Int32*
  %"$h_gep_202" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_201", i32 0, i32 1
  %"$h_load_203" = load %Int32, %Int32* %"$h_gep_202"
  %h = alloca %Int32
  store %Int32 %"$h_load_203", %Int32* %h
  %"$t_gep_204" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_201", i32 0, i32 2
  %"$t_load_205" = load %TName_List_Int32*, %TName_List_Int32** %"$t_gep_204"
  %t = alloca %TName_List_Int32*
  store %TName_List_Int32* %"$t_load_205", %TName_List_Int32** %t
  %res = alloca %Uint32
  %"$f_0" = alloca { %Uint32 (i8*, %Int32)*, i8* }
  %"$f_206" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_207" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_206", 0
  %"$f_envptr_208" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_206", 1
  %"$z_209" = load %Uint32, %Uint32* %z
  %"$f_call_210" = call { %Uint32 (i8*, %Int32)*, i8* } %"$f_fptr_207"(i8* %"$f_envptr_208", %Uint32 %"$z_209")
  store { %Uint32 (i8*, %Int32)*, i8* } %"$f_call_210", { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0"
  %"$f_1" = alloca %Uint32
  %"$$f_0_211" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0"
  %"$$f_0_fptr_212" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_211", 0
  %"$$f_0_envptr_213" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_211", 1
  %"$h_214" = load %Int32, %Int32* %h
  %"$$f_0_call_215" = call %Uint32 %"$$f_0_fptr_212"(i8* %"$$f_0_envptr_213", %Int32 %"$h_214")
  store %Uint32 %"$$f_0_call_215", %Uint32* %"$f_1"
  %"$$f_1_216" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_216", %Uint32* %res
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$g_217" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_218" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_217", 0
  %"$g_envptr_219" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_217", 1
  %"$res_220" = load %Uint32, %Uint32* %res
  %"$g_call_221" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_fptr_218"(i8* %"$g_envptr_219", %Uint32 %"$res_220")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_call_221", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_222" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_223" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_222", 0
  %"$$g_2_envptr_224" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_222", 1
  %"$t_225" = load %TName_List_Int32*, %TName_List_Int32** %t
  %"$$g_2_call_226" = call %Uint32 %"$$g_2_fptr_223"(i8* %"$$g_2_envptr_224", %TName_List_Int32* %"$t_225")
  store %Uint32 %"$$g_2_call_226", %Uint32* %"$g_3"
  %"$$g_3_227" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_227", %Uint32* %"$retval_21"
  br label %"$matchsucc_196"

"$Nil_228":                                       ; preds = %entry
  %"$l_229" = bitcast %TName_List_Int32* %1 to %CName_Nil_Int32*
  %"$z_230" = load %Uint32, %Uint32* %z
  store %Uint32 %"$z_230", %Uint32* %"$retval_21"
  br label %"$matchsucc_196"

"$empty_default_199":                             ; preds = %entry
  br label %"$matchsucc_196"

"$matchsucc_196":                                 ; preds = %"$Nil_228", %"$Cons_200", %"$empty_default_199"
  %"$$retval_21_231" = load %Uint32, %Uint32* %"$retval_21"
  ret %Uint32 %"$$retval_21_231"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_18"(%"$$fundef_18_env_154"* %0, %Uint32 %1) {
entry:
  %"$$fundef_18_env_f_176" = getelementptr inbounds %"$$fundef_18_env_154", %"$$fundef_18_env_154"* %0, i32 0, i32 0
  %"$f_envload_177" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_176"
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_177", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_18_env_g_178" = getelementptr inbounds %"$$fundef_18_env_154", %"$$fundef_18_env_154"* %0, i32 0, i32 1
  %"$g_envload_179" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_178"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_179", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_19" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$$fundef_20_envp_180_load" = load i8*, i8** @_execptr
  %"$$fundef_20_envp_180_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_180_load", i64 40)
  %"$$fundef_20_envp_180" = bitcast i8* %"$$fundef_20_envp_180_salloc" to %"$$fundef_20_env_153"*
  %"$$fundef_20_env_voidp_182" = bitcast %"$$fundef_20_env_153"* %"$$fundef_20_envp_180" to i8*
  %"$$fundef_20_cloval_183" = insertvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } { %Uint32 (i8*, %TName_List_Int32*)* bitcast (%Uint32 (%"$$fundef_20_env_153"*, %TName_List_Int32*)* @"$fundef_20" to %Uint32 (i8*, %TName_List_Int32*)*), i8* undef }, i8* %"$$fundef_20_env_voidp_182", 1
  %"$$fundef_20_env_f_184" = getelementptr inbounds %"$$fundef_20_env_153", %"$$fundef_20_env_153"* %"$$fundef_20_envp_180", i32 0, i32 0
  %"$f_185" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_185", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_f_184"
  %"$$fundef_20_env_g_186" = getelementptr inbounds %"$$fundef_20_env_153", %"$$fundef_20_env_153"* %"$$fundef_20_envp_180", i32 0, i32 1
  %"$g_187" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_187", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_g_186"
  %"$$fundef_20_env_z_188" = getelementptr inbounds %"$$fundef_20_env_153", %"$$fundef_20_env_153"* %"$$fundef_20_envp_180", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_20_env_z_188"
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$fundef_20_cloval_183", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_19"
  %"$$retval_19_189" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_19"
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_19_189"
}

define internal { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_16"(%"$$fundef_16_env_155"* %0, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_17" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_18_envp_167_load" = load i8*, i8** @_execptr
  %"$$fundef_18_envp_167_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_167_load", i64 32)
  %"$$fundef_18_envp_167" = bitcast i8* %"$$fundef_18_envp_167_salloc" to %"$$fundef_18_env_154"*
  %"$$fundef_18_env_voidp_169" = bitcast %"$$fundef_18_env_154"* %"$$fundef_18_envp_167" to i8*
  %"$$fundef_18_cloval_170" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_18_env_154"*, %Uint32)* @"$fundef_18" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_18_env_voidp_169", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_18_cloval_170", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_18_env_f_171" = getelementptr inbounds %"$$fundef_18_env_154", %"$$fundef_18_env_154"* %"$$fundef_18_envp_167", i32 0, i32 0
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_171"
  %"$$fundef_18_env_g_172" = getelementptr inbounds %"$$fundef_18_env_154", %"$$fundef_18_env_154"* %"$$fundef_18_envp_167", i32 0, i32 1
  %"$g_173" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_173", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_172"
  %"$g_174" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_174", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_17"
  %"$$retval_17_175" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_17"
  ret { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_17_175"
}

define internal { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_14"(%"$$fundef_14_env_156"* %0) {
entry:
  %"$retval_15" = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_16_env_155"*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_16" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_15"
  %"$$retval_15_166" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_15"
  ret { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_15_166"
}

define internal { i8*, i8* }* @"$fundef_12"(%"$$fundef_12_env_157"* %0) {
entry:
  %"$retval_13" = alloca { i8*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_14_env_156"*)* @"$fundef_14" to { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_161", i32 0, i32 1) to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_161", i32 0, i32 0), { i8*, i8* }** %"$retval_13"
  %"$$retval_13_162" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_13"
  ret { i8*, i8* }* %"$$retval_13_162"
}

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_498"(i8* %0) {
entry:
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_12_env_157"*)* @"$fundef_12" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* bitcast ([3 x { i8*, i8* }]* @"$dyndisp_505" to { { i8*, i8* }* (i8*)*, i8* }*)
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_22_env_152"*)* @"$fundef_22" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_505", i32 0, i32 2) to { { i8*, i8* }* (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_505", i32 0, i32 0), { i8*, i8* }** @list_foldl
  %"$$fundef_32_envp_506_load" = load i8*, i8** @_execptr
  %"$$fundef_32_envp_506_salloc" = call i8* @_salloc(i8* %"$$fundef_32_envp_506_load", i64 8)
  %"$$fundef_32_envp_506" = bitcast i8* %"$$fundef_32_envp_506_salloc" to %"$$fundef_32_env_147"*
  %"$$fundef_32_env_voidp_508" = bitcast %"$$fundef_32_env_147"* %"$$fundef_32_envp_506" to i8*
  %"$$fundef_32_cloval_509" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_32_env_147"*)* @"$fundef_32" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_32_env_voidp_508", 1
  %"$$fundef_32_env_list_foldl_510" = getelementptr inbounds %"$$fundef_32_env_147", %"$$fundef_32_env_147"* %"$$fundef_32_envp_506", i32 0, i32 0
  %"$list_foldl_511" = load { i8*, i8* }*, { i8*, i8* }** @list_foldl
  store { i8*, i8* }* %"$list_foldl_511", { i8*, i8* }** %"$$fundef_32_env_list_foldl_510"
  %"$$fundef_38_env_voidp_513" = bitcast %"$$fundef_32_env_147"* %"$$fundef_32_envp_506" to i8*
  %"$$fundef_38_cloval_514" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_38_env_144"*)* @"$fundef_38" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_38_env_voidp_513", 1
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$$fundef_32_cloval_509", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* bitcast ([3 x { i8*, i8* }]* @"$dyndisp_515" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*)
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$$fundef_38_cloval_514", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_515", i32 0, i32 2) to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_515", i32 0, i32 0), { i8*, i8* }** @list_length
  %"$expr_44" = alloca %Uint32
  %t1 = alloca { i8*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_45_env_141"*)* @"$fundef_45" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* bitcast ([3 x { i8*, i8* }]* @"$dyndisp_522" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*)
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_49_env_139"*)* @"$fundef_49" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_522", i32 0, i32 2) to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_522", i32 0, i32 0), { i8*, i8* }** %t1
  %t2 = alloca { i8*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_53_env_137"*)* @"$fundef_53" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* bitcast ([3 x { i8*, i8* }]* @"$dyndisp_529" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*)
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_57_env_135"*)* @"$fundef_57" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_529", i32 0, i32 2) to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_529", i32 0, i32 0), { i8*, i8* }** %t2
  %t = alloca { i8*, i8* }*
  store { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_61_env_133"*)* @"$fundef_61" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* bitcast ([3 x { i8*, i8* }]* @"$dyndisp_536" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*)
  store { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_65_env_131"*)* @"$fundef_65" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_536", i32 0, i32 2) to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_536", i32 0, i32 0), { i8*, i8* }** %t
  %some_bool = alloca %Bool*
  %"$adtval_537_load" = load i8*, i8** @_execptr
  %"$adtval_537_salloc" = call i8* @_salloc(i8* %"$adtval_537_load", i64 1)
  %"$adtval_537" = bitcast i8* %"$adtval_537_salloc" to %False*
  %"$adtgep_538" = getelementptr inbounds %False, %False* %"$adtval_537", i32 0, i32 0
  store i8 1, i8* %"$adtgep_538"
  %"$adtptr_539" = bitcast %False* %"$adtval_537" to %Bool*
  store %Bool* %"$adtptr_539", %Bool** %some_bool
  %"$some_bool_541" = load %Bool*, %Bool** %some_bool
  %"$some_bool_tag_542" = getelementptr inbounds %Bool, %Bool* %"$some_bool_541", i32 0, i32 0
  %"$some_bool_tag_543" = load i8, i8* %"$some_bool_tag_542"
  switch i8 %"$some_bool_tag_543", label %"$empty_default_544" [
    i8 0, label %"$True_545"
    i8 1, label %"$False_579"
  ]

"$True_545":                                      ; preds = %entry
  %"$some_bool_546" = bitcast %Bool* %"$some_bool_541" to %True*
  %f11 = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$t_547" = load { i8*, i8* }*, { i8*, i8* }** %t
  %"$t_548" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_547", i32 0
  %"$t_549" = bitcast { i8*, i8* }* %"$t_548" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_550" = load { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_549"
  %"$t_fptr_551" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_550", 0
  %"$t_envptr_552" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_550", 1
  %"$t_call_553" = call { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_551"(i8* %"$t_envptr_552")
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_553", { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$f11_6" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$f11_554" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11
  %"$f11_fptr_555" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_554", 0
  %"$f11_envptr_556" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_554", 1
  %"$t1_557" = load { i8*, i8* }*, { i8*, i8* }** %t1
  %"$f11_call_558" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_fptr_555"(i8* %"$f11_envptr_556", { i8*, i8* }* %"$t1_557")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_call_558", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_6"
  %"$$f11_6_559" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_6"
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$f11_6_559", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1
  %len = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$list_length_560" = load { i8*, i8* }*, { i8*, i8* }** @list_length
  %"$list_length_561" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_560", i32 0
  %"$list_length_562" = bitcast { i8*, i8* }* %"$list_length_561" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$list_length_563" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$list_length_562"
  %"$list_length_fptr_564" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$list_length_563", 0
  %"$list_length_envptr_565" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$list_length_563", 1
  %"$list_length_call_566" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$list_length_fptr_564"(i8* %"$list_length_envptr_565")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$list_length_call_566", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len
  %one = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %one
  %f1l = alloca %TName_List_Int32*
  %"$f1_7" = alloca %TName_List_Int32*
  %"$f1_567" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1
  %"$f1_fptr_568" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_567", 0
  %"$f1_envptr_569" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_567", 1
  %"$one_570" = load %Int32, %Int32* %one
  %"$f1_call_571" = call %TName_List_Int32* %"$f1_fptr_568"(i8* %"$f1_envptr_569", %Int32 %"$one_570")
  store %TName_List_Int32* %"$f1_call_571", %TName_List_Int32** %"$f1_7"
  %"$$f1_7_572" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_7"
  store %TName_List_Int32* %"$$f1_7_572", %TName_List_Int32** %f1l
  %"$len_8" = alloca %Uint32
  %"$len_573" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len
  %"$len_fptr_574" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_573", 0
  %"$len_envptr_575" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_573", 1
  %"$f1l_576" = load %TName_List_Int32*, %TName_List_Int32** %f1l
  %"$len_call_577" = call %Uint32 %"$len_fptr_574"(i8* %"$len_envptr_575", %TName_List_Int32* %"$f1l_576")
  store %Uint32 %"$len_call_577", %Uint32* %"$len_8"
  %"$$len_8_578" = load %Uint32, %Uint32* %"$len_8"
  store %Uint32 %"$$len_8_578", %Uint32* %"$expr_44"
  br label %"$matchsucc_540"

"$False_579":                                     ; preds = %entry
  %"$some_bool_580" = bitcast %Bool* %"$some_bool_541" to %False*
  %f22 = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$t_581" = load { i8*, i8* }*, { i8*, i8* }** %t
  %"$t_582" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_581", i32 2
  %"$t_583" = bitcast { i8*, i8* }* %"$t_582" to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_584" = load { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_583"
  %"$t_fptr_585" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_584", 0
  %"$t_envptr_586" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_584", 1
  %"$t_call_587" = call { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_585"(i8* %"$t_envptr_586")
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_587", { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$f22_9" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$f22_588" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22
  %"$f22_fptr_589" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_588", 0
  %"$f22_envptr_590" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_588", 1
  %"$t2_591" = load { i8*, i8* }*, { i8*, i8* }** %t2
  %"$f22_call_592" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_fptr_589"(i8* %"$f22_envptr_590", { i8*, i8* }* %"$t2_591")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_call_592", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_9"
  %"$$f22_9_593" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_9"
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$f22_9_593", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2
  %len1 = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$list_length_594" = load { i8*, i8* }*, { i8*, i8* }** @list_length
  %"$list_length_595" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_594", i32 2
  %"$list_length_596" = bitcast { i8*, i8* }* %"$list_length_595" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$list_length_597" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$list_length_596"
  %"$list_length_fptr_598" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$list_length_597", 0
  %"$list_length_envptr_599" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$list_length_597", 1
  %"$list_length_call_600" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$list_length_fptr_598"(i8* %"$list_length_envptr_599")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$list_length_call_600", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1
  %one2 = alloca %Int64
  store %Int64 { i64 1 }, %Int64* %one2
  %f2l = alloca %TName_List_Int64*
  %"$f2_10" = alloca %TName_List_Int64*
  %"$f2_601" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2
  %"$f2_fptr_602" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_601", 0
  %"$f2_envptr_603" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_601", 1
  %"$one_604" = load %Int64, %Int64* %one2
  %"$f2_call_605" = call %TName_List_Int64* %"$f2_fptr_602"(i8* %"$f2_envptr_603", %Int64 %"$one_604")
  store %TName_List_Int64* %"$f2_call_605", %TName_List_Int64** %"$f2_10"
  %"$$f2_10_606" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_10"
  store %TName_List_Int64* %"$$f2_10_606", %TName_List_Int64** %f2l
  %"$len_11" = alloca %Uint32
  %"$len_607" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1
  %"$len_fptr_608" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_607", 0
  %"$len_envptr_609" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_607", 1
  %"$f2l_610" = load %TName_List_Int64*, %TName_List_Int64** %f2l
  %"$len_call_611" = call %Uint32 %"$len_fptr_608"(i8* %"$len_envptr_609", %TName_List_Int64* %"$f2l_610")
  store %Uint32 %"$len_call_611", %Uint32* %"$len_11"
  %"$$len_11_612" = load %Uint32, %Uint32* %"$len_11"
  store %Uint32 %"$$len_11_612", %Uint32* %"$expr_44"
  br label %"$matchsucc_540"

"$empty_default_544":                             ; preds = %entry
  br label %"$matchsucc_540"

"$matchsucc_540":                                 ; preds = %"$False_579", %"$True_545", %"$empty_default_544"
  %"$$expr_44_613" = load %Uint32, %Uint32* %"$expr_44"
  ret %Uint32 %"$$expr_44_613"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_614" = call %Uint32 @"$scilla_expr_498"(i8* null)
  %"$pval_615" = alloca %Uint32
  %"$memvoidcast_616" = bitcast %Uint32* %"$pval_615" to i8*
  store %Uint32 %"$exprval_614", %Uint32* %"$pval_615"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_73", i8* %"$memvoidcast_616")
  ret void
}
