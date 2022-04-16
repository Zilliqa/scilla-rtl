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
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_12" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_56" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_55"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_55" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_57"**, %"$TyDescrTy_ADTTyp_56"* }
%"$TyDescrTy_ADTTyp_Constr_57" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_643" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_644" = type { %ParamDescrString, i32, %"$ParamDescr_643"* }
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
@"$TyDescr_Int32_Prim_13" = global %"$TyDescrTy_PrimTyp_12" zeroinitializer
@"$TyDescr_Int32_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Int32_Prim_13" to i8*) }
@"$TyDescr_Uint32_Prim_15" = global %"$TyDescrTy_PrimTyp_12" { i32 1, i32 0 }
@"$TyDescr_Uint32_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Uint32_Prim_15" to i8*) }
@"$TyDescr_Int64_Prim_17" = global %"$TyDescrTy_PrimTyp_12" { i32 0, i32 1 }
@"$TyDescr_Int64_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Int64_Prim_17" to i8*) }
@"$TyDescr_Uint64_Prim_19" = global %"$TyDescrTy_PrimTyp_12" { i32 1, i32 1 }
@"$TyDescr_Uint64_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Uint64_Prim_19" to i8*) }
@"$TyDescr_Int128_Prim_21" = global %"$TyDescrTy_PrimTyp_12" { i32 0, i32 2 }
@"$TyDescr_Int128_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Int128_Prim_21" to i8*) }
@"$TyDescr_Uint128_Prim_23" = global %"$TyDescrTy_PrimTyp_12" { i32 1, i32 2 }
@"$TyDescr_Uint128_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Uint128_Prim_23" to i8*) }
@"$TyDescr_Int256_Prim_25" = global %"$TyDescrTy_PrimTyp_12" { i32 0, i32 3 }
@"$TyDescr_Int256_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Int256_Prim_25" to i8*) }
@"$TyDescr_Uint256_Prim_27" = global %"$TyDescrTy_PrimTyp_12" { i32 1, i32 3 }
@"$TyDescr_Uint256_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Uint256_Prim_27" to i8*) }
@"$TyDescr_String_Prim_29" = global %"$TyDescrTy_PrimTyp_12" { i32 2, i32 0 }
@"$TyDescr_String_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_String_Prim_29" to i8*) }
@"$TyDescr_Bnum_Prim_31" = global %"$TyDescrTy_PrimTyp_12" { i32 3, i32 0 }
@"$TyDescr_Bnum_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Bnum_Prim_31" to i8*) }
@"$TyDescr_Message_Prim_33" = global %"$TyDescrTy_PrimTyp_12" { i32 4, i32 0 }
@"$TyDescr_Message_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Message_Prim_33" to i8*) }
@"$TyDescr_Event_Prim_35" = global %"$TyDescrTy_PrimTyp_12" { i32 5, i32 0 }
@"$TyDescr_Event_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Event_Prim_35" to i8*) }
@"$TyDescr_Exception_Prim_37" = global %"$TyDescrTy_PrimTyp_12" { i32 6, i32 0 }
@"$TyDescr_Exception_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Exception_Prim_37" to i8*) }
@"$TyDescr_ReplicateContr_Prim_39" = global %"$TyDescrTy_PrimTyp_12" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_ReplicateContr_Prim_39" to i8*) }
@"$TyDescr_Bystr_Prim_41" = global %"$TyDescrTy_PrimTyp_12" { i32 7, i32 0 }
@"$TyDescr_Bystr_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Bystr_Prim_41" to i8*) }
@"$TyDescr_Bystr32_Prim_43" = global %"$TyDescrTy_PrimTyp_12" { i32 8, i32 32 }
@"$TyDescr_Bystr32_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Bystr32_Prim_43" to i8*) }
@"$TyDescr_Bystr16_Prim_45" = global %"$TyDescrTy_PrimTyp_12" { i32 8, i32 16 }
@"$TyDescr_Bystr16_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Bystr16_Prim_45" to i8*) }
@"$TyDescr_Bystr8_Prim_47" = global %"$TyDescrTy_PrimTyp_12" { i32 8, i32 8 }
@"$TyDescr_Bystr8_48" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Bystr8_Prim_47" to i8*) }
@"$TyDescr_Bystr4_Prim_49" = global %"$TyDescrTy_PrimTyp_12" { i32 8, i32 4 }
@"$TyDescr_Bystr4_50" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Bystr4_Prim_49" to i8*) }
@"$TyDescr_Bystr3_Prim_51" = global %"$TyDescrTy_PrimTyp_12" { i32 8, i32 3 }
@"$TyDescr_Bystr3_52" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Bystr3_Prim_51" to i8*) }
@"$TyDescr_Bystr1_Prim_53" = global %"$TyDescrTy_PrimTyp_12" { i32 8, i32 1 }
@"$TyDescr_Bystr1_54" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Bystr1_Prim_53" to i8*) }
@"$TyDescr_ADT_Pair_Uint128_Uint256_58" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_70" to i8*) }
@"$TyDescr_ADT_Pair_Uint32_Uint64_59" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_76" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_60" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_82" to i8*) }
@"$TyDescr_Pair_ADTTyp_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_56" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_84", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 3, %"$TyDescrTy_ADTTyp_Specl_55"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_55"*], [3 x %"$TyDescrTy_ADTTyp_Specl_55"*]* @"$TyDescr_Pair_ADTTyp_m_specls_83", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Uint128_Uint256_Constr_m_args_65" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_24", %_TyDescrTy_Typ* @"$TyDescr_Uint256_28"]
@"$TyDescr_ADT_Pair_66" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint128_Uint256_ADTTyp_Constr_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_66", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint128_Uint256_Constr_m_args_65", i32 0, i32 0) }
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_constrs_68" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Pair_Pair_Uint128_Uint256_ADTTyp_Constr_67"]
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_TArgs_69" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_24", %_TyDescrTy_Typ* @"$TyDescr_Uint256_28"]
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_TArgs_69", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_57"*], [1 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_constrs_68", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Pair_ADTTyp_64" }
@"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_71" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_16", %_TyDescrTy_Typ* @"$TyDescr_Uint64_20"]
@"$TyDescr_ADT_Pair_72" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_72", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_71", i32 0, i32 0) }
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_74" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_73"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_75" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_16", %_TyDescrTy_Typ* @"$TyDescr_Uint64_20"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_75", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_57"*], [1 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_74", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Pair_ADTTyp_64" }
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_Constr_m_args_77" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_59", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_58"]
@"$TyDescr_ADT_Pair_78" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Constr_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_78", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_Constr_m_args_77", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_m_constrs_80" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Constr_79"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_m_TArgs_81" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_59", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_58"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_m_TArgs_81", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_57"*], [1 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_m_constrs_80", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Pair_ADTTyp_64" }
@"$TyDescr_Pair_ADTTyp_m_specls_83" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_55"*] [%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_70", %"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_76", %"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_82"]
@"$TyDescr_ADT_Pair_84" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [24 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_36", %_TyDescrTy_Typ* @"$TyDescr_Int64_18", %_TyDescrTy_Typ* @"$TyDescr_Bystr3_52", %_TyDescrTy_Typ* @"$TyDescr_Uint256_28", %_TyDescrTy_Typ* @"$TyDescr_Uint32_16", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_60", %_TyDescrTy_Typ* @"$TyDescr_Bystr8_48", %_TyDescrTy_Typ* @"$TyDescr_Uint64_20", %_TyDescrTy_Typ* @"$TyDescr_Bnum_32", %_TyDescrTy_Typ* @"$TyDescr_Uint128_24", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_59", %_TyDescrTy_Typ* @"$TyDescr_Bystr4_50", %_TyDescrTy_Typ* @"$TyDescr_Exception_38", %_TyDescrTy_Typ* @"$TyDescr_String_30", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_58", %_TyDescrTy_Typ* @"$TyDescr_Bystr1_54", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_44", %_TyDescrTy_Typ* @"$TyDescr_Int256_26", %_TyDescrTy_Typ* @"$TyDescr_Int128_22", %_TyDescrTy_Typ* @"$TyDescr_Bystr_42", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_40", %_TyDescrTy_Typ* @"$TyDescr_Message_34", %_TyDescrTy_Typ* @"$TyDescr_Bystr16_46", %_TyDescrTy_Typ* @"$TyDescr_Int32_14"]
@_tydescr_table_length = constant i32 24
@_contract_parameters = constant [0 x %"$ParamDescr_643"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_644"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  %"$gasrem_85" = load i64, i64* @_gasrem, align 8
  %"$gascmp_86" = icmp ugt i64 5, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %entry
  %"$consume_89" = sub i64 %"$gasrem_85", 5
  store i64 %"$consume_89", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 8, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$have_gas_88"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$have_gas_88"
  %"$consume_94" = sub i64 %"$gasrem_90", 8
  store i64 %"$consume_94", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 196, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_93"
  %"$consume_99" = sub i64 %"$gasrem_95", 196
  store i64 %"$consume_99", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 20, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_98"
  %"$consume_104" = sub i64 %"$gasrem_100", 20
  store i64 %"$consume_104", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_106" = icmp ugt i64 12, %"$gasrem_105"
  br i1 %"$gascmp_106", label %"$out_of_gas_107", label %"$have_gas_108"

"$out_of_gas_107":                                ; preds = %"$have_gas_103"
  call void @_out_of_gas()
  br label %"$have_gas_108"

"$have_gas_108":                                  ; preds = %"$out_of_gas_107", %"$have_gas_103"
  %"$consume_109" = sub i64 %"$gasrem_105", 12
  store i64 %"$consume_109", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 2, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_108"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_108"
  %"$consume_114" = sub i64 %"$gasrem_110", 2
  store i64 %"$consume_114", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

declare void @_out_of_gas()

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_11" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, align 8
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 1, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %entry
  %"$consume_119" = sub i64 %"$gasrem_115", 1
  store i64 %"$consume_119", i64* @_gasrem, align 8
  %zero = alloca [1 x i8], align 1
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$have_gas_118"
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem, align 8
  store [1 x i8] zeroinitializer, [1 x i8]* %zero, align 1
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_123"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %one_1 = alloca [1 x i8], align 1
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  store [1 x i8] c"\01", [1 x i8]* %one_1, align 1
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %one_3 = alloca [3 x i8], align 1
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_138"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  store [3 x i8] c"\00\00\01", [3 x i8]* %one_3, align 1
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %one_4 = alloca [4 x i8], align 1
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_148"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  store [4 x i8] c"\00\00\00\01", [4 x i8]* %one_4, align 1
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_153"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %one_8 = alloca [8 x i8], align 1
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_158"
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  store [8 x i8] c"\00\00\00\00\00\00\00\01", [8 x i8]* %one_8, align 1
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_163"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %one_16 = alloca [16 x i8], align 1
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_168"
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem, align 8
  store [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [16 x i8]* %one_16, align 1
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %"$have_gas_173"
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %"$have_gas_173"
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %one_32 = alloca [32 x i8], align 1
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_178"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_178"
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  store [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [32 x i8]* %one_32, align 1
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_183"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_183"
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %res7 = alloca %Uint32, align 8
  %"$gasrem_190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_191" = icmp ugt i64 4, %"$gasrem_190"
  br i1 %"$gascmp_191", label %"$out_of_gas_192", label %"$have_gas_193"

"$out_of_gas_192":                                ; preds = %"$have_gas_188"
  call void @_out_of_gas()
  br label %"$have_gas_193"

"$have_gas_193":                                  ; preds = %"$out_of_gas_192", %"$have_gas_188"
  %"$consume_194" = sub i64 %"$gasrem_190", 4
  store i64 %"$consume_194", i64* @_gasrem, align 8
  %"$execptr_load_195" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_zero_196" = alloca [1 x i8], align 1
  %"$zero_197" = load [1 x i8], [1 x i8]* %zero, align 1
  store [1 x i8] %"$zero_197", [1 x i8]* %"$to_uint32_zero_196", align 1
  %"$$to_uint32_zero_196_198" = bitcast [1 x i8]* %"$to_uint32_zero_196" to i8*
  %"$to_uint32_call_199" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_195", i32 1, i8* %"$$to_uint32_zero_196_198")
  store %Uint32 %"$to_uint32_call_199", %Uint32* %res7, align 4
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 1, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %"$have_gas_193"
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %"$have_gas_193"
  %"$consume_204" = sub i64 %"$gasrem_200", 1
  store i64 %"$consume_204", i64* @_gasrem, align 8
  %res8 = alloca %Uint32, align 8
  %"$gasrem_205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_206" = icmp ugt i64 4, %"$gasrem_205"
  br i1 %"$gascmp_206", label %"$out_of_gas_207", label %"$have_gas_208"

"$out_of_gas_207":                                ; preds = %"$have_gas_203"
  call void @_out_of_gas()
  br label %"$have_gas_208"

"$have_gas_208":                                  ; preds = %"$out_of_gas_207", %"$have_gas_203"
  %"$consume_209" = sub i64 %"$gasrem_205", 4
  store i64 %"$consume_209", i64* @_gasrem, align 8
  %"$execptr_load_210" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_one_1_211" = alloca [1 x i8], align 1
  %"$one_1_212" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_212", [1 x i8]* %"$to_uint32_one_1_211", align 1
  %"$$to_uint32_one_1_211_213" = bitcast [1 x i8]* %"$to_uint32_one_1_211" to i8*
  %"$to_uint32_call_214" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_210", i32 1, i8* %"$$to_uint32_one_1_211_213")
  store %Uint32 %"$to_uint32_call_214", %Uint32* %res8, align 4
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 1, %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %"$have_gas_208"
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %"$have_gas_208"
  %"$consume_219" = sub i64 %"$gasrem_215", 1
  store i64 %"$consume_219", i64* @_gasrem, align 8
  %res9 = alloca %Uint32, align 8
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 4, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_218"
  %"$consume_224" = sub i64 %"$gasrem_220", 4
  store i64 %"$consume_224", i64* @_gasrem, align 8
  %"$execptr_load_225" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_one_3_226" = alloca [3 x i8], align 1
  %"$one_3_227" = load [3 x i8], [3 x i8]* %one_3, align 1
  store [3 x i8] %"$one_3_227", [3 x i8]* %"$to_uint32_one_3_226", align 1
  %"$$to_uint32_one_3_226_228" = bitcast [3 x i8]* %"$to_uint32_one_3_226" to i8*
  %"$to_uint32_call_229" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_225", i32 3, i8* %"$$to_uint32_one_3_226_228")
  store %Uint32 %"$to_uint32_call_229", %Uint32* %res9, align 4
  %"$gasrem_230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_231" = icmp ugt i64 1, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$have_gas_223"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$have_gas_223"
  %"$consume_234" = sub i64 %"$gasrem_230", 1
  store i64 %"$consume_234", i64* @_gasrem, align 8
  %res10 = alloca %Uint32, align 8
  %"$gasrem_235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_236" = icmp ugt i64 4, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$have_gas_233"
  %"$consume_239" = sub i64 %"$gasrem_235", 4
  store i64 %"$consume_239", i64* @_gasrem, align 8
  %"$execptr_load_240" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_one_4_241" = alloca [4 x i8], align 1
  %"$one_4_242" = load [4 x i8], [4 x i8]* %one_4, align 1
  store [4 x i8] %"$one_4_242", [4 x i8]* %"$to_uint32_one_4_241", align 1
  %"$$to_uint32_one_4_241_243" = bitcast [4 x i8]* %"$to_uint32_one_4_241" to i8*
  %"$to_uint32_call_244" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_240", i32 4, i8* %"$$to_uint32_one_4_241_243")
  store %Uint32 %"$to_uint32_call_244", %Uint32* %res10, align 4
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 1, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$have_gas_238"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$have_gas_238"
  %"$consume_249" = sub i64 %"$gasrem_245", 1
  store i64 %"$consume_249", i64* @_gasrem, align 8
  %sum1 = alloca %Uint32, align 8
  %"$gasrem_250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_251" = icmp ugt i64 4, %"$gasrem_250"
  br i1 %"$gascmp_251", label %"$out_of_gas_252", label %"$have_gas_253"

"$out_of_gas_252":                                ; preds = %"$have_gas_248"
  call void @_out_of_gas()
  br label %"$have_gas_253"

"$have_gas_253":                                  ; preds = %"$out_of_gas_252", %"$have_gas_248"
  %"$consume_254" = sub i64 %"$gasrem_250", 4
  store i64 %"$consume_254", i64* @_gasrem, align 8
  %"$res7_255" = load %Uint32, %Uint32* %res7, align 4
  %"$res8_256" = load %Uint32, %Uint32* %res8, align 4
  %"$add_call_257" = call %Uint32 @_add_Uint32(%Uint32 %"$res7_255", %Uint32 %"$res8_256")
  store %Uint32 %"$add_call_257", %Uint32* %sum1, align 4
  %"$gasrem_258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_259" = icmp ugt i64 1, %"$gasrem_258"
  br i1 %"$gascmp_259", label %"$out_of_gas_260", label %"$have_gas_261"

"$out_of_gas_260":                                ; preds = %"$have_gas_253"
  call void @_out_of_gas()
  br label %"$have_gas_261"

"$have_gas_261":                                  ; preds = %"$out_of_gas_260", %"$have_gas_253"
  %"$consume_262" = sub i64 %"$gasrem_258", 1
  store i64 %"$consume_262", i64* @_gasrem, align 8
  %sum2 = alloca %Uint32, align 8
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 4, %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_261"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_261"
  %"$consume_267" = sub i64 %"$gasrem_263", 4
  store i64 %"$consume_267", i64* @_gasrem, align 8
  %"$res9_268" = load %Uint32, %Uint32* %res9, align 4
  %"$res10_269" = load %Uint32, %Uint32* %res10, align 4
  %"$add_call_270" = call %Uint32 @_add_Uint32(%Uint32 %"$res9_268", %Uint32 %"$res10_269")
  store %Uint32 %"$add_call_270", %Uint32* %sum2, align 4
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 1, %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %"$have_gas_266"
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %"$have_gas_266"
  %"$consume_275" = sub i64 %"$gasrem_271", 1
  store i64 %"$consume_275", i64* @_gasrem, align 8
  %sum_32 = alloca %Uint32, align 8
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 4, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %"$have_gas_274"
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %"$have_gas_274"
  %"$consume_280" = sub i64 %"$gasrem_276", 4
  store i64 %"$consume_280", i64* @_gasrem, align 8
  %"$sum1_281" = load %Uint32, %Uint32* %sum1, align 4
  %"$sum2_282" = load %Uint32, %Uint32* %sum2, align 4
  %"$add_call_283" = call %Uint32 @_add_Uint32(%Uint32 %"$sum1_281", %Uint32 %"$sum2_282")
  store %Uint32 %"$add_call_283", %Uint32* %sum_32, align 4
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_279"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_279"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %res12 = alloca %Uint64, align 8
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 8, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %"$have_gas_287"
  %"$consume_293" = sub i64 %"$gasrem_289", 8
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %"$execptr_load_294" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_one_1_295" = alloca [1 x i8], align 1
  %"$one_1_296" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_296", [1 x i8]* %"$to_uint64_one_1_295", align 1
  %"$$to_uint64_one_1_295_297" = bitcast [1 x i8]* %"$to_uint64_one_1_295" to i8*
  %"$to_uint64_call_298" = call %Uint64 @_bystrx_to_uint64(i8* %"$execptr_load_294", i32 1, i8* %"$$to_uint64_one_1_295_297")
  store %Uint64 %"$to_uint64_call_298", %Uint64* %res12, align 8
  %"$gasrem_299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_300" = icmp ugt i64 1, %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %"$have_gas_292"
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %"$have_gas_292"
  %"$consume_303" = sub i64 %"$gasrem_299", 1
  store i64 %"$consume_303", i64* @_gasrem, align 8
  %res13 = alloca %Uint64, align 8
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 8, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_302"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_302"
  %"$consume_308" = sub i64 %"$gasrem_304", 8
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %"$execptr_load_309" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_one_4_310" = alloca [4 x i8], align 1
  %"$one_4_311" = load [4 x i8], [4 x i8]* %one_4, align 1
  store [4 x i8] %"$one_4_311", [4 x i8]* %"$to_uint64_one_4_310", align 1
  %"$$to_uint64_one_4_310_312" = bitcast [4 x i8]* %"$to_uint64_one_4_310" to i8*
  %"$to_uint64_call_313" = call %Uint64 @_bystrx_to_uint64(i8* %"$execptr_load_309", i32 4, i8* %"$$to_uint64_one_4_310_312")
  store %Uint64 %"$to_uint64_call_313", %Uint64* %res13, align 8
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 1, %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %"$have_gas_307"
  %"$consume_318" = sub i64 %"$gasrem_314", 1
  store i64 %"$consume_318", i64* @_gasrem, align 8
  %res14 = alloca %Uint64, align 8
  %"$gasrem_319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_320" = icmp ugt i64 8, %"$gasrem_319"
  br i1 %"$gascmp_320", label %"$out_of_gas_321", label %"$have_gas_322"

"$out_of_gas_321":                                ; preds = %"$have_gas_317"
  call void @_out_of_gas()
  br label %"$have_gas_322"

"$have_gas_322":                                  ; preds = %"$out_of_gas_321", %"$have_gas_317"
  %"$consume_323" = sub i64 %"$gasrem_319", 8
  store i64 %"$consume_323", i64* @_gasrem, align 8
  %"$execptr_load_324" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_one_8_325" = alloca [8 x i8], align 1
  %"$one_8_326" = load [8 x i8], [8 x i8]* %one_8, align 1
  store [8 x i8] %"$one_8_326", [8 x i8]* %"$to_uint64_one_8_325", align 1
  %"$$to_uint64_one_8_325_327" = bitcast [8 x i8]* %"$to_uint64_one_8_325" to i8*
  %"$to_uint64_call_328" = call %Uint64 @_bystrx_to_uint64(i8* %"$execptr_load_324", i32 8, i8* %"$$to_uint64_one_8_325_327")
  store %Uint64 %"$to_uint64_call_328", %Uint64* %res14, align 8
  %"$gasrem_329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_330" = icmp ugt i64 1, %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %"$have_gas_322"
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %"$have_gas_322"
  %"$consume_333" = sub i64 %"$gasrem_329", 1
  store i64 %"$consume_333", i64* @_gasrem, align 8
  %"$sum1_6" = alloca %Uint64, align 8
  %"$gasrem_334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_335" = icmp ugt i64 4, %"$gasrem_334"
  br i1 %"$gascmp_335", label %"$out_of_gas_336", label %"$have_gas_337"

"$out_of_gas_336":                                ; preds = %"$have_gas_332"
  call void @_out_of_gas()
  br label %"$have_gas_337"

"$have_gas_337":                                  ; preds = %"$out_of_gas_336", %"$have_gas_332"
  %"$consume_338" = sub i64 %"$gasrem_334", 4
  store i64 %"$consume_338", i64* @_gasrem, align 8
  %"$res12_339" = load %Uint64, %Uint64* %res12, align 8
  %"$res13_340" = load %Uint64, %Uint64* %res13, align 8
  %"$add_call_341" = call %Uint64 @_add_Uint64(%Uint64 %"$res12_339", %Uint64 %"$res13_340")
  store %Uint64 %"$add_call_341", %Uint64* %"$sum1_6", align 8
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_337"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_337"
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %sum_64 = alloca %Uint64, align 8
  %"$gasrem_347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_348" = icmp ugt i64 4, %"$gasrem_347"
  br i1 %"$gascmp_348", label %"$out_of_gas_349", label %"$have_gas_350"

"$out_of_gas_349":                                ; preds = %"$have_gas_345"
  call void @_out_of_gas()
  br label %"$have_gas_350"

"$have_gas_350":                                  ; preds = %"$out_of_gas_349", %"$have_gas_345"
  %"$consume_351" = sub i64 %"$gasrem_347", 4
  store i64 %"$consume_351", i64* @_gasrem, align 8
  %"$$sum1_6_352" = load %Uint64, %Uint64* %"$sum1_6", align 8
  %"$res14_353" = load %Uint64, %Uint64* %res14, align 8
  %"$add_call_354" = call %Uint64 @_add_Uint64(%Uint64 %"$$sum1_6_352", %Uint64 %"$res14_353")
  store %Uint64 %"$add_call_354", %Uint64* %sum_64, align 8
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %"$have_gas_350"
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %"$have_gas_350"
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %res15 = alloca %Uint128, align 8
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 16, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_358"
  %"$consume_364" = sub i64 %"$gasrem_360", 16
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %"$execptr_load_365" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_1_366" = alloca [1 x i8], align 1
  %"$one_1_367" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_367", [1 x i8]* %"$to_uint128_one_1_366", align 1
  %"$$to_uint128_one_1_366_368" = bitcast [1 x i8]* %"$to_uint128_one_1_366" to i8*
  %"$to_uint128_call_369" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_365", i32 1, i8* %"$$to_uint128_one_1_366_368")
  store %Uint128 %"$to_uint128_call_369", %Uint128* %res15, align 8
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 1, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$have_gas_363"
  %"$consume_374" = sub i64 %"$gasrem_370", 1
  store i64 %"$consume_374", i64* @_gasrem, align 8
  %res16 = alloca %Uint128, align 8
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 16, %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$have_gas_373"
  %"$consume_379" = sub i64 %"$gasrem_375", 16
  store i64 %"$consume_379", i64* @_gasrem, align 8
  %"$execptr_load_380" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_4_381" = alloca [4 x i8], align 1
  %"$one_4_382" = load [4 x i8], [4 x i8]* %one_4, align 1
  store [4 x i8] %"$one_4_382", [4 x i8]* %"$to_uint128_one_4_381", align 1
  %"$$to_uint128_one_4_381_383" = bitcast [4 x i8]* %"$to_uint128_one_4_381" to i8*
  %"$to_uint128_call_384" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_380", i32 4, i8* %"$$to_uint128_one_4_381_383")
  store %Uint128 %"$to_uint128_call_384", %Uint128* %res16, align 8
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 1, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$have_gas_378"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$have_gas_378"
  %"$consume_389" = sub i64 %"$gasrem_385", 1
  store i64 %"$consume_389", i64* @_gasrem, align 8
  %res17 = alloca %Uint128, align 8
  %"$gasrem_390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_391" = icmp ugt i64 16, %"$gasrem_390"
  br i1 %"$gascmp_391", label %"$out_of_gas_392", label %"$have_gas_393"

"$out_of_gas_392":                                ; preds = %"$have_gas_388"
  call void @_out_of_gas()
  br label %"$have_gas_393"

"$have_gas_393":                                  ; preds = %"$out_of_gas_392", %"$have_gas_388"
  %"$consume_394" = sub i64 %"$gasrem_390", 16
  store i64 %"$consume_394", i64* @_gasrem, align 8
  %"$execptr_load_395" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_8_396" = alloca [8 x i8], align 1
  %"$one_8_397" = load [8 x i8], [8 x i8]* %one_8, align 1
  store [8 x i8] %"$one_8_397", [8 x i8]* %"$to_uint128_one_8_396", align 1
  %"$$to_uint128_one_8_396_398" = bitcast [8 x i8]* %"$to_uint128_one_8_396" to i8*
  %"$to_uint128_call_399" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_395", i32 8, i8* %"$$to_uint128_one_8_396_398")
  store %Uint128 %"$to_uint128_call_399", %Uint128* %res17, align 8
  %"$gasrem_400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_401" = icmp ugt i64 1, %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %"$have_gas_393"
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %"$have_gas_393"
  %"$consume_404" = sub i64 %"$gasrem_400", 1
  store i64 %"$consume_404", i64* @_gasrem, align 8
  %res18 = alloca %Uint128, align 8
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 16, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_403"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_403"
  %"$consume_409" = sub i64 %"$gasrem_405", 16
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %"$execptr_load_410" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_16_411" = alloca [16 x i8], align 1
  %"$one_16_412" = load [16 x i8], [16 x i8]* %one_16, align 1
  store [16 x i8] %"$one_16_412", [16 x i8]* %"$to_uint128_one_16_411", align 1
  %"$$to_uint128_one_16_411_413" = bitcast [16 x i8]* %"$to_uint128_one_16_411" to i8*
  %"$to_uint128_call_414" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_410", i32 16, i8* %"$$to_uint128_one_16_411_413")
  store %Uint128 %"$to_uint128_call_414", %Uint128* %res18, align 8
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 1, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$have_gas_408"
  %"$consume_419" = sub i64 %"$gasrem_415", 1
  store i64 %"$consume_419", i64* @_gasrem, align 8
  %"$sum1_7" = alloca %Uint128, align 8
  %"$gasrem_421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_422" = icmp ugt i64 8, %"$gasrem_421"
  br i1 %"$gascmp_422", label %"$out_of_gas_423", label %"$have_gas_424"

"$out_of_gas_423":                                ; preds = %"$have_gas_418"
  call void @_out_of_gas()
  br label %"$have_gas_424"

"$have_gas_424":                                  ; preds = %"$out_of_gas_423", %"$have_gas_418"
  %"$consume_425" = sub i64 %"$gasrem_421", 8
  store i64 %"$consume_425", i64* @_gasrem, align 8
  %"$res15_426" = load %Uint128, %Uint128* %res15, align 8
  %"$res16_427" = load %Uint128, %Uint128* %res16, align 8
  %"$add_call_428" = call %Uint128 @_add_Uint128(%Uint128 %"$res15_426", %Uint128 %"$res16_427")
  store %Uint128 %"$add_call_428", %Uint128* %"$sum1_7", align 8
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 1, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_424"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_424"
  %"$consume_433" = sub i64 %"$gasrem_429", 1
  store i64 %"$consume_433", i64* @_gasrem, align 8
  %"$sum2_8" = alloca %Uint128, align 8
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 8, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_432"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_432"
  %"$consume_439" = sub i64 %"$gasrem_435", 8
  store i64 %"$consume_439", i64* @_gasrem, align 8
  %"$res17_440" = load %Uint128, %Uint128* %res17, align 8
  %"$res18_441" = load %Uint128, %Uint128* %res18, align 8
  %"$add_call_442" = call %Uint128 @_add_Uint128(%Uint128 %"$res17_440", %Uint128 %"$res18_441")
  store %Uint128 %"$add_call_442", %Uint128* %"$sum2_8", align 8
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$have_gas_438"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$have_gas_438"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem, align 8
  %sum_128 = alloca %Uint128, align 8
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 8, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %"$have_gas_446"
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %"$have_gas_446"
  %"$consume_453" = sub i64 %"$gasrem_449", 8
  store i64 %"$consume_453", i64* @_gasrem, align 8
  %"$$sum1_7_454" = load %Uint128, %Uint128* %"$sum1_7", align 8
  %"$$sum2_8_455" = load %Uint128, %Uint128* %"$sum2_8", align 8
  %"$add_call_456" = call %Uint128 @_add_Uint128(%Uint128 %"$$sum1_7_454", %Uint128 %"$$sum2_8_455")
  store %Uint128 %"$add_call_456", %Uint128* %sum_128, align 8
  %"$gasrem_457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_458" = icmp ugt i64 1, %"$gasrem_457"
  br i1 %"$gascmp_458", label %"$out_of_gas_459", label %"$have_gas_460"

"$out_of_gas_459":                                ; preds = %"$have_gas_452"
  call void @_out_of_gas()
  br label %"$have_gas_460"

"$have_gas_460":                                  ; preds = %"$out_of_gas_459", %"$have_gas_452"
  %"$consume_461" = sub i64 %"$gasrem_457", 1
  store i64 %"$consume_461", i64* @_gasrem, align 8
  %res19 = alloca %Uint256, align 8
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 32, %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %"$have_gas_460"
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %"$have_gas_460"
  %"$consume_466" = sub i64 %"$gasrem_462", 32
  store i64 %"$consume_466", i64* @_gasrem, align 8
  %"$execptr_load_467" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_1_468" = alloca [1 x i8], align 1
  %"$one_1_469" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_469", [1 x i8]* %"$to_uint256_one_1_468", align 1
  %"$$to_uint256_one_1_468_470" = bitcast [1 x i8]* %"$to_uint256_one_1_468" to i8*
  %"$to_uint256_call_471" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_467", i32 1, i8* %"$$to_uint256_one_1_468_470")
  %"$to_uint256_473" = load %Uint256, %Uint256* %"$to_uint256_call_471", align 8
  store %Uint256 %"$to_uint256_473", %Uint256* %res19, align 8
  %"$gasrem_474" = load i64, i64* @_gasrem, align 8
  %"$gascmp_475" = icmp ugt i64 1, %"$gasrem_474"
  br i1 %"$gascmp_475", label %"$out_of_gas_476", label %"$have_gas_477"

"$out_of_gas_476":                                ; preds = %"$have_gas_465"
  call void @_out_of_gas()
  br label %"$have_gas_477"

"$have_gas_477":                                  ; preds = %"$out_of_gas_476", %"$have_gas_465"
  %"$consume_478" = sub i64 %"$gasrem_474", 1
  store i64 %"$consume_478", i64* @_gasrem, align 8
  %res20 = alloca %Uint256, align 8
  %"$gasrem_479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_480" = icmp ugt i64 32, %"$gasrem_479"
  br i1 %"$gascmp_480", label %"$out_of_gas_481", label %"$have_gas_482"

"$out_of_gas_481":                                ; preds = %"$have_gas_477"
  call void @_out_of_gas()
  br label %"$have_gas_482"

"$have_gas_482":                                  ; preds = %"$out_of_gas_481", %"$have_gas_477"
  %"$consume_483" = sub i64 %"$gasrem_479", 32
  store i64 %"$consume_483", i64* @_gasrem, align 8
  %"$execptr_load_484" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_8_485" = alloca [8 x i8], align 1
  %"$one_8_486" = load [8 x i8], [8 x i8]* %one_8, align 1
  store [8 x i8] %"$one_8_486", [8 x i8]* %"$to_uint256_one_8_485", align 1
  %"$$to_uint256_one_8_485_487" = bitcast [8 x i8]* %"$to_uint256_one_8_485" to i8*
  %"$to_uint256_call_488" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_484", i32 8, i8* %"$$to_uint256_one_8_485_487")
  %"$to_uint256_490" = load %Uint256, %Uint256* %"$to_uint256_call_488", align 8
  store %Uint256 %"$to_uint256_490", %Uint256* %res20, align 8
  %"$gasrem_491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_492" = icmp ugt i64 1, %"$gasrem_491"
  br i1 %"$gascmp_492", label %"$out_of_gas_493", label %"$have_gas_494"

"$out_of_gas_493":                                ; preds = %"$have_gas_482"
  call void @_out_of_gas()
  br label %"$have_gas_494"

"$have_gas_494":                                  ; preds = %"$out_of_gas_493", %"$have_gas_482"
  %"$consume_495" = sub i64 %"$gasrem_491", 1
  store i64 %"$consume_495", i64* @_gasrem, align 8
  %res21 = alloca %Uint256, align 8
  %"$gasrem_496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_497" = icmp ugt i64 32, %"$gasrem_496"
  br i1 %"$gascmp_497", label %"$out_of_gas_498", label %"$have_gas_499"

"$out_of_gas_498":                                ; preds = %"$have_gas_494"
  call void @_out_of_gas()
  br label %"$have_gas_499"

"$have_gas_499":                                  ; preds = %"$out_of_gas_498", %"$have_gas_494"
  %"$consume_500" = sub i64 %"$gasrem_496", 32
  store i64 %"$consume_500", i64* @_gasrem, align 8
  %"$execptr_load_501" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_16_502" = alloca [16 x i8], align 1
  %"$one_16_503" = load [16 x i8], [16 x i8]* %one_16, align 1
  store [16 x i8] %"$one_16_503", [16 x i8]* %"$to_uint256_one_16_502", align 1
  %"$$to_uint256_one_16_502_504" = bitcast [16 x i8]* %"$to_uint256_one_16_502" to i8*
  %"$to_uint256_call_505" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_501", i32 16, i8* %"$$to_uint256_one_16_502_504")
  %"$to_uint256_507" = load %Uint256, %Uint256* %"$to_uint256_call_505", align 8
  store %Uint256 %"$to_uint256_507", %Uint256* %res21, align 8
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 1, %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %"$have_gas_499"
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %"$have_gas_499"
  %"$consume_512" = sub i64 %"$gasrem_508", 1
  store i64 %"$consume_512", i64* @_gasrem, align 8
  %res22 = alloca %Uint256, align 8
  %"$gasrem_513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_514" = icmp ugt i64 32, %"$gasrem_513"
  br i1 %"$gascmp_514", label %"$out_of_gas_515", label %"$have_gas_516"

"$out_of_gas_515":                                ; preds = %"$have_gas_511"
  call void @_out_of_gas()
  br label %"$have_gas_516"

"$have_gas_516":                                  ; preds = %"$out_of_gas_515", %"$have_gas_511"
  %"$consume_517" = sub i64 %"$gasrem_513", 32
  store i64 %"$consume_517", i64* @_gasrem, align 8
  %"$execptr_load_518" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_32_519" = alloca [32 x i8], align 1
  %"$one_32_520" = load [32 x i8], [32 x i8]* %one_32, align 1
  store [32 x i8] %"$one_32_520", [32 x i8]* %"$to_uint256_one_32_519", align 1
  %"$$to_uint256_one_32_519_521" = bitcast [32 x i8]* %"$to_uint256_one_32_519" to i8*
  %"$to_uint256_call_522" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_518", i32 32, i8* %"$$to_uint256_one_32_519_521")
  %"$to_uint256_524" = load %Uint256, %Uint256* %"$to_uint256_call_522", align 8
  store %Uint256 %"$to_uint256_524", %Uint256* %res22, align 8
  %"$gasrem_525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_526" = icmp ugt i64 1, %"$gasrem_525"
  br i1 %"$gascmp_526", label %"$out_of_gas_527", label %"$have_gas_528"

"$out_of_gas_527":                                ; preds = %"$have_gas_516"
  call void @_out_of_gas()
  br label %"$have_gas_528"

"$have_gas_528":                                  ; preds = %"$out_of_gas_527", %"$have_gas_516"
  %"$consume_529" = sub i64 %"$gasrem_525", 1
  store i64 %"$consume_529", i64* @_gasrem, align 8
  %"$sum1_9" = alloca %Uint256, align 8
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
  %"$add_res19_537" = alloca %Uint256, align 8
  %"$res19_538" = load %Uint256, %Uint256* %res19, align 8
  store %Uint256 %"$res19_538", %Uint256* %"$add_res19_537", align 8
  %"$add_res20_539" = alloca %Uint256, align 8
  %"$res20_540" = load %Uint256, %Uint256* %res20, align 8
  store %Uint256 %"$res20_540", %Uint256* %"$add_res20_539", align 8
  %"$add_call_541" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_536", %Uint256* %"$add_res19_537", %Uint256* %"$add_res20_539")
  %"$add_543" = load %Uint256, %Uint256* %"$add_call_541", align 8
  store %Uint256 %"$add_543", %Uint256* %"$sum1_9", align 8
  %"$gasrem_544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_545" = icmp ugt i64 1, %"$gasrem_544"
  br i1 %"$gascmp_545", label %"$out_of_gas_546", label %"$have_gas_547"

"$out_of_gas_546":                                ; preds = %"$have_gas_534"
  call void @_out_of_gas()
  br label %"$have_gas_547"

"$have_gas_547":                                  ; preds = %"$out_of_gas_546", %"$have_gas_534"
  %"$consume_548" = sub i64 %"$gasrem_544", 1
  store i64 %"$consume_548", i64* @_gasrem, align 8
  %"$sum2_10" = alloca %Uint256, align 8
  %"$gasrem_550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_551" = icmp ugt i64 16, %"$gasrem_550"
  br i1 %"$gascmp_551", label %"$out_of_gas_552", label %"$have_gas_553"

"$out_of_gas_552":                                ; preds = %"$have_gas_547"
  call void @_out_of_gas()
  br label %"$have_gas_553"

"$have_gas_553":                                  ; preds = %"$out_of_gas_552", %"$have_gas_547"
  %"$consume_554" = sub i64 %"$gasrem_550", 16
  store i64 %"$consume_554", i64* @_gasrem, align 8
  %"$execptr_load_555" = load i8*, i8** @_execptr, align 8
  %"$add_res21_556" = alloca %Uint256, align 8
  %"$res21_557" = load %Uint256, %Uint256* %res21, align 8
  store %Uint256 %"$res21_557", %Uint256* %"$add_res21_556", align 8
  %"$add_res22_558" = alloca %Uint256, align 8
  %"$res22_559" = load %Uint256, %Uint256* %res22, align 8
  store %Uint256 %"$res22_559", %Uint256* %"$add_res22_558", align 8
  %"$add_call_560" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_555", %Uint256* %"$add_res21_556", %Uint256* %"$add_res22_558")
  %"$add_562" = load %Uint256, %Uint256* %"$add_call_560", align 8
  store %Uint256 %"$add_562", %Uint256* %"$sum2_10", align 8
  %"$gasrem_563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_564" = icmp ugt i64 1, %"$gasrem_563"
  br i1 %"$gascmp_564", label %"$out_of_gas_565", label %"$have_gas_566"

"$out_of_gas_565":                                ; preds = %"$have_gas_553"
  call void @_out_of_gas()
  br label %"$have_gas_566"

"$have_gas_566":                                  ; preds = %"$out_of_gas_565", %"$have_gas_553"
  %"$consume_567" = sub i64 %"$gasrem_563", 1
  store i64 %"$consume_567", i64* @_gasrem, align 8
  %sum_256 = alloca %Uint256, align 8
  %"$gasrem_569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_570" = icmp ugt i64 16, %"$gasrem_569"
  br i1 %"$gascmp_570", label %"$out_of_gas_571", label %"$have_gas_572"

"$out_of_gas_571":                                ; preds = %"$have_gas_566"
  call void @_out_of_gas()
  br label %"$have_gas_572"

"$have_gas_572":                                  ; preds = %"$out_of_gas_571", %"$have_gas_566"
  %"$consume_573" = sub i64 %"$gasrem_569", 16
  store i64 %"$consume_573", i64* @_gasrem, align 8
  %"$execptr_load_574" = load i8*, i8** @_execptr, align 8
  %"$add_$sum1_9_575" = alloca %Uint256, align 8
  %"$$sum1_9_576" = load %Uint256, %Uint256* %"$sum1_9", align 8
  store %Uint256 %"$$sum1_9_576", %Uint256* %"$add_$sum1_9_575", align 8
  %"$add_$sum2_10_577" = alloca %Uint256, align 8
  %"$$sum2_10_578" = load %Uint256, %Uint256* %"$sum2_10", align 8
  store %Uint256 %"$$sum2_10_578", %Uint256* %"$add_$sum2_10_577", align 8
  %"$add_call_579" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_574", %Uint256* %"$add_$sum1_9_575", %Uint256* %"$add_$sum2_10_577")
  %"$add_581" = load %Uint256, %Uint256* %"$add_call_579", align 8
  store %Uint256 %"$add_581", %Uint256* %sum_256, align 8
  %"$gasrem_582" = load i64, i64* @_gasrem, align 8
  %"$gascmp_583" = icmp ugt i64 1, %"$gasrem_582"
  br i1 %"$gascmp_583", label %"$out_of_gas_584", label %"$have_gas_585"

"$out_of_gas_584":                                ; preds = %"$have_gas_572"
  call void @_out_of_gas()
  br label %"$have_gas_585"

"$have_gas_585":                                  ; preds = %"$out_of_gas_584", %"$have_gas_572"
  %"$consume_586" = sub i64 %"$gasrem_582", 1
  store i64 %"$consume_586", i64* @_gasrem, align 8
  %respair1 = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_588" = icmp ugt i64 1, %"$gasrem_587"
  br i1 %"$gascmp_588", label %"$out_of_gas_589", label %"$have_gas_590"

"$out_of_gas_589":                                ; preds = %"$have_gas_585"
  call void @_out_of_gas()
  br label %"$have_gas_590"

"$have_gas_590":                                  ; preds = %"$out_of_gas_589", %"$have_gas_585"
  %"$consume_591" = sub i64 %"$gasrem_587", 1
  store i64 %"$consume_591", i64* @_gasrem, align 8
  %"$sum_32_592" = load %Uint32, %Uint32* %sum_32, align 4
  %"$sum_64_593" = load %Uint64, %Uint64* %sum_64, align 8
  %"$adtval_594_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_594_salloc" = call i8* @_salloc(i8* %"$adtval_594_load", i64 13)
  %"$adtval_594" = bitcast i8* %"$adtval_594_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_595" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_594", i32 0, i32 0
  store i8 0, i8* %"$adtgep_595", align 1
  %"$adtgep_596" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_594", i32 0, i32 1
  store %Uint32 %"$sum_32_592", %Uint32* %"$adtgep_596", align 4
  %"$adtgep_597" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_594", i32 0, i32 2
  store %Uint64 %"$sum_64_593", %Uint64* %"$adtgep_597", align 8
  %"$adtptr_598" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_594" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_598", %TName_Pair_Uint32_Uint64** %respair1, align 8
  %"$gasrem_599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_600" = icmp ugt i64 1, %"$gasrem_599"
  br i1 %"$gascmp_600", label %"$out_of_gas_601", label %"$have_gas_602"

"$out_of_gas_601":                                ; preds = %"$have_gas_590"
  call void @_out_of_gas()
  br label %"$have_gas_602"

"$have_gas_602":                                  ; preds = %"$out_of_gas_601", %"$have_gas_590"
  %"$consume_603" = sub i64 %"$gasrem_599", 1
  store i64 %"$consume_603", i64* @_gasrem, align 8
  %respair2 = alloca %TName_Pair_Uint128_Uint256*, align 8
  %"$gasrem_604" = load i64, i64* @_gasrem, align 8
  %"$gascmp_605" = icmp ugt i64 1, %"$gasrem_604"
  br i1 %"$gascmp_605", label %"$out_of_gas_606", label %"$have_gas_607"

"$out_of_gas_606":                                ; preds = %"$have_gas_602"
  call void @_out_of_gas()
  br label %"$have_gas_607"

"$have_gas_607":                                  ; preds = %"$out_of_gas_606", %"$have_gas_602"
  %"$consume_608" = sub i64 %"$gasrem_604", 1
  store i64 %"$consume_608", i64* @_gasrem, align 8
  %"$sum_128_609" = load %Uint128, %Uint128* %sum_128, align 8
  %"$sum_256_610" = load %Uint256, %Uint256* %sum_256, align 8
  %"$adtval_611_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_611_salloc" = call i8* @_salloc(i8* %"$adtval_611_load", i64 49)
  %"$adtval_611" = bitcast i8* %"$adtval_611_salloc" to %CName_Pair_Uint128_Uint256*
  %"$adtgep_612" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_611", i32 0, i32 0
  store i8 0, i8* %"$adtgep_612", align 1
  %"$adtgep_613" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_611", i32 0, i32 1
  store %Uint128 %"$sum_128_609", %Uint128* %"$adtgep_613", align 8
  %"$adtgep_614" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_611", i32 0, i32 2
  store %Uint256 %"$sum_256_610", %Uint256* %"$adtgep_614", align 8
  %"$adtptr_615" = bitcast %CName_Pair_Uint128_Uint256* %"$adtval_611" to %TName_Pair_Uint128_Uint256*
  store %TName_Pair_Uint128_Uint256* %"$adtptr_615", %TName_Pair_Uint128_Uint256** %respair2, align 8
  %"$gasrem_616" = load i64, i64* @_gasrem, align 8
  %"$gascmp_617" = icmp ugt i64 1, %"$gasrem_616"
  br i1 %"$gascmp_617", label %"$out_of_gas_618", label %"$have_gas_619"

"$out_of_gas_618":                                ; preds = %"$have_gas_607"
  call void @_out_of_gas()
  br label %"$have_gas_619"

"$have_gas_619":                                  ; preds = %"$out_of_gas_618", %"$have_gas_607"
  %"$consume_620" = sub i64 %"$gasrem_616", 1
  store i64 %"$consume_620", i64* @_gasrem, align 8
  %restuple = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, align 8
  %"$gasrem_621" = load i64, i64* @_gasrem, align 8
  %"$gascmp_622" = icmp ugt i64 1, %"$gasrem_621"
  br i1 %"$gascmp_622", label %"$out_of_gas_623", label %"$have_gas_624"

"$out_of_gas_623":                                ; preds = %"$have_gas_619"
  call void @_out_of_gas()
  br label %"$have_gas_624"

"$have_gas_624":                                  ; preds = %"$out_of_gas_623", %"$have_gas_619"
  %"$consume_625" = sub i64 %"$gasrem_621", 1
  store i64 %"$consume_625", i64* @_gasrem, align 8
  %"$respair1_626" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %respair1, align 8
  %"$respair2_627" = load %TName_Pair_Uint128_Uint256*, %TName_Pair_Uint128_Uint256** %respair2, align 8
  %"$adtval_628_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_628_salloc" = call i8* @_salloc(i8* %"$adtval_628_load", i64 17)
  %"$adtval_628" = bitcast i8* %"$adtval_628_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*
  %"$adtgep_629" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_628", i32 0, i32 0
  store i8 0, i8* %"$adtgep_629", align 1
  %"$adtgep_630" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_628", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$respair1_626", %TName_Pair_Uint32_Uint64** %"$adtgep_630", align 8
  %"$adtgep_631" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_628", i32 0, i32 2
  store %TName_Pair_Uint128_Uint256* %"$respair2_627", %TName_Pair_Uint128_Uint256** %"$adtgep_631", align 8
  %"$adtptr_632" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_628" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtptr_632", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %restuple, align 8
  %"$gasrem_633" = load i64, i64* @_gasrem, align 8
  %"$gascmp_634" = icmp ugt i64 1, %"$gasrem_633"
  br i1 %"$gascmp_634", label %"$out_of_gas_635", label %"$have_gas_636"

"$out_of_gas_635":                                ; preds = %"$have_gas_624"
  call void @_out_of_gas()
  br label %"$have_gas_636"

"$have_gas_636":                                  ; preds = %"$out_of_gas_635", %"$have_gas_624"
  %"$consume_637" = sub i64 %"$gasrem_633", 1
  store i64 %"$consume_637", i64* @_gasrem, align 8
  %"$restuple_638" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %restuple, align 8
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$restuple_638", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %"$expr_11", align 8
  %"$$expr_11_639" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %"$expr_11", align 8
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$$expr_11_639"
}

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
  %"$exprval_640" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_641" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$exprval_640" to i8*
  %"$execptr_load_642" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_642", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_60", i8* %"$memvoidcast_641")
  ret void
}
