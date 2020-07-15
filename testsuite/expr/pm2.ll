; let x = Int32 42 in
; let y = Int32 41 in
; let f = fun (o : Option (Option Int32)) =>
; match o with
; | None => x
; | Some None => y
; | Some (Some z) => z
; end
; in
; let o1 = Some {Int32} x in
; let o2 = Some {(Option Int32)} o1 in
; f o2
; 
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
%"$$fundef_3_env_61" = type { %Int32, %Int32 }
%"TName_Option_Option_(Int32)" = type { i8, %"CName_Some_Option_(Int32)"*, %"CName_None_Option_(Int32)"* }
%"CName_Some_Option_(Int32)" = type <{ i8, %TName_Option_Int32* }>
%TName_Option_Int32 = type { i8, %CName_Some_Int32*, %CName_None_Int32* }
%CName_Some_Int32 = type <{ i8, %Int32 }>
%CName_None_Int32 = type <{ i8 }>
%"CName_None_Option_(Int32)" = type <{ i8 }>

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
@"$TyDescr_ADT_Option_Int32_37" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Option_Int32_ADTTyp_Specl_49" to i8*) }
@"$TyDescr_ADT_Option_Option_(Int32)_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_58" to i8*) }
@"$TyDescr_Option_ADTTyp_40" = unnamed_addr constant %"$TyDescrTy_ADTTyp_35" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_60", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_34"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_34"*], [2 x %"$TyDescrTy_ADTTyp_Specl_34"*]* @"$TyDescr_Option_ADTTyp_m_specls_59", i32 0, i32 0) }
@"$TyDescr_Option_Some_Int32_Constr_m_args_41" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@"$TyDescr_ADT_Some_42" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int32_ADTTyp_Constr_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_42", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int32_Constr_m_args_41", i32 0, i32 0) }
@"$TyDescr_Option_None_Int32_Constr_m_args_44" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_45" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int32_ADTTyp_Constr_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_45", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int32_Constr_m_args_44", i32 0, i32 0) }
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_47" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_36"*] [%"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Option_Some_Int32_ADTTyp_Constr_43", %"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Option_None_Int32_ADTTyp_Constr_46"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_48" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_34" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_48", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_36"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_36"*], [2 x %"$TyDescrTy_ADTTyp_Constr_36"*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_47", i32 0, i32 0), %"$TyDescrTy_ADTTyp_35"* @"$TyDescr_Option_ADTTyp_40" }
@"$TyDescr_Option_Some_Option_(Int32)_Constr_m_args_50" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_37"]
@"$TyDescr_ADT_Some_51" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Option_(Int32)_ADTTyp_Constr_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_51", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Option_(Int32)_Constr_m_args_50", i32 0, i32 0) }
@"$TyDescr_Option_None_Option_(Int32)_Constr_m_args_53" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_54" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Option_(Int32)_ADTTyp_Constr_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_54", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Option_(Int32)_Constr_m_args_53", i32 0, i32 0) }
@"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_constrs_56" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_36"*] [%"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Option_Some_Option_(Int32)_ADTTyp_Constr_52", %"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Option_None_Option_(Int32)_ADTTyp_Constr_55"]
@"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_TArgs_57" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_37"]
@"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_34" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_TArgs_57", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_36"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_36"*], [2 x %"$TyDescrTy_ADTTyp_Constr_36"*]* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_constrs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_35"* @"$TyDescr_Option_ADTTyp_40" }
@"$TyDescr_Option_ADTTyp_m_specls_59" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_34"*] [%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Option_Int32_ADTTyp_Specl_49", %"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_58"]
@"$TyDescr_ADT_Option_60" = unnamed_addr constant [6 x i8] c"Option"

define internal %Int32 @"$fundef_3"(%"$$fundef_3_env_61"* %0, %"TName_Option_Option_(Int32)"* %1) {
entry:
  %"$$fundef_3_env_x_62" = getelementptr inbounds %"$$fundef_3_env_61", %"$$fundef_3_env_61"* %0, i32 0, i32 0
  %"$x_envload_63" = load %Int32, %Int32* %"$$fundef_3_env_x_62"
  %x = alloca %Int32
  store %Int32 %"$x_envload_63", %Int32* %x
  %"$$fundef_3_env_y_64" = getelementptr inbounds %"$$fundef_3_env_61", %"$$fundef_3_env_61"* %0, i32 0, i32 1
  %"$y_envload_65" = load %Int32, %Int32* %"$$fundef_3_env_y_64"
  %y = alloca %Int32
  store %Int32 %"$y_envload_65", %Int32* %y
  %"$retval_4" = alloca %Int32
  %"$o_tag_67" = getelementptr inbounds %"TName_Option_Option_(Int32)", %"TName_Option_Option_(Int32)"* %1, i32 0, i32 0
  %"$o_tag_68" = load i8, i8* %"$o_tag_67"
  switch i8 %"$o_tag_68", label %"$empty_default_69" [
    i8 1, label %"$None_70"
    i8 0, label %"$Some_73"
  ]

"$None_70":                                       ; preds = %entry
  %"$o_71" = bitcast %"TName_Option_Option_(Int32)"* %1 to %"CName_None_Option_(Int32)"*
  %"$x_72" = load %Int32, %Int32* %x
  store %Int32 %"$x_72", %Int32* %"$retval_4"
  br label %"$matchsucc_66"

"$Some_73":                                       ; preds = %entry
  %"$o_74" = bitcast %"TName_Option_Option_(Int32)"* %1 to %"CName_Some_Option_(Int32)"*
  %"$$o_0_gep_75" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$o_74", i32 0, i32 1
  %"$$o_0_load_76" = load %TName_Option_Int32*, %TName_Option_Int32** %"$$o_0_gep_75"
  %"$o_0" = alloca %TName_Option_Int32*
  store %TName_Option_Int32* %"$$o_0_load_76", %TName_Option_Int32** %"$o_0"
  %"$$o_0_78" = load %TName_Option_Int32*, %TName_Option_Int32** %"$o_0"
  %"$$o_0_tag_79" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$o_0_78", i32 0, i32 0
  %"$$o_0_tag_80" = load i8, i8* %"$$o_0_tag_79"
  switch i8 %"$$o_0_tag_80", label %"$empty_default_81" [
    i8 1, label %"$None_82"
    i8 0, label %"$Some_85"
  ]

"$None_82":                                       ; preds = %"$Some_73"
  %"$$o_0_83" = bitcast %TName_Option_Int32* %"$$o_0_78" to %CName_None_Int32*
  %"$y_84" = load %Int32, %Int32* %y
  store %Int32 %"$y_84", %Int32* %"$retval_4"
  br label %"$matchsucc_77"

"$Some_85":                                       ; preds = %"$Some_73"
  %"$$o_0_86" = bitcast %TName_Option_Int32* %"$$o_0_78" to %CName_Some_Int32*
  %"$z_gep_87" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$o_0_86", i32 0, i32 1
  %"$z_load_88" = load %Int32, %Int32* %"$z_gep_87"
  %z = alloca %Int32
  store %Int32 %"$z_load_88", %Int32* %z
  %"$z_89" = load %Int32, %Int32* %z
  store %Int32 %"$z_89", %Int32* %"$retval_4"
  br label %"$matchsucc_77"

"$empty_default_81":                              ; preds = %"$Some_73"
  br label %"$matchsucc_77"

"$matchsucc_77":                                  ; preds = %"$Some_85", %"$None_82", %"$empty_default_81"
  br label %"$matchsucc_66"

"$empty_default_69":                              ; preds = %entry
  br label %"$matchsucc_66"

"$matchsucc_66":                                  ; preds = %"$matchsucc_77", %"$None_70", %"$empty_default_69"
  %"$$retval_4_90" = load %Int32, %Int32* %"$retval_4"
  ret %Int32 %"$$retval_4_90"
}

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @"$scilla_expr_91"(i8* %0) {
entry:
  %"$expr_2" = alloca %Int32
  %x = alloca %Int32
  store %Int32 { i32 42 }, %Int32* %x
  %y = alloca %Int32
  store %Int32 { i32 41 }, %Int32* %y
  %f = alloca { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }
  %"$$fundef_3_envp_92_load" = load i8*, i8** @_execptr
  %"$$fundef_3_envp_92_salloc" = call i8* @_salloc(i8* %"$$fundef_3_envp_92_load", i64 8)
  %"$$fundef_3_envp_92" = bitcast i8* %"$$fundef_3_envp_92_salloc" to %"$$fundef_3_env_61"*
  %"$$fundef_3_env_voidp_94" = bitcast %"$$fundef_3_env_61"* %"$$fundef_3_envp_92" to i8*
  %"$$fundef_3_cloval_95" = insertvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)* bitcast (%Int32 (%"$$fundef_3_env_61"*, %"TName_Option_Option_(Int32)"*)* @"$fundef_3" to %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*), i8* undef }, i8* %"$$fundef_3_env_voidp_94", 1
  %"$$fundef_3_env_x_96" = getelementptr inbounds %"$$fundef_3_env_61", %"$$fundef_3_env_61"* %"$$fundef_3_envp_92", i32 0, i32 0
  %"$x_97" = load %Int32, %Int32* %x
  store %Int32 %"$x_97", %Int32* %"$$fundef_3_env_x_96"
  %"$$fundef_3_env_y_98" = getelementptr inbounds %"$$fundef_3_env_61", %"$$fundef_3_env_61"* %"$$fundef_3_envp_92", i32 0, i32 1
  %"$y_99" = load %Int32, %Int32* %y
  store %Int32 %"$y_99", %Int32* %"$$fundef_3_env_y_98"
  store { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$$fundef_3_cloval_95", { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }* %f
  %o1 = alloca %TName_Option_Int32*
  %"$x_100" = load %Int32, %Int32* %x
  %"$adtval_101_load" = load i8*, i8** @_execptr
  %"$adtval_101_salloc" = call i8* @_salloc(i8* %"$adtval_101_load", i64 5)
  %"$adtval_101" = bitcast i8* %"$adtval_101_salloc" to %CName_Some_Int32*
  %"$adtgep_102" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$adtval_101", i32 0, i32 0
  store i8 0, i8* %"$adtgep_102"
  %"$adtgep_103" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$adtval_101", i32 0, i32 1
  store %Int32 %"$x_100", %Int32* %"$adtgep_103"
  %"$adtptr_104" = bitcast %CName_Some_Int32* %"$adtval_101" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$adtptr_104", %TName_Option_Int32** %o1
  %o2 = alloca %"TName_Option_Option_(Int32)"*
  %"$o1_105" = load %TName_Option_Int32*, %TName_Option_Int32** %o1
  %"$adtval_106_load" = load i8*, i8** @_execptr
  %"$adtval_106_salloc" = call i8* @_salloc(i8* %"$adtval_106_load", i64 9)
  %"$adtval_106" = bitcast i8* %"$adtval_106_salloc" to %"CName_Some_Option_(Int32)"*
  %"$adtgep_107" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$adtval_106", i32 0, i32 0
  store i8 0, i8* %"$adtgep_107"
  %"$adtgep_108" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$adtval_106", i32 0, i32 1
  store %TName_Option_Int32* %"$o1_105", %TName_Option_Int32** %"$adtgep_108"
  %"$adtptr_109" = bitcast %"CName_Some_Option_(Int32)"* %"$adtval_106" to %"TName_Option_Option_(Int32)"*
  store %"TName_Option_Option_(Int32)"* %"$adtptr_109", %"TName_Option_Option_(Int32)"** %o2
  %"$f_1" = alloca %Int32
  %"$f_110" = load { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }, { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }* %f
  %"$f_fptr_111" = extractvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$f_110", 0
  %"$f_envptr_112" = extractvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$f_110", 1
  %"$o2_113" = load %"TName_Option_Option_(Int32)"*, %"TName_Option_Option_(Int32)"** %o2
  %"$f_call_114" = call %Int32 %"$f_fptr_111"(i8* %"$f_envptr_112", %"TName_Option_Option_(Int32)"* %"$o2_113")
  store %Int32 %"$f_call_114", %Int32* %"$f_1"
  %"$$f_1_115" = load %Int32, %Int32* %"$f_1"
  store %Int32 %"$$f_1_115", %Int32* %"$expr_2"
  %"$$expr_2_116" = load %Int32, %Int32* %"$expr_2"
  ret %Int32 %"$$expr_2_116"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_117" = call %Int32 @"$scilla_expr_91"(i8* null)
  %"$pval_118" = alloca %Int32
  %"$memvoidcast_119" = bitcast %Int32* %"$pval_118" to i8*
  store %Int32 %"$exprval_117", %Int32* %"$pval_118"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$memvoidcast_119")
  ret void
}
