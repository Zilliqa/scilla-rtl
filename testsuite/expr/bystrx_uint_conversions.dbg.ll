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
%"$TyDescrTy_ADTTyp_54" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_53"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_53" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_55"**, %"$TyDescrTy_ADTTyp_54"* }
%"$TyDescrTy_ADTTyp_Constr_55" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_641" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_642" = type { %ParamDescrString, i32, %"$ParamDescr_641"* }
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
@"$TyDescr_Bystr_Prim_39" = global %"$TyDescrTy_PrimTyp_12" { i32 7, i32 0 }
@"$TyDescr_Bystr_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Bystr_Prim_39" to i8*) }
@"$TyDescr_Bystr32_Prim_41" = global %"$TyDescrTy_PrimTyp_12" { i32 8, i32 32 }
@"$TyDescr_Bystr32_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Bystr32_Prim_41" to i8*) }
@"$TyDescr_Bystr16_Prim_43" = global %"$TyDescrTy_PrimTyp_12" { i32 8, i32 16 }
@"$TyDescr_Bystr16_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Bystr16_Prim_43" to i8*) }
@"$TyDescr_Bystr8_Prim_45" = global %"$TyDescrTy_PrimTyp_12" { i32 8, i32 8 }
@"$TyDescr_Bystr8_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Bystr8_Prim_45" to i8*) }
@"$TyDescr_Bystr4_Prim_47" = global %"$TyDescrTy_PrimTyp_12" { i32 8, i32 4 }
@"$TyDescr_Bystr4_48" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Bystr4_Prim_47" to i8*) }
@"$TyDescr_Bystr3_Prim_49" = global %"$TyDescrTy_PrimTyp_12" { i32 8, i32 3 }
@"$TyDescr_Bystr3_50" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Bystr3_Prim_49" to i8*) }
@"$TyDescr_Bystr1_Prim_51" = global %"$TyDescrTy_PrimTyp_12" { i32 8, i32 1 }
@"$TyDescr_Bystr1_52" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Bystr1_Prim_51" to i8*) }
@"$TyDescr_ADT_Pair_Uint128_Uint256_56" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_68" to i8*) }
@"$TyDescr_ADT_Pair_Uint32_Uint64_57" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_74" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_58" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_80" to i8*) }
@"$TyDescr_Pair_ADTTyp_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_82", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 3, %"$TyDescrTy_ADTTyp_Specl_53"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_53"*], [3 x %"$TyDescrTy_ADTTyp_Specl_53"*]* @"$TyDescr_Pair_ADTTyp_m_specls_81", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Uint128_Uint256_Constr_m_args_63" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_24", %_TyDescrTy_Typ* @"$TyDescr_Uint256_28"]
@"$TyDescr_ADT_Pair_64" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint128_Uint256_ADTTyp_Constr_65" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_64", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint128_Uint256_Constr_m_args_63", i32 0, i32 0) }
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_constrs_66" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_55"*] [%"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Pair_Pair_Uint128_Uint256_ADTTyp_Constr_65"]
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_TArgs_67" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_24", %_TyDescrTy_Typ* @"$TyDescr_Uint256_28"]
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_68" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_53" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_TArgs_67", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_55"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_55"*], [1 x %"$TyDescrTy_ADTTyp_Constr_55"*]* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_constrs_66", i32 0, i32 0), %"$TyDescrTy_ADTTyp_54"* @"$TyDescr_Pair_ADTTyp_62" }
@"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_69" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_16", %_TyDescrTy_Typ* @"$TyDescr_Uint64_20"]
@"$TyDescr_ADT_Pair_70" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_71" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_70", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_69", i32 0, i32 0) }
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_72" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_55"*] [%"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_71"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_73" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_16", %_TyDescrTy_Typ* @"$TyDescr_Uint64_20"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_74" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_53" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_73", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_55"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_55"*], [1 x %"$TyDescrTy_ADTTyp_Constr_55"*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_72", i32 0, i32 0), %"$TyDescrTy_ADTTyp_54"* @"$TyDescr_Pair_ADTTyp_62" }
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_Constr_m_args_75" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_57", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_56"]
@"$TyDescr_ADT_Pair_76" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Constr_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_76", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_Constr_m_args_75", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_m_constrs_78" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_55"*] [%"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Constr_77"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_m_TArgs_79" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_57", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_56"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_80" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_53" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_m_TArgs_79", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_55"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_55"*], [1 x %"$TyDescrTy_ADTTyp_Constr_55"*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_m_constrs_78", i32 0, i32 0), %"$TyDescrTy_ADTTyp_54"* @"$TyDescr_Pair_ADTTyp_62" }
@"$TyDescr_Pair_ADTTyp_m_specls_81" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_53"*] [%"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_68", %"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_74", %"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_80"]
@"$TyDescr_ADT_Pair_82" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [23 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_36", %_TyDescrTy_Typ* @"$TyDescr_Int64_18", %_TyDescrTy_Typ* @"$TyDescr_Bystr3_50", %_TyDescrTy_Typ* @"$TyDescr_Uint256_28", %_TyDescrTy_Typ* @"$TyDescr_Uint32_16", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_58", %_TyDescrTy_Typ* @"$TyDescr_Bystr8_46", %_TyDescrTy_Typ* @"$TyDescr_Uint64_20", %_TyDescrTy_Typ* @"$TyDescr_Bnum_32", %_TyDescrTy_Typ* @"$TyDescr_Uint128_24", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_57", %_TyDescrTy_Typ* @"$TyDescr_Bystr4_48", %_TyDescrTy_Typ* @"$TyDescr_Exception_38", %_TyDescrTy_Typ* @"$TyDescr_String_30", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_56", %_TyDescrTy_Typ* @"$TyDescr_Bystr1_52", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_42", %_TyDescrTy_Typ* @"$TyDescr_Int256_26", %_TyDescrTy_Typ* @"$TyDescr_Int128_22", %_TyDescrTy_Typ* @"$TyDescr_Bystr_40", %_TyDescrTy_Typ* @"$TyDescr_Message_34", %_TyDescrTy_Typ* @"$TyDescr_Bystr16_44", %_TyDescrTy_Typ* @"$TyDescr_Int32_14"]
@_tydescr_table_length = constant i32 23
@_contract_parameters = constant [0 x %"$ParamDescr_641"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_642"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 5, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %entry
  %"$consume_87" = sub i64 %"$gasrem_83", 5
  store i64 %"$consume_87", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !9
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 8, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %"$have_gas_86"
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %"$have_gas_86"
  %"$consume_92" = sub i64 %"$gasrem_88", 8
  store i64 %"$consume_92", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !9
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 196, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %"$have_gas_91"
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %"$have_gas_91"
  %"$consume_97" = sub i64 %"$gasrem_93", 196
  store i64 %"$consume_97", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !9
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 20, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_96"
  %"$consume_102" = sub i64 %"$gasrem_98", 20
  store i64 %"$consume_102", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !9
  %"$gasrem_103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_104" = icmp ugt i64 12, %"$gasrem_103"
  br i1 %"$gascmp_104", label %"$out_of_gas_105", label %"$have_gas_106"

"$out_of_gas_105":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_106"

"$have_gas_106":                                  ; preds = %"$out_of_gas_105", %"$have_gas_101"
  %"$consume_107" = sub i64 %"$gasrem_103", 12
  store i64 %"$consume_107", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !9
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 2, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %"$have_gas_106"
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %"$have_gas_106"
  %"$consume_112" = sub i64 %"$gasrem_108", 2
  store i64 %"$consume_112", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* @_scilla_expr_fun(i8* %0) !dbg !10 {
entry:
  %"$expr_11" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, align 8
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 1, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %entry
  %"$consume_117" = sub i64 %"$gasrem_113", 1
  store i64 %"$consume_117", i64* @_gasrem, align 8
  %zero = alloca [1 x i8], align 1
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 1, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$have_gas_116"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$have_gas_116"
  %"$consume_122" = sub i64 %"$gasrem_118", 1
  store i64 %"$consume_122", i64* @_gasrem, align 8
  store [1 x i8] zeroinitializer, [1 x i8]* %zero, align 1, !dbg !11
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 1, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_121"
  %"$consume_127" = sub i64 %"$gasrem_123", 1
  store i64 %"$consume_127", i64* @_gasrem, align 8
  %one_1 = alloca [1 x i8], align 1
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$have_gas_126"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$have_gas_126"
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  store [1 x i8] c"\01", [1 x i8]* %one_1, align 1, !dbg !12
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$have_gas_131"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  %one_3 = alloca [3 x i8], align 1
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_136"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_136"
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem, align 8
  store [3 x i8] c"\00\00\01", [3 x i8]* %one_3, align 1, !dbg !13
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$have_gas_141"
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %one_4 = alloca [4 x i8], align 1
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_146"
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  store [4 x i8] c"\00\00\00\01", [4 x i8]* %one_4, align 1, !dbg !14
  %"$gasrem_153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_154" = icmp ugt i64 1, %"$gasrem_153"
  br i1 %"$gascmp_154", label %"$out_of_gas_155", label %"$have_gas_156"

"$out_of_gas_155":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_156"

"$have_gas_156":                                  ; preds = %"$out_of_gas_155", %"$have_gas_151"
  %"$consume_157" = sub i64 %"$gasrem_153", 1
  store i64 %"$consume_157", i64* @_gasrem, align 8
  %one_8 = alloca [8 x i8], align 1
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 1, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %"$have_gas_156"
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %"$have_gas_156"
  %"$consume_162" = sub i64 %"$gasrem_158", 1
  store i64 %"$consume_162", i64* @_gasrem, align 8
  store [8 x i8] c"\00\00\00\00\00\00\00\01", [8 x i8]* %one_8, align 1, !dbg !15
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %"$have_gas_161"
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %"$have_gas_161"
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %one_16 = alloca [16 x i8], align 1
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %"$have_gas_166"
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %"$have_gas_166"
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  store [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [16 x i8]* %one_16, align 1, !dbg !16
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 1, %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %"$have_gas_171"
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %"$have_gas_171"
  %"$consume_177" = sub i64 %"$gasrem_173", 1
  store i64 %"$consume_177", i64* @_gasrem, align 8
  %one_32 = alloca [32 x i8], align 1
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 1, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_176"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_176"
  %"$consume_182" = sub i64 %"$gasrem_178", 1
  store i64 %"$consume_182", i64* @_gasrem, align 8
  store [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [32 x i8]* %one_32, align 1, !dbg !17
  %"$gasrem_183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_184" = icmp ugt i64 1, %"$gasrem_183"
  br i1 %"$gascmp_184", label %"$out_of_gas_185", label %"$have_gas_186"

"$out_of_gas_185":                                ; preds = %"$have_gas_181"
  call void @_out_of_gas()
  br label %"$have_gas_186"

"$have_gas_186":                                  ; preds = %"$out_of_gas_185", %"$have_gas_181"
  %"$consume_187" = sub i64 %"$gasrem_183", 1
  store i64 %"$consume_187", i64* @_gasrem, align 8
  %res7 = alloca %Uint32, align 8
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 4, %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %"$have_gas_186"
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %"$have_gas_186"
  %"$consume_192" = sub i64 %"$gasrem_188", 4
  store i64 %"$consume_192", i64* @_gasrem, align 8
  %"$execptr_load_193" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_zero_194" = alloca [1 x i8], align 1
  %"$zero_195" = load [1 x i8], [1 x i8]* %zero, align 1
  store [1 x i8] %"$zero_195", [1 x i8]* %"$to_uint32_zero_194", align 1
  %"$$to_uint32_zero_194_196" = bitcast [1 x i8]* %"$to_uint32_zero_194" to i8*
  %"$to_uint32_call_197" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_193", i32 1, i8* %"$$to_uint32_zero_194_196"), !dbg !18
  store %Uint32 %"$to_uint32_call_197", %Uint32* %res7, align 4, !dbg !18
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 1, %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %"$have_gas_191"
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %"$have_gas_191"
  %"$consume_202" = sub i64 %"$gasrem_198", 1
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %res8 = alloca %Uint32, align 8
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 4, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %"$have_gas_201"
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %"$have_gas_201"
  %"$consume_207" = sub i64 %"$gasrem_203", 4
  store i64 %"$consume_207", i64* @_gasrem, align 8
  %"$execptr_load_208" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_one_1_209" = alloca [1 x i8], align 1
  %"$one_1_210" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_210", [1 x i8]* %"$to_uint32_one_1_209", align 1
  %"$$to_uint32_one_1_209_211" = bitcast [1 x i8]* %"$to_uint32_one_1_209" to i8*
  %"$to_uint32_call_212" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_208", i32 1, i8* %"$$to_uint32_one_1_209_211"), !dbg !19
  store %Uint32 %"$to_uint32_call_212", %Uint32* %res8, align 4, !dbg !19
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %"$have_gas_206"
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %"$have_gas_206"
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %res9 = alloca %Uint32, align 8
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 4, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_216"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_216"
  %"$consume_222" = sub i64 %"$gasrem_218", 4
  store i64 %"$consume_222", i64* @_gasrem, align 8
  %"$execptr_load_223" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_one_3_224" = alloca [3 x i8], align 1
  %"$one_3_225" = load [3 x i8], [3 x i8]* %one_3, align 1
  store [3 x i8] %"$one_3_225", [3 x i8]* %"$to_uint32_one_3_224", align 1
  %"$$to_uint32_one_3_224_226" = bitcast [3 x i8]* %"$to_uint32_one_3_224" to i8*
  %"$to_uint32_call_227" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_223", i32 3, i8* %"$$to_uint32_one_3_224_226"), !dbg !20
  store %Uint32 %"$to_uint32_call_227", %Uint32* %res9, align 4, !dbg !20
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 1, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_221"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_221"
  %"$consume_232" = sub i64 %"$gasrem_228", 1
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %res10 = alloca %Uint32, align 8
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 4, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_231"
  %"$consume_237" = sub i64 %"$gasrem_233", 4
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %"$execptr_load_238" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_one_4_239" = alloca [4 x i8], align 1
  %"$one_4_240" = load [4 x i8], [4 x i8]* %one_4, align 1
  store [4 x i8] %"$one_4_240", [4 x i8]* %"$to_uint32_one_4_239", align 1
  %"$$to_uint32_one_4_239_241" = bitcast [4 x i8]* %"$to_uint32_one_4_239" to i8*
  %"$to_uint32_call_242" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_238", i32 4, i8* %"$$to_uint32_one_4_239_241"), !dbg !21
  store %Uint32 %"$to_uint32_call_242", %Uint32* %res10, align 4, !dbg !21
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$have_gas_236"
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %sum1 = alloca %Uint32, align 8
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 4, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_246"
  %"$consume_252" = sub i64 %"$gasrem_248", 4
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %"$res7_253" = load %Uint32, %Uint32* %res7, align 4
  %"$res8_254" = load %Uint32, %Uint32* %res8, align 4
  %"$add_call_255" = call %Uint32 @_add_Uint32(%Uint32 %"$res7_253", %Uint32 %"$res8_254"), !dbg !22
  store %Uint32 %"$add_call_255", %Uint32* %sum1, align 4, !dbg !22
  %"$gasrem_256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_257" = icmp ugt i64 1, %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %"$have_gas_251"
  %"$consume_260" = sub i64 %"$gasrem_256", 1
  store i64 %"$consume_260", i64* @_gasrem, align 8
  %sum2 = alloca %Uint32, align 8
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 4, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_259"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_259"
  %"$consume_265" = sub i64 %"$gasrem_261", 4
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %"$res9_266" = load %Uint32, %Uint32* %res9, align 4
  %"$res10_267" = load %Uint32, %Uint32* %res10, align 4
  %"$add_call_268" = call %Uint32 @_add_Uint32(%Uint32 %"$res9_266", %Uint32 %"$res10_267"), !dbg !23
  store %Uint32 %"$add_call_268", %Uint32* %sum2, align 4, !dbg !23
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_264"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_264"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %sum_32 = alloca %Uint32, align 8
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 4, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$have_gas_272"
  %"$consume_278" = sub i64 %"$gasrem_274", 4
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %"$sum1_279" = load %Uint32, %Uint32* %sum1, align 4
  %"$sum2_280" = load %Uint32, %Uint32* %sum2, align 4
  %"$add_call_281" = call %Uint32 @_add_Uint32(%Uint32 %"$sum1_279", %Uint32 %"$sum2_280"), !dbg !24
  store %Uint32 %"$add_call_281", %Uint32* %sum_32, align 4, !dbg !24
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 1, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$have_gas_277"
  %"$consume_286" = sub i64 %"$gasrem_282", 1
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %res12 = alloca %Uint64, align 8
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 8, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_285"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_285"
  %"$consume_291" = sub i64 %"$gasrem_287", 8
  store i64 %"$consume_291", i64* @_gasrem, align 8
  %"$execptr_load_292" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_one_1_293" = alloca [1 x i8], align 1
  %"$one_1_294" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_294", [1 x i8]* %"$to_uint64_one_1_293", align 1
  %"$$to_uint64_one_1_293_295" = bitcast [1 x i8]* %"$to_uint64_one_1_293" to i8*
  %"$to_uint64_call_296" = call %Uint64 @_bystrx_to_uint64(i8* %"$execptr_load_292", i32 1, i8* %"$$to_uint64_one_1_293_295"), !dbg !25
  store %Uint64 %"$to_uint64_call_296", %Uint64* %res12, align 8, !dbg !25
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 1, %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %"$have_gas_290"
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %"$have_gas_290"
  %"$consume_301" = sub i64 %"$gasrem_297", 1
  store i64 %"$consume_301", i64* @_gasrem, align 8
  %res13 = alloca %Uint64, align 8
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 8, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_300"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_300"
  %"$consume_306" = sub i64 %"$gasrem_302", 8
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %"$execptr_load_307" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_one_4_308" = alloca [4 x i8], align 1
  %"$one_4_309" = load [4 x i8], [4 x i8]* %one_4, align 1
  store [4 x i8] %"$one_4_309", [4 x i8]* %"$to_uint64_one_4_308", align 1
  %"$$to_uint64_one_4_308_310" = bitcast [4 x i8]* %"$to_uint64_one_4_308" to i8*
  %"$to_uint64_call_311" = call %Uint64 @_bystrx_to_uint64(i8* %"$execptr_load_307", i32 4, i8* %"$$to_uint64_one_4_308_310"), !dbg !26
  store %Uint64 %"$to_uint64_call_311", %Uint64* %res13, align 8, !dbg !26
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 1, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_305"
  %"$consume_316" = sub i64 %"$gasrem_312", 1
  store i64 %"$consume_316", i64* @_gasrem, align 8
  %res14 = alloca %Uint64, align 8
  %"$gasrem_317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_318" = icmp ugt i64 8, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_315"
  %"$consume_321" = sub i64 %"$gasrem_317", 8
  store i64 %"$consume_321", i64* @_gasrem, align 8
  %"$execptr_load_322" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_one_8_323" = alloca [8 x i8], align 1
  %"$one_8_324" = load [8 x i8], [8 x i8]* %one_8, align 1
  store [8 x i8] %"$one_8_324", [8 x i8]* %"$to_uint64_one_8_323", align 1
  %"$$to_uint64_one_8_323_325" = bitcast [8 x i8]* %"$to_uint64_one_8_323" to i8*
  %"$to_uint64_call_326" = call %Uint64 @_bystrx_to_uint64(i8* %"$execptr_load_322", i32 8, i8* %"$$to_uint64_one_8_323_325"), !dbg !27
  store %Uint64 %"$to_uint64_call_326", %Uint64* %res14, align 8, !dbg !27
  %"$gasrem_327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_328" = icmp ugt i64 1, %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %"$have_gas_320"
  %"$consume_331" = sub i64 %"$gasrem_327", 1
  store i64 %"$consume_331", i64* @_gasrem, align 8
  %"$sum1_6" = alloca %Uint64, align 8
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 4, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$have_gas_330"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$have_gas_330"
  %"$consume_336" = sub i64 %"$gasrem_332", 4
  store i64 %"$consume_336", i64* @_gasrem, align 8
  %"$res12_337" = load %Uint64, %Uint64* %res12, align 8
  %"$res13_338" = load %Uint64, %Uint64* %res13, align 8
  %"$add_call_339" = call %Uint64 @_add_Uint64(%Uint64 %"$res12_337", %Uint64 %"$res13_338"), !dbg !28
  store %Uint64 %"$add_call_339", %Uint64* %"$sum1_6", align 8, !dbg !28
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_335"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_335"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %sum_64 = alloca %Uint64, align 8
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 4, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_343"
  %"$consume_349" = sub i64 %"$gasrem_345", 4
  store i64 %"$consume_349", i64* @_gasrem, align 8
  %"$$sum1_6_350" = load %Uint64, %Uint64* %"$sum1_6", align 8
  %"$res14_351" = load %Uint64, %Uint64* %res14, align 8
  %"$add_call_352" = call %Uint64 @_add_Uint64(%Uint64 %"$$sum1_6_350", %Uint64 %"$res14_351"), !dbg !29
  store %Uint64 %"$add_call_352", %Uint64* %sum_64, align 8, !dbg !29
  %"$gasrem_353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_354" = icmp ugt i64 1, %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %"$have_gas_348"
  %"$consume_357" = sub i64 %"$gasrem_353", 1
  store i64 %"$consume_357", i64* @_gasrem, align 8
  %res15 = alloca %Uint128, align 8
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 16, %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$have_gas_356"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$have_gas_356"
  %"$consume_362" = sub i64 %"$gasrem_358", 16
  store i64 %"$consume_362", i64* @_gasrem, align 8
  %"$execptr_load_363" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_1_364" = alloca [1 x i8], align 1
  %"$one_1_365" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_365", [1 x i8]* %"$to_uint128_one_1_364", align 1
  %"$$to_uint128_one_1_364_366" = bitcast [1 x i8]* %"$to_uint128_one_1_364" to i8*
  %"$to_uint128_call_367" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_363", i32 1, i8* %"$$to_uint128_one_1_364_366"), !dbg !30
  store %Uint128 %"$to_uint128_call_367", %Uint128* %res15, align 8, !dbg !30
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 1, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$have_gas_361"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$have_gas_361"
  %"$consume_372" = sub i64 %"$gasrem_368", 1
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %res16 = alloca %Uint128, align 8
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 16, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_371"
  %"$consume_377" = sub i64 %"$gasrem_373", 16
  store i64 %"$consume_377", i64* @_gasrem, align 8
  %"$execptr_load_378" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_4_379" = alloca [4 x i8], align 1
  %"$one_4_380" = load [4 x i8], [4 x i8]* %one_4, align 1
  store [4 x i8] %"$one_4_380", [4 x i8]* %"$to_uint128_one_4_379", align 1
  %"$$to_uint128_one_4_379_381" = bitcast [4 x i8]* %"$to_uint128_one_4_379" to i8*
  %"$to_uint128_call_382" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_378", i32 4, i8* %"$$to_uint128_one_4_379_381"), !dbg !31
  store %Uint128 %"$to_uint128_call_382", %Uint128* %res16, align 8, !dbg !31
  %"$gasrem_383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_384" = icmp ugt i64 1, %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$have_gas_376"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$have_gas_376"
  %"$consume_387" = sub i64 %"$gasrem_383", 1
  store i64 %"$consume_387", i64* @_gasrem, align 8
  %res17 = alloca %Uint128, align 8
  %"$gasrem_388" = load i64, i64* @_gasrem, align 8
  %"$gascmp_389" = icmp ugt i64 16, %"$gasrem_388"
  br i1 %"$gascmp_389", label %"$out_of_gas_390", label %"$have_gas_391"

"$out_of_gas_390":                                ; preds = %"$have_gas_386"
  call void @_out_of_gas()
  br label %"$have_gas_391"

"$have_gas_391":                                  ; preds = %"$out_of_gas_390", %"$have_gas_386"
  %"$consume_392" = sub i64 %"$gasrem_388", 16
  store i64 %"$consume_392", i64* @_gasrem, align 8
  %"$execptr_load_393" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_8_394" = alloca [8 x i8], align 1
  %"$one_8_395" = load [8 x i8], [8 x i8]* %one_8, align 1
  store [8 x i8] %"$one_8_395", [8 x i8]* %"$to_uint128_one_8_394", align 1
  %"$$to_uint128_one_8_394_396" = bitcast [8 x i8]* %"$to_uint128_one_8_394" to i8*
  %"$to_uint128_call_397" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_393", i32 8, i8* %"$$to_uint128_one_8_394_396"), !dbg !32
  store %Uint128 %"$to_uint128_call_397", %Uint128* %res17, align 8, !dbg !32
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 1, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_391"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_391"
  %"$consume_402" = sub i64 %"$gasrem_398", 1
  store i64 %"$consume_402", i64* @_gasrem, align 8
  %res18 = alloca %Uint128, align 8
  %"$gasrem_403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_404" = icmp ugt i64 16, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$have_gas_401"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$have_gas_401"
  %"$consume_407" = sub i64 %"$gasrem_403", 16
  store i64 %"$consume_407", i64* @_gasrem, align 8
  %"$execptr_load_408" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_16_409" = alloca [16 x i8], align 1
  %"$one_16_410" = load [16 x i8], [16 x i8]* %one_16, align 1
  store [16 x i8] %"$one_16_410", [16 x i8]* %"$to_uint128_one_16_409", align 1
  %"$$to_uint128_one_16_409_411" = bitcast [16 x i8]* %"$to_uint128_one_16_409" to i8*
  %"$to_uint128_call_412" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_408", i32 16, i8* %"$$to_uint128_one_16_409_411"), !dbg !33
  store %Uint128 %"$to_uint128_call_412", %Uint128* %res18, align 8, !dbg !33
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_406"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_406"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %"$sum1_7" = alloca %Uint128, align 8
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 8, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_416"
  %"$consume_423" = sub i64 %"$gasrem_419", 8
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %"$res15_424" = load %Uint128, %Uint128* %res15, align 8
  %"$res16_425" = load %Uint128, %Uint128* %res16, align 8
  %"$add_call_426" = call %Uint128 @_add_Uint128(%Uint128 %"$res15_424", %Uint128 %"$res16_425"), !dbg !34
  store %Uint128 %"$add_call_426", %Uint128* %"$sum1_7", align 8, !dbg !34
  %"$gasrem_427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_428" = icmp ugt i64 1, %"$gasrem_427"
  br i1 %"$gascmp_428", label %"$out_of_gas_429", label %"$have_gas_430"

"$out_of_gas_429":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_430"

"$have_gas_430":                                  ; preds = %"$out_of_gas_429", %"$have_gas_422"
  %"$consume_431" = sub i64 %"$gasrem_427", 1
  store i64 %"$consume_431", i64* @_gasrem, align 8
  %"$sum2_8" = alloca %Uint128, align 8
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 8, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_430"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_430"
  %"$consume_437" = sub i64 %"$gasrem_433", 8
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %"$res17_438" = load %Uint128, %Uint128* %res17, align 8
  %"$res18_439" = load %Uint128, %Uint128* %res18, align 8
  %"$add_call_440" = call %Uint128 @_add_Uint128(%Uint128 %"$res17_438", %Uint128 %"$res18_439"), !dbg !35
  store %Uint128 %"$add_call_440", %Uint128* %"$sum2_8", align 8, !dbg !35
  %"$gasrem_441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_442" = icmp ugt i64 1, %"$gasrem_441"
  br i1 %"$gascmp_442", label %"$out_of_gas_443", label %"$have_gas_444"

"$out_of_gas_443":                                ; preds = %"$have_gas_436"
  call void @_out_of_gas()
  br label %"$have_gas_444"

"$have_gas_444":                                  ; preds = %"$out_of_gas_443", %"$have_gas_436"
  %"$consume_445" = sub i64 %"$gasrem_441", 1
  store i64 %"$consume_445", i64* @_gasrem, align 8
  %sum_128 = alloca %Uint128, align 8
  %"$gasrem_447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_448" = icmp ugt i64 8, %"$gasrem_447"
  br i1 %"$gascmp_448", label %"$out_of_gas_449", label %"$have_gas_450"

"$out_of_gas_449":                                ; preds = %"$have_gas_444"
  call void @_out_of_gas()
  br label %"$have_gas_450"

"$have_gas_450":                                  ; preds = %"$out_of_gas_449", %"$have_gas_444"
  %"$consume_451" = sub i64 %"$gasrem_447", 8
  store i64 %"$consume_451", i64* @_gasrem, align 8
  %"$$sum1_7_452" = load %Uint128, %Uint128* %"$sum1_7", align 8
  %"$$sum2_8_453" = load %Uint128, %Uint128* %"$sum2_8", align 8
  %"$add_call_454" = call %Uint128 @_add_Uint128(%Uint128 %"$$sum1_7_452", %Uint128 %"$$sum2_8_453"), !dbg !36
  store %Uint128 %"$add_call_454", %Uint128* %sum_128, align 8, !dbg !36
  %"$gasrem_455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_456" = icmp ugt i64 1, %"$gasrem_455"
  br i1 %"$gascmp_456", label %"$out_of_gas_457", label %"$have_gas_458"

"$out_of_gas_457":                                ; preds = %"$have_gas_450"
  call void @_out_of_gas()
  br label %"$have_gas_458"

"$have_gas_458":                                  ; preds = %"$out_of_gas_457", %"$have_gas_450"
  %"$consume_459" = sub i64 %"$gasrem_455", 1
  store i64 %"$consume_459", i64* @_gasrem, align 8
  %res19 = alloca %Uint256, align 8
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 32, %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$have_gas_458"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$have_gas_458"
  %"$consume_464" = sub i64 %"$gasrem_460", 32
  store i64 %"$consume_464", i64* @_gasrem, align 8
  %"$execptr_load_465" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_1_466" = alloca [1 x i8], align 1
  %"$one_1_467" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_467", [1 x i8]* %"$to_uint256_one_1_466", align 1
  %"$$to_uint256_one_1_466_468" = bitcast [1 x i8]* %"$to_uint256_one_1_466" to i8*
  %"$to_uint256_call_469" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_465", i32 1, i8* %"$$to_uint256_one_1_466_468"), !dbg !37
  %"$to_uint256_471" = load %Uint256, %Uint256* %"$to_uint256_call_469", align 8
  store %Uint256 %"$to_uint256_471", %Uint256* %res19, align 8, !dbg !37
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$have_gas_463"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$have_gas_463"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem, align 8
  %res20 = alloca %Uint256, align 8
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 32, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %"$have_gas_475"
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %"$have_gas_475"
  %"$consume_481" = sub i64 %"$gasrem_477", 32
  store i64 %"$consume_481", i64* @_gasrem, align 8
  %"$execptr_load_482" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_8_483" = alloca [8 x i8], align 1
  %"$one_8_484" = load [8 x i8], [8 x i8]* %one_8, align 1
  store [8 x i8] %"$one_8_484", [8 x i8]* %"$to_uint256_one_8_483", align 1
  %"$$to_uint256_one_8_483_485" = bitcast [8 x i8]* %"$to_uint256_one_8_483" to i8*
  %"$to_uint256_call_486" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_482", i32 8, i8* %"$$to_uint256_one_8_483_485"), !dbg !38
  %"$to_uint256_488" = load %Uint256, %Uint256* %"$to_uint256_call_486", align 8
  store %Uint256 %"$to_uint256_488", %Uint256* %res20, align 8, !dbg !38
  %"$gasrem_489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_490" = icmp ugt i64 1, %"$gasrem_489"
  br i1 %"$gascmp_490", label %"$out_of_gas_491", label %"$have_gas_492"

"$out_of_gas_491":                                ; preds = %"$have_gas_480"
  call void @_out_of_gas()
  br label %"$have_gas_492"

"$have_gas_492":                                  ; preds = %"$out_of_gas_491", %"$have_gas_480"
  %"$consume_493" = sub i64 %"$gasrem_489", 1
  store i64 %"$consume_493", i64* @_gasrem, align 8
  %res21 = alloca %Uint256, align 8
  %"$gasrem_494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_495" = icmp ugt i64 32, %"$gasrem_494"
  br i1 %"$gascmp_495", label %"$out_of_gas_496", label %"$have_gas_497"

"$out_of_gas_496":                                ; preds = %"$have_gas_492"
  call void @_out_of_gas()
  br label %"$have_gas_497"

"$have_gas_497":                                  ; preds = %"$out_of_gas_496", %"$have_gas_492"
  %"$consume_498" = sub i64 %"$gasrem_494", 32
  store i64 %"$consume_498", i64* @_gasrem, align 8
  %"$execptr_load_499" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_16_500" = alloca [16 x i8], align 1
  %"$one_16_501" = load [16 x i8], [16 x i8]* %one_16, align 1
  store [16 x i8] %"$one_16_501", [16 x i8]* %"$to_uint256_one_16_500", align 1
  %"$$to_uint256_one_16_500_502" = bitcast [16 x i8]* %"$to_uint256_one_16_500" to i8*
  %"$to_uint256_call_503" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_499", i32 16, i8* %"$$to_uint256_one_16_500_502"), !dbg !39
  %"$to_uint256_505" = load %Uint256, %Uint256* %"$to_uint256_call_503", align 8
  store %Uint256 %"$to_uint256_505", %Uint256* %res21, align 8, !dbg !39
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_497"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_497"
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %res22 = alloca %Uint256, align 8
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 32, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %"$have_gas_509"
  %"$consume_515" = sub i64 %"$gasrem_511", 32
  store i64 %"$consume_515", i64* @_gasrem, align 8
  %"$execptr_load_516" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_32_517" = alloca [32 x i8], align 1
  %"$one_32_518" = load [32 x i8], [32 x i8]* %one_32, align 1
  store [32 x i8] %"$one_32_518", [32 x i8]* %"$to_uint256_one_32_517", align 1
  %"$$to_uint256_one_32_517_519" = bitcast [32 x i8]* %"$to_uint256_one_32_517" to i8*
  %"$to_uint256_call_520" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_516", i32 32, i8* %"$$to_uint256_one_32_517_519"), !dbg !40
  %"$to_uint256_522" = load %Uint256, %Uint256* %"$to_uint256_call_520", align 8
  store %Uint256 %"$to_uint256_522", %Uint256* %res22, align 8, !dbg !40
  %"$gasrem_523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_524" = icmp ugt i64 1, %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %"$have_gas_514"
  %"$consume_527" = sub i64 %"$gasrem_523", 1
  store i64 %"$consume_527", i64* @_gasrem, align 8
  %"$sum1_9" = alloca %Uint256, align 8
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 16, %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_526"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_526"
  %"$consume_533" = sub i64 %"$gasrem_529", 16
  store i64 %"$consume_533", i64* @_gasrem, align 8
  %"$execptr_load_534" = load i8*, i8** @_execptr, align 8
  %"$add_res19_535" = alloca %Uint256, align 8
  %"$res19_536" = load %Uint256, %Uint256* %res19, align 8
  store %Uint256 %"$res19_536", %Uint256* %"$add_res19_535", align 8
  %"$add_res20_537" = alloca %Uint256, align 8
  %"$res20_538" = load %Uint256, %Uint256* %res20, align 8
  store %Uint256 %"$res20_538", %Uint256* %"$add_res20_537", align 8
  %"$add_call_539" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_534", %Uint256* %"$add_res19_535", %Uint256* %"$add_res20_537"), !dbg !41
  %"$add_541" = load %Uint256, %Uint256* %"$add_call_539", align 8
  store %Uint256 %"$add_541", %Uint256* %"$sum1_9", align 8, !dbg !41
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 1, %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %"$have_gas_532"
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %"$have_gas_532"
  %"$consume_546" = sub i64 %"$gasrem_542", 1
  store i64 %"$consume_546", i64* @_gasrem, align 8
  %"$sum2_10" = alloca %Uint256, align 8
  %"$gasrem_548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_549" = icmp ugt i64 16, %"$gasrem_548"
  br i1 %"$gascmp_549", label %"$out_of_gas_550", label %"$have_gas_551"

"$out_of_gas_550":                                ; preds = %"$have_gas_545"
  call void @_out_of_gas()
  br label %"$have_gas_551"

"$have_gas_551":                                  ; preds = %"$out_of_gas_550", %"$have_gas_545"
  %"$consume_552" = sub i64 %"$gasrem_548", 16
  store i64 %"$consume_552", i64* @_gasrem, align 8
  %"$execptr_load_553" = load i8*, i8** @_execptr, align 8
  %"$add_res21_554" = alloca %Uint256, align 8
  %"$res21_555" = load %Uint256, %Uint256* %res21, align 8
  store %Uint256 %"$res21_555", %Uint256* %"$add_res21_554", align 8
  %"$add_res22_556" = alloca %Uint256, align 8
  %"$res22_557" = load %Uint256, %Uint256* %res22, align 8
  store %Uint256 %"$res22_557", %Uint256* %"$add_res22_556", align 8
  %"$add_call_558" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_553", %Uint256* %"$add_res21_554", %Uint256* %"$add_res22_556"), !dbg !42
  %"$add_560" = load %Uint256, %Uint256* %"$add_call_558", align 8
  store %Uint256 %"$add_560", %Uint256* %"$sum2_10", align 8, !dbg !42
  %"$gasrem_561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_562" = icmp ugt i64 1, %"$gasrem_561"
  br i1 %"$gascmp_562", label %"$out_of_gas_563", label %"$have_gas_564"

"$out_of_gas_563":                                ; preds = %"$have_gas_551"
  call void @_out_of_gas()
  br label %"$have_gas_564"

"$have_gas_564":                                  ; preds = %"$out_of_gas_563", %"$have_gas_551"
  %"$consume_565" = sub i64 %"$gasrem_561", 1
  store i64 %"$consume_565", i64* @_gasrem, align 8
  %sum_256 = alloca %Uint256, align 8
  %"$gasrem_567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_568" = icmp ugt i64 16, %"$gasrem_567"
  br i1 %"$gascmp_568", label %"$out_of_gas_569", label %"$have_gas_570"

"$out_of_gas_569":                                ; preds = %"$have_gas_564"
  call void @_out_of_gas()
  br label %"$have_gas_570"

"$have_gas_570":                                  ; preds = %"$out_of_gas_569", %"$have_gas_564"
  %"$consume_571" = sub i64 %"$gasrem_567", 16
  store i64 %"$consume_571", i64* @_gasrem, align 8
  %"$execptr_load_572" = load i8*, i8** @_execptr, align 8
  %"$add_$sum1_9_573" = alloca %Uint256, align 8
  %"$$sum1_9_574" = load %Uint256, %Uint256* %"$sum1_9", align 8
  store %Uint256 %"$$sum1_9_574", %Uint256* %"$add_$sum1_9_573", align 8
  %"$add_$sum2_10_575" = alloca %Uint256, align 8
  %"$$sum2_10_576" = load %Uint256, %Uint256* %"$sum2_10", align 8
  store %Uint256 %"$$sum2_10_576", %Uint256* %"$add_$sum2_10_575", align 8
  %"$add_call_577" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_572", %Uint256* %"$add_$sum1_9_573", %Uint256* %"$add_$sum2_10_575"), !dbg !43
  %"$add_579" = load %Uint256, %Uint256* %"$add_call_577", align 8
  store %Uint256 %"$add_579", %Uint256* %sum_256, align 8, !dbg !43
  %"$gasrem_580" = load i64, i64* @_gasrem, align 8
  %"$gascmp_581" = icmp ugt i64 1, %"$gasrem_580"
  br i1 %"$gascmp_581", label %"$out_of_gas_582", label %"$have_gas_583"

"$out_of_gas_582":                                ; preds = %"$have_gas_570"
  call void @_out_of_gas()
  br label %"$have_gas_583"

"$have_gas_583":                                  ; preds = %"$out_of_gas_582", %"$have_gas_570"
  %"$consume_584" = sub i64 %"$gasrem_580", 1
  store i64 %"$consume_584", i64* @_gasrem, align 8
  %respair1 = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_586" = icmp ugt i64 1, %"$gasrem_585"
  br i1 %"$gascmp_586", label %"$out_of_gas_587", label %"$have_gas_588"

"$out_of_gas_587":                                ; preds = %"$have_gas_583"
  call void @_out_of_gas()
  br label %"$have_gas_588"

"$have_gas_588":                                  ; preds = %"$out_of_gas_587", %"$have_gas_583"
  %"$consume_589" = sub i64 %"$gasrem_585", 1
  store i64 %"$consume_589", i64* @_gasrem, align 8
  %"$sum_32_590" = load %Uint32, %Uint32* %sum_32, align 4
  %"$sum_64_591" = load %Uint64, %Uint64* %sum_64, align 8
  %"$adtval_592_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_592_salloc" = call i8* @_salloc(i8* %"$adtval_592_load", i64 13)
  %"$adtval_592" = bitcast i8* %"$adtval_592_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_593" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_592", i32 0, i32 0
  store i8 0, i8* %"$adtgep_593", align 1
  %"$adtgep_594" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_592", i32 0, i32 1
  store %Uint32 %"$sum_32_590", %Uint32* %"$adtgep_594", align 4
  %"$adtgep_595" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_592", i32 0, i32 2
  store %Uint64 %"$sum_64_591", %Uint64* %"$adtgep_595", align 8
  %"$adtptr_596" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_592" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_596", %TName_Pair_Uint32_Uint64** %respair1, align 8, !dbg !44
  %"$gasrem_597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_598" = icmp ugt i64 1, %"$gasrem_597"
  br i1 %"$gascmp_598", label %"$out_of_gas_599", label %"$have_gas_600"

"$out_of_gas_599":                                ; preds = %"$have_gas_588"
  call void @_out_of_gas()
  br label %"$have_gas_600"

"$have_gas_600":                                  ; preds = %"$out_of_gas_599", %"$have_gas_588"
  %"$consume_601" = sub i64 %"$gasrem_597", 1
  store i64 %"$consume_601", i64* @_gasrem, align 8
  %respair2 = alloca %TName_Pair_Uint128_Uint256*, align 8
  %"$gasrem_602" = load i64, i64* @_gasrem, align 8
  %"$gascmp_603" = icmp ugt i64 1, %"$gasrem_602"
  br i1 %"$gascmp_603", label %"$out_of_gas_604", label %"$have_gas_605"

"$out_of_gas_604":                                ; preds = %"$have_gas_600"
  call void @_out_of_gas()
  br label %"$have_gas_605"

"$have_gas_605":                                  ; preds = %"$out_of_gas_604", %"$have_gas_600"
  %"$consume_606" = sub i64 %"$gasrem_602", 1
  store i64 %"$consume_606", i64* @_gasrem, align 8
  %"$sum_128_607" = load %Uint128, %Uint128* %sum_128, align 8
  %"$sum_256_608" = load %Uint256, %Uint256* %sum_256, align 8
  %"$adtval_609_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_609_salloc" = call i8* @_salloc(i8* %"$adtval_609_load", i64 49)
  %"$adtval_609" = bitcast i8* %"$adtval_609_salloc" to %CName_Pair_Uint128_Uint256*
  %"$adtgep_610" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_609", i32 0, i32 0
  store i8 0, i8* %"$adtgep_610", align 1
  %"$adtgep_611" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_609", i32 0, i32 1
  store %Uint128 %"$sum_128_607", %Uint128* %"$adtgep_611", align 8
  %"$adtgep_612" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_609", i32 0, i32 2
  store %Uint256 %"$sum_256_608", %Uint256* %"$adtgep_612", align 8
  %"$adtptr_613" = bitcast %CName_Pair_Uint128_Uint256* %"$adtval_609" to %TName_Pair_Uint128_Uint256*
  store %TName_Pair_Uint128_Uint256* %"$adtptr_613", %TName_Pair_Uint128_Uint256** %respair2, align 8, !dbg !45
  %"$gasrem_614" = load i64, i64* @_gasrem, align 8
  %"$gascmp_615" = icmp ugt i64 1, %"$gasrem_614"
  br i1 %"$gascmp_615", label %"$out_of_gas_616", label %"$have_gas_617"

"$out_of_gas_616":                                ; preds = %"$have_gas_605"
  call void @_out_of_gas()
  br label %"$have_gas_617"

"$have_gas_617":                                  ; preds = %"$out_of_gas_616", %"$have_gas_605"
  %"$consume_618" = sub i64 %"$gasrem_614", 1
  store i64 %"$consume_618", i64* @_gasrem, align 8
  %restuple = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, align 8
  %"$gasrem_619" = load i64, i64* @_gasrem, align 8
  %"$gascmp_620" = icmp ugt i64 1, %"$gasrem_619"
  br i1 %"$gascmp_620", label %"$out_of_gas_621", label %"$have_gas_622"

"$out_of_gas_621":                                ; preds = %"$have_gas_617"
  call void @_out_of_gas()
  br label %"$have_gas_622"

"$have_gas_622":                                  ; preds = %"$out_of_gas_621", %"$have_gas_617"
  %"$consume_623" = sub i64 %"$gasrem_619", 1
  store i64 %"$consume_623", i64* @_gasrem, align 8
  %"$respair1_624" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %respair1, align 8
  %"$respair2_625" = load %TName_Pair_Uint128_Uint256*, %TName_Pair_Uint128_Uint256** %respair2, align 8
  %"$adtval_626_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_626_salloc" = call i8* @_salloc(i8* %"$adtval_626_load", i64 17)
  %"$adtval_626" = bitcast i8* %"$adtval_626_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*
  %"$adtgep_627" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_626", i32 0, i32 0
  store i8 0, i8* %"$adtgep_627", align 1
  %"$adtgep_628" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_626", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$respair1_624", %TName_Pair_Uint32_Uint64** %"$adtgep_628", align 8
  %"$adtgep_629" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_626", i32 0, i32 2
  store %TName_Pair_Uint128_Uint256* %"$respair2_625", %TName_Pair_Uint128_Uint256** %"$adtgep_629", align 8
  %"$adtptr_630" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_626" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtptr_630", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %restuple, align 8, !dbg !46
  %"$gasrem_631" = load i64, i64* @_gasrem, align 8
  %"$gascmp_632" = icmp ugt i64 1, %"$gasrem_631"
  br i1 %"$gascmp_632", label %"$out_of_gas_633", label %"$have_gas_634"

"$out_of_gas_633":                                ; preds = %"$have_gas_622"
  call void @_out_of_gas()
  br label %"$have_gas_634"

"$have_gas_634":                                  ; preds = %"$out_of_gas_633", %"$have_gas_622"
  %"$consume_635" = sub i64 %"$gasrem_631", 1
  store i64 %"$consume_635", i64* @_gasrem, align 8
  %"$restuple_636" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %restuple, align 8
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$restuple_636", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %"$expr_11", align 8, !dbg !47
  %"$$expr_11_637" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %"$expr_11", align 8
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$$expr_11_637"
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
  %"$exprval_638" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_639" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$exprval_638" to i8*
  %"$execptr_load_640" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_640", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_58", i8* %"$memvoidcast_639")
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
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 1, column: 12, scope: !10)
!12 = !DILocation(line: 2, column: 13, scope: !10)
!13 = !DILocation(line: 3, column: 13, scope: !10)
!14 = !DILocation(line: 4, column: 13, scope: !10)
!15 = !DILocation(line: 5, column: 13, scope: !10)
!16 = !DILocation(line: 6, column: 14, scope: !10)
!17 = !DILocation(line: 7, column: 14, scope: !10)
!18 = !DILocation(line: 9, column: 12, scope: !10)
!19 = !DILocation(line: 10, column: 12, scope: !10)
!20 = !DILocation(line: 11, column: 12, scope: !10)
!21 = !DILocation(line: 12, column: 13, scope: !10)
!22 = !DILocation(line: 13, column: 12, scope: !10)
!23 = !DILocation(line: 14, column: 12, scope: !10)
!24 = !DILocation(line: 15, column: 14, scope: !10)
!25 = !DILocation(line: 17, column: 13, scope: !10)
!26 = !DILocation(line: 18, column: 13, scope: !10)
!27 = !DILocation(line: 19, column: 13, scope: !10)
!28 = !DILocation(line: 20, column: 12, scope: !10)
!29 = !DILocation(line: 21, column: 14, scope: !10)
!30 = !DILocation(line: 23, column: 13, scope: !10)
!31 = !DILocation(line: 24, column: 13, scope: !10)
!32 = !DILocation(line: 25, column: 13, scope: !10)
!33 = !DILocation(line: 26, column: 13, scope: !10)
!34 = !DILocation(line: 27, column: 12, scope: !10)
!35 = !DILocation(line: 28, column: 12, scope: !10)
!36 = !DILocation(line: 29, column: 15, scope: !10)
!37 = !DILocation(line: 31, column: 13, scope: !10)
!38 = !DILocation(line: 32, column: 13, scope: !10)
!39 = !DILocation(line: 33, column: 13, scope: !10)
!40 = !DILocation(line: 34, column: 13, scope: !10)
!41 = !DILocation(line: 35, column: 12, scope: !10)
!42 = !DILocation(line: 36, column: 12, scope: !10)
!43 = !DILocation(line: 37, column: 15, scope: !10)
!44 = !DILocation(line: 39, column: 16, scope: !10)
!45 = !DILocation(line: 40, column: 16, scope: !10)
!46 = !DILocation(line: 41, column: 16, scope: !10)
!47 = !DILocation(line: 43, column: 1, scope: !10)
