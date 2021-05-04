; let nil_int32 = Nil {Int32} in
; let ione = Int32 1 in
; let cons_int32 = Cons {Int32} ione nil_int32 in
; let nil_uint32 = Nil {Uint32} in
; let uione = Uint32 1 in
; let cons_uint32 = Cons {Uint32} uione nil_uint32 in
; Pair {(List Int32) (List Uint32)} cons_int32 cons_uint32
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
%"TName_Pair_List_(Int32)_List_(Uint32)" = type { i8, %"CName_Pair_List_(Int32)_List_(Uint32)"* }
%"CName_Pair_List_(Int32)_List_(Uint32)" = type <{ i8, %TName_List_Int32*, %TName_List_Uint32* }>
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%Int32 = type { i32 }
%CName_Nil_Int32 = type <{ i8 }>
%TName_List_Uint32 = type { i8, %CName_Cons_Uint32*, %CName_Nil_Uint32* }
%CName_Cons_Uint32 = type <{ i8, %Uint32, %TName_List_Uint32* }>
%Uint32 = type { i32 }
%CName_Nil_Uint32 = type <{ i8 }>

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
@"$TyDescr_ADT_List_Uint32_33" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Uint32_ADTTyp_Specl_48" to i8*) }
@"$TyDescr_ADT_List_Int32_34" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Int32_ADTTyp_Specl_57" to i8*) }
@"$TyDescr_ADT_Pair_List_(Int32)_List_(Uint32)_35" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_66" to i8*) }
@"$TyDescr_List_ADTTyp_39" = unnamed_addr constant %"$TyDescrTy_ADTTyp_31" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_59", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_30"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_30"*], [2 x %"$TyDescrTy_ADTTyp_Specl_30"*]* @"$TyDescr_List_ADTTyp_m_specls_58", i32 0, i32 0) }
@"$TyDescr_List_Cons_Uint32_Constr_m_args_40" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Uint32_33"]
@"$TyDescr_ADT_Cons_41" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Uint32_ADTTyp_Constr_42" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_41", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Uint32_Constr_m_args_40", i32 0, i32 0) }
@"$TyDescr_List_Nil_Uint32_Constr_m_args_43" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_44" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Uint32_ADTTyp_Constr_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_44", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Uint32_Constr_m_args_43", i32 0, i32 0) }
@"$TyDescr_List_Uint32_ADTTyp_Specl_m_constrs_46" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Cons_Uint32_ADTTyp_Constr_42", %"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Nil_Uint32_ADTTyp_Constr_45"]
@"$TyDescr_List_Uint32_ADTTyp_Specl_m_TArgs_47" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_5"]
@"$TyDescr_List_Uint32_ADTTyp_Specl_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Uint32_ADTTyp_Specl_m_TArgs_47", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_32"*], [2 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_List_Uint32_ADTTyp_Specl_m_constrs_46", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_List_ADTTyp_39" }
@"$TyDescr_List_Cons_Int32_Constr_m_args_49" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_34"]
@"$TyDescr_ADT_Cons_50" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_50", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_49", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_52" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_53" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_53", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_52", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_55" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_51", %"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_54"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_56" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_List_Int32_ADTTyp_Specl_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_32"*], [2 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_55", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_List_ADTTyp_39" }
@"$TyDescr_List_ADTTyp_m_specls_58" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_30"*] [%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Uint32_ADTTyp_Specl_48", %"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Int32_ADTTyp_Specl_57"]
@"$TyDescr_ADT_List_59" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Pair_ADTTyp_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_31" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_68", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_30"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_30"*], [1 x %"$TyDescrTy_ADTTyp_Specl_30"*]* @"$TyDescr_Pair_ADTTyp_m_specls_67", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_Constr_m_args_61" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_34", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Uint32_33"]
@"$TyDescr_ADT_Pair_62" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Constr_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_62", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_Constr_m_args_61", i32 0, i32 0) }
@"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_constrs_64" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Constr_63"]
@"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_TArgs_65" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_34", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Uint32_33"]
@"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_66" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_TArgs_65", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_32"*], [1 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_constrs_64", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_Pair_ADTTyp_60" }
@"$TyDescr_Pair_ADTTyp_m_specls_67" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_30"*] [%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_66"]
@"$TyDescr_ADT_Pair_68" = unnamed_addr constant [4 x i8] c"Pair"

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define internal %"TName_Pair_List_(Int32)_List_(Uint32)"* @_scilla_expr_fun(i8* %0) !dbg !9 {
entry:
  %"$expr_0" = alloca %"TName_Pair_List_(Int32)_List_(Uint32)"*, align 8
  %"$gasrem_69" = load i64, i64* @_gasrem, align 8
  %"$gascmp_70" = icmp ugt i64 1, %"$gasrem_69"
  br i1 %"$gascmp_70", label %"$out_of_gas_71", label %"$have_gas_72"

"$out_of_gas_71":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_72"

"$have_gas_72":                                   ; preds = %"$out_of_gas_71", %entry
  %"$consume_73" = sub i64 %"$gasrem_69", 1
  store i64 %"$consume_73", i64* @_gasrem, align 8
  %nil_int32 = alloca %TName_List_Int32*, align 8
  %"$gasrem_74" = load i64, i64* @_gasrem, align 8
  %"$gascmp_75" = icmp ugt i64 1, %"$gasrem_74"
  br i1 %"$gascmp_75", label %"$out_of_gas_76", label %"$have_gas_77"

"$out_of_gas_76":                                 ; preds = %"$have_gas_72"
  call void @_out_of_gas()
  br label %"$have_gas_77"

"$have_gas_77":                                   ; preds = %"$out_of_gas_76", %"$have_gas_72"
  %"$consume_78" = sub i64 %"$gasrem_74", 1
  store i64 %"$consume_78", i64* @_gasrem, align 8
  %"$adtval_79_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_79_salloc" = call i8* @_salloc(i8* %"$adtval_79_load", i64 1)
  %"$adtval_79" = bitcast i8* %"$adtval_79_salloc" to %CName_Nil_Int32*
  %"$adtgep_80" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_79", i32 0, i32 0
  store i8 1, i8* %"$adtgep_80", align 1
  %"$adtptr_81" = bitcast %CName_Nil_Int32* %"$adtval_79" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_81", %TName_List_Int32** %nil_int32, align 8, !dbg !10
  %"$gasrem_82" = load i64, i64* @_gasrem, align 8
  %"$gascmp_83" = icmp ugt i64 1, %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %"$have_gas_77"
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %"$have_gas_77"
  %"$consume_86" = sub i64 %"$gasrem_82", 1
  store i64 %"$consume_86", i64* @_gasrem, align 8
  %ione = alloca %Int32, align 8
  %"$gasrem_87" = load i64, i64* @_gasrem, align 8
  %"$gascmp_88" = icmp ugt i64 1, %"$gasrem_87"
  br i1 %"$gascmp_88", label %"$out_of_gas_89", label %"$have_gas_90"

"$out_of_gas_89":                                 ; preds = %"$have_gas_85"
  call void @_out_of_gas()
  br label %"$have_gas_90"

"$have_gas_90":                                   ; preds = %"$out_of_gas_89", %"$have_gas_85"
  %"$consume_91" = sub i64 %"$gasrem_87", 1
  store i64 %"$consume_91", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %ione, align 4, !dbg !11
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 1, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %"$have_gas_90"
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %"$have_gas_90"
  %"$consume_96" = sub i64 %"$gasrem_92", 1
  store i64 %"$consume_96", i64* @_gasrem, align 8
  %cons_int32 = alloca %TName_List_Int32*, align 8
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %"$have_gas_95"
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %"$have_gas_95"
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem, align 8
  %"$ione_102" = load %Int32, %Int32* %ione, align 4
  %"$nil_int32_103" = load %TName_List_Int32*, %TName_List_Int32** %nil_int32, align 8
  %"$adtval_104_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_104_salloc" = call i8* @_salloc(i8* %"$adtval_104_load", i64 13)
  %"$adtval_104" = bitcast i8* %"$adtval_104_salloc" to %CName_Cons_Int32*
  %"$adtgep_105" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_104", i32 0, i32 0
  store i8 0, i8* %"$adtgep_105", align 1
  %"$adtgep_106" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_104", i32 0, i32 1
  store %Int32 %"$ione_102", %Int32* %"$adtgep_106", align 4
  %"$adtgep_107" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_104", i32 0, i32 2
  store %TName_List_Int32* %"$nil_int32_103", %TName_List_Int32** %"$adtgep_107", align 8
  %"$adtptr_108" = bitcast %CName_Cons_Int32* %"$adtval_104" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_108", %TName_List_Int32** %cons_int32, align 8, !dbg !12
  %"$gasrem_109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_110" = icmp ugt i64 1, %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %"$have_gas_100"
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %"$have_gas_100"
  %"$consume_113" = sub i64 %"$gasrem_109", 1
  store i64 %"$consume_113", i64* @_gasrem, align 8
  %nil_uint32 = alloca %TName_List_Uint32*, align 8
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %"$have_gas_112"
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %"$have_gas_112"
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem, align 8
  %"$adtval_119_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_119_salloc" = call i8* @_salloc(i8* %"$adtval_119_load", i64 1)
  %"$adtval_119" = bitcast i8* %"$adtval_119_salloc" to %CName_Nil_Uint32*
  %"$adtgep_120" = getelementptr inbounds %CName_Nil_Uint32, %CName_Nil_Uint32* %"$adtval_119", i32 0, i32 0
  store i8 1, i8* %"$adtgep_120", align 1
  %"$adtptr_121" = bitcast %CName_Nil_Uint32* %"$adtval_119" to %TName_List_Uint32*
  store %TName_List_Uint32* %"$adtptr_121", %TName_List_Uint32** %nil_uint32, align 8, !dbg !13
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %"$have_gas_117"
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %"$have_gas_117"
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem, align 8
  %uione = alloca %Uint32, align 8
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_125"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_125"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %uione, align 4, !dbg !14
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_130"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_130"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  %cons_uint32 = alloca %TName_List_Uint32*, align 8
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 1, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$have_gas_135"
  %"$consume_141" = sub i64 %"$gasrem_137", 1
  store i64 %"$consume_141", i64* @_gasrem, align 8
  %"$uione_142" = load %Uint32, %Uint32* %uione, align 4
  %"$nil_uint32_143" = load %TName_List_Uint32*, %TName_List_Uint32** %nil_uint32, align 8
  %"$adtval_144_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_144_salloc" = call i8* @_salloc(i8* %"$adtval_144_load", i64 13)
  %"$adtval_144" = bitcast i8* %"$adtval_144_salloc" to %CName_Cons_Uint32*
  %"$adtgep_145" = getelementptr inbounds %CName_Cons_Uint32, %CName_Cons_Uint32* %"$adtval_144", i32 0, i32 0
  store i8 0, i8* %"$adtgep_145", align 1
  %"$adtgep_146" = getelementptr inbounds %CName_Cons_Uint32, %CName_Cons_Uint32* %"$adtval_144", i32 0, i32 1
  store %Uint32 %"$uione_142", %Uint32* %"$adtgep_146", align 4
  %"$adtgep_147" = getelementptr inbounds %CName_Cons_Uint32, %CName_Cons_Uint32* %"$adtval_144", i32 0, i32 2
  store %TName_List_Uint32* %"$nil_uint32_143", %TName_List_Uint32** %"$adtgep_147", align 8
  %"$adtptr_148" = bitcast %CName_Cons_Uint32* %"$adtval_144" to %TName_List_Uint32*
  store %TName_List_Uint32* %"$adtptr_148", %TName_List_Uint32** %cons_uint32, align 8, !dbg !15
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 1, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %"$have_gas_140"
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %"$have_gas_140"
  %"$consume_153" = sub i64 %"$gasrem_149", 1
  store i64 %"$consume_153", i64* @_gasrem, align 8
  %"$cons_int32_154" = load %TName_List_Int32*, %TName_List_Int32** %cons_int32, align 8
  %"$cons_uint32_155" = load %TName_List_Uint32*, %TName_List_Uint32** %cons_uint32, align 8
  %"$adtval_156_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_156_salloc" = call i8* @_salloc(i8* %"$adtval_156_load", i64 17)
  %"$adtval_156" = bitcast i8* %"$adtval_156_salloc" to %"CName_Pair_List_(Int32)_List_(Uint32)"*
  %"$adtgep_157" = getelementptr inbounds %"CName_Pair_List_(Int32)_List_(Uint32)", %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_156", i32 0, i32 0
  store i8 0, i8* %"$adtgep_157", align 1
  %"$adtgep_158" = getelementptr inbounds %"CName_Pair_List_(Int32)_List_(Uint32)", %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_156", i32 0, i32 1
  store %TName_List_Int32* %"$cons_int32_154", %TName_List_Int32** %"$adtgep_158", align 8
  %"$adtgep_159" = getelementptr inbounds %"CName_Pair_List_(Int32)_List_(Uint32)", %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_156", i32 0, i32 2
  store %TName_List_Uint32* %"$cons_uint32_155", %TName_List_Uint32** %"$adtgep_159", align 8
  %"$adtptr_160" = bitcast %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_156" to %"TName_Pair_List_(Int32)_List_(Uint32)"*
  store %"TName_Pair_List_(Int32)_List_(Uint32)"* %"$adtptr_160", %"TName_Pair_List_(Int32)_List_(Uint32)"** %"$expr_0", align 8, !dbg !16
  %"$$expr_0_161" = load %"TName_Pair_List_(Int32)_List_(Uint32)"*, %"TName_Pair_List_(Int32)_List_(Uint32)"** %"$expr_0", align 8
  ret %"TName_Pair_List_(Int32)_List_(Uint32)"* %"$$expr_0_161"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_162" = call %"TName_Pair_List_(Int32)_List_(Uint32)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_163" = bitcast %"TName_Pair_List_(Int32)_List_(Uint32)"* %"$exprval_162" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_List_(Int32)_List_(Uint32)_35", i8* %"$memvoidcast_163")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "lit-pair-list-int.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 1, column: 17, scope: !9)
!11 = !DILocation(line: 2, column: 12, scope: !9)
!12 = !DILocation(line: 3, column: 18, scope: !9)
!13 = !DILocation(line: 4, column: 18, scope: !9)
!14 = !DILocation(line: 5, column: 13, scope: !9)
!15 = !DILocation(line: 6, column: 19, scope: !9)
!16 = !DILocation(line: 7, column: 1, scope: !9)
