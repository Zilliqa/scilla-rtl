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
%"$ParamDescr_227" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_228" = type { %ParamDescrString, i32, %"$ParamDescr_227"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_227"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_228"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define internal %"TName_List_Pair_(Int32)_(Int32)"* @_scilla_expr_fun(i8* %0) !dbg !9 {
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
  store %Int32 { i32 1 }, %Int32* %k1, align 4, !dbg !10
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
  store %Int32 { i32 2 }, %Int32* %k2, align 4, !dbg !11
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
  store %Int32 { i32 3 }, %Int32* %k3, align 4, !dbg !12
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
  store %Int32 { i32 42 }, %Int32* %v1, align 4, !dbg !13
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
  store %Int32 { i32 239 }, %Int32* %v2, align 4, !dbg !14
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
  store %Int32 { i32 112 }, %Int32* %v3, align 4, !dbg !15
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
  store %Map_Int32_Int32* %"$_new_empty_map_133", %Map_Int32_Int32** %m0, align 8, !dbg !16
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
  %"$m0_139" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m0, align 8
  %"$$m0_139_140" = bitcast %Map_Int32_Int32* %"$m0_139" to i8*
  %"$_lengthof_call_141" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$m0_139_140")
  %"$gasadd_142" = add i64 1, %"$_lengthof_call_141"
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 %"$gasadd_142", %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$have_gas_137"
  %"$consume_147" = sub i64 %"$gasrem_143", %"$gasadd_142"
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %"$execptr_load_148" = load i8*, i8** @_execptr, align 8
  %"$m0_149" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m0, align 8
  %"$$m0_149_150" = bitcast %Map_Int32_Int32* %"$m0_149" to i8*
  %"$put_k1_151" = alloca %Int32, align 8
  %"$k1_152" = load %Int32, %Int32* %k1, align 4
  store %Int32 %"$k1_152", %Int32* %"$put_k1_151", align 4
  %"$$put_k1_151_153" = bitcast %Int32* %"$put_k1_151" to i8*
  %"$put_v1_154" = alloca %Int32, align 8
  %"$v1_155" = load %Int32, %Int32* %v1, align 4
  store %Int32 %"$v1_155", %Int32* %"$put_v1_154", align 4
  %"$$put_v1_154_156" = bitcast %Int32* %"$put_v1_154" to i8*
  %"$put_call_157" = call i8* @_put(i8* %"$execptr_load_148", %_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$m0_149_150", i8* %"$$put_k1_151_153", i8* %"$$put_v1_154_156"), !dbg !17
  %"$put_158" = bitcast i8* %"$put_call_157" to %Map_Int32_Int32*
  store %Map_Int32_Int32* %"$put_158", %Map_Int32_Int32** %m1, align 8, !dbg !17
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_146"
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem, align 8
  %m2 = alloca %Map_Int32_Int32*, align 8
  %"$m1_164" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m1, align 8
  %"$$m1_164_165" = bitcast %Map_Int32_Int32* %"$m1_164" to i8*
  %"$_lengthof_call_166" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$m1_164_165")
  %"$gasadd_167" = add i64 1, %"$_lengthof_call_166"
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 %"$gasadd_167", %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %"$have_gas_162"
  %"$consume_172" = sub i64 %"$gasrem_168", %"$gasadd_167"
  store i64 %"$consume_172", i64* @_gasrem, align 8
  %"$execptr_load_173" = load i8*, i8** @_execptr, align 8
  %"$m1_174" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m1, align 8
  %"$$m1_174_175" = bitcast %Map_Int32_Int32* %"$m1_174" to i8*
  %"$put_k2_176" = alloca %Int32, align 8
  %"$k2_177" = load %Int32, %Int32* %k2, align 4
  store %Int32 %"$k2_177", %Int32* %"$put_k2_176", align 4
  %"$$put_k2_176_178" = bitcast %Int32* %"$put_k2_176" to i8*
  %"$put_v2_179" = alloca %Int32, align 8
  %"$v2_180" = load %Int32, %Int32* %v2, align 4
  store %Int32 %"$v2_180", %Int32* %"$put_v2_179", align 4
  %"$$put_v2_179_181" = bitcast %Int32* %"$put_v2_179" to i8*
  %"$put_call_182" = call i8* @_put(i8* %"$execptr_load_173", %_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$m1_174_175", i8* %"$$put_k2_176_178", i8* %"$$put_v2_179_181"), !dbg !18
  %"$put_183" = bitcast i8* %"$put_call_182" to %Map_Int32_Int32*
  store %Map_Int32_Int32* %"$put_183", %Map_Int32_Int32** %m2, align 8, !dbg !18
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$have_gas_171"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$have_gas_171"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %m3 = alloca %Map_Int32_Int32*, align 8
  %"$m2_189" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m2, align 8
  %"$$m2_189_190" = bitcast %Map_Int32_Int32* %"$m2_189" to i8*
  %"$_lengthof_call_191" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$m2_189_190")
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
  %"$m2_199" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m2, align 8
  %"$$m2_199_200" = bitcast %Map_Int32_Int32* %"$m2_199" to i8*
  %"$put_k3_201" = alloca %Int32, align 8
  %"$k3_202" = load %Int32, %Int32* %k3, align 4
  store %Int32 %"$k3_202", %Int32* %"$put_k3_201", align 4
  %"$$put_k3_201_203" = bitcast %Int32* %"$put_k3_201" to i8*
  %"$put_v3_204" = alloca %Int32, align 8
  %"$v3_205" = load %Int32, %Int32* %v3, align 4
  store %Int32 %"$v3_205", %Int32* %"$put_v3_204", align 4
  %"$$put_v3_204_206" = bitcast %Int32* %"$put_v3_204" to i8*
  %"$put_call_207" = call i8* @_put(i8* %"$execptr_load_198", %_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$m2_199_200", i8* %"$$put_k3_201_203", i8* %"$$put_v3_204_206"), !dbg !19
  %"$put_208" = bitcast i8* %"$put_call_207" to %Map_Int32_Int32*
  store %Map_Int32_Int32* %"$put_208", %Map_Int32_Int32** %m3, align 8, !dbg !19
  %"$m3_209" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m3, align 8
  %"$$m3_209_210" = bitcast %Map_Int32_Int32* %"$m3_209" to i8*
  %"$_lengthof_call_211" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$m3_209_210")
  %"$gasadd_212" = add i64 1, %"$_lengthof_call_211"
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 %"$gasadd_212", %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %"$have_gas_196"
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %"$have_gas_196"
  %"$consume_217" = sub i64 %"$gasrem_213", %"$gasadd_212"
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %"$execptr_load_218" = load i8*, i8** @_execptr, align 8
  %"$m3_219" = load %Map_Int32_Int32*, %Map_Int32_Int32** %m3, align 8
  %"$$m3_219_220" = bitcast %Map_Int32_Int32* %"$m3_219" to i8*
  %"$to_list_call_221" = call i8* @_map_to_list(i8* %"$execptr_load_218", %_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$m3_219_220"), !dbg !20
  %"$to_list_222" = bitcast i8* %"$to_list_call_221" to %"TName_List_Pair_(Int32)_(Int32)"*
  store %"TName_List_Pair_(Int32)_(Int32)"* %"$to_list_222", %"TName_List_Pair_(Int32)_(Int32)"** %"$expr_0", align 8, !dbg !20
  %"$$expr_0_223" = load %"TName_List_Pair_(Int32)_(Int32)"*, %"TName_List_Pair_(Int32)_(Int32)"** %"$expr_0", align 8
  ret %"TName_List_Pair_(Int32)_(Int32)"* %"$$expr_0_223"
}

declare void @_out_of_gas()

declare i8* @_new_empty_map(i8*)

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare i8* @_map_to_list(i8*, %_TyDescrTy_Typ*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_224" = call %"TName_List_Pair_(Int32)_(Int32)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_225" = bitcast %"TName_List_Pair_(Int32)_(Int32)"* %"$exprval_224" to i8*
  %"$execptr_load_226" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_226", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Pair_(Int32)_(Int32)_34", i8* %"$memvoidcast_225")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "map_to_list.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 1, column: 10, scope: !9)
!11 = !DILocation(line: 2, column: 10, scope: !9)
!12 = !DILocation(line: 3, column: 10, scope: !9)
!13 = !DILocation(line: 4, column: 10, scope: !9)
!14 = !DILocation(line: 5, column: 10, scope: !9)
!15 = !DILocation(line: 6, column: 10, scope: !9)
!16 = !DILocation(line: 8, column: 10, scope: !9)
!17 = !DILocation(line: 9, column: 10, scope: !9)
!18 = !DILocation(line: 10, column: 10, scope: !9)
!19 = !DILocation(line: 11, column: 10, scope: !9)
!20 = !DILocation(line: 12, column: 3, scope: !9)
