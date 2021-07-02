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

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_31" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_30"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_30" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_32"**, %"$TyDescrTy_ADTTyp_31"* }
%"$TyDescrTy_ADTTyp_Constr_32" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_35" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$ParamDescr_191" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_192" = type { %ParamDescrString, i32, %"$ParamDescr_191"* }
%"TName_List_Pair_(Int32)_(Int32)" = type { i8, %"CName_Cons_Pair_(Int32)_(Int32)"*, %"CName_Nil_Pair_(Int32)_(Int32)"* }
%"CName_Cons_Pair_(Int32)_(Int32)" = type <{ i8, %TName_Pair_Int32_Int32*, %"TName_List_Pair_(Int32)_(Int32)"* }>
%TName_Pair_Int32_Int32 = type { i8, %CName_Pair_Int32_Int32* }
%CName_Pair_Int32_Int32 = type <{ i8, %Int32, %Int32 }>
%Int32 = type { i32 }
%"CName_Nil_Pair_(Int32)_(Int32)" = type <{ i8 }>
%Map_Int32_Int32 = type { %Int32, %Int32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_2" = global %"$TyDescrTy_PrimTyp_1" zeroinitializer
@"$TyDescr_Int32_3" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int32_Prim_2" to i8*) }
@"$TyDescr_Uint32_Prim_4" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 0 }
@"$TyDescr_Uint32_5" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint32_Prim_4" to i8*) }
@"$TyDescr_Int64_Prim_6" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 1 }
@"$TyDescr_Int64_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int64_Prim_6" to i8*) }
@"$TyDescr_Uint64_Prim_8" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 1 }
@"$TyDescr_Uint64_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint64_Prim_8" to i8*) }
@"$TyDescr_Int128_Prim_10" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 2 }
@"$TyDescr_Int128_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int128_Prim_10" to i8*) }
@"$TyDescr_Uint128_Prim_12" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 2 }
@"$TyDescr_Uint128_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint128_Prim_12" to i8*) }
@"$TyDescr_Int256_Prim_14" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 3 }
@"$TyDescr_Int256_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int256_Prim_14" to i8*) }
@"$TyDescr_Uint256_Prim_16" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 3 }
@"$TyDescr_Uint256_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint256_Prim_16" to i8*) }
@"$TyDescr_String_Prim_18" = global %"$TyDescrTy_PrimTyp_1" { i32 2, i32 0 }
@"$TyDescr_String_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_String_Prim_18" to i8*) }
@"$TyDescr_Bnum_Prim_20" = global %"$TyDescrTy_PrimTyp_1" { i32 3, i32 0 }
@"$TyDescr_Bnum_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bnum_Prim_20" to i8*) }
@"$TyDescr_Message_Prim_22" = global %"$TyDescrTy_PrimTyp_1" { i32 4, i32 0 }
@"$TyDescr_Message_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Message_Prim_22" to i8*) }
@"$TyDescr_Event_Prim_24" = global %"$TyDescrTy_PrimTyp_1" { i32 5, i32 0 }
@"$TyDescr_Event_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Event_Prim_24" to i8*) }
@"$TyDescr_Exception_Prim_26" = global %"$TyDescrTy_PrimTyp_1" { i32 6, i32 0 }
@"$TyDescr_Exception_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Exception_Prim_26" to i8*) }
@"$TyDescr_Bystr_Prim_28" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_28" to i8*) }
@"$TyDescr_ADT_Pair_Int32_Int32_33" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_45" to i8*) }
@"$TyDescr_ADT_List_Pair_(Int32)_(Int32)_34" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Pair_(Int32)_(Int32)_ADTTyp_Specl_57" to i8*) }
@"$TyDescr_Map_36" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_35"* @"$TyDescr_MapTyp_60" to i8*) }
@"$TyDescr_Pair_ADTTyp_39" = unnamed_addr constant %"$TyDescrTy_ADTTyp_31" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_47", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_30"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_30"*], [1 x %"$TyDescrTy_ADTTyp_Specl_30"*]* @"$TyDescr_Pair_ADTTyp_m_specls_46", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int32_Int32_Constr_m_args_40" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_ADT_Pair_41" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int32_Int32_ADTTyp_Constr_42" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_41", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int32_Int32_Constr_m_args_40", i32 0, i32 0) }
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_constrs_43" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_Pair_Pair_Int32_Int32_ADTTyp_Constr_42"]
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_TArgs_44" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_TArgs_44", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_32"*], [1 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_constrs_43", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_Pair_ADTTyp_39" }
@"$TyDescr_Pair_ADTTyp_m_specls_46" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_30"*] [%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_45"]
@"$TyDescr_ADT_Pair_47" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_List_ADTTyp_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_31" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_59", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_30"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_30"*], [1 x %"$TyDescrTy_ADTTyp_Specl_30"*]* @"$TyDescr_List_ADTTyp_m_specls_58", i32 0, i32 0) }
@"$TyDescr_List_Cons_Pair_(Int32)_(Int32)_Constr_m_args_49" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int32_33", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Pair_(Int32)_(Int32)_34"]
@"$TyDescr_ADT_Cons_50" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Pair_(Int32)_(Int32)_ADTTyp_Constr_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_50", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Pair_(Int32)_(Int32)_Constr_m_args_49", i32 0, i32 0) }
@"$TyDescr_List_Nil_Pair_(Int32)_(Int32)_Constr_m_args_52" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_53" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Pair_(Int32)_(Int32)_ADTTyp_Constr_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_53", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Pair_(Int32)_(Int32)_Constr_m_args_52", i32 0, i32 0) }
@"$TyDescr_List_Pair_(Int32)_(Int32)_ADTTyp_Specl_m_constrs_55" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Cons_Pair_(Int32)_(Int32)_ADTTyp_Constr_51", %"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Nil_Pair_(Int32)_(Int32)_ADTTyp_Constr_54"]
@"$TyDescr_List_Pair_(Int32)_(Int32)_ADTTyp_Specl_m_TArgs_56" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int32_33"]
@"$TyDescr_List_Pair_(Int32)_(Int32)_ADTTyp_Specl_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Pair_(Int32)_(Int32)_ADTTyp_Specl_m_TArgs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_32"*], [2 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_List_Pair_(Int32)_(Int32)_ADTTyp_Specl_m_constrs_55", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_List_ADTTyp_48" }
@"$TyDescr_List_ADTTyp_m_specls_58" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_30"*] [%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Pair_(Int32)_(Int32)_ADTTyp_Specl_57"]
@"$TyDescr_ADT_List_59" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_MapTyp_60" = unnamed_addr constant %"$TyDescr_MapTyp_35" { %_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ* @"$TyDescr_Int32_3" }
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Pair_(Int32)_(Int32)_34", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int32_33", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Map_36", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_191"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_192"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  ret void
}

define internal %"TName_List_Pair_(Int32)_(Int32)"* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_0" = alloca %"TName_List_Pair_(Int32)_(Int32)"*, align 8
  %"$gasrem_61" = load i64, i64* @_gasrem, align 8
  %"$gascmp_62" = icmp ugt i64 1, %"$gasrem_61"
  br i1 %"$gascmp_62", label %"$out_of_gas_63", label %"$have_gas_64"

"$out_of_gas_63":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_64"

"$have_gas_64":                                   ; preds = %"$out_of_gas_63", %entry
  %"$consume_65" = sub i64 %"$gasrem_61", 1
  store i64 %"$consume_65", i64* @_gasrem, align 8
  %k1 = alloca %Int32, align 8
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 1, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %"$have_gas_64"
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %"$have_gas_64"
  %"$consume_70" = sub i64 %"$gasrem_66", 1
  store i64 %"$consume_70", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %k1, align 4
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 1, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %"$have_gas_69"
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %"$have_gas_69"
  %"$consume_75" = sub i64 %"$gasrem_71", 1
  store i64 %"$consume_75", i64* @_gasrem, align 8
  %k2 = alloca %Int32, align 8
  %"$gasrem_76" = load i64, i64* @_gasrem, align 8
  %"$gascmp_77" = icmp ugt i64 1, %"$gasrem_76"
  br i1 %"$gascmp_77", label %"$out_of_gas_78", label %"$have_gas_79"

"$out_of_gas_78":                                 ; preds = %"$have_gas_74"
  call void @_out_of_gas()
  br label %"$have_gas_79"

"$have_gas_79":                                   ; preds = %"$out_of_gas_78", %"$have_gas_74"
  %"$consume_80" = sub i64 %"$gasrem_76", 1
  store i64 %"$consume_80", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* %k2, align 4
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 1, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %"$have_gas_79"
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %"$have_gas_79"
  %"$consume_85" = sub i64 %"$gasrem_81", 1
  store i64 %"$consume_85", i64* @_gasrem, align 8
  %k3 = alloca %Int32, align 8
  %"$gasrem_86" = load i64, i64* @_gasrem, align 8
  %"$gascmp_87" = icmp ugt i64 1, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %"$have_gas_84"
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %"$have_gas_84"
  %"$consume_90" = sub i64 %"$gasrem_86", 1
  store i64 %"$consume_90", i64* @_gasrem, align 8
  store %Int32 { i32 3 }, %Int32* %k3, align 4
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %"$have_gas_89"
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %"$have_gas_89"
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem, align 8
  %v1 = alloca %Int32, align 8
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_94"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_94"
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %v1, align 4
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 1, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %"$have_gas_99"
  %"$consume_105" = sub i64 %"$gasrem_101", 1
  store i64 %"$consume_105", i64* @_gasrem, align 8
  %v2 = alloca %Int32, align 8
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_104"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_104"
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  store %Int32 { i32 239 }, %Int32* %v2, align 4
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 1, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_109"
  %"$consume_115" = sub i64 %"$gasrem_111", 1
  store i64 %"$consume_115", i64* @_gasrem, align 8
  %v3 = alloca %Int32, align 8
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$have_gas_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem, align 8
  store %Int32 { i32 112 }, %Int32* %v3, align 4
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_119"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_119"
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  %m0 = alloca %Map_Int32_Int32*, align 8
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_124"
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  %"$execptr_load_131" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_132" = call i8* @_new_empty_map(i8* %"$execptr_load_131")
  %"$_new_empty_map_133" = bitcast i8* %"$_new_empty_map_call_132" to %Map_Int32_Int32*
  store %Map_Int32_Int32* %"$_new_empty_map_133", %Map_Int32_Int32** %m0, align 8
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_129"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  %m1 = alloca %Map_Int32_Int32*, align 8
  %"$execptr_load_139" = load i8*, i8** @_execptr, align 8
  %"$m0_140" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m0, align 8
  %"$$m0_140_141" = bitcast %Map_Int32_Int32* %"$m0_140" to i8*
  %"$put_k1_142" = alloca %Int32, align 8
  %"$k1_143" = load %Int32, %Int32* %k1, align 4
  store %Int32 %"$k1_143", %Int32* %"$put_k1_142", align 4
  %"$$put_k1_142_144" = bitcast %Int32* %"$put_k1_142" to i8*
  %"$put_v1_145" = alloca %Int32, align 8
  %"$v1_146" = load %Int32, %Int32* %v1, align 4
  store %Int32 %"$v1_146", %Int32* %"$put_v1_145", align 4
  %"$$put_v1_145_147" = bitcast %Int32* %"$put_v1_145" to i8*
  %"$put_call_148" = call i8* @_put(i8* %"$execptr_load_139", %_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$m0_140_141", i8* %"$$put_k1_142_144", i8* %"$$put_v1_145_147")
  %"$put_149" = bitcast i8* %"$put_call_148" to %Map_Int32_Int32*
  store %Map_Int32_Int32* %"$put_149", %Map_Int32_Int32** %m1, align 8
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_137"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  %m2 = alloca %Map_Int32_Int32*, align 8
  %"$execptr_load_155" = load i8*, i8** @_execptr, align 8
  %"$m1_156" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m1, align 8
  %"$$m1_156_157" = bitcast %Map_Int32_Int32* %"$m1_156" to i8*
  %"$put_k2_158" = alloca %Int32, align 8
  %"$k2_159" = load %Int32, %Int32* %k2, align 4
  store %Int32 %"$k2_159", %Int32* %"$put_k2_158", align 4
  %"$$put_k2_158_160" = bitcast %Int32* %"$put_k2_158" to i8*
  %"$put_v2_161" = alloca %Int32, align 8
  %"$v2_162" = load %Int32, %Int32* %v2, align 4
  store %Int32 %"$v2_162", %Int32* %"$put_v2_161", align 4
  %"$$put_v2_161_163" = bitcast %Int32* %"$put_v2_161" to i8*
  %"$put_call_164" = call i8* @_put(i8* %"$execptr_load_155", %_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$m1_156_157", i8* %"$$put_k2_158_160", i8* %"$$put_v2_161_163")
  %"$put_165" = bitcast i8* %"$put_call_164" to %Map_Int32_Int32*
  store %Map_Int32_Int32* %"$put_165", %Map_Int32_Int32** %m2, align 8
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_153"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  %m3 = alloca %Map_Int32_Int32*, align 8
  %"$execptr_load_171" = load i8*, i8** @_execptr, align 8
  %"$m2_172" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m2, align 8
  %"$$m2_172_173" = bitcast %Map_Int32_Int32* %"$m2_172" to i8*
  %"$put_k3_174" = alloca %Int32, align 8
  %"$k3_175" = load %Int32, %Int32* %k3, align 4
  store %Int32 %"$k3_175", %Int32* %"$put_k3_174", align 4
  %"$$put_k3_174_176" = bitcast %Int32* %"$put_k3_174" to i8*
  %"$put_v3_177" = alloca %Int32, align 8
  %"$v3_178" = load %Int32, %Int32* %v3, align 4
  store %Int32 %"$v3_178", %Int32* %"$put_v3_177", align 4
  %"$$put_v3_177_179" = bitcast %Int32* %"$put_v3_177" to i8*
  %"$put_call_180" = call i8* @_put(i8* %"$execptr_load_171", %_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$m2_172_173", i8* %"$$put_k3_174_176", i8* %"$$put_v3_177_179")
  %"$put_181" = bitcast i8* %"$put_call_180" to %Map_Int32_Int32*
  store %Map_Int32_Int32* %"$put_181", %Map_Int32_Int32** %m3, align 8
  %"$execptr_load_182" = load i8*, i8** @_execptr, align 8
  %"$m3_183" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m3, align 8
  %"$$m3_183_184" = bitcast %Map_Int32_Int32* %"$m3_183" to i8*
  %"$to_list_call_185" = call i8* @_map_to_list(i8* %"$execptr_load_182", %_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$m3_183_184")
  %"$to_list_186" = bitcast i8* %"$to_list_call_185" to %"TName_List_Pair_(Int32)_(Int32)"*
  store %"TName_List_Pair_(Int32)_(Int32)"* %"$to_list_186", %"TName_List_Pair_(Int32)_(Int32)"** %"$expr_0", align 8
  %"$$expr_0_187" = load %"TName_List_Pair_(Int32)_(Int32)"*, %"TName_List_Pair_(Int32)_(Int32)"** %"$expr_0", align 8
  ret %"TName_List_Pair_(Int32)_(Int32)"* %"$$expr_0_187"
}

declare void @_out_of_gas()

declare i8* @_new_empty_map(i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare i8* @_map_to_list(i8*, %_TyDescrTy_Typ*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_188" = call %"TName_List_Pair_(Int32)_(Int32)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_189" = bitcast %"TName_List_Pair_(Int32)_(Int32)"* %"$exprval_188" to i8*
  %"$execptr_load_190" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_190", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Pair_(Int32)_(Int32)_34", i8* %"$memvoidcast_189")
  ret void
}
