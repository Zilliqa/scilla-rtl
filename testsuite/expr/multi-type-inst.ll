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
%"$ParamDescr_1081" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1082" = type { %ParamDescrString, i32, %"$ParamDescr_1081"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_1081"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1082"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_List_Int64* @"$fundef_57"(%"$$fundef_57_env_130"* %0, %Int64 %1) {
entry:
  %"$retval_58" = alloca %TName_List_Int64*, align 8
  %"$gasrem_745" = load i64, i64* @_gasrem, align 8
  %"$gascmp_746" = icmp ugt i64 1, %"$gasrem_745"
  br i1 %"$gascmp_746", label %"$out_of_gas_747", label %"$have_gas_748"

"$out_of_gas_747":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_748"

"$have_gas_748":                                  ; preds = %"$out_of_gas_747", %entry
  %"$consume_749" = sub i64 %"$gasrem_745", 1
  store i64 %"$consume_749", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  %"$gasrem_750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_751" = icmp ugt i64 1, %"$gasrem_750"
  br i1 %"$gascmp_751", label %"$out_of_gas_752", label %"$have_gas_753"

"$out_of_gas_752":                                ; preds = %"$have_gas_748"
  call void @_out_of_gas()
  br label %"$have_gas_753"

"$have_gas_753":                                  ; preds = %"$out_of_gas_752", %"$have_gas_748"
  %"$consume_754" = sub i64 %"$gasrem_750", 1
  store i64 %"$consume_754", i64* @_gasrem, align 8
  %"$adtval_755_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_755_salloc" = call i8* @_salloc(i8* %"$adtval_755_load", i64 1)
  %"$adtval_755" = bitcast i8* %"$adtval_755_salloc" to %CName_Nil_Int64*
  %"$adtgep_756" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_755", i32 0, i32 0
  store i8 1, i8* %"$adtgep_756", align 1
  %"$adtptr_757" = bitcast %CName_Nil_Int64* %"$adtval_755" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_757", %TName_List_Int64** %an, align 8
  %"$gasrem_758" = load i64, i64* @_gasrem, align 8
  %"$gascmp_759" = icmp ugt i64 1, %"$gasrem_758"
  br i1 %"$gascmp_759", label %"$out_of_gas_760", label %"$have_gas_761"

"$out_of_gas_760":                                ; preds = %"$have_gas_753"
  call void @_out_of_gas()
  br label %"$have_gas_761"

"$have_gas_761":                                  ; preds = %"$out_of_gas_760", %"$have_gas_753"
  %"$consume_762" = sub i64 %"$gasrem_758", 1
  store i64 %"$consume_762", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int64*, align 8
  %"$gasrem_763" = load i64, i64* @_gasrem, align 8
  %"$gascmp_764" = icmp ugt i64 1, %"$gasrem_763"
  br i1 %"$gascmp_764", label %"$out_of_gas_765", label %"$have_gas_766"

"$out_of_gas_765":                                ; preds = %"$have_gas_761"
  call void @_out_of_gas()
  br label %"$have_gas_766"

"$have_gas_766":                                  ; preds = %"$out_of_gas_765", %"$have_gas_761"
  %"$consume_767" = sub i64 %"$gasrem_763", 1
  store i64 %"$consume_767", i64* @_gasrem, align 8
  %"$an_768" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_769_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_769_salloc" = call i8* @_salloc(i8* %"$adtval_769_load", i64 17)
  %"$adtval_769" = bitcast i8* %"$adtval_769_salloc" to %CName_Cons_Int64*
  %"$adtgep_770" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_769", i32 0, i32 0
  store i8 0, i8* %"$adtgep_770", align 1
  %"$adtgep_771" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_769", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_771", align 8
  %"$adtgep_772" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_769", i32 0, i32 2
  store %TName_List_Int64* %"$an_768", %TName_List_Int64** %"$adtgep_772", align 8
  %"$adtptr_773" = bitcast %CName_Cons_Int64* %"$adtval_769" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_773", %TName_List_Int64** %a1, align 8
  %"$gasrem_774" = load i64, i64* @_gasrem, align 8
  %"$gascmp_775" = icmp ugt i64 1, %"$gasrem_774"
  br i1 %"$gascmp_775", label %"$out_of_gas_776", label %"$have_gas_777"

"$out_of_gas_776":                                ; preds = %"$have_gas_766"
  call void @_out_of_gas()
  br label %"$have_gas_777"

"$have_gas_777":                                  ; preds = %"$out_of_gas_776", %"$have_gas_766"
  %"$consume_778" = sub i64 %"$gasrem_774", 1
  store i64 %"$consume_778", i64* @_gasrem, align 8
  %"$a1_779" = load %TName_List_Int64*, %TName_List_Int64** %a1, align 8
  %"$adtval_780_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_780_salloc" = call i8* @_salloc(i8* %"$adtval_780_load", i64 17)
  %"$adtval_780" = bitcast i8* %"$adtval_780_salloc" to %CName_Cons_Int64*
  %"$adtgep_781" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_780", i32 0, i32 0
  store i8 0, i8* %"$adtgep_781", align 1
  %"$adtgep_782" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_780", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_782", align 8
  %"$adtgep_783" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_780", i32 0, i32 2
  store %TName_List_Int64* %"$a1_779", %TName_List_Int64** %"$adtgep_783", align 8
  %"$adtptr_784" = bitcast %CName_Cons_Int64* %"$adtval_780" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_784", %TName_List_Int64** %"$retval_58", align 8
  %"$$retval_58_785" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_58", align 8
  ret %TName_List_Int64* %"$$retval_58_785"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_55"(%"$$fundef_55_env_131"* %0) {
entry:
  %"$retval_56" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_737" = icmp ugt i64 1, %"$gasrem_736"
  br i1 %"$gascmp_737", label %"$out_of_gas_738", label %"$have_gas_739"

"$out_of_gas_738":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_739"

"$have_gas_739":                                  ; preds = %"$out_of_gas_738", %entry
  %"$consume_740" = sub i64 %"$gasrem_736", 1
  store i64 %"$consume_740", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_57_env_130"*, %Int64)* @"$fundef_57" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_56", align 8
  %"$$retval_56_744" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_56", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_56_744"
}

define internal %TName_List_Int32* @"$fundef_53"(%"$$fundef_53_env_132"* %0, %Int32 %1) {
entry:
  %"$retval_54" = alloca %TName_List_Int32*, align 8
  %"$gasrem_695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_696" = icmp ugt i64 1, %"$gasrem_695"
  br i1 %"$gascmp_696", label %"$out_of_gas_697", label %"$have_gas_698"

"$out_of_gas_697":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_698"

"$have_gas_698":                                  ; preds = %"$out_of_gas_697", %entry
  %"$consume_699" = sub i64 %"$gasrem_695", 1
  store i64 %"$consume_699", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  %"$gasrem_700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_701" = icmp ugt i64 1, %"$gasrem_700"
  br i1 %"$gascmp_701", label %"$out_of_gas_702", label %"$have_gas_703"

"$out_of_gas_702":                                ; preds = %"$have_gas_698"
  call void @_out_of_gas()
  br label %"$have_gas_703"

"$have_gas_703":                                  ; preds = %"$out_of_gas_702", %"$have_gas_698"
  %"$consume_704" = sub i64 %"$gasrem_700", 1
  store i64 %"$consume_704", i64* @_gasrem, align 8
  %"$adtval_705_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_705_salloc" = call i8* @_salloc(i8* %"$adtval_705_load", i64 1)
  %"$adtval_705" = bitcast i8* %"$adtval_705_salloc" to %CName_Nil_Int32*
  %"$adtgep_706" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_705", i32 0, i32 0
  store i8 1, i8* %"$adtgep_706", align 1
  %"$adtptr_707" = bitcast %CName_Nil_Int32* %"$adtval_705" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_707", %TName_List_Int32** %an, align 8
  %"$gasrem_708" = load i64, i64* @_gasrem, align 8
  %"$gascmp_709" = icmp ugt i64 1, %"$gasrem_708"
  br i1 %"$gascmp_709", label %"$out_of_gas_710", label %"$have_gas_711"

"$out_of_gas_710":                                ; preds = %"$have_gas_703"
  call void @_out_of_gas()
  br label %"$have_gas_711"

"$have_gas_711":                                  ; preds = %"$out_of_gas_710", %"$have_gas_703"
  %"$consume_712" = sub i64 %"$gasrem_708", 1
  store i64 %"$consume_712", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int32*, align 8
  %"$gasrem_713" = load i64, i64* @_gasrem, align 8
  %"$gascmp_714" = icmp ugt i64 1, %"$gasrem_713"
  br i1 %"$gascmp_714", label %"$out_of_gas_715", label %"$have_gas_716"

"$out_of_gas_715":                                ; preds = %"$have_gas_711"
  call void @_out_of_gas()
  br label %"$have_gas_716"

"$have_gas_716":                                  ; preds = %"$out_of_gas_715", %"$have_gas_711"
  %"$consume_717" = sub i64 %"$gasrem_713", 1
  store i64 %"$consume_717", i64* @_gasrem, align 8
  %"$an_718" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_719_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_719_salloc" = call i8* @_salloc(i8* %"$adtval_719_load", i64 13)
  %"$adtval_719" = bitcast i8* %"$adtval_719_salloc" to %CName_Cons_Int32*
  %"$adtgep_720" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_719", i32 0, i32 0
  store i8 0, i8* %"$adtgep_720", align 1
  %"$adtgep_721" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_719", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_721", align 4
  %"$adtgep_722" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_719", i32 0, i32 2
  store %TName_List_Int32* %"$an_718", %TName_List_Int32** %"$adtgep_722", align 8
  %"$adtptr_723" = bitcast %CName_Cons_Int32* %"$adtval_719" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_723", %TName_List_Int32** %a1, align 8
  %"$gasrem_724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_725" = icmp ugt i64 1, %"$gasrem_724"
  br i1 %"$gascmp_725", label %"$out_of_gas_726", label %"$have_gas_727"

"$out_of_gas_726":                                ; preds = %"$have_gas_716"
  call void @_out_of_gas()
  br label %"$have_gas_727"

"$have_gas_727":                                  ; preds = %"$out_of_gas_726", %"$have_gas_716"
  %"$consume_728" = sub i64 %"$gasrem_724", 1
  store i64 %"$consume_728", i64* @_gasrem, align 8
  %"$a1_729" = load %TName_List_Int32*, %TName_List_Int32** %a1, align 8
  %"$adtval_730_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_730_salloc" = call i8* @_salloc(i8* %"$adtval_730_load", i64 13)
  %"$adtval_730" = bitcast i8* %"$adtval_730_salloc" to %CName_Cons_Int32*
  %"$adtgep_731" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_730", i32 0, i32 0
  store i8 0, i8* %"$adtgep_731", align 1
  %"$adtgep_732" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_730", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_732", align 4
  %"$adtgep_733" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_730", i32 0, i32 2
  store %TName_List_Int32* %"$a1_729", %TName_List_Int32** %"$adtgep_733", align 8
  %"$adtptr_734" = bitcast %CName_Cons_Int32* %"$adtval_730" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_734", %TName_List_Int32** %"$retval_54", align 8
  %"$$retval_54_735" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_54", align 8
  ret %TName_List_Int32* %"$$retval_54_735"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_51"(%"$$fundef_51_env_133"* %0) {
entry:
  %"$retval_52" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_687" = icmp ugt i64 1, %"$gasrem_686"
  br i1 %"$gascmp_687", label %"$out_of_gas_688", label %"$have_gas_689"

"$out_of_gas_688":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_689"

"$have_gas_689":                                  ; preds = %"$out_of_gas_688", %entry
  %"$consume_690" = sub i64 %"$gasrem_686", 1
  store i64 %"$consume_690", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_53_env_132"*, %Int32)* @"$fundef_53" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_52", align 8
  %"$$retval_52_694" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_52", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_52_694"
}

define internal %TName_List_Int64* @"$fundef_49"(%"$$fundef_49_env_134"* %0, %Int64 %1) {
entry:
  %"$retval_50" = alloca %TName_List_Int64*, align 8
  %"$gasrem_661" = load i64, i64* @_gasrem, align 8
  %"$gascmp_662" = icmp ugt i64 1, %"$gasrem_661"
  br i1 %"$gascmp_662", label %"$out_of_gas_663", label %"$have_gas_664"

"$out_of_gas_663":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_664"

"$have_gas_664":                                  ; preds = %"$out_of_gas_663", %entry
  %"$consume_665" = sub i64 %"$gasrem_661", 1
  store i64 %"$consume_665", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  %"$gasrem_666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_667" = icmp ugt i64 1, %"$gasrem_666"
  br i1 %"$gascmp_667", label %"$out_of_gas_668", label %"$have_gas_669"

"$out_of_gas_668":                                ; preds = %"$have_gas_664"
  call void @_out_of_gas()
  br label %"$have_gas_669"

"$have_gas_669":                                  ; preds = %"$out_of_gas_668", %"$have_gas_664"
  %"$consume_670" = sub i64 %"$gasrem_666", 1
  store i64 %"$consume_670", i64* @_gasrem, align 8
  %"$adtval_671_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_671_salloc" = call i8* @_salloc(i8* %"$adtval_671_load", i64 1)
  %"$adtval_671" = bitcast i8* %"$adtval_671_salloc" to %CName_Nil_Int64*
  %"$adtgep_672" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_671", i32 0, i32 0
  store i8 1, i8* %"$adtgep_672", align 1
  %"$adtptr_673" = bitcast %CName_Nil_Int64* %"$adtval_671" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_673", %TName_List_Int64** %an, align 8
  %"$gasrem_674" = load i64, i64* @_gasrem, align 8
  %"$gascmp_675" = icmp ugt i64 1, %"$gasrem_674"
  br i1 %"$gascmp_675", label %"$out_of_gas_676", label %"$have_gas_677"

"$out_of_gas_676":                                ; preds = %"$have_gas_669"
  call void @_out_of_gas()
  br label %"$have_gas_677"

"$have_gas_677":                                  ; preds = %"$out_of_gas_676", %"$have_gas_669"
  %"$consume_678" = sub i64 %"$gasrem_674", 1
  store i64 %"$consume_678", i64* @_gasrem, align 8
  %"$an_679" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_680_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_680_salloc" = call i8* @_salloc(i8* %"$adtval_680_load", i64 17)
  %"$adtval_680" = bitcast i8* %"$adtval_680_salloc" to %CName_Cons_Int64*
  %"$adtgep_681" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_680", i32 0, i32 0
  store i8 0, i8* %"$adtgep_681", align 1
  %"$adtgep_682" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_680", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_682", align 8
  %"$adtgep_683" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_680", i32 0, i32 2
  store %TName_List_Int64* %"$an_679", %TName_List_Int64** %"$adtgep_683", align 8
  %"$adtptr_684" = bitcast %CName_Cons_Int64* %"$adtval_680" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_684", %TName_List_Int64** %"$retval_50", align 8
  %"$$retval_50_685" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_50", align 8
  ret %TName_List_Int64* %"$$retval_50_685"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_47"(%"$$fundef_47_env_135"* %0) {
entry:
  %"$retval_48" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_652" = load i64, i64* @_gasrem, align 8
  %"$gascmp_653" = icmp ugt i64 1, %"$gasrem_652"
  br i1 %"$gascmp_653", label %"$out_of_gas_654", label %"$have_gas_655"

"$out_of_gas_654":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_655"

"$have_gas_655":                                  ; preds = %"$out_of_gas_654", %entry
  %"$consume_656" = sub i64 %"$gasrem_652", 1
  store i64 %"$consume_656", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_49_env_134"*, %Int64)* @"$fundef_49" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_48", align 8
  %"$$retval_48_660" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_48", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_48_660"
}

define internal %TName_List_Int32* @"$fundef_45"(%"$$fundef_45_env_136"* %0, %Int32 %1) {
entry:
  %"$retval_46" = alloca %TName_List_Int32*, align 8
  %"$gasrem_627" = load i64, i64* @_gasrem, align 8
  %"$gascmp_628" = icmp ugt i64 1, %"$gasrem_627"
  br i1 %"$gascmp_628", label %"$out_of_gas_629", label %"$have_gas_630"

"$out_of_gas_629":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_630"

"$have_gas_630":                                  ; preds = %"$out_of_gas_629", %entry
  %"$consume_631" = sub i64 %"$gasrem_627", 1
  store i64 %"$consume_631", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  %"$gasrem_632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_633" = icmp ugt i64 1, %"$gasrem_632"
  br i1 %"$gascmp_633", label %"$out_of_gas_634", label %"$have_gas_635"

"$out_of_gas_634":                                ; preds = %"$have_gas_630"
  call void @_out_of_gas()
  br label %"$have_gas_635"

"$have_gas_635":                                  ; preds = %"$out_of_gas_634", %"$have_gas_630"
  %"$consume_636" = sub i64 %"$gasrem_632", 1
  store i64 %"$consume_636", i64* @_gasrem, align 8
  %"$adtval_637_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_637_salloc" = call i8* @_salloc(i8* %"$adtval_637_load", i64 1)
  %"$adtval_637" = bitcast i8* %"$adtval_637_salloc" to %CName_Nil_Int32*
  %"$adtgep_638" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_637", i32 0, i32 0
  store i8 1, i8* %"$adtgep_638", align 1
  %"$adtptr_639" = bitcast %CName_Nil_Int32* %"$adtval_637" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_639", %TName_List_Int32** %an, align 8
  %"$gasrem_640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_641" = icmp ugt i64 1, %"$gasrem_640"
  br i1 %"$gascmp_641", label %"$out_of_gas_642", label %"$have_gas_643"

"$out_of_gas_642":                                ; preds = %"$have_gas_635"
  call void @_out_of_gas()
  br label %"$have_gas_643"

"$have_gas_643":                                  ; preds = %"$out_of_gas_642", %"$have_gas_635"
  %"$consume_644" = sub i64 %"$gasrem_640", 1
  store i64 %"$consume_644", i64* @_gasrem, align 8
  %"$an_645" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_646_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_646_salloc" = call i8* @_salloc(i8* %"$adtval_646_load", i64 13)
  %"$adtval_646" = bitcast i8* %"$adtval_646_salloc" to %CName_Cons_Int32*
  %"$adtgep_647" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_646", i32 0, i32 0
  store i8 0, i8* %"$adtgep_647", align 1
  %"$adtgep_648" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_646", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_648", align 4
  %"$adtgep_649" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_646", i32 0, i32 2
  store %TName_List_Int32* %"$an_645", %TName_List_Int32** %"$adtgep_649", align 8
  %"$adtptr_650" = bitcast %CName_Cons_Int32* %"$adtval_646" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_650", %TName_List_Int32** %"$retval_46", align 8
  %"$$retval_46_651" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_46", align 8
  ret %TName_List_Int32* %"$$retval_46_651"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_43"(%"$$fundef_43_env_137"* %0) {
entry:
  %"$retval_44" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_619" = icmp ugt i64 1, %"$gasrem_618"
  br i1 %"$gascmp_619", label %"$out_of_gas_620", label %"$have_gas_621"

"$out_of_gas_620":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_621"

"$have_gas_621":                                  ; preds = %"$out_of_gas_620", %entry
  %"$consume_622" = sub i64 %"$gasrem_618", 1
  store i64 %"$consume_622", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_45_env_136"*, %Int32)* @"$fundef_45" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_44", align 8
  %"$$retval_44_626" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_44", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_44_626"
}

define internal %Uint32 @"$fundef_40"(%"$$fundef_40_env_138"* %0, %Int64 %1) {
entry:
  %"$$fundef_40_env_one_605" = getelementptr inbounds %"$$fundef_40_env_138", %"$$fundef_40_env_138"* %0, i32 0, i32 0
  %"$one_envload_606" = load %Uint32, %Uint32* %"$$fundef_40_env_one_605", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_606", %Uint32* %one, align 4
  %"$$fundef_40_env_z_607" = getelementptr inbounds %"$$fundef_40_env_138", %"$$fundef_40_env_138"* %0, i32 0, i32 1
  %"$z_envload_608" = load %Uint32, %Uint32* %"$$fundef_40_env_z_607", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_608", %Uint32* %z, align 4
  %"$retval_41" = alloca %Uint32, align 8
  %"$gasrem_609" = load i64, i64* @_gasrem, align 8
  %"$gascmp_610" = icmp ugt i64 4, %"$gasrem_609"
  br i1 %"$gascmp_610", label %"$out_of_gas_611", label %"$have_gas_612"

"$out_of_gas_611":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_612"

"$have_gas_612":                                  ; preds = %"$out_of_gas_611", %entry
  %"$consume_613" = sub i64 %"$gasrem_609", 4
  store i64 %"$consume_613", i64* @_gasrem, align 8
  %"$one_614" = load %Uint32, %Uint32* %one, align 4
  %"$z_615" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_616" = call %Uint32 @_add_Uint32(%Uint32 %"$one_614", %Uint32 %"$z_615")
  store %Uint32 %"$add_call_616", %Uint32* %"$retval_41", align 4
  %"$$retval_41_617" = load %Uint32, %Uint32* %"$retval_41", align 4
  ret %Uint32 %"$$retval_41_617"
}

define internal { %Uint32 (i8*, %Int64)*, i8* } @"$fundef_38"(%"$$fundef_38_env_139"* %0, %Uint32 %1) {
entry:
  %"$$fundef_38_env_one_590" = getelementptr inbounds %"$$fundef_38_env_139", %"$$fundef_38_env_139"* %0, i32 0, i32 0
  %"$one_envload_591" = load %Uint32, %Uint32* %"$$fundef_38_env_one_590", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_591", %Uint32* %one, align 4
  %"$retval_39" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_593" = icmp ugt i64 1, %"$gasrem_592"
  br i1 %"$gascmp_593", label %"$out_of_gas_594", label %"$have_gas_595"

"$out_of_gas_594":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_595"

"$have_gas_595":                                  ; preds = %"$out_of_gas_594", %entry
  %"$consume_596" = sub i64 %"$gasrem_592", 1
  store i64 %"$consume_596", i64* @_gasrem, align 8
  %"$$fundef_40_envp_597_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_40_envp_597_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_597_load", i64 8)
  %"$$fundef_40_envp_597" = bitcast i8* %"$$fundef_40_envp_597_salloc" to %"$$fundef_40_env_138"*
  %"$$fundef_40_env_voidp_599" = bitcast %"$$fundef_40_env_138"* %"$$fundef_40_envp_597" to i8*
  %"$$fundef_40_cloval_600" = insertvalue { %Uint32 (i8*, %Int64)*, i8* } { %Uint32 (i8*, %Int64)* bitcast (%Uint32 (%"$$fundef_40_env_138"*, %Int64)* @"$fundef_40" to %Uint32 (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_40_env_voidp_599", 1
  %"$$fundef_40_env_one_601" = getelementptr inbounds %"$$fundef_40_env_138", %"$$fundef_40_env_138"* %"$$fundef_40_envp_597", i32 0, i32 0
  %"$one_602" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_602", %Uint32* %"$$fundef_40_env_one_601", align 4
  %"$$fundef_40_env_z_603" = getelementptr inbounds %"$$fundef_40_env_138", %"$$fundef_40_env_138"* %"$$fundef_40_envp_597", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_40_env_z_603", align 4
  store { %Uint32 (i8*, %Int64)*, i8* } %"$$fundef_40_cloval_600", { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_39", align 8
  %"$$retval_39_604" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_39", align 8
  ret { %Uint32 (i8*, %Int64)*, i8* } %"$$retval_39_604"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_36"(%"$$fundef_36_env_140"* %0) {
entry:
  %"$$fundef_36_env_list_foldl_512" = getelementptr inbounds %"$$fundef_36_env_140", %"$$fundef_36_env_140"* %0, i32 0, i32 0
  %"$list_foldl_envload_513" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_36_env_list_foldl_512", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_513", { i8*, i8* }** %list_foldl, align 8
  %"$retval_37" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_515" = icmp ugt i64 1, %"$gasrem_514"
  br i1 %"$gascmp_515", label %"$out_of_gas_516", label %"$have_gas_517"

"$out_of_gas_516":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_517"

"$have_gas_517":                                  ; preds = %"$out_of_gas_516", %entry
  %"$consume_518" = sub i64 %"$gasrem_514", 1
  store i64 %"$consume_518", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_520" = icmp ugt i64 1, %"$gasrem_519"
  br i1 %"$gascmp_520", label %"$out_of_gas_521", label %"$have_gas_522"

"$out_of_gas_521":                                ; preds = %"$have_gas_517"
  call void @_out_of_gas()
  br label %"$have_gas_522"

"$have_gas_522":                                  ; preds = %"$out_of_gas_521", %"$have_gas_517"
  %"$consume_523" = sub i64 %"$gasrem_519", 1
  store i64 %"$consume_523", i64* @_gasrem, align 8
  %"$list_foldl_524" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_525" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_524", i32 2
  %"$list_foldl_526" = bitcast { i8*, i8* }* %"$list_foldl_525" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_527" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_526", align 8
  %"$list_foldl_fptr_528" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_527", 0
  %"$list_foldl_envptr_529" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_527", 1
  %"$list_foldl_call_530" = call { i8*, i8* }* %"$list_foldl_fptr_528"(i8* %"$list_foldl_envptr_529")
  %"$list_foldl_531" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_530", i32 1
  %"$list_foldl_532" = bitcast { i8*, i8* }* %"$list_foldl_531" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_533" = load { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_532", align 8
  %"$list_foldl_fptr_534" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_533", 0
  %"$list_foldl_envptr_535" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_533", 1
  %"$list_foldl_call_536" = call { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_534"(i8* %"$list_foldl_envptr_535")
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_536", { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$gasrem_537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_538" = icmp ugt i64 1, %"$gasrem_537"
  br i1 %"$gascmp_538", label %"$out_of_gas_539", label %"$have_gas_540"

"$out_of_gas_539":                                ; preds = %"$have_gas_522"
  call void @_out_of_gas()
  br label %"$have_gas_540"

"$have_gas_540":                                  ; preds = %"$out_of_gas_539", %"$have_gas_522"
  %"$consume_541" = sub i64 %"$gasrem_537", 1
  store i64 %"$consume_541", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 1, %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %"$have_gas_540"
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %"$have_gas_540"
  %"$consume_546" = sub i64 %"$gasrem_542", 1
  store i64 %"$consume_546", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$have_gas_545"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$have_gas_545"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 1, %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %"$have_gas_550"
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %"$have_gas_550"
  %"$consume_556" = sub i64 %"$gasrem_552", 1
  store i64 %"$consume_556", i64* @_gasrem, align 8
  %"$$fundef_38_envp_557_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_38_envp_557_salloc" = call i8* @_salloc(i8* %"$$fundef_38_envp_557_load", i64 4)
  %"$$fundef_38_envp_557" = bitcast i8* %"$$fundef_38_envp_557_salloc" to %"$$fundef_38_env_139"*
  %"$$fundef_38_env_voidp_559" = bitcast %"$$fundef_38_env_139"* %"$$fundef_38_envp_557" to i8*
  %"$$fundef_38_cloval_560" = insertvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int64)*, i8* } (%"$$fundef_38_env_139"*, %Uint32)* @"$fundef_38" to { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_38_env_voidp_559", 1
  %"$$fundef_38_env_one_561" = getelementptr inbounds %"$$fundef_38_env_139", %"$$fundef_38_env_139"* %"$$fundef_38_envp_557", i32 0, i32 0
  %"$one_562" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_562", %Uint32* %"$$fundef_38_env_one_561", align 4
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_38_cloval_560", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$gasrem_563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_564" = icmp ugt i64 1, %"$gasrem_563"
  br i1 %"$gascmp_564", label %"$out_of_gas_565", label %"$have_gas_566"

"$out_of_gas_565":                                ; preds = %"$have_gas_555"
  call void @_out_of_gas()
  br label %"$have_gas_566"

"$have_gas_566":                                  ; preds = %"$out_of_gas_565", %"$have_gas_555"
  %"$consume_567" = sub i64 %"$gasrem_563", 1
  store i64 %"$consume_567", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_569" = icmp ugt i64 1, %"$gasrem_568"
  br i1 %"$gascmp_569", label %"$out_of_gas_570", label %"$have_gas_571"

"$out_of_gas_570":                                ; preds = %"$have_gas_566"
  call void @_out_of_gas()
  br label %"$have_gas_571"

"$have_gas_571":                                  ; preds = %"$out_of_gas_570", %"$have_gas_566"
  %"$consume_572" = sub i64 %"$gasrem_568", 1
  store i64 %"$consume_572", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4
  %"$gasrem_573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_574" = icmp ugt i64 1, %"$gasrem_573"
  br i1 %"$gascmp_574", label %"$out_of_gas_575", label %"$have_gas_576"

"$out_of_gas_575":                                ; preds = %"$have_gas_571"
  call void @_out_of_gas()
  br label %"$have_gas_576"

"$have_gas_576":                                  ; preds = %"$out_of_gas_575", %"$have_gas_571"
  %"$consume_577" = sub i64 %"$gasrem_573", 1
  store i64 %"$consume_577", i64* @_gasrem, align 8
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_578" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_579" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_578", 0
  %"$foldl_envptr_580" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_578", 1
  %"$iter_581" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_582" = call { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_579"(i8* %"$foldl_envptr_580", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_581")
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_582", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$$foldl_4_583" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8
  %"$$foldl_4_fptr_584" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_583", 0
  %"$$foldl_4_envptr_585" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_583", 1
  %"$init_586" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_4_call_587" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_fptr_584"(i8* %"$$foldl_4_envptr_585", %Uint32 %"$init_586")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_4_call_587", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5", align 8
  %"$$foldl_5_588" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_5", align 8
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_5_588", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_37", align 8
  %"$$retval_37_589" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_37", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_37_589"
}

define internal %Uint32 @"$fundef_34"(%"$$fundef_34_env_141"* %0, %Int32 %1) {
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
  %"$gasrem_503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_504" = icmp ugt i64 4, %"$gasrem_503"
  br i1 %"$gascmp_504", label %"$out_of_gas_505", label %"$have_gas_506"

"$out_of_gas_505":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_506"

"$have_gas_506":                                  ; preds = %"$out_of_gas_505", %entry
  %"$consume_507" = sub i64 %"$gasrem_503", 4
  store i64 %"$consume_507", i64* @_gasrem, align 8
  %"$one_508" = load %Uint32, %Uint32* %one, align 4
  %"$z_509" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_510" = call %Uint32 @_add_Uint32(%Uint32 %"$one_508", %Uint32 %"$z_509")
  store %Uint32 %"$add_call_510", %Uint32* %"$retval_35", align 4
  %"$$retval_35_511" = load %Uint32, %Uint32* %"$retval_35", align 4
  ret %Uint32 %"$$retval_35_511"
}

define internal { %Uint32 (i8*, %Int32)*, i8* } @"$fundef_32"(%"$$fundef_32_env_142"* %0, %Uint32 %1) {
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
  store { %Uint32 (i8*, %Int32)*, i8* } %"$$fundef_34_cloval_494", { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_33", align 8
  %"$$retval_33_498" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_33", align 8
  ret { %Uint32 (i8*, %Int32)*, i8* } %"$$retval_33_498"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_30"(%"$$fundef_30_env_143"* %0) {
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
  %"$list_foldl_call_424" = call { i8*, i8* }* %"$list_foldl_fptr_422"(i8* %"$list_foldl_envptr_423")
  %"$list_foldl_425" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_424", i32 1
  %"$list_foldl_426" = bitcast { i8*, i8* }* %"$list_foldl_425" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_427" = load { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_426", align 8
  %"$list_foldl_fptr_428" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_427", 0
  %"$list_foldl_envptr_429" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_427", 1
  %"$list_foldl_call_430" = call { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_428"(i8* %"$list_foldl_envptr_429")
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_430", { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
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
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
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
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_32_cloval_454", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
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
  store %Uint32 zeroinitializer, %Uint32* %init, align 4
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
  %"$foldl_call_476" = call { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_473"(i8* %"$foldl_envptr_474", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_475")
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_476", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$$foldl_4_477" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8
  %"$$foldl_4_fptr_478" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_477", 0
  %"$$foldl_4_envptr_479" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_477", 1
  %"$init_480" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_4_call_481" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_fptr_478"(i8* %"$$foldl_4_envptr_479", %Uint32 %"$init_480")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_4_call_481", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5", align 8
  %"$$foldl_5_482" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_5", align 8
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_5_482", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_31", align 8
  %"$$retval_31_483" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_31", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_31_483"
}

define internal %Uint32 @"$fundef_28"(%"$$fundef_28_env_144"* %0, %TName_List_Int64* %1) {
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
  ]

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
  %"$f_call_374" = call { %Uint32 (i8*, %Int64)*, i8* } %"$f_fptr_371"(i8* %"$f_envptr_372", %Uint32 %"$z_373")
  store { %Uint32 (i8*, %Int64)*, i8* } %"$f_call_374", { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0", align 8
  %"$f_1" = alloca %Uint32, align 8
  %"$$f_0_375" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$f_0", align 8
  %"$$f_0_fptr_376" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_375", 0
  %"$$f_0_envptr_377" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_0_375", 1
  %"$h_378" = load %Int64, %Int64* %h, align 8
  %"$$f_0_call_379" = call %Uint32 %"$$f_0_fptr_376"(i8* %"$$f_0_envptr_377", %Int64 %"$h_378")
  store %Uint32 %"$$f_0_call_379", %Uint32* %"$f_1", align 4
  %"$$f_1_380" = load %Uint32, %Uint32* %"$f_1", align 4
  store %Uint32 %"$$f_1_380", %Uint32* %res, align 4
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
  %"$g_call_390" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_fptr_387"(i8* %"$g_envptr_388", %Uint32 %"$res_389")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_call_390", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2", align 8
  %"$g_3" = alloca %Uint32, align 8
  %"$$g_2_391" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_2", align 8
  %"$$g_2_fptr_392" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_391", 0
  %"$$g_2_envptr_393" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_2_391", 1
  %"$t_394" = load %TName_List_Int64*, %TName_List_Int64** %t, align 8
  %"$$g_2_call_395" = call %Uint32 %"$$g_2_fptr_392"(i8* %"$$g_2_envptr_393", %TName_List_Int64* %"$t_394")
  store %Uint32 %"$$g_2_call_395", %Uint32* %"$g_3", align 4
  %"$$g_3_396" = load %Uint32, %Uint32* %"$g_3", align 4
  store %Uint32 %"$$g_3_396", %Uint32* %"$retval_29", align 4
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
  store %Uint32 %"$z_404", %Uint32* %"$retval_29", align 4
  br label %"$matchsucc_350"

"$empty_default_353":                             ; preds = %"$have_gas_348"
  br label %"$matchsucc_350"

"$matchsucc_350":                                 ; preds = %"$have_gas_402", %"$have_gas_384", %"$empty_default_353"
  %"$$retval_29_405" = load %Uint32, %Uint32* %"$retval_29", align 4
  ret %Uint32 %"$$retval_29_405"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_26"(%"$$fundef_26_env_145"* %0, %Uint32 %1) {
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
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$fundef_28_cloval_332", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_27", align 8
  %"$$retval_27_338" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_27", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_27_338"
}

define internal { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_24"(%"$$fundef_24_env_146"* %0, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1) {
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
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_26_cloval_314", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_26_env_f_315" = getelementptr inbounds %"$$fundef_26_env_145", %"$$fundef_26_env_145"* %"$$fundef_26_envp_311", i32 0, i32 0
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_f_315", align 8
  %"$$fundef_26_env_g_316" = getelementptr inbounds %"$$fundef_26_env_145", %"$$fundef_26_env_145"* %"$$fundef_26_envp_311", i32 0, i32 1
  %"$g_317" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_317", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_g_316", align 8
  %"$g_318" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_318", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_25", align 8
  %"$$retval_25_319" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_25", align 8
  ret { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_25_319"
}

define internal { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_22"(%"$$fundef_22_env_147"* %0) {
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
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_24_env_146"*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_24" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_23", align 8
  %"$$retval_23_300" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_23", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_23_300"
}

define internal { i8*, i8* }* @"$fundef_20"(%"$$fundef_20_env_148"* %0) {
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
  store { i8*, i8* }* %"$dyndisp_table_288", { i8*, i8* }** %"$retval_21", align 8
  %"$$retval_21_291" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_21", align 8
  ret { i8*, i8* }* %"$$retval_21_291"
}

define internal %Uint32 @"$fundef_18"(%"$$fundef_18_env_149"* %0, %TName_List_Int32* %1) {
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
  ]

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
  %"$f_call_248" = call { %Uint32 (i8*, %Int32)*, i8* } %"$f_fptr_245"(i8* %"$f_envptr_246", %Uint32 %"$z_247")
  store { %Uint32 (i8*, %Int32)*, i8* } %"$f_call_248", { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0", align 8
  %"$f_1" = alloca %Uint32, align 8
  %"$$f_0_249" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$f_0", align 8
  %"$$f_0_fptr_250" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_249", 0
  %"$$f_0_envptr_251" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_0_249", 1
  %"$h_252" = load %Int32, %Int32* %h, align 4
  %"$$f_0_call_253" = call %Uint32 %"$$f_0_fptr_250"(i8* %"$$f_0_envptr_251", %Int32 %"$h_252")
  store %Uint32 %"$$f_0_call_253", %Uint32* %"$f_1", align 4
  %"$$f_1_254" = load %Uint32, %Uint32* %"$f_1", align 4
  store %Uint32 %"$$f_1_254", %Uint32* %res, align 4
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
  %"$g_call_264" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_fptr_261"(i8* %"$g_envptr_262", %Uint32 %"$res_263")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_call_264", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2", align 8
  %"$g_3" = alloca %Uint32, align 8
  %"$$g_2_265" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_2", align 8
  %"$$g_2_fptr_266" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_265", 0
  %"$$g_2_envptr_267" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_2_265", 1
  %"$t_268" = load %TName_List_Int32*, %TName_List_Int32** %t, align 8
  %"$$g_2_call_269" = call %Uint32 %"$$g_2_fptr_266"(i8* %"$$g_2_envptr_267", %TName_List_Int32* %"$t_268")
  store %Uint32 %"$$g_2_call_269", %Uint32* %"$g_3", align 4
  %"$$g_3_270" = load %Uint32, %Uint32* %"$g_3", align 4
  store %Uint32 %"$$g_3_270", %Uint32* %"$retval_19", align 4
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
  store %Uint32 %"$z_278", %Uint32* %"$retval_19", align 4
  br label %"$matchsucc_224"

"$empty_default_227":                             ; preds = %"$have_gas_222"
  br label %"$matchsucc_224"

"$matchsucc_224":                                 ; preds = %"$have_gas_276", %"$have_gas_258", %"$empty_default_227"
  %"$$retval_19_279" = load %Uint32, %Uint32* %"$retval_19", align 4
  ret %Uint32 %"$$retval_19_279"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_16"(%"$$fundef_16_env_150"* %0, %Uint32 %1) {
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
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$fundef_18_cloval_206", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_17", align 8
  %"$$retval_17_212" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_17", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_17_212"
}

define internal { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_14"(%"$$fundef_14_env_151"* %0, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1) {
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
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_16_cloval_188", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_16_env_f_189" = getelementptr inbounds %"$$fundef_16_env_150", %"$$fundef_16_env_150"* %"$$fundef_16_envp_185", i32 0, i32 0
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_f_189", align 8
  %"$$fundef_16_env_g_190" = getelementptr inbounds %"$$fundef_16_env_150", %"$$fundef_16_env_150"* %"$$fundef_16_envp_185", i32 0, i32 1
  %"$g_191" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_191", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_16_env_g_190", align 8
  %"$g_192" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_192", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_15", align 8
  %"$$retval_15_193" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_15", align 8
  ret { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_15_193"
}

define internal { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_12"(%"$$fundef_12_env_152"* %0) {
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
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_14_env_151"*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_14" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_13", align 8
  %"$$retval_13_174" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_13", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_13_174"
}

define internal { i8*, i8* }* @"$fundef_10"(%"$$fundef_10_env_153"* %0) {
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
  store { i8*, i8* }* %"$dyndisp_table_162", { i8*, i8* }** %"$retval_11", align 8
  %"$$retval_11_165" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_11", align 8
  ret { i8*, i8* }* %"$$retval_11_165"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  %"$gasrem_786" = load i64, i64* @_gasrem, align 8
  %"$gascmp_787" = icmp ugt i64 1, %"$gasrem_786"
  br i1 %"$gascmp_787", label %"$out_of_gas_788", label %"$have_gas_789"

"$out_of_gas_788":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_789"

"$have_gas_789":                                  ; preds = %"$out_of_gas_788", %entry
  %"$consume_790" = sub i64 %"$gasrem_786", 1
  store i64 %"$consume_790", i64* @_gasrem, align 8
  %"$dyndisp_table_797_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_797_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_797_salloc_load", i64 48)
  %"$dyndisp_table_797_salloc" = bitcast i8* %"$dyndisp_table_797_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_797" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_797_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_798" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_797", i32 0
  %"$dyndisp_pcast_799" = bitcast { i8*, i8* }* %"$dyndisp_gep_798" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_10_env_153"*)* @"$fundef_10" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_799", align 8
  %"$dyndisp_gep_800" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_797", i32 2
  %"$dyndisp_pcast_801" = bitcast { i8*, i8* }* %"$dyndisp_gep_800" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_20_env_148"*)* @"$fundef_20" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_801", align 8
  store { i8*, i8* }* %"$dyndisp_table_797", { i8*, i8* }** @list_foldl, align 8
  %"$gasrem_802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_803" = icmp ugt i64 1, %"$gasrem_802"
  br i1 %"$gascmp_803", label %"$out_of_gas_804", label %"$have_gas_805"

"$out_of_gas_804":                                ; preds = %"$have_gas_789"
  call void @_out_of_gas()
  br label %"$have_gas_805"

"$have_gas_805":                                  ; preds = %"$out_of_gas_804", %"$have_gas_789"
  %"$consume_806" = sub i64 %"$gasrem_802", 1
  store i64 %"$consume_806", i64* @_gasrem, align 8
  %"$$fundef_30_envp_807_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_30_envp_807_salloc" = call i8* @_salloc(i8* %"$$fundef_30_envp_807_load", i64 8)
  %"$$fundef_30_envp_807" = bitcast i8* %"$$fundef_30_envp_807_salloc" to %"$$fundef_30_env_143"*
  %"$$fundef_30_env_voidp_809" = bitcast %"$$fundef_30_env_143"* %"$$fundef_30_envp_807" to i8*
  %"$$fundef_30_cloval_810" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_30_env_143"*)* @"$fundef_30" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_30_env_voidp_809", 1
  %"$$fundef_30_env_list_foldl_811" = getelementptr inbounds %"$$fundef_30_env_143", %"$$fundef_30_env_143"* %"$$fundef_30_envp_807", i32 0, i32 0
  %"$list_foldl_812" = load { i8*, i8* }*, { i8*, i8* }** @list_foldl, align 8
  store { i8*, i8* }* %"$list_foldl_812", { i8*, i8* }** %"$$fundef_30_env_list_foldl_811", align 8
  %"$$fundef_36_env_voidp_814" = bitcast %"$$fundef_30_env_143"* %"$$fundef_30_envp_807" to i8*
  %"$$fundef_36_cloval_815" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_36_env_140"*)* @"$fundef_36" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_36_env_voidp_814", 1
  %"$dyndisp_table_816_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_816_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_816_salloc_load", i64 48)
  %"$dyndisp_table_816_salloc" = bitcast i8* %"$dyndisp_table_816_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_816" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_816_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_817" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_816", i32 0
  %"$dyndisp_pcast_818" = bitcast { i8*, i8* }* %"$dyndisp_gep_817" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$$fundef_30_cloval_810", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_818", align 8
  %"$dyndisp_gep_819" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_816", i32 2
  %"$dyndisp_pcast_820" = bitcast { i8*, i8* }* %"$dyndisp_gep_819" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$$fundef_36_cloval_815", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_820", align 8
  store { i8*, i8* }* %"$dyndisp_table_816", { i8*, i8* }** @ListUtils.list_length, align 8
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_42" = alloca %Uint32, align 8
  %"$gasrem_821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_822" = icmp ugt i64 1, %"$gasrem_821"
  br i1 %"$gascmp_822", label %"$out_of_gas_823", label %"$have_gas_824"

"$out_of_gas_823":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_824"

"$have_gas_824":                                  ; preds = %"$out_of_gas_823", %entry
  %"$consume_825" = sub i64 %"$gasrem_821", 1
  store i64 %"$consume_825", i64* @_gasrem, align 8
  %t1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_827" = icmp ugt i64 1, %"$gasrem_826"
  br i1 %"$gascmp_827", label %"$out_of_gas_828", label %"$have_gas_829"

"$out_of_gas_828":                                ; preds = %"$have_gas_824"
  call void @_out_of_gas()
  br label %"$have_gas_829"

"$have_gas_829":                                  ; preds = %"$out_of_gas_828", %"$have_gas_824"
  %"$consume_830" = sub i64 %"$gasrem_826", 1
  store i64 %"$consume_830", i64* @_gasrem, align 8
  %"$dyndisp_table_837_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_837_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_837_salloc_load", i64 48)
  %"$dyndisp_table_837_salloc" = bitcast i8* %"$dyndisp_table_837_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_837" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_837_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_838" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_837", i32 0
  %"$dyndisp_pcast_839" = bitcast { i8*, i8* }* %"$dyndisp_gep_838" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_43_env_137"*)* @"$fundef_43" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_839", align 8
  %"$dyndisp_gep_840" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_837", i32 2
  %"$dyndisp_pcast_841" = bitcast { i8*, i8* }* %"$dyndisp_gep_840" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_47_env_135"*)* @"$fundef_47" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_841", align 8
  store { i8*, i8* }* %"$dyndisp_table_837", { i8*, i8* }** %t1, align 8
  %"$gasrem_842" = load i64, i64* @_gasrem, align 8
  %"$gascmp_843" = icmp ugt i64 1, %"$gasrem_842"
  br i1 %"$gascmp_843", label %"$out_of_gas_844", label %"$have_gas_845"

"$out_of_gas_844":                                ; preds = %"$have_gas_829"
  call void @_out_of_gas()
  br label %"$have_gas_845"

"$have_gas_845":                                  ; preds = %"$out_of_gas_844", %"$have_gas_829"
  %"$consume_846" = sub i64 %"$gasrem_842", 1
  store i64 %"$consume_846", i64* @_gasrem, align 8
  %t2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_847" = load i64, i64* @_gasrem, align 8
  %"$gascmp_848" = icmp ugt i64 1, %"$gasrem_847"
  br i1 %"$gascmp_848", label %"$out_of_gas_849", label %"$have_gas_850"

"$out_of_gas_849":                                ; preds = %"$have_gas_845"
  call void @_out_of_gas()
  br label %"$have_gas_850"

"$have_gas_850":                                  ; preds = %"$out_of_gas_849", %"$have_gas_845"
  %"$consume_851" = sub i64 %"$gasrem_847", 1
  store i64 %"$consume_851", i64* @_gasrem, align 8
  %"$dyndisp_table_858_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_858_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_858_salloc_load", i64 48)
  %"$dyndisp_table_858_salloc" = bitcast i8* %"$dyndisp_table_858_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_858" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_858_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_859" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_858", i32 0
  %"$dyndisp_pcast_860" = bitcast { i8*, i8* }* %"$dyndisp_gep_859" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_51_env_133"*)* @"$fundef_51" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_860", align 8
  %"$dyndisp_gep_861" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_858", i32 2
  %"$dyndisp_pcast_862" = bitcast { i8*, i8* }* %"$dyndisp_gep_861" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_55_env_131"*)* @"$fundef_55" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_862", align 8
  store { i8*, i8* }* %"$dyndisp_table_858", { i8*, i8* }** %t2, align 8
  %"$gasrem_863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_864" = icmp ugt i64 1, %"$gasrem_863"
  br i1 %"$gascmp_864", label %"$out_of_gas_865", label %"$have_gas_866"

"$out_of_gas_865":                                ; preds = %"$have_gas_850"
  call void @_out_of_gas()
  br label %"$have_gas_866"

"$have_gas_866":                                  ; preds = %"$out_of_gas_865", %"$have_gas_850"
  %"$consume_867" = sub i64 %"$gasrem_863", 1
  store i64 %"$consume_867", i64* @_gasrem, align 8
  %some_bool = alloca %TName_Bool*, align 8
  %"$gasrem_868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_869" = icmp ugt i64 1, %"$gasrem_868"
  br i1 %"$gascmp_869", label %"$out_of_gas_870", label %"$have_gas_871"

"$out_of_gas_870":                                ; preds = %"$have_gas_866"
  call void @_out_of_gas()
  br label %"$have_gas_871"

"$have_gas_871":                                  ; preds = %"$out_of_gas_870", %"$have_gas_866"
  %"$consume_872" = sub i64 %"$gasrem_868", 1
  store i64 %"$consume_872", i64* @_gasrem, align 8
  %"$adtval_873_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_873_salloc" = call i8* @_salloc(i8* %"$adtval_873_load", i64 1)
  %"$adtval_873" = bitcast i8* %"$adtval_873_salloc" to %CName_True*
  %"$adtgep_874" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_873", i32 0, i32 0
  store i8 0, i8* %"$adtgep_874", align 1
  %"$adtptr_875" = bitcast %CName_True* %"$adtval_873" to %TName_Bool*
  store %TName_Bool* %"$adtptr_875", %TName_Bool** %some_bool, align 8
  %"$gasrem_876" = load i64, i64* @_gasrem, align 8
  %"$gascmp_877" = icmp ugt i64 1, %"$gasrem_876"
  br i1 %"$gascmp_877", label %"$out_of_gas_878", label %"$have_gas_879"

"$out_of_gas_878":                                ; preds = %"$have_gas_871"
  call void @_out_of_gas()
  br label %"$have_gas_879"

"$have_gas_879":                                  ; preds = %"$out_of_gas_878", %"$have_gas_871"
  %"$consume_880" = sub i64 %"$gasrem_876", 1
  store i64 %"$consume_880", i64* @_gasrem, align 8
  %f = alloca { i8*, i8* }*, align 8
  %"$gasrem_881" = load i64, i64* @_gasrem, align 8
  %"$gascmp_882" = icmp ugt i64 2, %"$gasrem_881"
  br i1 %"$gascmp_882", label %"$out_of_gas_883", label %"$have_gas_884"

"$out_of_gas_883":                                ; preds = %"$have_gas_879"
  call void @_out_of_gas()
  br label %"$have_gas_884"

"$have_gas_884":                                  ; preds = %"$out_of_gas_883", %"$have_gas_879"
  %"$consume_885" = sub i64 %"$gasrem_881", 2
  store i64 %"$consume_885", i64* @_gasrem, align 8
  %"$some_bool_887" = load %TName_Bool*, %TName_Bool** %some_bool, align 8
  %"$some_bool_tag_888" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool_887", i32 0, i32 0
  %"$some_bool_tag_889" = load i8, i8* %"$some_bool_tag_888", align 1
  switch i8 %"$some_bool_tag_889", label %"$empty_default_890" [
    i8 0, label %"$True_891"
    i8 1, label %"$False_899"
  ]

"$True_891":                                      ; preds = %"$have_gas_884"
  %"$some_bool_892" = bitcast %TName_Bool* %"$some_bool_887" to %CName_True*
  %"$gasrem_893" = load i64, i64* @_gasrem, align 8
  %"$gascmp_894" = icmp ugt i64 1, %"$gasrem_893"
  br i1 %"$gascmp_894", label %"$out_of_gas_895", label %"$have_gas_896"

"$out_of_gas_895":                                ; preds = %"$True_891"
  call void @_out_of_gas()
  br label %"$have_gas_896"

"$have_gas_896":                                  ; preds = %"$out_of_gas_895", %"$True_891"
  %"$consume_897" = sub i64 %"$gasrem_893", 1
  store i64 %"$consume_897", i64* @_gasrem, align 8
  %"$t2_898" = load { i8*, i8* }*, { i8*, i8* }** %t2, align 8
  store { i8*, i8* }* %"$t2_898", { i8*, i8* }** %f, align 8
  br label %"$matchsucc_886"

"$False_899":                                     ; preds = %"$have_gas_884"
  %"$some_bool_900" = bitcast %TName_Bool* %"$some_bool_887" to %CName_False*
  %"$gasrem_901" = load i64, i64* @_gasrem, align 8
  %"$gascmp_902" = icmp ugt i64 1, %"$gasrem_901"
  br i1 %"$gascmp_902", label %"$out_of_gas_903", label %"$have_gas_904"

"$out_of_gas_903":                                ; preds = %"$False_899"
  call void @_out_of_gas()
  br label %"$have_gas_904"

"$have_gas_904":                                  ; preds = %"$out_of_gas_903", %"$False_899"
  %"$consume_905" = sub i64 %"$gasrem_901", 1
  store i64 %"$consume_905", i64* @_gasrem, align 8
  %"$t1_906" = load { i8*, i8* }*, { i8*, i8* }** %t1, align 8
  store { i8*, i8* }* %"$t1_906", { i8*, i8* }** %f, align 8
  br label %"$matchsucc_886"

"$empty_default_890":                             ; preds = %"$have_gas_884"
  br label %"$matchsucc_886"

"$matchsucc_886":                                 ; preds = %"$have_gas_904", %"$have_gas_896", %"$empty_default_890"
  %"$gasrem_907" = load i64, i64* @_gasrem, align 8
  %"$gascmp_908" = icmp ugt i64 1, %"$gasrem_907"
  br i1 %"$gascmp_908", label %"$out_of_gas_909", label %"$have_gas_910"

"$out_of_gas_909":                                ; preds = %"$matchsucc_886"
  call void @_out_of_gas()
  br label %"$have_gas_910"

"$have_gas_910":                                  ; preds = %"$out_of_gas_909", %"$matchsucc_886"
  %"$consume_911" = sub i64 %"$gasrem_907", 1
  store i64 %"$consume_911", i64* @_gasrem, align 8
  %some_bool2 = alloca %TName_Bool*, align 8
  %"$gasrem_912" = load i64, i64* @_gasrem, align 8
  %"$gascmp_913" = icmp ugt i64 1, %"$gasrem_912"
  br i1 %"$gascmp_913", label %"$out_of_gas_914", label %"$have_gas_915"

"$out_of_gas_914":                                ; preds = %"$have_gas_910"
  call void @_out_of_gas()
  br label %"$have_gas_915"

"$have_gas_915":                                  ; preds = %"$out_of_gas_914", %"$have_gas_910"
  %"$consume_916" = sub i64 %"$gasrem_912", 1
  store i64 %"$consume_916", i64* @_gasrem, align 8
  %"$adtval_917_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_917_salloc" = call i8* @_salloc(i8* %"$adtval_917_load", i64 1)
  %"$adtval_917" = bitcast i8* %"$adtval_917_salloc" to %CName_False*
  %"$adtgep_918" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_917", i32 0, i32 0
  store i8 1, i8* %"$adtgep_918", align 1
  %"$adtptr_919" = bitcast %CName_False* %"$adtval_917" to %TName_Bool*
  store %TName_Bool* %"$adtptr_919", %TName_Bool** %some_bool2, align 8
  %"$gasrem_920" = load i64, i64* @_gasrem, align 8
  %"$gascmp_921" = icmp ugt i64 2, %"$gasrem_920"
  br i1 %"$gascmp_921", label %"$out_of_gas_922", label %"$have_gas_923"

"$out_of_gas_922":                                ; preds = %"$have_gas_915"
  call void @_out_of_gas()
  br label %"$have_gas_923"

"$have_gas_923":                                  ; preds = %"$out_of_gas_922", %"$have_gas_915"
  %"$consume_924" = sub i64 %"$gasrem_920", 2
  store i64 %"$consume_924", i64* @_gasrem, align 8
  %"$some_bool2_926" = load %TName_Bool*, %TName_Bool** %some_bool2, align 8
  %"$some_bool2_tag_927" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool2_926", i32 0, i32 0
  %"$some_bool2_tag_928" = load i8, i8* %"$some_bool2_tag_927", align 1
  switch i8 %"$some_bool2_tag_928", label %"$empty_default_929" [
    i8 0, label %"$True_930"
    i8 1, label %"$False_1003"
  ]

"$True_930":                                      ; preds = %"$have_gas_923"
  %"$some_bool2_931" = bitcast %TName_Bool* %"$some_bool2_926" to %CName_True*
  %"$gasrem_932" = load i64, i64* @_gasrem, align 8
  %"$gascmp_933" = icmp ugt i64 1, %"$gasrem_932"
  br i1 %"$gascmp_933", label %"$out_of_gas_934", label %"$have_gas_935"

"$out_of_gas_934":                                ; preds = %"$True_930"
  call void @_out_of_gas()
  br label %"$have_gas_935"

"$have_gas_935":                                  ; preds = %"$out_of_gas_934", %"$True_930"
  %"$consume_936" = sub i64 %"$gasrem_932", 1
  store i64 %"$consume_936", i64* @_gasrem, align 8
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_937" = load i64, i64* @_gasrem, align 8
  %"$gascmp_938" = icmp ugt i64 1, %"$gasrem_937"
  br i1 %"$gascmp_938", label %"$out_of_gas_939", label %"$have_gas_940"

"$out_of_gas_939":                                ; preds = %"$have_gas_935"
  call void @_out_of_gas()
  br label %"$have_gas_940"

"$have_gas_940":                                  ; preds = %"$out_of_gas_939", %"$have_gas_935"
  %"$consume_941" = sub i64 %"$gasrem_937", 1
  store i64 %"$consume_941", i64* @_gasrem, align 8
  %"$f_942" = load { i8*, i8* }*, { i8*, i8* }** %f, align 8
  %"$f_943" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_942", i32 0
  %"$f_944" = bitcast { i8*, i8* }* %"$f_943" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_945" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_944", align 8
  %"$f_fptr_946" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_945", 0
  %"$f_envptr_947" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_945", 1
  %"$f_call_948" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_946"(i8* %"$f_envptr_947")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_948", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8
  %"$gasrem_949" = load i64, i64* @_gasrem, align 8
  %"$gascmp_950" = icmp ugt i64 1, %"$gasrem_949"
  br i1 %"$gascmp_950", label %"$out_of_gas_951", label %"$have_gas_952"

"$out_of_gas_951":                                ; preds = %"$have_gas_940"
  call void @_out_of_gas()
  br label %"$have_gas_952"

"$have_gas_952":                                  ; preds = %"$out_of_gas_951", %"$have_gas_940"
  %"$consume_953" = sub i64 %"$gasrem_949", 1
  store i64 %"$consume_953", i64* @_gasrem, align 8
  %len = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_954" = load i64, i64* @_gasrem, align 8
  %"$gascmp_955" = icmp ugt i64 1, %"$gasrem_954"
  br i1 %"$gascmp_955", label %"$out_of_gas_956", label %"$have_gas_957"

"$out_of_gas_956":                                ; preds = %"$have_gas_952"
  call void @_out_of_gas()
  br label %"$have_gas_957"

"$have_gas_957":                                  ; preds = %"$out_of_gas_956", %"$have_gas_952"
  %"$consume_958" = sub i64 %"$gasrem_954", 1
  store i64 %"$consume_958", i64* @_gasrem, align 8
  %"$ListUtils.list_length_959" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_960" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_959", i32 0
  %"$ListUtils.list_length_961" = bitcast { i8*, i8* }* %"$ListUtils.list_length_960" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_962" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_961", align 8
  %"$ListUtils.list_length_fptr_963" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_962", 0
  %"$ListUtils.list_length_envptr_964" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_962", 1
  %"$ListUtils.list_length_call_965" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_fptr_963"(i8* %"$ListUtils.list_length_envptr_964")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_call_965", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8
  %"$gasrem_966" = load i64, i64* @_gasrem, align 8
  %"$gascmp_967" = icmp ugt i64 1, %"$gasrem_966"
  br i1 %"$gascmp_967", label %"$out_of_gas_968", label %"$have_gas_969"

"$out_of_gas_968":                                ; preds = %"$have_gas_957"
  call void @_out_of_gas()
  br label %"$have_gas_969"

"$have_gas_969":                                  ; preds = %"$out_of_gas_968", %"$have_gas_957"
  %"$consume_970" = sub i64 %"$gasrem_966", 1
  store i64 %"$consume_970", i64* @_gasrem, align 8
  %one = alloca %Int32, align 8
  %"$gasrem_971" = load i64, i64* @_gasrem, align 8
  %"$gascmp_972" = icmp ugt i64 1, %"$gasrem_971"
  br i1 %"$gascmp_972", label %"$out_of_gas_973", label %"$have_gas_974"

"$out_of_gas_973":                                ; preds = %"$have_gas_969"
  call void @_out_of_gas()
  br label %"$have_gas_974"

"$have_gas_974":                                  ; preds = %"$out_of_gas_973", %"$have_gas_969"
  %"$consume_975" = sub i64 %"$gasrem_971", 1
  store i64 %"$consume_975", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %one, align 4
  %"$gasrem_976" = load i64, i64* @_gasrem, align 8
  %"$gascmp_977" = icmp ugt i64 1, %"$gasrem_976"
  br i1 %"$gascmp_977", label %"$out_of_gas_978", label %"$have_gas_979"

"$out_of_gas_978":                                ; preds = %"$have_gas_974"
  call void @_out_of_gas()
  br label %"$have_gas_979"

"$have_gas_979":                                  ; preds = %"$out_of_gas_978", %"$have_gas_974"
  %"$consume_980" = sub i64 %"$gasrem_976", 1
  store i64 %"$consume_980", i64* @_gasrem, align 8
  %f1l = alloca %TName_List_Int32*, align 8
  %"$gasrem_981" = load i64, i64* @_gasrem, align 8
  %"$gascmp_982" = icmp ugt i64 1, %"$gasrem_981"
  br i1 %"$gascmp_982", label %"$out_of_gas_983", label %"$have_gas_984"

"$out_of_gas_983":                                ; preds = %"$have_gas_979"
  call void @_out_of_gas()
  br label %"$have_gas_984"

"$have_gas_984":                                  ; preds = %"$out_of_gas_983", %"$have_gas_979"
  %"$consume_985" = sub i64 %"$gasrem_981", 1
  store i64 %"$consume_985", i64* @_gasrem, align 8
  %"$f1_6" = alloca %TName_List_Int32*, align 8
  %"$f1_986" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8
  %"$f1_fptr_987" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_986", 0
  %"$f1_envptr_988" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_986", 1
  %"$one_989" = load %Int32, %Int32* %one, align 4
  %"$f1_call_990" = call %TName_List_Int32* %"$f1_fptr_987"(i8* %"$f1_envptr_988", %Int32 %"$one_989")
  store %TName_List_Int32* %"$f1_call_990", %TName_List_Int32** %"$f1_6", align 8
  %"$$f1_6_991" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_6", align 8
  store %TName_List_Int32* %"$$f1_6_991", %TName_List_Int32** %f1l, align 8
  %"$gasrem_992" = load i64, i64* @_gasrem, align 8
  %"$gascmp_993" = icmp ugt i64 1, %"$gasrem_992"
  br i1 %"$gascmp_993", label %"$out_of_gas_994", label %"$have_gas_995"

"$out_of_gas_994":                                ; preds = %"$have_gas_984"
  call void @_out_of_gas()
  br label %"$have_gas_995"

"$have_gas_995":                                  ; preds = %"$out_of_gas_994", %"$have_gas_984"
  %"$consume_996" = sub i64 %"$gasrem_992", 1
  store i64 %"$consume_996", i64* @_gasrem, align 8
  %"$len_7" = alloca %Uint32, align 8
  %"$len_997" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8
  %"$len_fptr_998" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_997", 0
  %"$len_envptr_999" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_997", 1
  %"$f1l_1000" = load %TName_List_Int32*, %TName_List_Int32** %f1l, align 8
  %"$len_call_1001" = call %Uint32 %"$len_fptr_998"(i8* %"$len_envptr_999", %TName_List_Int32* %"$f1l_1000")
  store %Uint32 %"$len_call_1001", %Uint32* %"$len_7", align 4
  %"$$len_7_1002" = load %Uint32, %Uint32* %"$len_7", align 4
  store %Uint32 %"$$len_7_1002", %Uint32* %"$expr_42", align 4
  br label %"$matchsucc_925"

"$False_1003":                                    ; preds = %"$have_gas_923"
  %"$some_bool2_1004" = bitcast %TName_Bool* %"$some_bool2_926" to %CName_False*
  %"$gasrem_1005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1006" = icmp ugt i64 1, %"$gasrem_1005"
  br i1 %"$gascmp_1006", label %"$out_of_gas_1007", label %"$have_gas_1008"

"$out_of_gas_1007":                               ; preds = %"$False_1003"
  call void @_out_of_gas()
  br label %"$have_gas_1008"

"$have_gas_1008":                                 ; preds = %"$out_of_gas_1007", %"$False_1003"
  %"$consume_1009" = sub i64 %"$gasrem_1005", 1
  store i64 %"$consume_1009", i64* @_gasrem, align 8
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_1010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1011" = icmp ugt i64 1, %"$gasrem_1010"
  br i1 %"$gascmp_1011", label %"$out_of_gas_1012", label %"$have_gas_1013"

"$out_of_gas_1012":                               ; preds = %"$have_gas_1008"
  call void @_out_of_gas()
  br label %"$have_gas_1013"

"$have_gas_1013":                                 ; preds = %"$out_of_gas_1012", %"$have_gas_1008"
  %"$consume_1014" = sub i64 %"$gasrem_1010", 1
  store i64 %"$consume_1014", i64* @_gasrem, align 8
  %"$f_1015" = load { i8*, i8* }*, { i8*, i8* }** %f, align 8
  %"$f_1016" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_1015", i32 2
  %"$f_1017" = bitcast { i8*, i8* }* %"$f_1016" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_1018" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_1017", align 8
  %"$f_fptr_1019" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_1018", 0
  %"$f_envptr_1020" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_1018", 1
  %"$f_call_1021" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_1019"(i8* %"$f_envptr_1020")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_1021", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8
  %"$gasrem_1022" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1023" = icmp ugt i64 1, %"$gasrem_1022"
  br i1 %"$gascmp_1023", label %"$out_of_gas_1024", label %"$have_gas_1025"

"$out_of_gas_1024":                               ; preds = %"$have_gas_1013"
  call void @_out_of_gas()
  br label %"$have_gas_1025"

"$have_gas_1025":                                 ; preds = %"$out_of_gas_1024", %"$have_gas_1013"
  %"$consume_1026" = sub i64 %"$gasrem_1022", 1
  store i64 %"$consume_1026", i64* @_gasrem, align 8
  %len1 = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_1027" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1028" = icmp ugt i64 1, %"$gasrem_1027"
  br i1 %"$gascmp_1028", label %"$out_of_gas_1029", label %"$have_gas_1030"

"$out_of_gas_1029":                               ; preds = %"$have_gas_1025"
  call void @_out_of_gas()
  br label %"$have_gas_1030"

"$have_gas_1030":                                 ; preds = %"$out_of_gas_1029", %"$have_gas_1025"
  %"$consume_1031" = sub i64 %"$gasrem_1027", 1
  store i64 %"$consume_1031", i64* @_gasrem, align 8
  %"$ListUtils.list_length_1032" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_1033" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_1032", i32 2
  %"$ListUtils.list_length_1034" = bitcast { i8*, i8* }* %"$ListUtils.list_length_1033" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1035" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_1034", align 8
  %"$ListUtils.list_length_fptr_1036" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1035", 0
  %"$ListUtils.list_length_envptr_1037" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1035", 1
  %"$ListUtils.list_length_call_1038" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_fptr_1036"(i8* %"$ListUtils.list_length_envptr_1037")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_call_1038", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8
  %"$gasrem_1039" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1040" = icmp ugt i64 1, %"$gasrem_1039"
  br i1 %"$gascmp_1040", label %"$out_of_gas_1041", label %"$have_gas_1042"

"$out_of_gas_1041":                               ; preds = %"$have_gas_1030"
  call void @_out_of_gas()
  br label %"$have_gas_1042"

"$have_gas_1042":                                 ; preds = %"$out_of_gas_1041", %"$have_gas_1030"
  %"$consume_1043" = sub i64 %"$gasrem_1039", 1
  store i64 %"$consume_1043", i64* @_gasrem, align 8
  %one2 = alloca %Int64, align 8
  %"$gasrem_1044" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1045" = icmp ugt i64 1, %"$gasrem_1044"
  br i1 %"$gascmp_1045", label %"$out_of_gas_1046", label %"$have_gas_1047"

"$out_of_gas_1046":                               ; preds = %"$have_gas_1042"
  call void @_out_of_gas()
  br label %"$have_gas_1047"

"$have_gas_1047":                                 ; preds = %"$out_of_gas_1046", %"$have_gas_1042"
  %"$consume_1048" = sub i64 %"$gasrem_1044", 1
  store i64 %"$consume_1048", i64* @_gasrem, align 8
  store %Int64 { i64 1 }, %Int64* %one2, align 8
  %"$gasrem_1049" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1050" = icmp ugt i64 1, %"$gasrem_1049"
  br i1 %"$gascmp_1050", label %"$out_of_gas_1051", label %"$have_gas_1052"

"$out_of_gas_1051":                               ; preds = %"$have_gas_1047"
  call void @_out_of_gas()
  br label %"$have_gas_1052"

"$have_gas_1052":                                 ; preds = %"$out_of_gas_1051", %"$have_gas_1047"
  %"$consume_1053" = sub i64 %"$gasrem_1049", 1
  store i64 %"$consume_1053", i64* @_gasrem, align 8
  %f2l = alloca %TName_List_Int64*, align 8
  %"$gasrem_1054" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1055" = icmp ugt i64 1, %"$gasrem_1054"
  br i1 %"$gascmp_1055", label %"$out_of_gas_1056", label %"$have_gas_1057"

"$out_of_gas_1056":                               ; preds = %"$have_gas_1052"
  call void @_out_of_gas()
  br label %"$have_gas_1057"

"$have_gas_1057":                                 ; preds = %"$out_of_gas_1056", %"$have_gas_1052"
  %"$consume_1058" = sub i64 %"$gasrem_1054", 1
  store i64 %"$consume_1058", i64* @_gasrem, align 8
  %"$f2_8" = alloca %TName_List_Int64*, align 8
  %"$f2_1059" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8
  %"$f2_fptr_1060" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1059", 0
  %"$f2_envptr_1061" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1059", 1
  %"$one_1062" = load %Int64, %Int64* %one2, align 8
  %"$f2_call_1063" = call %TName_List_Int64* %"$f2_fptr_1060"(i8* %"$f2_envptr_1061", %Int64 %"$one_1062")
  store %TName_List_Int64* %"$f2_call_1063", %TName_List_Int64** %"$f2_8", align 8
  %"$$f2_8_1064" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_8", align 8
  store %TName_List_Int64* %"$$f2_8_1064", %TName_List_Int64** %f2l, align 8
  %"$gasrem_1065" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1066" = icmp ugt i64 1, %"$gasrem_1065"
  br i1 %"$gascmp_1066", label %"$out_of_gas_1067", label %"$have_gas_1068"

"$out_of_gas_1067":                               ; preds = %"$have_gas_1057"
  call void @_out_of_gas()
  br label %"$have_gas_1068"

"$have_gas_1068":                                 ; preds = %"$out_of_gas_1067", %"$have_gas_1057"
  %"$consume_1069" = sub i64 %"$gasrem_1065", 1
  store i64 %"$consume_1069", i64* @_gasrem, align 8
  %"$len_9" = alloca %Uint32, align 8
  %"$len_1070" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8
  %"$len_fptr_1071" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1070", 0
  %"$len_envptr_1072" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1070", 1
  %"$f2l_1073" = load %TName_List_Int64*, %TName_List_Int64** %f2l, align 8
  %"$len_call_1074" = call %Uint32 %"$len_fptr_1071"(i8* %"$len_envptr_1072", %TName_List_Int64* %"$f2l_1073")
  store %Uint32 %"$len_call_1074", %Uint32* %"$len_9", align 4
  %"$$len_9_1075" = load %Uint32, %Uint32* %"$len_9", align 4
  store %Uint32 %"$$len_9_1075", %Uint32* %"$expr_42", align 4
  br label %"$matchsucc_925"

"$empty_default_929":                             ; preds = %"$have_gas_923"
  br label %"$matchsucc_925"

"$matchsucc_925":                                 ; preds = %"$have_gas_1068", %"$have_gas_995", %"$empty_default_929"
  %"$$expr_42_1076" = load %Uint32, %Uint32* %"$expr_42", align 4
  ret %Uint32 %"$$expr_42_1076"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1077" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_1078" = alloca %Uint32, align 8
  %"$memvoidcast_1079" = bitcast %Uint32* %"$pval_1078" to i8*
  store %Uint32 %"$exprval_1077", %Uint32* %"$pval_1078", align 4
  %"$execptr_load_1080" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1080", %_TyDescrTy_Typ* @"$TyDescr_Uint32_63", i8* %"$memvoidcast_1079")
  ret void
}
