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

%"$TyDescrTy_PrimTyp_37" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_73" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_72"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_72" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_74"**, %"$TyDescrTy_ADTTyp_73"* }
%"$TyDescrTy_ADTTyp_Constr_74" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_522" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_523" = type { %ParamDescrString, i32, %"$ParamDescr_522"* }
%TName_Pair_Uint32_Uint64 = type { i8, %CName_Pair_Uint32_Uint64* }
%CName_Pair_Uint32_Uint64 = type <{ i8, %Uint32, %Uint64 }>
%Uint64 = type { i64 }
%Uint32 = type { i32 }
%"$$fundef_35_env_109" = type { { i8*, i8* }* }
%"$$fundef_33_env_110" = type { { i8*, i8* }* }
%TName_Pair_ByStr1_ByStr2 = type { i8, %CName_Pair_ByStr1_ByStr2* }
%CName_Pair_ByStr1_ByStr2 = type <{ i8, [1 x i8], [2 x i8] }>
%"$$fundef_31_env_111" = type { [1 x i8] }
%"$$fundef_29_env_112" = type {}
%"$$fundef_27_env_113" = type {}
%TName_Pair_ByStr1_Uint64 = type { i8, %CName_Pair_ByStr1_Uint64* }
%CName_Pair_ByStr1_Uint64 = type <{ i8, [1 x i8], %Uint64 }>
%"$$fundef_25_env_114" = type { [1 x i8] }
%"$$fundef_23_env_115" = type {}
%"$$fundef_21_env_116" = type {}
%"$$fundef_19_env_117" = type {}
%"$$fundef_17_env_118" = type { %Uint32 }
%"$$fundef_15_env_119" = type {}
%"$$fundef_13_env_120" = type {}
%"$$fundef_11_env_121" = type {}
%"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)" = type { i8, %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* }
%"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)" = type <{ i8, %TName_Pair_Uint32_Uint64*, %TName_Pair_ByStr1_ByStr2* }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_38" = global %"$TyDescrTy_PrimTyp_37" zeroinitializer
@"$TyDescr_Int32_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_Int32_Prim_38" to i8*) }
@"$TyDescr_Uint32_Prim_40" = global %"$TyDescrTy_PrimTyp_37" { i32 1, i32 0 }
@"$TyDescr_Uint32_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_Uint32_Prim_40" to i8*) }
@"$TyDescr_Int64_Prim_42" = global %"$TyDescrTy_PrimTyp_37" { i32 0, i32 1 }
@"$TyDescr_Int64_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_Int64_Prim_42" to i8*) }
@"$TyDescr_Uint64_Prim_44" = global %"$TyDescrTy_PrimTyp_37" { i32 1, i32 1 }
@"$TyDescr_Uint64_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_Uint64_Prim_44" to i8*) }
@"$TyDescr_Int128_Prim_46" = global %"$TyDescrTy_PrimTyp_37" { i32 0, i32 2 }
@"$TyDescr_Int128_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_Int128_Prim_46" to i8*) }
@"$TyDescr_Uint128_Prim_48" = global %"$TyDescrTy_PrimTyp_37" { i32 1, i32 2 }
@"$TyDescr_Uint128_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_Uint128_Prim_48" to i8*) }
@"$TyDescr_Int256_Prim_50" = global %"$TyDescrTy_PrimTyp_37" { i32 0, i32 3 }
@"$TyDescr_Int256_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_Int256_Prim_50" to i8*) }
@"$TyDescr_Uint256_Prim_52" = global %"$TyDescrTy_PrimTyp_37" { i32 1, i32 3 }
@"$TyDescr_Uint256_53" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_Uint256_Prim_52" to i8*) }
@"$TyDescr_String_Prim_54" = global %"$TyDescrTy_PrimTyp_37" { i32 2, i32 0 }
@"$TyDescr_String_55" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_String_Prim_54" to i8*) }
@"$TyDescr_Bnum_Prim_56" = global %"$TyDescrTy_PrimTyp_37" { i32 3, i32 0 }
@"$TyDescr_Bnum_57" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_Bnum_Prim_56" to i8*) }
@"$TyDescr_Message_Prim_58" = global %"$TyDescrTy_PrimTyp_37" { i32 4, i32 0 }
@"$TyDescr_Message_59" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_Message_Prim_58" to i8*) }
@"$TyDescr_Event_Prim_60" = global %"$TyDescrTy_PrimTyp_37" { i32 5, i32 0 }
@"$TyDescr_Event_61" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_Event_Prim_60" to i8*) }
@"$TyDescr_Exception_Prim_62" = global %"$TyDescrTy_PrimTyp_37" { i32 6, i32 0 }
@"$TyDescr_Exception_63" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_Exception_Prim_62" to i8*) }
@"$TyDescr_ReplicateContr_Prim_64" = global %"$TyDescrTy_PrimTyp_37" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_65" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_ReplicateContr_Prim_64" to i8*) }
@"$TyDescr_Bystr_Prim_66" = global %"$TyDescrTy_PrimTyp_37" { i32 7, i32 0 }
@"$TyDescr_Bystr_67" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_Bystr_Prim_66" to i8*) }
@"$TyDescr_Bystr2_Prim_68" = global %"$TyDescrTy_PrimTyp_37" { i32 8, i32 2 }
@"$TyDescr_Bystr2_69" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_Bystr2_Prim_68" to i8*) }
@"$TyDescr_Bystr1_Prim_70" = global %"$TyDescrTy_PrimTyp_37" { i32 8, i32 1 }
@"$TyDescr_Bystr1_71" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_Bystr1_Prim_70" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_75" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_72"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_88" to i8*) }
@"$TyDescr_ADT_Pair_ByStr1_ByStr2_76" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_72"* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_94" to i8*) }
@"$TyDescr_ADT_Pair_ByStr1_Uint64_77" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_72"* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_100" to i8*) }
@"$TyDescr_ADT_Pair_Uint32_Uint64_78" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_72"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_106" to i8*) }
@"$TyDescr_Pair_ADTTyp_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_73" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_108", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 4, %"$TyDescrTy_ADTTyp_Specl_72"** getelementptr inbounds ([4 x %"$TyDescrTy_ADTTyp_Specl_72"*], [4 x %"$TyDescrTy_ADTTyp_Specl_72"*]* @"$TyDescr_Pair_ADTTyp_m_specls_107", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_Constr_m_args_83" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_78", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr1_ByStr2_76"]
@"$TyDescr_ADT_Pair_84" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Constr_85" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_74" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_84", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_Constr_m_args_83", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_constrs_86" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_74"*] [%"$TyDescrTy_ADTTyp_Constr_74"* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Constr_85"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_TArgs_87" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_78", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr1_ByStr2_76"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_88" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_72" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_TArgs_87", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_74"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_74"*], [1 x %"$TyDescrTy_ADTTyp_Constr_74"*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_constrs_86", i32 0, i32 0), %"$TyDescrTy_ADTTyp_73"* @"$TyDescr_Pair_ADTTyp_82" }
@"$TyDescr_Pair_Pair_ByStr1_ByStr2_Constr_m_args_89" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_71", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_69"]
@"$TyDescr_ADT_Pair_90" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr1_ByStr2_ADTTyp_Constr_91" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_74" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_90", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr1_ByStr2_Constr_m_args_89", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_constrs_92" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_74"*] [%"$TyDescrTy_ADTTyp_Constr_74"* @"$TyDescr_Pair_Pair_ByStr1_ByStr2_ADTTyp_Constr_91"]
@"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_TArgs_93" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_71", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_69"]
@"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_94" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_72" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_TArgs_93", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_74"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_74"*], [1 x %"$TyDescrTy_ADTTyp_Constr_74"*]* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_constrs_92", i32 0, i32 0), %"$TyDescrTy_ADTTyp_73"* @"$TyDescr_Pair_ADTTyp_82" }
@"$TyDescr_Pair_Pair_ByStr1_Uint64_Constr_m_args_95" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_71", %_TyDescrTy_Typ* @"$TyDescr_Uint64_45"]
@"$TyDescr_ADT_Pair_96" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr1_Uint64_ADTTyp_Constr_97" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_74" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_96", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr1_Uint64_Constr_m_args_95", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_constrs_98" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_74"*] [%"$TyDescrTy_ADTTyp_Constr_74"* @"$TyDescr_Pair_Pair_ByStr1_Uint64_ADTTyp_Constr_97"]
@"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_TArgs_99" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_71", %_TyDescrTy_Typ* @"$TyDescr_Uint64_45"]
@"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_100" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_72" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_TArgs_99", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_74"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_74"*], [1 x %"$TyDescrTy_ADTTyp_Constr_74"*]* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_constrs_98", i32 0, i32 0), %"$TyDescrTy_ADTTyp_73"* @"$TyDescr_Pair_ADTTyp_82" }
@"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_101" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_41", %_TyDescrTy_Typ* @"$TyDescr_Uint64_45"]
@"$TyDescr_ADT_Pair_102" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_103" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_74" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_102", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_101", i32 0, i32 0) }
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_104" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_74"*] [%"$TyDescrTy_ADTTyp_Constr_74"* @"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_103"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_105" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_41", %_TyDescrTy_Typ* @"$TyDescr_Uint64_45"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_106" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_72" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_105", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_74"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_74"*], [1 x %"$TyDescrTy_ADTTyp_Constr_74"*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_104", i32 0, i32 0), %"$TyDescrTy_ADTTyp_73"* @"$TyDescr_Pair_ADTTyp_82" }
@"$TyDescr_Pair_ADTTyp_m_specls_107" = unnamed_addr constant [4 x %"$TyDescrTy_ADTTyp_Specl_72"*] [%"$TyDescrTy_ADTTyp_Specl_72"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_88", %"$TyDescrTy_ADTTyp_Specl_72"* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_94", %"$TyDescrTy_ADTTyp_Specl_72"* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_100", %"$TyDescrTy_ADTTyp_Specl_72"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_106"]
@"$TyDescr_ADT_Pair_108" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [21 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr1_Uint64_77", %_TyDescrTy_Typ* @"$TyDescr_Event_61", %_TyDescrTy_Typ* @"$TyDescr_Int64_43", %_TyDescrTy_Typ* @"$TyDescr_Uint256_53", %_TyDescrTy_Typ* @"$TyDescr_Uint32_41", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr1_ByStr2_76", %_TyDescrTy_Typ* @"$TyDescr_Uint64_45", %_TyDescrTy_Typ* @"$TyDescr_Bnum_57", %_TyDescrTy_Typ* @"$TyDescr_Uint128_49", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_78", %_TyDescrTy_Typ* @"$TyDescr_Exception_63", %_TyDescrTy_Typ* @"$TyDescr_String_55", %_TyDescrTy_Typ* @"$TyDescr_Bystr1_71", %_TyDescrTy_Typ* @"$TyDescr_Int256_51", %_TyDescrTy_Typ* @"$TyDescr_Int128_47", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_75", %_TyDescrTy_Typ* @"$TyDescr_Bystr_67", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_65", %_TyDescrTy_Typ* @"$TyDescr_Message_59", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_69", %_TyDescrTy_Typ* @"$TyDescr_Int32_39"]
@_tydescr_table_length = constant i32 21
@_contract_parameters = constant [0 x %"$ParamDescr_522"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_523"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_35"(%"$$fundef_35_env_109"* %0) !dbg !3 {
entry:
  %"$$fundef_35_env_tf_276" = getelementptr inbounds %"$$fundef_35_env_109", %"$$fundef_35_env_109"* %0, i32 0, i32 0
  %"$tf_envload_277" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_35_env_tf_276", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_277", { i8*, i8* }** %tf, align 8
  %"$retval_36" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 1, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %entry
  %"$consume_282" = sub i64 %"$gasrem_278", 1
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %"$tf_283" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_284" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_283", i32 0
  %"$tf_285" = bitcast { i8*, i8* }* %"$tf_284" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_286" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_285", align 8
  %"$tf_fptr_287" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_286", 0
  %"$tf_envptr_288" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_286", 1
  %"$tf_call_289" = call { i8*, i8* }* %"$tf_fptr_287"(i8* %"$tf_envptr_288"), !dbg !8
  %"$tf_290" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_289", i32 1
  %"$tf_291" = bitcast { i8*, i8* }* %"$tf_290" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_292" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_291", align 8
  %"$tf_fptr_293" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_292", 0
  %"$tf_envptr_294" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_292", 1
  %"$tf_call_295" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_293"(i8* %"$tf_envptr_294"), !dbg !8
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_295", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_36", align 8, !dbg !9
  %"$$retval_36_296" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_36", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_36_296"
}

define internal { i8*, i8* }* @"$fundef_33"(%"$$fundef_33_env_110"* %0) !dbg !10 {
entry:
  %"$$fundef_33_env_tf_259" = getelementptr inbounds %"$$fundef_33_env_110", %"$$fundef_33_env_110"* %0, i32 0, i32 0
  %"$tf_envload_260" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_33_env_tf_259", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_260", { i8*, i8* }** %tf, align 8
  %"$retval_34" = alloca { i8*, i8* }*, align 8
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %entry
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %"$$fundef_35_envp_266_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_35_envp_266_salloc" = call i8* @_salloc(i8* %"$$fundef_35_envp_266_load", i64 8)
  %"$$fundef_35_envp_266" = bitcast i8* %"$$fundef_35_envp_266_salloc" to %"$$fundef_35_env_109"*
  %"$$fundef_35_env_voidp_268" = bitcast %"$$fundef_35_env_109"* %"$$fundef_35_envp_266" to i8*
  %"$$fundef_35_cloval_269" = insertvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_35_env_109"*)* @"$fundef_35" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_35_env_voidp_268", 1
  %"$$fundef_35_env_tf_270" = getelementptr inbounds %"$$fundef_35_env_109", %"$$fundef_35_env_109"* %"$$fundef_35_envp_266", i32 0, i32 0
  %"$tf_271" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_271", { i8*, i8* }** %"$$fundef_35_env_tf_270", align 8
  %"$dyndisp_table_272_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_272_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_272_salloc_load", i64 64)
  %"$dyndisp_table_272_salloc" = bitcast i8* %"$dyndisp_table_272_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_272" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_272_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_273" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_272", i32 1
  %"$dyndisp_pcast_274" = bitcast { i8*, i8* }* %"$dyndisp_gep_273" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_35_cloval_269", { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_274", align 8
  store { i8*, i8* }* %"$dyndisp_table_272", { i8*, i8* }** %"$retval_34", align 8, !dbg !11
  %"$$retval_34_275" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_34", align 8
  ret { i8*, i8* }* %"$$retval_34_275"
}

define internal %TName_Pair_ByStr1_ByStr2* @"$fundef_31"(%"$$fundef_31_env_111"* %0, [2 x i8] %1) !dbg !12 {
entry:
  %"$b_258" = alloca [2 x i8], align 1
  store [2 x i8] %1, [2 x i8]* %"$b_258", align 1
  call void @llvm.dbg.declare(metadata [2 x i8]* %"$b_258", metadata !13, metadata !DIExpression()), !dbg !15
  %"$$fundef_31_env_a_244" = getelementptr inbounds %"$$fundef_31_env_111", %"$$fundef_31_env_111"* %0, i32 0, i32 0
  %"$a_envload_245" = load [1 x i8], [1 x i8]* %"$$fundef_31_env_a_244", align 1
  %a = alloca [1 x i8], align 1
  store [1 x i8] %"$a_envload_245", [1 x i8]* %a, align 1
  %"$retval_32" = alloca %TName_Pair_ByStr1_ByStr2*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_ByStr1_ByStr2** %"$retval_32", metadata !16, metadata !DIExpression()), !dbg !19
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 1, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %entry
  %"$consume_250" = sub i64 %"$gasrem_246", 1
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %"$a_251" = load [1 x i8], [1 x i8]* %a, align 1
  %"$adtval_252_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_252_salloc" = call i8* @_salloc(i8* %"$adtval_252_load", i64 4)
  %"$adtval_252" = bitcast i8* %"$adtval_252_salloc" to %CName_Pair_ByStr1_ByStr2*
  %"$adtgep_253" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_252", i32 0, i32 0
  store i8 0, i8* %"$adtgep_253", align 1
  %"$adtgep_254" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_252", i32 0, i32 1
  store [1 x i8] %"$a_251", [1 x i8]* %"$adtgep_254", align 1
  %"$adtgep_255" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_252", i32 0, i32 2
  store [2 x i8] %1, [2 x i8]* %"$adtgep_255", align 1
  %"$adtptr_256" = bitcast %CName_Pair_ByStr1_ByStr2* %"$adtval_252" to %TName_Pair_ByStr1_ByStr2*
  store %TName_Pair_ByStr1_ByStr2* %"$adtptr_256", %TName_Pair_ByStr1_ByStr2** %"$retval_32", align 8, !dbg !19
  %"$$retval_32_257" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %"$retval_32", align 8
  ret %TName_Pair_ByStr1_ByStr2* %"$$retval_32_257"
}

define internal { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } @"$fundef_29"(%"$$fundef_29_env_112"* %0, [1 x i8] %1) !dbg !20 {
entry:
  %"$a_243" = alloca [1 x i8], align 1
  store [1 x i8] %1, [1 x i8]* %"$a_243", align 1
  call void @llvm.dbg.declare(metadata [1 x i8]* %"$a_243", metadata !21, metadata !DIExpression()), !dbg !23
  %"$retval_30" = alloca { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, align 8
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 1, %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %entry
  %"$consume_236" = sub i64 %"$gasrem_232", 1
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %"$$fundef_31_envp_237_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_31_envp_237_salloc" = call i8* @_salloc(i8* %"$$fundef_31_envp_237_load", i64 1)
  %"$$fundef_31_envp_237" = bitcast i8* %"$$fundef_31_envp_237_salloc" to %"$$fundef_31_env_111"*
  %"$$fundef_31_env_voidp_239" = bitcast %"$$fundef_31_env_111"* %"$$fundef_31_envp_237" to i8*
  %"$$fundef_31_cloval_240" = insertvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])* bitcast (%TName_Pair_ByStr1_ByStr2* (%"$$fundef_31_env_111"*, [2 x i8])* @"$fundef_31" to %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*), i8* undef }, i8* %"$$fundef_31_env_voidp_239", 1
  %"$$fundef_31_env_a_241" = getelementptr inbounds %"$$fundef_31_env_111", %"$$fundef_31_env_111"* %"$$fundef_31_envp_237", i32 0, i32 0
  store [1 x i8] %1, [1 x i8]* %"$$fundef_31_env_a_241", align 1
  store { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$fundef_31_cloval_240", { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$retval_30", align 8, !dbg !24
  %"$$retval_30_242" = load { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$retval_30", align 8
  ret { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$retval_30_242"
}

define internal { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } @"$fundef_27"(%"$$fundef_27_env_113"* %0) !dbg !25 {
entry:
  %"$retval_28" = alloca { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, align 8
  %"$gasrem_223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_224" = icmp ugt i64 1, %"$gasrem_223"
  br i1 %"$gascmp_224", label %"$out_of_gas_225", label %"$have_gas_226"

"$out_of_gas_225":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_226"

"$have_gas_226":                                  ; preds = %"$out_of_gas_225", %entry
  %"$consume_227" = sub i64 %"$gasrem_223", 1
  store i64 %"$consume_227", i64* @_gasrem, align 8
  store { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])* bitcast ({ %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (%"$$fundef_29_env_112"*, [1 x i8])* @"$fundef_29" to { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*), i8* null }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_28", align 8, !dbg !26
  %"$$retval_28_231" = load { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_28", align 8
  ret { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$$retval_28_231"
}

define internal %TName_Pair_ByStr1_Uint64* @"$fundef_25"(%"$$fundef_25_env_114"* %0, %Uint64 %1) !dbg !27 {
entry:
  %"$b_222" = alloca %Uint64, align 8
  store %Uint64 %1, %Uint64* %"$b_222", align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$b_222", metadata !28, metadata !DIExpression()), !dbg !30
  %"$$fundef_25_env_a_208" = getelementptr inbounds %"$$fundef_25_env_114", %"$$fundef_25_env_114"* %0, i32 0, i32 0
  %"$a_envload_209" = load [1 x i8], [1 x i8]* %"$$fundef_25_env_a_208", align 1
  %a = alloca [1 x i8], align 1
  store [1 x i8] %"$a_envload_209", [1 x i8]* %a, align 1
  %"$retval_26" = alloca %TName_Pair_ByStr1_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_ByStr1_Uint64** %"$retval_26", metadata !31, metadata !DIExpression()), !dbg !34
  %"$gasrem_210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_211" = icmp ugt i64 1, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %entry
  %"$consume_214" = sub i64 %"$gasrem_210", 1
  store i64 %"$consume_214", i64* @_gasrem, align 8
  %"$a_215" = load [1 x i8], [1 x i8]* %a, align 1
  %"$adtval_216_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_216_salloc" = call i8* @_salloc(i8* %"$adtval_216_load", i64 10)
  %"$adtval_216" = bitcast i8* %"$adtval_216_salloc" to %CName_Pair_ByStr1_Uint64*
  %"$adtgep_217" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_216", i32 0, i32 0
  store i8 0, i8* %"$adtgep_217", align 1
  %"$adtgep_218" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_216", i32 0, i32 1
  store [1 x i8] %"$a_215", [1 x i8]* %"$adtgep_218", align 1
  %"$adtgep_219" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_216", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_219", align 8
  %"$adtptr_220" = bitcast %CName_Pair_ByStr1_Uint64* %"$adtval_216" to %TName_Pair_ByStr1_Uint64*
  store %TName_Pair_ByStr1_Uint64* %"$adtptr_220", %TName_Pair_ByStr1_Uint64** %"$retval_26", align 8, !dbg !34
  %"$$retval_26_221" = load %TName_Pair_ByStr1_Uint64*, %TName_Pair_ByStr1_Uint64** %"$retval_26", align 8
  ret %TName_Pair_ByStr1_Uint64* %"$$retval_26_221"
}

define internal { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_23"(%"$$fundef_23_env_115"* %0, [1 x i8] %1) !dbg !35 {
entry:
  %"$a_207" = alloca [1 x i8], align 1
  store [1 x i8] %1, [1 x i8]* %"$a_207", align 1
  call void @llvm.dbg.declare(metadata [1 x i8]* %"$a_207", metadata !36, metadata !DIExpression()), !dbg !37
  %"$retval_24" = alloca { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 1, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %entry
  %"$consume_200" = sub i64 %"$gasrem_196", 1
  store i64 %"$consume_200", i64* @_gasrem, align 8
  %"$$fundef_25_envp_201_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_25_envp_201_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_201_load", i64 1)
  %"$$fundef_25_envp_201" = bitcast i8* %"$$fundef_25_envp_201_salloc" to %"$$fundef_25_env_114"*
  %"$$fundef_25_env_voidp_203" = bitcast %"$$fundef_25_env_114"* %"$$fundef_25_envp_201" to i8*
  %"$$fundef_25_cloval_204" = insertvalue { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_ByStr1_Uint64* (%"$$fundef_25_env_114"*, %Uint64)* @"$fundef_25" to %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_25_env_voidp_203", 1
  %"$$fundef_25_env_a_205" = getelementptr inbounds %"$$fundef_25_env_114", %"$$fundef_25_env_114"* %"$$fundef_25_envp_201", i32 0, i32 0
  store [1 x i8] %1, [1 x i8]* %"$$fundef_25_env_a_205", align 1
  store { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_25_cloval_204", { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_24", align 8, !dbg !38
  %"$$retval_24_206" = load { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_24", align 8
  ret { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_24_206"
}

define internal { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } @"$fundef_21"(%"$$fundef_21_env_116"* %0) !dbg !39 {
entry:
  %"$retval_22" = alloca { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }, align 8
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 1, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %entry
  %"$consume_191" = sub i64 %"$gasrem_187", 1
  store i64 %"$consume_191", i64* @_gasrem, align 8
  store { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])* bitcast ({ %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_23_env_115"*, [1 x i8])* @"$fundef_23" to { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*), i8* null }, { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_22", align 8, !dbg !40
  %"$$retval_22_195" = load { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_22", align 8
  ret { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } %"$$retval_22_195"
}

define internal { i8*, i8* }* @"$fundef_19"(%"$$fundef_19_env_117"* %0) !dbg !41 {
entry:
  %"$retval_20" = alloca { i8*, i8* }*, align 8
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %entry
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %"$dyndisp_table_181_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_181_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_181_salloc_load", i64 64)
  %"$dyndisp_table_181_salloc" = bitcast i8* %"$dyndisp_table_181_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_181" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_181_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_182" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_181", i32 1
  %"$dyndisp_pcast_183" = bitcast { i8*, i8* }* %"$dyndisp_gep_182" to { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)* bitcast ({ { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (%"$$fundef_21_env_116"*)* @"$fundef_21" to { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_183", align 8
  %"$dyndisp_gep_184" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_181", i32 3
  %"$dyndisp_pcast_185" = bitcast { i8*, i8* }* %"$dyndisp_gep_184" to { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)* bitcast ({ { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (%"$$fundef_27_env_113"*)* @"$fundef_27" to { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_185", align 8
  store { i8*, i8* }* %"$dyndisp_table_181", { i8*, i8* }** %"$retval_20", align 8, !dbg !42
  %"$$retval_20_186" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_20", align 8
  ret { i8*, i8* }* %"$$retval_20_186"
}

define internal %TName_Pair_Uint32_Uint64* @"$fundef_17"(%"$$fundef_17_env_118"* %0, %Uint64 %1) !dbg !43 {
entry:
  %"$b_169" = alloca %Uint64, align 8
  store %Uint64 %1, %Uint64* %"$b_169", align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$b_169", metadata !44, metadata !DIExpression()), !dbg !45
  %"$$fundef_17_env_a_155" = getelementptr inbounds %"$$fundef_17_env_118", %"$$fundef_17_env_118"* %0, i32 0, i32 0
  %"$a_envload_156" = load %Uint32, %Uint32* %"$$fundef_17_env_a_155", align 4
  %a = alloca %Uint32, align 8
  store %Uint32 %"$a_envload_156", %Uint32* %a, align 4
  %"$retval_18" = alloca %TName_Pair_Uint32_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Uint32_Uint64** %"$retval_18", metadata !46, metadata !DIExpression()), !dbg !49
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 1, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %entry
  %"$consume_161" = sub i64 %"$gasrem_157", 1
  store i64 %"$consume_161", i64* @_gasrem, align 8
  %"$a_162" = load %Uint32, %Uint32* %a, align 4
  %"$adtval_163_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_163_salloc" = call i8* @_salloc(i8* %"$adtval_163_load", i64 13)
  %"$adtval_163" = bitcast i8* %"$adtval_163_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_164" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_163", i32 0, i32 0
  store i8 0, i8* %"$adtgep_164", align 1
  %"$adtgep_165" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_163", i32 0, i32 1
  store %Uint32 %"$a_162", %Uint32* %"$adtgep_165", align 4
  %"$adtgep_166" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_163", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_166", align 8
  %"$adtptr_167" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_163" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_167", %TName_Pair_Uint32_Uint64** %"$retval_18", align 8, !dbg !49
  %"$$retval_18_168" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$retval_18", align 8
  ret %TName_Pair_Uint32_Uint64* %"$$retval_18_168"
}

define internal { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_15"(%"$$fundef_15_env_119"* %0, %Uint32 %1) !dbg !50 {
entry:
  %"$a_154" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$a_154", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$a_154", metadata !51, metadata !DIExpression()), !dbg !53
  %"$retval_16" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %entry
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %"$$fundef_17_envp_148_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_17_envp_148_salloc" = call i8* @_salloc(i8* %"$$fundef_17_envp_148_load", i64 4)
  %"$$fundef_17_envp_148" = bitcast i8* %"$$fundef_17_envp_148_salloc" to %"$$fundef_17_env_118"*
  %"$$fundef_17_env_voidp_150" = bitcast %"$$fundef_17_env_118"* %"$$fundef_17_envp_148" to i8*
  %"$$fundef_17_cloval_151" = insertvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_Uint32_Uint64* (%"$$fundef_17_env_118"*, %Uint64)* @"$fundef_17" to %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_17_env_voidp_150", 1
  %"$$fundef_17_env_a_152" = getelementptr inbounds %"$$fundef_17_env_118", %"$$fundef_17_env_118"* %"$$fundef_17_envp_148", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_17_env_a_152", align 4
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_17_cloval_151", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_16", align 8, !dbg !54
  %"$$retval_16_153" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_16", align 8
  ret { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_16_153"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_13"(%"$$fundef_13_env_120"* %0) !dbg !55 {
entry:
  %"$retval_14" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %entry
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)* bitcast ({ %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_15_env_119"*, %Uint32)* @"$fundef_15" to { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*), i8* null }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_14", align 8, !dbg !56
  %"$$retval_14_142" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_14", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_14_142"
}

define internal { i8*, i8* }* @"$fundef_11"(%"$$fundef_11_env_121"* %0) !dbg !57 {
entry:
  %"$retval_12" = alloca { i8*, i8* }*, align 8
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %entry
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem, align 8
  %"$dyndisp_table_130_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_130_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_130_salloc_load", i64 64)
  %"$dyndisp_table_130_salloc" = bitcast i8* %"$dyndisp_table_130_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_130" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_130_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_131" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_130", i32 1
  %"$dyndisp_pcast_132" = bitcast { i8*, i8* }* %"$dyndisp_gep_131" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_13_env_120"*)* @"$fundef_13" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_132", align 8
  store { i8*, i8* }* %"$dyndisp_table_130", { i8*, i8* }** %"$retval_12", align 8, !dbg !58
  %"$$retval_12_133" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_12", align 8
  ret { i8*, i8* }* %"$$retval_12_133"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !59 {
entry:
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 5, %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %entry
  %"$consume_301" = sub i64 %"$gasrem_297", 5
  store i64 %"$consume_301", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !61
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 8, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_300"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_300"
  %"$consume_306" = sub i64 %"$gasrem_302", 8
  store i64 %"$consume_306", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !61
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 196, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_305"
  %"$consume_311" = sub i64 %"$gasrem_307", 196
  store i64 %"$consume_311", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !61
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 20, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_310"
  %"$consume_316" = sub i64 %"$gasrem_312", 20
  store i64 %"$consume_316", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !61
  %"$gasrem_317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_318" = icmp ugt i64 12, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_315"
  %"$consume_321" = sub i64 %"$gasrem_317", 12
  store i64 %"$consume_321", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !61
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 2, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$have_gas_320"
  %"$consume_326" = sub i64 %"$gasrem_322", 2
  store i64 %"$consume_326", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !61
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* @_scilla_expr_fun(i8* %0) !dbg !62 {
entry:
  %"$expr_10" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*, align 8
  call void @llvm.dbg.declare(metadata %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_10", metadata !63, metadata !DIExpression()), !dbg !66
  %"$gasrem_327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_328" = icmp ugt i64 1, %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %entry
  %"$consume_331" = sub i64 %"$gasrem_327", 1
  store i64 %"$consume_331", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 1, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$have_gas_330"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$have_gas_330"
  %"$consume_336" = sub i64 %"$gasrem_332", 1
  store i64 %"$consume_336", i64* @_gasrem, align 8
  %"$dyndisp_table_343_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_343_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_343_salloc_load", i64 64)
  %"$dyndisp_table_343_salloc" = bitcast i8* %"$dyndisp_table_343_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_343" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_343_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_344" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_343", i32 0
  %"$dyndisp_pcast_345" = bitcast { i8*, i8* }* %"$dyndisp_gep_344" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_11_env_121"*)* @"$fundef_11" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_345", align 8
  %"$dyndisp_gep_346" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_343", i32 2
  %"$dyndisp_pcast_347" = bitcast { i8*, i8* }* %"$dyndisp_gep_346" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_19_env_117"*)* @"$fundef_19" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_347", align 8
  store { i8*, i8* }* %"$dyndisp_table_343", { i8*, i8* }** %tf, align 8, !dbg !66
  %"$gasrem_348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_349" = icmp ugt i64 1, %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %"$have_gas_335"
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %"$have_gas_335"
  %"$consume_352" = sub i64 %"$gasrem_348", 1
  store i64 %"$consume_352", i64* @_gasrem, align 8
  %tf1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_354" = icmp ugt i64 1, %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %"$have_gas_351"
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %"$have_gas_351"
  %"$consume_357" = sub i64 %"$gasrem_353", 1
  store i64 %"$consume_357", i64* @_gasrem, align 8
  %"$$fundef_33_envp_358_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_33_envp_358_salloc" = call i8* @_salloc(i8* %"$$fundef_33_envp_358_load", i64 8)
  %"$$fundef_33_envp_358" = bitcast i8* %"$$fundef_33_envp_358_salloc" to %"$$fundef_33_env_110"*
  %"$$fundef_33_env_voidp_360" = bitcast %"$$fundef_33_env_110"* %"$$fundef_33_envp_358" to i8*
  %"$$fundef_33_cloval_361" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_33_env_110"*)* @"$fundef_33" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_33_env_voidp_360", 1
  %"$$fundef_33_env_tf_362" = getelementptr inbounds %"$$fundef_33_env_110", %"$$fundef_33_env_110"* %"$$fundef_33_envp_358", i32 0, i32 0
  %"$tf_363" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_363", { i8*, i8* }** %"$$fundef_33_env_tf_362", align 8
  %"$dyndisp_table_364_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_364_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_364_salloc_load", i64 64)
  %"$dyndisp_table_364_salloc" = bitcast i8* %"$dyndisp_table_364_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_364" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_364_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_365" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_364", i32 0
  %"$dyndisp_pcast_366" = bitcast { i8*, i8* }* %"$dyndisp_gep_365" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_33_cloval_361", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_366", align 8
  store { i8*, i8* }* %"$dyndisp_table_364", { i8*, i8* }** %tf1, align 8, !dbg !67
  %"$gasrem_367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_368" = icmp ugt i64 1, %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %"$have_gas_356"
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %"$have_gas_356"
  %"$consume_371" = sub i64 %"$gasrem_367", 1
  store i64 %"$consume_371", i64* @_gasrem, align 8
  %t1 = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_373" = icmp ugt i64 1, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %"$have_gas_370"
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %"$have_gas_370"
  %"$consume_376" = sub i64 %"$gasrem_372", 1
  store i64 %"$consume_376", i64* @_gasrem, align 8
  %"$tf1_377" = load { i8*, i8* }*, { i8*, i8* }** %tf1, align 8
  %"$tf1_378" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_377", i32 0
  %"$tf1_379" = bitcast { i8*, i8* }* %"$tf1_378" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_380" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_379", align 8
  %"$tf1_fptr_381" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_380", 0
  %"$tf1_envptr_382" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_380", 1
  %"$tf1_call_383" = call { i8*, i8* }* %"$tf1_fptr_381"(i8* %"$tf1_envptr_382"), !dbg !68
  %"$tf1_384" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_383", i32 1
  %"$tf1_385" = bitcast { i8*, i8* }* %"$tf1_384" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf1_386" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf1_385", align 8
  %"$tf1_fptr_387" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_386", 0
  %"$tf1_envptr_388" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_386", 1
  %"$tf1_call_389" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_fptr_387"(i8* %"$tf1_envptr_388"), !dbg !68
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_call_389", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8, !dbg !69
  %"$gasrem_390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_391" = icmp ugt i64 1, %"$gasrem_390"
  br i1 %"$gascmp_391", label %"$out_of_gas_392", label %"$have_gas_393"

"$out_of_gas_392":                                ; preds = %"$have_gas_375"
  call void @_out_of_gas()
  br label %"$have_gas_393"

"$have_gas_393":                                  ; preds = %"$out_of_gas_392", %"$have_gas_375"
  %"$consume_394" = sub i64 %"$gasrem_390", 1
  store i64 %"$consume_394", i64* @_gasrem, align 8
  %t3 = alloca { i8*, i8* }*, align 8
  %"$gasrem_395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_396" = icmp ugt i64 1, %"$gasrem_395"
  br i1 %"$gascmp_396", label %"$out_of_gas_397", label %"$have_gas_398"

"$out_of_gas_397":                                ; preds = %"$have_gas_393"
  call void @_out_of_gas()
  br label %"$have_gas_398"

"$have_gas_398":                                  ; preds = %"$out_of_gas_397", %"$have_gas_393"
  %"$consume_399" = sub i64 %"$gasrem_395", 1
  store i64 %"$consume_399", i64* @_gasrem, align 8
  %"$tf_400" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_401" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_400", i32 2
  %"$tf_402" = bitcast { i8*, i8* }* %"$tf_401" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_403" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_402", align 8
  %"$tf_fptr_404" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_403", 0
  %"$tf_envptr_405" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_403", 1
  %"$tf_call_406" = call { i8*, i8* }* %"$tf_fptr_404"(i8* %"$tf_envptr_405"), !dbg !70
  store { i8*, i8* }* %"$tf_call_406", { i8*, i8* }** %t3, align 8, !dbg !71
  %"$gasrem_407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_408" = icmp ugt i64 1, %"$gasrem_407"
  br i1 %"$gascmp_408", label %"$out_of_gas_409", label %"$have_gas_410"

"$out_of_gas_409":                                ; preds = %"$have_gas_398"
  call void @_out_of_gas()
  br label %"$have_gas_410"

"$have_gas_410":                                  ; preds = %"$out_of_gas_409", %"$have_gas_398"
  %"$consume_411" = sub i64 %"$gasrem_407", 1
  store i64 %"$consume_411", i64* @_gasrem, align 8
  %t4 = alloca { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, align 8
  %"$gasrem_412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_413" = icmp ugt i64 1, %"$gasrem_412"
  br i1 %"$gascmp_413", label %"$out_of_gas_414", label %"$have_gas_415"

"$out_of_gas_414":                                ; preds = %"$have_gas_410"
  call void @_out_of_gas()
  br label %"$have_gas_415"

"$have_gas_415":                                  ; preds = %"$out_of_gas_414", %"$have_gas_410"
  %"$consume_416" = sub i64 %"$gasrem_412", 1
  store i64 %"$consume_416", i64* @_gasrem, align 8
  %"$t3_417" = load { i8*, i8* }*, { i8*, i8* }** %t3, align 8
  %"$t3_418" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t3_417", i32 3
  %"$t3_419" = bitcast { i8*, i8* }* %"$t3_418" to { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  %"$t3_420" = load { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }, { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$t3_419", align 8
  %"$t3_fptr_421" = extractvalue { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } %"$t3_420", 0
  %"$t3_envptr_422" = extractvalue { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } %"$t3_420", 1
  %"$t3_call_423" = call { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t3_fptr_421"(i8* %"$t3_envptr_422"), !dbg !72
  store { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t3_call_423", { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %t4, align 8, !dbg !73
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 1, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_415"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_415"
  %"$consume_428" = sub i64 %"$gasrem_424", 1
  store i64 %"$consume_428", i64* @_gasrem, align 8
  %uint32_one = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %uint32_one, metadata !74, metadata !DIExpression()), !dbg !75
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 1, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_427"
  %"$consume_433" = sub i64 %"$gasrem_429", 1
  store i64 %"$consume_433", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %uint32_one, align 4, !dbg !76
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_432"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_432"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %uint64_two = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %uint64_two, metadata !77, metadata !DIExpression()), !dbg !78
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_437"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  store %Uint64 { i64 2 }, %Uint64* %uint64_two, align 8, !dbg !79
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 1, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_442"
  %"$consume_448" = sub i64 %"$gasrem_444", 1
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %addr_bystr1 = alloca [1 x i8], align 1
  call void @llvm.dbg.declare(metadata [1 x i8]* %addr_bystr1, metadata !80, metadata !DIExpression()), !dbg !81
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 1, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %"$have_gas_447"
  %"$consume_453" = sub i64 %"$gasrem_449", 1
  store i64 %"$consume_453", i64* @_gasrem, align 8
  store [1 x i8] c"\AA", [1 x i8]* %addr_bystr1, align 1, !dbg !82
  %"$gasrem_454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_455" = icmp ugt i64 1, %"$gasrem_454"
  br i1 %"$gascmp_455", label %"$out_of_gas_456", label %"$have_gas_457"

"$out_of_gas_456":                                ; preds = %"$have_gas_452"
  call void @_out_of_gas()
  br label %"$have_gas_457"

"$have_gas_457":                                  ; preds = %"$out_of_gas_456", %"$have_gas_452"
  %"$consume_458" = sub i64 %"$gasrem_454", 1
  store i64 %"$consume_458", i64* @_gasrem, align 8
  %addr_bystr2 = alloca [2 x i8], align 1
  call void @llvm.dbg.declare(metadata [2 x i8]* %addr_bystr2, metadata !83, metadata !DIExpression()), !dbg !84
  %"$gasrem_459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_460" = icmp ugt i64 1, %"$gasrem_459"
  br i1 %"$gascmp_460", label %"$out_of_gas_461", label %"$have_gas_462"

"$out_of_gas_461":                                ; preds = %"$have_gas_457"
  call void @_out_of_gas()
  br label %"$have_gas_462"

"$have_gas_462":                                  ; preds = %"$out_of_gas_461", %"$have_gas_457"
  %"$consume_463" = sub i64 %"$gasrem_459", 1
  store i64 %"$consume_463", i64* @_gasrem, align 8
  store [2 x i8] c"\AA\BB", [2 x i8]* %addr_bystr2, align 1, !dbg !85
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 1, %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %"$have_gas_462"
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %"$have_gas_462"
  %"$consume_468" = sub i64 %"$gasrem_464", 1
  store i64 %"$consume_468", i64* @_gasrem, align 8
  %p1 = alloca %TName_Pair_Uint32_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Uint32_Uint64** %p1, metadata !86, metadata !DIExpression()), !dbg !87
  %"$gasrem_469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_470" = icmp ugt i64 1, %"$gasrem_469"
  br i1 %"$gascmp_470", label %"$out_of_gas_471", label %"$have_gas_472"

"$out_of_gas_471":                                ; preds = %"$have_gas_467"
  call void @_out_of_gas()
  br label %"$have_gas_472"

"$have_gas_472":                                  ; preds = %"$out_of_gas_471", %"$have_gas_467"
  %"$consume_473" = sub i64 %"$gasrem_469", 1
  store i64 %"$consume_473", i64* @_gasrem, align 8
  %"$t1_6" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$t1_474" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8
  %"$t1_fptr_475" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_474", 0
  %"$t1_envptr_476" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_474", 1
  %"$uint32_one_477" = load %Uint32, %Uint32* %uint32_one, align 4
  %"$t1_call_478" = call { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_fptr_475"(i8* %"$t1_envptr_476", %Uint32 %"$uint32_one_477"), !dbg !88
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_call_478", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_6", align 8, !dbg !88
  %"$t1_7" = alloca %TName_Pair_Uint32_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Uint32_Uint64** %"$t1_7", metadata !89, metadata !DIExpression()), !dbg !88
  %"$$t1_6_479" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_6", align 8
  %"$$t1_6_fptr_480" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_6_479", 0
  %"$$t1_6_envptr_481" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_6_479", 1
  %"$uint64_two_482" = load %Uint64, %Uint64* %uint64_two, align 8
  %"$$t1_6_call_483" = call %TName_Pair_Uint32_Uint64* %"$$t1_6_fptr_480"(i8* %"$$t1_6_envptr_481", %Uint64 %"$uint64_two_482"), !dbg !88
  store %TName_Pair_Uint32_Uint64* %"$$t1_6_call_483", %TName_Pair_Uint32_Uint64** %"$t1_7", align 8, !dbg !88
  %"$$t1_7_484" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$t1_7", align 8
  store %TName_Pair_Uint32_Uint64* %"$$t1_7_484", %TName_Pair_Uint32_Uint64** %p1, align 8, !dbg !88
  %"$gasrem_485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_486" = icmp ugt i64 1, %"$gasrem_485"
  br i1 %"$gascmp_486", label %"$out_of_gas_487", label %"$have_gas_488"

"$out_of_gas_487":                                ; preds = %"$have_gas_472"
  call void @_out_of_gas()
  br label %"$have_gas_488"

"$have_gas_488":                                  ; preds = %"$out_of_gas_487", %"$have_gas_472"
  %"$consume_489" = sub i64 %"$gasrem_485", 1
  store i64 %"$consume_489", i64* @_gasrem, align 8
  %p2 = alloca %TName_Pair_ByStr1_ByStr2*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_ByStr1_ByStr2** %p2, metadata !90, metadata !DIExpression()), !dbg !91
  %"$gasrem_490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_491" = icmp ugt i64 1, %"$gasrem_490"
  br i1 %"$gascmp_491", label %"$out_of_gas_492", label %"$have_gas_493"

"$out_of_gas_492":                                ; preds = %"$have_gas_488"
  call void @_out_of_gas()
  br label %"$have_gas_493"

"$have_gas_493":                                  ; preds = %"$out_of_gas_492", %"$have_gas_488"
  %"$consume_494" = sub i64 %"$gasrem_490", 1
  store i64 %"$consume_494", i64* @_gasrem, align 8
  %"$t4_8" = alloca { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, align 8
  %"$t4_495" = load { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %t4, align 8
  %"$t4_fptr_496" = extractvalue { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t4_495", 0
  %"$t4_envptr_497" = extractvalue { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t4_495", 1
  %"$addr_bystr1_498" = load [1 x i8], [1 x i8]* %addr_bystr1, align 1
  %"$t4_call_499" = call { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$t4_fptr_496"(i8* %"$t4_envptr_497", [1 x i8] %"$addr_bystr1_498"), !dbg !92
  store { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$t4_call_499", { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$t4_8", align 8, !dbg !92
  %"$t4_9" = alloca %TName_Pair_ByStr1_ByStr2*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_ByStr1_ByStr2** %"$t4_9", metadata !93, metadata !DIExpression()), !dbg !92
  %"$$t4_8_500" = load { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$t4_8", align 8
  %"$$t4_8_fptr_501" = extractvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$t4_8_500", 0
  %"$$t4_8_envptr_502" = extractvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$t4_8_500", 1
  %"$addr_bystr2_503" = load [2 x i8], [2 x i8]* %addr_bystr2, align 1
  %"$$t4_8_call_504" = call %TName_Pair_ByStr1_ByStr2* %"$$t4_8_fptr_501"(i8* %"$$t4_8_envptr_502", [2 x i8] %"$addr_bystr2_503"), !dbg !92
  store %TName_Pair_ByStr1_ByStr2* %"$$t4_8_call_504", %TName_Pair_ByStr1_ByStr2** %"$t4_9", align 8, !dbg !92
  %"$$t4_9_505" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %"$t4_9", align 8
  store %TName_Pair_ByStr1_ByStr2* %"$$t4_9_505", %TName_Pair_ByStr1_ByStr2** %p2, align 8, !dbg !92
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_493"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_493"
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %"$p1_511" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %p1, align 8
  %"$p2_512" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %p2, align 8
  %"$adtval_513_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_513_salloc" = call i8* @_salloc(i8* %"$adtval_513_load", i64 17)
  %"$adtval_513" = bitcast i8* %"$adtval_513_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  %"$adtgep_514" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_513", i32 0, i32 0
  store i8 0, i8* %"$adtgep_514", align 1
  %"$adtgep_515" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_513", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$p1_511", %TName_Pair_Uint32_Uint64** %"$adtgep_515", align 8
  %"$adtgep_516" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_513", i32 0, i32 2
  store %TName_Pair_ByStr1_ByStr2* %"$p2_512", %TName_Pair_ByStr1_ByStr2** %"$adtgep_516", align 8
  %"$adtptr_517" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_513" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtptr_517", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_10", align 8, !dbg !94
  %"$$expr_10_518" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_10", align 8
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$$expr_10_518"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_519" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_520" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$exprval_519" to i8*
  %"$execptr_load_521" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_521", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_75", i8* %"$memvoidcast_520")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "typ3-inst.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_35", linkageName: "$fundef_35", scope: !2, file: !2, line: 12, type: !4, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocation(line: 12, column: 6, scope: !3)
!9 = !DILocation(line: 12, column: 5, scope: !3)
!10 = distinct !DISubprogram(name: "$fundef_33", linkageName: "$fundef_33", scope: !2, file: !2, line: 11, type: !4, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!11 = !DILocation(line: 11, column: 3, scope: !10)
!12 = distinct !DISubprogram(name: "$fundef_31", linkageName: "$fundef_31", scope: !2, file: !2, line: 6, type: !4, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!13 = !DILocalVariable(name: "b", scope: !12, file: !2, line: 5, type: !14)
!14 = !DIBasicType(name: "ByStr2", size: 2)
!15 = !DILocation(line: 5, column: 8, scope: !12)
!16 = !DILocalVariable(name: "$retval_32", scope: !12, file: !2, line: 6, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Pair (ByStr1) (ByStr2)", baseType: !18, size: 8, align: 8, dwarfAddressSpace: 0)
!18 = !DIBasicType(name: "Pair (ByStr1) (ByStr2)", size: 8)
!19 = !DILocation(line: 6, column: 5, scope: !12)
!20 = distinct !DISubprogram(name: "$fundef_29", linkageName: "$fundef_29", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!21 = !DILocalVariable(name: "a", scope: !20, file: !2, line: 4, type: !22)
!22 = !DIBasicType(name: "ByStr1", size: 1)
!23 = !DILocation(line: 4, column: 8, scope: !20)
!24 = !DILocation(line: 6, column: 5, scope: !20)
!25 = distinct !DISubprogram(name: "$fundef_27", linkageName: "$fundef_27", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!26 = !DILocation(line: 5, column: 3, scope: !25)
!27 = distinct !DISubprogram(name: "$fundef_25", linkageName: "$fundef_25", scope: !2, file: !2, line: 6, type: !4, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!28 = !DILocalVariable(name: "b", scope: !27, file: !2, line: 5, type: !29)
!29 = !DIBasicType(name: "Uint64", size: 8)
!30 = !DILocation(line: 5, column: 8, scope: !27)
!31 = !DILocalVariable(name: "$retval_26", scope: !27, file: !2, line: 6, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Pair (ByStr1) (Uint64)", baseType: !33, size: 8, align: 8, dwarfAddressSpace: 0)
!33 = !DIBasicType(name: "Pair (ByStr1) (Uint64)", size: 8)
!34 = !DILocation(line: 6, column: 5, scope: !27)
!35 = distinct !DISubprogram(name: "$fundef_23", linkageName: "$fundef_23", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!36 = !DILocalVariable(name: "a", scope: !35, file: !2, line: 4, type: !22)
!37 = !DILocation(line: 4, column: 8, scope: !35)
!38 = !DILocation(line: 6, column: 5, scope: !35)
!39 = distinct !DISubprogram(name: "$fundef_21", linkageName: "$fundef_21", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!40 = !DILocation(line: 5, column: 3, scope: !39)
!41 = distinct !DISubprogram(name: "$fundef_19", linkageName: "$fundef_19", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!42 = !DILocation(line: 3, column: 3, scope: !41)
!43 = distinct !DISubprogram(name: "$fundef_17", linkageName: "$fundef_17", scope: !2, file: !2, line: 6, type: !4, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!44 = !DILocalVariable(name: "b", scope: !43, file: !2, line: 5, type: !29)
!45 = !DILocation(line: 5, column: 8, scope: !43)
!46 = !DILocalVariable(name: "$retval_18", scope: !43, file: !2, line: 6, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Pair (Uint32) (Uint64)", baseType: !48, size: 8, align: 8, dwarfAddressSpace: 0)
!48 = !DIBasicType(name: "Pair (Uint32) (Uint64)", size: 8)
!49 = !DILocation(line: 6, column: 5, scope: !43)
!50 = distinct !DISubprogram(name: "$fundef_15", linkageName: "$fundef_15", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!51 = !DILocalVariable(name: "a", scope: !50, file: !2, line: 4, type: !52)
!52 = !DIBasicType(name: "Uint32", size: 4)
!53 = !DILocation(line: 4, column: 8, scope: !50)
!54 = !DILocation(line: 6, column: 5, scope: !50)
!55 = distinct !DISubprogram(name: "$fundef_13", linkageName: "$fundef_13", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!56 = !DILocation(line: 5, column: 3, scope: !55)
!57 = distinct !DISubprogram(name: "$fundef_11", linkageName: "$fundef_11", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!58 = !DILocation(line: 3, column: 3, scope: !57)
!59 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !60, file: !60, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!60 = !DIFile(filename: ".", directory: ".")
!61 = !DILocation(line: 0, scope: !59)
!62 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !4, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!63 = !DILocalVariable(name: "$expr_10", scope: !62, file: !2, line: 2, type: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Pair (Pair (Uint32) (Uint64)) (Pair (ByStr1) (ByStr2))", baseType: !65, size: 8, align: 8, dwarfAddressSpace: 0)
!65 = !DIBasicType(name: "Pair (Pair (Uint32) (Uint64)) (Pair (ByStr1) (ByStr2))", size: 8)
!66 = !DILocation(line: 2, column: 3, scope: !62)
!67 = !DILocation(line: 10, column: 3, scope: !62)
!68 = !DILocation(line: 16, column: 11, scope: !62)
!69 = !DILocation(line: 16, column: 10, scope: !62)
!70 = !DILocation(line: 17, column: 11, scope: !62)
!71 = !DILocation(line: 17, column: 10, scope: !62)
!72 = !DILocation(line: 18, column: 11, scope: !62)
!73 = !DILocation(line: 18, column: 10, scope: !62)
!74 = !DILocalVariable(name: "uint32_one", scope: !62, file: !2, line: 19, type: !52)
!75 = !DILocation(line: 19, column: 5, scope: !62)
!76 = !DILocation(line: 19, column: 18, scope: !62)
!77 = !DILocalVariable(name: "uint64_two", scope: !62, file: !2, line: 20, type: !29)
!78 = !DILocation(line: 20, column: 5, scope: !62)
!79 = !DILocation(line: 20, column: 18, scope: !62)
!80 = !DILocalVariable(name: "addr_bystr1", scope: !62, file: !2, line: 21, type: !22)
!81 = !DILocation(line: 21, column: 5, scope: !62)
!82 = !DILocation(line: 21, column: 19, scope: !62)
!83 = !DILocalVariable(name: "addr_bystr2", scope: !62, file: !2, line: 22, type: !14)
!84 = !DILocation(line: 22, column: 5, scope: !62)
!85 = !DILocation(line: 22, column: 19, scope: !62)
!86 = !DILocalVariable(name: "p1", scope: !62, file: !2, line: 24, type: !47)
!87 = !DILocation(line: 24, column: 5, scope: !62)
!88 = !DILocation(line: 24, column: 10, scope: !62)
!89 = !DILocalVariable(name: "$t1_7", scope: !62, file: !2, line: 24, type: !47)
!90 = !DILocalVariable(name: "p2", scope: !62, file: !2, line: 25, type: !17)
!91 = !DILocation(line: 25, column: 5, scope: !62)
!92 = !DILocation(line: 25, column: 10, scope: !62)
!93 = !DILocalVariable(name: "$t4_9", scope: !62, file: !2, line: 25, type: !17)
!94 = !DILocation(line: 26, column: 1, scope: !62)
