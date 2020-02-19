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
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_23" = type { %TyDescrString, i32, i32, %"$TyDescrTy_ADTTyp_Specl_22"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_22" = type { i32, %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_24"**, %"$TyDescrTy_ADTTyp_23"* }
%"$TyDescrTy_ADTTyp_Constr_24" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%Bool = type { i8, %True*, %False* }
%True = type <{ i8 }>
%False = type <{ i8 }>

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
@"$TyDescr_Bystr_Prim_20" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_20" to i8*) }
@"$TyDescr_ADT_Bool_25" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_22"* @"$TyDescr_Bool_ADTTyp_Specl_36" to i8*) }
@"$TyDescr_Bool_ADTTyp_27" = unnamed_addr constant %"$TyDescrTy_ADTTyp_23" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_38", i32 0, i32 0), i32 4 }, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_22"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_22"*], [1 x %"$TyDescrTy_ADTTyp_Specl_22"*]* @"$TyDescr_Bool_ADTTyp_m_specls_37", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_28" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_29" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_30" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_24" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_29", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_28", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_31" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_32" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_33" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_24" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_32", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_31", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_34" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_24"*] [%"$TyDescrTy_ADTTyp_Constr_24"* @"$TyDescr_Bool_True_ADTTyp_Constr_30", %"$TyDescrTy_ADTTyp_Constr_24"* @"$TyDescr_Bool_False_ADTTyp_Constr_33"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_35" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_36" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_22" { i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_35", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_24"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_24"*], [2 x %"$TyDescrTy_ADTTyp_Constr_24"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_34", i32 0, i32 0), %"$TyDescrTy_ADTTyp_23"* @"$TyDescr_Bool_ADTTyp_27" }
@"$TyDescr_Bool_ADTTyp_m_specls_37" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_22"*] [%"$TyDescrTy_ADTTyp_Specl_22"* @"$TyDescr_Bool_ADTTyp_Specl_36"]
@"$TyDescr_ADT_Bool_38" = unnamed_addr constant [4 x i8] c"Bool"

define internal %Int32 @"$scilla_expr_39"(i8*) {
entry:
  %"$expr_0" = alloca %Int32
  %b = alloca %Bool*
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%False* getelementptr (%False, %False* null, i32 1) to i32))
  %"$adtval_40" = bitcast i8* %malloccall to %False*
  %"$adtgep_41" = getelementptr inbounds %False, %False* %"$adtval_40", i32 0, i32 0
  store i8 1, i8* %"$adtgep_41"
  %"$adtptr_42" = bitcast %False* %"$adtval_40" to %Bool*
  store %Bool* %"$adtptr_42", %Bool** %b
  %"$b_44" = load %Bool*, %Bool** %b
  %"$b_tag_45" = getelementptr inbounds %Bool, %Bool* %"$b_44", i32 0, i32 0
  %"$b_tag_46" = load i8, i8* %"$b_tag_45"
  switch i8 %"$b_tag_46", label %"$empty_default_47" [
    i8 0, label %"$True_48"
    i8 1, label %"$False_51"
  ]

"$True_48":                                       ; preds = %entry
  %"$b_49" = bitcast %Bool* %"$b_44" to %True*
  %x = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %x
  %"$x_50" = load %Int32, %Int32* %x
  store %Int32 %"$x_50", %Int32* %"$expr_0"
  br label %"$matchsucc_43"

"$False_51":                                      ; preds = %entry
  %"$b_52" = bitcast %Bool* %"$b_44" to %False*
  %x1 = alloca %Int32
  store %Int32 { i32 2 }, %Int32* %x1
  %"$x_53" = load %Int32, %Int32* %x1
  store %Int32 %"$x_53", %Int32* %"$expr_0"
  br label %"$matchsucc_43"

"$empty_default_47":                              ; preds = %entry
  br label %"$matchsucc_43"

"$matchsucc_43":                                  ; preds = %"$False_51", %"$True_48", %"$empty_default_47"
  %"$$expr_0_54" = load %Int32, %Int32* %"$expr_0"
  ret %Int32 %"$$expr_0_54"
}

declare noalias i8* @malloc(i32)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_55" = call %Int32 @"$scilla_expr_39"(i8* null)
  %"$pval_56" = alloca %Int32
  %"$memvoidcast_57" = bitcast %Int32* %"$pval_56" to i8*
  store %Int32 %"$exprval_55", %Int32* %"$pval_56"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_3", i8* %"$memvoidcast_57")
  ret void
}
