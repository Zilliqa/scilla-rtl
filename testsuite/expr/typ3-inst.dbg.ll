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
%"$$fundef_29_env_101" = type { { i8*, i8* }* }
%"$$fundef_27_env_102" = type { { i8*, i8* }* }
%TName_Pair_ByStr1_ByStr2 = type { i8, %CName_Pair_ByStr1_ByStr2* }
%CName_Pair_ByStr1_ByStr2 = type <{ i8, [1 x i8], [2 x i8] }>
%"$$fundef_25_env_103" = type { [1 x i8] }
%"$$fundef_23_env_104" = type {}
%"$$fundef_21_env_105" = type {}
%TName_Pair_ByStr1_Uint64 = type { i8, %CName_Pair_ByStr1_Uint64* }
%CName_Pair_ByStr1_Uint64 = type <{ i8, [1 x i8], %Uint64 }>
%"$$fundef_19_env_106" = type { [1 x i8] }
%"$$fundef_17_env_107" = type {}
%"$$fundef_15_env_108" = type {}
%"$$fundef_13_env_109" = type {}
%"$$fundef_11_env_110" = type { %Uint32 }
%"$$fundef_9_env_111" = type {}
%"$$fundef_7_env_112" = type {}
%"$$fundef_5_env_113" = type {}
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
@"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_67" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_80" to i8*) }
@"$TyDescr_ADT_Pair_ByStr1_ByStr2_68" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_86" to i8*) }
@"$TyDescr_ADT_Pair_ByStr1_Uint64_69" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_92" to i8*) }
@"$TyDescr_ADT_Pair_Uint32_Uint64_70" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_98" to i8*) }
@"$TyDescr_Pair_ADTTyp_74" = unnamed_addr constant %"$TyDescrTy_ADTTyp_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_100", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 4, %"$TyDescrTy_ADTTyp_Specl_64"** getelementptr inbounds ([4 x %"$TyDescrTy_ADTTyp_Specl_64"*], [4 x %"$TyDescrTy_ADTTyp_Specl_64"*]* @"$TyDescr_Pair_ADTTyp_m_specls_99", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_Constr_m_args_75" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_70", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr1_ByStr2_68"]
@"$TyDescr_ADT_Pair_76" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Constr_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_76", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_Constr_m_args_75", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_constrs_78" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Constr_77"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_TArgs_79" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_70", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr1_ByStr2_68"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_80" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_TArgs_79", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_66"*], [1 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_constrs_78", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_Pair_ADTTyp_74" }
@"$TyDescr_Pair_Pair_ByStr1_ByStr2_Constr_m_args_81" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_63", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_61"]
@"$TyDescr_ADT_Pair_82" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr1_ByStr2_ADTTyp_Constr_83" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_82", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr1_ByStr2_Constr_m_args_81", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_constrs_84" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_Pair_Pair_ByStr1_ByStr2_ADTTyp_Constr_83"]
@"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_TArgs_85" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_63", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_61"]
@"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_86" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_TArgs_85", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_66"*], [1 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_constrs_84", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_Pair_ADTTyp_74" }
@"$TyDescr_Pair_Pair_ByStr1_Uint64_Constr_m_args_87" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_63", %_TyDescrTy_Typ* @"$TyDescr_Uint64_39"]
@"$TyDescr_ADT_Pair_88" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr1_Uint64_ADTTyp_Constr_89" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_88", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr1_Uint64_Constr_m_args_87", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_constrs_90" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_Pair_Pair_ByStr1_Uint64_ADTTyp_Constr_89"]
@"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_TArgs_91" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_63", %_TyDescrTy_Typ* @"$TyDescr_Uint64_39"]
@"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_92" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_TArgs_91", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_66"*], [1 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_constrs_90", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_Pair_ADTTyp_74" }
@"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_93" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_35", %_TyDescrTy_Typ* @"$TyDescr_Uint64_39"]
@"$TyDescr_ADT_Pair_94" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_95" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_94", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_93", i32 0, i32 0) }
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_96" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_95"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_97" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_35", %_TyDescrTy_Typ* @"$TyDescr_Uint64_39"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_98" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_97", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_66"*], [1 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_96", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_Pair_ADTTyp_74" }
@"$TyDescr_Pair_ADTTyp_m_specls_99" = unnamed_addr constant [4 x %"$TyDescrTy_ADTTyp_Specl_64"*] [%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_80", %"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_86", %"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_92", %"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_98"]
@"$TyDescr_ADT_Pair_100" = unnamed_addr constant [4 x i8] c"Pair"

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_29"(%"$$fundef_29_env_101"* %0) !dbg !4 {
entry:
  %"$$fundef_29_env_tf_262" = getelementptr inbounds %"$$fundef_29_env_101", %"$$fundef_29_env_101"* %0, i32 0, i32 0
  %"$tf_envload_263" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_29_env_tf_262", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_263", { i8*, i8* }** %tf, align 8
  %"$retval_30" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %entry
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %"$tf_269" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_270" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_269", i32 0
  %"$tf_271" = bitcast { i8*, i8* }* %"$tf_270" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_272" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_271", align 8
  %"$tf_fptr_273" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_272", 0
  %"$tf_envptr_274" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_272", 1
  %"$tf_call_275" = call { i8*, i8* }* %"$tf_fptr_273"(i8* %"$tf_envptr_274"), !dbg !8
  %"$tf_276" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_275", i32 1
  %"$tf_277" = bitcast { i8*, i8* }* %"$tf_276" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_278" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_277", align 8
  %"$tf_fptr_279" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_278", 0
  %"$tf_envptr_280" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_278", 1
  %"$tf_call_281" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_279"(i8* %"$tf_envptr_280"), !dbg !8
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_281", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_30", align 8, !dbg !9
  %"$$retval_30_282" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_30", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_30_282"
}

define internal { i8*, i8* }* @"$fundef_27"(%"$$fundef_27_env_102"* %0) !dbg !10 {
entry:
  %"$$fundef_27_env_tf_245" = getelementptr inbounds %"$$fundef_27_env_102", %"$$fundef_27_env_102"* %0, i32 0, i32 0
  %"$tf_envload_246" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_27_env_tf_245", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_246", { i8*, i8* }** %tf, align 8
  %"$retval_28" = alloca { i8*, i8* }*, align 8
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 1, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %entry
  %"$consume_251" = sub i64 %"$gasrem_247", 1
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %"$$fundef_29_envp_252_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_29_envp_252_salloc" = call i8* @_salloc(i8* %"$$fundef_29_envp_252_load", i64 8)
  %"$$fundef_29_envp_252" = bitcast i8* %"$$fundef_29_envp_252_salloc" to %"$$fundef_29_env_101"*
  %"$$fundef_29_env_voidp_254" = bitcast %"$$fundef_29_env_101"* %"$$fundef_29_envp_252" to i8*
  %"$$fundef_29_cloval_255" = insertvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_29_env_101"*)* @"$fundef_29" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_29_env_voidp_254", 1
  %"$$fundef_29_env_tf_256" = getelementptr inbounds %"$$fundef_29_env_101", %"$$fundef_29_env_101"* %"$$fundef_29_envp_252", i32 0, i32 0
  %"$tf_257" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_257", { i8*, i8* }** %"$$fundef_29_env_tf_256", align 8
  %"$dyndisp_table_258_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_258_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_258_salloc_load", i64 64)
  %"$dyndisp_table_258_salloc" = bitcast i8* %"$dyndisp_table_258_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_258" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_258_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_259" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_258", i32 1
  %"$dyndisp_pcast_260" = bitcast { i8*, i8* }* %"$dyndisp_gep_259" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_29_cloval_255", { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_260", align 8
  store { i8*, i8* }* %"$dyndisp_table_258", { i8*, i8* }** %"$retval_28", align 8, !dbg !11
  %"$$retval_28_261" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_28", align 8
  ret { i8*, i8* }* %"$$retval_28_261"
}

define internal %TName_Pair_ByStr1_ByStr2* @"$fundef_25"(%"$$fundef_25_env_103"* %0, [2 x i8] %1) !dbg !12 {
entry:
  %"$$fundef_25_env_a_231" = getelementptr inbounds %"$$fundef_25_env_103", %"$$fundef_25_env_103"* %0, i32 0, i32 0
  %"$a_envload_232" = load [1 x i8], [1 x i8]* %"$$fundef_25_env_a_231", align 1
  %a = alloca [1 x i8], align 1
  store [1 x i8] %"$a_envload_232", [1 x i8]* %a, align 1
  %"$retval_26" = alloca %TName_Pair_ByStr1_ByStr2*, align 8
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %entry
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %"$a_238" = load [1 x i8], [1 x i8]* %a, align 1
  %"$adtval_239_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_239_salloc" = call i8* @_salloc(i8* %"$adtval_239_load", i64 4)
  %"$adtval_239" = bitcast i8* %"$adtval_239_salloc" to %CName_Pair_ByStr1_ByStr2*
  %"$adtgep_240" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_239", i32 0, i32 0
  store i8 0, i8* %"$adtgep_240", align 1
  %"$adtgep_241" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_239", i32 0, i32 1
  store [1 x i8] %"$a_238", [1 x i8]* %"$adtgep_241", align 1
  %"$adtgep_242" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_239", i32 0, i32 2
  store [2 x i8] %1, [2 x i8]* %"$adtgep_242", align 1
  %"$adtptr_243" = bitcast %CName_Pair_ByStr1_ByStr2* %"$adtval_239" to %TName_Pair_ByStr1_ByStr2*
  store %TName_Pair_ByStr1_ByStr2* %"$adtptr_243", %TName_Pair_ByStr1_ByStr2** %"$retval_26", align 8, !dbg !13
  %"$$retval_26_244" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %"$retval_26", align 8
  ret %TName_Pair_ByStr1_ByStr2* %"$$retval_26_244"
}

define internal { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } @"$fundef_23"(%"$$fundef_23_env_104"* %0, [1 x i8] %1) !dbg !14 {
entry:
  %"$retval_24" = alloca { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, align 8
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 1, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %entry
  %"$consume_224" = sub i64 %"$gasrem_220", 1
  store i64 %"$consume_224", i64* @_gasrem, align 8
  %"$$fundef_25_envp_225_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_25_envp_225_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_225_load", i64 1)
  %"$$fundef_25_envp_225" = bitcast i8* %"$$fundef_25_envp_225_salloc" to %"$$fundef_25_env_103"*
  %"$$fundef_25_env_voidp_227" = bitcast %"$$fundef_25_env_103"* %"$$fundef_25_envp_225" to i8*
  %"$$fundef_25_cloval_228" = insertvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])* bitcast (%TName_Pair_ByStr1_ByStr2* (%"$$fundef_25_env_103"*, [2 x i8])* @"$fundef_25" to %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*), i8* undef }, i8* %"$$fundef_25_env_voidp_227", 1
  %"$$fundef_25_env_a_229" = getelementptr inbounds %"$$fundef_25_env_103", %"$$fundef_25_env_103"* %"$$fundef_25_envp_225", i32 0, i32 0
  store [1 x i8] %1, [1 x i8]* %"$$fundef_25_env_a_229", align 1
  store { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$fundef_25_cloval_228", { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$retval_24", align 8, !dbg !15
  %"$$retval_24_230" = load { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$retval_24", align 8
  ret { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$retval_24_230"
}

define internal { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } @"$fundef_21"(%"$$fundef_21_env_105"* %0) !dbg !16 {
entry:
  %"$retval_22" = alloca { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, align 8
  %"$gasrem_211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_212" = icmp ugt i64 1, %"$gasrem_211"
  br i1 %"$gascmp_212", label %"$out_of_gas_213", label %"$have_gas_214"

"$out_of_gas_213":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_214"

"$have_gas_214":                                  ; preds = %"$out_of_gas_213", %entry
  %"$consume_215" = sub i64 %"$gasrem_211", 1
  store i64 %"$consume_215", i64* @_gasrem, align 8
  store { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])* bitcast ({ %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (%"$$fundef_23_env_104"*, [1 x i8])* @"$fundef_23" to { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*), i8* null }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_22", align 8, !dbg !17
  %"$$retval_22_219" = load { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_22", align 8
  ret { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$$retval_22_219"
}

define internal %TName_Pair_ByStr1_Uint64* @"$fundef_19"(%"$$fundef_19_env_106"* %0, %Uint64 %1) !dbg !18 {
entry:
  %"$$fundef_19_env_a_197" = getelementptr inbounds %"$$fundef_19_env_106", %"$$fundef_19_env_106"* %0, i32 0, i32 0
  %"$a_envload_198" = load [1 x i8], [1 x i8]* %"$$fundef_19_env_a_197", align 1
  %a = alloca [1 x i8], align 1
  store [1 x i8] %"$a_envload_198", [1 x i8]* %a, align 1
  %"$retval_20" = alloca %TName_Pair_ByStr1_Uint64*, align 8
  %"$gasrem_199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_200" = icmp ugt i64 1, %"$gasrem_199"
  br i1 %"$gascmp_200", label %"$out_of_gas_201", label %"$have_gas_202"

"$out_of_gas_201":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_202"

"$have_gas_202":                                  ; preds = %"$out_of_gas_201", %entry
  %"$consume_203" = sub i64 %"$gasrem_199", 1
  store i64 %"$consume_203", i64* @_gasrem, align 8
  %"$a_204" = load [1 x i8], [1 x i8]* %a, align 1
  %"$adtval_205_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_205_salloc" = call i8* @_salloc(i8* %"$adtval_205_load", i64 10)
  %"$adtval_205" = bitcast i8* %"$adtval_205_salloc" to %CName_Pair_ByStr1_Uint64*
  %"$adtgep_206" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_205", i32 0, i32 0
  store i8 0, i8* %"$adtgep_206", align 1
  %"$adtgep_207" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_205", i32 0, i32 1
  store [1 x i8] %"$a_204", [1 x i8]* %"$adtgep_207", align 1
  %"$adtgep_208" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_205", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_208", align 8
  %"$adtptr_209" = bitcast %CName_Pair_ByStr1_Uint64* %"$adtval_205" to %TName_Pair_ByStr1_Uint64*
  store %TName_Pair_ByStr1_Uint64* %"$adtptr_209", %TName_Pair_ByStr1_Uint64** %"$retval_20", align 8, !dbg !19
  %"$$retval_20_210" = load %TName_Pair_ByStr1_Uint64*, %TName_Pair_ByStr1_Uint64** %"$retval_20", align 8
  ret %TName_Pair_ByStr1_Uint64* %"$$retval_20_210"
}

define internal { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_17"(%"$$fundef_17_env_107"* %0, [1 x i8] %1) !dbg !20 {
entry:
  %"$retval_18" = alloca { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %entry
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %"$$fundef_19_envp_191_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_19_envp_191_salloc" = call i8* @_salloc(i8* %"$$fundef_19_envp_191_load", i64 1)
  %"$$fundef_19_envp_191" = bitcast i8* %"$$fundef_19_envp_191_salloc" to %"$$fundef_19_env_106"*
  %"$$fundef_19_env_voidp_193" = bitcast %"$$fundef_19_env_106"* %"$$fundef_19_envp_191" to i8*
  %"$$fundef_19_cloval_194" = insertvalue { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_ByStr1_Uint64* (%"$$fundef_19_env_106"*, %Uint64)* @"$fundef_19" to %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_19_env_voidp_193", 1
  %"$$fundef_19_env_a_195" = getelementptr inbounds %"$$fundef_19_env_106", %"$$fundef_19_env_106"* %"$$fundef_19_envp_191", i32 0, i32 0
  store [1 x i8] %1, [1 x i8]* %"$$fundef_19_env_a_195", align 1
  store { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_19_cloval_194", { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_18", align 8, !dbg !21
  %"$$retval_18_196" = load { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_18", align 8
  ret { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_18_196"
}

define internal { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } @"$fundef_15"(%"$$fundef_15_env_108"* %0) !dbg !22 {
entry:
  %"$retval_16" = alloca { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }, align 8
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 1, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %entry
  %"$consume_181" = sub i64 %"$gasrem_177", 1
  store i64 %"$consume_181", i64* @_gasrem, align 8
  store { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])* bitcast ({ %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_17_env_107"*, [1 x i8])* @"$fundef_17" to { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*), i8* null }, { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_16", align 8, !dbg !23
  %"$$retval_16_185" = load { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_16", align 8
  ret { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } %"$$retval_16_185"
}

define internal { i8*, i8* }* @"$fundef_13"(%"$$fundef_13_env_109"* %0) !dbg !24 {
entry:
  %"$retval_14" = alloca { i8*, i8* }*, align 8
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %entry
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %"$dyndisp_table_171_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_171_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_171_salloc_load", i64 64)
  %"$dyndisp_table_171_salloc" = bitcast i8* %"$dyndisp_table_171_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_171" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_171_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_172" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_171", i32 1
  %"$dyndisp_pcast_173" = bitcast { i8*, i8* }* %"$dyndisp_gep_172" to { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)* bitcast ({ { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (%"$$fundef_15_env_108"*)* @"$fundef_15" to { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_173", align 8
  %"$dyndisp_gep_174" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_171", i32 3
  %"$dyndisp_pcast_175" = bitcast { i8*, i8* }* %"$dyndisp_gep_174" to { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)* bitcast ({ { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (%"$$fundef_21_env_105"*)* @"$fundef_21" to { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_175", align 8
  store { i8*, i8* }* %"$dyndisp_table_171", { i8*, i8* }** %"$retval_14", align 8, !dbg !25
  %"$$retval_14_176" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_14", align 8
  ret { i8*, i8* }* %"$$retval_14_176"
}

define internal %TName_Pair_Uint32_Uint64* @"$fundef_11"(%"$$fundef_11_env_110"* %0, %Uint64 %1) !dbg !26 {
entry:
  %"$$fundef_11_env_a_146" = getelementptr inbounds %"$$fundef_11_env_110", %"$$fundef_11_env_110"* %0, i32 0, i32 0
  %"$a_envload_147" = load %Uint32, %Uint32* %"$$fundef_11_env_a_146", align 4
  %a = alloca %Uint32, align 8
  store %Uint32 %"$a_envload_147", %Uint32* %a, align 4
  %"$retval_12" = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %entry
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %"$a_153" = load %Uint32, %Uint32* %a, align 4
  %"$adtval_154_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_154_salloc" = call i8* @_salloc(i8* %"$adtval_154_load", i64 13)
  %"$adtval_154" = bitcast i8* %"$adtval_154_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_155" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_154", i32 0, i32 0
  store i8 0, i8* %"$adtgep_155", align 1
  %"$adtgep_156" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_154", i32 0, i32 1
  store %Uint32 %"$a_153", %Uint32* %"$adtgep_156", align 4
  %"$adtgep_157" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_154", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_157", align 8
  %"$adtptr_158" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_154" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_158", %TName_Pair_Uint32_Uint64** %"$retval_12", align 8, !dbg !27
  %"$$retval_12_159" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$retval_12", align 8
  ret %TName_Pair_Uint32_Uint64* %"$$retval_12_159"
}

define internal { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_9"(%"$$fundef_9_env_111"* %0, %Uint32 %1) !dbg !28 {
entry:
  %"$retval_10" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %entry
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %"$$fundef_11_envp_140_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_11_envp_140_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_140_load", i64 4)
  %"$$fundef_11_envp_140" = bitcast i8* %"$$fundef_11_envp_140_salloc" to %"$$fundef_11_env_110"*
  %"$$fundef_11_env_voidp_142" = bitcast %"$$fundef_11_env_110"* %"$$fundef_11_envp_140" to i8*
  %"$$fundef_11_cloval_143" = insertvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_Uint32_Uint64* (%"$$fundef_11_env_110"*, %Uint64)* @"$fundef_11" to %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_11_env_voidp_142", 1
  %"$$fundef_11_env_a_144" = getelementptr inbounds %"$$fundef_11_env_110", %"$$fundef_11_env_110"* %"$$fundef_11_envp_140", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_11_env_a_144", align 4
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_11_cloval_143", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10", align 8, !dbg !29
  %"$$retval_10_145" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10", align 8
  ret { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_10_145"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_7"(%"$$fundef_7_env_112"* %0) !dbg !30 {
entry:
  %"$retval_8" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %entry
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)* bitcast ({ %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_9_env_111"*, %Uint32)* @"$fundef_9" to { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*), i8* null }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8", align 8, !dbg !31
  %"$$retval_8_134" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_8_134"
}

define internal { i8*, i8* }* @"$fundef_5"(%"$$fundef_5_env_113"* %0) !dbg !32 {
entry:
  %"$retval_6" = alloca { i8*, i8* }*, align 8
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %entry
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem, align 8
  %"$dyndisp_table_122_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_122_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_122_salloc_load", i64 64)
  %"$dyndisp_table_122_salloc" = bitcast i8* %"$dyndisp_table_122_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_122" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_122_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_123" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_122", i32 1
  %"$dyndisp_pcast_124" = bitcast { i8*, i8* }* %"$dyndisp_gep_123" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_7_env_112"*)* @"$fundef_7" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_124", align 8
  store { i8*, i8* }* %"$dyndisp_table_122", { i8*, i8* }** %"$retval_6", align 8, !dbg !33
  %"$$retval_6_125" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_6", align 8
  ret { i8*, i8* }* %"$$retval_6_125"
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
  %"$gasrem_283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_284" = icmp ugt i64 1, %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %entry
  %"$consume_287" = sub i64 %"$gasrem_283", 1
  store i64 %"$consume_287", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_289" = icmp ugt i64 1, %"$gasrem_288"
  br i1 %"$gascmp_289", label %"$out_of_gas_290", label %"$have_gas_291"

"$out_of_gas_290":                                ; preds = %"$have_gas_286"
  call void @_out_of_gas()
  br label %"$have_gas_291"

"$have_gas_291":                                  ; preds = %"$out_of_gas_290", %"$have_gas_286"
  %"$consume_292" = sub i64 %"$gasrem_288", 1
  store i64 %"$consume_292", i64* @_gasrem, align 8
  %"$dyndisp_table_299_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_299_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_299_salloc_load", i64 64)
  %"$dyndisp_table_299_salloc" = bitcast i8* %"$dyndisp_table_299_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_299" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_299_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_300" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_299", i32 0
  %"$dyndisp_pcast_301" = bitcast { i8*, i8* }* %"$dyndisp_gep_300" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_5_env_113"*)* @"$fundef_5" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_301", align 8
  %"$dyndisp_gep_302" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_299", i32 2
  %"$dyndisp_pcast_303" = bitcast { i8*, i8* }* %"$dyndisp_gep_302" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_13_env_109"*)* @"$fundef_13" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_303", align 8
  store { i8*, i8* }* %"$dyndisp_table_299", { i8*, i8* }** %tf, align 8, !dbg !37
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_291"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_291"
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %tf1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_310" = icmp ugt i64 1, %"$gasrem_309"
  br i1 %"$gascmp_310", label %"$out_of_gas_311", label %"$have_gas_312"

"$out_of_gas_311":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_312"

"$have_gas_312":                                  ; preds = %"$out_of_gas_311", %"$have_gas_307"
  %"$consume_313" = sub i64 %"$gasrem_309", 1
  store i64 %"$consume_313", i64* @_gasrem, align 8
  %"$$fundef_27_envp_314_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_27_envp_314_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_314_load", i64 8)
  %"$$fundef_27_envp_314" = bitcast i8* %"$$fundef_27_envp_314_salloc" to %"$$fundef_27_env_102"*
  %"$$fundef_27_env_voidp_316" = bitcast %"$$fundef_27_env_102"* %"$$fundef_27_envp_314" to i8*
  %"$$fundef_27_cloval_317" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_27_env_102"*)* @"$fundef_27" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_316", 1
  %"$$fundef_27_env_tf_318" = getelementptr inbounds %"$$fundef_27_env_102", %"$$fundef_27_env_102"* %"$$fundef_27_envp_314", i32 0, i32 0
  %"$tf_319" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_319", { i8*, i8* }** %"$$fundef_27_env_tf_318", align 8
  %"$dyndisp_table_320_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_320_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_320_salloc_load", i64 64)
  %"$dyndisp_table_320_salloc" = bitcast i8* %"$dyndisp_table_320_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_320" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_320_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_321" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_320", i32 0
  %"$dyndisp_pcast_322" = bitcast { i8*, i8* }* %"$dyndisp_gep_321" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_27_cloval_317", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_322", align 8
  store { i8*, i8* }* %"$dyndisp_table_320", { i8*, i8* }** %tf1, align 8, !dbg !38
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 1, %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %"$have_gas_312"
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %"$have_gas_312"
  %"$consume_327" = sub i64 %"$gasrem_323", 1
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %t1 = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 1, %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %"$have_gas_326"
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %"$have_gas_326"
  %"$consume_332" = sub i64 %"$gasrem_328", 1
  store i64 %"$consume_332", i64* @_gasrem, align 8
  %"$tf1_333" = load { i8*, i8* }*, { i8*, i8* }** %tf1, align 8
  %"$tf1_334" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_333", i32 0
  %"$tf1_335" = bitcast { i8*, i8* }* %"$tf1_334" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_336" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_335", align 8
  %"$tf1_fptr_337" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_336", 0
  %"$tf1_envptr_338" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_336", 1
  %"$tf1_call_339" = call { i8*, i8* }* %"$tf1_fptr_337"(i8* %"$tf1_envptr_338"), !dbg !39
  %"$tf1_340" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_339", i32 1
  %"$tf1_341" = bitcast { i8*, i8* }* %"$tf1_340" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf1_342" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf1_341", align 8
  %"$tf1_fptr_343" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_342", 0
  %"$tf1_envptr_344" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_342", 1
  %"$tf1_call_345" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_fptr_343"(i8* %"$tf1_envptr_344"), !dbg !39
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_call_345", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8, !dbg !40
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 1, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %"$have_gas_331"
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %"$have_gas_331"
  %"$consume_350" = sub i64 %"$gasrem_346", 1
  store i64 %"$consume_350", i64* @_gasrem, align 8
  %t3 = alloca { i8*, i8* }*, align 8
  %"$gasrem_351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_352" = icmp ugt i64 1, %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %"$have_gas_349"
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %"$have_gas_349"
  %"$consume_355" = sub i64 %"$gasrem_351", 1
  store i64 %"$consume_355", i64* @_gasrem, align 8
  %"$tf_356" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_357" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_356", i32 2
  %"$tf_358" = bitcast { i8*, i8* }* %"$tf_357" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_359" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_358", align 8
  %"$tf_fptr_360" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_359", 0
  %"$tf_envptr_361" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_359", 1
  %"$tf_call_362" = call { i8*, i8* }* %"$tf_fptr_360"(i8* %"$tf_envptr_361"), !dbg !41
  store { i8*, i8* }* %"$tf_call_362", { i8*, i8* }** %t3, align 8, !dbg !42
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 1, %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %"$have_gas_354"
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %"$have_gas_354"
  %"$consume_367" = sub i64 %"$gasrem_363", 1
  store i64 %"$consume_367", i64* @_gasrem, align 8
  %t4 = alloca { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, align 8
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 1, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$have_gas_366"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$have_gas_366"
  %"$consume_372" = sub i64 %"$gasrem_368", 1
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %"$t3_373" = load { i8*, i8* }*, { i8*, i8* }** %t3, align 8
  %"$t3_374" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t3_373", i32 3
  %"$t3_375" = bitcast { i8*, i8* }* %"$t3_374" to { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  %"$t3_376" = load { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }, { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$t3_375", align 8
  %"$t3_fptr_377" = extractvalue { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } %"$t3_376", 0
  %"$t3_envptr_378" = extractvalue { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } %"$t3_376", 1
  %"$t3_call_379" = call { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t3_fptr_377"(i8* %"$t3_envptr_378"), !dbg !43
  store { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t3_call_379", { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %t4, align 8, !dbg !44
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 1, %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$have_gas_371"
  %"$consume_384" = sub i64 %"$gasrem_380", 1
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %uint32_one = alloca %Uint32, align 8
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 1, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$have_gas_383"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$have_gas_383"
  %"$consume_389" = sub i64 %"$gasrem_385", 1
  store i64 %"$consume_389", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %uint32_one, align 4, !dbg !45
  %"$gasrem_390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_391" = icmp ugt i64 1, %"$gasrem_390"
  br i1 %"$gascmp_391", label %"$out_of_gas_392", label %"$have_gas_393"

"$out_of_gas_392":                                ; preds = %"$have_gas_388"
  call void @_out_of_gas()
  br label %"$have_gas_393"

"$have_gas_393":                                  ; preds = %"$out_of_gas_392", %"$have_gas_388"
  %"$consume_394" = sub i64 %"$gasrem_390", 1
  store i64 %"$consume_394", i64* @_gasrem, align 8
  %uint64_two = alloca %Uint64, align 8
  %"$gasrem_395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_396" = icmp ugt i64 1, %"$gasrem_395"
  br i1 %"$gascmp_396", label %"$out_of_gas_397", label %"$have_gas_398"

"$out_of_gas_397":                                ; preds = %"$have_gas_393"
  call void @_out_of_gas()
  br label %"$have_gas_398"

"$have_gas_398":                                  ; preds = %"$out_of_gas_397", %"$have_gas_393"
  %"$consume_399" = sub i64 %"$gasrem_395", 1
  store i64 %"$consume_399", i64* @_gasrem, align 8
  store %Uint64 { i64 2 }, %Uint64* %uint64_two, align 8, !dbg !46
  %"$gasrem_400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_401" = icmp ugt i64 1, %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %"$have_gas_398"
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %"$have_gas_398"
  %"$consume_404" = sub i64 %"$gasrem_400", 1
  store i64 %"$consume_404", i64* @_gasrem, align 8
  %addr_bystr1 = alloca [1 x i8], align 1
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_403"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_403"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  store [1 x i8] c"\AA", [1 x i8]* %addr_bystr1, align 1, !dbg !47
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$have_gas_408"
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  %addr_bystr2 = alloca [2 x i8], align 1
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 1, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$have_gas_413"
  %"$consume_419" = sub i64 %"$gasrem_415", 1
  store i64 %"$consume_419", i64* @_gasrem, align 8
  store [2 x i8] c"\AA\BB", [2 x i8]* %addr_bystr2, align 1, !dbg !48
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_418"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_418"
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem, align 8
  %p1 = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 1, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_423"
  %"$consume_429" = sub i64 %"$gasrem_425", 1
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %"$t1_0" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$t1_430" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8
  %"$t1_fptr_431" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_430", 0
  %"$t1_envptr_432" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_430", 1
  %"$uint32_one_433" = load %Uint32, %Uint32* %uint32_one, align 4
  %"$t1_call_434" = call { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_fptr_431"(i8* %"$t1_envptr_432", %Uint32 %"$uint32_one_433"), !dbg !49
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_call_434", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0", align 8, !dbg !49
  %"$t1_1" = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$$t1_0_435" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0", align 8
  %"$$t1_0_fptr_436" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_435", 0
  %"$$t1_0_envptr_437" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_435", 1
  %"$uint64_two_438" = load %Uint64, %Uint64* %uint64_two, align 8
  %"$$t1_0_call_439" = call %TName_Pair_Uint32_Uint64* %"$$t1_0_fptr_436"(i8* %"$$t1_0_envptr_437", %Uint64 %"$uint64_two_438"), !dbg !49
  store %TName_Pair_Uint32_Uint64* %"$$t1_0_call_439", %TName_Pair_Uint32_Uint64** %"$t1_1", align 8, !dbg !49
  %"$$t1_1_440" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$t1_1", align 8
  store %TName_Pair_Uint32_Uint64* %"$$t1_1_440", %TName_Pair_Uint32_Uint64** %p1, align 8, !dbg !49
  %"$gasrem_441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_442" = icmp ugt i64 1, %"$gasrem_441"
  br i1 %"$gascmp_442", label %"$out_of_gas_443", label %"$have_gas_444"

"$out_of_gas_443":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_444"

"$have_gas_444":                                  ; preds = %"$out_of_gas_443", %"$have_gas_428"
  %"$consume_445" = sub i64 %"$gasrem_441", 1
  store i64 %"$consume_445", i64* @_gasrem, align 8
  %p2 = alloca %TName_Pair_ByStr1_ByStr2*, align 8
  %"$gasrem_446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_447" = icmp ugt i64 1, %"$gasrem_446"
  br i1 %"$gascmp_447", label %"$out_of_gas_448", label %"$have_gas_449"

"$out_of_gas_448":                                ; preds = %"$have_gas_444"
  call void @_out_of_gas()
  br label %"$have_gas_449"

"$have_gas_449":                                  ; preds = %"$out_of_gas_448", %"$have_gas_444"
  %"$consume_450" = sub i64 %"$gasrem_446", 1
  store i64 %"$consume_450", i64* @_gasrem, align 8
  %"$t4_2" = alloca { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, align 8
  %"$t4_451" = load { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %t4, align 8
  %"$t4_fptr_452" = extractvalue { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t4_451", 0
  %"$t4_envptr_453" = extractvalue { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t4_451", 1
  %"$addr_bystr1_454" = load [1 x i8], [1 x i8]* %addr_bystr1, align 1
  %"$t4_call_455" = call { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$t4_fptr_452"(i8* %"$t4_envptr_453", [1 x i8] %"$addr_bystr1_454"), !dbg !50
  store { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$t4_call_455", { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$t4_2", align 8, !dbg !50
  %"$t4_3" = alloca %TName_Pair_ByStr1_ByStr2*, align 8
  %"$$t4_2_456" = load { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$t4_2", align 8
  %"$$t4_2_fptr_457" = extractvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$t4_2_456", 0
  %"$$t4_2_envptr_458" = extractvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$t4_2_456", 1
  %"$addr_bystr2_459" = load [2 x i8], [2 x i8]* %addr_bystr2, align 1
  %"$$t4_2_call_460" = call %TName_Pair_ByStr1_ByStr2* %"$$t4_2_fptr_457"(i8* %"$$t4_2_envptr_458", [2 x i8] %"$addr_bystr2_459"), !dbg !50
  store %TName_Pair_ByStr1_ByStr2* %"$$t4_2_call_460", %TName_Pair_ByStr1_ByStr2** %"$t4_3", align 8, !dbg !50
  %"$$t4_3_461" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %"$t4_3", align 8
  store %TName_Pair_ByStr1_ByStr2* %"$$t4_3_461", %TName_Pair_ByStr1_ByStr2** %p2, align 8, !dbg !50
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 1, %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %"$have_gas_449"
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %"$have_gas_449"
  %"$consume_466" = sub i64 %"$gasrem_462", 1
  store i64 %"$consume_466", i64* @_gasrem, align 8
  %"$p1_467" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %p1, align 8
  %"$p2_468" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %p2, align 8
  %"$adtval_469_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_469_salloc" = call i8* @_salloc(i8* %"$adtval_469_load", i64 17)
  %"$adtval_469" = bitcast i8* %"$adtval_469_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  %"$adtgep_470" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_469", i32 0, i32 0
  store i8 0, i8* %"$adtgep_470", align 1
  %"$adtgep_471" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_469", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$p1_467", %TName_Pair_Uint32_Uint64** %"$adtgep_471", align 8
  %"$adtgep_472" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_469", i32 0, i32 2
  store %TName_Pair_ByStr1_ByStr2* %"$p2_468", %TName_Pair_ByStr1_ByStr2** %"$adtgep_472", align 8
  %"$adtptr_473" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_469" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtptr_473", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_4", align 8, !dbg !51
  %"$$expr_4_474" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_4", align 8
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$$expr_4_474"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_475" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_476" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$exprval_475" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_67", i8* %"$memvoidcast_476")
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
