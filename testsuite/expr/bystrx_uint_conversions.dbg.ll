; let zero = 0x00 in
; let one_1 = 0x01 in
; let one_3 = 0x000001 in
; let one_4 = 0x00000001 in
; let one_8 = 0x0000000000000001 in
; let one_16 = 0x00000000000000000000000000000001 in
; let one_32 = 0x0000000000000000000000000000000000000000000000000000000000000001 in
; 
; let res7 = builtin to_uint32 zero in
; let res8 = builtin to_uint32 one_1 in
; let res9 = builtin to_uint32 one_3 in
; let res10 = builtin to_uint32 one_4 in
; let sum1 = builtin add res7 res8 in
; let sum2 = builtin add res9 res10 in
; let sum_32 = builtin add sum1 sum2 in
; 
; let res12 = builtin to_uint64 one_1 in
; let res13 = builtin to_uint64 one_4 in
; let res14 = builtin to_uint64 one_8 in
; let sum1 = builtin add res12 res13 in
; let sum_64 = builtin add sum1 res14 in
; 
; let res15 = builtin to_uint128 one_1 in
; let res16 = builtin to_uint128 one_4 in
; let res17 = builtin to_uint128 one_8 in
; let res18 = builtin to_uint128 one_16 in
; let sum1 = builtin add res15 res16 in
; let sum2 = builtin add res17 res18 in
; let sum_128 = builtin add sum1 sum2 in
; 
; let res19 = builtin to_uint256 one_1 in
; let res20 = builtin to_uint256 one_8 in
; let res21 = builtin to_uint256 one_16 in
; let res22 = builtin to_uint256 one_32 in
; let sum1 = builtin add res19 res20 in
; let sum2 = builtin add res21 res22 in
; let sum_256 = builtin add sum1 sum2 in
; 
; let respair1 = Pair {Uint32 Uint64} sum_32 sum_64 in
; let respair2 = Pair {Uint128 Uint256} sum_128 sum_256 in
; let restuple = Pair {(Pair Uint32 Uint64) (Pair Uint128 Uint256)} respair1 respair2 in
; 
; restuple
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_6" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_48" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_47"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_47" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_49"**, %"$TyDescrTy_ADTTyp_48"* }
%"$TyDescrTy_ADTTyp_Constr_49" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$ParamDescr_469" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_470" = type { %ParamDescrString, i32, %"$ParamDescr_469"* }
%"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)" = type { i8, %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* }
%"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)" = type <{ i8, %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint128_Uint256* }>
%TName_Pair_Uint32_Uint64 = type { i8, %CName_Pair_Uint32_Uint64* }
%CName_Pair_Uint32_Uint64 = type <{ i8, %Uint32, %Uint64 }>
%Uint32 = type { i32 }
%Uint64 = type { i64 }
%TName_Pair_Uint128_Uint256 = type { i8, %CName_Pair_Uint128_Uint256* }
%CName_Pair_Uint128_Uint256 = type <{ i8, %Uint128, %Uint256 }>
%Uint128 = type { i128 }
%Uint256 = type { i256 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_7" = global %"$TyDescrTy_PrimTyp_6" zeroinitializer
@"$TyDescr_Int32_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int32_Prim_7" to i8*) }
@"$TyDescr_Uint32_Prim_9" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 0 }
@"$TyDescr_Uint32_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint32_Prim_9" to i8*) }
@"$TyDescr_Int64_Prim_11" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 1 }
@"$TyDescr_Int64_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int64_Prim_11" to i8*) }
@"$TyDescr_Uint64_Prim_13" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 1 }
@"$TyDescr_Uint64_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint64_Prim_13" to i8*) }
@"$TyDescr_Int128_Prim_15" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 2 }
@"$TyDescr_Int128_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int128_Prim_15" to i8*) }
@"$TyDescr_Uint128_Prim_17" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 2 }
@"$TyDescr_Uint128_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint128_Prim_17" to i8*) }
@"$TyDescr_Int256_Prim_19" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 3 }
@"$TyDescr_Int256_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int256_Prim_19" to i8*) }
@"$TyDescr_Uint256_Prim_21" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 3 }
@"$TyDescr_Uint256_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint256_Prim_21" to i8*) }
@"$TyDescr_String_Prim_23" = global %"$TyDescrTy_PrimTyp_6" { i32 2, i32 0 }
@"$TyDescr_String_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_String_Prim_23" to i8*) }
@"$TyDescr_Bnum_Prim_25" = global %"$TyDescrTy_PrimTyp_6" { i32 3, i32 0 }
@"$TyDescr_Bnum_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bnum_Prim_25" to i8*) }
@"$TyDescr_Message_Prim_27" = global %"$TyDescrTy_PrimTyp_6" { i32 4, i32 0 }
@"$TyDescr_Message_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Message_Prim_27" to i8*) }
@"$TyDescr_Event_Prim_29" = global %"$TyDescrTy_PrimTyp_6" { i32 5, i32 0 }
@"$TyDescr_Event_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Event_Prim_29" to i8*) }
@"$TyDescr_Exception_Prim_31" = global %"$TyDescrTy_PrimTyp_6" { i32 6, i32 0 }
@"$TyDescr_Exception_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Exception_Prim_31" to i8*) }
@"$TyDescr_Bystr_Prim_33" = global %"$TyDescrTy_PrimTyp_6" { i32 7, i32 0 }
@"$TyDescr_Bystr_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr_Prim_33" to i8*) }
@"$TyDescr_Bystr32_Prim_35" = global %"$TyDescrTy_PrimTyp_6" { i32 8, i32 32 }
@"$TyDescr_Bystr32_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr32_Prim_35" to i8*) }
@"$TyDescr_Bystr16_Prim_37" = global %"$TyDescrTy_PrimTyp_6" { i32 8, i32 16 }
@"$TyDescr_Bystr16_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr16_Prim_37" to i8*) }
@"$TyDescr_Bystr8_Prim_39" = global %"$TyDescrTy_PrimTyp_6" { i32 8, i32 8 }
@"$TyDescr_Bystr8_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr8_Prim_39" to i8*) }
@"$TyDescr_Bystr4_Prim_41" = global %"$TyDescrTy_PrimTyp_6" { i32 8, i32 4 }
@"$TyDescr_Bystr4_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr4_Prim_41" to i8*) }
@"$TyDescr_Bystr3_Prim_43" = global %"$TyDescrTy_PrimTyp_6" { i32 8, i32 3 }
@"$TyDescr_Bystr3_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr3_Prim_43" to i8*) }
@"$TyDescr_Bystr1_Prim_45" = global %"$TyDescrTy_PrimTyp_6" { i32 8, i32 1 }
@"$TyDescr_Bystr1_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr1_Prim_45" to i8*) }
@"$TyDescr_ADT_Pair_Uint128_Uint256_50" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_62" to i8*) }
@"$TyDescr_ADT_Pair_Uint32_Uint64_51" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_68" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_52" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_74" to i8*) }
@"$TyDescr_Pair_ADTTyp_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_48" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_76", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 3, %"$TyDescrTy_ADTTyp_Specl_47"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_47"*], [3 x %"$TyDescrTy_ADTTyp_Specl_47"*]* @"$TyDescr_Pair_ADTTyp_m_specls_75", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Uint128_Uint256_Constr_m_args_57" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_18", %_TyDescrTy_Typ* @"$TyDescr_Uint256_22"]
@"$TyDescr_ADT_Pair_58" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint128_Uint256_ADTTyp_Constr_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_58", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint128_Uint256_Constr_m_args_57", i32 0, i32 0) }
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_constrs_60" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_49"*] [%"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Pair_Pair_Uint128_Uint256_ADTTyp_Constr_59"]
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_TArgs_61" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_18", %_TyDescrTy_Typ* @"$TyDescr_Uint256_22"]
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_47" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_TArgs_61", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_49"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_49"*], [1 x %"$TyDescrTy_ADTTyp_Constr_49"*]* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_constrs_60", i32 0, i32 0), %"$TyDescrTy_ADTTyp_48"* @"$TyDescr_Pair_ADTTyp_56" }
@"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_63" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_10", %_TyDescrTy_Typ* @"$TyDescr_Uint64_14"]
@"$TyDescr_ADT_Pair_64" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_65" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_64", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_63", i32 0, i32 0) }
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_66" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_49"*] [%"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_65"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_67" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_10", %_TyDescrTy_Typ* @"$TyDescr_Uint64_14"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_68" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_47" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_67", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_49"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_49"*], [1 x %"$TyDescrTy_ADTTyp_Constr_49"*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_66", i32 0, i32 0), %"$TyDescrTy_ADTTyp_48"* @"$TyDescr_Pair_ADTTyp_56" }
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_Constr_m_args_69" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_51", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_50"]
@"$TyDescr_ADT_Pair_70" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Constr_71" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_70", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_Constr_m_args_69", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_m_constrs_72" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_49"*] [%"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Constr_71"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_m_TArgs_73" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_51", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_50"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_74" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_47" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_m_TArgs_73", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_49"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_49"*], [1 x %"$TyDescrTy_ADTTyp_Constr_49"*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_m_constrs_72", i32 0, i32 0), %"$TyDescrTy_ADTTyp_48"* @"$TyDescr_Pair_ADTTyp_56" }
@"$TyDescr_Pair_ADTTyp_m_specls_75" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_47"*] [%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_62", %"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_68", %"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_74"]
@"$TyDescr_ADT_Pair_76" = unnamed_addr constant [4 x i8] c"Pair"
@_tydescr_table = constant [23 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_30", %_TyDescrTy_Typ* @"$TyDescr_Int64_12", %_TyDescrTy_Typ* @"$TyDescr_Bystr3_44", %_TyDescrTy_Typ* @"$TyDescr_Uint256_22", %_TyDescrTy_Typ* @"$TyDescr_Uint32_10", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_52", %_TyDescrTy_Typ* @"$TyDescr_Bystr8_40", %_TyDescrTy_Typ* @"$TyDescr_Uint64_14", %_TyDescrTy_Typ* @"$TyDescr_Bnum_26", %_TyDescrTy_Typ* @"$TyDescr_Uint128_18", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_51", %_TyDescrTy_Typ* @"$TyDescr_Bystr4_42", %_TyDescrTy_Typ* @"$TyDescr_Exception_32", %_TyDescrTy_Typ* @"$TyDescr_String_24", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_50", %_TyDescrTy_Typ* @"$TyDescr_Bystr1_46", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_36", %_TyDescrTy_Typ* @"$TyDescr_Int256_20", %_TyDescrTy_Typ* @"$TyDescr_Int128_16", %_TyDescrTy_Typ* @"$TyDescr_Bystr_34", %_TyDescrTy_Typ* @"$TyDescr_Message_28", %_TyDescrTy_Typ* @"$TyDescr_Bystr16_38", %_TyDescrTy_Typ* @"$TyDescr_Int32_8"]
@_tydescr_table_length = constant i32 23
@_contract_parameters = constant [0 x %"$ParamDescr_469"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_470"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* @_scilla_expr_fun(i8* %0) !dbg !9 {
entry:
  %"$expr_5" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, align 8
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %entry
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem, align 8
  %zero = alloca [1 x i8], align 1
  %"$gasrem_82" = load i64, i64* @_gasrem, align 8
  %"$gascmp_83" = icmp ugt i64 1, %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %"$have_gas_80"
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %"$have_gas_80"
  %"$consume_86" = sub i64 %"$gasrem_82", 1
  store i64 %"$consume_86", i64* @_gasrem, align 8
  store [1 x i8] zeroinitializer, [1 x i8]* %zero, align 1, !dbg !10
  %"$gasrem_87" = load i64, i64* @_gasrem, align 8
  %"$gascmp_88" = icmp ugt i64 1, %"$gasrem_87"
  br i1 %"$gascmp_88", label %"$out_of_gas_89", label %"$have_gas_90"

"$out_of_gas_89":                                 ; preds = %"$have_gas_85"
  call void @_out_of_gas()
  br label %"$have_gas_90"

"$have_gas_90":                                   ; preds = %"$out_of_gas_89", %"$have_gas_85"
  %"$consume_91" = sub i64 %"$gasrem_87", 1
  store i64 %"$consume_91", i64* @_gasrem, align 8
  %one_1 = alloca [1 x i8], align 1
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 1, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %"$have_gas_90"
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %"$have_gas_90"
  %"$consume_96" = sub i64 %"$gasrem_92", 1
  store i64 %"$consume_96", i64* @_gasrem, align 8
  store [1 x i8] c"\01", [1 x i8]* %one_1, align 1, !dbg !11
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %"$have_gas_95"
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %"$have_gas_95"
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem, align 8
  %one_3 = alloca [3 x i8], align 1
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 1, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$have_gas_100"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$have_gas_100"
  %"$consume_106" = sub i64 %"$gasrem_102", 1
  store i64 %"$consume_106", i64* @_gasrem, align 8
  store [3 x i8] c"\00\00\01", [3 x i8]* %one_3, align 1, !dbg !12
  %"$gasrem_107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_108" = icmp ugt i64 1, %"$gasrem_107"
  br i1 %"$gascmp_108", label %"$out_of_gas_109", label %"$have_gas_110"

"$out_of_gas_109":                                ; preds = %"$have_gas_105"
  call void @_out_of_gas()
  br label %"$have_gas_110"

"$have_gas_110":                                  ; preds = %"$out_of_gas_109", %"$have_gas_105"
  %"$consume_111" = sub i64 %"$gasrem_107", 1
  store i64 %"$consume_111", i64* @_gasrem, align 8
  %one_4 = alloca [4 x i8], align 1
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %"$have_gas_110"
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %"$have_gas_110"
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  store [4 x i8] c"\00\00\00\01", [4 x i8]* %one_4, align 1, !dbg !13
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 1, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %"$have_gas_115"
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %"$have_gas_115"
  %"$consume_121" = sub i64 %"$gasrem_117", 1
  store i64 %"$consume_121", i64* @_gasrem, align 8
  %one_8 = alloca [8 x i8], align 1
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %"$have_gas_120"
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %"$have_gas_120"
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem, align 8
  store [8 x i8] c"\00\00\00\00\00\00\00\01", [8 x i8]* %one_8, align 1, !dbg !14
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_125"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_125"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem, align 8
  %one_16 = alloca [16 x i8], align 1
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_130"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_130"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  store [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [16 x i8]* %one_16, align 1, !dbg !15
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 1, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$have_gas_135"
  %"$consume_141" = sub i64 %"$gasrem_137", 1
  store i64 %"$consume_141", i64* @_gasrem, align 8
  %one_32 = alloca [32 x i8], align 1
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 1, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %"$have_gas_140"
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %"$have_gas_140"
  %"$consume_146" = sub i64 %"$gasrem_142", 1
  store i64 %"$consume_146", i64* @_gasrem, align 8
  store [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [32 x i8]* %one_32, align 1, !dbg !16
  %"$gasrem_147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %"$have_gas_145"
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %"$have_gas_145"
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem, align 8
  %res7 = alloca %Uint32, align 8
  %"$execptr_load_152" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_zero_153" = alloca [1 x i8], align 1
  %"$zero_154" = load [1 x i8], [1 x i8]* %zero, align 1
  store [1 x i8] %"$zero_154", [1 x i8]* %"$to_uint32_zero_153", align 1
  %"$$to_uint32_zero_153_155" = bitcast [1 x i8]* %"$to_uint32_zero_153" to i8*
  %"$to_uint32_call_156" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_152", i32 1, i8* %"$$to_uint32_zero_153_155")
  store %Uint32 %"$to_uint32_call_156", %Uint32* %res7, align 4, !dbg !17
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 1, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_150"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_150"
  %"$consume_161" = sub i64 %"$gasrem_157", 1
  store i64 %"$consume_161", i64* @_gasrem, align 8
  %res8 = alloca %Uint32, align 8
  %"$execptr_load_162" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_one_1_163" = alloca [1 x i8], align 1
  %"$one_1_164" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_164", [1 x i8]* %"$to_uint32_one_1_163", align 1
  %"$$to_uint32_one_1_163_165" = bitcast [1 x i8]* %"$to_uint32_one_1_163" to i8*
  %"$to_uint32_call_166" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_162", i32 1, i8* %"$$to_uint32_one_1_163_165")
  store %Uint32 %"$to_uint32_call_166", %Uint32* %res8, align 4, !dbg !18
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 1, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$have_gas_160"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$have_gas_160"
  %"$consume_171" = sub i64 %"$gasrem_167", 1
  store i64 %"$consume_171", i64* @_gasrem, align 8
  %res9 = alloca %Uint32, align 8
  %"$execptr_load_172" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_one_3_173" = alloca [3 x i8], align 1
  %"$one_3_174" = load [3 x i8], [3 x i8]* %one_3, align 1
  store [3 x i8] %"$one_3_174", [3 x i8]* %"$to_uint32_one_3_173", align 1
  %"$$to_uint32_one_3_173_175" = bitcast [3 x i8]* %"$to_uint32_one_3_173" to i8*
  %"$to_uint32_call_176" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_172", i32 3, i8* %"$$to_uint32_one_3_173_175")
  store %Uint32 %"$to_uint32_call_176", %Uint32* %res9, align 4, !dbg !19
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 1, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %"$have_gas_170"
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %"$have_gas_170"
  %"$consume_181" = sub i64 %"$gasrem_177", 1
  store i64 %"$consume_181", i64* @_gasrem, align 8
  %res10 = alloca %Uint32, align 8
  %"$execptr_load_182" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_one_4_183" = alloca [4 x i8], align 1
  %"$one_4_184" = load [4 x i8], [4 x i8]* %one_4, align 1
  store [4 x i8] %"$one_4_184", [4 x i8]* %"$to_uint32_one_4_183", align 1
  %"$$to_uint32_one_4_183_185" = bitcast [4 x i8]* %"$to_uint32_one_4_183" to i8*
  %"$to_uint32_call_186" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_182", i32 4, i8* %"$$to_uint32_one_4_183_185")
  store %Uint32 %"$to_uint32_call_186", %Uint32* %res10, align 4, !dbg !20
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 1, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$have_gas_180"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$have_gas_180"
  %"$consume_191" = sub i64 %"$gasrem_187", 1
  store i64 %"$consume_191", i64* @_gasrem, align 8
  %sum1 = alloca %Uint32, align 8
  %"$res7_192" = load %Uint32, %Uint32* %res7, align 4
  %"$res8_193" = load %Uint32, %Uint32* %res8, align 4
  %"$add_call_194" = call %Uint32 @_add_Uint32(%Uint32 %"$res7_192", %Uint32 %"$res8_193")
  store %Uint32 %"$add_call_194", %Uint32* %sum1, align 4, !dbg !21
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_190"
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %sum2 = alloca %Uint32, align 8
  %"$res9_200" = load %Uint32, %Uint32* %res9, align 4
  %"$res10_201" = load %Uint32, %Uint32* %res10, align 4
  %"$add_call_202" = call %Uint32 @_add_Uint32(%Uint32 %"$res9_200", %Uint32 %"$res10_201")
  store %Uint32 %"$add_call_202", %Uint32* %sum2, align 4, !dbg !22
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 1, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %"$have_gas_198"
  %"$consume_207" = sub i64 %"$gasrem_203", 1
  store i64 %"$consume_207", i64* @_gasrem, align 8
  %sum_32 = alloca %Uint32, align 8
  %"$sum1_208" = load %Uint32, %Uint32* %sum1, align 4
  %"$sum2_209" = load %Uint32, %Uint32* %sum2, align 4
  %"$add_call_210" = call %Uint32 @_add_Uint32(%Uint32 %"$sum1_208", %Uint32 %"$sum2_209")
  store %Uint32 %"$add_call_210", %Uint32* %sum_32, align 4, !dbg !23
  %"$gasrem_211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_212" = icmp ugt i64 1, %"$gasrem_211"
  br i1 %"$gascmp_212", label %"$out_of_gas_213", label %"$have_gas_214"

"$out_of_gas_213":                                ; preds = %"$have_gas_206"
  call void @_out_of_gas()
  br label %"$have_gas_214"

"$have_gas_214":                                  ; preds = %"$out_of_gas_213", %"$have_gas_206"
  %"$consume_215" = sub i64 %"$gasrem_211", 1
  store i64 %"$consume_215", i64* @_gasrem, align 8
  %res12 = alloca %Uint64, align 8
  %"$execptr_load_216" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_one_1_217" = alloca [1 x i8], align 1
  %"$one_1_218" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_218", [1 x i8]* %"$to_uint64_one_1_217", align 1
  %"$$to_uint64_one_1_217_219" = bitcast [1 x i8]* %"$to_uint64_one_1_217" to i8*
  %"$to_uint64_call_220" = call %Uint64 @_bystrx_to_uint64(i8* %"$execptr_load_216", i32 1, i8* %"$$to_uint64_one_1_217_219")
  store %Uint64 %"$to_uint64_call_220", %Uint64* %res12, align 8, !dbg !24
  %"$gasrem_221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_222" = icmp ugt i64 1, %"$gasrem_221"
  br i1 %"$gascmp_222", label %"$out_of_gas_223", label %"$have_gas_224"

"$out_of_gas_223":                                ; preds = %"$have_gas_214"
  call void @_out_of_gas()
  br label %"$have_gas_224"

"$have_gas_224":                                  ; preds = %"$out_of_gas_223", %"$have_gas_214"
  %"$consume_225" = sub i64 %"$gasrem_221", 1
  store i64 %"$consume_225", i64* @_gasrem, align 8
  %res13 = alloca %Uint64, align 8
  %"$execptr_load_226" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_one_4_227" = alloca [4 x i8], align 1
  %"$one_4_228" = load [4 x i8], [4 x i8]* %one_4, align 1
  store [4 x i8] %"$one_4_228", [4 x i8]* %"$to_uint64_one_4_227", align 1
  %"$$to_uint64_one_4_227_229" = bitcast [4 x i8]* %"$to_uint64_one_4_227" to i8*
  %"$to_uint64_call_230" = call %Uint64 @_bystrx_to_uint64(i8* %"$execptr_load_226", i32 4, i8* %"$$to_uint64_one_4_227_229")
  store %Uint64 %"$to_uint64_call_230", %Uint64* %res13, align 8, !dbg !25
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 1, %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %"$have_gas_224"
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %"$have_gas_224"
  %"$consume_235" = sub i64 %"$gasrem_231", 1
  store i64 %"$consume_235", i64* @_gasrem, align 8
  %res14 = alloca %Uint64, align 8
  %"$execptr_load_236" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_one_8_237" = alloca [8 x i8], align 1
  %"$one_8_238" = load [8 x i8], [8 x i8]* %one_8, align 1
  store [8 x i8] %"$one_8_238", [8 x i8]* %"$to_uint64_one_8_237", align 1
  %"$$to_uint64_one_8_237_239" = bitcast [8 x i8]* %"$to_uint64_one_8_237" to i8*
  %"$to_uint64_call_240" = call %Uint64 @_bystrx_to_uint64(i8* %"$execptr_load_236", i32 8, i8* %"$$to_uint64_one_8_237_239")
  store %Uint64 %"$to_uint64_call_240", %Uint64* %res14, align 8, !dbg !26
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 1, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %"$have_gas_234"
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %"$have_gas_234"
  %"$consume_245" = sub i64 %"$gasrem_241", 1
  store i64 %"$consume_245", i64* @_gasrem, align 8
  %"$sum1_0" = alloca %Uint64, align 8
  %"$res12_246" = load %Uint64, %Uint64* %res12, align 8
  %"$res13_247" = load %Uint64, %Uint64* %res13, align 8
  %"$add_call_248" = call %Uint64 @_add_Uint64(%Uint64 %"$res12_246", %Uint64 %"$res13_247")
  store %Uint64 %"$add_call_248", %Uint64* %"$sum1_0", align 8, !dbg !27
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_244"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_244"
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %sum_64 = alloca %Uint64, align 8
  %"$$sum1_0_254" = load %Uint64, %Uint64* %"$sum1_0", align 8
  %"$res14_255" = load %Uint64, %Uint64* %res14, align 8
  %"$add_call_256" = call %Uint64 @_add_Uint64(%Uint64 %"$$sum1_0_254", %Uint64 %"$res14_255")
  store %Uint64 %"$add_call_256", %Uint64* %sum_64, align 8, !dbg !28
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 1, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$have_gas_252"
  %"$consume_261" = sub i64 %"$gasrem_257", 1
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %res15 = alloca %Uint128, align 8
  %"$execptr_load_262" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_1_263" = alloca [1 x i8], align 1
  %"$one_1_264" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_264", [1 x i8]* %"$to_uint128_one_1_263", align 1
  %"$$to_uint128_one_1_263_265" = bitcast [1 x i8]* %"$to_uint128_one_1_263" to i8*
  %"$to_uint128_call_266" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_262", i32 1, i8* %"$$to_uint128_one_1_263_265")
  store %Uint128 %"$to_uint128_call_266", %Uint128* %res15, align 8, !dbg !29
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 1, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_260"
  %"$consume_271" = sub i64 %"$gasrem_267", 1
  store i64 %"$consume_271", i64* @_gasrem, align 8
  %res16 = alloca %Uint128, align 8
  %"$execptr_load_272" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_4_273" = alloca [4 x i8], align 1
  %"$one_4_274" = load [4 x i8], [4 x i8]* %one_4, align 1
  store [4 x i8] %"$one_4_274", [4 x i8]* %"$to_uint128_one_4_273", align 1
  %"$$to_uint128_one_4_273_275" = bitcast [4 x i8]* %"$to_uint128_one_4_273" to i8*
  %"$to_uint128_call_276" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_272", i32 4, i8* %"$$to_uint128_one_4_273_275")
  store %Uint128 %"$to_uint128_call_276", %Uint128* %res16, align 8, !dbg !30
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_270"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_270"
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %res17 = alloca %Uint128, align 8
  %"$execptr_load_282" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_8_283" = alloca [8 x i8], align 1
  %"$one_8_284" = load [8 x i8], [8 x i8]* %one_8, align 1
  store [8 x i8] %"$one_8_284", [8 x i8]* %"$to_uint128_one_8_283", align 1
  %"$$to_uint128_one_8_283_285" = bitcast [8 x i8]* %"$to_uint128_one_8_283" to i8*
  %"$to_uint128_call_286" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_282", i32 8, i8* %"$$to_uint128_one_8_283_285")
  store %Uint128 %"$to_uint128_call_286", %Uint128* %res17, align 8, !dbg !31
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 1, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_280"
  %"$consume_291" = sub i64 %"$gasrem_287", 1
  store i64 %"$consume_291", i64* @_gasrem, align 8
  %res18 = alloca %Uint128, align 8
  %"$execptr_load_292" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_16_293" = alloca [16 x i8], align 1
  %"$one_16_294" = load [16 x i8], [16 x i8]* %one_16, align 1
  store [16 x i8] %"$one_16_294", [16 x i8]* %"$to_uint128_one_16_293", align 1
  %"$$to_uint128_one_16_293_295" = bitcast [16 x i8]* %"$to_uint128_one_16_293" to i8*
  %"$to_uint128_call_296" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_292", i32 16, i8* %"$$to_uint128_one_16_293_295")
  store %Uint128 %"$to_uint128_call_296", %Uint128* %res18, align 8, !dbg !32
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 1, %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %"$have_gas_290"
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %"$have_gas_290"
  %"$consume_301" = sub i64 %"$gasrem_297", 1
  store i64 %"$consume_301", i64* @_gasrem, align 8
  %"$sum1_1" = alloca %Uint128, align 8
  %"$res15_302" = load %Uint128, %Uint128* %res15, align 8
  %"$res16_303" = load %Uint128, %Uint128* %res16, align 8
  %"$add_call_304" = call %Uint128 @_add_Uint128(%Uint128 %"$res15_302", %Uint128 %"$res16_303")
  store %Uint128 %"$add_call_304", %Uint128* %"$sum1_1", align 8, !dbg !33
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_300"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_300"
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem, align 8
  %"$sum2_2" = alloca %Uint128, align 8
  %"$res17_310" = load %Uint128, %Uint128* %res17, align 8
  %"$res18_311" = load %Uint128, %Uint128* %res18, align 8
  %"$add_call_312" = call %Uint128 @_add_Uint128(%Uint128 %"$res17_310", %Uint128 %"$res18_311")
  store %Uint128 %"$add_call_312", %Uint128* %"$sum2_2", align 8, !dbg !34
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 1, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %"$have_gas_308"
  %"$consume_317" = sub i64 %"$gasrem_313", 1
  store i64 %"$consume_317", i64* @_gasrem, align 8
  %sum_128 = alloca %Uint128, align 8
  %"$$sum1_1_318" = load %Uint128, %Uint128* %"$sum1_1", align 8
  %"$$sum2_2_319" = load %Uint128, %Uint128* %"$sum2_2", align 8
  %"$add_call_320" = call %Uint128 @_add_Uint128(%Uint128 %"$$sum1_1_318", %Uint128 %"$$sum2_2_319")
  store %Uint128 %"$add_call_320", %Uint128* %sum_128, align 8, !dbg !35
  %"$gasrem_321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_322" = icmp ugt i64 1, %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %"$have_gas_316"
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %"$have_gas_316"
  %"$consume_325" = sub i64 %"$gasrem_321", 1
  store i64 %"$consume_325", i64* @_gasrem, align 8
  %res19 = alloca %Uint256, align 8
  %"$execptr_load_326" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_1_327" = alloca [1 x i8], align 1
  %"$one_1_328" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_328", [1 x i8]* %"$to_uint256_one_1_327", align 1
  %"$$to_uint256_one_1_327_329" = bitcast [1 x i8]* %"$to_uint256_one_1_327" to i8*
  %"$to_uint256_call_330" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_326", i32 1, i8* %"$$to_uint256_one_1_327_329")
  %"$to_uint256_332" = load %Uint256, %Uint256* %"$to_uint256_call_330", align 8
  store %Uint256 %"$to_uint256_332", %Uint256* %res19, align 8, !dbg !36
  %"$gasrem_333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_334" = icmp ugt i64 1, %"$gasrem_333"
  br i1 %"$gascmp_334", label %"$out_of_gas_335", label %"$have_gas_336"

"$out_of_gas_335":                                ; preds = %"$have_gas_324"
  call void @_out_of_gas()
  br label %"$have_gas_336"

"$have_gas_336":                                  ; preds = %"$out_of_gas_335", %"$have_gas_324"
  %"$consume_337" = sub i64 %"$gasrem_333", 1
  store i64 %"$consume_337", i64* @_gasrem, align 8
  %res20 = alloca %Uint256, align 8
  %"$execptr_load_338" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_8_339" = alloca [8 x i8], align 1
  %"$one_8_340" = load [8 x i8], [8 x i8]* %one_8, align 1
  store [8 x i8] %"$one_8_340", [8 x i8]* %"$to_uint256_one_8_339", align 1
  %"$$to_uint256_one_8_339_341" = bitcast [8 x i8]* %"$to_uint256_one_8_339" to i8*
  %"$to_uint256_call_342" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_338", i32 8, i8* %"$$to_uint256_one_8_339_341")
  %"$to_uint256_344" = load %Uint256, %Uint256* %"$to_uint256_call_342", align 8
  store %Uint256 %"$to_uint256_344", %Uint256* %res20, align 8, !dbg !37
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_336"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_336"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  %res21 = alloca %Uint256, align 8
  %"$execptr_load_350" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_16_351" = alloca [16 x i8], align 1
  %"$one_16_352" = load [16 x i8], [16 x i8]* %one_16, align 1
  store [16 x i8] %"$one_16_352", [16 x i8]* %"$to_uint256_one_16_351", align 1
  %"$$to_uint256_one_16_351_353" = bitcast [16 x i8]* %"$to_uint256_one_16_351" to i8*
  %"$to_uint256_call_354" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_350", i32 16, i8* %"$$to_uint256_one_16_351_353")
  %"$to_uint256_356" = load %Uint256, %Uint256* %"$to_uint256_call_354", align 8
  store %Uint256 %"$to_uint256_356", %Uint256* %res21, align 8, !dbg !38
  %"$gasrem_357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_358" = icmp ugt i64 1, %"$gasrem_357"
  br i1 %"$gascmp_358", label %"$out_of_gas_359", label %"$have_gas_360"

"$out_of_gas_359":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_360"

"$have_gas_360":                                  ; preds = %"$out_of_gas_359", %"$have_gas_348"
  %"$consume_361" = sub i64 %"$gasrem_357", 1
  store i64 %"$consume_361", i64* @_gasrem, align 8
  %res22 = alloca %Uint256, align 8
  %"$execptr_load_362" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_32_363" = alloca [32 x i8], align 1
  %"$one_32_364" = load [32 x i8], [32 x i8]* %one_32, align 1
  store [32 x i8] %"$one_32_364", [32 x i8]* %"$to_uint256_one_32_363", align 1
  %"$$to_uint256_one_32_363_365" = bitcast [32 x i8]* %"$to_uint256_one_32_363" to i8*
  %"$to_uint256_call_366" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_362", i32 32, i8* %"$$to_uint256_one_32_363_365")
  %"$to_uint256_368" = load %Uint256, %Uint256* %"$to_uint256_call_366", align 8
  store %Uint256 %"$to_uint256_368", %Uint256* %res22, align 8, !dbg !39
  %"$gasrem_369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_370" = icmp ugt i64 1, %"$gasrem_369"
  br i1 %"$gascmp_370", label %"$out_of_gas_371", label %"$have_gas_372"

"$out_of_gas_371":                                ; preds = %"$have_gas_360"
  call void @_out_of_gas()
  br label %"$have_gas_372"

"$have_gas_372":                                  ; preds = %"$out_of_gas_371", %"$have_gas_360"
  %"$consume_373" = sub i64 %"$gasrem_369", 1
  store i64 %"$consume_373", i64* @_gasrem, align 8
  %"$sum1_3" = alloca %Uint256, align 8
  %"$execptr_load_374" = load i8*, i8** @_execptr, align 8
  %"$add_res19_375" = alloca %Uint256, align 8
  %"$res19_376" = load %Uint256, %Uint256* %res19, align 8
  store %Uint256 %"$res19_376", %Uint256* %"$add_res19_375", align 8
  %"$add_res20_377" = alloca %Uint256, align 8
  %"$res20_378" = load %Uint256, %Uint256* %res20, align 8
  store %Uint256 %"$res20_378", %Uint256* %"$add_res20_377", align 8
  %"$add_call_379" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_374", %Uint256* %"$add_res19_375", %Uint256* %"$add_res20_377")
  %"$add_381" = load %Uint256, %Uint256* %"$add_call_379", align 8
  store %Uint256 %"$add_381", %Uint256* %"$sum1_3", align 8, !dbg !40
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_372"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_372"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %"$sum2_4" = alloca %Uint256, align 8
  %"$execptr_load_387" = load i8*, i8** @_execptr, align 8
  %"$add_res21_388" = alloca %Uint256, align 8
  %"$res21_389" = load %Uint256, %Uint256* %res21, align 8
  store %Uint256 %"$res21_389", %Uint256* %"$add_res21_388", align 8
  %"$add_res22_390" = alloca %Uint256, align 8
  %"$res22_391" = load %Uint256, %Uint256* %res22, align 8
  store %Uint256 %"$res22_391", %Uint256* %"$add_res22_390", align 8
  %"$add_call_392" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_387", %Uint256* %"$add_res21_388", %Uint256* %"$add_res22_390")
  %"$add_394" = load %Uint256, %Uint256* %"$add_call_392", align 8
  store %Uint256 %"$add_394", %Uint256* %"$sum2_4", align 8, !dbg !41
  %"$gasrem_395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_396" = icmp ugt i64 1, %"$gasrem_395"
  br i1 %"$gascmp_396", label %"$out_of_gas_397", label %"$have_gas_398"

"$out_of_gas_397":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_398"

"$have_gas_398":                                  ; preds = %"$out_of_gas_397", %"$have_gas_385"
  %"$consume_399" = sub i64 %"$gasrem_395", 1
  store i64 %"$consume_399", i64* @_gasrem, align 8
  %sum_256 = alloca %Uint256, align 8
  %"$execptr_load_400" = load i8*, i8** @_execptr, align 8
  %"$add_$sum1_3_401" = alloca %Uint256, align 8
  %"$$sum1_3_402" = load %Uint256, %Uint256* %"$sum1_3", align 8
  store %Uint256 %"$$sum1_3_402", %Uint256* %"$add_$sum1_3_401", align 8
  %"$add_$sum2_4_403" = alloca %Uint256, align 8
  %"$$sum2_4_404" = load %Uint256, %Uint256* %"$sum2_4", align 8
  store %Uint256 %"$$sum2_4_404", %Uint256* %"$add_$sum2_4_403", align 8
  %"$add_call_405" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_400", %Uint256* %"$add_$sum1_3_401", %Uint256* %"$add_$sum2_4_403")
  %"$add_407" = load %Uint256, %Uint256* %"$add_call_405", align 8
  store %Uint256 %"$add_407", %Uint256* %sum_256, align 8, !dbg !42
  %"$gasrem_408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_409" = icmp ugt i64 1, %"$gasrem_408"
  br i1 %"$gascmp_409", label %"$out_of_gas_410", label %"$have_gas_411"

"$out_of_gas_410":                                ; preds = %"$have_gas_398"
  call void @_out_of_gas()
  br label %"$have_gas_411"

"$have_gas_411":                                  ; preds = %"$out_of_gas_410", %"$have_gas_398"
  %"$consume_412" = sub i64 %"$gasrem_408", 1
  store i64 %"$consume_412", i64* @_gasrem, align 8
  %respair1 = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_411"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_411"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %"$sum_32_418" = load %Uint32, %Uint32* %sum_32, align 4
  %"$sum_64_419" = load %Uint64, %Uint64* %sum_64, align 8
  %"$adtval_420_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_420_salloc" = call i8* @_salloc(i8* %"$adtval_420_load", i64 13)
  %"$adtval_420" = bitcast i8* %"$adtval_420_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_421" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_420", i32 0, i32 0
  store i8 0, i8* %"$adtgep_421", align 1
  %"$adtgep_422" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_420", i32 0, i32 1
  store %Uint32 %"$sum_32_418", %Uint32* %"$adtgep_422", align 4
  %"$adtgep_423" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_420", i32 0, i32 2
  store %Uint64 %"$sum_64_419", %Uint64* %"$adtgep_423", align 8
  %"$adtptr_424" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_420" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_424", %TName_Pair_Uint32_Uint64** %respair1, align 8, !dbg !43
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 1, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_416"
  %"$consume_429" = sub i64 %"$gasrem_425", 1
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %respair2 = alloca %TName_Pair_Uint128_Uint256*, align 8
  %"$gasrem_430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_431" = icmp ugt i64 1, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %"$have_gas_428"
  %"$consume_434" = sub i64 %"$gasrem_430", 1
  store i64 %"$consume_434", i64* @_gasrem, align 8
  %"$sum_128_435" = load %Uint128, %Uint128* %sum_128, align 8
  %"$sum_256_436" = load %Uint256, %Uint256* %sum_256, align 8
  %"$adtval_437_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_437_salloc" = call i8* @_salloc(i8* %"$adtval_437_load", i64 49)
  %"$adtval_437" = bitcast i8* %"$adtval_437_salloc" to %CName_Pair_Uint128_Uint256*
  %"$adtgep_438" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_437", i32 0, i32 0
  store i8 0, i8* %"$adtgep_438", align 1
  %"$adtgep_439" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_437", i32 0, i32 1
  store %Uint128 %"$sum_128_435", %Uint128* %"$adtgep_439", align 8
  %"$adtgep_440" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_437", i32 0, i32 2
  store %Uint256 %"$sum_256_436", %Uint256* %"$adtgep_440", align 8
  %"$adtptr_441" = bitcast %CName_Pair_Uint128_Uint256* %"$adtval_437" to %TName_Pair_Uint128_Uint256*
  store %TName_Pair_Uint128_Uint256* %"$adtptr_441", %TName_Pair_Uint128_Uint256** %respair2, align 8, !dbg !44
  %"$gasrem_442" = load i64, i64* @_gasrem, align 8
  %"$gascmp_443" = icmp ugt i64 1, %"$gasrem_442"
  br i1 %"$gascmp_443", label %"$out_of_gas_444", label %"$have_gas_445"

"$out_of_gas_444":                                ; preds = %"$have_gas_433"
  call void @_out_of_gas()
  br label %"$have_gas_445"

"$have_gas_445":                                  ; preds = %"$out_of_gas_444", %"$have_gas_433"
  %"$consume_446" = sub i64 %"$gasrem_442", 1
  store i64 %"$consume_446", i64* @_gasrem, align 8
  %restuple = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, align 8
  %"$gasrem_447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_448" = icmp ugt i64 1, %"$gasrem_447"
  br i1 %"$gascmp_448", label %"$out_of_gas_449", label %"$have_gas_450"

"$out_of_gas_449":                                ; preds = %"$have_gas_445"
  call void @_out_of_gas()
  br label %"$have_gas_450"

"$have_gas_450":                                  ; preds = %"$out_of_gas_449", %"$have_gas_445"
  %"$consume_451" = sub i64 %"$gasrem_447", 1
  store i64 %"$consume_451", i64* @_gasrem, align 8
  %"$respair1_452" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %respair1, align 8
  %"$respair2_453" = load %TName_Pair_Uint128_Uint256*, %TName_Pair_Uint128_Uint256** %respair2, align 8
  %"$adtval_454_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_454_salloc" = call i8* @_salloc(i8* %"$adtval_454_load", i64 17)
  %"$adtval_454" = bitcast i8* %"$adtval_454_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*
  %"$adtgep_455" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_454", i32 0, i32 0
  store i8 0, i8* %"$adtgep_455", align 1
  %"$adtgep_456" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_454", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$respair1_452", %TName_Pair_Uint32_Uint64** %"$adtgep_456", align 8
  %"$adtgep_457" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_454", i32 0, i32 2
  store %TName_Pair_Uint128_Uint256* %"$respair2_453", %TName_Pair_Uint128_Uint256** %"$adtgep_457", align 8
  %"$adtptr_458" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_454" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtptr_458", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %restuple, align 8, !dbg !45
  %"$gasrem_459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_460" = icmp ugt i64 1, %"$gasrem_459"
  br i1 %"$gascmp_460", label %"$out_of_gas_461", label %"$have_gas_462"

"$out_of_gas_461":                                ; preds = %"$have_gas_450"
  call void @_out_of_gas()
  br label %"$have_gas_462"

"$have_gas_462":                                  ; preds = %"$out_of_gas_461", %"$have_gas_450"
  %"$consume_463" = sub i64 %"$gasrem_459", 1
  store i64 %"$consume_463", i64* @_gasrem, align 8
  %"$restuple_464" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %restuple, align 8
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$restuple_464", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %"$expr_5", align 8, !dbg !46
  %"$$expr_5_465" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %"$expr_5", align 8
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$$expr_5_465"
}

declare void @_out_of_gas()

declare %Uint32 @_bystrx_to_uint32(i8*, i32, i8*)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

declare %Uint64 @_bystrx_to_uint64(i8*, i32, i8*)

declare %Uint64 @_add_Uint64(%Uint64, %Uint64)

declare %Uint128 @_bystrx_to_uint128(i8*, i32, i8*)

declare %Uint128 @_add_Uint128(%Uint128, %Uint128)

declare %Uint256* @_bystrx_to_uint256(i8*, i32, i8*)

declare %Uint256* @_add_Uint256(i8*, %Uint256*, %Uint256*)

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_466" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_467" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$exprval_466" to i8*
  %"$execptr_load_468" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_468", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_52", i8* %"$memvoidcast_467")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "bystrx_uint_conversions.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 1, column: 12, scope: !9)
!11 = !DILocation(line: 2, column: 13, scope: !9)
!12 = !DILocation(line: 3, column: 13, scope: !9)
!13 = !DILocation(line: 4, column: 13, scope: !9)
!14 = !DILocation(line: 5, column: 13, scope: !9)
!15 = !DILocation(line: 6, column: 14, scope: !9)
!16 = !DILocation(line: 7, column: 14, scope: !9)
!17 = !DILocation(line: 9, column: 12, scope: !9)
!18 = !DILocation(line: 10, column: 12, scope: !9)
!19 = !DILocation(line: 11, column: 12, scope: !9)
!20 = !DILocation(line: 12, column: 13, scope: !9)
!21 = !DILocation(line: 13, column: 12, scope: !9)
!22 = !DILocation(line: 14, column: 12, scope: !9)
!23 = !DILocation(line: 15, column: 14, scope: !9)
!24 = !DILocation(line: 17, column: 13, scope: !9)
!25 = !DILocation(line: 18, column: 13, scope: !9)
!26 = !DILocation(line: 19, column: 13, scope: !9)
!27 = !DILocation(line: 20, column: 12, scope: !9)
!28 = !DILocation(line: 21, column: 14, scope: !9)
!29 = !DILocation(line: 23, column: 13, scope: !9)
!30 = !DILocation(line: 24, column: 13, scope: !9)
!31 = !DILocation(line: 25, column: 13, scope: !9)
!32 = !DILocation(line: 26, column: 13, scope: !9)
!33 = !DILocation(line: 27, column: 12, scope: !9)
!34 = !DILocation(line: 28, column: 12, scope: !9)
!35 = !DILocation(line: 29, column: 15, scope: !9)
!36 = !DILocation(line: 31, column: 13, scope: !9)
!37 = !DILocation(line: 32, column: 13, scope: !9)
!38 = !DILocation(line: 33, column: 13, scope: !9)
!39 = !DILocation(line: 34, column: 13, scope: !9)
!40 = !DILocation(line: 35, column: 12, scope: !9)
!41 = !DILocation(line: 36, column: 12, scope: !9)
!42 = !DILocation(line: 37, column: 15, scope: !9)
!43 = !DILocation(line: 39, column: 16, scope: !9)
!44 = !DILocation(line: 40, column: 16, scope: !9)
!45 = !DILocation(line: 41, column: 16, scope: !9)
!46 = !DILocation(line: 43, column: 1, scope: !9)
