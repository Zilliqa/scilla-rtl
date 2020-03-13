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
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_5" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_27" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_26"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_26" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_28"**, %"$TyDescrTy_ADTTyp_27"* }
%"$TyDescrTy_ADTTyp_Constr_28" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$$fundef_3_env_53" = type { %Int32, %Int32 }
%"TName_Option_Option_(Int32)" = type { i8, %"CName_Some_Option_(Int32)"*, %"CName_None_Option_(Int32)"* }
%"CName_Some_Option_(Int32)" = type <{ i8, %TName_Option_Int32* }>
%TName_Option_Int32 = type { i8, %CName_Some_Int32*, %CName_None_Int32* }
%CName_Some_Int32 = type <{ i8, %Int32 }>
%CName_None_Int32 = type <{ i8 }>
%"CName_None_Option_(Int32)" = type <{ i8 }>

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
@"$TyDescr_ADT_Option_Int32_29" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_26"* @"$TyDescr_Option_Int32_ADTTyp_Specl_41" to i8*) }
@"$TyDescr_ADT_Option_Option_(Int32)_30" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_26"* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_50" to i8*) }
@"$TyDescr_Option_ADTTyp_32" = unnamed_addr constant %"$TyDescrTy_ADTTyp_27" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_52", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_26"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_26"*], [2 x %"$TyDescrTy_ADTTyp_Specl_26"*]* @"$TyDescr_Option_ADTTyp_m_specls_51", i32 0, i32 0) }
@"$TyDescr_Option_Some_Int32_Constr_m_args_33" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@"$TyDescr_ADT_Some_34" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int32_ADTTyp_Constr_35" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_28" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_34", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int32_Constr_m_args_33", i32 0, i32 0) }
@"$TyDescr_Option_None_Int32_Constr_m_args_36" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_37" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int32_ADTTyp_Constr_38" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_28" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_37", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int32_Constr_m_args_36", i32 0, i32 0) }
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_39" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_28"*] [%"$TyDescrTy_ADTTyp_Constr_28"* @"$TyDescr_Option_Some_Int32_ADTTyp_Constr_35", %"$TyDescrTy_ADTTyp_Constr_28"* @"$TyDescr_Option_None_Int32_ADTTyp_Constr_38"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_40" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_41" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_26" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_40", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_28"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_28"*], [2 x %"$TyDescrTy_ADTTyp_Constr_28"*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_39", i32 0, i32 0), %"$TyDescrTy_ADTTyp_27"* @"$TyDescr_Option_ADTTyp_32" }
@"$TyDescr_Option_Some_Option_(Int32)_Constr_m_args_42" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_29"]
@"$TyDescr_ADT_Some_43" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Option_(Int32)_ADTTyp_Constr_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_28" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_43", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Option_(Int32)_Constr_m_args_42", i32 0, i32 0) }
@"$TyDescr_Option_None_Option_(Int32)_Constr_m_args_45" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_46" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Option_(Int32)_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_28" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_46", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Option_(Int32)_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_constrs_48" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_28"*] [%"$TyDescrTy_ADTTyp_Constr_28"* @"$TyDescr_Option_Some_Option_(Int32)_ADTTyp_Constr_44", %"$TyDescrTy_ADTTyp_Constr_28"* @"$TyDescr_Option_None_Option_(Int32)_ADTTyp_Constr_47"]
@"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_TArgs_49" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_29"]
@"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_26" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_TArgs_49", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_28"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_28"*], [2 x %"$TyDescrTy_ADTTyp_Constr_28"*]* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_constrs_48", i32 0, i32 0), %"$TyDescrTy_ADTTyp_27"* @"$TyDescr_Option_ADTTyp_32" }
@"$TyDescr_Option_ADTTyp_m_specls_51" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_26"*] [%"$TyDescrTy_ADTTyp_Specl_26"* @"$TyDescr_Option_Int32_ADTTyp_Specl_41", %"$TyDescrTy_ADTTyp_Specl_26"* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_50"]
@"$TyDescr_ADT_Option_52" = unnamed_addr constant [6 x i8] c"Option"

define internal %Int32 @"$fundef_3"(%"$$fundef_3_env_53"*, %"TName_Option_Option_(Int32)"*) {
entry:
  %"$$fundef_3_env_x_54" = getelementptr inbounds %"$$fundef_3_env_53", %"$$fundef_3_env_53"* %0, i32 0, i32 0
  %"$x_envload_55" = load %Int32, %Int32* %"$$fundef_3_env_x_54"
  %x = alloca %Int32
  store %Int32 %"$x_envload_55", %Int32* %x
  %"$$fundef_3_env_y_56" = getelementptr inbounds %"$$fundef_3_env_53", %"$$fundef_3_env_53"* %0, i32 0, i32 1
  %"$y_envload_57" = load %Int32, %Int32* %"$$fundef_3_env_y_56"
  %y = alloca %Int32
  store %Int32 %"$y_envload_57", %Int32* %y
  %"$retval_4" = alloca %Int32
  %"$o_tag_59" = getelementptr inbounds %"TName_Option_Option_(Int32)", %"TName_Option_Option_(Int32)"* %1, i32 0, i32 0
  %"$o_tag_60" = load i8, i8* %"$o_tag_59"
  switch i8 %"$o_tag_60", label %"$empty_default_61" [
    i8 1, label %"$None_62"
    i8 0, label %"$Some_65"
  ]

"$None_62":                                       ; preds = %entry
  %"$o_63" = bitcast %"TName_Option_Option_(Int32)"* %1 to %"CName_None_Option_(Int32)"*
  %"$x_64" = load %Int32, %Int32* %x
  store %Int32 %"$x_64", %Int32* %"$retval_4"
  br label %"$matchsucc_58"

"$Some_65":                                       ; preds = %entry
  %"$o_66" = bitcast %"TName_Option_Option_(Int32)"* %1 to %"CName_Some_Option_(Int32)"*
  %"$$o_0_gep_67" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$o_66", i32 0, i32 1
  %"$$o_0_load_68" = load %TName_Option_Int32*, %TName_Option_Int32** %"$$o_0_gep_67"
  %"$o_0" = alloca %TName_Option_Int32*
  store %TName_Option_Int32* %"$$o_0_load_68", %TName_Option_Int32** %"$o_0"
  %"$$o_0_70" = load %TName_Option_Int32*, %TName_Option_Int32** %"$o_0"
  %"$$o_0_tag_71" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$o_0_70", i32 0, i32 0
  %"$$o_0_tag_72" = load i8, i8* %"$$o_0_tag_71"
  switch i8 %"$$o_0_tag_72", label %"$empty_default_73" [
    i8 1, label %"$None_74"
    i8 0, label %"$Some_77"
  ]

"$None_74":                                       ; preds = %"$Some_65"
  %"$$o_0_75" = bitcast %TName_Option_Int32* %"$$o_0_70" to %CName_None_Int32*
  %"$y_76" = load %Int32, %Int32* %y
  store %Int32 %"$y_76", %Int32* %"$retval_4"
  br label %"$matchsucc_69"

"$Some_77":                                       ; preds = %"$Some_65"
  %"$$o_0_78" = bitcast %TName_Option_Int32* %"$$o_0_70" to %CName_Some_Int32*
  %"$z_gep_79" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$o_0_78", i32 0, i32 1
  %"$z_load_80" = load %Int32, %Int32* %"$z_gep_79"
  %z = alloca %Int32
  store %Int32 %"$z_load_80", %Int32* %z
  %"$z_81" = load %Int32, %Int32* %z
  store %Int32 %"$z_81", %Int32* %"$retval_4"
  br label %"$matchsucc_69"

"$empty_default_73":                              ; preds = %"$Some_65"
  br label %"$matchsucc_69"

"$matchsucc_69":                                  ; preds = %"$Some_77", %"$None_74", %"$empty_default_73"
  br label %"$matchsucc_58"

"$empty_default_61":                              ; preds = %entry
  br label %"$matchsucc_58"

"$matchsucc_58":                                  ; preds = %"$matchsucc_69", %"$None_62", %"$empty_default_61"
  %"$$retval_4_82" = load %Int32, %Int32* %"$retval_4"
  ret %Int32 %"$$retval_4_82"
}

define internal %Int32 @"$scilla_expr_83"(i8*) {
entry:
  %"$expr_2" = alloca %Int32
  %x = alloca %Int32
  store %Int32 { i32 42 }, %Int32* %x
  %y = alloca %Int32
  store %Int32 { i32 41 }, %Int32* %y
  %f = alloca { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }
  %malloccall = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i64 2) to i32))
  %"$$fundef_3_envp_84" = bitcast i8* %malloccall to %"$$fundef_3_env_53"*
  %"$$fundef_3_env_voidp_86" = bitcast %"$$fundef_3_env_53"* %"$$fundef_3_envp_84" to i8*
  %"$$fundef_3_cloval_87" = insertvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)* bitcast (%Int32 (%"$$fundef_3_env_53"*, %"TName_Option_Option_(Int32)"*)* @"$fundef_3" to %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*), i8* undef }, i8* %"$$fundef_3_env_voidp_86", 1
  %"$$fundef_3_envp_88" = extractvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$$fundef_3_cloval_87", 1
  %"$$fundef_3_envp_89" = bitcast i8* %"$$fundef_3_envp_88" to %"$$fundef_3_env_53"*
  %"$$fundef_3_env_x_90" = getelementptr inbounds %"$$fundef_3_env_53", %"$$fundef_3_env_53"* %"$$fundef_3_envp_89", i32 0, i32 0
  %"$x_91" = load %Int32, %Int32* %x
  store %Int32 %"$x_91", %Int32* %"$$fundef_3_env_x_90"
  %"$$fundef_3_envp_92" = extractvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$$fundef_3_cloval_87", 1
  %"$$fundef_3_envp_93" = bitcast i8* %"$$fundef_3_envp_92" to %"$$fundef_3_env_53"*
  %"$$fundef_3_env_y_94" = getelementptr inbounds %"$$fundef_3_env_53", %"$$fundef_3_env_53"* %"$$fundef_3_envp_93", i32 0, i32 1
  %"$y_95" = load %Int32, %Int32* %y
  store %Int32 %"$y_95", %Int32* %"$$fundef_3_env_y_94"
  store { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$$fundef_3_cloval_87", { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }* %f
  %o1 = alloca %TName_Option_Int32*
  %"$x_96" = load %Int32, %Int32* %x
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (%CName_Some_Int32* getelementptr (%CName_Some_Int32, %CName_Some_Int32* null, i32 1) to i32))
  %"$adtval_97" = bitcast i8* %malloccall1 to %CName_Some_Int32*
  %"$adtgep_98" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$adtval_97", i32 0, i32 0
  store i8 0, i8* %"$adtgep_98"
  %"$adtgep_99" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$adtval_97", i32 0, i32 1
  store %Int32 %"$x_96", %Int32* %"$adtgep_99"
  %"$adtptr_100" = bitcast %CName_Some_Int32* %"$adtval_97" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$adtptr_100", %TName_Option_Int32** %o1
  %o2 = alloca %"TName_Option_Option_(Int32)"*
  %"$o1_101" = load %TName_Option_Int32*, %TName_Option_Int32** %o1
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (%"CName_Some_Option_(Int32)"* getelementptr (%"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* null, i32 1) to i32))
  %"$adtval_102" = bitcast i8* %malloccall2 to %"CName_Some_Option_(Int32)"*
  %"$adtgep_103" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$adtval_102", i32 0, i32 0
  store i8 0, i8* %"$adtgep_103"
  %"$adtgep_104" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$adtval_102", i32 0, i32 1
  store %TName_Option_Int32* %"$o1_101", %TName_Option_Int32** %"$adtgep_104"
  %"$adtptr_105" = bitcast %"CName_Some_Option_(Int32)"* %"$adtval_102" to %"TName_Option_Option_(Int32)"*
  store %"TName_Option_Option_(Int32)"* %"$adtptr_105", %"TName_Option_Option_(Int32)"** %o2
  %"$f_1" = alloca %Int32
  %"$f_106" = load { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }, { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }* %f
  %"$f_fptr_107" = extractvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$f_106", 0
  %"$f_envptr_108" = extractvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$f_106", 1
  %"$o2_109" = load %"TName_Option_Option_(Int32)"*, %"TName_Option_Option_(Int32)"** %o2
  %"$f_call_110" = call %Int32 %"$f_fptr_107"(i8* %"$f_envptr_108", %"TName_Option_Option_(Int32)"* %"$o2_109")
  store %Int32 %"$f_call_110", %Int32* %"$f_1"
  %"$$f_1_111" = load %Int32, %Int32* %"$f_1"
  store %Int32 %"$$f_1_111", %Int32* %"$expr_2"
  %"$$expr_2_112" = load %Int32, %Int32* %"$expr_2"
  ret %Int32 %"$$expr_2_112"
}

declare noalias i8* @malloc(i32)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_113" = call %Int32 @"$scilla_expr_83"(i8* null)
  %"$pval_114" = alloca %Int32
  %"$memvoidcast_115" = bitcast %Int32* %"$pval_114" to i8*
  store %Int32 %"$exprval_113", %Int32* %"$pval_114"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$memvoidcast_115")
  ret void
}
