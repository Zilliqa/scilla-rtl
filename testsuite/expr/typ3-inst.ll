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
%"$TyDescrTy_ADTTyp_57" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_56"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_56" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_58"**, %"$TyDescrTy_ADTTyp_57"* }
%"$TyDescrTy_ADTTyp_Constr_58" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Pair_Uint32_Uint64 = type { i8, %CName_Pair_Uint32_Uint64* }
%CName_Pair_Uint32_Uint64 = type <{ i8, %Uint32, %Uint64 }>
%Uint64 = type { i64 }
%Uint32 = type { i32 }
%"$$fundef_29_env_91" = type { { i8*, i8* }* }
%"$$fundef_27_env_92" = type { { i8*, i8* }* }
%TName_Pair_ByStr1_ByStr2 = type { i8, %CName_Pair_ByStr1_ByStr2* }
%CName_Pair_ByStr1_ByStr2 = type <{ i8, [1 x i8], [2 x i8] }>
%"$$fundef_25_env_93" = type { [1 x i8] }
%"$$fundef_23_env_94" = type {}
%"$$fundef_21_env_95" = type {}
%TName_Pair_ByStr1_Uint64 = type { i8, %CName_Pair_ByStr1_Uint64* }
%CName_Pair_ByStr1_Uint64 = type <{ i8, [1 x i8], %Uint64 }>
%"$$fundef_19_env_96" = type { [1 x i8] }
%"$$fundef_17_env_97" = type {}
%"$$fundef_15_env_98" = type {}
%"$$fundef_13_env_99" = type {}
%"$$fundef_11_env_100" = type { %Uint32 }
%"$$fundef_9_env_101" = type {}
%"$$fundef_7_env_102" = type {}
%"$$fundef_5_env_103" = type {}
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
@"$TyDescr_Bystr_Prim_50" = global %"$TyDescrTy_PrimTyp_31" { i32 7, i32 0 }
@"$TyDescr_Bystr_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bystr_Prim_50" to i8*) }
@"$TyDescr_Bystr2_Prim_52" = global %"$TyDescrTy_PrimTyp_31" { i32 8, i32 2 }
@"$TyDescr_Bystr2_53" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bystr2_Prim_52" to i8*) }
@"$TyDescr_Bystr1_Prim_54" = global %"$TyDescrTy_PrimTyp_31" { i32 8, i32 1 }
@"$TyDescr_Bystr1_55" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bystr1_Prim_54" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_59" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_56"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_70" to i8*) }
@"$TyDescr_ADT_Pair_ByStr1_ByStr2_60" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_56"* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_76" to i8*) }
@"$TyDescr_ADT_Pair_ByStr1_Uint64_61" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_56"* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_82" to i8*) }
@"$TyDescr_ADT_Pair_Uint32_Uint64_62" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_56"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_88" to i8*) }
@"$TyDescr_Pair_ADTTyp_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_90", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 4, %"$TyDescrTy_ADTTyp_Specl_56"** getelementptr inbounds ([4 x %"$TyDescrTy_ADTTyp_Specl_56"*], [4 x %"$TyDescrTy_ADTTyp_Specl_56"*]* @"$TyDescr_Pair_ADTTyp_m_specls_89", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_Constr_m_args_65" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_62", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr1_ByStr2_60"]
@"$TyDescr_ADT_Pair_66" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Constr_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_58" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_66", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_Constr_m_args_65", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_constrs_68" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_58"*] [%"$TyDescrTy_ADTTyp_Constr_58"* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Constr_67"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_TArgs_69" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_62", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr1_ByStr2_60"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_56" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_TArgs_69", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_58"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_58"*], [1 x %"$TyDescrTy_ADTTyp_Constr_58"*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_constrs_68", i32 0, i32 0), %"$TyDescrTy_ADTTyp_57"* @"$TyDescr_Pair_ADTTyp_64" }
@"$TyDescr_Pair_Pair_ByStr1_ByStr2_Constr_m_args_71" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_55", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_53"]
@"$TyDescr_ADT_Pair_72" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr1_ByStr2_ADTTyp_Constr_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_58" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_72", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr1_ByStr2_Constr_m_args_71", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_constrs_74" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_58"*] [%"$TyDescrTy_ADTTyp_Constr_58"* @"$TyDescr_Pair_Pair_ByStr1_ByStr2_ADTTyp_Constr_73"]
@"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_TArgs_75" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_55", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_53"]
@"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_56" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_TArgs_75", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_58"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_58"*], [1 x %"$TyDescrTy_ADTTyp_Constr_58"*]* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_constrs_74", i32 0, i32 0), %"$TyDescrTy_ADTTyp_57"* @"$TyDescr_Pair_ADTTyp_64" }
@"$TyDescr_Pair_Pair_ByStr1_Uint64_Constr_m_args_77" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_55", %_TyDescrTy_Typ* @"$TyDescr_Uint64_39"]
@"$TyDescr_ADT_Pair_78" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr1_Uint64_ADTTyp_Constr_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_58" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_78", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr1_Uint64_Constr_m_args_77", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_constrs_80" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_58"*] [%"$TyDescrTy_ADTTyp_Constr_58"* @"$TyDescr_Pair_Pair_ByStr1_Uint64_ADTTyp_Constr_79"]
@"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_TArgs_81" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_55", %_TyDescrTy_Typ* @"$TyDescr_Uint64_39"]
@"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_56" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_TArgs_81", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_58"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_58"*], [1 x %"$TyDescrTy_ADTTyp_Constr_58"*]* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_constrs_80", i32 0, i32 0), %"$TyDescrTy_ADTTyp_57"* @"$TyDescr_Pair_ADTTyp_64" }
@"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_83" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_35", %_TyDescrTy_Typ* @"$TyDescr_Uint64_39"]
@"$TyDescr_ADT_Pair_84" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_85" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_58" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_84", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_83", i32 0, i32 0) }
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_86" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_58"*] [%"$TyDescrTy_ADTTyp_Constr_58"* @"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_85"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_87" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_35", %_TyDescrTy_Typ* @"$TyDescr_Uint64_39"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_88" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_56" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_87", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_58"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_58"*], [1 x %"$TyDescrTy_ADTTyp_Constr_58"*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_86", i32 0, i32 0), %"$TyDescrTy_ADTTyp_57"* @"$TyDescr_Pair_ADTTyp_64" }
@"$TyDescr_Pair_ADTTyp_m_specls_89" = unnamed_addr constant [4 x %"$TyDescrTy_ADTTyp_Specl_56"*] [%"$TyDescrTy_ADTTyp_Specl_56"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_70", %"$TyDescrTy_ADTTyp_Specl_56"* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_76", %"$TyDescrTy_ADTTyp_Specl_56"* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_82", %"$TyDescrTy_ADTTyp_Specl_56"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_88"]
@"$TyDescr_ADT_Pair_90" = unnamed_addr constant [4 x i8] c"Pair"
@"$dyndisp_107" = global [4 x { i8*, i8* }] zeroinitializer
@"$dyndisp_134" = global [4 x { i8*, i8* }] zeroinitializer
@"$dyndisp_182" = global [4 x { i8*, i8* }] zeroinitializer
@"$dyndisp_207" = global [4 x { i8*, i8* }] zeroinitializer
@"$dyndisp_214" = global [4 x { i8*, i8* }] zeroinitializer

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_29"(%"$$fundef_29_env_91"* %0) {
entry:
  %"$$fundef_29_env_tf_184" = getelementptr inbounds %"$$fundef_29_env_91", %"$$fundef_29_env_91"* %0, i32 0, i32 0
  %"$tf_envload_185" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_29_env_tf_184"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_185", { i8*, i8* }** %tf
  %"$retval_30" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$tf_186" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_187" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_186", i32 0
  %"$tf_188" = bitcast { i8*, i8* }* %"$tf_187" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_189" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_188"
  %"$tf_fptr_190" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_189", 0
  %"$tf_envptr_191" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_189", 1
  %"$tf_call_192" = call { i8*, i8* }* %"$tf_fptr_190"(i8* %"$tf_envptr_191")
  %"$tf_193" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_192", i32 1
  %"$tf_194" = bitcast { i8*, i8* }* %"$tf_193" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_195" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_194"
  %"$tf_fptr_196" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_195", 0
  %"$tf_envptr_197" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_195", 1
  %"$tf_call_198" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_196"(i8* %"$tf_envptr_197")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_198", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_30"
  %"$$retval_30_199" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_30"
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_30_199"
}

define internal { i8*, i8* }* @"$fundef_27"(%"$$fundef_27_env_92"* %0) {
entry:
  %"$$fundef_27_env_tf_174" = getelementptr inbounds %"$$fundef_27_env_92", %"$$fundef_27_env_92"* %0, i32 0, i32 0
  %"$tf_envload_175" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_27_env_tf_174"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_175", { i8*, i8* }** %tf
  %"$retval_28" = alloca { i8*, i8* }*
  %"$$fundef_29_envp_176_load" = load i8*, i8** @_execptr
  %"$$fundef_29_envp_176_salloc" = call i8* @_salloc(i8* %"$$fundef_29_envp_176_load", i64 8)
  %"$$fundef_29_envp_176" = bitcast i8* %"$$fundef_29_envp_176_salloc" to %"$$fundef_29_env_91"*
  %"$$fundef_29_env_voidp_178" = bitcast %"$$fundef_29_env_91"* %"$$fundef_29_envp_176" to i8*
  %"$$fundef_29_cloval_179" = insertvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_29_env_91"*)* @"$fundef_29" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_29_env_voidp_178", 1
  %"$$fundef_29_env_tf_180" = getelementptr inbounds %"$$fundef_29_env_91", %"$$fundef_29_env_91"* %"$$fundef_29_envp_176", i32 0, i32 0
  %"$tf_181" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_181", { i8*, i8* }** %"$$fundef_29_env_tf_180"
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_29_cloval_179", { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_182", i32 0, i32 1) to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_182", i32 0, i32 0), { i8*, i8* }** %"$retval_28"
  %"$$retval_28_183" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_28"
  ret { i8*, i8* }* %"$$retval_28_183"
}

define internal %TName_Pair_ByStr1_ByStr2* @"$fundef_25"(%"$$fundef_25_env_93"* %0, [2 x i8] %1) {
entry:
  %"$$fundef_25_env_a_165" = getelementptr inbounds %"$$fundef_25_env_93", %"$$fundef_25_env_93"* %0, i32 0, i32 0
  %"$a_envload_166" = load [1 x i8], [1 x i8]* %"$$fundef_25_env_a_165"
  %a = alloca [1 x i8]
  store [1 x i8] %"$a_envload_166", [1 x i8]* %a
  %"$retval_26" = alloca %TName_Pair_ByStr1_ByStr2*
  %"$a_167" = load [1 x i8], [1 x i8]* %a
  %"$adtval_168_load" = load i8*, i8** @_execptr
  %"$adtval_168_salloc" = call i8* @_salloc(i8* %"$adtval_168_load", i64 4)
  %"$adtval_168" = bitcast i8* %"$adtval_168_salloc" to %CName_Pair_ByStr1_ByStr2*
  %"$adtgep_169" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_168", i32 0, i32 0
  store i8 0, i8* %"$adtgep_169"
  %"$adtgep_170" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_168", i32 0, i32 1
  store [1 x i8] %"$a_167", [1 x i8]* %"$adtgep_170"
  %"$adtgep_171" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_168", i32 0, i32 2
  store [2 x i8] %1, [2 x i8]* %"$adtgep_171"
  %"$adtptr_172" = bitcast %CName_Pair_ByStr1_ByStr2* %"$adtval_168" to %TName_Pair_ByStr1_ByStr2*
  store %TName_Pair_ByStr1_ByStr2* %"$adtptr_172", %TName_Pair_ByStr1_ByStr2** %"$retval_26"
  %"$$retval_26_173" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %"$retval_26"
  ret %TName_Pair_ByStr1_ByStr2* %"$$retval_26_173"
}

define internal { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } @"$fundef_23"(%"$$fundef_23_env_94"* %0, [1 x i8] %1) {
entry:
  %"$retval_24" = alloca { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }
  %"$$fundef_25_envp_159_load" = load i8*, i8** @_execptr
  %"$$fundef_25_envp_159_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_159_load", i64 1)
  %"$$fundef_25_envp_159" = bitcast i8* %"$$fundef_25_envp_159_salloc" to %"$$fundef_25_env_93"*
  %"$$fundef_25_env_voidp_161" = bitcast %"$$fundef_25_env_93"* %"$$fundef_25_envp_159" to i8*
  %"$$fundef_25_cloval_162" = insertvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])* bitcast (%TName_Pair_ByStr1_ByStr2* (%"$$fundef_25_env_93"*, [2 x i8])* @"$fundef_25" to %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*), i8* undef }, i8* %"$$fundef_25_env_voidp_161", 1
  %"$$fundef_25_env_a_163" = getelementptr inbounds %"$$fundef_25_env_93", %"$$fundef_25_env_93"* %"$$fundef_25_envp_159", i32 0, i32 0
  store [1 x i8] %1, [1 x i8]* %"$$fundef_25_env_a_163"
  store { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$fundef_25_cloval_162", { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$retval_24"
  %"$$retval_24_164" = load { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$retval_24"
  ret { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$retval_24_164"
}

define internal { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } @"$fundef_21"(%"$$fundef_21_env_95"* %0) {
entry:
  %"$retval_22" = alloca { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }
  store { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])* bitcast ({ %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (%"$$fundef_23_env_94"*, [1 x i8])* @"$fundef_23" to { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*), i8* null }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_22"
  %"$$retval_22_158" = load { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_22"
  ret { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$$retval_22_158"
}

define internal %TName_Pair_ByStr1_Uint64* @"$fundef_19"(%"$$fundef_19_env_96"* %0, %Uint64 %1) {
entry:
  %"$$fundef_19_env_a_146" = getelementptr inbounds %"$$fundef_19_env_96", %"$$fundef_19_env_96"* %0, i32 0, i32 0
  %"$a_envload_147" = load [1 x i8], [1 x i8]* %"$$fundef_19_env_a_146"
  %a = alloca [1 x i8]
  store [1 x i8] %"$a_envload_147", [1 x i8]* %a
  %"$retval_20" = alloca %TName_Pair_ByStr1_Uint64*
  %"$a_148" = load [1 x i8], [1 x i8]* %a
  %"$adtval_149_load" = load i8*, i8** @_execptr
  %"$adtval_149_salloc" = call i8* @_salloc(i8* %"$adtval_149_load", i64 10)
  %"$adtval_149" = bitcast i8* %"$adtval_149_salloc" to %CName_Pair_ByStr1_Uint64*
  %"$adtgep_150" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_149", i32 0, i32 0
  store i8 0, i8* %"$adtgep_150"
  %"$adtgep_151" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_149", i32 0, i32 1
  store [1 x i8] %"$a_148", [1 x i8]* %"$adtgep_151"
  %"$adtgep_152" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_149", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_152"
  %"$adtptr_153" = bitcast %CName_Pair_ByStr1_Uint64* %"$adtval_149" to %TName_Pair_ByStr1_Uint64*
  store %TName_Pair_ByStr1_Uint64* %"$adtptr_153", %TName_Pair_ByStr1_Uint64** %"$retval_20"
  %"$$retval_20_154" = load %TName_Pair_ByStr1_Uint64*, %TName_Pair_ByStr1_Uint64** %"$retval_20"
  ret %TName_Pair_ByStr1_Uint64* %"$$retval_20_154"
}

define internal { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_17"(%"$$fundef_17_env_97"* %0, [1 x i8] %1) {
entry:
  %"$retval_18" = alloca { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }
  %"$$fundef_19_envp_140_load" = load i8*, i8** @_execptr
  %"$$fundef_19_envp_140_salloc" = call i8* @_salloc(i8* %"$$fundef_19_envp_140_load", i64 1)
  %"$$fundef_19_envp_140" = bitcast i8* %"$$fundef_19_envp_140_salloc" to %"$$fundef_19_env_96"*
  %"$$fundef_19_env_voidp_142" = bitcast %"$$fundef_19_env_96"* %"$$fundef_19_envp_140" to i8*
  %"$$fundef_19_cloval_143" = insertvalue { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_ByStr1_Uint64* (%"$$fundef_19_env_96"*, %Uint64)* @"$fundef_19" to %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_19_env_voidp_142", 1
  %"$$fundef_19_env_a_144" = getelementptr inbounds %"$$fundef_19_env_96", %"$$fundef_19_env_96"* %"$$fundef_19_envp_140", i32 0, i32 0
  store [1 x i8] %1, [1 x i8]* %"$$fundef_19_env_a_144"
  store { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_19_cloval_143", { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_18"
  %"$$retval_18_145" = load { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_18"
  ret { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_18_145"
}

define internal { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } @"$fundef_15"(%"$$fundef_15_env_98"* %0) {
entry:
  %"$retval_16" = alloca { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }
  store { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])* bitcast ({ %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_17_env_97"*, [1 x i8])* @"$fundef_17" to { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*), i8* null }, { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_16"
  %"$$retval_16_139" = load { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_16"
  ret { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } %"$$retval_16_139"
}

define internal { i8*, i8* }* @"$fundef_13"(%"$$fundef_13_env_99"* %0) {
entry:
  %"$retval_14" = alloca { i8*, i8* }*
  store { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)* bitcast ({ { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (%"$$fundef_15_env_98"*)* @"$fundef_15" to { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_134", i32 0, i32 1) to { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*)
  store { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)* bitcast ({ { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (%"$$fundef_21_env_95"*)* @"$fundef_21" to { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_134", i32 0, i32 3) to { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_134", i32 0, i32 0), { i8*, i8* }** %"$retval_14"
  %"$$retval_14_135" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_14"
  ret { i8*, i8* }* %"$$retval_14_135"
}

define internal %TName_Pair_Uint32_Uint64* @"$fundef_11"(%"$$fundef_11_env_100"* %0, %Uint64 %1) {
entry:
  %"$$fundef_11_env_a_119" = getelementptr inbounds %"$$fundef_11_env_100", %"$$fundef_11_env_100"* %0, i32 0, i32 0
  %"$a_envload_120" = load %Uint32, %Uint32* %"$$fundef_11_env_a_119"
  %a = alloca %Uint32
  store %Uint32 %"$a_envload_120", %Uint32* %a
  %"$retval_12" = alloca %TName_Pair_Uint32_Uint64*
  %"$a_121" = load %Uint32, %Uint32* %a
  %"$adtval_122_load" = load i8*, i8** @_execptr
  %"$adtval_122_salloc" = call i8* @_salloc(i8* %"$adtval_122_load", i64 13)
  %"$adtval_122" = bitcast i8* %"$adtval_122_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_123" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_122", i32 0, i32 0
  store i8 0, i8* %"$adtgep_123"
  %"$adtgep_124" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_122", i32 0, i32 1
  store %Uint32 %"$a_121", %Uint32* %"$adtgep_124"
  %"$adtgep_125" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_122", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_125"
  %"$adtptr_126" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_122" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_126", %TName_Pair_Uint32_Uint64** %"$retval_12"
  %"$$retval_12_127" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$retval_12"
  ret %TName_Pair_Uint32_Uint64* %"$$retval_12_127"
}

define internal { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_9"(%"$$fundef_9_env_101"* %0, %Uint32 %1) {
entry:
  %"$retval_10" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }
  %"$$fundef_11_envp_113_load" = load i8*, i8** @_execptr
  %"$$fundef_11_envp_113_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_113_load", i64 4)
  %"$$fundef_11_envp_113" = bitcast i8* %"$$fundef_11_envp_113_salloc" to %"$$fundef_11_env_100"*
  %"$$fundef_11_env_voidp_115" = bitcast %"$$fundef_11_env_100"* %"$$fundef_11_envp_113" to i8*
  %"$$fundef_11_cloval_116" = insertvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_Uint32_Uint64* (%"$$fundef_11_env_100"*, %Uint64)* @"$fundef_11" to %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_11_env_voidp_115", 1
  %"$$fundef_11_env_a_117" = getelementptr inbounds %"$$fundef_11_env_100", %"$$fundef_11_env_100"* %"$$fundef_11_envp_113", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_11_env_a_117"
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_11_cloval_116", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10"
  %"$$retval_10_118" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10"
  ret { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_10_118"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_7"(%"$$fundef_7_env_102"* %0) {
entry:
  %"$retval_8" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)* bitcast ({ %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_9_env_101"*, %Uint32)* @"$fundef_9" to { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*), i8* null }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8"
  %"$$retval_8_112" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8"
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_8_112"
}

define internal { i8*, i8* }* @"$fundef_5"(%"$$fundef_5_env_103"* %0) {
entry:
  %"$retval_6" = alloca { i8*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_7_env_102"*)* @"$fundef_7" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_107", i32 0, i32 1) to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_107", i32 0, i32 0), { i8*, i8* }** %"$retval_6"
  %"$$retval_6_108" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_6"
  ret { i8*, i8* }* %"$$retval_6_108"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* @"$scilla_expr_200"(i8* %0) {
entry:
  %"$expr_4" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  %tf = alloca { i8*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_5_env_103"*)* @"$fundef_5" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* bitcast ([4 x { i8*, i8* }]* @"$dyndisp_207" to { { i8*, i8* }* (i8*)*, i8* }*)
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_13_env_99"*)* @"$fundef_13" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_207", i32 0, i32 2) to { { i8*, i8* }* (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_207", i32 0, i32 0), { i8*, i8* }** %tf
  %tf1 = alloca { i8*, i8* }*
  %"$$fundef_27_envp_208_load" = load i8*, i8** @_execptr
  %"$$fundef_27_envp_208_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_208_load", i64 8)
  %"$$fundef_27_envp_208" = bitcast i8* %"$$fundef_27_envp_208_salloc" to %"$$fundef_27_env_92"*
  %"$$fundef_27_env_voidp_210" = bitcast %"$$fundef_27_env_92"* %"$$fundef_27_envp_208" to i8*
  %"$$fundef_27_cloval_211" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_27_env_92"*)* @"$fundef_27" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_210", 1
  %"$$fundef_27_env_tf_212" = getelementptr inbounds %"$$fundef_27_env_92", %"$$fundef_27_env_92"* %"$$fundef_27_envp_208", i32 0, i32 0
  %"$tf_213" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_213", { i8*, i8* }** %"$$fundef_27_env_tf_212"
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_27_cloval_211", { { i8*, i8* }* (i8*)*, i8* }* bitcast ([4 x { i8*, i8* }]* @"$dyndisp_214" to { { i8*, i8* }* (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_214", i32 0, i32 0), { i8*, i8* }** %tf1
  %t1 = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$tf1_215" = load { i8*, i8* }*, { i8*, i8* }** %tf1
  %"$tf1_216" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_215", i32 0
  %"$tf1_217" = bitcast { i8*, i8* }* %"$tf1_216" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_218" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_217"
  %"$tf1_fptr_219" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_218", 0
  %"$tf1_envptr_220" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_218", 1
  %"$tf1_call_221" = call { i8*, i8* }* %"$tf1_fptr_219"(i8* %"$tf1_envptr_220")
  %"$tf1_222" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_221", i32 1
  %"$tf1_223" = bitcast { i8*, i8* }* %"$tf1_222" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf1_224" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf1_223"
  %"$tf1_fptr_225" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_224", 0
  %"$tf1_envptr_226" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_224", 1
  %"$tf1_call_227" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_fptr_225"(i8* %"$tf1_envptr_226")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_call_227", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1
  %t3 = alloca { i8*, i8* }*
  %"$tf_228" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_229" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_228", i32 2
  %"$tf_230" = bitcast { i8*, i8* }* %"$tf_229" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_231" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_230"
  %"$tf_fptr_232" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_231", 0
  %"$tf_envptr_233" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_231", 1
  %"$tf_call_234" = call { i8*, i8* }* %"$tf_fptr_232"(i8* %"$tf_envptr_233")
  store { i8*, i8* }* %"$tf_call_234", { i8*, i8* }** %t3
  %t4 = alloca { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }
  %"$t3_235" = load { i8*, i8* }*, { i8*, i8* }** %t3
  %"$t3_236" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t3_235", i32 3
  %"$t3_237" = bitcast { i8*, i8* }* %"$t3_236" to { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  %"$t3_238" = load { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }, { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$t3_237"
  %"$t3_fptr_239" = extractvalue { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } %"$t3_238", 0
  %"$t3_envptr_240" = extractvalue { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } %"$t3_238", 1
  %"$t3_call_241" = call { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t3_fptr_239"(i8* %"$t3_envptr_240")
  store { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t3_call_241", { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %t4
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
  %"$t1_242" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1
  %"$t1_fptr_243" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_242", 0
  %"$t1_envptr_244" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_242", 1
  %"$uint32_one_245" = load %Uint32, %Uint32* %uint32_one
  %"$t1_call_246" = call { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_fptr_243"(i8* %"$t1_envptr_244", %Uint32 %"$uint32_one_245")
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_call_246", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0"
  %"$t1_1" = alloca %TName_Pair_Uint32_Uint64*
  %"$$t1_0_247" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0"
  %"$$t1_0_fptr_248" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_247", 0
  %"$$t1_0_envptr_249" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_247", 1
  %"$uint64_two_250" = load %Uint64, %Uint64* %uint64_two
  %"$$t1_0_call_251" = call %TName_Pair_Uint32_Uint64* %"$$t1_0_fptr_248"(i8* %"$$t1_0_envptr_249", %Uint64 %"$uint64_two_250")
  store %TName_Pair_Uint32_Uint64* %"$$t1_0_call_251", %TName_Pair_Uint32_Uint64** %"$t1_1"
  %"$$t1_1_252" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$t1_1"
  store %TName_Pair_Uint32_Uint64* %"$$t1_1_252", %TName_Pair_Uint32_Uint64** %p1
  %p2 = alloca %TName_Pair_ByStr1_ByStr2*
  %"$t4_2" = alloca { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }
  %"$t4_253" = load { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %t4
  %"$t4_fptr_254" = extractvalue { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t4_253", 0
  %"$t4_envptr_255" = extractvalue { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t4_253", 1
  %"$addr_bystr1_256" = load [1 x i8], [1 x i8]* %addr_bystr1
  %"$t4_call_257" = call { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$t4_fptr_254"(i8* %"$t4_envptr_255", [1 x i8] %"$addr_bystr1_256")
  store { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$t4_call_257", { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$t4_2"
  %"$t4_3" = alloca %TName_Pair_ByStr1_ByStr2*
  %"$$t4_2_258" = load { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$t4_2"
  %"$$t4_2_fptr_259" = extractvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$t4_2_258", 0
  %"$$t4_2_envptr_260" = extractvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$t4_2_258", 1
  %"$addr_bystr2_261" = load [2 x i8], [2 x i8]* %addr_bystr2
  %"$$t4_2_call_262" = call %TName_Pair_ByStr1_ByStr2* %"$$t4_2_fptr_259"(i8* %"$$t4_2_envptr_260", [2 x i8] %"$addr_bystr2_261")
  store %TName_Pair_ByStr1_ByStr2* %"$$t4_2_call_262", %TName_Pair_ByStr1_ByStr2** %"$t4_3"
  %"$$t4_3_263" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %"$t4_3"
  store %TName_Pair_ByStr1_ByStr2* %"$$t4_3_263", %TName_Pair_ByStr1_ByStr2** %p2
  %"$p1_264" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %p1
  %"$p2_265" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %p2
  %"$adtval_266_load" = load i8*, i8** @_execptr
  %"$adtval_266_salloc" = call i8* @_salloc(i8* %"$adtval_266_load", i64 17)
  %"$adtval_266" = bitcast i8* %"$adtval_266_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  %"$adtgep_267" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_266", i32 0, i32 0
  store i8 0, i8* %"$adtgep_267"
  %"$adtgep_268" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_266", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$p1_264", %TName_Pair_Uint32_Uint64** %"$adtgep_268"
  %"$adtgep_269" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_266", i32 0, i32 2
  store %TName_Pair_ByStr1_ByStr2* %"$p2_265", %TName_Pair_ByStr1_ByStr2** %"$adtgep_269"
  %"$adtptr_270" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_266" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtptr_270", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_4"
  %"$$expr_4_271" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_4"
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$$expr_4_271"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_272" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* @"$scilla_expr_200"(i8* null)
  %"$memvoidcast_273" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$exprval_272" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_59", i8* %"$memvoidcast_273")
  ret void
}
