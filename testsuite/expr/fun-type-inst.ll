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
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_69" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_99" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_98"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_98" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_100"**, %"$TyDescrTy_ADTTyp_99"* }
%"$TyDescrTy_ADTTyp_Constr_100" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$ParamDescr_1135" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1136" = type { %ParamDescrString, i32, %"$ParamDescr_1135"* }
%TName_List_Int64 = type { i8, %CName_Cons_Int64*, %CName_Nil_Int64* }
%CName_Cons_Int64 = type <{ i8, %Int64, %TName_List_Int64* }>
%CName_Nil_Int64 = type <{ i8 }>
%Int64 = type { i64 }
%"$$fundef_67_env_140" = type {}
%"$$fundef_65_env_141" = type {}
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>
%Int32 = type { i32 }
%"$$fundef_63_env_142" = type {}
%"$$fundef_61_env_143" = type {}
%"$$fundef_59_env_144" = type {}
%"$$fundef_57_env_145" = type {}
%"$$fundef_55_env_146" = type {}
%"$$fundef_53_env_147" = type {}
%"$$fundef_51_env_148" = type {}
%"$$fundef_49_env_149" = type {}
%"$$fundef_47_env_150" = type {}
%"$$fundef_45_env_151" = type {}
%Uint32 = type { i32 }
%"$$fundef_42_env_152" = type { %Uint32, %Uint32 }
%"$$fundef_40_env_153" = type { %Uint32 }
%"$$fundef_38_env_154" = type { { i8*, i8* }* }
%"$$fundef_36_env_155" = type { %Uint32, %Uint32 }
%"$$fundef_34_env_156" = type { %Uint32 }
%"$$fundef_32_env_157" = type { { i8*, i8* }* }
%"$$fundef_30_env_158" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_28_env_159" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_26_env_160" = type {}
%"$$fundef_24_env_161" = type {}
%"$$fundef_22_env_162" = type {}
%"$$fundef_20_env_163" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_18_env_164" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_16_env_165" = type {}
%"$$fundef_14_env_166" = type {}
%"$$fundef_12_env_167" = type {}
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
@"$TyDescr_ADT_Bool_101" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_98"* @"$TyDescr_Bool_ADTTyp_Specl_116" to i8*) }
@"$TyDescr_ADT_List_Int64_102" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_98"* @"$TyDescr_List_Int64_ADTTyp_Specl_128" to i8*) }
@"$TyDescr_ADT_List_Int32_103" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_98"* @"$TyDescr_List_Int32_ADTTyp_Specl_137" to i8*) }
@"$TyDescr_Bool_ADTTyp_107" = unnamed_addr constant %"$TyDescrTy_ADTTyp_99" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_118", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_98"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_98"*], [1 x %"$TyDescrTy_ADTTyp_Specl_98"*]* @"$TyDescr_Bool_ADTTyp_m_specls_117", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_108" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_109" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_110" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_100" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_109", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_108", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_111" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_112" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_113" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_100" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_112", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_111", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_114" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_100"*] [%"$TyDescrTy_ADTTyp_Constr_100"* @"$TyDescr_Bool_True_ADTTyp_Constr_110", %"$TyDescrTy_ADTTyp_Constr_100"* @"$TyDescr_Bool_False_ADTTyp_Constr_113"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_115" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_116" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_98" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_115", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_100"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_100"*], [2 x %"$TyDescrTy_ADTTyp_Constr_100"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_114", i32 0, i32 0), %"$TyDescrTy_ADTTyp_99"* @"$TyDescr_Bool_ADTTyp_107" }
@"$TyDescr_Bool_ADTTyp_m_specls_117" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_98"*] [%"$TyDescrTy_ADTTyp_Specl_98"* @"$TyDescr_Bool_ADTTyp_Specl_116"]
@"$TyDescr_ADT_Bool_118" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_119" = unnamed_addr constant %"$TyDescrTy_ADTTyp_99" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_139", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_98"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_98"*], [2 x %"$TyDescrTy_ADTTyp_Specl_98"*]* @"$TyDescr_List_ADTTyp_m_specls_138", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int64_Constr_m_args_120" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_75", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int64_102"]
@"$TyDescr_ADT_Cons_121" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int64_ADTTyp_Constr_122" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_100" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_121", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int64_Constr_m_args_120", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int64_Constr_m_args_123" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_124" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int64_ADTTyp_Constr_125" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_100" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_124", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int64_Constr_m_args_123", i32 0, i32 0) }
@"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_126" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_100"*] [%"$TyDescrTy_ADTTyp_Constr_100"* @"$TyDescr_List_Cons_Int64_ADTTyp_Constr_122", %"$TyDescrTy_ADTTyp_Constr_100"* @"$TyDescr_List_Nil_Int64_ADTTyp_Constr_125"]
@"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_127" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_75"]
@"$TyDescr_List_Int64_ADTTyp_Specl_128" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_98" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_127", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_100"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_100"*], [2 x %"$TyDescrTy_ADTTyp_Constr_100"*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_126", i32 0, i32 0), %"$TyDescrTy_ADTTyp_99"* @"$TyDescr_List_ADTTyp_119" }
@"$TyDescr_List_Cons_Int32_Constr_m_args_129" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_71", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_103"]
@"$TyDescr_ADT_Cons_130" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_131" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_100" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_130", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_129", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_132" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_133" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_134" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_100" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_133", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_132", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_135" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_100"*] [%"$TyDescrTy_ADTTyp_Constr_100"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_131", %"$TyDescrTy_ADTTyp_Constr_100"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_134"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_136" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_71"]
@"$TyDescr_List_Int32_ADTTyp_Specl_137" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_98" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_136", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_100"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_100"*], [2 x %"$TyDescrTy_ADTTyp_Constr_100"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_135", i32 0, i32 0), %"$TyDescrTy_ADTTyp_99"* @"$TyDescr_List_ADTTyp_119" }
@"$TyDescr_List_ADTTyp_m_specls_138" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_98"*] [%"$TyDescrTy_ADTTyp_Specl_98"* @"$TyDescr_List_Int64_ADTTyp_Specl_128", %"$TyDescrTy_ADTTyp_Specl_98"* @"$TyDescr_List_Int32_ADTTyp_Specl_137"]
@"$TyDescr_ADT_List_139" = unnamed_addr constant [4 x i8] c"List"
@list_foldl = global { i8*, i8* }* null
@ListUtils.list_length = global { i8*, i8* }* null
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_93", %_TyDescrTy_Typ* @"$TyDescr_Int64_75", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_101", %_TyDescrTy_Typ* @"$TyDescr_Uint256_85", %_TyDescrTy_Typ* @"$TyDescr_Uint32_73", %_TyDescrTy_Typ* @"$TyDescr_Uint64_77", %_TyDescrTy_Typ* @"$TyDescr_Bnum_89", %_TyDescrTy_Typ* @"$TyDescr_Uint128_81", %_TyDescrTy_Typ* @"$TyDescr_Exception_95", %_TyDescrTy_Typ* @"$TyDescr_String_87", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int64_102", %_TyDescrTy_Typ* @"$TyDescr_Int256_83", %_TyDescrTy_Typ* @"$TyDescr_Int128_79", %_TyDescrTy_Typ* @"$TyDescr_Bystr_97", %_TyDescrTy_Typ* @"$TyDescr_Message_91", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_103", %_TyDescrTy_Typ* @"$TyDescr_Int32_71"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_1135"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1136"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_67"(%"$$fundef_67_env_140"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_68" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_820" = load i64, i64* @_gasrem, align 8
  %"$gascmp_821" = icmp ugt i64 1, %"$gasrem_820"
  br i1 %"$gascmp_821", label %"$out_of_gas_822", label %"$have_gas_823"

"$out_of_gas_822":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_823"

"$have_gas_823":                                  ; preds = %"$out_of_gas_822", %entry
  %"$consume_824" = sub i64 %"$gasrem_820", 1
  store i64 %"$consume_824", i64* @_gasrem, align 8
  %"$f_825" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 2
  %"$f_826" = bitcast { i8*, i8* }* %"$f_825" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_827" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_826", align 8
  %"$f_fptr_828" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_827", 0
  %"$f_envptr_829" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_827", 1
  %"$f_call_830" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_828"(i8* %"$f_envptr_829")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_830", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_68", align 8
  %"$$retval_68_831" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_68", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_68_831"
}

define internal { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_65"(%"$$fundef_65_env_141"* %0) {
entry:
  %"$retval_66" = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_811" = load i64, i64* @_gasrem, align 8
  %"$gascmp_812" = icmp ugt i64 1, %"$gasrem_811"
  br i1 %"$gascmp_812", label %"$out_of_gas_813", label %"$have_gas_814"

"$out_of_gas_813":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_814"

"$have_gas_814":                                  ; preds = %"$out_of_gas_813", %entry
  %"$consume_815" = sub i64 %"$gasrem_811", 1
  store i64 %"$consume_815", i64* @_gasrem, align 8
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_67_env_140"*, { i8*, i8* }*)* @"$fundef_67" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66", align 8
  %"$$retval_66_819" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66", align 8
  ret { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_66_819"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_63"(%"$$fundef_63_env_142"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_64" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_800" = icmp ugt i64 1, %"$gasrem_799"
  br i1 %"$gascmp_800", label %"$out_of_gas_801", label %"$have_gas_802"

"$out_of_gas_801":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_802"

"$have_gas_802":                                  ; preds = %"$out_of_gas_801", %entry
  %"$consume_803" = sub i64 %"$gasrem_799", 1
  store i64 %"$consume_803", i64* @_gasrem, align 8
  %"$f_804" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$f_805" = bitcast { i8*, i8* }* %"$f_804" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_806" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_805", align 8
  %"$f_fptr_807" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_806", 0
  %"$f_envptr_808" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_806", 1
  %"$f_call_809" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_807"(i8* %"$f_envptr_808")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_809", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_64", align 8
  %"$$retval_64_810" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_64", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_64_810"
}

define internal { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_61"(%"$$fundef_61_env_143"* %0) {
entry:
  %"$retval_62" = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_790" = load i64, i64* @_gasrem, align 8
  %"$gascmp_791" = icmp ugt i64 1, %"$gasrem_790"
  br i1 %"$gascmp_791", label %"$out_of_gas_792", label %"$have_gas_793"

"$out_of_gas_792":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_793"

"$have_gas_793":                                  ; preds = %"$out_of_gas_792", %entry
  %"$consume_794" = sub i64 %"$gasrem_790", 1
  store i64 %"$consume_794", i64* @_gasrem, align 8
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_63_env_142"*, { i8*, i8* }*)* @"$fundef_63" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62", align 8
  %"$$retval_62_798" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62", align 8
  ret { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_62_798"
}

define internal %TName_List_Int64* @"$fundef_59"(%"$$fundef_59_env_144"* %0, %Int64 %1) {
entry:
  %"$retval_60" = alloca %TName_List_Int64*, align 8
  %"$gasrem_749" = load i64, i64* @_gasrem, align 8
  %"$gascmp_750" = icmp ugt i64 1, %"$gasrem_749"
  br i1 %"$gascmp_750", label %"$out_of_gas_751", label %"$have_gas_752"

"$out_of_gas_751":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_752"

"$have_gas_752":                                  ; preds = %"$out_of_gas_751", %entry
  %"$consume_753" = sub i64 %"$gasrem_749", 1
  store i64 %"$consume_753", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
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
  %"$adtval_759" = bitcast i8* %"$adtval_759_salloc" to %CName_Nil_Int64*
  %"$adtgep_760" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_759", i32 0, i32 0
  store i8 1, i8* %"$adtgep_760", align 1
  %"$adtptr_761" = bitcast %CName_Nil_Int64* %"$adtval_759" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_761", %TName_List_Int64** %an, align 8
  %"$gasrem_762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_763" = icmp ugt i64 1, %"$gasrem_762"
  br i1 %"$gascmp_763", label %"$out_of_gas_764", label %"$have_gas_765"

"$out_of_gas_764":                                ; preds = %"$have_gas_757"
  call void @_out_of_gas()
  br label %"$have_gas_765"

"$have_gas_765":                                  ; preds = %"$out_of_gas_764", %"$have_gas_757"
  %"$consume_766" = sub i64 %"$gasrem_762", 1
  store i64 %"$consume_766", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int64*, align 8
  %"$gasrem_767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_768" = icmp ugt i64 1, %"$gasrem_767"
  br i1 %"$gascmp_768", label %"$out_of_gas_769", label %"$have_gas_770"

"$out_of_gas_769":                                ; preds = %"$have_gas_765"
  call void @_out_of_gas()
  br label %"$have_gas_770"

"$have_gas_770":                                  ; preds = %"$out_of_gas_769", %"$have_gas_765"
  %"$consume_771" = sub i64 %"$gasrem_767", 1
  store i64 %"$consume_771", i64* @_gasrem, align 8
  %"$an_772" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_773_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_773_salloc" = call i8* @_salloc(i8* %"$adtval_773_load", i64 17)
  %"$adtval_773" = bitcast i8* %"$adtval_773_salloc" to %CName_Cons_Int64*
  %"$adtgep_774" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_773", i32 0, i32 0
  store i8 0, i8* %"$adtgep_774", align 1
  %"$adtgep_775" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_773", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_775", align 8
  %"$adtgep_776" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_773", i32 0, i32 2
  store %TName_List_Int64* %"$an_772", %TName_List_Int64** %"$adtgep_776", align 8
  %"$adtptr_777" = bitcast %CName_Cons_Int64* %"$adtval_773" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_777", %TName_List_Int64** %a1, align 8
  %"$gasrem_778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_779" = icmp ugt i64 1, %"$gasrem_778"
  br i1 %"$gascmp_779", label %"$out_of_gas_780", label %"$have_gas_781"

"$out_of_gas_780":                                ; preds = %"$have_gas_770"
  call void @_out_of_gas()
  br label %"$have_gas_781"

"$have_gas_781":                                  ; preds = %"$out_of_gas_780", %"$have_gas_770"
  %"$consume_782" = sub i64 %"$gasrem_778", 1
  store i64 %"$consume_782", i64* @_gasrem, align 8
  %"$a1_783" = load %TName_List_Int64*, %TName_List_Int64** %a1, align 8
  %"$adtval_784_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_784_salloc" = call i8* @_salloc(i8* %"$adtval_784_load", i64 17)
  %"$adtval_784" = bitcast i8* %"$adtval_784_salloc" to %CName_Cons_Int64*
  %"$adtgep_785" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_784", i32 0, i32 0
  store i8 0, i8* %"$adtgep_785", align 1
  %"$adtgep_786" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_784", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_786", align 8
  %"$adtgep_787" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_784", i32 0, i32 2
  store %TName_List_Int64* %"$a1_783", %TName_List_Int64** %"$adtgep_787", align 8
  %"$adtptr_788" = bitcast %CName_Cons_Int64* %"$adtval_784" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_788", %TName_List_Int64** %"$retval_60", align 8
  %"$$retval_60_789" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_60", align 8
  ret %TName_List_Int64* %"$$retval_60_789"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_57"(%"$$fundef_57_env_145"* %0) {
entry:
  %"$retval_58" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_741" = icmp ugt i64 1, %"$gasrem_740"
  br i1 %"$gascmp_741", label %"$out_of_gas_742", label %"$have_gas_743"

"$out_of_gas_742":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_743"

"$have_gas_743":                                  ; preds = %"$out_of_gas_742", %entry
  %"$consume_744" = sub i64 %"$gasrem_740", 1
  store i64 %"$consume_744", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_59_env_144"*, %Int64)* @"$fundef_59" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_58", align 8
  %"$$retval_58_748" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_58", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_58_748"
}

define internal %TName_List_Int32* @"$fundef_55"(%"$$fundef_55_env_146"* %0, %Int32 %1) {
entry:
  %"$retval_56" = alloca %TName_List_Int32*, align 8
  %"$gasrem_699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_700" = icmp ugt i64 1, %"$gasrem_699"
  br i1 %"$gascmp_700", label %"$out_of_gas_701", label %"$have_gas_702"

"$out_of_gas_701":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_702"

"$have_gas_702":                                  ; preds = %"$out_of_gas_701", %entry
  %"$consume_703" = sub i64 %"$gasrem_699", 1
  store i64 %"$consume_703", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  %"$gasrem_704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_705" = icmp ugt i64 1, %"$gasrem_704"
  br i1 %"$gascmp_705", label %"$out_of_gas_706", label %"$have_gas_707"

"$out_of_gas_706":                                ; preds = %"$have_gas_702"
  call void @_out_of_gas()
  br label %"$have_gas_707"

"$have_gas_707":                                  ; preds = %"$out_of_gas_706", %"$have_gas_702"
  %"$consume_708" = sub i64 %"$gasrem_704", 1
  store i64 %"$consume_708", i64* @_gasrem, align 8
  %"$adtval_709_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_709_salloc" = call i8* @_salloc(i8* %"$adtval_709_load", i64 1)
  %"$adtval_709" = bitcast i8* %"$adtval_709_salloc" to %CName_Nil_Int32*
  %"$adtgep_710" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_709", i32 0, i32 0
  store i8 1, i8* %"$adtgep_710", align 1
  %"$adtptr_711" = bitcast %CName_Nil_Int32* %"$adtval_709" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_711", %TName_List_Int32** %an, align 8
  %"$gasrem_712" = load i64, i64* @_gasrem, align 8
  %"$gascmp_713" = icmp ugt i64 1, %"$gasrem_712"
  br i1 %"$gascmp_713", label %"$out_of_gas_714", label %"$have_gas_715"

"$out_of_gas_714":                                ; preds = %"$have_gas_707"
  call void @_out_of_gas()
  br label %"$have_gas_715"

"$have_gas_715":                                  ; preds = %"$out_of_gas_714", %"$have_gas_707"
  %"$consume_716" = sub i64 %"$gasrem_712", 1
  store i64 %"$consume_716", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int32*, align 8
  %"$gasrem_717" = load i64, i64* @_gasrem, align 8
  %"$gascmp_718" = icmp ugt i64 1, %"$gasrem_717"
  br i1 %"$gascmp_718", label %"$out_of_gas_719", label %"$have_gas_720"

"$out_of_gas_719":                                ; preds = %"$have_gas_715"
  call void @_out_of_gas()
  br label %"$have_gas_720"

"$have_gas_720":                                  ; preds = %"$out_of_gas_719", %"$have_gas_715"
  %"$consume_721" = sub i64 %"$gasrem_717", 1
  store i64 %"$consume_721", i64* @_gasrem, align 8
  %"$an_722" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_723_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_723_salloc" = call i8* @_salloc(i8* %"$adtval_723_load", i64 13)
  %"$adtval_723" = bitcast i8* %"$adtval_723_salloc" to %CName_Cons_Int32*
  %"$adtgep_724" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_723", i32 0, i32 0
  store i8 0, i8* %"$adtgep_724", align 1
  %"$adtgep_725" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_723", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_725", align 4
  %"$adtgep_726" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_723", i32 0, i32 2
  store %TName_List_Int32* %"$an_722", %TName_List_Int32** %"$adtgep_726", align 8
  %"$adtptr_727" = bitcast %CName_Cons_Int32* %"$adtval_723" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_727", %TName_List_Int32** %a1, align 8
  %"$gasrem_728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_729" = icmp ugt i64 1, %"$gasrem_728"
  br i1 %"$gascmp_729", label %"$out_of_gas_730", label %"$have_gas_731"

"$out_of_gas_730":                                ; preds = %"$have_gas_720"
  call void @_out_of_gas()
  br label %"$have_gas_731"

"$have_gas_731":                                  ; preds = %"$out_of_gas_730", %"$have_gas_720"
  %"$consume_732" = sub i64 %"$gasrem_728", 1
  store i64 %"$consume_732", i64* @_gasrem, align 8
  %"$a1_733" = load %TName_List_Int32*, %TName_List_Int32** %a1, align 8
  %"$adtval_734_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_734_salloc" = call i8* @_salloc(i8* %"$adtval_734_load", i64 13)
  %"$adtval_734" = bitcast i8* %"$adtval_734_salloc" to %CName_Cons_Int32*
  %"$adtgep_735" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_734", i32 0, i32 0
  store i8 0, i8* %"$adtgep_735", align 1
  %"$adtgep_736" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_734", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_736", align 4
  %"$adtgep_737" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_734", i32 0, i32 2
  store %TName_List_Int32* %"$a1_733", %TName_List_Int32** %"$adtgep_737", align 8
  %"$adtptr_738" = bitcast %CName_Cons_Int32* %"$adtval_734" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_738", %TName_List_Int32** %"$retval_56", align 8
  %"$$retval_56_739" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_56", align 8
  ret %TName_List_Int32* %"$$retval_56_739"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_53"(%"$$fundef_53_env_147"* %0) {
entry:
  %"$retval_54" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_691" = icmp ugt i64 1, %"$gasrem_690"
  br i1 %"$gascmp_691", label %"$out_of_gas_692", label %"$have_gas_693"

"$out_of_gas_692":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_693"

"$have_gas_693":                                  ; preds = %"$out_of_gas_692", %entry
  %"$consume_694" = sub i64 %"$gasrem_690", 1
  store i64 %"$consume_694", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_55_env_146"*, %Int32)* @"$fundef_55" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_54", align 8
  %"$$retval_54_698" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_54", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_54_698"
}

define internal %TName_List_Int64* @"$fundef_51"(%"$$fundef_51_env_148"* %0, %Int64 %1) {
entry:
  %"$retval_52" = alloca %TName_List_Int64*, align 8
  %"$gasrem_665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_666" = icmp ugt i64 1, %"$gasrem_665"
  br i1 %"$gascmp_666", label %"$out_of_gas_667", label %"$have_gas_668"

"$out_of_gas_667":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_668"

"$have_gas_668":                                  ; preds = %"$out_of_gas_667", %entry
  %"$consume_669" = sub i64 %"$gasrem_665", 1
  store i64 %"$consume_669", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  %"$gasrem_670" = load i64, i64* @_gasrem, align 8
  %"$gascmp_671" = icmp ugt i64 1, %"$gasrem_670"
  br i1 %"$gascmp_671", label %"$out_of_gas_672", label %"$have_gas_673"

"$out_of_gas_672":                                ; preds = %"$have_gas_668"
  call void @_out_of_gas()
  br label %"$have_gas_673"

"$have_gas_673":                                  ; preds = %"$out_of_gas_672", %"$have_gas_668"
  %"$consume_674" = sub i64 %"$gasrem_670", 1
  store i64 %"$consume_674", i64* @_gasrem, align 8
  %"$adtval_675_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_675_salloc" = call i8* @_salloc(i8* %"$adtval_675_load", i64 1)
  %"$adtval_675" = bitcast i8* %"$adtval_675_salloc" to %CName_Nil_Int64*
  %"$adtgep_676" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_675", i32 0, i32 0
  store i8 1, i8* %"$adtgep_676", align 1
  %"$adtptr_677" = bitcast %CName_Nil_Int64* %"$adtval_675" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_677", %TName_List_Int64** %an, align 8
  %"$gasrem_678" = load i64, i64* @_gasrem, align 8
  %"$gascmp_679" = icmp ugt i64 1, %"$gasrem_678"
  br i1 %"$gascmp_679", label %"$out_of_gas_680", label %"$have_gas_681"

"$out_of_gas_680":                                ; preds = %"$have_gas_673"
  call void @_out_of_gas()
  br label %"$have_gas_681"

"$have_gas_681":                                  ; preds = %"$out_of_gas_680", %"$have_gas_673"
  %"$consume_682" = sub i64 %"$gasrem_678", 1
  store i64 %"$consume_682", i64* @_gasrem, align 8
  %"$an_683" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_684_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_684_salloc" = call i8* @_salloc(i8* %"$adtval_684_load", i64 17)
  %"$adtval_684" = bitcast i8* %"$adtval_684_salloc" to %CName_Cons_Int64*
  %"$adtgep_685" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_684", i32 0, i32 0
  store i8 0, i8* %"$adtgep_685", align 1
  %"$adtgep_686" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_684", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_686", align 8
  %"$adtgep_687" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_684", i32 0, i32 2
  store %TName_List_Int64* %"$an_683", %TName_List_Int64** %"$adtgep_687", align 8
  %"$adtptr_688" = bitcast %CName_Cons_Int64* %"$adtval_684" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_688", %TName_List_Int64** %"$retval_52", align 8
  %"$$retval_52_689" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_52", align 8
  ret %TName_List_Int64* %"$$retval_52_689"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_49"(%"$$fundef_49_env_149"* %0) {
entry:
  %"$retval_50" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_656" = load i64, i64* @_gasrem, align 8
  %"$gascmp_657" = icmp ugt i64 1, %"$gasrem_656"
  br i1 %"$gascmp_657", label %"$out_of_gas_658", label %"$have_gas_659"

"$out_of_gas_658":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_659"

"$have_gas_659":                                  ; preds = %"$out_of_gas_658", %entry
  %"$consume_660" = sub i64 %"$gasrem_656", 1
  store i64 %"$consume_660", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_51_env_148"*, %Int64)* @"$fundef_51" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_50", align 8
  %"$$retval_50_664" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_50", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_50_664"
}

define internal %TName_List_Int32* @"$fundef_47"(%"$$fundef_47_env_150"* %0, %Int32 %1) {
entry:
  %"$retval_48" = alloca %TName_List_Int32*, align 8
  %"$gasrem_631" = load i64, i64* @_gasrem, align 8
  %"$gascmp_632" = icmp ugt i64 1, %"$gasrem_631"
  br i1 %"$gascmp_632", label %"$out_of_gas_633", label %"$have_gas_634"

"$out_of_gas_633":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_634"

"$have_gas_634":                                  ; preds = %"$out_of_gas_633", %entry
  %"$consume_635" = sub i64 %"$gasrem_631", 1
  store i64 %"$consume_635", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  %"$gasrem_636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_637" = icmp ugt i64 1, %"$gasrem_636"
  br i1 %"$gascmp_637", label %"$out_of_gas_638", label %"$have_gas_639"

"$out_of_gas_638":                                ; preds = %"$have_gas_634"
  call void @_out_of_gas()
  br label %"$have_gas_639"

"$have_gas_639":                                  ; preds = %"$out_of_gas_638", %"$have_gas_634"
  %"$consume_640" = sub i64 %"$gasrem_636", 1
  store i64 %"$consume_640", i64* @_gasrem, align 8
  %"$adtval_641_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_641_salloc" = call i8* @_salloc(i8* %"$adtval_641_load", i64 1)
  %"$adtval_641" = bitcast i8* %"$adtval_641_salloc" to %CName_Nil_Int32*
  %"$adtgep_642" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_641", i32 0, i32 0
  store i8 1, i8* %"$adtgep_642", align 1
  %"$adtptr_643" = bitcast %CName_Nil_Int32* %"$adtval_641" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_643", %TName_List_Int32** %an, align 8
  %"$gasrem_644" = load i64, i64* @_gasrem, align 8
  %"$gascmp_645" = icmp ugt i64 1, %"$gasrem_644"
  br i1 %"$gascmp_645", label %"$out_of_gas_646", label %"$have_gas_647"

"$out_of_gas_646":                                ; preds = %"$have_gas_639"
  call void @_out_of_gas()
  br label %"$have_gas_647"

"$have_gas_647":                                  ; preds = %"$out_of_gas_646", %"$have_gas_639"
  %"$consume_648" = sub i64 %"$gasrem_644", 1
  store i64 %"$consume_648", i64* @_gasrem, align 8
  %"$an_649" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_650_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_650_salloc" = call i8* @_salloc(i8* %"$adtval_650_load", i64 13)
  %"$adtval_650" = bitcast i8* %"$adtval_650_salloc" to %CName_Cons_Int32*
  %"$adtgep_651" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_650", i32 0, i32 0
  store i8 0, i8* %"$adtgep_651", align 1
  %"$adtgep_652" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_650", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_652", align 4
  %"$adtgep_653" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_650", i32 0, i32 2
  store %TName_List_Int32* %"$an_649", %TName_List_Int32** %"$adtgep_653", align 8
  %"$adtptr_654" = bitcast %CName_Cons_Int32* %"$adtval_650" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_654", %TName_List_Int32** %"$retval_48", align 8
  %"$$retval_48_655" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_48", align 8
  ret %TName_List_Int32* %"$$retval_48_655"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_45"(%"$$fundef_45_env_151"* %0) {
entry:
  %"$retval_46" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_623" = icmp ugt i64 1, %"$gasrem_622"
  br i1 %"$gascmp_623", label %"$out_of_gas_624", label %"$have_gas_625"

"$out_of_gas_624":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_625"

"$have_gas_625":                                  ; preds = %"$out_of_gas_624", %entry
  %"$consume_626" = sub i64 %"$gasrem_622", 1
  store i64 %"$consume_626", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_47_env_150"*, %Int32)* @"$fundef_47" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_46", align 8
  %"$$retval_46_630" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_46", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_46_630"
}

define internal %Uint32 @"$fundef_42"(%"$$fundef_42_env_152"* %0, %Int64 %1) {
entry:
  %"$$fundef_42_env_one_614" = getelementptr inbounds %"$$fundef_42_env_152", %"$$fundef_42_env_152"* %0, i32 0, i32 0
  %"$one_envload_615" = load %Uint32, %Uint32* %"$$fundef_42_env_one_614", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_615", %Uint32* %one, align 4
  %"$$fundef_42_env_z_616" = getelementptr inbounds %"$$fundef_42_env_152", %"$$fundef_42_env_152"* %0, i32 0, i32 1
  %"$z_envload_617" = load %Uint32, %Uint32* %"$$fundef_42_env_z_616", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_617", %Uint32* %z, align 4
  %"$retval_43" = alloca %Uint32, align 8
  %"$one_618" = load %Uint32, %Uint32* %one, align 4
  %"$z_619" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_620" = call %Uint32 @_add_Uint32(%Uint32 %"$one_618", %Uint32 %"$z_619")
  store %Uint32 %"$add_call_620", %Uint32* %"$retval_43", align 4
  %"$$retval_43_621" = load %Uint32, %Uint32* %"$retval_43", align 4
  ret %Uint32 %"$$retval_43_621"
}

define internal { %Uint32 (i8*, %Int64)*, i8* } @"$fundef_40"(%"$$fundef_40_env_153"* %0, %Uint32 %1) {
entry:
  %"$$fundef_40_env_one_599" = getelementptr inbounds %"$$fundef_40_env_153", %"$$fundef_40_env_153"* %0, i32 0, i32 0
  %"$one_envload_600" = load %Uint32, %Uint32* %"$$fundef_40_env_one_599", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_600", %Uint32* %one, align 4
  %"$retval_41" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_602" = icmp ugt i64 1, %"$gasrem_601"
  br i1 %"$gascmp_602", label %"$out_of_gas_603", label %"$have_gas_604"

"$out_of_gas_603":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_604"

"$have_gas_604":                                  ; preds = %"$out_of_gas_603", %entry
  %"$consume_605" = sub i64 %"$gasrem_601", 1
  store i64 %"$consume_605", i64* @_gasrem, align 8
  %"$$fundef_42_envp_606_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_42_envp_606_salloc" = call i8* @_salloc(i8* %"$$fundef_42_envp_606_load", i64 8)
  %"$$fundef_42_envp_606" = bitcast i8* %"$$fundef_42_envp_606_salloc" to %"$$fundef_42_env_152"*
  %"$$fundef_42_env_voidp_608" = bitcast %"$$fundef_42_env_152"* %"$$fundef_42_envp_606" to i8*
  %"$$fundef_42_cloval_609" = insertvalue { %Uint32 (i8*, %Int64)*, i8* } { %Uint32 (i8*, %Int64)* bitcast (%Uint32 (%"$$fundef_42_env_152"*, %Int64)* @"$fundef_42" to %Uint32 (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_42_env_voidp_608", 1
  %"$$fundef_42_env_one_610" = getelementptr inbounds %"$$fundef_42_env_152", %"$$fundef_42_env_152"* %"$$fundef_42_envp_606", i32 0, i32 0
  %"$one_611" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_611", %Uint32* %"$$fundef_42_env_one_610", align 4
  %"$$fundef_42_env_z_612" = getelementptr inbounds %"$$fundef_42_env_152", %"$$fundef_42_env_152"* %"$$fundef_42_envp_606", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_42_env_z_612", align 4
  store { %Uint32 (i8*, %Int64)*, i8* } %"$$fundef_42_cloval_609", { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_41", align 8
  %"$$retval_41_613" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_41", align 8
  ret { %Uint32 (i8*, %Int64)*, i8* } %"$$retval_41_613"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_154"* %0) {
entry:
  %"$$fundef_38_env_list_foldl_521" = getelementptr inbounds %"$$fundef_38_env_154", %"$$fundef_38_env_154"* %0, i32 0, i32 0
  %"$list_foldl_envload_522" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_38_env_list_foldl_521", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_522", { i8*, i8* }** %list_foldl, align 8
  %"$retval_39" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_524" = icmp ugt i64 1, %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %entry
  %"$consume_527" = sub i64 %"$gasrem_523", 1
  store i64 %"$consume_527", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_529" = icmp ugt i64 1, %"$gasrem_528"
  br i1 %"$gascmp_529", label %"$out_of_gas_530", label %"$have_gas_531"

"$out_of_gas_530":                                ; preds = %"$have_gas_526"
  call void @_out_of_gas()
  br label %"$have_gas_531"

"$have_gas_531":                                  ; preds = %"$out_of_gas_530", %"$have_gas_526"
  %"$consume_532" = sub i64 %"$gasrem_528", 1
  store i64 %"$consume_532", i64* @_gasrem, align 8
  %"$list_foldl_533" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_534" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_533", i32 2
  %"$list_foldl_535" = bitcast { i8*, i8* }* %"$list_foldl_534" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_536" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_535", align 8
  %"$list_foldl_fptr_537" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_536", 0
  %"$list_foldl_envptr_538" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_536", 1
  %"$list_foldl_call_539" = call { i8*, i8* }* %"$list_foldl_fptr_537"(i8* %"$list_foldl_envptr_538")
  %"$list_foldl_540" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_539", i32 1
  %"$list_foldl_541" = bitcast { i8*, i8* }* %"$list_foldl_540" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_542" = load { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_541", align 8
  %"$list_foldl_fptr_543" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_542", 0
  %"$list_foldl_envptr_544" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_542", 1
  %"$list_foldl_call_545" = call { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_543"(i8* %"$list_foldl_envptr_544")
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_545", { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$gasrem_546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_547" = icmp ugt i64 1, %"$gasrem_546"
  br i1 %"$gascmp_547", label %"$out_of_gas_548", label %"$have_gas_549"

"$out_of_gas_548":                                ; preds = %"$have_gas_531"
  call void @_out_of_gas()
  br label %"$have_gas_549"

"$have_gas_549":                                  ; preds = %"$out_of_gas_548", %"$have_gas_531"
  %"$consume_550" = sub i64 %"$gasrem_546", 1
  store i64 %"$consume_550", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_552" = icmp ugt i64 1, %"$gasrem_551"
  br i1 %"$gascmp_552", label %"$out_of_gas_553", label %"$have_gas_554"

"$out_of_gas_553":                                ; preds = %"$have_gas_549"
  call void @_out_of_gas()
  br label %"$have_gas_554"

"$have_gas_554":                                  ; preds = %"$out_of_gas_553", %"$have_gas_549"
  %"$consume_555" = sub i64 %"$gasrem_551", 1
  store i64 %"$consume_555", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_557" = icmp ugt i64 1, %"$gasrem_556"
  br i1 %"$gascmp_557", label %"$out_of_gas_558", label %"$have_gas_559"

"$out_of_gas_558":                                ; preds = %"$have_gas_554"
  call void @_out_of_gas()
  br label %"$have_gas_559"

"$have_gas_559":                                  ; preds = %"$out_of_gas_558", %"$have_gas_554"
  %"$consume_560" = sub i64 %"$gasrem_556", 1
  store i64 %"$consume_560", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_562" = icmp ugt i64 1, %"$gasrem_561"
  br i1 %"$gascmp_562", label %"$out_of_gas_563", label %"$have_gas_564"

"$out_of_gas_563":                                ; preds = %"$have_gas_559"
  call void @_out_of_gas()
  br label %"$have_gas_564"

"$have_gas_564":                                  ; preds = %"$out_of_gas_563", %"$have_gas_559"
  %"$consume_565" = sub i64 %"$gasrem_561", 1
  store i64 %"$consume_565", i64* @_gasrem, align 8
  %"$$fundef_40_envp_566_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_40_envp_566_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_566_load", i64 4)
  %"$$fundef_40_envp_566" = bitcast i8* %"$$fundef_40_envp_566_salloc" to %"$$fundef_40_env_153"*
  %"$$fundef_40_env_voidp_568" = bitcast %"$$fundef_40_env_153"* %"$$fundef_40_envp_566" to i8*
  %"$$fundef_40_cloval_569" = insertvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int64)*, i8* } (%"$$fundef_40_env_153"*, %Uint32)* @"$fundef_40" to { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_40_env_voidp_568", 1
  %"$$fundef_40_env_one_570" = getelementptr inbounds %"$$fundef_40_env_153", %"$$fundef_40_env_153"* %"$$fundef_40_envp_566", i32 0, i32 0
  %"$one_571" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_571", %Uint32* %"$$fundef_40_env_one_570", align 4
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_40_cloval_569", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$gasrem_572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_573" = icmp ugt i64 1, %"$gasrem_572"
  br i1 %"$gascmp_573", label %"$out_of_gas_574", label %"$have_gas_575"

"$out_of_gas_574":                                ; preds = %"$have_gas_564"
  call void @_out_of_gas()
  br label %"$have_gas_575"

"$have_gas_575":                                  ; preds = %"$out_of_gas_574", %"$have_gas_564"
  %"$consume_576" = sub i64 %"$gasrem_572", 1
  store i64 %"$consume_576", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_578" = icmp ugt i64 1, %"$gasrem_577"
  br i1 %"$gascmp_578", label %"$out_of_gas_579", label %"$have_gas_580"

"$out_of_gas_579":                                ; preds = %"$have_gas_575"
  call void @_out_of_gas()
  br label %"$have_gas_580"

"$have_gas_580":                                  ; preds = %"$out_of_gas_579", %"$have_gas_575"
  %"$consume_581" = sub i64 %"$gasrem_577", 1
  store i64 %"$consume_581", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4
  %"$gasrem_582" = load i64, i64* @_gasrem, align 8
  %"$gascmp_583" = icmp ugt i64 1, %"$gasrem_582"
  br i1 %"$gascmp_583", label %"$out_of_gas_584", label %"$have_gas_585"

"$out_of_gas_584":                                ; preds = %"$have_gas_580"
  call void @_out_of_gas()
  br label %"$have_gas_585"

"$have_gas_585":                                  ; preds = %"$out_of_gas_584", %"$have_gas_580"
  %"$consume_586" = sub i64 %"$gasrem_582", 1
  store i64 %"$consume_586", i64* @_gasrem, align 8
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_587" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_588" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_587", 0
  %"$foldl_envptr_589" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_587", 1
  %"$iter_590" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_591" = call { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_588"(i8* %"$foldl_envptr_589", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_590")
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_591", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$$foldl_4_592" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8
  %"$$foldl_4_fptr_593" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_592", 0
  %"$$foldl_4_envptr_594" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_592", 1
  %"$init_595" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_4_call_596" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_fptr_593"(i8* %"$$foldl_4_envptr_594", %Uint32 %"$init_595")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_call_596", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5", align 8
  %"$$foldl_5_597" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5", align 8
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_5_597", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_39", align 8
  %"$$retval_39_598" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_39", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_39_598"
}

define internal %Uint32 @"$fundef_36"(%"$$fundef_36_env_155"* %0, %Int32 %1) {
entry:
  %"$$fundef_36_env_one_513" = getelementptr inbounds %"$$fundef_36_env_155", %"$$fundef_36_env_155"* %0, i32 0, i32 0
  %"$one_envload_514" = load %Uint32, %Uint32* %"$$fundef_36_env_one_513", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_514", %Uint32* %one, align 4
  %"$$fundef_36_env_z_515" = getelementptr inbounds %"$$fundef_36_env_155", %"$$fundef_36_env_155"* %0, i32 0, i32 1
  %"$z_envload_516" = load %Uint32, %Uint32* %"$$fundef_36_env_z_515", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_516", %Uint32* %z, align 4
  %"$retval_37" = alloca %Uint32, align 8
  %"$one_517" = load %Uint32, %Uint32* %one, align 4
  %"$z_518" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_519" = call %Uint32 @_add_Uint32(%Uint32 %"$one_517", %Uint32 %"$z_518")
  store %Uint32 %"$add_call_519", %Uint32* %"$retval_37", align 4
  %"$$retval_37_520" = load %Uint32, %Uint32* %"$retval_37", align 4
  ret %Uint32 %"$$retval_37_520"
}

define internal { %Uint32 (i8*, %Int32)*, i8* } @"$fundef_34"(%"$$fundef_34_env_156"* %0, %Uint32 %1) {
entry:
  %"$$fundef_34_env_one_498" = getelementptr inbounds %"$$fundef_34_env_156", %"$$fundef_34_env_156"* %0, i32 0, i32 0
  %"$one_envload_499" = load %Uint32, %Uint32* %"$$fundef_34_env_one_498", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_499", %Uint32* %one, align 4
  %"$retval_35" = alloca { %Uint32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_501" = icmp ugt i64 1, %"$gasrem_500"
  br i1 %"$gascmp_501", label %"$out_of_gas_502", label %"$have_gas_503"

"$out_of_gas_502":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_503"

"$have_gas_503":                                  ; preds = %"$out_of_gas_502", %entry
  %"$consume_504" = sub i64 %"$gasrem_500", 1
  store i64 %"$consume_504", i64* @_gasrem, align 8
  %"$$fundef_36_envp_505_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_36_envp_505_salloc" = call i8* @_salloc(i8* %"$$fundef_36_envp_505_load", i64 8)
  %"$$fundef_36_envp_505" = bitcast i8* %"$$fundef_36_envp_505_salloc" to %"$$fundef_36_env_155"*
  %"$$fundef_36_env_voidp_507" = bitcast %"$$fundef_36_env_155"* %"$$fundef_36_envp_505" to i8*
  %"$$fundef_36_cloval_508" = insertvalue { %Uint32 (i8*, %Int32)*, i8* } { %Uint32 (i8*, %Int32)* bitcast (%Uint32 (%"$$fundef_36_env_155"*, %Int32)* @"$fundef_36" to %Uint32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_36_env_voidp_507", 1
  %"$$fundef_36_env_one_509" = getelementptr inbounds %"$$fundef_36_env_155", %"$$fundef_36_env_155"* %"$$fundef_36_envp_505", i32 0, i32 0
  %"$one_510" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_510", %Uint32* %"$$fundef_36_env_one_509", align 4
  %"$$fundef_36_env_z_511" = getelementptr inbounds %"$$fundef_36_env_155", %"$$fundef_36_env_155"* %"$$fundef_36_envp_505", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_36_env_z_511", align 4
  store { %Uint32 (i8*, %Int32)*, i8* } %"$$fundef_36_cloval_508", { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_35", align 8
  %"$$retval_35_512" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_35", align 8
  ret { %Uint32 (i8*, %Int32)*, i8* } %"$$retval_35_512"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_32"(%"$$fundef_32_env_157"* %0) {
entry:
  %"$$fundef_32_env_list_foldl_420" = getelementptr inbounds %"$$fundef_32_env_157", %"$$fundef_32_env_157"* %0, i32 0, i32 0
  %"$list_foldl_envload_421" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_32_env_list_foldl_420", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_421", { i8*, i8* }** %list_foldl, align 8
  %"$retval_33" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_422" = load i64, i64* @_gasrem, align 8
  %"$gascmp_423" = icmp ugt i64 1, %"$gasrem_422"
  br i1 %"$gascmp_423", label %"$out_of_gas_424", label %"$have_gas_425"

"$out_of_gas_424":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_425"

"$have_gas_425":                                  ; preds = %"$out_of_gas_424", %entry
  %"$consume_426" = sub i64 %"$gasrem_422", 1
  store i64 %"$consume_426", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_428" = icmp ugt i64 1, %"$gasrem_427"
  br i1 %"$gascmp_428", label %"$out_of_gas_429", label %"$have_gas_430"

"$out_of_gas_429":                                ; preds = %"$have_gas_425"
  call void @_out_of_gas()
  br label %"$have_gas_430"

"$have_gas_430":                                  ; preds = %"$out_of_gas_429", %"$have_gas_425"
  %"$consume_431" = sub i64 %"$gasrem_427", 1
  store i64 %"$consume_431", i64* @_gasrem, align 8
  %"$list_foldl_432" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_433" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_432", i32 0
  %"$list_foldl_434" = bitcast { i8*, i8* }* %"$list_foldl_433" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_435" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_434", align 8
  %"$list_foldl_fptr_436" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_435", 0
  %"$list_foldl_envptr_437" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_435", 1
  %"$list_foldl_call_438" = call { i8*, i8* }* %"$list_foldl_fptr_436"(i8* %"$list_foldl_envptr_437")
  %"$list_foldl_439" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_438", i32 1
  %"$list_foldl_440" = bitcast { i8*, i8* }* %"$list_foldl_439" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_441" = load { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_440", align 8
  %"$list_foldl_fptr_442" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_441", 0
  %"$list_foldl_envptr_443" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_441", 1
  %"$list_foldl_call_444" = call { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_442"(i8* %"$list_foldl_envptr_443")
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_444", { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$gasrem_445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_446" = icmp ugt i64 1, %"$gasrem_445"
  br i1 %"$gascmp_446", label %"$out_of_gas_447", label %"$have_gas_448"

"$out_of_gas_447":                                ; preds = %"$have_gas_430"
  call void @_out_of_gas()
  br label %"$have_gas_448"

"$have_gas_448":                                  ; preds = %"$out_of_gas_447", %"$have_gas_430"
  %"$consume_449" = sub i64 %"$gasrem_445", 1
  store i64 %"$consume_449", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_451" = icmp ugt i64 1, %"$gasrem_450"
  br i1 %"$gascmp_451", label %"$out_of_gas_452", label %"$have_gas_453"

"$out_of_gas_452":                                ; preds = %"$have_gas_448"
  call void @_out_of_gas()
  br label %"$have_gas_453"

"$have_gas_453":                                  ; preds = %"$out_of_gas_452", %"$have_gas_448"
  %"$consume_454" = sub i64 %"$gasrem_450", 1
  store i64 %"$consume_454", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_456" = icmp ugt i64 1, %"$gasrem_455"
  br i1 %"$gascmp_456", label %"$out_of_gas_457", label %"$have_gas_458"

"$out_of_gas_457":                                ; preds = %"$have_gas_453"
  call void @_out_of_gas()
  br label %"$have_gas_458"

"$have_gas_458":                                  ; preds = %"$out_of_gas_457", %"$have_gas_453"
  %"$consume_459" = sub i64 %"$gasrem_455", 1
  store i64 %"$consume_459", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 1, %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$have_gas_458"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$have_gas_458"
  %"$consume_464" = sub i64 %"$gasrem_460", 1
  store i64 %"$consume_464", i64* @_gasrem, align 8
  %"$$fundef_34_envp_465_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_34_envp_465_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_465_load", i64 4)
  %"$$fundef_34_envp_465" = bitcast i8* %"$$fundef_34_envp_465_salloc" to %"$$fundef_34_env_156"*
  %"$$fundef_34_env_voidp_467" = bitcast %"$$fundef_34_env_156"* %"$$fundef_34_envp_465" to i8*
  %"$$fundef_34_cloval_468" = insertvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int32)*, i8* } (%"$$fundef_34_env_156"*, %Uint32)* @"$fundef_34" to { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_34_env_voidp_467", 1
  %"$$fundef_34_env_one_469" = getelementptr inbounds %"$$fundef_34_env_156", %"$$fundef_34_env_156"* %"$$fundef_34_envp_465", i32 0, i32 0
  %"$one_470" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_470", %Uint32* %"$$fundef_34_env_one_469", align 4
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_34_cloval_468", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$gasrem_471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_472" = icmp ugt i64 1, %"$gasrem_471"
  br i1 %"$gascmp_472", label %"$out_of_gas_473", label %"$have_gas_474"

"$out_of_gas_473":                                ; preds = %"$have_gas_463"
  call void @_out_of_gas()
  br label %"$have_gas_474"

"$have_gas_474":                                  ; preds = %"$out_of_gas_473", %"$have_gas_463"
  %"$consume_475" = sub i64 %"$gasrem_471", 1
  store i64 %"$consume_475", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_477" = icmp ugt i64 1, %"$gasrem_476"
  br i1 %"$gascmp_477", label %"$out_of_gas_478", label %"$have_gas_479"

"$out_of_gas_478":                                ; preds = %"$have_gas_474"
  call void @_out_of_gas()
  br label %"$have_gas_479"

"$have_gas_479":                                  ; preds = %"$out_of_gas_478", %"$have_gas_474"
  %"$consume_480" = sub i64 %"$gasrem_476", 1
  store i64 %"$consume_480", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4
  %"$gasrem_481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_482" = icmp ugt i64 1, %"$gasrem_481"
  br i1 %"$gascmp_482", label %"$out_of_gas_483", label %"$have_gas_484"

"$out_of_gas_483":                                ; preds = %"$have_gas_479"
  call void @_out_of_gas()
  br label %"$have_gas_484"

"$have_gas_484":                                  ; preds = %"$out_of_gas_483", %"$have_gas_479"
  %"$consume_485" = sub i64 %"$gasrem_481", 1
  store i64 %"$consume_485", i64* @_gasrem, align 8
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_486" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_487" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_486", 0
  %"$foldl_envptr_488" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_486", 1
  %"$iter_489" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_490" = call { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_487"(i8* %"$foldl_envptr_488", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_489")
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_490", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$$foldl_4_491" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8
  %"$$foldl_4_fptr_492" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_491", 0
  %"$$foldl_4_envptr_493" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_491", 1
  %"$init_494" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_4_call_495" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_fptr_492"(i8* %"$$foldl_4_envptr_493", %Uint32 %"$init_494")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_call_495", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5", align 8
  %"$$foldl_5_496" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5", align 8
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_5_496", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_33", align 8
  %"$$retval_33_497" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_33", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_33_497"
}

define internal %Uint32 @"$fundef_30"(%"$$fundef_30_env_158"* %0, %TName_List_Int64* %1) {
entry:
  %"$$fundef_30_env_f_353" = getelementptr inbounds %"$$fundef_30_env_158", %"$$fundef_30_env_158"* %0, i32 0, i32 0
  %"$f_envload_354" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_f_353", align 8
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_354", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_30_env_g_355" = getelementptr inbounds %"$$fundef_30_env_158", %"$$fundef_30_env_158"* %0, i32 0, i32 1
  %"$g_envload_356" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_g_355", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_356", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_30_env_z_357" = getelementptr inbounds %"$$fundef_30_env_158", %"$$fundef_30_env_158"* %0, i32 0, i32 2
  %"$z_envload_358" = load %Uint32, %Uint32* %"$$fundef_30_env_z_357", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_358", %Uint32* %z, align 4
  %"$retval_31" = alloca %Uint32, align 8
  %"$gasrem_359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_360" = icmp ugt i64 2, %"$gasrem_359"
  br i1 %"$gascmp_360", label %"$out_of_gas_361", label %"$have_gas_362"

"$out_of_gas_361":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_362"

"$have_gas_362":                                  ; preds = %"$out_of_gas_361", %entry
  %"$consume_363" = sub i64 %"$gasrem_359", 2
  store i64 %"$consume_363", i64* @_gasrem, align 8
  %"$l_tag_365" = getelementptr inbounds %TName_List_Int64, %TName_List_Int64* %1, i32 0, i32 0
  %"$l_tag_366" = load i8, i8* %"$l_tag_365", align 1
  switch i8 %"$l_tag_366", label %"$empty_default_367" [
    i8 0, label %"$Cons_368"
    i8 1, label %"$Nil_411"
  ]

"$Cons_368":                                      ; preds = %"$have_gas_362"
  %"$l_369" = bitcast %TName_List_Int64* %1 to %CName_Cons_Int64*
  %"$h_gep_370" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_369", i32 0, i32 1
  %"$h_load_371" = load %Int64, %Int64* %"$h_gep_370", align 8
  %h = alloca %Int64, align 8
  store %Int64 %"$h_load_371", %Int64* %h, align 8
  %"$t_gep_372" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_369", i32 0, i32 2
  %"$t_load_373" = load %TName_List_Int64*, %TName_List_Int64** %"$t_gep_372", align 8
  %t = alloca %TName_List_Int64*, align 8
  store %TName_List_Int64* %"$t_load_373", %TName_List_Int64** %t, align 8
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$Cons_368"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$Cons_368"
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_377"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %"$f_0" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$f_384" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_385" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_384", 0
  %"$f_envptr_386" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_384", 1
  %"$z_387" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_388" = call { %Uint32 (i8*, %Int64)*, i8* } %"$f_fptr_385"(i8* %"$f_envptr_386", %Uint32 %"$z_387")
  store { %Uint32 (i8*, %Int64)*, i8* } %"$f_call_388", { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0", align 8
  %"$f_1" = alloca %Uint32, align 8
  %"$$f_0_389" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0", align 8
  %"$$f_0_fptr_390" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_389", 0
  %"$$f_0_envptr_391" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_389", 1
  %"$h_392" = load %Int64, %Int64* %h, align 8
  %"$$f_0_call_393" = call %Uint32 %"$$f_0_fptr_390"(i8* %"$$f_0_envptr_391", %Int64 %"$h_392")
  store %Uint32 %"$$f_0_call_393", %Uint32* %"$f_1", align 4
  %"$$f_1_394" = load %Uint32, %Uint32* %"$f_1", align 4
  store %Uint32 %"$$f_1_394", %Uint32* %res, align 4
  %"$gasrem_395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_396" = icmp ugt i64 1, %"$gasrem_395"
  br i1 %"$gascmp_396", label %"$out_of_gas_397", label %"$have_gas_398"

"$out_of_gas_397":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_398"

"$have_gas_398":                                  ; preds = %"$out_of_gas_397", %"$have_gas_382"
  %"$consume_399" = sub i64 %"$gasrem_395", 1
  store i64 %"$consume_399", i64* @_gasrem, align 8
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$g_400" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_401" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_400", 0
  %"$g_envptr_402" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_400", 1
  %"$res_403" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_404" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_fptr_401"(i8* %"$g_envptr_402", %Uint32 %"$res_403")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_call_404", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2", align 8
  %"$g_3" = alloca %Uint32, align 8
  %"$$g_2_405" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2", align 8
  %"$$g_2_fptr_406" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_405", 0
  %"$$g_2_envptr_407" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_405", 1
  %"$t_408" = load %TName_List_Int64*, %TName_List_Int64** %t, align 8
  %"$$g_2_call_409" = call %Uint32 %"$$g_2_fptr_406"(i8* %"$$g_2_envptr_407", %TName_List_Int64* %"$t_408")
  store %Uint32 %"$$g_2_call_409", %Uint32* %"$g_3", align 4
  %"$$g_3_410" = load %Uint32, %Uint32* %"$g_3", align 4
  store %Uint32 %"$$g_3_410", %Uint32* %"$retval_31", align 4
  br label %"$matchsucc_364"

"$Nil_411":                                       ; preds = %"$have_gas_362"
  %"$l_412" = bitcast %TName_List_Int64* %1 to %CName_Nil_Int64*
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$Nil_411"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$Nil_411"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %"$z_418" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_418", %Uint32* %"$retval_31", align 4
  br label %"$matchsucc_364"

"$empty_default_367":                             ; preds = %"$have_gas_362"
  br label %"$matchsucc_364"

"$matchsucc_364":                                 ; preds = %"$have_gas_416", %"$have_gas_398", %"$empty_default_367"
  %"$$retval_31_419" = load %Uint32, %Uint32* %"$retval_31", align 4
  ret %Uint32 %"$$retval_31_419"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_28"(%"$$fundef_28_env_159"* %0, %Uint32 %1) {
entry:
  %"$$fundef_28_env_f_334" = getelementptr inbounds %"$$fundef_28_env_159", %"$$fundef_28_env_159"* %0, i32 0, i32 0
  %"$f_envload_335" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_334", align 8
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_335", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_28_env_g_336" = getelementptr inbounds %"$$fundef_28_env_159", %"$$fundef_28_env_159"* %0, i32 0, i32 1
  %"$g_envload_337" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_336", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_337", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_29" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 1, %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %entry
  %"$consume_342" = sub i64 %"$gasrem_338", 1
  store i64 %"$consume_342", i64* @_gasrem, align 8
  %"$$fundef_30_envp_343_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_30_envp_343_salloc" = call i8* @_salloc(i8* %"$$fundef_30_envp_343_load", i64 40)
  %"$$fundef_30_envp_343" = bitcast i8* %"$$fundef_30_envp_343_salloc" to %"$$fundef_30_env_158"*
  %"$$fundef_30_env_voidp_345" = bitcast %"$$fundef_30_env_158"* %"$$fundef_30_envp_343" to i8*
  %"$$fundef_30_cloval_346" = insertvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } { %Uint32 (i8*, %TName_List_Int64*)* bitcast (%Uint32 (%"$$fundef_30_env_158"*, %TName_List_Int64*)* @"$fundef_30" to %Uint32 (i8*, %TName_List_Int64*)*), i8* undef }, i8* %"$$fundef_30_env_voidp_345", 1
  %"$$fundef_30_env_f_347" = getelementptr inbounds %"$$fundef_30_env_158", %"$$fundef_30_env_158"* %"$$fundef_30_envp_343", i32 0, i32 0
  %"$f_348" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_348", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_f_347", align 8
  %"$$fundef_30_env_g_349" = getelementptr inbounds %"$$fundef_30_env_158", %"$$fundef_30_env_158"* %"$$fundef_30_envp_343", i32 0, i32 1
  %"$g_350" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_350", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_g_349", align 8
  %"$$fundef_30_env_z_351" = getelementptr inbounds %"$$fundef_30_env_158", %"$$fundef_30_env_158"* %"$$fundef_30_envp_343", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_30_env_z_351", align 4
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$fundef_30_cloval_346", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_29", align 8
  %"$$retval_29_352" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_29", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_29_352"
}

define internal { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_26"(%"$$fundef_26_env_160"* %0, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_27" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 1, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %entry
  %"$consume_319" = sub i64 %"$gasrem_315", 1
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 1, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_318"
  %"$consume_324" = sub i64 %"$gasrem_320", 1
  store i64 %"$consume_324", i64* @_gasrem, align 8
  %"$$fundef_28_envp_325_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_28_envp_325_salloc" = call i8* @_salloc(i8* %"$$fundef_28_envp_325_load", i64 32)
  %"$$fundef_28_envp_325" = bitcast i8* %"$$fundef_28_envp_325_salloc" to %"$$fundef_28_env_159"*
  %"$$fundef_28_env_voidp_327" = bitcast %"$$fundef_28_env_159"* %"$$fundef_28_envp_325" to i8*
  %"$$fundef_28_cloval_328" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_28_env_159"*, %Uint32)* @"$fundef_28" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_28_env_voidp_327", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_28_cloval_328", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_28_env_f_329" = getelementptr inbounds %"$$fundef_28_env_159", %"$$fundef_28_env_159"* %"$$fundef_28_envp_325", i32 0, i32 0
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_329", align 8
  %"$$fundef_28_env_g_330" = getelementptr inbounds %"$$fundef_28_env_159", %"$$fundef_28_env_159"* %"$$fundef_28_envp_325", i32 0, i32 1
  %"$g_331" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_331", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_330", align 8
  %"$g_332" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_332", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_27", align 8
  %"$$retval_27_333" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_27", align 8
  ret { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_27_333"
}

define internal { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_24"(%"$$fundef_24_env_161"* %0) {
entry:
  %"$retval_25" = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_307" = icmp ugt i64 1, %"$gasrem_306"
  br i1 %"$gascmp_307", label %"$out_of_gas_308", label %"$have_gas_309"

"$out_of_gas_308":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_309"

"$have_gas_309":                                  ; preds = %"$out_of_gas_308", %entry
  %"$consume_310" = sub i64 %"$gasrem_306", 1
  store i64 %"$consume_310", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_26_env_160"*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_26" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_25", align 8
  %"$$retval_25_314" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_25", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_25_314"
}

define internal { i8*, i8* }* @"$fundef_22"(%"$$fundef_22_env_162"* %0) {
entry:
  %"$retval_23" = alloca { i8*, i8* }*, align 8
  %"$gasrem_294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_295" = icmp ugt i64 1, %"$gasrem_294"
  br i1 %"$gascmp_295", label %"$out_of_gas_296", label %"$have_gas_297"

"$out_of_gas_296":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_297"

"$have_gas_297":                                  ; preds = %"$out_of_gas_296", %entry
  %"$consume_298" = sub i64 %"$gasrem_294", 1
  store i64 %"$consume_298", i64* @_gasrem, align 8
  %"$dyndisp_table_302_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_302_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_302_salloc_load", i64 48)
  %"$dyndisp_table_302_salloc" = bitcast i8* %"$dyndisp_table_302_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_302" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_302_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_303" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_302", i32 1
  %"$dyndisp_pcast_304" = bitcast { i8*, i8* }* %"$dyndisp_gep_303" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_24_env_161"*)* @"$fundef_24" to { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_304", align 8
  store { i8*, i8* }* %"$dyndisp_table_302", { i8*, i8* }** %"$retval_23", align 8
  %"$$retval_23_305" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_23", align 8
  ret { i8*, i8* }* %"$$retval_23_305"
}

define internal %Uint32 @"$fundef_20"(%"$$fundef_20_env_163"* %0, %TName_List_Int32* %1) {
entry:
  %"$$fundef_20_env_f_227" = getelementptr inbounds %"$$fundef_20_env_163", %"$$fundef_20_env_163"* %0, i32 0, i32 0
  %"$f_envload_228" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_f_227", align 8
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_228", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_20_env_g_229" = getelementptr inbounds %"$$fundef_20_env_163", %"$$fundef_20_env_163"* %0, i32 0, i32 1
  %"$g_envload_230" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_g_229", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_230", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_20_env_z_231" = getelementptr inbounds %"$$fundef_20_env_163", %"$$fundef_20_env_163"* %0, i32 0, i32 2
  %"$z_envload_232" = load %Uint32, %Uint32* %"$$fundef_20_env_z_231", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_232", %Uint32* %z, align 4
  %"$retval_21" = alloca %Uint32, align 8
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 2, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %entry
  %"$consume_237" = sub i64 %"$gasrem_233", 2
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %"$l_tag_239" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %1, i32 0, i32 0
  %"$l_tag_240" = load i8, i8* %"$l_tag_239", align 1
  switch i8 %"$l_tag_240", label %"$empty_default_241" [
    i8 0, label %"$Cons_242"
    i8 1, label %"$Nil_285"
  ]

"$Cons_242":                                      ; preds = %"$have_gas_236"
  %"$l_243" = bitcast %TName_List_Int32* %1 to %CName_Cons_Int32*
  %"$h_gep_244" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_243", i32 0, i32 1
  %"$h_load_245" = load %Int32, %Int32* %"$h_gep_244", align 4
  %h = alloca %Int32, align 8
  store %Int32 %"$h_load_245", %Int32* %h, align 4
  %"$t_gep_246" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_243", i32 0, i32 2
  %"$t_load_247" = load %TName_List_Int32*, %TName_List_Int32** %"$t_gep_246", align 8
  %t = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$t_load_247", %TName_List_Int32** %t, align 8
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$Cons_242"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$Cons_242"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_251"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %"$f_0" = alloca { %Uint32 (i8*, %Int32)*, i8* }, align 8
  %"$f_258" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_259" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_258", 0
  %"$f_envptr_260" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_258", 1
  %"$z_261" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_262" = call { %Uint32 (i8*, %Int32)*, i8* } %"$f_fptr_259"(i8* %"$f_envptr_260", %Uint32 %"$z_261")
  store { %Uint32 (i8*, %Int32)*, i8* } %"$f_call_262", { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0", align 8
  %"$f_1" = alloca %Uint32, align 8
  %"$$f_0_263" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0", align 8
  %"$$f_0_fptr_264" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_263", 0
  %"$$f_0_envptr_265" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_263", 1
  %"$h_266" = load %Int32, %Int32* %h, align 4
  %"$$f_0_call_267" = call %Uint32 %"$$f_0_fptr_264"(i8* %"$$f_0_envptr_265", %Int32 %"$h_266")
  store %Uint32 %"$$f_0_call_267", %Uint32* %"$f_1", align 4
  %"$$f_1_268" = load %Uint32, %Uint32* %"$f_1", align 4
  store %Uint32 %"$$f_1_268", %Uint32* %res, align 4
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_256"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$g_274" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_275" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_274", 0
  %"$g_envptr_276" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_274", 1
  %"$res_277" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_278" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_fptr_275"(i8* %"$g_envptr_276", %Uint32 %"$res_277")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_call_278", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2", align 8
  %"$g_3" = alloca %Uint32, align 8
  %"$$g_2_279" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2", align 8
  %"$$g_2_fptr_280" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_279", 0
  %"$$g_2_envptr_281" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_279", 1
  %"$t_282" = load %TName_List_Int32*, %TName_List_Int32** %t, align 8
  %"$$g_2_call_283" = call %Uint32 %"$$g_2_fptr_280"(i8* %"$$g_2_envptr_281", %TName_List_Int32* %"$t_282")
  store %Uint32 %"$$g_2_call_283", %Uint32* %"$g_3", align 4
  %"$$g_3_284" = load %Uint32, %Uint32* %"$g_3", align 4
  store %Uint32 %"$$g_3_284", %Uint32* %"$retval_21", align 4
  br label %"$matchsucc_238"

"$Nil_285":                                       ; preds = %"$have_gas_236"
  %"$l_286" = bitcast %TName_List_Int32* %1 to %CName_Nil_Int32*
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 1, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$Nil_285"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$Nil_285"
  %"$consume_291" = sub i64 %"$gasrem_287", 1
  store i64 %"$consume_291", i64* @_gasrem, align 8
  %"$z_292" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_292", %Uint32* %"$retval_21", align 4
  br label %"$matchsucc_238"

"$empty_default_241":                             ; preds = %"$have_gas_236"
  br label %"$matchsucc_238"

"$matchsucc_238":                                 ; preds = %"$have_gas_290", %"$have_gas_272", %"$empty_default_241"
  %"$$retval_21_293" = load %Uint32, %Uint32* %"$retval_21", align 4
  ret %Uint32 %"$$retval_21_293"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_18"(%"$$fundef_18_env_164"* %0, %Uint32 %1) {
entry:
  %"$$fundef_18_env_f_208" = getelementptr inbounds %"$$fundef_18_env_164", %"$$fundef_18_env_164"* %0, i32 0, i32 0
  %"$f_envload_209" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_208", align 8
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_209", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_18_env_g_210" = getelementptr inbounds %"$$fundef_18_env_164", %"$$fundef_18_env_164"* %0, i32 0, i32 1
  %"$g_envload_211" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_210", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_211", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_19" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 1, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %entry
  %"$consume_216" = sub i64 %"$gasrem_212", 1
  store i64 %"$consume_216", i64* @_gasrem, align 8
  %"$$fundef_20_envp_217_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_20_envp_217_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_217_load", i64 40)
  %"$$fundef_20_envp_217" = bitcast i8* %"$$fundef_20_envp_217_salloc" to %"$$fundef_20_env_163"*
  %"$$fundef_20_env_voidp_219" = bitcast %"$$fundef_20_env_163"* %"$$fundef_20_envp_217" to i8*
  %"$$fundef_20_cloval_220" = insertvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } { %Uint32 (i8*, %TName_List_Int32*)* bitcast (%Uint32 (%"$$fundef_20_env_163"*, %TName_List_Int32*)* @"$fundef_20" to %Uint32 (i8*, %TName_List_Int32*)*), i8* undef }, i8* %"$$fundef_20_env_voidp_219", 1
  %"$$fundef_20_env_f_221" = getelementptr inbounds %"$$fundef_20_env_163", %"$$fundef_20_env_163"* %"$$fundef_20_envp_217", i32 0, i32 0
  %"$f_222" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_222", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_f_221", align 8
  %"$$fundef_20_env_g_223" = getelementptr inbounds %"$$fundef_20_env_163", %"$$fundef_20_env_163"* %"$$fundef_20_envp_217", i32 0, i32 1
  %"$g_224" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_224", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_g_223", align 8
  %"$$fundef_20_env_z_225" = getelementptr inbounds %"$$fundef_20_env_163", %"$$fundef_20_env_163"* %"$$fundef_20_envp_217", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_20_env_z_225", align 4
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$fundef_20_cloval_220", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_19", align 8
  %"$$retval_19_226" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_19", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_19_226"
}

define internal { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_16"(%"$$fundef_16_env_165"* %0, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_17" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %entry
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$have_gas_192"
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %"$$fundef_18_envp_199_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_18_envp_199_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_199_load", i64 32)
  %"$$fundef_18_envp_199" = bitcast i8* %"$$fundef_18_envp_199_salloc" to %"$$fundef_18_env_164"*
  %"$$fundef_18_env_voidp_201" = bitcast %"$$fundef_18_env_164"* %"$$fundef_18_envp_199" to i8*
  %"$$fundef_18_cloval_202" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_18_env_164"*, %Uint32)* @"$fundef_18" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_18_env_voidp_201", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_18_cloval_202", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_18_env_f_203" = getelementptr inbounds %"$$fundef_18_env_164", %"$$fundef_18_env_164"* %"$$fundef_18_envp_199", i32 0, i32 0
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_203", align 8
  %"$$fundef_18_env_g_204" = getelementptr inbounds %"$$fundef_18_env_164", %"$$fundef_18_env_164"* %"$$fundef_18_envp_199", i32 0, i32 1
  %"$g_205" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_205", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_204", align 8
  %"$g_206" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_206", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_17", align 8
  %"$$retval_17_207" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_17", align 8
  ret { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_17_207"
}

define internal { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_14"(%"$$fundef_14_env_166"* %0) {
entry:
  %"$retval_15" = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %entry
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_16_env_165"*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_16" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_15", align 8
  %"$$retval_15_188" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_15", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_15_188"
}

define internal { i8*, i8* }* @"$fundef_12"(%"$$fundef_12_env_167"* %0) {
entry:
  %"$retval_13" = alloca { i8*, i8* }*, align 8
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %entry
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  %"$dyndisp_table_176_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_176_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_176_salloc_load", i64 48)
  %"$dyndisp_table_176_salloc" = bitcast i8* %"$dyndisp_table_176_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_176" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_176_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_177" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_176", i32 1
  %"$dyndisp_pcast_178" = bitcast { i8*, i8* }* %"$dyndisp_gep_177" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_14_env_166"*)* @"$fundef_14" to { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_178", align 8
  store { i8*, i8* }* %"$dyndisp_table_176", { i8*, i8* }** %"$retval_13", align 8
  %"$$retval_13_179" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_13", align 8
  ret { i8*, i8* }* %"$$retval_13_179"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$gasrem_832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_833" = icmp ugt i64 1, %"$gasrem_832"
  br i1 %"$gascmp_833", label %"$out_of_gas_834", label %"$have_gas_835"

"$out_of_gas_834":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_835"

"$have_gas_835":                                  ; preds = %"$out_of_gas_834", %entry
  %"$consume_836" = sub i64 %"$gasrem_832", 1
  store i64 %"$consume_836", i64* @_gasrem, align 8
  %"$dyndisp_table_843_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_843_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_843_salloc_load", i64 48)
  %"$dyndisp_table_843_salloc" = bitcast i8* %"$dyndisp_table_843_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_843" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_843_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_844" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_843", i32 0
  %"$dyndisp_pcast_845" = bitcast { i8*, i8* }* %"$dyndisp_gep_844" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_12_env_167"*)* @"$fundef_12" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_845", align 8
  %"$dyndisp_gep_846" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_843", i32 2
  %"$dyndisp_pcast_847" = bitcast { i8*, i8* }* %"$dyndisp_gep_846" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_22_env_162"*)* @"$fundef_22" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_847", align 8
  store { i8*, i8* }* %"$dyndisp_table_843", { i8*, i8* }** @list_foldl, align 8
  %"$gasrem_848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_849" = icmp ugt i64 1, %"$gasrem_848"
  br i1 %"$gascmp_849", label %"$out_of_gas_850", label %"$have_gas_851"

"$out_of_gas_850":                                ; preds = %"$have_gas_835"
  call void @_out_of_gas()
  br label %"$have_gas_851"

"$have_gas_851":                                  ; preds = %"$out_of_gas_850", %"$have_gas_835"
  %"$consume_852" = sub i64 %"$gasrem_848", 1
  store i64 %"$consume_852", i64* @_gasrem, align 8
  %"$$fundef_32_envp_853_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_32_envp_853_salloc" = call i8* @_salloc(i8* %"$$fundef_32_envp_853_load", i64 8)
  %"$$fundef_32_envp_853" = bitcast i8* %"$$fundef_32_envp_853_salloc" to %"$$fundef_32_env_157"*
  %"$$fundef_32_env_voidp_855" = bitcast %"$$fundef_32_env_157"* %"$$fundef_32_envp_853" to i8*
  %"$$fundef_32_cloval_856" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_32_env_157"*)* @"$fundef_32" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_32_env_voidp_855", 1
  %"$$fundef_32_env_list_foldl_857" = getelementptr inbounds %"$$fundef_32_env_157", %"$$fundef_32_env_157"* %"$$fundef_32_envp_853", i32 0, i32 0
  %"$list_foldl_858" = load { i8*, i8* }*, { i8*, i8* }** @list_foldl, align 8
  store { i8*, i8* }* %"$list_foldl_858", { i8*, i8* }** %"$$fundef_32_env_list_foldl_857", align 8
  %"$$fundef_38_env_voidp_860" = bitcast %"$$fundef_32_env_157"* %"$$fundef_32_envp_853" to i8*
  %"$$fundef_38_cloval_861" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_38_env_154"*)* @"$fundef_38" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_38_env_voidp_860", 1
  %"$dyndisp_table_862_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_862_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_862_salloc_load", i64 48)
  %"$dyndisp_table_862_salloc" = bitcast i8* %"$dyndisp_table_862_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_862" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_862_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_863" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_862", i32 0
  %"$dyndisp_pcast_864" = bitcast { i8*, i8* }* %"$dyndisp_gep_863" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$$fundef_32_cloval_856", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_864", align 8
  %"$dyndisp_gep_865" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_862", i32 2
  %"$dyndisp_pcast_866" = bitcast { i8*, i8* }* %"$dyndisp_gep_865" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$$fundef_38_cloval_861", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_866", align 8
  store { i8*, i8* }* %"$dyndisp_table_862", { i8*, i8* }** @ListUtils.list_length, align 8
  %"$expr_44" = alloca %Uint32, align 8
  %"$gasrem_867" = load i64, i64* @_gasrem, align 8
  %"$gascmp_868" = icmp ugt i64 1, %"$gasrem_867"
  br i1 %"$gascmp_868", label %"$out_of_gas_869", label %"$have_gas_870"

"$out_of_gas_869":                                ; preds = %"$have_gas_851"
  call void @_out_of_gas()
  br label %"$have_gas_870"

"$have_gas_870":                                  ; preds = %"$out_of_gas_869", %"$have_gas_851"
  %"$consume_871" = sub i64 %"$gasrem_867", 1
  store i64 %"$consume_871", i64* @_gasrem, align 8
  %t1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_872" = load i64, i64* @_gasrem, align 8
  %"$gascmp_873" = icmp ugt i64 1, %"$gasrem_872"
  br i1 %"$gascmp_873", label %"$out_of_gas_874", label %"$have_gas_875"

"$out_of_gas_874":                                ; preds = %"$have_gas_870"
  call void @_out_of_gas()
  br label %"$have_gas_875"

"$have_gas_875":                                  ; preds = %"$out_of_gas_874", %"$have_gas_870"
  %"$consume_876" = sub i64 %"$gasrem_872", 1
  store i64 %"$consume_876", i64* @_gasrem, align 8
  %"$dyndisp_table_883_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_883_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_883_salloc_load", i64 48)
  %"$dyndisp_table_883_salloc" = bitcast i8* %"$dyndisp_table_883_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_883" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_883_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_884" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_883", i32 0
  %"$dyndisp_pcast_885" = bitcast { i8*, i8* }* %"$dyndisp_gep_884" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_45_env_151"*)* @"$fundef_45" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_885", align 8
  %"$dyndisp_gep_886" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_883", i32 2
  %"$dyndisp_pcast_887" = bitcast { i8*, i8* }* %"$dyndisp_gep_886" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_49_env_149"*)* @"$fundef_49" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_887", align 8
  store { i8*, i8* }* %"$dyndisp_table_883", { i8*, i8* }** %t1, align 8
  %"$gasrem_888" = load i64, i64* @_gasrem, align 8
  %"$gascmp_889" = icmp ugt i64 1, %"$gasrem_888"
  br i1 %"$gascmp_889", label %"$out_of_gas_890", label %"$have_gas_891"

"$out_of_gas_890":                                ; preds = %"$have_gas_875"
  call void @_out_of_gas()
  br label %"$have_gas_891"

"$have_gas_891":                                  ; preds = %"$out_of_gas_890", %"$have_gas_875"
  %"$consume_892" = sub i64 %"$gasrem_888", 1
  store i64 %"$consume_892", i64* @_gasrem, align 8
  %t2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_893" = load i64, i64* @_gasrem, align 8
  %"$gascmp_894" = icmp ugt i64 1, %"$gasrem_893"
  br i1 %"$gascmp_894", label %"$out_of_gas_895", label %"$have_gas_896"

"$out_of_gas_895":                                ; preds = %"$have_gas_891"
  call void @_out_of_gas()
  br label %"$have_gas_896"

"$have_gas_896":                                  ; preds = %"$out_of_gas_895", %"$have_gas_891"
  %"$consume_897" = sub i64 %"$gasrem_893", 1
  store i64 %"$consume_897", i64* @_gasrem, align 8
  %"$dyndisp_table_904_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_904_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_904_salloc_load", i64 48)
  %"$dyndisp_table_904_salloc" = bitcast i8* %"$dyndisp_table_904_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_904" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_904_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_905" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_904", i32 0
  %"$dyndisp_pcast_906" = bitcast { i8*, i8* }* %"$dyndisp_gep_905" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_53_env_147"*)* @"$fundef_53" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_906", align 8
  %"$dyndisp_gep_907" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_904", i32 2
  %"$dyndisp_pcast_908" = bitcast { i8*, i8* }* %"$dyndisp_gep_907" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_57_env_145"*)* @"$fundef_57" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_908", align 8
  store { i8*, i8* }* %"$dyndisp_table_904", { i8*, i8* }** %t2, align 8
  %"$gasrem_909" = load i64, i64* @_gasrem, align 8
  %"$gascmp_910" = icmp ugt i64 1, %"$gasrem_909"
  br i1 %"$gascmp_910", label %"$out_of_gas_911", label %"$have_gas_912"

"$out_of_gas_911":                                ; preds = %"$have_gas_896"
  call void @_out_of_gas()
  br label %"$have_gas_912"

"$have_gas_912":                                  ; preds = %"$out_of_gas_911", %"$have_gas_896"
  %"$consume_913" = sub i64 %"$gasrem_909", 1
  store i64 %"$consume_913", i64* @_gasrem, align 8
  %t = alloca { i8*, i8* }*, align 8
  %"$gasrem_914" = load i64, i64* @_gasrem, align 8
  %"$gascmp_915" = icmp ugt i64 1, %"$gasrem_914"
  br i1 %"$gascmp_915", label %"$out_of_gas_916", label %"$have_gas_917"

"$out_of_gas_916":                                ; preds = %"$have_gas_912"
  call void @_out_of_gas()
  br label %"$have_gas_917"

"$have_gas_917":                                  ; preds = %"$out_of_gas_916", %"$have_gas_912"
  %"$consume_918" = sub i64 %"$gasrem_914", 1
  store i64 %"$consume_918", i64* @_gasrem, align 8
  %"$dyndisp_table_925_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_925_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_925_salloc_load", i64 48)
  %"$dyndisp_table_925_salloc" = bitcast i8* %"$dyndisp_table_925_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_925" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_925_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_926" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_925", i32 0
  %"$dyndisp_pcast_927" = bitcast { i8*, i8* }* %"$dyndisp_gep_926" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_61_env_143"*)* @"$fundef_61" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_927", align 8
  %"$dyndisp_gep_928" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_925", i32 2
  %"$dyndisp_pcast_929" = bitcast { i8*, i8* }* %"$dyndisp_gep_928" to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_65_env_141"*)* @"$fundef_65" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_929", align 8
  store { i8*, i8* }* %"$dyndisp_table_925", { i8*, i8* }** %t, align 8
  %"$gasrem_930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_931" = icmp ugt i64 1, %"$gasrem_930"
  br i1 %"$gascmp_931", label %"$out_of_gas_932", label %"$have_gas_933"

"$out_of_gas_932":                                ; preds = %"$have_gas_917"
  call void @_out_of_gas()
  br label %"$have_gas_933"

"$have_gas_933":                                  ; preds = %"$out_of_gas_932", %"$have_gas_917"
  %"$consume_934" = sub i64 %"$gasrem_930", 1
  store i64 %"$consume_934", i64* @_gasrem, align 8
  %some_bool = alloca %TName_Bool*, align 8
  %"$gasrem_935" = load i64, i64* @_gasrem, align 8
  %"$gascmp_936" = icmp ugt i64 1, %"$gasrem_935"
  br i1 %"$gascmp_936", label %"$out_of_gas_937", label %"$have_gas_938"

"$out_of_gas_937":                                ; preds = %"$have_gas_933"
  call void @_out_of_gas()
  br label %"$have_gas_938"

"$have_gas_938":                                  ; preds = %"$out_of_gas_937", %"$have_gas_933"
  %"$consume_939" = sub i64 %"$gasrem_935", 1
  store i64 %"$consume_939", i64* @_gasrem, align 8
  %"$adtval_940_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_940_salloc" = call i8* @_salloc(i8* %"$adtval_940_load", i64 1)
  %"$adtval_940" = bitcast i8* %"$adtval_940_salloc" to %CName_False*
  %"$adtgep_941" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_940", i32 0, i32 0
  store i8 1, i8* %"$adtgep_941", align 1
  %"$adtptr_942" = bitcast %CName_False* %"$adtval_940" to %TName_Bool*
  store %TName_Bool* %"$adtptr_942", %TName_Bool** %some_bool, align 8
  %"$gasrem_943" = load i64, i64* @_gasrem, align 8
  %"$gascmp_944" = icmp ugt i64 2, %"$gasrem_943"
  br i1 %"$gascmp_944", label %"$out_of_gas_945", label %"$have_gas_946"

"$out_of_gas_945":                                ; preds = %"$have_gas_938"
  call void @_out_of_gas()
  br label %"$have_gas_946"

"$have_gas_946":                                  ; preds = %"$out_of_gas_945", %"$have_gas_938"
  %"$consume_947" = sub i64 %"$gasrem_943", 2
  store i64 %"$consume_947", i64* @_gasrem, align 8
  %"$some_bool_949" = load %TName_Bool*, %TName_Bool** %some_bool, align 8
  %"$some_bool_tag_950" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool_949", i32 0, i32 0
  %"$some_bool_tag_951" = load i8, i8* %"$some_bool_tag_950", align 1
  switch i8 %"$some_bool_tag_951", label %"$empty_default_952" [
    i8 0, label %"$True_953"
    i8 1, label %"$False_1042"
  ]

"$True_953":                                      ; preds = %"$have_gas_946"
  %"$some_bool_954" = bitcast %TName_Bool* %"$some_bool_949" to %CName_True*
  %"$gasrem_955" = load i64, i64* @_gasrem, align 8
  %"$gascmp_956" = icmp ugt i64 1, %"$gasrem_955"
  br i1 %"$gascmp_956", label %"$out_of_gas_957", label %"$have_gas_958"

"$out_of_gas_957":                                ; preds = %"$True_953"
  call void @_out_of_gas()
  br label %"$have_gas_958"

"$have_gas_958":                                  ; preds = %"$out_of_gas_957", %"$True_953"
  %"$consume_959" = sub i64 %"$gasrem_955", 1
  store i64 %"$consume_959", i64* @_gasrem, align 8
  %f11 = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_960" = load i64, i64* @_gasrem, align 8
  %"$gascmp_961" = icmp ugt i64 1, %"$gasrem_960"
  br i1 %"$gascmp_961", label %"$out_of_gas_962", label %"$have_gas_963"

"$out_of_gas_962":                                ; preds = %"$have_gas_958"
  call void @_out_of_gas()
  br label %"$have_gas_963"

"$have_gas_963":                                  ; preds = %"$out_of_gas_962", %"$have_gas_958"
  %"$consume_964" = sub i64 %"$gasrem_960", 1
  store i64 %"$consume_964", i64* @_gasrem, align 8
  %"$t_965" = load { i8*, i8* }*, { i8*, i8* }** %t, align 8
  %"$t_966" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_965", i32 0
  %"$t_967" = bitcast { i8*, i8* }* %"$t_966" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_968" = load { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_967", align 8
  %"$t_fptr_969" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_968", 0
  %"$t_envptr_970" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_968", 1
  %"$t_call_971" = call { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_969"(i8* %"$t_envptr_970")
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_971", { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11, align 8
  %"$gasrem_972" = load i64, i64* @_gasrem, align 8
  %"$gascmp_973" = icmp ugt i64 1, %"$gasrem_972"
  br i1 %"$gascmp_973", label %"$out_of_gas_974", label %"$have_gas_975"

"$out_of_gas_974":                                ; preds = %"$have_gas_963"
  call void @_out_of_gas()
  br label %"$have_gas_975"

"$have_gas_975":                                  ; preds = %"$out_of_gas_974", %"$have_gas_963"
  %"$consume_976" = sub i64 %"$gasrem_972", 1
  store i64 %"$consume_976", i64* @_gasrem, align 8
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_977" = load i64, i64* @_gasrem, align 8
  %"$gascmp_978" = icmp ugt i64 1, %"$gasrem_977"
  br i1 %"$gascmp_978", label %"$out_of_gas_979", label %"$have_gas_980"

"$out_of_gas_979":                                ; preds = %"$have_gas_975"
  call void @_out_of_gas()
  br label %"$have_gas_980"

"$have_gas_980":                                  ; preds = %"$out_of_gas_979", %"$have_gas_975"
  %"$consume_981" = sub i64 %"$gasrem_977", 1
  store i64 %"$consume_981", i64* @_gasrem, align 8
  %"$f11_6" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$f11_982" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11, align 8
  %"$f11_fptr_983" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_982", 0
  %"$f11_envptr_984" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_982", 1
  %"$t1_985" = load { i8*, i8* }*, { i8*, i8* }** %t1, align 8
  %"$f11_call_986" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_fptr_983"(i8* %"$f11_envptr_984", { i8*, i8* }* %"$t1_985")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_call_986", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_6", align 8
  %"$$f11_6_987" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_6", align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$f11_6_987", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8
  %"$gasrem_988" = load i64, i64* @_gasrem, align 8
  %"$gascmp_989" = icmp ugt i64 1, %"$gasrem_988"
  br i1 %"$gascmp_989", label %"$out_of_gas_990", label %"$have_gas_991"

"$out_of_gas_990":                                ; preds = %"$have_gas_980"
  call void @_out_of_gas()
  br label %"$have_gas_991"

"$have_gas_991":                                  ; preds = %"$out_of_gas_990", %"$have_gas_980"
  %"$consume_992" = sub i64 %"$gasrem_988", 1
  store i64 %"$consume_992", i64* @_gasrem, align 8
  %len = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_993" = load i64, i64* @_gasrem, align 8
  %"$gascmp_994" = icmp ugt i64 1, %"$gasrem_993"
  br i1 %"$gascmp_994", label %"$out_of_gas_995", label %"$have_gas_996"

"$out_of_gas_995":                                ; preds = %"$have_gas_991"
  call void @_out_of_gas()
  br label %"$have_gas_996"

"$have_gas_996":                                  ; preds = %"$out_of_gas_995", %"$have_gas_991"
  %"$consume_997" = sub i64 %"$gasrem_993", 1
  store i64 %"$consume_997", i64* @_gasrem, align 8
  %"$ListUtils.list_length_998" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_999" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_998", i32 0
  %"$ListUtils.list_length_1000" = bitcast { i8*, i8* }* %"$ListUtils.list_length_999" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1001" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_1000", align 8
  %"$ListUtils.list_length_fptr_1002" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1001", 0
  %"$ListUtils.list_length_envptr_1003" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1001", 1
  %"$ListUtils.list_length_call_1004" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_fptr_1002"(i8* %"$ListUtils.list_length_envptr_1003")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_call_1004", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8
  %"$gasrem_1005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1006" = icmp ugt i64 1, %"$gasrem_1005"
  br i1 %"$gascmp_1006", label %"$out_of_gas_1007", label %"$have_gas_1008"

"$out_of_gas_1007":                               ; preds = %"$have_gas_996"
  call void @_out_of_gas()
  br label %"$have_gas_1008"

"$have_gas_1008":                                 ; preds = %"$out_of_gas_1007", %"$have_gas_996"
  %"$consume_1009" = sub i64 %"$gasrem_1005", 1
  store i64 %"$consume_1009", i64* @_gasrem, align 8
  %one = alloca %Int32, align 8
  %"$gasrem_1010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1011" = icmp ugt i64 1, %"$gasrem_1010"
  br i1 %"$gascmp_1011", label %"$out_of_gas_1012", label %"$have_gas_1013"

"$out_of_gas_1012":                               ; preds = %"$have_gas_1008"
  call void @_out_of_gas()
  br label %"$have_gas_1013"

"$have_gas_1013":                                 ; preds = %"$out_of_gas_1012", %"$have_gas_1008"
  %"$consume_1014" = sub i64 %"$gasrem_1010", 1
  store i64 %"$consume_1014", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %one, align 4
  %"$gasrem_1015" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1016" = icmp ugt i64 1, %"$gasrem_1015"
  br i1 %"$gascmp_1016", label %"$out_of_gas_1017", label %"$have_gas_1018"

"$out_of_gas_1017":                               ; preds = %"$have_gas_1013"
  call void @_out_of_gas()
  br label %"$have_gas_1018"

"$have_gas_1018":                                 ; preds = %"$out_of_gas_1017", %"$have_gas_1013"
  %"$consume_1019" = sub i64 %"$gasrem_1015", 1
  store i64 %"$consume_1019", i64* @_gasrem, align 8
  %f1l = alloca %TName_List_Int32*, align 8
  %"$gasrem_1020" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1021" = icmp ugt i64 1, %"$gasrem_1020"
  br i1 %"$gascmp_1021", label %"$out_of_gas_1022", label %"$have_gas_1023"

"$out_of_gas_1022":                               ; preds = %"$have_gas_1018"
  call void @_out_of_gas()
  br label %"$have_gas_1023"

"$have_gas_1023":                                 ; preds = %"$out_of_gas_1022", %"$have_gas_1018"
  %"$consume_1024" = sub i64 %"$gasrem_1020", 1
  store i64 %"$consume_1024", i64* @_gasrem, align 8
  %"$f1_7" = alloca %TName_List_Int32*, align 8
  %"$f1_1025" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8
  %"$f1_fptr_1026" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_1025", 0
  %"$f1_envptr_1027" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_1025", 1
  %"$one_1028" = load %Int32, %Int32* %one, align 4
  %"$f1_call_1029" = call %TName_List_Int32* %"$f1_fptr_1026"(i8* %"$f1_envptr_1027", %Int32 %"$one_1028")
  store %TName_List_Int32* %"$f1_call_1029", %TName_List_Int32** %"$f1_7", align 8
  %"$$f1_7_1030" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_7", align 8
  store %TName_List_Int32* %"$$f1_7_1030", %TName_List_Int32** %f1l, align 8
  %"$gasrem_1031" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1032" = icmp ugt i64 1, %"$gasrem_1031"
  br i1 %"$gascmp_1032", label %"$out_of_gas_1033", label %"$have_gas_1034"

"$out_of_gas_1033":                               ; preds = %"$have_gas_1023"
  call void @_out_of_gas()
  br label %"$have_gas_1034"

"$have_gas_1034":                                 ; preds = %"$out_of_gas_1033", %"$have_gas_1023"
  %"$consume_1035" = sub i64 %"$gasrem_1031", 1
  store i64 %"$consume_1035", i64* @_gasrem, align 8
  %"$len_8" = alloca %Uint32, align 8
  %"$len_1036" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8
  %"$len_fptr_1037" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_1036", 0
  %"$len_envptr_1038" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_1036", 1
  %"$f1l_1039" = load %TName_List_Int32*, %TName_List_Int32** %f1l, align 8
  %"$len_call_1040" = call %Uint32 %"$len_fptr_1037"(i8* %"$len_envptr_1038", %TName_List_Int32* %"$f1l_1039")
  store %Uint32 %"$len_call_1040", %Uint32* %"$len_8", align 4
  %"$$len_8_1041" = load %Uint32, %Uint32* %"$len_8", align 4
  store %Uint32 %"$$len_8_1041", %Uint32* %"$expr_44", align 4
  br label %"$matchsucc_948"

"$False_1042":                                    ; preds = %"$have_gas_946"
  %"$some_bool_1043" = bitcast %TName_Bool* %"$some_bool_949" to %CName_False*
  %"$gasrem_1044" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1045" = icmp ugt i64 1, %"$gasrem_1044"
  br i1 %"$gascmp_1045", label %"$out_of_gas_1046", label %"$have_gas_1047"

"$out_of_gas_1046":                               ; preds = %"$False_1042"
  call void @_out_of_gas()
  br label %"$have_gas_1047"

"$have_gas_1047":                                 ; preds = %"$out_of_gas_1046", %"$False_1042"
  %"$consume_1048" = sub i64 %"$gasrem_1044", 1
  store i64 %"$consume_1048", i64* @_gasrem, align 8
  %f22 = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_1049" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1050" = icmp ugt i64 1, %"$gasrem_1049"
  br i1 %"$gascmp_1050", label %"$out_of_gas_1051", label %"$have_gas_1052"

"$out_of_gas_1051":                               ; preds = %"$have_gas_1047"
  call void @_out_of_gas()
  br label %"$have_gas_1052"

"$have_gas_1052":                                 ; preds = %"$out_of_gas_1051", %"$have_gas_1047"
  %"$consume_1053" = sub i64 %"$gasrem_1049", 1
  store i64 %"$consume_1053", i64* @_gasrem, align 8
  %"$t_1054" = load { i8*, i8* }*, { i8*, i8* }** %t, align 8
  %"$t_1055" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_1054", i32 2
  %"$t_1056" = bitcast { i8*, i8* }* %"$t_1055" to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_1057" = load { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_1056", align 8
  %"$t_fptr_1058" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_1057", 0
  %"$t_envptr_1059" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_1057", 1
  %"$t_call_1060" = call { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_1058"(i8* %"$t_envptr_1059")
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_1060", { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22, align 8
  %"$gasrem_1061" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1062" = icmp ugt i64 1, %"$gasrem_1061"
  br i1 %"$gascmp_1062", label %"$out_of_gas_1063", label %"$have_gas_1064"

"$out_of_gas_1063":                               ; preds = %"$have_gas_1052"
  call void @_out_of_gas()
  br label %"$have_gas_1064"

"$have_gas_1064":                                 ; preds = %"$out_of_gas_1063", %"$have_gas_1052"
  %"$consume_1065" = sub i64 %"$gasrem_1061", 1
  store i64 %"$consume_1065", i64* @_gasrem, align 8
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_1066" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1067" = icmp ugt i64 1, %"$gasrem_1066"
  br i1 %"$gascmp_1067", label %"$out_of_gas_1068", label %"$have_gas_1069"

"$out_of_gas_1068":                               ; preds = %"$have_gas_1064"
  call void @_out_of_gas()
  br label %"$have_gas_1069"

"$have_gas_1069":                                 ; preds = %"$out_of_gas_1068", %"$have_gas_1064"
  %"$consume_1070" = sub i64 %"$gasrem_1066", 1
  store i64 %"$consume_1070", i64* @_gasrem, align 8
  %"$f22_9" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$f22_1071" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22, align 8
  %"$f22_fptr_1072" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_1071", 0
  %"$f22_envptr_1073" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_1071", 1
  %"$t2_1074" = load { i8*, i8* }*, { i8*, i8* }** %t2, align 8
  %"$f22_call_1075" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_fptr_1072"(i8* %"$f22_envptr_1073", { i8*, i8* }* %"$t2_1074")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_call_1075", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_9", align 8
  %"$$f22_9_1076" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_9", align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$f22_9_1076", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8
  %"$gasrem_1077" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1078" = icmp ugt i64 1, %"$gasrem_1077"
  br i1 %"$gascmp_1078", label %"$out_of_gas_1079", label %"$have_gas_1080"

"$out_of_gas_1079":                               ; preds = %"$have_gas_1069"
  call void @_out_of_gas()
  br label %"$have_gas_1080"

"$have_gas_1080":                                 ; preds = %"$out_of_gas_1079", %"$have_gas_1069"
  %"$consume_1081" = sub i64 %"$gasrem_1077", 1
  store i64 %"$consume_1081", i64* @_gasrem, align 8
  %len1 = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_1082" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1083" = icmp ugt i64 1, %"$gasrem_1082"
  br i1 %"$gascmp_1083", label %"$out_of_gas_1084", label %"$have_gas_1085"

"$out_of_gas_1084":                               ; preds = %"$have_gas_1080"
  call void @_out_of_gas()
  br label %"$have_gas_1085"

"$have_gas_1085":                                 ; preds = %"$out_of_gas_1084", %"$have_gas_1080"
  %"$consume_1086" = sub i64 %"$gasrem_1082", 1
  store i64 %"$consume_1086", i64* @_gasrem, align 8
  %"$ListUtils.list_length_1087" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_1088" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_1087", i32 2
  %"$ListUtils.list_length_1089" = bitcast { i8*, i8* }* %"$ListUtils.list_length_1088" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1090" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_1089", align 8
  %"$ListUtils.list_length_fptr_1091" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1090", 0
  %"$ListUtils.list_length_envptr_1092" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1090", 1
  %"$ListUtils.list_length_call_1093" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_fptr_1091"(i8* %"$ListUtils.list_length_envptr_1092")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_call_1093", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8
  %"$gasrem_1094" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1095" = icmp ugt i64 1, %"$gasrem_1094"
  br i1 %"$gascmp_1095", label %"$out_of_gas_1096", label %"$have_gas_1097"

"$out_of_gas_1096":                               ; preds = %"$have_gas_1085"
  call void @_out_of_gas()
  br label %"$have_gas_1097"

"$have_gas_1097":                                 ; preds = %"$out_of_gas_1096", %"$have_gas_1085"
  %"$consume_1098" = sub i64 %"$gasrem_1094", 1
  store i64 %"$consume_1098", i64* @_gasrem, align 8
  %one2 = alloca %Int64, align 8
  %"$gasrem_1099" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1100" = icmp ugt i64 1, %"$gasrem_1099"
  br i1 %"$gascmp_1100", label %"$out_of_gas_1101", label %"$have_gas_1102"

"$out_of_gas_1101":                               ; preds = %"$have_gas_1097"
  call void @_out_of_gas()
  br label %"$have_gas_1102"

"$have_gas_1102":                                 ; preds = %"$out_of_gas_1101", %"$have_gas_1097"
  %"$consume_1103" = sub i64 %"$gasrem_1099", 1
  store i64 %"$consume_1103", i64* @_gasrem, align 8
  store %Int64 { i64 1 }, %Int64* %one2, align 8
  %"$gasrem_1104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1105" = icmp ugt i64 1, %"$gasrem_1104"
  br i1 %"$gascmp_1105", label %"$out_of_gas_1106", label %"$have_gas_1107"

"$out_of_gas_1106":                               ; preds = %"$have_gas_1102"
  call void @_out_of_gas()
  br label %"$have_gas_1107"

"$have_gas_1107":                                 ; preds = %"$out_of_gas_1106", %"$have_gas_1102"
  %"$consume_1108" = sub i64 %"$gasrem_1104", 1
  store i64 %"$consume_1108", i64* @_gasrem, align 8
  %f2l = alloca %TName_List_Int64*, align 8
  %"$gasrem_1109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1110" = icmp ugt i64 1, %"$gasrem_1109"
  br i1 %"$gascmp_1110", label %"$out_of_gas_1111", label %"$have_gas_1112"

"$out_of_gas_1111":                               ; preds = %"$have_gas_1107"
  call void @_out_of_gas()
  br label %"$have_gas_1112"

"$have_gas_1112":                                 ; preds = %"$out_of_gas_1111", %"$have_gas_1107"
  %"$consume_1113" = sub i64 %"$gasrem_1109", 1
  store i64 %"$consume_1113", i64* @_gasrem, align 8
  %"$f2_10" = alloca %TName_List_Int64*, align 8
  %"$f2_1114" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8
  %"$f2_fptr_1115" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1114", 0
  %"$f2_envptr_1116" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1114", 1
  %"$one_1117" = load %Int64, %Int64* %one2, align 8
  %"$f2_call_1118" = call %TName_List_Int64* %"$f2_fptr_1115"(i8* %"$f2_envptr_1116", %Int64 %"$one_1117")
  store %TName_List_Int64* %"$f2_call_1118", %TName_List_Int64** %"$f2_10", align 8
  %"$$f2_10_1119" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_10", align 8
  store %TName_List_Int64* %"$$f2_10_1119", %TName_List_Int64** %f2l, align 8
  %"$gasrem_1120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1121" = icmp ugt i64 1, %"$gasrem_1120"
  br i1 %"$gascmp_1121", label %"$out_of_gas_1122", label %"$have_gas_1123"

"$out_of_gas_1122":                               ; preds = %"$have_gas_1112"
  call void @_out_of_gas()
  br label %"$have_gas_1123"

"$have_gas_1123":                                 ; preds = %"$out_of_gas_1122", %"$have_gas_1112"
  %"$consume_1124" = sub i64 %"$gasrem_1120", 1
  store i64 %"$consume_1124", i64* @_gasrem, align 8
  %"$len_11" = alloca %Uint32, align 8
  %"$len_1125" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8
  %"$len_fptr_1126" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1125", 0
  %"$len_envptr_1127" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1125", 1
  %"$f2l_1128" = load %TName_List_Int64*, %TName_List_Int64** %f2l, align 8
  %"$len_call_1129" = call %Uint32 %"$len_fptr_1126"(i8* %"$len_envptr_1127", %TName_List_Int64* %"$f2l_1128")
  store %Uint32 %"$len_call_1129", %Uint32* %"$len_11", align 4
  %"$$len_11_1130" = load %Uint32, %Uint32* %"$len_11", align 4
  store %Uint32 %"$$len_11_1130", %Uint32* %"$expr_44", align 4
  br label %"$matchsucc_948"

"$empty_default_952":                             ; preds = %"$have_gas_946"
  br label %"$matchsucc_948"

"$matchsucc_948":                                 ; preds = %"$have_gas_1123", %"$have_gas_1034", %"$empty_default_952"
  %"$$expr_44_1131" = load %Uint32, %Uint32* %"$expr_44", align 4
  ret %Uint32 %"$$expr_44_1131"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1132" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_1133" = alloca %Uint32, align 8
  %"$memvoidcast_1134" = bitcast %Uint32* %"$pval_1133" to i8*
  store %Uint32 %"$exprval_1132", %Uint32* %"$pval_1133", align 4
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_73", i8* %"$memvoidcast_1134")
  ret void
}
