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
%"$ParamDescr_1146" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1147" = type { %ParamDescrString, i32, %"$ParamDescr_1146"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_1146"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1147"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_67"(%"$$fundef_67_env_140"* %0, { i8*, i8* }* %1) !dbg !4 {
entry:
  %"$retval_68" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_830" = load i64, i64* @_gasrem, align 8
  %"$gascmp_831" = icmp ugt i64 1, %"$gasrem_830"
  br i1 %"$gascmp_831", label %"$out_of_gas_832", label %"$have_gas_833"

"$out_of_gas_832":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_833"

"$have_gas_833":                                  ; preds = %"$out_of_gas_832", %entry
  %"$consume_834" = sub i64 %"$gasrem_830", 1
  store i64 %"$consume_834", i64* @_gasrem, align 8
  %"$f_835" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 2
  %"$f_836" = bitcast { i8*, i8* }* %"$f_835" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_837" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_836", align 8
  %"$f_fptr_838" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_837", 0
  %"$f_envptr_839" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_837", 1
  %"$f_call_840" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_838"(i8* %"$f_envptr_839"), !dbg !8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_840", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_68", align 8, !dbg !9
  %"$$retval_68_841" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_68", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_68_841"
}

define internal { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_65"(%"$$fundef_65_env_141"* %0) !dbg !10 {
entry:
  %"$retval_66" = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_822" = icmp ugt i64 1, %"$gasrem_821"
  br i1 %"$gascmp_822", label %"$out_of_gas_823", label %"$have_gas_824"

"$out_of_gas_823":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_824"

"$have_gas_824":                                  ; preds = %"$out_of_gas_823", %entry
  %"$consume_825" = sub i64 %"$gasrem_821", 1
  store i64 %"$consume_825", i64* @_gasrem, align 8
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_67_env_140"*, { i8*, i8* }*)* @"$fundef_67" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66", align 8, !dbg !11
  %"$$retval_66_829" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66", align 8
  ret { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_66_829"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_63"(%"$$fundef_63_env_142"* %0, { i8*, i8* }* %1) !dbg !12 {
entry:
  %"$retval_64" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_810" = icmp ugt i64 1, %"$gasrem_809"
  br i1 %"$gascmp_810", label %"$out_of_gas_811", label %"$have_gas_812"

"$out_of_gas_811":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_812"

"$have_gas_812":                                  ; preds = %"$out_of_gas_811", %entry
  %"$consume_813" = sub i64 %"$gasrem_809", 1
  store i64 %"$consume_813", i64* @_gasrem, align 8
  %"$f_814" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$f_815" = bitcast { i8*, i8* }* %"$f_814" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_816" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_815", align 8
  %"$f_fptr_817" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_816", 0
  %"$f_envptr_818" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_816", 1
  %"$f_call_819" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_817"(i8* %"$f_envptr_818"), !dbg !13
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_819", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_64", align 8, !dbg !14
  %"$$retval_64_820" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_64", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_64_820"
}

define internal { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_61"(%"$$fundef_61_env_143"* %0) !dbg !15 {
entry:
  %"$retval_62" = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_800" = load i64, i64* @_gasrem, align 8
  %"$gascmp_801" = icmp ugt i64 1, %"$gasrem_800"
  br i1 %"$gascmp_801", label %"$out_of_gas_802", label %"$have_gas_803"

"$out_of_gas_802":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_803"

"$have_gas_803":                                  ; preds = %"$out_of_gas_802", %entry
  %"$consume_804" = sub i64 %"$gasrem_800", 1
  store i64 %"$consume_804", i64* @_gasrem, align 8
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_63_env_142"*, { i8*, i8* }*)* @"$fundef_63" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62", align 8, !dbg !16
  %"$$retval_62_808" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62", align 8
  ret { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_62_808"
}

define internal %TName_List_Int64* @"$fundef_59"(%"$$fundef_59_env_144"* %0, %Int64 %1) !dbg !17 {
entry:
  %"$retval_60" = alloca %TName_List_Int64*, align 8
  %"$gasrem_759" = load i64, i64* @_gasrem, align 8
  %"$gascmp_760" = icmp ugt i64 1, %"$gasrem_759"
  br i1 %"$gascmp_760", label %"$out_of_gas_761", label %"$have_gas_762"

"$out_of_gas_761":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_762"

"$have_gas_762":                                  ; preds = %"$out_of_gas_761", %entry
  %"$consume_763" = sub i64 %"$gasrem_759", 1
  store i64 %"$consume_763", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  %"$gasrem_764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_765" = icmp ugt i64 1, %"$gasrem_764"
  br i1 %"$gascmp_765", label %"$out_of_gas_766", label %"$have_gas_767"

"$out_of_gas_766":                                ; preds = %"$have_gas_762"
  call void @_out_of_gas()
  br label %"$have_gas_767"

"$have_gas_767":                                  ; preds = %"$out_of_gas_766", %"$have_gas_762"
  %"$consume_768" = sub i64 %"$gasrem_764", 1
  store i64 %"$consume_768", i64* @_gasrem, align 8
  %"$adtval_769_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_769_salloc" = call i8* @_salloc(i8* %"$adtval_769_load", i64 1)
  %"$adtval_769" = bitcast i8* %"$adtval_769_salloc" to %CName_Nil_Int64*
  %"$adtgep_770" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_769", i32 0, i32 0
  store i8 1, i8* %"$adtgep_770", align 1
  %"$adtptr_771" = bitcast %CName_Nil_Int64* %"$adtval_769" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_771", %TName_List_Int64** %an, align 8, !dbg !18
  %"$gasrem_772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_773" = icmp ugt i64 1, %"$gasrem_772"
  br i1 %"$gascmp_773", label %"$out_of_gas_774", label %"$have_gas_775"

"$out_of_gas_774":                                ; preds = %"$have_gas_767"
  call void @_out_of_gas()
  br label %"$have_gas_775"

"$have_gas_775":                                  ; preds = %"$out_of_gas_774", %"$have_gas_767"
  %"$consume_776" = sub i64 %"$gasrem_772", 1
  store i64 %"$consume_776", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int64*, align 8
  %"$gasrem_777" = load i64, i64* @_gasrem, align 8
  %"$gascmp_778" = icmp ugt i64 1, %"$gasrem_777"
  br i1 %"$gascmp_778", label %"$out_of_gas_779", label %"$have_gas_780"

"$out_of_gas_779":                                ; preds = %"$have_gas_775"
  call void @_out_of_gas()
  br label %"$have_gas_780"

"$have_gas_780":                                  ; preds = %"$out_of_gas_779", %"$have_gas_775"
  %"$consume_781" = sub i64 %"$gasrem_777", 1
  store i64 %"$consume_781", i64* @_gasrem, align 8
  %"$an_782" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_783_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_783_salloc" = call i8* @_salloc(i8* %"$adtval_783_load", i64 17)
  %"$adtval_783" = bitcast i8* %"$adtval_783_salloc" to %CName_Cons_Int64*
  %"$adtgep_784" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_783", i32 0, i32 0
  store i8 0, i8* %"$adtgep_784", align 1
  %"$adtgep_785" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_783", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_785", align 8
  %"$adtgep_786" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_783", i32 0, i32 2
  store %TName_List_Int64* %"$an_782", %TName_List_Int64** %"$adtgep_786", align 8
  %"$adtptr_787" = bitcast %CName_Cons_Int64* %"$adtval_783" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_787", %TName_List_Int64** %a1, align 8, !dbg !19
  %"$gasrem_788" = load i64, i64* @_gasrem, align 8
  %"$gascmp_789" = icmp ugt i64 1, %"$gasrem_788"
  br i1 %"$gascmp_789", label %"$out_of_gas_790", label %"$have_gas_791"

"$out_of_gas_790":                                ; preds = %"$have_gas_780"
  call void @_out_of_gas()
  br label %"$have_gas_791"

"$have_gas_791":                                  ; preds = %"$out_of_gas_790", %"$have_gas_780"
  %"$consume_792" = sub i64 %"$gasrem_788", 1
  store i64 %"$consume_792", i64* @_gasrem, align 8
  %"$a1_793" = load %TName_List_Int64*, %TName_List_Int64** %a1, align 8
  %"$adtval_794_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_794_salloc" = call i8* @_salloc(i8* %"$adtval_794_load", i64 17)
  %"$adtval_794" = bitcast i8* %"$adtval_794_salloc" to %CName_Cons_Int64*
  %"$adtgep_795" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_794", i32 0, i32 0
  store i8 0, i8* %"$adtgep_795", align 1
  %"$adtgep_796" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_794", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_796", align 8
  %"$adtgep_797" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_794", i32 0, i32 2
  store %TName_List_Int64* %"$a1_793", %TName_List_Int64** %"$adtgep_797", align 8
  %"$adtptr_798" = bitcast %CName_Cons_Int64* %"$adtval_794" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_798", %TName_List_Int64** %"$retval_60", align 8, !dbg !20
  %"$$retval_60_799" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_60", align 8
  ret %TName_List_Int64* %"$$retval_60_799"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_57"(%"$$fundef_57_env_145"* %0) !dbg !21 {
entry:
  %"$retval_58" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_751" = icmp ugt i64 1, %"$gasrem_750"
  br i1 %"$gascmp_751", label %"$out_of_gas_752", label %"$have_gas_753"

"$out_of_gas_752":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_753"

"$have_gas_753":                                  ; preds = %"$out_of_gas_752", %entry
  %"$consume_754" = sub i64 %"$gasrem_750", 1
  store i64 %"$consume_754", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_59_env_144"*, %Int64)* @"$fundef_59" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_58", align 8, !dbg !22
  %"$$retval_58_758" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_58", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_58_758"
}

define internal %TName_List_Int32* @"$fundef_55"(%"$$fundef_55_env_146"* %0, %Int32 %1) !dbg !23 {
entry:
  %"$retval_56" = alloca %TName_List_Int32*, align 8
  %"$gasrem_709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_710" = icmp ugt i64 1, %"$gasrem_709"
  br i1 %"$gascmp_710", label %"$out_of_gas_711", label %"$have_gas_712"

"$out_of_gas_711":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_712"

"$have_gas_712":                                  ; preds = %"$out_of_gas_711", %entry
  %"$consume_713" = sub i64 %"$gasrem_709", 1
  store i64 %"$consume_713", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  %"$gasrem_714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_715" = icmp ugt i64 1, %"$gasrem_714"
  br i1 %"$gascmp_715", label %"$out_of_gas_716", label %"$have_gas_717"

"$out_of_gas_716":                                ; preds = %"$have_gas_712"
  call void @_out_of_gas()
  br label %"$have_gas_717"

"$have_gas_717":                                  ; preds = %"$out_of_gas_716", %"$have_gas_712"
  %"$consume_718" = sub i64 %"$gasrem_714", 1
  store i64 %"$consume_718", i64* @_gasrem, align 8
  %"$adtval_719_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_719_salloc" = call i8* @_salloc(i8* %"$adtval_719_load", i64 1)
  %"$adtval_719" = bitcast i8* %"$adtval_719_salloc" to %CName_Nil_Int32*
  %"$adtgep_720" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_719", i32 0, i32 0
  store i8 1, i8* %"$adtgep_720", align 1
  %"$adtptr_721" = bitcast %CName_Nil_Int32* %"$adtval_719" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_721", %TName_List_Int32** %an, align 8, !dbg !24
  %"$gasrem_722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_723" = icmp ugt i64 1, %"$gasrem_722"
  br i1 %"$gascmp_723", label %"$out_of_gas_724", label %"$have_gas_725"

"$out_of_gas_724":                                ; preds = %"$have_gas_717"
  call void @_out_of_gas()
  br label %"$have_gas_725"

"$have_gas_725":                                  ; preds = %"$out_of_gas_724", %"$have_gas_717"
  %"$consume_726" = sub i64 %"$gasrem_722", 1
  store i64 %"$consume_726", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int32*, align 8
  %"$gasrem_727" = load i64, i64* @_gasrem, align 8
  %"$gascmp_728" = icmp ugt i64 1, %"$gasrem_727"
  br i1 %"$gascmp_728", label %"$out_of_gas_729", label %"$have_gas_730"

"$out_of_gas_729":                                ; preds = %"$have_gas_725"
  call void @_out_of_gas()
  br label %"$have_gas_730"

"$have_gas_730":                                  ; preds = %"$out_of_gas_729", %"$have_gas_725"
  %"$consume_731" = sub i64 %"$gasrem_727", 1
  store i64 %"$consume_731", i64* @_gasrem, align 8
  %"$an_732" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_733_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_733_salloc" = call i8* @_salloc(i8* %"$adtval_733_load", i64 13)
  %"$adtval_733" = bitcast i8* %"$adtval_733_salloc" to %CName_Cons_Int32*
  %"$adtgep_734" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_733", i32 0, i32 0
  store i8 0, i8* %"$adtgep_734", align 1
  %"$adtgep_735" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_733", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_735", align 4
  %"$adtgep_736" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_733", i32 0, i32 2
  store %TName_List_Int32* %"$an_732", %TName_List_Int32** %"$adtgep_736", align 8
  %"$adtptr_737" = bitcast %CName_Cons_Int32* %"$adtval_733" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_737", %TName_List_Int32** %a1, align 8, !dbg !25
  %"$gasrem_738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_739" = icmp ugt i64 1, %"$gasrem_738"
  br i1 %"$gascmp_739", label %"$out_of_gas_740", label %"$have_gas_741"

"$out_of_gas_740":                                ; preds = %"$have_gas_730"
  call void @_out_of_gas()
  br label %"$have_gas_741"

"$have_gas_741":                                  ; preds = %"$out_of_gas_740", %"$have_gas_730"
  %"$consume_742" = sub i64 %"$gasrem_738", 1
  store i64 %"$consume_742", i64* @_gasrem, align 8
  %"$a1_743" = load %TName_List_Int32*, %TName_List_Int32** %a1, align 8
  %"$adtval_744_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_744_salloc" = call i8* @_salloc(i8* %"$adtval_744_load", i64 13)
  %"$adtval_744" = bitcast i8* %"$adtval_744_salloc" to %CName_Cons_Int32*
  %"$adtgep_745" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_744", i32 0, i32 0
  store i8 0, i8* %"$adtgep_745", align 1
  %"$adtgep_746" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_744", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_746", align 4
  %"$adtgep_747" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_744", i32 0, i32 2
  store %TName_List_Int32* %"$a1_743", %TName_List_Int32** %"$adtgep_747", align 8
  %"$adtptr_748" = bitcast %CName_Cons_Int32* %"$adtval_744" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_748", %TName_List_Int32** %"$retval_56", align 8, !dbg !26
  %"$$retval_56_749" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_56", align 8
  ret %TName_List_Int32* %"$$retval_56_749"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_53"(%"$$fundef_53_env_147"* %0) !dbg !27 {
entry:
  %"$retval_54" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_701" = icmp ugt i64 1, %"$gasrem_700"
  br i1 %"$gascmp_701", label %"$out_of_gas_702", label %"$have_gas_703"

"$out_of_gas_702":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_703"

"$have_gas_703":                                  ; preds = %"$out_of_gas_702", %entry
  %"$consume_704" = sub i64 %"$gasrem_700", 1
  store i64 %"$consume_704", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_55_env_146"*, %Int32)* @"$fundef_55" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_54", align 8, !dbg !28
  %"$$retval_54_708" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_54", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_54_708"
}

define internal %TName_List_Int64* @"$fundef_51"(%"$$fundef_51_env_148"* %0, %Int64 %1) !dbg !29 {
entry:
  %"$retval_52" = alloca %TName_List_Int64*, align 8
  %"$gasrem_675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_676" = icmp ugt i64 1, %"$gasrem_675"
  br i1 %"$gascmp_676", label %"$out_of_gas_677", label %"$have_gas_678"

"$out_of_gas_677":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_678"

"$have_gas_678":                                  ; preds = %"$out_of_gas_677", %entry
  %"$consume_679" = sub i64 %"$gasrem_675", 1
  store i64 %"$consume_679", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  %"$gasrem_680" = load i64, i64* @_gasrem, align 8
  %"$gascmp_681" = icmp ugt i64 1, %"$gasrem_680"
  br i1 %"$gascmp_681", label %"$out_of_gas_682", label %"$have_gas_683"

"$out_of_gas_682":                                ; preds = %"$have_gas_678"
  call void @_out_of_gas()
  br label %"$have_gas_683"

"$have_gas_683":                                  ; preds = %"$out_of_gas_682", %"$have_gas_678"
  %"$consume_684" = sub i64 %"$gasrem_680", 1
  store i64 %"$consume_684", i64* @_gasrem, align 8
  %"$adtval_685_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_685_salloc" = call i8* @_salloc(i8* %"$adtval_685_load", i64 1)
  %"$adtval_685" = bitcast i8* %"$adtval_685_salloc" to %CName_Nil_Int64*
  %"$adtgep_686" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_685", i32 0, i32 0
  store i8 1, i8* %"$adtgep_686", align 1
  %"$adtptr_687" = bitcast %CName_Nil_Int64* %"$adtval_685" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_687", %TName_List_Int64** %an, align 8, !dbg !30
  %"$gasrem_688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_689" = icmp ugt i64 1, %"$gasrem_688"
  br i1 %"$gascmp_689", label %"$out_of_gas_690", label %"$have_gas_691"

"$out_of_gas_690":                                ; preds = %"$have_gas_683"
  call void @_out_of_gas()
  br label %"$have_gas_691"

"$have_gas_691":                                  ; preds = %"$out_of_gas_690", %"$have_gas_683"
  %"$consume_692" = sub i64 %"$gasrem_688", 1
  store i64 %"$consume_692", i64* @_gasrem, align 8
  %"$an_693" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_694_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_694_salloc" = call i8* @_salloc(i8* %"$adtval_694_load", i64 17)
  %"$adtval_694" = bitcast i8* %"$adtval_694_salloc" to %CName_Cons_Int64*
  %"$adtgep_695" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_694", i32 0, i32 0
  store i8 0, i8* %"$adtgep_695", align 1
  %"$adtgep_696" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_694", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_696", align 8
  %"$adtgep_697" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_694", i32 0, i32 2
  store %TName_List_Int64* %"$an_693", %TName_List_Int64** %"$adtgep_697", align 8
  %"$adtptr_698" = bitcast %CName_Cons_Int64* %"$adtval_694" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_698", %TName_List_Int64** %"$retval_52", align 8, !dbg !31
  %"$$retval_52_699" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_52", align 8
  ret %TName_List_Int64* %"$$retval_52_699"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_49"(%"$$fundef_49_env_149"* %0) !dbg !32 {
entry:
  %"$retval_50" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_667" = icmp ugt i64 1, %"$gasrem_666"
  br i1 %"$gascmp_667", label %"$out_of_gas_668", label %"$have_gas_669"

"$out_of_gas_668":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_669"

"$have_gas_669":                                  ; preds = %"$out_of_gas_668", %entry
  %"$consume_670" = sub i64 %"$gasrem_666", 1
  store i64 %"$consume_670", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_51_env_148"*, %Int64)* @"$fundef_51" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_50", align 8, !dbg !33
  %"$$retval_50_674" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_50", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_50_674"
}

define internal %TName_List_Int32* @"$fundef_47"(%"$$fundef_47_env_150"* %0, %Int32 %1) !dbg !34 {
entry:
  %"$retval_48" = alloca %TName_List_Int32*, align 8
  %"$gasrem_641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_642" = icmp ugt i64 1, %"$gasrem_641"
  br i1 %"$gascmp_642", label %"$out_of_gas_643", label %"$have_gas_644"

"$out_of_gas_643":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_644"

"$have_gas_644":                                  ; preds = %"$out_of_gas_643", %entry
  %"$consume_645" = sub i64 %"$gasrem_641", 1
  store i64 %"$consume_645", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  %"$gasrem_646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_647" = icmp ugt i64 1, %"$gasrem_646"
  br i1 %"$gascmp_647", label %"$out_of_gas_648", label %"$have_gas_649"

"$out_of_gas_648":                                ; preds = %"$have_gas_644"
  call void @_out_of_gas()
  br label %"$have_gas_649"

"$have_gas_649":                                  ; preds = %"$out_of_gas_648", %"$have_gas_644"
  %"$consume_650" = sub i64 %"$gasrem_646", 1
  store i64 %"$consume_650", i64* @_gasrem, align 8
  %"$adtval_651_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_651_salloc" = call i8* @_salloc(i8* %"$adtval_651_load", i64 1)
  %"$adtval_651" = bitcast i8* %"$adtval_651_salloc" to %CName_Nil_Int32*
  %"$adtgep_652" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_651", i32 0, i32 0
  store i8 1, i8* %"$adtgep_652", align 1
  %"$adtptr_653" = bitcast %CName_Nil_Int32* %"$adtval_651" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_653", %TName_List_Int32** %an, align 8, !dbg !35
  %"$gasrem_654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_655" = icmp ugt i64 1, %"$gasrem_654"
  br i1 %"$gascmp_655", label %"$out_of_gas_656", label %"$have_gas_657"

"$out_of_gas_656":                                ; preds = %"$have_gas_649"
  call void @_out_of_gas()
  br label %"$have_gas_657"

"$have_gas_657":                                  ; preds = %"$out_of_gas_656", %"$have_gas_649"
  %"$consume_658" = sub i64 %"$gasrem_654", 1
  store i64 %"$consume_658", i64* @_gasrem, align 8
  %"$an_659" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_660_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_660_salloc" = call i8* @_salloc(i8* %"$adtval_660_load", i64 13)
  %"$adtval_660" = bitcast i8* %"$adtval_660_salloc" to %CName_Cons_Int32*
  %"$adtgep_661" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_660", i32 0, i32 0
  store i8 0, i8* %"$adtgep_661", align 1
  %"$adtgep_662" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_660", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_662", align 4
  %"$adtgep_663" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_660", i32 0, i32 2
  store %TName_List_Int32* %"$an_659", %TName_List_Int32** %"$adtgep_663", align 8
  %"$adtptr_664" = bitcast %CName_Cons_Int32* %"$adtval_660" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_664", %TName_List_Int32** %"$retval_48", align 8, !dbg !36
  %"$$retval_48_665" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_48", align 8
  ret %TName_List_Int32* %"$$retval_48_665"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_45"(%"$$fundef_45_env_151"* %0) !dbg !37 {
entry:
  %"$retval_46" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_633" = icmp ugt i64 1, %"$gasrem_632"
  br i1 %"$gascmp_633", label %"$out_of_gas_634", label %"$have_gas_635"

"$out_of_gas_634":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_635"

"$have_gas_635":                                  ; preds = %"$out_of_gas_634", %entry
  %"$consume_636" = sub i64 %"$gasrem_632", 1
  store i64 %"$consume_636", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_47_env_150"*, %Int32)* @"$fundef_47" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_46", align 8, !dbg !38
  %"$$retval_46_640" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_46", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_46_640"
}

define internal %Uint32 @"$fundef_42"(%"$$fundef_42_env_152"* %0, %Int64 %1) !dbg !39 {
entry:
  %"$$fundef_42_env_one_619" = getelementptr inbounds %"$$fundef_42_env_152", %"$$fundef_42_env_152"* %0, i32 0, i32 0
  %"$one_envload_620" = load %Uint32, %Uint32* %"$$fundef_42_env_one_619", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_620", %Uint32* %one, align 4
  %"$$fundef_42_env_z_621" = getelementptr inbounds %"$$fundef_42_env_152", %"$$fundef_42_env_152"* %0, i32 0, i32 1
  %"$z_envload_622" = load %Uint32, %Uint32* %"$$fundef_42_env_z_621", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_622", %Uint32* %z, align 4
  %"$retval_43" = alloca %Uint32, align 8
  %"$gasrem_623" = load i64, i64* @_gasrem, align 8
  %"$gascmp_624" = icmp ugt i64 4, %"$gasrem_623"
  br i1 %"$gascmp_624", label %"$out_of_gas_625", label %"$have_gas_626"

"$out_of_gas_625":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_626"

"$have_gas_626":                                  ; preds = %"$out_of_gas_625", %entry
  %"$consume_627" = sub i64 %"$gasrem_623", 4
  store i64 %"$consume_627", i64* @_gasrem, align 8
  %"$one_628" = load %Uint32, %Uint32* %one, align 4
  %"$z_629" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_630" = call %Uint32 @_add_Uint32(%Uint32 %"$one_628", %Uint32 %"$z_629"), !dbg !41
  store %Uint32 %"$add_call_630", %Uint32* %"$retval_43", align 4, !dbg !41
  %"$$retval_43_631" = load %Uint32, %Uint32* %"$retval_43", align 4
  ret %Uint32 %"$$retval_43_631"
}

define internal { %Uint32 (i8*, %Int64)*, i8* } @"$fundef_40"(%"$$fundef_40_env_153"* %0, %Uint32 %1) !dbg !42 {
entry:
  %"$$fundef_40_env_one_604" = getelementptr inbounds %"$$fundef_40_env_153", %"$$fundef_40_env_153"* %0, i32 0, i32 0
  %"$one_envload_605" = load %Uint32, %Uint32* %"$$fundef_40_env_one_604", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_605", %Uint32* %one, align 4
  %"$retval_41" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_607" = icmp ugt i64 1, %"$gasrem_606"
  br i1 %"$gascmp_607", label %"$out_of_gas_608", label %"$have_gas_609"

"$out_of_gas_608":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_609"

"$have_gas_609":                                  ; preds = %"$out_of_gas_608", %entry
  %"$consume_610" = sub i64 %"$gasrem_606", 1
  store i64 %"$consume_610", i64* @_gasrem, align 8
  %"$$fundef_42_envp_611_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_42_envp_611_salloc" = call i8* @_salloc(i8* %"$$fundef_42_envp_611_load", i64 8)
  %"$$fundef_42_envp_611" = bitcast i8* %"$$fundef_42_envp_611_salloc" to %"$$fundef_42_env_152"*
  %"$$fundef_42_env_voidp_613" = bitcast %"$$fundef_42_env_152"* %"$$fundef_42_envp_611" to i8*
  %"$$fundef_42_cloval_614" = insertvalue { %Uint32 (i8*, %Int64)*, i8* } { %Uint32 (i8*, %Int64)* bitcast (%Uint32 (%"$$fundef_42_env_152"*, %Int64)* @"$fundef_42" to %Uint32 (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_42_env_voidp_613", 1
  %"$$fundef_42_env_one_615" = getelementptr inbounds %"$$fundef_42_env_152", %"$$fundef_42_env_152"* %"$$fundef_42_envp_611", i32 0, i32 0
  %"$one_616" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_616", %Uint32* %"$$fundef_42_env_one_615", align 4
  %"$$fundef_42_env_z_617" = getelementptr inbounds %"$$fundef_42_env_152", %"$$fundef_42_env_152"* %"$$fundef_42_envp_611", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_42_env_z_617", align 4
  store { %Uint32 (i8*, %Int64)*, i8* } %"$$fundef_42_cloval_614", { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_41", align 8, !dbg !43
  %"$$retval_41_618" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_41", align 8
  ret { %Uint32 (i8*, %Int64)*, i8* } %"$$retval_41_618"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_154"* %0) !dbg !44 {
entry:
  %"$$fundef_38_env_list_foldl_526" = getelementptr inbounds %"$$fundef_38_env_154", %"$$fundef_38_env_154"* %0, i32 0, i32 0
  %"$list_foldl_envload_527" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_38_env_list_foldl_526", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_527", { i8*, i8* }** %list_foldl, align 8
  %"$retval_39" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_529" = icmp ugt i64 1, %"$gasrem_528"
  br i1 %"$gascmp_529", label %"$out_of_gas_530", label %"$have_gas_531"

"$out_of_gas_530":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_531"

"$have_gas_531":                                  ; preds = %"$out_of_gas_530", %entry
  %"$consume_532" = sub i64 %"$gasrem_528", 1
  store i64 %"$consume_532", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_534" = icmp ugt i64 1, %"$gasrem_533"
  br i1 %"$gascmp_534", label %"$out_of_gas_535", label %"$have_gas_536"

"$out_of_gas_535":                                ; preds = %"$have_gas_531"
  call void @_out_of_gas()
  br label %"$have_gas_536"

"$have_gas_536":                                  ; preds = %"$out_of_gas_535", %"$have_gas_531"
  %"$consume_537" = sub i64 %"$gasrem_533", 1
  store i64 %"$consume_537", i64* @_gasrem, align 8
  %"$list_foldl_538" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_539" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_538", i32 2
  %"$list_foldl_540" = bitcast { i8*, i8* }* %"$list_foldl_539" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_541" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_540", align 8
  %"$list_foldl_fptr_542" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_541", 0
  %"$list_foldl_envptr_543" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_541", 1
  %"$list_foldl_call_544" = call { i8*, i8* }* %"$list_foldl_fptr_542"(i8* %"$list_foldl_envptr_543"), !dbg !45
  %"$list_foldl_545" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_544", i32 1
  %"$list_foldl_546" = bitcast { i8*, i8* }* %"$list_foldl_545" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_547" = load { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_546", align 8
  %"$list_foldl_fptr_548" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_547", 0
  %"$list_foldl_envptr_549" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_547", 1
  %"$list_foldl_call_550" = call { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_548"(i8* %"$list_foldl_envptr_549"), !dbg !45
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_550", { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8, !dbg !46
  %"$gasrem_551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_552" = icmp ugt i64 1, %"$gasrem_551"
  br i1 %"$gascmp_552", label %"$out_of_gas_553", label %"$have_gas_554"

"$out_of_gas_553":                                ; preds = %"$have_gas_536"
  call void @_out_of_gas()
  br label %"$have_gas_554"

"$have_gas_554":                                  ; preds = %"$out_of_gas_553", %"$have_gas_536"
  %"$consume_555" = sub i64 %"$gasrem_551", 1
  store i64 %"$consume_555", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_557" = icmp ugt i64 1, %"$gasrem_556"
  br i1 %"$gascmp_557", label %"$out_of_gas_558", label %"$have_gas_559"

"$out_of_gas_558":                                ; preds = %"$have_gas_554"
  call void @_out_of_gas()
  br label %"$have_gas_559"

"$have_gas_559":                                  ; preds = %"$out_of_gas_558", %"$have_gas_554"
  %"$consume_560" = sub i64 %"$gasrem_556", 1
  store i64 %"$consume_560", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !47
  %"$gasrem_561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_562" = icmp ugt i64 1, %"$gasrem_561"
  br i1 %"$gascmp_562", label %"$out_of_gas_563", label %"$have_gas_564"

"$out_of_gas_563":                                ; preds = %"$have_gas_559"
  call void @_out_of_gas()
  br label %"$have_gas_564"

"$have_gas_564":                                  ; preds = %"$out_of_gas_563", %"$have_gas_559"
  %"$consume_565" = sub i64 %"$gasrem_561", 1
  store i64 %"$consume_565", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_567" = icmp ugt i64 1, %"$gasrem_566"
  br i1 %"$gascmp_567", label %"$out_of_gas_568", label %"$have_gas_569"

"$out_of_gas_568":                                ; preds = %"$have_gas_564"
  call void @_out_of_gas()
  br label %"$have_gas_569"

"$have_gas_569":                                  ; preds = %"$out_of_gas_568", %"$have_gas_564"
  %"$consume_570" = sub i64 %"$gasrem_566", 1
  store i64 %"$consume_570", i64* @_gasrem, align 8
  %"$$fundef_40_envp_571_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_40_envp_571_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_571_load", i64 4)
  %"$$fundef_40_envp_571" = bitcast i8* %"$$fundef_40_envp_571_salloc" to %"$$fundef_40_env_153"*
  %"$$fundef_40_env_voidp_573" = bitcast %"$$fundef_40_env_153"* %"$$fundef_40_envp_571" to i8*
  %"$$fundef_40_cloval_574" = insertvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int64)*, i8* } (%"$$fundef_40_env_153"*, %Uint32)* @"$fundef_40" to { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_40_env_voidp_573", 1
  %"$$fundef_40_env_one_575" = getelementptr inbounds %"$$fundef_40_env_153", %"$$fundef_40_env_153"* %"$$fundef_40_envp_571", i32 0, i32 0
  %"$one_576" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_576", %Uint32* %"$$fundef_40_env_one_575", align 4
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_40_cloval_574", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8, !dbg !48
  %"$gasrem_577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_578" = icmp ugt i64 1, %"$gasrem_577"
  br i1 %"$gascmp_578", label %"$out_of_gas_579", label %"$have_gas_580"

"$out_of_gas_579":                                ; preds = %"$have_gas_569"
  call void @_out_of_gas()
  br label %"$have_gas_580"

"$have_gas_580":                                  ; preds = %"$out_of_gas_579", %"$have_gas_569"
  %"$consume_581" = sub i64 %"$gasrem_577", 1
  store i64 %"$consume_581", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_582" = load i64, i64* @_gasrem, align 8
  %"$gascmp_583" = icmp ugt i64 1, %"$gasrem_582"
  br i1 %"$gascmp_583", label %"$out_of_gas_584", label %"$have_gas_585"

"$out_of_gas_584":                                ; preds = %"$have_gas_580"
  call void @_out_of_gas()
  br label %"$have_gas_585"

"$have_gas_585":                                  ; preds = %"$out_of_gas_584", %"$have_gas_580"
  %"$consume_586" = sub i64 %"$gasrem_582", 1
  store i64 %"$consume_586", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4, !dbg !49
  %"$gasrem_587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_588" = icmp ugt i64 1, %"$gasrem_587"
  br i1 %"$gascmp_588", label %"$out_of_gas_589", label %"$have_gas_590"

"$out_of_gas_589":                                ; preds = %"$have_gas_585"
  call void @_out_of_gas()
  br label %"$have_gas_590"

"$have_gas_590":                                  ; preds = %"$out_of_gas_589", %"$have_gas_585"
  %"$consume_591" = sub i64 %"$gasrem_587", 1
  store i64 %"$consume_591", i64* @_gasrem, align 8
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_592" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_593" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_592", 0
  %"$foldl_envptr_594" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_592", 1
  %"$iter_595" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_596" = call { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_593"(i8* %"$foldl_envptr_594", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_595"), !dbg !50
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_596", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8, !dbg !50
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$$foldl_4_597" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8
  %"$$foldl_4_fptr_598" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_597", 0
  %"$$foldl_4_envptr_599" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_597", 1
  %"$init_600" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_4_call_601" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_fptr_598"(i8* %"$$foldl_4_envptr_599", %Uint32 %"$init_600"), !dbg !50
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_call_601", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5", align 8, !dbg !50
  %"$$foldl_5_602" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5", align 8
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_5_602", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_39", align 8, !dbg !50
  %"$$retval_39_603" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_39", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_39_603"
}

define internal %Uint32 @"$fundef_36"(%"$$fundef_36_env_155"* %0, %Int32 %1) !dbg !51 {
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
  %"$gasrem_517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_518" = icmp ugt i64 4, %"$gasrem_517"
  br i1 %"$gascmp_518", label %"$out_of_gas_519", label %"$have_gas_520"

"$out_of_gas_519":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_520"

"$have_gas_520":                                  ; preds = %"$out_of_gas_519", %entry
  %"$consume_521" = sub i64 %"$gasrem_517", 4
  store i64 %"$consume_521", i64* @_gasrem, align 8
  %"$one_522" = load %Uint32, %Uint32* %one, align 4
  %"$z_523" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_524" = call %Uint32 @_add_Uint32(%Uint32 %"$one_522", %Uint32 %"$z_523"), !dbg !52
  store %Uint32 %"$add_call_524", %Uint32* %"$retval_37", align 4, !dbg !52
  %"$$retval_37_525" = load %Uint32, %Uint32* %"$retval_37", align 4
  ret %Uint32 %"$$retval_37_525"
}

define internal { %Uint32 (i8*, %Int32)*, i8* } @"$fundef_34"(%"$$fundef_34_env_156"* %0, %Uint32 %1) !dbg !53 {
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
  store { %Uint32 (i8*, %Int32)*, i8* } %"$$fundef_36_cloval_508", { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_35", align 8, !dbg !54
  %"$$retval_35_512" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_35", align 8
  ret { %Uint32 (i8*, %Int32)*, i8* } %"$$retval_35_512"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_32"(%"$$fundef_32_env_157"* %0) !dbg !55 {
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
  %"$list_foldl_call_438" = call { i8*, i8* }* %"$list_foldl_fptr_436"(i8* %"$list_foldl_envptr_437"), !dbg !56
  %"$list_foldl_439" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_438", i32 1
  %"$list_foldl_440" = bitcast { i8*, i8* }* %"$list_foldl_439" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_441" = load { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_440", align 8
  %"$list_foldl_fptr_442" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_441", 0
  %"$list_foldl_envptr_443" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_441", 1
  %"$list_foldl_call_444" = call { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_442"(i8* %"$list_foldl_envptr_443"), !dbg !56
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_444", { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8, !dbg !57
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
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !58
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
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_34_cloval_468", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8, !dbg !59
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
  store %Uint32 zeroinitializer, %Uint32* %init, align 4, !dbg !60
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
  %"$foldl_call_490" = call { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_487"(i8* %"$foldl_envptr_488", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_489"), !dbg !61
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_490", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8, !dbg !61
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$$foldl_4_491" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8
  %"$$foldl_4_fptr_492" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_491", 0
  %"$$foldl_4_envptr_493" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_491", 1
  %"$init_494" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_4_call_495" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_fptr_492"(i8* %"$$foldl_4_envptr_493", %Uint32 %"$init_494"), !dbg !61
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_call_495", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5", align 8, !dbg !61
  %"$$foldl_5_496" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5", align 8
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_5_496", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_33", align 8, !dbg !61
  %"$$retval_33_497" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_33", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_33_497"
}

define internal %Uint32 @"$fundef_30"(%"$$fundef_30_env_158"* %0, %TName_List_Int64* %1) !dbg !62 {
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
  ], !dbg !64

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
  %"$f_call_388" = call { %Uint32 (i8*, %Int64)*, i8* } %"$f_fptr_385"(i8* %"$f_envptr_386", %Uint32 %"$z_387"), !dbg !65
  store { %Uint32 (i8*, %Int64)*, i8* } %"$f_call_388", { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0", align 8, !dbg !65
  %"$f_1" = alloca %Uint32, align 8
  %"$$f_0_389" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0", align 8
  %"$$f_0_fptr_390" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_389", 0
  %"$$f_0_envptr_391" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_389", 1
  %"$h_392" = load %Int64, %Int64* %h, align 8
  %"$$f_0_call_393" = call %Uint32 %"$$f_0_fptr_390"(i8* %"$$f_0_envptr_391", %Int64 %"$h_392"), !dbg !65
  store %Uint32 %"$$f_0_call_393", %Uint32* %"$f_1", align 4, !dbg !65
  %"$$f_1_394" = load %Uint32, %Uint32* %"$f_1", align 4
  store %Uint32 %"$$f_1_394", %Uint32* %res, align 4, !dbg !65
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
  %"$g_call_404" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_fptr_401"(i8* %"$g_envptr_402", %Uint32 %"$res_403"), !dbg !68
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_call_404", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2", align 8, !dbg !68
  %"$g_3" = alloca %Uint32, align 8
  %"$$g_2_405" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2", align 8
  %"$$g_2_fptr_406" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_405", 0
  %"$$g_2_envptr_407" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_405", 1
  %"$t_408" = load %TName_List_Int64*, %TName_List_Int64** %t, align 8
  %"$$g_2_call_409" = call %Uint32 %"$$g_2_fptr_406"(i8* %"$$g_2_envptr_407", %TName_List_Int64* %"$t_408"), !dbg !68
  store %Uint32 %"$$g_2_call_409", %Uint32* %"$g_3", align 4, !dbg !68
  %"$$g_3_410" = load %Uint32, %Uint32* %"$g_3", align 4
  store %Uint32 %"$$g_3_410", %Uint32* %"$retval_31", align 4, !dbg !68
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
  store %Uint32 %"$z_418", %Uint32* %"$retval_31", align 4, !dbg !69
  br label %"$matchsucc_364"

"$empty_default_367":                             ; preds = %"$have_gas_362"
  br label %"$matchsucc_364"

"$matchsucc_364":                                 ; preds = %"$have_gas_416", %"$have_gas_398", %"$empty_default_367"
  %"$$retval_31_419" = load %Uint32, %Uint32* %"$retval_31", align 4
  ret %Uint32 %"$$retval_31_419"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_28"(%"$$fundef_28_env_159"* %0, %Uint32 %1) !dbg !71 {
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
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$fundef_30_cloval_346", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_29", align 8, !dbg !72
  %"$$retval_29_352" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_29", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_29_352"
}

define internal { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_26"(%"$$fundef_26_env_160"* %0, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !73 {
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
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_28_cloval_328", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !74
  %"$$fundef_28_env_f_329" = getelementptr inbounds %"$$fundef_28_env_159", %"$$fundef_28_env_159"* %"$$fundef_28_envp_325", i32 0, i32 0
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_329", align 8
  %"$$fundef_28_env_g_330" = getelementptr inbounds %"$$fundef_28_env_159", %"$$fundef_28_env_159"* %"$$fundef_28_envp_325", i32 0, i32 1
  %"$g_331" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_331", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_330", align 8
  %"$g_332" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_332", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_27", align 8, !dbg !74
  %"$$retval_27_333" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_27", align 8
  ret { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_27_333"
}

define internal { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_24"(%"$$fundef_24_env_161"* %0) !dbg !75 {
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
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_26_env_160"*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_26" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_25", align 8, !dbg !76
  %"$$retval_25_314" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_25", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_25_314"
}

define internal { i8*, i8* }* @"$fundef_22"(%"$$fundef_22_env_162"* %0) !dbg !77 {
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
  store { i8*, i8* }* %"$dyndisp_table_302", { i8*, i8* }** %"$retval_23", align 8, !dbg !78
  %"$$retval_23_305" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_23", align 8
  ret { i8*, i8* }* %"$$retval_23_305"
}

define internal %Uint32 @"$fundef_20"(%"$$fundef_20_env_163"* %0, %TName_List_Int32* %1) !dbg !79 {
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
  ], !dbg !80

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
  %"$f_call_262" = call { %Uint32 (i8*, %Int32)*, i8* } %"$f_fptr_259"(i8* %"$f_envptr_260", %Uint32 %"$z_261"), !dbg !81
  store { %Uint32 (i8*, %Int32)*, i8* } %"$f_call_262", { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0", align 8, !dbg !81
  %"$f_1" = alloca %Uint32, align 8
  %"$$f_0_263" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0", align 8
  %"$$f_0_fptr_264" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_263", 0
  %"$$f_0_envptr_265" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_263", 1
  %"$h_266" = load %Int32, %Int32* %h, align 4
  %"$$f_0_call_267" = call %Uint32 %"$$f_0_fptr_264"(i8* %"$$f_0_envptr_265", %Int32 %"$h_266"), !dbg !81
  store %Uint32 %"$$f_0_call_267", %Uint32* %"$f_1", align 4, !dbg !81
  %"$$f_1_268" = load %Uint32, %Uint32* %"$f_1", align 4
  store %Uint32 %"$$f_1_268", %Uint32* %res, align 4, !dbg !81
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
  %"$g_call_278" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_fptr_275"(i8* %"$g_envptr_276", %Uint32 %"$res_277"), !dbg !84
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_call_278", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2", align 8, !dbg !84
  %"$g_3" = alloca %Uint32, align 8
  %"$$g_2_279" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2", align 8
  %"$$g_2_fptr_280" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_279", 0
  %"$$g_2_envptr_281" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_279", 1
  %"$t_282" = load %TName_List_Int32*, %TName_List_Int32** %t, align 8
  %"$$g_2_call_283" = call %Uint32 %"$$g_2_fptr_280"(i8* %"$$g_2_envptr_281", %TName_List_Int32* %"$t_282"), !dbg !84
  store %Uint32 %"$$g_2_call_283", %Uint32* %"$g_3", align 4, !dbg !84
  %"$$g_3_284" = load %Uint32, %Uint32* %"$g_3", align 4
  store %Uint32 %"$$g_3_284", %Uint32* %"$retval_21", align 4, !dbg !84
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
  store %Uint32 %"$z_292", %Uint32* %"$retval_21", align 4, !dbg !85
  br label %"$matchsucc_238"

"$empty_default_241":                             ; preds = %"$have_gas_236"
  br label %"$matchsucc_238"

"$matchsucc_238":                                 ; preds = %"$have_gas_290", %"$have_gas_272", %"$empty_default_241"
  %"$$retval_21_293" = load %Uint32, %Uint32* %"$retval_21", align 4
  ret %Uint32 %"$$retval_21_293"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_18"(%"$$fundef_18_env_164"* %0, %Uint32 %1) !dbg !87 {
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
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$fundef_20_cloval_220", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_19", align 8, !dbg !88
  %"$$retval_19_226" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_19", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_19_226"
}

define internal { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_16"(%"$$fundef_16_env_165"* %0, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !89 {
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
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_18_cloval_202", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !90
  %"$$fundef_18_env_f_203" = getelementptr inbounds %"$$fundef_18_env_164", %"$$fundef_18_env_164"* %"$$fundef_18_envp_199", i32 0, i32 0
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_203", align 8
  %"$$fundef_18_env_g_204" = getelementptr inbounds %"$$fundef_18_env_164", %"$$fundef_18_env_164"* %"$$fundef_18_envp_199", i32 0, i32 1
  %"$g_205" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_205", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_204", align 8
  %"$g_206" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_206", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_17", align 8, !dbg !90
  %"$$retval_17_207" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_17", align 8
  ret { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_17_207"
}

define internal { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_14"(%"$$fundef_14_env_166"* %0) !dbg !91 {
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
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_16_env_165"*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_16" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_15", align 8, !dbg !92
  %"$$retval_15_188" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_15", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_15_188"
}

define internal { i8*, i8* }* @"$fundef_12"(%"$$fundef_12_env_167"* %0) !dbg !93 {
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
  store { i8*, i8* }* %"$dyndisp_table_176", { i8*, i8* }** %"$retval_13", align 8, !dbg !94
  %"$$retval_13_179" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_13", align 8
  ret { i8*, i8* }* %"$$retval_13_179"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() !dbg !95 {
entry:
  %"$gasrem_842" = load i64, i64* @_gasrem, align 8
  %"$gascmp_843" = icmp ugt i64 1, %"$gasrem_842"
  br i1 %"$gascmp_843", label %"$out_of_gas_844", label %"$have_gas_845"

"$out_of_gas_844":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_845"

"$have_gas_845":                                  ; preds = %"$out_of_gas_844", %entry
  %"$consume_846" = sub i64 %"$gasrem_842", 1
  store i64 %"$consume_846", i64* @_gasrem, align 8
  %"$dyndisp_table_853_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_853_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_853_salloc_load", i64 48)
  %"$dyndisp_table_853_salloc" = bitcast i8* %"$dyndisp_table_853_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_853" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_853_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_854" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_853", i32 0
  %"$dyndisp_pcast_855" = bitcast { i8*, i8* }* %"$dyndisp_gep_854" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_12_env_167"*)* @"$fundef_12" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_855", align 8
  %"$dyndisp_gep_856" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_853", i32 2
  %"$dyndisp_pcast_857" = bitcast { i8*, i8* }* %"$dyndisp_gep_856" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_22_env_162"*)* @"$fundef_22" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_857", align 8
  store { i8*, i8* }* %"$dyndisp_table_853", { i8*, i8* }** @list_foldl, align 8, !dbg !97
  %"$gasrem_858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_859" = icmp ugt i64 1, %"$gasrem_858"
  br i1 %"$gascmp_859", label %"$out_of_gas_860", label %"$have_gas_861"

"$out_of_gas_860":                                ; preds = %"$have_gas_845"
  call void @_out_of_gas()
  br label %"$have_gas_861"

"$have_gas_861":                                  ; preds = %"$out_of_gas_860", %"$have_gas_845"
  %"$consume_862" = sub i64 %"$gasrem_858", 1
  store i64 %"$consume_862", i64* @_gasrem, align 8
  %"$$fundef_32_envp_863_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_32_envp_863_salloc" = call i8* @_salloc(i8* %"$$fundef_32_envp_863_load", i64 8)
  %"$$fundef_32_envp_863" = bitcast i8* %"$$fundef_32_envp_863_salloc" to %"$$fundef_32_env_157"*
  %"$$fundef_32_env_voidp_865" = bitcast %"$$fundef_32_env_157"* %"$$fundef_32_envp_863" to i8*
  %"$$fundef_32_cloval_866" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_32_env_157"*)* @"$fundef_32" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_32_env_voidp_865", 1
  %"$$fundef_32_env_list_foldl_867" = getelementptr inbounds %"$$fundef_32_env_157", %"$$fundef_32_env_157"* %"$$fundef_32_envp_863", i32 0, i32 0
  %"$list_foldl_868" = load { i8*, i8* }*, { i8*, i8* }** @list_foldl, align 8
  store { i8*, i8* }* %"$list_foldl_868", { i8*, i8* }** %"$$fundef_32_env_list_foldl_867", align 8
  %"$$fundef_38_env_voidp_870" = bitcast %"$$fundef_32_env_157"* %"$$fundef_32_envp_863" to i8*
  %"$$fundef_38_cloval_871" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_38_env_154"*)* @"$fundef_38" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_38_env_voidp_870", 1
  %"$dyndisp_table_872_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_872_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_872_salloc_load", i64 48)
  %"$dyndisp_table_872_salloc" = bitcast i8* %"$dyndisp_table_872_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_872" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_872_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_873" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_872", i32 0
  %"$dyndisp_pcast_874" = bitcast { i8*, i8* }* %"$dyndisp_gep_873" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$$fundef_32_cloval_866", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_874", align 8
  %"$dyndisp_gep_875" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_872", i32 2
  %"$dyndisp_pcast_876" = bitcast { i8*, i8* }* %"$dyndisp_gep_875" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$$fundef_38_cloval_871", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_876", align 8
  store { i8*, i8* }* %"$dyndisp_table_872", { i8*, i8* }** @ListUtils.list_length, align 8, !dbg !98
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !99 {
entry:
  %"$expr_44" = alloca %Uint32, align 8
  %"$gasrem_877" = load i64, i64* @_gasrem, align 8
  %"$gascmp_878" = icmp ugt i64 1, %"$gasrem_877"
  br i1 %"$gascmp_878", label %"$out_of_gas_879", label %"$have_gas_880"

"$out_of_gas_879":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_880"

"$have_gas_880":                                  ; preds = %"$out_of_gas_879", %entry
  %"$consume_881" = sub i64 %"$gasrem_877", 1
  store i64 %"$consume_881", i64* @_gasrem, align 8
  %t1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_882" = load i64, i64* @_gasrem, align 8
  %"$gascmp_883" = icmp ugt i64 1, %"$gasrem_882"
  br i1 %"$gascmp_883", label %"$out_of_gas_884", label %"$have_gas_885"

"$out_of_gas_884":                                ; preds = %"$have_gas_880"
  call void @_out_of_gas()
  br label %"$have_gas_885"

"$have_gas_885":                                  ; preds = %"$out_of_gas_884", %"$have_gas_880"
  %"$consume_886" = sub i64 %"$gasrem_882", 1
  store i64 %"$consume_886", i64* @_gasrem, align 8
  %"$dyndisp_table_893_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_893_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_893_salloc_load", i64 48)
  %"$dyndisp_table_893_salloc" = bitcast i8* %"$dyndisp_table_893_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_893" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_893_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_894" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_893", i32 0
  %"$dyndisp_pcast_895" = bitcast { i8*, i8* }* %"$dyndisp_gep_894" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_45_env_151"*)* @"$fundef_45" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_895", align 8
  %"$dyndisp_gep_896" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_893", i32 2
  %"$dyndisp_pcast_897" = bitcast { i8*, i8* }* %"$dyndisp_gep_896" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_49_env_149"*)* @"$fundef_49" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_897", align 8
  store { i8*, i8* }* %"$dyndisp_table_893", { i8*, i8* }** %t1, align 8, !dbg !100
  %"$gasrem_898" = load i64, i64* @_gasrem, align 8
  %"$gascmp_899" = icmp ugt i64 1, %"$gasrem_898"
  br i1 %"$gascmp_899", label %"$out_of_gas_900", label %"$have_gas_901"

"$out_of_gas_900":                                ; preds = %"$have_gas_885"
  call void @_out_of_gas()
  br label %"$have_gas_901"

"$have_gas_901":                                  ; preds = %"$out_of_gas_900", %"$have_gas_885"
  %"$consume_902" = sub i64 %"$gasrem_898", 1
  store i64 %"$consume_902", i64* @_gasrem, align 8
  %t2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_903" = load i64, i64* @_gasrem, align 8
  %"$gascmp_904" = icmp ugt i64 1, %"$gasrem_903"
  br i1 %"$gascmp_904", label %"$out_of_gas_905", label %"$have_gas_906"

"$out_of_gas_905":                                ; preds = %"$have_gas_901"
  call void @_out_of_gas()
  br label %"$have_gas_906"

"$have_gas_906":                                  ; preds = %"$out_of_gas_905", %"$have_gas_901"
  %"$consume_907" = sub i64 %"$gasrem_903", 1
  store i64 %"$consume_907", i64* @_gasrem, align 8
  %"$dyndisp_table_914_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_914_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_914_salloc_load", i64 48)
  %"$dyndisp_table_914_salloc" = bitcast i8* %"$dyndisp_table_914_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_914" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_914_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_915" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_914", i32 0
  %"$dyndisp_pcast_916" = bitcast { i8*, i8* }* %"$dyndisp_gep_915" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_53_env_147"*)* @"$fundef_53" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_916", align 8
  %"$dyndisp_gep_917" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_914", i32 2
  %"$dyndisp_pcast_918" = bitcast { i8*, i8* }* %"$dyndisp_gep_917" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_57_env_145"*)* @"$fundef_57" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_918", align 8
  store { i8*, i8* }* %"$dyndisp_table_914", { i8*, i8* }** %t2, align 8, !dbg !101
  %"$gasrem_919" = load i64, i64* @_gasrem, align 8
  %"$gascmp_920" = icmp ugt i64 1, %"$gasrem_919"
  br i1 %"$gascmp_920", label %"$out_of_gas_921", label %"$have_gas_922"

"$out_of_gas_921":                                ; preds = %"$have_gas_906"
  call void @_out_of_gas()
  br label %"$have_gas_922"

"$have_gas_922":                                  ; preds = %"$out_of_gas_921", %"$have_gas_906"
  %"$consume_923" = sub i64 %"$gasrem_919", 1
  store i64 %"$consume_923", i64* @_gasrem, align 8
  %t = alloca { i8*, i8* }*, align 8
  %"$gasrem_924" = load i64, i64* @_gasrem, align 8
  %"$gascmp_925" = icmp ugt i64 1, %"$gasrem_924"
  br i1 %"$gascmp_925", label %"$out_of_gas_926", label %"$have_gas_927"

"$out_of_gas_926":                                ; preds = %"$have_gas_922"
  call void @_out_of_gas()
  br label %"$have_gas_927"

"$have_gas_927":                                  ; preds = %"$out_of_gas_926", %"$have_gas_922"
  %"$consume_928" = sub i64 %"$gasrem_924", 1
  store i64 %"$consume_928", i64* @_gasrem, align 8
  %"$dyndisp_table_935_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_935_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_935_salloc_load", i64 48)
  %"$dyndisp_table_935_salloc" = bitcast i8* %"$dyndisp_table_935_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_935" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_935_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_936" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_935", i32 0
  %"$dyndisp_pcast_937" = bitcast { i8*, i8* }* %"$dyndisp_gep_936" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_61_env_143"*)* @"$fundef_61" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_937", align 8
  %"$dyndisp_gep_938" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_935", i32 2
  %"$dyndisp_pcast_939" = bitcast { i8*, i8* }* %"$dyndisp_gep_938" to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_65_env_141"*)* @"$fundef_65" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_939", align 8
  store { i8*, i8* }* %"$dyndisp_table_935", { i8*, i8* }** %t, align 8, !dbg !102
  %"$gasrem_940" = load i64, i64* @_gasrem, align 8
  %"$gascmp_941" = icmp ugt i64 1, %"$gasrem_940"
  br i1 %"$gascmp_941", label %"$out_of_gas_942", label %"$have_gas_943"

"$out_of_gas_942":                                ; preds = %"$have_gas_927"
  call void @_out_of_gas()
  br label %"$have_gas_943"

"$have_gas_943":                                  ; preds = %"$out_of_gas_942", %"$have_gas_927"
  %"$consume_944" = sub i64 %"$gasrem_940", 1
  store i64 %"$consume_944", i64* @_gasrem, align 8
  %some_bool = alloca %TName_Bool*, align 8
  %"$gasrem_945" = load i64, i64* @_gasrem, align 8
  %"$gascmp_946" = icmp ugt i64 1, %"$gasrem_945"
  br i1 %"$gascmp_946", label %"$out_of_gas_947", label %"$have_gas_948"

"$out_of_gas_947":                                ; preds = %"$have_gas_943"
  call void @_out_of_gas()
  br label %"$have_gas_948"

"$have_gas_948":                                  ; preds = %"$out_of_gas_947", %"$have_gas_943"
  %"$consume_949" = sub i64 %"$gasrem_945", 1
  store i64 %"$consume_949", i64* @_gasrem, align 8
  %"$adtval_950_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_950_salloc" = call i8* @_salloc(i8* %"$adtval_950_load", i64 1)
  %"$adtval_950" = bitcast i8* %"$adtval_950_salloc" to %CName_False*
  %"$adtgep_951" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_950", i32 0, i32 0
  store i8 1, i8* %"$adtgep_951", align 1
  %"$adtptr_952" = bitcast %CName_False* %"$adtval_950" to %TName_Bool*
  store %TName_Bool* %"$adtptr_952", %TName_Bool** %some_bool, align 8, !dbg !103
  %"$gasrem_953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_954" = icmp ugt i64 2, %"$gasrem_953"
  br i1 %"$gascmp_954", label %"$out_of_gas_955", label %"$have_gas_956"

"$out_of_gas_955":                                ; preds = %"$have_gas_948"
  call void @_out_of_gas()
  br label %"$have_gas_956"

"$have_gas_956":                                  ; preds = %"$out_of_gas_955", %"$have_gas_948"
  %"$consume_957" = sub i64 %"$gasrem_953", 2
  store i64 %"$consume_957", i64* @_gasrem, align 8
  %"$some_bool_959" = load %TName_Bool*, %TName_Bool** %some_bool, align 8
  %"$some_bool_tag_960" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool_959", i32 0, i32 0
  %"$some_bool_tag_961" = load i8, i8* %"$some_bool_tag_960", align 1
  switch i8 %"$some_bool_tag_961", label %"$empty_default_962" [
    i8 0, label %"$True_963"
    i8 1, label %"$False_1052"
  ], !dbg !104

"$True_963":                                      ; preds = %"$have_gas_956"
  %"$some_bool_964" = bitcast %TName_Bool* %"$some_bool_959" to %CName_True*
  %"$gasrem_965" = load i64, i64* @_gasrem, align 8
  %"$gascmp_966" = icmp ugt i64 1, %"$gasrem_965"
  br i1 %"$gascmp_966", label %"$out_of_gas_967", label %"$have_gas_968"

"$out_of_gas_967":                                ; preds = %"$True_963"
  call void @_out_of_gas()
  br label %"$have_gas_968"

"$have_gas_968":                                  ; preds = %"$out_of_gas_967", %"$True_963"
  %"$consume_969" = sub i64 %"$gasrem_965", 1
  store i64 %"$consume_969", i64* @_gasrem, align 8
  %f11 = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_970" = load i64, i64* @_gasrem, align 8
  %"$gascmp_971" = icmp ugt i64 1, %"$gasrem_970"
  br i1 %"$gascmp_971", label %"$out_of_gas_972", label %"$have_gas_973"

"$out_of_gas_972":                                ; preds = %"$have_gas_968"
  call void @_out_of_gas()
  br label %"$have_gas_973"

"$have_gas_973":                                  ; preds = %"$out_of_gas_972", %"$have_gas_968"
  %"$consume_974" = sub i64 %"$gasrem_970", 1
  store i64 %"$consume_974", i64* @_gasrem, align 8
  %"$t_975" = load { i8*, i8* }*, { i8*, i8* }** %t, align 8
  %"$t_976" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_975", i32 0
  %"$t_977" = bitcast { i8*, i8* }* %"$t_976" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_978" = load { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_977", align 8
  %"$t_fptr_979" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_978", 0
  %"$t_envptr_980" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_978", 1
  %"$t_call_981" = call { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_979"(i8* %"$t_envptr_980"), !dbg !105
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_981", { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11, align 8, !dbg !108
  %"$gasrem_982" = load i64, i64* @_gasrem, align 8
  %"$gascmp_983" = icmp ugt i64 1, %"$gasrem_982"
  br i1 %"$gascmp_983", label %"$out_of_gas_984", label %"$have_gas_985"

"$out_of_gas_984":                                ; preds = %"$have_gas_973"
  call void @_out_of_gas()
  br label %"$have_gas_985"

"$have_gas_985":                                  ; preds = %"$out_of_gas_984", %"$have_gas_973"
  %"$consume_986" = sub i64 %"$gasrem_982", 1
  store i64 %"$consume_986", i64* @_gasrem, align 8
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_987" = load i64, i64* @_gasrem, align 8
  %"$gascmp_988" = icmp ugt i64 1, %"$gasrem_987"
  br i1 %"$gascmp_988", label %"$out_of_gas_989", label %"$have_gas_990"

"$out_of_gas_989":                                ; preds = %"$have_gas_985"
  call void @_out_of_gas()
  br label %"$have_gas_990"

"$have_gas_990":                                  ; preds = %"$out_of_gas_989", %"$have_gas_985"
  %"$consume_991" = sub i64 %"$gasrem_987", 1
  store i64 %"$consume_991", i64* @_gasrem, align 8
  %"$f11_6" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$f11_992" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11, align 8
  %"$f11_fptr_993" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_992", 0
  %"$f11_envptr_994" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_992", 1
  %"$t1_995" = load { i8*, i8* }*, { i8*, i8* }** %t1, align 8
  %"$f11_call_996" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_fptr_993"(i8* %"$f11_envptr_994", { i8*, i8* }* %"$t1_995"), !dbg !109
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_call_996", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_6", align 8, !dbg !109
  %"$$f11_6_997" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_6", align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$f11_6_997", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8, !dbg !109
  %"$gasrem_998" = load i64, i64* @_gasrem, align 8
  %"$gascmp_999" = icmp ugt i64 1, %"$gasrem_998"
  br i1 %"$gascmp_999", label %"$out_of_gas_1000", label %"$have_gas_1001"

"$out_of_gas_1000":                               ; preds = %"$have_gas_990"
  call void @_out_of_gas()
  br label %"$have_gas_1001"

"$have_gas_1001":                                 ; preds = %"$out_of_gas_1000", %"$have_gas_990"
  %"$consume_1002" = sub i64 %"$gasrem_998", 1
  store i64 %"$consume_1002", i64* @_gasrem, align 8
  %len = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_1003" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1004" = icmp ugt i64 1, %"$gasrem_1003"
  br i1 %"$gascmp_1004", label %"$out_of_gas_1005", label %"$have_gas_1006"

"$out_of_gas_1005":                               ; preds = %"$have_gas_1001"
  call void @_out_of_gas()
  br label %"$have_gas_1006"

"$have_gas_1006":                                 ; preds = %"$out_of_gas_1005", %"$have_gas_1001"
  %"$consume_1007" = sub i64 %"$gasrem_1003", 1
  store i64 %"$consume_1007", i64* @_gasrem, align 8
  %"$ListUtils.list_length_1008" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_1009" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_1008", i32 0
  %"$ListUtils.list_length_1010" = bitcast { i8*, i8* }* %"$ListUtils.list_length_1009" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1011" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_1010", align 8
  %"$ListUtils.list_length_fptr_1012" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1011", 0
  %"$ListUtils.list_length_envptr_1013" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1011", 1
  %"$ListUtils.list_length_call_1014" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_fptr_1012"(i8* %"$ListUtils.list_length_envptr_1013"), !dbg !110
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_call_1014", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8, !dbg !111
  %"$gasrem_1015" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1016" = icmp ugt i64 1, %"$gasrem_1015"
  br i1 %"$gascmp_1016", label %"$out_of_gas_1017", label %"$have_gas_1018"

"$out_of_gas_1017":                               ; preds = %"$have_gas_1006"
  call void @_out_of_gas()
  br label %"$have_gas_1018"

"$have_gas_1018":                                 ; preds = %"$out_of_gas_1017", %"$have_gas_1006"
  %"$consume_1019" = sub i64 %"$gasrem_1015", 1
  store i64 %"$consume_1019", i64* @_gasrem, align 8
  %one = alloca %Int32, align 8
  %"$gasrem_1020" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1021" = icmp ugt i64 1, %"$gasrem_1020"
  br i1 %"$gascmp_1021", label %"$out_of_gas_1022", label %"$have_gas_1023"

"$out_of_gas_1022":                               ; preds = %"$have_gas_1018"
  call void @_out_of_gas()
  br label %"$have_gas_1023"

"$have_gas_1023":                                 ; preds = %"$out_of_gas_1022", %"$have_gas_1018"
  %"$consume_1024" = sub i64 %"$gasrem_1020", 1
  store i64 %"$consume_1024", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %one, align 4, !dbg !112
  %"$gasrem_1025" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1026" = icmp ugt i64 1, %"$gasrem_1025"
  br i1 %"$gascmp_1026", label %"$out_of_gas_1027", label %"$have_gas_1028"

"$out_of_gas_1027":                               ; preds = %"$have_gas_1023"
  call void @_out_of_gas()
  br label %"$have_gas_1028"

"$have_gas_1028":                                 ; preds = %"$out_of_gas_1027", %"$have_gas_1023"
  %"$consume_1029" = sub i64 %"$gasrem_1025", 1
  store i64 %"$consume_1029", i64* @_gasrem, align 8
  %f1l = alloca %TName_List_Int32*, align 8
  %"$gasrem_1030" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1031" = icmp ugt i64 1, %"$gasrem_1030"
  br i1 %"$gascmp_1031", label %"$out_of_gas_1032", label %"$have_gas_1033"

"$out_of_gas_1032":                               ; preds = %"$have_gas_1028"
  call void @_out_of_gas()
  br label %"$have_gas_1033"

"$have_gas_1033":                                 ; preds = %"$out_of_gas_1032", %"$have_gas_1028"
  %"$consume_1034" = sub i64 %"$gasrem_1030", 1
  store i64 %"$consume_1034", i64* @_gasrem, align 8
  %"$f1_7" = alloca %TName_List_Int32*, align 8
  %"$f1_1035" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8
  %"$f1_fptr_1036" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_1035", 0
  %"$f1_envptr_1037" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_1035", 1
  %"$one_1038" = load %Int32, %Int32* %one, align 4
  %"$f1_call_1039" = call %TName_List_Int32* %"$f1_fptr_1036"(i8* %"$f1_envptr_1037", %Int32 %"$one_1038"), !dbg !113
  store %TName_List_Int32* %"$f1_call_1039", %TName_List_Int32** %"$f1_7", align 8, !dbg !113
  %"$$f1_7_1040" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_7", align 8
  store %TName_List_Int32* %"$$f1_7_1040", %TName_List_Int32** %f1l, align 8, !dbg !113
  %"$gasrem_1041" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1042" = icmp ugt i64 1, %"$gasrem_1041"
  br i1 %"$gascmp_1042", label %"$out_of_gas_1043", label %"$have_gas_1044"

"$out_of_gas_1043":                               ; preds = %"$have_gas_1033"
  call void @_out_of_gas()
  br label %"$have_gas_1044"

"$have_gas_1044":                                 ; preds = %"$out_of_gas_1043", %"$have_gas_1033"
  %"$consume_1045" = sub i64 %"$gasrem_1041", 1
  store i64 %"$consume_1045", i64* @_gasrem, align 8
  %"$len_8" = alloca %Uint32, align 8
  %"$len_1046" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8
  %"$len_fptr_1047" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_1046", 0
  %"$len_envptr_1048" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_1046", 1
  %"$f1l_1049" = load %TName_List_Int32*, %TName_List_Int32** %f1l, align 8
  %"$len_call_1050" = call %Uint32 %"$len_fptr_1047"(i8* %"$len_envptr_1048", %TName_List_Int32* %"$f1l_1049"), !dbg !114
  store %Uint32 %"$len_call_1050", %Uint32* %"$len_8", align 4, !dbg !114
  %"$$len_8_1051" = load %Uint32, %Uint32* %"$len_8", align 4
  store %Uint32 %"$$len_8_1051", %Uint32* %"$expr_44", align 4, !dbg !114
  br label %"$matchsucc_958"

"$False_1052":                                    ; preds = %"$have_gas_956"
  %"$some_bool_1053" = bitcast %TName_Bool* %"$some_bool_959" to %CName_False*
  %"$gasrem_1054" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1055" = icmp ugt i64 1, %"$gasrem_1054"
  br i1 %"$gascmp_1055", label %"$out_of_gas_1056", label %"$have_gas_1057"

"$out_of_gas_1056":                               ; preds = %"$False_1052"
  call void @_out_of_gas()
  br label %"$have_gas_1057"

"$have_gas_1057":                                 ; preds = %"$out_of_gas_1056", %"$False_1052"
  %"$consume_1058" = sub i64 %"$gasrem_1054", 1
  store i64 %"$consume_1058", i64* @_gasrem, align 8
  %f22 = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_1059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1060" = icmp ugt i64 1, %"$gasrem_1059"
  br i1 %"$gascmp_1060", label %"$out_of_gas_1061", label %"$have_gas_1062"

"$out_of_gas_1061":                               ; preds = %"$have_gas_1057"
  call void @_out_of_gas()
  br label %"$have_gas_1062"

"$have_gas_1062":                                 ; preds = %"$out_of_gas_1061", %"$have_gas_1057"
  %"$consume_1063" = sub i64 %"$gasrem_1059", 1
  store i64 %"$consume_1063", i64* @_gasrem, align 8
  %"$t_1064" = load { i8*, i8* }*, { i8*, i8* }** %t, align 8
  %"$t_1065" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_1064", i32 2
  %"$t_1066" = bitcast { i8*, i8* }* %"$t_1065" to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_1067" = load { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_1066", align 8
  %"$t_fptr_1068" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_1067", 0
  %"$t_envptr_1069" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_1067", 1
  %"$t_call_1070" = call { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_1068"(i8* %"$t_envptr_1069"), !dbg !115
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_1070", { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22, align 8, !dbg !117
  %"$gasrem_1071" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1072" = icmp ugt i64 1, %"$gasrem_1071"
  br i1 %"$gascmp_1072", label %"$out_of_gas_1073", label %"$have_gas_1074"

"$out_of_gas_1073":                               ; preds = %"$have_gas_1062"
  call void @_out_of_gas()
  br label %"$have_gas_1074"

"$have_gas_1074":                                 ; preds = %"$out_of_gas_1073", %"$have_gas_1062"
  %"$consume_1075" = sub i64 %"$gasrem_1071", 1
  store i64 %"$consume_1075", i64* @_gasrem, align 8
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_1076" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1077" = icmp ugt i64 1, %"$gasrem_1076"
  br i1 %"$gascmp_1077", label %"$out_of_gas_1078", label %"$have_gas_1079"

"$out_of_gas_1078":                               ; preds = %"$have_gas_1074"
  call void @_out_of_gas()
  br label %"$have_gas_1079"

"$have_gas_1079":                                 ; preds = %"$out_of_gas_1078", %"$have_gas_1074"
  %"$consume_1080" = sub i64 %"$gasrem_1076", 1
  store i64 %"$consume_1080", i64* @_gasrem, align 8
  %"$f22_9" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$f22_1081" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22, align 8
  %"$f22_fptr_1082" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_1081", 0
  %"$f22_envptr_1083" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_1081", 1
  %"$t2_1084" = load { i8*, i8* }*, { i8*, i8* }** %t2, align 8
  %"$f22_call_1085" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_fptr_1082"(i8* %"$f22_envptr_1083", { i8*, i8* }* %"$t2_1084"), !dbg !118
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_call_1085", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_9", align 8, !dbg !118
  %"$$f22_9_1086" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_9", align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$f22_9_1086", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8, !dbg !118
  %"$gasrem_1087" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1088" = icmp ugt i64 1, %"$gasrem_1087"
  br i1 %"$gascmp_1088", label %"$out_of_gas_1089", label %"$have_gas_1090"

"$out_of_gas_1089":                               ; preds = %"$have_gas_1079"
  call void @_out_of_gas()
  br label %"$have_gas_1090"

"$have_gas_1090":                                 ; preds = %"$out_of_gas_1089", %"$have_gas_1079"
  %"$consume_1091" = sub i64 %"$gasrem_1087", 1
  store i64 %"$consume_1091", i64* @_gasrem, align 8
  %len1 = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_1092" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1093" = icmp ugt i64 1, %"$gasrem_1092"
  br i1 %"$gascmp_1093", label %"$out_of_gas_1094", label %"$have_gas_1095"

"$out_of_gas_1094":                               ; preds = %"$have_gas_1090"
  call void @_out_of_gas()
  br label %"$have_gas_1095"

"$have_gas_1095":                                 ; preds = %"$out_of_gas_1094", %"$have_gas_1090"
  %"$consume_1096" = sub i64 %"$gasrem_1092", 1
  store i64 %"$consume_1096", i64* @_gasrem, align 8
  %"$ListUtils.list_length_1097" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_1098" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_1097", i32 2
  %"$ListUtils.list_length_1099" = bitcast { i8*, i8* }* %"$ListUtils.list_length_1098" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1100" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_1099", align 8
  %"$ListUtils.list_length_fptr_1101" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1100", 0
  %"$ListUtils.list_length_envptr_1102" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1100", 1
  %"$ListUtils.list_length_call_1103" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_fptr_1101"(i8* %"$ListUtils.list_length_envptr_1102"), !dbg !119
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_call_1103", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8, !dbg !120
  %"$gasrem_1104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1105" = icmp ugt i64 1, %"$gasrem_1104"
  br i1 %"$gascmp_1105", label %"$out_of_gas_1106", label %"$have_gas_1107"

"$out_of_gas_1106":                               ; preds = %"$have_gas_1095"
  call void @_out_of_gas()
  br label %"$have_gas_1107"

"$have_gas_1107":                                 ; preds = %"$out_of_gas_1106", %"$have_gas_1095"
  %"$consume_1108" = sub i64 %"$gasrem_1104", 1
  store i64 %"$consume_1108", i64* @_gasrem, align 8
  %one2 = alloca %Int64, align 8
  %"$gasrem_1109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1110" = icmp ugt i64 1, %"$gasrem_1109"
  br i1 %"$gascmp_1110", label %"$out_of_gas_1111", label %"$have_gas_1112"

"$out_of_gas_1111":                               ; preds = %"$have_gas_1107"
  call void @_out_of_gas()
  br label %"$have_gas_1112"

"$have_gas_1112":                                 ; preds = %"$out_of_gas_1111", %"$have_gas_1107"
  %"$consume_1113" = sub i64 %"$gasrem_1109", 1
  store i64 %"$consume_1113", i64* @_gasrem, align 8
  store %Int64 { i64 1 }, %Int64* %one2, align 8, !dbg !121
  %"$gasrem_1114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1115" = icmp ugt i64 1, %"$gasrem_1114"
  br i1 %"$gascmp_1115", label %"$out_of_gas_1116", label %"$have_gas_1117"

"$out_of_gas_1116":                               ; preds = %"$have_gas_1112"
  call void @_out_of_gas()
  br label %"$have_gas_1117"

"$have_gas_1117":                                 ; preds = %"$out_of_gas_1116", %"$have_gas_1112"
  %"$consume_1118" = sub i64 %"$gasrem_1114", 1
  store i64 %"$consume_1118", i64* @_gasrem, align 8
  %f2l = alloca %TName_List_Int64*, align 8
  %"$gasrem_1119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1120" = icmp ugt i64 1, %"$gasrem_1119"
  br i1 %"$gascmp_1120", label %"$out_of_gas_1121", label %"$have_gas_1122"

"$out_of_gas_1121":                               ; preds = %"$have_gas_1117"
  call void @_out_of_gas()
  br label %"$have_gas_1122"

"$have_gas_1122":                                 ; preds = %"$out_of_gas_1121", %"$have_gas_1117"
  %"$consume_1123" = sub i64 %"$gasrem_1119", 1
  store i64 %"$consume_1123", i64* @_gasrem, align 8
  %"$f2_10" = alloca %TName_List_Int64*, align 8
  %"$f2_1124" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8
  %"$f2_fptr_1125" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1124", 0
  %"$f2_envptr_1126" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1124", 1
  %"$one_1127" = load %Int64, %Int64* %one2, align 8
  %"$f2_call_1128" = call %TName_List_Int64* %"$f2_fptr_1125"(i8* %"$f2_envptr_1126", %Int64 %"$one_1127"), !dbg !122
  store %TName_List_Int64* %"$f2_call_1128", %TName_List_Int64** %"$f2_10", align 8, !dbg !122
  %"$$f2_10_1129" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_10", align 8
  store %TName_List_Int64* %"$$f2_10_1129", %TName_List_Int64** %f2l, align 8, !dbg !122
  %"$gasrem_1130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1131" = icmp ugt i64 1, %"$gasrem_1130"
  br i1 %"$gascmp_1131", label %"$out_of_gas_1132", label %"$have_gas_1133"

"$out_of_gas_1132":                               ; preds = %"$have_gas_1122"
  call void @_out_of_gas()
  br label %"$have_gas_1133"

"$have_gas_1133":                                 ; preds = %"$out_of_gas_1132", %"$have_gas_1122"
  %"$consume_1134" = sub i64 %"$gasrem_1130", 1
  store i64 %"$consume_1134", i64* @_gasrem, align 8
  %"$len_11" = alloca %Uint32, align 8
  %"$len_1135" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8
  %"$len_fptr_1136" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1135", 0
  %"$len_envptr_1137" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1135", 1
  %"$f2l_1138" = load %TName_List_Int64*, %TName_List_Int64** %f2l, align 8
  %"$len_call_1139" = call %Uint32 %"$len_fptr_1136"(i8* %"$len_envptr_1137", %TName_List_Int64* %"$f2l_1138"), !dbg !123
  store %Uint32 %"$len_call_1139", %Uint32* %"$len_11", align 4, !dbg !123
  %"$$len_11_1140" = load %Uint32, %Uint32* %"$len_11", align 4
  store %Uint32 %"$$len_11_1140", %Uint32* %"$expr_44", align 4, !dbg !123
  br label %"$matchsucc_958"

"$empty_default_962":                             ; preds = %"$have_gas_956"
  br label %"$matchsucc_958"

"$matchsucc_958":                                 ; preds = %"$have_gas_1133", %"$have_gas_1044", %"$empty_default_962"
  %"$$expr_44_1141" = load %Uint32, %Uint32* %"$expr_44", align 4
  ret %Uint32 %"$$expr_44_1141"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1142" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_1143" = alloca %Uint32, align 8
  %"$memvoidcast_1144" = bitcast %Uint32* %"$pval_1143" to i8*
  store %Uint32 %"$exprval_1142", %Uint32* %"$pval_1143", align 4
  %"$execptr_load_1145" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1145", %_TyDescrTy_Typ* @"$TyDescr_Uint32_73", i8* %"$memvoidcast_1144")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "fun-type-inst.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_67", linkageName: "$fundef_67", scope: !2, file: !2, line: 19, type: !5, scopeLine: 19, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 19, column: 6, scope: !4)
!9 = !DILocation(line: 19, column: 5, scope: !4)
!10 = distinct !DISubprogram(name: "$fundef_65", linkageName: "$fundef_65", scope: !2, file: !2, line: 19, type: !5, scopeLine: 19, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 19, column: 5, scope: !10)
!12 = distinct !DISubprogram(name: "$fundef_63", linkageName: "$fundef_63", scope: !2, file: !2, line: 19, type: !5, scopeLine: 19, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!13 = !DILocation(line: 19, column: 6, scope: !12)
!14 = !DILocation(line: 19, column: 5, scope: !12)
!15 = distinct !DISubprogram(name: "$fundef_61", linkageName: "$fundef_61", scope: !2, file: !2, line: 19, type: !5, scopeLine: 19, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 19, column: 5, scope: !15)
!17 = distinct !DISubprogram(name: "$fundef_59", linkageName: "$fundef_59", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 11, column: 14, scope: !17)
!19 = !DILocation(line: 12, column: 14, scope: !17)
!20 = !DILocation(line: 13, column: 5, scope: !17)
!21 = distinct !DISubprogram(name: "$fundef_57", linkageName: "$fundef_57", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 11, column: 5, scope: !21)
!23 = distinct !DISubprogram(name: "$fundef_55", linkageName: "$fundef_55", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!24 = !DILocation(line: 11, column: 14, scope: !23)
!25 = !DILocation(line: 12, column: 14, scope: !23)
!26 = !DILocation(line: 13, column: 5, scope: !23)
!27 = distinct !DISubprogram(name: "$fundef_53", linkageName: "$fundef_53", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DILocation(line: 11, column: 5, scope: !27)
!29 = distinct !DISubprogram(name: "$fundef_51", linkageName: "$fundef_51", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!30 = !DILocation(line: 4, column: 14, scope: !29)
!31 = !DILocation(line: 5, column: 5, scope: !29)
!32 = distinct !DISubprogram(name: "$fundef_49", linkageName: "$fundef_49", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!33 = !DILocation(line: 4, column: 5, scope: !32)
!34 = distinct !DISubprogram(name: "$fundef_47", linkageName: "$fundef_47", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!35 = !DILocation(line: 4, column: 14, scope: !34)
!36 = !DILocation(line: 5, column: 5, scope: !34)
!37 = distinct !DISubprogram(name: "$fundef_45", linkageName: "$fundef_45", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!38 = !DILocation(line: 4, column: 5, scope: !37)
!39 = distinct !DISubprogram(name: "$fundef_42", linkageName: "$fundef_42", scope: !40, file: !40, line: 104, type: !5, scopeLine: 104, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!40 = !DIFile(filename: "ListUtils.scillib", directory: "../src/stdlib")
!41 = !DILocation(line: 104, column: 5, scope: !39)
!42 = distinct !DISubprogram(name: "$fundef_40", linkageName: "$fundef_40", scope: !40, file: !40, line: 103, type: !5, scopeLine: 103, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!43 = !DILocation(line: 104, column: 5, scope: !42)
!44 = distinct !DISubprogram(name: "$fundef_38", linkageName: "$fundef_38", scope: !40, file: !40, line: 101, type: !5, scopeLine: 101, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!45 = !DILocation(line: 101, column: 16, scope: !44)
!46 = !DILocation(line: 101, column: 15, scope: !44)
!47 = !DILocation(line: 102, column: 13, scope: !44)
!48 = !DILocation(line: 103, column: 34, scope: !44)
!49 = !DILocation(line: 105, column: 14, scope: !44)
!50 = !DILocation(line: 106, column: 3, scope: !44)
!51 = distinct !DISubprogram(name: "$fundef_36", linkageName: "$fundef_36", scope: !40, file: !40, line: 104, type: !5, scopeLine: 104, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!52 = !DILocation(line: 104, column: 5, scope: !51)
!53 = distinct !DISubprogram(name: "$fundef_34", linkageName: "$fundef_34", scope: !40, file: !40, line: 103, type: !5, scopeLine: 103, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!54 = !DILocation(line: 104, column: 5, scope: !53)
!55 = distinct !DISubprogram(name: "$fundef_32", linkageName: "$fundef_32", scope: !40, file: !40, line: 101, type: !5, scopeLine: 101, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!56 = !DILocation(line: 101, column: 16, scope: !55)
!57 = !DILocation(line: 101, column: 15, scope: !55)
!58 = !DILocation(line: 102, column: 13, scope: !55)
!59 = !DILocation(line: 103, column: 34, scope: !55)
!60 = !DILocation(line: 105, column: 14, scope: !55)
!61 = !DILocation(line: 106, column: 3, scope: !55)
!62 = distinct !DISubprogram(name: "$fundef_30", linkageName: "$fundef_30", scope: !63, file: !63, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!63 = !DIFile(filename: "Prelude", directory: ".")
!64 = !DILocation(line: 1, column: 37, scope: !62)
!65 = !DILocation(line: 1, column: 74, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !63, line: 1, column: 52)
!67 = distinct !DILexicalBlock(scope: !62, file: !63, line: 1, column: 37)
!68 = !DILocation(line: 1, column: 83, scope: !66)
!69 = !DILocation(line: 1, column: 100, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !63, line: 1, column: 93)
!71 = distinct !DISubprogram(name: "$fundef_28", linkageName: "$fundef_28", scope: !63, file: !63, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!72 = !DILocation(line: 1, column: 37, scope: !71)
!73 = distinct !DISubprogram(name: "$fundef_26", linkageName: "$fundef_26", scope: !63, file: !63, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!74 = !DILocation(line: 1, column: 17, scope: !73)
!75 = distinct !DISubprogram(name: "$fundef_24", linkageName: "$fundef_24", scope: !63, file: !63, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!76 = !DILocation(line: 1, column: 17, scope: !75)
!77 = distinct !DISubprogram(name: "$fundef_22", linkageName: "$fundef_22", scope: !63, file: !63, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!78 = !DILocation(line: 1, column: 17, scope: !77)
!79 = distinct !DISubprogram(name: "$fundef_20", linkageName: "$fundef_20", scope: !63, file: !63, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!80 = !DILocation(line: 1, column: 37, scope: !79)
!81 = !DILocation(line: 1, column: 74, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !63, line: 1, column: 52)
!83 = distinct !DILexicalBlock(scope: !79, file: !63, line: 1, column: 37)
!84 = !DILocation(line: 1, column: 83, scope: !82)
!85 = !DILocation(line: 1, column: 100, scope: !86)
!86 = distinct !DILexicalBlock(scope: !83, file: !63, line: 1, column: 93)
!87 = distinct !DISubprogram(name: "$fundef_18", linkageName: "$fundef_18", scope: !63, file: !63, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!88 = !DILocation(line: 1, column: 37, scope: !87)
!89 = distinct !DISubprogram(name: "$fundef_16", linkageName: "$fundef_16", scope: !63, file: !63, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!90 = !DILocation(line: 1, column: 17, scope: !89)
!91 = distinct !DISubprogram(name: "$fundef_14", linkageName: "$fundef_14", scope: !63, file: !63, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!92 = !DILocation(line: 1, column: 17, scope: !91)
!93 = distinct !DISubprogram(name: "$fundef_12", linkageName: "$fundef_12", scope: !63, file: !63, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!94 = !DILocation(line: 1, column: 17, scope: !93)
!95 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !96, file: !96, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!96 = !DIFile(filename: ".", directory: ".")
!97 = !DILocation(line: 1, column: 17, scope: !95)
!98 = !DILocation(line: 100, column: 3, scope: !95)
!99 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!100 = !DILocation(line: 2, column: 3, scope: !99)
!101 = !DILocation(line: 9, column: 3, scope: !99)
!102 = !DILocation(line: 17, column: 3, scope: !99)
!103 = !DILocation(line: 22, column: 17, scope: !99)
!104 = !DILocation(line: 23, column: 1, scope: !99)
!105 = !DILocation(line: 25, column: 14, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 24, column: 3)
!107 = distinct !DILexicalBlock(scope: !99, file: !2, line: 23, column: 1)
!108 = !DILocation(line: 25, column: 13, scope: !106)
!109 = !DILocation(line: 26, column: 12, scope: !106)
!110 = !DILocation(line: 27, column: 14, scope: !106)
!111 = !DILocation(line: 27, column: 13, scope: !106)
!112 = !DILocation(line: 28, column: 13, scope: !106)
!113 = !DILocation(line: 29, column: 13, scope: !106)
!114 = !DILocation(line: 30, column: 3, scope: !106)
!115 = !DILocation(line: 32, column: 14, scope: !116)
!116 = distinct !DILexicalBlock(scope: !107, file: !2, line: 31, column: 3)
!117 = !DILocation(line: 32, column: 13, scope: !116)
!118 = !DILocation(line: 33, column: 12, scope: !116)
!119 = !DILocation(line: 34, column: 14, scope: !116)
!120 = !DILocation(line: 34, column: 13, scope: !116)
!121 = !DILocation(line: 35, column: 13, scope: !116)
!122 = !DILocation(line: 36, column: 13, scope: !116)
!123 = !DILocation(line: 37, column: 3, scope: !116)
