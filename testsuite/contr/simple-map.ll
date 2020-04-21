

; gas_remaining: 4002000
; ModuleID = 'SimpleMap'
source_filename = "SimpleMap"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_4" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_28" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_27"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_27" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_29"**, %"$TyDescrTy_ADTTyp_28"* }
%"$TyDescrTy_ADTTyp_Constr_29" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_31" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%"$$fundef_1_env_46" = type { %Int32 }
%Uint128 = type { i128 }
%TName_Option_Int32 = type { i8, %CName_Some_Int32*, %CName_None_Int32* }
%CName_Some_Int32 = type <{ i8, %Int32 }>
%CName_None_Int32 = type <{ i8 }>

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_5" = global %"$TyDescrTy_PrimTyp_4" zeroinitializer
@"$TyDescr_Int32_6" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int32_Prim_5" to i8*) }
@"$TyDescr_Uint32_Prim_7" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 0 }
@"$TyDescr_Uint32_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint32_Prim_7" to i8*) }
@"$TyDescr_Int64_Prim_9" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 1 }
@"$TyDescr_Int64_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int64_Prim_9" to i8*) }
@"$TyDescr_Uint64_Prim_11" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 1 }
@"$TyDescr_Uint64_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint64_Prim_11" to i8*) }
@"$TyDescr_Int128_Prim_13" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 2 }
@"$TyDescr_Int128_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int128_Prim_13" to i8*) }
@"$TyDescr_Uint128_Prim_15" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 2 }
@"$TyDescr_Uint128_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint128_Prim_15" to i8*) }
@"$TyDescr_Int256_Prim_17" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 3 }
@"$TyDescr_Int256_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int256_Prim_17" to i8*) }
@"$TyDescr_Uint256_Prim_19" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 3 }
@"$TyDescr_Uint256_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint256_Prim_19" to i8*) }
@"$TyDescr_String_Prim_21" = global %"$TyDescrTy_PrimTyp_4" { i32 2, i32 0 }
@"$TyDescr_String_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_String_Prim_21" to i8*) }
@"$TyDescr_Bystr_Prim_23" = global %"$TyDescrTy_PrimTyp_4" { i32 7, i32 0 }
@"$TyDescr_Bystr_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bystr_Prim_23" to i8*) }
@"$TyDescr_Bystr20_Prim_25" = global %"$TyDescrTy_PrimTyp_4" { i32 8, i32 20 }
@"$TyDescr_Bystr20_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bystr20_Prim_25" to i8*) }
@"$TyDescr_ADT_Option_Int32_30" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_27"* @"$TyDescr_Option_Int32_ADTTyp_Specl_42" to i8*) }
@"$TyDescr_Map_32" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_31"* @"$TyDescr_MapTyp_45" to i8*) }
@"$TyDescr_Option_ADTTyp_33" = unnamed_addr constant %"$TyDescrTy_ADTTyp_28" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_44", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_27"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_27"*], [1 x %"$TyDescrTy_ADTTyp_Specl_27"*]* @"$TyDescr_Option_ADTTyp_m_specls_43", i32 0, i32 0) }
@"$TyDescr_Option_Some_Int32_Constr_m_args_34" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@"$TyDescr_ADT_Some_35" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int32_ADTTyp_Constr_36" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_29" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_35", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int32_Constr_m_args_34", i32 0, i32 0) }
@"$TyDescr_Option_None_Int32_Constr_m_args_37" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_38" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int32_ADTTyp_Constr_39" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_29" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_38", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int32_Constr_m_args_37", i32 0, i32 0) }
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_40" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_29"*] [%"$TyDescrTy_ADTTyp_Constr_29"* @"$TyDescr_Option_Some_Int32_ADTTyp_Constr_36", %"$TyDescrTy_ADTTyp_Constr_29"* @"$TyDescr_Option_None_Int32_ADTTyp_Constr_39"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_41" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_42" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_27" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_41", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_29"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_29"*], [2 x %"$TyDescrTy_ADTTyp_Constr_29"*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_40", i32 0, i32 0), %"$TyDescrTy_ADTTyp_28"* @"$TyDescr_Option_ADTTyp_33" }
@"$TyDescr_Option_ADTTyp_m_specls_43" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_27"*] [%"$TyDescrTy_ADTTyp_Specl_27"* @"$TyDescr_Option_Int32_ADTTyp_Specl_42"]
@"$TyDescr_ADT_Option_44" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_MapTyp_45" = unnamed_addr constant %"$TyDescr_MapTyp_31" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_26", %_TyDescrTy_Typ* @"$TyDescr_Int32_6" }
@one = global %Int32 zeroinitializer
@inc = global { %Int32 (i8*, %Int32)*, i8* } zeroinitializer
@"$access_count_65" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_86" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_95" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_109" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_126" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_135" = unnamed_addr constant [13 x i8] c"access_count\00"
@_tydescr_table = constant [13 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_26", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_24", %_TyDescrTy_Typ* @"$TyDescr_Map_32", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 13

define internal %Int32 @"$fundef_1"(%"$$fundef_1_env_46"* %0, %Int32 %1) {
entry:
  %"$$fundef_1_env_one_47" = getelementptr inbounds %"$$fundef_1_env_46", %"$$fundef_1_env_46"* %0, i32 0, i32 0
  %"$one_envload_48" = load %Int32, %Int32* %"$$fundef_1_env_one_47"
  %one = alloca %Int32
  store %Int32 %"$one_envload_48", %Int32* %one
  %"$retval_2" = alloca %Int32
  %"$one_49" = load %Int32, %Int32* %one
  %"$add_call_50" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %"$one_49")
  store %Int32 %"$add_call_50", %Int32* %"$retval_2"
  %"$$retval_2_51" = load %Int32, %Int32* %"$retval_2"
  ret %Int32 %"$$retval_2_51"
}

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() {
entry:
  store %Int32 { i32 1 }, %Int32* @one
  %"$$fundef_1_envp_52_load" = load i8*, i8** @_execptr
  %"$$fundef_1_envp_52_salloc" = call i8* @_salloc(i8* %"$$fundef_1_envp_52_load", i64 4)
  %"$$fundef_1_envp_52" = bitcast i8* %"$$fundef_1_envp_52_salloc" to %"$$fundef_1_env_46"*
  %"$$fundef_1_env_voidp_54" = bitcast %"$$fundef_1_env_46"* %"$$fundef_1_envp_52" to i8*
  %"$$fundef_1_cloval_55" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_1_env_46"*, %Int32)* @"$fundef_1" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_1_env_voidp_54", 1
  %"$$fundef_1_envp_56" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_1_cloval_55", 1
  %"$$fundef_1_envp_57" = bitcast i8* %"$$fundef_1_envp_56" to %"$$fundef_1_env_46"*
  %"$$fundef_1_env_one_58" = getelementptr inbounds %"$$fundef_1_env_46", %"$$fundef_1_env_46"* %"$$fundef_1_envp_57", i32 0, i32 0
  %"$one_59" = load %Int32, %Int32* @one
  store %Int32 %"$one_59", %Int32* %"$$fundef_1_env_one_58"
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_1_cloval_55", { %Int32 (i8*, %Int32)*, i8* }* @inc
  ret void
}

declare i8* @_salloc(i8*, i64)

define internal void @"$Increment_60"(%Uint128 %_amount, [20 x i8]* %"$_sender_61") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_61"
  %cur = alloca %TName_Option_Int32*
  %"$indices_buf_62_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_62_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_62_salloc_load", i64 20)
  %"$indices_buf_62_salloc" = bitcast i8* %"$indices_buf_62_salloc_salloc" to [20 x i8]*
  %"$indices_buf_62" = bitcast [20 x i8]* %"$indices_buf_62_salloc" to i8*
  %"$indices_gep_63" = getelementptr i8, i8* %"$indices_buf_62", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_63" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast
  %"$execptr_64" = load i8*, i8** @_execptr
  %"$cur_66" = call i8* @_fetch_field(i8* %"$execptr_64", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_65", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_32", i32 1, i8* %"$indices_buf_62", i32 1)
  %"$cur_67" = bitcast i8* %"$cur_66" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_67", %TName_Option_Int32** %cur
  %"$cur_69" = load %TName_Option_Int32*, %TName_Option_Int32** %cur
  %"$cur_tag_70" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_69", i32 0, i32 0
  %"$cur_tag_71" = load i8, i8* %"$cur_tag_70"
  switch i8 %"$cur_tag_71", label %"$empty_default_72" [
    i8 0, label %"$Some_73"
    i8 1, label %"$None_90"
  ]

"$Some_73":                                       ; preds = %entry
  %"$cur_74" = bitcast %TName_Option_Int32* %"$cur_69" to %CName_Some_Int32*
  %"$i_gep_75" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_74", i32 0, i32 1
  %"$i_load_76" = load %Int32, %Int32* %"$i_gep_75"
  %i = alloca %Int32
  store %Int32 %"$i_load_76", %Int32* %i
  %j = alloca %Int32
  %"$inc_0" = alloca %Int32
  %"$inc_77" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* @inc
  %"$inc_fptr_78" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$inc_77", 0
  %"$inc_envptr_79" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$inc_77", 1
  %"$i_80" = load %Int32, %Int32* %i
  %"$inc_call_81" = call %Int32 %"$inc_fptr_78"(i8* %"$inc_envptr_79", %Int32 %"$i_80")
  store %Int32 %"$inc_call_81", %Int32* %"$inc_0"
  %"$$inc_0_82" = load %Int32, %Int32* %"$inc_0"
  store %Int32 %"$$inc_0_82", %Int32* %j
  %"$indices_buf_83_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_83_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_83_salloc_load", i64 20)
  %"$indices_buf_83_salloc" = bitcast i8* %"$indices_buf_83_salloc_salloc" to [20 x i8]*
  %"$indices_buf_83" = bitcast [20 x i8]* %"$indices_buf_83_salloc" to i8*
  %"$indices_gep_84" = getelementptr i8, i8* %"$indices_buf_83", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_84" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1
  %"$execptr_85" = load i8*, i8** @_execptr
  %"$j_87" = load %Int32, %Int32* %j
  %"$update_value_88" = alloca %Int32
  store %Int32 %"$j_87", %Int32* %"$update_value_88"
  %"$update_value_89" = bitcast %Int32* %"$update_value_88" to i8*
  call void @_update_field(i8* %"$execptr_85", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_86", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_32", i32 1, i8* %"$indices_buf_83", i8* %"$update_value_89")
  br label %"$matchsucc_68"

"$None_90":                                       ; preds = %entry
  %"$cur_91" = bitcast %TName_Option_Int32* %"$cur_69" to %CName_None_Int32*
  %"$indices_buf_92_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_92_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_92_salloc_load", i64 20)
  %"$indices_buf_92_salloc" = bitcast i8* %"$indices_buf_92_salloc_salloc" to [20 x i8]*
  %"$indices_buf_92" = bitcast [20 x i8]* %"$indices_buf_92_salloc" to i8*
  %"$indices_gep_93" = getelementptr i8, i8* %"$indices_buf_92", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_93" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2
  %"$execptr_94" = load i8*, i8** @_execptr
  %"$one_96" = load %Int32, %Int32* @one
  %"$update_value_97" = alloca %Int32
  store %Int32 %"$one_96", %Int32* %"$update_value_97"
  %"$update_value_98" = bitcast %Int32* %"$update_value_97" to i8*
  call void @_update_field(i8* %"$execptr_94", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_95", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_32", i32 1, i8* %"$indices_buf_92", i8* %"$update_value_98")
  br label %"$matchsucc_68"

"$empty_default_72":                              ; preds = %entry
  br label %"$matchsucc_68"

"$matchsucc_68":                                  ; preds = %"$None_90", %"$Some_73", %"$empty_default_72"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define void @Increment(i8* %0) {
entry:
  %"$_amount_100" = getelementptr i8, i8* %0, i32 0
  %"$_amount_101" = bitcast i8* %"$_amount_100" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_101"
  %"$_sender_102" = getelementptr i8, i8* %0, i32 16
  %"$_sender_103" = bitcast i8* %"$_sender_102" to [20 x i8]*
  call void @"$Increment_60"(%Uint128 %_amount, [20 x i8]* %"$_sender_103")
  ret void
}

define internal void @"$IncrementN_104"(%Uint128 %_amount, [20 x i8]* %"$_sender_105", %Int32 %n) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_105"
  %cur = alloca %TName_Option_Int32*
  %"$indices_buf_106_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_106_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_106_salloc_load", i64 20)
  %"$indices_buf_106_salloc" = bitcast i8* %"$indices_buf_106_salloc_salloc" to [20 x i8]*
  %"$indices_buf_106" = bitcast [20 x i8]* %"$indices_buf_106_salloc" to i8*
  %"$indices_gep_107" = getelementptr i8, i8* %"$indices_buf_106", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_107" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast
  %"$execptr_108" = load i8*, i8** @_execptr
  %"$cur_110" = call i8* @_fetch_field(i8* %"$execptr_108", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_109", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_32", i32 1, i8* %"$indices_buf_106", i32 1)
  %"$cur_111" = bitcast i8* %"$cur_110" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_111", %TName_Option_Int32** %cur
  %"$cur_113" = load %TName_Option_Int32*, %TName_Option_Int32** %cur
  %"$cur_tag_114" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_113", i32 0, i32 0
  %"$cur_tag_115" = load i8, i8* %"$cur_tag_114"
  switch i8 %"$cur_tag_115", label %"$empty_default_116" [
    i8 0, label %"$Some_117"
    i8 1, label %"$None_130"
  ]

"$Some_117":                                      ; preds = %entry
  %"$cur_118" = bitcast %TName_Option_Int32* %"$cur_113" to %CName_Some_Int32*
  %"$i_gep_119" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_118", i32 0, i32 1
  %"$i_load_120" = load %Int32, %Int32* %"$i_gep_119"
  %i = alloca %Int32
  store %Int32 %"$i_load_120", %Int32* %i
  %j = alloca %Int32
  %"$i_121" = load %Int32, %Int32* %i
  %"$add_call_122" = call %Int32 @_add_Int32(%Int32 %"$i_121", %Int32 %n)
  store %Int32 %"$add_call_122", %Int32* %j
  %"$indices_buf_123_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_123_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_123_salloc_load", i64 20)
  %"$indices_buf_123_salloc" = bitcast i8* %"$indices_buf_123_salloc_salloc" to [20 x i8]*
  %"$indices_buf_123" = bitcast [20 x i8]* %"$indices_buf_123_salloc" to i8*
  %"$indices_gep_124" = getelementptr i8, i8* %"$indices_buf_123", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_124" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1
  %"$execptr_125" = load i8*, i8** @_execptr
  %"$j_127" = load %Int32, %Int32* %j
  %"$update_value_128" = alloca %Int32
  store %Int32 %"$j_127", %Int32* %"$update_value_128"
  %"$update_value_129" = bitcast %Int32* %"$update_value_128" to i8*
  call void @_update_field(i8* %"$execptr_125", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_126", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_32", i32 1, i8* %"$indices_buf_123", i8* %"$update_value_129")
  br label %"$matchsucc_112"

"$None_130":                                      ; preds = %entry
  %"$cur_131" = bitcast %TName_Option_Int32* %"$cur_113" to %CName_None_Int32*
  %"$indices_buf_132_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_132_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_132_salloc_load", i64 20)
  %"$indices_buf_132_salloc" = bitcast i8* %"$indices_buf_132_salloc_salloc" to [20 x i8]*
  %"$indices_buf_132" = bitcast [20 x i8]* %"$indices_buf_132_salloc" to i8*
  %"$indices_gep_133" = getelementptr i8, i8* %"$indices_buf_132", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_133" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2
  %"$execptr_134" = load i8*, i8** @_execptr
  %"$update_value_136" = alloca %Int32
  store %Int32 %n, %Int32* %"$update_value_136"
  %"$update_value_137" = bitcast %Int32* %"$update_value_136" to i8*
  call void @_update_field(i8* %"$execptr_134", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_135", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_32", i32 1, i8* %"$indices_buf_132", i8* %"$update_value_137")
  br label %"$matchsucc_112"

"$empty_default_116":                             ; preds = %entry
  br label %"$matchsucc_112"

"$matchsucc_112":                                 ; preds = %"$None_130", %"$Some_117", %"$empty_default_116"
  ret void
}

define internal void @"$IncrementNOpt_138"(%Uint128 %_amount, [20 x i8]* %"$_sender_139", %TName_Option_Int32* %nopt) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_139"
  %"$nopt_tag_141" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %nopt, i32 0, i32 0
  %"$nopt_tag_142" = load i8, i8* %"$nopt_tag_141"
  switch i8 %"$nopt_tag_142", label %"$empty_default_143" [
    i8 0, label %"$Some_144"
    i8 1, label %"$None_150"
  ]

"$Some_144":                                      ; preds = %entry
  %"$nopt_145" = bitcast %TName_Option_Int32* %nopt to %CName_Some_Int32*
  %"$n_gep_146" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$nopt_145", i32 0, i32 1
  %"$n_load_147" = load %Int32, %Int32* %"$n_gep_146"
  %n = alloca %Int32
  store %Int32 %"$n_load_147", %Int32* %n
  %"$IncrementN__sender_148" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$IncrementN__sender_148"
  %"$n_149" = load %Int32, %Int32* %n
  call void @"$IncrementN_104"(%Uint128 %_amount, [20 x i8]* %"$IncrementN__sender_148", %Int32 %"$n_149")
  br label %"$matchsucc_140"

"$None_150":                                      ; preds = %entry
  %"$nopt_151" = bitcast %TName_Option_Int32* %nopt to %CName_None_Int32*
  br label %"$matchsucc_140"

"$empty_default_143":                             ; preds = %entry
  br label %"$matchsucc_140"

"$matchsucc_140":                                 ; preds = %"$None_150", %"$Some_144", %"$empty_default_143"
  ret void
}

define void @IncrementNOpt(i8* %0) {
entry:
  %"$_amount_153" = getelementptr i8, i8* %0, i32 0
  %"$_amount_154" = bitcast i8* %"$_amount_153" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_154"
  %"$_sender_155" = getelementptr i8, i8* %0, i32 16
  %"$_sender_156" = bitcast i8* %"$_sender_155" to [20 x i8]*
  %"$nopt_157" = getelementptr i8, i8* %0, i32 36
  %"$nopt_158" = bitcast i8* %"$nopt_157" to %TName_Option_Int32**
  %nopt = load %TName_Option_Int32*, %TName_Option_Int32** %"$nopt_158"
  call void @"$IncrementNOpt_138"(%Uint128 %_amount, [20 x i8]* %"$_sender_156", %TName_Option_Int32* %nopt)
  ret void
}
