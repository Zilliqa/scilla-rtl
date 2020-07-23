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
; let bs3 = 0x0f0f0f in
; let bs4 = 0x0f0f0e in
; let b20 = builtin eq bs3 bs4 in
; let b21 = negb b20 in
; let b22 = andb b19 b21 in
; 
; let bs11 = builtin to_bystr bs1 in
; let bs22 = builtin to_bystr bs2 in
; let b23 = builtin eq bs11 bs22 in
; let b24 = negb b23 in
; let b25 = andb b22 b24 in
; 
; b25
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_26" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_60" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_59"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_59" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_61"**, %"$TyDescrTy_ADTTyp_60"* }
%"$TyDescrTy_ADTTyp_Constr_61" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$$fundef_15_env_76" = type {}
%"$$fundef_19_env_77" = type { %TName_Bool* }
%"$$fundef_17_env_78" = type {}
%"$$fundef_23_env_79" = type { %TName_Bool* }
%"$$fundef_21_env_80" = type {}
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%Bystr = type { i8*, i32 }

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_27" = global %"$TyDescrTy_PrimTyp_26" zeroinitializer
@"$TyDescr_Int32_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Int32_Prim_27" to i8*) }
@"$TyDescr_Uint32_Prim_29" = global %"$TyDescrTy_PrimTyp_26" { i32 1, i32 0 }
@"$TyDescr_Uint32_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Uint32_Prim_29" to i8*) }
@"$TyDescr_Int64_Prim_31" = global %"$TyDescrTy_PrimTyp_26" { i32 0, i32 1 }
@"$TyDescr_Int64_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Int64_Prim_31" to i8*) }
@"$TyDescr_Uint64_Prim_33" = global %"$TyDescrTy_PrimTyp_26" { i32 1, i32 1 }
@"$TyDescr_Uint64_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Uint64_Prim_33" to i8*) }
@"$TyDescr_Int128_Prim_35" = global %"$TyDescrTy_PrimTyp_26" { i32 0, i32 2 }
@"$TyDescr_Int128_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Int128_Prim_35" to i8*) }
@"$TyDescr_Uint128_Prim_37" = global %"$TyDescrTy_PrimTyp_26" { i32 1, i32 2 }
@"$TyDescr_Uint128_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Uint128_Prim_37" to i8*) }
@"$TyDescr_Int256_Prim_39" = global %"$TyDescrTy_PrimTyp_26" { i32 0, i32 3 }
@"$TyDescr_Int256_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Int256_Prim_39" to i8*) }
@"$TyDescr_Uint256_Prim_41" = global %"$TyDescrTy_PrimTyp_26" { i32 1, i32 3 }
@"$TyDescr_Uint256_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Uint256_Prim_41" to i8*) }
@"$TyDescr_String_Prim_43" = global %"$TyDescrTy_PrimTyp_26" { i32 2, i32 0 }
@"$TyDescr_String_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_String_Prim_43" to i8*) }
@"$TyDescr_Bnum_Prim_45" = global %"$TyDescrTy_PrimTyp_26" { i32 3, i32 0 }
@"$TyDescr_Bnum_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Bnum_Prim_45" to i8*) }
@"$TyDescr_Message_Prim_47" = global %"$TyDescrTy_PrimTyp_26" { i32 4, i32 0 }
@"$TyDescr_Message_48" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Message_Prim_47" to i8*) }
@"$TyDescr_Event_Prim_49" = global %"$TyDescrTy_PrimTyp_26" { i32 5, i32 0 }
@"$TyDescr_Event_50" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Event_Prim_49" to i8*) }
@"$TyDescr_Exception_Prim_51" = global %"$TyDescrTy_PrimTyp_26" { i32 6, i32 0 }
@"$TyDescr_Exception_52" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Exception_Prim_51" to i8*) }
@"$TyDescr_Bystr_Prim_53" = global %"$TyDescrTy_PrimTyp_26" { i32 7, i32 0 }
@"$TyDescr_Bystr_54" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Bystr_Prim_53" to i8*) }
@"$TyDescr_Bystr3_Prim_55" = global %"$TyDescrTy_PrimTyp_26" { i32 8, i32 3 }
@"$TyDescr_Bystr3_56" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Bystr3_Prim_55" to i8*) }
@"$TyDescr_Bystr2_Prim_57" = global %"$TyDescrTy_PrimTyp_26" { i32 8, i32 2 }
@"$TyDescr_Bystr2_58" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Bystr2_Prim_57" to i8*) }
@"$TyDescr_ADT_Bool_62" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_59"* @"$TyDescr_Bool_ADTTyp_Specl_73" to i8*) }
@"$TyDescr_Bool_ADTTyp_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_60" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_75", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_59"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_59"*], [1 x %"$TyDescrTy_ADTTyp_Specl_59"*]* @"$TyDescr_Bool_ADTTyp_m_specls_74", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_65" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_66" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_61" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_66", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_65", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_68" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_69" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_61" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_69", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_68", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_71" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_61"*] [%"$TyDescrTy_ADTTyp_Constr_61"* @"$TyDescr_Bool_True_ADTTyp_Constr_67", %"$TyDescrTy_ADTTyp_Constr_61"* @"$TyDescr_Bool_False_ADTTyp_Constr_70"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_72" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_59" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_72", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_61"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_61"*], [2 x %"$TyDescrTy_ADTTyp_Constr_61"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_71", i32 0, i32 0), %"$TyDescrTy_ADTTyp_60"* @"$TyDescr_Bool_ADTTyp_64" }
@"$TyDescr_Bool_ADTTyp_m_specls_74" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_59"*] [%"$TyDescrTy_ADTTyp_Specl_59"* @"$TyDescr_Bool_ADTTyp_Specl_73"]
@"$TyDescr_ADT_Bool_75" = unnamed_addr constant [4 x i8] c"Bool"
@andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@orb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@negb = global { %TName_Bool* (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$stringlit_152" = unnamed_addr constant [5 x i8] c"Hello"
@"$stringlit_153" = unnamed_addr constant [5 x i8] c"World"
@"$stringlit_154" = unnamed_addr constant [5 x i8] c"Hello"

define internal %TName_Bool* @"$fundef_15"(%"$$fundef_15_env_76"* %0, %TName_Bool* %1) {
entry:
  %"$retval_16" = alloca %TName_Bool*
  %"$b_tag_124" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_125" = load i8, i8* %"$b_tag_124"
  switch i8 %"$b_tag_125", label %"$empty_default_126" [
    i8 0, label %"$True_127"
    i8 1, label %"$False_132"
  ]

"$True_127":                                      ; preds = %entry
  %"$b_128" = bitcast %TName_Bool* %1 to %CName_True*
  %"$adtval_129_load" = load i8*, i8** @_execptr
  %"$adtval_129_salloc" = call i8* @_salloc(i8* %"$adtval_129_load", i64 1)
  %"$adtval_129" = bitcast i8* %"$adtval_129_salloc" to %CName_False*
  %"$adtgep_130" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_129", i32 0, i32 0
  store i8 1, i8* %"$adtgep_130"
  %"$adtptr_131" = bitcast %CName_False* %"$adtval_129" to %TName_Bool*
  store %TName_Bool* %"$adtptr_131", %TName_Bool** %"$retval_16"
  br label %"$matchsucc_123"

"$False_132":                                     ; preds = %entry
  %"$b_133" = bitcast %TName_Bool* %1 to %CName_False*
  %"$adtval_134_load" = load i8*, i8** @_execptr
  %"$adtval_134_salloc" = call i8* @_salloc(i8* %"$adtval_134_load", i64 1)
  %"$adtval_134" = bitcast i8* %"$adtval_134_salloc" to %CName_True*
  %"$adtgep_135" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_134", i32 0, i32 0
  store i8 0, i8* %"$adtgep_135"
  %"$adtptr_136" = bitcast %CName_True* %"$adtval_134" to %TName_Bool*
  store %TName_Bool* %"$adtptr_136", %TName_Bool** %"$retval_16"
  br label %"$matchsucc_123"

"$empty_default_126":                             ; preds = %entry
  br label %"$matchsucc_123"

"$matchsucc_123":                                 ; preds = %"$False_132", %"$True_127", %"$empty_default_126"
  %"$$retval_16_137" = load %TName_Bool*, %TName_Bool** %"$retval_16"
  ret %TName_Bool* %"$$retval_16_137"
}

define internal %TName_Bool* @"$fundef_19"(%"$$fundef_19_env_77"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_19_env_b_108" = getelementptr inbounds %"$$fundef_19_env_77", %"$$fundef_19_env_77"* %0, i32 0, i32 0
  %"$b_envload_109" = load %TName_Bool*, %TName_Bool** %"$$fundef_19_env_b_108"
  %b = alloca %TName_Bool*
  store %TName_Bool* %"$b_envload_109", %TName_Bool** %b
  %"$retval_20" = alloca %TName_Bool*
  %"$b_111" = load %TName_Bool*, %TName_Bool** %b
  %"$b_tag_112" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_111", i32 0, i32 0
  %"$b_tag_113" = load i8, i8* %"$b_tag_112"
  switch i8 %"$b_tag_113", label %"$empty_default_114" [
    i8 0, label %"$True_115"
    i8 1, label %"$False_120"
  ]

"$True_115":                                      ; preds = %entry
  %"$b_116" = bitcast %TName_Bool* %"$b_111" to %CName_True*
  %"$adtval_117_load" = load i8*, i8** @_execptr
  %"$adtval_117_salloc" = call i8* @_salloc(i8* %"$adtval_117_load", i64 1)
  %"$adtval_117" = bitcast i8* %"$adtval_117_salloc" to %CName_True*
  %"$adtgep_118" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_117", i32 0, i32 0
  store i8 0, i8* %"$adtgep_118"
  %"$adtptr_119" = bitcast %CName_True* %"$adtval_117" to %TName_Bool*
  store %TName_Bool* %"$adtptr_119", %TName_Bool** %"$retval_20"
  br label %"$matchsucc_110"

"$False_120":                                     ; preds = %entry
  %"$b_121" = bitcast %TName_Bool* %"$b_111" to %CName_False*
  store %TName_Bool* %1, %TName_Bool** %"$retval_20"
  br label %"$matchsucc_110"

"$empty_default_114":                             ; preds = %entry
  br label %"$matchsucc_110"

"$matchsucc_110":                                 ; preds = %"$False_120", %"$True_115", %"$empty_default_114"
  %"$$retval_20_122" = load %TName_Bool*, %TName_Bool** %"$retval_20"
  ret %TName_Bool* %"$$retval_20_122"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_17"(%"$$fundef_17_env_78"* %0, %TName_Bool* %1) {
entry:
  %"$retval_18" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$$fundef_19_envp_102_load" = load i8*, i8** @_execptr
  %"$$fundef_19_envp_102_salloc" = call i8* @_salloc(i8* %"$$fundef_19_envp_102_load", i64 8)
  %"$$fundef_19_envp_102" = bitcast i8* %"$$fundef_19_envp_102_salloc" to %"$$fundef_19_env_77"*
  %"$$fundef_19_env_voidp_104" = bitcast %"$$fundef_19_env_77"* %"$$fundef_19_envp_102" to i8*
  %"$$fundef_19_cloval_105" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_19_env_77"*, %TName_Bool*)* @"$fundef_19" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_19_env_voidp_104", 1
  %"$$fundef_19_env_b_106" = getelementptr inbounds %"$$fundef_19_env_77", %"$$fundef_19_env_77"* %"$$fundef_19_envp_102", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_19_env_b_106"
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_19_cloval_105", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_18"
  %"$$retval_18_107" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_18"
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_18_107"
}

define internal %TName_Bool* @"$fundef_23"(%"$$fundef_23_env_79"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_23_env_b_87" = getelementptr inbounds %"$$fundef_23_env_79", %"$$fundef_23_env_79"* %0, i32 0, i32 0
  %"$b_envload_88" = load %TName_Bool*, %TName_Bool** %"$$fundef_23_env_b_87"
  %b = alloca %TName_Bool*
  store %TName_Bool* %"$b_envload_88", %TName_Bool** %b
  %"$retval_24" = alloca %TName_Bool*
  %"$b_90" = load %TName_Bool*, %TName_Bool** %b
  %"$b_tag_91" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_90", i32 0, i32 0
  %"$b_tag_92" = load i8, i8* %"$b_tag_91"
  switch i8 %"$b_tag_92", label %"$empty_default_93" [
    i8 1, label %"$False_94"
    i8 0, label %"$True_99"
  ]

"$False_94":                                      ; preds = %entry
  %"$b_95" = bitcast %TName_Bool* %"$b_90" to %CName_False*
  %"$adtval_96_load" = load i8*, i8** @_execptr
  %"$adtval_96_salloc" = call i8* @_salloc(i8* %"$adtval_96_load", i64 1)
  %"$adtval_96" = bitcast i8* %"$adtval_96_salloc" to %CName_False*
  %"$adtgep_97" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_96", i32 0, i32 0
  store i8 1, i8* %"$adtgep_97"
  %"$adtptr_98" = bitcast %CName_False* %"$adtval_96" to %TName_Bool*
  store %TName_Bool* %"$adtptr_98", %TName_Bool** %"$retval_24"
  br label %"$matchsucc_89"

"$True_99":                                       ; preds = %entry
  %"$b_100" = bitcast %TName_Bool* %"$b_90" to %CName_True*
  store %TName_Bool* %1, %TName_Bool** %"$retval_24"
  br label %"$matchsucc_89"

"$empty_default_93":                              ; preds = %entry
  br label %"$matchsucc_89"

"$matchsucc_89":                                  ; preds = %"$True_99", %"$False_94", %"$empty_default_93"
  %"$$retval_24_101" = load %TName_Bool*, %TName_Bool** %"$retval_24"
  ret %TName_Bool* %"$$retval_24_101"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_21"(%"$$fundef_21_env_80"* %0, %TName_Bool* %1) {
entry:
  %"$retval_22" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$$fundef_23_envp_81_load" = load i8*, i8** @_execptr
  %"$$fundef_23_envp_81_salloc" = call i8* @_salloc(i8* %"$$fundef_23_envp_81_load", i64 8)
  %"$$fundef_23_envp_81" = bitcast i8* %"$$fundef_23_envp_81_salloc" to %"$$fundef_23_env_79"*
  %"$$fundef_23_env_voidp_83" = bitcast %"$$fundef_23_env_79"* %"$$fundef_23_envp_81" to i8*
  %"$$fundef_23_cloval_84" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_23_env_79"*, %TName_Bool*)* @"$fundef_23" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_23_env_voidp_83", 1
  %"$$fundef_23_env_b_85" = getelementptr inbounds %"$$fundef_23_env_79", %"$$fundef_23_env_79"* %"$$fundef_23_envp_81", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_23_env_b_85"
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_23_cloval_84", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_22"
  %"$$retval_22_86" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_22"
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_22_86"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Bool* @"$scilla_expr_138"(i8* %0) {
entry:
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_21_env_80"*, %TName_Bool*)* @"$fundef_21" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @andb
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_17_env_78"*, %TName_Bool*)* @"$fundef_17" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @orb
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_15_env_76"*, %TName_Bool*)* @"$fundef_15" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @negb
  %"$expr_25" = alloca %TName_Bool*
  %ui256a = alloca %Uint128
  store %Uint128 { i128 11 }, %Uint128* %ui256a
  %b9 = alloca %TName_Bool*
  %"$execptr_load_148" = load i8*, i8** @_execptr
  %"$ui256a_149" = load %Uint128, %Uint128* %ui256a
  %"$ui256a_150" = load %Uint128, %Uint128* %ui256a
  %"$eq_call_151" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_148", %Uint128 %"$ui256a_149", %Uint128 %"$ui256a_150")
  store %TName_Bool* %"$eq_call_151", %TName_Bool** %b9
  %s1 = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_152", i32 0, i32 0), i32 5 }, %String* %s1
  %s2 = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_153", i32 0, i32 0), i32 5 }, %String* %s2
  %s11 = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_154", i32 0, i32 0), i32 5 }, %String* %s11
  %b12 = alloca %TName_Bool*
  %"$execptr_load_155" = load i8*, i8** @_execptr
  %"$s1_156" = load %String, %String* %s1
  %"$s2_157" = load %String, %String* %s2
  %"$eq_call_158" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_155", %String %"$s1_156", %String %"$s2_157")
  store %TName_Bool* %"$eq_call_158", %TName_Bool** %b12
  %b13 = alloca %TName_Bool*
  %"$execptr_load_159" = load i8*, i8** @_execptr
  %"$s1_160" = load %String, %String* %s1
  %"$s11_161" = load %String, %String* %s11
  %"$eq_call_162" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_159", %String %"$s1_160", %String %"$s11_161")
  store %TName_Bool* %"$eq_call_162", %TName_Bool** %b13
  %b14 = alloca %TName_Bool*
  %"$andb_1" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$andb_163" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @andb
  %"$andb_fptr_164" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_163", 0
  %"$andb_envptr_165" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_163", 1
  %"$b9_166" = load %TName_Bool*, %TName_Bool** %b9
  %"$andb_call_167" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_fptr_164"(i8* %"$andb_envptr_165", %TName_Bool* %"$b9_166")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_call_167", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_1"
  %"$andb_2" = alloca %TName_Bool*
  %"$$andb_1_168" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_1"
  %"$$andb_1_fptr_169" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_1_168", 0
  %"$$andb_1_envptr_170" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_1_168", 1
  %"$b12_171" = load %TName_Bool*, %TName_Bool** %b12
  %"$$andb_1_call_172" = call %TName_Bool* %"$$andb_1_fptr_169"(i8* %"$$andb_1_envptr_170", %TName_Bool* %"$b12_171")
  store %TName_Bool* %"$$andb_1_call_172", %TName_Bool** %"$andb_2"
  %"$$andb_2_173" = load %TName_Bool*, %TName_Bool** %"$andb_2"
  store %TName_Bool* %"$$andb_2_173", %TName_Bool** %b14
  %b15 = alloca %TName_Bool*
  %"$orb_3" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$orb_174" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @orb
  %"$orb_fptr_175" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$orb_174", 0
  %"$orb_envptr_176" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$orb_174", 1
  %"$b13_177" = load %TName_Bool*, %TName_Bool** %b13
  %"$orb_call_178" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$orb_fptr_175"(i8* %"$orb_envptr_176", %TName_Bool* %"$b13_177")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$orb_call_178", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$orb_3"
  %"$orb_4" = alloca %TName_Bool*
  %"$$orb_3_179" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$orb_3"
  %"$$orb_3_fptr_180" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$orb_3_179", 0
  %"$$orb_3_envptr_181" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$orb_3_179", 1
  %"$b14_182" = load %TName_Bool*, %TName_Bool** %b14
  %"$$orb_3_call_183" = call %TName_Bool* %"$$orb_3_fptr_180"(i8* %"$$orb_3_envptr_181", %TName_Bool* %"$b14_182")
  store %TName_Bool* %"$$orb_3_call_183", %TName_Bool** %"$orb_4"
  %"$$orb_4_184" = load %TName_Bool*, %TName_Bool** %"$orb_4"
  store %TName_Bool* %"$$orb_4_184", %TName_Bool** %b15
  %bs1 = alloca [2 x i8]
  store [2 x i8] c"\00\FF", [2 x i8]* %bs1
  %bs2 = alloca [2 x i8]
  store [2 x i8] c"\FF\00", [2 x i8]* %bs2
  %bs11 = alloca [2 x i8]
  store [2 x i8] c"\00\FF", [2 x i8]* %bs11
  %b16 = alloca %TName_Bool*
  %"$execptr_load_185" = load i8*, i8** @_execptr
  %"$eq_bs1_186" = alloca [2 x i8]
  %"$bs1_187" = load [2 x i8], [2 x i8]* %bs1
  store [2 x i8] %"$bs1_187", [2 x i8]* %"$eq_bs1_186"
  %"$$eq_bs1_186_188" = bitcast [2 x i8]* %"$eq_bs1_186" to i8*
  %"$eq_bs2_189" = alloca [2 x i8]
  %"$bs2_190" = load [2 x i8], [2 x i8]* %bs2
  store [2 x i8] %"$bs2_190", [2 x i8]* %"$eq_bs2_189"
  %"$$eq_bs2_189_191" = bitcast [2 x i8]* %"$eq_bs2_189" to i8*
  %"$eq_call_192" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_185", i32 2, i8* %"$$eq_bs1_186_188", i8* %"$$eq_bs2_189_191")
  store %TName_Bool* %"$eq_call_192", %TName_Bool** %b16
  %b17 = alloca %TName_Bool*
  %"$execptr_load_193" = load i8*, i8** @_execptr
  %"$eq_bs1_194" = alloca [2 x i8]
  %"$bs1_195" = load [2 x i8], [2 x i8]* %bs1
  store [2 x i8] %"$bs1_195", [2 x i8]* %"$eq_bs1_194"
  %"$$eq_bs1_194_196" = bitcast [2 x i8]* %"$eq_bs1_194" to i8*
  %"$eq_bs11_197" = alloca [2 x i8]
  %"$bs11_198" = load [2 x i8], [2 x i8]* %bs11
  store [2 x i8] %"$bs11_198", [2 x i8]* %"$eq_bs11_197"
  %"$$eq_bs11_197_199" = bitcast [2 x i8]* %"$eq_bs11_197" to i8*
  %"$eq_call_200" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_193", i32 2, i8* %"$$eq_bs1_194_196", i8* %"$$eq_bs11_197_199")
  store %TName_Bool* %"$eq_call_200", %TName_Bool** %b17
  %b18 = alloca %TName_Bool*
  %"$orb_5" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$orb_201" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @orb
  %"$orb_fptr_202" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$orb_201", 0
  %"$orb_envptr_203" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$orb_201", 1
  %"$b16_204" = load %TName_Bool*, %TName_Bool** %b16
  %"$orb_call_205" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$orb_fptr_202"(i8* %"$orb_envptr_203", %TName_Bool* %"$b16_204")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$orb_call_205", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$orb_5"
  %"$orb_6" = alloca %TName_Bool*
  %"$$orb_5_206" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$orb_5"
  %"$$orb_5_fptr_207" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$orb_5_206", 0
  %"$$orb_5_envptr_208" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$orb_5_206", 1
  %"$b17_209" = load %TName_Bool*, %TName_Bool** %b17
  %"$$orb_5_call_210" = call %TName_Bool* %"$$orb_5_fptr_207"(i8* %"$$orb_5_envptr_208", %TName_Bool* %"$b17_209")
  store %TName_Bool* %"$$orb_5_call_210", %TName_Bool** %"$orb_6"
  %"$$orb_6_211" = load %TName_Bool*, %TName_Bool** %"$orb_6"
  store %TName_Bool* %"$$orb_6_211", %TName_Bool** %b18
  %b19 = alloca %TName_Bool*
  %"$andb_7" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$andb_212" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @andb
  %"$andb_fptr_213" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_212", 0
  %"$andb_envptr_214" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_212", 1
  %"$b18_215" = load %TName_Bool*, %TName_Bool** %b18
  %"$andb_call_216" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_fptr_213"(i8* %"$andb_envptr_214", %TName_Bool* %"$b18_215")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_call_216", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_7"
  %"$andb_8" = alloca %TName_Bool*
  %"$$andb_7_217" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_7"
  %"$$andb_7_fptr_218" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_7_217", 0
  %"$$andb_7_envptr_219" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_7_217", 1
  %"$b15_220" = load %TName_Bool*, %TName_Bool** %b15
  %"$$andb_7_call_221" = call %TName_Bool* %"$$andb_7_fptr_218"(i8* %"$$andb_7_envptr_219", %TName_Bool* %"$b15_220")
  store %TName_Bool* %"$$andb_7_call_221", %TName_Bool** %"$andb_8"
  %"$$andb_8_222" = load %TName_Bool*, %TName_Bool** %"$andb_8"
  store %TName_Bool* %"$$andb_8_222", %TName_Bool** %b19
  %bs3 = alloca [3 x i8]
  store [3 x i8] c"\0F\0F\0F", [3 x i8]* %bs3
  %bs4 = alloca [3 x i8]
  store [3 x i8] c"\0F\0F\0E", [3 x i8]* %bs4
  %b20 = alloca %TName_Bool*
  %"$execptr_load_223" = load i8*, i8** @_execptr
  %"$eq_bs3_224" = alloca [3 x i8]
  %"$bs3_225" = load [3 x i8], [3 x i8]* %bs3
  store [3 x i8] %"$bs3_225", [3 x i8]* %"$eq_bs3_224"
  %"$$eq_bs3_224_226" = bitcast [3 x i8]* %"$eq_bs3_224" to i8*
  %"$eq_bs4_227" = alloca [3 x i8]
  %"$bs4_228" = load [3 x i8], [3 x i8]* %bs4
  store [3 x i8] %"$bs4_228", [3 x i8]* %"$eq_bs4_227"
  %"$$eq_bs4_227_229" = bitcast [3 x i8]* %"$eq_bs4_227" to i8*
  %"$eq_call_230" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_223", i32 3, i8* %"$$eq_bs3_224_226", i8* %"$$eq_bs4_227_229")
  store %TName_Bool* %"$eq_call_230", %TName_Bool** %b20
  %b21 = alloca %TName_Bool*
  %"$negb_9" = alloca %TName_Bool*
  %"$negb_231" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @negb
  %"$negb_fptr_232" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$negb_231", 0
  %"$negb_envptr_233" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$negb_231", 1
  %"$b20_234" = load %TName_Bool*, %TName_Bool** %b20
  %"$negb_call_235" = call %TName_Bool* %"$negb_fptr_232"(i8* %"$negb_envptr_233", %TName_Bool* %"$b20_234")
  store %TName_Bool* %"$negb_call_235", %TName_Bool** %"$negb_9"
  %"$$negb_9_236" = load %TName_Bool*, %TName_Bool** %"$negb_9"
  store %TName_Bool* %"$$negb_9_236", %TName_Bool** %b21
  %b22 = alloca %TName_Bool*
  %"$andb_10" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$andb_237" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @andb
  %"$andb_fptr_238" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_237", 0
  %"$andb_envptr_239" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_237", 1
  %"$b19_240" = load %TName_Bool*, %TName_Bool** %b19
  %"$andb_call_241" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_fptr_238"(i8* %"$andb_envptr_239", %TName_Bool* %"$b19_240")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_call_241", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_10"
  %"$andb_11" = alloca %TName_Bool*
  %"$$andb_10_242" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_10"
  %"$$andb_10_fptr_243" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_10_242", 0
  %"$$andb_10_envptr_244" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_10_242", 1
  %"$b21_245" = load %TName_Bool*, %TName_Bool** %b21
  %"$$andb_10_call_246" = call %TName_Bool* %"$$andb_10_fptr_243"(i8* %"$$andb_10_envptr_244", %TName_Bool* %"$b21_245")
  store %TName_Bool* %"$$andb_10_call_246", %TName_Bool** %"$andb_11"
  %"$$andb_11_247" = load %TName_Bool*, %TName_Bool** %"$andb_11"
  store %TName_Bool* %"$$andb_11_247", %TName_Bool** %b22
  %"$bs11_0" = alloca %Bystr
  %"$execptr_load_248" = load i8*, i8** @_execptr
  %"$to_bystr_bs1_249" = alloca [2 x i8]
  %"$bs1_250" = load [2 x i8], [2 x i8]* %bs1
  store [2 x i8] %"$bs1_250", [2 x i8]* %"$to_bystr_bs1_249"
  %"$$to_bystr_bs1_249_251" = bitcast [2 x i8]* %"$to_bystr_bs1_249" to i8*
  %"$to_bystr_call_252" = call %Bystr @_to_bystr(i8* %"$execptr_load_248", i32 2, i8* %"$$to_bystr_bs1_249_251")
  store %Bystr %"$to_bystr_call_252", %Bystr* %"$bs11_0"
  %bs22 = alloca %Bystr
  %"$execptr_load_253" = load i8*, i8** @_execptr
  %"$to_bystr_bs2_254" = alloca [2 x i8]
  %"$bs2_255" = load [2 x i8], [2 x i8]* %bs2
  store [2 x i8] %"$bs2_255", [2 x i8]* %"$to_bystr_bs2_254"
  %"$$to_bystr_bs2_254_256" = bitcast [2 x i8]* %"$to_bystr_bs2_254" to i8*
  %"$to_bystr_call_257" = call %Bystr @_to_bystr(i8* %"$execptr_load_253", i32 2, i8* %"$$to_bystr_bs2_254_256")
  store %Bystr %"$to_bystr_call_257", %Bystr* %bs22
  %b23 = alloca %TName_Bool*
  %"$execptr_load_258" = load i8*, i8** @_execptr
  %"$$bs11_0_259" = load %Bystr, %Bystr* %"$bs11_0"
  %"$bs22_260" = load %Bystr, %Bystr* %bs22
  %"$eq_call_261" = call %TName_Bool* @_eq_ByStr(i8* %"$execptr_load_258", %Bystr %"$$bs11_0_259", %Bystr %"$bs22_260")
  store %TName_Bool* %"$eq_call_261", %TName_Bool** %b23
  %b24 = alloca %TName_Bool*
  %"$negb_12" = alloca %TName_Bool*
  %"$negb_262" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @negb
  %"$negb_fptr_263" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$negb_262", 0
  %"$negb_envptr_264" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$negb_262", 1
  %"$b23_265" = load %TName_Bool*, %TName_Bool** %b23
  %"$negb_call_266" = call %TName_Bool* %"$negb_fptr_263"(i8* %"$negb_envptr_264", %TName_Bool* %"$b23_265")
  store %TName_Bool* %"$negb_call_266", %TName_Bool** %"$negb_12"
  %"$$negb_12_267" = load %TName_Bool*, %TName_Bool** %"$negb_12"
  store %TName_Bool* %"$$negb_12_267", %TName_Bool** %b24
  %b25 = alloca %TName_Bool*
  %"$andb_13" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$andb_268" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @andb
  %"$andb_fptr_269" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_268", 0
  %"$andb_envptr_270" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$andb_268", 1
  %"$b22_271" = load %TName_Bool*, %TName_Bool** %b22
  %"$andb_call_272" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_fptr_269"(i8* %"$andb_envptr_270", %TName_Bool* %"$b22_271")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$andb_call_272", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_13"
  %"$andb_14" = alloca %TName_Bool*
  %"$$andb_13_273" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$andb_13"
  %"$$andb_13_fptr_274" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_13_273", 0
  %"$$andb_13_envptr_275" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$andb_13_273", 1
  %"$b24_276" = load %TName_Bool*, %TName_Bool** %b24
  %"$$andb_13_call_277" = call %TName_Bool* %"$$andb_13_fptr_274"(i8* %"$$andb_13_envptr_275", %TName_Bool* %"$b24_276")
  store %TName_Bool* %"$$andb_13_call_277", %TName_Bool** %"$andb_14"
  %"$$andb_14_278" = load %TName_Bool*, %TName_Bool** %"$andb_14"
  store %TName_Bool* %"$$andb_14_278", %TName_Bool** %b25
  %"$b25_279" = load %TName_Bool*, %TName_Bool** %b25
  store %TName_Bool* %"$b25_279", %TName_Bool** %"$expr_25"
  %"$$expr_25_280" = load %TName_Bool*, %TName_Bool** %"$expr_25"
  ret %TName_Bool* %"$$expr_25_280"
}

declare %TName_Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare %TName_Bool* @_eq_String(i8*, %String, %String)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %TName_Bool* @_eq_ByStr(i8*, %Bystr, %Bystr)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_281" = call %TName_Bool* @"$scilla_expr_138"(i8* null)
  %"$memvoidcast_282" = bitcast %TName_Bool* %"$exprval_281" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_62", i8* %"$memvoidcast_282")
  ret void
}
