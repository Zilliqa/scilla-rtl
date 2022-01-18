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

%"$TyDescrTy_PrimTyp_37" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_71" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_70"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_70" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_72"**, %"$TyDescrTy_ADTTyp_71"* }
%"$TyDescrTy_ADTTyp_Constr_72" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_514" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_515" = type { %ParamDescrString, i32, %"$ParamDescr_514"* }
%TName_Pair_Uint32_Uint64 = type { i8, %CName_Pair_Uint32_Uint64* }
%CName_Pair_Uint32_Uint64 = type <{ i8, %Uint32, %Uint64 }>
%Uint64 = type { i64 }
%Uint32 = type { i32 }
%"$$fundef_35_env_107" = type { { i8*, i8* }* }
%"$$fundef_33_env_108" = type { { i8*, i8* }* }
%TName_Pair_ByStr1_ByStr2 = type { i8, %CName_Pair_ByStr1_ByStr2* }
%CName_Pair_ByStr1_ByStr2 = type <{ i8, [1 x i8], [2 x i8] }>
%"$$fundef_31_env_109" = type { [1 x i8] }
%"$$fundef_29_env_110" = type {}
%"$$fundef_27_env_111" = type {}
%TName_Pair_ByStr1_Uint64 = type { i8, %CName_Pair_ByStr1_Uint64* }
%CName_Pair_ByStr1_Uint64 = type <{ i8, [1 x i8], %Uint64 }>
%"$$fundef_25_env_112" = type { [1 x i8] }
%"$$fundef_23_env_113" = type {}
%"$$fundef_21_env_114" = type {}
%"$$fundef_19_env_115" = type {}
%"$$fundef_17_env_116" = type { %Uint32 }
%"$$fundef_15_env_117" = type {}
%"$$fundef_13_env_118" = type {}
%"$$fundef_11_env_119" = type {}
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
@"$TyDescr_Bystr_Prim_64" = global %"$TyDescrTy_PrimTyp_37" { i32 7, i32 0 }
@"$TyDescr_Bystr_65" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_Bystr_Prim_64" to i8*) }
@"$TyDescr_Bystr2_Prim_66" = global %"$TyDescrTy_PrimTyp_37" { i32 8, i32 2 }
@"$TyDescr_Bystr2_67" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_Bystr2_Prim_66" to i8*) }
@"$TyDescr_Bystr1_Prim_68" = global %"$TyDescrTy_PrimTyp_37" { i32 8, i32 1 }
@"$TyDescr_Bystr1_69" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_37"* @"$TyDescr_Bystr1_Prim_68" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_73" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_70"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_86" to i8*) }
@"$TyDescr_ADT_Pair_ByStr1_ByStr2_74" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_70"* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_92" to i8*) }
@"$TyDescr_ADT_Pair_ByStr1_Uint64_75" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_70"* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_98" to i8*) }
@"$TyDescr_ADT_Pair_Uint32_Uint64_76" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_70"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_104" to i8*) }
@"$TyDescr_Pair_ADTTyp_80" = unnamed_addr constant %"$TyDescrTy_ADTTyp_71" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_106", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 4, %"$TyDescrTy_ADTTyp_Specl_70"** getelementptr inbounds ([4 x %"$TyDescrTy_ADTTyp_Specl_70"*], [4 x %"$TyDescrTy_ADTTyp_Specl_70"*]* @"$TyDescr_Pair_ADTTyp_m_specls_105", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_Constr_m_args_81" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_76", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr1_ByStr2_74"]
@"$TyDescr_ADT_Pair_82" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Constr_83" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_72" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_82", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_Constr_m_args_81", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_constrs_84" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_72"*] [%"$TyDescrTy_ADTTyp_Constr_72"* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Constr_83"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_TArgs_85" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_76", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr1_ByStr2_74"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_86" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_70" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_TArgs_85", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_72"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_72"*], [1 x %"$TyDescrTy_ADTTyp_Constr_72"*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_m_constrs_84", i32 0, i32 0), %"$TyDescrTy_ADTTyp_71"* @"$TyDescr_Pair_ADTTyp_80" }
@"$TyDescr_Pair_Pair_ByStr1_ByStr2_Constr_m_args_87" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_69", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_67"]
@"$TyDescr_ADT_Pair_88" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr1_ByStr2_ADTTyp_Constr_89" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_72" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_88", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr1_ByStr2_Constr_m_args_87", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_constrs_90" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_72"*] [%"$TyDescrTy_ADTTyp_Constr_72"* @"$TyDescr_Pair_Pair_ByStr1_ByStr2_ADTTyp_Constr_89"]
@"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_TArgs_91" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_69", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_67"]
@"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_92" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_70" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_TArgs_91", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_72"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_72"*], [1 x %"$TyDescrTy_ADTTyp_Constr_72"*]* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_m_constrs_90", i32 0, i32 0), %"$TyDescrTy_ADTTyp_71"* @"$TyDescr_Pair_ADTTyp_80" }
@"$TyDescr_Pair_Pair_ByStr1_Uint64_Constr_m_args_93" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_69", %_TyDescrTy_Typ* @"$TyDescr_Uint64_45"]
@"$TyDescr_ADT_Pair_94" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr1_Uint64_ADTTyp_Constr_95" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_72" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_94", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr1_Uint64_Constr_m_args_93", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_constrs_96" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_72"*] [%"$TyDescrTy_ADTTyp_Constr_72"* @"$TyDescr_Pair_Pair_ByStr1_Uint64_ADTTyp_Constr_95"]
@"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_TArgs_97" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr1_69", %_TyDescrTy_Typ* @"$TyDescr_Uint64_45"]
@"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_98" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_70" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_TArgs_97", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_72"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_72"*], [1 x %"$TyDescrTy_ADTTyp_Constr_72"*]* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_m_constrs_96", i32 0, i32 0), %"$TyDescrTy_ADTTyp_71"* @"$TyDescr_Pair_ADTTyp_80" }
@"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_99" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_41", %_TyDescrTy_Typ* @"$TyDescr_Uint64_45"]
@"$TyDescr_ADT_Pair_100" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_101" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_72" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_100", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_99", i32 0, i32 0) }
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_102" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_72"*] [%"$TyDescrTy_ADTTyp_Constr_72"* @"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_101"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_103" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_41", %_TyDescrTy_Typ* @"$TyDescr_Uint64_45"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_104" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_70" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_103", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_72"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_72"*], [1 x %"$TyDescrTy_ADTTyp_Constr_72"*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_102", i32 0, i32 0), %"$TyDescrTy_ADTTyp_71"* @"$TyDescr_Pair_ADTTyp_80" }
@"$TyDescr_Pair_ADTTyp_m_specls_105" = unnamed_addr constant [4 x %"$TyDescrTy_ADTTyp_Specl_70"*] [%"$TyDescrTy_ADTTyp_Specl_70"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_ADTTyp_Specl_86", %"$TyDescrTy_ADTTyp_Specl_70"* @"$TyDescr_Pair_ByStr1_ByStr2_ADTTyp_Specl_92", %"$TyDescrTy_ADTTyp_Specl_70"* @"$TyDescr_Pair_ByStr1_Uint64_ADTTyp_Specl_98", %"$TyDescrTy_ADTTyp_Specl_70"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_104"]
@"$TyDescr_ADT_Pair_106" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [20 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr1_Uint64_75", %_TyDescrTy_Typ* @"$TyDescr_Event_61", %_TyDescrTy_Typ* @"$TyDescr_Int64_43", %_TyDescrTy_Typ* @"$TyDescr_Uint256_53", %_TyDescrTy_Typ* @"$TyDescr_Uint32_41", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr1_ByStr2_74", %_TyDescrTy_Typ* @"$TyDescr_Uint64_45", %_TyDescrTy_Typ* @"$TyDescr_Bnum_57", %_TyDescrTy_Typ* @"$TyDescr_Uint128_49", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_76", %_TyDescrTy_Typ* @"$TyDescr_Exception_63", %_TyDescrTy_Typ* @"$TyDescr_String_55", %_TyDescrTy_Typ* @"$TyDescr_Bystr1_69", %_TyDescrTy_Typ* @"$TyDescr_Int256_51", %_TyDescrTy_Typ* @"$TyDescr_Int128_47", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_73", %_TyDescrTy_Typ* @"$TyDescr_Bystr_65", %_TyDescrTy_Typ* @"$TyDescr_Message_59", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_67", %_TyDescrTy_Typ* @"$TyDescr_Int32_39"]
@_tydescr_table_length = constant i32 20
@_contract_parameters = constant [0 x %"$ParamDescr_514"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_515"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_35"(%"$$fundef_35_env_107"* %0) !dbg !4 {
entry:
  %"$$fundef_35_env_tf_268" = getelementptr inbounds %"$$fundef_35_env_107", %"$$fundef_35_env_107"* %0, i32 0, i32 0
  %"$tf_envload_269" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_35_env_tf_268", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_269", { i8*, i8* }** %tf, align 8
  %"$retval_36" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 1, %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %entry
  %"$consume_274" = sub i64 %"$gasrem_270", 1
  store i64 %"$consume_274", i64* @_gasrem, align 8
  %"$tf_275" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_276" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_275", i32 0
  %"$tf_277" = bitcast { i8*, i8* }* %"$tf_276" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_278" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_277", align 8
  %"$tf_fptr_279" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_278", 0
  %"$tf_envptr_280" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_278", 1
  %"$tf_call_281" = call { i8*, i8* }* %"$tf_fptr_279"(i8* %"$tf_envptr_280"), !dbg !8
  %"$tf_282" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_281", i32 1
  %"$tf_283" = bitcast { i8*, i8* }* %"$tf_282" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_284" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_283", align 8
  %"$tf_fptr_285" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_284", 0
  %"$tf_envptr_286" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_284", 1
  %"$tf_call_287" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_285"(i8* %"$tf_envptr_286"), !dbg !8
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_287", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_36", align 8, !dbg !9
  %"$$retval_36_288" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_36", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_36_288"
}

define internal { i8*, i8* }* @"$fundef_33"(%"$$fundef_33_env_108"* %0) !dbg !10 {
entry:
  %"$$fundef_33_env_tf_251" = getelementptr inbounds %"$$fundef_33_env_108", %"$$fundef_33_env_108"* %0, i32 0, i32 0
  %"$tf_envload_252" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_33_env_tf_251", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_252", { i8*, i8* }** %tf, align 8
  %"$retval_34" = alloca { i8*, i8* }*, align 8
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %entry
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %"$$fundef_35_envp_258_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_35_envp_258_salloc" = call i8* @_salloc(i8* %"$$fundef_35_envp_258_load", i64 8)
  %"$$fundef_35_envp_258" = bitcast i8* %"$$fundef_35_envp_258_salloc" to %"$$fundef_35_env_107"*
  %"$$fundef_35_env_voidp_260" = bitcast %"$$fundef_35_env_107"* %"$$fundef_35_envp_258" to i8*
  %"$$fundef_35_cloval_261" = insertvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_35_env_107"*)* @"$fundef_35" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_35_env_voidp_260", 1
  %"$$fundef_35_env_tf_262" = getelementptr inbounds %"$$fundef_35_env_107", %"$$fundef_35_env_107"* %"$$fundef_35_envp_258", i32 0, i32 0
  %"$tf_263" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_263", { i8*, i8* }** %"$$fundef_35_env_tf_262", align 8
  %"$dyndisp_table_264_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_264_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_264_salloc_load", i64 64)
  %"$dyndisp_table_264_salloc" = bitcast i8* %"$dyndisp_table_264_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_264" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_264_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_265" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_264", i32 1
  %"$dyndisp_pcast_266" = bitcast { i8*, i8* }* %"$dyndisp_gep_265" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_35_cloval_261", { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_266", align 8
  store { i8*, i8* }* %"$dyndisp_table_264", { i8*, i8* }** %"$retval_34", align 8, !dbg !11
  %"$$retval_34_267" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_34", align 8
  ret { i8*, i8* }* %"$$retval_34_267"
}

define internal %TName_Pair_ByStr1_ByStr2* @"$fundef_31"(%"$$fundef_31_env_109"* %0, [2 x i8] %1) !dbg !12 {
entry:
  %"$$fundef_31_env_a_237" = getelementptr inbounds %"$$fundef_31_env_109", %"$$fundef_31_env_109"* %0, i32 0, i32 0
  %"$a_envload_238" = load [1 x i8], [1 x i8]* %"$$fundef_31_env_a_237", align 1
  %a = alloca [1 x i8], align 1
  store [1 x i8] %"$a_envload_238", [1 x i8]* %a, align 1
  %"$retval_32" = alloca %TName_Pair_ByStr1_ByStr2*, align 8
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 1, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %entry
  %"$consume_243" = sub i64 %"$gasrem_239", 1
  store i64 %"$consume_243", i64* @_gasrem, align 8
  %"$a_244" = load [1 x i8], [1 x i8]* %a, align 1
  %"$adtval_245_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_245_salloc" = call i8* @_salloc(i8* %"$adtval_245_load", i64 4)
  %"$adtval_245" = bitcast i8* %"$adtval_245_salloc" to %CName_Pair_ByStr1_ByStr2*
  %"$adtgep_246" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_245", i32 0, i32 0
  store i8 0, i8* %"$adtgep_246", align 1
  %"$adtgep_247" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_245", i32 0, i32 1
  store [1 x i8] %"$a_244", [1 x i8]* %"$adtgep_247", align 1
  %"$adtgep_248" = getelementptr inbounds %CName_Pair_ByStr1_ByStr2, %CName_Pair_ByStr1_ByStr2* %"$adtval_245", i32 0, i32 2
  store [2 x i8] %1, [2 x i8]* %"$adtgep_248", align 1
  %"$adtptr_249" = bitcast %CName_Pair_ByStr1_ByStr2* %"$adtval_245" to %TName_Pair_ByStr1_ByStr2*
  store %TName_Pair_ByStr1_ByStr2* %"$adtptr_249", %TName_Pair_ByStr1_ByStr2** %"$retval_32", align 8, !dbg !13
  %"$$retval_32_250" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %"$retval_32", align 8
  ret %TName_Pair_ByStr1_ByStr2* %"$$retval_32_250"
}

define internal { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } @"$fundef_29"(%"$$fundef_29_env_110"* %0, [1 x i8] %1) !dbg !14 {
entry:
  %"$retval_30" = alloca { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, align 8
  %"$gasrem_226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_227" = icmp ugt i64 1, %"$gasrem_226"
  br i1 %"$gascmp_227", label %"$out_of_gas_228", label %"$have_gas_229"

"$out_of_gas_228":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_229"

"$have_gas_229":                                  ; preds = %"$out_of_gas_228", %entry
  %"$consume_230" = sub i64 %"$gasrem_226", 1
  store i64 %"$consume_230", i64* @_gasrem, align 8
  %"$$fundef_31_envp_231_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_31_envp_231_salloc" = call i8* @_salloc(i8* %"$$fundef_31_envp_231_load", i64 1)
  %"$$fundef_31_envp_231" = bitcast i8* %"$$fundef_31_envp_231_salloc" to %"$$fundef_31_env_109"*
  %"$$fundef_31_env_voidp_233" = bitcast %"$$fundef_31_env_109"* %"$$fundef_31_envp_231" to i8*
  %"$$fundef_31_cloval_234" = insertvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])* bitcast (%TName_Pair_ByStr1_ByStr2* (%"$$fundef_31_env_109"*, [2 x i8])* @"$fundef_31" to %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*), i8* undef }, i8* %"$$fundef_31_env_voidp_233", 1
  %"$$fundef_31_env_a_235" = getelementptr inbounds %"$$fundef_31_env_109", %"$$fundef_31_env_109"* %"$$fundef_31_envp_231", i32 0, i32 0
  store [1 x i8] %1, [1 x i8]* %"$$fundef_31_env_a_235", align 1
  store { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$fundef_31_cloval_234", { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$retval_30", align 8, !dbg !15
  %"$$retval_30_236" = load { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$retval_30", align 8
  ret { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$retval_30_236"
}

define internal { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } @"$fundef_27"(%"$$fundef_27_env_111"* %0) !dbg !16 {
entry:
  %"$retval_28" = alloca { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, align 8
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %entry
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  store { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])* bitcast ({ %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (%"$$fundef_29_env_110"*, [1 x i8])* @"$fundef_29" to { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*), i8* null }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_28", align 8, !dbg !17
  %"$$retval_28_225" = load { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_28", align 8
  ret { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$$retval_28_225"
}

define internal %TName_Pair_ByStr1_Uint64* @"$fundef_25"(%"$$fundef_25_env_112"* %0, %Uint64 %1) !dbg !18 {
entry:
  %"$$fundef_25_env_a_203" = getelementptr inbounds %"$$fundef_25_env_112", %"$$fundef_25_env_112"* %0, i32 0, i32 0
  %"$a_envload_204" = load [1 x i8], [1 x i8]* %"$$fundef_25_env_a_203", align 1
  %a = alloca [1 x i8], align 1
  store [1 x i8] %"$a_envload_204", [1 x i8]* %a, align 1
  %"$retval_26" = alloca %TName_Pair_ByStr1_Uint64*, align 8
  %"$gasrem_205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_206" = icmp ugt i64 1, %"$gasrem_205"
  br i1 %"$gascmp_206", label %"$out_of_gas_207", label %"$have_gas_208"

"$out_of_gas_207":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_208"

"$have_gas_208":                                  ; preds = %"$out_of_gas_207", %entry
  %"$consume_209" = sub i64 %"$gasrem_205", 1
  store i64 %"$consume_209", i64* @_gasrem, align 8
  %"$a_210" = load [1 x i8], [1 x i8]* %a, align 1
  %"$adtval_211_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_211_salloc" = call i8* @_salloc(i8* %"$adtval_211_load", i64 10)
  %"$adtval_211" = bitcast i8* %"$adtval_211_salloc" to %CName_Pair_ByStr1_Uint64*
  %"$adtgep_212" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_211", i32 0, i32 0
  store i8 0, i8* %"$adtgep_212", align 1
  %"$adtgep_213" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_211", i32 0, i32 1
  store [1 x i8] %"$a_210", [1 x i8]* %"$adtgep_213", align 1
  %"$adtgep_214" = getelementptr inbounds %CName_Pair_ByStr1_Uint64, %CName_Pair_ByStr1_Uint64* %"$adtval_211", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_214", align 8
  %"$adtptr_215" = bitcast %CName_Pair_ByStr1_Uint64* %"$adtval_211" to %TName_Pair_ByStr1_Uint64*
  store %TName_Pair_ByStr1_Uint64* %"$adtptr_215", %TName_Pair_ByStr1_Uint64** %"$retval_26", align 8, !dbg !19
  %"$$retval_26_216" = load %TName_Pair_ByStr1_Uint64*, %TName_Pair_ByStr1_Uint64** %"$retval_26", align 8
  ret %TName_Pair_ByStr1_Uint64* %"$$retval_26_216"
}

define internal { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_23"(%"$$fundef_23_env_113"* %0, [1 x i8] %1) !dbg !20 {
entry:
  %"$retval_24" = alloca { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$gasrem_192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_193" = icmp ugt i64 1, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %entry
  %"$consume_196" = sub i64 %"$gasrem_192", 1
  store i64 %"$consume_196", i64* @_gasrem, align 8
  %"$$fundef_25_envp_197_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_25_envp_197_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_197_load", i64 1)
  %"$$fundef_25_envp_197" = bitcast i8* %"$$fundef_25_envp_197_salloc" to %"$$fundef_25_env_112"*
  %"$$fundef_25_env_voidp_199" = bitcast %"$$fundef_25_env_112"* %"$$fundef_25_envp_197" to i8*
  %"$$fundef_25_cloval_200" = insertvalue { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_ByStr1_Uint64* (%"$$fundef_25_env_112"*, %Uint64)* @"$fundef_25" to %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_25_env_voidp_199", 1
  %"$$fundef_25_env_a_201" = getelementptr inbounds %"$$fundef_25_env_112", %"$$fundef_25_env_112"* %"$$fundef_25_envp_197", i32 0, i32 0
  store [1 x i8] %1, [1 x i8]* %"$$fundef_25_env_a_201", align 1
  store { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_25_cloval_200", { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_24", align 8, !dbg !21
  %"$$retval_24_202" = load { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_24", align 8
  ret { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_24_202"
}

define internal { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } @"$fundef_21"(%"$$fundef_21_env_114"* %0) !dbg !22 {
entry:
  %"$retval_22" = alloca { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }, align 8
  %"$gasrem_183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_184" = icmp ugt i64 1, %"$gasrem_183"
  br i1 %"$gascmp_184", label %"$out_of_gas_185", label %"$have_gas_186"

"$out_of_gas_185":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_186"

"$have_gas_186":                                  ; preds = %"$out_of_gas_185", %entry
  %"$consume_187" = sub i64 %"$gasrem_183", 1
  store i64 %"$consume_187", i64* @_gasrem, align 8
  store { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])* bitcast ({ %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_23_env_113"*, [1 x i8])* @"$fundef_23" to { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*), i8* null }, { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_22", align 8, !dbg !23
  %"$$retval_22_191" = load { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* }* %"$retval_22", align 8
  ret { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } %"$$retval_22_191"
}

define internal { i8*, i8* }* @"$fundef_19"(%"$$fundef_19_env_115"* %0) !dbg !24 {
entry:
  %"$retval_20" = alloca { i8*, i8* }*, align 8
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %entry
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  %"$dyndisp_table_177_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_177_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_177_salloc_load", i64 64)
  %"$dyndisp_table_177_salloc" = bitcast i8* %"$dyndisp_table_177_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_177" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_177_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_178" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_177", i32 1
  %"$dyndisp_pcast_179" = bitcast { i8*, i8* }* %"$dyndisp_gep_178" to { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)* bitcast ({ { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (%"$$fundef_21_env_114"*)* @"$fundef_21" to { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_ByStr1_Uint64* (i8*, %Uint64)*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_179", align 8
  %"$dyndisp_gep_180" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_177", i32 3
  %"$dyndisp_pcast_181" = bitcast { i8*, i8* }* %"$dyndisp_gep_180" to { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)* bitcast ({ { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (%"$$fundef_27_env_111"*)* @"$fundef_27" to { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_181", align 8
  store { i8*, i8* }* %"$dyndisp_table_177", { i8*, i8* }** %"$retval_20", align 8, !dbg !25
  %"$$retval_20_182" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_20", align 8
  ret { i8*, i8* }* %"$$retval_20_182"
}

define internal %TName_Pair_Uint32_Uint64* @"$fundef_17"(%"$$fundef_17_env_116"* %0, %Uint64 %1) !dbg !26 {
entry:
  %"$$fundef_17_env_a_152" = getelementptr inbounds %"$$fundef_17_env_116", %"$$fundef_17_env_116"* %0, i32 0, i32 0
  %"$a_envload_153" = load %Uint32, %Uint32* %"$$fundef_17_env_a_152", align 4
  %a = alloca %Uint32, align 8
  store %Uint32 %"$a_envload_153", %Uint32* %a, align 4
  %"$retval_18" = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 1, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %entry
  %"$consume_158" = sub i64 %"$gasrem_154", 1
  store i64 %"$consume_158", i64* @_gasrem, align 8
  %"$a_159" = load %Uint32, %Uint32* %a, align 4
  %"$adtval_160_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_160_salloc" = call i8* @_salloc(i8* %"$adtval_160_load", i64 13)
  %"$adtval_160" = bitcast i8* %"$adtval_160_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_161" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_160", i32 0, i32 0
  store i8 0, i8* %"$adtgep_161", align 1
  %"$adtgep_162" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_160", i32 0, i32 1
  store %Uint32 %"$a_159", %Uint32* %"$adtgep_162", align 4
  %"$adtgep_163" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_160", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_163", align 8
  %"$adtptr_164" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_160" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_164", %TName_Pair_Uint32_Uint64** %"$retval_18", align 8, !dbg !27
  %"$$retval_18_165" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$retval_18", align 8
  ret %TName_Pair_Uint32_Uint64* %"$$retval_18_165"
}

define internal { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_15"(%"$$fundef_15_env_117"* %0, %Uint32 %1) !dbg !28 {
entry:
  %"$retval_16" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %entry
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %"$$fundef_17_envp_146_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_17_envp_146_salloc" = call i8* @_salloc(i8* %"$$fundef_17_envp_146_load", i64 4)
  %"$$fundef_17_envp_146" = bitcast i8* %"$$fundef_17_envp_146_salloc" to %"$$fundef_17_env_116"*
  %"$$fundef_17_env_voidp_148" = bitcast %"$$fundef_17_env_116"* %"$$fundef_17_envp_146" to i8*
  %"$$fundef_17_cloval_149" = insertvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_Uint32_Uint64* (%"$$fundef_17_env_116"*, %Uint64)* @"$fundef_17" to %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_17_env_voidp_148", 1
  %"$$fundef_17_env_a_150" = getelementptr inbounds %"$$fundef_17_env_116", %"$$fundef_17_env_116"* %"$$fundef_17_envp_146", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_17_env_a_150", align 4
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_17_cloval_149", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_16", align 8, !dbg !29
  %"$$retval_16_151" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_16", align 8
  ret { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_16_151"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_13"(%"$$fundef_13_env_118"* %0) !dbg !30 {
entry:
  %"$retval_14" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %entry
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)* bitcast ({ %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_15_env_117"*, %Uint32)* @"$fundef_15" to { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*), i8* null }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_14", align 8, !dbg !31
  %"$$retval_14_140" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_14", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_14_140"
}

define internal { i8*, i8* }* @"$fundef_11"(%"$$fundef_11_env_119"* %0) !dbg !32 {
entry:
  %"$retval_12" = alloca { i8*, i8* }*, align 8
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %entry
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem, align 8
  %"$dyndisp_table_128_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_128_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_128_salloc_load", i64 64)
  %"$dyndisp_table_128_salloc" = bitcast i8* %"$dyndisp_table_128_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_128" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_128_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_129" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_128", i32 1
  %"$dyndisp_pcast_130" = bitcast { i8*, i8* }* %"$dyndisp_gep_129" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_13_env_118"*)* @"$fundef_13" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_130", align 8
  store { i8*, i8* }* %"$dyndisp_table_128", { i8*, i8* }** %"$retval_12", align 8, !dbg !33
  %"$$retval_12_131" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_12", align 8
  ret { i8*, i8* }* %"$$retval_12_131"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !34 {
entry:
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 5, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %entry
  %"$consume_293" = sub i64 %"$gasrem_289", 5
  store i64 %"$consume_293", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !36
  %"$gasrem_294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_295" = icmp ugt i64 8, %"$gasrem_294"
  br i1 %"$gascmp_295", label %"$out_of_gas_296", label %"$have_gas_297"

"$out_of_gas_296":                                ; preds = %"$have_gas_292"
  call void @_out_of_gas()
  br label %"$have_gas_297"

"$have_gas_297":                                  ; preds = %"$out_of_gas_296", %"$have_gas_292"
  %"$consume_298" = sub i64 %"$gasrem_294", 8
  store i64 %"$consume_298", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !36
  %"$gasrem_299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_300" = icmp ugt i64 196, %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %"$have_gas_297"
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %"$have_gas_297"
  %"$consume_303" = sub i64 %"$gasrem_299", 196
  store i64 %"$consume_303", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !36
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 20, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_302"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_302"
  %"$consume_308" = sub i64 %"$gasrem_304", 20
  store i64 %"$consume_308", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !36
  %"$gasrem_309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_310" = icmp ugt i64 12, %"$gasrem_309"
  br i1 %"$gascmp_310", label %"$out_of_gas_311", label %"$have_gas_312"

"$out_of_gas_311":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_312"

"$have_gas_312":                                  ; preds = %"$out_of_gas_311", %"$have_gas_307"
  %"$consume_313" = sub i64 %"$gasrem_309", 12
  store i64 %"$consume_313", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !36
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 2, %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %"$have_gas_312"
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %"$have_gas_312"
  %"$consume_318" = sub i64 %"$gasrem_314", 2
  store i64 %"$consume_318", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !36
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* @_scilla_expr_fun(i8* %0) !dbg !37 {
entry:
  %"$expr_10" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*, align 8
  %"$gasrem_319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_320" = icmp ugt i64 1, %"$gasrem_319"
  br i1 %"$gascmp_320", label %"$out_of_gas_321", label %"$have_gas_322"

"$out_of_gas_321":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_322"

"$have_gas_322":                                  ; preds = %"$out_of_gas_321", %entry
  %"$consume_323" = sub i64 %"$gasrem_319", 1
  store i64 %"$consume_323", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_325" = icmp ugt i64 1, %"$gasrem_324"
  br i1 %"$gascmp_325", label %"$out_of_gas_326", label %"$have_gas_327"

"$out_of_gas_326":                                ; preds = %"$have_gas_322"
  call void @_out_of_gas()
  br label %"$have_gas_327"

"$have_gas_327":                                  ; preds = %"$out_of_gas_326", %"$have_gas_322"
  %"$consume_328" = sub i64 %"$gasrem_324", 1
  store i64 %"$consume_328", i64* @_gasrem, align 8
  %"$dyndisp_table_335_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_335_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_335_salloc_load", i64 64)
  %"$dyndisp_table_335_salloc" = bitcast i8* %"$dyndisp_table_335_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_335" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_335_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_336" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_335", i32 0
  %"$dyndisp_pcast_337" = bitcast { i8*, i8* }* %"$dyndisp_gep_336" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_11_env_119"*)* @"$fundef_11" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_337", align 8
  %"$dyndisp_gep_338" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_335", i32 2
  %"$dyndisp_pcast_339" = bitcast { i8*, i8* }* %"$dyndisp_gep_338" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_19_env_115"*)* @"$fundef_19" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_339", align 8
  store { i8*, i8* }* %"$dyndisp_table_335", { i8*, i8* }** %tf, align 8, !dbg !38
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_327"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_327"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %tf1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_343"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  %"$$fundef_33_envp_350_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_33_envp_350_salloc" = call i8* @_salloc(i8* %"$$fundef_33_envp_350_load", i64 8)
  %"$$fundef_33_envp_350" = bitcast i8* %"$$fundef_33_envp_350_salloc" to %"$$fundef_33_env_108"*
  %"$$fundef_33_env_voidp_352" = bitcast %"$$fundef_33_env_108"* %"$$fundef_33_envp_350" to i8*
  %"$$fundef_33_cloval_353" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_33_env_108"*)* @"$fundef_33" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_33_env_voidp_352", 1
  %"$$fundef_33_env_tf_354" = getelementptr inbounds %"$$fundef_33_env_108", %"$$fundef_33_env_108"* %"$$fundef_33_envp_350", i32 0, i32 0
  %"$tf_355" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_355", { i8*, i8* }** %"$$fundef_33_env_tf_354", align 8
  %"$dyndisp_table_356_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_356_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_356_salloc_load", i64 64)
  %"$dyndisp_table_356_salloc" = bitcast i8* %"$dyndisp_table_356_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_356" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_356_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_357" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_356", i32 0
  %"$dyndisp_pcast_358" = bitcast { i8*, i8* }* %"$dyndisp_gep_357" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_33_cloval_353", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_358", align 8
  store { i8*, i8* }* %"$dyndisp_table_356", { i8*, i8* }** %tf1, align 8, !dbg !39
  %"$gasrem_359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_360" = icmp ugt i64 1, %"$gasrem_359"
  br i1 %"$gascmp_360", label %"$out_of_gas_361", label %"$have_gas_362"

"$out_of_gas_361":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_362"

"$have_gas_362":                                  ; preds = %"$out_of_gas_361", %"$have_gas_348"
  %"$consume_363" = sub i64 %"$gasrem_359", 1
  store i64 %"$consume_363", i64* @_gasrem, align 8
  %t1 = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_365" = icmp ugt i64 1, %"$gasrem_364"
  br i1 %"$gascmp_365", label %"$out_of_gas_366", label %"$have_gas_367"

"$out_of_gas_366":                                ; preds = %"$have_gas_362"
  call void @_out_of_gas()
  br label %"$have_gas_367"

"$have_gas_367":                                  ; preds = %"$out_of_gas_366", %"$have_gas_362"
  %"$consume_368" = sub i64 %"$gasrem_364", 1
  store i64 %"$consume_368", i64* @_gasrem, align 8
  %"$tf1_369" = load { i8*, i8* }*, { i8*, i8* }** %tf1, align 8
  %"$tf1_370" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_369", i32 0
  %"$tf1_371" = bitcast { i8*, i8* }* %"$tf1_370" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_372" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_371", align 8
  %"$tf1_fptr_373" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_372", 0
  %"$tf1_envptr_374" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_372", 1
  %"$tf1_call_375" = call { i8*, i8* }* %"$tf1_fptr_373"(i8* %"$tf1_envptr_374"), !dbg !40
  %"$tf1_376" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_375", i32 1
  %"$tf1_377" = bitcast { i8*, i8* }* %"$tf1_376" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf1_378" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf1_377", align 8
  %"$tf1_fptr_379" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_378", 0
  %"$tf1_envptr_380" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_378", 1
  %"$tf1_call_381" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_fptr_379"(i8* %"$tf1_envptr_380"), !dbg !40
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_call_381", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8, !dbg !41
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_367"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_367"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %t3 = alloca { i8*, i8* }*, align 8
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 1, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_385"
  %"$consume_391" = sub i64 %"$gasrem_387", 1
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %"$tf_392" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_393" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_392", i32 2
  %"$tf_394" = bitcast { i8*, i8* }* %"$tf_393" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_395" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_394", align 8
  %"$tf_fptr_396" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_395", 0
  %"$tf_envptr_397" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_395", 1
  %"$tf_call_398" = call { i8*, i8* }* %"$tf_fptr_396"(i8* %"$tf_envptr_397"), !dbg !42
  store { i8*, i8* }* %"$tf_call_398", { i8*, i8* }** %t3, align 8, !dbg !43
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_390"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %t4 = alloca { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, align 8
  %"$gasrem_404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_405" = icmp ugt i64 1, %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_402"
  %"$consume_408" = sub i64 %"$gasrem_404", 1
  store i64 %"$consume_408", i64* @_gasrem, align 8
  %"$t3_409" = load { i8*, i8* }*, { i8*, i8* }** %t3, align 8
  %"$t3_410" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t3_409", i32 3
  %"$t3_411" = bitcast { i8*, i8* }* %"$t3_410" to { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }*
  %"$t3_412" = load { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }, { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* }* %"$t3_411", align 8
  %"$t3_fptr_413" = extractvalue { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } %"$t3_412", 0
  %"$t3_envptr_414" = extractvalue { { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } (i8*)*, i8* } %"$t3_412", 1
  %"$t3_call_415" = call { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t3_fptr_413"(i8* %"$t3_envptr_414"), !dbg !44
  store { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t3_call_415", { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %t4, align 8, !dbg !45
  %"$gasrem_416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_417" = icmp ugt i64 1, %"$gasrem_416"
  br i1 %"$gascmp_417", label %"$out_of_gas_418", label %"$have_gas_419"

"$out_of_gas_418":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_419"

"$have_gas_419":                                  ; preds = %"$out_of_gas_418", %"$have_gas_407"
  %"$consume_420" = sub i64 %"$gasrem_416", 1
  store i64 %"$consume_420", i64* @_gasrem, align 8
  %uint32_one = alloca %Uint32, align 8
  %"$gasrem_421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_422" = icmp ugt i64 1, %"$gasrem_421"
  br i1 %"$gascmp_422", label %"$out_of_gas_423", label %"$have_gas_424"

"$out_of_gas_423":                                ; preds = %"$have_gas_419"
  call void @_out_of_gas()
  br label %"$have_gas_424"

"$have_gas_424":                                  ; preds = %"$out_of_gas_423", %"$have_gas_419"
  %"$consume_425" = sub i64 %"$gasrem_421", 1
  store i64 %"$consume_425", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %uint32_one, align 4, !dbg !46
  %"$gasrem_426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_427" = icmp ugt i64 1, %"$gasrem_426"
  br i1 %"$gascmp_427", label %"$out_of_gas_428", label %"$have_gas_429"

"$out_of_gas_428":                                ; preds = %"$have_gas_424"
  call void @_out_of_gas()
  br label %"$have_gas_429"

"$have_gas_429":                                  ; preds = %"$out_of_gas_428", %"$have_gas_424"
  %"$consume_430" = sub i64 %"$gasrem_426", 1
  store i64 %"$consume_430", i64* @_gasrem, align 8
  %uint64_two = alloca %Uint64, align 8
  %"$gasrem_431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_432" = icmp ugt i64 1, %"$gasrem_431"
  br i1 %"$gascmp_432", label %"$out_of_gas_433", label %"$have_gas_434"

"$out_of_gas_433":                                ; preds = %"$have_gas_429"
  call void @_out_of_gas()
  br label %"$have_gas_434"

"$have_gas_434":                                  ; preds = %"$out_of_gas_433", %"$have_gas_429"
  %"$consume_435" = sub i64 %"$gasrem_431", 1
  store i64 %"$consume_435", i64* @_gasrem, align 8
  store %Uint64 { i64 2 }, %Uint64* %uint64_two, align 8, !dbg !47
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_434"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_434"
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %addr_bystr1 = alloca [1 x i8], align 1
  %"$gasrem_441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_442" = icmp ugt i64 1, %"$gasrem_441"
  br i1 %"$gascmp_442", label %"$out_of_gas_443", label %"$have_gas_444"

"$out_of_gas_443":                                ; preds = %"$have_gas_439"
  call void @_out_of_gas()
  br label %"$have_gas_444"

"$have_gas_444":                                  ; preds = %"$out_of_gas_443", %"$have_gas_439"
  %"$consume_445" = sub i64 %"$gasrem_441", 1
  store i64 %"$consume_445", i64* @_gasrem, align 8
  store [1 x i8] c"\AA", [1 x i8]* %addr_bystr1, align 1, !dbg !48
  %"$gasrem_446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_447" = icmp ugt i64 1, %"$gasrem_446"
  br i1 %"$gascmp_447", label %"$out_of_gas_448", label %"$have_gas_449"

"$out_of_gas_448":                                ; preds = %"$have_gas_444"
  call void @_out_of_gas()
  br label %"$have_gas_449"

"$have_gas_449":                                  ; preds = %"$out_of_gas_448", %"$have_gas_444"
  %"$consume_450" = sub i64 %"$gasrem_446", 1
  store i64 %"$consume_450", i64* @_gasrem, align 8
  %addr_bystr2 = alloca [2 x i8], align 1
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 1, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$have_gas_449"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$have_gas_449"
  %"$consume_455" = sub i64 %"$gasrem_451", 1
  store i64 %"$consume_455", i64* @_gasrem, align 8
  store [2 x i8] c"\AA\BB", [2 x i8]* %addr_bystr2, align 1, !dbg !49
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$have_gas_454"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$have_gas_454"
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem, align 8
  %p1 = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %"$have_gas_459"
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %"$have_gas_459"
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem, align 8
  %"$t1_6" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$t1_466" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8
  %"$t1_fptr_467" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_466", 0
  %"$t1_envptr_468" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_466", 1
  %"$uint32_one_469" = load %Uint32, %Uint32* %uint32_one, align 4
  %"$t1_call_470" = call { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_fptr_467"(i8* %"$t1_envptr_468", %Uint32 %"$uint32_one_469"), !dbg !50
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_call_470", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_6", align 8, !dbg !50
  %"$t1_7" = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$$t1_6_471" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_6", align 8
  %"$$t1_6_fptr_472" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_6_471", 0
  %"$$t1_6_envptr_473" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_6_471", 1
  %"$uint64_two_474" = load %Uint64, %Uint64* %uint64_two, align 8
  %"$$t1_6_call_475" = call %TName_Pair_Uint32_Uint64* %"$$t1_6_fptr_472"(i8* %"$$t1_6_envptr_473", %Uint64 %"$uint64_two_474"), !dbg !50
  store %TName_Pair_Uint32_Uint64* %"$$t1_6_call_475", %TName_Pair_Uint32_Uint64** %"$t1_7", align 8, !dbg !50
  %"$$t1_7_476" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$t1_7", align 8
  store %TName_Pair_Uint32_Uint64* %"$$t1_7_476", %TName_Pair_Uint32_Uint64** %p1, align 8, !dbg !50
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 1, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %"$have_gas_464"
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %"$have_gas_464"
  %"$consume_481" = sub i64 %"$gasrem_477", 1
  store i64 %"$consume_481", i64* @_gasrem, align 8
  %p2 = alloca %TName_Pair_ByStr1_ByStr2*, align 8
  %"$gasrem_482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_483" = icmp ugt i64 1, %"$gasrem_482"
  br i1 %"$gascmp_483", label %"$out_of_gas_484", label %"$have_gas_485"

"$out_of_gas_484":                                ; preds = %"$have_gas_480"
  call void @_out_of_gas()
  br label %"$have_gas_485"

"$have_gas_485":                                  ; preds = %"$out_of_gas_484", %"$have_gas_480"
  %"$consume_486" = sub i64 %"$gasrem_482", 1
  store i64 %"$consume_486", i64* @_gasrem, align 8
  %"$t4_8" = alloca { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, align 8
  %"$t4_487" = load { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }, { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* }* %t4, align 8
  %"$t4_fptr_488" = extractvalue { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t4_487", 0
  %"$t4_envptr_489" = extractvalue { { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } (i8*, [1 x i8])*, i8* } %"$t4_487", 1
  %"$addr_bystr1_490" = load [1 x i8], [1 x i8]* %addr_bystr1, align 1
  %"$t4_call_491" = call { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$t4_fptr_488"(i8* %"$t4_envptr_489", [1 x i8] %"$addr_bystr1_490"), !dbg !51
  store { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$t4_call_491", { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$t4_8", align 8, !dbg !51
  %"$t4_9" = alloca %TName_Pair_ByStr1_ByStr2*, align 8
  %"$$t4_8_492" = load { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }, { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* }* %"$t4_8", align 8
  %"$$t4_8_fptr_493" = extractvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$t4_8_492", 0
  %"$$t4_8_envptr_494" = extractvalue { %TName_Pair_ByStr1_ByStr2* (i8*, [2 x i8])*, i8* } %"$$t4_8_492", 1
  %"$addr_bystr2_495" = load [2 x i8], [2 x i8]* %addr_bystr2, align 1
  %"$$t4_8_call_496" = call %TName_Pair_ByStr1_ByStr2* %"$$t4_8_fptr_493"(i8* %"$$t4_8_envptr_494", [2 x i8] %"$addr_bystr2_495"), !dbg !51
  store %TName_Pair_ByStr1_ByStr2* %"$$t4_8_call_496", %TName_Pair_ByStr1_ByStr2** %"$t4_9", align 8, !dbg !51
  %"$$t4_9_497" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %"$t4_9", align 8
  store %TName_Pair_ByStr1_ByStr2* %"$$t4_9_497", %TName_Pair_ByStr1_ByStr2** %p2, align 8, !dbg !51
  %"$gasrem_498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_499" = icmp ugt i64 1, %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %"$have_gas_485"
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %"$have_gas_485"
  %"$consume_502" = sub i64 %"$gasrem_498", 1
  store i64 %"$consume_502", i64* @_gasrem, align 8
  %"$p1_503" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %p1, align 8
  %"$p2_504" = load %TName_Pair_ByStr1_ByStr2*, %TName_Pair_ByStr1_ByStr2** %p2, align 8
  %"$adtval_505_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_505_salloc" = call i8* @_salloc(i8* %"$adtval_505_load", i64 17)
  %"$adtval_505" = bitcast i8* %"$adtval_505_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  %"$adtgep_506" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_505", i32 0, i32 0
  store i8 0, i8* %"$adtgep_506", align 1
  %"$adtgep_507" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_505", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$p1_503", %TName_Pair_Uint32_Uint64** %"$adtgep_507", align 8
  %"$adtgep_508" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_505", i32 0, i32 2
  store %TName_Pair_ByStr1_ByStr2* %"$p2_504", %TName_Pair_ByStr1_ByStr2** %"$adtgep_508", align 8
  %"$adtptr_509" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtval_505" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$adtptr_509", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_10", align 8, !dbg !52
  %"$$expr_10_510" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"** %"$expr_10", align 8
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$$expr_10_510"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_511" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_512" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)"* %"$exprval_511" to i8*
  %"$execptr_load_513" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_513", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(ByStr1)_(ByStr2)_73", i8* %"$memvoidcast_512")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "typ3-inst.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_35", linkageName: "$fundef_35", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 12, column: 6, scope: !4)
!9 = !DILocation(line: 12, column: 5, scope: !4)
!10 = distinct !DISubprogram(name: "$fundef_33", linkageName: "$fundef_33", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 11, column: 3, scope: !10)
!12 = distinct !DISubprogram(name: "$fundef_31", linkageName: "$fundef_31", scope: !2, file: !2, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!13 = !DILocation(line: 6, column: 5, scope: !12)
!14 = distinct !DISubprogram(name: "$fundef_29", linkageName: "$fundef_29", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 6, column: 5, scope: !14)
!16 = distinct !DISubprogram(name: "$fundef_27", linkageName: "$fundef_27", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!17 = !DILocation(line: 5, column: 3, scope: !16)
!18 = distinct !DISubprogram(name: "$fundef_25", linkageName: "$fundef_25", scope: !2, file: !2, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!19 = !DILocation(line: 6, column: 5, scope: !18)
!20 = distinct !DISubprogram(name: "$fundef_23", linkageName: "$fundef_23", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!21 = !DILocation(line: 6, column: 5, scope: !20)
!22 = distinct !DISubprogram(name: "$fundef_21", linkageName: "$fundef_21", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!23 = !DILocation(line: 5, column: 3, scope: !22)
!24 = distinct !DISubprogram(name: "$fundef_19", linkageName: "$fundef_19", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!25 = !DILocation(line: 3, column: 3, scope: !24)
!26 = distinct !DISubprogram(name: "$fundef_17", linkageName: "$fundef_17", scope: !2, file: !2, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!27 = !DILocation(line: 6, column: 5, scope: !26)
!28 = distinct !DISubprogram(name: "$fundef_15", linkageName: "$fundef_15", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!29 = !DILocation(line: 6, column: 5, scope: !28)
!30 = distinct !DISubprogram(name: "$fundef_13", linkageName: "$fundef_13", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!31 = !DILocation(line: 5, column: 3, scope: !30)
!32 = distinct !DISubprogram(name: "$fundef_11", linkageName: "$fundef_11", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!33 = !DILocation(line: 3, column: 3, scope: !32)
!34 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !35, file: !35, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!35 = !DIFile(filename: ".", directory: ".")
!36 = !DILocation(line: 0, scope: !34)
!37 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!38 = !DILocation(line: 2, column: 3, scope: !37)
!39 = !DILocation(line: 10, column: 3, scope: !37)
!40 = !DILocation(line: 16, column: 11, scope: !37)
!41 = !DILocation(line: 16, column: 10, scope: !37)
!42 = !DILocation(line: 17, column: 11, scope: !37)
!43 = !DILocation(line: 17, column: 10, scope: !37)
!44 = !DILocation(line: 18, column: 11, scope: !37)
!45 = !DILocation(line: 18, column: 10, scope: !37)
!46 = !DILocation(line: 19, column: 18, scope: !37)
!47 = !DILocation(line: 20, column: 18, scope: !37)
!48 = !DILocation(line: 21, column: 19, scope: !37)
!49 = !DILocation(line: 22, column: 19, scope: !37)
!50 = !DILocation(line: 24, column: 10, scope: !37)
!51 = !DILocation(line: 25, column: 10, scope: !37)
!52 = !DILocation(line: 26, column: 1, scope: !37)
