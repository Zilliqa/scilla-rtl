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
  %"$$fundef_29_env_tf_200" = getelementptr inbounds %"$$fundef_29_env_99", %"$$fundef_29_env_99"* %0, i32 0, i32 0
  %"$tf_envload_201" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_29_env_tf_200"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_201", { i8*, i8* }** %tf
  %"$retval_30" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$tf_202" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_203" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_202", i32 0
  %"$tf_204" = bitcast { i8*, i8* }* %"$tf_203" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_205" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_204"
  %"$tf_fptr_206" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_205", 0
  %"$tf_envptr_207" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_205", 1
  %"$tf_call_208" = call { i8*, i8* }* %"$tf_fptr_206"(i8* %"$tf_envptr_207")
  %"$tf_209" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_208", i32 1
  %"$tf_210" = bitcast { i8*, i8* }* %"$tf_209" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_211" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_210"
  %"$tf_fptr_212" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_211", 0
  %"$tf_envptr_213" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_211", 1
  %"$tf_call_214" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_212"(i8* %"$tf_envptr_213")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_214", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_30"
  %"$$retval_30_215" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_30"
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_30_215"
}

define internal { i8*, i8* }* @"$fundef_27"(%"$$fundef_27_env_100"* %0) {
entry:
  %"$$fundef_27_env_tf_188" = getelementptr inbounds %"$$fundef_27_env_100", %"$$fundef_27_env_100"* %0, i32 0, i32 0
  %"$tf_envload_189" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_27_env_tf_188"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_189", { i8*, i8* }** %tf
  %"$retval_28" = alloca { i8*, i8* }*
  %"$$fundef_29_envp_190_load" = load i8*, i8** @_execptr
  %"$$fundef_29_envp_190_salloc" = call i8* @_salloc(i8* %"$$fundef_29_envp_190_load", i64 8)
  %"$$fundef_29_envp_190" = bitcast i8* %"$$fundef_29_envp_190_salloc" to %"$$fundef_29_env_99"*
  %"$$fundef_29_env_voidp_192" = bitcast %"$$fundef_29_env_99"* %"$$fundef_29_envp_190" to i8*
  %"$$fundef_29_cloval_193" = insertvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_29_env_99"*)* @"$fundef_29" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_29_env_voidp_192", 1
  %"$$fundef_29_env_tf_194" = getelementptr inbounds %"$$fundef_29_env_99", %"$$fundef_29_env_99"* %"$$fundef_29_envp_190", i32 0, i32 0
  %"$tf_195" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_195", { i8*, i8* }** %"$$fundef_29_env_tf_194"
  %"$dyndisp_table_196_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_196_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_196_salloc_load", i64 64)
  %"$dyndisp_table_196_salloc" = bitcast i8* %"$dyndisp_table_196_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_196" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_196_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_197" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_196", i32 1
  %"$dyndisp_pcast_198" = bitcast { i8*, i8* }* %"$dyndisp_gep_197" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_29_cloval_193", { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_198"
  store { i8*, i8* }* %"$dyndisp_table_196", { i8*, i8* }** %"$retval_28"
  %"$$retval_28_199" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_28"
  ret { i8*, i8* }* %"$$retval_28_199"
}

define internal %TName_Pair_ByStr1_ByStr2* @"$fundef_25"(%"$$fundef_25_env_101"* %0, [2 x i8] %1) {
entry:
  %"$$fundef_25_env_a_179" = getelementptr inbounds %"$$fundef_25_env_101", %"$$fundef_25_env_101"* %0, i32 0, i32 0
  %"$a_envload_180" = load [1 x i8], [1 x i8]* %"$$fundef_25_env_a_179"
  %a = alloca [1 x i8]
  store [1 x i8] %"$a_envload_180", [1 x i8]* %a
  %"$retval_26" = alloca %TName_Pair_ByStr1_ByStr2*
  %"$a_181" = load [1 x i8], [1 x i8]* %a
  %"$adtval_182_load" = load i8*, i8** @_execptr
  %"$adtval_182_salloc" = call i8* @_salloc(i8* %"$adtval_182_load", i64 4)
  %"$adtval_182" = bitcast i8* %"$adtval_182_salloc" to %CName_Pair_ByStr1_ByStr2*
  %"$adtgep_183" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_182", i32 0, i32 0
  store i8 0, i8* %"$adtgep_183"
  %"$adtgep_184" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_182", i32 0, i32 1
  store [1 x i8] %"$a_181", [1 x i8]* %"$adtgep_184"
  %"$adtgep_185" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_182", i32 0, i32 2
  store [2 x i8] %1, [2 x i8]* %"$adtgep_185"
  %"$adtptr_186" = bitcast %CName_Pair_ByStr1_ByStr2* %"$adtval_182" to %TName_Pair_ByStr1_ByStr2*
  store %TName_Pair_ByStr1_ByStr2* %"$adtptr_186", %TName_Pair_ByStr1_ByStr2** %"$retval_26"
  %"$$retval_26_187" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %"$retval_26"
  ret %TName_Pair_ByStr1_ByStr2* %"$$retval_26_187"
}

define internal { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } @"$fundef_23"(%"$$fundef_23_env_102"* %0, [1 x i8] %1) {
entry:
  %"$retval_24" = alloca { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }
  %"$$fundef_25_envp_173_load" = load i8*, i8** @_execptr
  %"$$fundef_25_envp_173_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_173_load", i64 1)
  %"$$fundef_25_envp_173" = bitcast i8* %"$$fundef_25_envp_173_salloc" to %"$$fundef_25_env_101"*
  %"$$fundef_25_env_voidp_175" = bitcast %"$$fundef_25_env_101"* %"$$fundef_25_envp_173" to i8*
  %"$$fundef_25_cloval_176" = insertvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])* bitcast (%TName_Pair_ByStr1_ByStr2* (%"$$fundef_25_env_101"*, [2 x i8])* @"$fundef_25" to %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*), i8* undef }, i8* %"$$fundef_25_env_voidp_175", 1
  %"$$fundef_25_env_a_177" = getelementptr inbounds %"$$fundef_25_env_101", %"$$fundef_25_env_101"* %"$$fundef_25_envp_173", i32 0, i32 0
  store [1 x i8] %1, [1 x i8]* %"$$fundef_25_env_a_177"
  store { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$fundef_25_cloval_176", { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$retval_24"
  %"$$retval_24_178" = load { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$retval_24"
  ret { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$retval_24_178"
}

define internal { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } @"$fundef_21"(%"$$fundef_21_env_103"* %0) {
entry:
  %"$retval_22" = alloca { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }
  store { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])* bitcast ({ %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (%"$$fundef_23_env_102"*, [1 x i8])* @"$fundef_23" to { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*), i8* null }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_22"
  %"$$retval_22_172" = load { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_22"
  ret { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$$retval_22_172"
}

define internal %TName_Pair_ByStr1_Uint64* @"$fundef_19"(%"$$fundef_19_env_104"* %0, %Uint64 %1) {
entry:
  %"$$fundef_19_env_a_160" = getelementptr inbounds %"$$fundef_19_env_104", %"$$fundef_19_env_104"* %0, i32 0, i32 0
  %"$a_envload_161" = load [1 x i8], [1 x i8]* %"$$fundef_19_env_a_160"
  %a = alloca [1 x i8]
  store [1 x i8] %"$a_envload_161", [1 x i8]* %a
  %"$retval_20" = alloca %TName_Pair_ByStr1_Uint64*
  %"$a_162" = load [1 x i8], [1 x i8]* %a
  %"$adtval_163_load" = load i8*, i8** @_execptr
  %"$adtval_163_salloc" = call i8* @_salloc(i8* %"$adtval_163_load", i64 10)
  %"$adtval_163" = bitcast i8* %"$adtval_163_salloc" to %CName_Pair_ByStr1_Uint64*
  %"$adtgep_164" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_163", i32 0, i32 0
  store i8 0, i8* %"$adtgep_164"
  %"$adtgep_165" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_163", i32 0, i32 1
  store [1 x i8] %"$a_162", [1 x i8]* %"$adtgep_165"
  %"$adtgep_166" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_163", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_166"
  %"$adtptr_167" = bitcast %CName_Pair_ByStr1_Uint64* %"$adtval_163" to %TName_Pair_ByStr1_Uint64*
  store %TName_Pair_ByStr1_Uint64* %"$adtptr_167", %TName_Pair_ByStr1_Uint64** %"$retval_20"
  %"$$retval_20_168" = load %TName_Pair_ByStr1_Uint64*, %TName_Pair_ByStr1_Uint64** %"$retval_20"
  ret %TName_Pair_ByStr1_Uint64* %"$$retval_20_168"
}

define internal { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_17"(%"$$fundef_17_env_105"* %0, [1 x i8] %1) {
entry:
  %"$retval_18" = alloca { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }
  %"$$fundef_19_envp_154_load" = load i8*, i8** @_execptr
  %"$$fundef_19_envp_154_salloc" = call i8* @_salloc(i8* %"$$fundef_19_envp_154_load", i64 1)
  %"$$fundef_19_envp_154" = bitcast i8* %"$$fundef_19_envp_154_salloc" to %"$$fundef_19_env_104"*
  %"$$fundef_19_env_voidp_156" = bitcast %"$$fundef_19_env_104"* %"$$fundef_19_envp_154" to i8*
  %"$$fundef_19_cloval_157" = insertvalue { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_ByStr1_Uint64* (%"$$fundef_19_env_104"*, %Uint64)* @"$fundef_19" to %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_19_env_voidp_156", 1
  %"$$fundef_19_env_a_158" = getelementptr inbounds %"$$fundef_19_env_104", %"$$fundef_19_env_104"* %"$$fundef_19_envp_154", i32 0, i32 0
  store [1 x i8] %1, [1 x i8]* %"$$fundef_19_env_a_158"
  store { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_19_cloval_157", { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_18"
  %"$$retval_18_159" = load { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_18"
  ret { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_18_159"
}

define internal { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } @"$fundef_15"(%"$$fundef_15_env_106"* %0) {
entry:
  %"$retval_16" = alloca { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }
  store { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])* bitcast ({ %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_17_env_105"*, [1 x i8])* @"$fundef_17" to { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*), i8* null }, { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_16"
  %"$$retval_16_153" = load { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_16"
  ret { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } %"$$retval_16_153"
}

define internal { i8*, i8* }* @"$fundef_13"(%"$$fundef_13_env_107"* %0) {
entry:
  %"$retval_14" = alloca { i8*, i8* }*
  %"$dyndisp_table_144_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_144_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_144_salloc_load", i64 64)
  %"$dyndisp_table_144_salloc" = bitcast i8* %"$dyndisp_table_144_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_144" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_144_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_145" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_144", i32 1
  %"$dyndisp_pcast_146" = bitcast { i8*, i8* }* %"$dyndisp_gep_145" to { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)* bitcast ({ { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (%"$$fundef_15_env_106"*)* @"$fundef_15" to { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_146"
  %"$dyndisp_gep_147" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_144", i32 3
  %"$dyndisp_pcast_148" = bitcast { i8*, i8* }* %"$dyndisp_gep_147" to { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)* bitcast ({ { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (%"$$fundef_21_env_103"*)* @"$fundef_21" to { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_148"
  store { i8*, i8* }* %"$dyndisp_table_144", { i8*, i8* }** %"$retval_14"
  %"$$retval_14_149" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_14"
  ret { i8*, i8* }* %"$$retval_14_149"
}

define internal %TName_Pair_Uint32_Uint64* @"$fundef_11"(%"$$fundef_11_env_108"* %0, %Uint64 %1) {
entry:
  %"$$fundef_11_env_a_129" = getelementptr inbounds %"$$fundef_11_env_108", %"$$fundef_11_env_108"* %0, i32 0, i32 0
  %"$a_envload_130" = load %Uint32, %Uint32* %"$$fundef_11_env_a_129"
  %a = alloca %Uint32
  store %Uint32 %"$a_envload_130", %Uint32* %a
  %"$retval_12" = alloca %TName_Pair_Uint32_Uint64*
  %"$a_131" = load %Uint32, %Uint32* %a
  %"$adtval_132_load" = load i8*, i8** @_execptr
  %"$adtval_132_salloc" = call i8* @_salloc(i8* %"$adtval_132_load", i64 13)
  %"$adtval_132" = bitcast i8* %"$adtval_132_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_133" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_132", i32 0, i32 0
  store i8 0, i8* %"$adtgep_133"
  %"$adtgep_134" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_132", i32 0, i32 1
  store %Uint32 %"$a_131", %Uint32* %"$adtgep_134"
  %"$adtgep_135" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_132", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_135"
  %"$adtptr_136" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_132" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_136", %TName_Pair_Uint32_Uint64** %"$retval_12"
  %"$$retval_12_137" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$retval_12"
  ret %TName_Pair_Uint32_Uint64* %"$$retval_12_137"
}

define internal { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_9"(%"$$fundef_9_env_109"* %0, %Uint32 %1) {
entry:
  %"$retval_10" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }
  %"$$fundef_11_envp_123_load" = load i8*, i8** @_execptr
  %"$$fundef_11_envp_123_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_123_load", i64 4)
  %"$$fundef_11_envp_123" = bitcast i8* %"$$fundef_11_envp_123_salloc" to %"$$fundef_11_env_108"*
  %"$$fundef_11_env_voidp_125" = bitcast %"$$fundef_11_env_108"* %"$$fundef_11_envp_123" to i8*
  %"$$fundef_11_cloval_126" = insertvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_Uint32_Uint64* (%"$$fundef_11_env_108"*, %Uint64)* @"$fundef_11" to %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_11_env_voidp_125", 1
  %"$$fundef_11_env_a_127" = getelementptr inbounds %"$$fundef_11_env_108", %"$$fundef_11_env_108"* %"$$fundef_11_envp_123", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_11_env_a_127"
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_11_cloval_126", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10"
  %"$$retval_10_128" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10"
  ret { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_10_128"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_7"(%"$$fundef_7_env_110"* %0) {
entry:
  %"$retval_8" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)* bitcast ({ %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_9_env_109"*, %Uint32)* @"$fundef_9" to { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*), i8* null }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8"
  %"$$retval_8_122" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8"
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_8_122"
}

define internal { i8*, i8* }* @"$fundef_5"(%"$$fundef_5_env_111"* %0) {
entry:
  %"$retval_6" = alloca { i8*, i8* }*
  %"$dyndisp_table_115_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_115_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_115_salloc_load", i64 64)
  %"$dyndisp_table_115_salloc" = bitcast i8* %"$dyndisp_table_115_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_115" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_115_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_116" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_115", i32 1
  %"$dyndisp_pcast_117" = bitcast { i8*, i8* }* %"$dyndisp_gep_116" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_7_env_110"*)* @"$fundef_7" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_117"
  store { i8*, i8* }* %"$dyndisp_table_115", { i8*, i8* }** %"$retval_6"
  %"$$retval_6_118" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_6"
  ret { i8*, i8* }* %"$$retval_6_118"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* @"$scilla_expr_216"(i8* %0) {
entry:
  %"$expr_4" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  %tf = alloca { i8*, i8* }*
  %"$dyndisp_table_223_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_223_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_223_salloc_load", i64 64)
  %"$dyndisp_table_223_salloc" = bitcast i8* %"$dyndisp_table_223_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_223" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_223_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_224" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_223", i32 0
  %"$dyndisp_pcast_225" = bitcast { i8*, i8* }* %"$dyndisp_gep_224" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_5_env_111"*)* @"$fundef_5" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_225"
  %"$dyndisp_gep_226" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_223", i32 2
  %"$dyndisp_pcast_227" = bitcast { i8*, i8* }* %"$dyndisp_gep_226" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_13_env_107"*)* @"$fundef_13" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_227"
  store { i8*, i8* }* %"$dyndisp_table_223", { i8*, i8* }** %tf
  %tf1 = alloca { i8*, i8* }*
  %"$$fundef_27_envp_228_load" = load i8*, i8** @_execptr
  %"$$fundef_27_envp_228_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_228_load", i64 8)
  %"$$fundef_27_envp_228" = bitcast i8* %"$$fundef_27_envp_228_salloc" to %"$$fundef_27_env_100"*
  %"$$fundef_27_env_voidp_230" = bitcast %"$$fundef_27_env_100"* %"$$fundef_27_envp_228" to i8*
  %"$$fundef_27_cloval_231" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_27_env_100"*)* @"$fundef_27" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_230", 1
  %"$$fundef_27_env_tf_232" = getelementptr inbounds %"$$fundef_27_env_100", %"$$fundef_27_env_100"* %"$$fundef_27_envp_228", i32 0, i32 0
  %"$tf_233" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_233", { i8*, i8* }** %"$$fundef_27_env_tf_232"
  %"$dyndisp_table_234_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_234_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_234_salloc_load", i64 64)
  %"$dyndisp_table_234_salloc" = bitcast i8* %"$dyndisp_table_234_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_234" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_234_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_235" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_234", i32 0
  %"$dyndisp_pcast_236" = bitcast { i8*, i8* }* %"$dyndisp_gep_235" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_27_cloval_231", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_236"
  store { i8*, i8* }* %"$dyndisp_table_234", { i8*, i8* }** %tf1
  %t1 = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$tf1_237" = load { i8*, i8* }*, { i8*, i8* }** %tf1
  %"$tf1_238" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_237", i32 0
  %"$tf1_239" = bitcast { i8*, i8* }* %"$tf1_238" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_240" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_239"
  %"$tf1_fptr_241" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_240", 0
  %"$tf1_envptr_242" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_240", 1
  %"$tf1_call_243" = call { i8*, i8* }* %"$tf1_fptr_241"(i8* %"$tf1_envptr_242")
  %"$tf1_244" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_243", i32 1
  %"$tf1_245" = bitcast { i8*, i8* }* %"$tf1_244" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf1_246" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf1_245"
  %"$tf1_fptr_247" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_246", 0
  %"$tf1_envptr_248" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_246", 1
  %"$tf1_call_249" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_fptr_247"(i8* %"$tf1_envptr_248")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_call_249", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1
  %t3 = alloca { i8*, i8* }*
  %"$tf_250" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_251" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_250", i32 2
  %"$tf_252" = bitcast { i8*, i8* }* %"$tf_251" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_253" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_252"
  %"$tf_fptr_254" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_253", 0
  %"$tf_envptr_255" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_253", 1
  %"$tf_call_256" = call { i8*, i8* }* %"$tf_fptr_254"(i8* %"$tf_envptr_255")
  store { i8*, i8* }* %"$tf_call_256", { i8*, i8* }** %t3
  %t4 = alloca { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }
  %"$t3_257" = load { i8*, i8* }*, { i8*, i8* }** %t3
  %"$t3_258" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t3_257", i32 3
  %"$t3_259" = bitcast { i8*, i8* }* %"$t3_258" to { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  %"$t3_260" = load { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }, { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$t3_259"
  %"$t3_fptr_261" = extractvalue { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } %"$t3_260", 0
  %"$t3_envptr_262" = extractvalue { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } %"$t3_260", 1
  %"$t3_call_263" = call { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t3_fptr_261"(i8* %"$t3_envptr_262")
  store { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t3_call_263", { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %t4
  %uint32_one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %uint32_one
  %uint64_two = alloca %Uint64
  store %Uint64 { i64 2 }, %Uint64* %uint64_two
  %addr_bystr1 = alloca [1 x i8]
  store [1 x i8] c"\AA", [1 x i8]* %addr_bystr1
  %addr_bystr2 = alloca [2 x i8]
  store [2 x i8] c"\AA\BB", [2 x i8]* %addr_bystr2
  %p1 = alloca %TName_Pair_Uint32_Uint64*
  %"$t1_0" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }
  %"$t1_264" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1
  %"$t1_fptr_265" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_264", 0
  %"$t1_envptr_266" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_264", 1
  %"$uint32_one_267" = load %Uint32, %Uint32* %uint32_one
  %"$t1_call_268" = call { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_fptr_265"(i8* %"$t1_envptr_266", %Uint32 %"$uint32_one_267")
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_call_268", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0"
  %"$t1_1" = alloca %TName_Pair_Uint32_Uint64*
  %"$$t1_0_269" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0"
  %"$$t1_0_fptr_270" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_269", 0
  %"$$t1_0_envptr_271" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_269", 1
  %"$uint64_two_272" = load %Uint64, %Uint64* %uint64_two
  %"$$t1_0_call_273" = call %TName_Pair_Uint32_Uint64* %"$$t1_0_fptr_270"(i8* %"$$t1_0_envptr_271", %Uint64 %"$uint64_two_272")
  store %TName_Pair_Uint32_Uint64* %"$$t1_0_call_273", %TName_Pair_Uint32_Uint64** %"$t1_1"
  %"$$t1_1_274" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$t1_1"
  store %TName_Pair_Uint32_Uint64* %"$$t1_1_274", %TName_Pair_Uint32_Uint64** %p1
  %p2 = alloca %TName_Pair_ByStr1_ByStr2*
  %"$t4_2" = alloca { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }
  %"$t4_275" = load { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %t4
  %"$t4_fptr_276" = extractvalue { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t4_275", 0
  %"$t4_envptr_277" = extractvalue { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t4_275", 1
  %"$addr_bystr1_278" = load [1 x i8], [1 x i8]* %addr_bystr1
  %"$t4_call_279" = call { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$t4_fptr_276"(i8* %"$t4_envptr_277", [1 x i8] %"$addr_bystr1_278")
  store { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$t4_call_279", { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$t4_2"
  %"$t4_3" = alloca %TName_Pair_ByStr1_ByStr2*
  %"$$t4_2_280" = load { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$t4_2"
  %"$$t4_2_fptr_281" = extractvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$t4_2_280", 0
  %"$$t4_2_envptr_282" = extractvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$t4_2_280", 1
  %"$addr_bystr2_283" = load [2 x i8], [2 x i8]* %addr_bystr2
  %"$$t4_2_call_284" = call %TName_Pair_ByStr1_ByStr2* %"$$t4_2_fptr_281"(i8* %"$$t4_2_envptr_282", [2 x i8] %"$addr_bystr2_283")
  store %TName_Pair_ByStr1_ByStr2* %"$$t4_2_call_284", %TName_Pair_ByStr1_ByStr2** %"$t4_3"
  %"$$t4_3_285" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %"$t4_3"
  store %TName_Pair_ByStr1_ByStr2* %"$$t4_3_285", %TName_Pair_ByStr1_ByStr2** %p2
  %"$p1_286" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %p1
  %"$p2_287" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %p2
  %"$adtval_288_load" = load i8*, i8** @_execptr
  %"$adtval_288_salloc" = call i8* @_salloc(i8* %"$adtval_288_load", i64 17)
  %"$adtval_288" = bitcast i8* %"$adtval_288_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  %"$adtgep_289" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_288", i32 0, i32 0
  store i8 0, i8* %"$adtgep_289"
  %"$adtgep_290" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_288", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$p1_286", %TName_Pair_Uint32_Uint64** %"$adtgep_290"
  %"$adtgep_291" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_288", i32 0, i32 2
  store %TName_Pair_ByStr1_ByStr2* %"$p2_287", %TName_Pair_ByStr1_ByStr2** %"$adtgep_291"
  %"$adtptr_292" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_288" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtptr_292", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_4"
  %"$$expr_4_293" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_4"
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$$expr_4_293"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_294" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* @"$scilla_expr_216"(i8* null)
  %"$memvoidcast_295" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$exprval_294" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_67", i8* %"$memvoidcast_295")
  ret void
}
