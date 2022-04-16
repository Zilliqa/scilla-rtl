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

%"$TyDescrTy_PrimTyp_65" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_97" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_96"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_96" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_98"**, %"$TyDescrTy_ADTTyp_97"* }
%"$TyDescrTy_ADTTyp_Constr_98" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_1114" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1115" = type { %ParamDescrString, i32, %"$ParamDescr_1114"* }
%TName_List_Int64 = type { i8, %CName_Cons_Int64*, %CName_Nil_Int64* }
%CName_Cons_Int64 = type <{ i8, %Int64, %TName_List_Int64* }>
%CName_Nil_Int64 = type <{ i8 }>
%"$$fundef_63_env_138" = type {}
%Int64 = type { i64 }
%"$$fundef_61_env_139" = type {}
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>
%"$$fundef_59_env_140" = type {}
%"$$fundef_57_env_141" = type {}
%"$$fundef_55_env_142" = type {}
%"$$fundef_53_env_143" = type {}
%"$$fundef_51_env_144" = type {}
%"$$fundef_49_env_145" = type {}
%Uint32 = type { i32 }
%"$$fundef_46_env_146" = type { %Uint32, %Uint32 }
%"$$fundef_44_env_147" = type { %Uint32 }
%"$$fundef_42_env_148" = type { { i8*, i8* }* }
%"$$fundef_40_env_149" = type { %Uint32, %Uint32 }
%"$$fundef_38_env_150" = type { %Uint32 }
%"$$fundef_36_env_151" = type { { i8*, i8* }* }
%"$$fundef_34_env_152" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_32_env_153" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_30_env_154" = type {}
%"$$fundef_28_env_155" = type {}
%"$$fundef_26_env_156" = type {}
%"$$fundef_24_env_157" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_22_env_158" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_20_env_159" = type {}
%"$$fundef_18_env_160" = type {}
%"$$fundef_16_env_161" = type {}
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_66" = global %"$TyDescrTy_PrimTyp_65" zeroinitializer
@"$TyDescr_Int32_67" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Int32_Prim_66" to i8*) }
@"$TyDescr_Uint32_Prim_68" = global %"$TyDescrTy_PrimTyp_65" { i32 1, i32 0 }
@"$TyDescr_Uint32_69" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Uint32_Prim_68" to i8*) }
@"$TyDescr_Int64_Prim_70" = global %"$TyDescrTy_PrimTyp_65" { i32 0, i32 1 }
@"$TyDescr_Int64_71" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Int64_Prim_70" to i8*) }
@"$TyDescr_Uint64_Prim_72" = global %"$TyDescrTy_PrimTyp_65" { i32 1, i32 1 }
@"$TyDescr_Uint64_73" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Uint64_Prim_72" to i8*) }
@"$TyDescr_Int128_Prim_74" = global %"$TyDescrTy_PrimTyp_65" { i32 0, i32 2 }
@"$TyDescr_Int128_75" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Int128_Prim_74" to i8*) }
@"$TyDescr_Uint128_Prim_76" = global %"$TyDescrTy_PrimTyp_65" { i32 1, i32 2 }
@"$TyDescr_Uint128_77" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Uint128_Prim_76" to i8*) }
@"$TyDescr_Int256_Prim_78" = global %"$TyDescrTy_PrimTyp_65" { i32 0, i32 3 }
@"$TyDescr_Int256_79" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Int256_Prim_78" to i8*) }
@"$TyDescr_Uint256_Prim_80" = global %"$TyDescrTy_PrimTyp_65" { i32 1, i32 3 }
@"$TyDescr_Uint256_81" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Uint256_Prim_80" to i8*) }
@"$TyDescr_String_Prim_82" = global %"$TyDescrTy_PrimTyp_65" { i32 2, i32 0 }
@"$TyDescr_String_83" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_String_Prim_82" to i8*) }
@"$TyDescr_Bnum_Prim_84" = global %"$TyDescrTy_PrimTyp_65" { i32 3, i32 0 }
@"$TyDescr_Bnum_85" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Bnum_Prim_84" to i8*) }
@"$TyDescr_Message_Prim_86" = global %"$TyDescrTy_PrimTyp_65" { i32 4, i32 0 }
@"$TyDescr_Message_87" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Message_Prim_86" to i8*) }
@"$TyDescr_Event_Prim_88" = global %"$TyDescrTy_PrimTyp_65" { i32 5, i32 0 }
@"$TyDescr_Event_89" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Event_Prim_88" to i8*) }
@"$TyDescr_Exception_Prim_90" = global %"$TyDescrTy_PrimTyp_65" { i32 6, i32 0 }
@"$TyDescr_Exception_91" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Exception_Prim_90" to i8*) }
@"$TyDescr_ReplicateContr_Prim_92" = global %"$TyDescrTy_PrimTyp_65" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_93" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_ReplicateContr_Prim_92" to i8*) }
@"$TyDescr_Bystr_Prim_94" = global %"$TyDescrTy_PrimTyp_65" { i32 7, i32 0 }
@"$TyDescr_Bystr_95" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Bystr_Prim_94" to i8*) }
@"$TyDescr_ADT_Bool_99" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_96"* @"$TyDescr_Bool_ADTTyp_Specl_114" to i8*) }
@"$TyDescr_ADT_List_Int64_100" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_96"* @"$TyDescr_List_Int64_ADTTyp_Specl_126" to i8*) }
@"$TyDescr_ADT_List_Int32_101" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_96"* @"$TyDescr_List_Int32_ADTTyp_Specl_135" to i8*) }
@"$TyDescr_Bool_ADTTyp_105" = unnamed_addr constant %"$TyDescrTy_ADTTyp_97" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_116", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_96"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_96"*], [1 x %"$TyDescrTy_ADTTyp_Specl_96"*]* @"$TyDescr_Bool_ADTTyp_m_specls_115", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_106" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_107" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_108" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_98" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_107", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_106", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_109" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_110" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_111" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_98" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_110", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_109", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_112" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_98"*] [%"$TyDescrTy_ADTTyp_Constr_98"* @"$TyDescr_Bool_True_ADTTyp_Constr_108", %"$TyDescrTy_ADTTyp_Constr_98"* @"$TyDescr_Bool_False_ADTTyp_Constr_111"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_113" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_114" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_96" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_113", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_98"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_98"*], [2 x %"$TyDescrTy_ADTTyp_Constr_98"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_112", i32 0, i32 0), %"$TyDescrTy_ADTTyp_97"* @"$TyDescr_Bool_ADTTyp_105" }
@"$TyDescr_Bool_ADTTyp_m_specls_115" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_96"*] [%"$TyDescrTy_ADTTyp_Specl_96"* @"$TyDescr_Bool_ADTTyp_Specl_114"]
@"$TyDescr_ADT_Bool_116" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_117" = unnamed_addr constant %"$TyDescrTy_ADTTyp_97" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_137", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_96"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_96"*], [2 x %"$TyDescrTy_ADTTyp_Specl_96"*]* @"$TyDescr_List_ADTTyp_m_specls_136", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int64_Constr_m_args_118" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_71", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int64_100"]
@"$TyDescr_ADT_Cons_119" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int64_ADTTyp_Constr_120" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_98" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_119", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int64_Constr_m_args_118", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int64_Constr_m_args_121" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_122" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int64_ADTTyp_Constr_123" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_98" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_122", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int64_Constr_m_args_121", i32 0, i32 0) }
@"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_124" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_98"*] [%"$TyDescrTy_ADTTyp_Constr_98"* @"$TyDescr_List_Cons_Int64_ADTTyp_Constr_120", %"$TyDescrTy_ADTTyp_Constr_98"* @"$TyDescr_List_Nil_Int64_ADTTyp_Constr_123"]
@"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_125" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_71"]
@"$TyDescr_List_Int64_ADTTyp_Specl_126" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_96" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_125", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_98"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_98"*], [2 x %"$TyDescrTy_ADTTyp_Constr_98"*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_124", i32 0, i32 0), %"$TyDescrTy_ADTTyp_97"* @"$TyDescr_List_ADTTyp_117" }
@"$TyDescr_List_Cons_Int32_Constr_m_args_127" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_67", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_101"]
@"$TyDescr_ADT_Cons_128" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_129" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_98" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_128", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_127", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_130" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_131" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_132" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_98" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_131", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_130", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_133" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_98"*] [%"$TyDescrTy_ADTTyp_Constr_98"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_129", %"$TyDescrTy_ADTTyp_Constr_98"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_132"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_134" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_67"]
@"$TyDescr_List_Int32_ADTTyp_Specl_135" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_96" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_134", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_98"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_98"*], [2 x %"$TyDescrTy_ADTTyp_Constr_98"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_133", i32 0, i32 0), %"$TyDescrTy_ADTTyp_97"* @"$TyDescr_List_ADTTyp_117" }
@"$TyDescr_List_ADTTyp_m_specls_136" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_96"*] [%"$TyDescrTy_ADTTyp_Specl_96"* @"$TyDescr_List_Int64_ADTTyp_Specl_126", %"$TyDescrTy_ADTTyp_Specl_96"* @"$TyDescr_List_Int32_ADTTyp_Specl_135"]
@"$TyDescr_ADT_List_137" = unnamed_addr constant [4 x i8] c"List"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@ListUtils.list_length = global { i8*, i8* }* null
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_89", %_TyDescrTy_Typ* @"$TyDescr_Int64_71", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_99", %_TyDescrTy_Typ* @"$TyDescr_Uint256_81", %_TyDescrTy_Typ* @"$TyDescr_Uint32_69", %_TyDescrTy_Typ* @"$TyDescr_Uint64_73", %_TyDescrTy_Typ* @"$TyDescr_Bnum_85", %_TyDescrTy_Typ* @"$TyDescr_Uint128_77", %_TyDescrTy_Typ* @"$TyDescr_Exception_91", %_TyDescrTy_Typ* @"$TyDescr_String_83", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int64_100", %_TyDescrTy_Typ* @"$TyDescr_Int256_79", %_TyDescrTy_Typ* @"$TyDescr_Int128_75", %_TyDescrTy_Typ* @"$TyDescr_Bystr_95", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_93", %_TyDescrTy_Typ* @"$TyDescr_Message_87", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_101", %_TyDescrTy_Typ* @"$TyDescr_Int32_67"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_1114"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1115"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_List_Int64* @"$fundef_63"(%"$$fundef_63_env_138"* %0, %Int64 %1) !dbg !4 {
entry:
  %"$retval_64" = alloca %TName_List_Int64*, align 8
  %"$gasrem_753" = load i64, i64* @_gasrem, align 8
  %"$gascmp_754" = icmp ugt i64 1, %"$gasrem_753"
  br i1 %"$gascmp_754", label %"$out_of_gas_755", label %"$have_gas_756"

"$out_of_gas_755":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_756"

"$have_gas_756":                                  ; preds = %"$out_of_gas_755", %entry
  %"$consume_757" = sub i64 %"$gasrem_753", 1
  store i64 %"$consume_757", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  %"$gasrem_758" = load i64, i64* @_gasrem, align 8
  %"$gascmp_759" = icmp ugt i64 1, %"$gasrem_758"
  br i1 %"$gascmp_759", label %"$out_of_gas_760", label %"$have_gas_761"

"$out_of_gas_760":                                ; preds = %"$have_gas_756"
  call void @_out_of_gas()
  br label %"$have_gas_761"

"$have_gas_761":                                  ; preds = %"$out_of_gas_760", %"$have_gas_756"
  %"$consume_762" = sub i64 %"$gasrem_758", 1
  store i64 %"$consume_762", i64* @_gasrem, align 8
  %"$adtval_763_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_763_salloc" = call i8* @_salloc(i8* %"$adtval_763_load", i64 1)
  %"$adtval_763" = bitcast i8* %"$adtval_763_salloc" to %CName_Nil_Int64*
  %"$adtgep_764" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_763", i32 0, i32 0
  store i8 1, i8* %"$adtgep_764", align 1
  %"$adtptr_765" = bitcast %CName_Nil_Int64* %"$adtval_763" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_765", %TName_List_Int64** %an, align 8, !dbg !8
  %"$gasrem_766" = load i64, i64* @_gasrem, align 8
  %"$gascmp_767" = icmp ugt i64 1, %"$gasrem_766"
  br i1 %"$gascmp_767", label %"$out_of_gas_768", label %"$have_gas_769"

"$out_of_gas_768":                                ; preds = %"$have_gas_761"
  call void @_out_of_gas()
  br label %"$have_gas_769"

"$have_gas_769":                                  ; preds = %"$out_of_gas_768", %"$have_gas_761"
  %"$consume_770" = sub i64 %"$gasrem_766", 1
  store i64 %"$consume_770", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int64*, align 8
  %"$gasrem_771" = load i64, i64* @_gasrem, align 8
  %"$gascmp_772" = icmp ugt i64 1, %"$gasrem_771"
  br i1 %"$gascmp_772", label %"$out_of_gas_773", label %"$have_gas_774"

"$out_of_gas_773":                                ; preds = %"$have_gas_769"
  call void @_out_of_gas()
  br label %"$have_gas_774"

"$have_gas_774":                                  ; preds = %"$out_of_gas_773", %"$have_gas_769"
  %"$consume_775" = sub i64 %"$gasrem_771", 1
  store i64 %"$consume_775", i64* @_gasrem, align 8
  %"$an_776" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_777_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_777_salloc" = call i8* @_salloc(i8* %"$adtval_777_load", i64 17)
  %"$adtval_777" = bitcast i8* %"$adtval_777_salloc" to %CName_Cons_Int64*
  %"$adtgep_778" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_777", i32 0, i32 0
  store i8 0, i8* %"$adtgep_778", align 1
  %"$adtgep_779" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_777", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_779", align 8
  %"$adtgep_780" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_777", i32 0, i32 2
  store %TName_List_Int64* %"$an_776", %TName_List_Int64** %"$adtgep_780", align 8
  %"$adtptr_781" = bitcast %CName_Cons_Int64* %"$adtval_777" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_781", %TName_List_Int64** %a1, align 8, !dbg !9
  %"$gasrem_782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_783" = icmp ugt i64 1, %"$gasrem_782"
  br i1 %"$gascmp_783", label %"$out_of_gas_784", label %"$have_gas_785"

"$out_of_gas_784":                                ; preds = %"$have_gas_774"
  call void @_out_of_gas()
  br label %"$have_gas_785"

"$have_gas_785":                                  ; preds = %"$out_of_gas_784", %"$have_gas_774"
  %"$consume_786" = sub i64 %"$gasrem_782", 1
  store i64 %"$consume_786", i64* @_gasrem, align 8
  %"$a1_787" = load %TName_List_Int64*, %TName_List_Int64** %a1, align 8
  %"$adtval_788_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_788_salloc" = call i8* @_salloc(i8* %"$adtval_788_load", i64 17)
  %"$adtval_788" = bitcast i8* %"$adtval_788_salloc" to %CName_Cons_Int64*
  %"$adtgep_789" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_788", i32 0, i32 0
  store i8 0, i8* %"$adtgep_789", align 1
  %"$adtgep_790" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_788", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_790", align 8
  %"$adtgep_791" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_788", i32 0, i32 2
  store %TName_List_Int64* %"$a1_787", %TName_List_Int64** %"$adtgep_791", align 8
  %"$adtptr_792" = bitcast %CName_Cons_Int64* %"$adtval_788" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_792", %TName_List_Int64** %"$retval_64", align 8, !dbg !10
  %"$$retval_64_793" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_64", align 8
  ret %TName_List_Int64* %"$$retval_64_793"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_61"(%"$$fundef_61_env_139"* %0) !dbg !11 {
entry:
  %"$retval_62" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_744" = load i64, i64* @_gasrem, align 8
  %"$gascmp_745" = icmp ugt i64 1, %"$gasrem_744"
  br i1 %"$gascmp_745", label %"$out_of_gas_746", label %"$have_gas_747"

"$out_of_gas_746":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_747"

"$have_gas_747":                                  ; preds = %"$out_of_gas_746", %entry
  %"$consume_748" = sub i64 %"$gasrem_744", 1
  store i64 %"$consume_748", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_63_env_138"*, %Int64)* @"$fundef_63" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_62", align 8, !dbg !12
  %"$$retval_62_752" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_62", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_62_752"
}

define internal %TName_List_Int32* @"$fundef_59"(%"$$fundef_59_env_140"* %0, %Int32 %1) !dbg !13 {
entry:
  %"$retval_60" = alloca %TName_List_Int32*, align 8
  %"$gasrem_703" = load i64, i64* @_gasrem, align 8
  %"$gascmp_704" = icmp ugt i64 1, %"$gasrem_703"
  br i1 %"$gascmp_704", label %"$out_of_gas_705", label %"$have_gas_706"

"$out_of_gas_705":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_706"

"$have_gas_706":                                  ; preds = %"$out_of_gas_705", %entry
  %"$consume_707" = sub i64 %"$gasrem_703", 1
  store i64 %"$consume_707", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  %"$gasrem_708" = load i64, i64* @_gasrem, align 8
  %"$gascmp_709" = icmp ugt i64 1, %"$gasrem_708"
  br i1 %"$gascmp_709", label %"$out_of_gas_710", label %"$have_gas_711"

"$out_of_gas_710":                                ; preds = %"$have_gas_706"
  call void @_out_of_gas()
  br label %"$have_gas_711"

"$have_gas_711":                                  ; preds = %"$out_of_gas_710", %"$have_gas_706"
  %"$consume_712" = sub i64 %"$gasrem_708", 1
  store i64 %"$consume_712", i64* @_gasrem, align 8
  %"$adtval_713_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_713_salloc" = call i8* @_salloc(i8* %"$adtval_713_load", i64 1)
  %"$adtval_713" = bitcast i8* %"$adtval_713_salloc" to %CName_Nil_Int32*
  %"$adtgep_714" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_713", i32 0, i32 0
  store i8 1, i8* %"$adtgep_714", align 1
  %"$adtptr_715" = bitcast %CName_Nil_Int32* %"$adtval_713" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_715", %TName_List_Int32** %an, align 8, !dbg !14
  %"$gasrem_716" = load i64, i64* @_gasrem, align 8
  %"$gascmp_717" = icmp ugt i64 1, %"$gasrem_716"
  br i1 %"$gascmp_717", label %"$out_of_gas_718", label %"$have_gas_719"

"$out_of_gas_718":                                ; preds = %"$have_gas_711"
  call void @_out_of_gas()
  br label %"$have_gas_719"

"$have_gas_719":                                  ; preds = %"$out_of_gas_718", %"$have_gas_711"
  %"$consume_720" = sub i64 %"$gasrem_716", 1
  store i64 %"$consume_720", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int32*, align 8
  %"$gasrem_721" = load i64, i64* @_gasrem, align 8
  %"$gascmp_722" = icmp ugt i64 1, %"$gasrem_721"
  br i1 %"$gascmp_722", label %"$out_of_gas_723", label %"$have_gas_724"

"$out_of_gas_723":                                ; preds = %"$have_gas_719"
  call void @_out_of_gas()
  br label %"$have_gas_724"

"$have_gas_724":                                  ; preds = %"$out_of_gas_723", %"$have_gas_719"
  %"$consume_725" = sub i64 %"$gasrem_721", 1
  store i64 %"$consume_725", i64* @_gasrem, align 8
  %"$an_726" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_727_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_727_salloc" = call i8* @_salloc(i8* %"$adtval_727_load", i64 13)
  %"$adtval_727" = bitcast i8* %"$adtval_727_salloc" to %CName_Cons_Int32*
  %"$adtgep_728" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_727", i32 0, i32 0
  store i8 0, i8* %"$adtgep_728", align 1
  %"$adtgep_729" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_727", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_729", align 4
  %"$adtgep_730" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_727", i32 0, i32 2
  store %TName_List_Int32* %"$an_726", %TName_List_Int32** %"$adtgep_730", align 8
  %"$adtptr_731" = bitcast %CName_Cons_Int32* %"$adtval_727" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_731", %TName_List_Int32** %a1, align 8, !dbg !15
  %"$gasrem_732" = load i64, i64* @_gasrem, align 8
  %"$gascmp_733" = icmp ugt i64 1, %"$gasrem_732"
  br i1 %"$gascmp_733", label %"$out_of_gas_734", label %"$have_gas_735"

"$out_of_gas_734":                                ; preds = %"$have_gas_724"
  call void @_out_of_gas()
  br label %"$have_gas_735"

"$have_gas_735":                                  ; preds = %"$out_of_gas_734", %"$have_gas_724"
  %"$consume_736" = sub i64 %"$gasrem_732", 1
  store i64 %"$consume_736", i64* @_gasrem, align 8
  %"$a1_737" = load %TName_List_Int32*, %TName_List_Int32** %a1, align 8
  %"$adtval_738_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_738_salloc" = call i8* @_salloc(i8* %"$adtval_738_load", i64 13)
  %"$adtval_738" = bitcast i8* %"$adtval_738_salloc" to %CName_Cons_Int32*
  %"$adtgep_739" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_738", i32 0, i32 0
  store i8 0, i8* %"$adtgep_739", align 1
  %"$adtgep_740" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_738", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_740", align 4
  %"$adtgep_741" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_738", i32 0, i32 2
  store %TName_List_Int32* %"$a1_737", %TName_List_Int32** %"$adtgep_741", align 8
  %"$adtptr_742" = bitcast %CName_Cons_Int32* %"$adtval_738" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_742", %TName_List_Int32** %"$retval_60", align 8, !dbg !16
  %"$$retval_60_743" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_60", align 8
  ret %TName_List_Int32* %"$$retval_60_743"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_57"(%"$$fundef_57_env_141"* %0) !dbg !17 {
entry:
  %"$retval_58" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_695" = icmp ugt i64 1, %"$gasrem_694"
  br i1 %"$gascmp_695", label %"$out_of_gas_696", label %"$have_gas_697"

"$out_of_gas_696":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_697"

"$have_gas_697":                                  ; preds = %"$out_of_gas_696", %entry
  %"$consume_698" = sub i64 %"$gasrem_694", 1
  store i64 %"$consume_698", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_59_env_140"*, %Int32)* @"$fundef_59" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_58", align 8, !dbg !18
  %"$$retval_58_702" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_58", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_58_702"
}

define internal %TName_List_Int64* @"$fundef_55"(%"$$fundef_55_env_142"* %0, %Int64 %1) !dbg !19 {
entry:
  %"$retval_56" = alloca %TName_List_Int64*, align 8
  %"$gasrem_669" = load i64, i64* @_gasrem, align 8
  %"$gascmp_670" = icmp ugt i64 1, %"$gasrem_669"
  br i1 %"$gascmp_670", label %"$out_of_gas_671", label %"$have_gas_672"

"$out_of_gas_671":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_672"

"$have_gas_672":                                  ; preds = %"$out_of_gas_671", %entry
  %"$consume_673" = sub i64 %"$gasrem_669", 1
  store i64 %"$consume_673", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  %"$gasrem_674" = load i64, i64* @_gasrem, align 8
  %"$gascmp_675" = icmp ugt i64 1, %"$gasrem_674"
  br i1 %"$gascmp_675", label %"$out_of_gas_676", label %"$have_gas_677"

"$out_of_gas_676":                                ; preds = %"$have_gas_672"
  call void @_out_of_gas()
  br label %"$have_gas_677"

"$have_gas_677":                                  ; preds = %"$out_of_gas_676", %"$have_gas_672"
  %"$consume_678" = sub i64 %"$gasrem_674", 1
  store i64 %"$consume_678", i64* @_gasrem, align 8
  %"$adtval_679_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_679_salloc" = call i8* @_salloc(i8* %"$adtval_679_load", i64 1)
  %"$adtval_679" = bitcast i8* %"$adtval_679_salloc" to %CName_Nil_Int64*
  %"$adtgep_680" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_679", i32 0, i32 0
  store i8 1, i8* %"$adtgep_680", align 1
  %"$adtptr_681" = bitcast %CName_Nil_Int64* %"$adtval_679" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_681", %TName_List_Int64** %an, align 8, !dbg !20
  %"$gasrem_682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_683" = icmp ugt i64 1, %"$gasrem_682"
  br i1 %"$gascmp_683", label %"$out_of_gas_684", label %"$have_gas_685"

"$out_of_gas_684":                                ; preds = %"$have_gas_677"
  call void @_out_of_gas()
  br label %"$have_gas_685"

"$have_gas_685":                                  ; preds = %"$out_of_gas_684", %"$have_gas_677"
  %"$consume_686" = sub i64 %"$gasrem_682", 1
  store i64 %"$consume_686", i64* @_gasrem, align 8
  %"$an_687" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_688_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_688_salloc" = call i8* @_salloc(i8* %"$adtval_688_load", i64 17)
  %"$adtval_688" = bitcast i8* %"$adtval_688_salloc" to %CName_Cons_Int64*
  %"$adtgep_689" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_688", i32 0, i32 0
  store i8 0, i8* %"$adtgep_689", align 1
  %"$adtgep_690" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_688", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_690", align 8
  %"$adtgep_691" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_688", i32 0, i32 2
  store %TName_List_Int64* %"$an_687", %TName_List_Int64** %"$adtgep_691", align 8
  %"$adtptr_692" = bitcast %CName_Cons_Int64* %"$adtval_688" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_692", %TName_List_Int64** %"$retval_56", align 8, !dbg !21
  %"$$retval_56_693" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_56", align 8
  ret %TName_List_Int64* %"$$retval_56_693"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_53"(%"$$fundef_53_env_143"* %0) !dbg !22 {
entry:
  %"$retval_54" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_661" = icmp ugt i64 1, %"$gasrem_660"
  br i1 %"$gascmp_661", label %"$out_of_gas_662", label %"$have_gas_663"

"$out_of_gas_662":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_663"

"$have_gas_663":                                  ; preds = %"$out_of_gas_662", %entry
  %"$consume_664" = sub i64 %"$gasrem_660", 1
  store i64 %"$consume_664", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_55_env_142"*, %Int64)* @"$fundef_55" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_54", align 8, !dbg !23
  %"$$retval_54_668" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_54", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_54_668"
}

define internal %TName_List_Int32* @"$fundef_51"(%"$$fundef_51_env_144"* %0, %Int32 %1) !dbg !24 {
entry:
  %"$retval_52" = alloca %TName_List_Int32*, align 8
  %"$gasrem_635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_636" = icmp ugt i64 1, %"$gasrem_635"
  br i1 %"$gascmp_636", label %"$out_of_gas_637", label %"$have_gas_638"

"$out_of_gas_637":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_638"

"$have_gas_638":                                  ; preds = %"$out_of_gas_637", %entry
  %"$consume_639" = sub i64 %"$gasrem_635", 1
  store i64 %"$consume_639", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  %"$gasrem_640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_641" = icmp ugt i64 1, %"$gasrem_640"
  br i1 %"$gascmp_641", label %"$out_of_gas_642", label %"$have_gas_643"

"$out_of_gas_642":                                ; preds = %"$have_gas_638"
  call void @_out_of_gas()
  br label %"$have_gas_643"

"$have_gas_643":                                  ; preds = %"$out_of_gas_642", %"$have_gas_638"
  %"$consume_644" = sub i64 %"$gasrem_640", 1
  store i64 %"$consume_644", i64* @_gasrem, align 8
  %"$adtval_645_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_645_salloc" = call i8* @_salloc(i8* %"$adtval_645_load", i64 1)
  %"$adtval_645" = bitcast i8* %"$adtval_645_salloc" to %CName_Nil_Int32*
  %"$adtgep_646" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_645", i32 0, i32 0
  store i8 1, i8* %"$adtgep_646", align 1
  %"$adtptr_647" = bitcast %CName_Nil_Int32* %"$adtval_645" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_647", %TName_List_Int32** %an, align 8, !dbg !25
  %"$gasrem_648" = load i64, i64* @_gasrem, align 8
  %"$gascmp_649" = icmp ugt i64 1, %"$gasrem_648"
  br i1 %"$gascmp_649", label %"$out_of_gas_650", label %"$have_gas_651"

"$out_of_gas_650":                                ; preds = %"$have_gas_643"
  call void @_out_of_gas()
  br label %"$have_gas_651"

"$have_gas_651":                                  ; preds = %"$out_of_gas_650", %"$have_gas_643"
  %"$consume_652" = sub i64 %"$gasrem_648", 1
  store i64 %"$consume_652", i64* @_gasrem, align 8
  %"$an_653" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_654_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_654_salloc" = call i8* @_salloc(i8* %"$adtval_654_load", i64 13)
  %"$adtval_654" = bitcast i8* %"$adtval_654_salloc" to %CName_Cons_Int32*
  %"$adtgep_655" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_654", i32 0, i32 0
  store i8 0, i8* %"$adtgep_655", align 1
  %"$adtgep_656" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_654", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_656", align 4
  %"$adtgep_657" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_654", i32 0, i32 2
  store %TName_List_Int32* %"$an_653", %TName_List_Int32** %"$adtgep_657", align 8
  %"$adtptr_658" = bitcast %CName_Cons_Int32* %"$adtval_654" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_658", %TName_List_Int32** %"$retval_52", align 8, !dbg !26
  %"$$retval_52_659" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_52", align 8
  ret %TName_List_Int32* %"$$retval_52_659"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_49"(%"$$fundef_49_env_145"* %0) !dbg !27 {
entry:
  %"$retval_50" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_626" = load i64, i64* @_gasrem, align 8
  %"$gascmp_627" = icmp ugt i64 1, %"$gasrem_626"
  br i1 %"$gascmp_627", label %"$out_of_gas_628", label %"$have_gas_629"

"$out_of_gas_628":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_629"

"$have_gas_629":                                  ; preds = %"$out_of_gas_628", %entry
  %"$consume_630" = sub i64 %"$gasrem_626", 1
  store i64 %"$consume_630", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_51_env_144"*, %Int32)* @"$fundef_51" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_50", align 8, !dbg !28
  %"$$retval_50_634" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_50", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_50_634"
}

define internal %Uint32 @"$fundef_46"(%"$$fundef_46_env_146"* %0, %Int64 %1) !dbg !29 {
entry:
  %"$$fundef_46_env_one_613" = getelementptr inbounds %"$$fundef_46_env_146", %"$$fundef_46_env_146"* %0, i32 0, i32 0
  %"$one_envload_614" = load %Uint32, %Uint32* %"$$fundef_46_env_one_613", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_614", %Uint32* %one, align 4
  %"$$fundef_46_env_z_615" = getelementptr inbounds %"$$fundef_46_env_146", %"$$fundef_46_env_146"* %0, i32 0, i32 1
  %"$z_envload_616" = load %Uint32, %Uint32* %"$$fundef_46_env_z_615", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_616", %Uint32* %z, align 4
  %"$retval_47" = alloca %Uint32, align 8
  %"$gasrem_617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_618" = icmp ugt i64 4, %"$gasrem_617"
  br i1 %"$gascmp_618", label %"$out_of_gas_619", label %"$have_gas_620"

"$out_of_gas_619":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_620"

"$have_gas_620":                                  ; preds = %"$out_of_gas_619", %entry
  %"$consume_621" = sub i64 %"$gasrem_617", 4
  store i64 %"$consume_621", i64* @_gasrem, align 8
  %"$one_622" = load %Uint32, %Uint32* %one, align 4
  %"$z_623" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_624" = call %Uint32 @_add_Uint32(%Uint32 %"$one_622", %Uint32 %"$z_623"), !dbg !31
  store %Uint32 %"$add_call_624", %Uint32* %"$retval_47", align 4, !dbg !31
  %"$$retval_47_625" = load %Uint32, %Uint32* %"$retval_47", align 4
  ret %Uint32 %"$$retval_47_625"
}

define internal { %Uint32 (i8*, %Int64)*, i8* } @"$fundef_44"(%"$$fundef_44_env_147"* %0, %Uint32 %1) !dbg !32 {
entry:
  %"$$fundef_44_env_one_598" = getelementptr inbounds %"$$fundef_44_env_147", %"$$fundef_44_env_147"* %0, i32 0, i32 0
  %"$one_envload_599" = load %Uint32, %Uint32* %"$$fundef_44_env_one_598", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_599", %Uint32* %one, align 4
  %"$retval_45" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_600" = load i64, i64* @_gasrem, align 8
  %"$gascmp_601" = icmp ugt i64 1, %"$gasrem_600"
  br i1 %"$gascmp_601", label %"$out_of_gas_602", label %"$have_gas_603"

"$out_of_gas_602":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_603"

"$have_gas_603":                                  ; preds = %"$out_of_gas_602", %entry
  %"$consume_604" = sub i64 %"$gasrem_600", 1
  store i64 %"$consume_604", i64* @_gasrem, align 8
  %"$$fundef_46_envp_605_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_46_envp_605_salloc" = call i8* @_salloc(i8* %"$$fundef_46_envp_605_load", i64 8)
  %"$$fundef_46_envp_605" = bitcast i8* %"$$fundef_46_envp_605_salloc" to %"$$fundef_46_env_146"*
  %"$$fundef_46_env_voidp_607" = bitcast %"$$fundef_46_env_146"* %"$$fundef_46_envp_605" to i8*
  %"$$fundef_46_cloval_608" = insertvalue { %Uint32 (i8*, %Int64)*, i8* } { %Uint32 (i8*, %Int64)* bitcast (%Uint32 (%"$$fundef_46_env_146"*, %Int64)* @"$fundef_46" to %Uint32 (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_46_env_voidp_607", 1
  %"$$fundef_46_env_one_609" = getelementptr inbounds %"$$fundef_46_env_146", %"$$fundef_46_env_146"* %"$$fundef_46_envp_605", i32 0, i32 0
  %"$one_610" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_610", %Uint32* %"$$fundef_46_env_one_609", align 4
  %"$$fundef_46_env_z_611" = getelementptr inbounds %"$$fundef_46_env_146", %"$$fundef_46_env_146"* %"$$fundef_46_envp_605", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_46_env_z_611", align 4
  store { %Uint32 (i8*, %Int64)*, i8* } %"$$fundef_46_cloval_608", { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_45", align 8, !dbg !33
  %"$$retval_45_612" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_45", align 8
  ret { %Uint32 (i8*, %Int64)*, i8* } %"$$retval_45_612"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_42"(%"$$fundef_42_env_148"* %0) !dbg !34 {
entry:
  %"$$fundef_42_env_list_foldl_520" = getelementptr inbounds %"$$fundef_42_env_148", %"$$fundef_42_env_148"* %0, i32 0, i32 0
  %"$list_foldl_envload_521" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_42_env_list_foldl_520", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_521", { i8*, i8* }** %list_foldl, align 8
  %"$retval_43" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_522" = load i64, i64* @_gasrem, align 8
  %"$gascmp_523" = icmp ugt i64 1, %"$gasrem_522"
  br i1 %"$gascmp_523", label %"$out_of_gas_524", label %"$have_gas_525"

"$out_of_gas_524":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_525"

"$have_gas_525":                                  ; preds = %"$out_of_gas_524", %entry
  %"$consume_526" = sub i64 %"$gasrem_522", 1
  store i64 %"$consume_526", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_528" = icmp ugt i64 1, %"$gasrem_527"
  br i1 %"$gascmp_528", label %"$out_of_gas_529", label %"$have_gas_530"

"$out_of_gas_529":                                ; preds = %"$have_gas_525"
  call void @_out_of_gas()
  br label %"$have_gas_530"

"$have_gas_530":                                  ; preds = %"$out_of_gas_529", %"$have_gas_525"
  %"$consume_531" = sub i64 %"$gasrem_527", 1
  store i64 %"$consume_531", i64* @_gasrem, align 8
  %"$list_foldl_532" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_533" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_532", i32 2
  %"$list_foldl_534" = bitcast { i8*, i8* }* %"$list_foldl_533" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_535" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_534", align 8
  %"$list_foldl_fptr_536" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_535", 0
  %"$list_foldl_envptr_537" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_535", 1
  %"$list_foldl_call_538" = call { i8*, i8* }* %"$list_foldl_fptr_536"(i8* %"$list_foldl_envptr_537"), !dbg !35
  %"$list_foldl_539" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_538", i32 1
  %"$list_foldl_540" = bitcast { i8*, i8* }* %"$list_foldl_539" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_541" = load { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_540", align 8
  %"$list_foldl_fptr_542" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_541", 0
  %"$list_foldl_envptr_543" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_541", 1
  %"$list_foldl_call_544" = call { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_542"(i8* %"$list_foldl_envptr_543"), !dbg !35
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_544", { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8, !dbg !36
  %"$gasrem_545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_546" = icmp ugt i64 1, %"$gasrem_545"
  br i1 %"$gascmp_546", label %"$out_of_gas_547", label %"$have_gas_548"

"$out_of_gas_547":                                ; preds = %"$have_gas_530"
  call void @_out_of_gas()
  br label %"$have_gas_548"

"$have_gas_548":                                  ; preds = %"$out_of_gas_547", %"$have_gas_530"
  %"$consume_549" = sub i64 %"$gasrem_545", 1
  store i64 %"$consume_549", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_551" = icmp ugt i64 1, %"$gasrem_550"
  br i1 %"$gascmp_551", label %"$out_of_gas_552", label %"$have_gas_553"

"$out_of_gas_552":                                ; preds = %"$have_gas_548"
  call void @_out_of_gas()
  br label %"$have_gas_553"

"$have_gas_553":                                  ; preds = %"$out_of_gas_552", %"$have_gas_548"
  %"$consume_554" = sub i64 %"$gasrem_550", 1
  store i64 %"$consume_554", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !37
  %"$gasrem_555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_556" = icmp ugt i64 1, %"$gasrem_555"
  br i1 %"$gascmp_556", label %"$out_of_gas_557", label %"$have_gas_558"

"$out_of_gas_557":                                ; preds = %"$have_gas_553"
  call void @_out_of_gas()
  br label %"$have_gas_558"

"$have_gas_558":                                  ; preds = %"$out_of_gas_557", %"$have_gas_553"
  %"$consume_559" = sub i64 %"$gasrem_555", 1
  store i64 %"$consume_559", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_561" = icmp ugt i64 1, %"$gasrem_560"
  br i1 %"$gascmp_561", label %"$out_of_gas_562", label %"$have_gas_563"

"$out_of_gas_562":                                ; preds = %"$have_gas_558"
  call void @_out_of_gas()
  br label %"$have_gas_563"

"$have_gas_563":                                  ; preds = %"$out_of_gas_562", %"$have_gas_558"
  %"$consume_564" = sub i64 %"$gasrem_560", 1
  store i64 %"$consume_564", i64* @_gasrem, align 8
  %"$$fundef_44_envp_565_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_44_envp_565_salloc" = call i8* @_salloc(i8* %"$$fundef_44_envp_565_load", i64 4)
  %"$$fundef_44_envp_565" = bitcast i8* %"$$fundef_44_envp_565_salloc" to %"$$fundef_44_env_147"*
  %"$$fundef_44_env_voidp_567" = bitcast %"$$fundef_44_env_147"* %"$$fundef_44_envp_565" to i8*
  %"$$fundef_44_cloval_568" = insertvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int64)*, i8* } (%"$$fundef_44_env_147"*, %Uint32)* @"$fundef_44" to { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_44_env_voidp_567", 1
  %"$$fundef_44_env_one_569" = getelementptr inbounds %"$$fundef_44_env_147", %"$$fundef_44_env_147"* %"$$fundef_44_envp_565", i32 0, i32 0
  %"$one_570" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_570", %Uint32* %"$$fundef_44_env_one_569", align 4
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_44_cloval_568", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8, !dbg !38
  %"$gasrem_571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_572" = icmp ugt i64 1, %"$gasrem_571"
  br i1 %"$gascmp_572", label %"$out_of_gas_573", label %"$have_gas_574"

"$out_of_gas_573":                                ; preds = %"$have_gas_563"
  call void @_out_of_gas()
  br label %"$have_gas_574"

"$have_gas_574":                                  ; preds = %"$out_of_gas_573", %"$have_gas_563"
  %"$consume_575" = sub i64 %"$gasrem_571", 1
  store i64 %"$consume_575", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_577" = icmp ugt i64 1, %"$gasrem_576"
  br i1 %"$gascmp_577", label %"$out_of_gas_578", label %"$have_gas_579"

"$out_of_gas_578":                                ; preds = %"$have_gas_574"
  call void @_out_of_gas()
  br label %"$have_gas_579"

"$have_gas_579":                                  ; preds = %"$out_of_gas_578", %"$have_gas_574"
  %"$consume_580" = sub i64 %"$gasrem_576", 1
  store i64 %"$consume_580", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4, !dbg !39
  %"$gasrem_581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_582" = icmp ugt i64 1, %"$gasrem_581"
  br i1 %"$gascmp_582", label %"$out_of_gas_583", label %"$have_gas_584"

"$out_of_gas_583":                                ; preds = %"$have_gas_579"
  call void @_out_of_gas()
  br label %"$have_gas_584"

"$have_gas_584":                                  ; preds = %"$out_of_gas_583", %"$have_gas_579"
  %"$consume_585" = sub i64 %"$gasrem_581", 1
  store i64 %"$consume_585", i64* @_gasrem, align 8
  %"$foldl_10" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_586" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_587" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_586", 0
  %"$foldl_envptr_588" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_586", 1
  %"$iter_589" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_590" = call { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_587"(i8* %"$foldl_envptr_588", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_589"), !dbg !40
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_590", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8, !dbg !40
  %"$foldl_11" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$$foldl_10_591" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$$foldl_10_fptr_592" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_591", 0
  %"$$foldl_10_envptr_593" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_591", 1
  %"$init_594" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_10_call_595" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_10_fptr_592"(i8* %"$$foldl_10_envptr_593", %Uint32 %"$init_594"), !dbg !40
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_10_call_595", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_11", align 8, !dbg !40
  %"$$foldl_11_596" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_11", align 8
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_11_596", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_43", align 8, !dbg !40
  %"$$retval_43_597" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_43", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_43_597"
}

define internal %Uint32 @"$fundef_40"(%"$$fundef_40_env_149"* %0, %Int32 %1) !dbg !41 {
entry:
  %"$$fundef_40_env_one_507" = getelementptr inbounds %"$$fundef_40_env_149", %"$$fundef_40_env_149"* %0, i32 0, i32 0
  %"$one_envload_508" = load %Uint32, %Uint32* %"$$fundef_40_env_one_507", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_508", %Uint32* %one, align 4
  %"$$fundef_40_env_z_509" = getelementptr inbounds %"$$fundef_40_env_149", %"$$fundef_40_env_149"* %0, i32 0, i32 1
  %"$z_envload_510" = load %Uint32, %Uint32* %"$$fundef_40_env_z_509", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_510", %Uint32* %z, align 4
  %"$retval_41" = alloca %Uint32, align 8
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 4, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %entry
  %"$consume_515" = sub i64 %"$gasrem_511", 4
  store i64 %"$consume_515", i64* @_gasrem, align 8
  %"$one_516" = load %Uint32, %Uint32* %one, align 4
  %"$z_517" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_518" = call %Uint32 @_add_Uint32(%Uint32 %"$one_516", %Uint32 %"$z_517"), !dbg !42
  store %Uint32 %"$add_call_518", %Uint32* %"$retval_41", align 4, !dbg !42
  %"$$retval_41_519" = load %Uint32, %Uint32* %"$retval_41", align 4
  ret %Uint32 %"$$retval_41_519"
}

define internal { %Uint32 (i8*, %Int32)*, i8* } @"$fundef_38"(%"$$fundef_38_env_150"* %0, %Uint32 %1) !dbg !43 {
entry:
  %"$$fundef_38_env_one_492" = getelementptr inbounds %"$$fundef_38_env_150", %"$$fundef_38_env_150"* %0, i32 0, i32 0
  %"$one_envload_493" = load %Uint32, %Uint32* %"$$fundef_38_env_one_492", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_493", %Uint32* %one, align 4
  %"$retval_39" = alloca { %Uint32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_495" = icmp ugt i64 1, %"$gasrem_494"
  br i1 %"$gascmp_495", label %"$out_of_gas_496", label %"$have_gas_497"

"$out_of_gas_496":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_497"

"$have_gas_497":                                  ; preds = %"$out_of_gas_496", %entry
  %"$consume_498" = sub i64 %"$gasrem_494", 1
  store i64 %"$consume_498", i64* @_gasrem, align 8
  %"$$fundef_40_envp_499_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_40_envp_499_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_499_load", i64 8)
  %"$$fundef_40_envp_499" = bitcast i8* %"$$fundef_40_envp_499_salloc" to %"$$fundef_40_env_149"*
  %"$$fundef_40_env_voidp_501" = bitcast %"$$fundef_40_env_149"* %"$$fundef_40_envp_499" to i8*
  %"$$fundef_40_cloval_502" = insertvalue { %Uint32 (i8*, %Int32)*, i8* } { %Uint32 (i8*, %Int32)* bitcast (%Uint32 (%"$$fundef_40_env_149"*, %Int32)* @"$fundef_40" to %Uint32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_40_env_voidp_501", 1
  %"$$fundef_40_env_one_503" = getelementptr inbounds %"$$fundef_40_env_149", %"$$fundef_40_env_149"* %"$$fundef_40_envp_499", i32 0, i32 0
  %"$one_504" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_504", %Uint32* %"$$fundef_40_env_one_503", align 4
  %"$$fundef_40_env_z_505" = getelementptr inbounds %"$$fundef_40_env_149", %"$$fundef_40_env_149"* %"$$fundef_40_envp_499", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_40_env_z_505", align 4
  store { %Uint32 (i8*, %Int32)*, i8* } %"$$fundef_40_cloval_502", { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_39", align 8, !dbg !44
  %"$$retval_39_506" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_39", align 8
  ret { %Uint32 (i8*, %Int32)*, i8* } %"$$retval_39_506"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_36"(%"$$fundef_36_env_151"* %0) !dbg !45 {
entry:
  %"$$fundef_36_env_list_foldl_414" = getelementptr inbounds %"$$fundef_36_env_151", %"$$fundef_36_env_151"* %0, i32 0, i32 0
  %"$list_foldl_envload_415" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_36_env_list_foldl_414", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_415", { i8*, i8* }** %list_foldl, align 8
  %"$retval_37" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_417" = icmp ugt i64 1, %"$gasrem_416"
  br i1 %"$gascmp_417", label %"$out_of_gas_418", label %"$have_gas_419"

"$out_of_gas_418":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_419"

"$have_gas_419":                                  ; preds = %"$out_of_gas_418", %entry
  %"$consume_420" = sub i64 %"$gasrem_416", 1
  store i64 %"$consume_420", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_422" = icmp ugt i64 1, %"$gasrem_421"
  br i1 %"$gascmp_422", label %"$out_of_gas_423", label %"$have_gas_424"

"$out_of_gas_423":                                ; preds = %"$have_gas_419"
  call void @_out_of_gas()
  br label %"$have_gas_424"

"$have_gas_424":                                  ; preds = %"$out_of_gas_423", %"$have_gas_419"
  %"$consume_425" = sub i64 %"$gasrem_421", 1
  store i64 %"$consume_425", i64* @_gasrem, align 8
  %"$list_foldl_426" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_427" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_426", i32 0
  %"$list_foldl_428" = bitcast { i8*, i8* }* %"$list_foldl_427" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_429" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_428", align 8
  %"$list_foldl_fptr_430" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_429", 0
  %"$list_foldl_envptr_431" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_429", 1
  %"$list_foldl_call_432" = call { i8*, i8* }* %"$list_foldl_fptr_430"(i8* %"$list_foldl_envptr_431"), !dbg !46
  %"$list_foldl_433" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_432", i32 1
  %"$list_foldl_434" = bitcast { i8*, i8* }* %"$list_foldl_433" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_435" = load { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_434", align 8
  %"$list_foldl_fptr_436" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_435", 0
  %"$list_foldl_envptr_437" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_435", 1
  %"$list_foldl_call_438" = call { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_436"(i8* %"$list_foldl_envptr_437"), !dbg !46
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_438", { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8, !dbg !47
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_424"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_424"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 1, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_442"
  %"$consume_448" = sub i64 %"$gasrem_444", 1
  store i64 %"$consume_448", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !48
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 1, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %"$have_gas_447"
  %"$consume_453" = sub i64 %"$gasrem_449", 1
  store i64 %"$consume_453", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_455" = icmp ugt i64 1, %"$gasrem_454"
  br i1 %"$gascmp_455", label %"$out_of_gas_456", label %"$have_gas_457"

"$out_of_gas_456":                                ; preds = %"$have_gas_452"
  call void @_out_of_gas()
  br label %"$have_gas_457"

"$have_gas_457":                                  ; preds = %"$out_of_gas_456", %"$have_gas_452"
  %"$consume_458" = sub i64 %"$gasrem_454", 1
  store i64 %"$consume_458", i64* @_gasrem, align 8
  %"$$fundef_38_envp_459_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_38_envp_459_salloc" = call i8* @_salloc(i8* %"$$fundef_38_envp_459_load", i64 4)
  %"$$fundef_38_envp_459" = bitcast i8* %"$$fundef_38_envp_459_salloc" to %"$$fundef_38_env_150"*
  %"$$fundef_38_env_voidp_461" = bitcast %"$$fundef_38_env_150"* %"$$fundef_38_envp_459" to i8*
  %"$$fundef_38_cloval_462" = insertvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int32)*, i8* } (%"$$fundef_38_env_150"*, %Uint32)* @"$fundef_38" to { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_38_env_voidp_461", 1
  %"$$fundef_38_env_one_463" = getelementptr inbounds %"$$fundef_38_env_150", %"$$fundef_38_env_150"* %"$$fundef_38_envp_459", i32 0, i32 0
  %"$one_464" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_464", %Uint32* %"$$fundef_38_env_one_463", align 4
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_38_cloval_462", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8, !dbg !49
  %"$gasrem_465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_466" = icmp ugt i64 1, %"$gasrem_465"
  br i1 %"$gascmp_466", label %"$out_of_gas_467", label %"$have_gas_468"

"$out_of_gas_467":                                ; preds = %"$have_gas_457"
  call void @_out_of_gas()
  br label %"$have_gas_468"

"$have_gas_468":                                  ; preds = %"$out_of_gas_467", %"$have_gas_457"
  %"$consume_469" = sub i64 %"$gasrem_465", 1
  store i64 %"$consume_469", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 1, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$have_gas_468"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$have_gas_468"
  %"$consume_474" = sub i64 %"$gasrem_470", 1
  store i64 %"$consume_474", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4, !dbg !50
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 1, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_473"
  %"$consume_479" = sub i64 %"$gasrem_475", 1
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %"$foldl_10" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_480" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_481" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_480", 0
  %"$foldl_envptr_482" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_480", 1
  %"$iter_483" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_484" = call { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_481"(i8* %"$foldl_envptr_482", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_483"), !dbg !51
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_484", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8, !dbg !51
  %"$foldl_11" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$$foldl_10_485" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$$foldl_10_fptr_486" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_485", 0
  %"$$foldl_10_envptr_487" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_485", 1
  %"$init_488" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_10_call_489" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_10_fptr_486"(i8* %"$$foldl_10_envptr_487", %Uint32 %"$init_488"), !dbg !51
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_10_call_489", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_11", align 8, !dbg !51
  %"$$foldl_11_490" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_11", align 8
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_11_490", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_37", align 8, !dbg !51
  %"$$retval_37_491" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_37", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_37_491"
}

define internal %Uint32 @"$fundef_34"(%"$$fundef_34_env_152"* %0, %TName_List_Int64* %1) !dbg !52 {
entry:
  %"$$fundef_34_env_f_347" = getelementptr inbounds %"$$fundef_34_env_152", %"$$fundef_34_env_152"* %0, i32 0, i32 0
  %"$f_envload_348" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_f_347", align 8
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_348", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_34_env_g_349" = getelementptr inbounds %"$$fundef_34_env_152", %"$$fundef_34_env_152"* %0, i32 0, i32 1
  %"$g_envload_350" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_g_349", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_350", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_34_env_z_351" = getelementptr inbounds %"$$fundef_34_env_152", %"$$fundef_34_env_152"* %0, i32 0, i32 2
  %"$z_envload_352" = load %Uint32, %Uint32* %"$$fundef_34_env_z_351", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_352", %Uint32* %z, align 4
  %"$retval_35" = alloca %Uint32, align 8
  %"$gasrem_353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_354" = icmp ugt i64 2, %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %entry
  %"$consume_357" = sub i64 %"$gasrem_353", 2
  store i64 %"$consume_357", i64* @_gasrem, align 8
  %"$l_tag_359" = getelementptr inbounds %TName_List_Int64, %TName_List_Int64* %1, i32 0, i32 0
  %"$l_tag_360" = load i8, i8* %"$l_tag_359", align 1
  switch i8 %"$l_tag_360", label %"$empty_default_361" [
    i8 0, label %"$Cons_362"
    i8 1, label %"$Nil_405"
  ], !dbg !54

"$Cons_362":                                      ; preds = %"$have_gas_356"
  %"$l_363" = bitcast %TName_List_Int64* %1 to %CName_Cons_Int64*
  %"$h_gep_364" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_363", i32 0, i32 1
  %"$h_load_365" = load %Int64, %Int64* %"$h_gep_364", align 8
  %h = alloca %Int64, align 8
  store %Int64 %"$h_load_365", %Int64* %h, align 8
  %"$t_gep_366" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_363", i32 0, i32 2
  %"$t_load_367" = load %TName_List_Int64*, %TName_List_Int64** %"$t_gep_366", align 8
  %t = alloca %TName_List_Int64*, align 8
  store %TName_List_Int64* %"$t_load_367", %TName_List_Int64** %t, align 8
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 1, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$Cons_362"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$Cons_362"
  %"$consume_372" = sub i64 %"$gasrem_368", 1
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 1, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_371"
  %"$consume_377" = sub i64 %"$gasrem_373", 1
  store i64 %"$consume_377", i64* @_gasrem, align 8
  %"$f_6" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$f_378" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_379" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_378", 0
  %"$f_envptr_380" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_378", 1
  %"$z_381" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_382" = call { %Uint32 (i8*, %Int64)*, i8* } %"$f_fptr_379"(i8* %"$f_envptr_380", %Uint32 %"$z_381"), !dbg !55
  store { %Uint32 (i8*, %Int64)*, i8* } %"$f_call_382", { %Uint32 (i8*, %Int64)*, i8* }* %"$f_6", align 8, !dbg !55
  %"$f_7" = alloca %Uint32, align 8
  %"$$f_6_383" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$f_6", align 8
  %"$$f_6_fptr_384" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_6_383", 0
  %"$$f_6_envptr_385" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_6_383", 1
  %"$h_386" = load %Int64, %Int64* %h, align 8
  %"$$f_6_call_387" = call %Uint32 %"$$f_6_fptr_384"(i8* %"$$f_6_envptr_385", %Int64 %"$h_386"), !dbg !55
  store %Uint32 %"$$f_6_call_387", %Uint32* %"$f_7", align 4, !dbg !55
  %"$$f_7_388" = load %Uint32, %Uint32* %"$f_7", align 4
  store %Uint32 %"$$f_7_388", %Uint32* %res, align 4, !dbg !55
  %"$gasrem_389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_390" = icmp ugt i64 1, %"$gasrem_389"
  br i1 %"$gascmp_390", label %"$out_of_gas_391", label %"$have_gas_392"

"$out_of_gas_391":                                ; preds = %"$have_gas_376"
  call void @_out_of_gas()
  br label %"$have_gas_392"

"$have_gas_392":                                  ; preds = %"$out_of_gas_391", %"$have_gas_376"
  %"$consume_393" = sub i64 %"$gasrem_389", 1
  store i64 %"$consume_393", i64* @_gasrem, align 8
  %"$g_8" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$g_394" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_395" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_394", 0
  %"$g_envptr_396" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_394", 1
  %"$res_397" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_398" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_fptr_395"(i8* %"$g_envptr_396", %Uint32 %"$res_397"), !dbg !58
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_call_398", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_8", align 8, !dbg !58
  %"$g_9" = alloca %Uint32, align 8
  %"$$g_8_399" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_8", align 8
  %"$$g_8_fptr_400" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_8_399", 0
  %"$$g_8_envptr_401" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_8_399", 1
  %"$t_402" = load %TName_List_Int64*, %TName_List_Int64** %t, align 8
  %"$$g_8_call_403" = call %Uint32 %"$$g_8_fptr_400"(i8* %"$$g_8_envptr_401", %TName_List_Int64* %"$t_402"), !dbg !58
  store %Uint32 %"$$g_8_call_403", %Uint32* %"$g_9", align 4, !dbg !58
  %"$$g_9_404" = load %Uint32, %Uint32* %"$g_9", align 4
  store %Uint32 %"$$g_9_404", %Uint32* %"$retval_35", align 4, !dbg !58
  br label %"$matchsucc_358"

"$Nil_405":                                       ; preds = %"$have_gas_356"
  %"$l_406" = bitcast %TName_List_Int64* %1 to %CName_Nil_Int64*
  %"$gasrem_407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_408" = icmp ugt i64 1, %"$gasrem_407"
  br i1 %"$gascmp_408", label %"$out_of_gas_409", label %"$have_gas_410"

"$out_of_gas_409":                                ; preds = %"$Nil_405"
  call void @_out_of_gas()
  br label %"$have_gas_410"

"$have_gas_410":                                  ; preds = %"$out_of_gas_409", %"$Nil_405"
  %"$consume_411" = sub i64 %"$gasrem_407", 1
  store i64 %"$consume_411", i64* @_gasrem, align 8
  %"$z_412" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_412", %Uint32* %"$retval_35", align 4, !dbg !59
  br label %"$matchsucc_358"

"$empty_default_361":                             ; preds = %"$have_gas_356"
  br label %"$matchsucc_358"

"$matchsucc_358":                                 ; preds = %"$have_gas_410", %"$have_gas_392", %"$empty_default_361"
  %"$$retval_35_413" = load %Uint32, %Uint32* %"$retval_35", align 4
  ret %Uint32 %"$$retval_35_413"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_32"(%"$$fundef_32_env_153"* %0, %Uint32 %1) !dbg !61 {
entry:
  %"$$fundef_32_env_f_323" = getelementptr inbounds %"$$fundef_32_env_153", %"$$fundef_32_env_153"* %0, i32 0, i32 0
  %"$f_envload_324" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_32_env_f_323", align 8
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_324", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_32_env_g_325" = getelementptr inbounds %"$$fundef_32_env_153", %"$$fundef_32_env_153"* %0, i32 0, i32 1
  %"$g_envload_326" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_32_env_g_325", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_326", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_33" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_328" = icmp ugt i64 1, %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %entry
  %"$consume_331" = sub i64 %"$gasrem_327", 1
  store i64 %"$consume_331", i64* @_gasrem, align 8
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 1, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$have_gas_330"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$have_gas_330"
  %"$consume_336" = sub i64 %"$gasrem_332", 1
  store i64 %"$consume_336", i64* @_gasrem, align 8
  %"$$fundef_34_envp_337_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_34_envp_337_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_337_load", i64 40)
  %"$$fundef_34_envp_337" = bitcast i8* %"$$fundef_34_envp_337_salloc" to %"$$fundef_34_env_152"*
  %"$$fundef_34_env_voidp_339" = bitcast %"$$fundef_34_env_152"* %"$$fundef_34_envp_337" to i8*
  %"$$fundef_34_cloval_340" = insertvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } { %Uint32 (i8*, %TName_List_Int64*)* bitcast (%Uint32 (%"$$fundef_34_env_152"*, %TName_List_Int64*)* @"$fundef_34" to %Uint32 (i8*, %TName_List_Int64*)*), i8* undef }, i8* %"$$fundef_34_env_voidp_339", 1
  %"$$fundef_34_env_f_341" = getelementptr inbounds %"$$fundef_34_env_152", %"$$fundef_34_env_152"* %"$$fundef_34_envp_337", i32 0, i32 0
  %"$f_342" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_342", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_f_341", align 8
  %"$$fundef_34_env_g_343" = getelementptr inbounds %"$$fundef_34_env_152", %"$$fundef_34_env_152"* %"$$fundef_34_envp_337", i32 0, i32 1
  %"$g_344" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_344", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_g_343", align 8
  %"$$fundef_34_env_z_345" = getelementptr inbounds %"$$fundef_34_env_152", %"$$fundef_34_env_152"* %"$$fundef_34_envp_337", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_34_env_z_345", align 4
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$fundef_34_cloval_340", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_33", align 8, !dbg !62
  %"$$retval_33_346" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_33", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_33_346"
}

define internal { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_30"(%"$$fundef_30_env_154"* %0, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !63 {
entry:
  %"$retval_31" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_310" = icmp ugt i64 1, %"$gasrem_309"
  br i1 %"$gascmp_310", label %"$out_of_gas_311", label %"$have_gas_312"

"$out_of_gas_311":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_312"

"$have_gas_312":                                  ; preds = %"$out_of_gas_311", %entry
  %"$consume_313" = sub i64 %"$gasrem_309", 1
  store i64 %"$consume_313", i64* @_gasrem, align 8
  %"$$fundef_32_envp_314_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_32_envp_314_salloc" = call i8* @_salloc(i8* %"$$fundef_32_envp_314_load", i64 32)
  %"$$fundef_32_envp_314" = bitcast i8* %"$$fundef_32_envp_314_salloc" to %"$$fundef_32_env_153"*
  %"$$fundef_32_env_voidp_316" = bitcast %"$$fundef_32_env_153"* %"$$fundef_32_envp_314" to i8*
  %"$$fundef_32_cloval_317" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_32_env_153"*, %Uint32)* @"$fundef_32" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_32_env_voidp_316", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_32_cloval_317", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !64
  %"$$fundef_32_env_f_318" = getelementptr inbounds %"$$fundef_32_env_153", %"$$fundef_32_env_153"* %"$$fundef_32_envp_314", i32 0, i32 0
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_32_env_f_318", align 8
  %"$$fundef_32_env_g_319" = getelementptr inbounds %"$$fundef_32_env_153", %"$$fundef_32_env_153"* %"$$fundef_32_envp_314", i32 0, i32 1
  %"$g_320" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_320", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_32_env_g_319", align 8
  %"$g_321" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_321", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_31", align 8, !dbg !64
  %"$$retval_31_322" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_31", align 8
  ret { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_31_322"
}

define internal { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_28"(%"$$fundef_28_env_155"* %0) !dbg !65 {
entry:
  %"$retval_29" = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %entry
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_30_env_154"*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_30" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_29", align 8, !dbg !66
  %"$$retval_29_308" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_29", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_29_308"
}

define internal { i8*, i8* }* @"$fundef_26"(%"$$fundef_26_env_156"* %0) !dbg !67 {
entry:
  %"$retval_27" = alloca { i8*, i8* }*, align 8
  %"$gasrem_288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_289" = icmp ugt i64 1, %"$gasrem_288"
  br i1 %"$gascmp_289", label %"$out_of_gas_290", label %"$have_gas_291"

"$out_of_gas_290":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_291"

"$have_gas_291":                                  ; preds = %"$out_of_gas_290", %entry
  %"$consume_292" = sub i64 %"$gasrem_288", 1
  store i64 %"$consume_292", i64* @_gasrem, align 8
  %"$dyndisp_table_296_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_296_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_296_salloc_load", i64 48)
  %"$dyndisp_table_296_salloc" = bitcast i8* %"$dyndisp_table_296_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_296" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_296_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_297" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_296", i32 1
  %"$dyndisp_pcast_298" = bitcast { i8*, i8* }* %"$dyndisp_gep_297" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_28_env_155"*)* @"$fundef_28" to { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_298", align 8
  store { i8*, i8* }* %"$dyndisp_table_296", { i8*, i8* }** %"$retval_27", align 8, !dbg !68
  %"$$retval_27_299" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_27", align 8
  ret { i8*, i8* }* %"$$retval_27_299"
}

define internal %Uint32 @"$fundef_24"(%"$$fundef_24_env_157"* %0, %TName_List_Int32* %1) !dbg !69 {
entry:
  %"$$fundef_24_env_f_221" = getelementptr inbounds %"$$fundef_24_env_157", %"$$fundef_24_env_157"* %0, i32 0, i32 0
  %"$f_envload_222" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_f_221", align 8
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_222", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_24_env_g_223" = getelementptr inbounds %"$$fundef_24_env_157", %"$$fundef_24_env_157"* %0, i32 0, i32 1
  %"$g_envload_224" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_g_223", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_224", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_24_env_z_225" = getelementptr inbounds %"$$fundef_24_env_157", %"$$fundef_24_env_157"* %0, i32 0, i32 2
  %"$z_envload_226" = load %Uint32, %Uint32* %"$$fundef_24_env_z_225", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_226", %Uint32* %z, align 4
  %"$retval_25" = alloca %Uint32, align 8
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 2, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %entry
  %"$consume_231" = sub i64 %"$gasrem_227", 2
  store i64 %"$consume_231", i64* @_gasrem, align 8
  %"$l_tag_233" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %1, i32 0, i32 0
  %"$l_tag_234" = load i8, i8* %"$l_tag_233", align 1
  switch i8 %"$l_tag_234", label %"$empty_default_235" [
    i8 0, label %"$Cons_236"
    i8 1, label %"$Nil_279"
  ], !dbg !70

"$Cons_236":                                      ; preds = %"$have_gas_230"
  %"$l_237" = bitcast %TName_List_Int32* %1 to %CName_Cons_Int32*
  %"$h_gep_238" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_237", i32 0, i32 1
  %"$h_load_239" = load %Int32, %Int32* %"$h_gep_238", align 4
  %h = alloca %Int32, align 8
  store %Int32 %"$h_load_239", %Int32* %h, align 4
  %"$t_gep_240" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_237", i32 0, i32 2
  %"$t_load_241" = load %TName_List_Int32*, %TName_List_Int32** %"$t_gep_240", align 8
  %t = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$t_load_241", %TName_List_Int32** %t, align 8
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$Cons_236"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$Cons_236"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 1, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_245"
  %"$consume_251" = sub i64 %"$gasrem_247", 1
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %"$f_6" = alloca { %Uint32 (i8*, %Int32)*, i8* }, align 8
  %"$f_252" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_253" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_252", 0
  %"$f_envptr_254" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_252", 1
  %"$z_255" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_256" = call { %Uint32 (i8*, %Int32)*, i8* } %"$f_fptr_253"(i8* %"$f_envptr_254", %Uint32 %"$z_255"), !dbg !71
  store { %Uint32 (i8*, %Int32)*, i8* } %"$f_call_256", { %Uint32 (i8*, %Int32)*, i8* }* %"$f_6", align 8, !dbg !71
  %"$f_7" = alloca %Uint32, align 8
  %"$$f_6_257" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$f_6", align 8
  %"$$f_6_fptr_258" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_6_257", 0
  %"$$f_6_envptr_259" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_6_257", 1
  %"$h_260" = load %Int32, %Int32* %h, align 4
  %"$$f_6_call_261" = call %Uint32 %"$$f_6_fptr_258"(i8* %"$$f_6_envptr_259", %Int32 %"$h_260"), !dbg !71
  store %Uint32 %"$$f_6_call_261", %Uint32* %"$f_7", align 4, !dbg !71
  %"$$f_7_262" = load %Uint32, %Uint32* %"$f_7", align 4
  store %Uint32 %"$$f_7_262", %Uint32* %res, align 4, !dbg !71
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 1, %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_250"
  %"$consume_267" = sub i64 %"$gasrem_263", 1
  store i64 %"$consume_267", i64* @_gasrem, align 8
  %"$g_8" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$g_268" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_269" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_268", 0
  %"$g_envptr_270" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_268", 1
  %"$res_271" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_272" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_fptr_269"(i8* %"$g_envptr_270", %Uint32 %"$res_271"), !dbg !74
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_call_272", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_8", align 8, !dbg !74
  %"$g_9" = alloca %Uint32, align 8
  %"$$g_8_273" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_8", align 8
  %"$$g_8_fptr_274" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_8_273", 0
  %"$$g_8_envptr_275" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_8_273", 1
  %"$t_276" = load %TName_List_Int32*, %TName_List_Int32** %t, align 8
  %"$$g_8_call_277" = call %Uint32 %"$$g_8_fptr_274"(i8* %"$$g_8_envptr_275", %TName_List_Int32* %"$t_276"), !dbg !74
  store %Uint32 %"$$g_8_call_277", %Uint32* %"$g_9", align 4, !dbg !74
  %"$$g_9_278" = load %Uint32, %Uint32* %"$g_9", align 4
  store %Uint32 %"$$g_9_278", %Uint32* %"$retval_25", align 4, !dbg !74
  br label %"$matchsucc_232"

"$Nil_279":                                       ; preds = %"$have_gas_230"
  %"$l_280" = bitcast %TName_List_Int32* %1 to %CName_Nil_Int32*
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 1, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %"$Nil_279"
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %"$Nil_279"
  %"$consume_285" = sub i64 %"$gasrem_281", 1
  store i64 %"$consume_285", i64* @_gasrem, align 8
  %"$z_286" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_286", %Uint32* %"$retval_25", align 4, !dbg !75
  br label %"$matchsucc_232"

"$empty_default_235":                             ; preds = %"$have_gas_230"
  br label %"$matchsucc_232"

"$matchsucc_232":                                 ; preds = %"$have_gas_284", %"$have_gas_266", %"$empty_default_235"
  %"$$retval_25_287" = load %Uint32, %Uint32* %"$retval_25", align 4
  ret %Uint32 %"$$retval_25_287"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_22"(%"$$fundef_22_env_158"* %0, %Uint32 %1) !dbg !77 {
entry:
  %"$$fundef_22_env_f_197" = getelementptr inbounds %"$$fundef_22_env_158", %"$$fundef_22_env_158"* %0, i32 0, i32 0
  %"$f_envload_198" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_22_env_f_197", align 8
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_198", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_22_env_g_199" = getelementptr inbounds %"$$fundef_22_env_158", %"$$fundef_22_env_158"* %0, i32 0, i32 1
  %"$g_envload_200" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_22_env_g_199", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_200", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_23" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_202" = icmp ugt i64 1, %"$gasrem_201"
  br i1 %"$gascmp_202", label %"$out_of_gas_203", label %"$have_gas_204"

"$out_of_gas_203":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_204"

"$have_gas_204":                                  ; preds = %"$out_of_gas_203", %entry
  %"$consume_205" = sub i64 %"$gasrem_201", 1
  store i64 %"$consume_205", i64* @_gasrem, align 8
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 1, %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %"$have_gas_204"
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %"$have_gas_204"
  %"$consume_210" = sub i64 %"$gasrem_206", 1
  store i64 %"$consume_210", i64* @_gasrem, align 8
  %"$$fundef_24_envp_211_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_24_envp_211_salloc" = call i8* @_salloc(i8* %"$$fundef_24_envp_211_load", i64 40)
  %"$$fundef_24_envp_211" = bitcast i8* %"$$fundef_24_envp_211_salloc" to %"$$fundef_24_env_157"*
  %"$$fundef_24_env_voidp_213" = bitcast %"$$fundef_24_env_157"* %"$$fundef_24_envp_211" to i8*
  %"$$fundef_24_cloval_214" = insertvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } { %Uint32 (i8*, %TName_List_Int32*)* bitcast (%Uint32 (%"$$fundef_24_env_157"*, %TName_List_Int32*)* @"$fundef_24" to %Uint32 (i8*, %TName_List_Int32*)*), i8* undef }, i8* %"$$fundef_24_env_voidp_213", 1
  %"$$fundef_24_env_f_215" = getelementptr inbounds %"$$fundef_24_env_157", %"$$fundef_24_env_157"* %"$$fundef_24_envp_211", i32 0, i32 0
  %"$f_216" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_216", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_f_215", align 8
  %"$$fundef_24_env_g_217" = getelementptr inbounds %"$$fundef_24_env_157", %"$$fundef_24_env_157"* %"$$fundef_24_envp_211", i32 0, i32 1
  %"$g_218" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_218", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_g_217", align 8
  %"$$fundef_24_env_z_219" = getelementptr inbounds %"$$fundef_24_env_157", %"$$fundef_24_env_157"* %"$$fundef_24_envp_211", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_24_env_z_219", align 4
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$fundef_24_cloval_214", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_23", align 8, !dbg !78
  %"$$retval_23_220" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_23", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_23_220"
}

define internal { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_20"(%"$$fundef_20_env_159"* %0, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !79 {
entry:
  %"$retval_21" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_184" = icmp ugt i64 1, %"$gasrem_183"
  br i1 %"$gascmp_184", label %"$out_of_gas_185", label %"$have_gas_186"

"$out_of_gas_185":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_186"

"$have_gas_186":                                  ; preds = %"$out_of_gas_185", %entry
  %"$consume_187" = sub i64 %"$gasrem_183", 1
  store i64 %"$consume_187", i64* @_gasrem, align 8
  %"$$fundef_22_envp_188_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_22_envp_188_salloc" = call i8* @_salloc(i8* %"$$fundef_22_envp_188_load", i64 32)
  %"$$fundef_22_envp_188" = bitcast i8* %"$$fundef_22_envp_188_salloc" to %"$$fundef_22_env_158"*
  %"$$fundef_22_env_voidp_190" = bitcast %"$$fundef_22_env_158"* %"$$fundef_22_envp_188" to i8*
  %"$$fundef_22_cloval_191" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_22_env_158"*, %Uint32)* @"$fundef_22" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_22_env_voidp_190", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_22_cloval_191", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !80
  %"$$fundef_22_env_f_192" = getelementptr inbounds %"$$fundef_22_env_158", %"$$fundef_22_env_158"* %"$$fundef_22_envp_188", i32 0, i32 0
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_22_env_f_192", align 8
  %"$$fundef_22_env_g_193" = getelementptr inbounds %"$$fundef_22_env_158", %"$$fundef_22_env_158"* %"$$fundef_22_envp_188", i32 0, i32 1
  %"$g_194" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_194", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_22_env_g_193", align 8
  %"$g_195" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_195", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_21", align 8, !dbg !80
  %"$$retval_21_196" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_21", align 8
  ret { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_21_196"
}

define internal { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_18"(%"$$fundef_18_env_160"* %0) !dbg !81 {
entry:
  %"$retval_19" = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %entry
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_20_env_159"*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_20" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_19", align 8, !dbg !82
  %"$$retval_19_182" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_19", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_19_182"
}

define internal { i8*, i8* }* @"$fundef_16"(%"$$fundef_16_env_161"* %0) !dbg !83 {
entry:
  %"$retval_17" = alloca { i8*, i8* }*, align 8
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %entry
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %"$dyndisp_table_170_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_170_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_170_salloc_load", i64 48)
  %"$dyndisp_table_170_salloc" = bitcast i8* %"$dyndisp_table_170_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_170" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_170_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_171" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_170", i32 1
  %"$dyndisp_pcast_172" = bitcast { i8*, i8* }* %"$dyndisp_gep_171" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_18_env_160"*)* @"$fundef_18" to { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_172", align 8
  store { i8*, i8* }* %"$dyndisp_table_170", { i8*, i8* }** %"$retval_17", align 8, !dbg !84
  %"$$retval_17_173" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_17", align 8
  ret { i8*, i8* }* %"$$retval_17_173"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() !dbg !85 {
entry:
  %"$gasrem_794" = load i64, i64* @_gasrem, align 8
  %"$gascmp_795" = icmp ugt i64 5, %"$gasrem_794"
  br i1 %"$gascmp_795", label %"$out_of_gas_796", label %"$have_gas_797"

"$out_of_gas_796":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_797"

"$have_gas_797":                                  ; preds = %"$out_of_gas_796", %entry
  %"$consume_798" = sub i64 %"$gasrem_794", 5
  store i64 %"$consume_798", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !87
  %"$gasrem_799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_800" = icmp ugt i64 8, %"$gasrem_799"
  br i1 %"$gascmp_800", label %"$out_of_gas_801", label %"$have_gas_802"

"$out_of_gas_801":                                ; preds = %"$have_gas_797"
  call void @_out_of_gas()
  br label %"$have_gas_802"

"$have_gas_802":                                  ; preds = %"$out_of_gas_801", %"$have_gas_797"
  %"$consume_803" = sub i64 %"$gasrem_799", 8
  store i64 %"$consume_803", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !87
  %"$gasrem_804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_805" = icmp ugt i64 196, %"$gasrem_804"
  br i1 %"$gascmp_805", label %"$out_of_gas_806", label %"$have_gas_807"

"$out_of_gas_806":                                ; preds = %"$have_gas_802"
  call void @_out_of_gas()
  br label %"$have_gas_807"

"$have_gas_807":                                  ; preds = %"$out_of_gas_806", %"$have_gas_802"
  %"$consume_808" = sub i64 %"$gasrem_804", 196
  store i64 %"$consume_808", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !87
  %"$gasrem_809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_810" = icmp ugt i64 19, %"$gasrem_809"
  br i1 %"$gascmp_810", label %"$out_of_gas_811", label %"$have_gas_812"

"$out_of_gas_811":                                ; preds = %"$have_gas_807"
  call void @_out_of_gas()
  br label %"$have_gas_812"

"$have_gas_812":                                  ; preds = %"$out_of_gas_811", %"$have_gas_807"
  %"$consume_813" = sub i64 %"$gasrem_809", 19
  store i64 %"$consume_813", i64* @_gasrem, align 8
  store %Int32 { i32 19 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !87
  %"$gasrem_814" = load i64, i64* @_gasrem, align 8
  %"$gascmp_815" = icmp ugt i64 1, %"$gasrem_814"
  br i1 %"$gascmp_815", label %"$out_of_gas_816", label %"$have_gas_817"

"$out_of_gas_816":                                ; preds = %"$have_gas_812"
  call void @_out_of_gas()
  br label %"$have_gas_817"

"$have_gas_817":                                  ; preds = %"$out_of_gas_816", %"$have_gas_812"
  %"$consume_818" = sub i64 %"$gasrem_814", 1
  store i64 %"$consume_818", i64* @_gasrem, align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  %"$dyndisp_table_825_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_825_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_825_salloc_load", i64 48)
  %"$dyndisp_table_825_salloc" = bitcast i8* %"$dyndisp_table_825_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_825" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_825_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_826" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_825", i32 0
  %"$dyndisp_pcast_827" = bitcast { i8*, i8* }* %"$dyndisp_gep_826" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_16_env_161"*)* @"$fundef_16" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_827", align 8
  %"$dyndisp_gep_828" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_825", i32 2
  %"$dyndisp_pcast_829" = bitcast { i8*, i8* }* %"$dyndisp_gep_828" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_26_env_156"*)* @"$fundef_26" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_829", align 8
  store { i8*, i8* }* %"$dyndisp_table_825", { i8*, i8* }** %list_foldl, align 8, !dbg !88
  %"$$fundef_36_envp_830_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_36_envp_830_salloc" = call i8* @_salloc(i8* %"$$fundef_36_envp_830_load", i64 8)
  %"$$fundef_36_envp_830" = bitcast i8* %"$$fundef_36_envp_830_salloc" to %"$$fundef_36_env_151"*
  %"$$fundef_36_env_voidp_832" = bitcast %"$$fundef_36_env_151"* %"$$fundef_36_envp_830" to i8*
  %"$$fundef_36_cloval_833" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_36_env_151"*)* @"$fundef_36" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_36_env_voidp_832", 1
  %"$$fundef_36_env_list_foldl_834" = getelementptr inbounds %"$$fundef_36_env_151", %"$$fundef_36_env_151"* %"$$fundef_36_envp_830", i32 0, i32 0
  %"$list_foldl_835" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  store { i8*, i8* }* %"$list_foldl_835", { i8*, i8* }** %"$$fundef_36_env_list_foldl_834", align 8
  %"$$fundef_42_env_voidp_837" = bitcast %"$$fundef_36_env_151"* %"$$fundef_36_envp_830" to i8*
  %"$$fundef_42_cloval_838" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_42_env_148"*)* @"$fundef_42" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_42_env_voidp_837", 1
  %"$dyndisp_table_839_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_839_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_839_salloc_load", i64 48)
  %"$dyndisp_table_839_salloc" = bitcast i8* %"$dyndisp_table_839_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_839" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_839_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_840" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_839", i32 0
  %"$dyndisp_pcast_841" = bitcast { i8*, i8* }* %"$dyndisp_gep_840" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$$fundef_36_cloval_833", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_841", align 8
  %"$dyndisp_gep_842" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_839", i32 2
  %"$dyndisp_pcast_843" = bitcast { i8*, i8* }* %"$dyndisp_gep_842" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$$fundef_42_cloval_838", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_843", align 8
  store { i8*, i8* }* %"$dyndisp_table_839", { i8*, i8* }** @ListUtils.list_length, align 8, !dbg !89
  %"$gasrem_844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_845" = icmp ugt i64 12, %"$gasrem_844"
  br i1 %"$gascmp_845", label %"$out_of_gas_846", label %"$have_gas_847"

"$out_of_gas_846":                                ; preds = %"$have_gas_817"
  call void @_out_of_gas()
  br label %"$have_gas_847"

"$have_gas_847":                                  ; preds = %"$out_of_gas_846", %"$have_gas_817"
  %"$consume_848" = sub i64 %"$gasrem_844", 12
  store i64 %"$consume_848", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !87
  %"$gasrem_849" = load i64, i64* @_gasrem, align 8
  %"$gascmp_850" = icmp ugt i64 2, %"$gasrem_849"
  br i1 %"$gascmp_850", label %"$out_of_gas_851", label %"$have_gas_852"

"$out_of_gas_851":                                ; preds = %"$have_gas_847"
  call void @_out_of_gas()
  br label %"$have_gas_852"

"$have_gas_852":                                  ; preds = %"$out_of_gas_851", %"$have_gas_847"
  %"$consume_853" = sub i64 %"$gasrem_849", 2
  store i64 %"$consume_853", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !87
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !90 {
entry:
  %"$expr_48" = alloca %Uint32, align 8
  %"$gasrem_854" = load i64, i64* @_gasrem, align 8
  %"$gascmp_855" = icmp ugt i64 1, %"$gasrem_854"
  br i1 %"$gascmp_855", label %"$out_of_gas_856", label %"$have_gas_857"

"$out_of_gas_856":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_857"

"$have_gas_857":                                  ; preds = %"$out_of_gas_856", %entry
  %"$consume_858" = sub i64 %"$gasrem_854", 1
  store i64 %"$consume_858", i64* @_gasrem, align 8
  %t1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_859" = load i64, i64* @_gasrem, align 8
  %"$gascmp_860" = icmp ugt i64 1, %"$gasrem_859"
  br i1 %"$gascmp_860", label %"$out_of_gas_861", label %"$have_gas_862"

"$out_of_gas_861":                                ; preds = %"$have_gas_857"
  call void @_out_of_gas()
  br label %"$have_gas_862"

"$have_gas_862":                                  ; preds = %"$out_of_gas_861", %"$have_gas_857"
  %"$consume_863" = sub i64 %"$gasrem_859", 1
  store i64 %"$consume_863", i64* @_gasrem, align 8
  %"$dyndisp_table_870_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_870_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_870_salloc_load", i64 48)
  %"$dyndisp_table_870_salloc" = bitcast i8* %"$dyndisp_table_870_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_870" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_870_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_871" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_870", i32 0
  %"$dyndisp_pcast_872" = bitcast { i8*, i8* }* %"$dyndisp_gep_871" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_49_env_145"*)* @"$fundef_49" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_872", align 8
  %"$dyndisp_gep_873" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_870", i32 2
  %"$dyndisp_pcast_874" = bitcast { i8*, i8* }* %"$dyndisp_gep_873" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_53_env_143"*)* @"$fundef_53" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_874", align 8
  store { i8*, i8* }* %"$dyndisp_table_870", { i8*, i8* }** %t1, align 8, !dbg !91
  %"$gasrem_875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_876" = icmp ugt i64 1, %"$gasrem_875"
  br i1 %"$gascmp_876", label %"$out_of_gas_877", label %"$have_gas_878"

"$out_of_gas_877":                                ; preds = %"$have_gas_862"
  call void @_out_of_gas()
  br label %"$have_gas_878"

"$have_gas_878":                                  ; preds = %"$out_of_gas_877", %"$have_gas_862"
  %"$consume_879" = sub i64 %"$gasrem_875", 1
  store i64 %"$consume_879", i64* @_gasrem, align 8
  %t2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_880" = load i64, i64* @_gasrem, align 8
  %"$gascmp_881" = icmp ugt i64 1, %"$gasrem_880"
  br i1 %"$gascmp_881", label %"$out_of_gas_882", label %"$have_gas_883"

"$out_of_gas_882":                                ; preds = %"$have_gas_878"
  call void @_out_of_gas()
  br label %"$have_gas_883"

"$have_gas_883":                                  ; preds = %"$out_of_gas_882", %"$have_gas_878"
  %"$consume_884" = sub i64 %"$gasrem_880", 1
  store i64 %"$consume_884", i64* @_gasrem, align 8
  %"$dyndisp_table_891_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_891_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_891_salloc_load", i64 48)
  %"$dyndisp_table_891_salloc" = bitcast i8* %"$dyndisp_table_891_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_891" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_891_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_892" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_891", i32 0
  %"$dyndisp_pcast_893" = bitcast { i8*, i8* }* %"$dyndisp_gep_892" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_57_env_141"*)* @"$fundef_57" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_893", align 8
  %"$dyndisp_gep_894" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_891", i32 2
  %"$dyndisp_pcast_895" = bitcast { i8*, i8* }* %"$dyndisp_gep_894" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_61_env_139"*)* @"$fundef_61" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_895", align 8
  store { i8*, i8* }* %"$dyndisp_table_891", { i8*, i8* }** %t2, align 8, !dbg !92
  %"$gasrem_896" = load i64, i64* @_gasrem, align 8
  %"$gascmp_897" = icmp ugt i64 1, %"$gasrem_896"
  br i1 %"$gascmp_897", label %"$out_of_gas_898", label %"$have_gas_899"

"$out_of_gas_898":                                ; preds = %"$have_gas_883"
  call void @_out_of_gas()
  br label %"$have_gas_899"

"$have_gas_899":                                  ; preds = %"$out_of_gas_898", %"$have_gas_883"
  %"$consume_900" = sub i64 %"$gasrem_896", 1
  store i64 %"$consume_900", i64* @_gasrem, align 8
  %some_bool = alloca %TName_Bool*, align 8
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
  %"$adtval_906" = bitcast i8* %"$adtval_906_salloc" to %CName_True*
  %"$adtgep_907" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_906", i32 0, i32 0
  store i8 0, i8* %"$adtgep_907", align 1
  %"$adtptr_908" = bitcast %CName_True* %"$adtval_906" to %TName_Bool*
  store %TName_Bool* %"$adtptr_908", %TName_Bool** %some_bool, align 8, !dbg !93
  %"$gasrem_909" = load i64, i64* @_gasrem, align 8
  %"$gascmp_910" = icmp ugt i64 1, %"$gasrem_909"
  br i1 %"$gascmp_910", label %"$out_of_gas_911", label %"$have_gas_912"

"$out_of_gas_911":                                ; preds = %"$have_gas_904"
  call void @_out_of_gas()
  br label %"$have_gas_912"

"$have_gas_912":                                  ; preds = %"$out_of_gas_911", %"$have_gas_904"
  %"$consume_913" = sub i64 %"$gasrem_909", 1
  store i64 %"$consume_913", i64* @_gasrem, align 8
  %f = alloca { i8*, i8* }*, align 8
  %"$gasrem_914" = load i64, i64* @_gasrem, align 8
  %"$gascmp_915" = icmp ugt i64 2, %"$gasrem_914"
  br i1 %"$gascmp_915", label %"$out_of_gas_916", label %"$have_gas_917"

"$out_of_gas_916":                                ; preds = %"$have_gas_912"
  call void @_out_of_gas()
  br label %"$have_gas_917"

"$have_gas_917":                                  ; preds = %"$out_of_gas_916", %"$have_gas_912"
  %"$consume_918" = sub i64 %"$gasrem_914", 2
  store i64 %"$consume_918", i64* @_gasrem, align 8
  %"$some_bool_920" = load %TName_Bool*, %TName_Bool** %some_bool, align 8
  %"$some_bool_tag_921" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool_920", i32 0, i32 0
  %"$some_bool_tag_922" = load i8, i8* %"$some_bool_tag_921", align 1
  switch i8 %"$some_bool_tag_922", label %"$empty_default_923" [
    i8 0, label %"$True_924"
    i8 1, label %"$False_932"
  ], !dbg !94

"$True_924":                                      ; preds = %"$have_gas_917"
  %"$some_bool_925" = bitcast %TName_Bool* %"$some_bool_920" to %CName_True*
  %"$gasrem_926" = load i64, i64* @_gasrem, align 8
  %"$gascmp_927" = icmp ugt i64 1, %"$gasrem_926"
  br i1 %"$gascmp_927", label %"$out_of_gas_928", label %"$have_gas_929"

"$out_of_gas_928":                                ; preds = %"$True_924"
  call void @_out_of_gas()
  br label %"$have_gas_929"

"$have_gas_929":                                  ; preds = %"$out_of_gas_928", %"$True_924"
  %"$consume_930" = sub i64 %"$gasrem_926", 1
  store i64 %"$consume_930", i64* @_gasrem, align 8
  %"$t2_931" = load { i8*, i8* }*, { i8*, i8* }** %t2, align 8
  store { i8*, i8* }* %"$t2_931", { i8*, i8* }** %f, align 8, !dbg !95
  br label %"$matchsucc_919"

"$False_932":                                     ; preds = %"$have_gas_917"
  %"$some_bool_933" = bitcast %TName_Bool* %"$some_bool_920" to %CName_False*
  %"$gasrem_934" = load i64, i64* @_gasrem, align 8
  %"$gascmp_935" = icmp ugt i64 1, %"$gasrem_934"
  br i1 %"$gascmp_935", label %"$out_of_gas_936", label %"$have_gas_937"

"$out_of_gas_936":                                ; preds = %"$False_932"
  call void @_out_of_gas()
  br label %"$have_gas_937"

"$have_gas_937":                                  ; preds = %"$out_of_gas_936", %"$False_932"
  %"$consume_938" = sub i64 %"$gasrem_934", 1
  store i64 %"$consume_938", i64* @_gasrem, align 8
  %"$t1_939" = load { i8*, i8* }*, { i8*, i8* }** %t1, align 8
  store { i8*, i8* }* %"$t1_939", { i8*, i8* }** %f, align 8, !dbg !98
  br label %"$matchsucc_919"

"$empty_default_923":                             ; preds = %"$have_gas_917"
  br label %"$matchsucc_919"

"$matchsucc_919":                                 ; preds = %"$have_gas_937", %"$have_gas_929", %"$empty_default_923"
  %"$gasrem_940" = load i64, i64* @_gasrem, align 8
  %"$gascmp_941" = icmp ugt i64 1, %"$gasrem_940"
  br i1 %"$gascmp_941", label %"$out_of_gas_942", label %"$have_gas_943"

"$out_of_gas_942":                                ; preds = %"$matchsucc_919"
  call void @_out_of_gas()
  br label %"$have_gas_943"

"$have_gas_943":                                  ; preds = %"$out_of_gas_942", %"$matchsucc_919"
  %"$consume_944" = sub i64 %"$gasrem_940", 1
  store i64 %"$consume_944", i64* @_gasrem, align 8
  %some_bool2 = alloca %TName_Bool*, align 8
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
  store %TName_Bool* %"$adtptr_952", %TName_Bool** %some_bool2, align 8, !dbg !100
  %"$gasrem_953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_954" = icmp ugt i64 2, %"$gasrem_953"
  br i1 %"$gascmp_954", label %"$out_of_gas_955", label %"$have_gas_956"

"$out_of_gas_955":                                ; preds = %"$have_gas_948"
  call void @_out_of_gas()
  br label %"$have_gas_956"

"$have_gas_956":                                  ; preds = %"$out_of_gas_955", %"$have_gas_948"
  %"$consume_957" = sub i64 %"$gasrem_953", 2
  store i64 %"$consume_957", i64* @_gasrem, align 8
  %"$some_bool2_959" = load %TName_Bool*, %TName_Bool** %some_bool2, align 8
  %"$some_bool2_tag_960" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool2_959", i32 0, i32 0
  %"$some_bool2_tag_961" = load i8, i8* %"$some_bool2_tag_960", align 1
  switch i8 %"$some_bool2_tag_961", label %"$empty_default_962" [
    i8 0, label %"$True_963"
    i8 1, label %"$False_1036"
  ], !dbg !101

"$True_963":                                      ; preds = %"$have_gas_956"
  %"$some_bool2_964" = bitcast %TName_Bool* %"$some_bool2_959" to %CName_True*
  %"$gasrem_965" = load i64, i64* @_gasrem, align 8
  %"$gascmp_966" = icmp ugt i64 1, %"$gasrem_965"
  br i1 %"$gascmp_966", label %"$out_of_gas_967", label %"$have_gas_968"

"$out_of_gas_967":                                ; preds = %"$True_963"
  call void @_out_of_gas()
  br label %"$have_gas_968"

"$have_gas_968":                                  ; preds = %"$out_of_gas_967", %"$True_963"
  %"$consume_969" = sub i64 %"$gasrem_965", 1
  store i64 %"$consume_969", i64* @_gasrem, align 8
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_970" = load i64, i64* @_gasrem, align 8
  %"$gascmp_971" = icmp ugt i64 1, %"$gasrem_970"
  br i1 %"$gascmp_971", label %"$out_of_gas_972", label %"$have_gas_973"

"$out_of_gas_972":                                ; preds = %"$have_gas_968"
  call void @_out_of_gas()
  br label %"$have_gas_973"

"$have_gas_973":                                  ; preds = %"$out_of_gas_972", %"$have_gas_968"
  %"$consume_974" = sub i64 %"$gasrem_970", 1
  store i64 %"$consume_974", i64* @_gasrem, align 8
  %"$f_975" = load { i8*, i8* }*, { i8*, i8* }** %f, align 8
  %"$f_976" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_975", i32 0
  %"$f_977" = bitcast { i8*, i8* }* %"$f_976" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_978" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_977", align 8
  %"$f_fptr_979" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_978", 0
  %"$f_envptr_980" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_978", 1
  %"$f_call_981" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_979"(i8* %"$f_envptr_980"), !dbg !102
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_981", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8, !dbg !105
  %"$gasrem_982" = load i64, i64* @_gasrem, align 8
  %"$gascmp_983" = icmp ugt i64 1, %"$gasrem_982"
  br i1 %"$gascmp_983", label %"$out_of_gas_984", label %"$have_gas_985"

"$out_of_gas_984":                                ; preds = %"$have_gas_973"
  call void @_out_of_gas()
  br label %"$have_gas_985"

"$have_gas_985":                                  ; preds = %"$out_of_gas_984", %"$have_gas_973"
  %"$consume_986" = sub i64 %"$gasrem_982", 1
  store i64 %"$consume_986", i64* @_gasrem, align 8
  %len = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_987" = load i64, i64* @_gasrem, align 8
  %"$gascmp_988" = icmp ugt i64 1, %"$gasrem_987"
  br i1 %"$gascmp_988", label %"$out_of_gas_989", label %"$have_gas_990"

"$out_of_gas_989":                                ; preds = %"$have_gas_985"
  call void @_out_of_gas()
  br label %"$have_gas_990"

"$have_gas_990":                                  ; preds = %"$out_of_gas_989", %"$have_gas_985"
  %"$consume_991" = sub i64 %"$gasrem_987", 1
  store i64 %"$consume_991", i64* @_gasrem, align 8
  %"$ListUtils.list_length_992" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_993" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_992", i32 0
  %"$ListUtils.list_length_994" = bitcast { i8*, i8* }* %"$ListUtils.list_length_993" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_995" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_994", align 8
  %"$ListUtils.list_length_fptr_996" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_995", 0
  %"$ListUtils.list_length_envptr_997" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_995", 1
  %"$ListUtils.list_length_call_998" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_fptr_996"(i8* %"$ListUtils.list_length_envptr_997"), !dbg !106
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_call_998", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8, !dbg !107
  %"$gasrem_999" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1000" = icmp ugt i64 1, %"$gasrem_999"
  br i1 %"$gascmp_1000", label %"$out_of_gas_1001", label %"$have_gas_1002"

"$out_of_gas_1001":                               ; preds = %"$have_gas_990"
  call void @_out_of_gas()
  br label %"$have_gas_1002"

"$have_gas_1002":                                 ; preds = %"$out_of_gas_1001", %"$have_gas_990"
  %"$consume_1003" = sub i64 %"$gasrem_999", 1
  store i64 %"$consume_1003", i64* @_gasrem, align 8
  %one = alloca %Int32, align 8
  %"$gasrem_1004" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1005" = icmp ugt i64 1, %"$gasrem_1004"
  br i1 %"$gascmp_1005", label %"$out_of_gas_1006", label %"$have_gas_1007"

"$out_of_gas_1006":                               ; preds = %"$have_gas_1002"
  call void @_out_of_gas()
  br label %"$have_gas_1007"

"$have_gas_1007":                                 ; preds = %"$out_of_gas_1006", %"$have_gas_1002"
  %"$consume_1008" = sub i64 %"$gasrem_1004", 1
  store i64 %"$consume_1008", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %one, align 4, !dbg !108
  %"$gasrem_1009" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1010" = icmp ugt i64 1, %"$gasrem_1009"
  br i1 %"$gascmp_1010", label %"$out_of_gas_1011", label %"$have_gas_1012"

"$out_of_gas_1011":                               ; preds = %"$have_gas_1007"
  call void @_out_of_gas()
  br label %"$have_gas_1012"

"$have_gas_1012":                                 ; preds = %"$out_of_gas_1011", %"$have_gas_1007"
  %"$consume_1013" = sub i64 %"$gasrem_1009", 1
  store i64 %"$consume_1013", i64* @_gasrem, align 8
  %f1l = alloca %TName_List_Int32*, align 8
  %"$gasrem_1014" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1015" = icmp ugt i64 1, %"$gasrem_1014"
  br i1 %"$gascmp_1015", label %"$out_of_gas_1016", label %"$have_gas_1017"

"$out_of_gas_1016":                               ; preds = %"$have_gas_1012"
  call void @_out_of_gas()
  br label %"$have_gas_1017"

"$have_gas_1017":                                 ; preds = %"$out_of_gas_1016", %"$have_gas_1012"
  %"$consume_1018" = sub i64 %"$gasrem_1014", 1
  store i64 %"$consume_1018", i64* @_gasrem, align 8
  %"$f1_12" = alloca %TName_List_Int32*, align 8
  %"$f1_1019" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8
  %"$f1_fptr_1020" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_1019", 0
  %"$f1_envptr_1021" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_1019", 1
  %"$one_1022" = load %Int32, %Int32* %one, align 4
  %"$f1_call_1023" = call %TName_List_Int32* %"$f1_fptr_1020"(i8* %"$f1_envptr_1021", %Int32 %"$one_1022"), !dbg !109
  store %TName_List_Int32* %"$f1_call_1023", %TName_List_Int32** %"$f1_12", align 8, !dbg !109
  %"$$f1_12_1024" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_12", align 8
  store %TName_List_Int32* %"$$f1_12_1024", %TName_List_Int32** %f1l, align 8, !dbg !109
  %"$gasrem_1025" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1026" = icmp ugt i64 1, %"$gasrem_1025"
  br i1 %"$gascmp_1026", label %"$out_of_gas_1027", label %"$have_gas_1028"

"$out_of_gas_1027":                               ; preds = %"$have_gas_1017"
  call void @_out_of_gas()
  br label %"$have_gas_1028"

"$have_gas_1028":                                 ; preds = %"$out_of_gas_1027", %"$have_gas_1017"
  %"$consume_1029" = sub i64 %"$gasrem_1025", 1
  store i64 %"$consume_1029", i64* @_gasrem, align 8
  %"$len_13" = alloca %Uint32, align 8
  %"$len_1030" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8
  %"$len_fptr_1031" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_1030", 0
  %"$len_envptr_1032" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_1030", 1
  %"$f1l_1033" = load %TName_List_Int32*, %TName_List_Int32** %f1l, align 8
  %"$len_call_1034" = call %Uint32 %"$len_fptr_1031"(i8* %"$len_envptr_1032", %TName_List_Int32* %"$f1l_1033"), !dbg !110
  store %Uint32 %"$len_call_1034", %Uint32* %"$len_13", align 4, !dbg !110
  %"$$len_13_1035" = load %Uint32, %Uint32* %"$len_13", align 4
  store %Uint32 %"$$len_13_1035", %Uint32* %"$expr_48", align 4, !dbg !110
  br label %"$matchsucc_958"

"$False_1036":                                    ; preds = %"$have_gas_956"
  %"$some_bool2_1037" = bitcast %TName_Bool* %"$some_bool2_959" to %CName_False*
  %"$gasrem_1038" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1039" = icmp ugt i64 1, %"$gasrem_1038"
  br i1 %"$gascmp_1039", label %"$out_of_gas_1040", label %"$have_gas_1041"

"$out_of_gas_1040":                               ; preds = %"$False_1036"
  call void @_out_of_gas()
  br label %"$have_gas_1041"

"$have_gas_1041":                                 ; preds = %"$out_of_gas_1040", %"$False_1036"
  %"$consume_1042" = sub i64 %"$gasrem_1038", 1
  store i64 %"$consume_1042", i64* @_gasrem, align 8
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_1043" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1044" = icmp ugt i64 1, %"$gasrem_1043"
  br i1 %"$gascmp_1044", label %"$out_of_gas_1045", label %"$have_gas_1046"

"$out_of_gas_1045":                               ; preds = %"$have_gas_1041"
  call void @_out_of_gas()
  br label %"$have_gas_1046"

"$have_gas_1046":                                 ; preds = %"$out_of_gas_1045", %"$have_gas_1041"
  %"$consume_1047" = sub i64 %"$gasrem_1043", 1
  store i64 %"$consume_1047", i64* @_gasrem, align 8
  %"$f_1048" = load { i8*, i8* }*, { i8*, i8* }** %f, align 8
  %"$f_1049" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_1048", i32 2
  %"$f_1050" = bitcast { i8*, i8* }* %"$f_1049" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_1051" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_1050", align 8
  %"$f_fptr_1052" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_1051", 0
  %"$f_envptr_1053" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_1051", 1
  %"$f_call_1054" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_1052"(i8* %"$f_envptr_1053"), !dbg !111
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_1054", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8, !dbg !113
  %"$gasrem_1055" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1056" = icmp ugt i64 1, %"$gasrem_1055"
  br i1 %"$gascmp_1056", label %"$out_of_gas_1057", label %"$have_gas_1058"

"$out_of_gas_1057":                               ; preds = %"$have_gas_1046"
  call void @_out_of_gas()
  br label %"$have_gas_1058"

"$have_gas_1058":                                 ; preds = %"$out_of_gas_1057", %"$have_gas_1046"
  %"$consume_1059" = sub i64 %"$gasrem_1055", 1
  store i64 %"$consume_1059", i64* @_gasrem, align 8
  %len1 = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_1060" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1061" = icmp ugt i64 1, %"$gasrem_1060"
  br i1 %"$gascmp_1061", label %"$out_of_gas_1062", label %"$have_gas_1063"

"$out_of_gas_1062":                               ; preds = %"$have_gas_1058"
  call void @_out_of_gas()
  br label %"$have_gas_1063"

"$have_gas_1063":                                 ; preds = %"$out_of_gas_1062", %"$have_gas_1058"
  %"$consume_1064" = sub i64 %"$gasrem_1060", 1
  store i64 %"$consume_1064", i64* @_gasrem, align 8
  %"$ListUtils.list_length_1065" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_1066" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_1065", i32 2
  %"$ListUtils.list_length_1067" = bitcast { i8*, i8* }* %"$ListUtils.list_length_1066" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1068" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_1067", align 8
  %"$ListUtils.list_length_fptr_1069" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1068", 0
  %"$ListUtils.list_length_envptr_1070" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1068", 1
  %"$ListUtils.list_length_call_1071" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_fptr_1069"(i8* %"$ListUtils.list_length_envptr_1070"), !dbg !114
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_call_1071", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8, !dbg !115
  %"$gasrem_1072" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1073" = icmp ugt i64 1, %"$gasrem_1072"
  br i1 %"$gascmp_1073", label %"$out_of_gas_1074", label %"$have_gas_1075"

"$out_of_gas_1074":                               ; preds = %"$have_gas_1063"
  call void @_out_of_gas()
  br label %"$have_gas_1075"

"$have_gas_1075":                                 ; preds = %"$out_of_gas_1074", %"$have_gas_1063"
  %"$consume_1076" = sub i64 %"$gasrem_1072", 1
  store i64 %"$consume_1076", i64* @_gasrem, align 8
  %one2 = alloca %Int64, align 8
  %"$gasrem_1077" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1078" = icmp ugt i64 1, %"$gasrem_1077"
  br i1 %"$gascmp_1078", label %"$out_of_gas_1079", label %"$have_gas_1080"

"$out_of_gas_1079":                               ; preds = %"$have_gas_1075"
  call void @_out_of_gas()
  br label %"$have_gas_1080"

"$have_gas_1080":                                 ; preds = %"$out_of_gas_1079", %"$have_gas_1075"
  %"$consume_1081" = sub i64 %"$gasrem_1077", 1
  store i64 %"$consume_1081", i64* @_gasrem, align 8
  store %Int64 { i64 1 }, %Int64* %one2, align 8, !dbg !116
  %"$gasrem_1082" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1083" = icmp ugt i64 1, %"$gasrem_1082"
  br i1 %"$gascmp_1083", label %"$out_of_gas_1084", label %"$have_gas_1085"

"$out_of_gas_1084":                               ; preds = %"$have_gas_1080"
  call void @_out_of_gas()
  br label %"$have_gas_1085"

"$have_gas_1085":                                 ; preds = %"$out_of_gas_1084", %"$have_gas_1080"
  %"$consume_1086" = sub i64 %"$gasrem_1082", 1
  store i64 %"$consume_1086", i64* @_gasrem, align 8
  %f2l = alloca %TName_List_Int64*, align 8
  %"$gasrem_1087" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1088" = icmp ugt i64 1, %"$gasrem_1087"
  br i1 %"$gascmp_1088", label %"$out_of_gas_1089", label %"$have_gas_1090"

"$out_of_gas_1089":                               ; preds = %"$have_gas_1085"
  call void @_out_of_gas()
  br label %"$have_gas_1090"

"$have_gas_1090":                                 ; preds = %"$out_of_gas_1089", %"$have_gas_1085"
  %"$consume_1091" = sub i64 %"$gasrem_1087", 1
  store i64 %"$consume_1091", i64* @_gasrem, align 8
  %"$f2_14" = alloca %TName_List_Int64*, align 8
  %"$f2_1092" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8
  %"$f2_fptr_1093" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1092", 0
  %"$f2_envptr_1094" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1092", 1
  %"$one_1095" = load %Int64, %Int64* %one2, align 8
  %"$f2_call_1096" = call %TName_List_Int64* %"$f2_fptr_1093"(i8* %"$f2_envptr_1094", %Int64 %"$one_1095"), !dbg !117
  store %TName_List_Int64* %"$f2_call_1096", %TName_List_Int64** %"$f2_14", align 8, !dbg !117
  %"$$f2_14_1097" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_14", align 8
  store %TName_List_Int64* %"$$f2_14_1097", %TName_List_Int64** %f2l, align 8, !dbg !117
  %"$gasrem_1098" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1099" = icmp ugt i64 1, %"$gasrem_1098"
  br i1 %"$gascmp_1099", label %"$out_of_gas_1100", label %"$have_gas_1101"

"$out_of_gas_1100":                               ; preds = %"$have_gas_1090"
  call void @_out_of_gas()
  br label %"$have_gas_1101"

"$have_gas_1101":                                 ; preds = %"$out_of_gas_1100", %"$have_gas_1090"
  %"$consume_1102" = sub i64 %"$gasrem_1098", 1
  store i64 %"$consume_1102", i64* @_gasrem, align 8
  %"$len_15" = alloca %Uint32, align 8
  %"$len_1103" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8
  %"$len_fptr_1104" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1103", 0
  %"$len_envptr_1105" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1103", 1
  %"$f2l_1106" = load %TName_List_Int64*, %TName_List_Int64** %f2l, align 8
  %"$len_call_1107" = call %Uint32 %"$len_fptr_1104"(i8* %"$len_envptr_1105", %TName_List_Int64* %"$f2l_1106"), !dbg !118
  store %Uint32 %"$len_call_1107", %Uint32* %"$len_15", align 4, !dbg !118
  %"$$len_15_1108" = load %Uint32, %Uint32* %"$len_15", align 4
  store %Uint32 %"$$len_15_1108", %Uint32* %"$expr_48", align 4, !dbg !118
  br label %"$matchsucc_958"

"$empty_default_962":                             ; preds = %"$have_gas_956"
  br label %"$matchsucc_958"

"$matchsucc_958":                                 ; preds = %"$have_gas_1101", %"$have_gas_1028", %"$empty_default_962"
  %"$$expr_48_1109" = load %Uint32, %Uint32* %"$expr_48", align 4
  ret %Uint32 %"$$expr_48_1109"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1110" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_1111" = alloca %Uint32, align 8
  %"$memvoidcast_1112" = bitcast %Uint32* %"$pval_1111" to i8*
  store %Uint32 %"$exprval_1110", %Uint32* %"$pval_1111", align 4
  %"$execptr_load_1113" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1113", %_TyDescrTy_Typ* @"$TyDescr_Uint32_69", i8* %"$memvoidcast_1112")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "multi-type-inst.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_63", linkageName: "$fundef_63", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 11, column: 14, scope: !4)
!9 = !DILocation(line: 12, column: 14, scope: !4)
!10 = !DILocation(line: 13, column: 5, scope: !4)
!11 = distinct !DISubprogram(name: "$fundef_61", linkageName: "$fundef_61", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 11, column: 5, scope: !11)
!13 = distinct !DISubprogram(name: "$fundef_59", linkageName: "$fundef_59", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = !DILocation(line: 11, column: 14, scope: !13)
!15 = !DILocation(line: 12, column: 14, scope: !13)
!16 = !DILocation(line: 13, column: 5, scope: !13)
!17 = distinct !DISubprogram(name: "$fundef_57", linkageName: "$fundef_57", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 11, column: 5, scope: !17)
!19 = distinct !DISubprogram(name: "$fundef_55", linkageName: "$fundef_55", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!20 = !DILocation(line: 4, column: 14, scope: !19)
!21 = !DILocation(line: 5, column: 5, scope: !19)
!22 = distinct !DISubprogram(name: "$fundef_53", linkageName: "$fundef_53", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!23 = !DILocation(line: 4, column: 5, scope: !22)
!24 = distinct !DISubprogram(name: "$fundef_51", linkageName: "$fundef_51", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!25 = !DILocation(line: 4, column: 14, scope: !24)
!26 = !DILocation(line: 5, column: 5, scope: !24)
!27 = distinct !DISubprogram(name: "$fundef_49", linkageName: "$fundef_49", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DILocation(line: 4, column: 5, scope: !27)
!29 = distinct !DISubprogram(name: "$fundef_46", linkageName: "$fundef_46", scope: !30, file: !30, line: 104, type: !5, scopeLine: 104, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!30 = !DIFile(filename: "ListUtils.scillib", directory: "../src/stdlib")
!31 = !DILocation(line: 104, column: 5, scope: !29)
!32 = distinct !DISubprogram(name: "$fundef_44", linkageName: "$fundef_44", scope: !30, file: !30, line: 103, type: !5, scopeLine: 103, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!33 = !DILocation(line: 104, column: 5, scope: !32)
!34 = distinct !DISubprogram(name: "$fundef_42", linkageName: "$fundef_42", scope: !30, file: !30, line: 101, type: !5, scopeLine: 101, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!35 = !DILocation(line: 101, column: 16, scope: !34)
!36 = !DILocation(line: 101, column: 15, scope: !34)
!37 = !DILocation(line: 102, column: 13, scope: !34)
!38 = !DILocation(line: 103, column: 34, scope: !34)
!39 = !DILocation(line: 105, column: 14, scope: !34)
!40 = !DILocation(line: 106, column: 3, scope: !34)
!41 = distinct !DISubprogram(name: "$fundef_40", linkageName: "$fundef_40", scope: !30, file: !30, line: 104, type: !5, scopeLine: 104, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!42 = !DILocation(line: 104, column: 5, scope: !41)
!43 = distinct !DISubprogram(name: "$fundef_38", linkageName: "$fundef_38", scope: !30, file: !30, line: 103, type: !5, scopeLine: 103, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!44 = !DILocation(line: 104, column: 5, scope: !43)
!45 = distinct !DISubprogram(name: "$fundef_36", linkageName: "$fundef_36", scope: !30, file: !30, line: 101, type: !5, scopeLine: 101, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!46 = !DILocation(line: 101, column: 16, scope: !45)
!47 = !DILocation(line: 101, column: 15, scope: !45)
!48 = !DILocation(line: 102, column: 13, scope: !45)
!49 = !DILocation(line: 103, column: 34, scope: !45)
!50 = !DILocation(line: 105, column: 14, scope: !45)
!51 = !DILocation(line: 106, column: 3, scope: !45)
!52 = distinct !DISubprogram(name: "$fundef_34", linkageName: "$fundef_34", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!53 = !DIFile(filename: "Prelude", directory: ".")
!54 = !DILocation(line: 1, column: 37, scope: !52)
!55 = !DILocation(line: 1, column: 74, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !53, line: 1, column: 52)
!57 = distinct !DILexicalBlock(scope: !52, file: !53, line: 1, column: 37)
!58 = !DILocation(line: 1, column: 83, scope: !56)
!59 = !DILocation(line: 1, column: 100, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !53, line: 1, column: 93)
!61 = distinct !DISubprogram(name: "$fundef_32", linkageName: "$fundef_32", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!62 = !DILocation(line: 1, column: 37, scope: !61)
!63 = distinct !DISubprogram(name: "$fundef_30", linkageName: "$fundef_30", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!64 = !DILocation(line: 1, column: 17, scope: !63)
!65 = distinct !DISubprogram(name: "$fundef_28", linkageName: "$fundef_28", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!66 = !DILocation(line: 1, column: 17, scope: !65)
!67 = distinct !DISubprogram(name: "$fundef_26", linkageName: "$fundef_26", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!68 = !DILocation(line: 1, column: 17, scope: !67)
!69 = distinct !DISubprogram(name: "$fundef_24", linkageName: "$fundef_24", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!70 = !DILocation(line: 1, column: 37, scope: !69)
!71 = !DILocation(line: 1, column: 74, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !53, line: 1, column: 52)
!73 = distinct !DILexicalBlock(scope: !69, file: !53, line: 1, column: 37)
!74 = !DILocation(line: 1, column: 83, scope: !72)
!75 = !DILocation(line: 1, column: 100, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !53, line: 1, column: 93)
!77 = distinct !DISubprogram(name: "$fundef_22", linkageName: "$fundef_22", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!78 = !DILocation(line: 1, column: 37, scope: !77)
!79 = distinct !DISubprogram(name: "$fundef_20", linkageName: "$fundef_20", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!80 = !DILocation(line: 1, column: 17, scope: !79)
!81 = distinct !DISubprogram(name: "$fundef_18", linkageName: "$fundef_18", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!82 = !DILocation(line: 1, column: 17, scope: !81)
!83 = distinct !DISubprogram(name: "$fundef_16", linkageName: "$fundef_16", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!84 = !DILocation(line: 1, column: 17, scope: !83)
!85 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !86, file: !86, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!86 = !DIFile(filename: ".", directory: ".")
!87 = !DILocation(line: 0, scope: !85)
!88 = !DILocation(line: 1, column: 17, scope: !85)
!89 = !DILocation(line: 100, column: 3, scope: !85)
!90 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!91 = !DILocation(line: 2, column: 3, scope: !90)
!92 = !DILocation(line: 9, column: 3, scope: !90)
!93 = !DILocation(line: 16, column: 17, scope: !90)
!94 = !DILocation(line: 18, column: 3, scope: !90)
!95 = !DILocation(line: 19, column: 13, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 19, column: 5)
!97 = distinct !DILexicalBlock(scope: !90, file: !2, line: 18, column: 3)
!98 = !DILocation(line: 20, column: 14, scope: !99)
!99 = distinct !DILexicalBlock(scope: !97, file: !2, line: 20, column: 5)
!100 = !DILocation(line: 24, column: 18, scope: !90)
!101 = !DILocation(line: 25, column: 1, scope: !90)
!102 = !DILocation(line: 27, column: 13, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 26, column: 3)
!104 = distinct !DILexicalBlock(scope: !90, file: !2, line: 25, column: 1)
!105 = !DILocation(line: 27, column: 12, scope: !103)
!106 = !DILocation(line: 28, column: 14, scope: !103)
!107 = !DILocation(line: 28, column: 13, scope: !103)
!108 = !DILocation(line: 29, column: 13, scope: !103)
!109 = !DILocation(line: 30, column: 13, scope: !103)
!110 = !DILocation(line: 31, column: 3, scope: !103)
!111 = !DILocation(line: 33, column: 13, scope: !112)
!112 = distinct !DILexicalBlock(scope: !104, file: !2, line: 32, column: 3)
!113 = !DILocation(line: 33, column: 12, scope: !112)
!114 = !DILocation(line: 34, column: 14, scope: !112)
!115 = !DILocation(line: 34, column: 13, scope: !112)
!116 = !DILocation(line: 35, column: 13, scope: !112)
!117 = !DILocation(line: 36, column: 13, scope: !112)
!118 = !DILocation(line: 37, column: 3, scope: !112)
