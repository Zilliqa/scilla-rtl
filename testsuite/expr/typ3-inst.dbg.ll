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
target triple = "x86_64-unknown-linux-gnu"

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

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_29"(%"$$fundef_29_env_99"* %0) !dbg !4 {
entry:
  %"$$fundef_29_env_tf_260" = getelementptr inbounds %"$$fundef_29_env_99", %"$$fundef_29_env_99"* %0, i32 0, i32 0
  %"$tf_envload_261" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_29_env_tf_260", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_261", { i8*, i8* }** %tf, align 8
  %"$retval_30" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %entry
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %"$tf_267" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_268" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_267", i32 0
  %"$tf_269" = bitcast { i8*, i8* }* %"$tf_268" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_270" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_269", align 8
  %"$tf_fptr_271" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_270", 0
  %"$tf_envptr_272" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_270", 1
  %"$tf_call_273" = call { i8*, i8* }* %"$tf_fptr_271"(i8* %"$tf_envptr_272"), !dbg !8
  %"$tf_274" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_273", i32 1
  %"$tf_275" = bitcast { i8*, i8* }* %"$tf_274" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_276" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_275", align 8
  %"$tf_fptr_277" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_276", 0
  %"$tf_envptr_278" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_276", 1
  %"$tf_call_279" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_277"(i8* %"$tf_envptr_278"), !dbg !8
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_279", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_30", align 8, !dbg !9
  %"$$retval_30_280" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_30", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_30_280"
}

define internal { i8*, i8* }* @"$fundef_27"(%"$$fundef_27_env_100"* %0) !dbg !10 {
entry:
  %"$$fundef_27_env_tf_243" = getelementptr inbounds %"$$fundef_27_env_100", %"$$fundef_27_env_100"* %0, i32 0, i32 0
  %"$tf_envload_244" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_27_env_tf_243", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_244", { i8*, i8* }** %tf, align 8
  %"$retval_28" = alloca { i8*, i8* }*, align 8
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 1, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %entry
  %"$consume_249" = sub i64 %"$gasrem_245", 1
  store i64 %"$consume_249", i64* @_gasrem, align 8
  %"$$fundef_29_envp_250_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_29_envp_250_salloc" = call i8* @_salloc(i8* %"$$fundef_29_envp_250_load", i64 8)
  %"$$fundef_29_envp_250" = bitcast i8* %"$$fundef_29_envp_250_salloc" to %"$$fundef_29_env_99"*
  %"$$fundef_29_env_voidp_252" = bitcast %"$$fundef_29_env_99"* %"$$fundef_29_envp_250" to i8*
  %"$$fundef_29_cloval_253" = insertvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_29_env_99"*)* @"$fundef_29" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_29_env_voidp_252", 1
  %"$$fundef_29_env_tf_254" = getelementptr inbounds %"$$fundef_29_env_99", %"$$fundef_29_env_99"* %"$$fundef_29_envp_250", i32 0, i32 0
  %"$tf_255" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_255", { i8*, i8* }** %"$$fundef_29_env_tf_254", align 8
  %"$dyndisp_table_256_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_256_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_256_salloc_load", i64 64)
  %"$dyndisp_table_256_salloc" = bitcast i8* %"$dyndisp_table_256_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_256" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_256_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_257" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_256", i32 1
  %"$dyndisp_pcast_258" = bitcast { i8*, i8* }* %"$dyndisp_gep_257" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_29_cloval_253", { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_258", align 8
  store { i8*, i8* }* %"$dyndisp_table_256", { i8*, i8* }** %"$retval_28", align 8, !dbg !11
  %"$$retval_28_259" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_28", align 8
  ret { i8*, i8* }* %"$$retval_28_259"
}

define internal %TName_Pair_ByStr1_ByStr2* @"$fundef_25"(%"$$fundef_25_env_101"* %0, [2 x i8] %1) !dbg !12 {
entry:
  %"$$fundef_25_env_a_229" = getelementptr inbounds %"$$fundef_25_env_101", %"$$fundef_25_env_101"* %0, i32 0, i32 0
  %"$a_envload_230" = load [1 x i8], [1 x i8]* %"$$fundef_25_env_a_229", align 1
  %a = alloca [1 x i8], align 1
  store [1 x i8] %"$a_envload_230", [1 x i8]* %a, align 1
  %"$retval_26" = alloca %TName_Pair_ByStr1_ByStr2*, align 8
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 1, %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %entry
  %"$consume_235" = sub i64 %"$gasrem_231", 1
  store i64 %"$consume_235", i64* @_gasrem, align 8
  %"$a_236" = load [1 x i8], [1 x i8]* %a, align 1
  %"$adtval_237_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_237_salloc" = call i8* @_salloc(i8* %"$adtval_237_load", i64 4)
  %"$adtval_237" = bitcast i8* %"$adtval_237_salloc" to %CName_Pair_ByStr1_ByStr2*
  %"$adtgep_238" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_237", i32 0, i32 0
  store i8 0, i8* %"$adtgep_238", align 1
  %"$adtgep_239" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_237", i32 0, i32 1
  store [1 x i8] %"$a_236", [1 x i8]* %"$adtgep_239", align 1
  %"$adtgep_240" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_237", i32 0, i32 2
  store [2 x i8] %1, [2 x i8]* %"$adtgep_240", align 1
  %"$adtptr_241" = bitcast %CName_Pair_ByStr1_ByStr2* %"$adtval_237" to %TName_Pair_ByStr1_ByStr2*
  store %TName_Pair_ByStr1_ByStr2* %"$adtptr_241", %TName_Pair_ByStr1_ByStr2** %"$retval_26", align 8, !dbg !13
  %"$$retval_26_242" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %"$retval_26", align 8
  ret %TName_Pair_ByStr1_ByStr2* %"$$retval_26_242"
}

define internal { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } @"$fundef_23"(%"$$fundef_23_env_102"* %0, [1 x i8] %1) !dbg !14 {
entry:
  %"$retval_24" = alloca { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, align 8
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 1, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %entry
  %"$consume_222" = sub i64 %"$gasrem_218", 1
  store i64 %"$consume_222", i64* @_gasrem, align 8
  %"$$fundef_25_envp_223_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_25_envp_223_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_223_load", i64 1)
  %"$$fundef_25_envp_223" = bitcast i8* %"$$fundef_25_envp_223_salloc" to %"$$fundef_25_env_101"*
  %"$$fundef_25_env_voidp_225" = bitcast %"$$fundef_25_env_101"* %"$$fundef_25_envp_223" to i8*
  %"$$fundef_25_cloval_226" = insertvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])* bitcast (%TName_Pair_ByStr1_ByStr2* (%"$$fundef_25_env_101"*, [2 x i8])* @"$fundef_25" to %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*), i8* undef }, i8* %"$$fundef_25_env_voidp_225", 1
  %"$$fundef_25_env_a_227" = getelementptr inbounds %"$$fundef_25_env_101", %"$$fundef_25_env_101"* %"$$fundef_25_envp_223", i32 0, i32 0
  store [1 x i8] %1, [1 x i8]* %"$$fundef_25_env_a_227", align 1
  store { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$fundef_25_cloval_226", { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$retval_24", align 8, !dbg !15
  %"$$retval_24_228" = load { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$retval_24", align 8
  ret { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$retval_24_228"
}

define internal { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } @"$fundef_21"(%"$$fundef_21_env_103"* %0) !dbg !16 {
entry:
  %"$retval_22" = alloca { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, align 8
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 1, %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %entry
  %"$consume_213" = sub i64 %"$gasrem_209", 1
  store i64 %"$consume_213", i64* @_gasrem, align 8
  store { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])* bitcast ({ %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (%"$$fundef_23_env_102"*, [1 x i8])* @"$fundef_23" to { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*), i8* null }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_22", align 8, !dbg !17
  %"$$retval_22_217" = load { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_22", align 8
  ret { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$$retval_22_217"
}

define internal %TName_Pair_ByStr1_Uint64* @"$fundef_19"(%"$$fundef_19_env_104"* %0, %Uint64 %1) !dbg !18 {
entry:
  %"$$fundef_19_env_a_195" = getelementptr inbounds %"$$fundef_19_env_104", %"$$fundef_19_env_104"* %0, i32 0, i32 0
  %"$a_envload_196" = load [1 x i8], [1 x i8]* %"$$fundef_19_env_a_195", align 1
  %a = alloca [1 x i8], align 1
  store [1 x i8] %"$a_envload_196", [1 x i8]* %a, align 1
  %"$retval_20" = alloca %TName_Pair_ByStr1_Uint64*, align 8
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %entry
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %"$a_202" = load [1 x i8], [1 x i8]* %a, align 1
  %"$adtval_203_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_203_salloc" = call i8* @_salloc(i8* %"$adtval_203_load", i64 10)
  %"$adtval_203" = bitcast i8* %"$adtval_203_salloc" to %CName_Pair_ByStr1_Uint64*
  %"$adtgep_204" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_203", i32 0, i32 0
  store i8 0, i8* %"$adtgep_204", align 1
  %"$adtgep_205" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_203", i32 0, i32 1
  store [1 x i8] %"$a_202", [1 x i8]* %"$adtgep_205", align 1
  %"$adtgep_206" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_203", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_206", align 8
  %"$adtptr_207" = bitcast %CName_Pair_ByStr1_Uint64* %"$adtval_203" to %TName_Pair_ByStr1_Uint64*
  store %TName_Pair_ByStr1_Uint64* %"$adtptr_207", %TName_Pair_ByStr1_Uint64** %"$retval_20", align 8, !dbg !19
  %"$$retval_20_208" = load %TName_Pair_ByStr1_Uint64*, %TName_Pair_ByStr1_Uint64** %"$retval_20", align 8
  ret %TName_Pair_ByStr1_Uint64* %"$$retval_20_208"
}

define internal { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_17"(%"$$fundef_17_env_105"* %0, [1 x i8] %1) !dbg !20 {
entry:
  %"$retval_18" = alloca { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %entry
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %"$$fundef_19_envp_189_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_19_envp_189_salloc" = call i8* @_salloc(i8* %"$$fundef_19_envp_189_load", i64 1)
  %"$$fundef_19_envp_189" = bitcast i8* %"$$fundef_19_envp_189_salloc" to %"$$fundef_19_env_104"*
  %"$$fundef_19_env_voidp_191" = bitcast %"$$fundef_19_env_104"* %"$$fundef_19_envp_189" to i8*
  %"$$fundef_19_cloval_192" = insertvalue { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_ByStr1_Uint64* (%"$$fundef_19_env_104"*, %Uint64)* @"$fundef_19" to %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_19_env_voidp_191", 1
  %"$$fundef_19_env_a_193" = getelementptr inbounds %"$$fundef_19_env_104", %"$$fundef_19_env_104"* %"$$fundef_19_envp_189", i32 0, i32 0
  store [1 x i8] %1, [1 x i8]* %"$$fundef_19_env_a_193", align 1
  store { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_19_cloval_192", { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_18", align 8, !dbg !21
  %"$$retval_18_194" = load { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_18", align 8
  ret { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_18_194"
}

define internal { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } @"$fundef_15"(%"$$fundef_15_env_106"* %0) !dbg !22 {
entry:
  %"$retval_16" = alloca { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }, align 8
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %entry
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  store { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])* bitcast ({ %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_17_env_105"*, [1 x i8])* @"$fundef_17" to { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*), i8* null }, { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_16", align 8, !dbg !23
  %"$$retval_16_183" = load { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_16", align 8
  ret { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } %"$$retval_16_183"
}

define internal { i8*, i8* }* @"$fundef_13"(%"$$fundef_13_env_107"* %0) !dbg !24 {
entry:
  %"$retval_14" = alloca { i8*, i8* }*, align 8
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 1, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %entry
  %"$consume_162" = sub i64 %"$gasrem_158", 1
  store i64 %"$consume_162", i64* @_gasrem, align 8
  %"$dyndisp_table_169_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_169_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_169_salloc_load", i64 64)
  %"$dyndisp_table_169_salloc" = bitcast i8* %"$dyndisp_table_169_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_169" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_169_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_170" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_169", i32 1
  %"$dyndisp_pcast_171" = bitcast { i8*, i8* }* %"$dyndisp_gep_170" to { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)* bitcast ({ { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (%"$$fundef_15_env_106"*)* @"$fundef_15" to { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_171", align 8
  %"$dyndisp_gep_172" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_169", i32 3
  %"$dyndisp_pcast_173" = bitcast { i8*, i8* }* %"$dyndisp_gep_172" to { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)* bitcast ({ { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (%"$$fundef_21_env_103"*)* @"$fundef_21" to { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_173", align 8
  store { i8*, i8* }* %"$dyndisp_table_169", { i8*, i8* }** %"$retval_14", align 8, !dbg !25
  %"$$retval_14_174" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_14", align 8
  ret { i8*, i8* }* %"$$retval_14_174"
}

define internal %TName_Pair_Uint32_Uint64* @"$fundef_11"(%"$$fundef_11_env_108"* %0, %Uint64 %1) !dbg !26 {
entry:
  %"$$fundef_11_env_a_144" = getelementptr inbounds %"$$fundef_11_env_108", %"$$fundef_11_env_108"* %0, i32 0, i32 0
  %"$a_envload_145" = load %Uint32, %Uint32* %"$$fundef_11_env_a_144", align 4
  %a = alloca %Uint32, align 8
  store %Uint32 %"$a_envload_145", %Uint32* %a, align 4
  %"$retval_12" = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %entry
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %"$a_151" = load %Uint32, %Uint32* %a, align 4
  %"$adtval_152_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_152_salloc" = call i8* @_salloc(i8* %"$adtval_152_load", i64 13)
  %"$adtval_152" = bitcast i8* %"$adtval_152_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_153" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_152", i32 0, i32 0
  store i8 0, i8* %"$adtgep_153", align 1
  %"$adtgep_154" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_152", i32 0, i32 1
  store %Uint32 %"$a_151", %Uint32* %"$adtgep_154", align 4
  %"$adtgep_155" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_152", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_155", align 8
  %"$adtptr_156" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_152" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_156", %TName_Pair_Uint32_Uint64** %"$retval_12", align 8, !dbg !27
  %"$$retval_12_157" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$retval_12", align 8
  ret %TName_Pair_Uint32_Uint64* %"$$retval_12_157"
}

define internal { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_9"(%"$$fundef_9_env_109"* %0, %Uint32 %1) !dbg !28 {
entry:
  %"$retval_10" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %entry
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  %"$$fundef_11_envp_138_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_11_envp_138_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_138_load", i64 4)
  %"$$fundef_11_envp_138" = bitcast i8* %"$$fundef_11_envp_138_salloc" to %"$$fundef_11_env_108"*
  %"$$fundef_11_env_voidp_140" = bitcast %"$$fundef_11_env_108"* %"$$fundef_11_envp_138" to i8*
  %"$$fundef_11_cloval_141" = insertvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_Uint32_Uint64* (%"$$fundef_11_env_108"*, %Uint64)* @"$fundef_11" to %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_11_env_voidp_140", 1
  %"$$fundef_11_env_a_142" = getelementptr inbounds %"$$fundef_11_env_108", %"$$fundef_11_env_108"* %"$$fundef_11_envp_138", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_11_env_a_142", align 4
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_11_cloval_141", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10", align 8, !dbg !29
  %"$$retval_10_143" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10", align 8
  ret { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_10_143"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_7"(%"$$fundef_7_env_110"* %0) !dbg !30 {
entry:
  %"$retval_8" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %entry
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem, align 8
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)* bitcast ({ %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_9_env_109"*, %Uint32)* @"$fundef_9" to { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*), i8* null }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8", align 8, !dbg !31
  %"$$retval_8_132" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_8_132"
}

define internal { i8*, i8* }* @"$fundef_5"(%"$$fundef_5_env_111"* %0) !dbg !32 {
entry:
  %"$retval_6" = alloca { i8*, i8* }*, align 8
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %entry
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  %"$dyndisp_table_120_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_120_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_120_salloc_load", i64 64)
  %"$dyndisp_table_120_salloc" = bitcast i8* %"$dyndisp_table_120_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_120" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_120_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_121" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_120", i32 1
  %"$dyndisp_pcast_122" = bitcast { i8*, i8* }* %"$dyndisp_gep_121" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_7_env_110"*)* @"$fundef_7" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_122", align 8
  store { i8*, i8* }* %"$dyndisp_table_120", { i8*, i8* }** %"$retval_6", align 8, !dbg !33
  %"$$retval_6_123" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_6", align 8
  ret { i8*, i8* }* %"$$retval_6_123"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !34 {
entry:
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* @_scilla_expr_fun(i8* %0) !dbg !36 {
entry:
  %"$expr_4" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*, align 8
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 1, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %entry
  %"$consume_285" = sub i64 %"$gasrem_281", 1
  store i64 %"$consume_285", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_287" = icmp ugt i64 1, %"$gasrem_286"
  br i1 %"$gascmp_287", label %"$out_of_gas_288", label %"$have_gas_289"

"$out_of_gas_288":                                ; preds = %"$have_gas_284"
  call void @_out_of_gas()
  br label %"$have_gas_289"

"$have_gas_289":                                  ; preds = %"$out_of_gas_288", %"$have_gas_284"
  %"$consume_290" = sub i64 %"$gasrem_286", 1
  store i64 %"$consume_290", i64* @_gasrem, align 8
  %"$dyndisp_table_297_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_297_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_297_salloc_load", i64 64)
  %"$dyndisp_table_297_salloc" = bitcast i8* %"$dyndisp_table_297_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_297" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_297_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_298" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_297", i32 0
  %"$dyndisp_pcast_299" = bitcast { i8*, i8* }* %"$dyndisp_gep_298" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_5_env_111"*)* @"$fundef_5" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_299", align 8
  %"$dyndisp_gep_300" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_297", i32 2
  %"$dyndisp_pcast_301" = bitcast { i8*, i8* }* %"$dyndisp_gep_300" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_13_env_107"*)* @"$fundef_13" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_301", align 8
  store { i8*, i8* }* %"$dyndisp_table_297", { i8*, i8* }** %tf, align 8, !dbg !37
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 1, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_289"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_289"
  %"$consume_306" = sub i64 %"$gasrem_302", 1
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %tf1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 1, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_305"
  %"$consume_311" = sub i64 %"$gasrem_307", 1
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %"$$fundef_27_envp_312_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_27_envp_312_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_312_load", i64 8)
  %"$$fundef_27_envp_312" = bitcast i8* %"$$fundef_27_envp_312_salloc" to %"$$fundef_27_env_100"*
  %"$$fundef_27_env_voidp_314" = bitcast %"$$fundef_27_env_100"* %"$$fundef_27_envp_312" to i8*
  %"$$fundef_27_cloval_315" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_27_env_100"*)* @"$fundef_27" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_314", 1
  %"$$fundef_27_env_tf_316" = getelementptr inbounds %"$$fundef_27_env_100", %"$$fundef_27_env_100"* %"$$fundef_27_envp_312", i32 0, i32 0
  %"$tf_317" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_317", { i8*, i8* }** %"$$fundef_27_env_tf_316", align 8
  %"$dyndisp_table_318_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_318_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_318_salloc_load", i64 64)
  %"$dyndisp_table_318_salloc" = bitcast i8* %"$dyndisp_table_318_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_318" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_318_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_319" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_318", i32 0
  %"$dyndisp_pcast_320" = bitcast { i8*, i8* }* %"$dyndisp_gep_319" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_27_cloval_315", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_320", align 8
  store { i8*, i8* }* %"$dyndisp_table_318", { i8*, i8* }** %tf1, align 8, !dbg !38
  %"$gasrem_321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_322" = icmp ugt i64 1, %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %"$have_gas_310"
  %"$consume_325" = sub i64 %"$gasrem_321", 1
  store i64 %"$consume_325", i64* @_gasrem, align 8
  %t1 = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 1, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %"$have_gas_324"
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %"$have_gas_324"
  %"$consume_330" = sub i64 %"$gasrem_326", 1
  store i64 %"$consume_330", i64* @_gasrem, align 8
  %"$tf1_331" = load { i8*, i8* }*, { i8*, i8* }** %tf1, align 8
  %"$tf1_332" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_331", i32 0
  %"$tf1_333" = bitcast { i8*, i8* }* %"$tf1_332" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_334" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_333", align 8
  %"$tf1_fptr_335" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_334", 0
  %"$tf1_envptr_336" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_334", 1
  %"$tf1_call_337" = call { i8*, i8* }* %"$tf1_fptr_335"(i8* %"$tf1_envptr_336"), !dbg !39
  %"$tf1_338" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_337", i32 1
  %"$tf1_339" = bitcast { i8*, i8* }* %"$tf1_338" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf1_340" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf1_339", align 8
  %"$tf1_fptr_341" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_340", 0
  %"$tf1_envptr_342" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_340", 1
  %"$tf1_call_343" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_fptr_341"(i8* %"$tf1_envptr_342"), !dbg !39
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_call_343", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8, !dbg !40
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 1, %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %"$have_gas_329"
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %"$have_gas_329"
  %"$consume_348" = sub i64 %"$gasrem_344", 1
  store i64 %"$consume_348", i64* @_gasrem, align 8
  %t3 = alloca { i8*, i8* }*, align 8
  %"$gasrem_349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_350" = icmp ugt i64 1, %"$gasrem_349"
  br i1 %"$gascmp_350", label %"$out_of_gas_351", label %"$have_gas_352"

"$out_of_gas_351":                                ; preds = %"$have_gas_347"
  call void @_out_of_gas()
  br label %"$have_gas_352"

"$have_gas_352":                                  ; preds = %"$out_of_gas_351", %"$have_gas_347"
  %"$consume_353" = sub i64 %"$gasrem_349", 1
  store i64 %"$consume_353", i64* @_gasrem, align 8
  %"$tf_354" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_355" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_354", i32 2
  %"$tf_356" = bitcast { i8*, i8* }* %"$tf_355" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_357" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_356", align 8
  %"$tf_fptr_358" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_357", 0
  %"$tf_envptr_359" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_357", 1
  %"$tf_call_360" = call { i8*, i8* }* %"$tf_fptr_358"(i8* %"$tf_envptr_359"), !dbg !41
  store { i8*, i8* }* %"$tf_call_360", { i8*, i8* }** %t3, align 8, !dbg !42
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_352"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_352"
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %t4 = alloca { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, align 8
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_364"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  %"$t3_371" = load { i8*, i8* }*, { i8*, i8* }** %t3, align 8
  %"$t3_372" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t3_371", i32 3
  %"$t3_373" = bitcast { i8*, i8* }* %"$t3_372" to { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  %"$t3_374" = load { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }, { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$t3_373", align 8
  %"$t3_fptr_375" = extractvalue { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } %"$t3_374", 0
  %"$t3_envptr_376" = extractvalue { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } %"$t3_374", 1
  %"$t3_call_377" = call { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t3_fptr_375"(i8* %"$t3_envptr_376"), !dbg !43
  store { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t3_call_377", { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %t4, align 8, !dbg !44
  %"$gasrem_378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_379" = icmp ugt i64 1, %"$gasrem_378"
  br i1 %"$gascmp_379", label %"$out_of_gas_380", label %"$have_gas_381"

"$out_of_gas_380":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_381"

"$have_gas_381":                                  ; preds = %"$out_of_gas_380", %"$have_gas_369"
  %"$consume_382" = sub i64 %"$gasrem_378", 1
  store i64 %"$consume_382", i64* @_gasrem, align 8
  %uint32_one = alloca %Uint32, align 8
  %"$gasrem_383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_384" = icmp ugt i64 1, %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$have_gas_381"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$have_gas_381"
  %"$consume_387" = sub i64 %"$gasrem_383", 1
  store i64 %"$consume_387", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %uint32_one, align 4, !dbg !45
  %"$gasrem_388" = load i64, i64* @_gasrem, align 8
  %"$gascmp_389" = icmp ugt i64 1, %"$gasrem_388"
  br i1 %"$gascmp_389", label %"$out_of_gas_390", label %"$have_gas_391"

"$out_of_gas_390":                                ; preds = %"$have_gas_386"
  call void @_out_of_gas()
  br label %"$have_gas_391"

"$have_gas_391":                                  ; preds = %"$out_of_gas_390", %"$have_gas_386"
  %"$consume_392" = sub i64 %"$gasrem_388", 1
  store i64 %"$consume_392", i64* @_gasrem, align 8
  %uint64_two = alloca %Uint64, align 8
  %"$gasrem_393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_394" = icmp ugt i64 1, %"$gasrem_393"
  br i1 %"$gascmp_394", label %"$out_of_gas_395", label %"$have_gas_396"

"$out_of_gas_395":                                ; preds = %"$have_gas_391"
  call void @_out_of_gas()
  br label %"$have_gas_396"

"$have_gas_396":                                  ; preds = %"$out_of_gas_395", %"$have_gas_391"
  %"$consume_397" = sub i64 %"$gasrem_393", 1
  store i64 %"$consume_397", i64* @_gasrem, align 8
  store %Uint64 { i64 2 }, %Uint64* %uint64_two, align 8, !dbg !46
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 1, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_396"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_396"
  %"$consume_402" = sub i64 %"$gasrem_398", 1
  store i64 %"$consume_402", i64* @_gasrem, align 8
  %addr_bystr1 = alloca [1 x i8], align 1
  %"$gasrem_403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_404" = icmp ugt i64 1, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$have_gas_401"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$have_gas_401"
  %"$consume_407" = sub i64 %"$gasrem_403", 1
  store i64 %"$consume_407", i64* @_gasrem, align 8
  store [1 x i8] c"\AA", [1 x i8]* %addr_bystr1, align 1, !dbg !47
  %"$gasrem_408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_409" = icmp ugt i64 1, %"$gasrem_408"
  br i1 %"$gascmp_409", label %"$out_of_gas_410", label %"$have_gas_411"

"$out_of_gas_410":                                ; preds = %"$have_gas_406"
  call void @_out_of_gas()
  br label %"$have_gas_411"

"$have_gas_411":                                  ; preds = %"$out_of_gas_410", %"$have_gas_406"
  %"$consume_412" = sub i64 %"$gasrem_408", 1
  store i64 %"$consume_412", i64* @_gasrem, align 8
  %addr_bystr2 = alloca [2 x i8], align 1
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_411"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_411"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  store [2 x i8] c"\AA\BB", [2 x i8]* %addr_bystr2, align 1, !dbg !48
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_416"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %p1 = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_421"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %"$t1_0" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$t1_428" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8
  %"$t1_fptr_429" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_428", 0
  %"$t1_envptr_430" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_428", 1
  %"$uint32_one_431" = load %Uint32, %Uint32* %uint32_one, align 4
  %"$t1_call_432" = call { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_fptr_429"(i8* %"$t1_envptr_430", %Uint32 %"$uint32_one_431"), !dbg !49
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_call_432", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0", align 8, !dbg !49
  %"$t1_1" = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$$t1_0_433" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0", align 8
  %"$$t1_0_fptr_434" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_433", 0
  %"$$t1_0_envptr_435" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_433", 1
  %"$uint64_two_436" = load %Uint64, %Uint64* %uint64_two, align 8
  %"$$t1_0_call_437" = call %TName_Pair_Uint32_Uint64* %"$$t1_0_fptr_434"(i8* %"$$t1_0_envptr_435", %Uint64 %"$uint64_two_436"), !dbg !49
  store %TName_Pair_Uint32_Uint64* %"$$t1_0_call_437", %TName_Pair_Uint32_Uint64** %"$t1_1", align 8, !dbg !49
  %"$$t1_1_438" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$t1_1", align 8
  store %TName_Pair_Uint32_Uint64* %"$$t1_1_438", %TName_Pair_Uint32_Uint64** %p1, align 8, !dbg !49
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_426"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  %p2 = alloca %TName_Pair_ByStr1_ByStr2*, align 8
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 1, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_442"
  %"$consume_448" = sub i64 %"$gasrem_444", 1
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %"$t4_2" = alloca { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, align 8
  %"$t4_449" = load { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %t4, align 8
  %"$t4_fptr_450" = extractvalue { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t4_449", 0
  %"$t4_envptr_451" = extractvalue { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t4_449", 1
  %"$addr_bystr1_452" = load [1 x i8], [1 x i8]* %addr_bystr1, align 1
  %"$t4_call_453" = call { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$t4_fptr_450"(i8* %"$t4_envptr_451", [1 x i8] %"$addr_bystr1_452"), !dbg !50
  store { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$t4_call_453", { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$t4_2", align 8, !dbg !50
  %"$t4_3" = alloca %TName_Pair_ByStr1_ByStr2*, align 8
  %"$$t4_2_454" = load { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$t4_2", align 8
  %"$$t4_2_fptr_455" = extractvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$t4_2_454", 0
  %"$$t4_2_envptr_456" = extractvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$t4_2_454", 1
  %"$addr_bystr2_457" = load [2 x i8], [2 x i8]* %addr_bystr2, align 1
  %"$$t4_2_call_458" = call %TName_Pair_ByStr1_ByStr2* %"$$t4_2_fptr_455"(i8* %"$$t4_2_envptr_456", [2 x i8] %"$addr_bystr2_457"), !dbg !50
  store %TName_Pair_ByStr1_ByStr2* %"$$t4_2_call_458", %TName_Pair_ByStr1_ByStr2** %"$t4_3", align 8, !dbg !50
  %"$$t4_3_459" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %"$t4_3", align 8
  store %TName_Pair_ByStr1_ByStr2* %"$$t4_3_459", %TName_Pair_ByStr1_ByStr2** %p2, align 8, !dbg !50
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 1, %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$have_gas_447"
  %"$consume_464" = sub i64 %"$gasrem_460", 1
  store i64 %"$consume_464", i64* @_gasrem, align 8
  %"$p1_465" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %p1, align 8
  %"$p2_466" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %p2, align 8
  %"$adtval_467_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_467_salloc" = call i8* @_salloc(i8* %"$adtval_467_load", i64 17)
  %"$adtval_467" = bitcast i8* %"$adtval_467_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  %"$adtgep_468" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_467", i32 0, i32 0
  store i8 0, i8* %"$adtgep_468", align 1
  %"$adtgep_469" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_467", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$p1_465", %TName_Pair_Uint32_Uint64** %"$adtgep_469", align 8
  %"$adtgep_470" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_467", i32 0, i32 2
  store %TName_Pair_ByStr1_ByStr2* %"$p2_466", %TName_Pair_ByStr1_ByStr2** %"$adtgep_470", align 8
  %"$adtptr_471" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_467" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtptr_471", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_4", align 8, !dbg !51
  %"$$expr_4_472" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_4", align 8
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$$expr_4_472"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_473" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_474" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$exprval_473" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_67", i8* %"$memvoidcast_474")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "typ3-inst.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_29", linkageName: "$fundef_29", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 12, column: 6, scope: !4)
!9 = !DILocation(line: 12, column: 5, scope: !4)
!10 = distinct !DISubprogram(name: "$fundef_27", linkageName: "$fundef_27", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 11, column: 3, scope: !10)
!12 = distinct !DISubprogram(name: "$fundef_25", linkageName: "$fundef_25", scope: !2, file: !2, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!13 = !DILocation(line: 6, column: 5, scope: !12)
!14 = distinct !DISubprogram(name: "$fundef_23", linkageName: "$fundef_23", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 6, column: 5, scope: !14)
!16 = distinct !DISubprogram(name: "$fundef_21", linkageName: "$fundef_21", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!17 = !DILocation(line: 5, column: 3, scope: !16)
!18 = distinct !DISubprogram(name: "$fundef_19", linkageName: "$fundef_19", scope: !2, file: !2, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!19 = !DILocation(line: 6, column: 5, scope: !18)
!20 = distinct !DISubprogram(name: "$fundef_17", linkageName: "$fundef_17", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!21 = !DILocation(line: 6, column: 5, scope: !20)
!22 = distinct !DISubprogram(name: "$fundef_15", linkageName: "$fundef_15", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!23 = !DILocation(line: 5, column: 3, scope: !22)
!24 = distinct !DISubprogram(name: "$fundef_13", linkageName: "$fundef_13", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!25 = !DILocation(line: 3, column: 3, scope: !24)
!26 = distinct !DISubprogram(name: "$fundef_11", linkageName: "$fundef_11", scope: !2, file: !2, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!27 = !DILocation(line: 6, column: 5, scope: !26)
!28 = distinct !DISubprogram(name: "$fundef_9", linkageName: "$fundef_9", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!29 = !DILocation(line: 6, column: 5, scope: !28)
!30 = distinct !DISubprogram(name: "$fundef_7", linkageName: "$fundef_7", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!31 = !DILocation(line: 5, column: 3, scope: !30)
!32 = distinct !DISubprogram(name: "$fundef_5", linkageName: "$fundef_5", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!33 = !DILocation(line: 3, column: 3, scope: !32)
!34 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !35, file: !35, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!35 = !DIFile(filename: ".", directory: ".")
!36 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!37 = !DILocation(line: 2, column: 3, scope: !36)
!38 = !DILocation(line: 10, column: 3, scope: !36)
!39 = !DILocation(line: 16, column: 11, scope: !36)
!40 = !DILocation(line: 16, column: 10, scope: !36)
!41 = !DILocation(line: 17, column: 11, scope: !36)
!42 = !DILocation(line: 17, column: 10, scope: !36)
!43 = !DILocation(line: 18, column: 11, scope: !36)
!44 = !DILocation(line: 18, column: 10, scope: !36)
!45 = !DILocation(line: 19, column: 18, scope: !36)
!46 = !DILocation(line: 20, column: 18, scope: !36)
!47 = !DILocation(line: 21, column: 19, scope: !36)
!48 = !DILocation(line: 22, column: 19, scope: !36)
!49 = !DILocation(line: 24, column: 10, scope: !36)
!50 = !DILocation(line: 25, column: 10, scope: !36)
!51 = !DILocation(line: 26, column: 1, scope: !36)
