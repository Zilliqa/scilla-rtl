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
target triple = "x86_64-pc-linux-gnu"

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
@"$TyDescr_ADT_List_Uint32_33" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Uint32_ADTTyp_Specl_46" to i8*) }
@"$TyDescr_ADT_List_Int32_34" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Int32_ADTTyp_Specl_55" to i8*) }
@"$TyDescr_ADT_Pair_List_(Int32)_List_(Uint32)_35" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_64" to i8*) }
@"$TyDescr_List_ADTTyp_37" = unnamed_addr constant %"$TyDescrTy_ADTTyp_31" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_57", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_30"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_30"*], [2 x %"$TyDescrTy_ADTTyp_Specl_30"*]* @"$TyDescr_List_ADTTyp_m_specls_56", i32 0, i32 0) }
@"$TyDescr_List_Cons_Uint32_Constr_m_args_38" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Uint32_33"]
@"$TyDescr_ADT_Cons_39" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Uint32_ADTTyp_Constr_40" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_39", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Uint32_Constr_m_args_38", i32 0, i32 0) }
@"$TyDescr_List_Nil_Uint32_Constr_m_args_41" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_42" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Uint32_ADTTyp_Constr_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_42", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Uint32_Constr_m_args_41", i32 0, i32 0) }
@"$TyDescr_List_Uint32_ADTTyp_Specl_m_constrs_44" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Cons_Uint32_ADTTyp_Constr_40", %"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Nil_Uint32_ADTTyp_Constr_43"]
@"$TyDescr_List_Uint32_ADTTyp_Specl_m_TArgs_45" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_5"]
@"$TyDescr_List_Uint32_ADTTyp_Specl_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Uint32_ADTTyp_Specl_m_TArgs_45", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_32"*], [2 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_List_Uint32_ADTTyp_Specl_m_constrs_44", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_List_ADTTyp_37" }
@"$TyDescr_List_Cons_Int32_Constr_m_args_47" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_34"]
@"$TyDescr_ADT_Cons_48" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_48", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_50" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_51" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_51", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_50", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_53" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_49", %"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_52"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_54" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_List_Int32_ADTTyp_Specl_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_54", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_32"*], [2 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_53", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_List_ADTTyp_37" }
@"$TyDescr_List_ADTTyp_m_specls_56" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_30"*] [%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Uint32_ADTTyp_Specl_46", %"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Int32_ADTTyp_Specl_55"]
@"$TyDescr_ADT_List_57" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Pair_ADTTyp_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_31" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_66", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_30"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_30"*], [1 x %"$TyDescrTy_ADTTyp_Specl_30"*]* @"$TyDescr_Pair_ADTTyp_m_specls_65", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_Constr_m_args_59" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_34", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Uint32_33"]
@"$TyDescr_ADT_Pair_60" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Constr_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_60", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_Constr_m_args_59", i32 0, i32 0) }
@"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_constrs_62" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Constr_61"]
@"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_TArgs_63" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_34", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Uint32_33"]
@"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_TArgs_63", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_32"*], [1 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_constrs_62", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_Pair_ADTTyp_58" }
@"$TyDescr_Pair_ADTTyp_m_specls_65" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_30"*] [%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_64"]
@"$TyDescr_ADT_Pair_66" = unnamed_addr constant [4 x i8] c"Pair"

define void @_init_libs() {
entry:
  ret void
}

define internal %"TName_Pair_List_(Int32)_List_(Uint32)"* @"$scilla_expr_67"(i8* %0) {
entry:
  %"$expr_0" = alloca %"TName_Pair_List_(Int32)_List_(Uint32)"*
  %"$gasrem_68" = load i64, i64* @_gasrem
  %"$gascmp_69" = icmp ugt i64 1, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %entry
  %"$consume_72" = sub i64 %"$gasrem_68", 1
  store i64 %"$consume_72", i64* @_gasrem
  %nil_int32 = alloca %TName_List_Int32*
  %"$gasrem_73" = load i64, i64* @_gasrem
  %"$gascmp_74" = icmp ugt i64 1, %"$gasrem_73"
  br i1 %"$gascmp_74", label %"$out_of_gas_75", label %"$have_gas_76"

"$out_of_gas_75":                                 ; preds = %"$have_gas_71"
  call void @_out_of_gas()
  br label %"$have_gas_76"

"$have_gas_76":                                   ; preds = %"$out_of_gas_75", %"$have_gas_71"
  %"$consume_77" = sub i64 %"$gasrem_73", 1
  store i64 %"$consume_77", i64* @_gasrem
  %"$adtval_78_load" = load i8*, i8** @_execptr
  %"$adtval_78_salloc" = call i8* @_salloc(i8* %"$adtval_78_load", i64 1)
  %"$adtval_78" = bitcast i8* %"$adtval_78_salloc" to %CName_Nil_Int32*
  %"$adtgep_79" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_78", i32 0, i32 0
  store i8 1, i8* %"$adtgep_79"
  %"$adtptr_80" = bitcast %CName_Nil_Int32* %"$adtval_78" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_80", %TName_List_Int32** %nil_int32
  %"$gasrem_81" = load i64, i64* @_gasrem
  %"$gascmp_82" = icmp ugt i64 1, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %"$have_gas_76"
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %"$have_gas_76"
  %"$consume_85" = sub i64 %"$gasrem_81", 1
  store i64 %"$consume_85", i64* @_gasrem
  %ione = alloca %Int32
  %"$gasrem_86" = load i64, i64* @_gasrem
  %"$gascmp_87" = icmp ugt i64 1, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %"$have_gas_84"
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %"$have_gas_84"
  %"$consume_90" = sub i64 %"$gasrem_86", 1
  store i64 %"$consume_90", i64* @_gasrem
  store %Int32 { i32 1 }, %Int32* %ione
  %"$gasrem_91" = load i64, i64* @_gasrem
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %"$have_gas_89"
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %"$have_gas_89"
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem
  %cons_int32 = alloca %TName_List_Int32*
  %"$gasrem_96" = load i64, i64* @_gasrem
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_94"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_94"
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem
  %"$ione_101" = load %Int32, %Int32* %ione
  %"$nil_int32_102" = load %TName_List_Int32*, %TName_List_Int32** %nil_int32
  %"$adtval_103_load" = load i8*, i8** @_execptr
  %"$adtval_103_salloc" = call i8* @_salloc(i8* %"$adtval_103_load", i64 13)
  %"$adtval_103" = bitcast i8* %"$adtval_103_salloc" to %CName_Cons_Int32*
  %"$adtgep_104" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_103", i32 0, i32 0
  store i8 0, i8* %"$adtgep_104"
  %"$adtgep_105" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_103", i32 0, i32 1
  store %Int32 %"$ione_101", %Int32* %"$adtgep_105"
  %"$adtgep_106" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_103", i32 0, i32 2
  store %TName_List_Int32* %"$nil_int32_102", %TName_List_Int32** %"$adtgep_106"
  %"$adtptr_107" = bitcast %CName_Cons_Int32* %"$adtval_103" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_107", %TName_List_Int32** %cons_int32
  %"$gasrem_108" = load i64, i64* @_gasrem
  %"$gascmp_109" = icmp ugt i64 1, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %"$have_gas_99"
  %"$consume_112" = sub i64 %"$gasrem_108", 1
  store i64 %"$consume_112", i64* @_gasrem
  %nil_uint32 = alloca %TName_List_Uint32*
  %"$gasrem_113" = load i64, i64* @_gasrem
  %"$gascmp_114" = icmp ugt i64 1, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$have_gas_111"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$have_gas_111"
  %"$consume_117" = sub i64 %"$gasrem_113", 1
  store i64 %"$consume_117", i64* @_gasrem
  %"$adtval_118_load" = load i8*, i8** @_execptr
  %"$adtval_118_salloc" = call i8* @_salloc(i8* %"$adtval_118_load", i64 1)
  %"$adtval_118" = bitcast i8* %"$adtval_118_salloc" to %CName_Nil_Uint32*
  %"$adtgep_119" = getelementptr inbounds %CName_Nil_Uint32, %CName_Nil_Uint32* %"$adtval_118", i32 0, i32 0
  store i8 1, i8* %"$adtgep_119"
  %"$adtptr_120" = bitcast %CName_Nil_Uint32* %"$adtval_118" to %TName_List_Uint32*
  store %TName_List_Uint32* %"$adtptr_120", %TName_List_Uint32** %nil_uint32
  %"$gasrem_121" = load i64, i64* @_gasrem
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_116"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_116"
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem
  %uione = alloca %Uint32
  %"$gasrem_126" = load i64, i64* @_gasrem
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_124"
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem
  store %Uint32 { i32 1 }, %Uint32* %uione
  %"$gasrem_131" = load i64, i64* @_gasrem
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem
  %cons_uint32 = alloca %TName_List_Uint32*
  %"$gasrem_136" = load i64, i64* @_gasrem
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$have_gas_134"
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem
  %"$uione_141" = load %Uint32, %Uint32* %uione
  %"$nil_uint32_142" = load %TName_List_Uint32*, %TName_List_Uint32** %nil_uint32
  %"$adtval_143_load" = load i8*, i8** @_execptr
  %"$adtval_143_salloc" = call i8* @_salloc(i8* %"$adtval_143_load", i64 13)
  %"$adtval_143" = bitcast i8* %"$adtval_143_salloc" to %CName_Cons_Uint32*
  %"$adtgep_144" = getelementptr inbounds %CName_Cons_Uint32, %CName_Cons_Uint32* %"$adtval_143", i32 0, i32 0
  store i8 0, i8* %"$adtgep_144"
  %"$adtgep_145" = getelementptr inbounds %CName_Cons_Uint32, %CName_Cons_Uint32* %"$adtval_143", i32 0, i32 1
  store %Uint32 %"$uione_141", %Uint32* %"$adtgep_145"
  %"$adtgep_146" = getelementptr inbounds %CName_Cons_Uint32, %CName_Cons_Uint32* %"$adtval_143", i32 0, i32 2
  store %TName_List_Uint32* %"$nil_uint32_142", %TName_List_Uint32** %"$adtgep_146"
  %"$adtptr_147" = bitcast %CName_Cons_Uint32* %"$adtval_143" to %TName_List_Uint32*
  store %TName_List_Uint32* %"$adtptr_147", %TName_List_Uint32** %cons_uint32
  %"$gasrem_148" = load i64, i64* @_gasrem
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_139"
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem
  %"$cons_int32_153" = load %TName_List_Int32*, %TName_List_Int32** %cons_int32
  %"$cons_uint32_154" = load %TName_List_Uint32*, %TName_List_Uint32** %cons_uint32
  %"$adtval_155_load" = load i8*, i8** @_execptr
  %"$adtval_155_salloc" = call i8* @_salloc(i8* %"$adtval_155_load", i64 17)
  %"$adtval_155" = bitcast i8* %"$adtval_155_salloc" to %"CName_Pair_List_(Int32)_List_(Uint32)"*
  %"$adtgep_156" = getelementptr inbounds %"CName_Pair_List_(Int32)_List_(Uint32)", %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_155", i32 0, i32 0
  store i8 0, i8* %"$adtgep_156"
  %"$adtgep_157" = getelementptr inbounds %"CName_Pair_List_(Int32)_List_(Uint32)", %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_155", i32 0, i32 1
  store %TName_List_Int32* %"$cons_int32_153", %TName_List_Int32** %"$adtgep_157"
  %"$adtgep_158" = getelementptr inbounds %"CName_Pair_List_(Int32)_List_(Uint32)", %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_155", i32 0, i32 2
  store %TName_List_Uint32* %"$cons_uint32_154", %TName_List_Uint32** %"$adtgep_158"
  %"$adtptr_159" = bitcast %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_155" to %"TName_Pair_List_(Int32)_List_(Uint32)"*
  store %"TName_Pair_List_(Int32)_List_(Uint32)"* %"$adtptr_159", %"TName_Pair_List_(Int32)_List_(Uint32)"** %"$expr_0"
  %"$$expr_0_160" = load %"TName_Pair_List_(Int32)_List_(Uint32)"*, %"TName_Pair_List_(Int32)_List_(Uint32)"** %"$expr_0"
  ret %"TName_Pair_List_(Int32)_List_(Uint32)"* %"$$expr_0_160"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_161" = call %"TName_Pair_List_(Int32)_List_(Uint32)"* @"$scilla_expr_67"(i8* null)
  %"$memvoidcast_162" = bitcast %"TName_Pair_List_(Int32)_List_(Uint32)"* %"$exprval_161" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_List_(Int32)_List_(Uint32)_35", i8* %"$memvoidcast_162")
  ret void
}
