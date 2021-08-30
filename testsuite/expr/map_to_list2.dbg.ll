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
%"$ParamDescr_283" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_284" = type { %ParamDescrString, i32, %"$ParamDescr_283"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_283"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_284"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define internal %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* @_scilla_expr_fun(i8* %0) !dbg !9 {
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
  store i8* %"$_new_bnum_call_75", i8** %k1, align 8, !dbg !10
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
  store i8* %"$_new_bnum_call_89", i8** %k2, align 8, !dbg !11
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
  store i8* %"$_new_bnum_call_103", i8** %k3, align 8, !dbg !12
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
  store %Int32 { i32 42 }, %Int32* %v1, align 4, !dbg !13
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
  store %Int32 { i32 239 }, %Int32* %v2, align 4, !dbg !14
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
  store %Int32 { i32 112 }, %Int32* %v3, align 4, !dbg !15
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
  store %Map_BNum_Int32* %"$_new_empty_map_147", %Map_BNum_Int32** %m0, align 8, !dbg !16
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
  %"$m0_153" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m0, align 8
  %"$$m0_153_154" = bitcast %Map_BNum_Int32* %"$m0_153" to i8*
  %"$_lengthof_call_155" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_37", i8* %"$$m0_153_154")
  %"$gasadd_156" = add i64 1, %"$_lengthof_call_155"
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 %"$gasadd_156", %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_151"
  %"$consume_161" = sub i64 %"$gasrem_157", %"$gasadd_156"
  store i64 %"$consume_161", i64* @_gasrem, align 8
  %"$execptr_load_162" = load i8*, i8** @_execptr, align 8
  %"$m0_163" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m0, align 8
  %"$$m0_163_164" = bitcast %Map_BNum_Int32* %"$m0_163" to i8*
  %"$k1_165" = load i8*, i8** %k1, align 8
  %"$put_v1_167" = alloca %Int32, align 8
  %"$v1_168" = load %Int32, %Int32* %v1, align 4
  store %Int32 %"$v1_168", %Int32* %"$put_v1_167", align 4
  %"$$put_v1_167_169" = bitcast %Int32* %"$put_v1_167" to i8*
  %"$put_call_170" = call i8* @_put(i8* %"$execptr_load_162", %_TyDescrTy_Typ* @"$TyDescr_Map_37", i8* %"$$m0_163_164", i8* %"$k1_165", i8* %"$$put_v1_167_169"), !dbg !17
  %"$put_171" = bitcast i8* %"$put_call_170" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$put_171", %Map_BNum_Int32** %m1, align 8, !dbg !17
  %"$gasrem_172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_173" = icmp ugt i64 1, %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %"$have_gas_160"
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %"$have_gas_160"
  %"$consume_176" = sub i64 %"$gasrem_172", 1
  store i64 %"$consume_176", i64* @_gasrem, align 8
  %m2 = alloca %Map_BNum_Int32*, align 8
  %"$m1_177" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m1, align 8
  %"$$m1_177_178" = bitcast %Map_BNum_Int32* %"$m1_177" to i8*
  %"$_lengthof_call_179" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_37", i8* %"$$m1_177_178")
  %"$gasadd_180" = add i64 1, %"$_lengthof_call_179"
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 %"$gasadd_180", %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_175"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_175"
  %"$consume_185" = sub i64 %"$gasrem_181", %"$gasadd_180"
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %"$execptr_load_186" = load i8*, i8** @_execptr, align 8
  %"$m1_187" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m1, align 8
  %"$$m1_187_188" = bitcast %Map_BNum_Int32* %"$m1_187" to i8*
  %"$k2_189" = load i8*, i8** %k2, align 8
  %"$put_v2_191" = alloca %Int32, align 8
  %"$v2_192" = load %Int32, %Int32* %v2, align 4
  store %Int32 %"$v2_192", %Int32* %"$put_v2_191", align 4
  %"$$put_v2_191_193" = bitcast %Int32* %"$put_v2_191" to i8*
  %"$put_call_194" = call i8* @_put(i8* %"$execptr_load_186", %_TyDescrTy_Typ* @"$TyDescr_Map_37", i8* %"$$m1_187_188", i8* %"$k2_189", i8* %"$$put_v2_191_193"), !dbg !18
  %"$put_195" = bitcast i8* %"$put_call_194" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$put_195", %Map_BNum_Int32** %m2, align 8, !dbg !18
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 1, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %"$have_gas_184"
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %"$have_gas_184"
  %"$consume_200" = sub i64 %"$gasrem_196", 1
  store i64 %"$consume_200", i64* @_gasrem, align 8
  %m3 = alloca %Map_BNum_Int32*, align 8
  %"$m2_201" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m2, align 8
  %"$$m2_201_202" = bitcast %Map_BNum_Int32* %"$m2_201" to i8*
  %"$_lengthof_call_203" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_37", i8* %"$$m2_201_202")
  %"$gasadd_204" = add i64 1, %"$_lengthof_call_203"
  %"$gasrem_205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_206" = icmp ugt i64 %"$gasadd_204", %"$gasrem_205"
  br i1 %"$gascmp_206", label %"$out_of_gas_207", label %"$have_gas_208"

"$out_of_gas_207":                                ; preds = %"$have_gas_199"
  call void @_out_of_gas()
  br label %"$have_gas_208"

"$have_gas_208":                                  ; preds = %"$out_of_gas_207", %"$have_gas_199"
  %"$consume_209" = sub i64 %"$gasrem_205", %"$gasadd_204"
  store i64 %"$consume_209", i64* @_gasrem, align 8
  %"$execptr_load_210" = load i8*, i8** @_execptr, align 8
  %"$m2_211" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m2, align 8
  %"$$m2_211_212" = bitcast %Map_BNum_Int32* %"$m2_211" to i8*
  %"$k3_213" = load i8*, i8** %k3, align 8
  %"$put_v3_215" = alloca %Int32, align 8
  %"$v3_216" = load %Int32, %Int32* %v3, align 4
  store %Int32 %"$v3_216", %Int32* %"$put_v3_215", align 4
  %"$$put_v3_215_217" = bitcast %Int32* %"$put_v3_215" to i8*
  %"$put_call_218" = call i8* @_put(i8* %"$execptr_load_210", %_TyDescrTy_Typ* @"$TyDescr_Map_37", i8* %"$$m2_211_212", i8* %"$k3_213", i8* %"$$put_v3_215_217"), !dbg !19
  %"$put_219" = bitcast i8* %"$put_call_218" to %Map_BNum_Int32*
  store %Map_BNum_Int32* %"$put_219", %Map_BNum_Int32** %m3, align 8, !dbg !19
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 1, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_208"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_208"
  %"$consume_224" = sub i64 %"$gasrem_220", 1
  store i64 %"$consume_224", i64* @_gasrem, align 8
  %mm0 = alloca %"Map_Int32_Map_(BNum)_(Int32)"*, align 8
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 1, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_223"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_223"
  %"$consume_229" = sub i64 %"$gasrem_225", 1
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %"$execptr_load_230" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_231" = call i8* @_new_empty_map(i8* %"$execptr_load_230")
  %"$_new_empty_map_232" = bitcast i8* %"$_new_empty_map_call_231" to %"Map_Int32_Map_(BNum)_(Int32)"*
  store %"Map_Int32_Map_(BNum)_(Int32)"* %"$_new_empty_map_232", %"Map_Int32_Map_(BNum)_(Int32)"** %mm0, align 8, !dbg !20
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_228"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_228"
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %mm1 = alloca %"Map_Int32_Map_(BNum)_(Int32)"*, align 8
  %"$mm0_238" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %mm0, align 8
  %"$$mm0_238_239" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$mm0_238" to i8*
  %"$_lengthof_call_240" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$mm0_238_239")
  %"$gasadd_241" = add i64 1, %"$_lengthof_call_240"
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 %"$gasadd_241", %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_236"
  %"$consume_246" = sub i64 %"$gasrem_242", %"$gasadd_241"
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %"$execptr_load_247" = load i8*, i8** @_execptr, align 8
  %"$mm0_248" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %mm0, align 8
  %"$$mm0_248_249" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$mm0_248" to i8*
  %"$put_v1_250" = alloca %Int32, align 8
  %"$v1_251" = load %Int32, %Int32* %v1, align 4
  store %Int32 %"$v1_251", %Int32* %"$put_v1_250", align 4
  %"$$put_v1_250_252" = bitcast %Int32* %"$put_v1_250" to i8*
  %"$m3_253" = load %Map_BNum_Int32*, %Map_BNum_Int32** %m3, align 8
  %"$$m3_253_254" = bitcast %Map_BNum_Int32* %"$m3_253" to i8*
  %"$put_call_255" = call i8* @_put(i8* %"$execptr_load_247", %_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$mm0_248_249", i8* %"$$put_v1_250_252", i8* %"$$m3_253_254"), !dbg !21
  %"$put_256" = bitcast i8* %"$put_call_255" to %"Map_Int32_Map_(BNum)_(Int32)"*
  store %"Map_Int32_Map_(BNum)_(Int32)"* %"$put_256", %"Map_Int32_Map_(BNum)_(Int32)"** %mm1, align 8, !dbg !21
  %"$mm1_257" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %mm1, align 8
  %"$$mm1_257_258" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$mm1_257" to i8*
  %"$_lengthof_call_259" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$mm1_257_258")
  %"$mm1_260" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %mm1, align 8
  %"$$mm1_260_261" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$mm1_260" to i8*
  %"$_lengthof_call_262" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$mm1_260_261")
  %"$gaslogof_263" = uitofp i64 %"$_lengthof_call_262" to float
  %"$gaslogof_264" = fadd float %"$gaslogof_263", 1.000000e+00
  %"$gaslogof_265" = call float @llvm.log.f32(float %"$gaslogof_264")
  %"$gaslogof_266" = fptoui float %"$gaslogof_265" to i64
  %"$gaslogof_267" = add i64 %"$gaslogof_266", 1
  %"$gasmul_268" = mul i64 %"$_lengthof_call_259", %"$gaslogof_267"
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 %"$gasmul_268", %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_245"
  %"$consume_273" = sub i64 %"$gasrem_269", %"$gasmul_268"
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %"$execptr_load_274" = load i8*, i8** @_execptr, align 8
  %"$mm1_275" = load %"Map_Int32_Map_(BNum)_(Int32)"*, %"Map_Int32_Map_(BNum)_(Int32)"** %mm1, align 8
  %"$$mm1_275_276" = bitcast %"Map_Int32_Map_(BNum)_(Int32)"* %"$mm1_275" to i8*
  %"$to_list_call_277" = call i8* @_map_to_list(i8* %"$execptr_load_274", %_TyDescrTy_Typ* @"$TyDescr_Map_36", i8* %"$$mm1_275_276"), !dbg !22
  %"$to_list_278" = bitcast i8* %"$to_list_call_277" to %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"*
  store %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* %"$to_list_278", %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"** %"$expr_0", align 8, !dbg !22
  %"$$expr_0_279" = load %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"*, %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"** %"$expr_0", align 8
  ret %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* %"$$expr_0_279"
}

declare void @_out_of_gas()

declare i8* @_new_bnum(i8*, %BNumString)

declare i8* @_new_empty_map(i8*)

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.log.f32(float) #0

declare i8* @_map_to_list(i8*, %_TyDescrTy_Typ*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_280" = call %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_281" = bitcast %"TName_List_Pair_(Int32)_(Map_(BNum)_(Int32))"* %"$exprval_280" to i8*
  %"$execptr_load_282" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_282", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Pair_(Int32)_(Map_(BNum)_(Int32))_34", i8* %"$memvoidcast_281")
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
!20 = !DILocation(line: 13, column: 11, scope: !9)
!21 = !DILocation(line: 14, column: 11, scope: !9)
!22 = !DILocation(line: 16, column: 1, scope: !9)
