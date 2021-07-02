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
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_31" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_30"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_30" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_32"**, %"$TyDescrTy_ADTTyp_31"* }
%"$TyDescrTy_ADTTyp_Constr_32" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_35" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$ParamDescr_230" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_231" = type { %ParamDescrString, i32, %"$ParamDescr_230"* }
%"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))" = type { i8, %"CName_Cons_Pair_(Int32)_(Map_(BNum)_(Int32))"*, %"CName_Nil_Pair_(Int32)_(Map_(BNum)_(Int32))"* }
%"CName_Cons_Pair_(Int32)_(Map_(BNum)_(Int32))" = type <{ i8, %"TName_Pair_Int32_Map_(BNum)_(Int32)"*, %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* }>
%"TName_Pair_Int32_Map_(BNum)_(Int32)" = type { i8, %"CName_Pair_Int32_Map_(BNum)_(Int32)"* }
%"CName_Pair_Int32_Map_(BNum)_(Int32)" = type <{ i8, %Int32, %Map_BNum_Int32* }>
%Int32 = type { i32 }
%Map_BNum_Int32 = type { i8*, %Int32 }
%"CName_Nil_Pair_(Int32)_(Map_(BNum)_(Int32))" = type <{ i8 }>
%BNumString = type { i8*, i32 }
%"Map_Int32_Map_(BNum)_(Int32)" = type { %Int32, %Map_BNum_Int32* }

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
@"$TyDescr_ADT_Pair_Int32_Map_(BNum)_(Int32)_33" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_46" to i8*) }
@"$TyDescr_ADT_List_Pair_(Int32)_(Map_(BNum)_(Int32))_34" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_58" to i8*) }
@"$TyDescr_Map_36" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_35"* @"$TyDescr_MapTyp_61" to i8*) }
@"$TyDescr_Map_37" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_35"* @"$TyDescr_MapTyp_62" to i8*) }
@"$TyDescr_Pair_ADTTyp_40" = unnamed_addr constant %"$TyDescrTy_ADTTyp_31" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_48", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_30"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_30"*], [1 x %"$TyDescrTy_ADTTyp_Specl_30"*]* @"$TyDescr_Pair_ADTTyp_m_specls_47", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int32_Map_(BNum)_(Int32)_Constr_m_args_41" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ* @"$TyDescr_Map_37"]
@"$TyDescr_ADT_Pair_42" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Constr_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_42", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int32_Map_(BNum)_(Int32)_Constr_m_args_41", i32 0, i32 0) }
@"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_m_constrs_44" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_Pair_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Constr_43"]
@"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_m_TArgs_45" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ* @"$TyDescr_Map_37"]
@"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_m_TArgs_45", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_32"*], [1 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_m_constrs_44", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_Pair_ADTTyp_40" }
@"$TyDescr_Pair_ADTTyp_m_specls_47" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_30"*] [%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_Int32_Map_(BNum)_(Int32)_ADTTyp_Specl_46"]
@"$TyDescr_ADT_Pair_48" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_List_ADTTyp_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_31" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_60", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_30"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_30"*], [1 x %"$TyDescrTy_ADTTyp_Specl_30"*]* @"$TyDescr_List_ADTTyp_m_specls_59", i32 0, i32 0) }
@"$TyDescr_List_Cons_Pair_(Int32)_(Map_(BNum)_(Int32))_Constr_m_args_50" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Map_(BNum)_(Int32)_33", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Pair_(Int32)_(Map_(BNum)_(Int32))_34"]
@"$TyDescr_ADT_Cons_51" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Constr_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_51", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Pair_(Int32)_(Map_(BNum)_(Int32))_Constr_m_args_50", i32 0, i32 0) }
@"$TyDescr_List_Nil_Pair_(Int32)_(Map_(BNum)_(Int32))_Constr_m_args_53" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_54" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Constr_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_54", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Pair_(Int32)_(Map_(BNum)_(Int32))_Constr_m_args_53", i32 0, i32 0) }
@"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_m_constrs_56" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Cons_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Constr_52", %"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Nil_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Constr_55"]
@"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_m_TArgs_57" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Map_(BNum)_(Int32)_33"]
@"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_m_TArgs_57", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_32"*], [2 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_m_constrs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_List_ADTTyp_49" }
@"$TyDescr_List_ADTTyp_m_specls_59" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_30"*] [%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Pair_(Int32)_(Map_(BNum)_(Int32))_ADTTyp_Specl_58"]
@"$TyDescr_ADT_List_60" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_MapTyp_61" = unnamed_addr constant %"$TyDescr_MapTyp_35" { %_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ* @"$TyDescr_Map_37" }
@"$TyDescr_MapTyp_62" = unnamed_addr constant %"$TyDescr_MapTyp_35" { %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Int32_3" }
@"$BNumLit_73" = unnamed_addr constant [1 x i8] c"1"
@"$BNumLit_87" = unnamed_addr constant [1 x i8] c"2"
@"$BNumLit_101" = unnamed_addr constant [1 x i8] c"3"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Map_36", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Map_37", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Map_(BNum)_(Int32)_33", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Pair_(Int32)_(Map_(BNum)_(Int32))_34", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_230"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_231"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  ret void
}

define internal %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_0" = alloca %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"*, align 8
  %"$gasrem_63" = load i64, i64* @_gasrem, align 8
  %"$gascmp_64" = icmp ugt i64 1, %"$gasrem_63"
  br i1 %"$gascmp_64", label %"$out_of_gas_65", label %"$have_gas_66"

"$out_of_gas_65":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_66"

"$have_gas_66":                                   ; preds = %"$out_of_gas_65", %entry
  %"$consume_67" = sub i64 %"$gasrem_63", 1
  store i64 %"$consume_67", i64* @_gasrem, align 8
  %k1 = alloca i8*, align 8
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 1, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %"$have_gas_66"
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %"$have_gas_66"
  %"$consume_72" = sub i64 %"$gasrem_68", 1
  store i64 %"$consume_72", i64* @_gasrem, align 8
  %"$execptr_load_74" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_75" = call i8* @_new_bnum(i8* %"$execptr_load_74", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_73", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_75", i8** %k1, align 8
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %"$have_gas_71"
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %"$have_gas_71"
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem, align 8
  %k2 = alloca i8*, align 8
  %"$gasrem_82" = load i64, i64* @_gasrem, align 8
  %"$gascmp_83" = icmp ugt i64 1, %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %"$have_gas_80"
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %"$have_gas_80"
  %"$consume_86" = sub i64 %"$gasrem_82", 1
  store i64 %"$consume_86", i64* @_gasrem, align 8
  %"$execptr_load_88" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_89" = call i8* @_new_bnum(i8* %"$execptr_load_88", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_87", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_89", i8** %k2, align 8
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %"$have_gas_85"
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %"$have_gas_85"
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem, align 8
  %k3 = alloca i8*, align 8
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_94"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_94"
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  %"$execptr_load_102" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_103" = call i8* @_new_bnum(i8* %"$execptr_load_102", %BNumString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$BNumLit_101", i32 0, i32 0), i32 1 })
  store i8* %"$_new_bnum_call_103", i8** %k3, align 8
  %"$gasrem_105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_106" = icmp ugt i64 1, %"$gasrem_105"
  br i1 %"$gascmp_106", label %"$out_of_gas_107", label %"$have_gas_108"

"$out_of_gas_107":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_108"

"$have_gas_108":                                  ; preds = %"$out_of_gas_107", %"$have_gas_99"
  %"$consume_109" = sub i64 %"$gasrem_105", 1
  store i64 %"$consume_109", i64* @_gasrem, align 8
  %v1 = alloca %Int32, align 8
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_108"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_108"
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %v1, align 4
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 1, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %"$have_gas_113"
  %"$consume_119" = sub i64 %"$gasrem_115", 1
  store i64 %"$consume_119", i64* @_gasrem, align 8
  %v2 = alloca %Int32, align 8
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$have_gas_118"
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem, align 8
  store %Int32 { i32 239 }, %Int32* %v2, align 4
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_123"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %v3 = alloca %Int32, align 8
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  store %Int32 { i32 112 }, %Int32* %v3, align 4
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %m0 = alloca %Map_BNum_Int32*, align 8
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_138"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %"$execptr_load_145" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_146" = call i8* @_new_empty_map(i8* %"$execptr_load_145")
  %"$_new_empty_map_147" = bitcast i8* %"$_new_empty_map_call_146" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$_new_empty_map_147", %Map_BNum_Int32** %m0, align 8
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_143"
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %m1 = alloca %Map_BNum_Int32*, align 8
  %"$execptr_load_153" = load i8*, i8** @_execptr, align 8
  %"$m0_154" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m0, align 8
  %"$$m0_154_155" = bitcast %Map_BNum_Int32* %"$m0_154" to i8*
  %"$k1_156" = load i8*, i8** %k1, align 8
  %"$put_v1_158" = alloca %Int32, align 8
  %"$v1_159" = load %Int32, %Int32* %v1, align 4
  store %Int32 %"$v1_159", %Int32* %"$put_v1_158", align 4
  %"$$put_v1_158_160" = bitcast %Int32* %"$put_v1_158" to i8*
  %"$put_call_161" = call i8* @_put(i8* %"$execptr_load_153", %_TyDescrTy_Typ* @"$TyDescr_Map_37", i8* %"$$m0_154_155", i8* %"$k1_156", i8* %"$$put_v1_158_160")
  %"$put_162" = bitcast i8* %"$put_call_161" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$put_162", %Map_BNum_Int32** %m1, align 8
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %"$have_gas_151"
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %m2 = alloca %Map_BNum_Int32*, align 8
  %"$execptr_load_168" = load i8*, i8** @_execptr, align 8
  %"$m1_169" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m1, align 8
  %"$$m1_169_170" = bitcast %Map_BNum_Int32* %"$m1_169" to i8*
  %"$k2_171" = load i8*, i8** %k2, align 8
  %"$put_v2_173" = alloca %Int32, align 8
  %"$v2_174" = load %Int32, %Int32* %v2, align 4
  store %Int32 %"$v2_174", %Int32* %"$put_v2_173", align 4
  %"$$put_v2_173_175" = bitcast %Int32* %"$put_v2_173" to i8*
  %"$put_call_176" = call i8* @_put(i8* %"$execptr_load_168", %_TyDescrTy_Typ* @"$TyDescr_Map_37", i8* %"$$m1_169_170", i8* %"$k2_171", i8* %"$$put_v2_173_175")
  %"$put_177" = bitcast i8* %"$put_call_176" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$put_177", %Map_BNum_Int32** %m2, align 8
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 1, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_166"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_166"
  %"$consume_182" = sub i64 %"$gasrem_178", 1
  store i64 %"$consume_182", i64* @_gasrem, align 8
  %m3 = alloca %Map_BNum_Int32*, align 8
  %"$execptr_load_183" = load i8*, i8** @_execptr, align 8
  %"$m2_184" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m2, align 8
  %"$$m2_184_185" = bitcast %Map_BNum_Int32* %"$m2_184" to i8*
  %"$k3_186" = load i8*, i8** %k3, align 8
  %"$put_v3_188" = alloca %Int32, align 8
  %"$v3_189" = load %Int32, %Int32* %v3, align 4
  store %Int32 %"$v3_189", %Int32* %"$put_v3_188", align 4
  %"$$put_v3_188_190" = bitcast %Int32* %"$put_v3_188" to i8*
  %"$put_call_191" = call i8* @_put(i8* %"$execptr_load_183", %_TyDescrTy_Typ* @"$TyDescr_Map_37", i8* %"$$m2_184_185", i8* %"$k3_186", i8* %"$$put_v3_188_190")
  %"$put_192" = bitcast i8* %"$put_call_191" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$put_192", %Map_BNum_Int32** %m3, align 8
  %"$gasrem_193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_194" = icmp ugt i64 1, %"$gasrem_193"
  br i1 %"$gascmp_194", label %"$out_of_gas_195", label %"$have_gas_196"

"$out_of_gas_195":                                ; preds = %"$have_gas_181"
  call void @_out_of_gas()
  br label %"$have_gas_196"

"$have_gas_196":                                  ; preds = %"$out_of_gas_195", %"$have_gas_181"
  %"$consume_197" = sub i64 %"$gasrem_193", 1
  store i64 %"$consume_197", i64* @_gasrem, align 8
  %mm0 = alloca %"Map_Int32_Map_(BNum)_(Int32)"*, align 8
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 1, %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %"$have_gas_196"
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %"$have_gas_196"
  %"$consume_202" = sub i64 %"$gasrem_198", 1
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %"$execptr_load_203" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_204" = call i8* @_new_empty_map(i8* %"$execptr_load_203")
  %"$_new_empty_map_205" = bitcast i8* %"$_new_empty_map_call_204" to %"Map_Int32_Map_(BNum)_(Int32)"*
  store %"Map_Int32_Map_(BNum)_(Int32)"* %"$_new_empty_map_205", %"Map_Int32_Map_(BNum)_(Int32)"** %mm0, align 8
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 1, %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %"$have_gas_201"
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %"$have_gas_201"
  %"$consume_210" = sub i64 %"$gasrem_206", 1
  store i64 %"$consume_210", i64* @_gasrem, align 8
  %mm1 = alloca %"Map_Int32_Map_(BNum)_(Int32)"*, align 8
  %"$execptr_load_211" = load i8*, i8** @_execptr, align 8
  %"$mm0_212" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %mm0, align 8
  %"$$mm0_212_213" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$mm0_212" to i8*
  %"$put_v1_214" = alloca %Int32, align 8
  %"$v1_215" = load %Int32, %Int32* %v1, align 4
  store %Int32 %"$v1_215", %Int32* %"$put_v1_214", align 4
  %"$$put_v1_214_216" = bitcast %Int32* %"$put_v1_214" to i8*
  %"$m3_217" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m3, align 8
  %"$$m3_217_218" = bitcast %Map_BNum_Int32* %"$m3_217" to i8*
  %"$put_call_219" = call i8* @_put(i8* %"$execptr_load_211", %_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$mm0_212_213", i8* %"$$put_v1_214_216", i8* %"$$m3_217_218")
  %"$put_220" = bitcast i8* %"$put_call_219" to %"Map_Int32_Map_(BNum)_(Int32)"*
  store %"Map_Int32_Map_(BNum)_(Int32)"* %"$put_220", %"Map_Int32_Map_(BNum)_(Int32)"** %mm1, align 8
  %"$execptr_load_221" = load i8*, i8** @_execptr, align 8
  %"$mm1_222" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %mm1, align 8
  %"$$mm1_222_223" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$mm1_222" to i8*
  %"$to_list_call_224" = call i8* @_map_to_list(i8* %"$execptr_load_221", %_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$mm1_222_223")
  %"$to_list_225" = bitcast i8* %"$to_list_call_224" to %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"*
  store %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* %"$to_list_225", %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"** %"$expr_0", align 8
  %"$$expr_0_226" = load %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"*, %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"** %"$expr_0", align 8
  ret %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* %"$$expr_0_226"
}

declare void @_out_of_gas()

declare i8* @_new_bnum(i8*, %BNumString)

declare i8* @_new_empty_map(i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare i8* @_map_to_list(i8*, %_TyDescrTy_Typ*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_227" = call %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_228" = bitcast %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* %"$exprval_227" to i8*
  %"$execptr_load_229" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_229", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Pair_(Int32)_(Map_(BNum)_(Int32))_34", i8* %"$memvoidcast_228")
  ret void
}
