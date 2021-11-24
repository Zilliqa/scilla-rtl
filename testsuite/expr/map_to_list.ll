; let k1 = Int32 1 in
; let k2 = Int32 2 in
; let k3 = Int32 3 in
; let v1 = Int32 42 in
; let v2 = Int32 239 in
; let v3 = Int32 112 in
; 
; let m0 = Emp Int32 Int32 in
; let m1 = builtin put m0 k1 v1 in
; let m2 = builtin put m1 k2 v2 in
; let m3 = builtin put m2 k3 v3 in
; builtin to_list m3
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_37" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_36"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_36" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_38"**, %"$TyDescrTy_ADTTyp_37"* }
%"$TyDescrTy_ADTTyp_Constr_38" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_41" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%"$ParamDescr_271" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_272" = type { %ParamDescrString, i32, %"$ParamDescr_271"* }
%"TName_List_Pair_(Int32)_(Int32)" = type { i8, %"CName_Cons_Pair_(Int32)_(Int32)"*, %"CName_Nil_Pair_(Int32)_(Int32)"* }
%"CName_Cons_Pair_(Int32)_(Int32)" = type <{ i8, %TName_Pair_Int32_Int32*, %"TName_List_Pair_(Int32)_(Int32)"* }>
%TName_Pair_Int32_Int32 = type { i8, %CName_Pair_Int32_Int32* }
%CName_Pair_Int32_Int32 = type <{ i8, %Int32, %Int32 }>
%"CName_Nil_Pair_(Int32)_(Int32)" = type <{ i8 }>
%Map_Int32_Int32 = type { %Int32, %Int32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_8" = global %"$TyDescrTy_PrimTyp_7" zeroinitializer
@"$TyDescr_Int32_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int32_Prim_8" to i8*) }
@"$TyDescr_Uint32_Prim_10" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 0 }
@"$TyDescr_Uint32_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint32_Prim_10" to i8*) }
@"$TyDescr_Int64_Prim_12" = global %"$TyDescrTy_PrimTyp_7" { i32 0, i32 1 }
@"$TyDescr_Int64_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int64_Prim_12" to i8*) }
@"$TyDescr_Uint64_Prim_14" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 1 }
@"$TyDescr_Uint64_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint64_Prim_14" to i8*) }
@"$TyDescr_Int128_Prim_16" = global %"$TyDescrTy_PrimTyp_7" { i32 0, i32 2 }
@"$TyDescr_Int128_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int128_Prim_16" to i8*) }
@"$TyDescr_Uint128_Prim_18" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 2 }
@"$TyDescr_Uint128_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint128_Prim_18" to i8*) }
@"$TyDescr_Int256_Prim_20" = global %"$TyDescrTy_PrimTyp_7" { i32 0, i32 3 }
@"$TyDescr_Int256_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int256_Prim_20" to i8*) }
@"$TyDescr_Uint256_Prim_22" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 3 }
@"$TyDescr_Uint256_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint256_Prim_22" to i8*) }
@"$TyDescr_String_Prim_24" = global %"$TyDescrTy_PrimTyp_7" { i32 2, i32 0 }
@"$TyDescr_String_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_String_Prim_24" to i8*) }
@"$TyDescr_Bnum_Prim_26" = global %"$TyDescrTy_PrimTyp_7" { i32 3, i32 0 }
@"$TyDescr_Bnum_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bnum_Prim_26" to i8*) }
@"$TyDescr_Message_Prim_28" = global %"$TyDescrTy_PrimTyp_7" { i32 4, i32 0 }
@"$TyDescr_Message_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Message_Prim_28" to i8*) }
@"$TyDescr_Event_Prim_30" = global %"$TyDescrTy_PrimTyp_7" { i32 5, i32 0 }
@"$TyDescr_Event_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Event_Prim_30" to i8*) }
@"$TyDescr_Exception_Prim_32" = global %"$TyDescrTy_PrimTyp_7" { i32 6, i32 0 }
@"$TyDescr_Exception_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Exception_Prim_32" to i8*) }
@"$TyDescr_Bystr_Prim_34" = global %"$TyDescrTy_PrimTyp_7" { i32 7, i32 0 }
@"$TyDescr_Bystr_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr_Prim_34" to i8*) }
@"$TyDescr_ADT_Pair_Int32_Int32_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_51" to i8*) }
@"$TyDescr_ADT_List_Pair_(Int32)_(Int32)_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Pair_(Int32)_(Int32)_ADTTyp_Specl_63" to i8*) }
@"$TyDescr_Map_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_41"* @"$TyDescr_MapTyp_66" to i8*) }
@"$TyDescr_Pair_ADTTyp_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_53", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_Pair_ADTTyp_m_specls_52", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int32_Int32_Constr_m_args_46" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@"$TyDescr_ADT_Pair_47" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int32_Int32_ADTTyp_Constr_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_47", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int32_Int32_Constr_m_args_46", i32 0, i32 0) }
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_constrs_49" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Pair_Pair_Int32_Int32_ADTTyp_Constr_48"]
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_TArgs_50" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_TArgs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_38"*], [1 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_constrs_49", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_Pair_ADTTyp_45" }
@"$TyDescr_Pair_ADTTyp_m_specls_52" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_51"]
@"$TyDescr_ADT_Pair_53" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_List_ADTTyp_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_65", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_List_ADTTyp_m_specls_64", i32 0, i32 0) }
@"$TyDescr_List_Cons_Pair_(Int32)_(Int32)_Constr_m_args_55" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int32_39", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Pair_(Int32)_(Int32)_40"]
@"$TyDescr_ADT_Cons_56" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Pair_(Int32)_(Int32)_ADTTyp_Constr_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_56", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Pair_(Int32)_(Int32)_Constr_m_args_55", i32 0, i32 0) }
@"$TyDescr_List_Nil_Pair_(Int32)_(Int32)_Constr_m_args_58" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_59" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Pair_(Int32)_(Int32)_ADTTyp_Constr_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_59", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Pair_(Int32)_(Int32)_Constr_m_args_58", i32 0, i32 0) }
@"$TyDescr_List_Pair_(Int32)_(Int32)_ADTTyp_Specl_m_constrs_61" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Cons_Pair_(Int32)_(Int32)_ADTTyp_Constr_57", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Nil_Pair_(Int32)_(Int32)_ADTTyp_Constr_60"]
@"$TyDescr_List_Pair_(Int32)_(Int32)_ADTTyp_Specl_m_TArgs_62" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int32_39"]
@"$TyDescr_List_Pair_(Int32)_(Int32)_ADTTyp_Specl_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Pair_(Int32)_(Int32)_ADTTyp_Specl_m_TArgs_62", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_List_Pair_(Int32)_(Int32)_ADTTyp_Specl_m_constrs_61", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_List_ADTTyp_54" }
@"$TyDescr_List_ADTTyp_m_specls_64" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Pair_(Int32)_(Int32)_ADTTyp_Specl_63"]
@"$TyDescr_ADT_List_65" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_MapTyp_66" = unnamed_addr constant %"$TyDescr_MapTyp_41" { %_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ* @"$TyDescr_Int32_9" }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Pair_(Int32)_(Int32)_40", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int32_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Map_42", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_271"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_272"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  %"$gasrem_67" = load i64, i64* @_gasrem, align 8
  %"$gascmp_68" = icmp ugt i64 5, %"$gasrem_67"
  br i1 %"$gascmp_68", label %"$out_of_gas_69", label %"$have_gas_70"

"$out_of_gas_69":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_70"

"$have_gas_70":                                   ; preds = %"$out_of_gas_69", %entry
  %"$consume_71" = sub i64 %"$gasrem_67", 5
  store i64 %"$consume_71", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_72" = load i64, i64* @_gasrem, align 8
  %"$gascmp_73" = icmp ugt i64 8, %"$gasrem_72"
  br i1 %"$gascmp_73", label %"$out_of_gas_74", label %"$have_gas_75"

"$out_of_gas_74":                                 ; preds = %"$have_gas_70"
  call void @_out_of_gas()
  br label %"$have_gas_75"

"$have_gas_75":                                   ; preds = %"$out_of_gas_74", %"$have_gas_70"
  %"$consume_76" = sub i64 %"$gasrem_72", 8
  store i64 %"$consume_76", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 196, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %"$have_gas_75"
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %"$have_gas_75"
  %"$consume_81" = sub i64 %"$gasrem_77", 196
  store i64 %"$consume_81", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_82" = load i64, i64* @_gasrem, align 8
  %"$gascmp_83" = icmp ugt i64 20, %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %"$have_gas_80"
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %"$have_gas_80"
  %"$consume_86" = sub i64 %"$gasrem_82", 20
  store i64 %"$consume_86", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_87" = load i64, i64* @_gasrem, align 8
  %"$gascmp_88" = icmp ugt i64 12, %"$gasrem_87"
  br i1 %"$gascmp_88", label %"$out_of_gas_89", label %"$have_gas_90"

"$out_of_gas_89":                                 ; preds = %"$have_gas_85"
  call void @_out_of_gas()
  br label %"$have_gas_90"

"$have_gas_90":                                   ; preds = %"$out_of_gas_89", %"$have_gas_85"
  %"$consume_91" = sub i64 %"$gasrem_87", 12
  store i64 %"$consume_91", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 2, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %"$have_gas_90"
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %"$have_gas_90"
  %"$consume_96" = sub i64 %"$gasrem_92", 2
  store i64 %"$consume_96", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

declare void @_out_of_gas()

define internal %"TName_List_Pair_(Int32)_(Int32)"* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_6" = alloca %"TName_List_Pair_(Int32)_(Int32)"*, align 8
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %entry
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem, align 8
  %k1 = alloca %Int32, align 8
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 1, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$have_gas_100"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$have_gas_100"
  %"$consume_106" = sub i64 %"$gasrem_102", 1
  store i64 %"$consume_106", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %k1, align 4
  %"$gasrem_107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_108" = icmp ugt i64 1, %"$gasrem_107"
  br i1 %"$gascmp_108", label %"$out_of_gas_109", label %"$have_gas_110"

"$out_of_gas_109":                                ; preds = %"$have_gas_105"
  call void @_out_of_gas()
  br label %"$have_gas_110"

"$have_gas_110":                                  ; preds = %"$out_of_gas_109", %"$have_gas_105"
  %"$consume_111" = sub i64 %"$gasrem_107", 1
  store i64 %"$consume_111", i64* @_gasrem, align 8
  %k2 = alloca %Int32, align 8
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %"$have_gas_110"
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %"$have_gas_110"
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* %k2, align 4
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 1, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %"$have_gas_115"
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %"$have_gas_115"
  %"$consume_121" = sub i64 %"$gasrem_117", 1
  store i64 %"$consume_121", i64* @_gasrem, align 8
  %k3 = alloca %Int32, align 8
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %"$have_gas_120"
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %"$have_gas_120"
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem, align 8
  store %Int32 { i32 3 }, %Int32* %k3, align 4
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_125"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_125"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem, align 8
  %v1 = alloca %Int32, align 8
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_130"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_130"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %v1, align 4
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 1, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$have_gas_135"
  %"$consume_141" = sub i64 %"$gasrem_137", 1
  store i64 %"$consume_141", i64* @_gasrem, align 8
  %v2 = alloca %Int32, align 8
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 1, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %"$have_gas_140"
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %"$have_gas_140"
  %"$consume_146" = sub i64 %"$gasrem_142", 1
  store i64 %"$consume_146", i64* @_gasrem, align 8
  store %Int32 { i32 239 }, %Int32* %v2, align 4
  %"$gasrem_147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %"$have_gas_145"
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %"$have_gas_145"
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem, align 8
  %v3 = alloca %Int32, align 8
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$have_gas_150"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$have_gas_150"
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem, align 8
  store %Int32 { i32 112 }, %Int32* %v3, align 4
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 1, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_155"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_155"
  %"$consume_161" = sub i64 %"$gasrem_157", 1
  store i64 %"$consume_161", i64* @_gasrem, align 8
  %m0 = alloca %Map_Int32_Int32*, align 8
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_160"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_160"
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %"$execptr_load_167" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_168" = call i8* @_new_empty_map(i8* %"$execptr_load_167")
  %"$_new_empty_map_169" = bitcast i8* %"$_new_empty_map_call_168" to %Map_Int32_Int32*
  store %Map_Int32_Int32* %"$_new_empty_map_169", %Map_Int32_Int32** %m0, align 8
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_165"
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %m1 = alloca %Map_Int32_Int32*, align 8
  %"$m0_175" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m0, align 8
  %"$$m0_175_176" = bitcast %Map_Int32_Int32* %"$m0_175" to i8*
  %"$_lengthof_call_177" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$m0_175_176")
  %"$gasadd_178" = add i64 1, %"$_lengthof_call_177"
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 %"$gasadd_178", %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %"$have_gas_173"
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %"$have_gas_173"
  %"$consume_183" = sub i64 %"$gasrem_179", %"$gasadd_178"
  store i64 %"$consume_183", i64* @_gasrem, align 8
  %"$execptr_load_184" = load i8*, i8** @_execptr, align 8
  %"$m0_185" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m0, align 8
  %"$$m0_185_186" = bitcast %Map_Int32_Int32* %"$m0_185" to i8*
  %"$put_k1_187" = alloca %Int32, align 8
  %"$k1_188" = load %Int32, %Int32* %k1, align 4
  store %Int32 %"$k1_188", %Int32* %"$put_k1_187", align 4
  %"$$put_k1_187_189" = bitcast %Int32* %"$put_k1_187" to i8*
  %"$put_v1_190" = alloca %Int32, align 8
  %"$v1_191" = load %Int32, %Int32* %v1, align 4
  store %Int32 %"$v1_191", %Int32* %"$put_v1_190", align 4
  %"$$put_v1_190_192" = bitcast %Int32* %"$put_v1_190" to i8*
  %"$put_call_193" = call i8* @_put(i8* %"$execptr_load_184", %_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$m0_185_186", i8* %"$$put_k1_187_189", i8* %"$$put_v1_190_192")
  %"$put_194" = bitcast i8* %"$put_call_193" to %Map_Int32_Int32*
  store %Map_Int32_Int32* %"$put_194", %Map_Int32_Int32** %m1, align 8
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_182"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_182"
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %m2 = alloca %Map_Int32_Int32*, align 8
  %"$m1_200" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m1, align 8
  %"$$m1_200_201" = bitcast %Map_Int32_Int32* %"$m1_200" to i8*
  %"$_lengthof_call_202" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$m1_200_201")
  %"$gasadd_203" = add i64 1, %"$_lengthof_call_202"
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 %"$gasadd_203", %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$have_gas_198"
  %"$consume_208" = sub i64 %"$gasrem_204", %"$gasadd_203"
  store i64 %"$consume_208", i64* @_gasrem, align 8
  %"$execptr_load_209" = load i8*, i8** @_execptr, align 8
  %"$m1_210" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m1, align 8
  %"$$m1_210_211" = bitcast %Map_Int32_Int32* %"$m1_210" to i8*
  %"$put_k2_212" = alloca %Int32, align 8
  %"$k2_213" = load %Int32, %Int32* %k2, align 4
  store %Int32 %"$k2_213", %Int32* %"$put_k2_212", align 4
  %"$$put_k2_212_214" = bitcast %Int32* %"$put_k2_212" to i8*
  %"$put_v2_215" = alloca %Int32, align 8
  %"$v2_216" = load %Int32, %Int32* %v2, align 4
  store %Int32 %"$v2_216", %Int32* %"$put_v2_215", align 4
  %"$$put_v2_215_217" = bitcast %Int32* %"$put_v2_215" to i8*
  %"$put_call_218" = call i8* @_put(i8* %"$execptr_load_209", %_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$m1_210_211", i8* %"$$put_k2_212_214", i8* %"$$put_v2_215_217")
  %"$put_219" = bitcast i8* %"$put_call_218" to %Map_Int32_Int32*
  store %Map_Int32_Int32* %"$put_219", %Map_Int32_Int32** %m2, align 8
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 1, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_207"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_207"
  %"$consume_224" = sub i64 %"$gasrem_220", 1
  store i64 %"$consume_224", i64* @_gasrem, align 8
  %m3 = alloca %Map_Int32_Int32*, align 8
  %"$m2_225" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m2, align 8
  %"$$m2_225_226" = bitcast %Map_Int32_Int32* %"$m2_225" to i8*
  %"$_lengthof_call_227" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$m2_225_226")
  %"$gasadd_228" = add i64 1, %"$_lengthof_call_227"
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 %"$gasadd_228", %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_223"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_223"
  %"$consume_233" = sub i64 %"$gasrem_229", %"$gasadd_228"
  store i64 %"$consume_233", i64* @_gasrem, align 8
  %"$execptr_load_234" = load i8*, i8** @_execptr, align 8
  %"$m2_235" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m2, align 8
  %"$$m2_235_236" = bitcast %Map_Int32_Int32* %"$m2_235" to i8*
  %"$put_k3_237" = alloca %Int32, align 8
  %"$k3_238" = load %Int32, %Int32* %k3, align 4
  store %Int32 %"$k3_238", %Int32* %"$put_k3_237", align 4
  %"$$put_k3_237_239" = bitcast %Int32* %"$put_k3_237" to i8*
  %"$put_v3_240" = alloca %Int32, align 8
  %"$v3_241" = load %Int32, %Int32* %v3, align 4
  store %Int32 %"$v3_241", %Int32* %"$put_v3_240", align 4
  %"$$put_v3_240_242" = bitcast %Int32* %"$put_v3_240" to i8*
  %"$put_call_243" = call i8* @_put(i8* %"$execptr_load_234", %_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$m2_235_236", i8* %"$$put_k3_237_239", i8* %"$$put_v3_240_242")
  %"$put_244" = bitcast i8* %"$put_call_243" to %Map_Int32_Int32*
  store %Map_Int32_Int32* %"$put_244", %Map_Int32_Int32** %m3, align 8
  %"$m3_245" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m3, align 8
  %"$$m3_245_246" = bitcast %Map_Int32_Int32* %"$m3_245" to i8*
  %"$_lengthof_call_247" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$m3_245_246")
  %"$m3_248" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m3, align 8
  %"$$m3_248_249" = bitcast %Map_Int32_Int32* %"$m3_248" to i8*
  %"$_lengthof_call_250" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$m3_248_249")
  %"$gaslogof_251" = uitofp i64 %"$_lengthof_call_250" to double
  %"$gaslogof_252" = fadd double %"$gaslogof_251", 1.000000e+00
  %"$gaslogof_253" = call double @llvm.log.f64(double %"$gaslogof_252")
  %"$gaslogof_254" = fptoui double %"$gaslogof_253" to i64
  %"$gaslogof_255" = add i64 %"$gaslogof_254", 1
  %"$gasmul_256" = mul i64 %"$_lengthof_call_247", %"$gaslogof_255"
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 %"$gasmul_256", %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$have_gas_232"
  %"$consume_261" = sub i64 %"$gasrem_257", %"$gasmul_256"
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %"$execptr_load_262" = load i8*, i8** @_execptr, align 8
  %"$m3_263" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m3, align 8
  %"$$m3_263_264" = bitcast %Map_Int32_Int32* %"$m3_263" to i8*
  %"$to_list_call_265" = call i8* @_map_to_list(i8* %"$execptr_load_262", %_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$m3_263_264")
  %"$to_list_266" = bitcast i8* %"$to_list_call_265" to %"TName_List_Pair_(Int32)_(Int32)"*
  store %"TName_List_Pair_(Int32)_(Int32)"* %"$to_list_266", %"TName_List_Pair_(Int32)_(Int32)"** %"$expr_6", align 8
  %"$$expr_6_267" = load %"TName_List_Pair_(Int32)_(Int32)"*, %"TName_List_Pair_(Int32)_(Int32)"** %"$expr_6", align 8
  ret %"TName_List_Pair_(Int32)_(Int32)"* %"$$expr_6_267"
}

declare i8* @_new_empty_map(i8*)

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.log.f64(double) #0

declare i8* @_map_to_list(i8*, %_TyDescrTy_Typ*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_268" = call %"TName_List_Pair_(Int32)_(Int32)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_269" = bitcast %"TName_List_Pair_(Int32)_(Int32)"* %"$exprval_268" to i8*
  %"$execptr_load_270" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_270", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Pair_(Int32)_(Int32)_40", i8* %"$memvoidcast_269")
  ret void
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
