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
%"$TyDescrTy_ADTTyp_35" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_34"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_34" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_36"**, %"$TyDescrTy_ADTTyp_35"* }
%"$TyDescrTy_ADTTyp_Constr_36" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$$fundef_3_env_51" = type { %Int32, %Int32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

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
@"$TyDescr_Bnum_Prim_24" = global %"$TyDescrTy_PrimTyp_5" { i32 3, i32 0 }
@"$TyDescr_Bnum_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bnum_Prim_24" to i8*) }
@"$TyDescr_Message_Prim_26" = global %"$TyDescrTy_PrimTyp_5" { i32 4, i32 0 }
@"$TyDescr_Message_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Message_Prim_26" to i8*) }
@"$TyDescr_Event_Prim_28" = global %"$TyDescrTy_PrimTyp_5" { i32 5, i32 0 }
@"$TyDescr_Event_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Event_Prim_28" to i8*) }
@"$TyDescr_Exception_Prim_30" = global %"$TyDescrTy_PrimTyp_5" { i32 6, i32 0 }
@"$TyDescr_Exception_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Exception_Prim_30" to i8*) }
@"$TyDescr_Bystr_Prim_32" = global %"$TyDescrTy_PrimTyp_5" { i32 7, i32 0 }
@"$TyDescr_Bystr_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr_Prim_32" to i8*) }
@"$TyDescr_ADT_Bool_37" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Bool_ADTTyp_Specl_48" to i8*) }
@"$TyDescr_Bool_ADTTyp_39" = unnamed_addr constant %"$TyDescrTy_ADTTyp_35" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_50", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_34"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_34"*], [1 x %"$TyDescrTy_ADTTyp_Specl_34"*]* @"$TyDescr_Bool_ADTTyp_m_specls_49", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_40" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_41" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_42" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_41", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_40", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_43" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_44" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_44", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_43", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_46" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_36"*] [%"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Bool_True_ADTTyp_Constr_42", %"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Bool_False_ADTTyp_Constr_45"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_47" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_34" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_47", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_36"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_36"*], [2 x %"$TyDescrTy_ADTTyp_Constr_36"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_46", i32 0, i32 0), %"$TyDescrTy_ADTTyp_35"* @"$TyDescr_Bool_ADTTyp_39" }
@"$TyDescr_Bool_ADTTyp_m_specls_49" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_34"*] [%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Bool_ADTTyp_Specl_48"]
@"$TyDescr_ADT_Bool_50" = unnamed_addr constant [4 x i8] c"Bool"

define internal %Int32 @"$fundef_3"(%"$$fundef_3_env_51"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_3_env_x_52" = getelementptr inbounds %"$$fundef_3_env_51", %"$$fundef_3_env_51"* %0, i32 0, i32 0
  %"$x_envload_53" = load %Int32, %Int32* %"$$fundef_3_env_x_52"
  %x = alloca %Int32
  store %Int32 %"$x_envload_53", %Int32* %x
  %"$$fundef_3_env_y_54" = getelementptr inbounds %"$$fundef_3_env_51", %"$$fundef_3_env_51"* %0, i32 0, i32 1
  %"$y_envload_55" = load %Int32, %Int32* %"$$fundef_3_env_y_54"
  %y = alloca %Int32
  store %Int32 %"$y_envload_55", %Int32* %y
  %"$retval_4" = alloca %Int32
  %"$c_tag_58" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$c_tag_59" = load i8, i8* %"$c_tag_58"
  switch i8 %"$c_tag_59", label %"$default_60" [
    i8 0, label %"$True_61"
  ]

"$True_61":                                       ; preds = %entry
  %"$c_62" = bitcast %TName_Bool* %1 to %CName_True*
  %"$x_63" = load %Int32, %Int32* %x
  store %Int32 %"$x_63", %Int32* %"$retval_4"
  br label %"$matchsucc_56"

"$default_60":                                    ; preds = %entry
  br label %"$joinp_0"

"$joinp_0":                                       ; preds = %"$default_60"
  %"$y_57" = load %Int32, %Int32* %y
  store %Int32 %"$y_57", %Int32* %"$retval_4"
  br label %"$matchsucc_56"

"$matchsucc_56":                                  ; preds = %"$True_61", %"$joinp_0"
  %"$$retval_4_64" = load %Int32, %Int32* %"$retval_4"
  ret %Int32 %"$$retval_4_64"
}

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @"$scilla_expr_65"(i8* %0) {
entry:
  %"$expr_2" = alloca %Int32
  %x = alloca %Int32
  store %Int32 { i32 42 }, %Int32* %x
  %y = alloca %Int32
  store %Int32 { i32 41 }, %Int32* %y
  %f = alloca { %Int32 (i8*, %TName_Bool*)*, i8* }
  %"$$fundef_3_envp_66_load" = load i8*, i8** @_execptr
  %"$$fundef_3_envp_66_salloc" = call i8* @_salloc(i8* %"$$fundef_3_envp_66_load", i64 8)
  %"$$fundef_3_envp_66" = bitcast i8* %"$$fundef_3_envp_66_salloc" to %"$$fundef_3_env_51"*
  %"$$fundef_3_env_voidp_68" = bitcast %"$$fundef_3_env_51"* %"$$fundef_3_envp_66" to i8*
  %"$$fundef_3_cloval_69" = insertvalue { %Int32 (i8*, %TName_Bool*)*, i8* } { %Int32 (i8*, %TName_Bool*)* bitcast (%Int32 (%"$$fundef_3_env_51"*, %TName_Bool*)* @"$fundef_3" to %Int32 (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_3_env_voidp_68", 1
  %"$$fundef_3_env_x_70" = getelementptr inbounds %"$$fundef_3_env_51", %"$$fundef_3_env_51"* %"$$fundef_3_envp_66", i32 0, i32 0
  %"$x_71" = load %Int32, %Int32* %x
  store %Int32 %"$x_71", %Int32* %"$$fundef_3_env_x_70"
  %"$$fundef_3_env_y_72" = getelementptr inbounds %"$$fundef_3_env_51", %"$$fundef_3_env_51"* %"$$fundef_3_envp_66", i32 0, i32 1
  %"$y_73" = load %Int32, %Int32* %y
  store %Int32 %"$y_73", %Int32* %"$$fundef_3_env_y_72"
  store { %Int32 (i8*, %TName_Bool*)*, i8* } %"$$fundef_3_cloval_69", { %Int32 (i8*, %TName_Bool*)*, i8* }* %f
  %t = alloca %TName_Bool*
  %"$adtval_74_load" = load i8*, i8** @_execptr
  %"$adtval_74_salloc" = call i8* @_salloc(i8* %"$adtval_74_load", i64 1)
  %"$adtval_74" = bitcast i8* %"$adtval_74_salloc" to %CName_True*
  %"$adtgep_75" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_74", i32 0, i32 0
  store i8 0, i8* %"$adtgep_75"
  %"$adtptr_76" = bitcast %CName_True* %"$adtval_74" to %TName_Bool*
  store %TName_Bool* %"$adtptr_76", %TName_Bool** %t
  %"$f_1" = alloca %Int32
  %"$f_77" = load { %Int32 (i8*, %TName_Bool*)*, i8* }, { %Int32 (i8*, %TName_Bool*)*, i8* }* %f
  %"$f_fptr_78" = extractvalue { %Int32 (i8*, %TName_Bool*)*, i8* } %"$f_77", 0
  %"$f_envptr_79" = extractvalue { %Int32 (i8*, %TName_Bool*)*, i8* } %"$f_77", 1
  %"$t_80" = load %TName_Bool*, %TName_Bool** %t
  %"$f_call_81" = call %Int32 %"$f_fptr_78"(i8* %"$f_envptr_79", %TName_Bool* %"$t_80")
  store %Int32 %"$f_call_81", %Int32* %"$f_1"
  %"$$f_1_82" = load %Int32, %Int32* %"$f_1"
  store %Int32 %"$$f_1_82", %Int32* %"$expr_2"
  %"$$expr_2_83" = load %Int32, %Int32* %"$expr_2"
  ret %Int32 %"$$expr_2_83"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_84" = call %Int32 @"$scilla_expr_65"(i8* null)
  %"$pval_85" = alloca %Int32
  %"$memvoidcast_86" = bitcast %Int32* %"$pval_85" to i8*
  store %Int32 %"$exprval_84", %Int32* %"$pval_85"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$memvoidcast_86")
  ret void
}
