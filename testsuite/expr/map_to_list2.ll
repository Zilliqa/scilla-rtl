; let k1 = BNum 1 in
; let k2 = BNum 2 in
; let k3 = BNum 3 in
; let v1 = Int32 42 in
; let v2 = Int32 239 in
; let v3 = Int32 112 in
; 
; let m0 = Emp BNum Int32 in
; let m1 = builtin put m0 k1 v1 in
; let m2 = builtin put m1 k2 v2 in
; let m3 = builtin put m2 k3 v3 in
; 
; let mm0 = Emp Int32 (Map BNum Int32) in
; let mm1 = builtin put mm0 v1 m3 in
; 
; builtin to_list mm1
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_37" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_36"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_36" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_38"**, %"$TyDescrTy_ADTTyp_37"* }
%"$TyDescrTy_ADTTyp_Constr_38" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_41" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%"$ParamDescr_319" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_320" = type { %ParamDescrString, i32, %"$ParamDescr_319"* }
%"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))" = type { i8, %"CName_Cons_Pair_(Int32)_(Map_(BNum)_(Int32))"*, %"CName_Nil_Pair_(Int32)_(Map_(BNum)_(Int32))"* }
%"CName_Cons_Pair_(Int32)_(Map_(BNum)_(Int32))" = type <{ i8, %"TName_Pair_Int32_Map_(BNum)_(Int32)"*, %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* }>
%"TName_Pair_Int32_Map_(BNum)_(Int32)" = type { i8, %"CName_Pair_Int32_Map_(BNum)_(Int32)"* }
%"CName_Pair_Int32_Map_(BNum)_(Int32)" = type <{ i8, %Int32, %Map_BNum_Int32* }>
%Map_BNum_Int32 = type { i8*, %Int32 }
%"CName_Nil_Pair_(Int32)_(Map_(BNum)_(Int32))" = type <{ i8 }>
%BNumString = type { i8*, i32 }
%"Map_Int32_Map_(BNum)_(Int32)" = type { %Int32, %Map_BNum_Int32* }

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
@"$TyDescr_ADT_Pair_Int32_Map_(BNum)_(Int32)_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_52" to i8*) }
@"$TyDescr_ADT_List_Pair_(Int32)_(Map_(BNum)_(Int32))_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_64" to i8*) }
@"$TyDescr_Map_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_41"* @"$TyDescr_MapTyp_67" to i8*) }
@"$TyDescr_Map_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_41"* @"$TyDescr_MapTyp_68" to i8*) }
@"$TyDescr_Pair_ADTTyp_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_54", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_Pair_ADTTyp_m_specls_53", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int32_Map_(BNum)_(Int32)_Constr_m_args_47" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ* @"$TyDescr_Map_43"]
@"$TyDescr_ADT_Pair_48" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_48", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int32_Map_(BNum)_(Int32)_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_m_constrs_50" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Pair_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Constr_49"]
@"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_m_TArgs_51" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ* @"$TyDescr_Map_43"]
@"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_m_TArgs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_38"*], [1 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_m_constrs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_Pair_ADTTyp_46" }
@"$TyDescr_Pair_ADTTyp_m_specls_53" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_52"]
@"$TyDescr_ADT_Pair_54" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_List_ADTTyp_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_66", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_List_ADTTyp_m_specls_65", i32 0, i32 0) }
@"$TyDescr_List_Cons_Pair_(Int32)_(Map_(BNum)_(Int32))_Constr_m_args_56" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Map_(BNum)_(Int32)_39", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Pair_(Int32)_(Map_(BNum)_(Int32))_40"]
@"$TyDescr_ADT_Cons_57" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Constr_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_57", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Pair_(Int32)_(Map_(BNum)_(Int32))_Constr_m_args_56", i32 0, i32 0) }
@"$TyDescr_List_Nil_Pair_(Int32)_(Map_(BNum)_(Int32))_Constr_m_args_59" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_60" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Constr_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_60", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Pair_(Int32)_(Map_(BNum)_(Int32))_Constr_m_args_59", i32 0, i32 0) }
@"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_m_constrs_62" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Cons_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Constr_58", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Nil_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Constr_61"]
@"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_m_TArgs_63" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Map_(BNum)_(Int32)_39"]
@"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_m_TArgs_63", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_m_constrs_62", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_List_ADTTyp_55" }
@"$TyDescr_List_ADTTyp_m_specls_65" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_64"]
@"$TyDescr_ADT_List_66" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_MapTyp_67" = unnamed_addr constant %"$TyDescr_MapTyp_41" { %_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ* @"$TyDescr_Map_43" }
@"$TyDescr_MapTyp_68" = unnamed_addr constant %"$TyDescr_MapTyp_41" { %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Int32_9" }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$BNumLit_109" = unnamed_addr constant [1 x i8] c"1"
@"$BNumLit_123" = unnamed_addr constant [1 x i8] c"2"
@"$BNumLit_137" = unnamed_addr constant [1 x i8] c"3"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Map_42", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Map_43", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Map_(BNum)_(Int32)_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Pair_(Int32)_(Map_(BNum)_(Int32))_40", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_319"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_320"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  %"$gasrem_69" = load i64, i64* @_gasrem, align 8
  %"$gascmp_70" = icmp ugt i64 5, %"$gasrem_69"
  br i1 %"$gascmp_70", label %"$out_of_gas_71", label %"$have_gas_72"

"$out_of_gas_71":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_72"

"$have_gas_72":                                   ; preds = %"$out_of_gas_71", %entry
  %"$consume_73" = sub i64 %"$gasrem_69", 5
  store i64 %"$consume_73", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_74" = load i64, i64* @_gasrem, align 8
  %"$gascmp_75" = icmp ugt i64 8, %"$gasrem_74"
  br i1 %"$gascmp_75", label %"$out_of_gas_76", label %"$have_gas_77"

"$out_of_gas_76":                                 ; preds = %"$have_gas_72"
  call void @_out_of_gas()
  br label %"$have_gas_77"

"$have_gas_77":                                   ; preds = %"$out_of_gas_76", %"$have_gas_72"
  %"$consume_78" = sub i64 %"$gasrem_74", 8
  store i64 %"$consume_78", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 196, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %"$have_gas_77"
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %"$have_gas_77"
  %"$consume_83" = sub i64 %"$gasrem_79", 196
  store i64 %"$consume_83", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_84" = load i64, i64* @_gasrem, align 8
  %"$gascmp_85" = icmp ugt i64 20, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %"$have_gas_82"
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %"$have_gas_82"
  %"$consume_88" = sub i64 %"$gasrem_84", 20
  store i64 %"$consume_88", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_89" = load i64, i64* @_gasrem, align 8
  %"$gascmp_90" = icmp ugt i64 12, %"$gasrem_89"
  br i1 %"$gascmp_90", label %"$out_of_gas_91", label %"$have_gas_92"

"$out_of_gas_91":                                 ; preds = %"$have_gas_87"
  call void @_out_of_gas()
  br label %"$have_gas_92"

"$have_gas_92":                                   ; preds = %"$out_of_gas_91", %"$have_gas_87"
  %"$consume_93" = sub i64 %"$gasrem_89", 12
  store i64 %"$consume_93", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 2, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %"$have_gas_92"
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %"$have_gas_92"
  %"$consume_98" = sub i64 %"$gasrem_94", 2
  store i64 %"$consume_98", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

declare void @_out_of_gas()

define internal %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_6" = alloca %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"*, align 8
  %"$gasrem_99" = load i64, i64* @_gasrem, align 8
  %"$gascmp_100" = icmp ugt i64 1, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %entry
  %"$consume_103" = sub i64 %"$gasrem_99", 1
  store i64 %"$consume_103", i64* @_gasrem, align 8
  %k1 = alloca i8*, align 8
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$have_gas_102"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$have_gas_102"
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %"$execptr_load_110" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_111" = call i8* @_new_bnum(i8* %"$execptr_load_110", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_109", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_111", i8** %k1, align 8
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 1, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$have_gas_107"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$have_gas_107"
  %"$consume_117" = sub i64 %"$gasrem_113", 1
  store i64 %"$consume_117", i64* @_gasrem, align 8
  %k2 = alloca i8*, align 8
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 1, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$have_gas_116"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$have_gas_116"
  %"$consume_122" = sub i64 %"$gasrem_118", 1
  store i64 %"$consume_122", i64* @_gasrem, align 8
  %"$execptr_load_124" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_125" = call i8* @_new_bnum(i8* %"$execptr_load_124", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_123", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_125", i8** %k2, align 8
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_121"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem, align 8
  %k3 = alloca i8*, align 8
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_130"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_130"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  %"$execptr_load_138" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_139" = call i8* @_new_bnum(i8* %"$execptr_load_138", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_137", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_139", i8** %k3, align 8
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_135"
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %v1 = alloca %Int32, align 8
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_144"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %v1, align 4
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_149"
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %v2 = alloca %Int32, align 8
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_154"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  store %Int32 { i32 239 }, %Int32* %v2, align 4
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_159"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  %v3 = alloca %Int32, align 8
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_164"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  store %Int32 { i32 112 }, %Int32* %v3, align 4
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_169"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %m0 = alloca %Map_BNum_Int32*, align 8
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_174"
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %"$execptr_load_181" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_182" = call i8* @_new_empty_map(i8* %"$execptr_load_181")
  %"$_new_empty_map_183" = bitcast i8* %"$_new_empty_map_call_182" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$_new_empty_map_183", %Map_BNum_Int32** %m0, align 8
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$have_gas_179"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %m1 = alloca %Map_BNum_Int32*, align 8
  %"$m0_189" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m0, align 8
  %"$$m0_189_190" = bitcast %Map_BNum_Int32* %"$m0_189" to i8*
  %"$_lengthof_call_191" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_43", i8* %"$$m0_189_190")
  %"$gasadd_192" = add i64 1, %"$_lengthof_call_191"
  %"$gasrem_193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_194" = icmp ugt i64 %"$gasadd_192", %"$gasrem_193"
  br i1 %"$gascmp_194", label %"$out_of_gas_195", label %"$have_gas_196"

"$out_of_gas_195":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_196"

"$have_gas_196":                                  ; preds = %"$out_of_gas_195", %"$have_gas_187"
  %"$consume_197" = sub i64 %"$gasrem_193", %"$gasadd_192"
  store i64 %"$consume_197", i64* @_gasrem, align 8
  %"$execptr_load_198" = load i8*, i8** @_execptr, align 8
  %"$m0_199" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m0, align 8
  %"$$m0_199_200" = bitcast %Map_BNum_Int32* %"$m0_199" to i8*
  %"$k1_201" = load i8*, i8** %k1, align 8
  %"$put_v1_203" = alloca %Int32, align 8
  %"$v1_204" = load %Int32, %Int32* %v1, align 4
  store %Int32 %"$v1_204", %Int32* %"$put_v1_203", align 4
  %"$$put_v1_203_205" = bitcast %Int32* %"$put_v1_203" to i8*
  %"$put_call_206" = call i8* @_put(i8* %"$execptr_load_198", %_TyDescrTy_Typ* @"$TyDescr_Map_43", i8* %"$$m0_199_200", i8* %"$k1_201", i8* %"$$put_v1_203_205")
  %"$put_207" = bitcast i8* %"$put_call_206" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$put_207", %Map_BNum_Int32** %m1, align 8
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 1, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_196"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_196"
  %"$consume_212" = sub i64 %"$gasrem_208", 1
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %m2 = alloca %Map_BNum_Int32*, align 8
  %"$m1_213" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m1, align 8
  %"$$m1_213_214" = bitcast %Map_BNum_Int32* %"$m1_213" to i8*
  %"$_lengthof_call_215" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_43", i8* %"$$m1_213_214")
  %"$gasadd_216" = add i64 1, %"$_lengthof_call_215"
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 %"$gasadd_216", %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_211"
  %"$consume_221" = sub i64 %"$gasrem_217", %"$gasadd_216"
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %"$execptr_load_222" = load i8*, i8** @_execptr, align 8
  %"$m1_223" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m1, align 8
  %"$$m1_223_224" = bitcast %Map_BNum_Int32* %"$m1_223" to i8*
  %"$k2_225" = load i8*, i8** %k2, align 8
  %"$put_v2_227" = alloca %Int32, align 8
  %"$v2_228" = load %Int32, %Int32* %v2, align 4
  store %Int32 %"$v2_228", %Int32* %"$put_v2_227", align 4
  %"$$put_v2_227_229" = bitcast %Int32* %"$put_v2_227" to i8*
  %"$put_call_230" = call i8* @_put(i8* %"$execptr_load_222", %_TyDescrTy_Typ* @"$TyDescr_Map_43", i8* %"$$m1_223_224", i8* %"$k2_225", i8* %"$$put_v2_227_229")
  %"$put_231" = bitcast i8* %"$put_call_230" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$put_231", %Map_BNum_Int32** %m2, align 8
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 1, %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %"$have_gas_220"
  %"$consume_236" = sub i64 %"$gasrem_232", 1
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %m3 = alloca %Map_BNum_Int32*, align 8
  %"$m2_237" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m2, align 8
  %"$$m2_237_238" = bitcast %Map_BNum_Int32* %"$m2_237" to i8*
  %"$_lengthof_call_239" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_43", i8* %"$$m2_237_238")
  %"$gasadd_240" = add i64 1, %"$_lengthof_call_239"
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 %"$gasadd_240", %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %"$have_gas_235"
  %"$consume_245" = sub i64 %"$gasrem_241", %"$gasadd_240"
  store i64 %"$consume_245", i64* @_gasrem, align 8
  %"$execptr_load_246" = load i8*, i8** @_execptr, align 8
  %"$m2_247" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m2, align 8
  %"$$m2_247_248" = bitcast %Map_BNum_Int32* %"$m2_247" to i8*
  %"$k3_249" = load i8*, i8** %k3, align 8
  %"$put_v3_251" = alloca %Int32, align 8
  %"$v3_252" = load %Int32, %Int32* %v3, align 4
  store %Int32 %"$v3_252", %Int32* %"$put_v3_251", align 4
  %"$$put_v3_251_253" = bitcast %Int32* %"$put_v3_251" to i8*
  %"$put_call_254" = call i8* @_put(i8* %"$execptr_load_246", %_TyDescrTy_Typ* @"$TyDescr_Map_43", i8* %"$$m2_247_248", i8* %"$k3_249", i8* %"$$put_v3_251_253")
  %"$put_255" = bitcast i8* %"$put_call_254" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$put_255", %Map_BNum_Int32** %m3, align 8
  %"$gasrem_256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_257" = icmp ugt i64 1, %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %"$have_gas_244"
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %"$have_gas_244"
  %"$consume_260" = sub i64 %"$gasrem_256", 1
  store i64 %"$consume_260", i64* @_gasrem, align 8
  %mm0 = alloca %"Map_Int32_Map_(BNum)_(Int32)"*, align 8
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_259"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_259"
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %"$execptr_load_266" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_267" = call i8* @_new_empty_map(i8* %"$execptr_load_266")
  %"$_new_empty_map_268" = bitcast i8* %"$_new_empty_map_call_267" to %"Map_Int32_Map_(BNum)_(Int32)"*
  store %"Map_Int32_Map_(BNum)_(Int32)"* %"$_new_empty_map_268", %"Map_Int32_Map_(BNum)_(Int32)"** %mm0, align 8
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_264"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_264"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %mm1 = alloca %"Map_Int32_Map_(BNum)_(Int32)"*, align 8
  %"$mm0_274" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %mm0, align 8
  %"$$mm0_274_275" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$mm0_274" to i8*
  %"$_lengthof_call_276" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$mm0_274_275")
  %"$gasadd_277" = add i64 1, %"$_lengthof_call_276"
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 %"$gasadd_277", %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$have_gas_272"
  %"$consume_282" = sub i64 %"$gasrem_278", %"$gasadd_277"
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %"$execptr_load_283" = load i8*, i8** @_execptr, align 8
  %"$mm0_284" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %mm0, align 8
  %"$$mm0_284_285" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$mm0_284" to i8*
  %"$put_v1_286" = alloca %Int32, align 8
  %"$v1_287" = load %Int32, %Int32* %v1, align 4
  store %Int32 %"$v1_287", %Int32* %"$put_v1_286", align 4
  %"$$put_v1_286_288" = bitcast %Int32* %"$put_v1_286" to i8*
  %"$m3_289" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m3, align 8
  %"$$m3_289_290" = bitcast %Map_BNum_Int32* %"$m3_289" to i8*
  %"$put_call_291" = call i8* @_put(i8* %"$execptr_load_283", %_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$mm0_284_285", i8* %"$$put_v1_286_288", i8* %"$$m3_289_290")
  %"$put_292" = bitcast i8* %"$put_call_291" to %"Map_Int32_Map_(BNum)_(Int32)"*
  store %"Map_Int32_Map_(BNum)_(Int32)"* %"$put_292", %"Map_Int32_Map_(BNum)_(Int32)"** %mm1, align 8
  %"$mm1_293" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %mm1, align 8
  %"$$mm1_293_294" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$mm1_293" to i8*
  %"$_lengthof_call_295" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$mm1_293_294")
  %"$mm1_296" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %mm1, align 8
  %"$$mm1_296_297" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$mm1_296" to i8*
  %"$_lengthof_call_298" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$mm1_296_297")
  %"$gaslogof_299" = uitofp i64 %"$_lengthof_call_298" to double
  %"$gaslogof_300" = fadd double %"$gaslogof_299", 1.000000e+00
  %"$gaslogof_301" = call double @llvm.log.f64(double %"$gaslogof_300")
  %"$gaslogof_302" = fptoui double %"$gaslogof_301" to i64
  %"$gaslogof_303" = add i64 %"$gaslogof_302", 1
  %"$gasmul_304" = mul i64 %"$_lengthof_call_295", %"$gaslogof_303"
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 %"$gasmul_304", %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_281"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_281"
  %"$consume_309" = sub i64 %"$gasrem_305", %"$gasmul_304"
  store i64 %"$consume_309", i64* @_gasrem, align 8
  %"$execptr_load_310" = load i8*, i8** @_execptr, align 8
  %"$mm1_311" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %mm1, align 8
  %"$$mm1_311_312" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$mm1_311" to i8*
  %"$to_list_call_313" = call i8* @_map_to_list(i8* %"$execptr_load_310", %_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$mm1_311_312")
  %"$to_list_314" = bitcast i8* %"$to_list_call_313" to %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"*
  store %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* %"$to_list_314", %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"** %"$expr_6", align 8
  %"$$expr_6_315" = load %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"*, %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"** %"$expr_6", align 8
  ret %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* %"$$expr_6_315"
}

declare i8* @_new_bnum(i8*, %BNumString)

declare i8* @_new_empty_map(i8*)

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.log.f64(double) #0

declare i8* @_map_to_list(i8*, %_TyDescrTy_Typ*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_316" = call %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_317" = bitcast %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* %"$exprval_316" to i8*
  %"$execptr_load_318" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_318", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Pair_(Int32)_(Map_(BNum)_(Int32))_40", i8* %"$memvoidcast_317")
  ret void
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
