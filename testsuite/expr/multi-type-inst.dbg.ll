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

%"$TyDescrTy_PrimTyp_65" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_97" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_96"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_96" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_98"**, %"$TyDescrTy_ADTTyp_97"* }
%"$TyDescrTy_ADTTyp_Constr_98" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_1126" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1127" = type { %ParamDescrString, i32, %"$ParamDescr_1126"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_1126"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1127"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_List_Int64* @"$fundef_63"(%"$$fundef_63_env_138"* %0, %Int64 %1) !dbg !3 {
entry:
  %"$a_805" = alloca %Int64, align 8
  store %Int64 %1, %Int64* %"$a_805", align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$a_805", metadata !8, metadata !DIExpression()), !dbg !10
  %"$retval_64" = alloca %TName_List_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int64** %"$retval_64", metadata !11, metadata !DIExpression()), !dbg !14
  %"$gasrem_764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_765" = icmp ugt i64 1, %"$gasrem_764"
  br i1 %"$gascmp_765", label %"$out_of_gas_766", label %"$have_gas_767"

"$out_of_gas_766":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_767"

"$have_gas_767":                                  ; preds = %"$out_of_gas_766", %entry
  %"$consume_768" = sub i64 %"$gasrem_764", 1
  store i64 %"$consume_768", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int64** %an, metadata !15, metadata !DIExpression()), !dbg !16
  %"$gasrem_769" = load i64, i64* @_gasrem, align 8
  %"$gascmp_770" = icmp ugt i64 1, %"$gasrem_769"
  br i1 %"$gascmp_770", label %"$out_of_gas_771", label %"$have_gas_772"

"$out_of_gas_771":                                ; preds = %"$have_gas_767"
  call void @_out_of_gas()
  br label %"$have_gas_772"

"$have_gas_772":                                  ; preds = %"$out_of_gas_771", %"$have_gas_767"
  %"$consume_773" = sub i64 %"$gasrem_769", 1
  store i64 %"$consume_773", i64* @_gasrem, align 8
  %"$adtval_774_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_774_salloc" = call i8* @_salloc(i8* %"$adtval_774_load", i64 1)
  %"$adtval_774" = bitcast i8* %"$adtval_774_salloc" to %CName_Nil_Int64*
  %"$adtgep_775" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_774", i32 0, i32 0
  store i8 1, i8* %"$adtgep_775", align 1
  %"$adtptr_776" = bitcast %CName_Nil_Int64* %"$adtval_774" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_776", %TName_List_Int64** %an, align 8, !dbg !17
  %"$gasrem_777" = load i64, i64* @_gasrem, align 8
  %"$gascmp_778" = icmp ugt i64 1, %"$gasrem_777"
  br i1 %"$gascmp_778", label %"$out_of_gas_779", label %"$have_gas_780"

"$out_of_gas_779":                                ; preds = %"$have_gas_772"
  call void @_out_of_gas()
  br label %"$have_gas_780"

"$have_gas_780":                                  ; preds = %"$out_of_gas_779", %"$have_gas_772"
  %"$consume_781" = sub i64 %"$gasrem_777", 1
  store i64 %"$consume_781", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int64** %a1, metadata !18, metadata !DIExpression()), !dbg !19
  %"$gasrem_782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_783" = icmp ugt i64 1, %"$gasrem_782"
  br i1 %"$gascmp_783", label %"$out_of_gas_784", label %"$have_gas_785"

"$out_of_gas_784":                                ; preds = %"$have_gas_780"
  call void @_out_of_gas()
  br label %"$have_gas_785"

"$have_gas_785":                                  ; preds = %"$out_of_gas_784", %"$have_gas_780"
  %"$consume_786" = sub i64 %"$gasrem_782", 1
  store i64 %"$consume_786", i64* @_gasrem, align 8
  %"$an_787" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_788_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_788_salloc" = call i8* @_salloc(i8* %"$adtval_788_load", i64 17)
  %"$adtval_788" = bitcast i8* %"$adtval_788_salloc" to %CName_Cons_Int64*
  %"$adtgep_789" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_788", i32 0, i32 0
  store i8 0, i8* %"$adtgep_789", align 1
  %"$adtgep_790" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_788", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_790", align 8
  %"$adtgep_791" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_788", i32 0, i32 2
  store %TName_List_Int64* %"$an_787", %TName_List_Int64** %"$adtgep_791", align 8
  %"$adtptr_792" = bitcast %CName_Cons_Int64* %"$adtval_788" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_792", %TName_List_Int64** %a1, align 8, !dbg !20
  %"$gasrem_793" = load i64, i64* @_gasrem, align 8
  %"$gascmp_794" = icmp ugt i64 1, %"$gasrem_793"
  br i1 %"$gascmp_794", label %"$out_of_gas_795", label %"$have_gas_796"

"$out_of_gas_795":                                ; preds = %"$have_gas_785"
  call void @_out_of_gas()
  br label %"$have_gas_796"

"$have_gas_796":                                  ; preds = %"$out_of_gas_795", %"$have_gas_785"
  %"$consume_797" = sub i64 %"$gasrem_793", 1
  store i64 %"$consume_797", i64* @_gasrem, align 8
  %"$a1_798" = load %TName_List_Int64*, %TName_List_Int64** %a1, align 8
  %"$adtval_799_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_799_salloc" = call i8* @_salloc(i8* %"$adtval_799_load", i64 17)
  %"$adtval_799" = bitcast i8* %"$adtval_799_salloc" to %CName_Cons_Int64*
  %"$adtgep_800" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_799", i32 0, i32 0
  store i8 0, i8* %"$adtgep_800", align 1
  %"$adtgep_801" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_799", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_801", align 8
  %"$adtgep_802" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_799", i32 0, i32 2
  store %TName_List_Int64* %"$a1_798", %TName_List_Int64** %"$adtgep_802", align 8
  %"$adtptr_803" = bitcast %CName_Cons_Int64* %"$adtval_799" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_803", %TName_List_Int64** %"$retval_64", align 8, !dbg !21
  %"$$retval_64_804" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_64", align 8
  ret %TName_List_Int64* %"$$retval_64_804"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_61"(%"$$fundef_61_env_139"* %0) !dbg !22 {
entry:
  %"$retval_62" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_755" = load i64, i64* @_gasrem, align 8
  %"$gascmp_756" = icmp ugt i64 1, %"$gasrem_755"
  br i1 %"$gascmp_756", label %"$out_of_gas_757", label %"$have_gas_758"

"$out_of_gas_757":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_758"

"$have_gas_758":                                  ; preds = %"$out_of_gas_757", %entry
  %"$consume_759" = sub i64 %"$gasrem_755", 1
  store i64 %"$consume_759", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_63_env_138"*, %Int64)* @"$fundef_63" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_62", align 8, !dbg !23
  %"$$retval_62_763" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_62", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_62_763"
}

define internal %TName_List_Int32* @"$fundef_59"(%"$$fundef_59_env_140"* %0, %Int32 %1) !dbg !24 {
entry:
  %"$a_754" = alloca %Int32, align 8
  store %Int32 %1, %Int32* %"$a_754", align 4
  call void @llvm.dbg.declare(metadata %Int32* %"$a_754", metadata !25, metadata !DIExpression()), !dbg !27
  %"$retval_60" = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %"$retval_60", metadata !28, metadata !DIExpression()), !dbg !31
  %"$gasrem_713" = load i64, i64* @_gasrem, align 8
  %"$gascmp_714" = icmp ugt i64 1, %"$gasrem_713"
  br i1 %"$gascmp_714", label %"$out_of_gas_715", label %"$have_gas_716"

"$out_of_gas_715":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_716"

"$have_gas_716":                                  ; preds = %"$out_of_gas_715", %entry
  %"$consume_717" = sub i64 %"$gasrem_713", 1
  store i64 %"$consume_717", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %an, metadata !32, metadata !DIExpression()), !dbg !33
  %"$gasrem_718" = load i64, i64* @_gasrem, align 8
  %"$gascmp_719" = icmp ugt i64 1, %"$gasrem_718"
  br i1 %"$gascmp_719", label %"$out_of_gas_720", label %"$have_gas_721"

"$out_of_gas_720":                                ; preds = %"$have_gas_716"
  call void @_out_of_gas()
  br label %"$have_gas_721"

"$have_gas_721":                                  ; preds = %"$out_of_gas_720", %"$have_gas_716"
  %"$consume_722" = sub i64 %"$gasrem_718", 1
  store i64 %"$consume_722", i64* @_gasrem, align 8
  %"$adtval_723_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_723_salloc" = call i8* @_salloc(i8* %"$adtval_723_load", i64 1)
  %"$adtval_723" = bitcast i8* %"$adtval_723_salloc" to %CName_Nil_Int32*
  %"$adtgep_724" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_723", i32 0, i32 0
  store i8 1, i8* %"$adtgep_724", align 1
  %"$adtptr_725" = bitcast %CName_Nil_Int32* %"$adtval_723" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_725", %TName_List_Int32** %an, align 8, !dbg !34
  %"$gasrem_726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_727" = icmp ugt i64 1, %"$gasrem_726"
  br i1 %"$gascmp_727", label %"$out_of_gas_728", label %"$have_gas_729"

"$out_of_gas_728":                                ; preds = %"$have_gas_721"
  call void @_out_of_gas()
  br label %"$have_gas_729"

"$have_gas_729":                                  ; preds = %"$out_of_gas_728", %"$have_gas_721"
  %"$consume_730" = sub i64 %"$gasrem_726", 1
  store i64 %"$consume_730", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %a1, metadata !35, metadata !DIExpression()), !dbg !36
  %"$gasrem_731" = load i64, i64* @_gasrem, align 8
  %"$gascmp_732" = icmp ugt i64 1, %"$gasrem_731"
  br i1 %"$gascmp_732", label %"$out_of_gas_733", label %"$have_gas_734"

"$out_of_gas_733":                                ; preds = %"$have_gas_729"
  call void @_out_of_gas()
  br label %"$have_gas_734"

"$have_gas_734":                                  ; preds = %"$out_of_gas_733", %"$have_gas_729"
  %"$consume_735" = sub i64 %"$gasrem_731", 1
  store i64 %"$consume_735", i64* @_gasrem, align 8
  %"$an_736" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_737_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_737_salloc" = call i8* @_salloc(i8* %"$adtval_737_load", i64 13)
  %"$adtval_737" = bitcast i8* %"$adtval_737_salloc" to %CName_Cons_Int32*
  %"$adtgep_738" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_737", i32 0, i32 0
  store i8 0, i8* %"$adtgep_738", align 1
  %"$adtgep_739" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_737", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_739", align 4
  %"$adtgep_740" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_737", i32 0, i32 2
  store %TName_List_Int32* %"$an_736", %TName_List_Int32** %"$adtgep_740", align 8
  %"$adtptr_741" = bitcast %CName_Cons_Int32* %"$adtval_737" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_741", %TName_List_Int32** %a1, align 8, !dbg !37
  %"$gasrem_742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_743" = icmp ugt i64 1, %"$gasrem_742"
  br i1 %"$gascmp_743", label %"$out_of_gas_744", label %"$have_gas_745"

"$out_of_gas_744":                                ; preds = %"$have_gas_734"
  call void @_out_of_gas()
  br label %"$have_gas_745"

"$have_gas_745":                                  ; preds = %"$out_of_gas_744", %"$have_gas_734"
  %"$consume_746" = sub i64 %"$gasrem_742", 1
  store i64 %"$consume_746", i64* @_gasrem, align 8
  %"$a1_747" = load %TName_List_Int32*, %TName_List_Int32** %a1, align 8
  %"$adtval_748_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_748_salloc" = call i8* @_salloc(i8* %"$adtval_748_load", i64 13)
  %"$adtval_748" = bitcast i8* %"$adtval_748_salloc" to %CName_Cons_Int32*
  %"$adtgep_749" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_748", i32 0, i32 0
  store i8 0, i8* %"$adtgep_749", align 1
  %"$adtgep_750" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_748", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_750", align 4
  %"$adtgep_751" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_748", i32 0, i32 2
  store %TName_List_Int32* %"$a1_747", %TName_List_Int32** %"$adtgep_751", align 8
  %"$adtptr_752" = bitcast %CName_Cons_Int32* %"$adtval_748" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_752", %TName_List_Int32** %"$retval_60", align 8, !dbg !38
  %"$$retval_60_753" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_60", align 8
  ret %TName_List_Int32* %"$$retval_60_753"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_57"(%"$$fundef_57_env_141"* %0) !dbg !39 {
entry:
  %"$retval_58" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_705" = icmp ugt i64 1, %"$gasrem_704"
  br i1 %"$gascmp_705", label %"$out_of_gas_706", label %"$have_gas_707"

"$out_of_gas_706":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_707"

"$have_gas_707":                                  ; preds = %"$out_of_gas_706", %entry
  %"$consume_708" = sub i64 %"$gasrem_704", 1
  store i64 %"$consume_708", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_59_env_140"*, %Int32)* @"$fundef_59" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_58", align 8, !dbg !40
  %"$$retval_58_712" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_58", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_58_712"
}

define internal %TName_List_Int64* @"$fundef_55"(%"$$fundef_55_env_142"* %0, %Int64 %1) !dbg !41 {
entry:
  %"$a_703" = alloca %Int64, align 8
  store %Int64 %1, %Int64* %"$a_703", align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$a_703", metadata !42, metadata !DIExpression()), !dbg !43
  %"$retval_56" = alloca %TName_List_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int64** %"$retval_56", metadata !44, metadata !DIExpression()), !dbg !45
  %"$gasrem_678" = load i64, i64* @_gasrem, align 8
  %"$gascmp_679" = icmp ugt i64 1, %"$gasrem_678"
  br i1 %"$gascmp_679", label %"$out_of_gas_680", label %"$have_gas_681"

"$out_of_gas_680":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_681"

"$have_gas_681":                                  ; preds = %"$out_of_gas_680", %entry
  %"$consume_682" = sub i64 %"$gasrem_678", 1
  store i64 %"$consume_682", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int64** %an, metadata !46, metadata !DIExpression()), !dbg !47
  %"$gasrem_683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_684" = icmp ugt i64 1, %"$gasrem_683"
  br i1 %"$gascmp_684", label %"$out_of_gas_685", label %"$have_gas_686"

"$out_of_gas_685":                                ; preds = %"$have_gas_681"
  call void @_out_of_gas()
  br label %"$have_gas_686"

"$have_gas_686":                                  ; preds = %"$out_of_gas_685", %"$have_gas_681"
  %"$consume_687" = sub i64 %"$gasrem_683", 1
  store i64 %"$consume_687", i64* @_gasrem, align 8
  %"$adtval_688_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_688_salloc" = call i8* @_salloc(i8* %"$adtval_688_load", i64 1)
  %"$adtval_688" = bitcast i8* %"$adtval_688_salloc" to %CName_Nil_Int64*
  %"$adtgep_689" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_688", i32 0, i32 0
  store i8 1, i8* %"$adtgep_689", align 1
  %"$adtptr_690" = bitcast %CName_Nil_Int64* %"$adtval_688" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_690", %TName_List_Int64** %an, align 8, !dbg !48
  %"$gasrem_691" = load i64, i64* @_gasrem, align 8
  %"$gascmp_692" = icmp ugt i64 1, %"$gasrem_691"
  br i1 %"$gascmp_692", label %"$out_of_gas_693", label %"$have_gas_694"

"$out_of_gas_693":                                ; preds = %"$have_gas_686"
  call void @_out_of_gas()
  br label %"$have_gas_694"

"$have_gas_694":                                  ; preds = %"$out_of_gas_693", %"$have_gas_686"
  %"$consume_695" = sub i64 %"$gasrem_691", 1
  store i64 %"$consume_695", i64* @_gasrem, align 8
  %"$an_696" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_697_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_697_salloc" = call i8* @_salloc(i8* %"$adtval_697_load", i64 17)
  %"$adtval_697" = bitcast i8* %"$adtval_697_salloc" to %CName_Cons_Int64*
  %"$adtgep_698" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_697", i32 0, i32 0
  store i8 0, i8* %"$adtgep_698", align 1
  %"$adtgep_699" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_697", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_699", align 8
  %"$adtgep_700" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_697", i32 0, i32 2
  store %TName_List_Int64* %"$an_696", %TName_List_Int64** %"$adtgep_700", align 8
  %"$adtptr_701" = bitcast %CName_Cons_Int64* %"$adtval_697" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_701", %TName_List_Int64** %"$retval_56", align 8, !dbg !49
  %"$$retval_56_702" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_56", align 8
  ret %TName_List_Int64* %"$$retval_56_702"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_53"(%"$$fundef_53_env_143"* %0) !dbg !50 {
entry:
  %"$retval_54" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_669" = load i64, i64* @_gasrem, align 8
  %"$gascmp_670" = icmp ugt i64 1, %"$gasrem_669"
  br i1 %"$gascmp_670", label %"$out_of_gas_671", label %"$have_gas_672"

"$out_of_gas_671":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_672"

"$have_gas_672":                                  ; preds = %"$out_of_gas_671", %entry
  %"$consume_673" = sub i64 %"$gasrem_669", 1
  store i64 %"$consume_673", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_55_env_142"*, %Int64)* @"$fundef_55" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_54", align 8, !dbg !51
  %"$$retval_54_677" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_54", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_54_677"
}

define internal %TName_List_Int32* @"$fundef_51"(%"$$fundef_51_env_144"* %0, %Int32 %1) !dbg !52 {
entry:
  %"$a_668" = alloca %Int32, align 8
  store %Int32 %1, %Int32* %"$a_668", align 4
  call void @llvm.dbg.declare(metadata %Int32* %"$a_668", metadata !53, metadata !DIExpression()), !dbg !54
  %"$retval_52" = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %"$retval_52", metadata !55, metadata !DIExpression()), !dbg !56
  %"$gasrem_643" = load i64, i64* @_gasrem, align 8
  %"$gascmp_644" = icmp ugt i64 1, %"$gasrem_643"
  br i1 %"$gascmp_644", label %"$out_of_gas_645", label %"$have_gas_646"

"$out_of_gas_645":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_646"

"$have_gas_646":                                  ; preds = %"$out_of_gas_645", %entry
  %"$consume_647" = sub i64 %"$gasrem_643", 1
  store i64 %"$consume_647", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %an, metadata !57, metadata !DIExpression()), !dbg !58
  %"$gasrem_648" = load i64, i64* @_gasrem, align 8
  %"$gascmp_649" = icmp ugt i64 1, %"$gasrem_648"
  br i1 %"$gascmp_649", label %"$out_of_gas_650", label %"$have_gas_651"

"$out_of_gas_650":                                ; preds = %"$have_gas_646"
  call void @_out_of_gas()
  br label %"$have_gas_651"

"$have_gas_651":                                  ; preds = %"$out_of_gas_650", %"$have_gas_646"
  %"$consume_652" = sub i64 %"$gasrem_648", 1
  store i64 %"$consume_652", i64* @_gasrem, align 8
  %"$adtval_653_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_653_salloc" = call i8* @_salloc(i8* %"$adtval_653_load", i64 1)
  %"$adtval_653" = bitcast i8* %"$adtval_653_salloc" to %CName_Nil_Int32*
  %"$adtgep_654" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_653", i32 0, i32 0
  store i8 1, i8* %"$adtgep_654", align 1
  %"$adtptr_655" = bitcast %CName_Nil_Int32* %"$adtval_653" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_655", %TName_List_Int32** %an, align 8, !dbg !59
  %"$gasrem_656" = load i64, i64* @_gasrem, align 8
  %"$gascmp_657" = icmp ugt i64 1, %"$gasrem_656"
  br i1 %"$gascmp_657", label %"$out_of_gas_658", label %"$have_gas_659"

"$out_of_gas_658":                                ; preds = %"$have_gas_651"
  call void @_out_of_gas()
  br label %"$have_gas_659"

"$have_gas_659":                                  ; preds = %"$out_of_gas_658", %"$have_gas_651"
  %"$consume_660" = sub i64 %"$gasrem_656", 1
  store i64 %"$consume_660", i64* @_gasrem, align 8
  %"$an_661" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_662_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_662_salloc" = call i8* @_salloc(i8* %"$adtval_662_load", i64 13)
  %"$adtval_662" = bitcast i8* %"$adtval_662_salloc" to %CName_Cons_Int32*
  %"$adtgep_663" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_662", i32 0, i32 0
  store i8 0, i8* %"$adtgep_663", align 1
  %"$adtgep_664" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_662", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_664", align 4
  %"$adtgep_665" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_662", i32 0, i32 2
  store %TName_List_Int32* %"$an_661", %TName_List_Int32** %"$adtgep_665", align 8
  %"$adtptr_666" = bitcast %CName_Cons_Int32* %"$adtval_662" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_666", %TName_List_Int32** %"$retval_52", align 8, !dbg !60
  %"$$retval_52_667" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_52", align 8
  ret %TName_List_Int32* %"$$retval_52_667"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_49"(%"$$fundef_49_env_145"* %0) !dbg !61 {
entry:
  %"$retval_50" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_634" = load i64, i64* @_gasrem, align 8
  %"$gascmp_635" = icmp ugt i64 1, %"$gasrem_634"
  br i1 %"$gascmp_635", label %"$out_of_gas_636", label %"$have_gas_637"

"$out_of_gas_636":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_637"

"$have_gas_637":                                  ; preds = %"$out_of_gas_636", %entry
  %"$consume_638" = sub i64 %"$gasrem_634", 1
  store i64 %"$consume_638", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_51_env_144"*, %Int32)* @"$fundef_51" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_50", align 8, !dbg !62
  %"$$retval_50_642" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_50", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_50_642"
}

define internal %Uint32 @"$fundef_46"(%"$$fundef_46_env_146"* %0, %Int64 %1) !dbg !63 {
entry:
  %"$h_633" = alloca %Int64, align 8
  store %Int64 %1, %Int64* %"$h_633", align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$h_633", metadata !65, metadata !DIExpression()), !dbg !66
  %"$$fundef_46_env_one_620" = getelementptr inbounds %"$$fundef_46_env_146", %"$$fundef_46_env_146"* %0, i32 0, i32 0
  %"$one_envload_621" = load %Uint32, %Uint32* %"$$fundef_46_env_one_620", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_621", %Uint32* %one, align 4
  %"$$fundef_46_env_z_622" = getelementptr inbounds %"$$fundef_46_env_146", %"$$fundef_46_env_146"* %0, i32 0, i32 1
  %"$z_envload_623" = load %Uint32, %Uint32* %"$$fundef_46_env_z_622", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_623", %Uint32* %z, align 4
  %"$retval_47" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_47", metadata !67, metadata !DIExpression()), !dbg !69
  %"$gasrem_624" = load i64, i64* @_gasrem, align 8
  %"$gascmp_625" = icmp ugt i64 4, %"$gasrem_624"
  br i1 %"$gascmp_625", label %"$out_of_gas_626", label %"$have_gas_627"

"$out_of_gas_626":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_627"

"$have_gas_627":                                  ; preds = %"$out_of_gas_626", %entry
  %"$consume_628" = sub i64 %"$gasrem_624", 4
  store i64 %"$consume_628", i64* @_gasrem, align 8
  %"$one_629" = load %Uint32, %Uint32* %one, align 4
  %"$z_630" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_631" = call %Uint32 @_add_Uint32(%Uint32 %"$one_629", %Uint32 %"$z_630"), !dbg !69
  store %Uint32 %"$add_call_631", %Uint32* %"$retval_47", align 4, !dbg !69
  %"$$retval_47_632" = load %Uint32, %Uint32* %"$retval_47", align 4
  ret %Uint32 %"$$retval_47_632"
}

define internal { %Uint32 (i8*, %Int64)*, i8* } @"$fundef_44"(%"$$fundef_44_env_147"* %0, %Uint32 %1) !dbg !70 {
entry:
  %"$z_619" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$z_619", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$z_619", metadata !71, metadata !DIExpression()), !dbg !72
  %"$$fundef_44_env_one_604" = getelementptr inbounds %"$$fundef_44_env_147", %"$$fundef_44_env_147"* %0, i32 0, i32 0
  %"$one_envload_605" = load %Uint32, %Uint32* %"$$fundef_44_env_one_604", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_605", %Uint32* %one, align 4
  %"$retval_45" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_607" = icmp ugt i64 1, %"$gasrem_606"
  br i1 %"$gascmp_607", label %"$out_of_gas_608", label %"$have_gas_609"

"$out_of_gas_608":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_609"

"$have_gas_609":                                  ; preds = %"$out_of_gas_608", %entry
  %"$consume_610" = sub i64 %"$gasrem_606", 1
  store i64 %"$consume_610", i64* @_gasrem, align 8
  %"$$fundef_46_envp_611_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_46_envp_611_salloc" = call i8* @_salloc(i8* %"$$fundef_46_envp_611_load", i64 8)
  %"$$fundef_46_envp_611" = bitcast i8* %"$$fundef_46_envp_611_salloc" to %"$$fundef_46_env_146"*
  %"$$fundef_46_env_voidp_613" = bitcast %"$$fundef_46_env_146"* %"$$fundef_46_envp_611" to i8*
  %"$$fundef_46_cloval_614" = insertvalue { %Uint32 (i8*, %Int64)*, i8* } { %Uint32 (i8*, %Int64)* bitcast (%Uint32 (%"$$fundef_46_env_146"*, %Int64)* @"$fundef_46" to %Uint32 (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_46_env_voidp_613", 1
  %"$$fundef_46_env_one_615" = getelementptr inbounds %"$$fundef_46_env_146", %"$$fundef_46_env_146"* %"$$fundef_46_envp_611", i32 0, i32 0
  %"$one_616" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_616", %Uint32* %"$$fundef_46_env_one_615", align 4
  %"$$fundef_46_env_z_617" = getelementptr inbounds %"$$fundef_46_env_146", %"$$fundef_46_env_146"* %"$$fundef_46_envp_611", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_46_env_z_617", align 4
  store { %Uint32 (i8*, %Int64)*, i8* } %"$$fundef_46_cloval_614", { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_45", align 8, !dbg !73
  %"$$retval_45_618" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_45", align 8
  ret { %Uint32 (i8*, %Int64)*, i8* } %"$$retval_45_618"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_42"(%"$$fundef_42_env_148"* %0) !dbg !74 {
entry:
  %"$$fundef_42_env_list_foldl_526" = getelementptr inbounds %"$$fundef_42_env_148", %"$$fundef_42_env_148"* %0, i32 0, i32 0
  %"$list_foldl_envload_527" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_42_env_list_foldl_526", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_527", { i8*, i8* }** %list_foldl, align 8
  %"$retval_43" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
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
  %"$list_foldl_call_544" = call { i8*, i8* }* %"$list_foldl_fptr_542"(i8* %"$list_foldl_envptr_543"), !dbg !75
  %"$list_foldl_545" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_544", i32 1
  %"$list_foldl_546" = bitcast { i8*, i8* }* %"$list_foldl_545" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_547" = load { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_546", align 8
  %"$list_foldl_fptr_548" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_547", 0
  %"$list_foldl_envptr_549" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_547", 1
  %"$list_foldl_call_550" = call { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_548"(i8* %"$list_foldl_envptr_549"), !dbg !75
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_550", { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8, !dbg !76
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
  call void @llvm.dbg.declare(metadata %Uint32* %one, metadata !77, metadata !DIExpression()), !dbg !78
  %"$gasrem_556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_557" = icmp ugt i64 1, %"$gasrem_556"
  br i1 %"$gascmp_557", label %"$out_of_gas_558", label %"$have_gas_559"

"$out_of_gas_558":                                ; preds = %"$have_gas_554"
  call void @_out_of_gas()
  br label %"$have_gas_559"

"$have_gas_559":                                  ; preds = %"$out_of_gas_558", %"$have_gas_554"
  %"$consume_560" = sub i64 %"$gasrem_556", 1
  store i64 %"$consume_560", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !79
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
  %"$$fundef_44_envp_571_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_44_envp_571_salloc" = call i8* @_salloc(i8* %"$$fundef_44_envp_571_load", i64 4)
  %"$$fundef_44_envp_571" = bitcast i8* %"$$fundef_44_envp_571_salloc" to %"$$fundef_44_env_147"*
  %"$$fundef_44_env_voidp_573" = bitcast %"$$fundef_44_env_147"* %"$$fundef_44_envp_571" to i8*
  %"$$fundef_44_cloval_574" = insertvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int64)*, i8* } (%"$$fundef_44_env_147"*, %Uint32)* @"$fundef_44" to { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_44_env_voidp_573", 1
  %"$$fundef_44_env_one_575" = getelementptr inbounds %"$$fundef_44_env_147", %"$$fundef_44_env_147"* %"$$fundef_44_envp_571", i32 0, i32 0
  %"$one_576" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_576", %Uint32* %"$$fundef_44_env_one_575", align 4
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_44_cloval_574", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8, !dbg !80
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
  call void @llvm.dbg.declare(metadata %Uint32* %init, metadata !81, metadata !DIExpression()), !dbg !82
  %"$gasrem_582" = load i64, i64* @_gasrem, align 8
  %"$gascmp_583" = icmp ugt i64 1, %"$gasrem_582"
  br i1 %"$gascmp_583", label %"$out_of_gas_584", label %"$have_gas_585"

"$out_of_gas_584":                                ; preds = %"$have_gas_580"
  call void @_out_of_gas()
  br label %"$have_gas_585"

"$have_gas_585":                                  ; preds = %"$out_of_gas_584", %"$have_gas_580"
  %"$consume_586" = sub i64 %"$gasrem_582", 1
  store i64 %"$consume_586", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4, !dbg !83
  %"$gasrem_587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_588" = icmp ugt i64 1, %"$gasrem_587"
  br i1 %"$gascmp_588", label %"$out_of_gas_589", label %"$have_gas_590"

"$out_of_gas_589":                                ; preds = %"$have_gas_585"
  call void @_out_of_gas()
  br label %"$have_gas_590"

"$have_gas_590":                                  ; preds = %"$out_of_gas_589", %"$have_gas_585"
  %"$consume_591" = sub i64 %"$gasrem_587", 1
  store i64 %"$consume_591", i64* @_gasrem, align 8
  %"$foldl_10" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_592" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_593" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_592", 0
  %"$foldl_envptr_594" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_592", 1
  %"$iter_595" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_596" = call { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_593"(i8* %"$foldl_envptr_594", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_595"), !dbg !84
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_596", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8, !dbg !84
  %"$foldl_11" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$$foldl_10_597" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$$foldl_10_fptr_598" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_597", 0
  %"$$foldl_10_envptr_599" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_597", 1
  %"$init_600" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_10_call_601" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_10_fptr_598"(i8* %"$$foldl_10_envptr_599", %Uint32 %"$init_600"), !dbg !84
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_10_call_601", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_11", align 8, !dbg !84
  %"$$foldl_11_602" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_11", align 8
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_11_602", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_43", align 8, !dbg !84
  %"$$retval_43_603" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_43", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_43_603"
}

define internal %Uint32 @"$fundef_40"(%"$$fundef_40_env_149"* %0, %Int32 %1) !dbg !85 {
entry:
  %"$h_525" = alloca %Int32, align 8
  store %Int32 %1, %Int32* %"$h_525", align 4
  call void @llvm.dbg.declare(metadata %Int32* %"$h_525", metadata !86, metadata !DIExpression()), !dbg !87
  %"$$fundef_40_env_one_512" = getelementptr inbounds %"$$fundef_40_env_149", %"$$fundef_40_env_149"* %0, i32 0, i32 0
  %"$one_envload_513" = load %Uint32, %Uint32* %"$$fundef_40_env_one_512", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_513", %Uint32* %one, align 4
  %"$$fundef_40_env_z_514" = getelementptr inbounds %"$$fundef_40_env_149", %"$$fundef_40_env_149"* %0, i32 0, i32 1
  %"$z_envload_515" = load %Uint32, %Uint32* %"$$fundef_40_env_z_514", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_515", %Uint32* %z, align 4
  %"$retval_41" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_41", metadata !88, metadata !DIExpression()), !dbg !89
  %"$gasrem_516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_517" = icmp ugt i64 4, %"$gasrem_516"
  br i1 %"$gascmp_517", label %"$out_of_gas_518", label %"$have_gas_519"

"$out_of_gas_518":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_519"

"$have_gas_519":                                  ; preds = %"$out_of_gas_518", %entry
  %"$consume_520" = sub i64 %"$gasrem_516", 4
  store i64 %"$consume_520", i64* @_gasrem, align 8
  %"$one_521" = load %Uint32, %Uint32* %one, align 4
  %"$z_522" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_523" = call %Uint32 @_add_Uint32(%Uint32 %"$one_521", %Uint32 %"$z_522"), !dbg !89
  store %Uint32 %"$add_call_523", %Uint32* %"$retval_41", align 4, !dbg !89
  %"$$retval_41_524" = load %Uint32, %Uint32* %"$retval_41", align 4
  ret %Uint32 %"$$retval_41_524"
}

define internal { %Uint32 (i8*, %Int32)*, i8* } @"$fundef_38"(%"$$fundef_38_env_150"* %0, %Uint32 %1) !dbg !90 {
entry:
  %"$z_511" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$z_511", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$z_511", metadata !91, metadata !DIExpression()), !dbg !92
  %"$$fundef_38_env_one_496" = getelementptr inbounds %"$$fundef_38_env_150", %"$$fundef_38_env_150"* %0, i32 0, i32 0
  %"$one_envload_497" = load %Uint32, %Uint32* %"$$fundef_38_env_one_496", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_497", %Uint32* %one, align 4
  %"$retval_39" = alloca { %Uint32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_499" = icmp ugt i64 1, %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %entry
  %"$consume_502" = sub i64 %"$gasrem_498", 1
  store i64 %"$consume_502", i64* @_gasrem, align 8
  %"$$fundef_40_envp_503_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_40_envp_503_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_503_load", i64 8)
  %"$$fundef_40_envp_503" = bitcast i8* %"$$fundef_40_envp_503_salloc" to %"$$fundef_40_env_149"*
  %"$$fundef_40_env_voidp_505" = bitcast %"$$fundef_40_env_149"* %"$$fundef_40_envp_503" to i8*
  %"$$fundef_40_cloval_506" = insertvalue { %Uint32 (i8*, %Int32)*, i8* } { %Uint32 (i8*, %Int32)* bitcast (%Uint32 (%"$$fundef_40_env_149"*, %Int32)* @"$fundef_40" to %Uint32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_40_env_voidp_505", 1
  %"$$fundef_40_env_one_507" = getelementptr inbounds %"$$fundef_40_env_149", %"$$fundef_40_env_149"* %"$$fundef_40_envp_503", i32 0, i32 0
  %"$one_508" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_508", %Uint32* %"$$fundef_40_env_one_507", align 4
  %"$$fundef_40_env_z_509" = getelementptr inbounds %"$$fundef_40_env_149", %"$$fundef_40_env_149"* %"$$fundef_40_envp_503", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_40_env_z_509", align 4
  store { %Uint32 (i8*, %Int32)*, i8* } %"$$fundef_40_cloval_506", { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_39", align 8, !dbg !93
  %"$$retval_39_510" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_39", align 8
  ret { %Uint32 (i8*, %Int32)*, i8* } %"$$retval_39_510"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_36"(%"$$fundef_36_env_151"* %0) !dbg !94 {
entry:
  %"$$fundef_36_env_list_foldl_418" = getelementptr inbounds %"$$fundef_36_env_151", %"$$fundef_36_env_151"* %0, i32 0, i32 0
  %"$list_foldl_envload_419" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_36_env_list_foldl_418", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_419", { i8*, i8* }** %list_foldl, align 8
  %"$retval_37" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %entry
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 1, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_423"
  %"$consume_429" = sub i64 %"$gasrem_425", 1
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %"$list_foldl_430" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_431" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_430", i32 0
  %"$list_foldl_432" = bitcast { i8*, i8* }* %"$list_foldl_431" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_433" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_432", align 8
  %"$list_foldl_fptr_434" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_433", 0
  %"$list_foldl_envptr_435" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_433", 1
  %"$list_foldl_call_436" = call { i8*, i8* }* %"$list_foldl_fptr_434"(i8* %"$list_foldl_envptr_435"), !dbg !95
  %"$list_foldl_437" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_436", i32 1
  %"$list_foldl_438" = bitcast { i8*, i8* }* %"$list_foldl_437" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_439" = load { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_438", align 8
  %"$list_foldl_fptr_440" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_439", 0
  %"$list_foldl_envptr_441" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_439", 1
  %"$list_foldl_call_442" = call { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_440"(i8* %"$list_foldl_envptr_441"), !dbg !95
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_442", { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8, !dbg !96
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$have_gas_428"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %one, metadata !97, metadata !DIExpression()), !dbg !98
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 1, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_446"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_446"
  %"$consume_452" = sub i64 %"$gasrem_448", 1
  store i64 %"$consume_452", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !99
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_451"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 1, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$have_gas_456"
  %"$consume_462" = sub i64 %"$gasrem_458", 1
  store i64 %"$consume_462", i64* @_gasrem, align 8
  %"$$fundef_38_envp_463_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_38_envp_463_salloc" = call i8* @_salloc(i8* %"$$fundef_38_envp_463_load", i64 4)
  %"$$fundef_38_envp_463" = bitcast i8* %"$$fundef_38_envp_463_salloc" to %"$$fundef_38_env_150"*
  %"$$fundef_38_env_voidp_465" = bitcast %"$$fundef_38_env_150"* %"$$fundef_38_envp_463" to i8*
  %"$$fundef_38_cloval_466" = insertvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int32)*, i8* } (%"$$fundef_38_env_150"*, %Uint32)* @"$fundef_38" to { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_38_env_voidp_465", 1
  %"$$fundef_38_env_one_467" = getelementptr inbounds %"$$fundef_38_env_150", %"$$fundef_38_env_150"* %"$$fundef_38_envp_463", i32 0, i32 0
  %"$one_468" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_468", %Uint32* %"$$fundef_38_env_one_467", align 4
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_38_cloval_466", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8, !dbg !100
  %"$gasrem_469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_470" = icmp ugt i64 1, %"$gasrem_469"
  br i1 %"$gascmp_470", label %"$out_of_gas_471", label %"$have_gas_472"

"$out_of_gas_471":                                ; preds = %"$have_gas_461"
  call void @_out_of_gas()
  br label %"$have_gas_472"

"$have_gas_472":                                  ; preds = %"$out_of_gas_471", %"$have_gas_461"
  %"$consume_473" = sub i64 %"$gasrem_469", 1
  store i64 %"$consume_473", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %init, metadata !101, metadata !DIExpression()), !dbg !102
  %"$gasrem_474" = load i64, i64* @_gasrem, align 8
  %"$gascmp_475" = icmp ugt i64 1, %"$gasrem_474"
  br i1 %"$gascmp_475", label %"$out_of_gas_476", label %"$have_gas_477"

"$out_of_gas_476":                                ; preds = %"$have_gas_472"
  call void @_out_of_gas()
  br label %"$have_gas_477"

"$have_gas_477":                                  ; preds = %"$out_of_gas_476", %"$have_gas_472"
  %"$consume_478" = sub i64 %"$gasrem_474", 1
  store i64 %"$consume_478", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4, !dbg !103
  %"$gasrem_479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_480" = icmp ugt i64 1, %"$gasrem_479"
  br i1 %"$gascmp_480", label %"$out_of_gas_481", label %"$have_gas_482"

"$out_of_gas_481":                                ; preds = %"$have_gas_477"
  call void @_out_of_gas()
  br label %"$have_gas_482"

"$have_gas_482":                                  ; preds = %"$out_of_gas_481", %"$have_gas_477"
  %"$consume_483" = sub i64 %"$gasrem_479", 1
  store i64 %"$consume_483", i64* @_gasrem, align 8
  %"$foldl_10" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_484" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_485" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_484", 0
  %"$foldl_envptr_486" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_484", 1
  %"$iter_487" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_488" = call { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_485"(i8* %"$foldl_envptr_486", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_487"), !dbg !104
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_488", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8, !dbg !104
  %"$foldl_11" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$$foldl_10_489" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$$foldl_10_fptr_490" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_489", 0
  %"$$foldl_10_envptr_491" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_489", 1
  %"$init_492" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_10_call_493" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_10_fptr_490"(i8* %"$$foldl_10_envptr_491", %Uint32 %"$init_492"), !dbg !104
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_10_call_493", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_11", align 8, !dbg !104
  %"$$foldl_11_494" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_11", align 8
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_11_494", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_37", align 8, !dbg !104
  %"$$retval_37_495" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_37", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_37_495"
}

define internal %Uint32 @"$fundef_34"(%"$$fundef_34_env_152"* %0, %TName_List_Int64* %1) !dbg !105 {
entry:
  %"$l_417" = alloca %TName_List_Int64*, align 8
  store %TName_List_Int64* %1, %TName_List_Int64** %"$l_417", align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int64** %"$l_417", metadata !107, metadata !DIExpression()), !dbg !108
  %"$$fundef_34_env_f_350" = getelementptr inbounds %"$$fundef_34_env_152", %"$$fundef_34_env_152"* %0, i32 0, i32 0
  %"$f_envload_351" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_f_350", align 8
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_351", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_34_env_g_352" = getelementptr inbounds %"$$fundef_34_env_152", %"$$fundef_34_env_152"* %0, i32 0, i32 1
  %"$g_envload_353" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_g_352", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_353", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_34_env_z_354" = getelementptr inbounds %"$$fundef_34_env_152", %"$$fundef_34_env_152"* %0, i32 0, i32 2
  %"$z_envload_355" = load %Uint32, %Uint32* %"$$fundef_34_env_z_354", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_355", %Uint32* %z, align 4
  %"$retval_35" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_35", metadata !109, metadata !DIExpression()), !dbg !110
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 2, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %entry
  %"$consume_360" = sub i64 %"$gasrem_356", 2
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %"$l_tag_362" = getelementptr inbounds %TName_List_Int64, %TName_List_Int64* %1, i32 0, i32 0
  %"$l_tag_363" = load i8, i8* %"$l_tag_362", align 1
  switch i8 %"$l_tag_363", label %"$empty_default_364" [
    i8 0, label %"$Cons_365"
    i8 1, label %"$Nil_408"
  ], !dbg !110

"$Cons_365":                                      ; preds = %"$have_gas_359"
  %"$l_366" = bitcast %TName_List_Int64* %1 to %CName_Cons_Int64*
  %"$h_gep_367" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_366", i32 0, i32 1
  %"$h_load_368" = load %Int64, %Int64* %"$h_gep_367", align 8
  %h = alloca %Int64, align 8
  store %Int64 %"$h_load_368", %Int64* %h, align 8
  %"$t_gep_369" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_366", i32 0, i32 2
  %"$t_load_370" = load %TName_List_Int64*, %TName_List_Int64** %"$t_gep_369", align 8
  %t = alloca %TName_List_Int64*, align 8
  store %TName_List_Int64* %"$t_load_370", %TName_List_Int64** %t, align 8
  %"$gasrem_371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_372" = icmp ugt i64 1, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %"$Cons_365"
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %"$Cons_365"
  %"$consume_375" = sub i64 %"$gasrem_371", 1
  store i64 %"$consume_375", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %res, metadata !111, metadata !DIExpression()), !dbg !114
  %"$gasrem_376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_377" = icmp ugt i64 1, %"$gasrem_376"
  br i1 %"$gascmp_377", label %"$out_of_gas_378", label %"$have_gas_379"

"$out_of_gas_378":                                ; preds = %"$have_gas_374"
  call void @_out_of_gas()
  br label %"$have_gas_379"

"$have_gas_379":                                  ; preds = %"$out_of_gas_378", %"$have_gas_374"
  %"$consume_380" = sub i64 %"$gasrem_376", 1
  store i64 %"$consume_380", i64* @_gasrem, align 8
  %"$f_6" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$f_381" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_382" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_381", 0
  %"$f_envptr_383" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_381", 1
  %"$z_384" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_385" = call { %Uint32 (i8*, %Int64)*, i8* } %"$f_fptr_382"(i8* %"$f_envptr_383", %Uint32 %"$z_384"), !dbg !115
  store { %Uint32 (i8*, %Int64)*, i8* } %"$f_call_385", { %Uint32 (i8*, %Int64)*, i8* }* %"$f_6", align 8, !dbg !115
  %"$f_7" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$f_7", metadata !116, metadata !DIExpression()), !dbg !115
  %"$$f_6_386" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$f_6", align 8
  %"$$f_6_fptr_387" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_6_386", 0
  %"$$f_6_envptr_388" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_6_386", 1
  %"$h_389" = load %Int64, %Int64* %h, align 8
  %"$$f_6_call_390" = call %Uint32 %"$$f_6_fptr_387"(i8* %"$$f_6_envptr_388", %Int64 %"$h_389"), !dbg !115
  store %Uint32 %"$$f_6_call_390", %Uint32* %"$f_7", align 4, !dbg !115
  %"$$f_7_391" = load %Uint32, %Uint32* %"$f_7", align 4
  store %Uint32 %"$$f_7_391", %Uint32* %res, align 4, !dbg !115
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 1, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %"$have_gas_379"
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %"$have_gas_379"
  %"$consume_396" = sub i64 %"$gasrem_392", 1
  store i64 %"$consume_396", i64* @_gasrem, align 8
  %"$g_8" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$g_397" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_398" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_397", 0
  %"$g_envptr_399" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_397", 1
  %"$res_400" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_401" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_fptr_398"(i8* %"$g_envptr_399", %Uint32 %"$res_400"), !dbg !117
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_call_401", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_8", align 8, !dbg !117
  %"$g_9" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$g_9", metadata !118, metadata !DIExpression()), !dbg !117
  %"$$g_8_402" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_8", align 8
  %"$$g_8_fptr_403" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_8_402", 0
  %"$$g_8_envptr_404" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_8_402", 1
  %"$t_405" = load %TName_List_Int64*, %TName_List_Int64** %t, align 8
  %"$$g_8_call_406" = call %Uint32 %"$$g_8_fptr_403"(i8* %"$$g_8_envptr_404", %TName_List_Int64* %"$t_405"), !dbg !117
  store %Uint32 %"$$g_8_call_406", %Uint32* %"$g_9", align 4, !dbg !117
  %"$$g_9_407" = load %Uint32, %Uint32* %"$g_9", align 4
  store %Uint32 %"$$g_9_407", %Uint32* %"$retval_35", align 4, !dbg !117
  br label %"$matchsucc_361"

"$Nil_408":                                       ; preds = %"$have_gas_359"
  %"$l_409" = bitcast %TName_List_Int64* %1 to %CName_Nil_Int64*
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$Nil_408"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$Nil_408"
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  %"$z_415" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_415", %Uint32* %"$retval_35", align 4, !dbg !119
  br label %"$matchsucc_361"

"$empty_default_364":                             ; preds = %"$have_gas_359"
  br label %"$matchsucc_361"

"$matchsucc_361":                                 ; preds = %"$have_gas_413", %"$have_gas_395", %"$empty_default_364"
  %"$$retval_35_416" = load %Uint32, %Uint32* %"$retval_35", align 4
  ret %Uint32 %"$$retval_35_416"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_32"(%"$$fundef_32_env_153"* %0, %Uint32 %1) !dbg !121 {
entry:
  %"$z_349" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$z_349", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$z_349", metadata !122, metadata !DIExpression()), !dbg !123
  %"$$fundef_32_env_f_325" = getelementptr inbounds %"$$fundef_32_env_153", %"$$fundef_32_env_153"* %0, i32 0, i32 0
  %"$f_envload_326" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_32_env_f_325", align 8
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_326", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_32_env_g_327" = getelementptr inbounds %"$$fundef_32_env_153", %"$$fundef_32_env_153"* %0, i32 0, i32 1
  %"$g_envload_328" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_32_env_g_327", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_328", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_33" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_330" = icmp ugt i64 1, %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %entry
  %"$consume_333" = sub i64 %"$gasrem_329", 1
  store i64 %"$consume_333", i64* @_gasrem, align 8
  %"$gasrem_334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_335" = icmp ugt i64 1, %"$gasrem_334"
  br i1 %"$gascmp_335", label %"$out_of_gas_336", label %"$have_gas_337"

"$out_of_gas_336":                                ; preds = %"$have_gas_332"
  call void @_out_of_gas()
  br label %"$have_gas_337"

"$have_gas_337":                                  ; preds = %"$out_of_gas_336", %"$have_gas_332"
  %"$consume_338" = sub i64 %"$gasrem_334", 1
  store i64 %"$consume_338", i64* @_gasrem, align 8
  %"$$fundef_34_envp_339_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_34_envp_339_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_339_load", i64 40)
  %"$$fundef_34_envp_339" = bitcast i8* %"$$fundef_34_envp_339_salloc" to %"$$fundef_34_env_152"*
  %"$$fundef_34_env_voidp_341" = bitcast %"$$fundef_34_env_152"* %"$$fundef_34_envp_339" to i8*
  %"$$fundef_34_cloval_342" = insertvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } { %Uint32 (i8*, %TName_List_Int64*)* bitcast (%Uint32 (%"$$fundef_34_env_152"*, %TName_List_Int64*)* @"$fundef_34" to %Uint32 (i8*, %TName_List_Int64*)*), i8* undef }, i8* %"$$fundef_34_env_voidp_341", 1
  %"$$fundef_34_env_f_343" = getelementptr inbounds %"$$fundef_34_env_152", %"$$fundef_34_env_152"* %"$$fundef_34_envp_339", i32 0, i32 0
  %"$f_344" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_344", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_f_343", align 8
  %"$$fundef_34_env_g_345" = getelementptr inbounds %"$$fundef_34_env_152", %"$$fundef_34_env_152"* %"$$fundef_34_envp_339", i32 0, i32 1
  %"$g_346" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_346", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_g_345", align 8
  %"$$fundef_34_env_z_347" = getelementptr inbounds %"$$fundef_34_env_152", %"$$fundef_34_env_152"* %"$$fundef_34_envp_339", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_34_env_z_347", align 4
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$fundef_34_cloval_342", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_33", align 8, !dbg !124
  %"$$retval_33_348" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_33", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_33_348"
}

define internal { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_30"(%"$$fundef_30_env_154"* %0, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !125 {
entry:
  %"$retval_31" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_312" = icmp ugt i64 1, %"$gasrem_311"
  br i1 %"$gascmp_312", label %"$out_of_gas_313", label %"$have_gas_314"

"$out_of_gas_313":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_314"

"$have_gas_314":                                  ; preds = %"$out_of_gas_313", %entry
  %"$consume_315" = sub i64 %"$gasrem_311", 1
  store i64 %"$consume_315", i64* @_gasrem, align 8
  %"$$fundef_32_envp_316_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_32_envp_316_salloc" = call i8* @_salloc(i8* %"$$fundef_32_envp_316_load", i64 32)
  %"$$fundef_32_envp_316" = bitcast i8* %"$$fundef_32_envp_316_salloc" to %"$$fundef_32_env_153"*
  %"$$fundef_32_env_voidp_318" = bitcast %"$$fundef_32_env_153"* %"$$fundef_32_envp_316" to i8*
  %"$$fundef_32_cloval_319" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_32_env_153"*, %Uint32)* @"$fundef_32" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_32_env_voidp_318", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_32_cloval_319", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !126
  %"$$fundef_32_env_f_320" = getelementptr inbounds %"$$fundef_32_env_153", %"$$fundef_32_env_153"* %"$$fundef_32_envp_316", i32 0, i32 0
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_32_env_f_320", align 8
  %"$$fundef_32_env_g_321" = getelementptr inbounds %"$$fundef_32_env_153", %"$$fundef_32_env_153"* %"$$fundef_32_envp_316", i32 0, i32 1
  %"$g_322" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_322", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_32_env_g_321", align 8
  %"$g_323" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_323", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_31", align 8, !dbg !126
  %"$$retval_31_324" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_31", align 8
  ret { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_31_324"
}

define internal { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_28"(%"$$fundef_28_env_155"* %0) !dbg !127 {
entry:
  %"$retval_29" = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 1, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %entry
  %"$consume_306" = sub i64 %"$gasrem_302", 1
  store i64 %"$consume_306", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_30_env_154"*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_30" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_29", align 8, !dbg !128
  %"$$retval_29_310" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_29", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_29_310"
}

define internal { i8*, i8* }* @"$fundef_26"(%"$$fundef_26_env_156"* %0) !dbg !129 {
entry:
  %"$retval_27" = alloca { i8*, i8* }*, align 8
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 1, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %entry
  %"$consume_294" = sub i64 %"$gasrem_290", 1
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %"$dyndisp_table_298_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_298_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_298_salloc_load", i64 48)
  %"$dyndisp_table_298_salloc" = bitcast i8* %"$dyndisp_table_298_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_298" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_298_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_299" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_298", i32 1
  %"$dyndisp_pcast_300" = bitcast { i8*, i8* }* %"$dyndisp_gep_299" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_28_env_155"*)* @"$fundef_28" to { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_300", align 8
  store { i8*, i8* }* %"$dyndisp_table_298", { i8*, i8* }** %"$retval_27", align 8, !dbg !130
  %"$$retval_27_301" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_27", align 8
  ret { i8*, i8* }* %"$$retval_27_301"
}

define internal %Uint32 @"$fundef_24"(%"$$fundef_24_env_157"* %0, %TName_List_Int32* %1) !dbg !131 {
entry:
  %"$l_289" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %1, %TName_List_Int32** %"$l_289", align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %"$l_289", metadata !132, metadata !DIExpression()), !dbg !133
  %"$$fundef_24_env_f_222" = getelementptr inbounds %"$$fundef_24_env_157", %"$$fundef_24_env_157"* %0, i32 0, i32 0
  %"$f_envload_223" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_f_222", align 8
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_223", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_24_env_g_224" = getelementptr inbounds %"$$fundef_24_env_157", %"$$fundef_24_env_157"* %0, i32 0, i32 1
  %"$g_envload_225" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_g_224", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_225", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_24_env_z_226" = getelementptr inbounds %"$$fundef_24_env_157", %"$$fundef_24_env_157"* %0, i32 0, i32 2
  %"$z_envload_227" = load %Uint32, %Uint32* %"$$fundef_24_env_z_226", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_227", %Uint32* %z, align 4
  %"$retval_25" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_25", metadata !134, metadata !DIExpression()), !dbg !135
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 2, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %entry
  %"$consume_232" = sub i64 %"$gasrem_228", 2
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %"$l_tag_234" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %1, i32 0, i32 0
  %"$l_tag_235" = load i8, i8* %"$l_tag_234", align 1
  switch i8 %"$l_tag_235", label %"$empty_default_236" [
    i8 0, label %"$Cons_237"
    i8 1, label %"$Nil_280"
  ], !dbg !135

"$Cons_237":                                      ; preds = %"$have_gas_231"
  %"$l_238" = bitcast %TName_List_Int32* %1 to %CName_Cons_Int32*
  %"$h_gep_239" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_238", i32 0, i32 1
  %"$h_load_240" = load %Int32, %Int32* %"$h_gep_239", align 4
  %h = alloca %Int32, align 8
  store %Int32 %"$h_load_240", %Int32* %h, align 4
  %"$t_gep_241" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_238", i32 0, i32 2
  %"$t_load_242" = load %TName_List_Int32*, %TName_List_Int32** %"$t_gep_241", align 8
  %t = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$t_load_242", %TName_List_Int32** %t, align 8
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$Cons_237"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$Cons_237"
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %res, metadata !136, metadata !DIExpression()), !dbg !139
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_246"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %"$f_6" = alloca { %Uint32 (i8*, %Int32)*, i8* }, align 8
  %"$f_253" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_254" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_253", 0
  %"$f_envptr_255" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_253", 1
  %"$z_256" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_257" = call { %Uint32 (i8*, %Int32)*, i8* } %"$f_fptr_254"(i8* %"$f_envptr_255", %Uint32 %"$z_256"), !dbg !140
  store { %Uint32 (i8*, %Int32)*, i8* } %"$f_call_257", { %Uint32 (i8*, %Int32)*, i8* }* %"$f_6", align 8, !dbg !140
  %"$f_7" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$f_7", metadata !141, metadata !DIExpression()), !dbg !140
  %"$$f_6_258" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$f_6", align 8
  %"$$f_6_fptr_259" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_6_258", 0
  %"$$f_6_envptr_260" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_6_258", 1
  %"$h_261" = load %Int32, %Int32* %h, align 4
  %"$$f_6_call_262" = call %Uint32 %"$$f_6_fptr_259"(i8* %"$$f_6_envptr_260", %Int32 %"$h_261"), !dbg !140
  store %Uint32 %"$$f_6_call_262", %Uint32* %"$f_7", align 4, !dbg !140
  %"$$f_7_263" = load %Uint32, %Uint32* %"$f_7", align 4
  store %Uint32 %"$$f_7_263", %Uint32* %res, align 4, !dbg !140
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_251"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %"$g_8" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$g_269" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_270" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_269", 0
  %"$g_envptr_271" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_269", 1
  %"$res_272" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_273" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_fptr_270"(i8* %"$g_envptr_271", %Uint32 %"$res_272"), !dbg !142
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_call_273", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_8", align 8, !dbg !142
  %"$g_9" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$g_9", metadata !143, metadata !DIExpression()), !dbg !142
  %"$$g_8_274" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_8", align 8
  %"$$g_8_fptr_275" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_8_274", 0
  %"$$g_8_envptr_276" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_8_274", 1
  %"$t_277" = load %TName_List_Int32*, %TName_List_Int32** %t, align 8
  %"$$g_8_call_278" = call %Uint32 %"$$g_8_fptr_275"(i8* %"$$g_8_envptr_276", %TName_List_Int32* %"$t_277"), !dbg !142
  store %Uint32 %"$$g_8_call_278", %Uint32* %"$g_9", align 4, !dbg !142
  %"$$g_9_279" = load %Uint32, %Uint32* %"$g_9", align 4
  store %Uint32 %"$$g_9_279", %Uint32* %"$retval_25", align 4, !dbg !142
  br label %"$matchsucc_233"

"$Nil_280":                                       ; preds = %"$have_gas_231"
  %"$l_281" = bitcast %TName_List_Int32* %1 to %CName_Nil_Int32*
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 1, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$Nil_280"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$Nil_280"
  %"$consume_286" = sub i64 %"$gasrem_282", 1
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %"$z_287" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_287", %Uint32* %"$retval_25", align 4, !dbg !144
  br label %"$matchsucc_233"

"$empty_default_236":                             ; preds = %"$have_gas_231"
  br label %"$matchsucc_233"

"$matchsucc_233":                                 ; preds = %"$have_gas_285", %"$have_gas_267", %"$empty_default_236"
  %"$$retval_25_288" = load %Uint32, %Uint32* %"$retval_25", align 4
  ret %Uint32 %"$$retval_25_288"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_22"(%"$$fundef_22_env_158"* %0, %Uint32 %1) !dbg !146 {
entry:
  %"$z_221" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$z_221", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$z_221", metadata !147, metadata !DIExpression()), !dbg !148
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
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$fundef_24_cloval_214", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_23", align 8, !dbg !149
  %"$$retval_23_220" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_23", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_23_220"
}

define internal { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_20"(%"$$fundef_20_env_159"* %0, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !150 {
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
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_22_cloval_191", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !151
  %"$$fundef_22_env_f_192" = getelementptr inbounds %"$$fundef_22_env_158", %"$$fundef_22_env_158"* %"$$fundef_22_envp_188", i32 0, i32 0
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_22_env_f_192", align 8
  %"$$fundef_22_env_g_193" = getelementptr inbounds %"$$fundef_22_env_158", %"$$fundef_22_env_158"* %"$$fundef_22_envp_188", i32 0, i32 1
  %"$g_194" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_194", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_22_env_g_193", align 8
  %"$g_195" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_195", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_21", align 8, !dbg !151
  %"$$retval_21_196" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_21", align 8
  ret { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_21_196"
}

define internal { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_18"(%"$$fundef_18_env_160"* %0) !dbg !152 {
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
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_20_env_159"*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_20" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_19", align 8, !dbg !153
  %"$$retval_19_182" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_19", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_19_182"
}

define internal { i8*, i8* }* @"$fundef_16"(%"$$fundef_16_env_161"* %0) !dbg !154 {
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
  store { i8*, i8* }* %"$dyndisp_table_170", { i8*, i8* }** %"$retval_17", align 8, !dbg !155
  %"$$retval_17_173" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_17", align 8
  ret { i8*, i8* }* %"$$retval_17_173"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() !dbg !156 {
entry:
  %"$gasrem_806" = load i64, i64* @_gasrem, align 8
  %"$gascmp_807" = icmp ugt i64 5, %"$gasrem_806"
  br i1 %"$gascmp_807", label %"$out_of_gas_808", label %"$have_gas_809"

"$out_of_gas_808":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_809"

"$have_gas_809":                                  ; preds = %"$out_of_gas_808", %entry
  %"$consume_810" = sub i64 %"$gasrem_806", 5
  store i64 %"$consume_810", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !158
  %"$gasrem_811" = load i64, i64* @_gasrem, align 8
  %"$gascmp_812" = icmp ugt i64 8, %"$gasrem_811"
  br i1 %"$gascmp_812", label %"$out_of_gas_813", label %"$have_gas_814"

"$out_of_gas_813":                                ; preds = %"$have_gas_809"
  call void @_out_of_gas()
  br label %"$have_gas_814"

"$have_gas_814":                                  ; preds = %"$out_of_gas_813", %"$have_gas_809"
  %"$consume_815" = sub i64 %"$gasrem_811", 8
  store i64 %"$consume_815", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !158
  %"$gasrem_816" = load i64, i64* @_gasrem, align 8
  %"$gascmp_817" = icmp ugt i64 196, %"$gasrem_816"
  br i1 %"$gascmp_817", label %"$out_of_gas_818", label %"$have_gas_819"

"$out_of_gas_818":                                ; preds = %"$have_gas_814"
  call void @_out_of_gas()
  br label %"$have_gas_819"

"$have_gas_819":                                  ; preds = %"$out_of_gas_818", %"$have_gas_814"
  %"$consume_820" = sub i64 %"$gasrem_816", 196
  store i64 %"$consume_820", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !158
  %"$gasrem_821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_822" = icmp ugt i64 19, %"$gasrem_821"
  br i1 %"$gascmp_822", label %"$out_of_gas_823", label %"$have_gas_824"

"$out_of_gas_823":                                ; preds = %"$have_gas_819"
  call void @_out_of_gas()
  br label %"$have_gas_824"

"$have_gas_824":                                  ; preds = %"$out_of_gas_823", %"$have_gas_819"
  %"$consume_825" = sub i64 %"$gasrem_821", 19
  store i64 %"$consume_825", i64* @_gasrem, align 8
  store %Int32 { i32 19 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !158
  %"$gasrem_826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_827" = icmp ugt i64 1, %"$gasrem_826"
  br i1 %"$gascmp_827", label %"$out_of_gas_828", label %"$have_gas_829"

"$out_of_gas_828":                                ; preds = %"$have_gas_824"
  call void @_out_of_gas()
  br label %"$have_gas_829"

"$have_gas_829":                                  ; preds = %"$out_of_gas_828", %"$have_gas_824"
  %"$consume_830" = sub i64 %"$gasrem_826", 1
  store i64 %"$consume_830", i64* @_gasrem, align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  %"$dyndisp_table_837_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_837_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_837_salloc_load", i64 48)
  %"$dyndisp_table_837_salloc" = bitcast i8* %"$dyndisp_table_837_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_837" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_837_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_838" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_837", i32 0
  %"$dyndisp_pcast_839" = bitcast { i8*, i8* }* %"$dyndisp_gep_838" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_16_env_161"*)* @"$fundef_16" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_839", align 8
  %"$dyndisp_gep_840" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_837", i32 2
  %"$dyndisp_pcast_841" = bitcast { i8*, i8* }* %"$dyndisp_gep_840" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_26_env_156"*)* @"$fundef_26" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_841", align 8
  store { i8*, i8* }* %"$dyndisp_table_837", { i8*, i8* }** %list_foldl, align 8, !dbg !159
  %"$$fundef_36_envp_842_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_36_envp_842_salloc" = call i8* @_salloc(i8* %"$$fundef_36_envp_842_load", i64 8)
  %"$$fundef_36_envp_842" = bitcast i8* %"$$fundef_36_envp_842_salloc" to %"$$fundef_36_env_151"*
  %"$$fundef_36_env_voidp_844" = bitcast %"$$fundef_36_env_151"* %"$$fundef_36_envp_842" to i8*
  %"$$fundef_36_cloval_845" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_36_env_151"*)* @"$fundef_36" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_36_env_voidp_844", 1
  %"$$fundef_36_env_list_foldl_846" = getelementptr inbounds %"$$fundef_36_env_151", %"$$fundef_36_env_151"* %"$$fundef_36_envp_842", i32 0, i32 0
  %"$list_foldl_847" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  store { i8*, i8* }* %"$list_foldl_847", { i8*, i8* }** %"$$fundef_36_env_list_foldl_846", align 8
  %"$$fundef_42_env_voidp_849" = bitcast %"$$fundef_36_env_151"* %"$$fundef_36_envp_842" to i8*
  %"$$fundef_42_cloval_850" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_42_env_148"*)* @"$fundef_42" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_42_env_voidp_849", 1
  %"$dyndisp_table_851_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_851_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_851_salloc_load", i64 48)
  %"$dyndisp_table_851_salloc" = bitcast i8* %"$dyndisp_table_851_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_851" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_851_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_852" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_851", i32 0
  %"$dyndisp_pcast_853" = bitcast { i8*, i8* }* %"$dyndisp_gep_852" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$$fundef_36_cloval_845", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_853", align 8
  %"$dyndisp_gep_854" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_851", i32 2
  %"$dyndisp_pcast_855" = bitcast { i8*, i8* }* %"$dyndisp_gep_854" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$$fundef_42_cloval_850", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_855", align 8
  store { i8*, i8* }* %"$dyndisp_table_851", { i8*, i8* }** @ListUtils.list_length, align 8, !dbg !160
  %"$gasrem_856" = load i64, i64* @_gasrem, align 8
  %"$gascmp_857" = icmp ugt i64 12, %"$gasrem_856"
  br i1 %"$gascmp_857", label %"$out_of_gas_858", label %"$have_gas_859"

"$out_of_gas_858":                                ; preds = %"$have_gas_829"
  call void @_out_of_gas()
  br label %"$have_gas_859"

"$have_gas_859":                                  ; preds = %"$out_of_gas_858", %"$have_gas_829"
  %"$consume_860" = sub i64 %"$gasrem_856", 12
  store i64 %"$consume_860", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !158
  %"$gasrem_861" = load i64, i64* @_gasrem, align 8
  %"$gascmp_862" = icmp ugt i64 2, %"$gasrem_861"
  br i1 %"$gascmp_862", label %"$out_of_gas_863", label %"$have_gas_864"

"$out_of_gas_863":                                ; preds = %"$have_gas_859"
  call void @_out_of_gas()
  br label %"$have_gas_864"

"$have_gas_864":                                  ; preds = %"$out_of_gas_863", %"$have_gas_859"
  %"$consume_865" = sub i64 %"$gasrem_861", 2
  store i64 %"$consume_865", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !158
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !161 {
entry:
  %"$expr_48" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$expr_48", metadata !162, metadata !DIExpression()), !dbg !163
  %"$gasrem_866" = load i64, i64* @_gasrem, align 8
  %"$gascmp_867" = icmp ugt i64 1, %"$gasrem_866"
  br i1 %"$gascmp_867", label %"$out_of_gas_868", label %"$have_gas_869"

"$out_of_gas_868":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_869"

"$have_gas_869":                                  ; preds = %"$out_of_gas_868", %entry
  %"$consume_870" = sub i64 %"$gasrem_866", 1
  store i64 %"$consume_870", i64* @_gasrem, align 8
  %t1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_872" = icmp ugt i64 1, %"$gasrem_871"
  br i1 %"$gascmp_872", label %"$out_of_gas_873", label %"$have_gas_874"

"$out_of_gas_873":                                ; preds = %"$have_gas_869"
  call void @_out_of_gas()
  br label %"$have_gas_874"

"$have_gas_874":                                  ; preds = %"$out_of_gas_873", %"$have_gas_869"
  %"$consume_875" = sub i64 %"$gasrem_871", 1
  store i64 %"$consume_875", i64* @_gasrem, align 8
  %"$dyndisp_table_882_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_882_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_882_salloc_load", i64 48)
  %"$dyndisp_table_882_salloc" = bitcast i8* %"$dyndisp_table_882_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_882" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_882_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_883" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_882", i32 0
  %"$dyndisp_pcast_884" = bitcast { i8*, i8* }* %"$dyndisp_gep_883" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_49_env_145"*)* @"$fundef_49" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_884", align 8
  %"$dyndisp_gep_885" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_882", i32 2
  %"$dyndisp_pcast_886" = bitcast { i8*, i8* }* %"$dyndisp_gep_885" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_53_env_143"*)* @"$fundef_53" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_886", align 8
  store { i8*, i8* }* %"$dyndisp_table_882", { i8*, i8* }** %t1, align 8, !dbg !163
  %"$gasrem_887" = load i64, i64* @_gasrem, align 8
  %"$gascmp_888" = icmp ugt i64 1, %"$gasrem_887"
  br i1 %"$gascmp_888", label %"$out_of_gas_889", label %"$have_gas_890"

"$out_of_gas_889":                                ; preds = %"$have_gas_874"
  call void @_out_of_gas()
  br label %"$have_gas_890"

"$have_gas_890":                                  ; preds = %"$out_of_gas_889", %"$have_gas_874"
  %"$consume_891" = sub i64 %"$gasrem_887", 1
  store i64 %"$consume_891", i64* @_gasrem, align 8
  %t2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_892" = load i64, i64* @_gasrem, align 8
  %"$gascmp_893" = icmp ugt i64 1, %"$gasrem_892"
  br i1 %"$gascmp_893", label %"$out_of_gas_894", label %"$have_gas_895"

"$out_of_gas_894":                                ; preds = %"$have_gas_890"
  call void @_out_of_gas()
  br label %"$have_gas_895"

"$have_gas_895":                                  ; preds = %"$out_of_gas_894", %"$have_gas_890"
  %"$consume_896" = sub i64 %"$gasrem_892", 1
  store i64 %"$consume_896", i64* @_gasrem, align 8
  %"$dyndisp_table_903_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_903_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_903_salloc_load", i64 48)
  %"$dyndisp_table_903_salloc" = bitcast i8* %"$dyndisp_table_903_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_903" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_903_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_904" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_903", i32 0
  %"$dyndisp_pcast_905" = bitcast { i8*, i8* }* %"$dyndisp_gep_904" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_57_env_141"*)* @"$fundef_57" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_905", align 8
  %"$dyndisp_gep_906" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_903", i32 2
  %"$dyndisp_pcast_907" = bitcast { i8*, i8* }* %"$dyndisp_gep_906" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_61_env_139"*)* @"$fundef_61" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_907", align 8
  store { i8*, i8* }* %"$dyndisp_table_903", { i8*, i8* }** %t2, align 8, !dbg !164
  %"$gasrem_908" = load i64, i64* @_gasrem, align 8
  %"$gascmp_909" = icmp ugt i64 1, %"$gasrem_908"
  br i1 %"$gascmp_909", label %"$out_of_gas_910", label %"$have_gas_911"

"$out_of_gas_910":                                ; preds = %"$have_gas_895"
  call void @_out_of_gas()
  br label %"$have_gas_911"

"$have_gas_911":                                  ; preds = %"$out_of_gas_910", %"$have_gas_895"
  %"$consume_912" = sub i64 %"$gasrem_908", 1
  store i64 %"$consume_912", i64* @_gasrem, align 8
  %some_bool = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %some_bool, metadata !165, metadata !DIExpression()), !dbg !168
  %"$gasrem_913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_914" = icmp ugt i64 1, %"$gasrem_913"
  br i1 %"$gascmp_914", label %"$out_of_gas_915", label %"$have_gas_916"

"$out_of_gas_915":                                ; preds = %"$have_gas_911"
  call void @_out_of_gas()
  br label %"$have_gas_916"

"$have_gas_916":                                  ; preds = %"$out_of_gas_915", %"$have_gas_911"
  %"$consume_917" = sub i64 %"$gasrem_913", 1
  store i64 %"$consume_917", i64* @_gasrem, align 8
  %"$adtval_918_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_918_salloc" = call i8* @_salloc(i8* %"$adtval_918_load", i64 1)
  %"$adtval_918" = bitcast i8* %"$adtval_918_salloc" to %CName_True*
  %"$adtgep_919" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_918", i32 0, i32 0
  store i8 0, i8* %"$adtgep_919", align 1
  %"$adtptr_920" = bitcast %CName_True* %"$adtval_918" to %TName_Bool*
  store %TName_Bool* %"$adtptr_920", %TName_Bool** %some_bool, align 8, !dbg !169
  %"$gasrem_921" = load i64, i64* @_gasrem, align 8
  %"$gascmp_922" = icmp ugt i64 1, %"$gasrem_921"
  br i1 %"$gascmp_922", label %"$out_of_gas_923", label %"$have_gas_924"

"$out_of_gas_923":                                ; preds = %"$have_gas_916"
  call void @_out_of_gas()
  br label %"$have_gas_924"

"$have_gas_924":                                  ; preds = %"$out_of_gas_923", %"$have_gas_916"
  %"$consume_925" = sub i64 %"$gasrem_921", 1
  store i64 %"$consume_925", i64* @_gasrem, align 8
  %f = alloca { i8*, i8* }*, align 8
  %"$gasrem_926" = load i64, i64* @_gasrem, align 8
  %"$gascmp_927" = icmp ugt i64 2, %"$gasrem_926"
  br i1 %"$gascmp_927", label %"$out_of_gas_928", label %"$have_gas_929"

"$out_of_gas_928":                                ; preds = %"$have_gas_924"
  call void @_out_of_gas()
  br label %"$have_gas_929"

"$have_gas_929":                                  ; preds = %"$out_of_gas_928", %"$have_gas_924"
  %"$consume_930" = sub i64 %"$gasrem_926", 2
  store i64 %"$consume_930", i64* @_gasrem, align 8
  %"$some_bool_932" = load %TName_Bool*, %TName_Bool** %some_bool, align 8
  %"$some_bool_tag_933" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool_932", i32 0, i32 0
  %"$some_bool_tag_934" = load i8, i8* %"$some_bool_tag_933", align 1
  switch i8 %"$some_bool_tag_934", label %"$empty_default_935" [
    i8 0, label %"$True_936"
    i8 1, label %"$False_944"
  ], !dbg !170

"$True_936":                                      ; preds = %"$have_gas_929"
  %"$some_bool_937" = bitcast %TName_Bool* %"$some_bool_932" to %CName_True*
  %"$gasrem_938" = load i64, i64* @_gasrem, align 8
  %"$gascmp_939" = icmp ugt i64 1, %"$gasrem_938"
  br i1 %"$gascmp_939", label %"$out_of_gas_940", label %"$have_gas_941"

"$out_of_gas_940":                                ; preds = %"$True_936"
  call void @_out_of_gas()
  br label %"$have_gas_941"

"$have_gas_941":                                  ; preds = %"$out_of_gas_940", %"$True_936"
  %"$consume_942" = sub i64 %"$gasrem_938", 1
  store i64 %"$consume_942", i64* @_gasrem, align 8
  %"$t2_943" = load { i8*, i8* }*, { i8*, i8* }** %t2, align 8
  store { i8*, i8* }* %"$t2_943", { i8*, i8* }** %f, align 8, !dbg !171
  br label %"$matchsucc_931"

"$False_944":                                     ; preds = %"$have_gas_929"
  %"$some_bool_945" = bitcast %TName_Bool* %"$some_bool_932" to %CName_False*
  %"$gasrem_946" = load i64, i64* @_gasrem, align 8
  %"$gascmp_947" = icmp ugt i64 1, %"$gasrem_946"
  br i1 %"$gascmp_947", label %"$out_of_gas_948", label %"$have_gas_949"

"$out_of_gas_948":                                ; preds = %"$False_944"
  call void @_out_of_gas()
  br label %"$have_gas_949"

"$have_gas_949":                                  ; preds = %"$out_of_gas_948", %"$False_944"
  %"$consume_950" = sub i64 %"$gasrem_946", 1
  store i64 %"$consume_950", i64* @_gasrem, align 8
  %"$t1_951" = load { i8*, i8* }*, { i8*, i8* }** %t1, align 8
  store { i8*, i8* }* %"$t1_951", { i8*, i8* }** %f, align 8, !dbg !174
  br label %"$matchsucc_931"

"$empty_default_935":                             ; preds = %"$have_gas_929"
  br label %"$matchsucc_931"

"$matchsucc_931":                                 ; preds = %"$have_gas_949", %"$have_gas_941", %"$empty_default_935"
  %"$gasrem_952" = load i64, i64* @_gasrem, align 8
  %"$gascmp_953" = icmp ugt i64 1, %"$gasrem_952"
  br i1 %"$gascmp_953", label %"$out_of_gas_954", label %"$have_gas_955"

"$out_of_gas_954":                                ; preds = %"$matchsucc_931"
  call void @_out_of_gas()
  br label %"$have_gas_955"

"$have_gas_955":                                  ; preds = %"$out_of_gas_954", %"$matchsucc_931"
  %"$consume_956" = sub i64 %"$gasrem_952", 1
  store i64 %"$consume_956", i64* @_gasrem, align 8
  %some_bool2 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %some_bool2, metadata !176, metadata !DIExpression()), !dbg !177
  %"$gasrem_957" = load i64, i64* @_gasrem, align 8
  %"$gascmp_958" = icmp ugt i64 1, %"$gasrem_957"
  br i1 %"$gascmp_958", label %"$out_of_gas_959", label %"$have_gas_960"

"$out_of_gas_959":                                ; preds = %"$have_gas_955"
  call void @_out_of_gas()
  br label %"$have_gas_960"

"$have_gas_960":                                  ; preds = %"$out_of_gas_959", %"$have_gas_955"
  %"$consume_961" = sub i64 %"$gasrem_957", 1
  store i64 %"$consume_961", i64* @_gasrem, align 8
  %"$adtval_962_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_962_salloc" = call i8* @_salloc(i8* %"$adtval_962_load", i64 1)
  %"$adtval_962" = bitcast i8* %"$adtval_962_salloc" to %CName_False*
  %"$adtgep_963" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_962", i32 0, i32 0
  store i8 1, i8* %"$adtgep_963", align 1
  %"$adtptr_964" = bitcast %CName_False* %"$adtval_962" to %TName_Bool*
  store %TName_Bool* %"$adtptr_964", %TName_Bool** %some_bool2, align 8, !dbg !178
  %"$gasrem_965" = load i64, i64* @_gasrem, align 8
  %"$gascmp_966" = icmp ugt i64 2, %"$gasrem_965"
  br i1 %"$gascmp_966", label %"$out_of_gas_967", label %"$have_gas_968"

"$out_of_gas_967":                                ; preds = %"$have_gas_960"
  call void @_out_of_gas()
  br label %"$have_gas_968"

"$have_gas_968":                                  ; preds = %"$out_of_gas_967", %"$have_gas_960"
  %"$consume_969" = sub i64 %"$gasrem_965", 2
  store i64 %"$consume_969", i64* @_gasrem, align 8
  %"$some_bool2_971" = load %TName_Bool*, %TName_Bool** %some_bool2, align 8
  %"$some_bool2_tag_972" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool2_971", i32 0, i32 0
  %"$some_bool2_tag_973" = load i8, i8* %"$some_bool2_tag_972", align 1
  switch i8 %"$some_bool2_tag_973", label %"$empty_default_974" [
    i8 0, label %"$True_975"
    i8 1, label %"$False_1048"
  ], !dbg !179

"$True_975":                                      ; preds = %"$have_gas_968"
  %"$some_bool2_976" = bitcast %TName_Bool* %"$some_bool2_971" to %CName_True*
  %"$gasrem_977" = load i64, i64* @_gasrem, align 8
  %"$gascmp_978" = icmp ugt i64 1, %"$gasrem_977"
  br i1 %"$gascmp_978", label %"$out_of_gas_979", label %"$have_gas_980"

"$out_of_gas_979":                                ; preds = %"$True_975"
  call void @_out_of_gas()
  br label %"$have_gas_980"

"$have_gas_980":                                  ; preds = %"$out_of_gas_979", %"$True_975"
  %"$consume_981" = sub i64 %"$gasrem_977", 1
  store i64 %"$consume_981", i64* @_gasrem, align 8
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_982" = load i64, i64* @_gasrem, align 8
  %"$gascmp_983" = icmp ugt i64 1, %"$gasrem_982"
  br i1 %"$gascmp_983", label %"$out_of_gas_984", label %"$have_gas_985"

"$out_of_gas_984":                                ; preds = %"$have_gas_980"
  call void @_out_of_gas()
  br label %"$have_gas_985"

"$have_gas_985":                                  ; preds = %"$out_of_gas_984", %"$have_gas_980"
  %"$consume_986" = sub i64 %"$gasrem_982", 1
  store i64 %"$consume_986", i64* @_gasrem, align 8
  %"$f_987" = load { i8*, i8* }*, { i8*, i8* }** %f, align 8
  %"$f_988" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_987", i32 0
  %"$f_989" = bitcast { i8*, i8* }* %"$f_988" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_990" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_989", align 8
  %"$f_fptr_991" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_990", 0
  %"$f_envptr_992" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_990", 1
  %"$f_call_993" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_991"(i8* %"$f_envptr_992"), !dbg !180
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_993", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8, !dbg !183
  %"$gasrem_994" = load i64, i64* @_gasrem, align 8
  %"$gascmp_995" = icmp ugt i64 1, %"$gasrem_994"
  br i1 %"$gascmp_995", label %"$out_of_gas_996", label %"$have_gas_997"

"$out_of_gas_996":                                ; preds = %"$have_gas_985"
  call void @_out_of_gas()
  br label %"$have_gas_997"

"$have_gas_997":                                  ; preds = %"$out_of_gas_996", %"$have_gas_985"
  %"$consume_998" = sub i64 %"$gasrem_994", 1
  store i64 %"$consume_998", i64* @_gasrem, align 8
  %len = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_999" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1000" = icmp ugt i64 1, %"$gasrem_999"
  br i1 %"$gascmp_1000", label %"$out_of_gas_1001", label %"$have_gas_1002"

"$out_of_gas_1001":                               ; preds = %"$have_gas_997"
  call void @_out_of_gas()
  br label %"$have_gas_1002"

"$have_gas_1002":                                 ; preds = %"$out_of_gas_1001", %"$have_gas_997"
  %"$consume_1003" = sub i64 %"$gasrem_999", 1
  store i64 %"$consume_1003", i64* @_gasrem, align 8
  %"$ListUtils.list_length_1004" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_1005" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_1004", i32 0
  %"$ListUtils.list_length_1006" = bitcast { i8*, i8* }* %"$ListUtils.list_length_1005" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1007" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_1006", align 8
  %"$ListUtils.list_length_fptr_1008" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1007", 0
  %"$ListUtils.list_length_envptr_1009" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1007", 1
  %"$ListUtils.list_length_call_1010" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_fptr_1008"(i8* %"$ListUtils.list_length_envptr_1009"), !dbg !184
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_call_1010", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8, !dbg !185
  %"$gasrem_1011" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1012" = icmp ugt i64 1, %"$gasrem_1011"
  br i1 %"$gascmp_1012", label %"$out_of_gas_1013", label %"$have_gas_1014"

"$out_of_gas_1013":                               ; preds = %"$have_gas_1002"
  call void @_out_of_gas()
  br label %"$have_gas_1014"

"$have_gas_1014":                                 ; preds = %"$out_of_gas_1013", %"$have_gas_1002"
  %"$consume_1015" = sub i64 %"$gasrem_1011", 1
  store i64 %"$consume_1015", i64* @_gasrem, align 8
  %one = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %one, metadata !186, metadata !DIExpression()), !dbg !187
  %"$gasrem_1016" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1017" = icmp ugt i64 1, %"$gasrem_1016"
  br i1 %"$gascmp_1017", label %"$out_of_gas_1018", label %"$have_gas_1019"

"$out_of_gas_1018":                               ; preds = %"$have_gas_1014"
  call void @_out_of_gas()
  br label %"$have_gas_1019"

"$have_gas_1019":                                 ; preds = %"$out_of_gas_1018", %"$have_gas_1014"
  %"$consume_1020" = sub i64 %"$gasrem_1016", 1
  store i64 %"$consume_1020", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %one, align 4, !dbg !188
  %"$gasrem_1021" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1022" = icmp ugt i64 1, %"$gasrem_1021"
  br i1 %"$gascmp_1022", label %"$out_of_gas_1023", label %"$have_gas_1024"

"$out_of_gas_1023":                               ; preds = %"$have_gas_1019"
  call void @_out_of_gas()
  br label %"$have_gas_1024"

"$have_gas_1024":                                 ; preds = %"$out_of_gas_1023", %"$have_gas_1019"
  %"$consume_1025" = sub i64 %"$gasrem_1021", 1
  store i64 %"$consume_1025", i64* @_gasrem, align 8
  %f1l = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %f1l, metadata !189, metadata !DIExpression()), !dbg !190
  %"$gasrem_1026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1027" = icmp ugt i64 1, %"$gasrem_1026"
  br i1 %"$gascmp_1027", label %"$out_of_gas_1028", label %"$have_gas_1029"

"$out_of_gas_1028":                               ; preds = %"$have_gas_1024"
  call void @_out_of_gas()
  br label %"$have_gas_1029"

"$have_gas_1029":                                 ; preds = %"$out_of_gas_1028", %"$have_gas_1024"
  %"$consume_1030" = sub i64 %"$gasrem_1026", 1
  store i64 %"$consume_1030", i64* @_gasrem, align 8
  %"$f1_12" = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %"$f1_12", metadata !191, metadata !DIExpression()), !dbg !192
  %"$f1_1031" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8
  %"$f1_fptr_1032" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_1031", 0
  %"$f1_envptr_1033" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_1031", 1
  %"$one_1034" = load %Int32, %Int32* %one, align 4
  %"$f1_call_1035" = call %TName_List_Int32* %"$f1_fptr_1032"(i8* %"$f1_envptr_1033", %Int32 %"$one_1034"), !dbg !192
  store %TName_List_Int32* %"$f1_call_1035", %TName_List_Int32** %"$f1_12", align 8, !dbg !192
  %"$$f1_12_1036" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_12", align 8
  store %TName_List_Int32* %"$$f1_12_1036", %TName_List_Int32** %f1l, align 8, !dbg !192
  %"$gasrem_1037" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1038" = icmp ugt i64 1, %"$gasrem_1037"
  br i1 %"$gascmp_1038", label %"$out_of_gas_1039", label %"$have_gas_1040"

"$out_of_gas_1039":                               ; preds = %"$have_gas_1029"
  call void @_out_of_gas()
  br label %"$have_gas_1040"

"$have_gas_1040":                                 ; preds = %"$out_of_gas_1039", %"$have_gas_1029"
  %"$consume_1041" = sub i64 %"$gasrem_1037", 1
  store i64 %"$consume_1041", i64* @_gasrem, align 8
  %"$len_13" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$len_13", metadata !193, metadata !DIExpression()), !dbg !194
  %"$len_1042" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8
  %"$len_fptr_1043" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_1042", 0
  %"$len_envptr_1044" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_1042", 1
  %"$f1l_1045" = load %TName_List_Int32*, %TName_List_Int32** %f1l, align 8
  %"$len_call_1046" = call %Uint32 %"$len_fptr_1043"(i8* %"$len_envptr_1044", %TName_List_Int32* %"$f1l_1045"), !dbg !194
  store %Uint32 %"$len_call_1046", %Uint32* %"$len_13", align 4, !dbg !194
  %"$$len_13_1047" = load %Uint32, %Uint32* %"$len_13", align 4
  store %Uint32 %"$$len_13_1047", %Uint32* %"$expr_48", align 4, !dbg !194
  br label %"$matchsucc_970"

"$False_1048":                                    ; preds = %"$have_gas_968"
  %"$some_bool2_1049" = bitcast %TName_Bool* %"$some_bool2_971" to %CName_False*
  %"$gasrem_1050" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1051" = icmp ugt i64 1, %"$gasrem_1050"
  br i1 %"$gascmp_1051", label %"$out_of_gas_1052", label %"$have_gas_1053"

"$out_of_gas_1052":                               ; preds = %"$False_1048"
  call void @_out_of_gas()
  br label %"$have_gas_1053"

"$have_gas_1053":                                 ; preds = %"$out_of_gas_1052", %"$False_1048"
  %"$consume_1054" = sub i64 %"$gasrem_1050", 1
  store i64 %"$consume_1054", i64* @_gasrem, align 8
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_1055" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1056" = icmp ugt i64 1, %"$gasrem_1055"
  br i1 %"$gascmp_1056", label %"$out_of_gas_1057", label %"$have_gas_1058"

"$out_of_gas_1057":                               ; preds = %"$have_gas_1053"
  call void @_out_of_gas()
  br label %"$have_gas_1058"

"$have_gas_1058":                                 ; preds = %"$out_of_gas_1057", %"$have_gas_1053"
  %"$consume_1059" = sub i64 %"$gasrem_1055", 1
  store i64 %"$consume_1059", i64* @_gasrem, align 8
  %"$f_1060" = load { i8*, i8* }*, { i8*, i8* }** %f, align 8
  %"$f_1061" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_1060", i32 2
  %"$f_1062" = bitcast { i8*, i8* }* %"$f_1061" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_1063" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_1062", align 8
  %"$f_fptr_1064" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_1063", 0
  %"$f_envptr_1065" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_1063", 1
  %"$f_call_1066" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_1064"(i8* %"$f_envptr_1065"), !dbg !195
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_1066", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8, !dbg !197
  %"$gasrem_1067" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1068" = icmp ugt i64 1, %"$gasrem_1067"
  br i1 %"$gascmp_1068", label %"$out_of_gas_1069", label %"$have_gas_1070"

"$out_of_gas_1069":                               ; preds = %"$have_gas_1058"
  call void @_out_of_gas()
  br label %"$have_gas_1070"

"$have_gas_1070":                                 ; preds = %"$out_of_gas_1069", %"$have_gas_1058"
  %"$consume_1071" = sub i64 %"$gasrem_1067", 1
  store i64 %"$consume_1071", i64* @_gasrem, align 8
  %len1 = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_1072" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1073" = icmp ugt i64 1, %"$gasrem_1072"
  br i1 %"$gascmp_1073", label %"$out_of_gas_1074", label %"$have_gas_1075"

"$out_of_gas_1074":                               ; preds = %"$have_gas_1070"
  call void @_out_of_gas()
  br label %"$have_gas_1075"

"$have_gas_1075":                                 ; preds = %"$out_of_gas_1074", %"$have_gas_1070"
  %"$consume_1076" = sub i64 %"$gasrem_1072", 1
  store i64 %"$consume_1076", i64* @_gasrem, align 8
  %"$ListUtils.list_length_1077" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_1078" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_1077", i32 2
  %"$ListUtils.list_length_1079" = bitcast { i8*, i8* }* %"$ListUtils.list_length_1078" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1080" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_1079", align 8
  %"$ListUtils.list_length_fptr_1081" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1080", 0
  %"$ListUtils.list_length_envptr_1082" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1080", 1
  %"$ListUtils.list_length_call_1083" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_fptr_1081"(i8* %"$ListUtils.list_length_envptr_1082"), !dbg !198
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_call_1083", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8, !dbg !199
  %"$gasrem_1084" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1085" = icmp ugt i64 1, %"$gasrem_1084"
  br i1 %"$gascmp_1085", label %"$out_of_gas_1086", label %"$have_gas_1087"

"$out_of_gas_1086":                               ; preds = %"$have_gas_1075"
  call void @_out_of_gas()
  br label %"$have_gas_1087"

"$have_gas_1087":                                 ; preds = %"$out_of_gas_1086", %"$have_gas_1075"
  %"$consume_1088" = sub i64 %"$gasrem_1084", 1
  store i64 %"$consume_1088", i64* @_gasrem, align 8
  %one2 = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %one2, metadata !200, metadata !DIExpression()), !dbg !201
  %"$gasrem_1089" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1090" = icmp ugt i64 1, %"$gasrem_1089"
  br i1 %"$gascmp_1090", label %"$out_of_gas_1091", label %"$have_gas_1092"

"$out_of_gas_1091":                               ; preds = %"$have_gas_1087"
  call void @_out_of_gas()
  br label %"$have_gas_1092"

"$have_gas_1092":                                 ; preds = %"$out_of_gas_1091", %"$have_gas_1087"
  %"$consume_1093" = sub i64 %"$gasrem_1089", 1
  store i64 %"$consume_1093", i64* @_gasrem, align 8
  store %Int64 { i64 1 }, %Int64* %one2, align 8, !dbg !202
  %"$gasrem_1094" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1095" = icmp ugt i64 1, %"$gasrem_1094"
  br i1 %"$gascmp_1095", label %"$out_of_gas_1096", label %"$have_gas_1097"

"$out_of_gas_1096":                               ; preds = %"$have_gas_1092"
  call void @_out_of_gas()
  br label %"$have_gas_1097"

"$have_gas_1097":                                 ; preds = %"$out_of_gas_1096", %"$have_gas_1092"
  %"$consume_1098" = sub i64 %"$gasrem_1094", 1
  store i64 %"$consume_1098", i64* @_gasrem, align 8
  %f2l = alloca %TName_List_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int64** %f2l, metadata !203, metadata !DIExpression()), !dbg !204
  %"$gasrem_1099" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1100" = icmp ugt i64 1, %"$gasrem_1099"
  br i1 %"$gascmp_1100", label %"$out_of_gas_1101", label %"$have_gas_1102"

"$out_of_gas_1101":                               ; preds = %"$have_gas_1097"
  call void @_out_of_gas()
  br label %"$have_gas_1102"

"$have_gas_1102":                                 ; preds = %"$out_of_gas_1101", %"$have_gas_1097"
  %"$consume_1103" = sub i64 %"$gasrem_1099", 1
  store i64 %"$consume_1103", i64* @_gasrem, align 8
  %"$f2_14" = alloca %TName_List_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int64** %"$f2_14", metadata !205, metadata !DIExpression()), !dbg !206
  %"$f2_1104" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8
  %"$f2_fptr_1105" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1104", 0
  %"$f2_envptr_1106" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1104", 1
  %"$one_1107" = load %Int64, %Int64* %one2, align 8
  %"$f2_call_1108" = call %TName_List_Int64* %"$f2_fptr_1105"(i8* %"$f2_envptr_1106", %Int64 %"$one_1107"), !dbg !206
  store %TName_List_Int64* %"$f2_call_1108", %TName_List_Int64** %"$f2_14", align 8, !dbg !206
  %"$$f2_14_1109" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_14", align 8
  store %TName_List_Int64* %"$$f2_14_1109", %TName_List_Int64** %f2l, align 8, !dbg !206
  %"$gasrem_1110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1111" = icmp ugt i64 1, %"$gasrem_1110"
  br i1 %"$gascmp_1111", label %"$out_of_gas_1112", label %"$have_gas_1113"

"$out_of_gas_1112":                               ; preds = %"$have_gas_1102"
  call void @_out_of_gas()
  br label %"$have_gas_1113"

"$have_gas_1113":                                 ; preds = %"$out_of_gas_1112", %"$have_gas_1102"
  %"$consume_1114" = sub i64 %"$gasrem_1110", 1
  store i64 %"$consume_1114", i64* @_gasrem, align 8
  %"$len_15" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$len_15", metadata !207, metadata !DIExpression()), !dbg !208
  %"$len_1115" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8
  %"$len_fptr_1116" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1115", 0
  %"$len_envptr_1117" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1115", 1
  %"$f2l_1118" = load %TName_List_Int64*, %TName_List_Int64** %f2l, align 8
  %"$len_call_1119" = call %Uint32 %"$len_fptr_1116"(i8* %"$len_envptr_1117", %TName_List_Int64* %"$f2l_1118"), !dbg !208
  store %Uint32 %"$len_call_1119", %Uint32* %"$len_15", align 4, !dbg !208
  %"$$len_15_1120" = load %Uint32, %Uint32* %"$len_15", align 4
  store %Uint32 %"$$len_15_1120", %Uint32* %"$expr_48", align 4, !dbg !208
  br label %"$matchsucc_970"

"$empty_default_974":                             ; preds = %"$have_gas_968"
  br label %"$matchsucc_970"

"$matchsucc_970":                                 ; preds = %"$have_gas_1113", %"$have_gas_1040", %"$empty_default_974"
  %"$$expr_48_1121" = load %Uint32, %Uint32* %"$expr_48", align 4
  ret %Uint32 %"$$expr_48_1121"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1122" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_1123" = alloca %Uint32, align 8
  %"$memvoidcast_1124" = bitcast %Uint32* %"$pval_1123" to i8*
  store %Uint32 %"$exprval_1122", %Uint32* %"$pval_1123", align 4
  %"$execptr_load_1125" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1125", %_TyDescrTy_Typ* @"$TyDescr_Uint32_69", i8* %"$memvoidcast_1124")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "multi-type-inst.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_63", linkageName: "$fundef_63", scope: !2, file: !2, line: 11, type: !4, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "a", scope: !3, file: !2, line: 10, type: !9)
!9 = !DIBasicType(name: "Int64", size: 8)
!10 = !DILocation(line: 10, column: 8, scope: !3)
!11 = !DILocalVariable(name: "$retval_64", scope: !3, file: !2, line: 11, type: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "List (Int64)", baseType: !13, size: 8, align: 8, dwarfAddressSpace: 0)
!13 = !DIBasicType(name: "List (Int64)", size: 8)
!14 = !DILocation(line: 11, column: 5, scope: !3)
!15 = !DILocalVariable(name: "an", scope: !3, file: !2, line: 11, type: !12)
!16 = !DILocation(line: 11, column: 9, scope: !3)
!17 = !DILocation(line: 11, column: 14, scope: !3)
!18 = !DILocalVariable(name: "a1", scope: !3, file: !2, line: 12, type: !12)
!19 = !DILocation(line: 12, column: 9, scope: !3)
!20 = !DILocation(line: 12, column: 14, scope: !3)
!21 = !DILocation(line: 13, column: 5, scope: !3)
!22 = distinct !DISubprogram(name: "$fundef_61", linkageName: "$fundef_61", scope: !2, file: !2, line: 11, type: !4, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!23 = !DILocation(line: 11, column: 5, scope: !22)
!24 = distinct !DISubprogram(name: "$fundef_59", linkageName: "$fundef_59", scope: !2, file: !2, line: 11, type: !4, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!25 = !DILocalVariable(name: "a", scope: !24, file: !2, line: 10, type: !26)
!26 = !DIBasicType(name: "Int32", size: 4)
!27 = !DILocation(line: 10, column: 8, scope: !24)
!28 = !DILocalVariable(name: "$retval_60", scope: !24, file: !2, line: 11, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "List (Int32)", baseType: !30, size: 8, align: 8, dwarfAddressSpace: 0)
!30 = !DIBasicType(name: "List (Int32)", size: 8)
!31 = !DILocation(line: 11, column: 5, scope: !24)
!32 = !DILocalVariable(name: "an", scope: !24, file: !2, line: 11, type: !29)
!33 = !DILocation(line: 11, column: 9, scope: !24)
!34 = !DILocation(line: 11, column: 14, scope: !24)
!35 = !DILocalVariable(name: "a1", scope: !24, file: !2, line: 12, type: !29)
!36 = !DILocation(line: 12, column: 9, scope: !24)
!37 = !DILocation(line: 12, column: 14, scope: !24)
!38 = !DILocation(line: 13, column: 5, scope: !24)
!39 = distinct !DISubprogram(name: "$fundef_57", linkageName: "$fundef_57", scope: !2, file: !2, line: 11, type: !4, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!40 = !DILocation(line: 11, column: 5, scope: !39)
!41 = distinct !DISubprogram(name: "$fundef_55", linkageName: "$fundef_55", scope: !2, file: !2, line: 4, type: !4, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!42 = !DILocalVariable(name: "a", scope: !41, file: !2, line: 3, type: !9)
!43 = !DILocation(line: 3, column: 8, scope: !41)
!44 = !DILocalVariable(name: "$retval_56", scope: !41, file: !2, line: 4, type: !12)
!45 = !DILocation(line: 4, column: 5, scope: !41)
!46 = !DILocalVariable(name: "an", scope: !41, file: !2, line: 4, type: !12)
!47 = !DILocation(line: 4, column: 9, scope: !41)
!48 = !DILocation(line: 4, column: 14, scope: !41)
!49 = !DILocation(line: 5, column: 5, scope: !41)
!50 = distinct !DISubprogram(name: "$fundef_53", linkageName: "$fundef_53", scope: !2, file: !2, line: 4, type: !4, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!51 = !DILocation(line: 4, column: 5, scope: !50)
!52 = distinct !DISubprogram(name: "$fundef_51", linkageName: "$fundef_51", scope: !2, file: !2, line: 4, type: !4, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!53 = !DILocalVariable(name: "a", scope: !52, file: !2, line: 3, type: !26)
!54 = !DILocation(line: 3, column: 8, scope: !52)
!55 = !DILocalVariable(name: "$retval_52", scope: !52, file: !2, line: 4, type: !29)
!56 = !DILocation(line: 4, column: 5, scope: !52)
!57 = !DILocalVariable(name: "an", scope: !52, file: !2, line: 4, type: !29)
!58 = !DILocation(line: 4, column: 9, scope: !52)
!59 = !DILocation(line: 4, column: 14, scope: !52)
!60 = !DILocation(line: 5, column: 5, scope: !52)
!61 = distinct !DISubprogram(name: "$fundef_49", linkageName: "$fundef_49", scope: !2, file: !2, line: 4, type: !4, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!62 = !DILocation(line: 4, column: 5, scope: !61)
!63 = distinct !DISubprogram(name: "$fundef_46", linkageName: "$fundef_46", scope: !64, file: !64, line: 104, type: !4, scopeLine: 104, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!64 = !DIFile(filename: "ListUtils.scillib", directory: "../src/stdlib")
!65 = !DILocalVariable(name: "h", scope: !63, file: !64, line: 103, type: !9)
!66 = !DILocation(line: 103, column: 39, scope: !63)
!67 = !DILocalVariable(name: "$retval_47", scope: !63, file: !64, line: 104, type: !68)
!68 = !DIBasicType(name: "Uint32", size: 4)
!69 = !DILocation(line: 104, column: 5, scope: !63)
!70 = distinct !DISubprogram(name: "$fundef_44", linkageName: "$fundef_44", scope: !64, file: !64, line: 103, type: !4, scopeLine: 103, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!71 = !DILocalVariable(name: "z", scope: !70, file: !64, line: 103, type: !68)
!72 = !DILocation(line: 103, column: 19, scope: !70)
!73 = !DILocation(line: 104, column: 5, scope: !70)
!74 = distinct !DISubprogram(name: "$fundef_42", linkageName: "$fundef_42", scope: !64, file: !64, line: 101, type: !4, scopeLine: 101, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!75 = !DILocation(line: 101, column: 16, scope: !74)
!76 = !DILocation(line: 101, column: 15, scope: !74)
!77 = !DILocalVariable(name: "one", scope: !74, file: !64, line: 102, type: !68)
!78 = !DILocation(line: 102, column: 7, scope: !74)
!79 = !DILocation(line: 102, column: 13, scope: !74)
!80 = !DILocation(line: 103, column: 34, scope: !74)
!81 = !DILocalVariable(name: "init", scope: !74, file: !64, line: 105, type: !68)
!82 = !DILocation(line: 105, column: 7, scope: !74)
!83 = !DILocation(line: 105, column: 14, scope: !74)
!84 = !DILocation(line: 106, column: 3, scope: !74)
!85 = distinct !DISubprogram(name: "$fundef_40", linkageName: "$fundef_40", scope: !64, file: !64, line: 104, type: !4, scopeLine: 104, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!86 = !DILocalVariable(name: "h", scope: !85, file: !64, line: 103, type: !26)
!87 = !DILocation(line: 103, column: 39, scope: !85)
!88 = !DILocalVariable(name: "$retval_41", scope: !85, file: !64, line: 104, type: !68)
!89 = !DILocation(line: 104, column: 5, scope: !85)
!90 = distinct !DISubprogram(name: "$fundef_38", linkageName: "$fundef_38", scope: !64, file: !64, line: 103, type: !4, scopeLine: 103, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!91 = !DILocalVariable(name: "z", scope: !90, file: !64, line: 103, type: !68)
!92 = !DILocation(line: 103, column: 19, scope: !90)
!93 = !DILocation(line: 104, column: 5, scope: !90)
!94 = distinct !DISubprogram(name: "$fundef_36", linkageName: "$fundef_36", scope: !64, file: !64, line: 101, type: !4, scopeLine: 101, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!95 = !DILocation(line: 101, column: 16, scope: !94)
!96 = !DILocation(line: 101, column: 15, scope: !94)
!97 = !DILocalVariable(name: "one", scope: !94, file: !64, line: 102, type: !68)
!98 = !DILocation(line: 102, column: 7, scope: !94)
!99 = !DILocation(line: 102, column: 13, scope: !94)
!100 = !DILocation(line: 103, column: 34, scope: !94)
!101 = !DILocalVariable(name: "init", scope: !94, file: !64, line: 105, type: !68)
!102 = !DILocation(line: 105, column: 7, scope: !94)
!103 = !DILocation(line: 105, column: 14, scope: !94)
!104 = !DILocation(line: 106, column: 3, scope: !94)
!105 = distinct !DISubprogram(name: "$fundef_34", linkageName: "$fundef_34", scope: !106, file: !106, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!106 = !DIFile(filename: "Prelude", directory: ".")
!107 = !DILocalVariable(name: "l", scope: !105, file: !106, line: 1, type: !12)
!108 = !DILocation(line: 1, column: 22, scope: !105)
!109 = !DILocalVariable(name: "$retval_35", scope: !105, file: !106, line: 1, type: !68)
!110 = !DILocation(line: 1, column: 37, scope: !105)
!111 = !DILocalVariable(name: "res", scope: !112, file: !106, line: 1, type: !68)
!112 = distinct !DILexicalBlock(scope: !113, file: !106, line: 1, column: 52)
!113 = distinct !DILexicalBlock(scope: !105, file: !106, line: 1, column: 37)
!114 = !DILocation(line: 1, column: 68, scope: !112)
!115 = !DILocation(line: 1, column: 74, scope: !112)
!116 = !DILocalVariable(name: "$f_7", scope: !112, file: !106, line: 1, type: !68)
!117 = !DILocation(line: 1, column: 83, scope: !112)
!118 = !DILocalVariable(name: "$g_9", scope: !112, file: !106, line: 1, type: !68)
!119 = !DILocation(line: 1, column: 100, scope: !120)
!120 = distinct !DILexicalBlock(scope: !113, file: !106, line: 1, column: 93)
!121 = distinct !DISubprogram(name: "$fundef_32", linkageName: "$fundef_32", scope: !106, file: !106, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!122 = !DILocalVariable(name: "z", scope: !121, file: !106, line: 1, type: !68)
!123 = !DILocation(line: 1, column: 6, scope: !121)
!124 = !DILocation(line: 1, column: 37, scope: !121)
!125 = distinct !DISubprogram(name: "$fundef_30", linkageName: "$fundef_30", scope: !106, file: !106, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!126 = !DILocation(line: 1, column: 17, scope: !125)
!127 = distinct !DISubprogram(name: "$fundef_28", linkageName: "$fundef_28", scope: !106, file: !106, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!128 = !DILocation(line: 1, column: 17, scope: !127)
!129 = distinct !DISubprogram(name: "$fundef_26", linkageName: "$fundef_26", scope: !106, file: !106, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!130 = !DILocation(line: 1, column: 17, scope: !129)
!131 = distinct !DISubprogram(name: "$fundef_24", linkageName: "$fundef_24", scope: !106, file: !106, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!132 = !DILocalVariable(name: "l", scope: !131, file: !106, line: 1, type: !29)
!133 = !DILocation(line: 1, column: 22, scope: !131)
!134 = !DILocalVariable(name: "$retval_25", scope: !131, file: !106, line: 1, type: !68)
!135 = !DILocation(line: 1, column: 37, scope: !131)
!136 = !DILocalVariable(name: "res", scope: !137, file: !106, line: 1, type: !68)
!137 = distinct !DILexicalBlock(scope: !138, file: !106, line: 1, column: 52)
!138 = distinct !DILexicalBlock(scope: !131, file: !106, line: 1, column: 37)
!139 = !DILocation(line: 1, column: 68, scope: !137)
!140 = !DILocation(line: 1, column: 74, scope: !137)
!141 = !DILocalVariable(name: "$f_7", scope: !137, file: !106, line: 1, type: !68)
!142 = !DILocation(line: 1, column: 83, scope: !137)
!143 = !DILocalVariable(name: "$g_9", scope: !137, file: !106, line: 1, type: !68)
!144 = !DILocation(line: 1, column: 100, scope: !145)
!145 = distinct !DILexicalBlock(scope: !138, file: !106, line: 1, column: 93)
!146 = distinct !DISubprogram(name: "$fundef_22", linkageName: "$fundef_22", scope: !106, file: !106, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!147 = !DILocalVariable(name: "z", scope: !146, file: !106, line: 1, type: !68)
!148 = !DILocation(line: 1, column: 6, scope: !146)
!149 = !DILocation(line: 1, column: 37, scope: !146)
!150 = distinct !DISubprogram(name: "$fundef_20", linkageName: "$fundef_20", scope: !106, file: !106, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!151 = !DILocation(line: 1, column: 17, scope: !150)
!152 = distinct !DISubprogram(name: "$fundef_18", linkageName: "$fundef_18", scope: !106, file: !106, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!153 = !DILocation(line: 1, column: 17, scope: !152)
!154 = distinct !DISubprogram(name: "$fundef_16", linkageName: "$fundef_16", scope: !106, file: !106, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!155 = !DILocation(line: 1, column: 17, scope: !154)
!156 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !157, file: !157, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!157 = !DIFile(filename: ".", directory: ".")
!158 = !DILocation(line: 0, scope: !156)
!159 = !DILocation(line: 1, column: 17, scope: !156)
!160 = !DILocation(line: 100, column: 3, scope: !156)
!161 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !4, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!162 = !DILocalVariable(name: "$expr_48", scope: !161, file: !2, line: 2, type: !68)
!163 = !DILocation(line: 2, column: 3, scope: !161)
!164 = !DILocation(line: 9, column: 3, scope: !161)
!165 = !DILocalVariable(name: "some_bool", scope: !161, file: !2, line: 16, type: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !167, size: 8, align: 8, dwarfAddressSpace: 0)
!167 = !DIBasicType(name: "Bool", size: 8)
!168 = !DILocation(line: 16, column: 5, scope: !161)
!169 = !DILocation(line: 16, column: 17, scope: !161)
!170 = !DILocation(line: 18, column: 3, scope: !161)
!171 = !DILocation(line: 19, column: 13, scope: !172)
!172 = distinct !DILexicalBlock(scope: !173, file: !2, line: 19, column: 5)
!173 = distinct !DILexicalBlock(scope: !161, file: !2, line: 18, column: 3)
!174 = !DILocation(line: 20, column: 14, scope: !175)
!175 = distinct !DILexicalBlock(scope: !173, file: !2, line: 20, column: 5)
!176 = !DILocalVariable(name: "some_bool2", scope: !161, file: !2, line: 24, type: !166)
!177 = !DILocation(line: 24, column: 5, scope: !161)
!178 = !DILocation(line: 24, column: 18, scope: !161)
!179 = !DILocation(line: 25, column: 1, scope: !161)
!180 = !DILocation(line: 27, column: 13, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !2, line: 26, column: 3)
!182 = distinct !DILexicalBlock(scope: !161, file: !2, line: 25, column: 1)
!183 = !DILocation(line: 27, column: 12, scope: !181)
!184 = !DILocation(line: 28, column: 14, scope: !181)
!185 = !DILocation(line: 28, column: 13, scope: !181)
!186 = !DILocalVariable(name: "one", scope: !181, file: !2, line: 29, type: !26)
!187 = !DILocation(line: 29, column: 7, scope: !181)
!188 = !DILocation(line: 29, column: 13, scope: !181)
!189 = !DILocalVariable(name: "f1l", scope: !181, file: !2, line: 30, type: !29)
!190 = !DILocation(line: 30, column: 7, scope: !181)
!191 = !DILocalVariable(name: "$f1_12", scope: !181, file: !2, line: 30, type: !29)
!192 = !DILocation(line: 30, column: 13, scope: !181)
!193 = !DILocalVariable(name: "$len_13", scope: !181, file: !2, line: 31, type: !68)
!194 = !DILocation(line: 31, column: 3, scope: !181)
!195 = !DILocation(line: 33, column: 13, scope: !196)
!196 = distinct !DILexicalBlock(scope: !182, file: !2, line: 32, column: 3)
!197 = !DILocation(line: 33, column: 12, scope: !196)
!198 = !DILocation(line: 34, column: 14, scope: !196)
!199 = !DILocation(line: 34, column: 13, scope: !196)
!200 = !DILocalVariable(name: "one", scope: !196, file: !2, line: 35, type: !9)
!201 = !DILocation(line: 35, column: 7, scope: !196)
!202 = !DILocation(line: 35, column: 13, scope: !196)
!203 = !DILocalVariable(name: "f2l", scope: !196, file: !2, line: 36, type: !12)
!204 = !DILocation(line: 36, column: 7, scope: !196)
!205 = !DILocalVariable(name: "$f2_14", scope: !196, file: !2, line: 36, type: !12)
!206 = !DILocation(line: 36, column: 13, scope: !196)
!207 = !DILocalVariable(name: "$len_15", scope: !196, file: !2, line: 37, type: !68)
!208 = !DILocation(line: 37, column: 3, scope: !196)
