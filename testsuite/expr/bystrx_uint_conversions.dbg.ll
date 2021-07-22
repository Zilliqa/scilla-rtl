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
%"$ParamDescr_605" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_606" = type { %ParamDescrString, i32, %"$ParamDescr_605"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_605"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_606"] zeroinitializer
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
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 4, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$have_gas_150"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$have_gas_150"
  %"$consume_156" = sub i64 %"$gasrem_152", 4
  store i64 %"$consume_156", i64* @_gasrem, align 8
  %"$execptr_load_157" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_zero_158" = alloca [1 x i8], align 1
  %"$zero_159" = load [1 x i8], [1 x i8]* %zero, align 1
  store [1 x i8] %"$zero_159", [1 x i8]* %"$to_uint32_zero_158", align 1
  %"$$to_uint32_zero_158_160" = bitcast [1 x i8]* %"$to_uint32_zero_158" to i8*
  %"$to_uint32_call_161" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_157", i32 1, i8* %"$$to_uint32_zero_158_160"), !dbg !17
  store %Uint32 %"$to_uint32_call_161", %Uint32* %res7, align 4, !dbg !17
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_155"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_155"
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %res8 = alloca %Uint32, align 8
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 4, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$have_gas_165"
  %"$consume_171" = sub i64 %"$gasrem_167", 4
  store i64 %"$consume_171", i64* @_gasrem, align 8
  %"$execptr_load_172" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_one_1_173" = alloca [1 x i8], align 1
  %"$one_1_174" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_174", [1 x i8]* %"$to_uint32_one_1_173", align 1
  %"$$to_uint32_one_1_173_175" = bitcast [1 x i8]* %"$to_uint32_one_1_173" to i8*
  %"$to_uint32_call_176" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_172", i32 1, i8* %"$$to_uint32_one_1_173_175"), !dbg !18
  store %Uint32 %"$to_uint32_call_176", %Uint32* %res8, align 4, !dbg !18
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 1, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %"$have_gas_170"
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %"$have_gas_170"
  %"$consume_181" = sub i64 %"$gasrem_177", 1
  store i64 %"$consume_181", i64* @_gasrem, align 8
  %res9 = alloca %Uint32, align 8
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 4, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %"$have_gas_180"
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %"$have_gas_180"
  %"$consume_186" = sub i64 %"$gasrem_182", 4
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %"$execptr_load_187" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_one_3_188" = alloca [3 x i8], align 1
  %"$one_3_189" = load [3 x i8], [3 x i8]* %one_3, align 1
  store [3 x i8] %"$one_3_189", [3 x i8]* %"$to_uint32_one_3_188", align 1
  %"$$to_uint32_one_3_188_190" = bitcast [3 x i8]* %"$to_uint32_one_3_188" to i8*
  %"$to_uint32_call_191" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_187", i32 3, i8* %"$$to_uint32_one_3_188_190"), !dbg !19
  store %Uint32 %"$to_uint32_call_191", %Uint32* %res9, align 4, !dbg !19
  %"$gasrem_192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_193" = icmp ugt i64 1, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %"$have_gas_185"
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %"$have_gas_185"
  %"$consume_196" = sub i64 %"$gasrem_192", 1
  store i64 %"$consume_196", i64* @_gasrem, align 8
  %res10 = alloca %Uint32, align 8
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 4, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_195"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_195"
  %"$consume_201" = sub i64 %"$gasrem_197", 4
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %"$execptr_load_202" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_one_4_203" = alloca [4 x i8], align 1
  %"$one_4_204" = load [4 x i8], [4 x i8]* %one_4, align 1
  store [4 x i8] %"$one_4_204", [4 x i8]* %"$to_uint32_one_4_203", align 1
  %"$$to_uint32_one_4_203_205" = bitcast [4 x i8]* %"$to_uint32_one_4_203" to i8*
  %"$to_uint32_call_206" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_202", i32 4, i8* %"$$to_uint32_one_4_203_205"), !dbg !20
  store %Uint32 %"$to_uint32_call_206", %Uint32* %res10, align 4, !dbg !20
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 1, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$have_gas_200"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$have_gas_200"
  %"$consume_211" = sub i64 %"$gasrem_207", 1
  store i64 %"$consume_211", i64* @_gasrem, align 8
  %sum1 = alloca %Uint32, align 8
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 4, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %"$have_gas_210"
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %"$have_gas_210"
  %"$consume_216" = sub i64 %"$gasrem_212", 4
  store i64 %"$consume_216", i64* @_gasrem, align 8
  %"$res7_217" = load %Uint32, %Uint32* %res7, align 4
  %"$res8_218" = load %Uint32, %Uint32* %res8, align 4
  %"$add_call_219" = call %Uint32 @_add_Uint32(%Uint32 %"$res7_217", %Uint32 %"$res8_218"), !dbg !21
  store %Uint32 %"$add_call_219", %Uint32* %sum1, align 4, !dbg !21
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 1, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_215"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_215"
  %"$consume_224" = sub i64 %"$gasrem_220", 1
  store i64 %"$consume_224", i64* @_gasrem, align 8
  %sum2 = alloca %Uint32, align 8
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 4, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_223"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_223"
  %"$consume_229" = sub i64 %"$gasrem_225", 4
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %"$res9_230" = load %Uint32, %Uint32* %res9, align 4
  %"$res10_231" = load %Uint32, %Uint32* %res10, align 4
  %"$add_call_232" = call %Uint32 @_add_Uint32(%Uint32 %"$res9_230", %Uint32 %"$res10_231"), !dbg !22
  store %Uint32 %"$add_call_232", %Uint32* %sum2, align 4, !dbg !22
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_228"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_228"
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %sum_32 = alloca %Uint32, align 8
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 4, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_236"
  %"$consume_242" = sub i64 %"$gasrem_238", 4
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %"$sum1_243" = load %Uint32, %Uint32* %sum1, align 4
  %"$sum2_244" = load %Uint32, %Uint32* %sum2, align 4
  %"$add_call_245" = call %Uint32 @_add_Uint32(%Uint32 %"$sum1_243", %Uint32 %"$sum2_244"), !dbg !23
  store %Uint32 %"$add_call_245", %Uint32* %sum_32, align 4, !dbg !23
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 1, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$have_gas_241"
  %"$consume_250" = sub i64 %"$gasrem_246", 1
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %res12 = alloca %Uint64, align 8
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 8, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$have_gas_249"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$have_gas_249"
  %"$consume_255" = sub i64 %"$gasrem_251", 8
  store i64 %"$consume_255", i64* @_gasrem, align 8
  %"$execptr_load_256" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_one_1_257" = alloca [1 x i8], align 1
  %"$one_1_258" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_258", [1 x i8]* %"$to_uint64_one_1_257", align 1
  %"$$to_uint64_one_1_257_259" = bitcast [1 x i8]* %"$to_uint64_one_1_257" to i8*
  %"$to_uint64_call_260" = call %Uint64 @_bystrx_to_uint64(i8* %"$execptr_load_256", i32 1, i8* %"$$to_uint64_one_1_257_259"), !dbg !24
  store %Uint64 %"$to_uint64_call_260", %Uint64* %res12, align 8, !dbg !24
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_254"
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %res13 = alloca %Uint64, align 8
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 8, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_264"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_264"
  %"$consume_270" = sub i64 %"$gasrem_266", 8
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %"$execptr_load_271" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_one_4_272" = alloca [4 x i8], align 1
  %"$one_4_273" = load [4 x i8], [4 x i8]* %one_4, align 1
  store [4 x i8] %"$one_4_273", [4 x i8]* %"$to_uint64_one_4_272", align 1
  %"$$to_uint64_one_4_272_274" = bitcast [4 x i8]* %"$to_uint64_one_4_272" to i8*
  %"$to_uint64_call_275" = call %Uint64 @_bystrx_to_uint64(i8* %"$execptr_load_271", i32 4, i8* %"$$to_uint64_one_4_272_274"), !dbg !25
  store %Uint64 %"$to_uint64_call_275", %Uint64* %res13, align 8, !dbg !25
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 1, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %"$have_gas_269"
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %"$have_gas_269"
  %"$consume_280" = sub i64 %"$gasrem_276", 1
  store i64 %"$consume_280", i64* @_gasrem, align 8
  %res14 = alloca %Uint64, align 8
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 8, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %"$have_gas_279"
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %"$have_gas_279"
  %"$consume_285" = sub i64 %"$gasrem_281", 8
  store i64 %"$consume_285", i64* @_gasrem, align 8
  %"$execptr_load_286" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_one_8_287" = alloca [8 x i8], align 1
  %"$one_8_288" = load [8 x i8], [8 x i8]* %one_8, align 1
  store [8 x i8] %"$one_8_288", [8 x i8]* %"$to_uint64_one_8_287", align 1
  %"$$to_uint64_one_8_287_289" = bitcast [8 x i8]* %"$to_uint64_one_8_287" to i8*
  %"$to_uint64_call_290" = call %Uint64 @_bystrx_to_uint64(i8* %"$execptr_load_286", i32 8, i8* %"$$to_uint64_one_8_287_289"), !dbg !26
  store %Uint64 %"$to_uint64_call_290", %Uint64* %res14, align 8, !dbg !26
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 1, %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %"$have_gas_284"
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %"$have_gas_284"
  %"$consume_295" = sub i64 %"$gasrem_291", 1
  store i64 %"$consume_295", i64* @_gasrem, align 8
  %"$sum1_0" = alloca %Uint64, align 8
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 4, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$have_gas_294"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$have_gas_294"
  %"$consume_300" = sub i64 %"$gasrem_296", 4
  store i64 %"$consume_300", i64* @_gasrem, align 8
  %"$res12_301" = load %Uint64, %Uint64* %res12, align 8
  %"$res13_302" = load %Uint64, %Uint64* %res13, align 8
  %"$add_call_303" = call %Uint64 @_add_Uint64(%Uint64 %"$res12_301", %Uint64 %"$res13_302"), !dbg !27
  store %Uint64 %"$add_call_303", %Uint64* %"$sum1_0", align 8, !dbg !27
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_299"
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %sum_64 = alloca %Uint64, align 8
  %"$gasrem_309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_310" = icmp ugt i64 4, %"$gasrem_309"
  br i1 %"$gascmp_310", label %"$out_of_gas_311", label %"$have_gas_312"

"$out_of_gas_311":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_312"

"$have_gas_312":                                  ; preds = %"$out_of_gas_311", %"$have_gas_307"
  %"$consume_313" = sub i64 %"$gasrem_309", 4
  store i64 %"$consume_313", i64* @_gasrem, align 8
  %"$$sum1_0_314" = load %Uint64, %Uint64* %"$sum1_0", align 8
  %"$res14_315" = load %Uint64, %Uint64* %res14, align 8
  %"$add_call_316" = call %Uint64 @_add_Uint64(%Uint64 %"$$sum1_0_314", %Uint64 %"$res14_315"), !dbg !28
  store %Uint64 %"$add_call_316", %Uint64* %sum_64, align 8, !dbg !28
  %"$gasrem_317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_318" = icmp ugt i64 1, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_312"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_312"
  %"$consume_321" = sub i64 %"$gasrem_317", 1
  store i64 %"$consume_321", i64* @_gasrem, align 8
  %res15 = alloca %Uint128, align 8
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 16, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$have_gas_320"
  %"$consume_326" = sub i64 %"$gasrem_322", 16
  store i64 %"$consume_326", i64* @_gasrem, align 8
  %"$execptr_load_327" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_1_328" = alloca [1 x i8], align 1
  %"$one_1_329" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_329", [1 x i8]* %"$to_uint128_one_1_328", align 1
  %"$$to_uint128_one_1_328_330" = bitcast [1 x i8]* %"$to_uint128_one_1_328" to i8*
  %"$to_uint128_call_331" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_327", i32 1, i8* %"$$to_uint128_one_1_328_330"), !dbg !29
  store %Uint128 %"$to_uint128_call_331", %Uint128* %res15, align 8, !dbg !29
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 1, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$have_gas_325"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$have_gas_325"
  %"$consume_336" = sub i64 %"$gasrem_332", 1
  store i64 %"$consume_336", i64* @_gasrem, align 8
  %res16 = alloca %Uint128, align 8
  %"$gasrem_337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_338" = icmp ugt i64 16, %"$gasrem_337"
  br i1 %"$gascmp_338", label %"$out_of_gas_339", label %"$have_gas_340"

"$out_of_gas_339":                                ; preds = %"$have_gas_335"
  call void @_out_of_gas()
  br label %"$have_gas_340"

"$have_gas_340":                                  ; preds = %"$out_of_gas_339", %"$have_gas_335"
  %"$consume_341" = sub i64 %"$gasrem_337", 16
  store i64 %"$consume_341", i64* @_gasrem, align 8
  %"$execptr_load_342" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_4_343" = alloca [4 x i8], align 1
  %"$one_4_344" = load [4 x i8], [4 x i8]* %one_4, align 1
  store [4 x i8] %"$one_4_344", [4 x i8]* %"$to_uint128_one_4_343", align 1
  %"$$to_uint128_one_4_343_345" = bitcast [4 x i8]* %"$to_uint128_one_4_343" to i8*
  %"$to_uint128_call_346" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_342", i32 4, i8* %"$$to_uint128_one_4_343_345"), !dbg !30
  store %Uint128 %"$to_uint128_call_346", %Uint128* %res16, align 8, !dbg !30
  %"$gasrem_347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_348" = icmp ugt i64 1, %"$gasrem_347"
  br i1 %"$gascmp_348", label %"$out_of_gas_349", label %"$have_gas_350"

"$out_of_gas_349":                                ; preds = %"$have_gas_340"
  call void @_out_of_gas()
  br label %"$have_gas_350"

"$have_gas_350":                                  ; preds = %"$out_of_gas_349", %"$have_gas_340"
  %"$consume_351" = sub i64 %"$gasrem_347", 1
  store i64 %"$consume_351", i64* @_gasrem, align 8
  %res17 = alloca %Uint128, align 8
  %"$gasrem_352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_353" = icmp ugt i64 16, %"$gasrem_352"
  br i1 %"$gascmp_353", label %"$out_of_gas_354", label %"$have_gas_355"

"$out_of_gas_354":                                ; preds = %"$have_gas_350"
  call void @_out_of_gas()
  br label %"$have_gas_355"

"$have_gas_355":                                  ; preds = %"$out_of_gas_354", %"$have_gas_350"
  %"$consume_356" = sub i64 %"$gasrem_352", 16
  store i64 %"$consume_356", i64* @_gasrem, align 8
  %"$execptr_load_357" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_8_358" = alloca [8 x i8], align 1
  %"$one_8_359" = load [8 x i8], [8 x i8]* %one_8, align 1
  store [8 x i8] %"$one_8_359", [8 x i8]* %"$to_uint128_one_8_358", align 1
  %"$$to_uint128_one_8_358_360" = bitcast [8 x i8]* %"$to_uint128_one_8_358" to i8*
  %"$to_uint128_call_361" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_357", i32 8, i8* %"$$to_uint128_one_8_358_360"), !dbg !31
  store %Uint128 %"$to_uint128_call_361", %Uint128* %res17, align 8, !dbg !31
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 1, %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_355"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_355"
  %"$consume_366" = sub i64 %"$gasrem_362", 1
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %res18 = alloca %Uint128, align 8
  %"$gasrem_367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_368" = icmp ugt i64 16, %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %"$have_gas_365"
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %"$have_gas_365"
  %"$consume_371" = sub i64 %"$gasrem_367", 16
  store i64 %"$consume_371", i64* @_gasrem, align 8
  %"$execptr_load_372" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_16_373" = alloca [16 x i8], align 1
  %"$one_16_374" = load [16 x i8], [16 x i8]* %one_16, align 1
  store [16 x i8] %"$one_16_374", [16 x i8]* %"$to_uint128_one_16_373", align 1
  %"$$to_uint128_one_16_373_375" = bitcast [16 x i8]* %"$to_uint128_one_16_373" to i8*
  %"$to_uint128_call_376" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_372", i32 16, i8* %"$$to_uint128_one_16_373_375"), !dbg !32
  store %Uint128 %"$to_uint128_call_376", %Uint128* %res18, align 8, !dbg !32
  %"$gasrem_377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_378" = icmp ugt i64 1, %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %"$have_gas_370"
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %"$have_gas_370"
  %"$consume_381" = sub i64 %"$gasrem_377", 1
  store i64 %"$consume_381", i64* @_gasrem, align 8
  %"$sum1_1" = alloca %Uint128, align 8
  %"$gasrem_383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_384" = icmp ugt i64 8, %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$have_gas_380"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$have_gas_380"
  %"$consume_387" = sub i64 %"$gasrem_383", 8
  store i64 %"$consume_387", i64* @_gasrem, align 8
  %"$res15_388" = load %Uint128, %Uint128* %res15, align 8
  %"$res16_389" = load %Uint128, %Uint128* %res16, align 8
  %"$add_call_390" = call %Uint128 @_add_Uint128(%Uint128 %"$res15_388", %Uint128 %"$res16_389"), !dbg !33
  store %Uint128 %"$add_call_390", %Uint128* %"$sum1_1", align 8, !dbg !33
  %"$gasrem_391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_392" = icmp ugt i64 1, %"$gasrem_391"
  br i1 %"$gascmp_392", label %"$out_of_gas_393", label %"$have_gas_394"

"$out_of_gas_393":                                ; preds = %"$have_gas_386"
  call void @_out_of_gas()
  br label %"$have_gas_394"

"$have_gas_394":                                  ; preds = %"$out_of_gas_393", %"$have_gas_386"
  %"$consume_395" = sub i64 %"$gasrem_391", 1
  store i64 %"$consume_395", i64* @_gasrem, align 8
  %"$sum2_2" = alloca %Uint128, align 8
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 8, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_394"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_394"
  %"$consume_401" = sub i64 %"$gasrem_397", 8
  store i64 %"$consume_401", i64* @_gasrem, align 8
  %"$res17_402" = load %Uint128, %Uint128* %res17, align 8
  %"$res18_403" = load %Uint128, %Uint128* %res18, align 8
  %"$add_call_404" = call %Uint128 @_add_Uint128(%Uint128 %"$res17_402", %Uint128 %"$res18_403"), !dbg !34
  store %Uint128 %"$add_call_404", %Uint128* %"$sum2_2", align 8, !dbg !34
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_400"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_400"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %sum_128 = alloca %Uint128, align 8
  %"$gasrem_411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_412" = icmp ugt i64 8, %"$gasrem_411"
  br i1 %"$gascmp_412", label %"$out_of_gas_413", label %"$have_gas_414"

"$out_of_gas_413":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_414"

"$have_gas_414":                                  ; preds = %"$out_of_gas_413", %"$have_gas_408"
  %"$consume_415" = sub i64 %"$gasrem_411", 8
  store i64 %"$consume_415", i64* @_gasrem, align 8
  %"$$sum1_1_416" = load %Uint128, %Uint128* %"$sum1_1", align 8
  %"$$sum2_2_417" = load %Uint128, %Uint128* %"$sum2_2", align 8
  %"$add_call_418" = call %Uint128 @_add_Uint128(%Uint128 %"$$sum1_1_416", %Uint128 %"$$sum2_2_417"), !dbg !35
  store %Uint128 %"$add_call_418", %Uint128* %sum_128, align 8, !dbg !35
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_414"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_414"
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %res19 = alloca %Uint256, align 8
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 32, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_422"
  %"$consume_428" = sub i64 %"$gasrem_424", 32
  store i64 %"$consume_428", i64* @_gasrem, align 8
  %"$execptr_load_429" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_1_430" = alloca [1 x i8], align 1
  %"$one_1_431" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_431", [1 x i8]* %"$to_uint256_one_1_430", align 1
  %"$$to_uint256_one_1_430_432" = bitcast [1 x i8]* %"$to_uint256_one_1_430" to i8*
  %"$to_uint256_call_433" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_429", i32 1, i8* %"$$to_uint256_one_1_430_432"), !dbg !36
  %"$to_uint256_435" = load %Uint256, %Uint256* %"$to_uint256_call_433", align 8
  store %Uint256 %"$to_uint256_435", %Uint256* %res19, align 8, !dbg !36
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_427"
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %res20 = alloca %Uint256, align 8
  %"$gasrem_441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_442" = icmp ugt i64 32, %"$gasrem_441"
  br i1 %"$gascmp_442", label %"$out_of_gas_443", label %"$have_gas_444"

"$out_of_gas_443":                                ; preds = %"$have_gas_439"
  call void @_out_of_gas()
  br label %"$have_gas_444"

"$have_gas_444":                                  ; preds = %"$out_of_gas_443", %"$have_gas_439"
  %"$consume_445" = sub i64 %"$gasrem_441", 32
  store i64 %"$consume_445", i64* @_gasrem, align 8
  %"$execptr_load_446" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_8_447" = alloca [8 x i8], align 1
  %"$one_8_448" = load [8 x i8], [8 x i8]* %one_8, align 1
  store [8 x i8] %"$one_8_448", [8 x i8]* %"$to_uint256_one_8_447", align 1
  %"$$to_uint256_one_8_447_449" = bitcast [8 x i8]* %"$to_uint256_one_8_447" to i8*
  %"$to_uint256_call_450" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_446", i32 8, i8* %"$$to_uint256_one_8_447_449"), !dbg !37
  %"$to_uint256_452" = load %Uint256, %Uint256* %"$to_uint256_call_450", align 8
  store %Uint256 %"$to_uint256_452", %Uint256* %res20, align 8, !dbg !37
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_444"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_444"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %res21 = alloca %Uint256, align 8
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 32, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$have_gas_456"
  %"$consume_462" = sub i64 %"$gasrem_458", 32
  store i64 %"$consume_462", i64* @_gasrem, align 8
  %"$execptr_load_463" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_16_464" = alloca [16 x i8], align 1
  %"$one_16_465" = load [16 x i8], [16 x i8]* %one_16, align 1
  store [16 x i8] %"$one_16_465", [16 x i8]* %"$to_uint256_one_16_464", align 1
  %"$$to_uint256_one_16_464_466" = bitcast [16 x i8]* %"$to_uint256_one_16_464" to i8*
  %"$to_uint256_call_467" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_463", i32 16, i8* %"$$to_uint256_one_16_464_466"), !dbg !38
  %"$to_uint256_469" = load %Uint256, %Uint256* %"$to_uint256_call_467", align 8
  store %Uint256 %"$to_uint256_469", %Uint256* %res21, align 8, !dbg !38
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 1, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$have_gas_461"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$have_gas_461"
  %"$consume_474" = sub i64 %"$gasrem_470", 1
  store i64 %"$consume_474", i64* @_gasrem, align 8
  %res22 = alloca %Uint256, align 8
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 32, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_473"
  %"$consume_479" = sub i64 %"$gasrem_475", 32
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %"$execptr_load_480" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_32_481" = alloca [32 x i8], align 1
  %"$one_32_482" = load [32 x i8], [32 x i8]* %one_32, align 1
  store [32 x i8] %"$one_32_482", [32 x i8]* %"$to_uint256_one_32_481", align 1
  %"$$to_uint256_one_32_481_483" = bitcast [32 x i8]* %"$to_uint256_one_32_481" to i8*
  %"$to_uint256_call_484" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_480", i32 32, i8* %"$$to_uint256_one_32_481_483"), !dbg !39
  %"$to_uint256_486" = load %Uint256, %Uint256* %"$to_uint256_call_484", align 8
  store %Uint256 %"$to_uint256_486", %Uint256* %res22, align 8, !dbg !39
  %"$gasrem_487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_488" = icmp ugt i64 1, %"$gasrem_487"
  br i1 %"$gascmp_488", label %"$out_of_gas_489", label %"$have_gas_490"

"$out_of_gas_489":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_490"

"$have_gas_490":                                  ; preds = %"$out_of_gas_489", %"$have_gas_478"
  %"$consume_491" = sub i64 %"$gasrem_487", 1
  store i64 %"$consume_491", i64* @_gasrem, align 8
  %"$sum1_3" = alloca %Uint256, align 8
  %"$gasrem_493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_494" = icmp ugt i64 16, %"$gasrem_493"
  br i1 %"$gascmp_494", label %"$out_of_gas_495", label %"$have_gas_496"

"$out_of_gas_495":                                ; preds = %"$have_gas_490"
  call void @_out_of_gas()
  br label %"$have_gas_496"

"$have_gas_496":                                  ; preds = %"$out_of_gas_495", %"$have_gas_490"
  %"$consume_497" = sub i64 %"$gasrem_493", 16
  store i64 %"$consume_497", i64* @_gasrem, align 8
  %"$execptr_load_498" = load i8*, i8** @_execptr, align 8
  %"$add_res19_499" = alloca %Uint256, align 8
  %"$res19_500" = load %Uint256, %Uint256* %res19, align 8
  store %Uint256 %"$res19_500", %Uint256* %"$add_res19_499", align 8
  %"$add_res20_501" = alloca %Uint256, align 8
  %"$res20_502" = load %Uint256, %Uint256* %res20, align 8
  store %Uint256 %"$res20_502", %Uint256* %"$add_res20_501", align 8
  %"$add_call_503" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_498", %Uint256* %"$add_res19_499", %Uint256* %"$add_res20_501"), !dbg !40
  %"$add_505" = load %Uint256, %Uint256* %"$add_call_503", align 8
  store %Uint256 %"$add_505", %Uint256* %"$sum1_3", align 8, !dbg !40
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_496"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_496"
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %"$sum2_4" = alloca %Uint256, align 8
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 16, %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %"$have_gas_509"
  %"$consume_516" = sub i64 %"$gasrem_512", 16
  store i64 %"$consume_516", i64* @_gasrem, align 8
  %"$execptr_load_517" = load i8*, i8** @_execptr, align 8
  %"$add_res21_518" = alloca %Uint256, align 8
  %"$res21_519" = load %Uint256, %Uint256* %res21, align 8
  store %Uint256 %"$res21_519", %Uint256* %"$add_res21_518", align 8
  %"$add_res22_520" = alloca %Uint256, align 8
  %"$res22_521" = load %Uint256, %Uint256* %res22, align 8
  store %Uint256 %"$res22_521", %Uint256* %"$add_res22_520", align 8
  %"$add_call_522" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_517", %Uint256* %"$add_res21_518", %Uint256* %"$add_res22_520"), !dbg !41
  %"$add_524" = load %Uint256, %Uint256* %"$add_call_522", align 8
  store %Uint256 %"$add_524", %Uint256* %"$sum2_4", align 8, !dbg !41
  %"$gasrem_525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_526" = icmp ugt i64 1, %"$gasrem_525"
  br i1 %"$gascmp_526", label %"$out_of_gas_527", label %"$have_gas_528"

"$out_of_gas_527":                                ; preds = %"$have_gas_515"
  call void @_out_of_gas()
  br label %"$have_gas_528"

"$have_gas_528":                                  ; preds = %"$out_of_gas_527", %"$have_gas_515"
  %"$consume_529" = sub i64 %"$gasrem_525", 1
  store i64 %"$consume_529", i64* @_gasrem, align 8
  %sum_256 = alloca %Uint256, align 8
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 16, %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$have_gas_528"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$have_gas_528"
  %"$consume_535" = sub i64 %"$gasrem_531", 16
  store i64 %"$consume_535", i64* @_gasrem, align 8
  %"$execptr_load_536" = load i8*, i8** @_execptr, align 8
  %"$add_$sum1_3_537" = alloca %Uint256, align 8
  %"$$sum1_3_538" = load %Uint256, %Uint256* %"$sum1_3", align 8
  store %Uint256 %"$$sum1_3_538", %Uint256* %"$add_$sum1_3_537", align 8
  %"$add_$sum2_4_539" = alloca %Uint256, align 8
  %"$$sum2_4_540" = load %Uint256, %Uint256* %"$sum2_4", align 8
  store %Uint256 %"$$sum2_4_540", %Uint256* %"$add_$sum2_4_539", align 8
  %"$add_call_541" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_536", %Uint256* %"$add_$sum1_3_537", %Uint256* %"$add_$sum2_4_539"), !dbg !42
  %"$add_543" = load %Uint256, %Uint256* %"$add_call_541", align 8
  store %Uint256 %"$add_543", %Uint256* %sum_256, align 8, !dbg !42
  %"$gasrem_544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_545" = icmp ugt i64 1, %"$gasrem_544"
  br i1 %"$gascmp_545", label %"$out_of_gas_546", label %"$have_gas_547"

"$out_of_gas_546":                                ; preds = %"$have_gas_534"
  call void @_out_of_gas()
  br label %"$have_gas_547"

"$have_gas_547":                                  ; preds = %"$out_of_gas_546", %"$have_gas_534"
  %"$consume_548" = sub i64 %"$gasrem_544", 1
  store i64 %"$consume_548", i64* @_gasrem, align 8
  %respair1 = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_550" = icmp ugt i64 1, %"$gasrem_549"
  br i1 %"$gascmp_550", label %"$out_of_gas_551", label %"$have_gas_552"

"$out_of_gas_551":                                ; preds = %"$have_gas_547"
  call void @_out_of_gas()
  br label %"$have_gas_552"

"$have_gas_552":                                  ; preds = %"$out_of_gas_551", %"$have_gas_547"
  %"$consume_553" = sub i64 %"$gasrem_549", 1
  store i64 %"$consume_553", i64* @_gasrem, align 8
  %"$sum_32_554" = load %Uint32, %Uint32* %sum_32, align 4
  %"$sum_64_555" = load %Uint64, %Uint64* %sum_64, align 8
  %"$adtval_556_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_556_salloc" = call i8* @_salloc(i8* %"$adtval_556_load", i64 13)
  %"$adtval_556" = bitcast i8* %"$adtval_556_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_557" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_556", i32 0, i32 0
  store i8 0, i8* %"$adtgep_557", align 1
  %"$adtgep_558" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_556", i32 0, i32 1
  store %Uint32 %"$sum_32_554", %Uint32* %"$adtgep_558", align 4
  %"$adtgep_559" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_556", i32 0, i32 2
  store %Uint64 %"$sum_64_555", %Uint64* %"$adtgep_559", align 8
  %"$adtptr_560" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_556" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_560", %TName_Pair_Uint32_Uint64** %respair1, align 8, !dbg !43
  %"$gasrem_561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_562" = icmp ugt i64 1, %"$gasrem_561"
  br i1 %"$gascmp_562", label %"$out_of_gas_563", label %"$have_gas_564"

"$out_of_gas_563":                                ; preds = %"$have_gas_552"
  call void @_out_of_gas()
  br label %"$have_gas_564"

"$have_gas_564":                                  ; preds = %"$out_of_gas_563", %"$have_gas_552"
  %"$consume_565" = sub i64 %"$gasrem_561", 1
  store i64 %"$consume_565", i64* @_gasrem, align 8
  %respair2 = alloca %TName_Pair_Uint128_Uint256*, align 8
  %"$gasrem_566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_567" = icmp ugt i64 1, %"$gasrem_566"
  br i1 %"$gascmp_567", label %"$out_of_gas_568", label %"$have_gas_569"

"$out_of_gas_568":                                ; preds = %"$have_gas_564"
  call void @_out_of_gas()
  br label %"$have_gas_569"

"$have_gas_569":                                  ; preds = %"$out_of_gas_568", %"$have_gas_564"
  %"$consume_570" = sub i64 %"$gasrem_566", 1
  store i64 %"$consume_570", i64* @_gasrem, align 8
  %"$sum_128_571" = load %Uint128, %Uint128* %sum_128, align 8
  %"$sum_256_572" = load %Uint256, %Uint256* %sum_256, align 8
  %"$adtval_573_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_573_salloc" = call i8* @_salloc(i8* %"$adtval_573_load", i64 49)
  %"$adtval_573" = bitcast i8* %"$adtval_573_salloc" to %CName_Pair_Uint128_Uint256*
  %"$adtgep_574" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_573", i32 0, i32 0
  store i8 0, i8* %"$adtgep_574", align 1
  %"$adtgep_575" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_573", i32 0, i32 1
  store %Uint128 %"$sum_128_571", %Uint128* %"$adtgep_575", align 8
  %"$adtgep_576" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_573", i32 0, i32 2
  store %Uint256 %"$sum_256_572", %Uint256* %"$adtgep_576", align 8
  %"$adtptr_577" = bitcast %CName_Pair_Uint128_Uint256* %"$adtval_573" to %TName_Pair_Uint128_Uint256*
  store %TName_Pair_Uint128_Uint256* %"$adtptr_577", %TName_Pair_Uint128_Uint256** %respair2, align 8, !dbg !44
  %"$gasrem_578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_579" = icmp ugt i64 1, %"$gasrem_578"
  br i1 %"$gascmp_579", label %"$out_of_gas_580", label %"$have_gas_581"

"$out_of_gas_580":                                ; preds = %"$have_gas_569"
  call void @_out_of_gas()
  br label %"$have_gas_581"

"$have_gas_581":                                  ; preds = %"$out_of_gas_580", %"$have_gas_569"
  %"$consume_582" = sub i64 %"$gasrem_578", 1
  store i64 %"$consume_582", i64* @_gasrem, align 8
  %restuple = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, align 8
  %"$gasrem_583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_584" = icmp ugt i64 1, %"$gasrem_583"
  br i1 %"$gascmp_584", label %"$out_of_gas_585", label %"$have_gas_586"

"$out_of_gas_585":                                ; preds = %"$have_gas_581"
  call void @_out_of_gas()
  br label %"$have_gas_586"

"$have_gas_586":                                  ; preds = %"$out_of_gas_585", %"$have_gas_581"
  %"$consume_587" = sub i64 %"$gasrem_583", 1
  store i64 %"$consume_587", i64* @_gasrem, align 8
  %"$respair1_588" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %respair1, align 8
  %"$respair2_589" = load %TName_Pair_Uint128_Uint256*, %TName_Pair_Uint128_Uint256** %respair2, align 8
  %"$adtval_590_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_590_salloc" = call i8* @_salloc(i8* %"$adtval_590_load", i64 17)
  %"$adtval_590" = bitcast i8* %"$adtval_590_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*
  %"$adtgep_591" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_590", i32 0, i32 0
  store i8 0, i8* %"$adtgep_591", align 1
  %"$adtgep_592" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_590", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$respair1_588", %TName_Pair_Uint32_Uint64** %"$adtgep_592", align 8
  %"$adtgep_593" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_590", i32 0, i32 2
  store %TName_Pair_Uint128_Uint256* %"$respair2_589", %TName_Pair_Uint128_Uint256** %"$adtgep_593", align 8
  %"$adtptr_594" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_590" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtptr_594", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %restuple, align 8, !dbg !45
  %"$gasrem_595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_596" = icmp ugt i64 1, %"$gasrem_595"
  br i1 %"$gascmp_596", label %"$out_of_gas_597", label %"$have_gas_598"

"$out_of_gas_597":                                ; preds = %"$have_gas_586"
  call void @_out_of_gas()
  br label %"$have_gas_598"

"$have_gas_598":                                  ; preds = %"$out_of_gas_597", %"$have_gas_586"
  %"$consume_599" = sub i64 %"$gasrem_595", 1
  store i64 %"$consume_599", i64* @_gasrem, align 8
  %"$restuple_600" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %restuple, align 8
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$restuple_600", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %"$expr_5", align 8, !dbg !46
  %"$$expr_5_601" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %"$expr_5", align 8
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$$expr_5_601"
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
  %"$exprval_602" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_603" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$exprval_602" to i8*
  %"$execptr_load_604" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_604", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_52", i8* %"$memvoidcast_603")
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
