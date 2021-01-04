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
%"$TyDescrTy_ADTTyp_99" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_98"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_98" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_100"**, %"$TyDescrTy_ADTTyp_99"* }
%"$TyDescrTy_ADTTyp_Constr_100" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_List_Int64 = type { i8, %CName_Cons_Int64*, %CName_Nil_Int64* }
%CName_Cons_Int64 = type <{ i8, %Int64, %TName_List_Int64* }>
%CName_Nil_Int64 = type <{ i8 }>
%Int64 = type { i64 }
%"$$fundef_67_env_138" = type {}
%"$$fundef_65_env_139" = type {}
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>
%Int32 = type { i32 }
%"$$fundef_63_env_140" = type {}
%"$$fundef_61_env_141" = type {}
%"$$fundef_59_env_142" = type {}
%"$$fundef_57_env_143" = type {}
%"$$fundef_55_env_144" = type {}
%"$$fundef_53_env_145" = type {}
%"$$fundef_51_env_146" = type {}
%"$$fundef_49_env_147" = type {}
%"$$fundef_47_env_148" = type {}
%"$$fundef_45_env_149" = type {}
%Uint32 = type { i32 }
%"$$fundef_42_env_150" = type { %Uint32, %Uint32 }
%"$$fundef_40_env_151" = type { %Uint32 }
%"$$fundef_38_env_152" = type { { i8*, i8* }* }
%"$$fundef_36_env_153" = type { %Uint32, %Uint32 }
%"$$fundef_34_env_154" = type { %Uint32 }
%"$$fundef_32_env_155" = type { { i8*, i8* }* }
%"$$fundef_30_env_156" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_28_env_157" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_26_env_158" = type {}
%"$$fundef_24_env_159" = type {}
%"$$fundef_22_env_160" = type {}
%"$$fundef_20_env_161" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_18_env_162" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_16_env_163" = type {}
%"$$fundef_14_env_164" = type {}
%"$$fundef_12_env_165" = type {}
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
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
@"$TyDescr_Bnum_Prim_88" = global %"$TyDescrTy_PrimTyp_69" { i32 3, i32 0 }
@"$TyDescr_Bnum_89" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_69"* @"$TyDescr_Bnum_Prim_88" to i8*) }
@"$TyDescr_Message_Prim_90" = global %"$TyDescrTy_PrimTyp_69" { i32 4, i32 0 }
@"$TyDescr_Message_91" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_69"* @"$TyDescr_Message_Prim_90" to i8*) }
@"$TyDescr_Event_Prim_92" = global %"$TyDescrTy_PrimTyp_69" { i32 5, i32 0 }
@"$TyDescr_Event_93" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_69"* @"$TyDescr_Event_Prim_92" to i8*) }
@"$TyDescr_Exception_Prim_94" = global %"$TyDescrTy_PrimTyp_69" { i32 6, i32 0 }
@"$TyDescr_Exception_95" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_69"* @"$TyDescr_Exception_Prim_94" to i8*) }
@"$TyDescr_Bystr_Prim_96" = global %"$TyDescrTy_PrimTyp_69" { i32 7, i32 0 }
@"$TyDescr_Bystr_97" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_69"* @"$TyDescr_Bystr_Prim_96" to i8*) }
@"$TyDescr_ADT_Bool_101" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_98"* @"$TyDescr_Bool_ADTTyp_Specl_114" to i8*) }
@"$TyDescr_ADT_List_Int64_102" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_98"* @"$TyDescr_List_Int64_ADTTyp_Specl_126" to i8*) }
@"$TyDescr_ADT_List_Int32_103" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_98"* @"$TyDescr_List_Int32_ADTTyp_Specl_135" to i8*) }
@"$TyDescr_Bool_ADTTyp_105" = unnamed_addr constant %"$TyDescrTy_ADTTyp_99" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_116", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_98"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_98"*], [1 x %"$TyDescrTy_ADTTyp_Specl_98"*]* @"$TyDescr_Bool_ADTTyp_m_specls_115", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_106" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_107" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_108" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_100" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_107", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_106", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_109" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_110" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_111" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_100" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_110", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_109", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_112" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_100"*] [%"$TyDescrTy_ADTTyp_Constr_100"* @"$TyDescr_Bool_True_ADTTyp_Constr_108", %"$TyDescrTy_ADTTyp_Constr_100"* @"$TyDescr_Bool_False_ADTTyp_Constr_111"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_113" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_114" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_98" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_113", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_100"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_100"*], [2 x %"$TyDescrTy_ADTTyp_Constr_100"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_112", i32 0, i32 0), %"$TyDescrTy_ADTTyp_99"* @"$TyDescr_Bool_ADTTyp_105" }
@"$TyDescr_Bool_ADTTyp_m_specls_115" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_98"*] [%"$TyDescrTy_ADTTyp_Specl_98"* @"$TyDescr_Bool_ADTTyp_Specl_114"]
@"$TyDescr_ADT_Bool_116" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_117" = unnamed_addr constant %"$TyDescrTy_ADTTyp_99" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_137", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_98"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_98"*], [2 x %"$TyDescrTy_ADTTyp_Specl_98"*]* @"$TyDescr_List_ADTTyp_m_specls_136", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int64_Constr_m_args_118" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_75", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int64_102"]
@"$TyDescr_ADT_Cons_119" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int64_ADTTyp_Constr_120" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_100" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_119", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int64_Constr_m_args_118", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int64_Constr_m_args_121" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_122" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int64_ADTTyp_Constr_123" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_100" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_122", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int64_Constr_m_args_121", i32 0, i32 0) }
@"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_124" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_100"*] [%"$TyDescrTy_ADTTyp_Constr_100"* @"$TyDescr_List_Cons_Int64_ADTTyp_Constr_120", %"$TyDescrTy_ADTTyp_Constr_100"* @"$TyDescr_List_Nil_Int64_ADTTyp_Constr_123"]
@"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_125" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_75"]
@"$TyDescr_List_Int64_ADTTyp_Specl_126" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_98" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_125", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_100"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_100"*], [2 x %"$TyDescrTy_ADTTyp_Constr_100"*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_124", i32 0, i32 0), %"$TyDescrTy_ADTTyp_99"* @"$TyDescr_List_ADTTyp_117" }
@"$TyDescr_List_Cons_Int32_Constr_m_args_127" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_71", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_103"]
@"$TyDescr_ADT_Cons_128" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_129" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_100" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_128", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_127", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_130" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_131" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_132" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_100" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_131", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_130", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_133" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_100"*] [%"$TyDescrTy_ADTTyp_Constr_100"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_129", %"$TyDescrTy_ADTTyp_Constr_100"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_132"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_134" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_71"]
@"$TyDescr_List_Int32_ADTTyp_Specl_135" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_98" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_134", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_100"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_100"*], [2 x %"$TyDescrTy_ADTTyp_Constr_100"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_133", i32 0, i32 0), %"$TyDescrTy_ADTTyp_99"* @"$TyDescr_List_ADTTyp_117" }
@"$TyDescr_List_ADTTyp_m_specls_136" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_98"*] [%"$TyDescrTy_ADTTyp_Specl_98"* @"$TyDescr_List_Int64_ADTTyp_Specl_126", %"$TyDescrTy_ADTTyp_Specl_98"* @"$TyDescr_List_Int32_ADTTyp_Specl_135"]
@"$TyDescr_ADT_List_137" = unnamed_addr constant [4 x i8] c"List"
@list_foldl = global { i8*, i8* }* null
@ListUtils.list_length = global { i8*, i8* }* null

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_67"(%"$$fundef_67_env_138"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_68" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$gasrem_818" = load i64, i64* @_gasrem
  %"$gascmp_819" = icmp ugt i64 1, %"$gasrem_818"
  br i1 %"$gascmp_819", label %"$out_of_gas_820", label %"$have_gas_821"

"$out_of_gas_820":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_821"

"$have_gas_821":                                  ; preds = %"$out_of_gas_820", %entry
  %"$consume_822" = sub i64 %"$gasrem_818", 1
  store i64 %"$consume_822", i64* @_gasrem
  %"$f_823" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 2
  %"$f_824" = bitcast { i8*, i8* }* %"$f_823" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_825" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_824"
  %"$f_fptr_826" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_825", 0
  %"$f_envptr_827" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_825", 1
  %"$f_call_828" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_826"(i8* %"$f_envptr_827")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_828", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_68"
  %"$$retval_68_829" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_68"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_68_829"
}

define internal { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_65"(%"$$fundef_65_env_139"* %0) {
entry:
  %"$retval_66" = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$gasrem_809" = load i64, i64* @_gasrem
  %"$gascmp_810" = icmp ugt i64 1, %"$gasrem_809"
  br i1 %"$gascmp_810", label %"$out_of_gas_811", label %"$have_gas_812"

"$out_of_gas_811":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_812"

"$have_gas_812":                                  ; preds = %"$out_of_gas_811", %entry
  %"$consume_813" = sub i64 %"$gasrem_809", 1
  store i64 %"$consume_813", i64* @_gasrem
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_67_env_138"*, { i8*, i8* }*)* @"$fundef_67" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66"
  %"$$retval_66_817" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66"
  ret { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_66_817"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_63"(%"$$fundef_63_env_140"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_64" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$gasrem_797" = load i64, i64* @_gasrem
  %"$gascmp_798" = icmp ugt i64 1, %"$gasrem_797"
  br i1 %"$gascmp_798", label %"$out_of_gas_799", label %"$have_gas_800"

"$out_of_gas_799":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_800"

"$have_gas_800":                                  ; preds = %"$out_of_gas_799", %entry
  %"$consume_801" = sub i64 %"$gasrem_797", 1
  store i64 %"$consume_801", i64* @_gasrem
  %"$f_802" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$f_803" = bitcast { i8*, i8* }* %"$f_802" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_804" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_803"
  %"$f_fptr_805" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_804", 0
  %"$f_envptr_806" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_804", 1
  %"$f_call_807" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_805"(i8* %"$f_envptr_806")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_807", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_64"
  %"$$retval_64_808" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_64"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_64_808"
}

define internal { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_61"(%"$$fundef_61_env_141"* %0) {
entry:
  %"$retval_62" = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$gasrem_788" = load i64, i64* @_gasrem
  %"$gascmp_789" = icmp ugt i64 1, %"$gasrem_788"
  br i1 %"$gascmp_789", label %"$out_of_gas_790", label %"$have_gas_791"

"$out_of_gas_790":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_791"

"$have_gas_791":                                  ; preds = %"$out_of_gas_790", %entry
  %"$consume_792" = sub i64 %"$gasrem_788", 1
  store i64 %"$consume_792", i64* @_gasrem
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_63_env_140"*, { i8*, i8* }*)* @"$fundef_63" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62"
  %"$$retval_62_796" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62"
  ret { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_62_796"
}

define internal %TName_List_Int64* @"$fundef_59"(%"$$fundef_59_env_142"* %0, %Int64 %1) {
entry:
  %"$retval_60" = alloca %TName_List_Int64*
  %"$gasrem_747" = load i64, i64* @_gasrem
  %"$gascmp_748" = icmp ugt i64 1, %"$gasrem_747"
  br i1 %"$gascmp_748", label %"$out_of_gas_749", label %"$have_gas_750"

"$out_of_gas_749":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_750"

"$have_gas_750":                                  ; preds = %"$out_of_gas_749", %entry
  %"$consume_751" = sub i64 %"$gasrem_747", 1
  store i64 %"$consume_751", i64* @_gasrem
  %an = alloca %TName_List_Int64*
  %"$gasrem_752" = load i64, i64* @_gasrem
  %"$gascmp_753" = icmp ugt i64 1, %"$gasrem_752"
  br i1 %"$gascmp_753", label %"$out_of_gas_754", label %"$have_gas_755"

"$out_of_gas_754":                                ; preds = %"$have_gas_750"
  call void @_out_of_gas()
  br label %"$have_gas_755"

"$have_gas_755":                                  ; preds = %"$out_of_gas_754", %"$have_gas_750"
  %"$consume_756" = sub i64 %"$gasrem_752", 1
  store i64 %"$consume_756", i64* @_gasrem
  %"$adtval_757_load" = load i8*, i8** @_execptr
  %"$adtval_757_salloc" = call i8* @_salloc(i8* %"$adtval_757_load", i64 1)
  %"$adtval_757" = bitcast i8* %"$adtval_757_salloc" to %CName_Nil_Int64*
  %"$adtgep_758" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_757", i32 0, i32 0
  store i8 1, i8* %"$adtgep_758"
  %"$adtptr_759" = bitcast %CName_Nil_Int64* %"$adtval_757" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_759", %TName_List_Int64** %an
  %"$gasrem_760" = load i64, i64* @_gasrem
  %"$gascmp_761" = icmp ugt i64 1, %"$gasrem_760"
  br i1 %"$gascmp_761", label %"$out_of_gas_762", label %"$have_gas_763"

"$out_of_gas_762":                                ; preds = %"$have_gas_755"
  call void @_out_of_gas()
  br label %"$have_gas_763"

"$have_gas_763":                                  ; preds = %"$out_of_gas_762", %"$have_gas_755"
  %"$consume_764" = sub i64 %"$gasrem_760", 1
  store i64 %"$consume_764", i64* @_gasrem
  %a1 = alloca %TName_List_Int64*
  %"$gasrem_765" = load i64, i64* @_gasrem
  %"$gascmp_766" = icmp ugt i64 1, %"$gasrem_765"
  br i1 %"$gascmp_766", label %"$out_of_gas_767", label %"$have_gas_768"

"$out_of_gas_767":                                ; preds = %"$have_gas_763"
  call void @_out_of_gas()
  br label %"$have_gas_768"

"$have_gas_768":                                  ; preds = %"$out_of_gas_767", %"$have_gas_763"
  %"$consume_769" = sub i64 %"$gasrem_765", 1
  store i64 %"$consume_769", i64* @_gasrem
  %"$an_770" = load %TName_List_Int64*, %TName_List_Int64** %an
  %"$adtval_771_load" = load i8*, i8** @_execptr
  %"$adtval_771_salloc" = call i8* @_salloc(i8* %"$adtval_771_load", i64 17)
  %"$adtval_771" = bitcast i8* %"$adtval_771_salloc" to %CName_Cons_Int64*
  %"$adtgep_772" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_771", i32 0, i32 0
  store i8 0, i8* %"$adtgep_772"
  %"$adtgep_773" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_771", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_773"
  %"$adtgep_774" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_771", i32 0, i32 2
  store %TName_List_Int64* %"$an_770", %TName_List_Int64** %"$adtgep_774"
  %"$adtptr_775" = bitcast %CName_Cons_Int64* %"$adtval_771" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_775", %TName_List_Int64** %a1
  %"$gasrem_776" = load i64, i64* @_gasrem
  %"$gascmp_777" = icmp ugt i64 1, %"$gasrem_776"
  br i1 %"$gascmp_777", label %"$out_of_gas_778", label %"$have_gas_779"

"$out_of_gas_778":                                ; preds = %"$have_gas_768"
  call void @_out_of_gas()
  br label %"$have_gas_779"

"$have_gas_779":                                  ; preds = %"$out_of_gas_778", %"$have_gas_768"
  %"$consume_780" = sub i64 %"$gasrem_776", 1
  store i64 %"$consume_780", i64* @_gasrem
  %"$a1_781" = load %TName_List_Int64*, %TName_List_Int64** %a1
  %"$adtval_782_load" = load i8*, i8** @_execptr
  %"$adtval_782_salloc" = call i8* @_salloc(i8* %"$adtval_782_load", i64 17)
  %"$adtval_782" = bitcast i8* %"$adtval_782_salloc" to %CName_Cons_Int64*
  %"$adtgep_783" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_782", i32 0, i32 0
  store i8 0, i8* %"$adtgep_783"
  %"$adtgep_784" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_782", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_784"
  %"$adtgep_785" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_782", i32 0, i32 2
  store %TName_List_Int64* %"$a1_781", %TName_List_Int64** %"$adtgep_785"
  %"$adtptr_786" = bitcast %CName_Cons_Int64* %"$adtval_782" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_786", %TName_List_Int64** %"$retval_60"
  %"$$retval_60_787" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_60"
  ret %TName_List_Int64* %"$$retval_60_787"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_57"(%"$$fundef_57_env_143"* %0) {
entry:
  %"$retval_58" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$gasrem_738" = load i64, i64* @_gasrem
  %"$gascmp_739" = icmp ugt i64 1, %"$gasrem_738"
  br i1 %"$gascmp_739", label %"$out_of_gas_740", label %"$have_gas_741"

"$out_of_gas_740":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_741"

"$have_gas_741":                                  ; preds = %"$out_of_gas_740", %entry
  %"$consume_742" = sub i64 %"$gasrem_738", 1
  store i64 %"$consume_742", i64* @_gasrem
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_59_env_142"*, %Int64)* @"$fundef_59" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_58"
  %"$$retval_58_746" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_58"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_58_746"
}

define internal %TName_List_Int32* @"$fundef_55"(%"$$fundef_55_env_144"* %0, %Int32 %1) {
entry:
  %"$retval_56" = alloca %TName_List_Int32*
  %"$gasrem_697" = load i64, i64* @_gasrem
  %"$gascmp_698" = icmp ugt i64 1, %"$gasrem_697"
  br i1 %"$gascmp_698", label %"$out_of_gas_699", label %"$have_gas_700"

"$out_of_gas_699":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_700"

"$have_gas_700":                                  ; preds = %"$out_of_gas_699", %entry
  %"$consume_701" = sub i64 %"$gasrem_697", 1
  store i64 %"$consume_701", i64* @_gasrem
  %an = alloca %TName_List_Int32*
  %"$gasrem_702" = load i64, i64* @_gasrem
  %"$gascmp_703" = icmp ugt i64 1, %"$gasrem_702"
  br i1 %"$gascmp_703", label %"$out_of_gas_704", label %"$have_gas_705"

"$out_of_gas_704":                                ; preds = %"$have_gas_700"
  call void @_out_of_gas()
  br label %"$have_gas_705"

"$have_gas_705":                                  ; preds = %"$out_of_gas_704", %"$have_gas_700"
  %"$consume_706" = sub i64 %"$gasrem_702", 1
  store i64 %"$consume_706", i64* @_gasrem
  %"$adtval_707_load" = load i8*, i8** @_execptr
  %"$adtval_707_salloc" = call i8* @_salloc(i8* %"$adtval_707_load", i64 1)
  %"$adtval_707" = bitcast i8* %"$adtval_707_salloc" to %CName_Nil_Int32*
  %"$adtgep_708" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_707", i32 0, i32 0
  store i8 1, i8* %"$adtgep_708"
  %"$adtptr_709" = bitcast %CName_Nil_Int32* %"$adtval_707" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_709", %TName_List_Int32** %an
  %"$gasrem_710" = load i64, i64* @_gasrem
  %"$gascmp_711" = icmp ugt i64 1, %"$gasrem_710"
  br i1 %"$gascmp_711", label %"$out_of_gas_712", label %"$have_gas_713"

"$out_of_gas_712":                                ; preds = %"$have_gas_705"
  call void @_out_of_gas()
  br label %"$have_gas_713"

"$have_gas_713":                                  ; preds = %"$out_of_gas_712", %"$have_gas_705"
  %"$consume_714" = sub i64 %"$gasrem_710", 1
  store i64 %"$consume_714", i64* @_gasrem
  %a1 = alloca %TName_List_Int32*
  %"$gasrem_715" = load i64, i64* @_gasrem
  %"$gascmp_716" = icmp ugt i64 1, %"$gasrem_715"
  br i1 %"$gascmp_716", label %"$out_of_gas_717", label %"$have_gas_718"

"$out_of_gas_717":                                ; preds = %"$have_gas_713"
  call void @_out_of_gas()
  br label %"$have_gas_718"

"$have_gas_718":                                  ; preds = %"$out_of_gas_717", %"$have_gas_713"
  %"$consume_719" = sub i64 %"$gasrem_715", 1
  store i64 %"$consume_719", i64* @_gasrem
  %"$an_720" = load %TName_List_Int32*, %TName_List_Int32** %an
  %"$adtval_721_load" = load i8*, i8** @_execptr
  %"$adtval_721_salloc" = call i8* @_salloc(i8* %"$adtval_721_load", i64 13)
  %"$adtval_721" = bitcast i8* %"$adtval_721_salloc" to %CName_Cons_Int32*
  %"$adtgep_722" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_721", i32 0, i32 0
  store i8 0, i8* %"$adtgep_722"
  %"$adtgep_723" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_721", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_723"
  %"$adtgep_724" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_721", i32 0, i32 2
  store %TName_List_Int32* %"$an_720", %TName_List_Int32** %"$adtgep_724"
  %"$adtptr_725" = bitcast %CName_Cons_Int32* %"$adtval_721" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_725", %TName_List_Int32** %a1
  %"$gasrem_726" = load i64, i64* @_gasrem
  %"$gascmp_727" = icmp ugt i64 1, %"$gasrem_726"
  br i1 %"$gascmp_727", label %"$out_of_gas_728", label %"$have_gas_729"

"$out_of_gas_728":                                ; preds = %"$have_gas_718"
  call void @_out_of_gas()
  br label %"$have_gas_729"

"$have_gas_729":                                  ; preds = %"$out_of_gas_728", %"$have_gas_718"
  %"$consume_730" = sub i64 %"$gasrem_726", 1
  store i64 %"$consume_730", i64* @_gasrem
  %"$a1_731" = load %TName_List_Int32*, %TName_List_Int32** %a1
  %"$adtval_732_load" = load i8*, i8** @_execptr
  %"$adtval_732_salloc" = call i8* @_salloc(i8* %"$adtval_732_load", i64 13)
  %"$adtval_732" = bitcast i8* %"$adtval_732_salloc" to %CName_Cons_Int32*
  %"$adtgep_733" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_732", i32 0, i32 0
  store i8 0, i8* %"$adtgep_733"
  %"$adtgep_734" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_732", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_734"
  %"$adtgep_735" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_732", i32 0, i32 2
  store %TName_List_Int32* %"$a1_731", %TName_List_Int32** %"$adtgep_735"
  %"$adtptr_736" = bitcast %CName_Cons_Int32* %"$adtval_732" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_736", %TName_List_Int32** %"$retval_56"
  %"$$retval_56_737" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_56"
  ret %TName_List_Int32* %"$$retval_56_737"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_53"(%"$$fundef_53_env_145"* %0) {
entry:
  %"$retval_54" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$gasrem_688" = load i64, i64* @_gasrem
  %"$gascmp_689" = icmp ugt i64 1, %"$gasrem_688"
  br i1 %"$gascmp_689", label %"$out_of_gas_690", label %"$have_gas_691"

"$out_of_gas_690":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_691"

"$have_gas_691":                                  ; preds = %"$out_of_gas_690", %entry
  %"$consume_692" = sub i64 %"$gasrem_688", 1
  store i64 %"$consume_692", i64* @_gasrem
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_55_env_144"*, %Int32)* @"$fundef_55" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_54"
  %"$$retval_54_696" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_54"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_54_696"
}

define internal %TName_List_Int64* @"$fundef_51"(%"$$fundef_51_env_146"* %0, %Int64 %1) {
entry:
  %"$retval_52" = alloca %TName_List_Int64*
  %"$gasrem_663" = load i64, i64* @_gasrem
  %"$gascmp_664" = icmp ugt i64 1, %"$gasrem_663"
  br i1 %"$gascmp_664", label %"$out_of_gas_665", label %"$have_gas_666"

"$out_of_gas_665":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_666"

"$have_gas_666":                                  ; preds = %"$out_of_gas_665", %entry
  %"$consume_667" = sub i64 %"$gasrem_663", 1
  store i64 %"$consume_667", i64* @_gasrem
  %an = alloca %TName_List_Int64*
  %"$gasrem_668" = load i64, i64* @_gasrem
  %"$gascmp_669" = icmp ugt i64 1, %"$gasrem_668"
  br i1 %"$gascmp_669", label %"$out_of_gas_670", label %"$have_gas_671"

"$out_of_gas_670":                                ; preds = %"$have_gas_666"
  call void @_out_of_gas()
  br label %"$have_gas_671"

"$have_gas_671":                                  ; preds = %"$out_of_gas_670", %"$have_gas_666"
  %"$consume_672" = sub i64 %"$gasrem_668", 1
  store i64 %"$consume_672", i64* @_gasrem
  %"$adtval_673_load" = load i8*, i8** @_execptr
  %"$adtval_673_salloc" = call i8* @_salloc(i8* %"$adtval_673_load", i64 1)
  %"$adtval_673" = bitcast i8* %"$adtval_673_salloc" to %CName_Nil_Int64*
  %"$adtgep_674" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_673", i32 0, i32 0
  store i8 1, i8* %"$adtgep_674"
  %"$adtptr_675" = bitcast %CName_Nil_Int64* %"$adtval_673" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_675", %TName_List_Int64** %an
  %"$gasrem_676" = load i64, i64* @_gasrem
  %"$gascmp_677" = icmp ugt i64 1, %"$gasrem_676"
  br i1 %"$gascmp_677", label %"$out_of_gas_678", label %"$have_gas_679"

"$out_of_gas_678":                                ; preds = %"$have_gas_671"
  call void @_out_of_gas()
  br label %"$have_gas_679"

"$have_gas_679":                                  ; preds = %"$out_of_gas_678", %"$have_gas_671"
  %"$consume_680" = sub i64 %"$gasrem_676", 1
  store i64 %"$consume_680", i64* @_gasrem
  %"$an_681" = load %TName_List_Int64*, %TName_List_Int64** %an
  %"$adtval_682_load" = load i8*, i8** @_execptr
  %"$adtval_682_salloc" = call i8* @_salloc(i8* %"$adtval_682_load", i64 17)
  %"$adtval_682" = bitcast i8* %"$adtval_682_salloc" to %CName_Cons_Int64*
  %"$adtgep_683" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_682", i32 0, i32 0
  store i8 0, i8* %"$adtgep_683"
  %"$adtgep_684" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_682", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_684"
  %"$adtgep_685" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_682", i32 0, i32 2
  store %TName_List_Int64* %"$an_681", %TName_List_Int64** %"$adtgep_685"
  %"$adtptr_686" = bitcast %CName_Cons_Int64* %"$adtval_682" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_686", %TName_List_Int64** %"$retval_52"
  %"$$retval_52_687" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_52"
  ret %TName_List_Int64* %"$$retval_52_687"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_49"(%"$$fundef_49_env_147"* %0) {
entry:
  %"$retval_50" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$gasrem_654" = load i64, i64* @_gasrem
  %"$gascmp_655" = icmp ugt i64 1, %"$gasrem_654"
  br i1 %"$gascmp_655", label %"$out_of_gas_656", label %"$have_gas_657"

"$out_of_gas_656":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_657"

"$have_gas_657":                                  ; preds = %"$out_of_gas_656", %entry
  %"$consume_658" = sub i64 %"$gasrem_654", 1
  store i64 %"$consume_658", i64* @_gasrem
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_51_env_146"*, %Int64)* @"$fundef_51" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_50"
  %"$$retval_50_662" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_50"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_50_662"
}

define internal %TName_List_Int32* @"$fundef_47"(%"$$fundef_47_env_148"* %0, %Int32 %1) {
entry:
  %"$retval_48" = alloca %TName_List_Int32*
  %"$gasrem_629" = load i64, i64* @_gasrem
  %"$gascmp_630" = icmp ugt i64 1, %"$gasrem_629"
  br i1 %"$gascmp_630", label %"$out_of_gas_631", label %"$have_gas_632"

"$out_of_gas_631":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_632"

"$have_gas_632":                                  ; preds = %"$out_of_gas_631", %entry
  %"$consume_633" = sub i64 %"$gasrem_629", 1
  store i64 %"$consume_633", i64* @_gasrem
  %an = alloca %TName_List_Int32*
  %"$gasrem_634" = load i64, i64* @_gasrem
  %"$gascmp_635" = icmp ugt i64 1, %"$gasrem_634"
  br i1 %"$gascmp_635", label %"$out_of_gas_636", label %"$have_gas_637"

"$out_of_gas_636":                                ; preds = %"$have_gas_632"
  call void @_out_of_gas()
  br label %"$have_gas_637"

"$have_gas_637":                                  ; preds = %"$out_of_gas_636", %"$have_gas_632"
  %"$consume_638" = sub i64 %"$gasrem_634", 1
  store i64 %"$consume_638", i64* @_gasrem
  %"$adtval_639_load" = load i8*, i8** @_execptr
  %"$adtval_639_salloc" = call i8* @_salloc(i8* %"$adtval_639_load", i64 1)
  %"$adtval_639" = bitcast i8* %"$adtval_639_salloc" to %CName_Nil_Int32*
  %"$adtgep_640" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_639", i32 0, i32 0
  store i8 1, i8* %"$adtgep_640"
  %"$adtptr_641" = bitcast %CName_Nil_Int32* %"$adtval_639" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_641", %TName_List_Int32** %an
  %"$gasrem_642" = load i64, i64* @_gasrem
  %"$gascmp_643" = icmp ugt i64 1, %"$gasrem_642"
  br i1 %"$gascmp_643", label %"$out_of_gas_644", label %"$have_gas_645"

"$out_of_gas_644":                                ; preds = %"$have_gas_637"
  call void @_out_of_gas()
  br label %"$have_gas_645"

"$have_gas_645":                                  ; preds = %"$out_of_gas_644", %"$have_gas_637"
  %"$consume_646" = sub i64 %"$gasrem_642", 1
  store i64 %"$consume_646", i64* @_gasrem
  %"$an_647" = load %TName_List_Int32*, %TName_List_Int32** %an
  %"$adtval_648_load" = load i8*, i8** @_execptr
  %"$adtval_648_salloc" = call i8* @_salloc(i8* %"$adtval_648_load", i64 13)
  %"$adtval_648" = bitcast i8* %"$adtval_648_salloc" to %CName_Cons_Int32*
  %"$adtgep_649" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_648", i32 0, i32 0
  store i8 0, i8* %"$adtgep_649"
  %"$adtgep_650" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_648", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_650"
  %"$adtgep_651" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_648", i32 0, i32 2
  store %TName_List_Int32* %"$an_647", %TName_List_Int32** %"$adtgep_651"
  %"$adtptr_652" = bitcast %CName_Cons_Int32* %"$adtval_648" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_652", %TName_List_Int32** %"$retval_48"
  %"$$retval_48_653" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_48"
  ret %TName_List_Int32* %"$$retval_48_653"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_45"(%"$$fundef_45_env_149"* %0) {
entry:
  %"$retval_46" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$gasrem_620" = load i64, i64* @_gasrem
  %"$gascmp_621" = icmp ugt i64 1, %"$gasrem_620"
  br i1 %"$gascmp_621", label %"$out_of_gas_622", label %"$have_gas_623"

"$out_of_gas_622":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_623"

"$have_gas_623":                                  ; preds = %"$out_of_gas_622", %entry
  %"$consume_624" = sub i64 %"$gasrem_620", 1
  store i64 %"$consume_624", i64* @_gasrem
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_47_env_148"*, %Int32)* @"$fundef_47" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_46"
  %"$$retval_46_628" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_46"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_46_628"
}

define internal %Uint32 @"$fundef_42"(%"$$fundef_42_env_150"* %0, %Int64 %1) {
entry:
  %"$$fundef_42_env_one_612" = getelementptr inbounds %"$$fundef_42_env_150", %"$$fundef_42_env_150"* %0, i32 0, i32 0
  %"$one_envload_613" = load %Uint32, %Uint32* %"$$fundef_42_env_one_612"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_613", %Uint32* %one
  %"$$fundef_42_env_z_614" = getelementptr inbounds %"$$fundef_42_env_150", %"$$fundef_42_env_150"* %0, i32 0, i32 1
  %"$z_envload_615" = load %Uint32, %Uint32* %"$$fundef_42_env_z_614"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_615", %Uint32* %z
  %"$retval_43" = alloca %Uint32
  %"$one_616" = load %Uint32, %Uint32* %one
  %"$z_617" = load %Uint32, %Uint32* %z
  %"$add_call_618" = call %Uint32 @_add_Uint32(%Uint32 %"$one_616", %Uint32 %"$z_617")
  store %Uint32 %"$add_call_618", %Uint32* %"$retval_43"
  %"$$retval_43_619" = load %Uint32, %Uint32* %"$retval_43"
  ret %Uint32 %"$$retval_43_619"
}

define internal { %Uint32 (i8*, %Int64)*, i8* } @"$fundef_40"(%"$$fundef_40_env_151"* %0, %Uint32 %1) {
entry:
  %"$$fundef_40_env_one_597" = getelementptr inbounds %"$$fundef_40_env_151", %"$$fundef_40_env_151"* %0, i32 0, i32 0
  %"$one_envload_598" = load %Uint32, %Uint32* %"$$fundef_40_env_one_597"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_598", %Uint32* %one
  %"$retval_41" = alloca { %Uint32 (i8*, %Int64)*, i8* }
  %"$gasrem_599" = load i64, i64* @_gasrem
  %"$gascmp_600" = icmp ugt i64 1, %"$gasrem_599"
  br i1 %"$gascmp_600", label %"$out_of_gas_601", label %"$have_gas_602"

"$out_of_gas_601":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_602"

"$have_gas_602":                                  ; preds = %"$out_of_gas_601", %entry
  %"$consume_603" = sub i64 %"$gasrem_599", 1
  store i64 %"$consume_603", i64* @_gasrem
  %"$$fundef_42_envp_604_load" = load i8*, i8** @_execptr
  %"$$fundef_42_envp_604_salloc" = call i8* @_salloc(i8* %"$$fundef_42_envp_604_load", i64 8)
  %"$$fundef_42_envp_604" = bitcast i8* %"$$fundef_42_envp_604_salloc" to %"$$fundef_42_env_150"*
  %"$$fundef_42_env_voidp_606" = bitcast %"$$fundef_42_env_150"* %"$$fundef_42_envp_604" to i8*
  %"$$fundef_42_cloval_607" = insertvalue { %Uint32 (i8*, %Int64)*, i8* } { %Uint32 (i8*, %Int64)* bitcast (%Uint32 (%"$$fundef_42_env_150"*, %Int64)* @"$fundef_42" to %Uint32 (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_42_env_voidp_606", 1
  %"$$fundef_42_env_one_608" = getelementptr inbounds %"$$fundef_42_env_150", %"$$fundef_42_env_150"* %"$$fundef_42_envp_604", i32 0, i32 0
  %"$one_609" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_609", %Uint32* %"$$fundef_42_env_one_608"
  %"$$fundef_42_env_z_610" = getelementptr inbounds %"$$fundef_42_env_150", %"$$fundef_42_env_150"* %"$$fundef_42_envp_604", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_42_env_z_610"
  store { %Uint32 (i8*, %Int64)*, i8* } %"$$fundef_42_cloval_607", { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_41"
  %"$$retval_41_611" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_41"
  ret { %Uint32 (i8*, %Int64)*, i8* } %"$$retval_41_611"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_152"* %0) {
entry:
  %"$$fundef_38_env_list_foldl_519" = getelementptr inbounds %"$$fundef_38_env_152", %"$$fundef_38_env_152"* %0, i32 0, i32 0
  %"$list_foldl_envload_520" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_38_env_list_foldl_519"
  %list_foldl = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldl_envload_520", { i8*, i8* }** %list_foldl
  %"$retval_39" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$gasrem_521" = load i64, i64* @_gasrem
  %"$gascmp_522" = icmp ugt i64 1, %"$gasrem_521"
  br i1 %"$gascmp_522", label %"$out_of_gas_523", label %"$have_gas_524"

"$out_of_gas_523":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_524"

"$have_gas_524":                                  ; preds = %"$out_of_gas_523", %entry
  %"$consume_525" = sub i64 %"$gasrem_521", 1
  store i64 %"$consume_525", i64* @_gasrem
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$gasrem_526" = load i64, i64* @_gasrem
  %"$gascmp_527" = icmp ugt i64 1, %"$gasrem_526"
  br i1 %"$gascmp_527", label %"$out_of_gas_528", label %"$have_gas_529"

"$out_of_gas_528":                                ; preds = %"$have_gas_524"
  call void @_out_of_gas()
  br label %"$have_gas_529"

"$have_gas_529":                                  ; preds = %"$out_of_gas_528", %"$have_gas_524"
  %"$consume_530" = sub i64 %"$gasrem_526", 1
  store i64 %"$consume_530", i64* @_gasrem
  %"$list_foldl_531" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl
  %"$list_foldl_532" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_531", i32 2
  %"$list_foldl_533" = bitcast { i8*, i8* }* %"$list_foldl_532" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_534" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_533"
  %"$list_foldl_fptr_535" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_534", 0
  %"$list_foldl_envptr_536" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_534", 1
  %"$list_foldl_call_537" = call { i8*, i8* }* %"$list_foldl_fptr_535"(i8* %"$list_foldl_envptr_536")
  %"$list_foldl_538" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_537", i32 1
  %"$list_foldl_539" = bitcast { i8*, i8* }* %"$list_foldl_538" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_540" = load { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_539"
  %"$list_foldl_fptr_541" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_540", 0
  %"$list_foldl_envptr_542" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_540", 1
  %"$list_foldl_call_543" = call { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_541"(i8* %"$list_foldl_envptr_542")
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_543", { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$gasrem_544" = load i64, i64* @_gasrem
  %"$gascmp_545" = icmp ugt i64 1, %"$gasrem_544"
  br i1 %"$gascmp_545", label %"$out_of_gas_546", label %"$have_gas_547"

"$out_of_gas_546":                                ; preds = %"$have_gas_529"
  call void @_out_of_gas()
  br label %"$have_gas_547"

"$have_gas_547":                                  ; preds = %"$out_of_gas_546", %"$have_gas_529"
  %"$consume_548" = sub i64 %"$gasrem_544", 1
  store i64 %"$consume_548", i64* @_gasrem
  %one = alloca %Uint32
  %"$gasrem_549" = load i64, i64* @_gasrem
  %"$gascmp_550" = icmp ugt i64 1, %"$gasrem_549"
  br i1 %"$gascmp_550", label %"$out_of_gas_551", label %"$have_gas_552"

"$out_of_gas_551":                                ; preds = %"$have_gas_547"
  call void @_out_of_gas()
  br label %"$have_gas_552"

"$have_gas_552":                                  ; preds = %"$out_of_gas_551", %"$have_gas_547"
  %"$consume_553" = sub i64 %"$gasrem_549", 1
  store i64 %"$consume_553", i64* @_gasrem
  store %Uint32 { i32 1 }, %Uint32* %one
  %"$gasrem_554" = load i64, i64* @_gasrem
  %"$gascmp_555" = icmp ugt i64 1, %"$gasrem_554"
  br i1 %"$gascmp_555", label %"$out_of_gas_556", label %"$have_gas_557"

"$out_of_gas_556":                                ; preds = %"$have_gas_552"
  call void @_out_of_gas()
  br label %"$have_gas_557"

"$have_gas_557":                                  ; preds = %"$out_of_gas_556", %"$have_gas_552"
  %"$consume_558" = sub i64 %"$gasrem_554", 1
  store i64 %"$consume_558", i64* @_gasrem
  %iter = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$gasrem_559" = load i64, i64* @_gasrem
  %"$gascmp_560" = icmp ugt i64 1, %"$gasrem_559"
  br i1 %"$gascmp_560", label %"$out_of_gas_561", label %"$have_gas_562"

"$out_of_gas_561":                                ; preds = %"$have_gas_557"
  call void @_out_of_gas()
  br label %"$have_gas_562"

"$have_gas_562":                                  ; preds = %"$out_of_gas_561", %"$have_gas_557"
  %"$consume_563" = sub i64 %"$gasrem_559", 1
  store i64 %"$consume_563", i64* @_gasrem
  %"$$fundef_40_envp_564_load" = load i8*, i8** @_execptr
  %"$$fundef_40_envp_564_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_564_load", i64 4)
  %"$$fundef_40_envp_564" = bitcast i8* %"$$fundef_40_envp_564_salloc" to %"$$fundef_40_env_151"*
  %"$$fundef_40_env_voidp_566" = bitcast %"$$fundef_40_env_151"* %"$$fundef_40_envp_564" to i8*
  %"$$fundef_40_cloval_567" = insertvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int64)*, i8* } (%"$$fundef_40_env_151"*, %Uint32)* @"$fundef_40" to { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_40_env_voidp_566", 1
  %"$$fundef_40_env_one_568" = getelementptr inbounds %"$$fundef_40_env_151", %"$$fundef_40_env_151"* %"$$fundef_40_envp_564", i32 0, i32 0
  %"$one_569" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_569", %Uint32* %"$$fundef_40_env_one_568"
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_40_cloval_567", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$gasrem_570" = load i64, i64* @_gasrem
  %"$gascmp_571" = icmp ugt i64 1, %"$gasrem_570"
  br i1 %"$gascmp_571", label %"$out_of_gas_572", label %"$have_gas_573"

"$out_of_gas_572":                                ; preds = %"$have_gas_562"
  call void @_out_of_gas()
  br label %"$have_gas_573"

"$have_gas_573":                                  ; preds = %"$out_of_gas_572", %"$have_gas_562"
  %"$consume_574" = sub i64 %"$gasrem_570", 1
  store i64 %"$consume_574", i64* @_gasrem
  %init = alloca %Uint32
  %"$gasrem_575" = load i64, i64* @_gasrem
  %"$gascmp_576" = icmp ugt i64 1, %"$gasrem_575"
  br i1 %"$gascmp_576", label %"$out_of_gas_577", label %"$have_gas_578"

"$out_of_gas_577":                                ; preds = %"$have_gas_573"
  call void @_out_of_gas()
  br label %"$have_gas_578"

"$have_gas_578":                                  ; preds = %"$out_of_gas_577", %"$have_gas_573"
  %"$consume_579" = sub i64 %"$gasrem_575", 1
  store i64 %"$consume_579", i64* @_gasrem
  store %Uint32 zeroinitializer, %Uint32* %init
  %"$gasrem_580" = load i64, i64* @_gasrem
  %"$gascmp_581" = icmp ugt i64 1, %"$gasrem_580"
  br i1 %"$gascmp_581", label %"$out_of_gas_582", label %"$have_gas_583"

"$out_of_gas_582":                                ; preds = %"$have_gas_578"
  call void @_out_of_gas()
  br label %"$have_gas_583"

"$have_gas_583":                                  ; preds = %"$out_of_gas_582", %"$have_gas_578"
  %"$consume_584" = sub i64 %"$gasrem_580", 1
  store i64 %"$consume_584", i64* @_gasrem
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$foldl_585" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$foldl_fptr_586" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_585", 0
  %"$foldl_envptr_587" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_585", 1
  %"$iter_588" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$foldl_call_589" = call { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_586"(i8* %"$foldl_envptr_587", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_588")
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_589", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$$foldl_4_590" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$$foldl_4_fptr_591" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_590", 0
  %"$$foldl_4_envptr_592" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_590", 1
  %"$init_593" = load %Uint32, %Uint32* %init
  %"$$foldl_4_call_594" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_fptr_591"(i8* %"$$foldl_4_envptr_592", %Uint32 %"$init_593")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_call_594", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5"
  %"$$foldl_5_595" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5"
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_5_595", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_39"
  %"$$retval_39_596" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_39"
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_39_596"
}

define internal %Uint32 @"$fundef_36"(%"$$fundef_36_env_153"* %0, %Int32 %1) {
entry:
  %"$$fundef_36_env_one_511" = getelementptr inbounds %"$$fundef_36_env_153", %"$$fundef_36_env_153"* %0, i32 0, i32 0
  %"$one_envload_512" = load %Uint32, %Uint32* %"$$fundef_36_env_one_511"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_512", %Uint32* %one
  %"$$fundef_36_env_z_513" = getelementptr inbounds %"$$fundef_36_env_153", %"$$fundef_36_env_153"* %0, i32 0, i32 1
  %"$z_envload_514" = load %Uint32, %Uint32* %"$$fundef_36_env_z_513"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_514", %Uint32* %z
  %"$retval_37" = alloca %Uint32
  %"$one_515" = load %Uint32, %Uint32* %one
  %"$z_516" = load %Uint32, %Uint32* %z
  %"$add_call_517" = call %Uint32 @_add_Uint32(%Uint32 %"$one_515", %Uint32 %"$z_516")
  store %Uint32 %"$add_call_517", %Uint32* %"$retval_37"
  %"$$retval_37_518" = load %Uint32, %Uint32* %"$retval_37"
  ret %Uint32 %"$$retval_37_518"
}

define internal { %Uint32 (i8*, %Int32)*, i8* } @"$fundef_34"(%"$$fundef_34_env_154"* %0, %Uint32 %1) {
entry:
  %"$$fundef_34_env_one_496" = getelementptr inbounds %"$$fundef_34_env_154", %"$$fundef_34_env_154"* %0, i32 0, i32 0
  %"$one_envload_497" = load %Uint32, %Uint32* %"$$fundef_34_env_one_496"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_497", %Uint32* %one
  %"$retval_35" = alloca { %Uint32 (i8*, %Int32)*, i8* }
  %"$gasrem_498" = load i64, i64* @_gasrem
  %"$gascmp_499" = icmp ugt i64 1, %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %entry
  %"$consume_502" = sub i64 %"$gasrem_498", 1
  store i64 %"$consume_502", i64* @_gasrem
  %"$$fundef_36_envp_503_load" = load i8*, i8** @_execptr
  %"$$fundef_36_envp_503_salloc" = call i8* @_salloc(i8* %"$$fundef_36_envp_503_load", i64 8)
  %"$$fundef_36_envp_503" = bitcast i8* %"$$fundef_36_envp_503_salloc" to %"$$fundef_36_env_153"*
  %"$$fundef_36_env_voidp_505" = bitcast %"$$fundef_36_env_153"* %"$$fundef_36_envp_503" to i8*
  %"$$fundef_36_cloval_506" = insertvalue { %Uint32 (i8*, %Int32)*, i8* } { %Uint32 (i8*, %Int32)* bitcast (%Uint32 (%"$$fundef_36_env_153"*, %Int32)* @"$fundef_36" to %Uint32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_36_env_voidp_505", 1
  %"$$fundef_36_env_one_507" = getelementptr inbounds %"$$fundef_36_env_153", %"$$fundef_36_env_153"* %"$$fundef_36_envp_503", i32 0, i32 0
  %"$one_508" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_508", %Uint32* %"$$fundef_36_env_one_507"
  %"$$fundef_36_env_z_509" = getelementptr inbounds %"$$fundef_36_env_153", %"$$fundef_36_env_153"* %"$$fundef_36_envp_503", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_36_env_z_509"
  store { %Uint32 (i8*, %Int32)*, i8* } %"$$fundef_36_cloval_506", { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_35"
  %"$$retval_35_510" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_35"
  ret { %Uint32 (i8*, %Int32)*, i8* } %"$$retval_35_510"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_32"(%"$$fundef_32_env_155"* %0) {
entry:
  %"$$fundef_32_env_list_foldl_418" = getelementptr inbounds %"$$fundef_32_env_155", %"$$fundef_32_env_155"* %0, i32 0, i32 0
  %"$list_foldl_envload_419" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_32_env_list_foldl_418"
  %list_foldl = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldl_envload_419", { i8*, i8* }** %list_foldl
  %"$retval_33" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$gasrem_420" = load i64, i64* @_gasrem
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %entry
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$gasrem_425" = load i64, i64* @_gasrem
  %"$gascmp_426" = icmp ugt i64 1, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_423"
  %"$consume_429" = sub i64 %"$gasrem_425", 1
  store i64 %"$consume_429", i64* @_gasrem
  %"$list_foldl_430" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl
  %"$list_foldl_431" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_430", i32 0
  %"$list_foldl_432" = bitcast { i8*, i8* }* %"$list_foldl_431" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_433" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_432"
  %"$list_foldl_fptr_434" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_433", 0
  %"$list_foldl_envptr_435" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_433", 1
  %"$list_foldl_call_436" = call { i8*, i8* }* %"$list_foldl_fptr_434"(i8* %"$list_foldl_envptr_435")
  %"$list_foldl_437" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_436", i32 1
  %"$list_foldl_438" = bitcast { i8*, i8* }* %"$list_foldl_437" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_439" = load { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_438"
  %"$list_foldl_fptr_440" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_439", 0
  %"$list_foldl_envptr_441" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_439", 1
  %"$list_foldl_call_442" = call { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_440"(i8* %"$list_foldl_envptr_441")
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_442", { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$gasrem_443" = load i64, i64* @_gasrem
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$have_gas_428"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem
  %one = alloca %Uint32
  %"$gasrem_448" = load i64, i64* @_gasrem
  %"$gascmp_449" = icmp ugt i64 1, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_446"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_446"
  %"$consume_452" = sub i64 %"$gasrem_448", 1
  store i64 %"$consume_452", i64* @_gasrem
  store %Uint32 { i32 1 }, %Uint32* %one
  %"$gasrem_453" = load i64, i64* @_gasrem
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_451"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem
  %iter = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  %"$gasrem_458" = load i64, i64* @_gasrem
  %"$gascmp_459" = icmp ugt i64 1, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$have_gas_456"
  %"$consume_462" = sub i64 %"$gasrem_458", 1
  store i64 %"$consume_462", i64* @_gasrem
  %"$$fundef_34_envp_463_load" = load i8*, i8** @_execptr
  %"$$fundef_34_envp_463_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_463_load", i64 4)
  %"$$fundef_34_envp_463" = bitcast i8* %"$$fundef_34_envp_463_salloc" to %"$$fundef_34_env_154"*
  %"$$fundef_34_env_voidp_465" = bitcast %"$$fundef_34_env_154"* %"$$fundef_34_envp_463" to i8*
  %"$$fundef_34_cloval_466" = insertvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int32)*, i8* } (%"$$fundef_34_env_154"*, %Uint32)* @"$fundef_34" to { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_34_env_voidp_465", 1
  %"$$fundef_34_env_one_467" = getelementptr inbounds %"$$fundef_34_env_154", %"$$fundef_34_env_154"* %"$$fundef_34_envp_463", i32 0, i32 0
  %"$one_468" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_468", %Uint32* %"$$fundef_34_env_one_467"
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_34_cloval_466", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$gasrem_469" = load i64, i64* @_gasrem
  %"$gascmp_470" = icmp ugt i64 1, %"$gasrem_469"
  br i1 %"$gascmp_470", label %"$out_of_gas_471", label %"$have_gas_472"

"$out_of_gas_471":                                ; preds = %"$have_gas_461"
  call void @_out_of_gas()
  br label %"$have_gas_472"

"$have_gas_472":                                  ; preds = %"$out_of_gas_471", %"$have_gas_461"
  %"$consume_473" = sub i64 %"$gasrem_469", 1
  store i64 %"$consume_473", i64* @_gasrem
  %init = alloca %Uint32
  %"$gasrem_474" = load i64, i64* @_gasrem
  %"$gascmp_475" = icmp ugt i64 1, %"$gasrem_474"
  br i1 %"$gascmp_475", label %"$out_of_gas_476", label %"$have_gas_477"

"$out_of_gas_476":                                ; preds = %"$have_gas_472"
  call void @_out_of_gas()
  br label %"$have_gas_477"

"$have_gas_477":                                  ; preds = %"$out_of_gas_476", %"$have_gas_472"
  %"$consume_478" = sub i64 %"$gasrem_474", 1
  store i64 %"$consume_478", i64* @_gasrem
  store %Uint32 zeroinitializer, %Uint32* %init
  %"$gasrem_479" = load i64, i64* @_gasrem
  %"$gascmp_480" = icmp ugt i64 1, %"$gasrem_479"
  br i1 %"$gascmp_480", label %"$out_of_gas_481", label %"$have_gas_482"

"$out_of_gas_481":                                ; preds = %"$have_gas_477"
  call void @_out_of_gas()
  br label %"$have_gas_482"

"$have_gas_482":                                  ; preds = %"$out_of_gas_481", %"$have_gas_477"
  %"$consume_483" = sub i64 %"$gasrem_479", 1
  store i64 %"$consume_483", i64* @_gasrem
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$foldl_484" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$foldl_fptr_485" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_484", 0
  %"$foldl_envptr_486" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_484", 1
  %"$iter_487" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$foldl_call_488" = call { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_485"(i8* %"$foldl_envptr_486", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_487")
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_488", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$$foldl_4_489" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$$foldl_4_fptr_490" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_489", 0
  %"$$foldl_4_envptr_491" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_489", 1
  %"$init_492" = load %Uint32, %Uint32* %init
  %"$$foldl_4_call_493" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_fptr_490"(i8* %"$$foldl_4_envptr_491", %Uint32 %"$init_492")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_call_493", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5"
  %"$$foldl_5_494" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5"
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_5_494", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_33"
  %"$$retval_33_495" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_33"
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_33_495"
}

define internal %Uint32 @"$fundef_30"(%"$$fundef_30_env_156"* %0, %TName_List_Int64* %1) {
entry:
  %"$$fundef_30_env_f_351" = getelementptr inbounds %"$$fundef_30_env_156", %"$$fundef_30_env_156"* %0, i32 0, i32 0
  %"$f_envload_352" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_f_351"
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_352", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_30_env_g_353" = getelementptr inbounds %"$$fundef_30_env_156", %"$$fundef_30_env_156"* %0, i32 0, i32 1
  %"$g_envload_354" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_g_353"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_354", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_30_env_z_355" = getelementptr inbounds %"$$fundef_30_env_156", %"$$fundef_30_env_156"* %0, i32 0, i32 2
  %"$z_envload_356" = load %Uint32, %Uint32* %"$$fundef_30_env_z_355"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_356", %Uint32* %z
  %"$retval_31" = alloca %Uint32
  %"$gasrem_357" = load i64, i64* @_gasrem
  %"$gascmp_358" = icmp ugt i64 2, %"$gasrem_357"
  br i1 %"$gascmp_358", label %"$out_of_gas_359", label %"$have_gas_360"

"$out_of_gas_359":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_360"

"$have_gas_360":                                  ; preds = %"$out_of_gas_359", %entry
  %"$consume_361" = sub i64 %"$gasrem_357", 2
  store i64 %"$consume_361", i64* @_gasrem
  %"$l_tag_363" = getelementptr inbounds %TName_List_Int64, %TName_List_Int64* %1, i32 0, i32 0
  %"$l_tag_364" = load i8, i8* %"$l_tag_363"
  switch i8 %"$l_tag_364", label %"$empty_default_365" [
    i8 0, label %"$Cons_366"
    i8 1, label %"$Nil_409"
  ]

"$Cons_366":                                      ; preds = %"$have_gas_360"
  %"$l_367" = bitcast %TName_List_Int64* %1 to %CName_Cons_Int64*
  %"$h_gep_368" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_367", i32 0, i32 1
  %"$h_load_369" = load %Int64, %Int64* %"$h_gep_368"
  %h = alloca %Int64
  store %Int64 %"$h_load_369", %Int64* %h
  %"$t_gep_370" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_367", i32 0, i32 2
  %"$t_load_371" = load %TName_List_Int64*, %TName_List_Int64** %"$t_gep_370"
  %t = alloca %TName_List_Int64*
  store %TName_List_Int64* %"$t_load_371", %TName_List_Int64** %t
  %"$gasrem_372" = load i64, i64* @_gasrem
  %"$gascmp_373" = icmp ugt i64 1, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %"$Cons_366"
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %"$Cons_366"
  %"$consume_376" = sub i64 %"$gasrem_372", 1
  store i64 %"$consume_376", i64* @_gasrem
  %res = alloca %Uint32
  %"$gasrem_377" = load i64, i64* @_gasrem
  %"$gascmp_378" = icmp ugt i64 1, %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %"$have_gas_375"
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %"$have_gas_375"
  %"$consume_381" = sub i64 %"$gasrem_377", 1
  store i64 %"$consume_381", i64* @_gasrem
  %"$f_0" = alloca { %Uint32 (i8*, %Int64)*, i8* }
  %"$f_382" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_383" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_382", 0
  %"$f_envptr_384" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_382", 1
  %"$z_385" = load %Uint32, %Uint32* %z
  %"$f_call_386" = call { %Uint32 (i8*, %Int64)*, i8* } %"$f_fptr_383"(i8* %"$f_envptr_384", %Uint32 %"$z_385")
  store { %Uint32 (i8*, %Int64)*, i8* } %"$f_call_386", { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0"
  %"$f_1" = alloca %Uint32
  %"$$f_0_387" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0"
  %"$$f_0_fptr_388" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_387", 0
  %"$$f_0_envptr_389" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_387", 1
  %"$h_390" = load %Int64, %Int64* %h
  %"$$f_0_call_391" = call %Uint32 %"$$f_0_fptr_388"(i8* %"$$f_0_envptr_389", %Int64 %"$h_390")
  store %Uint32 %"$$f_0_call_391", %Uint32* %"$f_1"
  %"$$f_1_392" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_392", %Uint32* %res
  %"$gasrem_393" = load i64, i64* @_gasrem
  %"$gascmp_394" = icmp ugt i64 1, %"$gasrem_393"
  br i1 %"$gascmp_394", label %"$out_of_gas_395", label %"$have_gas_396"

"$out_of_gas_395":                                ; preds = %"$have_gas_380"
  call void @_out_of_gas()
  br label %"$have_gas_396"

"$have_gas_396":                                  ; preds = %"$out_of_gas_395", %"$have_gas_380"
  %"$consume_397" = sub i64 %"$gasrem_393", 1
  store i64 %"$consume_397", i64* @_gasrem
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$g_398" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_399" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_398", 0
  %"$g_envptr_400" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_398", 1
  %"$res_401" = load %Uint32, %Uint32* %res
  %"$g_call_402" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_fptr_399"(i8* %"$g_envptr_400", %Uint32 %"$res_401")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_call_402", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_403" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_404" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_403", 0
  %"$$g_2_envptr_405" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_403", 1
  %"$t_406" = load %TName_List_Int64*, %TName_List_Int64** %t
  %"$$g_2_call_407" = call %Uint32 %"$$g_2_fptr_404"(i8* %"$$g_2_envptr_405", %TName_List_Int64* %"$t_406")
  store %Uint32 %"$$g_2_call_407", %Uint32* %"$g_3"
  %"$$g_3_408" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_408", %Uint32* %"$retval_31"
  br label %"$matchsucc_362"

"$Nil_409":                                       ; preds = %"$have_gas_360"
  %"$l_410" = bitcast %TName_List_Int64* %1 to %CName_Nil_Int64*
  %"$gasrem_411" = load i64, i64* @_gasrem
  %"$gascmp_412" = icmp ugt i64 1, %"$gasrem_411"
  br i1 %"$gascmp_412", label %"$out_of_gas_413", label %"$have_gas_414"

"$out_of_gas_413":                                ; preds = %"$Nil_409"
  call void @_out_of_gas()
  br label %"$have_gas_414"

"$have_gas_414":                                  ; preds = %"$out_of_gas_413", %"$Nil_409"
  %"$consume_415" = sub i64 %"$gasrem_411", 1
  store i64 %"$consume_415", i64* @_gasrem
  %"$z_416" = load %Uint32, %Uint32* %z
  store %Uint32 %"$z_416", %Uint32* %"$retval_31"
  br label %"$matchsucc_362"

"$empty_default_365":                             ; preds = %"$have_gas_360"
  br label %"$matchsucc_362"

"$matchsucc_362":                                 ; preds = %"$have_gas_414", %"$have_gas_396", %"$empty_default_365"
  %"$$retval_31_417" = load %Uint32, %Uint32* %"$retval_31"
  ret %Uint32 %"$$retval_31_417"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_28"(%"$$fundef_28_env_157"* %0, %Uint32 %1) {
entry:
  %"$$fundef_28_env_f_332" = getelementptr inbounds %"$$fundef_28_env_157", %"$$fundef_28_env_157"* %0, i32 0, i32 0
  %"$f_envload_333" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_332"
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_333", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_28_env_g_334" = getelementptr inbounds %"$$fundef_28_env_157", %"$$fundef_28_env_157"* %0, i32 0, i32 1
  %"$g_envload_335" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_334"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_335", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_29" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$gasrem_336" = load i64, i64* @_gasrem
  %"$gascmp_337" = icmp ugt i64 1, %"$gasrem_336"
  br i1 %"$gascmp_337", label %"$out_of_gas_338", label %"$have_gas_339"

"$out_of_gas_338":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_339"

"$have_gas_339":                                  ; preds = %"$out_of_gas_338", %entry
  %"$consume_340" = sub i64 %"$gasrem_336", 1
  store i64 %"$consume_340", i64* @_gasrem
  %"$$fundef_30_envp_341_load" = load i8*, i8** @_execptr
  %"$$fundef_30_envp_341_salloc" = call i8* @_salloc(i8* %"$$fundef_30_envp_341_load", i64 40)
  %"$$fundef_30_envp_341" = bitcast i8* %"$$fundef_30_envp_341_salloc" to %"$$fundef_30_env_156"*
  %"$$fundef_30_env_voidp_343" = bitcast %"$$fundef_30_env_156"* %"$$fundef_30_envp_341" to i8*
  %"$$fundef_30_cloval_344" = insertvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } { %Uint32 (i8*, %TName_List_Int64*)* bitcast (%Uint32 (%"$$fundef_30_env_156"*, %TName_List_Int64*)* @"$fundef_30" to %Uint32 (i8*, %TName_List_Int64*)*), i8* undef }, i8* %"$$fundef_30_env_voidp_343", 1
  %"$$fundef_30_env_f_345" = getelementptr inbounds %"$$fundef_30_env_156", %"$$fundef_30_env_156"* %"$$fundef_30_envp_341", i32 0, i32 0
  %"$f_346" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_346", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_f_345"
  %"$$fundef_30_env_g_347" = getelementptr inbounds %"$$fundef_30_env_156", %"$$fundef_30_env_156"* %"$$fundef_30_envp_341", i32 0, i32 1
  %"$g_348" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_348", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_g_347"
  %"$$fundef_30_env_z_349" = getelementptr inbounds %"$$fundef_30_env_156", %"$$fundef_30_env_156"* %"$$fundef_30_envp_341", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_30_env_z_349"
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$fundef_30_cloval_344", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_29"
  %"$$retval_29_350" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_29"
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_29_350"
}

define internal { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_26"(%"$$fundef_26_env_158"* %0, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_27" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$gasrem_313" = load i64, i64* @_gasrem
  %"$gascmp_314" = icmp ugt i64 1, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %entry
  %"$consume_317" = sub i64 %"$gasrem_313", 1
  store i64 %"$consume_317", i64* @_gasrem
  %"$gasrem_318" = load i64, i64* @_gasrem
  %"$gascmp_319" = icmp ugt i64 1, %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %"$have_gas_316"
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %"$have_gas_316"
  %"$consume_322" = sub i64 %"$gasrem_318", 1
  store i64 %"$consume_322", i64* @_gasrem
  %"$$fundef_28_envp_323_load" = load i8*, i8** @_execptr
  %"$$fundef_28_envp_323_salloc" = call i8* @_salloc(i8* %"$$fundef_28_envp_323_load", i64 32)
  %"$$fundef_28_envp_323" = bitcast i8* %"$$fundef_28_envp_323_salloc" to %"$$fundef_28_env_157"*
  %"$$fundef_28_env_voidp_325" = bitcast %"$$fundef_28_env_157"* %"$$fundef_28_envp_323" to i8*
  %"$$fundef_28_cloval_326" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_28_env_157"*, %Uint32)* @"$fundef_28" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_28_env_voidp_325", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_28_cloval_326", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_28_env_f_327" = getelementptr inbounds %"$$fundef_28_env_157", %"$$fundef_28_env_157"* %"$$fundef_28_envp_323", i32 0, i32 0
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_327"
  %"$$fundef_28_env_g_328" = getelementptr inbounds %"$$fundef_28_env_157", %"$$fundef_28_env_157"* %"$$fundef_28_envp_323", i32 0, i32 1
  %"$g_329" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_329", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_328"
  %"$g_330" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_330", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_27"
  %"$$retval_27_331" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_27"
  ret { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_27_331"
}

define internal { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_24"(%"$$fundef_24_env_159"* %0) {
entry:
  %"$retval_25" = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$gasrem_304" = load i64, i64* @_gasrem
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %entry
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_26_env_158"*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_26" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_25"
  %"$$retval_25_312" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_25"
  ret { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_25_312"
}

define internal { i8*, i8* }* @"$fundef_22"(%"$$fundef_22_env_160"* %0) {
entry:
  %"$retval_23" = alloca { i8*, i8* }*
  %"$gasrem_292" = load i64, i64* @_gasrem
  %"$gascmp_293" = icmp ugt i64 1, %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %entry
  %"$consume_296" = sub i64 %"$gasrem_292", 1
  store i64 %"$consume_296", i64* @_gasrem
  %"$dyndisp_table_300_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_300_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_300_salloc_load", i64 48)
  %"$dyndisp_table_300_salloc" = bitcast i8* %"$dyndisp_table_300_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_300" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_300_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_301" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_300", i32 1
  %"$dyndisp_pcast_302" = bitcast { i8*, i8* }* %"$dyndisp_gep_301" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_24_env_159"*)* @"$fundef_24" to { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_302"
  store { i8*, i8* }* %"$dyndisp_table_300", { i8*, i8* }** %"$retval_23"
  %"$$retval_23_303" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_23"
  ret { i8*, i8* }* %"$$retval_23_303"
}

define internal %Uint32 @"$fundef_20"(%"$$fundef_20_env_161"* %0, %TName_List_Int32* %1) {
entry:
  %"$$fundef_20_env_f_225" = getelementptr inbounds %"$$fundef_20_env_161", %"$$fundef_20_env_161"* %0, i32 0, i32 0
  %"$f_envload_226" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_f_225"
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_226", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_20_env_g_227" = getelementptr inbounds %"$$fundef_20_env_161", %"$$fundef_20_env_161"* %0, i32 0, i32 1
  %"$g_envload_228" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_g_227"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_228", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_20_env_z_229" = getelementptr inbounds %"$$fundef_20_env_161", %"$$fundef_20_env_161"* %0, i32 0, i32 2
  %"$z_envload_230" = load %Uint32, %Uint32* %"$$fundef_20_env_z_229"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_230", %Uint32* %z
  %"$retval_21" = alloca %Uint32
  %"$gasrem_231" = load i64, i64* @_gasrem
  %"$gascmp_232" = icmp ugt i64 2, %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %entry
  %"$consume_235" = sub i64 %"$gasrem_231", 2
  store i64 %"$consume_235", i64* @_gasrem
  %"$l_tag_237" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %1, i32 0, i32 0
  %"$l_tag_238" = load i8, i8* %"$l_tag_237"
  switch i8 %"$l_tag_238", label %"$empty_default_239" [
    i8 0, label %"$Cons_240"
    i8 1, label %"$Nil_283"
  ]

"$Cons_240":                                      ; preds = %"$have_gas_234"
  %"$l_241" = bitcast %TName_List_Int32* %1 to %CName_Cons_Int32*
  %"$h_gep_242" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_241", i32 0, i32 1
  %"$h_load_243" = load %Int32, %Int32* %"$h_gep_242"
  %h = alloca %Int32
  store %Int32 %"$h_load_243", %Int32* %h
  %"$t_gep_244" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_241", i32 0, i32 2
  %"$t_load_245" = load %TName_List_Int32*, %TName_List_Int32** %"$t_gep_244"
  %t = alloca %TName_List_Int32*
  store %TName_List_Int32* %"$t_load_245", %TName_List_Int32** %t
  %"$gasrem_246" = load i64, i64* @_gasrem
  %"$gascmp_247" = icmp ugt i64 1, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$Cons_240"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$Cons_240"
  %"$consume_250" = sub i64 %"$gasrem_246", 1
  store i64 %"$consume_250", i64* @_gasrem
  %res = alloca %Uint32
  %"$gasrem_251" = load i64, i64* @_gasrem
  %"$gascmp_252" = icmp ugt i64 1, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$have_gas_249"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$have_gas_249"
  %"$consume_255" = sub i64 %"$gasrem_251", 1
  store i64 %"$consume_255", i64* @_gasrem
  %"$f_0" = alloca { %Uint32 (i8*, %Int32)*, i8* }
  %"$f_256" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_257" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_256", 0
  %"$f_envptr_258" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_256", 1
  %"$z_259" = load %Uint32, %Uint32* %z
  %"$f_call_260" = call { %Uint32 (i8*, %Int32)*, i8* } %"$f_fptr_257"(i8* %"$f_envptr_258", %Uint32 %"$z_259")
  store { %Uint32 (i8*, %Int32)*, i8* } %"$f_call_260", { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0"
  %"$f_1" = alloca %Uint32
  %"$$f_0_261" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0"
  %"$$f_0_fptr_262" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_261", 0
  %"$$f_0_envptr_263" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_261", 1
  %"$h_264" = load %Int32, %Int32* %h
  %"$$f_0_call_265" = call %Uint32 %"$$f_0_fptr_262"(i8* %"$$f_0_envptr_263", %Int32 %"$h_264")
  store %Uint32 %"$$f_0_call_265", %Uint32* %"$f_1"
  %"$$f_1_266" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_266", %Uint32* %res
  %"$gasrem_267" = load i64, i64* @_gasrem
  %"$gascmp_268" = icmp ugt i64 1, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_254"
  %"$consume_271" = sub i64 %"$gasrem_267", 1
  store i64 %"$consume_271", i64* @_gasrem
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$g_272" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_273" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_272", 0
  %"$g_envptr_274" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_272", 1
  %"$res_275" = load %Uint32, %Uint32* %res
  %"$g_call_276" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_fptr_273"(i8* %"$g_envptr_274", %Uint32 %"$res_275")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_call_276", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_277" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_278" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_277", 0
  %"$$g_2_envptr_279" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_277", 1
  %"$t_280" = load %TName_List_Int32*, %TName_List_Int32** %t
  %"$$g_2_call_281" = call %Uint32 %"$$g_2_fptr_278"(i8* %"$$g_2_envptr_279", %TName_List_Int32* %"$t_280")
  store %Uint32 %"$$g_2_call_281", %Uint32* %"$g_3"
  %"$$g_3_282" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_282", %Uint32* %"$retval_21"
  br label %"$matchsucc_236"

"$Nil_283":                                       ; preds = %"$have_gas_234"
  %"$l_284" = bitcast %TName_List_Int32* %1 to %CName_Nil_Int32*
  %"$gasrem_285" = load i64, i64* @_gasrem
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$Nil_283"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$Nil_283"
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem
  %"$z_290" = load %Uint32, %Uint32* %z
  store %Uint32 %"$z_290", %Uint32* %"$retval_21"
  br label %"$matchsucc_236"

"$empty_default_239":                             ; preds = %"$have_gas_234"
  br label %"$matchsucc_236"

"$matchsucc_236":                                 ; preds = %"$have_gas_288", %"$have_gas_270", %"$empty_default_239"
  %"$$retval_21_291" = load %Uint32, %Uint32* %"$retval_21"
  ret %Uint32 %"$$retval_21_291"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_18"(%"$$fundef_18_env_162"* %0, %Uint32 %1) {
entry:
  %"$$fundef_18_env_f_206" = getelementptr inbounds %"$$fundef_18_env_162", %"$$fundef_18_env_162"* %0, i32 0, i32 0
  %"$f_envload_207" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_206"
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_207", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_18_env_g_208" = getelementptr inbounds %"$$fundef_18_env_162", %"$$fundef_18_env_162"* %0, i32 0, i32 1
  %"$g_envload_209" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_208"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_209", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_19" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$gasrem_210" = load i64, i64* @_gasrem
  %"$gascmp_211" = icmp ugt i64 1, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %entry
  %"$consume_214" = sub i64 %"$gasrem_210", 1
  store i64 %"$consume_214", i64* @_gasrem
  %"$$fundef_20_envp_215_load" = load i8*, i8** @_execptr
  %"$$fundef_20_envp_215_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_215_load", i64 40)
  %"$$fundef_20_envp_215" = bitcast i8* %"$$fundef_20_envp_215_salloc" to %"$$fundef_20_env_161"*
  %"$$fundef_20_env_voidp_217" = bitcast %"$$fundef_20_env_161"* %"$$fundef_20_envp_215" to i8*
  %"$$fundef_20_cloval_218" = insertvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } { %Uint32 (i8*, %TName_List_Int32*)* bitcast (%Uint32 (%"$$fundef_20_env_161"*, %TName_List_Int32*)* @"$fundef_20" to %Uint32 (i8*, %TName_List_Int32*)*), i8* undef }, i8* %"$$fundef_20_env_voidp_217", 1
  %"$$fundef_20_env_f_219" = getelementptr inbounds %"$$fundef_20_env_161", %"$$fundef_20_env_161"* %"$$fundef_20_envp_215", i32 0, i32 0
  %"$f_220" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_220", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_f_219"
  %"$$fundef_20_env_g_221" = getelementptr inbounds %"$$fundef_20_env_161", %"$$fundef_20_env_161"* %"$$fundef_20_envp_215", i32 0, i32 1
  %"$g_222" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_222", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_g_221"
  %"$$fundef_20_env_z_223" = getelementptr inbounds %"$$fundef_20_env_161", %"$$fundef_20_env_161"* %"$$fundef_20_envp_215", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_20_env_z_223"
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$fundef_20_cloval_218", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_19"
  %"$$retval_19_224" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_19"
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_19_224"
}

define internal { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_16"(%"$$fundef_16_env_163"* %0, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_17" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$gasrem_187" = load i64, i64* @_gasrem
  %"$gascmp_188" = icmp ugt i64 1, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %entry
  %"$consume_191" = sub i64 %"$gasrem_187", 1
  store i64 %"$consume_191", i64* @_gasrem
  %"$gasrem_192" = load i64, i64* @_gasrem
  %"$gascmp_193" = icmp ugt i64 1, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %"$have_gas_190"
  %"$consume_196" = sub i64 %"$gasrem_192", 1
  store i64 %"$consume_196", i64* @_gasrem
  %"$$fundef_18_envp_197_load" = load i8*, i8** @_execptr
  %"$$fundef_18_envp_197_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_197_load", i64 32)
  %"$$fundef_18_envp_197" = bitcast i8* %"$$fundef_18_envp_197_salloc" to %"$$fundef_18_env_162"*
  %"$$fundef_18_env_voidp_199" = bitcast %"$$fundef_18_env_162"* %"$$fundef_18_envp_197" to i8*
  %"$$fundef_18_cloval_200" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_18_env_162"*, %Uint32)* @"$fundef_18" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_18_env_voidp_199", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_18_cloval_200", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_18_env_f_201" = getelementptr inbounds %"$$fundef_18_env_162", %"$$fundef_18_env_162"* %"$$fundef_18_envp_197", i32 0, i32 0
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_201"
  %"$$fundef_18_env_g_202" = getelementptr inbounds %"$$fundef_18_env_162", %"$$fundef_18_env_162"* %"$$fundef_18_envp_197", i32 0, i32 1
  %"$g_203" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_203", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_202"
  %"$g_204" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_204", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_17"
  %"$$retval_17_205" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_17"
  ret { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_17_205"
}

define internal { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_14"(%"$$fundef_14_env_164"* %0) {
entry:
  %"$retval_15" = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$gasrem_178" = load i64, i64* @_gasrem
  %"$gascmp_179" = icmp ugt i64 1, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %entry
  %"$consume_182" = sub i64 %"$gasrem_178", 1
  store i64 %"$consume_182", i64* @_gasrem
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_16_env_163"*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_16" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_15"
  %"$$retval_15_186" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_15"
  ret { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_15_186"
}

define internal { i8*, i8* }* @"$fundef_12"(%"$$fundef_12_env_165"* %0) {
entry:
  %"$retval_13" = alloca { i8*, i8* }*
  %"$gasrem_166" = load i64, i64* @_gasrem
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %entry
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem
  %"$dyndisp_table_174_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_174_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_174_salloc_load", i64 48)
  %"$dyndisp_table_174_salloc" = bitcast i8* %"$dyndisp_table_174_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_174" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_174_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_175" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_174", i32 1
  %"$dyndisp_pcast_176" = bitcast { i8*, i8* }* %"$dyndisp_gep_175" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_14_env_164"*)* @"$fundef_14" to { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_176"
  store { i8*, i8* }* %"$dyndisp_table_174", { i8*, i8* }** %"$retval_13"
  %"$$retval_13_177" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_13"
  ret { i8*, i8* }* %"$$retval_13_177"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_830"(i8* %0) {
entry:
  %"$gasrem_831" = load i64, i64* @_gasrem
  %"$gascmp_832" = icmp ugt i64 1, %"$gasrem_831"
  br i1 %"$gascmp_832", label %"$out_of_gas_833", label %"$have_gas_834"

"$out_of_gas_833":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_834"

"$have_gas_834":                                  ; preds = %"$out_of_gas_833", %entry
  %"$consume_835" = sub i64 %"$gasrem_831", 1
  store i64 %"$consume_835", i64* @_gasrem
  %"$dyndisp_table_842_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_842_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_842_salloc_load", i64 48)
  %"$dyndisp_table_842_salloc" = bitcast i8* %"$dyndisp_table_842_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_842" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_842_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_843" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_842", i32 0
  %"$dyndisp_pcast_844" = bitcast { i8*, i8* }* %"$dyndisp_gep_843" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_12_env_165"*)* @"$fundef_12" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_844"
  %"$dyndisp_gep_845" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_842", i32 2
  %"$dyndisp_pcast_846" = bitcast { i8*, i8* }* %"$dyndisp_gep_845" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_22_env_160"*)* @"$fundef_22" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_846"
  store { i8*, i8* }* %"$dyndisp_table_842", { i8*, i8* }** @list_foldl
  %"$gasrem_847" = load i64, i64* @_gasrem
  %"$gascmp_848" = icmp ugt i64 1, %"$gasrem_847"
  br i1 %"$gascmp_848", label %"$out_of_gas_849", label %"$have_gas_850"

"$out_of_gas_849":                                ; preds = %"$have_gas_834"
  call void @_out_of_gas()
  br label %"$have_gas_850"

"$have_gas_850":                                  ; preds = %"$out_of_gas_849", %"$have_gas_834"
  %"$consume_851" = sub i64 %"$gasrem_847", 1
  store i64 %"$consume_851", i64* @_gasrem
  %"$$fundef_32_envp_852_load" = load i8*, i8** @_execptr
  %"$$fundef_32_envp_852_salloc" = call i8* @_salloc(i8* %"$$fundef_32_envp_852_load", i64 8)
  %"$$fundef_32_envp_852" = bitcast i8* %"$$fundef_32_envp_852_salloc" to %"$$fundef_32_env_155"*
  %"$$fundef_32_env_voidp_854" = bitcast %"$$fundef_32_env_155"* %"$$fundef_32_envp_852" to i8*
  %"$$fundef_32_cloval_855" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_32_env_155"*)* @"$fundef_32" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_32_env_voidp_854", 1
  %"$$fundef_32_env_list_foldl_856" = getelementptr inbounds %"$$fundef_32_env_155", %"$$fundef_32_env_155"* %"$$fundef_32_envp_852", i32 0, i32 0
  %"$list_foldl_857" = load { i8*, i8* }*, { i8*, i8* }** @list_foldl
  store { i8*, i8* }* %"$list_foldl_857", { i8*, i8* }** %"$$fundef_32_env_list_foldl_856"
  %"$$fundef_38_env_voidp_859" = bitcast %"$$fundef_32_env_155"* %"$$fundef_32_envp_852" to i8*
  %"$$fundef_38_cloval_860" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_38_env_152"*)* @"$fundef_38" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_38_env_voidp_859", 1
  %"$dyndisp_table_861_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_861_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_861_salloc_load", i64 48)
  %"$dyndisp_table_861_salloc" = bitcast i8* %"$dyndisp_table_861_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_861" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_861_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_862" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_861", i32 0
  %"$dyndisp_pcast_863" = bitcast { i8*, i8* }* %"$dyndisp_gep_862" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$$fundef_32_cloval_855", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_863"
  %"$dyndisp_gep_864" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_861", i32 2
  %"$dyndisp_pcast_865" = bitcast { i8*, i8* }* %"$dyndisp_gep_864" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$$fundef_38_cloval_860", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_865"
  store { i8*, i8* }* %"$dyndisp_table_861", { i8*, i8* }** @ListUtils.list_length
  %"$expr_44" = alloca %Uint32
  %"$gasrem_866" = load i64, i64* @_gasrem
  %"$gascmp_867" = icmp ugt i64 1, %"$gasrem_866"
  br i1 %"$gascmp_867", label %"$out_of_gas_868", label %"$have_gas_869"

"$out_of_gas_868":                                ; preds = %"$have_gas_850"
  call void @_out_of_gas()
  br label %"$have_gas_869"

"$have_gas_869":                                  ; preds = %"$out_of_gas_868", %"$have_gas_850"
  %"$consume_870" = sub i64 %"$gasrem_866", 1
  store i64 %"$consume_870", i64* @_gasrem
  %t1 = alloca { i8*, i8* }*
  %"$gasrem_871" = load i64, i64* @_gasrem
  %"$gascmp_872" = icmp ugt i64 1, %"$gasrem_871"
  br i1 %"$gascmp_872", label %"$out_of_gas_873", label %"$have_gas_874"

"$out_of_gas_873":                                ; preds = %"$have_gas_869"
  call void @_out_of_gas()
  br label %"$have_gas_874"

"$have_gas_874":                                  ; preds = %"$out_of_gas_873", %"$have_gas_869"
  %"$consume_875" = sub i64 %"$gasrem_871", 1
  store i64 %"$consume_875", i64* @_gasrem
  %"$dyndisp_table_882_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_882_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_882_salloc_load", i64 48)
  %"$dyndisp_table_882_salloc" = bitcast i8* %"$dyndisp_table_882_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_882" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_882_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_883" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_882", i32 0
  %"$dyndisp_pcast_884" = bitcast { i8*, i8* }* %"$dyndisp_gep_883" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_45_env_149"*)* @"$fundef_45" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_884"
  %"$dyndisp_gep_885" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_882", i32 2
  %"$dyndisp_pcast_886" = bitcast { i8*, i8* }* %"$dyndisp_gep_885" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_49_env_147"*)* @"$fundef_49" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_886"
  store { i8*, i8* }* %"$dyndisp_table_882", { i8*, i8* }** %t1
  %"$gasrem_887" = load i64, i64* @_gasrem
  %"$gascmp_888" = icmp ugt i64 1, %"$gasrem_887"
  br i1 %"$gascmp_888", label %"$out_of_gas_889", label %"$have_gas_890"

"$out_of_gas_889":                                ; preds = %"$have_gas_874"
  call void @_out_of_gas()
  br label %"$have_gas_890"

"$have_gas_890":                                  ; preds = %"$out_of_gas_889", %"$have_gas_874"
  %"$consume_891" = sub i64 %"$gasrem_887", 1
  store i64 %"$consume_891", i64* @_gasrem
  %t2 = alloca { i8*, i8* }*
  %"$gasrem_892" = load i64, i64* @_gasrem
  %"$gascmp_893" = icmp ugt i64 1, %"$gasrem_892"
  br i1 %"$gascmp_893", label %"$out_of_gas_894", label %"$have_gas_895"

"$out_of_gas_894":                                ; preds = %"$have_gas_890"
  call void @_out_of_gas()
  br label %"$have_gas_895"

"$have_gas_895":                                  ; preds = %"$out_of_gas_894", %"$have_gas_890"
  %"$consume_896" = sub i64 %"$gasrem_892", 1
  store i64 %"$consume_896", i64* @_gasrem
  %"$dyndisp_table_903_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_903_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_903_salloc_load", i64 48)
  %"$dyndisp_table_903_salloc" = bitcast i8* %"$dyndisp_table_903_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_903" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_903_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_904" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_903", i32 0
  %"$dyndisp_pcast_905" = bitcast { i8*, i8* }* %"$dyndisp_gep_904" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_53_env_145"*)* @"$fundef_53" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_905"
  %"$dyndisp_gep_906" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_903", i32 2
  %"$dyndisp_pcast_907" = bitcast { i8*, i8* }* %"$dyndisp_gep_906" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_57_env_143"*)* @"$fundef_57" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_907"
  store { i8*, i8* }* %"$dyndisp_table_903", { i8*, i8* }** %t2
  %"$gasrem_908" = load i64, i64* @_gasrem
  %"$gascmp_909" = icmp ugt i64 1, %"$gasrem_908"
  br i1 %"$gascmp_909", label %"$out_of_gas_910", label %"$have_gas_911"

"$out_of_gas_910":                                ; preds = %"$have_gas_895"
  call void @_out_of_gas()
  br label %"$have_gas_911"

"$have_gas_911":                                  ; preds = %"$out_of_gas_910", %"$have_gas_895"
  %"$consume_912" = sub i64 %"$gasrem_908", 1
  store i64 %"$consume_912", i64* @_gasrem
  %t = alloca { i8*, i8* }*
  %"$gasrem_913" = load i64, i64* @_gasrem
  %"$gascmp_914" = icmp ugt i64 1, %"$gasrem_913"
  br i1 %"$gascmp_914", label %"$out_of_gas_915", label %"$have_gas_916"

"$out_of_gas_915":                                ; preds = %"$have_gas_911"
  call void @_out_of_gas()
  br label %"$have_gas_916"

"$have_gas_916":                                  ; preds = %"$out_of_gas_915", %"$have_gas_911"
  %"$consume_917" = sub i64 %"$gasrem_913", 1
  store i64 %"$consume_917", i64* @_gasrem
  %"$dyndisp_table_924_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_924_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_924_salloc_load", i64 48)
  %"$dyndisp_table_924_salloc" = bitcast i8* %"$dyndisp_table_924_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_924" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_924_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_925" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_924", i32 0
  %"$dyndisp_pcast_926" = bitcast { i8*, i8* }* %"$dyndisp_gep_925" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_61_env_141"*)* @"$fundef_61" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_926"
  %"$dyndisp_gep_927" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_924", i32 2
  %"$dyndisp_pcast_928" = bitcast { i8*, i8* }* %"$dyndisp_gep_927" to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_65_env_139"*)* @"$fundef_65" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_928"
  store { i8*, i8* }* %"$dyndisp_table_924", { i8*, i8* }** %t
  %"$gasrem_929" = load i64, i64* @_gasrem
  %"$gascmp_930" = icmp ugt i64 1, %"$gasrem_929"
  br i1 %"$gascmp_930", label %"$out_of_gas_931", label %"$have_gas_932"

"$out_of_gas_931":                                ; preds = %"$have_gas_916"
  call void @_out_of_gas()
  br label %"$have_gas_932"

"$have_gas_932":                                  ; preds = %"$out_of_gas_931", %"$have_gas_916"
  %"$consume_933" = sub i64 %"$gasrem_929", 1
  store i64 %"$consume_933", i64* @_gasrem
  %some_bool = alloca %TName_Bool*
  %"$gasrem_934" = load i64, i64* @_gasrem
  %"$gascmp_935" = icmp ugt i64 1, %"$gasrem_934"
  br i1 %"$gascmp_935", label %"$out_of_gas_936", label %"$have_gas_937"

"$out_of_gas_936":                                ; preds = %"$have_gas_932"
  call void @_out_of_gas()
  br label %"$have_gas_937"

"$have_gas_937":                                  ; preds = %"$out_of_gas_936", %"$have_gas_932"
  %"$consume_938" = sub i64 %"$gasrem_934", 1
  store i64 %"$consume_938", i64* @_gasrem
  %"$adtval_939_load" = load i8*, i8** @_execptr
  %"$adtval_939_salloc" = call i8* @_salloc(i8* %"$adtval_939_load", i64 1)
  %"$adtval_939" = bitcast i8* %"$adtval_939_salloc" to %CName_False*
  %"$adtgep_940" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_939", i32 0, i32 0
  store i8 1, i8* %"$adtgep_940"
  %"$adtptr_941" = bitcast %CName_False* %"$adtval_939" to %TName_Bool*
  store %TName_Bool* %"$adtptr_941", %TName_Bool** %some_bool
  %"$gasrem_942" = load i64, i64* @_gasrem
  %"$gascmp_943" = icmp ugt i64 2, %"$gasrem_942"
  br i1 %"$gascmp_943", label %"$out_of_gas_944", label %"$have_gas_945"

"$out_of_gas_944":                                ; preds = %"$have_gas_937"
  call void @_out_of_gas()
  br label %"$have_gas_945"

"$have_gas_945":                                  ; preds = %"$out_of_gas_944", %"$have_gas_937"
  %"$consume_946" = sub i64 %"$gasrem_942", 2
  store i64 %"$consume_946", i64* @_gasrem
  %"$some_bool_948" = load %TName_Bool*, %TName_Bool** %some_bool
  %"$some_bool_tag_949" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool_948", i32 0, i32 0
  %"$some_bool_tag_950" = load i8, i8* %"$some_bool_tag_949"
  switch i8 %"$some_bool_tag_950", label %"$empty_default_951" [
    i8 0, label %"$True_952"
    i8 1, label %"$False_1041"
  ]

"$True_952":                                      ; preds = %"$have_gas_945"
  %"$some_bool_953" = bitcast %TName_Bool* %"$some_bool_948" to %CName_True*
  %"$gasrem_954" = load i64, i64* @_gasrem
  %"$gascmp_955" = icmp ugt i64 1, %"$gasrem_954"
  br i1 %"$gascmp_955", label %"$out_of_gas_956", label %"$have_gas_957"

"$out_of_gas_956":                                ; preds = %"$True_952"
  call void @_out_of_gas()
  br label %"$have_gas_957"

"$have_gas_957":                                  ; preds = %"$out_of_gas_956", %"$True_952"
  %"$consume_958" = sub i64 %"$gasrem_954", 1
  store i64 %"$consume_958", i64* @_gasrem
  %f11 = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$gasrem_959" = load i64, i64* @_gasrem
  %"$gascmp_960" = icmp ugt i64 1, %"$gasrem_959"
  br i1 %"$gascmp_960", label %"$out_of_gas_961", label %"$have_gas_962"

"$out_of_gas_961":                                ; preds = %"$have_gas_957"
  call void @_out_of_gas()
  br label %"$have_gas_962"

"$have_gas_962":                                  ; preds = %"$out_of_gas_961", %"$have_gas_957"
  %"$consume_963" = sub i64 %"$gasrem_959", 1
  store i64 %"$consume_963", i64* @_gasrem
  %"$t_964" = load { i8*, i8* }*, { i8*, i8* }** %t
  %"$t_965" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_964", i32 0
  %"$t_966" = bitcast { i8*, i8* }* %"$t_965" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_967" = load { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_966"
  %"$t_fptr_968" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_967", 0
  %"$t_envptr_969" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_967", 1
  %"$t_call_970" = call { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_968"(i8* %"$t_envptr_969")
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_970", { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11
  %"$gasrem_971" = load i64, i64* @_gasrem
  %"$gascmp_972" = icmp ugt i64 1, %"$gasrem_971"
  br i1 %"$gascmp_972", label %"$out_of_gas_973", label %"$have_gas_974"

"$out_of_gas_973":                                ; preds = %"$have_gas_962"
  call void @_out_of_gas()
  br label %"$have_gas_974"

"$have_gas_974":                                  ; preds = %"$out_of_gas_973", %"$have_gas_962"
  %"$consume_975" = sub i64 %"$gasrem_971", 1
  store i64 %"$consume_975", i64* @_gasrem
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$gasrem_976" = load i64, i64* @_gasrem
  %"$gascmp_977" = icmp ugt i64 1, %"$gasrem_976"
  br i1 %"$gascmp_977", label %"$out_of_gas_978", label %"$have_gas_979"

"$out_of_gas_978":                                ; preds = %"$have_gas_974"
  call void @_out_of_gas()
  br label %"$have_gas_979"

"$have_gas_979":                                  ; preds = %"$out_of_gas_978", %"$have_gas_974"
  %"$consume_980" = sub i64 %"$gasrem_976", 1
  store i64 %"$consume_980", i64* @_gasrem
  %"$f11_6" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$f11_981" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11
  %"$f11_fptr_982" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_981", 0
  %"$f11_envptr_983" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_981", 1
  %"$t1_984" = load { i8*, i8* }*, { i8*, i8* }** %t1
  %"$f11_call_985" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_fptr_982"(i8* %"$f11_envptr_983", { i8*, i8* }* %"$t1_984")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_call_985", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_6"
  %"$$f11_6_986" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_6"
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$f11_6_986", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1
  %"$gasrem_987" = load i64, i64* @_gasrem
  %"$gascmp_988" = icmp ugt i64 1, %"$gasrem_987"
  br i1 %"$gascmp_988", label %"$out_of_gas_989", label %"$have_gas_990"

"$out_of_gas_989":                                ; preds = %"$have_gas_979"
  call void @_out_of_gas()
  br label %"$have_gas_990"

"$have_gas_990":                                  ; preds = %"$out_of_gas_989", %"$have_gas_979"
  %"$consume_991" = sub i64 %"$gasrem_987", 1
  store i64 %"$consume_991", i64* @_gasrem
  %len = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$gasrem_992" = load i64, i64* @_gasrem
  %"$gascmp_993" = icmp ugt i64 1, %"$gasrem_992"
  br i1 %"$gascmp_993", label %"$out_of_gas_994", label %"$have_gas_995"

"$out_of_gas_994":                                ; preds = %"$have_gas_990"
  call void @_out_of_gas()
  br label %"$have_gas_995"

"$have_gas_995":                                  ; preds = %"$out_of_gas_994", %"$have_gas_990"
  %"$consume_996" = sub i64 %"$gasrem_992", 1
  store i64 %"$consume_996", i64* @_gasrem
  %"$ListUtils.list_length_997" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length
  %"$ListUtils.list_length_998" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_997", i32 0
  %"$ListUtils.list_length_999" = bitcast { i8*, i8* }* %"$ListUtils.list_length_998" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1000" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_999"
  %"$ListUtils.list_length_fptr_1001" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1000", 0
  %"$ListUtils.list_length_envptr_1002" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1000", 1
  %"$ListUtils.list_length_call_1003" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_fptr_1001"(i8* %"$ListUtils.list_length_envptr_1002")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_call_1003", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len
  %"$gasrem_1004" = load i64, i64* @_gasrem
  %"$gascmp_1005" = icmp ugt i64 1, %"$gasrem_1004"
  br i1 %"$gascmp_1005", label %"$out_of_gas_1006", label %"$have_gas_1007"

"$out_of_gas_1006":                               ; preds = %"$have_gas_995"
  call void @_out_of_gas()
  br label %"$have_gas_1007"

"$have_gas_1007":                                 ; preds = %"$out_of_gas_1006", %"$have_gas_995"
  %"$consume_1008" = sub i64 %"$gasrem_1004", 1
  store i64 %"$consume_1008", i64* @_gasrem
  %one = alloca %Int32
  %"$gasrem_1009" = load i64, i64* @_gasrem
  %"$gascmp_1010" = icmp ugt i64 1, %"$gasrem_1009"
  br i1 %"$gascmp_1010", label %"$out_of_gas_1011", label %"$have_gas_1012"

"$out_of_gas_1011":                               ; preds = %"$have_gas_1007"
  call void @_out_of_gas()
  br label %"$have_gas_1012"

"$have_gas_1012":                                 ; preds = %"$out_of_gas_1011", %"$have_gas_1007"
  %"$consume_1013" = sub i64 %"$gasrem_1009", 1
  store i64 %"$consume_1013", i64* @_gasrem
  store %Int32 { i32 1 }, %Int32* %one
  %"$gasrem_1014" = load i64, i64* @_gasrem
  %"$gascmp_1015" = icmp ugt i64 1, %"$gasrem_1014"
  br i1 %"$gascmp_1015", label %"$out_of_gas_1016", label %"$have_gas_1017"

"$out_of_gas_1016":                               ; preds = %"$have_gas_1012"
  call void @_out_of_gas()
  br label %"$have_gas_1017"

"$have_gas_1017":                                 ; preds = %"$out_of_gas_1016", %"$have_gas_1012"
  %"$consume_1018" = sub i64 %"$gasrem_1014", 1
  store i64 %"$consume_1018", i64* @_gasrem
  %f1l = alloca %TName_List_Int32*
  %"$gasrem_1019" = load i64, i64* @_gasrem
  %"$gascmp_1020" = icmp ugt i64 1, %"$gasrem_1019"
  br i1 %"$gascmp_1020", label %"$out_of_gas_1021", label %"$have_gas_1022"

"$out_of_gas_1021":                               ; preds = %"$have_gas_1017"
  call void @_out_of_gas()
  br label %"$have_gas_1022"

"$have_gas_1022":                                 ; preds = %"$out_of_gas_1021", %"$have_gas_1017"
  %"$consume_1023" = sub i64 %"$gasrem_1019", 1
  store i64 %"$consume_1023", i64* @_gasrem
  %"$f1_7" = alloca %TName_List_Int32*
  %"$f1_1024" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1
  %"$f1_fptr_1025" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_1024", 0
  %"$f1_envptr_1026" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_1024", 1
  %"$one_1027" = load %Int32, %Int32* %one
  %"$f1_call_1028" = call %TName_List_Int32* %"$f1_fptr_1025"(i8* %"$f1_envptr_1026", %Int32 %"$one_1027")
  store %TName_List_Int32* %"$f1_call_1028", %TName_List_Int32** %"$f1_7"
  %"$$f1_7_1029" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_7"
  store %TName_List_Int32* %"$$f1_7_1029", %TName_List_Int32** %f1l
  %"$gasrem_1030" = load i64, i64* @_gasrem
  %"$gascmp_1031" = icmp ugt i64 1, %"$gasrem_1030"
  br i1 %"$gascmp_1031", label %"$out_of_gas_1032", label %"$have_gas_1033"

"$out_of_gas_1032":                               ; preds = %"$have_gas_1022"
  call void @_out_of_gas()
  br label %"$have_gas_1033"

"$have_gas_1033":                                 ; preds = %"$out_of_gas_1032", %"$have_gas_1022"
  %"$consume_1034" = sub i64 %"$gasrem_1030", 1
  store i64 %"$consume_1034", i64* @_gasrem
  %"$len_8" = alloca %Uint32
  %"$len_1035" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len
  %"$len_fptr_1036" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_1035", 0
  %"$len_envptr_1037" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_1035", 1
  %"$f1l_1038" = load %TName_List_Int32*, %TName_List_Int32** %f1l
  %"$len_call_1039" = call %Uint32 %"$len_fptr_1036"(i8* %"$len_envptr_1037", %TName_List_Int32* %"$f1l_1038")
  store %Uint32 %"$len_call_1039", %Uint32* %"$len_8"
  %"$$len_8_1040" = load %Uint32, %Uint32* %"$len_8"
  store %Uint32 %"$$len_8_1040", %Uint32* %"$expr_44"
  br label %"$matchsucc_947"

"$False_1041":                                    ; preds = %"$have_gas_945"
  %"$some_bool_1042" = bitcast %TName_Bool* %"$some_bool_948" to %CName_False*
  %"$gasrem_1043" = load i64, i64* @_gasrem
  %"$gascmp_1044" = icmp ugt i64 1, %"$gasrem_1043"
  br i1 %"$gascmp_1044", label %"$out_of_gas_1045", label %"$have_gas_1046"

"$out_of_gas_1045":                               ; preds = %"$False_1041"
  call void @_out_of_gas()
  br label %"$have_gas_1046"

"$have_gas_1046":                                 ; preds = %"$out_of_gas_1045", %"$False_1041"
  %"$consume_1047" = sub i64 %"$gasrem_1043", 1
  store i64 %"$consume_1047", i64* @_gasrem
  %f22 = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$gasrem_1048" = load i64, i64* @_gasrem
  %"$gascmp_1049" = icmp ugt i64 1, %"$gasrem_1048"
  br i1 %"$gascmp_1049", label %"$out_of_gas_1050", label %"$have_gas_1051"

"$out_of_gas_1050":                               ; preds = %"$have_gas_1046"
  call void @_out_of_gas()
  br label %"$have_gas_1051"

"$have_gas_1051":                                 ; preds = %"$out_of_gas_1050", %"$have_gas_1046"
  %"$consume_1052" = sub i64 %"$gasrem_1048", 1
  store i64 %"$consume_1052", i64* @_gasrem
  %"$t_1053" = load { i8*, i8* }*, { i8*, i8* }** %t
  %"$t_1054" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_1053", i32 2
  %"$t_1055" = bitcast { i8*, i8* }* %"$t_1054" to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_1056" = load { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_1055"
  %"$t_fptr_1057" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_1056", 0
  %"$t_envptr_1058" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_1056", 1
  %"$t_call_1059" = call { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_1057"(i8* %"$t_envptr_1058")
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_1059", { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22
  %"$gasrem_1060" = load i64, i64* @_gasrem
  %"$gascmp_1061" = icmp ugt i64 1, %"$gasrem_1060"
  br i1 %"$gascmp_1061", label %"$out_of_gas_1062", label %"$have_gas_1063"

"$out_of_gas_1062":                               ; preds = %"$have_gas_1051"
  call void @_out_of_gas()
  br label %"$have_gas_1063"

"$have_gas_1063":                                 ; preds = %"$out_of_gas_1062", %"$have_gas_1051"
  %"$consume_1064" = sub i64 %"$gasrem_1060", 1
  store i64 %"$consume_1064", i64* @_gasrem
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$gasrem_1065" = load i64, i64* @_gasrem
  %"$gascmp_1066" = icmp ugt i64 1, %"$gasrem_1065"
  br i1 %"$gascmp_1066", label %"$out_of_gas_1067", label %"$have_gas_1068"

"$out_of_gas_1067":                               ; preds = %"$have_gas_1063"
  call void @_out_of_gas()
  br label %"$have_gas_1068"

"$have_gas_1068":                                 ; preds = %"$out_of_gas_1067", %"$have_gas_1063"
  %"$consume_1069" = sub i64 %"$gasrem_1065", 1
  store i64 %"$consume_1069", i64* @_gasrem
  %"$f22_9" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$f22_1070" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22
  %"$f22_fptr_1071" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_1070", 0
  %"$f22_envptr_1072" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_1070", 1
  %"$t2_1073" = load { i8*, i8* }*, { i8*, i8* }** %t2
  %"$f22_call_1074" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_fptr_1071"(i8* %"$f22_envptr_1072", { i8*, i8* }* %"$t2_1073")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_call_1074", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_9"
  %"$$f22_9_1075" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_9"
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$f22_9_1075", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2
  %"$gasrem_1076" = load i64, i64* @_gasrem
  %"$gascmp_1077" = icmp ugt i64 1, %"$gasrem_1076"
  br i1 %"$gascmp_1077", label %"$out_of_gas_1078", label %"$have_gas_1079"

"$out_of_gas_1078":                               ; preds = %"$have_gas_1068"
  call void @_out_of_gas()
  br label %"$have_gas_1079"

"$have_gas_1079":                                 ; preds = %"$out_of_gas_1078", %"$have_gas_1068"
  %"$consume_1080" = sub i64 %"$gasrem_1076", 1
  store i64 %"$consume_1080", i64* @_gasrem
  %len1 = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$gasrem_1081" = load i64, i64* @_gasrem
  %"$gascmp_1082" = icmp ugt i64 1, %"$gasrem_1081"
  br i1 %"$gascmp_1082", label %"$out_of_gas_1083", label %"$have_gas_1084"

"$out_of_gas_1083":                               ; preds = %"$have_gas_1079"
  call void @_out_of_gas()
  br label %"$have_gas_1084"

"$have_gas_1084":                                 ; preds = %"$out_of_gas_1083", %"$have_gas_1079"
  %"$consume_1085" = sub i64 %"$gasrem_1081", 1
  store i64 %"$consume_1085", i64* @_gasrem
  %"$ListUtils.list_length_1086" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length
  %"$ListUtils.list_length_1087" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_1086", i32 2
  %"$ListUtils.list_length_1088" = bitcast { i8*, i8* }* %"$ListUtils.list_length_1087" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1089" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_1088"
  %"$ListUtils.list_length_fptr_1090" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1089", 0
  %"$ListUtils.list_length_envptr_1091" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1089", 1
  %"$ListUtils.list_length_call_1092" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_fptr_1090"(i8* %"$ListUtils.list_length_envptr_1091")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_call_1092", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1
  %"$gasrem_1093" = load i64, i64* @_gasrem
  %"$gascmp_1094" = icmp ugt i64 1, %"$gasrem_1093"
  br i1 %"$gascmp_1094", label %"$out_of_gas_1095", label %"$have_gas_1096"

"$out_of_gas_1095":                               ; preds = %"$have_gas_1084"
  call void @_out_of_gas()
  br label %"$have_gas_1096"

"$have_gas_1096":                                 ; preds = %"$out_of_gas_1095", %"$have_gas_1084"
  %"$consume_1097" = sub i64 %"$gasrem_1093", 1
  store i64 %"$consume_1097", i64* @_gasrem
  %one2 = alloca %Int64
  %"$gasrem_1098" = load i64, i64* @_gasrem
  %"$gascmp_1099" = icmp ugt i64 1, %"$gasrem_1098"
  br i1 %"$gascmp_1099", label %"$out_of_gas_1100", label %"$have_gas_1101"

"$out_of_gas_1100":                               ; preds = %"$have_gas_1096"
  call void @_out_of_gas()
  br label %"$have_gas_1101"

"$have_gas_1101":                                 ; preds = %"$out_of_gas_1100", %"$have_gas_1096"
  %"$consume_1102" = sub i64 %"$gasrem_1098", 1
  store i64 %"$consume_1102", i64* @_gasrem
  store %Int64 { i64 1 }, %Int64* %one2
  %"$gasrem_1103" = load i64, i64* @_gasrem
  %"$gascmp_1104" = icmp ugt i64 1, %"$gasrem_1103"
  br i1 %"$gascmp_1104", label %"$out_of_gas_1105", label %"$have_gas_1106"

"$out_of_gas_1105":                               ; preds = %"$have_gas_1101"
  call void @_out_of_gas()
  br label %"$have_gas_1106"

"$have_gas_1106":                                 ; preds = %"$out_of_gas_1105", %"$have_gas_1101"
  %"$consume_1107" = sub i64 %"$gasrem_1103", 1
  store i64 %"$consume_1107", i64* @_gasrem
  %f2l = alloca %TName_List_Int64*
  %"$gasrem_1108" = load i64, i64* @_gasrem
  %"$gascmp_1109" = icmp ugt i64 1, %"$gasrem_1108"
  br i1 %"$gascmp_1109", label %"$out_of_gas_1110", label %"$have_gas_1111"

"$out_of_gas_1110":                               ; preds = %"$have_gas_1106"
  call void @_out_of_gas()
  br label %"$have_gas_1111"

"$have_gas_1111":                                 ; preds = %"$out_of_gas_1110", %"$have_gas_1106"
  %"$consume_1112" = sub i64 %"$gasrem_1108", 1
  store i64 %"$consume_1112", i64* @_gasrem
  %"$f2_10" = alloca %TName_List_Int64*
  %"$f2_1113" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2
  %"$f2_fptr_1114" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1113", 0
  %"$f2_envptr_1115" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1113", 1
  %"$one_1116" = load %Int64, %Int64* %one2
  %"$f2_call_1117" = call %TName_List_Int64* %"$f2_fptr_1114"(i8* %"$f2_envptr_1115", %Int64 %"$one_1116")
  store %TName_List_Int64* %"$f2_call_1117", %TName_List_Int64** %"$f2_10"
  %"$$f2_10_1118" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_10"
  store %TName_List_Int64* %"$$f2_10_1118", %TName_List_Int64** %f2l
  %"$gasrem_1119" = load i64, i64* @_gasrem
  %"$gascmp_1120" = icmp ugt i64 1, %"$gasrem_1119"
  br i1 %"$gascmp_1120", label %"$out_of_gas_1121", label %"$have_gas_1122"

"$out_of_gas_1121":                               ; preds = %"$have_gas_1111"
  call void @_out_of_gas()
  br label %"$have_gas_1122"

"$have_gas_1122":                                 ; preds = %"$out_of_gas_1121", %"$have_gas_1111"
  %"$consume_1123" = sub i64 %"$gasrem_1119", 1
  store i64 %"$consume_1123", i64* @_gasrem
  %"$len_11" = alloca %Uint32
  %"$len_1124" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1
  %"$len_fptr_1125" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1124", 0
  %"$len_envptr_1126" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1124", 1
  %"$f2l_1127" = load %TName_List_Int64*, %TName_List_Int64** %f2l
  %"$len_call_1128" = call %Uint32 %"$len_fptr_1125"(i8* %"$len_envptr_1126", %TName_List_Int64* %"$f2l_1127")
  store %Uint32 %"$len_call_1128", %Uint32* %"$len_11"
  %"$$len_11_1129" = load %Uint32, %Uint32* %"$len_11"
  store %Uint32 %"$$len_11_1129", %Uint32* %"$expr_44"
  br label %"$matchsucc_947"

"$empty_default_951":                             ; preds = %"$have_gas_945"
  br label %"$matchsucc_947"

"$matchsucc_947":                                 ; preds = %"$have_gas_1122", %"$have_gas_1033", %"$empty_default_951"
  %"$$expr_44_1130" = load %Uint32, %Uint32* %"$expr_44"
  ret %Uint32 %"$$expr_44_1130"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1131" = call %Uint32 @"$scilla_expr_830"(i8* null)
  %"$pval_1132" = alloca %Uint32
  %"$memvoidcast_1133" = bitcast %Uint32* %"$pval_1132" to i8*
  store %Uint32 %"$exprval_1131", %Uint32* %"$pval_1132"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_73", i8* %"$memvoidcast_1133")
  ret void
}
