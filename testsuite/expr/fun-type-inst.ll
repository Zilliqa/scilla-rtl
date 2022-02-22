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

%"$TyDescrTy_PrimTyp_75" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_105" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_104"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_104" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_106"**, %"$TyDescrTy_ADTTyp_105"* }
%"$TyDescrTy_ADTTyp_Constr_106" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_1177" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1178" = type { %ParamDescrString, i32, %"$ParamDescr_1177"* }
%TName_List_Int64 = type { i8, %CName_Cons_Int64*, %CName_Nil_Int64* }
%CName_Cons_Int64 = type <{ i8, %Int64, %TName_List_Int64* }>
%CName_Nil_Int64 = type <{ i8 }>
%Int64 = type { i64 }
%"$$fundef_73_env_146" = type {}
%"$$fundef_71_env_147" = type {}
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>
%"$$fundef_69_env_148" = type {}
%"$$fundef_67_env_149" = type {}
%"$$fundef_65_env_150" = type {}
%"$$fundef_63_env_151" = type {}
%"$$fundef_61_env_152" = type {}
%"$$fundef_59_env_153" = type {}
%"$$fundef_57_env_154" = type {}
%"$$fundef_55_env_155" = type {}
%"$$fundef_53_env_156" = type {}
%"$$fundef_51_env_157" = type {}
%Uint32 = type { i32 }
%"$$fundef_48_env_158" = type { %Uint32, %Uint32 }
%"$$fundef_46_env_159" = type { %Uint32 }
%"$$fundef_44_env_160" = type { { i8*, i8* }* }
%"$$fundef_42_env_161" = type { %Uint32, %Uint32 }
%"$$fundef_40_env_162" = type { %Uint32 }
%"$$fundef_38_env_163" = type { { i8*, i8* }* }
%"$$fundef_36_env_164" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_34_env_165" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_32_env_166" = type {}
%"$$fundef_30_env_167" = type {}
%"$$fundef_28_env_168" = type {}
%"$$fundef_26_env_169" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_24_env_170" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_22_env_171" = type {}
%"$$fundef_20_env_172" = type {}
%"$$fundef_18_env_173" = type {}
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_76" = global %"$TyDescrTy_PrimTyp_75" zeroinitializer
@"$TyDescr_Int32_77" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Int32_Prim_76" to i8*) }
@"$TyDescr_Uint32_Prim_78" = global %"$TyDescrTy_PrimTyp_75" { i32 1, i32 0 }
@"$TyDescr_Uint32_79" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Uint32_Prim_78" to i8*) }
@"$TyDescr_Int64_Prim_80" = global %"$TyDescrTy_PrimTyp_75" { i32 0, i32 1 }
@"$TyDescr_Int64_81" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Int64_Prim_80" to i8*) }
@"$TyDescr_Uint64_Prim_82" = global %"$TyDescrTy_PrimTyp_75" { i32 1, i32 1 }
@"$TyDescr_Uint64_83" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Uint64_Prim_82" to i8*) }
@"$TyDescr_Int128_Prim_84" = global %"$TyDescrTy_PrimTyp_75" { i32 0, i32 2 }
@"$TyDescr_Int128_85" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Int128_Prim_84" to i8*) }
@"$TyDescr_Uint128_Prim_86" = global %"$TyDescrTy_PrimTyp_75" { i32 1, i32 2 }
@"$TyDescr_Uint128_87" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Uint128_Prim_86" to i8*) }
@"$TyDescr_Int256_Prim_88" = global %"$TyDescrTy_PrimTyp_75" { i32 0, i32 3 }
@"$TyDescr_Int256_89" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Int256_Prim_88" to i8*) }
@"$TyDescr_Uint256_Prim_90" = global %"$TyDescrTy_PrimTyp_75" { i32 1, i32 3 }
@"$TyDescr_Uint256_91" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Uint256_Prim_90" to i8*) }
@"$TyDescr_String_Prim_92" = global %"$TyDescrTy_PrimTyp_75" { i32 2, i32 0 }
@"$TyDescr_String_93" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_String_Prim_92" to i8*) }
@"$TyDescr_Bnum_Prim_94" = global %"$TyDescrTy_PrimTyp_75" { i32 3, i32 0 }
@"$TyDescr_Bnum_95" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Bnum_Prim_94" to i8*) }
@"$TyDescr_Message_Prim_96" = global %"$TyDescrTy_PrimTyp_75" { i32 4, i32 0 }
@"$TyDescr_Message_97" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Message_Prim_96" to i8*) }
@"$TyDescr_Event_Prim_98" = global %"$TyDescrTy_PrimTyp_75" { i32 5, i32 0 }
@"$TyDescr_Event_99" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Event_Prim_98" to i8*) }
@"$TyDescr_Exception_Prim_100" = global %"$TyDescrTy_PrimTyp_75" { i32 6, i32 0 }
@"$TyDescr_Exception_101" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Exception_Prim_100" to i8*) }
@"$TyDescr_Bystr_Prim_102" = global %"$TyDescrTy_PrimTyp_75" { i32 7, i32 0 }
@"$TyDescr_Bystr_103" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Bystr_Prim_102" to i8*) }
@"$TyDescr_ADT_Bool_107" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_104"* @"$TyDescr_Bool_ADTTyp_Specl_122" to i8*) }
@"$TyDescr_ADT_List_Int64_108" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_104"* @"$TyDescr_List_Int64_ADTTyp_Specl_134" to i8*) }
@"$TyDescr_ADT_List_Int32_109" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_104"* @"$TyDescr_List_Int32_ADTTyp_Specl_143" to i8*) }
@"$TyDescr_Bool_ADTTyp_113" = unnamed_addr constant %"$TyDescrTy_ADTTyp_105" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_124", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_104"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_104"*], [1 x %"$TyDescrTy_ADTTyp_Specl_104"*]* @"$TyDescr_Bool_ADTTyp_m_specls_123", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_114" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_115" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_116" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_106" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_115", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_114", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_117" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_118" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_119" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_106" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_118", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_117", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_120" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_106"*] [%"$TyDescrTy_ADTTyp_Constr_106"* @"$TyDescr_Bool_True_ADTTyp_Constr_116", %"$TyDescrTy_ADTTyp_Constr_106"* @"$TyDescr_Bool_False_ADTTyp_Constr_119"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_121" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_122" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_104" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_121", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_106"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_106"*], [2 x %"$TyDescrTy_ADTTyp_Constr_106"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_120", i32 0, i32 0), %"$TyDescrTy_ADTTyp_105"* @"$TyDescr_Bool_ADTTyp_113" }
@"$TyDescr_Bool_ADTTyp_m_specls_123" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_104"*] [%"$TyDescrTy_ADTTyp_Specl_104"* @"$TyDescr_Bool_ADTTyp_Specl_122"]
@"$TyDescr_ADT_Bool_124" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_125" = unnamed_addr constant %"$TyDescrTy_ADTTyp_105" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_145", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_104"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_104"*], [2 x %"$TyDescrTy_ADTTyp_Specl_104"*]* @"$TyDescr_List_ADTTyp_m_specls_144", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int64_Constr_m_args_126" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_81", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int64_108"]
@"$TyDescr_ADT_Cons_127" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int64_ADTTyp_Constr_128" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_106" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_127", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int64_Constr_m_args_126", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int64_Constr_m_args_129" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_130" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int64_ADTTyp_Constr_131" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_106" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_130", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int64_Constr_m_args_129", i32 0, i32 0) }
@"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_132" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_106"*] [%"$TyDescrTy_ADTTyp_Constr_106"* @"$TyDescr_List_Cons_Int64_ADTTyp_Constr_128", %"$TyDescrTy_ADTTyp_Constr_106"* @"$TyDescr_List_Nil_Int64_ADTTyp_Constr_131"]
@"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_133" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_81"]
@"$TyDescr_List_Int64_ADTTyp_Specl_134" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_104" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_133", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_106"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_106"*], [2 x %"$TyDescrTy_ADTTyp_Constr_106"*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_132", i32 0, i32 0), %"$TyDescrTy_ADTTyp_105"* @"$TyDescr_List_ADTTyp_125" }
@"$TyDescr_List_Cons_Int32_Constr_m_args_135" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_77", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_109"]
@"$TyDescr_ADT_Cons_136" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_137" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_106" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_136", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_135", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_138" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_139" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_140" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_106" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_139", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_138", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_141" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_106"*] [%"$TyDescrTy_ADTTyp_Constr_106"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_137", %"$TyDescrTy_ADTTyp_Constr_106"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_140"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_142" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_77"]
@"$TyDescr_List_Int32_ADTTyp_Specl_143" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_104" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_142", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_106"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_106"*], [2 x %"$TyDescrTy_ADTTyp_Constr_106"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_141", i32 0, i32 0), %"$TyDescrTy_ADTTyp_105"* @"$TyDescr_List_ADTTyp_125" }
@"$TyDescr_List_ADTTyp_m_specls_144" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_104"*] [%"$TyDescrTy_ADTTyp_Specl_104"* @"$TyDescr_List_Int64_ADTTyp_Specl_134", %"$TyDescrTy_ADTTyp_Specl_104"* @"$TyDescr_List_Int32_ADTTyp_Specl_143"]
@"$TyDescr_ADT_List_145" = unnamed_addr constant [4 x i8] c"List"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@ListUtils.list_length = global { i8*, i8* }* null
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_99", %_TyDescrTy_Typ* @"$TyDescr_Int64_81", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_107", %_TyDescrTy_Typ* @"$TyDescr_Uint256_91", %_TyDescrTy_Typ* @"$TyDescr_Uint32_79", %_TyDescrTy_Typ* @"$TyDescr_Uint64_83", %_TyDescrTy_Typ* @"$TyDescr_Bnum_95", %_TyDescrTy_Typ* @"$TyDescr_Uint128_87", %_TyDescrTy_Typ* @"$TyDescr_Exception_101", %_TyDescrTy_Typ* @"$TyDescr_String_93", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int64_108", %_TyDescrTy_Typ* @"$TyDescr_Int256_89", %_TyDescrTy_Typ* @"$TyDescr_Int128_85", %_TyDescrTy_Typ* @"$TyDescr_Bystr_103", %_TyDescrTy_Typ* @"$TyDescr_Message_97", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_109", %_TyDescrTy_Typ* @"$TyDescr_Int32_77"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_1177"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1178"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_73"(%"$$fundef_73_env_146"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_74" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_836" = load i64, i64* @_gasrem, align 8
  %"$gascmp_837" = icmp ugt i64 1, %"$gasrem_836"
  br i1 %"$gascmp_837", label %"$out_of_gas_838", label %"$have_gas_839"

"$out_of_gas_838":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_839"

"$have_gas_839":                                  ; preds = %"$out_of_gas_838", %entry
  %"$consume_840" = sub i64 %"$gasrem_836", 1
  store i64 %"$consume_840", i64* @_gasrem, align 8
  %"$f_841" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 2
  %"$f_842" = bitcast { i8*, i8* }* %"$f_841" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_843" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_842", align 8
  %"$f_fptr_844" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_843", 0
  %"$f_envptr_845" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_843", 1
  %"$f_call_846" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_844"(i8* %"$f_envptr_845")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_846", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_74", align 8
  %"$$retval_74_847" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_74", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_74_847"
}

define internal { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_71"(%"$$fundef_71_env_147"* %0) {
entry:
  %"$retval_72" = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_827" = load i64, i64* @_gasrem, align 8
  %"$gascmp_828" = icmp ugt i64 1, %"$gasrem_827"
  br i1 %"$gascmp_828", label %"$out_of_gas_829", label %"$have_gas_830"

"$out_of_gas_829":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_830"

"$have_gas_830":                                  ; preds = %"$out_of_gas_829", %entry
  %"$consume_831" = sub i64 %"$gasrem_827", 1
  store i64 %"$consume_831", i64* @_gasrem, align 8
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_73_env_146"*, { i8*, i8* }*)* @"$fundef_73" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_72", align 8
  %"$$retval_72_835" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_72", align 8
  ret { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_72_835"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_69"(%"$$fundef_69_env_148"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_70" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_815" = load i64, i64* @_gasrem, align 8
  %"$gascmp_816" = icmp ugt i64 1, %"$gasrem_815"
  br i1 %"$gascmp_816", label %"$out_of_gas_817", label %"$have_gas_818"

"$out_of_gas_817":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_818"

"$have_gas_818":                                  ; preds = %"$out_of_gas_817", %entry
  %"$consume_819" = sub i64 %"$gasrem_815", 1
  store i64 %"$consume_819", i64* @_gasrem, align 8
  %"$f_820" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$f_821" = bitcast { i8*, i8* }* %"$f_820" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_822" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_821", align 8
  %"$f_fptr_823" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_822", 0
  %"$f_envptr_824" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_822", 1
  %"$f_call_825" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_823"(i8* %"$f_envptr_824")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_825", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_70", align 8
  %"$$retval_70_826" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_70", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_70_826"
}

define internal { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_67"(%"$$fundef_67_env_149"* %0) {
entry:
  %"$retval_68" = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_806" = load i64, i64* @_gasrem, align 8
  %"$gascmp_807" = icmp ugt i64 1, %"$gasrem_806"
  br i1 %"$gascmp_807", label %"$out_of_gas_808", label %"$have_gas_809"

"$out_of_gas_808":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_809"

"$have_gas_809":                                  ; preds = %"$out_of_gas_808", %entry
  %"$consume_810" = sub i64 %"$gasrem_806", 1
  store i64 %"$consume_810", i64* @_gasrem, align 8
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_69_env_148"*, { i8*, i8* }*)* @"$fundef_69" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_68", align 8
  %"$$retval_68_814" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_68", align 8
  ret { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_68_814"
}

define internal %TName_List_Int64* @"$fundef_65"(%"$$fundef_65_env_150"* %0, %Int64 %1) {
entry:
  %"$retval_66" = alloca %TName_List_Int64*, align 8
  %"$gasrem_765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_766" = icmp ugt i64 1, %"$gasrem_765"
  br i1 %"$gascmp_766", label %"$out_of_gas_767", label %"$have_gas_768"

"$out_of_gas_767":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_768"

"$have_gas_768":                                  ; preds = %"$out_of_gas_767", %entry
  %"$consume_769" = sub i64 %"$gasrem_765", 1
  store i64 %"$consume_769", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  %"$gasrem_770" = load i64, i64* @_gasrem, align 8
  %"$gascmp_771" = icmp ugt i64 1, %"$gasrem_770"
  br i1 %"$gascmp_771", label %"$out_of_gas_772", label %"$have_gas_773"

"$out_of_gas_772":                                ; preds = %"$have_gas_768"
  call void @_out_of_gas()
  br label %"$have_gas_773"

"$have_gas_773":                                  ; preds = %"$out_of_gas_772", %"$have_gas_768"
  %"$consume_774" = sub i64 %"$gasrem_770", 1
  store i64 %"$consume_774", i64* @_gasrem, align 8
  %"$adtval_775_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_775_salloc" = call i8* @_salloc(i8* %"$adtval_775_load", i64 1)
  %"$adtval_775" = bitcast i8* %"$adtval_775_salloc" to %CName_Nil_Int64*
  %"$adtgep_776" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_775", i32 0, i32 0
  store i8 1, i8* %"$adtgep_776", align 1
  %"$adtptr_777" = bitcast %CName_Nil_Int64* %"$adtval_775" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_777", %TName_List_Int64** %an, align 8
  %"$gasrem_778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_779" = icmp ugt i64 1, %"$gasrem_778"
  br i1 %"$gascmp_779", label %"$out_of_gas_780", label %"$have_gas_781"

"$out_of_gas_780":                                ; preds = %"$have_gas_773"
  call void @_out_of_gas()
  br label %"$have_gas_781"

"$have_gas_781":                                  ; preds = %"$out_of_gas_780", %"$have_gas_773"
  %"$consume_782" = sub i64 %"$gasrem_778", 1
  store i64 %"$consume_782", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int64*, align 8
  %"$gasrem_783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_784" = icmp ugt i64 1, %"$gasrem_783"
  br i1 %"$gascmp_784", label %"$out_of_gas_785", label %"$have_gas_786"

"$out_of_gas_785":                                ; preds = %"$have_gas_781"
  call void @_out_of_gas()
  br label %"$have_gas_786"

"$have_gas_786":                                  ; preds = %"$out_of_gas_785", %"$have_gas_781"
  %"$consume_787" = sub i64 %"$gasrem_783", 1
  store i64 %"$consume_787", i64* @_gasrem, align 8
  %"$an_788" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_789_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_789_salloc" = call i8* @_salloc(i8* %"$adtval_789_load", i64 17)
  %"$adtval_789" = bitcast i8* %"$adtval_789_salloc" to %CName_Cons_Int64*
  %"$adtgep_790" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_789", i32 0, i32 0
  store i8 0, i8* %"$adtgep_790", align 1
  %"$adtgep_791" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_789", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_791", align 8
  %"$adtgep_792" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_789", i32 0, i32 2
  store %TName_List_Int64* %"$an_788", %TName_List_Int64** %"$adtgep_792", align 8
  %"$adtptr_793" = bitcast %CName_Cons_Int64* %"$adtval_789" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_793", %TName_List_Int64** %a1, align 8
  %"$gasrem_794" = load i64, i64* @_gasrem, align 8
  %"$gascmp_795" = icmp ugt i64 1, %"$gasrem_794"
  br i1 %"$gascmp_795", label %"$out_of_gas_796", label %"$have_gas_797"

"$out_of_gas_796":                                ; preds = %"$have_gas_786"
  call void @_out_of_gas()
  br label %"$have_gas_797"

"$have_gas_797":                                  ; preds = %"$out_of_gas_796", %"$have_gas_786"
  %"$consume_798" = sub i64 %"$gasrem_794", 1
  store i64 %"$consume_798", i64* @_gasrem, align 8
  %"$a1_799" = load %TName_List_Int64*, %TName_List_Int64** %a1, align 8
  %"$adtval_800_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_800_salloc" = call i8* @_salloc(i8* %"$adtval_800_load", i64 17)
  %"$adtval_800" = bitcast i8* %"$adtval_800_salloc" to %CName_Cons_Int64*
  %"$adtgep_801" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_800", i32 0, i32 0
  store i8 0, i8* %"$adtgep_801", align 1
  %"$adtgep_802" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_800", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_802", align 8
  %"$adtgep_803" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_800", i32 0, i32 2
  store %TName_List_Int64* %"$a1_799", %TName_List_Int64** %"$adtgep_803", align 8
  %"$adtptr_804" = bitcast %CName_Cons_Int64* %"$adtval_800" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_804", %TName_List_Int64** %"$retval_66", align 8
  %"$$retval_66_805" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_66", align 8
  ret %TName_List_Int64* %"$$retval_66_805"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_63"(%"$$fundef_63_env_151"* %0) {
entry:
  %"$retval_64" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_756" = load i64, i64* @_gasrem, align 8
  %"$gascmp_757" = icmp ugt i64 1, %"$gasrem_756"
  br i1 %"$gascmp_757", label %"$out_of_gas_758", label %"$have_gas_759"

"$out_of_gas_758":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_759"

"$have_gas_759":                                  ; preds = %"$out_of_gas_758", %entry
  %"$consume_760" = sub i64 %"$gasrem_756", 1
  store i64 %"$consume_760", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_65_env_150"*, %Int64)* @"$fundef_65" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_64", align 8
  %"$$retval_64_764" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_64", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_64_764"
}

define internal %TName_List_Int32* @"$fundef_61"(%"$$fundef_61_env_152"* %0, %Int32 %1) {
entry:
  %"$retval_62" = alloca %TName_List_Int32*, align 8
  %"$gasrem_715" = load i64, i64* @_gasrem, align 8
  %"$gascmp_716" = icmp ugt i64 1, %"$gasrem_715"
  br i1 %"$gascmp_716", label %"$out_of_gas_717", label %"$have_gas_718"

"$out_of_gas_717":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_718"

"$have_gas_718":                                  ; preds = %"$out_of_gas_717", %entry
  %"$consume_719" = sub i64 %"$gasrem_715", 1
  store i64 %"$consume_719", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  %"$gasrem_720" = load i64, i64* @_gasrem, align 8
  %"$gascmp_721" = icmp ugt i64 1, %"$gasrem_720"
  br i1 %"$gascmp_721", label %"$out_of_gas_722", label %"$have_gas_723"

"$out_of_gas_722":                                ; preds = %"$have_gas_718"
  call void @_out_of_gas()
  br label %"$have_gas_723"

"$have_gas_723":                                  ; preds = %"$out_of_gas_722", %"$have_gas_718"
  %"$consume_724" = sub i64 %"$gasrem_720", 1
  store i64 %"$consume_724", i64* @_gasrem, align 8
  %"$adtval_725_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_725_salloc" = call i8* @_salloc(i8* %"$adtval_725_load", i64 1)
  %"$adtval_725" = bitcast i8* %"$adtval_725_salloc" to %CName_Nil_Int32*
  %"$adtgep_726" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_725", i32 0, i32 0
  store i8 1, i8* %"$adtgep_726", align 1
  %"$adtptr_727" = bitcast %CName_Nil_Int32* %"$adtval_725" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_727", %TName_List_Int32** %an, align 8
  %"$gasrem_728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_729" = icmp ugt i64 1, %"$gasrem_728"
  br i1 %"$gascmp_729", label %"$out_of_gas_730", label %"$have_gas_731"

"$out_of_gas_730":                                ; preds = %"$have_gas_723"
  call void @_out_of_gas()
  br label %"$have_gas_731"

"$have_gas_731":                                  ; preds = %"$out_of_gas_730", %"$have_gas_723"
  %"$consume_732" = sub i64 %"$gasrem_728", 1
  store i64 %"$consume_732", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int32*, align 8
  %"$gasrem_733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_734" = icmp ugt i64 1, %"$gasrem_733"
  br i1 %"$gascmp_734", label %"$out_of_gas_735", label %"$have_gas_736"

"$out_of_gas_735":                                ; preds = %"$have_gas_731"
  call void @_out_of_gas()
  br label %"$have_gas_736"

"$have_gas_736":                                  ; preds = %"$out_of_gas_735", %"$have_gas_731"
  %"$consume_737" = sub i64 %"$gasrem_733", 1
  store i64 %"$consume_737", i64* @_gasrem, align 8
  %"$an_738" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_739_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_739_salloc" = call i8* @_salloc(i8* %"$adtval_739_load", i64 13)
  %"$adtval_739" = bitcast i8* %"$adtval_739_salloc" to %CName_Cons_Int32*
  %"$adtgep_740" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_739", i32 0, i32 0
  store i8 0, i8* %"$adtgep_740", align 1
  %"$adtgep_741" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_739", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_741", align 4
  %"$adtgep_742" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_739", i32 0, i32 2
  store %TName_List_Int32* %"$an_738", %TName_List_Int32** %"$adtgep_742", align 8
  %"$adtptr_743" = bitcast %CName_Cons_Int32* %"$adtval_739" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_743", %TName_List_Int32** %a1, align 8
  %"$gasrem_744" = load i64, i64* @_gasrem, align 8
  %"$gascmp_745" = icmp ugt i64 1, %"$gasrem_744"
  br i1 %"$gascmp_745", label %"$out_of_gas_746", label %"$have_gas_747"

"$out_of_gas_746":                                ; preds = %"$have_gas_736"
  call void @_out_of_gas()
  br label %"$have_gas_747"

"$have_gas_747":                                  ; preds = %"$out_of_gas_746", %"$have_gas_736"
  %"$consume_748" = sub i64 %"$gasrem_744", 1
  store i64 %"$consume_748", i64* @_gasrem, align 8
  %"$a1_749" = load %TName_List_Int32*, %TName_List_Int32** %a1, align 8
  %"$adtval_750_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_750_salloc" = call i8* @_salloc(i8* %"$adtval_750_load", i64 13)
  %"$adtval_750" = bitcast i8* %"$adtval_750_salloc" to %CName_Cons_Int32*
  %"$adtgep_751" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_750", i32 0, i32 0
  store i8 0, i8* %"$adtgep_751", align 1
  %"$adtgep_752" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_750", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_752", align 4
  %"$adtgep_753" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_750", i32 0, i32 2
  store %TName_List_Int32* %"$a1_749", %TName_List_Int32** %"$adtgep_753", align 8
  %"$adtptr_754" = bitcast %CName_Cons_Int32* %"$adtval_750" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_754", %TName_List_Int32** %"$retval_62", align 8
  %"$$retval_62_755" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_62", align 8
  ret %TName_List_Int32* %"$$retval_62_755"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_59"(%"$$fundef_59_env_153"* %0) {
entry:
  %"$retval_60" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_706" = load i64, i64* @_gasrem, align 8
  %"$gascmp_707" = icmp ugt i64 1, %"$gasrem_706"
  br i1 %"$gascmp_707", label %"$out_of_gas_708", label %"$have_gas_709"

"$out_of_gas_708":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_709"

"$have_gas_709":                                  ; preds = %"$out_of_gas_708", %entry
  %"$consume_710" = sub i64 %"$gasrem_706", 1
  store i64 %"$consume_710", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_61_env_152"*, %Int32)* @"$fundef_61" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_60", align 8
  %"$$retval_60_714" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_60", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_60_714"
}

define internal %TName_List_Int64* @"$fundef_57"(%"$$fundef_57_env_154"* %0, %Int64 %1) {
entry:
  %"$retval_58" = alloca %TName_List_Int64*, align 8
  %"$gasrem_681" = load i64, i64* @_gasrem, align 8
  %"$gascmp_682" = icmp ugt i64 1, %"$gasrem_681"
  br i1 %"$gascmp_682", label %"$out_of_gas_683", label %"$have_gas_684"

"$out_of_gas_683":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_684"

"$have_gas_684":                                  ; preds = %"$out_of_gas_683", %entry
  %"$consume_685" = sub i64 %"$gasrem_681", 1
  store i64 %"$consume_685", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  %"$gasrem_686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_687" = icmp ugt i64 1, %"$gasrem_686"
  br i1 %"$gascmp_687", label %"$out_of_gas_688", label %"$have_gas_689"

"$out_of_gas_688":                                ; preds = %"$have_gas_684"
  call void @_out_of_gas()
  br label %"$have_gas_689"

"$have_gas_689":                                  ; preds = %"$out_of_gas_688", %"$have_gas_684"
  %"$consume_690" = sub i64 %"$gasrem_686", 1
  store i64 %"$consume_690", i64* @_gasrem, align 8
  %"$adtval_691_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_691_salloc" = call i8* @_salloc(i8* %"$adtval_691_load", i64 1)
  %"$adtval_691" = bitcast i8* %"$adtval_691_salloc" to %CName_Nil_Int64*
  %"$adtgep_692" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_691", i32 0, i32 0
  store i8 1, i8* %"$adtgep_692", align 1
  %"$adtptr_693" = bitcast %CName_Nil_Int64* %"$adtval_691" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_693", %TName_List_Int64** %an, align 8
  %"$gasrem_694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_695" = icmp ugt i64 1, %"$gasrem_694"
  br i1 %"$gascmp_695", label %"$out_of_gas_696", label %"$have_gas_697"

"$out_of_gas_696":                                ; preds = %"$have_gas_689"
  call void @_out_of_gas()
  br label %"$have_gas_697"

"$have_gas_697":                                  ; preds = %"$out_of_gas_696", %"$have_gas_689"
  %"$consume_698" = sub i64 %"$gasrem_694", 1
  store i64 %"$consume_698", i64* @_gasrem, align 8
  %"$an_699" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_700_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_700_salloc" = call i8* @_salloc(i8* %"$adtval_700_load", i64 17)
  %"$adtval_700" = bitcast i8* %"$adtval_700_salloc" to %CName_Cons_Int64*
  %"$adtgep_701" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_700", i32 0, i32 0
  store i8 0, i8* %"$adtgep_701", align 1
  %"$adtgep_702" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_700", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_702", align 8
  %"$adtgep_703" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_700", i32 0, i32 2
  store %TName_List_Int64* %"$an_699", %TName_List_Int64** %"$adtgep_703", align 8
  %"$adtptr_704" = bitcast %CName_Cons_Int64* %"$adtval_700" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_704", %TName_List_Int64** %"$retval_58", align 8
  %"$$retval_58_705" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_58", align 8
  ret %TName_List_Int64* %"$$retval_58_705"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_55"(%"$$fundef_55_env_155"* %0) {
entry:
  %"$retval_56" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_672" = load i64, i64* @_gasrem, align 8
  %"$gascmp_673" = icmp ugt i64 1, %"$gasrem_672"
  br i1 %"$gascmp_673", label %"$out_of_gas_674", label %"$have_gas_675"

"$out_of_gas_674":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_675"

"$have_gas_675":                                  ; preds = %"$out_of_gas_674", %entry
  %"$consume_676" = sub i64 %"$gasrem_672", 1
  store i64 %"$consume_676", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_57_env_154"*, %Int64)* @"$fundef_57" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_56", align 8
  %"$$retval_56_680" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_56", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_56_680"
}

define internal %TName_List_Int32* @"$fundef_53"(%"$$fundef_53_env_156"* %0, %Int32 %1) {
entry:
  %"$retval_54" = alloca %TName_List_Int32*, align 8
  %"$gasrem_647" = load i64, i64* @_gasrem, align 8
  %"$gascmp_648" = icmp ugt i64 1, %"$gasrem_647"
  br i1 %"$gascmp_648", label %"$out_of_gas_649", label %"$have_gas_650"

"$out_of_gas_649":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_650"

"$have_gas_650":                                  ; preds = %"$out_of_gas_649", %entry
  %"$consume_651" = sub i64 %"$gasrem_647", 1
  store i64 %"$consume_651", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  %"$gasrem_652" = load i64, i64* @_gasrem, align 8
  %"$gascmp_653" = icmp ugt i64 1, %"$gasrem_652"
  br i1 %"$gascmp_653", label %"$out_of_gas_654", label %"$have_gas_655"

"$out_of_gas_654":                                ; preds = %"$have_gas_650"
  call void @_out_of_gas()
  br label %"$have_gas_655"

"$have_gas_655":                                  ; preds = %"$out_of_gas_654", %"$have_gas_650"
  %"$consume_656" = sub i64 %"$gasrem_652", 1
  store i64 %"$consume_656", i64* @_gasrem, align 8
  %"$adtval_657_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_657_salloc" = call i8* @_salloc(i8* %"$adtval_657_load", i64 1)
  %"$adtval_657" = bitcast i8* %"$adtval_657_salloc" to %CName_Nil_Int32*
  %"$adtgep_658" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_657", i32 0, i32 0
  store i8 1, i8* %"$adtgep_658", align 1
  %"$adtptr_659" = bitcast %CName_Nil_Int32* %"$adtval_657" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_659", %TName_List_Int32** %an, align 8
  %"$gasrem_660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_661" = icmp ugt i64 1, %"$gasrem_660"
  br i1 %"$gascmp_661", label %"$out_of_gas_662", label %"$have_gas_663"

"$out_of_gas_662":                                ; preds = %"$have_gas_655"
  call void @_out_of_gas()
  br label %"$have_gas_663"

"$have_gas_663":                                  ; preds = %"$out_of_gas_662", %"$have_gas_655"
  %"$consume_664" = sub i64 %"$gasrem_660", 1
  store i64 %"$consume_664", i64* @_gasrem, align 8
  %"$an_665" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_666_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_666_salloc" = call i8* @_salloc(i8* %"$adtval_666_load", i64 13)
  %"$adtval_666" = bitcast i8* %"$adtval_666_salloc" to %CName_Cons_Int32*
  %"$adtgep_667" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_666", i32 0, i32 0
  store i8 0, i8* %"$adtgep_667", align 1
  %"$adtgep_668" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_666", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_668", align 4
  %"$adtgep_669" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_666", i32 0, i32 2
  store %TName_List_Int32* %"$an_665", %TName_List_Int32** %"$adtgep_669", align 8
  %"$adtptr_670" = bitcast %CName_Cons_Int32* %"$adtval_666" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_670", %TName_List_Int32** %"$retval_54", align 8
  %"$$retval_54_671" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_54", align 8
  ret %TName_List_Int32* %"$$retval_54_671"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_51"(%"$$fundef_51_env_157"* %0) {
entry:
  %"$retval_52" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_639" = icmp ugt i64 1, %"$gasrem_638"
  br i1 %"$gascmp_639", label %"$out_of_gas_640", label %"$have_gas_641"

"$out_of_gas_640":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_641"

"$have_gas_641":                                  ; preds = %"$out_of_gas_640", %entry
  %"$consume_642" = sub i64 %"$gasrem_638", 1
  store i64 %"$consume_642", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_53_env_156"*, %Int32)* @"$fundef_53" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_52", align 8
  %"$$retval_52_646" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_52", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_52_646"
}

define internal %Uint32 @"$fundef_48"(%"$$fundef_48_env_158"* %0, %Int64 %1) {
entry:
  %"$$fundef_48_env_one_625" = getelementptr inbounds %"$$fundef_48_env_158", %"$$fundef_48_env_158"* %0, i32 0, i32 0
  %"$one_envload_626" = load %Uint32, %Uint32* %"$$fundef_48_env_one_625", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_626", %Uint32* %one, align 4
  %"$$fundef_48_env_z_627" = getelementptr inbounds %"$$fundef_48_env_158", %"$$fundef_48_env_158"* %0, i32 0, i32 1
  %"$z_envload_628" = load %Uint32, %Uint32* %"$$fundef_48_env_z_627", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_628", %Uint32* %z, align 4
  %"$retval_49" = alloca %Uint32, align 8
  %"$gasrem_629" = load i64, i64* @_gasrem, align 8
  %"$gascmp_630" = icmp ugt i64 4, %"$gasrem_629"
  br i1 %"$gascmp_630", label %"$out_of_gas_631", label %"$have_gas_632"

"$out_of_gas_631":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_632"

"$have_gas_632":                                  ; preds = %"$out_of_gas_631", %entry
  %"$consume_633" = sub i64 %"$gasrem_629", 4
  store i64 %"$consume_633", i64* @_gasrem, align 8
  %"$one_634" = load %Uint32, %Uint32* %one, align 4
  %"$z_635" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_636" = call %Uint32 @_add_Uint32(%Uint32 %"$one_634", %Uint32 %"$z_635")
  store %Uint32 %"$add_call_636", %Uint32* %"$retval_49", align 4
  %"$$retval_49_637" = load %Uint32, %Uint32* %"$retval_49", align 4
  ret %Uint32 %"$$retval_49_637"
}

define internal { %Uint32 (i8*, %Int64)*, i8* } @"$fundef_46"(%"$$fundef_46_env_159"* %0, %Uint32 %1) {
entry:
  %"$$fundef_46_env_one_610" = getelementptr inbounds %"$$fundef_46_env_159", %"$$fundef_46_env_159"* %0, i32 0, i32 0
  %"$one_envload_611" = load %Uint32, %Uint32* %"$$fundef_46_env_one_610", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_611", %Uint32* %one, align 4
  %"$retval_47" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_613" = icmp ugt i64 1, %"$gasrem_612"
  br i1 %"$gascmp_613", label %"$out_of_gas_614", label %"$have_gas_615"

"$out_of_gas_614":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_615"

"$have_gas_615":                                  ; preds = %"$out_of_gas_614", %entry
  %"$consume_616" = sub i64 %"$gasrem_612", 1
  store i64 %"$consume_616", i64* @_gasrem, align 8
  %"$$fundef_48_envp_617_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_48_envp_617_salloc" = call i8* @_salloc(i8* %"$$fundef_48_envp_617_load", i64 8)
  %"$$fundef_48_envp_617" = bitcast i8* %"$$fundef_48_envp_617_salloc" to %"$$fundef_48_env_158"*
  %"$$fundef_48_env_voidp_619" = bitcast %"$$fundef_48_env_158"* %"$$fundef_48_envp_617" to i8*
  %"$$fundef_48_cloval_620" = insertvalue { %Uint32 (i8*, %Int64)*, i8* } { %Uint32 (i8*, %Int64)* bitcast (%Uint32 (%"$$fundef_48_env_158"*, %Int64)* @"$fundef_48" to %Uint32 (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_48_env_voidp_619", 1
  %"$$fundef_48_env_one_621" = getelementptr inbounds %"$$fundef_48_env_158", %"$$fundef_48_env_158"* %"$$fundef_48_envp_617", i32 0, i32 0
  %"$one_622" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_622", %Uint32* %"$$fundef_48_env_one_621", align 4
  %"$$fundef_48_env_z_623" = getelementptr inbounds %"$$fundef_48_env_158", %"$$fundef_48_env_158"* %"$$fundef_48_envp_617", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_48_env_z_623", align 4
  store { %Uint32 (i8*, %Int64)*, i8* } %"$$fundef_48_cloval_620", { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_47", align 8
  %"$$retval_47_624" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_47", align 8
  ret { %Uint32 (i8*, %Int64)*, i8* } %"$$retval_47_624"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_44"(%"$$fundef_44_env_160"* %0) {
entry:
  %"$$fundef_44_env_list_foldl_532" = getelementptr inbounds %"$$fundef_44_env_160", %"$$fundef_44_env_160"* %0, i32 0, i32 0
  %"$list_foldl_envload_533" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_44_env_list_foldl_532", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_533", { i8*, i8* }** %list_foldl, align 8
  %"$retval_45" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_535" = icmp ugt i64 1, %"$gasrem_534"
  br i1 %"$gascmp_535", label %"$out_of_gas_536", label %"$have_gas_537"

"$out_of_gas_536":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_537"

"$have_gas_537":                                  ; preds = %"$out_of_gas_536", %entry
  %"$consume_538" = sub i64 %"$gasrem_534", 1
  store i64 %"$consume_538", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_539" = load i64, i64* @_gasrem, align 8
  %"$gascmp_540" = icmp ugt i64 1, %"$gasrem_539"
  br i1 %"$gascmp_540", label %"$out_of_gas_541", label %"$have_gas_542"

"$out_of_gas_541":                                ; preds = %"$have_gas_537"
  call void @_out_of_gas()
  br label %"$have_gas_542"

"$have_gas_542":                                  ; preds = %"$out_of_gas_541", %"$have_gas_537"
  %"$consume_543" = sub i64 %"$gasrem_539", 1
  store i64 %"$consume_543", i64* @_gasrem, align 8
  %"$list_foldl_544" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_545" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_544", i32 2
  %"$list_foldl_546" = bitcast { i8*, i8* }* %"$list_foldl_545" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_547" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_546", align 8
  %"$list_foldl_fptr_548" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_547", 0
  %"$list_foldl_envptr_549" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_547", 1
  %"$list_foldl_call_550" = call { i8*, i8* }* %"$list_foldl_fptr_548"(i8* %"$list_foldl_envptr_549")
  %"$list_foldl_551" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_550", i32 1
  %"$list_foldl_552" = bitcast { i8*, i8* }* %"$list_foldl_551" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_553" = load { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_552", align 8
  %"$list_foldl_fptr_554" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_553", 0
  %"$list_foldl_envptr_555" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_553", 1
  %"$list_foldl_call_556" = call { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_554"(i8* %"$list_foldl_envptr_555")
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_556", { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$gasrem_557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_558" = icmp ugt i64 1, %"$gasrem_557"
  br i1 %"$gascmp_558", label %"$out_of_gas_559", label %"$have_gas_560"

"$out_of_gas_559":                                ; preds = %"$have_gas_542"
  call void @_out_of_gas()
  br label %"$have_gas_560"

"$have_gas_560":                                  ; preds = %"$out_of_gas_559", %"$have_gas_542"
  %"$consume_561" = sub i64 %"$gasrem_557", 1
  store i64 %"$consume_561", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_563" = icmp ugt i64 1, %"$gasrem_562"
  br i1 %"$gascmp_563", label %"$out_of_gas_564", label %"$have_gas_565"

"$out_of_gas_564":                                ; preds = %"$have_gas_560"
  call void @_out_of_gas()
  br label %"$have_gas_565"

"$have_gas_565":                                  ; preds = %"$out_of_gas_564", %"$have_gas_560"
  %"$consume_566" = sub i64 %"$gasrem_562", 1
  store i64 %"$consume_566", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_568" = icmp ugt i64 1, %"$gasrem_567"
  br i1 %"$gascmp_568", label %"$out_of_gas_569", label %"$have_gas_570"

"$out_of_gas_569":                                ; preds = %"$have_gas_565"
  call void @_out_of_gas()
  br label %"$have_gas_570"

"$have_gas_570":                                  ; preds = %"$out_of_gas_569", %"$have_gas_565"
  %"$consume_571" = sub i64 %"$gasrem_567", 1
  store i64 %"$consume_571", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_573" = icmp ugt i64 1, %"$gasrem_572"
  br i1 %"$gascmp_573", label %"$out_of_gas_574", label %"$have_gas_575"

"$out_of_gas_574":                                ; preds = %"$have_gas_570"
  call void @_out_of_gas()
  br label %"$have_gas_575"

"$have_gas_575":                                  ; preds = %"$out_of_gas_574", %"$have_gas_570"
  %"$consume_576" = sub i64 %"$gasrem_572", 1
  store i64 %"$consume_576", i64* @_gasrem, align 8
  %"$$fundef_46_envp_577_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_46_envp_577_salloc" = call i8* @_salloc(i8* %"$$fundef_46_envp_577_load", i64 4)
  %"$$fundef_46_envp_577" = bitcast i8* %"$$fundef_46_envp_577_salloc" to %"$$fundef_46_env_159"*
  %"$$fundef_46_env_voidp_579" = bitcast %"$$fundef_46_env_159"* %"$$fundef_46_envp_577" to i8*
  %"$$fundef_46_cloval_580" = insertvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int64)*, i8* } (%"$$fundef_46_env_159"*, %Uint32)* @"$fundef_46" to { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_46_env_voidp_579", 1
  %"$$fundef_46_env_one_581" = getelementptr inbounds %"$$fundef_46_env_159", %"$$fundef_46_env_159"* %"$$fundef_46_envp_577", i32 0, i32 0
  %"$one_582" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_582", %Uint32* %"$$fundef_46_env_one_581", align 4
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_46_cloval_580", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$gasrem_583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_584" = icmp ugt i64 1, %"$gasrem_583"
  br i1 %"$gascmp_584", label %"$out_of_gas_585", label %"$have_gas_586"

"$out_of_gas_585":                                ; preds = %"$have_gas_575"
  call void @_out_of_gas()
  br label %"$have_gas_586"

"$have_gas_586":                                  ; preds = %"$out_of_gas_585", %"$have_gas_575"
  %"$consume_587" = sub i64 %"$gasrem_583", 1
  store i64 %"$consume_587", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_589" = icmp ugt i64 1, %"$gasrem_588"
  br i1 %"$gascmp_589", label %"$out_of_gas_590", label %"$have_gas_591"

"$out_of_gas_590":                                ; preds = %"$have_gas_586"
  call void @_out_of_gas()
  br label %"$have_gas_591"

"$have_gas_591":                                  ; preds = %"$out_of_gas_590", %"$have_gas_586"
  %"$consume_592" = sub i64 %"$gasrem_588", 1
  store i64 %"$consume_592", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4
  %"$gasrem_593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_594" = icmp ugt i64 1, %"$gasrem_593"
  br i1 %"$gascmp_594", label %"$out_of_gas_595", label %"$have_gas_596"

"$out_of_gas_595":                                ; preds = %"$have_gas_591"
  call void @_out_of_gas()
  br label %"$have_gas_596"

"$have_gas_596":                                  ; preds = %"$out_of_gas_595", %"$have_gas_591"
  %"$consume_597" = sub i64 %"$gasrem_593", 1
  store i64 %"$consume_597", i64* @_gasrem, align 8
  %"$foldl_10" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_598" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_599" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_598", 0
  %"$foldl_envptr_600" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_598", 1
  %"$iter_601" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_602" = call { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_599"(i8* %"$foldl_envptr_600", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_601")
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_602", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$foldl_11" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$$foldl_10_603" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$$foldl_10_fptr_604" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_603", 0
  %"$$foldl_10_envptr_605" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_603", 1
  %"$init_606" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_10_call_607" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_10_fptr_604"(i8* %"$$foldl_10_envptr_605", %Uint32 %"$init_606")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_10_call_607", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_11", align 8
  %"$$foldl_11_608" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_11", align 8
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_11_608", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_45", align 8
  %"$$retval_45_609" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_45", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_45_609"
}

define internal %Uint32 @"$fundef_42"(%"$$fundef_42_env_161"* %0, %Int32 %1) {
entry:
  %"$$fundef_42_env_one_519" = getelementptr inbounds %"$$fundef_42_env_161", %"$$fundef_42_env_161"* %0, i32 0, i32 0
  %"$one_envload_520" = load %Uint32, %Uint32* %"$$fundef_42_env_one_519", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_520", %Uint32* %one, align 4
  %"$$fundef_42_env_z_521" = getelementptr inbounds %"$$fundef_42_env_161", %"$$fundef_42_env_161"* %0, i32 0, i32 1
  %"$z_envload_522" = load %Uint32, %Uint32* %"$$fundef_42_env_z_521", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_522", %Uint32* %z, align 4
  %"$retval_43" = alloca %Uint32, align 8
  %"$gasrem_523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_524" = icmp ugt i64 4, %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %entry
  %"$consume_527" = sub i64 %"$gasrem_523", 4
  store i64 %"$consume_527", i64* @_gasrem, align 8
  %"$one_528" = load %Uint32, %Uint32* %one, align 4
  %"$z_529" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_530" = call %Uint32 @_add_Uint32(%Uint32 %"$one_528", %Uint32 %"$z_529")
  store %Uint32 %"$add_call_530", %Uint32* %"$retval_43", align 4
  %"$$retval_43_531" = load %Uint32, %Uint32* %"$retval_43", align 4
  ret %Uint32 %"$$retval_43_531"
}

define internal { %Uint32 (i8*, %Int32)*, i8* } @"$fundef_40"(%"$$fundef_40_env_162"* %0, %Uint32 %1) {
entry:
  %"$$fundef_40_env_one_504" = getelementptr inbounds %"$$fundef_40_env_162", %"$$fundef_40_env_162"* %0, i32 0, i32 0
  %"$one_envload_505" = load %Uint32, %Uint32* %"$$fundef_40_env_one_504", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_505", %Uint32* %one, align 4
  %"$retval_41" = alloca { %Uint32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %entry
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %"$$fundef_42_envp_511_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_42_envp_511_salloc" = call i8* @_salloc(i8* %"$$fundef_42_envp_511_load", i64 8)
  %"$$fundef_42_envp_511" = bitcast i8* %"$$fundef_42_envp_511_salloc" to %"$$fundef_42_env_161"*
  %"$$fundef_42_env_voidp_513" = bitcast %"$$fundef_42_env_161"* %"$$fundef_42_envp_511" to i8*
  %"$$fundef_42_cloval_514" = insertvalue { %Uint32 (i8*, %Int32)*, i8* } { %Uint32 (i8*, %Int32)* bitcast (%Uint32 (%"$$fundef_42_env_161"*, %Int32)* @"$fundef_42" to %Uint32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_42_env_voidp_513", 1
  %"$$fundef_42_env_one_515" = getelementptr inbounds %"$$fundef_42_env_161", %"$$fundef_42_env_161"* %"$$fundef_42_envp_511", i32 0, i32 0
  %"$one_516" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_516", %Uint32* %"$$fundef_42_env_one_515", align 4
  %"$$fundef_42_env_z_517" = getelementptr inbounds %"$$fundef_42_env_161", %"$$fundef_42_env_161"* %"$$fundef_42_envp_511", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_42_env_z_517", align 4
  store { %Uint32 (i8*, %Int32)*, i8* } %"$$fundef_42_cloval_514", { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_41", align 8
  %"$$retval_41_518" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_41", align 8
  ret { %Uint32 (i8*, %Int32)*, i8* } %"$$retval_41_518"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_163"* %0) {
entry:
  %"$$fundef_38_env_list_foldl_426" = getelementptr inbounds %"$$fundef_38_env_163", %"$$fundef_38_env_163"* %0, i32 0, i32 0
  %"$list_foldl_envload_427" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_38_env_list_foldl_426", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_427", { i8*, i8* }** %list_foldl, align 8
  %"$retval_39" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %entry
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_431"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_431"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %"$list_foldl_438" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_439" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_438", i32 0
  %"$list_foldl_440" = bitcast { i8*, i8* }* %"$list_foldl_439" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_441" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_440", align 8
  %"$list_foldl_fptr_442" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_441", 0
  %"$list_foldl_envptr_443" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_441", 1
  %"$list_foldl_call_444" = call { i8*, i8* }* %"$list_foldl_fptr_442"(i8* %"$list_foldl_envptr_443")
  %"$list_foldl_445" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_444", i32 1
  %"$list_foldl_446" = bitcast { i8*, i8* }* %"$list_foldl_445" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_447" = load { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_446", align 8
  %"$list_foldl_fptr_448" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_447", 0
  %"$list_foldl_envptr_449" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_447", 1
  %"$list_foldl_call_450" = call { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_448"(i8* %"$list_foldl_envptr_449")
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_450", { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 1, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$have_gas_436"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$have_gas_436"
  %"$consume_455" = sub i64 %"$gasrem_451", 1
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$have_gas_454"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$have_gas_454"
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %"$have_gas_459"
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %"$have_gas_459"
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_467" = icmp ugt i64 1, %"$gasrem_466"
  br i1 %"$gascmp_467", label %"$out_of_gas_468", label %"$have_gas_469"

"$out_of_gas_468":                                ; preds = %"$have_gas_464"
  call void @_out_of_gas()
  br label %"$have_gas_469"

"$have_gas_469":                                  ; preds = %"$out_of_gas_468", %"$have_gas_464"
  %"$consume_470" = sub i64 %"$gasrem_466", 1
  store i64 %"$consume_470", i64* @_gasrem, align 8
  %"$$fundef_40_envp_471_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_40_envp_471_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_471_load", i64 4)
  %"$$fundef_40_envp_471" = bitcast i8* %"$$fundef_40_envp_471_salloc" to %"$$fundef_40_env_162"*
  %"$$fundef_40_env_voidp_473" = bitcast %"$$fundef_40_env_162"* %"$$fundef_40_envp_471" to i8*
  %"$$fundef_40_cloval_474" = insertvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int32)*, i8* } (%"$$fundef_40_env_162"*, %Uint32)* @"$fundef_40" to { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_40_env_voidp_473", 1
  %"$$fundef_40_env_one_475" = getelementptr inbounds %"$$fundef_40_env_162", %"$$fundef_40_env_162"* %"$$fundef_40_envp_471", i32 0, i32 0
  %"$one_476" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_476", %Uint32* %"$$fundef_40_env_one_475", align 4
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_40_cloval_474", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 1, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %"$have_gas_469"
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %"$have_gas_469"
  %"$consume_481" = sub i64 %"$gasrem_477", 1
  store i64 %"$consume_481", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_483" = icmp ugt i64 1, %"$gasrem_482"
  br i1 %"$gascmp_483", label %"$out_of_gas_484", label %"$have_gas_485"

"$out_of_gas_484":                                ; preds = %"$have_gas_480"
  call void @_out_of_gas()
  br label %"$have_gas_485"

"$have_gas_485":                                  ; preds = %"$out_of_gas_484", %"$have_gas_480"
  %"$consume_486" = sub i64 %"$gasrem_482", 1
  store i64 %"$consume_486", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4
  %"$gasrem_487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_488" = icmp ugt i64 1, %"$gasrem_487"
  br i1 %"$gascmp_488", label %"$out_of_gas_489", label %"$have_gas_490"

"$out_of_gas_489":                                ; preds = %"$have_gas_485"
  call void @_out_of_gas()
  br label %"$have_gas_490"

"$have_gas_490":                                  ; preds = %"$out_of_gas_489", %"$have_gas_485"
  %"$consume_491" = sub i64 %"$gasrem_487", 1
  store i64 %"$consume_491", i64* @_gasrem, align 8
  %"$foldl_10" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_492" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_493" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_492", 0
  %"$foldl_envptr_494" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_492", 1
  %"$iter_495" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_496" = call { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_493"(i8* %"$foldl_envptr_494", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_495")
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_496", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$foldl_11" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$$foldl_10_497" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$$foldl_10_fptr_498" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_497", 0
  %"$$foldl_10_envptr_499" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_497", 1
  %"$init_500" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_10_call_501" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_10_fptr_498"(i8* %"$$foldl_10_envptr_499", %Uint32 %"$init_500")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_10_call_501", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_11", align 8
  %"$$foldl_11_502" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_11", align 8
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_11_502", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_39", align 8
  %"$$retval_39_503" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_39", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_39_503"
}

define internal %Uint32 @"$fundef_36"(%"$$fundef_36_env_164"* %0, %TName_List_Int64* %1) {
entry:
  %"$$fundef_36_env_f_359" = getelementptr inbounds %"$$fundef_36_env_164", %"$$fundef_36_env_164"* %0, i32 0, i32 0
  %"$f_envload_360" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_36_env_f_359", align 8
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_360", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_36_env_g_361" = getelementptr inbounds %"$$fundef_36_env_164", %"$$fundef_36_env_164"* %0, i32 0, i32 1
  %"$g_envload_362" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_36_env_g_361", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_362", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_36_env_z_363" = getelementptr inbounds %"$$fundef_36_env_164", %"$$fundef_36_env_164"* %0, i32 0, i32 2
  %"$z_envload_364" = load %Uint32, %Uint32* %"$$fundef_36_env_z_363", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_364", %Uint32* %z, align 4
  %"$retval_37" = alloca %Uint32, align 8
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 2, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %entry
  %"$consume_369" = sub i64 %"$gasrem_365", 2
  store i64 %"$consume_369", i64* @_gasrem, align 8
  %"$l_tag_371" = getelementptr inbounds %TName_List_Int64, %TName_List_Int64* %1, i32 0, i32 0
  %"$l_tag_372" = load i8, i8* %"$l_tag_371", align 1
  switch i8 %"$l_tag_372", label %"$empty_default_373" [
    i8 0, label %"$Cons_374"
    i8 1, label %"$Nil_417"
  ]

"$Cons_374":                                      ; preds = %"$have_gas_368"
  %"$l_375" = bitcast %TName_List_Int64* %1 to %CName_Cons_Int64*
  %"$h_gep_376" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_375", i32 0, i32 1
  %"$h_load_377" = load %Int64, %Int64* %"$h_gep_376", align 8
  %h = alloca %Int64, align 8
  store %Int64 %"$h_load_377", %Int64* %h, align 8
  %"$t_gep_378" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_375", i32 0, i32 2
  %"$t_load_379" = load %TName_List_Int64*, %TName_List_Int64** %"$t_gep_378", align 8
  %t = alloca %TName_List_Int64*, align 8
  store %TName_List_Int64* %"$t_load_379", %TName_List_Int64** %t, align 8
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 1, %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$Cons_374"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$Cons_374"
  %"$consume_384" = sub i64 %"$gasrem_380", 1
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 1, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$have_gas_383"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$have_gas_383"
  %"$consume_389" = sub i64 %"$gasrem_385", 1
  store i64 %"$consume_389", i64* @_gasrem, align 8
  %"$f_6" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$f_390" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_391" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_390", 0
  %"$f_envptr_392" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_390", 1
  %"$z_393" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_394" = call { %Uint32 (i8*, %Int64)*, i8* } %"$f_fptr_391"(i8* %"$f_envptr_392", %Uint32 %"$z_393")
  store { %Uint32 (i8*, %Int64)*, i8* } %"$f_call_394", { %Uint32 (i8*, %Int64)*, i8* }* %"$f_6", align 8
  %"$f_7" = alloca %Uint32, align 8
  %"$$f_6_395" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$f_6", align 8
  %"$$f_6_fptr_396" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_6_395", 0
  %"$$f_6_envptr_397" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_6_395", 1
  %"$h_398" = load %Int64, %Int64* %h, align 8
  %"$$f_6_call_399" = call %Uint32 %"$$f_6_fptr_396"(i8* %"$$f_6_envptr_397", %Int64 %"$h_398")
  store %Uint32 %"$$f_6_call_399", %Uint32* %"$f_7", align 4
  %"$$f_7_400" = load %Uint32, %Uint32* %"$f_7", align 4
  store %Uint32 %"$$f_7_400", %Uint32* %res, align 4
  %"$gasrem_401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_402" = icmp ugt i64 1, %"$gasrem_401"
  br i1 %"$gascmp_402", label %"$out_of_gas_403", label %"$have_gas_404"

"$out_of_gas_403":                                ; preds = %"$have_gas_388"
  call void @_out_of_gas()
  br label %"$have_gas_404"

"$have_gas_404":                                  ; preds = %"$out_of_gas_403", %"$have_gas_388"
  %"$consume_405" = sub i64 %"$gasrem_401", 1
  store i64 %"$consume_405", i64* @_gasrem, align 8
  %"$g_8" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$g_406" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_407" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_406", 0
  %"$g_envptr_408" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_406", 1
  %"$res_409" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_410" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_fptr_407"(i8* %"$g_envptr_408", %Uint32 %"$res_409")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_call_410", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_8", align 8
  %"$g_9" = alloca %Uint32, align 8
  %"$$g_8_411" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_8", align 8
  %"$$g_8_fptr_412" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_8_411", 0
  %"$$g_8_envptr_413" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_8_411", 1
  %"$t_414" = load %TName_List_Int64*, %TName_List_Int64** %t, align 8
  %"$$g_8_call_415" = call %Uint32 %"$$g_8_fptr_412"(i8* %"$$g_8_envptr_413", %TName_List_Int64* %"$t_414")
  store %Uint32 %"$$g_8_call_415", %Uint32* %"$g_9", align 4
  %"$$g_9_416" = load %Uint32, %Uint32* %"$g_9", align 4
  store %Uint32 %"$$g_9_416", %Uint32* %"$retval_37", align 4
  br label %"$matchsucc_370"

"$Nil_417":                                       ; preds = %"$have_gas_368"
  %"$l_418" = bitcast %TName_List_Int64* %1 to %CName_Nil_Int64*
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$Nil_417"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$Nil_417"
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %"$z_424" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_424", %Uint32* %"$retval_37", align 4
  br label %"$matchsucc_370"

"$empty_default_373":                             ; preds = %"$have_gas_368"
  br label %"$matchsucc_370"

"$matchsucc_370":                                 ; preds = %"$have_gas_422", %"$have_gas_404", %"$empty_default_373"
  %"$$retval_37_425" = load %Uint32, %Uint32* %"$retval_37", align 4
  ret %Uint32 %"$$retval_37_425"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_34"(%"$$fundef_34_env_165"* %0, %Uint32 %1) {
entry:
  %"$$fundef_34_env_f_335" = getelementptr inbounds %"$$fundef_34_env_165", %"$$fundef_34_env_165"* %0, i32 0, i32 0
  %"$f_envload_336" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_f_335", align 8
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_336", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_34_env_g_337" = getelementptr inbounds %"$$fundef_34_env_165", %"$$fundef_34_env_165"* %0, i32 0, i32 1
  %"$g_envload_338" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_g_337", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_338", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_35" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_340" = icmp ugt i64 1, %"$gasrem_339"
  br i1 %"$gascmp_340", label %"$out_of_gas_341", label %"$have_gas_342"

"$out_of_gas_341":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_342"

"$have_gas_342":                                  ; preds = %"$out_of_gas_341", %entry
  %"$consume_343" = sub i64 %"$gasrem_339", 1
  store i64 %"$consume_343", i64* @_gasrem, align 8
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 1, %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %"$have_gas_342"
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %"$have_gas_342"
  %"$consume_348" = sub i64 %"$gasrem_344", 1
  store i64 %"$consume_348", i64* @_gasrem, align 8
  %"$$fundef_36_envp_349_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_36_envp_349_salloc" = call i8* @_salloc(i8* %"$$fundef_36_envp_349_load", i64 40)
  %"$$fundef_36_envp_349" = bitcast i8* %"$$fundef_36_envp_349_salloc" to %"$$fundef_36_env_164"*
  %"$$fundef_36_env_voidp_351" = bitcast %"$$fundef_36_env_164"* %"$$fundef_36_envp_349" to i8*
  %"$$fundef_36_cloval_352" = insertvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } { %Uint32 (i8*, %TName_List_Int64*)* bitcast (%Uint32 (%"$$fundef_36_env_164"*, %TName_List_Int64*)* @"$fundef_36" to %Uint32 (i8*, %TName_List_Int64*)*), i8* undef }, i8* %"$$fundef_36_env_voidp_351", 1
  %"$$fundef_36_env_f_353" = getelementptr inbounds %"$$fundef_36_env_164", %"$$fundef_36_env_164"* %"$$fundef_36_envp_349", i32 0, i32 0
  %"$f_354" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_354", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_36_env_f_353", align 8
  %"$$fundef_36_env_g_355" = getelementptr inbounds %"$$fundef_36_env_164", %"$$fundef_36_env_164"* %"$$fundef_36_envp_349", i32 0, i32 1
  %"$g_356" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_356", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_36_env_g_355", align 8
  %"$$fundef_36_env_z_357" = getelementptr inbounds %"$$fundef_36_env_164", %"$$fundef_36_env_164"* %"$$fundef_36_envp_349", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_36_env_z_357", align 4
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$fundef_36_cloval_352", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_35", align 8
  %"$$retval_35_358" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_35", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_35_358"
}

define internal { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_32"(%"$$fundef_32_env_166"* %0, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_33" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_322" = icmp ugt i64 1, %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %entry
  %"$consume_325" = sub i64 %"$gasrem_321", 1
  store i64 %"$consume_325", i64* @_gasrem, align 8
  %"$$fundef_34_envp_326_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_34_envp_326_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_326_load", i64 32)
  %"$$fundef_34_envp_326" = bitcast i8* %"$$fundef_34_envp_326_salloc" to %"$$fundef_34_env_165"*
  %"$$fundef_34_env_voidp_328" = bitcast %"$$fundef_34_env_165"* %"$$fundef_34_envp_326" to i8*
  %"$$fundef_34_cloval_329" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_34_env_165"*, %Uint32)* @"$fundef_34" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_34_env_voidp_328", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_34_cloval_329", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_34_env_f_330" = getelementptr inbounds %"$$fundef_34_env_165", %"$$fundef_34_env_165"* %"$$fundef_34_envp_326", i32 0, i32 0
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_f_330", align 8
  %"$$fundef_34_env_g_331" = getelementptr inbounds %"$$fundef_34_env_165", %"$$fundef_34_env_165"* %"$$fundef_34_envp_326", i32 0, i32 1
  %"$g_332" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_332", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_g_331", align 8
  %"$g_333" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_333", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_33", align 8
  %"$$retval_33_334" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_33", align 8
  ret { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_33_334"
}

define internal { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_30"(%"$$fundef_30_env_167"* %0) {
entry:
  %"$retval_31" = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 1, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %entry
  %"$consume_316" = sub i64 %"$gasrem_312", 1
  store i64 %"$consume_316", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_32_env_166"*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_32" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_31", align 8
  %"$$retval_31_320" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_31", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_31_320"
}

define internal { i8*, i8* }* @"$fundef_28"(%"$$fundef_28_env_168"* %0) {
entry:
  %"$retval_29" = alloca { i8*, i8* }*, align 8
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %entry
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %"$dyndisp_table_308_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_308_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_308_salloc_load", i64 48)
  %"$dyndisp_table_308_salloc" = bitcast i8* %"$dyndisp_table_308_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_308" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_308_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_309" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_308", i32 1
  %"$dyndisp_pcast_310" = bitcast { i8*, i8* }* %"$dyndisp_gep_309" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_30_env_167"*)* @"$fundef_30" to { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_310", align 8
  store { i8*, i8* }* %"$dyndisp_table_308", { i8*, i8* }** %"$retval_29", align 8
  %"$$retval_29_311" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_29", align 8
  ret { i8*, i8* }* %"$$retval_29_311"
}

define internal %Uint32 @"$fundef_26"(%"$$fundef_26_env_169"* %0, %TName_List_Int32* %1) {
entry:
  %"$$fundef_26_env_f_233" = getelementptr inbounds %"$$fundef_26_env_169", %"$$fundef_26_env_169"* %0, i32 0, i32 0
  %"$f_envload_234" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_f_233", align 8
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_234", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_26_env_g_235" = getelementptr inbounds %"$$fundef_26_env_169", %"$$fundef_26_env_169"* %0, i32 0, i32 1
  %"$g_envload_236" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_g_235", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_236", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_26_env_z_237" = getelementptr inbounds %"$$fundef_26_env_169", %"$$fundef_26_env_169"* %0, i32 0, i32 2
  %"$z_envload_238" = load %Uint32, %Uint32* %"$$fundef_26_env_z_237", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_238", %Uint32* %z, align 4
  %"$retval_27" = alloca %Uint32, align 8
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 2, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %entry
  %"$consume_243" = sub i64 %"$gasrem_239", 2
  store i64 %"$consume_243", i64* @_gasrem, align 8
  %"$l_tag_245" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %1, i32 0, i32 0
  %"$l_tag_246" = load i8, i8* %"$l_tag_245", align 1
  switch i8 %"$l_tag_246", label %"$empty_default_247" [
    i8 0, label %"$Cons_248"
    i8 1, label %"$Nil_291"
  ]

"$Cons_248":                                      ; preds = %"$have_gas_242"
  %"$l_249" = bitcast %TName_List_Int32* %1 to %CName_Cons_Int32*
  %"$h_gep_250" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_249", i32 0, i32 1
  %"$h_load_251" = load %Int32, %Int32* %"$h_gep_250", align 4
  %h = alloca %Int32, align 8
  store %Int32 %"$h_load_251", %Int32* %h, align 4
  %"$t_gep_252" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_249", i32 0, i32 2
  %"$t_load_253" = load %TName_List_Int32*, %TName_List_Int32** %"$t_gep_252", align 8
  %t = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$t_load_253", %TName_List_Int32** %t, align 8
  %"$gasrem_254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_255" = icmp ugt i64 1, %"$gasrem_254"
  br i1 %"$gascmp_255", label %"$out_of_gas_256", label %"$have_gas_257"

"$out_of_gas_256":                                ; preds = %"$Cons_248"
  call void @_out_of_gas()
  br label %"$have_gas_257"

"$have_gas_257":                                  ; preds = %"$out_of_gas_256", %"$Cons_248"
  %"$consume_258" = sub i64 %"$gasrem_254", 1
  store i64 %"$consume_258", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_257"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_257"
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %"$f_6" = alloca { %Uint32 (i8*, %Int32)*, i8* }, align 8
  %"$f_264" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_265" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_264", 0
  %"$f_envptr_266" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_264", 1
  %"$z_267" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_268" = call { %Uint32 (i8*, %Int32)*, i8* } %"$f_fptr_265"(i8* %"$f_envptr_266", %Uint32 %"$z_267")
  store { %Uint32 (i8*, %Int32)*, i8* } %"$f_call_268", { %Uint32 (i8*, %Int32)*, i8* }* %"$f_6", align 8
  %"$f_7" = alloca %Uint32, align 8
  %"$$f_6_269" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$f_6", align 8
  %"$$f_6_fptr_270" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_6_269", 0
  %"$$f_6_envptr_271" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_6_269", 1
  %"$h_272" = load %Int32, %Int32* %h, align 4
  %"$$f_6_call_273" = call %Uint32 %"$$f_6_fptr_270"(i8* %"$$f_6_envptr_271", %Int32 %"$h_272")
  store %Uint32 %"$$f_6_call_273", %Uint32* %"$f_7", align 4
  %"$$f_7_274" = load %Uint32, %Uint32* %"$f_7", align 4
  store %Uint32 %"$$f_7_274", %Uint32* %res, align 4
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 1, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %"$have_gas_262"
  %"$consume_279" = sub i64 %"$gasrem_275", 1
  store i64 %"$consume_279", i64* @_gasrem, align 8
  %"$g_8" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$g_280" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_281" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_280", 0
  %"$g_envptr_282" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_280", 1
  %"$res_283" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_284" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_fptr_281"(i8* %"$g_envptr_282", %Uint32 %"$res_283")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_call_284", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_8", align 8
  %"$g_9" = alloca %Uint32, align 8
  %"$$g_8_285" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_8", align 8
  %"$$g_8_fptr_286" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_8_285", 0
  %"$$g_8_envptr_287" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_8_285", 1
  %"$t_288" = load %TName_List_Int32*, %TName_List_Int32** %t, align 8
  %"$$g_8_call_289" = call %Uint32 %"$$g_8_fptr_286"(i8* %"$$g_8_envptr_287", %TName_List_Int32* %"$t_288")
  store %Uint32 %"$$g_8_call_289", %Uint32* %"$g_9", align 4
  %"$$g_9_290" = load %Uint32, %Uint32* %"$g_9", align 4
  store %Uint32 %"$$g_9_290", %Uint32* %"$retval_27", align 4
  br label %"$matchsucc_244"

"$Nil_291":                                       ; preds = %"$have_gas_242"
  %"$l_292" = bitcast %TName_List_Int32* %1 to %CName_Nil_Int32*
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 1, %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %"$Nil_291"
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %"$Nil_291"
  %"$consume_297" = sub i64 %"$gasrem_293", 1
  store i64 %"$consume_297", i64* @_gasrem, align 8
  %"$z_298" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_298", %Uint32* %"$retval_27", align 4
  br label %"$matchsucc_244"

"$empty_default_247":                             ; preds = %"$have_gas_242"
  br label %"$matchsucc_244"

"$matchsucc_244":                                 ; preds = %"$have_gas_296", %"$have_gas_278", %"$empty_default_247"
  %"$$retval_27_299" = load %Uint32, %Uint32* %"$retval_27", align 4
  ret %Uint32 %"$$retval_27_299"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_24"(%"$$fundef_24_env_170"* %0, %Uint32 %1) {
entry:
  %"$$fundef_24_env_f_209" = getelementptr inbounds %"$$fundef_24_env_170", %"$$fundef_24_env_170"* %0, i32 0, i32 0
  %"$f_envload_210" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_f_209", align 8
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_210", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_24_env_g_211" = getelementptr inbounds %"$$fundef_24_env_170", %"$$fundef_24_env_170"* %0, i32 0, i32 1
  %"$g_envload_212" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_g_211", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_212", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_25" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %entry
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 1, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_216"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_216"
  %"$consume_222" = sub i64 %"$gasrem_218", 1
  store i64 %"$consume_222", i64* @_gasrem, align 8
  %"$$fundef_26_envp_223_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_26_envp_223_salloc" = call i8* @_salloc(i8* %"$$fundef_26_envp_223_load", i64 40)
  %"$$fundef_26_envp_223" = bitcast i8* %"$$fundef_26_envp_223_salloc" to %"$$fundef_26_env_169"*
  %"$$fundef_26_env_voidp_225" = bitcast %"$$fundef_26_env_169"* %"$$fundef_26_envp_223" to i8*
  %"$$fundef_26_cloval_226" = insertvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } { %Uint32 (i8*, %TName_List_Int32*)* bitcast (%Uint32 (%"$$fundef_26_env_169"*, %TName_List_Int32*)* @"$fundef_26" to %Uint32 (i8*, %TName_List_Int32*)*), i8* undef }, i8* %"$$fundef_26_env_voidp_225", 1
  %"$$fundef_26_env_f_227" = getelementptr inbounds %"$$fundef_26_env_169", %"$$fundef_26_env_169"* %"$$fundef_26_envp_223", i32 0, i32 0
  %"$f_228" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_228", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_f_227", align 8
  %"$$fundef_26_env_g_229" = getelementptr inbounds %"$$fundef_26_env_169", %"$$fundef_26_env_169"* %"$$fundef_26_envp_223", i32 0, i32 1
  %"$g_230" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_230", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_g_229", align 8
  %"$$fundef_26_env_z_231" = getelementptr inbounds %"$$fundef_26_env_169", %"$$fundef_26_env_169"* %"$$fundef_26_envp_223", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_26_env_z_231", align 4
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$fundef_26_cloval_226", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_25", align 8
  %"$$retval_25_232" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_25", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_25_232"
}

define internal { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_22"(%"$$fundef_22_env_171"* %0, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_23" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %entry
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %"$$fundef_24_envp_200_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_24_envp_200_salloc" = call i8* @_salloc(i8* %"$$fundef_24_envp_200_load", i64 32)
  %"$$fundef_24_envp_200" = bitcast i8* %"$$fundef_24_envp_200_salloc" to %"$$fundef_24_env_170"*
  %"$$fundef_24_env_voidp_202" = bitcast %"$$fundef_24_env_170"* %"$$fundef_24_envp_200" to i8*
  %"$$fundef_24_cloval_203" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_24_env_170"*, %Uint32)* @"$fundef_24" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_24_env_voidp_202", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_24_cloval_203", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_24_env_f_204" = getelementptr inbounds %"$$fundef_24_env_170", %"$$fundef_24_env_170"* %"$$fundef_24_envp_200", i32 0, i32 0
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_f_204", align 8
  %"$$fundef_24_env_g_205" = getelementptr inbounds %"$$fundef_24_env_170", %"$$fundef_24_env_170"* %"$$fundef_24_envp_200", i32 0, i32 1
  %"$g_206" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_206", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_g_205", align 8
  %"$g_207" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_207", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_23", align 8
  %"$$retval_23_208" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_23", align 8
  ret { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_23_208"
}

define internal { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_20"(%"$$fundef_20_env_172"* %0) {
entry:
  %"$retval_21" = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %entry
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_22_env_171"*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_22" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_21", align 8
  %"$$retval_21_194" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_21", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_21_194"
}

define internal { i8*, i8* }* @"$fundef_18"(%"$$fundef_18_env_173"* %0) {
entry:
  %"$retval_19" = alloca { i8*, i8* }*, align 8
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %entry
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %"$dyndisp_table_182_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_182_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_182_salloc_load", i64 48)
  %"$dyndisp_table_182_salloc" = bitcast i8* %"$dyndisp_table_182_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_182" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_182_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_183" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_182", i32 1
  %"$dyndisp_pcast_184" = bitcast { i8*, i8* }* %"$dyndisp_gep_183" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_20_env_172"*)* @"$fundef_20" to { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_184", align 8
  store { i8*, i8* }* %"$dyndisp_table_182", { i8*, i8* }** %"$retval_19", align 8
  %"$$retval_19_185" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_19", align 8
  ret { i8*, i8* }* %"$$retval_19_185"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  %"$gasrem_848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_849" = icmp ugt i64 5, %"$gasrem_848"
  br i1 %"$gascmp_849", label %"$out_of_gas_850", label %"$have_gas_851"

"$out_of_gas_850":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_851"

"$have_gas_851":                                  ; preds = %"$out_of_gas_850", %entry
  %"$consume_852" = sub i64 %"$gasrem_848", 5
  store i64 %"$consume_852", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_854" = icmp ugt i64 8, %"$gasrem_853"
  br i1 %"$gascmp_854", label %"$out_of_gas_855", label %"$have_gas_856"

"$out_of_gas_855":                                ; preds = %"$have_gas_851"
  call void @_out_of_gas()
  br label %"$have_gas_856"

"$have_gas_856":                                  ; preds = %"$out_of_gas_855", %"$have_gas_851"
  %"$consume_857" = sub i64 %"$gasrem_853", 8
  store i64 %"$consume_857", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_859" = icmp ugt i64 196, %"$gasrem_858"
  br i1 %"$gascmp_859", label %"$out_of_gas_860", label %"$have_gas_861"

"$out_of_gas_860":                                ; preds = %"$have_gas_856"
  call void @_out_of_gas()
  br label %"$have_gas_861"

"$have_gas_861":                                  ; preds = %"$out_of_gas_860", %"$have_gas_856"
  %"$consume_862" = sub i64 %"$gasrem_858", 196
  store i64 %"$consume_862", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_864" = icmp ugt i64 19, %"$gasrem_863"
  br i1 %"$gascmp_864", label %"$out_of_gas_865", label %"$have_gas_866"

"$out_of_gas_865":                                ; preds = %"$have_gas_861"
  call void @_out_of_gas()
  br label %"$have_gas_866"

"$have_gas_866":                                  ; preds = %"$out_of_gas_865", %"$have_gas_861"
  %"$consume_867" = sub i64 %"$gasrem_863", 19
  store i64 %"$consume_867", i64* @_gasrem, align 8
  store %Int32 { i32 19 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_869" = icmp ugt i64 1, %"$gasrem_868"
  br i1 %"$gascmp_869", label %"$out_of_gas_870", label %"$have_gas_871"

"$out_of_gas_870":                                ; preds = %"$have_gas_866"
  call void @_out_of_gas()
  br label %"$have_gas_871"

"$have_gas_871":                                  ; preds = %"$out_of_gas_870", %"$have_gas_866"
  %"$consume_872" = sub i64 %"$gasrem_868", 1
  store i64 %"$consume_872", i64* @_gasrem, align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  %"$dyndisp_table_879_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_879_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_879_salloc_load", i64 48)
  %"$dyndisp_table_879_salloc" = bitcast i8* %"$dyndisp_table_879_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_879" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_879_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_880" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_879", i32 0
  %"$dyndisp_pcast_881" = bitcast { i8*, i8* }* %"$dyndisp_gep_880" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_18_env_173"*)* @"$fundef_18" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_881", align 8
  %"$dyndisp_gep_882" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_879", i32 2
  %"$dyndisp_pcast_883" = bitcast { i8*, i8* }* %"$dyndisp_gep_882" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_28_env_168"*)* @"$fundef_28" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_883", align 8
  store { i8*, i8* }* %"$dyndisp_table_879", { i8*, i8* }** %list_foldl, align 8
  %"$$fundef_38_envp_884_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_38_envp_884_salloc" = call i8* @_salloc(i8* %"$$fundef_38_envp_884_load", i64 8)
  %"$$fundef_38_envp_884" = bitcast i8* %"$$fundef_38_envp_884_salloc" to %"$$fundef_38_env_163"*
  %"$$fundef_38_env_voidp_886" = bitcast %"$$fundef_38_env_163"* %"$$fundef_38_envp_884" to i8*
  %"$$fundef_38_cloval_887" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_38_env_163"*)* @"$fundef_38" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_38_env_voidp_886", 1
  %"$$fundef_38_env_list_foldl_888" = getelementptr inbounds %"$$fundef_38_env_163", %"$$fundef_38_env_163"* %"$$fundef_38_envp_884", i32 0, i32 0
  %"$list_foldl_889" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  store { i8*, i8* }* %"$list_foldl_889", { i8*, i8* }** %"$$fundef_38_env_list_foldl_888", align 8
  %"$$fundef_44_env_voidp_891" = bitcast %"$$fundef_38_env_163"* %"$$fundef_38_envp_884" to i8*
  %"$$fundef_44_cloval_892" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_44_env_160"*)* @"$fundef_44" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_44_env_voidp_891", 1
  %"$dyndisp_table_893_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_893_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_893_salloc_load", i64 48)
  %"$dyndisp_table_893_salloc" = bitcast i8* %"$dyndisp_table_893_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_893" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_893_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_894" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_893", i32 0
  %"$dyndisp_pcast_895" = bitcast { i8*, i8* }* %"$dyndisp_gep_894" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$$fundef_38_cloval_887", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_895", align 8
  %"$dyndisp_gep_896" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_893", i32 2
  %"$dyndisp_pcast_897" = bitcast { i8*, i8* }* %"$dyndisp_gep_896" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$$fundef_44_cloval_892", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_897", align 8
  store { i8*, i8* }* %"$dyndisp_table_893", { i8*, i8* }** @ListUtils.list_length, align 8
  %"$gasrem_898" = load i64, i64* @_gasrem, align 8
  %"$gascmp_899" = icmp ugt i64 12, %"$gasrem_898"
  br i1 %"$gascmp_899", label %"$out_of_gas_900", label %"$have_gas_901"

"$out_of_gas_900":                                ; preds = %"$have_gas_871"
  call void @_out_of_gas()
  br label %"$have_gas_901"

"$have_gas_901":                                  ; preds = %"$out_of_gas_900", %"$have_gas_871"
  %"$consume_902" = sub i64 %"$gasrem_898", 12
  store i64 %"$consume_902", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_903" = load i64, i64* @_gasrem, align 8
  %"$gascmp_904" = icmp ugt i64 2, %"$gasrem_903"
  br i1 %"$gascmp_904", label %"$out_of_gas_905", label %"$have_gas_906"

"$out_of_gas_905":                                ; preds = %"$have_gas_901"
  call void @_out_of_gas()
  br label %"$have_gas_906"

"$have_gas_906":                                  ; preds = %"$out_of_gas_905", %"$have_gas_901"
  %"$consume_907" = sub i64 %"$gasrem_903", 2
  store i64 %"$consume_907", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_50" = alloca %Uint32, align 8
  %"$gasrem_908" = load i64, i64* @_gasrem, align 8
  %"$gascmp_909" = icmp ugt i64 1, %"$gasrem_908"
  br i1 %"$gascmp_909", label %"$out_of_gas_910", label %"$have_gas_911"

"$out_of_gas_910":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_911"

"$have_gas_911":                                  ; preds = %"$out_of_gas_910", %entry
  %"$consume_912" = sub i64 %"$gasrem_908", 1
  store i64 %"$consume_912", i64* @_gasrem, align 8
  %t1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_914" = icmp ugt i64 1, %"$gasrem_913"
  br i1 %"$gascmp_914", label %"$out_of_gas_915", label %"$have_gas_916"

"$out_of_gas_915":                                ; preds = %"$have_gas_911"
  call void @_out_of_gas()
  br label %"$have_gas_916"

"$have_gas_916":                                  ; preds = %"$out_of_gas_915", %"$have_gas_911"
  %"$consume_917" = sub i64 %"$gasrem_913", 1
  store i64 %"$consume_917", i64* @_gasrem, align 8
  %"$dyndisp_table_924_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_924_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_924_salloc_load", i64 48)
  %"$dyndisp_table_924_salloc" = bitcast i8* %"$dyndisp_table_924_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_924" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_924_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_925" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_924", i32 0
  %"$dyndisp_pcast_926" = bitcast { i8*, i8* }* %"$dyndisp_gep_925" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_51_env_157"*)* @"$fundef_51" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_926", align 8
  %"$dyndisp_gep_927" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_924", i32 2
  %"$dyndisp_pcast_928" = bitcast { i8*, i8* }* %"$dyndisp_gep_927" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_55_env_155"*)* @"$fundef_55" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_928", align 8
  store { i8*, i8* }* %"$dyndisp_table_924", { i8*, i8* }** %t1, align 8
  %"$gasrem_929" = load i64, i64* @_gasrem, align 8
  %"$gascmp_930" = icmp ugt i64 1, %"$gasrem_929"
  br i1 %"$gascmp_930", label %"$out_of_gas_931", label %"$have_gas_932"

"$out_of_gas_931":                                ; preds = %"$have_gas_916"
  call void @_out_of_gas()
  br label %"$have_gas_932"

"$have_gas_932":                                  ; preds = %"$out_of_gas_931", %"$have_gas_916"
  %"$consume_933" = sub i64 %"$gasrem_929", 1
  store i64 %"$consume_933", i64* @_gasrem, align 8
  %t2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_934" = load i64, i64* @_gasrem, align 8
  %"$gascmp_935" = icmp ugt i64 1, %"$gasrem_934"
  br i1 %"$gascmp_935", label %"$out_of_gas_936", label %"$have_gas_937"

"$out_of_gas_936":                                ; preds = %"$have_gas_932"
  call void @_out_of_gas()
  br label %"$have_gas_937"

"$have_gas_937":                                  ; preds = %"$out_of_gas_936", %"$have_gas_932"
  %"$consume_938" = sub i64 %"$gasrem_934", 1
  store i64 %"$consume_938", i64* @_gasrem, align 8
  %"$dyndisp_table_945_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_945_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_945_salloc_load", i64 48)
  %"$dyndisp_table_945_salloc" = bitcast i8* %"$dyndisp_table_945_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_945" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_945_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_946" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_945", i32 0
  %"$dyndisp_pcast_947" = bitcast { i8*, i8* }* %"$dyndisp_gep_946" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_59_env_153"*)* @"$fundef_59" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_947", align 8
  %"$dyndisp_gep_948" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_945", i32 2
  %"$dyndisp_pcast_949" = bitcast { i8*, i8* }* %"$dyndisp_gep_948" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_63_env_151"*)* @"$fundef_63" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_949", align 8
  store { i8*, i8* }* %"$dyndisp_table_945", { i8*, i8* }** %t2, align 8
  %"$gasrem_950" = load i64, i64* @_gasrem, align 8
  %"$gascmp_951" = icmp ugt i64 1, %"$gasrem_950"
  br i1 %"$gascmp_951", label %"$out_of_gas_952", label %"$have_gas_953"

"$out_of_gas_952":                                ; preds = %"$have_gas_937"
  call void @_out_of_gas()
  br label %"$have_gas_953"

"$have_gas_953":                                  ; preds = %"$out_of_gas_952", %"$have_gas_937"
  %"$consume_954" = sub i64 %"$gasrem_950", 1
  store i64 %"$consume_954", i64* @_gasrem, align 8
  %t = alloca { i8*, i8* }*, align 8
  %"$gasrem_955" = load i64, i64* @_gasrem, align 8
  %"$gascmp_956" = icmp ugt i64 1, %"$gasrem_955"
  br i1 %"$gascmp_956", label %"$out_of_gas_957", label %"$have_gas_958"

"$out_of_gas_957":                                ; preds = %"$have_gas_953"
  call void @_out_of_gas()
  br label %"$have_gas_958"

"$have_gas_958":                                  ; preds = %"$out_of_gas_957", %"$have_gas_953"
  %"$consume_959" = sub i64 %"$gasrem_955", 1
  store i64 %"$consume_959", i64* @_gasrem, align 8
  %"$dyndisp_table_966_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_966_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_966_salloc_load", i64 48)
  %"$dyndisp_table_966_salloc" = bitcast i8* %"$dyndisp_table_966_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_966" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_966_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_967" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_966", i32 0
  %"$dyndisp_pcast_968" = bitcast { i8*, i8* }* %"$dyndisp_gep_967" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_67_env_149"*)* @"$fundef_67" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_968", align 8
  %"$dyndisp_gep_969" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_966", i32 2
  %"$dyndisp_pcast_970" = bitcast { i8*, i8* }* %"$dyndisp_gep_969" to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_71_env_147"*)* @"$fundef_71" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_970", align 8
  store { i8*, i8* }* %"$dyndisp_table_966", { i8*, i8* }** %t, align 8
  %"$gasrem_971" = load i64, i64* @_gasrem, align 8
  %"$gascmp_972" = icmp ugt i64 1, %"$gasrem_971"
  br i1 %"$gascmp_972", label %"$out_of_gas_973", label %"$have_gas_974"

"$out_of_gas_973":                                ; preds = %"$have_gas_958"
  call void @_out_of_gas()
  br label %"$have_gas_974"

"$have_gas_974":                                  ; preds = %"$out_of_gas_973", %"$have_gas_958"
  %"$consume_975" = sub i64 %"$gasrem_971", 1
  store i64 %"$consume_975", i64* @_gasrem, align 8
  %some_bool = alloca %TName_Bool*, align 8
  %"$gasrem_976" = load i64, i64* @_gasrem, align 8
  %"$gascmp_977" = icmp ugt i64 1, %"$gasrem_976"
  br i1 %"$gascmp_977", label %"$out_of_gas_978", label %"$have_gas_979"

"$out_of_gas_978":                                ; preds = %"$have_gas_974"
  call void @_out_of_gas()
  br label %"$have_gas_979"

"$have_gas_979":                                  ; preds = %"$out_of_gas_978", %"$have_gas_974"
  %"$consume_980" = sub i64 %"$gasrem_976", 1
  store i64 %"$consume_980", i64* @_gasrem, align 8
  %"$adtval_981_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_981_salloc" = call i8* @_salloc(i8* %"$adtval_981_load", i64 1)
  %"$adtval_981" = bitcast i8* %"$adtval_981_salloc" to %CName_False*
  %"$adtgep_982" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_981", i32 0, i32 0
  store i8 1, i8* %"$adtgep_982", align 1
  %"$adtptr_983" = bitcast %CName_False* %"$adtval_981" to %TName_Bool*
  store %TName_Bool* %"$adtptr_983", %TName_Bool** %some_bool, align 8
  %"$gasrem_984" = load i64, i64* @_gasrem, align 8
  %"$gascmp_985" = icmp ugt i64 2, %"$gasrem_984"
  br i1 %"$gascmp_985", label %"$out_of_gas_986", label %"$have_gas_987"

"$out_of_gas_986":                                ; preds = %"$have_gas_979"
  call void @_out_of_gas()
  br label %"$have_gas_987"

"$have_gas_987":                                  ; preds = %"$out_of_gas_986", %"$have_gas_979"
  %"$consume_988" = sub i64 %"$gasrem_984", 2
  store i64 %"$consume_988", i64* @_gasrem, align 8
  %"$some_bool_990" = load %TName_Bool*, %TName_Bool** %some_bool, align 8
  %"$some_bool_tag_991" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool_990", i32 0, i32 0
  %"$some_bool_tag_992" = load i8, i8* %"$some_bool_tag_991", align 1
  switch i8 %"$some_bool_tag_992", label %"$empty_default_993" [
    i8 0, label %"$True_994"
    i8 1, label %"$False_1083"
  ]

"$True_994":                                      ; preds = %"$have_gas_987"
  %"$some_bool_995" = bitcast %TName_Bool* %"$some_bool_990" to %CName_True*
  %"$gasrem_996" = load i64, i64* @_gasrem, align 8
  %"$gascmp_997" = icmp ugt i64 1, %"$gasrem_996"
  br i1 %"$gascmp_997", label %"$out_of_gas_998", label %"$have_gas_999"

"$out_of_gas_998":                                ; preds = %"$True_994"
  call void @_out_of_gas()
  br label %"$have_gas_999"

"$have_gas_999":                                  ; preds = %"$out_of_gas_998", %"$True_994"
  %"$consume_1000" = sub i64 %"$gasrem_996", 1
  store i64 %"$consume_1000", i64* @_gasrem, align 8
  %f11 = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_1001" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1002" = icmp ugt i64 1, %"$gasrem_1001"
  br i1 %"$gascmp_1002", label %"$out_of_gas_1003", label %"$have_gas_1004"

"$out_of_gas_1003":                               ; preds = %"$have_gas_999"
  call void @_out_of_gas()
  br label %"$have_gas_1004"

"$have_gas_1004":                                 ; preds = %"$out_of_gas_1003", %"$have_gas_999"
  %"$consume_1005" = sub i64 %"$gasrem_1001", 1
  store i64 %"$consume_1005", i64* @_gasrem, align 8
  %"$t_1006" = load { i8*, i8* }*, { i8*, i8* }** %t, align 8
  %"$t_1007" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_1006", i32 0
  %"$t_1008" = bitcast { i8*, i8* }* %"$t_1007" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_1009" = load { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_1008", align 8
  %"$t_fptr_1010" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_1009", 0
  %"$t_envptr_1011" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_1009", 1
  %"$t_call_1012" = call { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_1010"(i8* %"$t_envptr_1011")
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_1012", { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11, align 8
  %"$gasrem_1013" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1014" = icmp ugt i64 1, %"$gasrem_1013"
  br i1 %"$gascmp_1014", label %"$out_of_gas_1015", label %"$have_gas_1016"

"$out_of_gas_1015":                               ; preds = %"$have_gas_1004"
  call void @_out_of_gas()
  br label %"$have_gas_1016"

"$have_gas_1016":                                 ; preds = %"$out_of_gas_1015", %"$have_gas_1004"
  %"$consume_1017" = sub i64 %"$gasrem_1013", 1
  store i64 %"$consume_1017", i64* @_gasrem, align 8
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_1018" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1019" = icmp ugt i64 1, %"$gasrem_1018"
  br i1 %"$gascmp_1019", label %"$out_of_gas_1020", label %"$have_gas_1021"

"$out_of_gas_1020":                               ; preds = %"$have_gas_1016"
  call void @_out_of_gas()
  br label %"$have_gas_1021"

"$have_gas_1021":                                 ; preds = %"$out_of_gas_1020", %"$have_gas_1016"
  %"$consume_1022" = sub i64 %"$gasrem_1018", 1
  store i64 %"$consume_1022", i64* @_gasrem, align 8
  %"$f11_12" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$f11_1023" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11, align 8
  %"$f11_fptr_1024" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_1023", 0
  %"$f11_envptr_1025" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_1023", 1
  %"$t1_1026" = load { i8*, i8* }*, { i8*, i8* }** %t1, align 8
  %"$f11_call_1027" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_fptr_1024"(i8* %"$f11_envptr_1025", { i8*, i8* }* %"$t1_1026")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_call_1027", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_12", align 8
  %"$$f11_12_1028" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_12", align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$f11_12_1028", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8
  %"$gasrem_1029" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1030" = icmp ugt i64 1, %"$gasrem_1029"
  br i1 %"$gascmp_1030", label %"$out_of_gas_1031", label %"$have_gas_1032"

"$out_of_gas_1031":                               ; preds = %"$have_gas_1021"
  call void @_out_of_gas()
  br label %"$have_gas_1032"

"$have_gas_1032":                                 ; preds = %"$out_of_gas_1031", %"$have_gas_1021"
  %"$consume_1033" = sub i64 %"$gasrem_1029", 1
  store i64 %"$consume_1033", i64* @_gasrem, align 8
  %len = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_1034" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1035" = icmp ugt i64 1, %"$gasrem_1034"
  br i1 %"$gascmp_1035", label %"$out_of_gas_1036", label %"$have_gas_1037"

"$out_of_gas_1036":                               ; preds = %"$have_gas_1032"
  call void @_out_of_gas()
  br label %"$have_gas_1037"

"$have_gas_1037":                                 ; preds = %"$out_of_gas_1036", %"$have_gas_1032"
  %"$consume_1038" = sub i64 %"$gasrem_1034", 1
  store i64 %"$consume_1038", i64* @_gasrem, align 8
  %"$ListUtils.list_length_1039" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_1040" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_1039", i32 0
  %"$ListUtils.list_length_1041" = bitcast { i8*, i8* }* %"$ListUtils.list_length_1040" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1042" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_1041", align 8
  %"$ListUtils.list_length_fptr_1043" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1042", 0
  %"$ListUtils.list_length_envptr_1044" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1042", 1
  %"$ListUtils.list_length_call_1045" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_fptr_1043"(i8* %"$ListUtils.list_length_envptr_1044")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_call_1045", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8
  %"$gasrem_1046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1047" = icmp ugt i64 1, %"$gasrem_1046"
  br i1 %"$gascmp_1047", label %"$out_of_gas_1048", label %"$have_gas_1049"

"$out_of_gas_1048":                               ; preds = %"$have_gas_1037"
  call void @_out_of_gas()
  br label %"$have_gas_1049"

"$have_gas_1049":                                 ; preds = %"$out_of_gas_1048", %"$have_gas_1037"
  %"$consume_1050" = sub i64 %"$gasrem_1046", 1
  store i64 %"$consume_1050", i64* @_gasrem, align 8
  %one = alloca %Int32, align 8
  %"$gasrem_1051" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1052" = icmp ugt i64 1, %"$gasrem_1051"
  br i1 %"$gascmp_1052", label %"$out_of_gas_1053", label %"$have_gas_1054"

"$out_of_gas_1053":                               ; preds = %"$have_gas_1049"
  call void @_out_of_gas()
  br label %"$have_gas_1054"

"$have_gas_1054":                                 ; preds = %"$out_of_gas_1053", %"$have_gas_1049"
  %"$consume_1055" = sub i64 %"$gasrem_1051", 1
  store i64 %"$consume_1055", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %one, align 4
  %"$gasrem_1056" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1057" = icmp ugt i64 1, %"$gasrem_1056"
  br i1 %"$gascmp_1057", label %"$out_of_gas_1058", label %"$have_gas_1059"

"$out_of_gas_1058":                               ; preds = %"$have_gas_1054"
  call void @_out_of_gas()
  br label %"$have_gas_1059"

"$have_gas_1059":                                 ; preds = %"$out_of_gas_1058", %"$have_gas_1054"
  %"$consume_1060" = sub i64 %"$gasrem_1056", 1
  store i64 %"$consume_1060", i64* @_gasrem, align 8
  %f1l = alloca %TName_List_Int32*, align 8
  %"$gasrem_1061" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1062" = icmp ugt i64 1, %"$gasrem_1061"
  br i1 %"$gascmp_1062", label %"$out_of_gas_1063", label %"$have_gas_1064"

"$out_of_gas_1063":                               ; preds = %"$have_gas_1059"
  call void @_out_of_gas()
  br label %"$have_gas_1064"

"$have_gas_1064":                                 ; preds = %"$out_of_gas_1063", %"$have_gas_1059"
  %"$consume_1065" = sub i64 %"$gasrem_1061", 1
  store i64 %"$consume_1065", i64* @_gasrem, align 8
  %"$f1_13" = alloca %TName_List_Int32*, align 8
  %"$f1_1066" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8
  %"$f1_fptr_1067" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_1066", 0
  %"$f1_envptr_1068" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_1066", 1
  %"$one_1069" = load %Int32, %Int32* %one, align 4
  %"$f1_call_1070" = call %TName_List_Int32* %"$f1_fptr_1067"(i8* %"$f1_envptr_1068", %Int32 %"$one_1069")
  store %TName_List_Int32* %"$f1_call_1070", %TName_List_Int32** %"$f1_13", align 8
  %"$$f1_13_1071" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_13", align 8
  store %TName_List_Int32* %"$$f1_13_1071", %TName_List_Int32** %f1l, align 8
  %"$gasrem_1072" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1073" = icmp ugt i64 1, %"$gasrem_1072"
  br i1 %"$gascmp_1073", label %"$out_of_gas_1074", label %"$have_gas_1075"

"$out_of_gas_1074":                               ; preds = %"$have_gas_1064"
  call void @_out_of_gas()
  br label %"$have_gas_1075"

"$have_gas_1075":                                 ; preds = %"$out_of_gas_1074", %"$have_gas_1064"
  %"$consume_1076" = sub i64 %"$gasrem_1072", 1
  store i64 %"$consume_1076", i64* @_gasrem, align 8
  %"$len_14" = alloca %Uint32, align 8
  %"$len_1077" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8
  %"$len_fptr_1078" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_1077", 0
  %"$len_envptr_1079" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_1077", 1
  %"$f1l_1080" = load %TName_List_Int32*, %TName_List_Int32** %f1l, align 8
  %"$len_call_1081" = call %Uint32 %"$len_fptr_1078"(i8* %"$len_envptr_1079", %TName_List_Int32* %"$f1l_1080")
  store %Uint32 %"$len_call_1081", %Uint32* %"$len_14", align 4
  %"$$len_14_1082" = load %Uint32, %Uint32* %"$len_14", align 4
  store %Uint32 %"$$len_14_1082", %Uint32* %"$expr_50", align 4
  br label %"$matchsucc_989"

"$False_1083":                                    ; preds = %"$have_gas_987"
  %"$some_bool_1084" = bitcast %TName_Bool* %"$some_bool_990" to %CName_False*
  %"$gasrem_1085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1086" = icmp ugt i64 1, %"$gasrem_1085"
  br i1 %"$gascmp_1086", label %"$out_of_gas_1087", label %"$have_gas_1088"

"$out_of_gas_1087":                               ; preds = %"$False_1083"
  call void @_out_of_gas()
  br label %"$have_gas_1088"

"$have_gas_1088":                                 ; preds = %"$out_of_gas_1087", %"$False_1083"
  %"$consume_1089" = sub i64 %"$gasrem_1085", 1
  store i64 %"$consume_1089", i64* @_gasrem, align 8
  %f22 = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_1090" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1091" = icmp ugt i64 1, %"$gasrem_1090"
  br i1 %"$gascmp_1091", label %"$out_of_gas_1092", label %"$have_gas_1093"

"$out_of_gas_1092":                               ; preds = %"$have_gas_1088"
  call void @_out_of_gas()
  br label %"$have_gas_1093"

"$have_gas_1093":                                 ; preds = %"$out_of_gas_1092", %"$have_gas_1088"
  %"$consume_1094" = sub i64 %"$gasrem_1090", 1
  store i64 %"$consume_1094", i64* @_gasrem, align 8
  %"$t_1095" = load { i8*, i8* }*, { i8*, i8* }** %t, align 8
  %"$t_1096" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_1095", i32 2
  %"$t_1097" = bitcast { i8*, i8* }* %"$t_1096" to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_1098" = load { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_1097", align 8
  %"$t_fptr_1099" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_1098", 0
  %"$t_envptr_1100" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_1098", 1
  %"$t_call_1101" = call { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_1099"(i8* %"$t_envptr_1100")
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_1101", { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22, align 8
  %"$gasrem_1102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1103" = icmp ugt i64 1, %"$gasrem_1102"
  br i1 %"$gascmp_1103", label %"$out_of_gas_1104", label %"$have_gas_1105"

"$out_of_gas_1104":                               ; preds = %"$have_gas_1093"
  call void @_out_of_gas()
  br label %"$have_gas_1105"

"$have_gas_1105":                                 ; preds = %"$out_of_gas_1104", %"$have_gas_1093"
  %"$consume_1106" = sub i64 %"$gasrem_1102", 1
  store i64 %"$consume_1106", i64* @_gasrem, align 8
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_1107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1108" = icmp ugt i64 1, %"$gasrem_1107"
  br i1 %"$gascmp_1108", label %"$out_of_gas_1109", label %"$have_gas_1110"

"$out_of_gas_1109":                               ; preds = %"$have_gas_1105"
  call void @_out_of_gas()
  br label %"$have_gas_1110"

"$have_gas_1110":                                 ; preds = %"$out_of_gas_1109", %"$have_gas_1105"
  %"$consume_1111" = sub i64 %"$gasrem_1107", 1
  store i64 %"$consume_1111", i64* @_gasrem, align 8
  %"$f22_15" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$f22_1112" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22, align 8
  %"$f22_fptr_1113" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_1112", 0
  %"$f22_envptr_1114" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_1112", 1
  %"$t2_1115" = load { i8*, i8* }*, { i8*, i8* }** %t2, align 8
  %"$f22_call_1116" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_fptr_1113"(i8* %"$f22_envptr_1114", { i8*, i8* }* %"$t2_1115")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_call_1116", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_15", align 8
  %"$$f22_15_1117" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_15", align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$f22_15_1117", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8
  %"$gasrem_1118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1119" = icmp ugt i64 1, %"$gasrem_1118"
  br i1 %"$gascmp_1119", label %"$out_of_gas_1120", label %"$have_gas_1121"

"$out_of_gas_1120":                               ; preds = %"$have_gas_1110"
  call void @_out_of_gas()
  br label %"$have_gas_1121"

"$have_gas_1121":                                 ; preds = %"$out_of_gas_1120", %"$have_gas_1110"
  %"$consume_1122" = sub i64 %"$gasrem_1118", 1
  store i64 %"$consume_1122", i64* @_gasrem, align 8
  %len1 = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_1123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1124" = icmp ugt i64 1, %"$gasrem_1123"
  br i1 %"$gascmp_1124", label %"$out_of_gas_1125", label %"$have_gas_1126"

"$out_of_gas_1125":                               ; preds = %"$have_gas_1121"
  call void @_out_of_gas()
  br label %"$have_gas_1126"

"$have_gas_1126":                                 ; preds = %"$out_of_gas_1125", %"$have_gas_1121"
  %"$consume_1127" = sub i64 %"$gasrem_1123", 1
  store i64 %"$consume_1127", i64* @_gasrem, align 8
  %"$ListUtils.list_length_1128" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_1129" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_1128", i32 2
  %"$ListUtils.list_length_1130" = bitcast { i8*, i8* }* %"$ListUtils.list_length_1129" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1131" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_1130", align 8
  %"$ListUtils.list_length_fptr_1132" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1131", 0
  %"$ListUtils.list_length_envptr_1133" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1131", 1
  %"$ListUtils.list_length_call_1134" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_fptr_1132"(i8* %"$ListUtils.list_length_envptr_1133")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_call_1134", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8
  %"$gasrem_1135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1136" = icmp ugt i64 1, %"$gasrem_1135"
  br i1 %"$gascmp_1136", label %"$out_of_gas_1137", label %"$have_gas_1138"

"$out_of_gas_1137":                               ; preds = %"$have_gas_1126"
  call void @_out_of_gas()
  br label %"$have_gas_1138"

"$have_gas_1138":                                 ; preds = %"$out_of_gas_1137", %"$have_gas_1126"
  %"$consume_1139" = sub i64 %"$gasrem_1135", 1
  store i64 %"$consume_1139", i64* @_gasrem, align 8
  %one2 = alloca %Int64, align 8
  %"$gasrem_1140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1141" = icmp ugt i64 1, %"$gasrem_1140"
  br i1 %"$gascmp_1141", label %"$out_of_gas_1142", label %"$have_gas_1143"

"$out_of_gas_1142":                               ; preds = %"$have_gas_1138"
  call void @_out_of_gas()
  br label %"$have_gas_1143"

"$have_gas_1143":                                 ; preds = %"$out_of_gas_1142", %"$have_gas_1138"
  %"$consume_1144" = sub i64 %"$gasrem_1140", 1
  store i64 %"$consume_1144", i64* @_gasrem, align 8
  store %Int64 { i64 1 }, %Int64* %one2, align 8
  %"$gasrem_1145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1146" = icmp ugt i64 1, %"$gasrem_1145"
  br i1 %"$gascmp_1146", label %"$out_of_gas_1147", label %"$have_gas_1148"

"$out_of_gas_1147":                               ; preds = %"$have_gas_1143"
  call void @_out_of_gas()
  br label %"$have_gas_1148"

"$have_gas_1148":                                 ; preds = %"$out_of_gas_1147", %"$have_gas_1143"
  %"$consume_1149" = sub i64 %"$gasrem_1145", 1
  store i64 %"$consume_1149", i64* @_gasrem, align 8
  %f2l = alloca %TName_List_Int64*, align 8
  %"$gasrem_1150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1151" = icmp ugt i64 1, %"$gasrem_1150"
  br i1 %"$gascmp_1151", label %"$out_of_gas_1152", label %"$have_gas_1153"

"$out_of_gas_1152":                               ; preds = %"$have_gas_1148"
  call void @_out_of_gas()
  br label %"$have_gas_1153"

"$have_gas_1153":                                 ; preds = %"$out_of_gas_1152", %"$have_gas_1148"
  %"$consume_1154" = sub i64 %"$gasrem_1150", 1
  store i64 %"$consume_1154", i64* @_gasrem, align 8
  %"$f2_16" = alloca %TName_List_Int64*, align 8
  %"$f2_1155" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8
  %"$f2_fptr_1156" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1155", 0
  %"$f2_envptr_1157" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1155", 1
  %"$one_1158" = load %Int64, %Int64* %one2, align 8
  %"$f2_call_1159" = call %TName_List_Int64* %"$f2_fptr_1156"(i8* %"$f2_envptr_1157", %Int64 %"$one_1158")
  store %TName_List_Int64* %"$f2_call_1159", %TName_List_Int64** %"$f2_16", align 8
  %"$$f2_16_1160" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_16", align 8
  store %TName_List_Int64* %"$$f2_16_1160", %TName_List_Int64** %f2l, align 8
  %"$gasrem_1161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1162" = icmp ugt i64 1, %"$gasrem_1161"
  br i1 %"$gascmp_1162", label %"$out_of_gas_1163", label %"$have_gas_1164"

"$out_of_gas_1163":                               ; preds = %"$have_gas_1153"
  call void @_out_of_gas()
  br label %"$have_gas_1164"

"$have_gas_1164":                                 ; preds = %"$out_of_gas_1163", %"$have_gas_1153"
  %"$consume_1165" = sub i64 %"$gasrem_1161", 1
  store i64 %"$consume_1165", i64* @_gasrem, align 8
  %"$len_17" = alloca %Uint32, align 8
  %"$len_1166" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8
  %"$len_fptr_1167" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1166", 0
  %"$len_envptr_1168" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1166", 1
  %"$f2l_1169" = load %TName_List_Int64*, %TName_List_Int64** %f2l, align 8
  %"$len_call_1170" = call %Uint32 %"$len_fptr_1167"(i8* %"$len_envptr_1168", %TName_List_Int64* %"$f2l_1169")
  store %Uint32 %"$len_call_1170", %Uint32* %"$len_17", align 4
  %"$$len_17_1171" = load %Uint32, %Uint32* %"$len_17", align 4
  store %Uint32 %"$$len_17_1171", %Uint32* %"$expr_50", align 4
  br label %"$matchsucc_989"

"$empty_default_993":                             ; preds = %"$have_gas_987"
  br label %"$matchsucc_989"

"$matchsucc_989":                                 ; preds = %"$have_gas_1164", %"$have_gas_1075", %"$empty_default_993"
  %"$$expr_50_1172" = load %Uint32, %Uint32* %"$expr_50", align 4
  ret %Uint32 %"$$expr_50_1172"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1173" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_1174" = alloca %Uint32, align 8
  %"$memvoidcast_1175" = bitcast %Uint32* %"$pval_1174" to i8*
  store %Uint32 %"$exprval_1173", %Uint32* %"$pval_1174", align 4
  %"$execptr_load_1176" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1176", %_TyDescrTy_Typ* @"$TyDescr_Uint32_79", i8* %"$memvoidcast_1175")
  ret void
}
