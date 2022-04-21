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
%"$ParamDescr_516" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_517" = type { %ParamDescrString, i32, %"$ParamDescr_516"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_516"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_517"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_35"(%"$$fundef_35_env_109"* %0) !dbg !3 {
entry:
  %"$$fundef_35_env_tf_270" = getelementptr inbounds %"$$fundef_35_env_109", %"$$fundef_35_env_109"* %0, i32 0, i32 0
  %"$tf_envload_271" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_35_env_tf_270", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_271", { i8*, i8* }** %tf, align 8
  %"$retval_36" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 1, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %entry
  %"$consume_276" = sub i64 %"$gasrem_272", 1
  store i64 %"$consume_276", i64* @_gasrem, align 8
  %"$tf_277" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_278" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_277", i32 0
  %"$tf_279" = bitcast { i8*, i8* }* %"$tf_278" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_280" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_279", align 8
  %"$tf_fptr_281" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_280", 0
  %"$tf_envptr_282" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_280", 1
  %"$tf_call_283" = call { i8*, i8* }* %"$tf_fptr_281"(i8* %"$tf_envptr_282"), !dbg !8
  %"$tf_284" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_283", i32 1
  %"$tf_285" = bitcast { i8*, i8* }* %"$tf_284" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_286" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_285", align 8
  %"$tf_fptr_287" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_286", 0
  %"$tf_envptr_288" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_286", 1
  %"$tf_call_289" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_287"(i8* %"$tf_envptr_288"), !dbg !8
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_289", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_36", align 8, !dbg !9
  %"$$retval_36_290" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_36", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_36_290"
}

define internal { i8*, i8* }* @"$fundef_33"(%"$$fundef_33_env_110"* %0) !dbg !10 {
entry:
  %"$$fundef_33_env_tf_253" = getelementptr inbounds %"$$fundef_33_env_110", %"$$fundef_33_env_110"* %0, i32 0, i32 0
  %"$tf_envload_254" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_33_env_tf_253", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_254", { i8*, i8* }** %tf, align 8
  %"$retval_34" = alloca { i8*, i8* }*, align 8
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 1, %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %entry
  %"$consume_259" = sub i64 %"$gasrem_255", 1
  store i64 %"$consume_259", i64* @_gasrem, align 8
  %"$$fundef_35_envp_260_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_35_envp_260_salloc" = call i8* @_salloc(i8* %"$$fundef_35_envp_260_load", i64 8)
  %"$$fundef_35_envp_260" = bitcast i8* %"$$fundef_35_envp_260_salloc" to %"$$fundef_35_env_109"*
  %"$$fundef_35_env_voidp_262" = bitcast %"$$fundef_35_env_109"* %"$$fundef_35_envp_260" to i8*
  %"$$fundef_35_cloval_263" = insertvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_35_env_109"*)* @"$fundef_35" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_35_env_voidp_262", 1
  %"$$fundef_35_env_tf_264" = getelementptr inbounds %"$$fundef_35_env_109", %"$$fundef_35_env_109"* %"$$fundef_35_envp_260", i32 0, i32 0
  %"$tf_265" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_265", { i8*, i8* }** %"$$fundef_35_env_tf_264", align 8
  %"$dyndisp_table_266_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_266_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_266_salloc_load", i64 64)
  %"$dyndisp_table_266_salloc" = bitcast i8* %"$dyndisp_table_266_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_266" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_266_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_267" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_266", i32 1
  %"$dyndisp_pcast_268" = bitcast { i8*, i8* }* %"$dyndisp_gep_267" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_35_cloval_263", { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_268", align 8
  store { i8*, i8* }* %"$dyndisp_table_266", { i8*, i8* }** %"$retval_34", align 8, !dbg !11
  %"$$retval_34_269" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_34", align 8
  ret { i8*, i8* }* %"$$retval_34_269"
}

define internal %TName_Pair_ByStr1_ByStr2* @"$fundef_31"(%"$$fundef_31_env_111"* %0, [2 x i8] %1) !dbg !12 {
entry:
  %"$$fundef_31_env_a_239" = getelementptr inbounds %"$$fundef_31_env_111", %"$$fundef_31_env_111"* %0, i32 0, i32 0
  %"$a_envload_240" = load [1 x i8], [1 x i8]* %"$$fundef_31_env_a_239", align 1
  %a = alloca [1 x i8], align 1
  store [1 x i8] %"$a_envload_240", [1 x i8]* %a, align 1
  %"$retval_32" = alloca %TName_Pair_ByStr1_ByStr2*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_ByStr1_ByStr2** %"$retval_32", metadata !13, metadata !DIExpression()), !dbg !16
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 1, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %entry
  %"$consume_245" = sub i64 %"$gasrem_241", 1
  store i64 %"$consume_245", i64* @_gasrem, align 8
  %"$a_246" = load [1 x i8], [1 x i8]* %a, align 1
  %"$adtval_247_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_247_salloc" = call i8* @_salloc(i8* %"$adtval_247_load", i64 4)
  %"$adtval_247" = bitcast i8* %"$adtval_247_salloc" to %CName_Pair_ByStr1_ByStr2*
  %"$adtgep_248" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_247", i32 0, i32 0
  store i8 0, i8* %"$adtgep_248", align 1
  %"$adtgep_249" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_247", i32 0, i32 1
  store [1 x i8] %"$a_246", [1 x i8]* %"$adtgep_249", align 1
  %"$adtgep_250" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_247", i32 0, i32 2
  store [2 x i8] %1, [2 x i8]* %"$adtgep_250", align 1
  %"$adtptr_251" = bitcast %CName_Pair_ByStr1_ByStr2* %"$adtval_247" to %TName_Pair_ByStr1_ByStr2*
  store %TName_Pair_ByStr1_ByStr2* %"$adtptr_251", %TName_Pair_ByStr1_ByStr2** %"$retval_32", align 8, !dbg !16
  %"$$retval_32_252" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %"$retval_32", align 8
  ret %TName_Pair_ByStr1_ByStr2* %"$$retval_32_252"
}

define internal { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } @"$fundef_29"(%"$$fundef_29_env_112"* %0, [1 x i8] %1) !dbg !17 {
entry:
  %"$retval_30" = alloca { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, align 8
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 1, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %entry
  %"$consume_232" = sub i64 %"$gasrem_228", 1
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %"$$fundef_31_envp_233_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_31_envp_233_salloc" = call i8* @_salloc(i8* %"$$fundef_31_envp_233_load", i64 1)
  %"$$fundef_31_envp_233" = bitcast i8* %"$$fundef_31_envp_233_salloc" to %"$$fundef_31_env_111"*
  %"$$fundef_31_env_voidp_235" = bitcast %"$$fundef_31_env_111"* %"$$fundef_31_envp_233" to i8*
  %"$$fundef_31_cloval_236" = insertvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])* bitcast (%TName_Pair_ByStr1_ByStr2* (%"$$fundef_31_env_111"*, [2 x i8])* @"$fundef_31" to %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*), i8* undef }, i8* %"$$fundef_31_env_voidp_235", 1
  %"$$fundef_31_env_a_237" = getelementptr inbounds %"$$fundef_31_env_111", %"$$fundef_31_env_111"* %"$$fundef_31_envp_233", i32 0, i32 0
  store [1 x i8] %1, [1 x i8]* %"$$fundef_31_env_a_237", align 1
  store { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$fundef_31_cloval_236", { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$retval_30", align 8, !dbg !18
  %"$$retval_30_238" = load { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$retval_30", align 8
  ret { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$retval_30_238"
}

define internal { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } @"$fundef_27"(%"$$fundef_27_env_113"* %0) !dbg !19 {
entry:
  %"$retval_28" = alloca { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, align 8
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %entry
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  store { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])* bitcast ({ %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (%"$$fundef_29_env_112"*, [1 x i8])* @"$fundef_29" to { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*), i8* null }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_28", align 8, !dbg !20
  %"$$retval_28_227" = load { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_28", align 8
  ret { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$$retval_28_227"
}

define internal %TName_Pair_ByStr1_Uint64* @"$fundef_25"(%"$$fundef_25_env_114"* %0, %Uint64 %1) !dbg !21 {
entry:
  %"$$fundef_25_env_a_205" = getelementptr inbounds %"$$fundef_25_env_114", %"$$fundef_25_env_114"* %0, i32 0, i32 0
  %"$a_envload_206" = load [1 x i8], [1 x i8]* %"$$fundef_25_env_a_205", align 1
  %a = alloca [1 x i8], align 1
  store [1 x i8] %"$a_envload_206", [1 x i8]* %a, align 1
  %"$retval_26" = alloca %TName_Pair_ByStr1_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_ByStr1_Uint64** %"$retval_26", metadata !22, metadata !DIExpression()), !dbg !25
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 1, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %entry
  %"$consume_211" = sub i64 %"$gasrem_207", 1
  store i64 %"$consume_211", i64* @_gasrem, align 8
  %"$a_212" = load [1 x i8], [1 x i8]* %a, align 1
  %"$adtval_213_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_213_salloc" = call i8* @_salloc(i8* %"$adtval_213_load", i64 10)
  %"$adtval_213" = bitcast i8* %"$adtval_213_salloc" to %CName_Pair_ByStr1_Uint64*
  %"$adtgep_214" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_213", i32 0, i32 0
  store i8 0, i8* %"$adtgep_214", align 1
  %"$adtgep_215" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_213", i32 0, i32 1
  store [1 x i8] %"$a_212", [1 x i8]* %"$adtgep_215", align 1
  %"$adtgep_216" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_213", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_216", align 8
  %"$adtptr_217" = bitcast %CName_Pair_ByStr1_Uint64* %"$adtval_213" to %TName_Pair_ByStr1_Uint64*
  store %TName_Pair_ByStr1_Uint64* %"$adtptr_217", %TName_Pair_ByStr1_Uint64** %"$retval_26", align 8, !dbg !25
  %"$$retval_26_218" = load %TName_Pair_ByStr1_Uint64*, %TName_Pair_ByStr1_Uint64** %"$retval_26", align 8
  ret %TName_Pair_ByStr1_Uint64* %"$$retval_26_218"
}

define internal { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_23"(%"$$fundef_23_env_115"* %0, [1 x i8] %1) !dbg !26 {
entry:
  %"$retval_24" = alloca { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %entry
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %"$$fundef_25_envp_199_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_25_envp_199_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_199_load", i64 1)
  %"$$fundef_25_envp_199" = bitcast i8* %"$$fundef_25_envp_199_salloc" to %"$$fundef_25_env_114"*
  %"$$fundef_25_env_voidp_201" = bitcast %"$$fundef_25_env_114"* %"$$fundef_25_envp_199" to i8*
  %"$$fundef_25_cloval_202" = insertvalue { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_ByStr1_Uint64* (%"$$fundef_25_env_114"*, %Uint64)* @"$fundef_25" to %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_25_env_voidp_201", 1
  %"$$fundef_25_env_a_203" = getelementptr inbounds %"$$fundef_25_env_114", %"$$fundef_25_env_114"* %"$$fundef_25_envp_199", i32 0, i32 0
  store [1 x i8] %1, [1 x i8]* %"$$fundef_25_env_a_203", align 1
  store { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_25_cloval_202", { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_24", align 8, !dbg !27
  %"$$retval_24_204" = load { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_24", align 8
  ret { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_24_204"
}

define internal { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } @"$fundef_21"(%"$$fundef_21_env_116"* %0) !dbg !28 {
entry:
  %"$retval_22" = alloca { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }, align 8
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %entry
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  store { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])* bitcast ({ %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_23_env_115"*, [1 x i8])* @"$fundef_23" to { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*), i8* null }, { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_22", align 8, !dbg !29
  %"$$retval_22_193" = load { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_22", align 8
  ret { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } %"$$retval_22_193"
}

define internal { i8*, i8* }* @"$fundef_19"(%"$$fundef_19_env_117"* %0) !dbg !30 {
entry:
  %"$retval_20" = alloca { i8*, i8* }*, align 8
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %entry
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  %"$dyndisp_table_179_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_179_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_179_salloc_load", i64 64)
  %"$dyndisp_table_179_salloc" = bitcast i8* %"$dyndisp_table_179_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_179" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_179_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_180" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_179", i32 1
  %"$dyndisp_pcast_181" = bitcast { i8*, i8* }* %"$dyndisp_gep_180" to { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)* bitcast ({ { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (%"$$fundef_21_env_116"*)* @"$fundef_21" to { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_181", align 8
  %"$dyndisp_gep_182" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_179", i32 3
  %"$dyndisp_pcast_183" = bitcast { i8*, i8* }* %"$dyndisp_gep_182" to { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)* bitcast ({ { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (%"$$fundef_27_env_113"*)* @"$fundef_27" to { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_183", align 8
  store { i8*, i8* }* %"$dyndisp_table_179", { i8*, i8* }** %"$retval_20", align 8, !dbg !31
  %"$$retval_20_184" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_20", align 8
  ret { i8*, i8* }* %"$$retval_20_184"
}

define internal %TName_Pair_Uint32_Uint64* @"$fundef_17"(%"$$fundef_17_env_118"* %0, %Uint64 %1) !dbg !32 {
entry:
  %"$$fundef_17_env_a_154" = getelementptr inbounds %"$$fundef_17_env_118", %"$$fundef_17_env_118"* %0, i32 0, i32 0
  %"$a_envload_155" = load %Uint32, %Uint32* %"$$fundef_17_env_a_154", align 4
  %a = alloca %Uint32, align 8
  store %Uint32 %"$a_envload_155", %Uint32* %a, align 4
  %"$retval_18" = alloca %TName_Pair_Uint32_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Uint32_Uint64** %"$retval_18", metadata !33, metadata !DIExpression()), !dbg !36
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %entry
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %"$a_161" = load %Uint32, %Uint32* %a, align 4
  %"$adtval_162_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_162_salloc" = call i8* @_salloc(i8* %"$adtval_162_load", i64 13)
  %"$adtval_162" = bitcast i8* %"$adtval_162_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_163" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_162", i32 0, i32 0
  store i8 0, i8* %"$adtgep_163", align 1
  %"$adtgep_164" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_162", i32 0, i32 1
  store %Uint32 %"$a_161", %Uint32* %"$adtgep_164", align 4
  %"$adtgep_165" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_162", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_165", align 8
  %"$adtptr_166" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_162" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_166", %TName_Pair_Uint32_Uint64** %"$retval_18", align 8, !dbg !36
  %"$$retval_18_167" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$retval_18", align 8
  ret %TName_Pair_Uint32_Uint64* %"$$retval_18_167"
}

define internal { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_15"(%"$$fundef_15_env_119"* %0, %Uint32 %1) !dbg !37 {
entry:
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
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_17_cloval_151", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_16", align 8, !dbg !38
  %"$$retval_16_153" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_16", align 8
  ret { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_16_153"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_13"(%"$$fundef_13_env_120"* %0) !dbg !39 {
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
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)* bitcast ({ %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_15_env_119"*, %Uint32)* @"$fundef_15" to { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*), i8* null }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_14", align 8, !dbg !40
  %"$$retval_14_142" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_14", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_14_142"
}

define internal { i8*, i8* }* @"$fundef_11"(%"$$fundef_11_env_121"* %0) !dbg !41 {
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
  store { i8*, i8* }* %"$dyndisp_table_130", { i8*, i8* }** %"$retval_12", align 8, !dbg !42
  %"$$retval_12_133" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_12", align 8
  ret { i8*, i8* }* %"$$retval_12_133"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !43 {
entry:
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 5, %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %entry
  %"$consume_295" = sub i64 %"$gasrem_291", 5
  store i64 %"$consume_295", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !45
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 8, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$have_gas_294"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$have_gas_294"
  %"$consume_300" = sub i64 %"$gasrem_296", 8
  store i64 %"$consume_300", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !45
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 196, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_299"
  %"$consume_305" = sub i64 %"$gasrem_301", 196
  store i64 %"$consume_305", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !45
  %"$gasrem_306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_307" = icmp ugt i64 20, %"$gasrem_306"
  br i1 %"$gascmp_307", label %"$out_of_gas_308", label %"$have_gas_309"

"$out_of_gas_308":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_309"

"$have_gas_309":                                  ; preds = %"$out_of_gas_308", %"$have_gas_304"
  %"$consume_310" = sub i64 %"$gasrem_306", 20
  store i64 %"$consume_310", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !45
  %"$gasrem_311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_312" = icmp ugt i64 12, %"$gasrem_311"
  br i1 %"$gascmp_312", label %"$out_of_gas_313", label %"$have_gas_314"

"$out_of_gas_313":                                ; preds = %"$have_gas_309"
  call void @_out_of_gas()
  br label %"$have_gas_314"

"$have_gas_314":                                  ; preds = %"$out_of_gas_313", %"$have_gas_309"
  %"$consume_315" = sub i64 %"$gasrem_311", 12
  store i64 %"$consume_315", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !45
  %"$gasrem_316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_317" = icmp ugt i64 2, %"$gasrem_316"
  br i1 %"$gascmp_317", label %"$out_of_gas_318", label %"$have_gas_319"

"$out_of_gas_318":                                ; preds = %"$have_gas_314"
  call void @_out_of_gas()
  br label %"$have_gas_319"

"$have_gas_319":                                  ; preds = %"$out_of_gas_318", %"$have_gas_314"
  %"$consume_320" = sub i64 %"$gasrem_316", 2
  store i64 %"$consume_320", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !45
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* @_scilla_expr_fun(i8* %0) !dbg !46 {
entry:
  %"$expr_10" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*, align 8
  call void @llvm.dbg.declare(metadata %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_10", metadata !47, metadata !DIExpression()), !dbg !50
  %"$gasrem_321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_322" = icmp ugt i64 1, %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %entry
  %"$consume_325" = sub i64 %"$gasrem_321", 1
  store i64 %"$consume_325", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 1, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %"$have_gas_324"
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %"$have_gas_324"
  %"$consume_330" = sub i64 %"$gasrem_326", 1
  store i64 %"$consume_330", i64* @_gasrem, align 8
  %"$dyndisp_table_337_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_337_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_337_salloc_load", i64 64)
  %"$dyndisp_table_337_salloc" = bitcast i8* %"$dyndisp_table_337_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_337" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_337_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_338" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_337", i32 0
  %"$dyndisp_pcast_339" = bitcast { i8*, i8* }* %"$dyndisp_gep_338" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_11_env_121"*)* @"$fundef_11" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_339", align 8
  %"$dyndisp_gep_340" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_337", i32 2
  %"$dyndisp_pcast_341" = bitcast { i8*, i8* }* %"$dyndisp_gep_340" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_19_env_117"*)* @"$fundef_19" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_341", align 8
  store { i8*, i8* }* %"$dyndisp_table_337", { i8*, i8* }** %tf, align 8, !dbg !50
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_329"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_329"
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %tf1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_348" = icmp ugt i64 1, %"$gasrem_347"
  br i1 %"$gascmp_348", label %"$out_of_gas_349", label %"$have_gas_350"

"$out_of_gas_349":                                ; preds = %"$have_gas_345"
  call void @_out_of_gas()
  br label %"$have_gas_350"

"$have_gas_350":                                  ; preds = %"$out_of_gas_349", %"$have_gas_345"
  %"$consume_351" = sub i64 %"$gasrem_347", 1
  store i64 %"$consume_351", i64* @_gasrem, align 8
  %"$$fundef_33_envp_352_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_33_envp_352_salloc" = call i8* @_salloc(i8* %"$$fundef_33_envp_352_load", i64 8)
  %"$$fundef_33_envp_352" = bitcast i8* %"$$fundef_33_envp_352_salloc" to %"$$fundef_33_env_110"*
  %"$$fundef_33_env_voidp_354" = bitcast %"$$fundef_33_env_110"* %"$$fundef_33_envp_352" to i8*
  %"$$fundef_33_cloval_355" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_33_env_110"*)* @"$fundef_33" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_33_env_voidp_354", 1
  %"$$fundef_33_env_tf_356" = getelementptr inbounds %"$$fundef_33_env_110", %"$$fundef_33_env_110"* %"$$fundef_33_envp_352", i32 0, i32 0
  %"$tf_357" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_357", { i8*, i8* }** %"$$fundef_33_env_tf_356", align 8
  %"$dyndisp_table_358_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_358_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_358_salloc_load", i64 64)
  %"$dyndisp_table_358_salloc" = bitcast i8* %"$dyndisp_table_358_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_358" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_358_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_359" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_358", i32 0
  %"$dyndisp_pcast_360" = bitcast { i8*, i8* }* %"$dyndisp_gep_359" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_33_cloval_355", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_360", align 8
  store { i8*, i8* }* %"$dyndisp_table_358", { i8*, i8* }** %tf1, align 8, !dbg !51
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_350"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_350"
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %t1 = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_364"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  %"$tf1_371" = load { i8*, i8* }*, { i8*, i8* }** %tf1, align 8
  %"$tf1_372" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_371", i32 0
  %"$tf1_373" = bitcast { i8*, i8* }* %"$tf1_372" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_374" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_373", align 8
  %"$tf1_fptr_375" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_374", 0
  %"$tf1_envptr_376" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_374", 1
  %"$tf1_call_377" = call { i8*, i8* }* %"$tf1_fptr_375"(i8* %"$tf1_envptr_376"), !dbg !52
  %"$tf1_378" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_377", i32 1
  %"$tf1_379" = bitcast { i8*, i8* }* %"$tf1_378" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf1_380" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf1_379", align 8
  %"$tf1_fptr_381" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_380", 0
  %"$tf1_envptr_382" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_380", 1
  %"$tf1_call_383" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_fptr_381"(i8* %"$tf1_envptr_382"), !dbg !52
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_call_383", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8, !dbg !53
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 1, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_369"
  %"$consume_388" = sub i64 %"$gasrem_384", 1
  store i64 %"$consume_388", i64* @_gasrem, align 8
  %t3 = alloca { i8*, i8* }*, align 8
  %"$gasrem_389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_390" = icmp ugt i64 1, %"$gasrem_389"
  br i1 %"$gascmp_390", label %"$out_of_gas_391", label %"$have_gas_392"

"$out_of_gas_391":                                ; preds = %"$have_gas_387"
  call void @_out_of_gas()
  br label %"$have_gas_392"

"$have_gas_392":                                  ; preds = %"$out_of_gas_391", %"$have_gas_387"
  %"$consume_393" = sub i64 %"$gasrem_389", 1
  store i64 %"$consume_393", i64* @_gasrem, align 8
  %"$tf_394" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_395" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_394", i32 2
  %"$tf_396" = bitcast { i8*, i8* }* %"$tf_395" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_397" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_396", align 8
  %"$tf_fptr_398" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_397", 0
  %"$tf_envptr_399" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_397", 1
  %"$tf_call_400" = call { i8*, i8* }* %"$tf_fptr_398"(i8* %"$tf_envptr_399"), !dbg !54
  store { i8*, i8* }* %"$tf_call_400", { i8*, i8* }** %t3, align 8, !dbg !55
  %"$gasrem_401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_402" = icmp ugt i64 1, %"$gasrem_401"
  br i1 %"$gascmp_402", label %"$out_of_gas_403", label %"$have_gas_404"

"$out_of_gas_403":                                ; preds = %"$have_gas_392"
  call void @_out_of_gas()
  br label %"$have_gas_404"

"$have_gas_404":                                  ; preds = %"$out_of_gas_403", %"$have_gas_392"
  %"$consume_405" = sub i64 %"$gasrem_401", 1
  store i64 %"$consume_405", i64* @_gasrem, align 8
  %t4 = alloca { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, align 8
  %"$gasrem_406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_407" = icmp ugt i64 1, %"$gasrem_406"
  br i1 %"$gascmp_407", label %"$out_of_gas_408", label %"$have_gas_409"

"$out_of_gas_408":                                ; preds = %"$have_gas_404"
  call void @_out_of_gas()
  br label %"$have_gas_409"

"$have_gas_409":                                  ; preds = %"$out_of_gas_408", %"$have_gas_404"
  %"$consume_410" = sub i64 %"$gasrem_406", 1
  store i64 %"$consume_410", i64* @_gasrem, align 8
  %"$t3_411" = load { i8*, i8* }*, { i8*, i8* }** %t3, align 8
  %"$t3_412" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t3_411", i32 3
  %"$t3_413" = bitcast { i8*, i8* }* %"$t3_412" to { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  %"$t3_414" = load { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }, { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$t3_413", align 8
  %"$t3_fptr_415" = extractvalue { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } %"$t3_414", 0
  %"$t3_envptr_416" = extractvalue { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } %"$t3_414", 1
  %"$t3_call_417" = call { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t3_fptr_415"(i8* %"$t3_envptr_416"), !dbg !56
  store { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t3_call_417", { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %t4, align 8, !dbg !57
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_409"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_409"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %uint32_one = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %uint32_one, metadata !58, metadata !DIExpression()), !dbg !60
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_421"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %uint32_one, align 4, !dbg !61
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$have_gas_426"
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem, align 8
  %uint64_two = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %uint64_two, metadata !62, metadata !DIExpression()), !dbg !64
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_431"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_431"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  store %Uint64 { i64 2 }, %Uint64* %uint64_two, align 8, !dbg !65
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 1, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %"$have_gas_436"
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %"$have_gas_436"
  %"$consume_442" = sub i64 %"$gasrem_438", 1
  store i64 %"$consume_442", i64* @_gasrem, align 8
  %addr_bystr1 = alloca [1 x i8], align 1
  call void @llvm.dbg.declare(metadata [1 x i8]* %addr_bystr1, metadata !66, metadata !DIExpression()), !dbg !68
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$have_gas_441"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$have_gas_441"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem, align 8
  store [1 x i8] c"\AA", [1 x i8]* %addr_bystr1, align 1, !dbg !69
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 1, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_446"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_446"
  %"$consume_452" = sub i64 %"$gasrem_448", 1
  store i64 %"$consume_452", i64* @_gasrem, align 8
  %addr_bystr2 = alloca [2 x i8], align 1
  call void @llvm.dbg.declare(metadata [2 x i8]* %addr_bystr2, metadata !70, metadata !DIExpression()), !dbg !72
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_451"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  store [2 x i8] c"\AA\BB", [2 x i8]* %addr_bystr2, align 1, !dbg !73
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 1, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$have_gas_456"
  %"$consume_462" = sub i64 %"$gasrem_458", 1
  store i64 %"$consume_462", i64* @_gasrem, align 8
  %p1 = alloca %TName_Pair_Uint32_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Uint32_Uint64** %p1, metadata !74, metadata !DIExpression()), !dbg !75
  %"$gasrem_463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_464" = icmp ugt i64 1, %"$gasrem_463"
  br i1 %"$gascmp_464", label %"$out_of_gas_465", label %"$have_gas_466"

"$out_of_gas_465":                                ; preds = %"$have_gas_461"
  call void @_out_of_gas()
  br label %"$have_gas_466"

"$have_gas_466":                                  ; preds = %"$out_of_gas_465", %"$have_gas_461"
  %"$consume_467" = sub i64 %"$gasrem_463", 1
  store i64 %"$consume_467", i64* @_gasrem, align 8
  %"$t1_6" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$t1_468" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8
  %"$t1_fptr_469" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_468", 0
  %"$t1_envptr_470" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_468", 1
  %"$uint32_one_471" = load %Uint32, %Uint32* %uint32_one, align 4
  %"$t1_call_472" = call { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_fptr_469"(i8* %"$t1_envptr_470", %Uint32 %"$uint32_one_471"), !dbg !76
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_call_472", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_6", align 8, !dbg !76
  %"$t1_7" = alloca %TName_Pair_Uint32_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Uint32_Uint64** %"$t1_7", metadata !77, metadata !DIExpression()), !dbg !76
  %"$$t1_6_473" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_6", align 8
  %"$$t1_6_fptr_474" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_6_473", 0
  %"$$t1_6_envptr_475" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_6_473", 1
  %"$uint64_two_476" = load %Uint64, %Uint64* %uint64_two, align 8
  %"$$t1_6_call_477" = call %TName_Pair_Uint32_Uint64* %"$$t1_6_fptr_474"(i8* %"$$t1_6_envptr_475", %Uint64 %"$uint64_two_476"), !dbg !76
  store %TName_Pair_Uint32_Uint64* %"$$t1_6_call_477", %TName_Pair_Uint32_Uint64** %"$t1_7", align 8, !dbg !76
  %"$$t1_7_478" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$t1_7", align 8
  store %TName_Pair_Uint32_Uint64* %"$$t1_7_478", %TName_Pair_Uint32_Uint64** %p1, align 8, !dbg !76
  %"$gasrem_479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_480" = icmp ugt i64 1, %"$gasrem_479"
  br i1 %"$gascmp_480", label %"$out_of_gas_481", label %"$have_gas_482"

"$out_of_gas_481":                                ; preds = %"$have_gas_466"
  call void @_out_of_gas()
  br label %"$have_gas_482"

"$have_gas_482":                                  ; preds = %"$out_of_gas_481", %"$have_gas_466"
  %"$consume_483" = sub i64 %"$gasrem_479", 1
  store i64 %"$consume_483", i64* @_gasrem, align 8
  %p2 = alloca %TName_Pair_ByStr1_ByStr2*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_ByStr1_ByStr2** %p2, metadata !78, metadata !DIExpression()), !dbg !79
  %"$gasrem_484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_485" = icmp ugt i64 1, %"$gasrem_484"
  br i1 %"$gascmp_485", label %"$out_of_gas_486", label %"$have_gas_487"

"$out_of_gas_486":                                ; preds = %"$have_gas_482"
  call void @_out_of_gas()
  br label %"$have_gas_487"

"$have_gas_487":                                  ; preds = %"$out_of_gas_486", %"$have_gas_482"
  %"$consume_488" = sub i64 %"$gasrem_484", 1
  store i64 %"$consume_488", i64* @_gasrem, align 8
  %"$t4_8" = alloca { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, align 8
  %"$t4_489" = load { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %t4, align 8
  %"$t4_fptr_490" = extractvalue { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t4_489", 0
  %"$t4_envptr_491" = extractvalue { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t4_489", 1
  %"$addr_bystr1_492" = load [1 x i8], [1 x i8]* %addr_bystr1, align 1
  %"$t4_call_493" = call { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$t4_fptr_490"(i8* %"$t4_envptr_491", [1 x i8] %"$addr_bystr1_492"), !dbg !80
  store { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$t4_call_493", { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$t4_8", align 8, !dbg !80
  %"$t4_9" = alloca %TName_Pair_ByStr1_ByStr2*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_ByStr1_ByStr2** %"$t4_9", metadata !81, metadata !DIExpression()), !dbg !80
  %"$$t4_8_494" = load { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$t4_8", align 8
  %"$$t4_8_fptr_495" = extractvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$t4_8_494", 0
  %"$$t4_8_envptr_496" = extractvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$t4_8_494", 1
  %"$addr_bystr2_497" = load [2 x i8], [2 x i8]* %addr_bystr2, align 1
  %"$$t4_8_call_498" = call %TName_Pair_ByStr1_ByStr2* %"$$t4_8_fptr_495"(i8* %"$$t4_8_envptr_496", [2 x i8] %"$addr_bystr2_497"), !dbg !80
  store %TName_Pair_ByStr1_ByStr2* %"$$t4_8_call_498", %TName_Pair_ByStr1_ByStr2** %"$t4_9", align 8, !dbg !80
  %"$$t4_9_499" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %"$t4_9", align 8
  store %TName_Pair_ByStr1_ByStr2* %"$$t4_9_499", %TName_Pair_ByStr1_ByStr2** %p2, align 8, !dbg !80
  %"$gasrem_500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_501" = icmp ugt i64 1, %"$gasrem_500"
  br i1 %"$gascmp_501", label %"$out_of_gas_502", label %"$have_gas_503"

"$out_of_gas_502":                                ; preds = %"$have_gas_487"
  call void @_out_of_gas()
  br label %"$have_gas_503"

"$have_gas_503":                                  ; preds = %"$out_of_gas_502", %"$have_gas_487"
  %"$consume_504" = sub i64 %"$gasrem_500", 1
  store i64 %"$consume_504", i64* @_gasrem, align 8
  %"$p1_505" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %p1, align 8
  %"$p2_506" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %p2, align 8
  %"$adtval_507_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_507_salloc" = call i8* @_salloc(i8* %"$adtval_507_load", i64 17)
  %"$adtval_507" = bitcast i8* %"$adtval_507_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  %"$adtgep_508" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_507", i32 0, i32 0
  store i8 0, i8* %"$adtgep_508", align 1
  %"$adtgep_509" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_507", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$p1_505", %TName_Pair_Uint32_Uint64** %"$adtgep_509", align 8
  %"$adtgep_510" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_507", i32 0, i32 2
  store %TName_Pair_ByStr1_ByStr2* %"$p2_506", %TName_Pair_ByStr1_ByStr2** %"$adtgep_510", align 8
  %"$adtptr_511" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_507" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtptr_511", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_10", align 8, !dbg !82
  %"$$expr_10_512" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_10", align 8
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$$expr_10_512"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_513" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_514" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$exprval_513" to i8*
  %"$execptr_load_515" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_515", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_75", i8* %"$memvoidcast_514")
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
!13 = !DILocalVariable(name: "$retval_32", scope: !12, file: !2, line: 6, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Pair (ByStr1) (ByStr2)", baseType: !15, size: 8, align: 8, dwarfAddressSpace: 0)
!15 = !DIBasicType(name: "Pair (ByStr1) (ByStr2)", size: 8)
!16 = !DILocation(line: 6, column: 5, scope: !12)
!17 = distinct !DISubprogram(name: "$fundef_29", linkageName: "$fundef_29", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!18 = !DILocation(line: 6, column: 5, scope: !17)
!19 = distinct !DISubprogram(name: "$fundef_27", linkageName: "$fundef_27", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!20 = !DILocation(line: 5, column: 3, scope: !19)
!21 = distinct !DISubprogram(name: "$fundef_25", linkageName: "$fundef_25", scope: !2, file: !2, line: 6, type: !4, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!22 = !DILocalVariable(name: "$retval_26", scope: !21, file: !2, line: 6, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Pair (ByStr1) (Uint64)", baseType: !24, size: 8, align: 8, dwarfAddressSpace: 0)
!24 = !DIBasicType(name: "Pair (ByStr1) (Uint64)", size: 8)
!25 = !DILocation(line: 6, column: 5, scope: !21)
!26 = distinct !DISubprogram(name: "$fundef_23", linkageName: "$fundef_23", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!27 = !DILocation(line: 6, column: 5, scope: !26)
!28 = distinct !DISubprogram(name: "$fundef_21", linkageName: "$fundef_21", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!29 = !DILocation(line: 5, column: 3, scope: !28)
!30 = distinct !DISubprogram(name: "$fundef_19", linkageName: "$fundef_19", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!31 = !DILocation(line: 3, column: 3, scope: !30)
!32 = distinct !DISubprogram(name: "$fundef_17", linkageName: "$fundef_17", scope: !2, file: !2, line: 6, type: !4, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!33 = !DILocalVariable(name: "$retval_18", scope: !32, file: !2, line: 6, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Pair (Uint32) (Uint64)", baseType: !35, size: 8, align: 8, dwarfAddressSpace: 0)
!35 = !DIBasicType(name: "Pair (Uint32) (Uint64)", size: 8)
!36 = !DILocation(line: 6, column: 5, scope: !32)
!37 = distinct !DISubprogram(name: "$fundef_15", linkageName: "$fundef_15", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!38 = !DILocation(line: 6, column: 5, scope: !37)
!39 = distinct !DISubprogram(name: "$fundef_13", linkageName: "$fundef_13", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!40 = !DILocation(line: 5, column: 3, scope: !39)
!41 = distinct !DISubprogram(name: "$fundef_11", linkageName: "$fundef_11", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!42 = !DILocation(line: 3, column: 3, scope: !41)
!43 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !44, file: !44, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!44 = !DIFile(filename: ".", directory: ".")
!45 = !DILocation(line: 0, scope: !43)
!46 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !4, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!47 = !DILocalVariable(name: "$expr_10", scope: !46, file: !2, line: 2, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Pair (Pair (Uint32) (Uint64)) (Pair (ByStr1) (ByStr2))", baseType: !49, size: 8, align: 8, dwarfAddressSpace: 0)
!49 = !DIBasicType(name: "Pair (Pair (Uint32) (Uint64)) (Pair (ByStr1) (ByStr2))", size: 8)
!50 = !DILocation(line: 2, column: 3, scope: !46)
!51 = !DILocation(line: 10, column: 3, scope: !46)
!52 = !DILocation(line: 16, column: 11, scope: !46)
!53 = !DILocation(line: 16, column: 10, scope: !46)
!54 = !DILocation(line: 17, column: 11, scope: !46)
!55 = !DILocation(line: 17, column: 10, scope: !46)
!56 = !DILocation(line: 18, column: 11, scope: !46)
!57 = !DILocation(line: 18, column: 10, scope: !46)
!58 = !DILocalVariable(name: "uint32_one", scope: !46, file: !2, line: 19, type: !59)
!59 = !DIBasicType(name: "Uint32", size: 4)
!60 = !DILocation(line: 19, column: 5, scope: !46)
!61 = !DILocation(line: 19, column: 18, scope: !46)
!62 = !DILocalVariable(name: "uint64_two", scope: !46, file: !2, line: 20, type: !63)
!63 = !DIBasicType(name: "Uint64", size: 8)
!64 = !DILocation(line: 20, column: 5, scope: !46)
!65 = !DILocation(line: 20, column: 18, scope: !46)
!66 = !DILocalVariable(name: "addr_bystr1", scope: !46, file: !2, line: 21, type: !67)
!67 = !DIBasicType(name: "ByStr1", size: 1)
!68 = !DILocation(line: 21, column: 5, scope: !46)
!69 = !DILocation(line: 21, column: 19, scope: !46)
!70 = !DILocalVariable(name: "addr_bystr2", scope: !46, file: !2, line: 22, type: !71)
!71 = !DIBasicType(name: "ByStr2", size: 2)
!72 = !DILocation(line: 22, column: 5, scope: !46)
!73 = !DILocation(line: 22, column: 19, scope: !46)
!74 = !DILocalVariable(name: "p1", scope: !46, file: !2, line: 24, type: !34)
!75 = !DILocation(line: 24, column: 5, scope: !46)
!76 = !DILocation(line: 24, column: 10, scope: !46)
!77 = !DILocalVariable(name: "$t1_7", scope: !46, file: !2, line: 24, type: !34)
!78 = !DILocalVariable(name: "p2", scope: !46, file: !2, line: 25, type: !14)
!79 = !DILocation(line: 25, column: 5, scope: !46)
!80 = !DILocation(line: 25, column: 10, scope: !46)
!81 = !DILocalVariable(name: "$t4_9", scope: !46, file: !2, line: 25, type: !14)
!82 = !DILocation(line: 26, column: 1, scope: !46)
