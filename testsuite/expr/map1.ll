; let b = Emp Int32 (Map String Int32) in
; let nil = Nil { Map Int32 (Map String Int32)} in
; let c = Cons { Map Int32 (Map String Int32) } b nil in
; Emp Uint128 (List (Map Int32 (Map String Int32)))
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
%"$TyDescr_MapTyp_34" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))" = type { %Uint128, %"TName_List_Map_(Int32)_(Map_(String)_(Int32))"* }
%Uint128 = type { i128 }
%"TName_List_Map_(Int32)_(Map_(String)_(Int32))" = type { i8, %"CName_Cons_Map_(Int32)_(Map_(String)_(Int32))"*, %"CName_Nil_Map_(Int32)_(Map_(String)_(Int32))"* }
%"CName_Cons_Map_(Int32)_(Map_(String)_(Int32))" = type <{ i8, %"Map_Int32_Map_(String)_(Int32)"*, %"TName_List_Map_(Int32)_(Map_(String)_(Int32))"* }>
%"Map_Int32_Map_(String)_(Int32)" = type { %Int32, %Map_String_Int32* }
%Int32 = type { i32 }
%Map_String_Int32 = type { %String, %Int32 }
%String = type { i8*, i32 }
%"CName_Nil_Map_(Int32)_(Map_(String)_(Int32))" = type <{ i8 }>

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
@"$TyDescr_ADT_List_Map_(Int32)_(Map_(String)_(Int32))_33" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Specl_49" to i8*) }
@"$TyDescr_Map_35" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_34"* @"$TyDescr_MapTyp_52" to i8*) }
@"$TyDescr_Map_36" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_34"* @"$TyDescr_MapTyp_53" to i8*) }
@"$TyDescr_Map_37" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_34"* @"$TyDescr_MapTyp_54" to i8*) }
@"$TyDescr_List_ADTTyp_40" = unnamed_addr constant %"$TyDescrTy_ADTTyp_31" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_51", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_30"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_30"*], [1 x %"$TyDescrTy_ADTTyp_Specl_30"*]* @"$TyDescr_List_ADTTyp_m_specls_50", i32 0, i32 0) }
@"$TyDescr_List_Cons_Map_(Int32)_(Map_(String)_(Int32))_Constr_m_args_41" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_36", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Map_(Int32)_(Map_(String)_(Int32))_33"]
@"$TyDescr_ADT_Cons_42" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Constr_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_42", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Map_(Int32)_(Map_(String)_(Int32))_Constr_m_args_41", i32 0, i32 0) }
@"$TyDescr_List_Nil_Map_(Int32)_(Map_(String)_(Int32))_Constr_m_args_44" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_45" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Constr_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_45", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Map_(Int32)_(Map_(String)_(Int32))_Constr_m_args_44", i32 0, i32 0) }
@"$TyDescr_List_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Specl_m_constrs_47" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Cons_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Constr_43", %"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Nil_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Constr_46"]
@"$TyDescr_List_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Specl_m_TArgs_48" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_36"]
@"$TyDescr_List_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Specl_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Specl_m_TArgs_48", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_32"*], [2 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_List_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Specl_m_constrs_47", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_List_ADTTyp_40" }
@"$TyDescr_List_ADTTyp_m_specls_50" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_30"*] [%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Specl_49"]
@"$TyDescr_ADT_List_51" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_MapTyp_52" = unnamed_addr constant %"$TyDescr_MapTyp_34" { %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int32_3" }
@"$TyDescr_MapTyp_53" = unnamed_addr constant %"$TyDescr_MapTyp_34" { %_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ* @"$TyDescr_Map_35" }
@"$TyDescr_MapTyp_54" = unnamed_addr constant %"$TyDescr_MapTyp_34" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Map_(Int32)_(Map_(String)_(Int32))_33" }

define void @_init_libs() {
entry:
  ret void
}

define internal %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_0" = alloca %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"*, align 8
  %"$gasrem_55" = load i64, i64* @_gasrem, align 8
  %"$gascmp_56" = icmp ugt i64 1, %"$gasrem_55"
  br i1 %"$gascmp_56", label %"$out_of_gas_57", label %"$have_gas_58"

"$out_of_gas_57":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_58"

"$have_gas_58":                                   ; preds = %"$out_of_gas_57", %entry
  %"$consume_59" = sub i64 %"$gasrem_55", 1
  store i64 %"$consume_59", i64* @_gasrem, align 8
  %"$gasrem_60" = load i64, i64* @_gasrem, align 8
  %"$gascmp_61" = icmp ugt i64 1, %"$gasrem_60"
  br i1 %"$gascmp_61", label %"$out_of_gas_62", label %"$have_gas_63"

"$out_of_gas_62":                                 ; preds = %"$have_gas_58"
  call void @_out_of_gas()
  br label %"$have_gas_63"

"$have_gas_63":                                   ; preds = %"$out_of_gas_62", %"$have_gas_58"
  %"$consume_64" = sub i64 %"$gasrem_60", 1
  store i64 %"$consume_64", i64* @_gasrem, align 8
  %"$gasrem_65" = load i64, i64* @_gasrem, align 8
  %"$gascmp_66" = icmp ugt i64 1, %"$gasrem_65"
  br i1 %"$gascmp_66", label %"$out_of_gas_67", label %"$have_gas_68"

"$out_of_gas_67":                                 ; preds = %"$have_gas_63"
  call void @_out_of_gas()
  br label %"$have_gas_68"

"$have_gas_68":                                   ; preds = %"$out_of_gas_67", %"$have_gas_63"
  %"$consume_69" = sub i64 %"$gasrem_65", 1
  store i64 %"$consume_69", i64* @_gasrem, align 8
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 1, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %"$have_gas_68"
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %"$have_gas_68"
  %"$consume_74" = sub i64 %"$gasrem_70", 1
  store i64 %"$consume_74", i64* @_gasrem, align 8
  %"$execptr_load_75" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_76" = call i8* @_new_empty_map(i8* %"$execptr_load_75")
  %"$Emp_77" = bitcast i8* %"$_new_empty_map_call_76" to %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"*
  store %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"* %"$Emp_77", %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"** %"$expr_0", align 8
  %"$$expr_0_78" = load %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"*, %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"** %"$expr_0", align 8
  ret %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"* %"$$expr_0_78"
}

declare void @_out_of_gas()

declare i8* @_new_empty_map(i8*)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_79" = call %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_80" = bitcast %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"* %"$exprval_79" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Map_37", i8* %"$memvoidcast_80")
  ret void
}
