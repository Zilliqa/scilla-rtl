; let tf =
; tfun 'A =>
; tfun 'B =>
; fun (a : 'A) =>
; fun (b : 'B) =>
; Pair {'A 'B} a b
; in
; 
; let tf1 =
; tfun 'A =>
; tfun 'B =>
; @tf 'A 'B
; 
; in
; 
; let t1 = @tf1 Uint32 Uint64 in
; let t3 = @tf ByStr1 in
; let t4 = @t3 ByStr2 in
; let uint32_one = Uint32 1 in
; let uint64_two = Uint64 2 in
; let addr_bystr1 = 0xaa in
; let addr_bystr2 = 0xaabb in
; 
; let p1 = t1 uint32_one uint64_two in
; let p2 = t4 addr_bystr1 addr_bystr2 in
; Pair {(Pair (Uint32) (Uint64)) ((Pair ByStr1 ByStr2))} p1 p2
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_31" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_65" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_64"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_64" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_66"**, %"$TyDescrTy_ADTTyp_65"* }
%"$TyDescrTy_ADTTyp_Constr_66" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Pair_Uint32_Uint64 = type { i8, %CName_Pair_Uint32_Uint64* }
%CName_Pair_Uint32_Uint64 = type <{ i8, %Uint32, %Uint64 }>
%Uint64 = type { i64 }
%Uint32 = type { i32 }
%"$$fundef_29_env_99" = type { { i8*, i8* }* }
%"$$fundef_27_env_100" = type { { i8*, i8* }* }
%TName_Pair_ByStr1_ByStr2 = type { i8, %CName_Pair_ByStr1_ByStr2* }
%CName_Pair_ByStr1_ByStr2 = type <{ i8, [1 x i8], [2 x i8] }>
%"$$fundef_25_env_101" = type { [1 x i8] }
%"$$fundef_23_env_102" = type {}
%"$$fundef_21_env_103" = type {}
%TName_Pair_ByStr1_Uint64 = type { i8, %CName_Pair_ByStr1_Uint64* }
%CName_Pair_ByStr1_Uint64 = type <{ i8, [1 x i8], %Uint64 }>
%"$$fundef_19_env_104" = type { [1 x i8] }
%"$$fundef_17_env_105" = type {}
%"$$fundef_15_env_106" = type {}
%"$$fundef_13_env_107" = type {}
%"$$fundef_11_env_108" = type { %Uint32 }
%"$$fundef_9_env_109" = type {}
%"$$fundef_7_env_110" = type {}
%"$$fundef_5_env_111" = type {}
%"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)" = type { i8, %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* }
%"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)" = type <{ i8, %TName_Pair_Uint32_Uint64*, %TName_Pair_ByStr1_ByStr2* }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_32" = global %"$TyDescrTy_PrimTyp_31" zeroinitializer
@"$TyDescr_Int32_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Int32_Prim_32" to i8*) }
@"$TyDescr_Uint32_Prim_34" = global %"$TyDescrTy_PrimTyp_31" { i32 1, i32 0 }
@"$TyDescr_Uint32_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Uint32_Prim_34" to i8*) }
@"$TyDescr_Int64_Prim_36" = global %"$TyDescrTy_PrimTyp_31" { i32 0, i32 1 }
@"$TyDescr_Int64_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Int64_Prim_36" to i8*) }
@"$TyDescr_Uint64_Prim_38" = global %"$TyDescrTy_PrimTyp_31" { i32 1, i32 1 }
@"$TyDescr_Uint64_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Uint64_Prim_38" to i8*) }
@"$TyDescr_Int128_Prim_40" = global %"$TyDescrTy_PrimTyp_31" { i32 0, i32 2 }
@"$TyDescr_Int128_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Int128_Prim_40" to i8*) }
@"$TyDescr_Uint128_Prim_42" = global %"$TyDescrTy_PrimTyp_31" { i32 1, i32 2 }
@"$TyDescr_Uint128_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Uint128_Prim_42" to i8*) }
@"$TyDescr_Int256_Prim_44" = global %"$TyDescrTy_PrimTyp_31" { i32 0, i32 3 }
@"$TyDescr_Int256_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Int256_Prim_44" to i8*) }
@"$TyDescr_Uint256_Prim_46" = global %"$TyDescrTy_PrimTyp_31" { i32 1, i32 3 }
@"$TyDescr_Uint256_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Uint256_Prim_46" to i8*) }
@"$TyDescr_String_Prim_48" = global %"$TyDescrTy_PrimTyp_31" { i32 2, i32 0 }
@"$TyDescr_String_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_String_Prim_48" to i8*) }
@"$TyDescr_Bnum_Prim_50" = global %"$TyDescrTy_PrimTyp_31" { i32 3, i32 0 }
@"$TyDescr_Bnum_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bnum_Prim_50" to i8*) }
@"$TyDescr_Message_Prim_52" = global %"$TyDescrTy_PrimTyp_31" { i32 4, i32 0 }
@"$TyDescr_Message_53" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Message_Prim_52" to i8*) }
@"$TyDescr_Event_Prim_54" = global %"$TyDescrTy_PrimTyp_31" { i32 5, i32 0 }
@"$TyDescr_Event_55" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Event_Prim_54" to i8*) }
@"$TyDescr_Exception_Prim_56" = global %"$TyDescrTy_PrimTyp_31" { i32 6, i32 0 }
@"$TyDescr_Exception_57" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Exception_Prim_56" to i8*) }
@"$TyDescr_Bystr_Prim_58" = global %"$TyDescrTy_PrimTyp_31" { i32 7, i32 0 }
@"$TyDescr_Bystr_59" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bystr_Prim_58" to i8*) }
@"$TyDescr_Bystr2_Prim_60" = global %"$TyDescrTy_PrimTyp_31" { i32 8, i32 2 }
@"$TyDescr_Bystr2_61" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bystr2_Prim_60" to i8*) }
@"$TyDescr_Bystr1_Prim_62" = global %"$TyDescrTy_PrimTyp_31" { i32 8, i32 1 }
@"$TyDescr_Bystr1_63" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bystr1_Prim_62" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_67" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_78" to i8*) }
@"$TyDescr_ADT_Pair_ByStr1_ByStr2_68" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_84" to i8*) }
@"$TyDescr_ADT_Pair_ByStr1_Uint64_69" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_90" to i8*) }
@"$TyDescr_ADT_Pair_Uint32_Uint64_70" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_96" to i8*) }
@"$TyDescr_Pair_ADTTyp_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_98", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 4, %"$TyDescrTy_ADTTyp_Specl_64"** getelementptr inbounds ([4 x %"$TyDescrTy_ADTTyp_Specl_64"*], [4 x %"$TyDescrTy_ADTTyp_Specl_64"*]* @"$TyDescr_Pair_ADTTyp_m_specls_97", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_Constr_m_args_73" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_70", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr1_ByStr2_68"]
@"$TyDescr_ADT_Pair_74" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Constr_75" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_74", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_Constr_m_args_73", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_constrs_76" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Constr_75"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_TArgs_77" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_70", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr1_ByStr2_68"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_78" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_TArgs_77", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_66"*], [1 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_constrs_76", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_Pair_ADTTyp_72" }
@"$TyDescr_Pair_Pair_ByStr1_ByStr2_Constr_m_args_79" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_63", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_61"]
@"$TyDescr_ADT_Pair_80" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr1_ByStr2_ADTTyp_Constr_81" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_80", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr1_ByStr2_Constr_m_args_79", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_constrs_82" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_Pair_Pair_ByStr1_ByStr2_ADTTyp_Constr_81"]
@"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_TArgs_83" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_63", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_61"]
@"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_84" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_TArgs_83", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_66"*], [1 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_constrs_82", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_Pair_ADTTyp_72" }
@"$TyDescr_Pair_Pair_ByStr1_Uint64_Constr_m_args_85" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_63", %_TyDescrTy_Typ* @"$TyDescr_Uint64_39"]
@"$TyDescr_ADT_Pair_86" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr1_Uint64_ADTTyp_Constr_87" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_86", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr1_Uint64_Constr_m_args_85", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_constrs_88" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_Pair_Pair_ByStr1_Uint64_ADTTyp_Constr_87"]
@"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_TArgs_89" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_63", %_TyDescrTy_Typ* @"$TyDescr_Uint64_39"]
@"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_90" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_TArgs_89", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_66"*], [1 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_constrs_88", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_Pair_ADTTyp_72" }
@"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_91" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_35", %_TyDescrTy_Typ* @"$TyDescr_Uint64_39"]
@"$TyDescr_ADT_Pair_92" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_93" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_92", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_91", i32 0, i32 0) }
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_94" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_93"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_95" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_35", %_TyDescrTy_Typ* @"$TyDescr_Uint64_39"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_96" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_95", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_66"*], [1 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_94", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_Pair_ADTTyp_72" }
@"$TyDescr_Pair_ADTTyp_m_specls_97" = unnamed_addr constant [4 x %"$TyDescrTy_ADTTyp_Specl_64"*] [%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_78", %"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_84", %"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_90", %"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_96"]
@"$TyDescr_ADT_Pair_98" = unnamed_addr constant [4 x i8] c"Pair"

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_29"(%"$$fundef_29_env_99"* %0) {
entry:
  %"$$fundef_29_env_tf_260" = getelementptr inbounds %"$$fundef_29_env_99", %"$$fundef_29_env_99"* %0, i32 0, i32 0
  %"$tf_envload_261" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_29_env_tf_260"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_261", { i8*, i8* }** %tf
  %"$retval_30" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$gasrem_262" = load i64, i64* @_gasrem
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %entry
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem
  %"$tf_267" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_268" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_267", i32 0
  %"$tf_269" = bitcast { i8*, i8* }* %"$tf_268" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_270" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_269"
  %"$tf_fptr_271" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_270", 0
  %"$tf_envptr_272" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_270", 1
  %"$tf_call_273" = call { i8*, i8* }* %"$tf_fptr_271"(i8* %"$tf_envptr_272")
  %"$tf_274" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_273", i32 1
  %"$tf_275" = bitcast { i8*, i8* }* %"$tf_274" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_276" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_275"
  %"$tf_fptr_277" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_276", 0
  %"$tf_envptr_278" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_276", 1
  %"$tf_call_279" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_277"(i8* %"$tf_envptr_278")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_279", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_30"
  %"$$retval_30_280" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_30"
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_30_280"
}

define internal { i8*, i8* }* @"$fundef_27"(%"$$fundef_27_env_100"* %0) {
entry:
  %"$$fundef_27_env_tf_243" = getelementptr inbounds %"$$fundef_27_env_100", %"$$fundef_27_env_100"* %0, i32 0, i32 0
  %"$tf_envload_244" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_27_env_tf_243"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_244", { i8*, i8* }** %tf
  %"$retval_28" = alloca { i8*, i8* }*
  %"$gasrem_245" = load i64, i64* @_gasrem
  %"$gascmp_246" = icmp ugt i64 1, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %entry
  %"$consume_249" = sub i64 %"$gasrem_245", 1
  store i64 %"$consume_249", i64* @_gasrem
  %"$$fundef_29_envp_250_load" = load i8*, i8** @_execptr
  %"$$fundef_29_envp_250_salloc" = call i8* @_salloc(i8* %"$$fundef_29_envp_250_load", i64 8)
  %"$$fundef_29_envp_250" = bitcast i8* %"$$fundef_29_envp_250_salloc" to %"$$fundef_29_env_99"*
  %"$$fundef_29_env_voidp_252" = bitcast %"$$fundef_29_env_99"* %"$$fundef_29_envp_250" to i8*
  %"$$fundef_29_cloval_253" = insertvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_29_env_99"*)* @"$fundef_29" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_29_env_voidp_252", 1
  %"$$fundef_29_env_tf_254" = getelementptr inbounds %"$$fundef_29_env_99", %"$$fundef_29_env_99"* %"$$fundef_29_envp_250", i32 0, i32 0
  %"$tf_255" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_255", { i8*, i8* }** %"$$fundef_29_env_tf_254"
  %"$dyndisp_table_256_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_256_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_256_salloc_load", i64 64)
  %"$dyndisp_table_256_salloc" = bitcast i8* %"$dyndisp_table_256_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_256" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_256_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_257" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_256", i32 1
  %"$dyndisp_pcast_258" = bitcast { i8*, i8* }* %"$dyndisp_gep_257" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_29_cloval_253", { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_258"
  store { i8*, i8* }* %"$dyndisp_table_256", { i8*, i8* }** %"$retval_28"
  %"$$retval_28_259" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_28"
  ret { i8*, i8* }* %"$$retval_28_259"
}

define internal %TName_Pair_ByStr1_ByStr2* @"$fundef_25"(%"$$fundef_25_env_101"* %0, [2 x i8] %1) {
entry:
  %"$$fundef_25_env_a_229" = getelementptr inbounds %"$$fundef_25_env_101", %"$$fundef_25_env_101"* %0, i32 0, i32 0
  %"$a_envload_230" = load [1 x i8], [1 x i8]* %"$$fundef_25_env_a_229"
  %a = alloca [1 x i8]
  store [1 x i8] %"$a_envload_230", [1 x i8]* %a
  %"$retval_26" = alloca %TName_Pair_ByStr1_ByStr2*
  %"$gasrem_231" = load i64, i64* @_gasrem
  %"$gascmp_232" = icmp ugt i64 1, %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %entry
  %"$consume_235" = sub i64 %"$gasrem_231", 1
  store i64 %"$consume_235", i64* @_gasrem
  %"$a_236" = load [1 x i8], [1 x i8]* %a
  %"$adtval_237_load" = load i8*, i8** @_execptr
  %"$adtval_237_salloc" = call i8* @_salloc(i8* %"$adtval_237_load", i64 4)
  %"$adtval_237" = bitcast i8* %"$adtval_237_salloc" to %CName_Pair_ByStr1_ByStr2*
  %"$adtgep_238" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_237", i32 0, i32 0
  store i8 0, i8* %"$adtgep_238"
  %"$adtgep_239" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_237", i32 0, i32 1
  store [1 x i8] %"$a_236", [1 x i8]* %"$adtgep_239"
  %"$adtgep_240" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_237", i32 0, i32 2
  store [2 x i8] %1, [2 x i8]* %"$adtgep_240"
  %"$adtptr_241" = bitcast %CName_Pair_ByStr1_ByStr2* %"$adtval_237" to %TName_Pair_ByStr1_ByStr2*
  store %TName_Pair_ByStr1_ByStr2* %"$adtptr_241", %TName_Pair_ByStr1_ByStr2** %"$retval_26"
  %"$$retval_26_242" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %"$retval_26"
  ret %TName_Pair_ByStr1_ByStr2* %"$$retval_26_242"
}

define internal { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } @"$fundef_23"(%"$$fundef_23_env_102"* %0, [1 x i8] %1) {
entry:
  %"$retval_24" = alloca { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }
  %"$gasrem_218" = load i64, i64* @_gasrem
  %"$gascmp_219" = icmp ugt i64 1, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %entry
  %"$consume_222" = sub i64 %"$gasrem_218", 1
  store i64 %"$consume_222", i64* @_gasrem
  %"$$fundef_25_envp_223_load" = load i8*, i8** @_execptr
  %"$$fundef_25_envp_223_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_223_load", i64 1)
  %"$$fundef_25_envp_223" = bitcast i8* %"$$fundef_25_envp_223_salloc" to %"$$fundef_25_env_101"*
  %"$$fundef_25_env_voidp_225" = bitcast %"$$fundef_25_env_101"* %"$$fundef_25_envp_223" to i8*
  %"$$fundef_25_cloval_226" = insertvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])* bitcast (%TName_Pair_ByStr1_ByStr2* (%"$$fundef_25_env_101"*, [2 x i8])* @"$fundef_25" to %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*), i8* undef }, i8* %"$$fundef_25_env_voidp_225", 1
  %"$$fundef_25_env_a_227" = getelementptr inbounds %"$$fundef_25_env_101", %"$$fundef_25_env_101"* %"$$fundef_25_envp_223", i32 0, i32 0
  store [1 x i8] %1, [1 x i8]* %"$$fundef_25_env_a_227"
  store { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$fundef_25_cloval_226", { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$retval_24"
  %"$$retval_24_228" = load { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$retval_24"
  ret { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$retval_24_228"
}

define internal { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } @"$fundef_21"(%"$$fundef_21_env_103"* %0) {
entry:
  %"$retval_22" = alloca { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }
  %"$gasrem_209" = load i64, i64* @_gasrem
  %"$gascmp_210" = icmp ugt i64 1, %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %entry
  %"$consume_213" = sub i64 %"$gasrem_209", 1
  store i64 %"$consume_213", i64* @_gasrem
  store { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])* bitcast ({ %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (%"$$fundef_23_env_102"*, [1 x i8])* @"$fundef_23" to { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*), i8* null }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_22"
  %"$$retval_22_217" = load { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_22"
  ret { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$$retval_22_217"
}

define internal %TName_Pair_ByStr1_Uint64* @"$fundef_19"(%"$$fundef_19_env_104"* %0, %Uint64 %1) {
entry:
  %"$$fundef_19_env_a_195" = getelementptr inbounds %"$$fundef_19_env_104", %"$$fundef_19_env_104"* %0, i32 0, i32 0
  %"$a_envload_196" = load [1 x i8], [1 x i8]* %"$$fundef_19_env_a_195"
  %a = alloca [1 x i8]
  store [1 x i8] %"$a_envload_196", [1 x i8]* %a
  %"$retval_20" = alloca %TName_Pair_ByStr1_Uint64*
  %"$gasrem_197" = load i64, i64* @_gasrem
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %entry
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem
  %"$a_202" = load [1 x i8], [1 x i8]* %a
  %"$adtval_203_load" = load i8*, i8** @_execptr
  %"$adtval_203_salloc" = call i8* @_salloc(i8* %"$adtval_203_load", i64 10)
  %"$adtval_203" = bitcast i8* %"$adtval_203_salloc" to %CName_Pair_ByStr1_Uint64*
  %"$adtgep_204" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_203", i32 0, i32 0
  store i8 0, i8* %"$adtgep_204"
  %"$adtgep_205" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_203", i32 0, i32 1
  store [1 x i8] %"$a_202", [1 x i8]* %"$adtgep_205"
  %"$adtgep_206" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_203", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_206"
  %"$adtptr_207" = bitcast %CName_Pair_ByStr1_Uint64* %"$adtval_203" to %TName_Pair_ByStr1_Uint64*
  store %TName_Pair_ByStr1_Uint64* %"$adtptr_207", %TName_Pair_ByStr1_Uint64** %"$retval_20"
  %"$$retval_20_208" = load %TName_Pair_ByStr1_Uint64*, %TName_Pair_ByStr1_Uint64** %"$retval_20"
  ret %TName_Pair_ByStr1_Uint64* %"$$retval_20_208"
}

define internal { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_17"(%"$$fundef_17_env_105"* %0, [1 x i8] %1) {
entry:
  %"$retval_18" = alloca { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }
  %"$gasrem_184" = load i64, i64* @_gasrem
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %entry
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem
  %"$$fundef_19_envp_189_load" = load i8*, i8** @_execptr
  %"$$fundef_19_envp_189_salloc" = call i8* @_salloc(i8* %"$$fundef_19_envp_189_load", i64 1)
  %"$$fundef_19_envp_189" = bitcast i8* %"$$fundef_19_envp_189_salloc" to %"$$fundef_19_env_104"*
  %"$$fundef_19_env_voidp_191" = bitcast %"$$fundef_19_env_104"* %"$$fundef_19_envp_189" to i8*
  %"$$fundef_19_cloval_192" = insertvalue { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_ByStr1_Uint64* (%"$$fundef_19_env_104"*, %Uint64)* @"$fundef_19" to %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_19_env_voidp_191", 1
  %"$$fundef_19_env_a_193" = getelementptr inbounds %"$$fundef_19_env_104", %"$$fundef_19_env_104"* %"$$fundef_19_envp_189", i32 0, i32 0
  store [1 x i8] %1, [1 x i8]* %"$$fundef_19_env_a_193"
  store { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_19_cloval_192", { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_18"
  %"$$retval_18_194" = load { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_18"
  ret { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_18_194"
}

define internal { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } @"$fundef_15"(%"$$fundef_15_env_106"* %0) {
entry:
  %"$retval_16" = alloca { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }
  %"$gasrem_175" = load i64, i64* @_gasrem
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %entry
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem
  store { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])* bitcast ({ %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_17_env_105"*, [1 x i8])* @"$fundef_17" to { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*), i8* null }, { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_16"
  %"$$retval_16_183" = load { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_16"
  ret { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } %"$$retval_16_183"
}

define internal { i8*, i8* }* @"$fundef_13"(%"$$fundef_13_env_107"* %0) {
entry:
  %"$retval_14" = alloca { i8*, i8* }*
  %"$gasrem_158" = load i64, i64* @_gasrem
  %"$gascmp_159" = icmp ugt i64 1, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %entry
  %"$consume_162" = sub i64 %"$gasrem_158", 1
  store i64 %"$consume_162", i64* @_gasrem
  %"$dyndisp_table_169_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_169_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_169_salloc_load", i64 64)
  %"$dyndisp_table_169_salloc" = bitcast i8* %"$dyndisp_table_169_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_169" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_169_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_170" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_169", i32 1
  %"$dyndisp_pcast_171" = bitcast { i8*, i8* }* %"$dyndisp_gep_170" to { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)* bitcast ({ { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (%"$$fundef_15_env_106"*)* @"$fundef_15" to { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_171"
  %"$dyndisp_gep_172" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_169", i32 3
  %"$dyndisp_pcast_173" = bitcast { i8*, i8* }* %"$dyndisp_gep_172" to { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)* bitcast ({ { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (%"$$fundef_21_env_103"*)* @"$fundef_21" to { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_173"
  store { i8*, i8* }* %"$dyndisp_table_169", { i8*, i8* }** %"$retval_14"
  %"$$retval_14_174" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_14"
  ret { i8*, i8* }* %"$$retval_14_174"
}

define internal %TName_Pair_Uint32_Uint64* @"$fundef_11"(%"$$fundef_11_env_108"* %0, %Uint64 %1) {
entry:
  %"$$fundef_11_env_a_144" = getelementptr inbounds %"$$fundef_11_env_108", %"$$fundef_11_env_108"* %0, i32 0, i32 0
  %"$a_envload_145" = load %Uint32, %Uint32* %"$$fundef_11_env_a_144"
  %a = alloca %Uint32
  store %Uint32 %"$a_envload_145", %Uint32* %a
  %"$retval_12" = alloca %TName_Pair_Uint32_Uint64*
  %"$gasrem_146" = load i64, i64* @_gasrem
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %entry
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem
  %"$a_151" = load %Uint32, %Uint32* %a
  %"$adtval_152_load" = load i8*, i8** @_execptr
  %"$adtval_152_salloc" = call i8* @_salloc(i8* %"$adtval_152_load", i64 13)
  %"$adtval_152" = bitcast i8* %"$adtval_152_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_153" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_152", i32 0, i32 0
  store i8 0, i8* %"$adtgep_153"
  %"$adtgep_154" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_152", i32 0, i32 1
  store %Uint32 %"$a_151", %Uint32* %"$adtgep_154"
  %"$adtgep_155" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_152", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_155"
  %"$adtptr_156" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_152" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_156", %TName_Pair_Uint32_Uint64** %"$retval_12"
  %"$$retval_12_157" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$retval_12"
  ret %TName_Pair_Uint32_Uint64* %"$$retval_12_157"
}

define internal { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_9"(%"$$fundef_9_env_109"* %0, %Uint32 %1) {
entry:
  %"$retval_10" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }
  %"$gasrem_133" = load i64, i64* @_gasrem
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %entry
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem
  %"$$fundef_11_envp_138_load" = load i8*, i8** @_execptr
  %"$$fundef_11_envp_138_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_138_load", i64 4)
  %"$$fundef_11_envp_138" = bitcast i8* %"$$fundef_11_envp_138_salloc" to %"$$fundef_11_env_108"*
  %"$$fundef_11_env_voidp_140" = bitcast %"$$fundef_11_env_108"* %"$$fundef_11_envp_138" to i8*
  %"$$fundef_11_cloval_141" = insertvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_Uint32_Uint64* (%"$$fundef_11_env_108"*, %Uint64)* @"$fundef_11" to %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_11_env_voidp_140", 1
  %"$$fundef_11_env_a_142" = getelementptr inbounds %"$$fundef_11_env_108", %"$$fundef_11_env_108"* %"$$fundef_11_envp_138", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_11_env_a_142"
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_11_cloval_141", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10"
  %"$$retval_10_143" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10"
  ret { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_10_143"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_7"(%"$$fundef_7_env_110"* %0) {
entry:
  %"$retval_8" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$gasrem_124" = load i64, i64* @_gasrem
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %entry
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)* bitcast ({ %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_9_env_109"*, %Uint32)* @"$fundef_9" to { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*), i8* null }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8"
  %"$$retval_8_132" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8"
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_8_132"
}

define internal { i8*, i8* }* @"$fundef_5"(%"$$fundef_5_env_111"* %0) {
entry:
  %"$retval_6" = alloca { i8*, i8* }*
  %"$gasrem_112" = load i64, i64* @_gasrem
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %entry
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem
  %"$dyndisp_table_120_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_120_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_120_salloc_load", i64 64)
  %"$dyndisp_table_120_salloc" = bitcast i8* %"$dyndisp_table_120_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_120" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_120_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_121" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_120", i32 1
  %"$dyndisp_pcast_122" = bitcast { i8*, i8* }* %"$dyndisp_gep_121" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_7_env_110"*)* @"$fundef_7" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_122"
  store { i8*, i8* }* %"$dyndisp_table_120", { i8*, i8* }** %"$retval_6"
  %"$$retval_6_123" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_6"
  ret { i8*, i8* }* %"$$retval_6_123"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* @"$scilla_expr_281"(i8* %0) {
entry:
  %"$expr_4" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  %"$gasrem_282" = load i64, i64* @_gasrem
  %"$gascmp_283" = icmp ugt i64 1, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %entry
  %"$consume_286" = sub i64 %"$gasrem_282", 1
  store i64 %"$consume_286", i64* @_gasrem
  %tf = alloca { i8*, i8* }*
  %"$gasrem_287" = load i64, i64* @_gasrem
  %"$gascmp_288" = icmp ugt i64 1, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_285"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_285"
  %"$consume_291" = sub i64 %"$gasrem_287", 1
  store i64 %"$consume_291", i64* @_gasrem
  %"$dyndisp_table_298_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_298_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_298_salloc_load", i64 64)
  %"$dyndisp_table_298_salloc" = bitcast i8* %"$dyndisp_table_298_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_298" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_298_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_299" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_298", i32 0
  %"$dyndisp_pcast_300" = bitcast { i8*, i8* }* %"$dyndisp_gep_299" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_5_env_111"*)* @"$fundef_5" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_300"
  %"$dyndisp_gep_301" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_298", i32 2
  %"$dyndisp_pcast_302" = bitcast { i8*, i8* }* %"$dyndisp_gep_301" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_13_env_107"*)* @"$fundef_13" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_302"
  store { i8*, i8* }* %"$dyndisp_table_298", { i8*, i8* }** %tf
  %"$gasrem_303" = load i64, i64* @_gasrem
  %"$gascmp_304" = icmp ugt i64 1, %"$gasrem_303"
  br i1 %"$gascmp_304", label %"$out_of_gas_305", label %"$have_gas_306"

"$out_of_gas_305":                                ; preds = %"$have_gas_290"
  call void @_out_of_gas()
  br label %"$have_gas_306"

"$have_gas_306":                                  ; preds = %"$out_of_gas_305", %"$have_gas_290"
  %"$consume_307" = sub i64 %"$gasrem_303", 1
  store i64 %"$consume_307", i64* @_gasrem
  %tf1 = alloca { i8*, i8* }*
  %"$gasrem_308" = load i64, i64* @_gasrem
  %"$gascmp_309" = icmp ugt i64 1, %"$gasrem_308"
  br i1 %"$gascmp_309", label %"$out_of_gas_310", label %"$have_gas_311"

"$out_of_gas_310":                                ; preds = %"$have_gas_306"
  call void @_out_of_gas()
  br label %"$have_gas_311"

"$have_gas_311":                                  ; preds = %"$out_of_gas_310", %"$have_gas_306"
  %"$consume_312" = sub i64 %"$gasrem_308", 1
  store i64 %"$consume_312", i64* @_gasrem
  %"$$fundef_27_envp_313_load" = load i8*, i8** @_execptr
  %"$$fundef_27_envp_313_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_313_load", i64 8)
  %"$$fundef_27_envp_313" = bitcast i8* %"$$fundef_27_envp_313_salloc" to %"$$fundef_27_env_100"*
  %"$$fundef_27_env_voidp_315" = bitcast %"$$fundef_27_env_100"* %"$$fundef_27_envp_313" to i8*
  %"$$fundef_27_cloval_316" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_27_env_100"*)* @"$fundef_27" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_315", 1
  %"$$fundef_27_env_tf_317" = getelementptr inbounds %"$$fundef_27_env_100", %"$$fundef_27_env_100"* %"$$fundef_27_envp_313", i32 0, i32 0
  %"$tf_318" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_318", { i8*, i8* }** %"$$fundef_27_env_tf_317"
  %"$dyndisp_table_319_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_319_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_319_salloc_load", i64 64)
  %"$dyndisp_table_319_salloc" = bitcast i8* %"$dyndisp_table_319_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_319" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_319_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_320" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_319", i32 0
  %"$dyndisp_pcast_321" = bitcast { i8*, i8* }* %"$dyndisp_gep_320" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_27_cloval_316", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_321"
  store { i8*, i8* }* %"$dyndisp_table_319", { i8*, i8* }** %tf1
  %"$gasrem_322" = load i64, i64* @_gasrem
  %"$gascmp_323" = icmp ugt i64 1, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$have_gas_311"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$have_gas_311"
  %"$consume_326" = sub i64 %"$gasrem_322", 1
  store i64 %"$consume_326", i64* @_gasrem
  %t1 = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$gasrem_327" = load i64, i64* @_gasrem
  %"$gascmp_328" = icmp ugt i64 1, %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %"$have_gas_325"
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %"$have_gas_325"
  %"$consume_331" = sub i64 %"$gasrem_327", 1
  store i64 %"$consume_331", i64* @_gasrem
  %"$tf1_332" = load { i8*, i8* }*, { i8*, i8* }** %tf1
  %"$tf1_333" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_332", i32 0
  %"$tf1_334" = bitcast { i8*, i8* }* %"$tf1_333" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_335" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_334"
  %"$tf1_fptr_336" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_335", 0
  %"$tf1_envptr_337" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_335", 1
  %"$tf1_call_338" = call { i8*, i8* }* %"$tf1_fptr_336"(i8* %"$tf1_envptr_337")
  %"$tf1_339" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_338", i32 1
  %"$tf1_340" = bitcast { i8*, i8* }* %"$tf1_339" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf1_341" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf1_340"
  %"$tf1_fptr_342" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_341", 0
  %"$tf1_envptr_343" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_341", 1
  %"$tf1_call_344" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_fptr_342"(i8* %"$tf1_envptr_343")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_call_344", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1
  %"$gasrem_345" = load i64, i64* @_gasrem
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_330"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_330"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem
  %t3 = alloca { i8*, i8* }*
  %"$gasrem_350" = load i64, i64* @_gasrem
  %"$gascmp_351" = icmp ugt i64 1, %"$gasrem_350"
  br i1 %"$gascmp_351", label %"$out_of_gas_352", label %"$have_gas_353"

"$out_of_gas_352":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_353"

"$have_gas_353":                                  ; preds = %"$out_of_gas_352", %"$have_gas_348"
  %"$consume_354" = sub i64 %"$gasrem_350", 1
  store i64 %"$consume_354", i64* @_gasrem
  %"$tf_355" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_356" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_355", i32 2
  %"$tf_357" = bitcast { i8*, i8* }* %"$tf_356" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_358" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_357"
  %"$tf_fptr_359" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_358", 0
  %"$tf_envptr_360" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_358", 1
  %"$tf_call_361" = call { i8*, i8* }* %"$tf_fptr_359"(i8* %"$tf_envptr_360")
  store { i8*, i8* }* %"$tf_call_361", { i8*, i8* }** %t3
  %"$gasrem_362" = load i64, i64* @_gasrem
  %"$gascmp_363" = icmp ugt i64 1, %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_353"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_353"
  %"$consume_366" = sub i64 %"$gasrem_362", 1
  store i64 %"$consume_366", i64* @_gasrem
  %t4 = alloca { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }
  %"$gasrem_367" = load i64, i64* @_gasrem
  %"$gascmp_368" = icmp ugt i64 1, %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %"$have_gas_365"
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %"$have_gas_365"
  %"$consume_371" = sub i64 %"$gasrem_367", 1
  store i64 %"$consume_371", i64* @_gasrem
  %"$t3_372" = load { i8*, i8* }*, { i8*, i8* }** %t3
  %"$t3_373" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t3_372", i32 3
  %"$t3_374" = bitcast { i8*, i8* }* %"$t3_373" to { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  %"$t3_375" = load { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }, { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$t3_374"
  %"$t3_fptr_376" = extractvalue { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } %"$t3_375", 0
  %"$t3_envptr_377" = extractvalue { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } %"$t3_375", 1
  %"$t3_call_378" = call { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t3_fptr_376"(i8* %"$t3_envptr_377")
  store { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t3_call_378", { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %t4
  %"$gasrem_379" = load i64, i64* @_gasrem
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_370"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_370"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem
  %uint32_one = alloca %Uint32
  %"$gasrem_384" = load i64, i64* @_gasrem
  %"$gascmp_385" = icmp ugt i64 1, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_382"
  %"$consume_388" = sub i64 %"$gasrem_384", 1
  store i64 %"$consume_388", i64* @_gasrem
  store %Uint32 { i32 1 }, %Uint32* %uint32_one
  %"$gasrem_389" = load i64, i64* @_gasrem
  %"$gascmp_390" = icmp ugt i64 1, %"$gasrem_389"
  br i1 %"$gascmp_390", label %"$out_of_gas_391", label %"$have_gas_392"

"$out_of_gas_391":                                ; preds = %"$have_gas_387"
  call void @_out_of_gas()
  br label %"$have_gas_392"

"$have_gas_392":                                  ; preds = %"$out_of_gas_391", %"$have_gas_387"
  %"$consume_393" = sub i64 %"$gasrem_389", 1
  store i64 %"$consume_393", i64* @_gasrem
  %uint64_two = alloca %Uint64
  %"$gasrem_394" = load i64, i64* @_gasrem
  %"$gascmp_395" = icmp ugt i64 1, %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %"$have_gas_392"
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %"$have_gas_392"
  %"$consume_398" = sub i64 %"$gasrem_394", 1
  store i64 %"$consume_398", i64* @_gasrem
  store %Uint64 { i64 2 }, %Uint64* %uint64_two
  %"$gasrem_399" = load i64, i64* @_gasrem
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_397"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_397"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem
  %addr_bystr1 = alloca [1 x i8]
  %"$gasrem_404" = load i64, i64* @_gasrem
  %"$gascmp_405" = icmp ugt i64 1, %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_402"
  %"$consume_408" = sub i64 %"$gasrem_404", 1
  store i64 %"$consume_408", i64* @_gasrem
  store [1 x i8] c"\AA", [1 x i8]* %addr_bystr1
  %"$gasrem_409" = load i64, i64* @_gasrem
  %"$gascmp_410" = icmp ugt i64 1, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %"$have_gas_407"
  %"$consume_413" = sub i64 %"$gasrem_409", 1
  store i64 %"$consume_413", i64* @_gasrem
  %addr_bystr2 = alloca [2 x i8]
  %"$gasrem_414" = load i64, i64* @_gasrem
  %"$gascmp_415" = icmp ugt i64 1, %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$have_gas_412"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$have_gas_412"
  %"$consume_418" = sub i64 %"$gasrem_414", 1
  store i64 %"$consume_418", i64* @_gasrem
  store [2 x i8] c"\AA\BB", [2 x i8]* %addr_bystr2
  %"$gasrem_419" = load i64, i64* @_gasrem
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_417"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_417"
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem
  %p1 = alloca %TName_Pair_Uint32_Uint64*
  %"$gasrem_424" = load i64, i64* @_gasrem
  %"$gascmp_425" = icmp ugt i64 1, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_422"
  %"$consume_428" = sub i64 %"$gasrem_424", 1
  store i64 %"$consume_428", i64* @_gasrem
  %"$t1_0" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }
  %"$t1_429" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1
  %"$t1_fptr_430" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_429", 0
  %"$t1_envptr_431" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_429", 1
  %"$uint32_one_432" = load %Uint32, %Uint32* %uint32_one
  %"$t1_call_433" = call { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_fptr_430"(i8* %"$t1_envptr_431", %Uint32 %"$uint32_one_432")
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_call_433", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0"
  %"$t1_1" = alloca %TName_Pair_Uint32_Uint64*
  %"$$t1_0_434" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0"
  %"$$t1_0_fptr_435" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_434", 0
  %"$$t1_0_envptr_436" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_434", 1
  %"$uint64_two_437" = load %Uint64, %Uint64* %uint64_two
  %"$$t1_0_call_438" = call %TName_Pair_Uint32_Uint64* %"$$t1_0_fptr_435"(i8* %"$$t1_0_envptr_436", %Uint64 %"$uint64_two_437")
  store %TName_Pair_Uint32_Uint64* %"$$t1_0_call_438", %TName_Pair_Uint32_Uint64** %"$t1_1"
  %"$$t1_1_439" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$t1_1"
  store %TName_Pair_Uint32_Uint64* %"$$t1_1_439", %TName_Pair_Uint32_Uint64** %p1
  %"$gasrem_440" = load i64, i64* @_gasrem
  %"$gascmp_441" = icmp ugt i64 1, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %"$have_gas_427"
  %"$consume_444" = sub i64 %"$gasrem_440", 1
  store i64 %"$consume_444", i64* @_gasrem
  %p2 = alloca %TName_Pair_ByStr1_ByStr2*
  %"$gasrem_445" = load i64, i64* @_gasrem
  %"$gascmp_446" = icmp ugt i64 1, %"$gasrem_445"
  br i1 %"$gascmp_446", label %"$out_of_gas_447", label %"$have_gas_448"

"$out_of_gas_447":                                ; preds = %"$have_gas_443"
  call void @_out_of_gas()
  br label %"$have_gas_448"

"$have_gas_448":                                  ; preds = %"$out_of_gas_447", %"$have_gas_443"
  %"$consume_449" = sub i64 %"$gasrem_445", 1
  store i64 %"$consume_449", i64* @_gasrem
  %"$t4_2" = alloca { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }
  %"$t4_450" = load { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %t4
  %"$t4_fptr_451" = extractvalue { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t4_450", 0
  %"$t4_envptr_452" = extractvalue { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t4_450", 1
  %"$addr_bystr1_453" = load [1 x i8], [1 x i8]* %addr_bystr1
  %"$t4_call_454" = call { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$t4_fptr_451"(i8* %"$t4_envptr_452", [1 x i8] %"$addr_bystr1_453")
  store { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$t4_call_454", { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$t4_2"
  %"$t4_3" = alloca %TName_Pair_ByStr1_ByStr2*
  %"$$t4_2_455" = load { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$t4_2"
  %"$$t4_2_fptr_456" = extractvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$t4_2_455", 0
  %"$$t4_2_envptr_457" = extractvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$t4_2_455", 1
  %"$addr_bystr2_458" = load [2 x i8], [2 x i8]* %addr_bystr2
  %"$$t4_2_call_459" = call %TName_Pair_ByStr1_ByStr2* %"$$t4_2_fptr_456"(i8* %"$$t4_2_envptr_457", [2 x i8] %"$addr_bystr2_458")
  store %TName_Pair_ByStr1_ByStr2* %"$$t4_2_call_459", %TName_Pair_ByStr1_ByStr2** %"$t4_3"
  %"$$t4_3_460" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %"$t4_3"
  store %TName_Pair_ByStr1_ByStr2* %"$$t4_3_460", %TName_Pair_ByStr1_ByStr2** %p2
  %"$gasrem_461" = load i64, i64* @_gasrem
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %"$have_gas_448"
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %"$have_gas_448"
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem
  %"$p1_466" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %p1
  %"$p2_467" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %p2
  %"$adtval_468_load" = load i8*, i8** @_execptr
  %"$adtval_468_salloc" = call i8* @_salloc(i8* %"$adtval_468_load", i64 17)
  %"$adtval_468" = bitcast i8* %"$adtval_468_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  %"$adtgep_469" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_468", i32 0, i32 0
  store i8 0, i8* %"$adtgep_469"
  %"$adtgep_470" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_468", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$p1_466", %TName_Pair_Uint32_Uint64** %"$adtgep_470"
  %"$adtgep_471" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_468", i32 0, i32 2
  store %TName_Pair_ByStr1_ByStr2* %"$p2_467", %TName_Pair_ByStr1_ByStr2** %"$adtgep_471"
  %"$adtptr_472" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_468" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtptr_472", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_4"
  %"$$expr_4_473" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_4"
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$$expr_4_473"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_474" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* @"$scilla_expr_281"(i8* null)
  %"$memvoidcast_475" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$exprval_474" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_67", i8* %"$memvoidcast_475")
  ret void
}
