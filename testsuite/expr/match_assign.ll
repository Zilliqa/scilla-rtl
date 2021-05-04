; let b = False in
; match b with
; | True =>
; let x = Int32 1 in
; x
; | False =>
; let x = Int32 2 in
; x
; end
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
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

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
@"$TyDescr_ADT_Bool_33" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Bool_ADTTyp_Specl_46" to i8*) }
@"$TyDescr_Bool_ADTTyp_37" = unnamed_addr constant %"$TyDescrTy_ADTTyp_31" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_48", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_30"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_30"*], [1 x %"$TyDescrTy_ADTTyp_Specl_30"*]* @"$TyDescr_Bool_ADTTyp_m_specls_47", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_38" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_39" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_40" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_39", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_38", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_41" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_42" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_42", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_41", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_44" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_Bool_True_ADTTyp_Constr_40", %"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_Bool_False_ADTTyp_Constr_43"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_45" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_45", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_32"*], [2 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_44", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_Bool_ADTTyp_37" }
@"$TyDescr_Bool_ADTTyp_m_specls_47" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_30"*] [%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Bool_ADTTyp_Specl_46"]
@"$TyDescr_ADT_Bool_48" = unnamed_addr constant [4 x i8] c"Bool"

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_0" = alloca %Int32, align 8
  %"$gasrem_49" = load i64, i64* @_gasrem, align 8
  %"$gascmp_50" = icmp ugt i64 1, %"$gasrem_49"
  br i1 %"$gascmp_50", label %"$out_of_gas_51", label %"$have_gas_52"

"$out_of_gas_51":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_52"

"$have_gas_52":                                   ; preds = %"$out_of_gas_51", %entry
  %"$consume_53" = sub i64 %"$gasrem_49", 1
  store i64 %"$consume_53", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_54" = load i64, i64* @_gasrem, align 8
  %"$gascmp_55" = icmp ugt i64 1, %"$gasrem_54"
  br i1 %"$gascmp_55", label %"$out_of_gas_56", label %"$have_gas_57"

"$out_of_gas_56":                                 ; preds = %"$have_gas_52"
  call void @_out_of_gas()
  br label %"$have_gas_57"

"$have_gas_57":                                   ; preds = %"$out_of_gas_56", %"$have_gas_52"
  %"$consume_58" = sub i64 %"$gasrem_54", 1
  store i64 %"$consume_58", i64* @_gasrem, align 8
  %"$adtval_59_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_59_salloc" = call i8* @_salloc(i8* %"$adtval_59_load", i64 1)
  %"$adtval_59" = bitcast i8* %"$adtval_59_salloc" to %CName_False*
  %"$adtgep_60" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_59", i32 0, i32 0
  store i8 1, i8* %"$adtgep_60", align 1
  %"$adtptr_61" = bitcast %CName_False* %"$adtval_59" to %TName_Bool*
  store %TName_Bool* %"$adtptr_61", %TName_Bool** %b, align 8
  %"$gasrem_62" = load i64, i64* @_gasrem, align 8
  %"$gascmp_63" = icmp ugt i64 2, %"$gasrem_62"
  br i1 %"$gascmp_63", label %"$out_of_gas_64", label %"$have_gas_65"

"$out_of_gas_64":                                 ; preds = %"$have_gas_57"
  call void @_out_of_gas()
  br label %"$have_gas_65"

"$have_gas_65":                                   ; preds = %"$out_of_gas_64", %"$have_gas_57"
  %"$consume_66" = sub i64 %"$gasrem_62", 2
  store i64 %"$consume_66", i64* @_gasrem, align 8
  %"$b_68" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_69" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_68", i32 0, i32 0
  %"$b_tag_70" = load i8, i8* %"$b_tag_69", align 1
  switch i8 %"$b_tag_70", label %"$empty_default_71" [
    i8 0, label %"$True_72"
    i8 1, label %"$False_90"
  ]

"$True_72":                                       ; preds = %"$have_gas_65"
  %"$b_73" = bitcast %TName_Bool* %"$b_68" to %CName_True*
  %"$gasrem_74" = load i64, i64* @_gasrem, align 8
  %"$gascmp_75" = icmp ugt i64 1, %"$gasrem_74"
  br i1 %"$gascmp_75", label %"$out_of_gas_76", label %"$have_gas_77"

"$out_of_gas_76":                                 ; preds = %"$True_72"
  call void @_out_of_gas()
  br label %"$have_gas_77"

"$have_gas_77":                                   ; preds = %"$out_of_gas_76", %"$True_72"
  %"$consume_78" = sub i64 %"$gasrem_74", 1
  store i64 %"$consume_78", i64* @_gasrem, align 8
  %x = alloca %Int32, align 8
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 1, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %"$have_gas_77"
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %"$have_gas_77"
  %"$consume_83" = sub i64 %"$gasrem_79", 1
  store i64 %"$consume_83", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %x, align 4
  %"$gasrem_84" = load i64, i64* @_gasrem, align 8
  %"$gascmp_85" = icmp ugt i64 1, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %"$have_gas_82"
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %"$have_gas_82"
  %"$consume_88" = sub i64 %"$gasrem_84", 1
  store i64 %"$consume_88", i64* @_gasrem, align 8
  %"$x_89" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_89", %Int32* %"$expr_0", align 4
  br label %"$matchsucc_67"

"$False_90":                                      ; preds = %"$have_gas_65"
  %"$b_91" = bitcast %TName_Bool* %"$b_68" to %CName_False*
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 1, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %"$False_90"
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %"$False_90"
  %"$consume_96" = sub i64 %"$gasrem_92", 1
  store i64 %"$consume_96", i64* @_gasrem, align 8
  %x1 = alloca %Int32, align 8
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %"$have_gas_95"
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %"$have_gas_95"
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* %x1, align 4
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 1, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$have_gas_100"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$have_gas_100"
  %"$consume_106" = sub i64 %"$gasrem_102", 1
  store i64 %"$consume_106", i64* @_gasrem, align 8
  %"$x_107" = load %Int32, %Int32* %x1, align 4
  store %Int32 %"$x_107", %Int32* %"$expr_0", align 4
  br label %"$matchsucc_67"

"$empty_default_71":                              ; preds = %"$have_gas_65"
  br label %"$matchsucc_67"

"$matchsucc_67":                                  ; preds = %"$have_gas_105", %"$have_gas_87", %"$empty_default_71"
  %"$$expr_0_108" = load %Int32, %Int32* %"$expr_0", align 4
  ret %Int32 %"$$expr_0_108"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_109" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_110" = alloca %Int32, align 8
  %"$memvoidcast_111" = bitcast %Int32* %"$pval_110" to i8*
  store %Int32 %"$exprval_109", %Int32* %"$pval_110", align 4
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_3", i8* %"$memvoidcast_111")
  ret void
}
