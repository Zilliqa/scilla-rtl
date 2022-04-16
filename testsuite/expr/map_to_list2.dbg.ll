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
%"$TyDescrTy_ADTTyp_39" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_38"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_38" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_40"**, %"$TyDescrTy_ADTTyp_39"* }
%"$TyDescrTy_ADTTyp_Constr_40" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_43" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%"$ParamDescr_321" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_322" = type { %ParamDescrString, i32, %"$ParamDescr_321"* }
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
@"$TyDescr_ReplicateContr_Prim_34" = global %"$TyDescrTy_PrimTyp_7" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_ReplicateContr_Prim_34" to i8*) }
@"$TyDescr_Bystr_Prim_36" = global %"$TyDescrTy_PrimTyp_7" { i32 7, i32 0 }
@"$TyDescr_Bystr_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr_Prim_36" to i8*) }
@"$TyDescr_ADT_Pair_Int32_Map_(BNum)_(Int32)_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_54" to i8*) }
@"$TyDescr_ADT_List_Pair_(Int32)_(Map_(BNum)_(Int32))_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_66" to i8*) }
@"$TyDescr_Map_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_43"* @"$TyDescr_MapTyp_69" to i8*) }
@"$TyDescr_Map_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_43"* @"$TyDescr_MapTyp_70" to i8*) }
@"$TyDescr_Pair_ADTTyp_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_56", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_38"*], [1 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_Pair_ADTTyp_m_specls_55", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int32_Map_(BNum)_(Int32)_Constr_m_args_49" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ* @"$TyDescr_Map_45"]
@"$TyDescr_ADT_Pair_50" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Constr_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_50", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int32_Map_(BNum)_(Int32)_Constr_m_args_49", i32 0, i32 0) }
@"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_m_constrs_52" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Pair_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Constr_51"]
@"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_m_TArgs_53" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ* @"$TyDescr_Map_45"]
@"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_m_TArgs_53", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_40"*], [1 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_m_constrs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Pair_ADTTyp_48" }
@"$TyDescr_Pair_ADTTyp_m_specls_55" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_54"]
@"$TyDescr_ADT_Pair_56" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_List_ADTTyp_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_68", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_38"*], [1 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_List_ADTTyp_m_specls_67", i32 0, i32 0) }
@"$TyDescr_List_Cons_Pair_(Int32)_(Map_(BNum)_(Int32))_Constr_m_args_58" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Map_(BNum)_(Int32)_41", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Pair_(Int32)_(Map_(BNum)_(Int32))_42"]
@"$TyDescr_ADT_Cons_59" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Constr_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_59", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Pair_(Int32)_(Map_(BNum)_(Int32))_Constr_m_args_58", i32 0, i32 0) }
@"$TyDescr_List_Nil_Pair_(Int32)_(Map_(BNum)_(Int32))_Constr_m_args_61" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_62" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Constr_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_62", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Pair_(Int32)_(Map_(BNum)_(Int32))_Constr_m_args_61", i32 0, i32 0) }
@"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_m_constrs_64" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_List_Cons_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Constr_60", %"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_List_Nil_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Constr_63"]
@"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_m_TArgs_65" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Map_(BNum)_(Int32)_41"]
@"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_66" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_m_TArgs_65", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_40"*], [2 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_m_constrs_64", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_List_ADTTyp_57" }
@"$TyDescr_List_ADTTyp_m_specls_67" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_66"]
@"$TyDescr_ADT_List_68" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_MapTyp_69" = unnamed_addr constant %"$TyDescr_MapTyp_43" { %_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ* @"$TyDescr_Map_45" }
@"$TyDescr_MapTyp_70" = unnamed_addr constant %"$TyDescr_MapTyp_43" { %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Int32_9" }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$BNumLit_111" = unnamed_addr constant [1 x i8] c"1"
@"$BNumLit_125" = unnamed_addr constant [1 x i8] c"2"
@"$BNumLit_139" = unnamed_addr constant [1 x i8] c"3"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Map_44", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Map_45", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Map_(BNum)_(Int32)_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Pair_(Int32)_(Map_(BNum)_(Int32))_42", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 19
@_contract_parameters = constant [0 x %"$ParamDescr_321"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_322"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 5, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %entry
  %"$consume_75" = sub i64 %"$gasrem_71", 5
  store i64 %"$consume_75", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !9
  %"$gasrem_76" = load i64, i64* @_gasrem, align 8
  %"$gascmp_77" = icmp ugt i64 8, %"$gasrem_76"
  br i1 %"$gascmp_77", label %"$out_of_gas_78", label %"$have_gas_79"

"$out_of_gas_78":                                 ; preds = %"$have_gas_74"
  call void @_out_of_gas()
  br label %"$have_gas_79"

"$have_gas_79":                                   ; preds = %"$out_of_gas_78", %"$have_gas_74"
  %"$consume_80" = sub i64 %"$gasrem_76", 8
  store i64 %"$consume_80", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !9
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 196, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %"$have_gas_79"
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %"$have_gas_79"
  %"$consume_85" = sub i64 %"$gasrem_81", 196
  store i64 %"$consume_85", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !9
  %"$gasrem_86" = load i64, i64* @_gasrem, align 8
  %"$gascmp_87" = icmp ugt i64 20, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %"$have_gas_84"
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %"$have_gas_84"
  %"$consume_90" = sub i64 %"$gasrem_86", 20
  store i64 %"$consume_90", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !9
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 12, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %"$have_gas_89"
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %"$have_gas_89"
  %"$consume_95" = sub i64 %"$gasrem_91", 12
  store i64 %"$consume_95", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !9
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 2, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_94"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_94"
  %"$consume_100" = sub i64 %"$gasrem_96", 2
  store i64 %"$consume_100", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define internal %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* @_scilla_expr_fun(i8* %0) !dbg !10 {
entry:
  %"$expr_6" = alloca %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"*, align 8
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 1, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %entry
  %"$consume_105" = sub i64 %"$gasrem_101", 1
  store i64 %"$consume_105", i64* @_gasrem, align 8
  %k1 = alloca i8*, align 8
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_104"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_104"
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %"$execptr_load_112" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_113" = call i8* @_new_bnum(i8* %"$execptr_load_112", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_111", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_113", i8** %k1, align 8, !dbg !11
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 1, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %"$have_gas_109"
  %"$consume_119" = sub i64 %"$gasrem_115", 1
  store i64 %"$consume_119", i64* @_gasrem, align 8
  %k2 = alloca i8*, align 8
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$have_gas_118"
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem, align 8
  %"$execptr_load_126" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_127" = call i8* @_new_bnum(i8* %"$execptr_load_126", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_125", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_127", i8** %k2, align 8, !dbg !12
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_123"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %k3 = alloca i8*, align 8
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  %"$execptr_load_140" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_141" = call i8* @_new_bnum(i8* %"$execptr_load_140", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_139", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_141", i8** %k3, align 8, !dbg !13
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$have_gas_137"
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %v1 = alloca %Int32, align 8
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_146"
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %v1, align 4, !dbg !14
  %"$gasrem_153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_154" = icmp ugt i64 1, %"$gasrem_153"
  br i1 %"$gascmp_154", label %"$out_of_gas_155", label %"$have_gas_156"

"$out_of_gas_155":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_156"

"$have_gas_156":                                  ; preds = %"$out_of_gas_155", %"$have_gas_151"
  %"$consume_157" = sub i64 %"$gasrem_153", 1
  store i64 %"$consume_157", i64* @_gasrem, align 8
  %v2 = alloca %Int32, align 8
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 1, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %"$have_gas_156"
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %"$have_gas_156"
  %"$consume_162" = sub i64 %"$gasrem_158", 1
  store i64 %"$consume_162", i64* @_gasrem, align 8
  store %Int32 { i32 239 }, %Int32* %v2, align 4, !dbg !15
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %"$have_gas_161"
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %"$have_gas_161"
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %v3 = alloca %Int32, align 8
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %"$have_gas_166"
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %"$have_gas_166"
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  store %Int32 { i32 112 }, %Int32* %v3, align 4, !dbg !16
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 1, %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %"$have_gas_171"
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %"$have_gas_171"
  %"$consume_177" = sub i64 %"$gasrem_173", 1
  store i64 %"$consume_177", i64* @_gasrem, align 8
  %m0 = alloca %Map_BNum_Int32*, align 8
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 1, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_176"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_176"
  %"$consume_182" = sub i64 %"$gasrem_178", 1
  store i64 %"$consume_182", i64* @_gasrem, align 8
  %"$execptr_load_183" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_184" = call i8* @_new_empty_map(i8* %"$execptr_load_183")
  %"$_new_empty_map_185" = bitcast i8* %"$_new_empty_map_call_184" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$_new_empty_map_185", %Map_BNum_Int32** %m0, align 8, !dbg !17
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$have_gas_181"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$have_gas_181"
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %m1 = alloca %Map_BNum_Int32*, align 8
  %"$m0_191" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m0, align 8
  %"$$m0_191_192" = bitcast %Map_BNum_Int32* %"$m0_191" to i8*
  %"$_lengthof_call_193" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_45", i8* %"$$m0_191_192")
  %"$gasadd_194" = add i64 1, %"$_lengthof_call_193"
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 %"$gasadd_194", %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_189"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_189"
  %"$consume_199" = sub i64 %"$gasrem_195", %"$gasadd_194"
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %"$execptr_load_200" = load i8*, i8** @_execptr, align 8
  %"$m0_201" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m0, align 8
  %"$$m0_201_202" = bitcast %Map_BNum_Int32* %"$m0_201" to i8*
  %"$k1_203" = load i8*, i8** %k1, align 8
  %"$put_v1_205" = alloca %Int32, align 8
  %"$v1_206" = load %Int32, %Int32* %v1, align 4
  store %Int32 %"$v1_206", %Int32* %"$put_v1_205", align 4
  %"$$put_v1_205_207" = bitcast %Int32* %"$put_v1_205" to i8*
  %"$put_call_208" = call i8* @_put(i8* %"$execptr_load_200", %_TyDescrTy_Typ* @"$TyDescr_Map_45", i8* %"$$m0_201_202", i8* %"$k1_203", i8* %"$$put_v1_205_207"), !dbg !18
  %"$put_209" = bitcast i8* %"$put_call_208" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$put_209", %Map_BNum_Int32** %m1, align 8, !dbg !18
  %"$gasrem_210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_211" = icmp ugt i64 1, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %"$have_gas_198"
  %"$consume_214" = sub i64 %"$gasrem_210", 1
  store i64 %"$consume_214", i64* @_gasrem, align 8
  %m2 = alloca %Map_BNum_Int32*, align 8
  %"$m1_215" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m1, align 8
  %"$$m1_215_216" = bitcast %Map_BNum_Int32* %"$m1_215" to i8*
  %"$_lengthof_call_217" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_45", i8* %"$$m1_215_216")
  %"$gasadd_218" = add i64 1, %"$_lengthof_call_217"
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 %"$gasadd_218", %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_213"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_213"
  %"$consume_223" = sub i64 %"$gasrem_219", %"$gasadd_218"
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %"$execptr_load_224" = load i8*, i8** @_execptr, align 8
  %"$m1_225" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m1, align 8
  %"$$m1_225_226" = bitcast %Map_BNum_Int32* %"$m1_225" to i8*
  %"$k2_227" = load i8*, i8** %k2, align 8
  %"$put_v2_229" = alloca %Int32, align 8
  %"$v2_230" = load %Int32, %Int32* %v2, align 4
  store %Int32 %"$v2_230", %Int32* %"$put_v2_229", align 4
  %"$$put_v2_229_231" = bitcast %Int32* %"$put_v2_229" to i8*
  %"$put_call_232" = call i8* @_put(i8* %"$execptr_load_224", %_TyDescrTy_Typ* @"$TyDescr_Map_45", i8* %"$$m1_225_226", i8* %"$k2_227", i8* %"$$put_v2_229_231"), !dbg !19
  %"$put_233" = bitcast i8* %"$put_call_232" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$put_233", %Map_BNum_Int32** %m2, align 8, !dbg !19
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_222"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %m3 = alloca %Map_BNum_Int32*, align 8
  %"$m2_239" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m2, align 8
  %"$$m2_239_240" = bitcast %Map_BNum_Int32* %"$m2_239" to i8*
  %"$_lengthof_call_241" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_45", i8* %"$$m2_239_240")
  %"$gasadd_242" = add i64 1, %"$_lengthof_call_241"
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 %"$gasadd_242", %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$have_gas_237"
  %"$consume_247" = sub i64 %"$gasrem_243", %"$gasadd_242"
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %"$execptr_load_248" = load i8*, i8** @_execptr, align 8
  %"$m2_249" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m2, align 8
  %"$$m2_249_250" = bitcast %Map_BNum_Int32* %"$m2_249" to i8*
  %"$k3_251" = load i8*, i8** %k3, align 8
  %"$put_v3_253" = alloca %Int32, align 8
  %"$v3_254" = load %Int32, %Int32* %v3, align 4
  store %Int32 %"$v3_254", %Int32* %"$put_v3_253", align 4
  %"$$put_v3_253_255" = bitcast %Int32* %"$put_v3_253" to i8*
  %"$put_call_256" = call i8* @_put(i8* %"$execptr_load_248", %_TyDescrTy_Typ* @"$TyDescr_Map_45", i8* %"$$m2_249_250", i8* %"$k3_251", i8* %"$$put_v3_253_255"), !dbg !20
  %"$put_257" = bitcast i8* %"$put_call_256" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$put_257", %Map_BNum_Int32** %m3, align 8, !dbg !20
  %"$gasrem_258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_259" = icmp ugt i64 1, %"$gasrem_258"
  br i1 %"$gascmp_259", label %"$out_of_gas_260", label %"$have_gas_261"

"$out_of_gas_260":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_261"

"$have_gas_261":                                  ; preds = %"$out_of_gas_260", %"$have_gas_246"
  %"$consume_262" = sub i64 %"$gasrem_258", 1
  store i64 %"$consume_262", i64* @_gasrem, align 8
  %mm0 = alloca %"Map_Int32_Map_(BNum)_(Int32)"*, align 8
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 1, %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_261"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_261"
  %"$consume_267" = sub i64 %"$gasrem_263", 1
  store i64 %"$consume_267", i64* @_gasrem, align 8
  %"$execptr_load_268" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_269" = call i8* @_new_empty_map(i8* %"$execptr_load_268")
  %"$_new_empty_map_270" = bitcast i8* %"$_new_empty_map_call_269" to %"Map_Int32_Map_(BNum)_(Int32)"*
  store %"Map_Int32_Map_(BNum)_(Int32)"* %"$_new_empty_map_270", %"Map_Int32_Map_(BNum)_(Int32)"** %mm0, align 8, !dbg !21
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 1, %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %"$have_gas_266"
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %"$have_gas_266"
  %"$consume_275" = sub i64 %"$gasrem_271", 1
  store i64 %"$consume_275", i64* @_gasrem, align 8
  %mm1 = alloca %"Map_Int32_Map_(BNum)_(Int32)"*, align 8
  %"$mm0_276" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %mm0, align 8
  %"$$mm0_276_277" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$mm0_276" to i8*
  %"$_lengthof_call_278" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_44", i8* %"$$mm0_276_277")
  %"$gasadd_279" = add i64 1, %"$_lengthof_call_278"
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 %"$gasadd_279", %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %"$have_gas_274"
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %"$have_gas_274"
  %"$consume_284" = sub i64 %"$gasrem_280", %"$gasadd_279"
  store i64 %"$consume_284", i64* @_gasrem, align 8
  %"$execptr_load_285" = load i8*, i8** @_execptr, align 8
  %"$mm0_286" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %mm0, align 8
  %"$$mm0_286_287" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$mm0_286" to i8*
  %"$put_v1_288" = alloca %Int32, align 8
  %"$v1_289" = load %Int32, %Int32* %v1, align 4
  store %Int32 %"$v1_289", %Int32* %"$put_v1_288", align 4
  %"$$put_v1_288_290" = bitcast %Int32* %"$put_v1_288" to i8*
  %"$m3_291" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m3, align 8
  %"$$m3_291_292" = bitcast %Map_BNum_Int32* %"$m3_291" to i8*
  %"$put_call_293" = call i8* @_put(i8* %"$execptr_load_285", %_TyDescrTy_Typ* @"$TyDescr_Map_44", i8* %"$$mm0_286_287", i8* %"$$put_v1_288_290", i8* %"$$m3_291_292"), !dbg !22
  %"$put_294" = bitcast i8* %"$put_call_293" to %"Map_Int32_Map_(BNum)_(Int32)"*
  store %"Map_Int32_Map_(BNum)_(Int32)"* %"$put_294", %"Map_Int32_Map_(BNum)_(Int32)"** %mm1, align 8, !dbg !22
  %"$mm1_295" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %mm1, align 8
  %"$$mm1_295_296" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$mm1_295" to i8*
  %"$_lengthof_call_297" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_44", i8* %"$$mm1_295_296")
  %"$mm1_298" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %mm1, align 8
  %"$$mm1_298_299" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$mm1_298" to i8*
  %"$_lengthof_call_300" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_44", i8* %"$$mm1_298_299")
  %"$gaslogof_301" = uitofp i64 %"$_lengthof_call_300" to double
  %"$gaslogof_302" = fadd double %"$gaslogof_301", 1.000000e+00
  %"$gaslogof_303" = call double @llvm.log.f64(double %"$gaslogof_302")
  %"$gaslogof_304" = fptoui double %"$gaslogof_303" to i64
  %"$gaslogof_305" = add i64 %"$gaslogof_304", 1
  %"$gasmul_306" = mul i64 %"$_lengthof_call_297", %"$gaslogof_305"
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 %"$gasmul_306", %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_283"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_283"
  %"$consume_311" = sub i64 %"$gasrem_307", %"$gasmul_306"
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %"$execptr_load_312" = load i8*, i8** @_execptr, align 8
  %"$mm1_313" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %mm1, align 8
  %"$$mm1_313_314" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$mm1_313" to i8*
  %"$to_list_call_315" = call i8* @_map_to_list(i8* %"$execptr_load_312", %_TyDescrTy_Typ* @"$TyDescr_Map_44", i8* %"$$mm1_313_314"), !dbg !23
  %"$to_list_316" = bitcast i8* %"$to_list_call_315" to %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"*
  store %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* %"$to_list_316", %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"** %"$expr_6", align 8, !dbg !23
  %"$$expr_6_317" = load %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"*, %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"** %"$expr_6", align 8
  ret %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* %"$$expr_6_317"
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
  %"$exprval_318" = call %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_319" = bitcast %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* %"$exprval_318" to i8*
  %"$execptr_load_320" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_320", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Pair_(Int32)_(Map_(BNum)_(Int32))_42", i8* %"$memvoidcast_319")
  ret void
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "map_to_list2.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 1, column: 10, scope: !10)
!12 = !DILocation(line: 2, column: 10, scope: !10)
!13 = !DILocation(line: 3, column: 10, scope: !10)
!14 = !DILocation(line: 4, column: 10, scope: !10)
!15 = !DILocation(line: 5, column: 10, scope: !10)
!16 = !DILocation(line: 6, column: 10, scope: !10)
!17 = !DILocation(line: 8, column: 10, scope: !10)
!18 = !DILocation(line: 9, column: 10, scope: !10)
!19 = !DILocation(line: 10, column: 10, scope: !10)
!20 = !DILocation(line: 11, column: 10, scope: !10)
!21 = !DILocation(line: 13, column: 11, scope: !10)
!22 = !DILocation(line: 14, column: 11, scope: !10)
!23 = !DILocation(line: 16, column: 1, scope: !10)
