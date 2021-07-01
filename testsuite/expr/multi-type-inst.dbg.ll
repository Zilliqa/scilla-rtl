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
%"$ParamDescr_1071" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1072" = type { %ParamDescrString, i32, %"$ParamDescr_1071"* }
%TName_List_Int64 = type { i8, %CName_Cons_Int64*, %CName_Nil_Int64* }
%CName_Cons_Int64 = type <{ i8, %Int64, %TName_List_Int64* }>
%CName_Nil_Int64 = type <{ i8 }>
%"$$fundef_57_env_130" = type {}
%Int64 = type { i64 }
%"$$fundef_55_env_131" = type {}
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>
%"$$fundef_53_env_132" = type {}
%Int32 = type { i32 }
%"$$fundef_51_env_133" = type {}
%"$$fundef_49_env_134" = type {}
%"$$fundef_47_env_135" = type {}
%"$$fundef_45_env_136" = type {}
%"$$fundef_43_env_137" = type {}
%Uint32 = type { i32 }
%"$$fundef_40_env_138" = type { %Uint32, %Uint32 }
%"$$fundef_38_env_139" = type { %Uint32 }
%"$$fundef_36_env_140" = type { { i8*, i8* }* }
%"$$fundef_34_env_141" = type { %Uint32, %Uint32 }
%"$$fundef_32_env_142" = type { %Uint32 }
%"$$fundef_30_env_143" = type { { i8*, i8* }* }
%"$$fundef_28_env_144" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_26_env_145" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_24_env_146" = type {}
%"$$fundef_22_env_147" = type {}
%"$$fundef_20_env_148" = type {}
%"$$fundef_18_env_149" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_16_env_150" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_14_env_151" = type {}
%"$$fundef_12_env_152" = type {}
%"$$fundef_10_env_153" = type {}
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
@"$TyDescr_ADT_Bool_91" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_88"* @"$TyDescr_Bool_ADTTyp_Specl_106" to i8*) }
@"$TyDescr_ADT_List_Int64_92" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_88"* @"$TyDescr_List_Int64_ADTTyp_Specl_118" to i8*) }
@"$TyDescr_ADT_List_Int32_93" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_88"* @"$TyDescr_List_Int32_ADTTyp_Specl_127" to i8*) }
@"$TyDescr_Bool_ADTTyp_97" = unnamed_addr constant %"$TyDescrTy_ADTTyp_89" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_108", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_88"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_88"*], [1 x %"$TyDescrTy_ADTTyp_Specl_88"*]* @"$TyDescr_Bool_ADTTyp_m_specls_107", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_98" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_99" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_100" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_90" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_99", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_98", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_101" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_102" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_103" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_90" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_102", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_101", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_104" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_90"*] [%"$TyDescrTy_ADTTyp_Constr_90"* @"$TyDescr_Bool_True_ADTTyp_Constr_100", %"$TyDescrTy_ADTTyp_Constr_90"* @"$TyDescr_Bool_False_ADTTyp_Constr_103"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_105" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_106" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_88" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_105", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_90"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_90"*], [2 x %"$TyDescrTy_ADTTyp_Constr_90"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_104", i32 0, i32 0), %"$TyDescrTy_ADTTyp_89"* @"$TyDescr_Bool_ADTTyp_97" }
@"$TyDescr_Bool_ADTTyp_m_specls_107" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_88"*] [%"$TyDescrTy_ADTTyp_Specl_88"* @"$TyDescr_Bool_ADTTyp_Specl_106"]
@"$TyDescr_ADT_Bool_108" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_109" = unnamed_addr constant %"$TyDescrTy_ADTTyp_89" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_129", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_88"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_88"*], [2 x %"$TyDescrTy_ADTTyp_Specl_88"*]* @"$TyDescr_List_ADTTyp_m_specls_128", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int64_Constr_m_args_110" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_65", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int64_92"]
@"$TyDescr_ADT_Cons_111" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int64_ADTTyp_Constr_112" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_90" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_111", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int64_Constr_m_args_110", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int64_Constr_m_args_113" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_114" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int64_ADTTyp_Constr_115" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_90" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_114", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int64_Constr_m_args_113", i32 0, i32 0) }
@"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_116" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_90"*] [%"$TyDescrTy_ADTTyp_Constr_90"* @"$TyDescr_List_Cons_Int64_ADTTyp_Constr_112", %"$TyDescrTy_ADTTyp_Constr_90"* @"$TyDescr_List_Nil_Int64_ADTTyp_Constr_115"]
@"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_117" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_65"]
@"$TyDescr_List_Int64_ADTTyp_Specl_118" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_88" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_117", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_90"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_90"*], [2 x %"$TyDescrTy_ADTTyp_Constr_90"*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_116", i32 0, i32 0), %"$TyDescrTy_ADTTyp_89"* @"$TyDescr_List_ADTTyp_109" }
@"$TyDescr_List_Cons_Int32_Constr_m_args_119" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_61", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_93"]
@"$TyDescr_ADT_Cons_120" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_121" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_90" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_120", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_119", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_122" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_123" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_124" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_90" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_123", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_122", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_125" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_90"*] [%"$TyDescrTy_ADTTyp_Constr_90"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_121", %"$TyDescrTy_ADTTyp_Constr_90"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_124"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_126" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_61"]
@"$TyDescr_List_Int32_ADTTyp_Specl_127" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_88" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_126", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_90"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_90"*], [2 x %"$TyDescrTy_ADTTyp_Constr_90"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_125", i32 0, i32 0), %"$TyDescrTy_ADTTyp_89"* @"$TyDescr_List_ADTTyp_109" }
@"$TyDescr_List_ADTTyp_m_specls_128" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_88"*] [%"$TyDescrTy_ADTTyp_Specl_88"* @"$TyDescr_List_Int64_ADTTyp_Specl_118", %"$TyDescrTy_ADTTyp_Specl_88"* @"$TyDescr_List_Int32_ADTTyp_Specl_127"]
@"$TyDescr_ADT_List_129" = unnamed_addr constant [4 x i8] c"List"
@list_foldl = global { i8*, i8* }* null
@ListUtils.list_length = global { i8*, i8* }* null
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_83", %_TyDescrTy_Typ* @"$TyDescr_Int64_65", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_91", %_TyDescrTy_Typ* @"$TyDescr_Uint256_75", %_TyDescrTy_Typ* @"$TyDescr_Uint32_63", %_TyDescrTy_Typ* @"$TyDescr_Uint64_67", %_TyDescrTy_Typ* @"$TyDescr_Bnum_79", %_TyDescrTy_Typ* @"$TyDescr_Uint128_71", %_TyDescrTy_Typ* @"$TyDescr_Exception_85", %_TyDescrTy_Typ* @"$TyDescr_String_77", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int64_92", %_TyDescrTy_Typ* @"$TyDescr_Int256_73", %_TyDescrTy_Typ* @"$TyDescr_Int128_69", %_TyDescrTy_Typ* @"$TyDescr_Bystr_87", %_TyDescrTy_Typ* @"$TyDescr_Message_81", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_93", %_TyDescrTy_Typ* @"$TyDescr_Int32_61"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_1071"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1072"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_List_Int64* @"$fundef_57"(%"$$fundef_57_env_130"* %0, %Int64 %1) !dbg !4 {
entry:
  %"$retval_58" = alloca %TName_List_Int64*, align 8
  %"$gasrem_735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_736" = icmp ugt i64 1, %"$gasrem_735"
  br i1 %"$gascmp_736", label %"$out_of_gas_737", label %"$have_gas_738"

"$out_of_gas_737":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_738"

"$have_gas_738":                                  ; preds = %"$out_of_gas_737", %entry
  %"$consume_739" = sub i64 %"$gasrem_735", 1
  store i64 %"$consume_739", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  %"$gasrem_740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_741" = icmp ugt i64 1, %"$gasrem_740"
  br i1 %"$gascmp_741", label %"$out_of_gas_742", label %"$have_gas_743"

"$out_of_gas_742":                                ; preds = %"$have_gas_738"
  call void @_out_of_gas()
  br label %"$have_gas_743"

"$have_gas_743":                                  ; preds = %"$out_of_gas_742", %"$have_gas_738"
  %"$consume_744" = sub i64 %"$gasrem_740", 1
  store i64 %"$consume_744", i64* @_gasrem, align 8
  %"$adtval_745_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_745_salloc" = call i8* @_salloc(i8* %"$adtval_745_load", i64 1)
  %"$adtval_745" = bitcast i8* %"$adtval_745_salloc" to %CName_Nil_Int64*
  %"$adtgep_746" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_745", i32 0, i32 0
  store i8 1, i8* %"$adtgep_746", align 1
  %"$adtptr_747" = bitcast %CName_Nil_Int64* %"$adtval_745" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_747", %TName_List_Int64** %an, align 8, !dbg !8
  %"$gasrem_748" = load i64, i64* @_gasrem, align 8
  %"$gascmp_749" = icmp ugt i64 1, %"$gasrem_748"
  br i1 %"$gascmp_749", label %"$out_of_gas_750", label %"$have_gas_751"

"$out_of_gas_750":                                ; preds = %"$have_gas_743"
  call void @_out_of_gas()
  br label %"$have_gas_751"

"$have_gas_751":                                  ; preds = %"$out_of_gas_750", %"$have_gas_743"
  %"$consume_752" = sub i64 %"$gasrem_748", 1
  store i64 %"$consume_752", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int64*, align 8
  %"$gasrem_753" = load i64, i64* @_gasrem, align 8
  %"$gascmp_754" = icmp ugt i64 1, %"$gasrem_753"
  br i1 %"$gascmp_754", label %"$out_of_gas_755", label %"$have_gas_756"

"$out_of_gas_755":                                ; preds = %"$have_gas_751"
  call void @_out_of_gas()
  br label %"$have_gas_756"

"$have_gas_756":                                  ; preds = %"$out_of_gas_755", %"$have_gas_751"
  %"$consume_757" = sub i64 %"$gasrem_753", 1
  store i64 %"$consume_757", i64* @_gasrem, align 8
  %"$an_758" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_759_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_759_salloc" = call i8* @_salloc(i8* %"$adtval_759_load", i64 17)
  %"$adtval_759" = bitcast i8* %"$adtval_759_salloc" to %CName_Cons_Int64*
  %"$adtgep_760" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_759", i32 0, i32 0
  store i8 0, i8* %"$adtgep_760", align 1
  %"$adtgep_761" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_759", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_761", align 8
  %"$adtgep_762" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_759", i32 0, i32 2
  store %TName_List_Int64* %"$an_758", %TName_List_Int64** %"$adtgep_762", align 8
  %"$adtptr_763" = bitcast %CName_Cons_Int64* %"$adtval_759" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_763", %TName_List_Int64** %a1, align 8, !dbg !9
  %"$gasrem_764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_765" = icmp ugt i64 1, %"$gasrem_764"
  br i1 %"$gascmp_765", label %"$out_of_gas_766", label %"$have_gas_767"

"$out_of_gas_766":                                ; preds = %"$have_gas_756"
  call void @_out_of_gas()
  br label %"$have_gas_767"

"$have_gas_767":                                  ; preds = %"$out_of_gas_766", %"$have_gas_756"
  %"$consume_768" = sub i64 %"$gasrem_764", 1
  store i64 %"$consume_768", i64* @_gasrem, align 8
  %"$a1_769" = load %TName_List_Int64*, %TName_List_Int64** %a1, align 8
  %"$adtval_770_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_770_salloc" = call i8* @_salloc(i8* %"$adtval_770_load", i64 17)
  %"$adtval_770" = bitcast i8* %"$adtval_770_salloc" to %CName_Cons_Int64*
  %"$adtgep_771" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_770", i32 0, i32 0
  store i8 0, i8* %"$adtgep_771", align 1
  %"$adtgep_772" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_770", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_772", align 8
  %"$adtgep_773" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_770", i32 0, i32 2
  store %TName_List_Int64* %"$a1_769", %TName_List_Int64** %"$adtgep_773", align 8
  %"$adtptr_774" = bitcast %CName_Cons_Int64* %"$adtval_770" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_774", %TName_List_Int64** %"$retval_58", align 8, !dbg !10
  %"$$retval_58_775" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_58", align 8
  ret %TName_List_Int64* %"$$retval_58_775"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_55"(%"$$fundef_55_env_131"* %0) !dbg !11 {
entry:
  %"$retval_56" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_727" = icmp ugt i64 1, %"$gasrem_726"
  br i1 %"$gascmp_727", label %"$out_of_gas_728", label %"$have_gas_729"

"$out_of_gas_728":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_729"

"$have_gas_729":                                  ; preds = %"$out_of_gas_728", %entry
  %"$consume_730" = sub i64 %"$gasrem_726", 1
  store i64 %"$consume_730", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_57_env_130"*, %Int64)* @"$fundef_57" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_56", align 8, !dbg !12
  %"$$retval_56_734" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_56", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_56_734"
}

define internal %TName_List_Int32* @"$fundef_53"(%"$$fundef_53_env_132"* %0, %Int32 %1) !dbg !13 {
entry:
  %"$retval_54" = alloca %TName_List_Int32*, align 8
  %"$gasrem_685" = load i64, i64* @_gasrem, align 8
  %"$gascmp_686" = icmp ugt i64 1, %"$gasrem_685"
  br i1 %"$gascmp_686", label %"$out_of_gas_687", label %"$have_gas_688"

"$out_of_gas_687":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_688"

"$have_gas_688":                                  ; preds = %"$out_of_gas_687", %entry
  %"$consume_689" = sub i64 %"$gasrem_685", 1
  store i64 %"$consume_689", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  %"$gasrem_690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_691" = icmp ugt i64 1, %"$gasrem_690"
  br i1 %"$gascmp_691", label %"$out_of_gas_692", label %"$have_gas_693"

"$out_of_gas_692":                                ; preds = %"$have_gas_688"
  call void @_out_of_gas()
  br label %"$have_gas_693"

"$have_gas_693":                                  ; preds = %"$out_of_gas_692", %"$have_gas_688"
  %"$consume_694" = sub i64 %"$gasrem_690", 1
  store i64 %"$consume_694", i64* @_gasrem, align 8
  %"$adtval_695_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_695_salloc" = call i8* @_salloc(i8* %"$adtval_695_load", i64 1)
  %"$adtval_695" = bitcast i8* %"$adtval_695_salloc" to %CName_Nil_Int32*
  %"$adtgep_696" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_695", i32 0, i32 0
  store i8 1, i8* %"$adtgep_696", align 1
  %"$adtptr_697" = bitcast %CName_Nil_Int32* %"$adtval_695" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_697", %TName_List_Int32** %an, align 8, !dbg !14
  %"$gasrem_698" = load i64, i64* @_gasrem, align 8
  %"$gascmp_699" = icmp ugt i64 1, %"$gasrem_698"
  br i1 %"$gascmp_699", label %"$out_of_gas_700", label %"$have_gas_701"

"$out_of_gas_700":                                ; preds = %"$have_gas_693"
  call void @_out_of_gas()
  br label %"$have_gas_701"

"$have_gas_701":                                  ; preds = %"$out_of_gas_700", %"$have_gas_693"
  %"$consume_702" = sub i64 %"$gasrem_698", 1
  store i64 %"$consume_702", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int32*, align 8
  %"$gasrem_703" = load i64, i64* @_gasrem, align 8
  %"$gascmp_704" = icmp ugt i64 1, %"$gasrem_703"
  br i1 %"$gascmp_704", label %"$out_of_gas_705", label %"$have_gas_706"

"$out_of_gas_705":                                ; preds = %"$have_gas_701"
  call void @_out_of_gas()
  br label %"$have_gas_706"

"$have_gas_706":                                  ; preds = %"$out_of_gas_705", %"$have_gas_701"
  %"$consume_707" = sub i64 %"$gasrem_703", 1
  store i64 %"$consume_707", i64* @_gasrem, align 8
  %"$an_708" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_709_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_709_salloc" = call i8* @_salloc(i8* %"$adtval_709_load", i64 13)
  %"$adtval_709" = bitcast i8* %"$adtval_709_salloc" to %CName_Cons_Int32*
  %"$adtgep_710" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_709", i32 0, i32 0
  store i8 0, i8* %"$adtgep_710", align 1
  %"$adtgep_711" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_709", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_711", align 4
  %"$adtgep_712" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_709", i32 0, i32 2
  store %TName_List_Int32* %"$an_708", %TName_List_Int32** %"$adtgep_712", align 8
  %"$adtptr_713" = bitcast %CName_Cons_Int32* %"$adtval_709" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_713", %TName_List_Int32** %a1, align 8, !dbg !15
  %"$gasrem_714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_715" = icmp ugt i64 1, %"$gasrem_714"
  br i1 %"$gascmp_715", label %"$out_of_gas_716", label %"$have_gas_717"

"$out_of_gas_716":                                ; preds = %"$have_gas_706"
  call void @_out_of_gas()
  br label %"$have_gas_717"

"$have_gas_717":                                  ; preds = %"$out_of_gas_716", %"$have_gas_706"
  %"$consume_718" = sub i64 %"$gasrem_714", 1
  store i64 %"$consume_718", i64* @_gasrem, align 8
  %"$a1_719" = load %TName_List_Int32*, %TName_List_Int32** %a1, align 8
  %"$adtval_720_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_720_salloc" = call i8* @_salloc(i8* %"$adtval_720_load", i64 13)
  %"$adtval_720" = bitcast i8* %"$adtval_720_salloc" to %CName_Cons_Int32*
  %"$adtgep_721" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_720", i32 0, i32 0
  store i8 0, i8* %"$adtgep_721", align 1
  %"$adtgep_722" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_720", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_722", align 4
  %"$adtgep_723" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_720", i32 0, i32 2
  store %TName_List_Int32* %"$a1_719", %TName_List_Int32** %"$adtgep_723", align 8
  %"$adtptr_724" = bitcast %CName_Cons_Int32* %"$adtval_720" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_724", %TName_List_Int32** %"$retval_54", align 8, !dbg !16
  %"$$retval_54_725" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_54", align 8
  ret %TName_List_Int32* %"$$retval_54_725"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_51"(%"$$fundef_51_env_133"* %0) !dbg !17 {
entry:
  %"$retval_52" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_676" = load i64, i64* @_gasrem, align 8
  %"$gascmp_677" = icmp ugt i64 1, %"$gasrem_676"
  br i1 %"$gascmp_677", label %"$out_of_gas_678", label %"$have_gas_679"

"$out_of_gas_678":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_679"

"$have_gas_679":                                  ; preds = %"$out_of_gas_678", %entry
  %"$consume_680" = sub i64 %"$gasrem_676", 1
  store i64 %"$consume_680", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_53_env_132"*, %Int32)* @"$fundef_53" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_52", align 8, !dbg !18
  %"$$retval_52_684" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_52", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_52_684"
}

define internal %TName_List_Int64* @"$fundef_49"(%"$$fundef_49_env_134"* %0, %Int64 %1) !dbg !19 {
entry:
  %"$retval_50" = alloca %TName_List_Int64*, align 8
  %"$gasrem_651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_652" = icmp ugt i64 1, %"$gasrem_651"
  br i1 %"$gascmp_652", label %"$out_of_gas_653", label %"$have_gas_654"

"$out_of_gas_653":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_654"

"$have_gas_654":                                  ; preds = %"$out_of_gas_653", %entry
  %"$consume_655" = sub i64 %"$gasrem_651", 1
  store i64 %"$consume_655", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  %"$gasrem_656" = load i64, i64* @_gasrem, align 8
  %"$gascmp_657" = icmp ugt i64 1, %"$gasrem_656"
  br i1 %"$gascmp_657", label %"$out_of_gas_658", label %"$have_gas_659"

"$out_of_gas_658":                                ; preds = %"$have_gas_654"
  call void @_out_of_gas()
  br label %"$have_gas_659"

"$have_gas_659":                                  ; preds = %"$out_of_gas_658", %"$have_gas_654"
  %"$consume_660" = sub i64 %"$gasrem_656", 1
  store i64 %"$consume_660", i64* @_gasrem, align 8
  %"$adtval_661_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_661_salloc" = call i8* @_salloc(i8* %"$adtval_661_load", i64 1)
  %"$adtval_661" = bitcast i8* %"$adtval_661_salloc" to %CName_Nil_Int64*
  %"$adtgep_662" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_661", i32 0, i32 0
  store i8 1, i8* %"$adtgep_662", align 1
  %"$adtptr_663" = bitcast %CName_Nil_Int64* %"$adtval_661" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_663", %TName_List_Int64** %an, align 8, !dbg !20
  %"$gasrem_664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_665" = icmp ugt i64 1, %"$gasrem_664"
  br i1 %"$gascmp_665", label %"$out_of_gas_666", label %"$have_gas_667"

"$out_of_gas_666":                                ; preds = %"$have_gas_659"
  call void @_out_of_gas()
  br label %"$have_gas_667"

"$have_gas_667":                                  ; preds = %"$out_of_gas_666", %"$have_gas_659"
  %"$consume_668" = sub i64 %"$gasrem_664", 1
  store i64 %"$consume_668", i64* @_gasrem, align 8
  %"$an_669" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_670_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_670_salloc" = call i8* @_salloc(i8* %"$adtval_670_load", i64 17)
  %"$adtval_670" = bitcast i8* %"$adtval_670_salloc" to %CName_Cons_Int64*
  %"$adtgep_671" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_670", i32 0, i32 0
  store i8 0, i8* %"$adtgep_671", align 1
  %"$adtgep_672" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_670", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_672", align 8
  %"$adtgep_673" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_670", i32 0, i32 2
  store %TName_List_Int64* %"$an_669", %TName_List_Int64** %"$adtgep_673", align 8
  %"$adtptr_674" = bitcast %CName_Cons_Int64* %"$adtval_670" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_674", %TName_List_Int64** %"$retval_50", align 8, !dbg !21
  %"$$retval_50_675" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_50", align 8
  ret %TName_List_Int64* %"$$retval_50_675"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_47"(%"$$fundef_47_env_135"* %0) !dbg !22 {
entry:
  %"$retval_48" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_643" = icmp ugt i64 1, %"$gasrem_642"
  br i1 %"$gascmp_643", label %"$out_of_gas_644", label %"$have_gas_645"

"$out_of_gas_644":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_645"

"$have_gas_645":                                  ; preds = %"$out_of_gas_644", %entry
  %"$consume_646" = sub i64 %"$gasrem_642", 1
  store i64 %"$consume_646", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_49_env_134"*, %Int64)* @"$fundef_49" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_48", align 8, !dbg !23
  %"$$retval_48_650" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_48", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_48_650"
}

define internal %TName_List_Int32* @"$fundef_45"(%"$$fundef_45_env_136"* %0, %Int32 %1) !dbg !24 {
entry:
  %"$retval_46" = alloca %TName_List_Int32*, align 8
  %"$gasrem_617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_618" = icmp ugt i64 1, %"$gasrem_617"
  br i1 %"$gascmp_618", label %"$out_of_gas_619", label %"$have_gas_620"

"$out_of_gas_619":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_620"

"$have_gas_620":                                  ; preds = %"$out_of_gas_619", %entry
  %"$consume_621" = sub i64 %"$gasrem_617", 1
  store i64 %"$consume_621", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  %"$gasrem_622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_623" = icmp ugt i64 1, %"$gasrem_622"
  br i1 %"$gascmp_623", label %"$out_of_gas_624", label %"$have_gas_625"

"$out_of_gas_624":                                ; preds = %"$have_gas_620"
  call void @_out_of_gas()
  br label %"$have_gas_625"

"$have_gas_625":                                  ; preds = %"$out_of_gas_624", %"$have_gas_620"
  %"$consume_626" = sub i64 %"$gasrem_622", 1
  store i64 %"$consume_626", i64* @_gasrem, align 8
  %"$adtval_627_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_627_salloc" = call i8* @_salloc(i8* %"$adtval_627_load", i64 1)
  %"$adtval_627" = bitcast i8* %"$adtval_627_salloc" to %CName_Nil_Int32*
  %"$adtgep_628" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_627", i32 0, i32 0
  store i8 1, i8* %"$adtgep_628", align 1
  %"$adtptr_629" = bitcast %CName_Nil_Int32* %"$adtval_627" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_629", %TName_List_Int32** %an, align 8, !dbg !25
  %"$gasrem_630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_631" = icmp ugt i64 1, %"$gasrem_630"
  br i1 %"$gascmp_631", label %"$out_of_gas_632", label %"$have_gas_633"

"$out_of_gas_632":                                ; preds = %"$have_gas_625"
  call void @_out_of_gas()
  br label %"$have_gas_633"

"$have_gas_633":                                  ; preds = %"$out_of_gas_632", %"$have_gas_625"
  %"$consume_634" = sub i64 %"$gasrem_630", 1
  store i64 %"$consume_634", i64* @_gasrem, align 8
  %"$an_635" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_636_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_636_salloc" = call i8* @_salloc(i8* %"$adtval_636_load", i64 13)
  %"$adtval_636" = bitcast i8* %"$adtval_636_salloc" to %CName_Cons_Int32*
  %"$adtgep_637" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_636", i32 0, i32 0
  store i8 0, i8* %"$adtgep_637", align 1
  %"$adtgep_638" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_636", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_638", align 4
  %"$adtgep_639" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_636", i32 0, i32 2
  store %TName_List_Int32* %"$an_635", %TName_List_Int32** %"$adtgep_639", align 8
  %"$adtptr_640" = bitcast %CName_Cons_Int32* %"$adtval_636" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_640", %TName_List_Int32** %"$retval_46", align 8, !dbg !26
  %"$$retval_46_641" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_46", align 8
  ret %TName_List_Int32* %"$$retval_46_641"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_43"(%"$$fundef_43_env_137"* %0) !dbg !27 {
entry:
  %"$retval_44" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_609" = icmp ugt i64 1, %"$gasrem_608"
  br i1 %"$gascmp_609", label %"$out_of_gas_610", label %"$have_gas_611"

"$out_of_gas_610":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_611"

"$have_gas_611":                                  ; preds = %"$out_of_gas_610", %entry
  %"$consume_612" = sub i64 %"$gasrem_608", 1
  store i64 %"$consume_612", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_45_env_136"*, %Int32)* @"$fundef_45" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_44", align 8, !dbg !28
  %"$$retval_44_616" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_44", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_44_616"
}

define internal %Uint32 @"$fundef_40"(%"$$fundef_40_env_138"* %0, %Int64 %1) !dbg !29 {
entry:
  %"$$fundef_40_env_one_600" = getelementptr inbounds %"$$fundef_40_env_138", %"$$fundef_40_env_138"* %0, i32 0, i32 0
  %"$one_envload_601" = load %Uint32, %Uint32* %"$$fundef_40_env_one_600", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_601", %Uint32* %one, align 4
  %"$$fundef_40_env_z_602" = getelementptr inbounds %"$$fundef_40_env_138", %"$$fundef_40_env_138"* %0, i32 0, i32 1
  %"$z_envload_603" = load %Uint32, %Uint32* %"$$fundef_40_env_z_602", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_603", %Uint32* %z, align 4
  %"$retval_41" = alloca %Uint32, align 8
  %"$one_604" = load %Uint32, %Uint32* %one, align 4
  %"$z_605" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_606" = call %Uint32 @_add_Uint32(%Uint32 %"$one_604", %Uint32 %"$z_605"), !dbg !31
  store %Uint32 %"$add_call_606", %Uint32* %"$retval_41", align 4, !dbg !31
  %"$$retval_41_607" = load %Uint32, %Uint32* %"$retval_41", align 4
  ret %Uint32 %"$$retval_41_607"
}

define internal { %Uint32 (i8*, %Int64)*, i8* } @"$fundef_38"(%"$$fundef_38_env_139"* %0, %Uint32 %1) !dbg !32 {
entry:
  %"$$fundef_38_env_one_585" = getelementptr inbounds %"$$fundef_38_env_139", %"$$fundef_38_env_139"* %0, i32 0, i32 0
  %"$one_envload_586" = load %Uint32, %Uint32* %"$$fundef_38_env_one_585", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_586", %Uint32* %one, align 4
  %"$retval_39" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_588" = icmp ugt i64 1, %"$gasrem_587"
  br i1 %"$gascmp_588", label %"$out_of_gas_589", label %"$have_gas_590"

"$out_of_gas_589":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_590"

"$have_gas_590":                                  ; preds = %"$out_of_gas_589", %entry
  %"$consume_591" = sub i64 %"$gasrem_587", 1
  store i64 %"$consume_591", i64* @_gasrem, align 8
  %"$$fundef_40_envp_592_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_40_envp_592_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_592_load", i64 8)
  %"$$fundef_40_envp_592" = bitcast i8* %"$$fundef_40_envp_592_salloc" to %"$$fundef_40_env_138"*
  %"$$fundef_40_env_voidp_594" = bitcast %"$$fundef_40_env_138"* %"$$fundef_40_envp_592" to i8*
  %"$$fundef_40_cloval_595" = insertvalue { %Uint32 (i8*, %Int64)*, i8* } { %Uint32 (i8*, %Int64)* bitcast (%Uint32 (%"$$fundef_40_env_138"*, %Int64)* @"$fundef_40" to %Uint32 (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_40_env_voidp_594", 1
  %"$$fundef_40_env_one_596" = getelementptr inbounds %"$$fundef_40_env_138", %"$$fundef_40_env_138"* %"$$fundef_40_envp_592", i32 0, i32 0
  %"$one_597" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_597", %Uint32* %"$$fundef_40_env_one_596", align 4
  %"$$fundef_40_env_z_598" = getelementptr inbounds %"$$fundef_40_env_138", %"$$fundef_40_env_138"* %"$$fundef_40_envp_592", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_40_env_z_598", align 4
  store { %Uint32 (i8*, %Int64)*, i8* } %"$$fundef_40_cloval_595", { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_39", align 8, !dbg !33
  %"$$retval_39_599" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_39", align 8
  ret { %Uint32 (i8*, %Int64)*, i8* } %"$$retval_39_599"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_36"(%"$$fundef_36_env_140"* %0) !dbg !34 {
entry:
  %"$$fundef_36_env_list_foldl_507" = getelementptr inbounds %"$$fundef_36_env_140", %"$$fundef_36_env_140"* %0, i32 0, i32 0
  %"$list_foldl_envload_508" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_36_env_list_foldl_507", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_508", { i8*, i8* }** %list_foldl, align 8
  %"$retval_37" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_510" = icmp ugt i64 1, %"$gasrem_509"
  br i1 %"$gascmp_510", label %"$out_of_gas_511", label %"$have_gas_512"

"$out_of_gas_511":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_512"

"$have_gas_512":                                  ; preds = %"$out_of_gas_511", %entry
  %"$consume_513" = sub i64 %"$gasrem_509", 1
  store i64 %"$consume_513", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_515" = icmp ugt i64 1, %"$gasrem_514"
  br i1 %"$gascmp_515", label %"$out_of_gas_516", label %"$have_gas_517"

"$out_of_gas_516":                                ; preds = %"$have_gas_512"
  call void @_out_of_gas()
  br label %"$have_gas_517"

"$have_gas_517":                                  ; preds = %"$out_of_gas_516", %"$have_gas_512"
  %"$consume_518" = sub i64 %"$gasrem_514", 1
  store i64 %"$consume_518", i64* @_gasrem, align 8
  %"$list_foldl_519" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_520" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_519", i32 2
  %"$list_foldl_521" = bitcast { i8*, i8* }* %"$list_foldl_520" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_522" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_521", align 8
  %"$list_foldl_fptr_523" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_522", 0
  %"$list_foldl_envptr_524" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_522", 1
  %"$list_foldl_call_525" = call { i8*, i8* }* %"$list_foldl_fptr_523"(i8* %"$list_foldl_envptr_524"), !dbg !35
  %"$list_foldl_526" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_525", i32 1
  %"$list_foldl_527" = bitcast { i8*, i8* }* %"$list_foldl_526" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_528" = load { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_527", align 8
  %"$list_foldl_fptr_529" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_528", 0
  %"$list_foldl_envptr_530" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_528", 1
  %"$list_foldl_call_531" = call { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_529"(i8* %"$list_foldl_envptr_530"), !dbg !35
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_531", { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8, !dbg !36
  %"$gasrem_532" = load i64, i64* @_gasrem, align 8
  %"$gascmp_533" = icmp ugt i64 1, %"$gasrem_532"
  br i1 %"$gascmp_533", label %"$out_of_gas_534", label %"$have_gas_535"

"$out_of_gas_534":                                ; preds = %"$have_gas_517"
  call void @_out_of_gas()
  br label %"$have_gas_535"

"$have_gas_535":                                  ; preds = %"$out_of_gas_534", %"$have_gas_517"
  %"$consume_536" = sub i64 %"$gasrem_532", 1
  store i64 %"$consume_536", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_538" = icmp ugt i64 1, %"$gasrem_537"
  br i1 %"$gascmp_538", label %"$out_of_gas_539", label %"$have_gas_540"

"$out_of_gas_539":                                ; preds = %"$have_gas_535"
  call void @_out_of_gas()
  br label %"$have_gas_540"

"$have_gas_540":                                  ; preds = %"$out_of_gas_539", %"$have_gas_535"
  %"$consume_541" = sub i64 %"$gasrem_537", 1
  store i64 %"$consume_541", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !37
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 1, %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %"$have_gas_540"
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %"$have_gas_540"
  %"$consume_546" = sub i64 %"$gasrem_542", 1
  store i64 %"$consume_546", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$have_gas_545"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$have_gas_545"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  %"$$fundef_38_envp_552_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_38_envp_552_salloc" = call i8* @_salloc(i8* %"$$fundef_38_envp_552_load", i64 4)
  %"$$fundef_38_envp_552" = bitcast i8* %"$$fundef_38_envp_552_salloc" to %"$$fundef_38_env_139"*
  %"$$fundef_38_env_voidp_554" = bitcast %"$$fundef_38_env_139"* %"$$fundef_38_envp_552" to i8*
  %"$$fundef_38_cloval_555" = insertvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int64)*, i8* } (%"$$fundef_38_env_139"*, %Uint32)* @"$fundef_38" to { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_38_env_voidp_554", 1
  %"$$fundef_38_env_one_556" = getelementptr inbounds %"$$fundef_38_env_139", %"$$fundef_38_env_139"* %"$$fundef_38_envp_552", i32 0, i32 0
  %"$one_557" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_557", %Uint32* %"$$fundef_38_env_one_556", align 4
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_38_cloval_555", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8, !dbg !38
  %"$gasrem_558" = load i64, i64* @_gasrem, align 8
  %"$gascmp_559" = icmp ugt i64 1, %"$gasrem_558"
  br i1 %"$gascmp_559", label %"$out_of_gas_560", label %"$have_gas_561"

"$out_of_gas_560":                                ; preds = %"$have_gas_550"
  call void @_out_of_gas()
  br label %"$have_gas_561"

"$have_gas_561":                                  ; preds = %"$out_of_gas_560", %"$have_gas_550"
  %"$consume_562" = sub i64 %"$gasrem_558", 1
  store i64 %"$consume_562", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_564" = icmp ugt i64 1, %"$gasrem_563"
  br i1 %"$gascmp_564", label %"$out_of_gas_565", label %"$have_gas_566"

"$out_of_gas_565":                                ; preds = %"$have_gas_561"
  call void @_out_of_gas()
  br label %"$have_gas_566"

"$have_gas_566":                                  ; preds = %"$out_of_gas_565", %"$have_gas_561"
  %"$consume_567" = sub i64 %"$gasrem_563", 1
  store i64 %"$consume_567", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4, !dbg !39
  %"$gasrem_568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_569" = icmp ugt i64 1, %"$gasrem_568"
  br i1 %"$gascmp_569", label %"$out_of_gas_570", label %"$have_gas_571"

"$out_of_gas_570":                                ; preds = %"$have_gas_566"
  call void @_out_of_gas()
  br label %"$have_gas_571"

"$have_gas_571":                                  ; preds = %"$out_of_gas_570", %"$have_gas_566"
  %"$consume_572" = sub i64 %"$gasrem_568", 1
  store i64 %"$consume_572", i64* @_gasrem, align 8
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_573" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_574" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_573", 0
  %"$foldl_envptr_575" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_573", 1
  %"$iter_576" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_577" = call { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_574"(i8* %"$foldl_envptr_575", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_576"), !dbg !40
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_577", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8, !dbg !40
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$$foldl_4_578" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8
  %"$$foldl_4_fptr_579" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_578", 0
  %"$$foldl_4_envptr_580" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_578", 1
  %"$init_581" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_4_call_582" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_fptr_579"(i8* %"$$foldl_4_envptr_580", %Uint32 %"$init_581"), !dbg !40
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_call_582", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5", align 8, !dbg !40
  %"$$foldl_5_583" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5", align 8
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_5_583", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_37", align 8, !dbg !40
  %"$$retval_37_584" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_37", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_37_584"
}

define internal %Uint32 @"$fundef_34"(%"$$fundef_34_env_141"* %0, %Int32 %1) !dbg !41 {
entry:
  %"$$fundef_34_env_one_499" = getelementptr inbounds %"$$fundef_34_env_141", %"$$fundef_34_env_141"* %0, i32 0, i32 0
  %"$one_envload_500" = load %Uint32, %Uint32* %"$$fundef_34_env_one_499", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_500", %Uint32* %one, align 4
  %"$$fundef_34_env_z_501" = getelementptr inbounds %"$$fundef_34_env_141", %"$$fundef_34_env_141"* %0, i32 0, i32 1
  %"$z_envload_502" = load %Uint32, %Uint32* %"$$fundef_34_env_z_501", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_502", %Uint32* %z, align 4
  %"$retval_35" = alloca %Uint32, align 8
  %"$one_503" = load %Uint32, %Uint32* %one, align 4
  %"$z_504" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_505" = call %Uint32 @_add_Uint32(%Uint32 %"$one_503", %Uint32 %"$z_504"), !dbg !42
  store %Uint32 %"$add_call_505", %Uint32* %"$retval_35", align 4, !dbg !42
  %"$$retval_35_506" = load %Uint32, %Uint32* %"$retval_35", align 4
  ret %Uint32 %"$$retval_35_506"
}

define internal { %Uint32 (i8*, %Int32)*, i8* } @"$fundef_32"(%"$$fundef_32_env_142"* %0, %Uint32 %1) !dbg !43 {
entry:
  %"$$fundef_32_env_one_484" = getelementptr inbounds %"$$fundef_32_env_142", %"$$fundef_32_env_142"* %0, i32 0, i32 0
  %"$one_envload_485" = load %Uint32, %Uint32* %"$$fundef_32_env_one_484", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_485", %Uint32* %one, align 4
  %"$retval_33" = alloca { %Uint32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_487" = icmp ugt i64 1, %"$gasrem_486"
  br i1 %"$gascmp_487", label %"$out_of_gas_488", label %"$have_gas_489"

"$out_of_gas_488":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_489"

"$have_gas_489":                                  ; preds = %"$out_of_gas_488", %entry
  %"$consume_490" = sub i64 %"$gasrem_486", 1
  store i64 %"$consume_490", i64* @_gasrem, align 8
  %"$$fundef_34_envp_491_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_34_envp_491_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_491_load", i64 8)
  %"$$fundef_34_envp_491" = bitcast i8* %"$$fundef_34_envp_491_salloc" to %"$$fundef_34_env_141"*
  %"$$fundef_34_env_voidp_493" = bitcast %"$$fundef_34_env_141"* %"$$fundef_34_envp_491" to i8*
  %"$$fundef_34_cloval_494" = insertvalue { %Uint32 (i8*, %Int32)*, i8* } { %Uint32 (i8*, %Int32)* bitcast (%Uint32 (%"$$fundef_34_env_141"*, %Int32)* @"$fundef_34" to %Uint32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_34_env_voidp_493", 1
  %"$$fundef_34_env_one_495" = getelementptr inbounds %"$$fundef_34_env_141", %"$$fundef_34_env_141"* %"$$fundef_34_envp_491", i32 0, i32 0
  %"$one_496" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_496", %Uint32* %"$$fundef_34_env_one_495", align 4
  %"$$fundef_34_env_z_497" = getelementptr inbounds %"$$fundef_34_env_141", %"$$fundef_34_env_141"* %"$$fundef_34_envp_491", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_34_env_z_497", align 4
  store { %Uint32 (i8*, %Int32)*, i8* } %"$$fundef_34_cloval_494", { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_33", align 8, !dbg !44
  %"$$retval_33_498" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_33", align 8
  ret { %Uint32 (i8*, %Int32)*, i8* } %"$$retval_33_498"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_30"(%"$$fundef_30_env_143"* %0) !dbg !45 {
entry:
  %"$$fundef_30_env_list_foldl_406" = getelementptr inbounds %"$$fundef_30_env_143", %"$$fundef_30_env_143"* %0, i32 0, i32 0
  %"$list_foldl_envload_407" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_30_env_list_foldl_406", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_407", { i8*, i8* }** %list_foldl, align 8
  %"$retval_31" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_409" = icmp ugt i64 1, %"$gasrem_408"
  br i1 %"$gascmp_409", label %"$out_of_gas_410", label %"$have_gas_411"

"$out_of_gas_410":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_411"

"$have_gas_411":                                  ; preds = %"$out_of_gas_410", %entry
  %"$consume_412" = sub i64 %"$gasrem_408", 1
  store i64 %"$consume_412", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_411"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_411"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %"$list_foldl_418" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_419" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_418", i32 0
  %"$list_foldl_420" = bitcast { i8*, i8* }* %"$list_foldl_419" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_421" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_420", align 8
  %"$list_foldl_fptr_422" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_421", 0
  %"$list_foldl_envptr_423" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_421", 1
  %"$list_foldl_call_424" = call { i8*, i8* }* %"$list_foldl_fptr_422"(i8* %"$list_foldl_envptr_423"), !dbg !46
  %"$list_foldl_425" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_424", i32 1
  %"$list_foldl_426" = bitcast { i8*, i8* }* %"$list_foldl_425" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_427" = load { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_426", align 8
  %"$list_foldl_fptr_428" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_427", 0
  %"$list_foldl_envptr_429" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_427", 1
  %"$list_foldl_call_430" = call { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_428"(i8* %"$list_foldl_envptr_429"), !dbg !46
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_430", { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8, !dbg !47
  %"$gasrem_431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_432" = icmp ugt i64 1, %"$gasrem_431"
  br i1 %"$gascmp_432", label %"$out_of_gas_433", label %"$have_gas_434"

"$out_of_gas_433":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_434"

"$have_gas_434":                                  ; preds = %"$out_of_gas_433", %"$have_gas_416"
  %"$consume_435" = sub i64 %"$gasrem_431", 1
  store i64 %"$consume_435", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_434"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_434"
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !48
  %"$gasrem_441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_442" = icmp ugt i64 1, %"$gasrem_441"
  br i1 %"$gascmp_442", label %"$out_of_gas_443", label %"$have_gas_444"

"$out_of_gas_443":                                ; preds = %"$have_gas_439"
  call void @_out_of_gas()
  br label %"$have_gas_444"

"$have_gas_444":                                  ; preds = %"$out_of_gas_443", %"$have_gas_439"
  %"$consume_445" = sub i64 %"$gasrem_441", 1
  store i64 %"$consume_445", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_447" = icmp ugt i64 1, %"$gasrem_446"
  br i1 %"$gascmp_447", label %"$out_of_gas_448", label %"$have_gas_449"

"$out_of_gas_448":                                ; preds = %"$have_gas_444"
  call void @_out_of_gas()
  br label %"$have_gas_449"

"$have_gas_449":                                  ; preds = %"$out_of_gas_448", %"$have_gas_444"
  %"$consume_450" = sub i64 %"$gasrem_446", 1
  store i64 %"$consume_450", i64* @_gasrem, align 8
  %"$$fundef_32_envp_451_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_32_envp_451_salloc" = call i8* @_salloc(i8* %"$$fundef_32_envp_451_load", i64 4)
  %"$$fundef_32_envp_451" = bitcast i8* %"$$fundef_32_envp_451_salloc" to %"$$fundef_32_env_142"*
  %"$$fundef_32_env_voidp_453" = bitcast %"$$fundef_32_env_142"* %"$$fundef_32_envp_451" to i8*
  %"$$fundef_32_cloval_454" = insertvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int32)*, i8* } (%"$$fundef_32_env_142"*, %Uint32)* @"$fundef_32" to { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_32_env_voidp_453", 1
  %"$$fundef_32_env_one_455" = getelementptr inbounds %"$$fundef_32_env_142", %"$$fundef_32_env_142"* %"$$fundef_32_envp_451", i32 0, i32 0
  %"$one_456" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_456", %Uint32* %"$$fundef_32_env_one_455", align 4
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_32_cloval_454", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8, !dbg !49
  %"$gasrem_457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_458" = icmp ugt i64 1, %"$gasrem_457"
  br i1 %"$gascmp_458", label %"$out_of_gas_459", label %"$have_gas_460"

"$out_of_gas_459":                                ; preds = %"$have_gas_449"
  call void @_out_of_gas()
  br label %"$have_gas_460"

"$have_gas_460":                                  ; preds = %"$out_of_gas_459", %"$have_gas_449"
  %"$consume_461" = sub i64 %"$gasrem_457", 1
  store i64 %"$consume_461", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 1, %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %"$have_gas_460"
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %"$have_gas_460"
  %"$consume_466" = sub i64 %"$gasrem_462", 1
  store i64 %"$consume_466", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4, !dbg !50
  %"$gasrem_467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_468" = icmp ugt i64 1, %"$gasrem_467"
  br i1 %"$gascmp_468", label %"$out_of_gas_469", label %"$have_gas_470"

"$out_of_gas_469":                                ; preds = %"$have_gas_465"
  call void @_out_of_gas()
  br label %"$have_gas_470"

"$have_gas_470":                                  ; preds = %"$out_of_gas_469", %"$have_gas_465"
  %"$consume_471" = sub i64 %"$gasrem_467", 1
  store i64 %"$consume_471", i64* @_gasrem, align 8
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_472" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_473" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_472", 0
  %"$foldl_envptr_474" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_472", 1
  %"$iter_475" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_476" = call { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_473"(i8* %"$foldl_envptr_474", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_475"), !dbg !51
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_476", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8, !dbg !51
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$$foldl_4_477" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8
  %"$$foldl_4_fptr_478" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_477", 0
  %"$$foldl_4_envptr_479" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_477", 1
  %"$init_480" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_4_call_481" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_fptr_478"(i8* %"$$foldl_4_envptr_479", %Uint32 %"$init_480"), !dbg !51
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_call_481", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5", align 8, !dbg !51
  %"$$foldl_5_482" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5", align 8
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_5_482", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_31", align 8, !dbg !51
  %"$$retval_31_483" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_31", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_31_483"
}

define internal %Uint32 @"$fundef_28"(%"$$fundef_28_env_144"* %0, %TName_List_Int64* %1) !dbg !52 {
entry:
  %"$$fundef_28_env_f_339" = getelementptr inbounds %"$$fundef_28_env_144", %"$$fundef_28_env_144"* %0, i32 0, i32 0
  %"$f_envload_340" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_339", align 8
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_340", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_28_env_g_341" = getelementptr inbounds %"$$fundef_28_env_144", %"$$fundef_28_env_144"* %0, i32 0, i32 1
  %"$g_envload_342" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_341", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_342", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_28_env_z_343" = getelementptr inbounds %"$$fundef_28_env_144", %"$$fundef_28_env_144"* %0, i32 0, i32 2
  %"$z_envload_344" = load %Uint32, %Uint32* %"$$fundef_28_env_z_343", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_344", %Uint32* %z, align 4
  %"$retval_29" = alloca %Uint32, align 8
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 2, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %entry
  %"$consume_349" = sub i64 %"$gasrem_345", 2
  store i64 %"$consume_349", i64* @_gasrem, align 8
  %"$l_tag_351" = getelementptr inbounds %TName_List_Int64, %TName_List_Int64* %1, i32 0, i32 0
  %"$l_tag_352" = load i8, i8* %"$l_tag_351", align 1
  switch i8 %"$l_tag_352", label %"$empty_default_353" [
    i8 0, label %"$Cons_354"
    i8 1, label %"$Nil_397"
  ], !dbg !54

"$Cons_354":                                      ; preds = %"$have_gas_348"
  %"$l_355" = bitcast %TName_List_Int64* %1 to %CName_Cons_Int64*
  %"$h_gep_356" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_355", i32 0, i32 1
  %"$h_load_357" = load %Int64, %Int64* %"$h_gep_356", align 8
  %h = alloca %Int64, align 8
  store %Int64 %"$h_load_357", %Int64* %h, align 8
  %"$t_gep_358" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_355", i32 0, i32 2
  %"$t_load_359" = load %TName_List_Int64*, %TName_List_Int64** %"$t_gep_358", align 8
  %t = alloca %TName_List_Int64*, align 8
  store %TName_List_Int64* %"$t_load_359", %TName_List_Int64** %t, align 8
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$Cons_354"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$Cons_354"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 1, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %"$have_gas_363"
  %"$consume_369" = sub i64 %"$gasrem_365", 1
  store i64 %"$consume_369", i64* @_gasrem, align 8
  %"$f_0" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$f_370" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_371" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_370", 0
  %"$f_envptr_372" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_370", 1
  %"$z_373" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_374" = call { %Uint32 (i8*, %Int64)*, i8* } %"$f_fptr_371"(i8* %"$f_envptr_372", %Uint32 %"$z_373"), !dbg !55
  store { %Uint32 (i8*, %Int64)*, i8* } %"$f_call_374", { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0", align 8, !dbg !55
  %"$f_1" = alloca %Uint32, align 8
  %"$$f_0_375" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0", align 8
  %"$$f_0_fptr_376" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_375", 0
  %"$$f_0_envptr_377" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_375", 1
  %"$h_378" = load %Int64, %Int64* %h, align 8
  %"$$f_0_call_379" = call %Uint32 %"$$f_0_fptr_376"(i8* %"$$f_0_envptr_377", %Int64 %"$h_378"), !dbg !55
  store %Uint32 %"$$f_0_call_379", %Uint32* %"$f_1", align 4, !dbg !55
  %"$$f_1_380" = load %Uint32, %Uint32* %"$f_1", align 4
  store %Uint32 %"$$f_1_380", %Uint32* %res, align 4, !dbg !55
  %"$gasrem_381" = load i64, i64* @_gasrem, align 8
  %"$gascmp_382" = icmp ugt i64 1, %"$gasrem_381"
  br i1 %"$gascmp_382", label %"$out_of_gas_383", label %"$have_gas_384"

"$out_of_gas_383":                                ; preds = %"$have_gas_368"
  call void @_out_of_gas()
  br label %"$have_gas_384"

"$have_gas_384":                                  ; preds = %"$out_of_gas_383", %"$have_gas_368"
  %"$consume_385" = sub i64 %"$gasrem_381", 1
  store i64 %"$consume_385", i64* @_gasrem, align 8
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$g_386" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_387" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_386", 0
  %"$g_envptr_388" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_386", 1
  %"$res_389" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_390" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_fptr_387"(i8* %"$g_envptr_388", %Uint32 %"$res_389"), !dbg !58
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_call_390", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2", align 8, !dbg !58
  %"$g_3" = alloca %Uint32, align 8
  %"$$g_2_391" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2", align 8
  %"$$g_2_fptr_392" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_391", 0
  %"$$g_2_envptr_393" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_391", 1
  %"$t_394" = load %TName_List_Int64*, %TName_List_Int64** %t, align 8
  %"$$g_2_call_395" = call %Uint32 %"$$g_2_fptr_392"(i8* %"$$g_2_envptr_393", %TName_List_Int64* %"$t_394"), !dbg !58
  store %Uint32 %"$$g_2_call_395", %Uint32* %"$g_3", align 4, !dbg !58
  %"$$g_3_396" = load %Uint32, %Uint32* %"$g_3", align 4
  store %Uint32 %"$$g_3_396", %Uint32* %"$retval_29", align 4, !dbg !58
  br label %"$matchsucc_350"

"$Nil_397":                                       ; preds = %"$have_gas_348"
  %"$l_398" = bitcast %TName_List_Int64* %1 to %CName_Nil_Int64*
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$Nil_397"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$Nil_397"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %"$z_404" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_404", %Uint32* %"$retval_29", align 4, !dbg !59
  br label %"$matchsucc_350"

"$empty_default_353":                             ; preds = %"$have_gas_348"
  br label %"$matchsucc_350"

"$matchsucc_350":                                 ; preds = %"$have_gas_402", %"$have_gas_384", %"$empty_default_353"
  %"$$retval_29_405" = load %Uint32, %Uint32* %"$retval_29", align 4
  ret %Uint32 %"$$retval_29_405"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_26"(%"$$fundef_26_env_145"* %0, %Uint32 %1) !dbg !61 {
entry:
  %"$$fundef_26_env_f_320" = getelementptr inbounds %"$$fundef_26_env_145", %"$$fundef_26_env_145"* %0, i32 0, i32 0
  %"$f_envload_321" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_f_320", align 8
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_321", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_26_env_g_322" = getelementptr inbounds %"$$fundef_26_env_145", %"$$fundef_26_env_145"* %0, i32 0, i32 1
  %"$g_envload_323" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_g_322", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_323", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_27" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_325" = icmp ugt i64 1, %"$gasrem_324"
  br i1 %"$gascmp_325", label %"$out_of_gas_326", label %"$have_gas_327"

"$out_of_gas_326":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_327"

"$have_gas_327":                                  ; preds = %"$out_of_gas_326", %entry
  %"$consume_328" = sub i64 %"$gasrem_324", 1
  store i64 %"$consume_328", i64* @_gasrem, align 8
  %"$$fundef_28_envp_329_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_28_envp_329_salloc" = call i8* @_salloc(i8* %"$$fundef_28_envp_329_load", i64 40)
  %"$$fundef_28_envp_329" = bitcast i8* %"$$fundef_28_envp_329_salloc" to %"$$fundef_28_env_144"*
  %"$$fundef_28_env_voidp_331" = bitcast %"$$fundef_28_env_144"* %"$$fundef_28_envp_329" to i8*
  %"$$fundef_28_cloval_332" = insertvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } { %Uint32 (i8*, %TName_List_Int64*)* bitcast (%Uint32 (%"$$fundef_28_env_144"*, %TName_List_Int64*)* @"$fundef_28" to %Uint32 (i8*, %TName_List_Int64*)*), i8* undef }, i8* %"$$fundef_28_env_voidp_331", 1
  %"$$fundef_28_env_f_333" = getelementptr inbounds %"$$fundef_28_env_144", %"$$fundef_28_env_144"* %"$$fundef_28_envp_329", i32 0, i32 0
  %"$f_334" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_334", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_333", align 8
  %"$$fundef_28_env_g_335" = getelementptr inbounds %"$$fundef_28_env_144", %"$$fundef_28_env_144"* %"$$fundef_28_envp_329", i32 0, i32 1
  %"$g_336" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_336", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_335", align 8
  %"$$fundef_28_env_z_337" = getelementptr inbounds %"$$fundef_28_env_144", %"$$fundef_28_env_144"* %"$$fundef_28_envp_329", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_28_env_z_337", align 4
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$fundef_28_cloval_332", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_27", align 8, !dbg !62
  %"$$retval_27_338" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_27", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_27_338"
}

define internal { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_24"(%"$$fundef_24_env_146"* %0, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !63 {
entry:
  %"$retval_25" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %entry
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %"$gasrem_306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_307" = icmp ugt i64 1, %"$gasrem_306"
  br i1 %"$gascmp_307", label %"$out_of_gas_308", label %"$have_gas_309"

"$out_of_gas_308":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_309"

"$have_gas_309":                                  ; preds = %"$out_of_gas_308", %"$have_gas_304"
  %"$consume_310" = sub i64 %"$gasrem_306", 1
  store i64 %"$consume_310", i64* @_gasrem, align 8
  %"$$fundef_26_envp_311_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_26_envp_311_salloc" = call i8* @_salloc(i8* %"$$fundef_26_envp_311_load", i64 32)
  %"$$fundef_26_envp_311" = bitcast i8* %"$$fundef_26_envp_311_salloc" to %"$$fundef_26_env_145"*
  %"$$fundef_26_env_voidp_313" = bitcast %"$$fundef_26_env_145"* %"$$fundef_26_envp_311" to i8*
  %"$$fundef_26_cloval_314" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_26_env_145"*, %Uint32)* @"$fundef_26" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_26_env_voidp_313", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_26_cloval_314", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !64
  %"$$fundef_26_env_f_315" = getelementptr inbounds %"$$fundef_26_env_145", %"$$fundef_26_env_145"* %"$$fundef_26_envp_311", i32 0, i32 0
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_f_315", align 8
  %"$$fundef_26_env_g_316" = getelementptr inbounds %"$$fundef_26_env_145", %"$$fundef_26_env_145"* %"$$fundef_26_envp_311", i32 0, i32 1
  %"$g_317" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_317", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_g_316", align 8
  %"$g_318" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_318", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_25", align 8, !dbg !64
  %"$$retval_25_319" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_25", align 8
  ret { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_25_319"
}

define internal { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_22"(%"$$fundef_22_env_147"* %0) !dbg !65 {
entry:
  %"$retval_23" = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 1, %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %entry
  %"$consume_296" = sub i64 %"$gasrem_292", 1
  store i64 %"$consume_296", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_24_env_146"*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_24" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_23", align 8, !dbg !66
  %"$$retval_23_300" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_23", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_23_300"
}

define internal { i8*, i8* }* @"$fundef_20"(%"$$fundef_20_env_148"* %0) !dbg !67 {
entry:
  %"$retval_21" = alloca { i8*, i8* }*, align 8
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 1, %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %entry
  %"$consume_284" = sub i64 %"$gasrem_280", 1
  store i64 %"$consume_284", i64* @_gasrem, align 8
  %"$dyndisp_table_288_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_288_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_288_salloc_load", i64 48)
  %"$dyndisp_table_288_salloc" = bitcast i8* %"$dyndisp_table_288_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_288" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_288_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_289" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_288", i32 1
  %"$dyndisp_pcast_290" = bitcast { i8*, i8* }* %"$dyndisp_gep_289" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_22_env_147"*)* @"$fundef_22" to { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_290", align 8
  store { i8*, i8* }* %"$dyndisp_table_288", { i8*, i8* }** %"$retval_21", align 8, !dbg !68
  %"$$retval_21_291" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_21", align 8
  ret { i8*, i8* }* %"$$retval_21_291"
}

define internal %Uint32 @"$fundef_18"(%"$$fundef_18_env_149"* %0, %TName_List_Int32* %1) !dbg !69 {
entry:
  %"$$fundef_18_env_f_213" = getelementptr inbounds %"$$fundef_18_env_149", %"$$fundef_18_env_149"* %0, i32 0, i32 0
  %"$f_envload_214" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_213", align 8
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_214", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_18_env_g_215" = getelementptr inbounds %"$$fundef_18_env_149", %"$$fundef_18_env_149"* %0, i32 0, i32 1
  %"$g_envload_216" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_215", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_216", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_18_env_z_217" = getelementptr inbounds %"$$fundef_18_env_149", %"$$fundef_18_env_149"* %0, i32 0, i32 2
  %"$z_envload_218" = load %Uint32, %Uint32* %"$$fundef_18_env_z_217", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_218", %Uint32* %z, align 4
  %"$retval_19" = alloca %Uint32, align 8
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 2, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %entry
  %"$consume_223" = sub i64 %"$gasrem_219", 2
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %"$l_tag_225" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %1, i32 0, i32 0
  %"$l_tag_226" = load i8, i8* %"$l_tag_225", align 1
  switch i8 %"$l_tag_226", label %"$empty_default_227" [
    i8 0, label %"$Cons_228"
    i8 1, label %"$Nil_271"
  ], !dbg !70

"$Cons_228":                                      ; preds = %"$have_gas_222"
  %"$l_229" = bitcast %TName_List_Int32* %1 to %CName_Cons_Int32*
  %"$h_gep_230" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_229", i32 0, i32 1
  %"$h_load_231" = load %Int32, %Int32* %"$h_gep_230", align 4
  %h = alloca %Int32, align 8
  store %Int32 %"$h_load_231", %Int32* %h, align 4
  %"$t_gep_232" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_229", i32 0, i32 2
  %"$t_load_233" = load %TName_List_Int32*, %TName_List_Int32** %"$t_gep_232", align 8
  %t = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$t_load_233", %TName_List_Int32** %t, align 8
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$Cons_228"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$Cons_228"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 1, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %"$have_gas_237"
  %"$consume_243" = sub i64 %"$gasrem_239", 1
  store i64 %"$consume_243", i64* @_gasrem, align 8
  %"$f_0" = alloca { %Uint32 (i8*, %Int32)*, i8* }, align 8
  %"$f_244" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_245" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_244", 0
  %"$f_envptr_246" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_244", 1
  %"$z_247" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_248" = call { %Uint32 (i8*, %Int32)*, i8* } %"$f_fptr_245"(i8* %"$f_envptr_246", %Uint32 %"$z_247"), !dbg !71
  store { %Uint32 (i8*, %Int32)*, i8* } %"$f_call_248", { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0", align 8, !dbg !71
  %"$f_1" = alloca %Uint32, align 8
  %"$$f_0_249" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0", align 8
  %"$$f_0_fptr_250" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_249", 0
  %"$$f_0_envptr_251" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_249", 1
  %"$h_252" = load %Int32, %Int32* %h, align 4
  %"$$f_0_call_253" = call %Uint32 %"$$f_0_fptr_250"(i8* %"$$f_0_envptr_251", %Int32 %"$h_252"), !dbg !71
  store %Uint32 %"$$f_0_call_253", %Uint32* %"$f_1", align 4, !dbg !71
  %"$$f_1_254" = load %Uint32, %Uint32* %"$f_1", align 4
  store %Uint32 %"$$f_1_254", %Uint32* %res, align 4, !dbg !71
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 1, %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$have_gas_242"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$have_gas_242"
  %"$consume_259" = sub i64 %"$gasrem_255", 1
  store i64 %"$consume_259", i64* @_gasrem, align 8
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$g_260" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_261" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_260", 0
  %"$g_envptr_262" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_260", 1
  %"$res_263" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_264" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_fptr_261"(i8* %"$g_envptr_262", %Uint32 %"$res_263"), !dbg !74
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_call_264", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2", align 8, !dbg !74
  %"$g_3" = alloca %Uint32, align 8
  %"$$g_2_265" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2", align 8
  %"$$g_2_fptr_266" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_265", 0
  %"$$g_2_envptr_267" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_265", 1
  %"$t_268" = load %TName_List_Int32*, %TName_List_Int32** %t, align 8
  %"$$g_2_call_269" = call %Uint32 %"$$g_2_fptr_266"(i8* %"$$g_2_envptr_267", %TName_List_Int32* %"$t_268"), !dbg !74
  store %Uint32 %"$$g_2_call_269", %Uint32* %"$g_3", align 4, !dbg !74
  %"$$g_3_270" = load %Uint32, %Uint32* %"$g_3", align 4
  store %Uint32 %"$$g_3_270", %Uint32* %"$retval_19", align 4, !dbg !74
  br label %"$matchsucc_224"

"$Nil_271":                                       ; preds = %"$have_gas_222"
  %"$l_272" = bitcast %TName_List_Int32* %1 to %CName_Nil_Int32*
  %"$gasrem_273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_274" = icmp ugt i64 1, %"$gasrem_273"
  br i1 %"$gascmp_274", label %"$out_of_gas_275", label %"$have_gas_276"

"$out_of_gas_275":                                ; preds = %"$Nil_271"
  call void @_out_of_gas()
  br label %"$have_gas_276"

"$have_gas_276":                                  ; preds = %"$out_of_gas_275", %"$Nil_271"
  %"$consume_277" = sub i64 %"$gasrem_273", 1
  store i64 %"$consume_277", i64* @_gasrem, align 8
  %"$z_278" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_278", %Uint32* %"$retval_19", align 4, !dbg !75
  br label %"$matchsucc_224"

"$empty_default_227":                             ; preds = %"$have_gas_222"
  br label %"$matchsucc_224"

"$matchsucc_224":                                 ; preds = %"$have_gas_276", %"$have_gas_258", %"$empty_default_227"
  %"$$retval_19_279" = load %Uint32, %Uint32* %"$retval_19", align 4
  ret %Uint32 %"$$retval_19_279"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_16"(%"$$fundef_16_env_150"* %0, %Uint32 %1) !dbg !77 {
entry:
  %"$$fundef_16_env_f_194" = getelementptr inbounds %"$$fundef_16_env_150", %"$$fundef_16_env_150"* %0, i32 0, i32 0
  %"$f_envload_195" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_f_194", align 8
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_195", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_16_env_g_196" = getelementptr inbounds %"$$fundef_16_env_150", %"$$fundef_16_env_150"* %0, i32 0, i32 1
  %"$g_envload_197" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_g_196", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_197", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_17" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 1, %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %entry
  %"$consume_202" = sub i64 %"$gasrem_198", 1
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %"$$fundef_18_envp_203_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_18_envp_203_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_203_load", i64 40)
  %"$$fundef_18_envp_203" = bitcast i8* %"$$fundef_18_envp_203_salloc" to %"$$fundef_18_env_149"*
  %"$$fundef_18_env_voidp_205" = bitcast %"$$fundef_18_env_149"* %"$$fundef_18_envp_203" to i8*
  %"$$fundef_18_cloval_206" = insertvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } { %Uint32 (i8*, %TName_List_Int32*)* bitcast (%Uint32 (%"$$fundef_18_env_149"*, %TName_List_Int32*)* @"$fundef_18" to %Uint32 (i8*, %TName_List_Int32*)*), i8* undef }, i8* %"$$fundef_18_env_voidp_205", 1
  %"$$fundef_18_env_f_207" = getelementptr inbounds %"$$fundef_18_env_149", %"$$fundef_18_env_149"* %"$$fundef_18_envp_203", i32 0, i32 0
  %"$f_208" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_208", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_207", align 8
  %"$$fundef_18_env_g_209" = getelementptr inbounds %"$$fundef_18_env_149", %"$$fundef_18_env_149"* %"$$fundef_18_envp_203", i32 0, i32 1
  %"$g_210" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_210", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_209", align 8
  %"$$fundef_18_env_z_211" = getelementptr inbounds %"$$fundef_18_env_149", %"$$fundef_18_env_149"* %"$$fundef_18_envp_203", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_18_env_z_211", align 4
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$fundef_18_cloval_206", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_17", align 8, !dbg !78
  %"$$retval_17_212" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_17", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_17_212"
}

define internal { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_14"(%"$$fundef_14_env_151"* %0, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !79 {
entry:
  %"$retval_15" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %entry
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_178"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_178"
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %"$$fundef_16_envp_185_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_16_envp_185_salloc" = call i8* @_salloc(i8* %"$$fundef_16_envp_185_load", i64 32)
  %"$$fundef_16_envp_185" = bitcast i8* %"$$fundef_16_envp_185_salloc" to %"$$fundef_16_env_150"*
  %"$$fundef_16_env_voidp_187" = bitcast %"$$fundef_16_env_150"* %"$$fundef_16_envp_185" to i8*
  %"$$fundef_16_cloval_188" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_16_env_150"*, %Uint32)* @"$fundef_16" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_16_env_voidp_187", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_16_cloval_188", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !80
  %"$$fundef_16_env_f_189" = getelementptr inbounds %"$$fundef_16_env_150", %"$$fundef_16_env_150"* %"$$fundef_16_envp_185", i32 0, i32 0
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_f_189", align 8
  %"$$fundef_16_env_g_190" = getelementptr inbounds %"$$fundef_16_env_150", %"$$fundef_16_env_150"* %"$$fundef_16_envp_185", i32 0, i32 1
  %"$g_191" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_191", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_g_190", align 8
  %"$g_192" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_192", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_15", align 8, !dbg !80
  %"$$retval_15_193" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_15", align 8
  ret { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_15_193"
}

define internal { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_12"(%"$$fundef_12_env_152"* %0) !dbg !81 {
entry:
  %"$retval_13" = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %entry
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_14_env_151"*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_14" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_13", align 8, !dbg !82
  %"$$retval_13_174" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_13", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_13_174"
}

define internal { i8*, i8* }* @"$fundef_10"(%"$$fundef_10_env_153"* %0) !dbg !83 {
entry:
  %"$retval_11" = alloca { i8*, i8* }*, align 8
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 1, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %entry
  %"$consume_158" = sub i64 %"$gasrem_154", 1
  store i64 %"$consume_158", i64* @_gasrem, align 8
  %"$dyndisp_table_162_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_162_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_162_salloc_load", i64 48)
  %"$dyndisp_table_162_salloc" = bitcast i8* %"$dyndisp_table_162_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_162" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_162_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_163" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_162", i32 1
  %"$dyndisp_pcast_164" = bitcast { i8*, i8* }* %"$dyndisp_gep_163" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_12_env_152"*)* @"$fundef_12" to { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_164", align 8
  store { i8*, i8* }* %"$dyndisp_table_162", { i8*, i8* }** %"$retval_11", align 8, !dbg !84
  %"$$retval_11_165" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_11", align 8
  ret { i8*, i8* }* %"$$retval_11_165"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() !dbg !85 {
entry:
  %"$gasrem_776" = load i64, i64* @_gasrem, align 8
  %"$gascmp_777" = icmp ugt i64 1, %"$gasrem_776"
  br i1 %"$gascmp_777", label %"$out_of_gas_778", label %"$have_gas_779"

"$out_of_gas_778":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_779"

"$have_gas_779":                                  ; preds = %"$out_of_gas_778", %entry
  %"$consume_780" = sub i64 %"$gasrem_776", 1
  store i64 %"$consume_780", i64* @_gasrem, align 8
  %"$dyndisp_table_787_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_787_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_787_salloc_load", i64 48)
  %"$dyndisp_table_787_salloc" = bitcast i8* %"$dyndisp_table_787_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_787" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_787_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_788" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_787", i32 0
  %"$dyndisp_pcast_789" = bitcast { i8*, i8* }* %"$dyndisp_gep_788" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_10_env_153"*)* @"$fundef_10" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_789", align 8
  %"$dyndisp_gep_790" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_787", i32 2
  %"$dyndisp_pcast_791" = bitcast { i8*, i8* }* %"$dyndisp_gep_790" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_20_env_148"*)* @"$fundef_20" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_791", align 8
  store { i8*, i8* }* %"$dyndisp_table_787", { i8*, i8* }** @list_foldl, align 8, !dbg !87
  %"$gasrem_792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_793" = icmp ugt i64 1, %"$gasrem_792"
  br i1 %"$gascmp_793", label %"$out_of_gas_794", label %"$have_gas_795"

"$out_of_gas_794":                                ; preds = %"$have_gas_779"
  call void @_out_of_gas()
  br label %"$have_gas_795"

"$have_gas_795":                                  ; preds = %"$out_of_gas_794", %"$have_gas_779"
  %"$consume_796" = sub i64 %"$gasrem_792", 1
  store i64 %"$consume_796", i64* @_gasrem, align 8
  %"$$fundef_30_envp_797_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_30_envp_797_salloc" = call i8* @_salloc(i8* %"$$fundef_30_envp_797_load", i64 8)
  %"$$fundef_30_envp_797" = bitcast i8* %"$$fundef_30_envp_797_salloc" to %"$$fundef_30_env_143"*
  %"$$fundef_30_env_voidp_799" = bitcast %"$$fundef_30_env_143"* %"$$fundef_30_envp_797" to i8*
  %"$$fundef_30_cloval_800" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_30_env_143"*)* @"$fundef_30" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_30_env_voidp_799", 1
  %"$$fundef_30_env_list_foldl_801" = getelementptr inbounds %"$$fundef_30_env_143", %"$$fundef_30_env_143"* %"$$fundef_30_envp_797", i32 0, i32 0
  %"$list_foldl_802" = load { i8*, i8* }*, { i8*, i8* }** @list_foldl, align 8
  store { i8*, i8* }* %"$list_foldl_802", { i8*, i8* }** %"$$fundef_30_env_list_foldl_801", align 8
  %"$$fundef_36_env_voidp_804" = bitcast %"$$fundef_30_env_143"* %"$$fundef_30_envp_797" to i8*
  %"$$fundef_36_cloval_805" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_36_env_140"*)* @"$fundef_36" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_36_env_voidp_804", 1
  %"$dyndisp_table_806_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_806_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_806_salloc_load", i64 48)
  %"$dyndisp_table_806_salloc" = bitcast i8* %"$dyndisp_table_806_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_806" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_806_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_807" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_806", i32 0
  %"$dyndisp_pcast_808" = bitcast { i8*, i8* }* %"$dyndisp_gep_807" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$$fundef_30_cloval_800", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_808", align 8
  %"$dyndisp_gep_809" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_806", i32 2
  %"$dyndisp_pcast_810" = bitcast { i8*, i8* }* %"$dyndisp_gep_809" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$$fundef_36_cloval_805", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_810", align 8
  store { i8*, i8* }* %"$dyndisp_table_806", { i8*, i8* }** @ListUtils.list_length, align 8, !dbg !88
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !89 {
entry:
  %"$expr_42" = alloca %Uint32, align 8
  %"$gasrem_811" = load i64, i64* @_gasrem, align 8
  %"$gascmp_812" = icmp ugt i64 1, %"$gasrem_811"
  br i1 %"$gascmp_812", label %"$out_of_gas_813", label %"$have_gas_814"

"$out_of_gas_813":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_814"

"$have_gas_814":                                  ; preds = %"$out_of_gas_813", %entry
  %"$consume_815" = sub i64 %"$gasrem_811", 1
  store i64 %"$consume_815", i64* @_gasrem, align 8
  %t1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_816" = load i64, i64* @_gasrem, align 8
  %"$gascmp_817" = icmp ugt i64 1, %"$gasrem_816"
  br i1 %"$gascmp_817", label %"$out_of_gas_818", label %"$have_gas_819"

"$out_of_gas_818":                                ; preds = %"$have_gas_814"
  call void @_out_of_gas()
  br label %"$have_gas_819"

"$have_gas_819":                                  ; preds = %"$out_of_gas_818", %"$have_gas_814"
  %"$consume_820" = sub i64 %"$gasrem_816", 1
  store i64 %"$consume_820", i64* @_gasrem, align 8
  %"$dyndisp_table_827_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_827_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_827_salloc_load", i64 48)
  %"$dyndisp_table_827_salloc" = bitcast i8* %"$dyndisp_table_827_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_827" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_827_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_828" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_827", i32 0
  %"$dyndisp_pcast_829" = bitcast { i8*, i8* }* %"$dyndisp_gep_828" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_43_env_137"*)* @"$fundef_43" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_829", align 8
  %"$dyndisp_gep_830" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_827", i32 2
  %"$dyndisp_pcast_831" = bitcast { i8*, i8* }* %"$dyndisp_gep_830" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_47_env_135"*)* @"$fundef_47" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_831", align 8
  store { i8*, i8* }* %"$dyndisp_table_827", { i8*, i8* }** %t1, align 8, !dbg !90
  %"$gasrem_832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_833" = icmp ugt i64 1, %"$gasrem_832"
  br i1 %"$gascmp_833", label %"$out_of_gas_834", label %"$have_gas_835"

"$out_of_gas_834":                                ; preds = %"$have_gas_819"
  call void @_out_of_gas()
  br label %"$have_gas_835"

"$have_gas_835":                                  ; preds = %"$out_of_gas_834", %"$have_gas_819"
  %"$consume_836" = sub i64 %"$gasrem_832", 1
  store i64 %"$consume_836", i64* @_gasrem, align 8
  %t2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_837" = load i64, i64* @_gasrem, align 8
  %"$gascmp_838" = icmp ugt i64 1, %"$gasrem_837"
  br i1 %"$gascmp_838", label %"$out_of_gas_839", label %"$have_gas_840"

"$out_of_gas_839":                                ; preds = %"$have_gas_835"
  call void @_out_of_gas()
  br label %"$have_gas_840"

"$have_gas_840":                                  ; preds = %"$out_of_gas_839", %"$have_gas_835"
  %"$consume_841" = sub i64 %"$gasrem_837", 1
  store i64 %"$consume_841", i64* @_gasrem, align 8
  %"$dyndisp_table_848_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_848_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_848_salloc_load", i64 48)
  %"$dyndisp_table_848_salloc" = bitcast i8* %"$dyndisp_table_848_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_848" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_848_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_849" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_848", i32 0
  %"$dyndisp_pcast_850" = bitcast { i8*, i8* }* %"$dyndisp_gep_849" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_51_env_133"*)* @"$fundef_51" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_850", align 8
  %"$dyndisp_gep_851" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_848", i32 2
  %"$dyndisp_pcast_852" = bitcast { i8*, i8* }* %"$dyndisp_gep_851" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_55_env_131"*)* @"$fundef_55" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_852", align 8
  store { i8*, i8* }* %"$dyndisp_table_848", { i8*, i8* }** %t2, align 8, !dbg !91
  %"$gasrem_853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_854" = icmp ugt i64 1, %"$gasrem_853"
  br i1 %"$gascmp_854", label %"$out_of_gas_855", label %"$have_gas_856"

"$out_of_gas_855":                                ; preds = %"$have_gas_840"
  call void @_out_of_gas()
  br label %"$have_gas_856"

"$have_gas_856":                                  ; preds = %"$out_of_gas_855", %"$have_gas_840"
  %"$consume_857" = sub i64 %"$gasrem_853", 1
  store i64 %"$consume_857", i64* @_gasrem, align 8
  %some_bool = alloca %TName_Bool*, align 8
  %"$gasrem_858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_859" = icmp ugt i64 1, %"$gasrem_858"
  br i1 %"$gascmp_859", label %"$out_of_gas_860", label %"$have_gas_861"

"$out_of_gas_860":                                ; preds = %"$have_gas_856"
  call void @_out_of_gas()
  br label %"$have_gas_861"

"$have_gas_861":                                  ; preds = %"$out_of_gas_860", %"$have_gas_856"
  %"$consume_862" = sub i64 %"$gasrem_858", 1
  store i64 %"$consume_862", i64* @_gasrem, align 8
  %"$adtval_863_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_863_salloc" = call i8* @_salloc(i8* %"$adtval_863_load", i64 1)
  %"$adtval_863" = bitcast i8* %"$adtval_863_salloc" to %CName_True*
  %"$adtgep_864" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_863", i32 0, i32 0
  store i8 0, i8* %"$adtgep_864", align 1
  %"$adtptr_865" = bitcast %CName_True* %"$adtval_863" to %TName_Bool*
  store %TName_Bool* %"$adtptr_865", %TName_Bool** %some_bool, align 8, !dbg !92
  %"$gasrem_866" = load i64, i64* @_gasrem, align 8
  %"$gascmp_867" = icmp ugt i64 1, %"$gasrem_866"
  br i1 %"$gascmp_867", label %"$out_of_gas_868", label %"$have_gas_869"

"$out_of_gas_868":                                ; preds = %"$have_gas_861"
  call void @_out_of_gas()
  br label %"$have_gas_869"

"$have_gas_869":                                  ; preds = %"$out_of_gas_868", %"$have_gas_861"
  %"$consume_870" = sub i64 %"$gasrem_866", 1
  store i64 %"$consume_870", i64* @_gasrem, align 8
  %f = alloca { i8*, i8* }*, align 8
  %"$gasrem_871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_872" = icmp ugt i64 2, %"$gasrem_871"
  br i1 %"$gascmp_872", label %"$out_of_gas_873", label %"$have_gas_874"

"$out_of_gas_873":                                ; preds = %"$have_gas_869"
  call void @_out_of_gas()
  br label %"$have_gas_874"

"$have_gas_874":                                  ; preds = %"$out_of_gas_873", %"$have_gas_869"
  %"$consume_875" = sub i64 %"$gasrem_871", 2
  store i64 %"$consume_875", i64* @_gasrem, align 8
  %"$some_bool_877" = load %TName_Bool*, %TName_Bool** %some_bool, align 8
  %"$some_bool_tag_878" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool_877", i32 0, i32 0
  %"$some_bool_tag_879" = load i8, i8* %"$some_bool_tag_878", align 1
  switch i8 %"$some_bool_tag_879", label %"$empty_default_880" [
    i8 0, label %"$True_881"
    i8 1, label %"$False_889"
  ], !dbg !93

"$True_881":                                      ; preds = %"$have_gas_874"
  %"$some_bool_882" = bitcast %TName_Bool* %"$some_bool_877" to %CName_True*
  %"$gasrem_883" = load i64, i64* @_gasrem, align 8
  %"$gascmp_884" = icmp ugt i64 1, %"$gasrem_883"
  br i1 %"$gascmp_884", label %"$out_of_gas_885", label %"$have_gas_886"

"$out_of_gas_885":                                ; preds = %"$True_881"
  call void @_out_of_gas()
  br label %"$have_gas_886"

"$have_gas_886":                                  ; preds = %"$out_of_gas_885", %"$True_881"
  %"$consume_887" = sub i64 %"$gasrem_883", 1
  store i64 %"$consume_887", i64* @_gasrem, align 8
  %"$t2_888" = load { i8*, i8* }*, { i8*, i8* }** %t2, align 8
  store { i8*, i8* }* %"$t2_888", { i8*, i8* }** %f, align 8, !dbg !94
  br label %"$matchsucc_876"

"$False_889":                                     ; preds = %"$have_gas_874"
  %"$some_bool_890" = bitcast %TName_Bool* %"$some_bool_877" to %CName_False*
  %"$gasrem_891" = load i64, i64* @_gasrem, align 8
  %"$gascmp_892" = icmp ugt i64 1, %"$gasrem_891"
  br i1 %"$gascmp_892", label %"$out_of_gas_893", label %"$have_gas_894"

"$out_of_gas_893":                                ; preds = %"$False_889"
  call void @_out_of_gas()
  br label %"$have_gas_894"

"$have_gas_894":                                  ; preds = %"$out_of_gas_893", %"$False_889"
  %"$consume_895" = sub i64 %"$gasrem_891", 1
  store i64 %"$consume_895", i64* @_gasrem, align 8
  %"$t1_896" = load { i8*, i8* }*, { i8*, i8* }** %t1, align 8
  store { i8*, i8* }* %"$t1_896", { i8*, i8* }** %f, align 8, !dbg !97
  br label %"$matchsucc_876"

"$empty_default_880":                             ; preds = %"$have_gas_874"
  br label %"$matchsucc_876"

"$matchsucc_876":                                 ; preds = %"$have_gas_894", %"$have_gas_886", %"$empty_default_880"
  %"$gasrem_897" = load i64, i64* @_gasrem, align 8
  %"$gascmp_898" = icmp ugt i64 1, %"$gasrem_897"
  br i1 %"$gascmp_898", label %"$out_of_gas_899", label %"$have_gas_900"

"$out_of_gas_899":                                ; preds = %"$matchsucc_876"
  call void @_out_of_gas()
  br label %"$have_gas_900"

"$have_gas_900":                                  ; preds = %"$out_of_gas_899", %"$matchsucc_876"
  %"$consume_901" = sub i64 %"$gasrem_897", 1
  store i64 %"$consume_901", i64* @_gasrem, align 8
  %some_bool2 = alloca %TName_Bool*, align 8
  %"$gasrem_902" = load i64, i64* @_gasrem, align 8
  %"$gascmp_903" = icmp ugt i64 1, %"$gasrem_902"
  br i1 %"$gascmp_903", label %"$out_of_gas_904", label %"$have_gas_905"

"$out_of_gas_904":                                ; preds = %"$have_gas_900"
  call void @_out_of_gas()
  br label %"$have_gas_905"

"$have_gas_905":                                  ; preds = %"$out_of_gas_904", %"$have_gas_900"
  %"$consume_906" = sub i64 %"$gasrem_902", 1
  store i64 %"$consume_906", i64* @_gasrem, align 8
  %"$adtval_907_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_907_salloc" = call i8* @_salloc(i8* %"$adtval_907_load", i64 1)
  %"$adtval_907" = bitcast i8* %"$adtval_907_salloc" to %CName_False*
  %"$adtgep_908" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_907", i32 0, i32 0
  store i8 1, i8* %"$adtgep_908", align 1
  %"$adtptr_909" = bitcast %CName_False* %"$adtval_907" to %TName_Bool*
  store %TName_Bool* %"$adtptr_909", %TName_Bool** %some_bool2, align 8, !dbg !99
  %"$gasrem_910" = load i64, i64* @_gasrem, align 8
  %"$gascmp_911" = icmp ugt i64 2, %"$gasrem_910"
  br i1 %"$gascmp_911", label %"$out_of_gas_912", label %"$have_gas_913"

"$out_of_gas_912":                                ; preds = %"$have_gas_905"
  call void @_out_of_gas()
  br label %"$have_gas_913"

"$have_gas_913":                                  ; preds = %"$out_of_gas_912", %"$have_gas_905"
  %"$consume_914" = sub i64 %"$gasrem_910", 2
  store i64 %"$consume_914", i64* @_gasrem, align 8
  %"$some_bool2_916" = load %TName_Bool*, %TName_Bool** %some_bool2, align 8
  %"$some_bool2_tag_917" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool2_916", i32 0, i32 0
  %"$some_bool2_tag_918" = load i8, i8* %"$some_bool2_tag_917", align 1
  switch i8 %"$some_bool2_tag_918", label %"$empty_default_919" [
    i8 0, label %"$True_920"
    i8 1, label %"$False_993"
  ], !dbg !100

"$True_920":                                      ; preds = %"$have_gas_913"
  %"$some_bool2_921" = bitcast %TName_Bool* %"$some_bool2_916" to %CName_True*
  %"$gasrem_922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_923" = icmp ugt i64 1, %"$gasrem_922"
  br i1 %"$gascmp_923", label %"$out_of_gas_924", label %"$have_gas_925"

"$out_of_gas_924":                                ; preds = %"$True_920"
  call void @_out_of_gas()
  br label %"$have_gas_925"

"$have_gas_925":                                  ; preds = %"$out_of_gas_924", %"$True_920"
  %"$consume_926" = sub i64 %"$gasrem_922", 1
  store i64 %"$consume_926", i64* @_gasrem, align 8
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_927" = load i64, i64* @_gasrem, align 8
  %"$gascmp_928" = icmp ugt i64 1, %"$gasrem_927"
  br i1 %"$gascmp_928", label %"$out_of_gas_929", label %"$have_gas_930"

"$out_of_gas_929":                                ; preds = %"$have_gas_925"
  call void @_out_of_gas()
  br label %"$have_gas_930"

"$have_gas_930":                                  ; preds = %"$out_of_gas_929", %"$have_gas_925"
  %"$consume_931" = sub i64 %"$gasrem_927", 1
  store i64 %"$consume_931", i64* @_gasrem, align 8
  %"$f_932" = load { i8*, i8* }*, { i8*, i8* }** %f, align 8
  %"$f_933" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_932", i32 0
  %"$f_934" = bitcast { i8*, i8* }* %"$f_933" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_935" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_934", align 8
  %"$f_fptr_936" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_935", 0
  %"$f_envptr_937" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_935", 1
  %"$f_call_938" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_936"(i8* %"$f_envptr_937"), !dbg !101
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_938", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8, !dbg !104
  %"$gasrem_939" = load i64, i64* @_gasrem, align 8
  %"$gascmp_940" = icmp ugt i64 1, %"$gasrem_939"
  br i1 %"$gascmp_940", label %"$out_of_gas_941", label %"$have_gas_942"

"$out_of_gas_941":                                ; preds = %"$have_gas_930"
  call void @_out_of_gas()
  br label %"$have_gas_942"

"$have_gas_942":                                  ; preds = %"$out_of_gas_941", %"$have_gas_930"
  %"$consume_943" = sub i64 %"$gasrem_939", 1
  store i64 %"$consume_943", i64* @_gasrem, align 8
  %len = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_945" = icmp ugt i64 1, %"$gasrem_944"
  br i1 %"$gascmp_945", label %"$out_of_gas_946", label %"$have_gas_947"

"$out_of_gas_946":                                ; preds = %"$have_gas_942"
  call void @_out_of_gas()
  br label %"$have_gas_947"

"$have_gas_947":                                  ; preds = %"$out_of_gas_946", %"$have_gas_942"
  %"$consume_948" = sub i64 %"$gasrem_944", 1
  store i64 %"$consume_948", i64* @_gasrem, align 8
  %"$ListUtils.list_length_949" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_950" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_949", i32 0
  %"$ListUtils.list_length_951" = bitcast { i8*, i8* }* %"$ListUtils.list_length_950" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_952" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_951", align 8
  %"$ListUtils.list_length_fptr_953" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_952", 0
  %"$ListUtils.list_length_envptr_954" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_952", 1
  %"$ListUtils.list_length_call_955" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_fptr_953"(i8* %"$ListUtils.list_length_envptr_954"), !dbg !105
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_call_955", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8, !dbg !106
  %"$gasrem_956" = load i64, i64* @_gasrem, align 8
  %"$gascmp_957" = icmp ugt i64 1, %"$gasrem_956"
  br i1 %"$gascmp_957", label %"$out_of_gas_958", label %"$have_gas_959"

"$out_of_gas_958":                                ; preds = %"$have_gas_947"
  call void @_out_of_gas()
  br label %"$have_gas_959"

"$have_gas_959":                                  ; preds = %"$out_of_gas_958", %"$have_gas_947"
  %"$consume_960" = sub i64 %"$gasrem_956", 1
  store i64 %"$consume_960", i64* @_gasrem, align 8
  %one = alloca %Int32, align 8
  %"$gasrem_961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_962" = icmp ugt i64 1, %"$gasrem_961"
  br i1 %"$gascmp_962", label %"$out_of_gas_963", label %"$have_gas_964"

"$out_of_gas_963":                                ; preds = %"$have_gas_959"
  call void @_out_of_gas()
  br label %"$have_gas_964"

"$have_gas_964":                                  ; preds = %"$out_of_gas_963", %"$have_gas_959"
  %"$consume_965" = sub i64 %"$gasrem_961", 1
  store i64 %"$consume_965", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %one, align 4, !dbg !107
  %"$gasrem_966" = load i64, i64* @_gasrem, align 8
  %"$gascmp_967" = icmp ugt i64 1, %"$gasrem_966"
  br i1 %"$gascmp_967", label %"$out_of_gas_968", label %"$have_gas_969"

"$out_of_gas_968":                                ; preds = %"$have_gas_964"
  call void @_out_of_gas()
  br label %"$have_gas_969"

"$have_gas_969":                                  ; preds = %"$out_of_gas_968", %"$have_gas_964"
  %"$consume_970" = sub i64 %"$gasrem_966", 1
  store i64 %"$consume_970", i64* @_gasrem, align 8
  %f1l = alloca %TName_List_Int32*, align 8
  %"$gasrem_971" = load i64, i64* @_gasrem, align 8
  %"$gascmp_972" = icmp ugt i64 1, %"$gasrem_971"
  br i1 %"$gascmp_972", label %"$out_of_gas_973", label %"$have_gas_974"

"$out_of_gas_973":                                ; preds = %"$have_gas_969"
  call void @_out_of_gas()
  br label %"$have_gas_974"

"$have_gas_974":                                  ; preds = %"$out_of_gas_973", %"$have_gas_969"
  %"$consume_975" = sub i64 %"$gasrem_971", 1
  store i64 %"$consume_975", i64* @_gasrem, align 8
  %"$f1_6" = alloca %TName_List_Int32*, align 8
  %"$f1_976" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8
  %"$f1_fptr_977" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_976", 0
  %"$f1_envptr_978" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_976", 1
  %"$one_979" = load %Int32, %Int32* %one, align 4
  %"$f1_call_980" = call %TName_List_Int32* %"$f1_fptr_977"(i8* %"$f1_envptr_978", %Int32 %"$one_979"), !dbg !108
  store %TName_List_Int32* %"$f1_call_980", %TName_List_Int32** %"$f1_6", align 8, !dbg !108
  %"$$f1_6_981" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_6", align 8
  store %TName_List_Int32* %"$$f1_6_981", %TName_List_Int32** %f1l, align 8, !dbg !108
  %"$gasrem_982" = load i64, i64* @_gasrem, align 8
  %"$gascmp_983" = icmp ugt i64 1, %"$gasrem_982"
  br i1 %"$gascmp_983", label %"$out_of_gas_984", label %"$have_gas_985"

"$out_of_gas_984":                                ; preds = %"$have_gas_974"
  call void @_out_of_gas()
  br label %"$have_gas_985"

"$have_gas_985":                                  ; preds = %"$out_of_gas_984", %"$have_gas_974"
  %"$consume_986" = sub i64 %"$gasrem_982", 1
  store i64 %"$consume_986", i64* @_gasrem, align 8
  %"$len_7" = alloca %Uint32, align 8
  %"$len_987" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8
  %"$len_fptr_988" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_987", 0
  %"$len_envptr_989" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_987", 1
  %"$f1l_990" = load %TName_List_Int32*, %TName_List_Int32** %f1l, align 8
  %"$len_call_991" = call %Uint32 %"$len_fptr_988"(i8* %"$len_envptr_989", %TName_List_Int32* %"$f1l_990"), !dbg !109
  store %Uint32 %"$len_call_991", %Uint32* %"$len_7", align 4, !dbg !109
  %"$$len_7_992" = load %Uint32, %Uint32* %"$len_7", align 4
  store %Uint32 %"$$len_7_992", %Uint32* %"$expr_42", align 4, !dbg !109
  br label %"$matchsucc_915"

"$False_993":                                     ; preds = %"$have_gas_913"
  %"$some_bool2_994" = bitcast %TName_Bool* %"$some_bool2_916" to %CName_False*
  %"$gasrem_995" = load i64, i64* @_gasrem, align 8
  %"$gascmp_996" = icmp ugt i64 1, %"$gasrem_995"
  br i1 %"$gascmp_996", label %"$out_of_gas_997", label %"$have_gas_998"

"$out_of_gas_997":                                ; preds = %"$False_993"
  call void @_out_of_gas()
  br label %"$have_gas_998"

"$have_gas_998":                                  ; preds = %"$out_of_gas_997", %"$False_993"
  %"$consume_999" = sub i64 %"$gasrem_995", 1
  store i64 %"$consume_999", i64* @_gasrem, align 8
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_1000" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1001" = icmp ugt i64 1, %"$gasrem_1000"
  br i1 %"$gascmp_1001", label %"$out_of_gas_1002", label %"$have_gas_1003"

"$out_of_gas_1002":                               ; preds = %"$have_gas_998"
  call void @_out_of_gas()
  br label %"$have_gas_1003"

"$have_gas_1003":                                 ; preds = %"$out_of_gas_1002", %"$have_gas_998"
  %"$consume_1004" = sub i64 %"$gasrem_1000", 1
  store i64 %"$consume_1004", i64* @_gasrem, align 8
  %"$f_1005" = load { i8*, i8* }*, { i8*, i8* }** %f, align 8
  %"$f_1006" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_1005", i32 2
  %"$f_1007" = bitcast { i8*, i8* }* %"$f_1006" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_1008" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_1007", align 8
  %"$f_fptr_1009" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_1008", 0
  %"$f_envptr_1010" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_1008", 1
  %"$f_call_1011" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_1009"(i8* %"$f_envptr_1010"), !dbg !110
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_1011", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8, !dbg !112
  %"$gasrem_1012" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1013" = icmp ugt i64 1, %"$gasrem_1012"
  br i1 %"$gascmp_1013", label %"$out_of_gas_1014", label %"$have_gas_1015"

"$out_of_gas_1014":                               ; preds = %"$have_gas_1003"
  call void @_out_of_gas()
  br label %"$have_gas_1015"

"$have_gas_1015":                                 ; preds = %"$out_of_gas_1014", %"$have_gas_1003"
  %"$consume_1016" = sub i64 %"$gasrem_1012", 1
  store i64 %"$consume_1016", i64* @_gasrem, align 8
  %len1 = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_1017" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1018" = icmp ugt i64 1, %"$gasrem_1017"
  br i1 %"$gascmp_1018", label %"$out_of_gas_1019", label %"$have_gas_1020"

"$out_of_gas_1019":                               ; preds = %"$have_gas_1015"
  call void @_out_of_gas()
  br label %"$have_gas_1020"

"$have_gas_1020":                                 ; preds = %"$out_of_gas_1019", %"$have_gas_1015"
  %"$consume_1021" = sub i64 %"$gasrem_1017", 1
  store i64 %"$consume_1021", i64* @_gasrem, align 8
  %"$ListUtils.list_length_1022" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_1023" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_1022", i32 2
  %"$ListUtils.list_length_1024" = bitcast { i8*, i8* }* %"$ListUtils.list_length_1023" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1025" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_1024", align 8
  %"$ListUtils.list_length_fptr_1026" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1025", 0
  %"$ListUtils.list_length_envptr_1027" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1025", 1
  %"$ListUtils.list_length_call_1028" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_fptr_1026"(i8* %"$ListUtils.list_length_envptr_1027"), !dbg !113
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_call_1028", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8, !dbg !114
  %"$gasrem_1029" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1030" = icmp ugt i64 1, %"$gasrem_1029"
  br i1 %"$gascmp_1030", label %"$out_of_gas_1031", label %"$have_gas_1032"

"$out_of_gas_1031":                               ; preds = %"$have_gas_1020"
  call void @_out_of_gas()
  br label %"$have_gas_1032"

"$have_gas_1032":                                 ; preds = %"$out_of_gas_1031", %"$have_gas_1020"
  %"$consume_1033" = sub i64 %"$gasrem_1029", 1
  store i64 %"$consume_1033", i64* @_gasrem, align 8
  %one2 = alloca %Int64, align 8
  %"$gasrem_1034" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1035" = icmp ugt i64 1, %"$gasrem_1034"
  br i1 %"$gascmp_1035", label %"$out_of_gas_1036", label %"$have_gas_1037"

"$out_of_gas_1036":                               ; preds = %"$have_gas_1032"
  call void @_out_of_gas()
  br label %"$have_gas_1037"

"$have_gas_1037":                                 ; preds = %"$out_of_gas_1036", %"$have_gas_1032"
  %"$consume_1038" = sub i64 %"$gasrem_1034", 1
  store i64 %"$consume_1038", i64* @_gasrem, align 8
  store %Int64 { i64 1 }, %Int64* %one2, align 8, !dbg !115
  %"$gasrem_1039" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1040" = icmp ugt i64 1, %"$gasrem_1039"
  br i1 %"$gascmp_1040", label %"$out_of_gas_1041", label %"$have_gas_1042"

"$out_of_gas_1041":                               ; preds = %"$have_gas_1037"
  call void @_out_of_gas()
  br label %"$have_gas_1042"

"$have_gas_1042":                                 ; preds = %"$out_of_gas_1041", %"$have_gas_1037"
  %"$consume_1043" = sub i64 %"$gasrem_1039", 1
  store i64 %"$consume_1043", i64* @_gasrem, align 8
  %f2l = alloca %TName_List_Int64*, align 8
  %"$gasrem_1044" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1045" = icmp ugt i64 1, %"$gasrem_1044"
  br i1 %"$gascmp_1045", label %"$out_of_gas_1046", label %"$have_gas_1047"

"$out_of_gas_1046":                               ; preds = %"$have_gas_1042"
  call void @_out_of_gas()
  br label %"$have_gas_1047"

"$have_gas_1047":                                 ; preds = %"$out_of_gas_1046", %"$have_gas_1042"
  %"$consume_1048" = sub i64 %"$gasrem_1044", 1
  store i64 %"$consume_1048", i64* @_gasrem, align 8
  %"$f2_8" = alloca %TName_List_Int64*, align 8
  %"$f2_1049" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8
  %"$f2_fptr_1050" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1049", 0
  %"$f2_envptr_1051" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1049", 1
  %"$one_1052" = load %Int64, %Int64* %one2, align 8
  %"$f2_call_1053" = call %TName_List_Int64* %"$f2_fptr_1050"(i8* %"$f2_envptr_1051", %Int64 %"$one_1052"), !dbg !116
  store %TName_List_Int64* %"$f2_call_1053", %TName_List_Int64** %"$f2_8", align 8, !dbg !116
  %"$$f2_8_1054" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_8", align 8
  store %TName_List_Int64* %"$$f2_8_1054", %TName_List_Int64** %f2l, align 8, !dbg !116
  %"$gasrem_1055" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1056" = icmp ugt i64 1, %"$gasrem_1055"
  br i1 %"$gascmp_1056", label %"$out_of_gas_1057", label %"$have_gas_1058"

"$out_of_gas_1057":                               ; preds = %"$have_gas_1047"
  call void @_out_of_gas()
  br label %"$have_gas_1058"

"$have_gas_1058":                                 ; preds = %"$out_of_gas_1057", %"$have_gas_1047"
  %"$consume_1059" = sub i64 %"$gasrem_1055", 1
  store i64 %"$consume_1059", i64* @_gasrem, align 8
  %"$len_9" = alloca %Uint32, align 8
  %"$len_1060" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8
  %"$len_fptr_1061" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1060", 0
  %"$len_envptr_1062" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1060", 1
  %"$f2l_1063" = load %TName_List_Int64*, %TName_List_Int64** %f2l, align 8
  %"$len_call_1064" = call %Uint32 %"$len_fptr_1061"(i8* %"$len_envptr_1062", %TName_List_Int64* %"$f2l_1063"), !dbg !117
  store %Uint32 %"$len_call_1064", %Uint32* %"$len_9", align 4, !dbg !117
  %"$$len_9_1065" = load %Uint32, %Uint32* %"$len_9", align 4
  store %Uint32 %"$$len_9_1065", %Uint32* %"$expr_42", align 4, !dbg !117
  br label %"$matchsucc_915"

"$empty_default_919":                             ; preds = %"$have_gas_913"
  br label %"$matchsucc_915"

"$matchsucc_915":                                 ; preds = %"$have_gas_1058", %"$have_gas_985", %"$empty_default_919"
  %"$$expr_42_1066" = load %Uint32, %Uint32* %"$expr_42", align 4
  ret %Uint32 %"$$expr_42_1066"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1067" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_1068" = alloca %Uint32, align 8
  %"$memvoidcast_1069" = bitcast %Uint32* %"$pval_1068" to i8*
  store %Uint32 %"$exprval_1067", %Uint32* %"$pval_1068", align 4
  %"$execptr_load_1070" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1070", %_TyDescrTy_Typ* @"$TyDescr_Uint32_63", i8* %"$memvoidcast_1069")
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
!29 = distinct !DISubprogram(name: "$fundef_40", linkageName: "$fundef_40", scope: !30, file: !30, line: 104, type: !5, scopeLine: 104, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!30 = !DIFile(filename: "ListUtils.scillib", directory: "../src/stdlib")
!31 = !DILocation(line: 104, column: 5, scope: !29)
!32 = distinct !DISubprogram(name: "$fundef_38", linkageName: "$fundef_38", scope: !30, file: !30, line: 103, type: !5, scopeLine: 103, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!33 = !DILocation(line: 104, column: 5, scope: !32)
!34 = distinct !DISubprogram(name: "$fundef_36", linkageName: "$fundef_36", scope: !30, file: !30, line: 101, type: !5, scopeLine: 101, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!35 = !DILocation(line: 101, column: 16, scope: !34)
!36 = !DILocation(line: 101, column: 15, scope: !34)
!37 = !DILocation(line: 102, column: 13, scope: !34)
!38 = !DILocation(line: 103, column: 34, scope: !34)
!39 = !DILocation(line: 105, column: 14, scope: !34)
!40 = !DILocation(line: 106, column: 3, scope: !34)
!41 = distinct !DISubprogram(name: "$fundef_34", linkageName: "$fundef_34", scope: !30, file: !30, line: 104, type: !5, scopeLine: 104, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!42 = !DILocation(line: 104, column: 5, scope: !41)
!43 = distinct !DISubprogram(name: "$fundef_32", linkageName: "$fundef_32", scope: !30, file: !30, line: 103, type: !5, scopeLine: 103, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!44 = !DILocation(line: 104, column: 5, scope: !43)
!45 = distinct !DISubprogram(name: "$fundef_30", linkageName: "$fundef_30", scope: !30, file: !30, line: 101, type: !5, scopeLine: 101, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!46 = !DILocation(line: 101, column: 16, scope: !45)
!47 = !DILocation(line: 101, column: 15, scope: !45)
!48 = !DILocation(line: 102, column: 13, scope: !45)
!49 = !DILocation(line: 103, column: 34, scope: !45)
!50 = !DILocation(line: 105, column: 14, scope: !45)
!51 = !DILocation(line: 106, column: 3, scope: !45)
!52 = distinct !DISubprogram(name: "$fundef_28", linkageName: "$fundef_28", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!53 = !DIFile(filename: "Prelude", directory: ".")
!54 = !DILocation(line: 1, column: 37, scope: !52)
!55 = !DILocation(line: 1, column: 74, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !53, line: 1, column: 52)
!57 = distinct !DILexicalBlock(scope: !52, file: !53, line: 1, column: 37)
!58 = !DILocation(line: 1, column: 83, scope: !56)
!59 = !DILocation(line: 1, column: 100, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !53, line: 1, column: 93)
!61 = distinct !DISubprogram(name: "$fundef_26", linkageName: "$fundef_26", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!62 = !DILocation(line: 1, column: 37, scope: !61)
!63 = distinct !DISubprogram(name: "$fundef_24", linkageName: "$fundef_24", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!64 = !DILocation(line: 1, column: 17, scope: !63)
!65 = distinct !DISubprogram(name: "$fundef_22", linkageName: "$fundef_22", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!66 = !DILocation(line: 1, column: 17, scope: !65)
!67 = distinct !DISubprogram(name: "$fundef_20", linkageName: "$fundef_20", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!68 = !DILocation(line: 1, column: 17, scope: !67)
!69 = distinct !DISubprogram(name: "$fundef_18", linkageName: "$fundef_18", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!70 = !DILocation(line: 1, column: 37, scope: !69)
!71 = !DILocation(line: 1, column: 74, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !53, line: 1, column: 52)
!73 = distinct !DILexicalBlock(scope: !69, file: !53, line: 1, column: 37)
!74 = !DILocation(line: 1, column: 83, scope: !72)
!75 = !DILocation(line: 1, column: 100, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !53, line: 1, column: 93)
!77 = distinct !DISubprogram(name: "$fundef_16", linkageName: "$fundef_16", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!78 = !DILocation(line: 1, column: 37, scope: !77)
!79 = distinct !DISubprogram(name: "$fundef_14", linkageName: "$fundef_14", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!80 = !DILocation(line: 1, column: 17, scope: !79)
!81 = distinct !DISubprogram(name: "$fundef_12", linkageName: "$fundef_12", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!82 = !DILocation(line: 1, column: 17, scope: !81)
!83 = distinct !DISubprogram(name: "$fundef_10", linkageName: "$fundef_10", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!84 = !DILocation(line: 1, column: 17, scope: !83)
!85 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !86, file: !86, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!86 = !DIFile(filename: ".", directory: ".")
!87 = !DILocation(line: 1, column: 17, scope: !85)
!88 = !DILocation(line: 100, column: 3, scope: !85)
!89 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!90 = !DILocation(line: 2, column: 3, scope: !89)
!91 = !DILocation(line: 9, column: 3, scope: !89)
!92 = !DILocation(line: 16, column: 17, scope: !89)
!93 = !DILocation(line: 18, column: 3, scope: !89)
!94 = !DILocation(line: 19, column: 13, scope: !95)
!95 = distinct !DILexicalBlock(scope: !96, file: !2, line: 19, column: 5)
!96 = distinct !DILexicalBlock(scope: !89, file: !2, line: 18, column: 3)
!97 = !DILocation(line: 20, column: 14, scope: !98)
!98 = distinct !DILexicalBlock(scope: !96, file: !2, line: 20, column: 5)
!99 = !DILocation(line: 24, column: 18, scope: !89)
!100 = !DILocation(line: 25, column: 1, scope: !89)
!101 = !DILocation(line: 27, column: 13, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 26, column: 3)
!103 = distinct !DILexicalBlock(scope: !89, file: !2, line: 25, column: 1)
!104 = !DILocation(line: 27, column: 12, scope: !102)
!105 = !DILocation(line: 28, column: 14, scope: !102)
!106 = !DILocation(line: 28, column: 13, scope: !102)
!107 = !DILocation(line: 29, column: 13, scope: !102)
!108 = !DILocation(line: 30, column: 13, scope: !102)
!109 = !DILocation(line: 31, column: 3, scope: !102)
!110 = !DILocation(line: 33, column: 13, scope: !111)
!111 = distinct !DILexicalBlock(scope: !103, file: !2, line: 32, column: 3)
!112 = !DILocation(line: 33, column: 12, scope: !111)
!113 = !DILocation(line: 34, column: 14, scope: !111)
!114 = !DILocation(line: 34, column: 13, scope: !111)
!115 = !DILocation(line: 35, column: 13, scope: !111)
!116 = !DILocation(line: 36, column: 13, scope: !111)
!117 = !DILocation(line: 37, column: 3, scope: !111)
