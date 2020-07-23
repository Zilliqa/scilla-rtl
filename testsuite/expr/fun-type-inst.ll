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
@list_length = global { i8*, i8* }* null

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_67"(%"$$fundef_67_env_138"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_68" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$f_503" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 2
  %"$f_504" = bitcast { i8*, i8* }* %"$f_503" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_505" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_504"
  %"$f_fptr_506" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_505", 0
  %"$f_envptr_507" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_505", 1
  %"$f_call_508" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_506"(i8* %"$f_envptr_507")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_508", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_68"
  %"$$retval_68_509" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_68"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_68_509"
}

define internal { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_65"(%"$$fundef_65_env_139"* %0) {
entry:
  %"$retval_66" = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_67_env_138"*, { i8*, i8* }*)* @"$fundef_67" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66"
  %"$$retval_66_502" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66"
  ret { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_66_502"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_63"(%"$$fundef_63_env_140"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_64" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$f_492" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$f_493" = bitcast { i8*, i8* }* %"$f_492" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_494" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_493"
  %"$f_fptr_495" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_494", 0
  %"$f_envptr_496" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_494", 1
  %"$f_call_497" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_495"(i8* %"$f_envptr_496")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_497", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_64"
  %"$$retval_64_498" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_64"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_64_498"
}

define internal { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_61"(%"$$fundef_61_env_141"* %0) {
entry:
  %"$retval_62" = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_63_env_140"*, { i8*, i8* }*)* @"$fundef_63" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62"
  %"$$retval_62_491" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62"
  ret { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_62_491"
}

define internal %TName_List_Int64* @"$fundef_59"(%"$$fundef_59_env_142"* %0, %Int64 %1) {
entry:
  %"$retval_60" = alloca %TName_List_Int64*
  %an = alloca %TName_List_Int64*
  %"$adtval_472_load" = load i8*, i8** @_execptr
  %"$adtval_472_salloc" = call i8* @_salloc(i8* %"$adtval_472_load", i64 1)
  %"$adtval_472" = bitcast i8* %"$adtval_472_salloc" to %CName_Nil_Int64*
  %"$adtgep_473" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_472", i32 0, i32 0
  store i8 1, i8* %"$adtgep_473"
  %"$adtptr_474" = bitcast %CName_Nil_Int64* %"$adtval_472" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_474", %TName_List_Int64** %an
  %a1 = alloca %TName_List_Int64*
  %"$an_475" = load %TName_List_Int64*, %TName_List_Int64** %an
  %"$adtval_476_load" = load i8*, i8** @_execptr
  %"$adtval_476_salloc" = call i8* @_salloc(i8* %"$adtval_476_load", i64 17)
  %"$adtval_476" = bitcast i8* %"$adtval_476_salloc" to %CName_Cons_Int64*
  %"$adtgep_477" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_476", i32 0, i32 0
  store i8 0, i8* %"$adtgep_477"
  %"$adtgep_478" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_476", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_478"
  %"$adtgep_479" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_476", i32 0, i32 2
  store %TName_List_Int64* %"$an_475", %TName_List_Int64** %"$adtgep_479"
  %"$adtptr_480" = bitcast %CName_Cons_Int64* %"$adtval_476" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_480", %TName_List_Int64** %a1
  %"$a1_481" = load %TName_List_Int64*, %TName_List_Int64** %a1
  %"$adtval_482_load" = load i8*, i8** @_execptr
  %"$adtval_482_salloc" = call i8* @_salloc(i8* %"$adtval_482_load", i64 17)
  %"$adtval_482" = bitcast i8* %"$adtval_482_salloc" to %CName_Cons_Int64*
  %"$adtgep_483" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_482", i32 0, i32 0
  store i8 0, i8* %"$adtgep_483"
  %"$adtgep_484" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_482", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_484"
  %"$adtgep_485" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_482", i32 0, i32 2
  store %TName_List_Int64* %"$a1_481", %TName_List_Int64** %"$adtgep_485"
  %"$adtptr_486" = bitcast %CName_Cons_Int64* %"$adtval_482" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_486", %TName_List_Int64** %"$retval_60"
  %"$$retval_60_487" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_60"
  ret %TName_List_Int64* %"$$retval_60_487"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_57"(%"$$fundef_57_env_143"* %0) {
entry:
  %"$retval_58" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_59_env_142"*, %Int64)* @"$fundef_59" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_58"
  %"$$retval_58_471" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_58"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_58_471"
}

define internal %TName_List_Int32* @"$fundef_55"(%"$$fundef_55_env_144"* %0, %Int32 %1) {
entry:
  %"$retval_56" = alloca %TName_List_Int32*
  %an = alloca %TName_List_Int32*
  %"$adtval_452_load" = load i8*, i8** @_execptr
  %"$adtval_452_salloc" = call i8* @_salloc(i8* %"$adtval_452_load", i64 1)
  %"$adtval_452" = bitcast i8* %"$adtval_452_salloc" to %CName_Nil_Int32*
  %"$adtgep_453" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_452", i32 0, i32 0
  store i8 1, i8* %"$adtgep_453"
  %"$adtptr_454" = bitcast %CName_Nil_Int32* %"$adtval_452" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_454", %TName_List_Int32** %an
  %a1 = alloca %TName_List_Int32*
  %"$an_455" = load %TName_List_Int32*, %TName_List_Int32** %an
  %"$adtval_456_load" = load i8*, i8** @_execptr
  %"$adtval_456_salloc" = call i8* @_salloc(i8* %"$adtval_456_load", i64 13)
  %"$adtval_456" = bitcast i8* %"$adtval_456_salloc" to %CName_Cons_Int32*
  %"$adtgep_457" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_456", i32 0, i32 0
  store i8 0, i8* %"$adtgep_457"
  %"$adtgep_458" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_456", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_458"
  %"$adtgep_459" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_456", i32 0, i32 2
  store %TName_List_Int32* %"$an_455", %TName_List_Int32** %"$adtgep_459"
  %"$adtptr_460" = bitcast %CName_Cons_Int32* %"$adtval_456" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_460", %TName_List_Int32** %a1
  %"$a1_461" = load %TName_List_Int32*, %TName_List_Int32** %a1
  %"$adtval_462_load" = load i8*, i8** @_execptr
  %"$adtval_462_salloc" = call i8* @_salloc(i8* %"$adtval_462_load", i64 13)
  %"$adtval_462" = bitcast i8* %"$adtval_462_salloc" to %CName_Cons_Int32*
  %"$adtgep_463" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_462", i32 0, i32 0
  store i8 0, i8* %"$adtgep_463"
  %"$adtgep_464" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_462", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_464"
  %"$adtgep_465" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_462", i32 0, i32 2
  store %TName_List_Int32* %"$a1_461", %TName_List_Int32** %"$adtgep_465"
  %"$adtptr_466" = bitcast %CName_Cons_Int32* %"$adtval_462" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_466", %TName_List_Int32** %"$retval_56"
  %"$$retval_56_467" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_56"
  ret %TName_List_Int32* %"$$retval_56_467"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_53"(%"$$fundef_53_env_145"* %0) {
entry:
  %"$retval_54" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_55_env_144"*, %Int32)* @"$fundef_55" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_54"
  %"$$retval_54_451" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_54"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_54_451"
}

define internal %TName_List_Int64* @"$fundef_51"(%"$$fundef_51_env_146"* %0, %Int64 %1) {
entry:
  %"$retval_52" = alloca %TName_List_Int64*
  %an = alloca %TName_List_Int64*
  %"$adtval_438_load" = load i8*, i8** @_execptr
  %"$adtval_438_salloc" = call i8* @_salloc(i8* %"$adtval_438_load", i64 1)
  %"$adtval_438" = bitcast i8* %"$adtval_438_salloc" to %CName_Nil_Int64*
  %"$adtgep_439" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_438", i32 0, i32 0
  store i8 1, i8* %"$adtgep_439"
  %"$adtptr_440" = bitcast %CName_Nil_Int64* %"$adtval_438" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_440", %TName_List_Int64** %an
  %"$an_441" = load %TName_List_Int64*, %TName_List_Int64** %an
  %"$adtval_442_load" = load i8*, i8** @_execptr
  %"$adtval_442_salloc" = call i8* @_salloc(i8* %"$adtval_442_load", i64 17)
  %"$adtval_442" = bitcast i8* %"$adtval_442_salloc" to %CName_Cons_Int64*
  %"$adtgep_443" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_442", i32 0, i32 0
  store i8 0, i8* %"$adtgep_443"
  %"$adtgep_444" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_442", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_444"
  %"$adtgep_445" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_442", i32 0, i32 2
  store %TName_List_Int64* %"$an_441", %TName_List_Int64** %"$adtgep_445"
  %"$adtptr_446" = bitcast %CName_Cons_Int64* %"$adtval_442" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_446", %TName_List_Int64** %"$retval_52"
  %"$$retval_52_447" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_52"
  ret %TName_List_Int64* %"$$retval_52_447"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_49"(%"$$fundef_49_env_147"* %0) {
entry:
  %"$retval_50" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_51_env_146"*, %Int64)* @"$fundef_51" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_50"
  %"$$retval_50_437" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_50"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_50_437"
}

define internal %TName_List_Int32* @"$fundef_47"(%"$$fundef_47_env_148"* %0, %Int32 %1) {
entry:
  %"$retval_48" = alloca %TName_List_Int32*
  %an = alloca %TName_List_Int32*
  %"$adtval_424_load" = load i8*, i8** @_execptr
  %"$adtval_424_salloc" = call i8* @_salloc(i8* %"$adtval_424_load", i64 1)
  %"$adtval_424" = bitcast i8* %"$adtval_424_salloc" to %CName_Nil_Int32*
  %"$adtgep_425" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_424", i32 0, i32 0
  store i8 1, i8* %"$adtgep_425"
  %"$adtptr_426" = bitcast %CName_Nil_Int32* %"$adtval_424" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_426", %TName_List_Int32** %an
  %"$an_427" = load %TName_List_Int32*, %TName_List_Int32** %an
  %"$adtval_428_load" = load i8*, i8** @_execptr
  %"$adtval_428_salloc" = call i8* @_salloc(i8* %"$adtval_428_load", i64 13)
  %"$adtval_428" = bitcast i8* %"$adtval_428_salloc" to %CName_Cons_Int32*
  %"$adtgep_429" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_428", i32 0, i32 0
  store i8 0, i8* %"$adtgep_429"
  %"$adtgep_430" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_428", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_430"
  %"$adtgep_431" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_428", i32 0, i32 2
  store %TName_List_Int32* %"$an_427", %TName_List_Int32** %"$adtgep_431"
  %"$adtptr_432" = bitcast %CName_Cons_Int32* %"$adtval_428" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_432", %TName_List_Int32** %"$retval_48"
  %"$$retval_48_433" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_48"
  ret %TName_List_Int32* %"$$retval_48_433"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_45"(%"$$fundef_45_env_149"* %0) {
entry:
  %"$retval_46" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_47_env_148"*, %Int32)* @"$fundef_47" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_46"
  %"$$retval_46_423" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_46"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_46_423"
}

define internal %Uint32 @"$fundef_42"(%"$$fundef_42_env_150"* %0, %Int64 %1) {
entry:
  %"$$fundef_42_env_one_412" = getelementptr inbounds %"$$fundef_42_env_150", %"$$fundef_42_env_150"* %0, i32 0, i32 0
  %"$one_envload_413" = load %Uint32, %Uint32* %"$$fundef_42_env_one_412"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_413", %Uint32* %one
  %"$$fundef_42_env_z_414" = getelementptr inbounds %"$$fundef_42_env_150", %"$$fundef_42_env_150"* %0, i32 0, i32 1
  %"$z_envload_415" = load %Uint32, %Uint32* %"$$fundef_42_env_z_414"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_415", %Uint32* %z
  %"$retval_43" = alloca %Uint32
  %"$one_416" = load %Uint32, %Uint32* %one
  %"$z_417" = load %Uint32, %Uint32* %z
  %"$add_call_418" = call %Uint32 @_add_Uint32(%Uint32 %"$one_416", %Uint32 %"$z_417")
  store %Uint32 %"$add_call_418", %Uint32* %"$retval_43"
  %"$$retval_43_419" = load %Uint32, %Uint32* %"$retval_43"
  ret %Uint32 %"$$retval_43_419"
}

define internal { %Uint32 (i8*, %Int64)*, i8* } @"$fundef_40"(%"$$fundef_40_env_151"* %0, %Uint32 %1) {
entry:
  %"$$fundef_40_env_one_402" = getelementptr inbounds %"$$fundef_40_env_151", %"$$fundef_40_env_151"* %0, i32 0, i32 0
  %"$one_envload_403" = load %Uint32, %Uint32* %"$$fundef_40_env_one_402"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_403", %Uint32* %one
  %"$retval_41" = alloca { %Uint32 (i8*, %Int64)*, i8* }
  %"$$fundef_42_envp_404_load" = load i8*, i8** @_execptr
  %"$$fundef_42_envp_404_salloc" = call i8* @_salloc(i8* %"$$fundef_42_envp_404_load", i64 8)
  %"$$fundef_42_envp_404" = bitcast i8* %"$$fundef_42_envp_404_salloc" to %"$$fundef_42_env_150"*
  %"$$fundef_42_env_voidp_406" = bitcast %"$$fundef_42_env_150"* %"$$fundef_42_envp_404" to i8*
  %"$$fundef_42_cloval_407" = insertvalue { %Uint32 (i8*, %Int64)*, i8* } { %Uint32 (i8*, %Int64)* bitcast (%Uint32 (%"$$fundef_42_env_150"*, %Int64)* @"$fundef_42" to %Uint32 (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_42_env_voidp_406", 1
  %"$$fundef_42_env_one_408" = getelementptr inbounds %"$$fundef_42_env_150", %"$$fundef_42_env_150"* %"$$fundef_42_envp_404", i32 0, i32 0
  %"$one_409" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_409", %Uint32* %"$$fundef_42_env_one_408"
  %"$$fundef_42_env_z_410" = getelementptr inbounds %"$$fundef_42_env_150", %"$$fundef_42_env_150"* %"$$fundef_42_envp_404", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_42_env_z_410"
  store { %Uint32 (i8*, %Int64)*, i8* } %"$$fundef_42_cloval_407", { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_41"
  %"$$retval_41_411" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_41"
  ret { %Uint32 (i8*, %Int64)*, i8* } %"$$retval_41_411"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_152"* %0) {
entry:
  %"$$fundef_38_env_list_foldl_369" = getelementptr inbounds %"$$fundef_38_env_152", %"$$fundef_38_env_152"* %0, i32 0, i32 0
  %"$list_foldl_envload_370" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_38_env_list_foldl_369"
  %list_foldl = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldl_envload_370", { i8*, i8* }** %list_foldl
  %"$retval_39" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$list_foldl_371" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl
  %"$list_foldl_372" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_371", i32 2
  %"$list_foldl_373" = bitcast { i8*, i8* }* %"$list_foldl_372" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_374" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_373"
  %"$list_foldl_fptr_375" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_374", 0
  %"$list_foldl_envptr_376" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_374", 1
  %"$list_foldl_call_377" = call { i8*, i8* }* %"$list_foldl_fptr_375"(i8* %"$list_foldl_envptr_376")
  %"$list_foldl_378" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_377", i32 1
  %"$list_foldl_379" = bitcast { i8*, i8* }* %"$list_foldl_378" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_380" = load { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_379"
  %"$list_foldl_fptr_381" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_380", 0
  %"$list_foldl_envptr_382" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_380", 1
  %"$list_foldl_call_383" = call { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_381"(i8* %"$list_foldl_envptr_382")
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_383", { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %iter = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_40_envp_384_load" = load i8*, i8** @_execptr
  %"$$fundef_40_envp_384_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_384_load", i64 4)
  %"$$fundef_40_envp_384" = bitcast i8* %"$$fundef_40_envp_384_salloc" to %"$$fundef_40_env_151"*
  %"$$fundef_40_env_voidp_386" = bitcast %"$$fundef_40_env_151"* %"$$fundef_40_envp_384" to i8*
  %"$$fundef_40_cloval_387" = insertvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int64)*, i8* } (%"$$fundef_40_env_151"*, %Uint32)* @"$fundef_40" to { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_40_env_voidp_386", 1
  %"$$fundef_40_env_one_388" = getelementptr inbounds %"$$fundef_40_env_151", %"$$fundef_40_env_151"* %"$$fundef_40_envp_384", i32 0, i32 0
  %"$one_389" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_389", %Uint32* %"$$fundef_40_env_one_388"
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_40_cloval_387", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %init = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %init
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$foldl_390" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$foldl_fptr_391" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_390", 0
  %"$foldl_envptr_392" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_390", 1
  %"$iter_393" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$foldl_call_394" = call { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_391"(i8* %"$foldl_envptr_392", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_393")
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_394", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$$foldl_4_395" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$$foldl_4_fptr_396" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_395", 0
  %"$$foldl_4_envptr_397" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_395", 1
  %"$init_398" = load %Uint32, %Uint32* %init
  %"$$foldl_4_call_399" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_fptr_396"(i8* %"$$foldl_4_envptr_397", %Uint32 %"$init_398")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_call_399", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5"
  %"$$foldl_5_400" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5"
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_5_400", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_39"
  %"$$retval_39_401" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_39"
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_39_401"
}

define internal %Uint32 @"$fundef_36"(%"$$fundef_36_env_153"* %0, %Int32 %1) {
entry:
  %"$$fundef_36_env_one_361" = getelementptr inbounds %"$$fundef_36_env_153", %"$$fundef_36_env_153"* %0, i32 0, i32 0
  %"$one_envload_362" = load %Uint32, %Uint32* %"$$fundef_36_env_one_361"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_362", %Uint32* %one
  %"$$fundef_36_env_z_363" = getelementptr inbounds %"$$fundef_36_env_153", %"$$fundef_36_env_153"* %0, i32 0, i32 1
  %"$z_envload_364" = load %Uint32, %Uint32* %"$$fundef_36_env_z_363"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_364", %Uint32* %z
  %"$retval_37" = alloca %Uint32
  %"$one_365" = load %Uint32, %Uint32* %one
  %"$z_366" = load %Uint32, %Uint32* %z
  %"$add_call_367" = call %Uint32 @_add_Uint32(%Uint32 %"$one_365", %Uint32 %"$z_366")
  store %Uint32 %"$add_call_367", %Uint32* %"$retval_37"
  %"$$retval_37_368" = load %Uint32, %Uint32* %"$retval_37"
  ret %Uint32 %"$$retval_37_368"
}

define internal { %Uint32 (i8*, %Int32)*, i8* } @"$fundef_34"(%"$$fundef_34_env_154"* %0, %Uint32 %1) {
entry:
  %"$$fundef_34_env_one_351" = getelementptr inbounds %"$$fundef_34_env_154", %"$$fundef_34_env_154"* %0, i32 0, i32 0
  %"$one_envload_352" = load %Uint32, %Uint32* %"$$fundef_34_env_one_351"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_352", %Uint32* %one
  %"$retval_35" = alloca { %Uint32 (i8*, %Int32)*, i8* }
  %"$$fundef_36_envp_353_load" = load i8*, i8** @_execptr
  %"$$fundef_36_envp_353_salloc" = call i8* @_salloc(i8* %"$$fundef_36_envp_353_load", i64 8)
  %"$$fundef_36_envp_353" = bitcast i8* %"$$fundef_36_envp_353_salloc" to %"$$fundef_36_env_153"*
  %"$$fundef_36_env_voidp_355" = bitcast %"$$fundef_36_env_153"* %"$$fundef_36_envp_353" to i8*
  %"$$fundef_36_cloval_356" = insertvalue { %Uint32 (i8*, %Int32)*, i8* } { %Uint32 (i8*, %Int32)* bitcast (%Uint32 (%"$$fundef_36_env_153"*, %Int32)* @"$fundef_36" to %Uint32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_36_env_voidp_355", 1
  %"$$fundef_36_env_one_357" = getelementptr inbounds %"$$fundef_36_env_153", %"$$fundef_36_env_153"* %"$$fundef_36_envp_353", i32 0, i32 0
  %"$one_358" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_358", %Uint32* %"$$fundef_36_env_one_357"
  %"$$fundef_36_env_z_359" = getelementptr inbounds %"$$fundef_36_env_153", %"$$fundef_36_env_153"* %"$$fundef_36_envp_353", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_36_env_z_359"
  store { %Uint32 (i8*, %Int32)*, i8* } %"$$fundef_36_cloval_356", { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_35"
  %"$$retval_35_360" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_35"
  ret { %Uint32 (i8*, %Int32)*, i8* } %"$$retval_35_360"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_32"(%"$$fundef_32_env_155"* %0) {
entry:
  %"$$fundef_32_env_list_foldl_318" = getelementptr inbounds %"$$fundef_32_env_155", %"$$fundef_32_env_155"* %0, i32 0, i32 0
  %"$list_foldl_envload_319" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_32_env_list_foldl_318"
  %list_foldl = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldl_envload_319", { i8*, i8* }** %list_foldl
  %"$retval_33" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$list_foldl_320" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl
  %"$list_foldl_321" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_320", i32 0
  %"$list_foldl_322" = bitcast { i8*, i8* }* %"$list_foldl_321" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_323" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_322"
  %"$list_foldl_fptr_324" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_323", 0
  %"$list_foldl_envptr_325" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_323", 1
  %"$list_foldl_call_326" = call { i8*, i8* }* %"$list_foldl_fptr_324"(i8* %"$list_foldl_envptr_325")
  %"$list_foldl_327" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_326", i32 1
  %"$list_foldl_328" = bitcast { i8*, i8* }* %"$list_foldl_327" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_329" = load { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_328"
  %"$list_foldl_fptr_330" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_329", 0
  %"$list_foldl_envptr_331" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_329", 1
  %"$list_foldl_call_332" = call { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_330"(i8* %"$list_foldl_envptr_331")
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_332", { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %iter = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_34_envp_333_load" = load i8*, i8** @_execptr
  %"$$fundef_34_envp_333_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_333_load", i64 4)
  %"$$fundef_34_envp_333" = bitcast i8* %"$$fundef_34_envp_333_salloc" to %"$$fundef_34_env_154"*
  %"$$fundef_34_env_voidp_335" = bitcast %"$$fundef_34_env_154"* %"$$fundef_34_envp_333" to i8*
  %"$$fundef_34_cloval_336" = insertvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int32)*, i8* } (%"$$fundef_34_env_154"*, %Uint32)* @"$fundef_34" to { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_34_env_voidp_335", 1
  %"$$fundef_34_env_one_337" = getelementptr inbounds %"$$fundef_34_env_154", %"$$fundef_34_env_154"* %"$$fundef_34_envp_333", i32 0, i32 0
  %"$one_338" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_338", %Uint32* %"$$fundef_34_env_one_337"
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_34_cloval_336", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %init = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %init
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$foldl_339" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$foldl_fptr_340" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_339", 0
  %"$foldl_envptr_341" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_339", 1
  %"$iter_342" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$foldl_call_343" = call { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_340"(i8* %"$foldl_envptr_341", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_342")
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_343", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$$foldl_4_344" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$$foldl_4_fptr_345" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_344", 0
  %"$$foldl_4_envptr_346" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_344", 1
  %"$init_347" = load %Uint32, %Uint32* %init
  %"$$foldl_4_call_348" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_fptr_345"(i8* %"$$foldl_4_envptr_346", %Uint32 %"$init_347")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_call_348", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5"
  %"$$foldl_5_349" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5"
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_5_349", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_33"
  %"$$retval_33_350" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_33"
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_33_350"
}

define internal %Uint32 @"$fundef_30"(%"$$fundef_30_env_156"* %0, %TName_List_Int64* %1) {
entry:
  %"$$fundef_30_env_f_276" = getelementptr inbounds %"$$fundef_30_env_156", %"$$fundef_30_env_156"* %0, i32 0, i32 0
  %"$f_envload_277" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_f_276"
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_277", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_30_env_g_278" = getelementptr inbounds %"$$fundef_30_env_156", %"$$fundef_30_env_156"* %0, i32 0, i32 1
  %"$g_envload_279" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_g_278"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_279", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_30_env_z_280" = getelementptr inbounds %"$$fundef_30_env_156", %"$$fundef_30_env_156"* %0, i32 0, i32 2
  %"$z_envload_281" = load %Uint32, %Uint32* %"$$fundef_30_env_z_280"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_281", %Uint32* %z
  %"$retval_31" = alloca %Uint32
  %"$l_tag_283" = getelementptr inbounds %TName_List_Int64, %TName_List_Int64* %1, i32 0, i32 0
  %"$l_tag_284" = load i8, i8* %"$l_tag_283"
  switch i8 %"$l_tag_284", label %"$empty_default_285" [
    i8 0, label %"$Cons_286"
    i8 1, label %"$Nil_314"
  ]

"$Cons_286":                                      ; preds = %entry
  %"$l_287" = bitcast %TName_List_Int64* %1 to %CName_Cons_Int64*
  %"$h_gep_288" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_287", i32 0, i32 1
  %"$h_load_289" = load %Int64, %Int64* %"$h_gep_288"
  %h = alloca %Int64
  store %Int64 %"$h_load_289", %Int64* %h
  %"$t_gep_290" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_287", i32 0, i32 2
  %"$t_load_291" = load %TName_List_Int64*, %TName_List_Int64** %"$t_gep_290"
  %t = alloca %TName_List_Int64*
  store %TName_List_Int64* %"$t_load_291", %TName_List_Int64** %t
  %res = alloca %Uint32
  %"$f_0" = alloca { %Uint32 (i8*, %Int64)*, i8* }
  %"$f_292" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_293" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_292", 0
  %"$f_envptr_294" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_292", 1
  %"$z_295" = load %Uint32, %Uint32* %z
  %"$f_call_296" = call { %Uint32 (i8*, %Int64)*, i8* } %"$f_fptr_293"(i8* %"$f_envptr_294", %Uint32 %"$z_295")
  store { %Uint32 (i8*, %Int64)*, i8* } %"$f_call_296", { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0"
  %"$f_1" = alloca %Uint32
  %"$$f_0_297" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0"
  %"$$f_0_fptr_298" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_297", 0
  %"$$f_0_envptr_299" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_297", 1
  %"$h_300" = load %Int64, %Int64* %h
  %"$$f_0_call_301" = call %Uint32 %"$$f_0_fptr_298"(i8* %"$$f_0_envptr_299", %Int64 %"$h_300")
  store %Uint32 %"$$f_0_call_301", %Uint32* %"$f_1"
  %"$$f_1_302" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_302", %Uint32* %res
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$g_303" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_304" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_303", 0
  %"$g_envptr_305" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_303", 1
  %"$res_306" = load %Uint32, %Uint32* %res
  %"$g_call_307" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_fptr_304"(i8* %"$g_envptr_305", %Uint32 %"$res_306")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_call_307", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_308" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_309" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_308", 0
  %"$$g_2_envptr_310" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_308", 1
  %"$t_311" = load %TName_List_Int64*, %TName_List_Int64** %t
  %"$$g_2_call_312" = call %Uint32 %"$$g_2_fptr_309"(i8* %"$$g_2_envptr_310", %TName_List_Int64* %"$t_311")
  store %Uint32 %"$$g_2_call_312", %Uint32* %"$g_3"
  %"$$g_3_313" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_313", %Uint32* %"$retval_31"
  br label %"$matchsucc_282"

"$Nil_314":                                       ; preds = %entry
  %"$l_315" = bitcast %TName_List_Int64* %1 to %CName_Nil_Int64*
  %"$z_316" = load %Uint32, %Uint32* %z
  store %Uint32 %"$z_316", %Uint32* %"$retval_31"
  br label %"$matchsucc_282"

"$empty_default_285":                             ; preds = %entry
  br label %"$matchsucc_282"

"$matchsucc_282":                                 ; preds = %"$Nil_314", %"$Cons_286", %"$empty_default_285"
  %"$$retval_31_317" = load %Uint32, %Uint32* %"$retval_31"
  ret %Uint32 %"$$retval_31_317"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_28"(%"$$fundef_28_env_157"* %0, %Uint32 %1) {
entry:
  %"$$fundef_28_env_f_262" = getelementptr inbounds %"$$fundef_28_env_157", %"$$fundef_28_env_157"* %0, i32 0, i32 0
  %"$f_envload_263" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_262"
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_263", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_28_env_g_264" = getelementptr inbounds %"$$fundef_28_env_157", %"$$fundef_28_env_157"* %0, i32 0, i32 1
  %"$g_envload_265" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_264"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_265", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_29" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$$fundef_30_envp_266_load" = load i8*, i8** @_execptr
  %"$$fundef_30_envp_266_salloc" = call i8* @_salloc(i8* %"$$fundef_30_envp_266_load", i64 40)
  %"$$fundef_30_envp_266" = bitcast i8* %"$$fundef_30_envp_266_salloc" to %"$$fundef_30_env_156"*
  %"$$fundef_30_env_voidp_268" = bitcast %"$$fundef_30_env_156"* %"$$fundef_30_envp_266" to i8*
  %"$$fundef_30_cloval_269" = insertvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } { %Uint32 (i8*, %TName_List_Int64*)* bitcast (%Uint32 (%"$$fundef_30_env_156"*, %TName_List_Int64*)* @"$fundef_30" to %Uint32 (i8*, %TName_List_Int64*)*), i8* undef }, i8* %"$$fundef_30_env_voidp_268", 1
  %"$$fundef_30_env_f_270" = getelementptr inbounds %"$$fundef_30_env_156", %"$$fundef_30_env_156"* %"$$fundef_30_envp_266", i32 0, i32 0
  %"$f_271" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_271", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_f_270"
  %"$$fundef_30_env_g_272" = getelementptr inbounds %"$$fundef_30_env_156", %"$$fundef_30_env_156"* %"$$fundef_30_envp_266", i32 0, i32 1
  %"$g_273" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_273", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_g_272"
  %"$$fundef_30_env_z_274" = getelementptr inbounds %"$$fundef_30_env_156", %"$$fundef_30_env_156"* %"$$fundef_30_envp_266", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_30_env_z_274"
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$fundef_30_cloval_269", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_29"
  %"$$retval_29_275" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_29"
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_29_275"
}

define internal { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_26"(%"$$fundef_26_env_158"* %0, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_27" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_28_envp_253_load" = load i8*, i8** @_execptr
  %"$$fundef_28_envp_253_salloc" = call i8* @_salloc(i8* %"$$fundef_28_envp_253_load", i64 32)
  %"$$fundef_28_envp_253" = bitcast i8* %"$$fundef_28_envp_253_salloc" to %"$$fundef_28_env_157"*
  %"$$fundef_28_env_voidp_255" = bitcast %"$$fundef_28_env_157"* %"$$fundef_28_envp_253" to i8*
  %"$$fundef_28_cloval_256" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_28_env_157"*, %Uint32)* @"$fundef_28" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_28_env_voidp_255", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_28_cloval_256", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_28_env_f_257" = getelementptr inbounds %"$$fundef_28_env_157", %"$$fundef_28_env_157"* %"$$fundef_28_envp_253", i32 0, i32 0
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_257"
  %"$$fundef_28_env_g_258" = getelementptr inbounds %"$$fundef_28_env_157", %"$$fundef_28_env_157"* %"$$fundef_28_envp_253", i32 0, i32 1
  %"$g_259" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_259", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_258"
  %"$g_260" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_260", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_27"
  %"$$retval_27_261" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_27"
  ret { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_27_261"
}

define internal { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_24"(%"$$fundef_24_env_159"* %0) {
entry:
  %"$retval_25" = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_26_env_158"*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_26" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_25"
  %"$$retval_25_252" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_25"
  ret { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_25_252"
}

define internal { i8*, i8* }* @"$fundef_22"(%"$$fundef_22_env_160"* %0) {
entry:
  %"$retval_23" = alloca { i8*, i8* }*
  %"$dyndisp_table_245_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_245_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_245_salloc_load", i64 48)
  %"$dyndisp_table_245_salloc" = bitcast i8* %"$dyndisp_table_245_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_245" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_245_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_246" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_245", i32 1
  %"$dyndisp_pcast_247" = bitcast { i8*, i8* }* %"$dyndisp_gep_246" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_24_env_159"*)* @"$fundef_24" to { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_247"
  store { i8*, i8* }* %"$dyndisp_table_245", { i8*, i8* }** %"$retval_23"
  %"$$retval_23_248" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_23"
  ret { i8*, i8* }* %"$$retval_23_248"
}

define internal %Uint32 @"$fundef_20"(%"$$fundef_20_env_161"* %0, %TName_List_Int32* %1) {
entry:
  %"$$fundef_20_env_f_200" = getelementptr inbounds %"$$fundef_20_env_161", %"$$fundef_20_env_161"* %0, i32 0, i32 0
  %"$f_envload_201" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_f_200"
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_201", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_20_env_g_202" = getelementptr inbounds %"$$fundef_20_env_161", %"$$fundef_20_env_161"* %0, i32 0, i32 1
  %"$g_envload_203" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_g_202"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_203", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_20_env_z_204" = getelementptr inbounds %"$$fundef_20_env_161", %"$$fundef_20_env_161"* %0, i32 0, i32 2
  %"$z_envload_205" = load %Uint32, %Uint32* %"$$fundef_20_env_z_204"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_205", %Uint32* %z
  %"$retval_21" = alloca %Uint32
  %"$l_tag_207" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %1, i32 0, i32 0
  %"$l_tag_208" = load i8, i8* %"$l_tag_207"
  switch i8 %"$l_tag_208", label %"$empty_default_209" [
    i8 0, label %"$Cons_210"
    i8 1, label %"$Nil_238"
  ]

"$Cons_210":                                      ; preds = %entry
  %"$l_211" = bitcast %TName_List_Int32* %1 to %CName_Cons_Int32*
  %"$h_gep_212" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_211", i32 0, i32 1
  %"$h_load_213" = load %Int32, %Int32* %"$h_gep_212"
  %h = alloca %Int32
  store %Int32 %"$h_load_213", %Int32* %h
  %"$t_gep_214" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_211", i32 0, i32 2
  %"$t_load_215" = load %TName_List_Int32*, %TName_List_Int32** %"$t_gep_214"
  %t = alloca %TName_List_Int32*
  store %TName_List_Int32* %"$t_load_215", %TName_List_Int32** %t
  %res = alloca %Uint32
  %"$f_0" = alloca { %Uint32 (i8*, %Int32)*, i8* }
  %"$f_216" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_217" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_216", 0
  %"$f_envptr_218" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_216", 1
  %"$z_219" = load %Uint32, %Uint32* %z
  %"$f_call_220" = call { %Uint32 (i8*, %Int32)*, i8* } %"$f_fptr_217"(i8* %"$f_envptr_218", %Uint32 %"$z_219")
  store { %Uint32 (i8*, %Int32)*, i8* } %"$f_call_220", { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0"
  %"$f_1" = alloca %Uint32
  %"$$f_0_221" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0"
  %"$$f_0_fptr_222" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_221", 0
  %"$$f_0_envptr_223" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_221", 1
  %"$h_224" = load %Int32, %Int32* %h
  %"$$f_0_call_225" = call %Uint32 %"$$f_0_fptr_222"(i8* %"$$f_0_envptr_223", %Int32 %"$h_224")
  store %Uint32 %"$$f_0_call_225", %Uint32* %"$f_1"
  %"$$f_1_226" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_226", %Uint32* %res
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$g_227" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_228" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_227", 0
  %"$g_envptr_229" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_227", 1
  %"$res_230" = load %Uint32, %Uint32* %res
  %"$g_call_231" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_fptr_228"(i8* %"$g_envptr_229", %Uint32 %"$res_230")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_call_231", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_232" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_233" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_232", 0
  %"$$g_2_envptr_234" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_232", 1
  %"$t_235" = load %TName_List_Int32*, %TName_List_Int32** %t
  %"$$g_2_call_236" = call %Uint32 %"$$g_2_fptr_233"(i8* %"$$g_2_envptr_234", %TName_List_Int32* %"$t_235")
  store %Uint32 %"$$g_2_call_236", %Uint32* %"$g_3"
  %"$$g_3_237" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_237", %Uint32* %"$retval_21"
  br label %"$matchsucc_206"

"$Nil_238":                                       ; preds = %entry
  %"$l_239" = bitcast %TName_List_Int32* %1 to %CName_Nil_Int32*
  %"$z_240" = load %Uint32, %Uint32* %z
  store %Uint32 %"$z_240", %Uint32* %"$retval_21"
  br label %"$matchsucc_206"

"$empty_default_209":                             ; preds = %entry
  br label %"$matchsucc_206"

"$matchsucc_206":                                 ; preds = %"$Nil_238", %"$Cons_210", %"$empty_default_209"
  %"$$retval_21_241" = load %Uint32, %Uint32* %"$retval_21"
  ret %Uint32 %"$$retval_21_241"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_18"(%"$$fundef_18_env_162"* %0, %Uint32 %1) {
entry:
  %"$$fundef_18_env_f_186" = getelementptr inbounds %"$$fundef_18_env_162", %"$$fundef_18_env_162"* %0, i32 0, i32 0
  %"$f_envload_187" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_186"
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_187", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_18_env_g_188" = getelementptr inbounds %"$$fundef_18_env_162", %"$$fundef_18_env_162"* %0, i32 0, i32 1
  %"$g_envload_189" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_188"
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_189", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_19" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$$fundef_20_envp_190_load" = load i8*, i8** @_execptr
  %"$$fundef_20_envp_190_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_190_load", i64 40)
  %"$$fundef_20_envp_190" = bitcast i8* %"$$fundef_20_envp_190_salloc" to %"$$fundef_20_env_161"*
  %"$$fundef_20_env_voidp_192" = bitcast %"$$fundef_20_env_161"* %"$$fundef_20_envp_190" to i8*
  %"$$fundef_20_cloval_193" = insertvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } { %Uint32 (i8*, %TName_List_Int32*)* bitcast (%Uint32 (%"$$fundef_20_env_161"*, %TName_List_Int32*)* @"$fundef_20" to %Uint32 (i8*, %TName_List_Int32*)*), i8* undef }, i8* %"$$fundef_20_env_voidp_192", 1
  %"$$fundef_20_env_f_194" = getelementptr inbounds %"$$fundef_20_env_161", %"$$fundef_20_env_161"* %"$$fundef_20_envp_190", i32 0, i32 0
  %"$f_195" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_195", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_f_194"
  %"$$fundef_20_env_g_196" = getelementptr inbounds %"$$fundef_20_env_161", %"$$fundef_20_env_161"* %"$$fundef_20_envp_190", i32 0, i32 1
  %"$g_197" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_197", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_g_196"
  %"$$fundef_20_env_z_198" = getelementptr inbounds %"$$fundef_20_env_161", %"$$fundef_20_env_161"* %"$$fundef_20_envp_190", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_20_env_z_198"
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$fundef_20_cloval_193", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_19"
  %"$$retval_19_199" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_19"
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_19_199"
}

define internal { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_16"(%"$$fundef_16_env_163"* %0, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_17" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_18_envp_177_load" = load i8*, i8** @_execptr
  %"$$fundef_18_envp_177_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_177_load", i64 32)
  %"$$fundef_18_envp_177" = bitcast i8* %"$$fundef_18_envp_177_salloc" to %"$$fundef_18_env_162"*
  %"$$fundef_18_env_voidp_179" = bitcast %"$$fundef_18_env_162"* %"$$fundef_18_envp_177" to i8*
  %"$$fundef_18_cloval_180" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_18_env_162"*, %Uint32)* @"$fundef_18" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_18_env_voidp_179", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_18_cloval_180", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_18_env_f_181" = getelementptr inbounds %"$$fundef_18_env_162", %"$$fundef_18_env_162"* %"$$fundef_18_envp_177", i32 0, i32 0
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_181"
  %"$$fundef_18_env_g_182" = getelementptr inbounds %"$$fundef_18_env_162", %"$$fundef_18_env_162"* %"$$fundef_18_envp_177", i32 0, i32 1
  %"$g_183" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_183", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_182"
  %"$g_184" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_184", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_17"
  %"$$retval_17_185" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_17"
  ret { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_17_185"
}

define internal { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_14"(%"$$fundef_14_env_164"* %0) {
entry:
  %"$retval_15" = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_16_env_163"*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_16" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_15"
  %"$$retval_15_176" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_15"
  ret { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_15_176"
}

define internal { i8*, i8* }* @"$fundef_12"(%"$$fundef_12_env_165"* %0) {
entry:
  %"$retval_13" = alloca { i8*, i8* }*
  %"$dyndisp_table_169_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_169_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_169_salloc_load", i64 48)
  %"$dyndisp_table_169_salloc" = bitcast i8* %"$dyndisp_table_169_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_169" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_169_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_170" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_169", i32 1
  %"$dyndisp_pcast_171" = bitcast { i8*, i8* }* %"$dyndisp_gep_170" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_14_env_164"*)* @"$fundef_14" to { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_171"
  store { i8*, i8* }* %"$dyndisp_table_169", { i8*, i8* }** %"$retval_13"
  %"$$retval_13_172" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_13"
  ret { i8*, i8* }* %"$$retval_13_172"
}

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_510"(i8* %0) {
entry:
  %"$dyndisp_table_517_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_517_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_517_salloc_load", i64 48)
  %"$dyndisp_table_517_salloc" = bitcast i8* %"$dyndisp_table_517_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_517" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_517_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_518" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_517", i32 0
  %"$dyndisp_pcast_519" = bitcast { i8*, i8* }* %"$dyndisp_gep_518" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_12_env_165"*)* @"$fundef_12" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_519"
  %"$dyndisp_gep_520" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_517", i32 2
  %"$dyndisp_pcast_521" = bitcast { i8*, i8* }* %"$dyndisp_gep_520" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_22_env_160"*)* @"$fundef_22" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_521"
  store { i8*, i8* }* %"$dyndisp_table_517", { i8*, i8* }** @list_foldl
  %"$$fundef_32_envp_522_load" = load i8*, i8** @_execptr
  %"$$fundef_32_envp_522_salloc" = call i8* @_salloc(i8* %"$$fundef_32_envp_522_load", i64 8)
  %"$$fundef_32_envp_522" = bitcast i8* %"$$fundef_32_envp_522_salloc" to %"$$fundef_32_env_155"*
  %"$$fundef_32_env_voidp_524" = bitcast %"$$fundef_32_env_155"* %"$$fundef_32_envp_522" to i8*
  %"$$fundef_32_cloval_525" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_32_env_155"*)* @"$fundef_32" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_32_env_voidp_524", 1
  %"$$fundef_32_env_list_foldl_526" = getelementptr inbounds %"$$fundef_32_env_155", %"$$fundef_32_env_155"* %"$$fundef_32_envp_522", i32 0, i32 0
  %"$list_foldl_527" = load { i8*, i8* }*, { i8*, i8* }** @list_foldl
  store { i8*, i8* }* %"$list_foldl_527", { i8*, i8* }** %"$$fundef_32_env_list_foldl_526"
  %"$$fundef_38_env_voidp_529" = bitcast %"$$fundef_32_env_155"* %"$$fundef_32_envp_522" to i8*
  %"$$fundef_38_cloval_530" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_38_env_152"*)* @"$fundef_38" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_38_env_voidp_529", 1
  %"$dyndisp_table_531_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_531_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_531_salloc_load", i64 48)
  %"$dyndisp_table_531_salloc" = bitcast i8* %"$dyndisp_table_531_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_531" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_531_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_532" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_531", i32 0
  %"$dyndisp_pcast_533" = bitcast { i8*, i8* }* %"$dyndisp_gep_532" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$$fundef_32_cloval_525", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_533"
  %"$dyndisp_gep_534" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_531", i32 2
  %"$dyndisp_pcast_535" = bitcast { i8*, i8* }* %"$dyndisp_gep_534" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$$fundef_38_cloval_530", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_535"
  store { i8*, i8* }* %"$dyndisp_table_531", { i8*, i8* }** @list_length
  %"$expr_44" = alloca %Uint32
  %t1 = alloca { i8*, i8* }*
  %"$dyndisp_table_542_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_542_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_542_salloc_load", i64 48)
  %"$dyndisp_table_542_salloc" = bitcast i8* %"$dyndisp_table_542_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_542" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_542_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_543" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_542", i32 0
  %"$dyndisp_pcast_544" = bitcast { i8*, i8* }* %"$dyndisp_gep_543" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_45_env_149"*)* @"$fundef_45" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_544"
  %"$dyndisp_gep_545" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_542", i32 2
  %"$dyndisp_pcast_546" = bitcast { i8*, i8* }* %"$dyndisp_gep_545" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_49_env_147"*)* @"$fundef_49" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_546"
  store { i8*, i8* }* %"$dyndisp_table_542", { i8*, i8* }** %t1
  %t2 = alloca { i8*, i8* }*
  %"$dyndisp_table_553_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_553_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_553_salloc_load", i64 48)
  %"$dyndisp_table_553_salloc" = bitcast i8* %"$dyndisp_table_553_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_553" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_553_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_554" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_553", i32 0
  %"$dyndisp_pcast_555" = bitcast { i8*, i8* }* %"$dyndisp_gep_554" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_53_env_145"*)* @"$fundef_53" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_555"
  %"$dyndisp_gep_556" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_553", i32 2
  %"$dyndisp_pcast_557" = bitcast { i8*, i8* }* %"$dyndisp_gep_556" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_57_env_143"*)* @"$fundef_57" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_557"
  store { i8*, i8* }* %"$dyndisp_table_553", { i8*, i8* }** %t2
  %t = alloca { i8*, i8* }*
  %"$dyndisp_table_564_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_564_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_564_salloc_load", i64 48)
  %"$dyndisp_table_564_salloc" = bitcast i8* %"$dyndisp_table_564_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_564" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_564_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_565" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_564", i32 0
  %"$dyndisp_pcast_566" = bitcast { i8*, i8* }* %"$dyndisp_gep_565" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_61_env_141"*)* @"$fundef_61" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_566"
  %"$dyndisp_gep_567" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_564", i32 2
  %"$dyndisp_pcast_568" = bitcast { i8*, i8* }* %"$dyndisp_gep_567" to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_65_env_139"*)* @"$fundef_65" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_568"
  store { i8*, i8* }* %"$dyndisp_table_564", { i8*, i8* }** %t
  %some_bool = alloca %TName_Bool*
  %"$adtval_569_load" = load i8*, i8** @_execptr
  %"$adtval_569_salloc" = call i8* @_salloc(i8* %"$adtval_569_load", i64 1)
  %"$adtval_569" = bitcast i8* %"$adtval_569_salloc" to %CName_False*
  %"$adtgep_570" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_569", i32 0, i32 0
  store i8 1, i8* %"$adtgep_570"
  %"$adtptr_571" = bitcast %CName_False* %"$adtval_569" to %TName_Bool*
  store %TName_Bool* %"$adtptr_571", %TName_Bool** %some_bool
  %"$some_bool_573" = load %TName_Bool*, %TName_Bool** %some_bool
  %"$some_bool_tag_574" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool_573", i32 0, i32 0
  %"$some_bool_tag_575" = load i8, i8* %"$some_bool_tag_574"
  switch i8 %"$some_bool_tag_575", label %"$empty_default_576" [
    i8 0, label %"$True_577"
    i8 1, label %"$False_611"
  ]

"$True_577":                                      ; preds = %entry
  %"$some_bool_578" = bitcast %TName_Bool* %"$some_bool_573" to %CName_True*
  %f11 = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$t_579" = load { i8*, i8* }*, { i8*, i8* }** %t
  %"$t_580" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_579", i32 0
  %"$t_581" = bitcast { i8*, i8* }* %"$t_580" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_582" = load { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_581"
  %"$t_fptr_583" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_582", 0
  %"$t_envptr_584" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_582", 1
  %"$t_call_585" = call { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_583"(i8* %"$t_envptr_584")
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_585", { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$f11_6" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$f11_586" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11
  %"$f11_fptr_587" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_586", 0
  %"$f11_envptr_588" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_586", 1
  %"$t1_589" = load { i8*, i8* }*, { i8*, i8* }** %t1
  %"$f11_call_590" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_fptr_587"(i8* %"$f11_envptr_588", { i8*, i8* }* %"$t1_589")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_call_590", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_6"
  %"$$f11_6_591" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_6"
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$f11_6_591", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1
  %len = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }
  %"$list_length_592" = load { i8*, i8* }*, { i8*, i8* }** @list_length
  %"$list_length_593" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_592", i32 0
  %"$list_length_594" = bitcast { i8*, i8* }* %"$list_length_593" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$list_length_595" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$list_length_594"
  %"$list_length_fptr_596" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$list_length_595", 0
  %"$list_length_envptr_597" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$list_length_595", 1
  %"$list_length_call_598" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$list_length_fptr_596"(i8* %"$list_length_envptr_597")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$list_length_call_598", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len
  %one = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %one
  %f1l = alloca %TName_List_Int32*
  %"$f1_7" = alloca %TName_List_Int32*
  %"$f1_599" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1
  %"$f1_fptr_600" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_599", 0
  %"$f1_envptr_601" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_599", 1
  %"$one_602" = load %Int32, %Int32* %one
  %"$f1_call_603" = call %TName_List_Int32* %"$f1_fptr_600"(i8* %"$f1_envptr_601", %Int32 %"$one_602")
  store %TName_List_Int32* %"$f1_call_603", %TName_List_Int32** %"$f1_7"
  %"$$f1_7_604" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_7"
  store %TName_List_Int32* %"$$f1_7_604", %TName_List_Int32** %f1l
  %"$len_8" = alloca %Uint32
  %"$len_605" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len
  %"$len_fptr_606" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_605", 0
  %"$len_envptr_607" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_605", 1
  %"$f1l_608" = load %TName_List_Int32*, %TName_List_Int32** %f1l
  %"$len_call_609" = call %Uint32 %"$len_fptr_606"(i8* %"$len_envptr_607", %TName_List_Int32* %"$f1l_608")
  store %Uint32 %"$len_call_609", %Uint32* %"$len_8"
  %"$$len_8_610" = load %Uint32, %Uint32* %"$len_8"
  store %Uint32 %"$$len_8_610", %Uint32* %"$expr_44"
  br label %"$matchsucc_572"

"$False_611":                                     ; preds = %entry
  %"$some_bool_612" = bitcast %TName_Bool* %"$some_bool_573" to %CName_False*
  %f22 = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$t_613" = load { i8*, i8* }*, { i8*, i8* }** %t
  %"$t_614" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_613", i32 2
  %"$t_615" = bitcast { i8*, i8* }* %"$t_614" to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_616" = load { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_615"
  %"$t_fptr_617" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_616", 0
  %"$t_envptr_618" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_616", 1
  %"$t_call_619" = call { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_617"(i8* %"$t_envptr_618")
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_619", { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$f22_9" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$f22_620" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22
  %"$f22_fptr_621" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_620", 0
  %"$f22_envptr_622" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_620", 1
  %"$t2_623" = load { i8*, i8* }*, { i8*, i8* }** %t2
  %"$f22_call_624" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_fptr_621"(i8* %"$f22_envptr_622", { i8*, i8* }* %"$t2_623")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_call_624", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_9"
  %"$$f22_9_625" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_9"
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$f22_9_625", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2
  %len1 = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }
  %"$list_length_626" = load { i8*, i8* }*, { i8*, i8* }** @list_length
  %"$list_length_627" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_626", i32 2
  %"$list_length_628" = bitcast { i8*, i8* }* %"$list_length_627" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$list_length_629" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$list_length_628"
  %"$list_length_fptr_630" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$list_length_629", 0
  %"$list_length_envptr_631" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$list_length_629", 1
  %"$list_length_call_632" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$list_length_fptr_630"(i8* %"$list_length_envptr_631")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$list_length_call_632", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1
  %one2 = alloca %Int64
  store %Int64 { i64 1 }, %Int64* %one2
  %f2l = alloca %TName_List_Int64*
  %"$f2_10" = alloca %TName_List_Int64*
  %"$f2_633" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2
  %"$f2_fptr_634" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_633", 0
  %"$f2_envptr_635" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_633", 1
  %"$one_636" = load %Int64, %Int64* %one2
  %"$f2_call_637" = call %TName_List_Int64* %"$f2_fptr_634"(i8* %"$f2_envptr_635", %Int64 %"$one_636")
  store %TName_List_Int64* %"$f2_call_637", %TName_List_Int64** %"$f2_10"
  %"$$f2_10_638" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_10"
  store %TName_List_Int64* %"$$f2_10_638", %TName_List_Int64** %f2l
  %"$len_11" = alloca %Uint32
  %"$len_639" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1
  %"$len_fptr_640" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_639", 0
  %"$len_envptr_641" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_639", 1
  %"$f2l_642" = load %TName_List_Int64*, %TName_List_Int64** %f2l
  %"$len_call_643" = call %Uint32 %"$len_fptr_640"(i8* %"$len_envptr_641", %TName_List_Int64* %"$f2l_642")
  store %Uint32 %"$len_call_643", %Uint32* %"$len_11"
  %"$$len_11_644" = load %Uint32, %Uint32* %"$len_11"
  store %Uint32 %"$$len_11_644", %Uint32* %"$expr_44"
  br label %"$matchsucc_572"

"$empty_default_576":                             ; preds = %entry
  br label %"$matchsucc_572"

"$matchsucc_572":                                 ; preds = %"$False_611", %"$True_577", %"$empty_default_576"
  %"$$expr_44_645" = load %Uint32, %Uint32* %"$expr_44"
  ret %Uint32 %"$$expr_44_645"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_646" = call %Uint32 @"$scilla_expr_510"(i8* null)
  %"$pval_647" = alloca %Uint32
  %"$memvoidcast_648" = bitcast %Uint32* %"$pval_647" to i8*
  store %Uint32 %"$exprval_646", %Uint32* %"$pval_647"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_73", i8* %"$memvoidcast_648")
  ret void
}
