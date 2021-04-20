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
@"$TyDescr_ADT_List_Map_(Int32)_(Map_(String)_(Int32))_33" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Specl_47" to i8*) }
@"$TyDescr_Map_35" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_34"* @"$TyDescr_MapTyp_50" to i8*) }
@"$TyDescr_Map_36" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_34"* @"$TyDescr_MapTyp_51" to i8*) }
@"$TyDescr_Map_37" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_34"* @"$TyDescr_MapTyp_52" to i8*) }
@"$TyDescr_List_ADTTyp_38" = unnamed_addr constant %"$TyDescrTy_ADTTyp_31" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_49", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_30"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_30"*], [1 x %"$TyDescrTy_ADTTyp_Specl_30"*]* @"$TyDescr_List_ADTTyp_m_specls_48", i32 0, i32 0) }
@"$TyDescr_List_Cons_Map_(Int32)_(Map_(String)_(Int32))_Constr_m_args_39" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_36", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Map_(Int32)_(Map_(String)_(Int32))_33"]
@"$TyDescr_ADT_Cons_40" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Constr_41" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_40", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Map_(Int32)_(Map_(String)_(Int32))_Constr_m_args_39", i32 0, i32 0) }
@"$TyDescr_List_Nil_Map_(Int32)_(Map_(String)_(Int32))_Constr_m_args_42" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_43" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Constr_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_43", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Map_(Int32)_(Map_(String)_(Int32))_Constr_m_args_42", i32 0, i32 0) }
@"$TyDescr_List_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Specl_m_constrs_45" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Cons_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Constr_41", %"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Nil_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Constr_44"]
@"$TyDescr_List_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Specl_m_TArgs_46" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_36"]
@"$TyDescr_List_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Specl_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Specl_m_TArgs_46", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_32"*], [2 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_List_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Specl_m_constrs_45", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_List_ADTTyp_38" }
@"$TyDescr_List_ADTTyp_m_specls_48" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_30"*] [%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Map_(Int32)_(Map_(String)_(Int32))_ADTTyp_Specl_47"]
@"$TyDescr_ADT_List_49" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_MapTyp_50" = unnamed_addr constant %"$TyDescr_MapTyp_34" { %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int32_3" }
@"$TyDescr_MapTyp_51" = unnamed_addr constant %"$TyDescr_MapTyp_34" { %_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ* @"$TyDescr_Map_35" }
@"$TyDescr_MapTyp_52" = unnamed_addr constant %"$TyDescr_MapTyp_34" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Map_(Int32)_(Map_(String)_(Int32))_33" }

define void @_init_libs() {
entry:
  ret void
}

define internal %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_0" = alloca %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"*, align 8
  %"$gasrem_53" = load i64, i64* @_gasrem, align 8
  %"$gascmp_54" = icmp ugt i64 1, %"$gasrem_53"
  br i1 %"$gascmp_54", label %"$out_of_gas_55", label %"$have_gas_56"

"$out_of_gas_55":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_56"

"$have_gas_56":                                   ; preds = %"$out_of_gas_55", %entry
  %"$consume_57" = sub i64 %"$gasrem_53", 1
  store i64 %"$consume_57", i64* @_gasrem, align 8
  %"$gasrem_58" = load i64, i64* @_gasrem, align 8
  %"$gascmp_59" = icmp ugt i64 1, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %"$have_gas_56"
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %"$have_gas_56"
  %"$consume_62" = sub i64 %"$gasrem_58", 1
  store i64 %"$consume_62", i64* @_gasrem, align 8
  %"$gasrem_63" = load i64, i64* @_gasrem, align 8
  %"$gascmp_64" = icmp ugt i64 1, %"$gasrem_63"
  br i1 %"$gascmp_64", label %"$out_of_gas_65", label %"$have_gas_66"

"$out_of_gas_65":                                 ; preds = %"$have_gas_61"
  call void @_out_of_gas()
  br label %"$have_gas_66"

"$have_gas_66":                                   ; preds = %"$out_of_gas_65", %"$have_gas_61"
  %"$consume_67" = sub i64 %"$gasrem_63", 1
  store i64 %"$consume_67", i64* @_gasrem, align 8
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 1, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %"$have_gas_66"
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %"$have_gas_66"
  %"$consume_72" = sub i64 %"$gasrem_68", 1
  store i64 %"$consume_72", i64* @_gasrem, align 8
  %"$execptr_load_73" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_74" = call i8* @_new_empty_map(i8* %"$execptr_load_73")
  %"$Emp_75" = bitcast i8* %"$_new_empty_map_call_74" to %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"*
  store %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"* %"$Emp_75", %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"** %"$expr_0", align 8
  %"$$expr_0_76" = load %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"*, %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"** %"$expr_0", align 8
  ret %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"* %"$$expr_0_76"
}

declare void @_out_of_gas()

declare i8* @_new_empty_map(i8*)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_77" = call %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_78" = bitcast %"Map_Uint128_List_(Map_(Int32)_(Map_(String)_(Int32)))"* %"$exprval_77" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Map_37", i8* %"$memvoidcast_78")
  ret void
}
