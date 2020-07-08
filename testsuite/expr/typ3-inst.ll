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

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_29"(%"$$fundef_29_env_91"* %0) {
entry:
  %"$$fundef_29_env_tf_192" = getelementptr inbounds %"$$fundef_29_env_91", %"$$fundef_29_env_91"* %0, i32 0, i32 0
  %"$tf_envload_193" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_29_env_tf_192"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_193", { i8*, i8* }** %tf
  %"$retval_30" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$tf_194" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_195" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_194", i32 0
  %"$tf_196" = bitcast { i8*, i8* }* %"$tf_195" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_197" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_196"
  %"$tf_fptr_198" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_197", 0
  %"$tf_envptr_199" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_197", 1
  %"$tf_call_200" = call { i8*, i8* }* %"$tf_fptr_198"(i8* %"$tf_envptr_199")
  %"$tf_201" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_200", i32 1
  %"$tf_202" = bitcast { i8*, i8* }* %"$tf_201" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_203" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_202"
  %"$tf_fptr_204" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_203", 0
  %"$tf_envptr_205" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_203", 1
  %"$tf_call_206" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_204"(i8* %"$tf_envptr_205")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_206", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_30"
  %"$$retval_30_207" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_30"
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_30_207"
}

define internal { i8*, i8* }* @"$fundef_27"(%"$$fundef_27_env_92"* %0) {
entry:
  %"$$fundef_27_env_tf_180" = getelementptr inbounds %"$$fundef_27_env_92", %"$$fundef_27_env_92"* %0, i32 0, i32 0
  %"$tf_envload_181" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_27_env_tf_180"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_181", { i8*, i8* }** %tf
  %"$retval_28" = alloca { i8*, i8* }*
  %"$$fundef_29_envp_182_load" = load i8*, i8** @_execptr
  %"$$fundef_29_envp_182_salloc" = call i8* @_salloc(i8* %"$$fundef_29_envp_182_load", i64 8)
  %"$$fundef_29_envp_182" = bitcast i8* %"$$fundef_29_envp_182_salloc" to %"$$fundef_29_env_91"*
  %"$$fundef_29_env_voidp_184" = bitcast %"$$fundef_29_env_91"* %"$$fundef_29_envp_182" to i8*
  %"$$fundef_29_cloval_185" = insertvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_29_env_91"*)* @"$fundef_29" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_29_env_voidp_184", 1
  %"$$fundef_29_env_tf_186" = getelementptr inbounds %"$$fundef_29_env_91", %"$$fundef_29_env_91"* %"$$fundef_29_envp_182", i32 0, i32 0
  %"$tf_187" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_187", { i8*, i8* }** %"$$fundef_29_env_tf_186"
  %"$dyndisp_table_188_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_188_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_188_salloc_load", i64 64)
  %"$dyndisp_table_188_salloc" = bitcast i8* %"$dyndisp_table_188_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_188" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_188_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_189" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_188", i32 1
  %"$dyndisp_pcast_190" = bitcast { i8*, i8* }* %"$dyndisp_gep_189" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_29_cloval_185", { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_190"
  store { i8*, i8* }* %"$dyndisp_table_188", { i8*, i8* }** %"$retval_28"
  %"$$retval_28_191" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_28"
  ret { i8*, i8* }* %"$$retval_28_191"
}

define internal %TName_Pair_ByStr1_ByStr2* @"$fundef_25"(%"$$fundef_25_env_93"* %0, [2 x i8] %1) {
entry:
  %"$$fundef_25_env_a_171" = getelementptr inbounds %"$$fundef_25_env_93", %"$$fundef_25_env_93"* %0, i32 0, i32 0
  %"$a_envload_172" = load [1 x i8], [1 x i8]* %"$$fundef_25_env_a_171"
  %a = alloca [1 x i8]
  store [1 x i8] %"$a_envload_172", [1 x i8]* %a
  %"$retval_26" = alloca %TName_Pair_ByStr1_ByStr2*
  %"$a_173" = load [1 x i8], [1 x i8]* %a
  %"$adtval_174_load" = load i8*, i8** @_execptr
  %"$adtval_174_salloc" = call i8* @_salloc(i8* %"$adtval_174_load", i64 4)
  %"$adtval_174" = bitcast i8* %"$adtval_174_salloc" to %CName_Pair_ByStr1_ByStr2*
  %"$adtgep_175" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_174", i32 0, i32 0
  store i8 0, i8* %"$adtgep_175"
  %"$adtgep_176" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_174", i32 0, i32 1
  store [1 x i8] %"$a_173", [1 x i8]* %"$adtgep_176"
  %"$adtgep_177" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_174", i32 0, i32 2
  store [2 x i8] %1, [2 x i8]* %"$adtgep_177"
  %"$adtptr_178" = bitcast %CName_Pair_ByStr1_ByStr2* %"$adtval_174" to %TName_Pair_ByStr1_ByStr2*
  store %TName_Pair_ByStr1_ByStr2* %"$adtptr_178", %TName_Pair_ByStr1_ByStr2** %"$retval_26"
  %"$$retval_26_179" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %"$retval_26"
  ret %TName_Pair_ByStr1_ByStr2* %"$$retval_26_179"
}

define internal { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } @"$fundef_23"(%"$$fundef_23_env_94"* %0, [1 x i8] %1) {
entry:
  %"$retval_24" = alloca { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }
  %"$$fundef_25_envp_165_load" = load i8*, i8** @_execptr
  %"$$fundef_25_envp_165_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_165_load", i64 1)
  %"$$fundef_25_envp_165" = bitcast i8* %"$$fundef_25_envp_165_salloc" to %"$$fundef_25_env_93"*
  %"$$fundef_25_env_voidp_167" = bitcast %"$$fundef_25_env_93"* %"$$fundef_25_envp_165" to i8*
  %"$$fundef_25_cloval_168" = insertvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])* bitcast (%TName_Pair_ByStr1_ByStr2* (%"$$fundef_25_env_93"*, [2 x i8])* @"$fundef_25" to %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*), i8* undef }, i8* %"$$fundef_25_env_voidp_167", 1
  %"$$fundef_25_env_a_169" = getelementptr inbounds %"$$fundef_25_env_93", %"$$fundef_25_env_93"* %"$$fundef_25_envp_165", i32 0, i32 0
  store [1 x i8] %1, [1 x i8]* %"$$fundef_25_env_a_169"
  store { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$fundef_25_cloval_168", { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$retval_24"
  %"$$retval_24_170" = load { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$retval_24"
  ret { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$retval_24_170"
}

define internal { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } @"$fundef_21"(%"$$fundef_21_env_95"* %0) {
entry:
  %"$retval_22" = alloca { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }
  store { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])* bitcast ({ %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (%"$$fundef_23_env_94"*, [1 x i8])* @"$fundef_23" to { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*), i8* null }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_22"
  %"$$retval_22_164" = load { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_22"
  ret { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$$retval_22_164"
}

define internal %TName_Pair_ByStr1_Uint64* @"$fundef_19"(%"$$fundef_19_env_96"* %0, %Uint64 %1) {
entry:
  %"$$fundef_19_env_a_152" = getelementptr inbounds %"$$fundef_19_env_96", %"$$fundef_19_env_96"* %0, i32 0, i32 0
  %"$a_envload_153" = load [1 x i8], [1 x i8]* %"$$fundef_19_env_a_152"
  %a = alloca [1 x i8]
  store [1 x i8] %"$a_envload_153", [1 x i8]* %a
  %"$retval_20" = alloca %TName_Pair_ByStr1_Uint64*
  %"$a_154" = load [1 x i8], [1 x i8]* %a
  %"$adtval_155_load" = load i8*, i8** @_execptr
  %"$adtval_155_salloc" = call i8* @_salloc(i8* %"$adtval_155_load", i64 10)
  %"$adtval_155" = bitcast i8* %"$adtval_155_salloc" to %CName_Pair_ByStr1_Uint64*
  %"$adtgep_156" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_155", i32 0, i32 0
  store i8 0, i8* %"$adtgep_156"
  %"$adtgep_157" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_155", i32 0, i32 1
  store [1 x i8] %"$a_154", [1 x i8]* %"$adtgep_157"
  %"$adtgep_158" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_155", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_158"
  %"$adtptr_159" = bitcast %CName_Pair_ByStr1_Uint64* %"$adtval_155" to %TName_Pair_ByStr1_Uint64*
  store %TName_Pair_ByStr1_Uint64* %"$adtptr_159", %TName_Pair_ByStr1_Uint64** %"$retval_20"
  %"$$retval_20_160" = load %TName_Pair_ByStr1_Uint64*, %TName_Pair_ByStr1_Uint64** %"$retval_20"
  ret %TName_Pair_ByStr1_Uint64* %"$$retval_20_160"
}

define internal { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_17"(%"$$fundef_17_env_97"* %0, [1 x i8] %1) {
entry:
  %"$retval_18" = alloca { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }
  %"$$fundef_19_envp_146_load" = load i8*, i8** @_execptr
  %"$$fundef_19_envp_146_salloc" = call i8* @_salloc(i8* %"$$fundef_19_envp_146_load", i64 1)
  %"$$fundef_19_envp_146" = bitcast i8* %"$$fundef_19_envp_146_salloc" to %"$$fundef_19_env_96"*
  %"$$fundef_19_env_voidp_148" = bitcast %"$$fundef_19_env_96"* %"$$fundef_19_envp_146" to i8*
  %"$$fundef_19_cloval_149" = insertvalue { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_ByStr1_Uint64* (%"$$fundef_19_env_96"*, %Uint64)* @"$fundef_19" to %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_19_env_voidp_148", 1
  %"$$fundef_19_env_a_150" = getelementptr inbounds %"$$fundef_19_env_96", %"$$fundef_19_env_96"* %"$$fundef_19_envp_146", i32 0, i32 0
  store [1 x i8] %1, [1 x i8]* %"$$fundef_19_env_a_150"
  store { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_19_cloval_149", { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_18"
  %"$$retval_18_151" = load { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_18"
  ret { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_18_151"
}

define internal { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } @"$fundef_15"(%"$$fundef_15_env_98"* %0) {
entry:
  %"$retval_16" = alloca { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }
  store { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])* bitcast ({ %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_17_env_97"*, [1 x i8])* @"$fundef_17" to { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*), i8* null }, { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_16"
  %"$$retval_16_145" = load { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_16"
  ret { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } %"$$retval_16_145"
}

define internal { i8*, i8* }* @"$fundef_13"(%"$$fundef_13_env_99"* %0) {
entry:
  %"$retval_14" = alloca { i8*, i8* }*
  %"$dyndisp_table_136_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_136_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_136_salloc_load", i64 64)
  %"$dyndisp_table_136_salloc" = bitcast i8* %"$dyndisp_table_136_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_136" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_136_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_137" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_136", i32 1
  %"$dyndisp_pcast_138" = bitcast { i8*, i8* }* %"$dyndisp_gep_137" to { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)* bitcast ({ { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (%"$$fundef_15_env_98"*)* @"$fundef_15" to { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_138"
  %"$dyndisp_gep_139" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_136", i32 3
  %"$dyndisp_pcast_140" = bitcast { i8*, i8* }* %"$dyndisp_gep_139" to { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)* bitcast ({ { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (%"$$fundef_21_env_95"*)* @"$fundef_21" to { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_140"
  store { i8*, i8* }* %"$dyndisp_table_136", { i8*, i8* }** %"$retval_14"
  %"$$retval_14_141" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_14"
  ret { i8*, i8* }* %"$$retval_14_141"
}

define internal %TName_Pair_Uint32_Uint64* @"$fundef_11"(%"$$fundef_11_env_100"* %0, %Uint64 %1) {
entry:
  %"$$fundef_11_env_a_121" = getelementptr inbounds %"$$fundef_11_env_100", %"$$fundef_11_env_100"* %0, i32 0, i32 0
  %"$a_envload_122" = load %Uint32, %Uint32* %"$$fundef_11_env_a_121"
  %a = alloca %Uint32
  store %Uint32 %"$a_envload_122", %Uint32* %a
  %"$retval_12" = alloca %TName_Pair_Uint32_Uint64*
  %"$a_123" = load %Uint32, %Uint32* %a
  %"$adtval_124_load" = load i8*, i8** @_execptr
  %"$adtval_124_salloc" = call i8* @_salloc(i8* %"$adtval_124_load", i64 13)
  %"$adtval_124" = bitcast i8* %"$adtval_124_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_125" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_124", i32 0, i32 0
  store i8 0, i8* %"$adtgep_125"
  %"$adtgep_126" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_124", i32 0, i32 1
  store %Uint32 %"$a_123", %Uint32* %"$adtgep_126"
  %"$adtgep_127" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_124", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_127"
  %"$adtptr_128" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_124" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_128", %TName_Pair_Uint32_Uint64** %"$retval_12"
  %"$$retval_12_129" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$retval_12"
  ret %TName_Pair_Uint32_Uint64* %"$$retval_12_129"
}

define internal { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_9"(%"$$fundef_9_env_101"* %0, %Uint32 %1) {
entry:
  %"$retval_10" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }
  %"$$fundef_11_envp_115_load" = load i8*, i8** @_execptr
  %"$$fundef_11_envp_115_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_115_load", i64 4)
  %"$$fundef_11_envp_115" = bitcast i8* %"$$fundef_11_envp_115_salloc" to %"$$fundef_11_env_100"*
  %"$$fundef_11_env_voidp_117" = bitcast %"$$fundef_11_env_100"* %"$$fundef_11_envp_115" to i8*
  %"$$fundef_11_cloval_118" = insertvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_Uint32_Uint64* (%"$$fundef_11_env_100"*, %Uint64)* @"$fundef_11" to %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_11_env_voidp_117", 1
  %"$$fundef_11_env_a_119" = getelementptr inbounds %"$$fundef_11_env_100", %"$$fundef_11_env_100"* %"$$fundef_11_envp_115", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_11_env_a_119"
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_11_cloval_118", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10"
  %"$$retval_10_120" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10"
  ret { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_10_120"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_7"(%"$$fundef_7_env_102"* %0) {
entry:
  %"$retval_8" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)* bitcast ({ %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_9_env_101"*, %Uint32)* @"$fundef_9" to { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*), i8* null }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8"
  %"$$retval_8_114" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8"
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_8_114"
}

define internal { i8*, i8* }* @"$fundef_5"(%"$$fundef_5_env_103"* %0) {
entry:
  %"$retval_6" = alloca { i8*, i8* }*
  %"$dyndisp_table_107_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_107_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_107_salloc_load", i64 64)
  %"$dyndisp_table_107_salloc" = bitcast i8* %"$dyndisp_table_107_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_107" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_107_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_108" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_107", i32 1
  %"$dyndisp_pcast_109" = bitcast { i8*, i8* }* %"$dyndisp_gep_108" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_7_env_102"*)* @"$fundef_7" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_109"
  store { i8*, i8* }* %"$dyndisp_table_107", { i8*, i8* }** %"$retval_6"
  %"$$retval_6_110" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_6"
  ret { i8*, i8* }* %"$$retval_6_110"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* @"$scilla_expr_208"(i8* %0) {
entry:
  %"$expr_4" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  %tf = alloca { i8*, i8* }*
  %"$dyndisp_table_215_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_215_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_215_salloc_load", i64 64)
  %"$dyndisp_table_215_salloc" = bitcast i8* %"$dyndisp_table_215_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_215" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_215_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_216" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_215", i32 0
  %"$dyndisp_pcast_217" = bitcast { i8*, i8* }* %"$dyndisp_gep_216" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_5_env_103"*)* @"$fundef_5" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_217"
  %"$dyndisp_gep_218" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_215", i32 2
  %"$dyndisp_pcast_219" = bitcast { i8*, i8* }* %"$dyndisp_gep_218" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_13_env_99"*)* @"$fundef_13" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_219"
  store { i8*, i8* }* %"$dyndisp_table_215", { i8*, i8* }** %tf
  %tf1 = alloca { i8*, i8* }*
  %"$$fundef_27_envp_220_load" = load i8*, i8** @_execptr
  %"$$fundef_27_envp_220_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_220_load", i64 8)
  %"$$fundef_27_envp_220" = bitcast i8* %"$$fundef_27_envp_220_salloc" to %"$$fundef_27_env_92"*
  %"$$fundef_27_env_voidp_222" = bitcast %"$$fundef_27_env_92"* %"$$fundef_27_envp_220" to i8*
  %"$$fundef_27_cloval_223" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_27_env_92"*)* @"$fundef_27" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_222", 1
  %"$$fundef_27_env_tf_224" = getelementptr inbounds %"$$fundef_27_env_92", %"$$fundef_27_env_92"* %"$$fundef_27_envp_220", i32 0, i32 0
  %"$tf_225" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_225", { i8*, i8* }** %"$$fundef_27_env_tf_224"
  %"$dyndisp_table_226_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_226_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_226_salloc_load", i64 64)
  %"$dyndisp_table_226_salloc" = bitcast i8* %"$dyndisp_table_226_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_226" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_226_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_227" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_226", i32 0
  %"$dyndisp_pcast_228" = bitcast { i8*, i8* }* %"$dyndisp_gep_227" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_27_cloval_223", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_228"
  store { i8*, i8* }* %"$dyndisp_table_226", { i8*, i8* }** %tf1
  %t1 = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$tf1_229" = load { i8*, i8* }*, { i8*, i8* }** %tf1
  %"$tf1_230" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_229", i32 0
  %"$tf1_231" = bitcast { i8*, i8* }* %"$tf1_230" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_232" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_231"
  %"$tf1_fptr_233" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_232", 0
  %"$tf1_envptr_234" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_232", 1
  %"$tf1_call_235" = call { i8*, i8* }* %"$tf1_fptr_233"(i8* %"$tf1_envptr_234")
  %"$tf1_236" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_235", i32 1
  %"$tf1_237" = bitcast { i8*, i8* }* %"$tf1_236" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf1_238" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf1_237"
  %"$tf1_fptr_239" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_238", 0
  %"$tf1_envptr_240" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_238", 1
  %"$tf1_call_241" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_fptr_239"(i8* %"$tf1_envptr_240")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_call_241", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1
  %t3 = alloca { i8*, i8* }*
  %"$tf_242" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_243" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_242", i32 2
  %"$tf_244" = bitcast { i8*, i8* }* %"$tf_243" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_245" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_244"
  %"$tf_fptr_246" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_245", 0
  %"$tf_envptr_247" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_245", 1
  %"$tf_call_248" = call { i8*, i8* }* %"$tf_fptr_246"(i8* %"$tf_envptr_247")
  store { i8*, i8* }* %"$tf_call_248", { i8*, i8* }** %t3
  %t4 = alloca { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }
  %"$t3_249" = load { i8*, i8* }*, { i8*, i8* }** %t3
  %"$t3_250" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t3_249", i32 3
  %"$t3_251" = bitcast { i8*, i8* }* %"$t3_250" to { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  %"$t3_252" = load { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }, { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$t3_251"
  %"$t3_fptr_253" = extractvalue { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } %"$t3_252", 0
  %"$t3_envptr_254" = extractvalue { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } %"$t3_252", 1
  %"$t3_call_255" = call { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t3_fptr_253"(i8* %"$t3_envptr_254")
  store { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t3_call_255", { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %t4
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
  %"$t1_256" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1
  %"$t1_fptr_257" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_256", 0
  %"$t1_envptr_258" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_256", 1
  %"$uint32_one_259" = load %Uint32, %Uint32* %uint32_one
  %"$t1_call_260" = call { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_fptr_257"(i8* %"$t1_envptr_258", %Uint32 %"$uint32_one_259")
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_call_260", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0"
  %"$t1_1" = alloca %TName_Pair_Uint32_Uint64*
  %"$$t1_0_261" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0"
  %"$$t1_0_fptr_262" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_261", 0
  %"$$t1_0_envptr_263" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_261", 1
  %"$uint64_two_264" = load %Uint64, %Uint64* %uint64_two
  %"$$t1_0_call_265" = call %TName_Pair_Uint32_Uint64* %"$$t1_0_fptr_262"(i8* %"$$t1_0_envptr_263", %Uint64 %"$uint64_two_264")
  store %TName_Pair_Uint32_Uint64* %"$$t1_0_call_265", %TName_Pair_Uint32_Uint64** %"$t1_1"
  %"$$t1_1_266" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$t1_1"
  store %TName_Pair_Uint32_Uint64* %"$$t1_1_266", %TName_Pair_Uint32_Uint64** %p1
  %p2 = alloca %TName_Pair_ByStr1_ByStr2*
  %"$t4_2" = alloca { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }
  %"$t4_267" = load { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %t4
  %"$t4_fptr_268" = extractvalue { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t4_267", 0
  %"$t4_envptr_269" = extractvalue { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t4_267", 1
  %"$addr_bystr1_270" = load [1 x i8], [1 x i8]* %addr_bystr1
  %"$t4_call_271" = call { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$t4_fptr_268"(i8* %"$t4_envptr_269", [1 x i8] %"$addr_bystr1_270")
  store { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$t4_call_271", { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$t4_2"
  %"$t4_3" = alloca %TName_Pair_ByStr1_ByStr2*
  %"$$t4_2_272" = load { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$t4_2"
  %"$$t4_2_fptr_273" = extractvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$t4_2_272", 0
  %"$$t4_2_envptr_274" = extractvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$t4_2_272", 1
  %"$addr_bystr2_275" = load [2 x i8], [2 x i8]* %addr_bystr2
  %"$$t4_2_call_276" = call %TName_Pair_ByStr1_ByStr2* %"$$t4_2_fptr_273"(i8* %"$$t4_2_envptr_274", [2 x i8] %"$addr_bystr2_275")
  store %TName_Pair_ByStr1_ByStr2* %"$$t4_2_call_276", %TName_Pair_ByStr1_ByStr2** %"$t4_3"
  %"$$t4_3_277" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %"$t4_3"
  store %TName_Pair_ByStr1_ByStr2* %"$$t4_3_277", %TName_Pair_ByStr1_ByStr2** %p2
  %"$p1_278" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %p1
  %"$p2_279" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %p2
  %"$adtval_280_load" = load i8*, i8** @_execptr
  %"$adtval_280_salloc" = call i8* @_salloc(i8* %"$adtval_280_load", i64 17)
  %"$adtval_280" = bitcast i8* %"$adtval_280_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  %"$adtgep_281" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_280", i32 0, i32 0
  store i8 0, i8* %"$adtgep_281"
  %"$adtgep_282" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_280", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$p1_278", %TName_Pair_Uint32_Uint64** %"$adtgep_282"
  %"$adtgep_283" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_280", i32 0, i32 2
  store %TName_Pair_ByStr1_ByStr2* %"$p2_279", %TName_Pair_ByStr1_ByStr2** %"$adtgep_283"
  %"$adtptr_284" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_280" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtptr_284", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_4"
  %"$$expr_4_285" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_4"
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$$expr_4_285"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_286" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* @"$scilla_expr_208"(i8* null)
  %"$memvoidcast_287" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$exprval_286" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_59", i8* %"$memvoidcast_287")
  ret void
}
