; let x = Int32 42 in
; let y = Int32 41 in
; let f = fun (c : Bool) =>
; match c with
; | True => x
; | _ => y
; end
; in
; let t = True in
; f t
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_5" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_27" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_26"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_26" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_28"**, %"$TyDescrTy_ADTTyp_27"* }
%"$TyDescrTy_ADTTyp_Constr_28" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$$fundef_3_env_43" = type { %Int32, %Int32 }
%Bool = type { i8, %True*, %False* }
%True = type <{ i8 }>
%False = type <{ i8 }>

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_6" = global %"$TyDescrTy_PrimTyp_5" zeroinitializer
@"$TyDescr_Int32_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int32_Prim_6" to i8*) }
@"$TyDescr_Uint32_Prim_8" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 0 }
@"$TyDescr_Uint32_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint32_Prim_8" to i8*) }
@"$TyDescr_Int64_Prim_10" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 1 }
@"$TyDescr_Int64_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int64_Prim_10" to i8*) }
@"$TyDescr_Uint64_Prim_12" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 1 }
@"$TyDescr_Uint64_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint64_Prim_12" to i8*) }
@"$TyDescr_Int128_Prim_14" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 2 }
@"$TyDescr_Int128_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int128_Prim_14" to i8*) }
@"$TyDescr_Uint128_Prim_16" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 2 }
@"$TyDescr_Uint128_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint128_Prim_16" to i8*) }
@"$TyDescr_Int256_Prim_18" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 3 }
@"$TyDescr_Int256_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int256_Prim_18" to i8*) }
@"$TyDescr_Uint256_Prim_20" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 3 }
@"$TyDescr_Uint256_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint256_Prim_20" to i8*) }
@"$TyDescr_String_Prim_22" = global %"$TyDescrTy_PrimTyp_5" { i32 2, i32 0 }
@"$TyDescr_String_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_String_Prim_22" to i8*) }
@"$TyDescr_Bystr_Prim_24" = global %"$TyDescrTy_PrimTyp_5" { i32 7, i32 0 }
@"$TyDescr_Bystr_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr_Prim_24" to i8*) }
@"$TyDescr_ADT_Bool_29" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_26"* @"$TyDescr_Bool_ADTTyp_Specl_40" to i8*) }
@"$TyDescr_Bool_ADTTyp_31" = unnamed_addr constant %"$TyDescrTy_ADTTyp_27" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_42", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_26"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_26"*], [1 x %"$TyDescrTy_ADTTyp_Specl_26"*]* @"$TyDescr_Bool_ADTTyp_m_specls_41", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_32" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_33" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_34" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_28" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_33", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_32", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_35" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_36" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_37" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_28" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_36", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_35", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_38" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_28"*] [%"$TyDescrTy_ADTTyp_Constr_28"* @"$TyDescr_Bool_True_ADTTyp_Constr_34", %"$TyDescrTy_ADTTyp_Constr_28"* @"$TyDescr_Bool_False_ADTTyp_Constr_37"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_39" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_40" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_26" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_39", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_28"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_28"*], [2 x %"$TyDescrTy_ADTTyp_Constr_28"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_38", i32 0, i32 0), %"$TyDescrTy_ADTTyp_27"* @"$TyDescr_Bool_ADTTyp_31" }
@"$TyDescr_Bool_ADTTyp_m_specls_41" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_26"*] [%"$TyDescrTy_ADTTyp_Specl_26"* @"$TyDescr_Bool_ADTTyp_Specl_40"]
@"$TyDescr_ADT_Bool_42" = unnamed_addr constant [4 x i8] c"Bool"

define internal %Int32 @"$fundef_3"(%"$$fundef_3_env_43"* %0, %Bool* %1) {
entry:
  %"$$fundef_3_env_x_44" = getelementptr inbounds %"$$fundef_3_env_43", %"$$fundef_3_env_43"* %0, i32 0, i32 0
  %"$x_envload_45" = load %Int32, %Int32* %"$$fundef_3_env_x_44"
  %x = alloca %Int32
  store %Int32 %"$x_envload_45", %Int32* %x
  %"$$fundef_3_env_y_46" = getelementptr inbounds %"$$fundef_3_env_43", %"$$fundef_3_env_43"* %0, i32 0, i32 1
  %"$y_envload_47" = load %Int32, %Int32* %"$$fundef_3_env_y_46"
  %y = alloca %Int32
  store %Int32 %"$y_envload_47", %Int32* %y
  %"$retval_4" = alloca %Int32
  %"$c_tag_50" = getelementptr inbounds %Bool, %Bool* %1, i32 0, i32 0
  %"$c_tag_51" = load i8, i8* %"$c_tag_50"
  switch i8 %"$c_tag_51", label %"$default_52" [
    i8 0, label %"$True_53"
  ]

"$True_53":                                       ; preds = %entry
  %"$c_54" = bitcast %Bool* %1 to %True*
  %"$x_55" = load %Int32, %Int32* %x
  store %Int32 %"$x_55", %Int32* %"$retval_4"
  br label %"$matchsucc_48"

"$default_52":                                    ; preds = %entry
  br label %"$joinp_0"

"$joinp_0":                                       ; preds = %"$default_52"
  %"$y_49" = load %Int32, %Int32* %y
  store %Int32 %"$y_49", %Int32* %"$retval_4"
  br label %"$matchsucc_48"

"$matchsucc_48":                                  ; preds = %"$True_53", %"$joinp_0"
  %"$$retval_4_56" = load %Int32, %Int32* %"$retval_4"
  ret %Int32 %"$$retval_4_56"
}

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @"$scilla_expr_57"(i8* %0) {
entry:
  %"$expr_2" = alloca %Int32
  %x = alloca %Int32
  store %Int32 { i32 42 }, %Int32* %x
  %y = alloca %Int32
  store %Int32 { i32 41 }, %Int32* %y
  %f = alloca { %Int32 (i8*, %Bool*)*, i8* }
  %"$$fundef_3_envp_58_load" = load i8*, i8** @_execptr
  %"$$fundef_3_envp_58_salloc" = call i8* @_salloc(i8* %"$$fundef_3_envp_58_load", i64 8)
  %"$$fundef_3_envp_58" = bitcast i8* %"$$fundef_3_envp_58_salloc" to %"$$fundef_3_env_43"*
  %"$$fundef_3_env_voidp_60" = bitcast %"$$fundef_3_env_43"* %"$$fundef_3_envp_58" to i8*
  %"$$fundef_3_cloval_61" = insertvalue { %Int32 (i8*, %Bool*)*, i8* } { %Int32 (i8*, %Bool*)* bitcast (%Int32 (%"$$fundef_3_env_43"*, %Bool*)* @"$fundef_3" to %Int32 (i8*, %Bool*)*), i8* undef }, i8* %"$$fundef_3_env_voidp_60", 1
  %"$$fundef_3_env_x_62" = getelementptr inbounds %"$$fundef_3_env_43", %"$$fundef_3_env_43"* %"$$fundef_3_envp_58", i32 0, i32 0
  %"$x_63" = load %Int32, %Int32* %x
  store %Int32 %"$x_63", %Int32* %"$$fundef_3_env_x_62"
  %"$$fundef_3_env_y_64" = getelementptr inbounds %"$$fundef_3_env_43", %"$$fundef_3_env_43"* %"$$fundef_3_envp_58", i32 0, i32 1
  %"$y_65" = load %Int32, %Int32* %y
  store %Int32 %"$y_65", %Int32* %"$$fundef_3_env_y_64"
  store { %Int32 (i8*, %Bool*)*, i8* } %"$$fundef_3_cloval_61", { %Int32 (i8*, %Bool*)*, i8* }* %f
  %t = alloca %Bool*
  %"$adtval_66_load" = load i8*, i8** @_execptr
  %"$adtval_66_salloc" = call i8* @_salloc(i8* %"$adtval_66_load", i64 1)
  %"$adtval_66" = bitcast i8* %"$adtval_66_salloc" to %True*
  %"$adtgep_67" = getelementptr inbounds %True, %True* %"$adtval_66", i32 0, i32 0
  store i8 0, i8* %"$adtgep_67"
  %"$adtptr_68" = bitcast %True* %"$adtval_66" to %Bool*
  store %Bool* %"$adtptr_68", %Bool** %t
  %"$f_1" = alloca %Int32
  %"$f_69" = load { %Int32 (i8*, %Bool*)*, i8* }, { %Int32 (i8*, %Bool*)*, i8* }* %f
  %"$f_fptr_70" = extractvalue { %Int32 (i8*, %Bool*)*, i8* } %"$f_69", 0
  %"$f_envptr_71" = extractvalue { %Int32 (i8*, %Bool*)*, i8* } %"$f_69", 1
  %"$t_72" = load %Bool*, %Bool** %t
  %"$f_call_73" = call %Int32 %"$f_fptr_70"(i8* %"$f_envptr_71", %Bool* %"$t_72")
  store %Int32 %"$f_call_73", %Int32* %"$f_1"
  %"$$f_1_74" = load %Int32, %Int32* %"$f_1"
  store %Int32 %"$$f_1_74", %Int32* %"$expr_2"
  %"$$expr_2_75" = load %Int32, %Int32* %"$expr_2"
  ret %Int32 %"$$expr_2_75"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_76" = call %Int32 @"$scilla_expr_57"(i8* null)
  %"$pval_77" = alloca %Int32
  %"$memvoidcast_78" = bitcast %Int32* %"$pval_77" to i8*
  store %Int32 %"$exprval_76", %Int32* %"$pval_77"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$memvoidcast_78")
  ret void
}
