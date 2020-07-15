; let i32a = Int32 0 in
; let i32b = Int32 1 in
; let i32aa = Int32 0 in
; let b1 = builtin eq i32a i32aa in
; let b2 = builtin eq i32a i32b in
; 
; let i128a = Uint128 11 in
; let i128b = Uint128 12 in
; let i128aa = Uint128 11 in
; let b3 = builtin eq i128a i128b in
; let b4 = builtin eq i128a i128a in
; let b5 = andb b1 b2 in
; let b6 = orb b3 b4 in
; let b7 = andb b5 b6 in
; 
; let ui256a = Uint128 11 in
; let ui256b = Uint128 12 in
; let ui256aa = Uint128 11 in
; let b8 = builtin eq ui256a ui256b in
; let b9 = builtin eq ui256a ui256a in
; let b10 = andb b7 b8 in
; let b11 = orb b10 b9 in
; 
; let s1 = "Hello" in
; let s2 = "World" in
; let s11 = "Hello" in
; let b12 = builtin eq s1 s2 in
; let b13 = builtin eq s1 s11 in
; let b14 = andb b9 b12 in
; let b15 = orb b13 b14 in
; 
; let bs1 = 0x00ff in
; let bs2 = 0xff00 in
; let bs11 = 0x00ff in
; let b16 = builtin eq bs1 bs2 in
; let b17 = builtin eq bs1 bs11 in
; let b18 = orb b16 b17 in
; let b19 = andb b18 b15 in
; 
; b19
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_17" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_49" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_48"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_48" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_50"**, %"$TyDescrTy_ADTTyp_49"* }
%"$TyDescrTy_ADTTyp_Constr_50" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Bool = type { i8, %True*, %False* }
%True = type <{ i8 }>
%False = type <{ i8 }>
%"$$fundef_10_env_65" = type { %Bool* }
%"$$fundef_8_env_66" = type {}
%"$$fundef_14_env_67" = type { %Bool* }
%"$$fundef_12_env_68" = type {}
%Uint128 = type { i128 }
%String = type { i8*, i32 }

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_18" = global %"$TyDescrTy_PrimTyp_17" zeroinitializer
@"$TyDescr_Int32_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Int32_Prim_18" to i8*) }
@"$TyDescr_Uint32_Prim_20" = global %"$TyDescrTy_PrimTyp_17" { i32 1, i32 0 }
@"$TyDescr_Uint32_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Uint32_Prim_20" to i8*) }
@"$TyDescr_Int64_Prim_22" = global %"$TyDescrTy_PrimTyp_17" { i32 0, i32 1 }
@"$TyDescr_Int64_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Int64_Prim_22" to i8*) }
@"$TyDescr_Uint64_Prim_24" = global %"$TyDescrTy_PrimTyp_17" { i32 1, i32 1 }
@"$TyDescr_Uint64_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Uint64_Prim_24" to i8*) }
@"$TyDescr_Int128_Prim_26" = global %"$TyDescrTy_PrimTyp_17" { i32 0, i32 2 }
@"$TyDescr_Int128_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Int128_Prim_26" to i8*) }
@"$TyDescr_Uint128_Prim_28" = global %"$TyDescrTy_PrimTyp_17" { i32 1, i32 2 }
@"$TyDescr_Uint128_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Uint128_Prim_28" to i8*) }
@"$TyDescr_Int256_Prim_30" = global %"$TyDescrTy_PrimTyp_17" { i32 0, i32 3 }
@"$TyDescr_Int256_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Int256_Prim_30" to i8*) }
@"$TyDescr_Uint256_Prim_32" = global %"$TyDescrTy_PrimTyp_17" { i32 1, i32 3 }
@"$TyDescr_Uint256_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Uint256_Prim_32" to i8*) }
@"$TyDescr_String_Prim_34" = global %"$TyDescrTy_PrimTyp_17" { i32 2, i32 0 }
@"$TyDescr_String_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_String_Prim_34" to i8*) }
@"$TyDescr_Bnum_Prim_36" = global %"$TyDescrTy_PrimTyp_17" { i32 3, i32 0 }
@"$TyDescr_Bnum_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Bnum_Prim_36" to i8*) }
@"$TyDescr_Message_Prim_38" = global %"$TyDescrTy_PrimTyp_17" { i32 4, i32 0 }
@"$TyDescr_Message_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Message_Prim_38" to i8*) }
@"$TyDescr_Event_Prim_40" = global %"$TyDescrTy_PrimTyp_17" { i32 5, i32 0 }
@"$TyDescr_Event_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Event_Prim_40" to i8*) }
@"$TyDescr_Exception_Prim_42" = global %"$TyDescrTy_PrimTyp_17" { i32 6, i32 0 }
@"$TyDescr_Exception_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Exception_Prim_42" to i8*) }
@"$TyDescr_Bystr_Prim_44" = global %"$TyDescrTy_PrimTyp_17" { i32 7, i32 0 }
@"$TyDescr_Bystr_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Bystr_Prim_44" to i8*) }
@"$TyDescr_Bystr2_Prim_46" = global %"$TyDescrTy_PrimTyp_17" { i32 8, i32 2 }
@"$TyDescr_Bystr2_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Bystr2_Prim_46" to i8*) }
@"$TyDescr_ADT_Bool_51" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_48"* @"$TyDescr_Bool_ADTTyp_Specl_62" to i8*) }
@"$TyDescr_Bool_ADTTyp_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_64", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_48"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_48"*], [1 x %"$TyDescrTy_ADTTyp_Specl_48"*]* @"$TyDescr_Bool_ADTTyp_m_specls_63", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_54" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_55" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_50" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_55", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_54", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_57" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_58" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_50" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_58", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_57", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_60" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_50"*] [%"$TyDescrTy_ADTTyp_Constr_50"* @"$TyDescr_Bool_True_ADTTyp_Constr_56", %"$TyDescrTy_ADTTyp_Constr_50"* @"$TyDescr_Bool_False_ADTTyp_Constr_59"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_61" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_48" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_61", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_50"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_50"*], [2 x %"$TyDescrTy_ADTTyp_Constr_50"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_60", i32 0, i32 0), %"$TyDescrTy_ADTTyp_49"* @"$TyDescr_Bool_ADTTyp_53" }
@"$TyDescr_Bool_ADTTyp_m_specls_63" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_48"*] [%"$TyDescrTy_ADTTyp_Specl_48"* @"$TyDescr_Bool_ADTTyp_Specl_62"]
@"$TyDescr_ADT_Bool_64" = unnamed_addr constant [4 x i8] c"Bool"
@andb = global { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* } zeroinitializer
@orb = global { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* } zeroinitializer
@"$stringlit_122" = unnamed_addr constant [5 x i8] c"Hello"
@"$stringlit_123" = unnamed_addr constant [5 x i8] c"World"
@"$stringlit_124" = unnamed_addr constant [5 x i8] c"Hello"

define internal %Bool* @"$fundef_10"(%"$$fundef_10_env_65"* %0, %Bool* %1) {
entry:
  %"$$fundef_10_env_b_96" = getelementptr inbounds %"$$fundef_10_env_65", %"$$fundef_10_env_65"* %0, i32 0, i32 0
  %"$b_envload_97" = load %Bool*, %Bool** %"$$fundef_10_env_b_96"
  %b = alloca %Bool*
  store %Bool* %"$b_envload_97", %Bool** %b
  %"$retval_11" = alloca %Bool*
  %"$b_99" = load %Bool*, %Bool** %b
  %"$b_tag_100" = getelementptr inbounds %Bool, %Bool* %"$b_99", i32 0, i32 0
  %"$b_tag_101" = load i8, i8* %"$b_tag_100"
  switch i8 %"$b_tag_101", label %"$empty_default_102" [
    i8 0, label %"$True_103"
    i8 1, label %"$False_108"
  ]

"$True_103":                                      ; preds = %entry
  %"$b_104" = bitcast %Bool* %"$b_99" to %True*
  %"$adtval_105_load" = load i8*, i8** @_execptr
  %"$adtval_105_salloc" = call i8* @_salloc(i8* %"$adtval_105_load", i64 1)
  %"$adtval_105" = bitcast i8* %"$adtval_105_salloc" to %True*
  %"$adtgep_106" = getelementptr inbounds %True, %True* %"$adtval_105", i32 0, i32 0
  store i8 0, i8* %"$adtgep_106"
  %"$adtptr_107" = bitcast %True* %"$adtval_105" to %Bool*
  store %Bool* %"$adtptr_107", %Bool** %"$retval_11"
  br label %"$matchsucc_98"

"$False_108":                                     ; preds = %entry
  %"$b_109" = bitcast %Bool* %"$b_99" to %False*
  store %Bool* %1, %Bool** %"$retval_11"
  br label %"$matchsucc_98"

"$empty_default_102":                             ; preds = %entry
  br label %"$matchsucc_98"

"$matchsucc_98":                                  ; preds = %"$False_108", %"$True_103", %"$empty_default_102"
  %"$$retval_11_110" = load %Bool*, %Bool** %"$retval_11"
  ret %Bool* %"$$retval_11_110"
}

define internal { %Bool* (i8*, %Bool*)*, i8* } @"$fundef_8"(%"$$fundef_8_env_66"* %0, %Bool* %1) {
entry:
  %"$retval_9" = alloca { %Bool* (i8*, %Bool*)*, i8* }
  %"$$fundef_10_envp_90_load" = load i8*, i8** @_execptr
  %"$$fundef_10_envp_90_salloc" = call i8* @_salloc(i8* %"$$fundef_10_envp_90_load", i64 8)
  %"$$fundef_10_envp_90" = bitcast i8* %"$$fundef_10_envp_90_salloc" to %"$$fundef_10_env_65"*
  %"$$fundef_10_env_voidp_92" = bitcast %"$$fundef_10_env_65"* %"$$fundef_10_envp_90" to i8*
  %"$$fundef_10_cloval_93" = insertvalue { %Bool* (i8*, %Bool*)*, i8* } { %Bool* (i8*, %Bool*)* bitcast (%Bool* (%"$$fundef_10_env_65"*, %Bool*)* @"$fundef_10" to %Bool* (i8*, %Bool*)*), i8* undef }, i8* %"$$fundef_10_env_voidp_92", 1
  %"$$fundef_10_env_b_94" = getelementptr inbounds %"$$fundef_10_env_65", %"$$fundef_10_env_65"* %"$$fundef_10_envp_90", i32 0, i32 0
  store %Bool* %1, %Bool** %"$$fundef_10_env_b_94"
  store { %Bool* (i8*, %Bool*)*, i8* } %"$$fundef_10_cloval_93", { %Bool* (i8*, %Bool*)*, i8* }* %"$retval_9"
  %"$$retval_9_95" = load { %Bool* (i8*, %Bool*)*, i8* }, { %Bool* (i8*, %Bool*)*, i8* }* %"$retval_9"
  ret { %Bool* (i8*, %Bool*)*, i8* } %"$$retval_9_95"
}

define internal %Bool* @"$fundef_14"(%"$$fundef_14_env_67"* %0, %Bool* %1) {
entry:
  %"$$fundef_14_env_b_75" = getelementptr inbounds %"$$fundef_14_env_67", %"$$fundef_14_env_67"* %0, i32 0, i32 0
  %"$b_envload_76" = load %Bool*, %Bool** %"$$fundef_14_env_b_75"
  %b = alloca %Bool*
  store %Bool* %"$b_envload_76", %Bool** %b
  %"$retval_15" = alloca %Bool*
  %"$b_78" = load %Bool*, %Bool** %b
  %"$b_tag_79" = getelementptr inbounds %Bool, %Bool* %"$b_78", i32 0, i32 0
  %"$b_tag_80" = load i8, i8* %"$b_tag_79"
  switch i8 %"$b_tag_80", label %"$empty_default_81" [
    i8 1, label %"$False_82"
    i8 0, label %"$True_87"
  ]

"$False_82":                                      ; preds = %entry
  %"$b_83" = bitcast %Bool* %"$b_78" to %False*
  %"$adtval_84_load" = load i8*, i8** @_execptr
  %"$adtval_84_salloc" = call i8* @_salloc(i8* %"$adtval_84_load", i64 1)
  %"$adtval_84" = bitcast i8* %"$adtval_84_salloc" to %False*
  %"$adtgep_85" = getelementptr inbounds %False, %False* %"$adtval_84", i32 0, i32 0
  store i8 1, i8* %"$adtgep_85"
  %"$adtptr_86" = bitcast %False* %"$adtval_84" to %Bool*
  store %Bool* %"$adtptr_86", %Bool** %"$retval_15"
  br label %"$matchsucc_77"

"$True_87":                                       ; preds = %entry
  %"$b_88" = bitcast %Bool* %"$b_78" to %True*
  store %Bool* %1, %Bool** %"$retval_15"
  br label %"$matchsucc_77"

"$empty_default_81":                              ; preds = %entry
  br label %"$matchsucc_77"

"$matchsucc_77":                                  ; preds = %"$True_87", %"$False_82", %"$empty_default_81"
  %"$$retval_15_89" = load %Bool*, %Bool** %"$retval_15"
  ret %Bool* %"$$retval_15_89"
}

define internal { %Bool* (i8*, %Bool*)*, i8* } @"$fundef_12"(%"$$fundef_12_env_68"* %0, %Bool* %1) {
entry:
  %"$retval_13" = alloca { %Bool* (i8*, %Bool*)*, i8* }
  %"$$fundef_14_envp_69_load" = load i8*, i8** @_execptr
  %"$$fundef_14_envp_69_salloc" = call i8* @_salloc(i8* %"$$fundef_14_envp_69_load", i64 8)
  %"$$fundef_14_envp_69" = bitcast i8* %"$$fundef_14_envp_69_salloc" to %"$$fundef_14_env_67"*
  %"$$fundef_14_env_voidp_71" = bitcast %"$$fundef_14_env_67"* %"$$fundef_14_envp_69" to i8*
  %"$$fundef_14_cloval_72" = insertvalue { %Bool* (i8*, %Bool*)*, i8* } { %Bool* (i8*, %Bool*)* bitcast (%Bool* (%"$$fundef_14_env_67"*, %Bool*)* @"$fundef_14" to %Bool* (i8*, %Bool*)*), i8* undef }, i8* %"$$fundef_14_env_voidp_71", 1
  %"$$fundef_14_env_b_73" = getelementptr inbounds %"$$fundef_14_env_67", %"$$fundef_14_env_67"* %"$$fundef_14_envp_69", i32 0, i32 0
  store %Bool* %1, %Bool** %"$$fundef_14_env_b_73"
  store { %Bool* (i8*, %Bool*)*, i8* } %"$$fundef_14_cloval_72", { %Bool* (i8*, %Bool*)*, i8* }* %"$retval_13"
  %"$$retval_13_74" = load { %Bool* (i8*, %Bool*)*, i8* }, { %Bool* (i8*, %Bool*)*, i8* }* %"$retval_13"
  ret { %Bool* (i8*, %Bool*)*, i8* } %"$$retval_13_74"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %Bool* @"$scilla_expr_111"(i8* %0) {
entry:
  store { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* } { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)* bitcast ({ %Bool* (i8*, %Bool*)*, i8* } (%"$$fundef_12_env_68"*, %Bool*)* @"$fundef_12" to { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*), i8* null }, { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* }* @andb
  store { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* } { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)* bitcast ({ %Bool* (i8*, %Bool*)*, i8* } (%"$$fundef_8_env_66"*, %Bool*)* @"$fundef_8" to { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*), i8* null }, { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* }* @orb
  %"$expr_16" = alloca %Bool*
  %ui256a = alloca %Uint128
  store %Uint128 { i128 11 }, %Uint128* %ui256a
  %b9 = alloca %Bool*
  %"$to_nat_load_118" = load i8*, i8** @_execptr
  %"$ui256a_119" = load %Uint128, %Uint128* %ui256a
  %"$ui256a_120" = load %Uint128, %Uint128* %ui256a
  %"$eq_call_121" = call %Bool* @_eq_Uint128(i8* %"$to_nat_load_118", %Uint128 %"$ui256a_119", %Uint128 %"$ui256a_120")
  store %Bool* %"$eq_call_121", %Bool** %b9
  %s1 = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_122", i32 0, i32 0), i32 5 }, %String* %s1
  %s2 = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_123", i32 0, i32 0), i32 5 }, %String* %s2
  %s11 = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_124", i32 0, i32 0), i32 5 }, %String* %s11
  %b12 = alloca %Bool*
  %"$to_nat_load_125" = load i8*, i8** @_execptr
  %"$s1_126" = load %String, %String* %s1
  %"$s2_127" = load %String, %String* %s2
  %"$eq_call_128" = call %Bool* @_eq_String(i8* %"$to_nat_load_125", %String %"$s1_126", %String %"$s2_127")
  store %Bool* %"$eq_call_128", %Bool** %b12
  %b13 = alloca %Bool*
  %"$to_nat_load_129" = load i8*, i8** @_execptr
  %"$s1_130" = load %String, %String* %s1
  %"$s11_131" = load %String, %String* %s11
  %"$eq_call_132" = call %Bool* @_eq_String(i8* %"$to_nat_load_129", %String %"$s1_130", %String %"$s11_131")
  store %Bool* %"$eq_call_132", %Bool** %b13
  %b14 = alloca %Bool*
  %"$andb_0" = alloca { %Bool* (i8*, %Bool*)*, i8* }
  %"$andb_133" = load { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* }, { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* }* @andb
  %"$andb_fptr_134" = extractvalue { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* } %"$andb_133", 0
  %"$andb_envptr_135" = extractvalue { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* } %"$andb_133", 1
  %"$b9_136" = load %Bool*, %Bool** %b9
  %"$andb_call_137" = call { %Bool* (i8*, %Bool*)*, i8* } %"$andb_fptr_134"(i8* %"$andb_envptr_135", %Bool* %"$b9_136")
  store { %Bool* (i8*, %Bool*)*, i8* } %"$andb_call_137", { %Bool* (i8*, %Bool*)*, i8* }* %"$andb_0"
  %"$andb_1" = alloca %Bool*
  %"$$andb_0_138" = load { %Bool* (i8*, %Bool*)*, i8* }, { %Bool* (i8*, %Bool*)*, i8* }* %"$andb_0"
  %"$$andb_0_fptr_139" = extractvalue { %Bool* (i8*, %Bool*)*, i8* } %"$$andb_0_138", 0
  %"$$andb_0_envptr_140" = extractvalue { %Bool* (i8*, %Bool*)*, i8* } %"$$andb_0_138", 1
  %"$b12_141" = load %Bool*, %Bool** %b12
  %"$$andb_0_call_142" = call %Bool* %"$$andb_0_fptr_139"(i8* %"$$andb_0_envptr_140", %Bool* %"$b12_141")
  store %Bool* %"$$andb_0_call_142", %Bool** %"$andb_1"
  %"$$andb_1_143" = load %Bool*, %Bool** %"$andb_1"
  store %Bool* %"$$andb_1_143", %Bool** %b14
  %b15 = alloca %Bool*
  %"$orb_2" = alloca { %Bool* (i8*, %Bool*)*, i8* }
  %"$orb_144" = load { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* }, { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* }* @orb
  %"$orb_fptr_145" = extractvalue { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* } %"$orb_144", 0
  %"$orb_envptr_146" = extractvalue { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* } %"$orb_144", 1
  %"$b13_147" = load %Bool*, %Bool** %b13
  %"$orb_call_148" = call { %Bool* (i8*, %Bool*)*, i8* } %"$orb_fptr_145"(i8* %"$orb_envptr_146", %Bool* %"$b13_147")
  store { %Bool* (i8*, %Bool*)*, i8* } %"$orb_call_148", { %Bool* (i8*, %Bool*)*, i8* }* %"$orb_2"
  %"$orb_3" = alloca %Bool*
  %"$$orb_2_149" = load { %Bool* (i8*, %Bool*)*, i8* }, { %Bool* (i8*, %Bool*)*, i8* }* %"$orb_2"
  %"$$orb_2_fptr_150" = extractvalue { %Bool* (i8*, %Bool*)*, i8* } %"$$orb_2_149", 0
  %"$$orb_2_envptr_151" = extractvalue { %Bool* (i8*, %Bool*)*, i8* } %"$$orb_2_149", 1
  %"$b14_152" = load %Bool*, %Bool** %b14
  %"$$orb_2_call_153" = call %Bool* %"$$orb_2_fptr_150"(i8* %"$$orb_2_envptr_151", %Bool* %"$b14_152")
  store %Bool* %"$$orb_2_call_153", %Bool** %"$orb_3"
  %"$$orb_3_154" = load %Bool*, %Bool** %"$orb_3"
  store %Bool* %"$$orb_3_154", %Bool** %b15
  %bs1 = alloca [2 x i8]
  store [2 x i8] c"\00\FF", [2 x i8]* %bs1
  %bs2 = alloca [2 x i8]
  store [2 x i8] c"\FF\00", [2 x i8]* %bs2
  %bs11 = alloca [2 x i8]
  store [2 x i8] c"\00\FF", [2 x i8]* %bs11
  %b16 = alloca %Bool*
  %"$to_nat_load_155" = load i8*, i8** @_execptr
  %"$eq_bs1_156" = alloca [2 x i8]
  %"$bs1_157" = load [2 x i8], [2 x i8]* %bs1
  store [2 x i8] %"$bs1_157", [2 x i8]* %"$eq_bs1_156"
  %"$eq_bs2_158" = alloca [2 x i8]
  %"$bs2_159" = load [2 x i8], [2 x i8]* %bs2
  store [2 x i8] %"$bs2_159", [2 x i8]* %"$eq_bs2_158"
  %"$eq_call_160" = call %Bool* @_eq_ByStrX(i8* %"$to_nat_load_155", i32 2, [2 x i8]* %"$eq_bs1_156", [2 x i8]* %"$eq_bs2_158")
  store %Bool* %"$eq_call_160", %Bool** %b16
  %b17 = alloca %Bool*
  %"$to_nat_load_161" = load i8*, i8** @_execptr
  %"$eq_bs1_162" = alloca [2 x i8]
  %"$bs1_163" = load [2 x i8], [2 x i8]* %bs1
  store [2 x i8] %"$bs1_163", [2 x i8]* %"$eq_bs1_162"
  %"$eq_bs11_164" = alloca [2 x i8]
  %"$bs11_165" = load [2 x i8], [2 x i8]* %bs11
  store [2 x i8] %"$bs11_165", [2 x i8]* %"$eq_bs11_164"
  %"$eq_call_166" = call %Bool* @_eq_ByStrX(i8* %"$to_nat_load_161", i32 2, [2 x i8]* %"$eq_bs1_162", [2 x i8]* %"$eq_bs11_164")
  store %Bool* %"$eq_call_166", %Bool** %b17
  %b18 = alloca %Bool*
  %"$orb_4" = alloca { %Bool* (i8*, %Bool*)*, i8* }
  %"$orb_167" = load { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* }, { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* }* @orb
  %"$orb_fptr_168" = extractvalue { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* } %"$orb_167", 0
  %"$orb_envptr_169" = extractvalue { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* } %"$orb_167", 1
  %"$b16_170" = load %Bool*, %Bool** %b16
  %"$orb_call_171" = call { %Bool* (i8*, %Bool*)*, i8* } %"$orb_fptr_168"(i8* %"$orb_envptr_169", %Bool* %"$b16_170")
  store { %Bool* (i8*, %Bool*)*, i8* } %"$orb_call_171", { %Bool* (i8*, %Bool*)*, i8* }* %"$orb_4"
  %"$orb_5" = alloca %Bool*
  %"$$orb_4_172" = load { %Bool* (i8*, %Bool*)*, i8* }, { %Bool* (i8*, %Bool*)*, i8* }* %"$orb_4"
  %"$$orb_4_fptr_173" = extractvalue { %Bool* (i8*, %Bool*)*, i8* } %"$$orb_4_172", 0
  %"$$orb_4_envptr_174" = extractvalue { %Bool* (i8*, %Bool*)*, i8* } %"$$orb_4_172", 1
  %"$b17_175" = load %Bool*, %Bool** %b17
  %"$$orb_4_call_176" = call %Bool* %"$$orb_4_fptr_173"(i8* %"$$orb_4_envptr_174", %Bool* %"$b17_175")
  store %Bool* %"$$orb_4_call_176", %Bool** %"$orb_5"
  %"$$orb_5_177" = load %Bool*, %Bool** %"$orb_5"
  store %Bool* %"$$orb_5_177", %Bool** %b18
  %b19 = alloca %Bool*
  %"$andb_6" = alloca { %Bool* (i8*, %Bool*)*, i8* }
  %"$andb_178" = load { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* }, { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* }* @andb
  %"$andb_fptr_179" = extractvalue { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* } %"$andb_178", 0
  %"$andb_envptr_180" = extractvalue { { %Bool* (i8*, %Bool*)*, i8* } (i8*, %Bool*)*, i8* } %"$andb_178", 1
  %"$b18_181" = load %Bool*, %Bool** %b18
  %"$andb_call_182" = call { %Bool* (i8*, %Bool*)*, i8* } %"$andb_fptr_179"(i8* %"$andb_envptr_180", %Bool* %"$b18_181")
  store { %Bool* (i8*, %Bool*)*, i8* } %"$andb_call_182", { %Bool* (i8*, %Bool*)*, i8* }* %"$andb_6"
  %"$andb_7" = alloca %Bool*
  %"$$andb_6_183" = load { %Bool* (i8*, %Bool*)*, i8* }, { %Bool* (i8*, %Bool*)*, i8* }* %"$andb_6"
  %"$$andb_6_fptr_184" = extractvalue { %Bool* (i8*, %Bool*)*, i8* } %"$$andb_6_183", 0
  %"$$andb_6_envptr_185" = extractvalue { %Bool* (i8*, %Bool*)*, i8* } %"$$andb_6_183", 1
  %"$b15_186" = load %Bool*, %Bool** %b15
  %"$$andb_6_call_187" = call %Bool* %"$$andb_6_fptr_184"(i8* %"$$andb_6_envptr_185", %Bool* %"$b15_186")
  store %Bool* %"$$andb_6_call_187", %Bool** %"$andb_7"
  %"$$andb_7_188" = load %Bool*, %Bool** %"$andb_7"
  store %Bool* %"$$andb_7_188", %Bool** %b19
  %"$b19_189" = load %Bool*, %Bool** %b19
  store %Bool* %"$b19_189", %Bool** %"$expr_16"
  %"$$expr_16_190" = load %Bool*, %Bool** %"$expr_16"
  ret %Bool* %"$$expr_16_190"
}

declare %Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare %Bool* @_eq_String(i8*, %String, %String)

declare %Bool* @_eq_ByStrX(i8*, i32, [2 x i8]*, [2 x i8]*)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_191" = call %Bool* @"$scilla_expr_111"(i8* null)
  %"$memvoidcast_192" = bitcast %Bool* %"$exprval_191" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_51", i8* %"$memvoidcast_192")
  ret void
}
