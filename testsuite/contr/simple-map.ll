

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
@"$access_count_63" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_84" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_93" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_107" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_124" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_133" = unnamed_addr constant [13 x i8] c"access_count\00"
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
  %"$$fundef_1_env_one_56" = getelementptr inbounds %"$$fundef_1_env_46", %"$$fundef_1_env_46"* %"$$fundef_1_envp_52", i32 0, i32 0
  %"$one_57" = load %Int32, %Int32* @one
  store %Int32 %"$one_57", %Int32* %"$$fundef_1_env_one_56"
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_1_cloval_55", { %Int32 (i8*, %Int32)*, i8* }* @inc
  ret void
}

declare i8* @_salloc(i8*, i64)

define internal void @"$Increment_58"(%Uint128 %_amount, [20 x i8]* %"$_sender_59") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_59"
  %cur = alloca %TName_Option_Int32*
  %"$indices_buf_60_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_60_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_60_salloc_load", i64 20)
  %"$indices_buf_60_salloc" = bitcast i8* %"$indices_buf_60_salloc_salloc" to [20 x i8]*
  %"$indices_buf_60" = bitcast [20 x i8]* %"$indices_buf_60_salloc" to i8*
  %"$indices_gep_61" = getelementptr i8, i8* %"$indices_buf_60", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_61" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast
  %"$execptr_62" = load i8*, i8** @_execptr
  %"$cur_64" = call i8* @_fetch_field(i8* %"$execptr_62", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_63", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_32", i32 1, i8* %"$indices_buf_60", i32 1)
  %"$cur_65" = bitcast i8* %"$cur_64" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_65", %TName_Option_Int32** %cur
  %"$cur_67" = load %TName_Option_Int32*, %TName_Option_Int32** %cur
  %"$cur_tag_68" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_67", i32 0, i32 0
  %"$cur_tag_69" = load i8, i8* %"$cur_tag_68"
  switch i8 %"$cur_tag_69", label %"$empty_default_70" [
    i8 0, label %"$Some_71"
    i8 1, label %"$None_88"
  ]

"$Some_71":                                       ; preds = %entry
  %"$cur_72" = bitcast %TName_Option_Int32* %"$cur_67" to %CName_Some_Int32*
  %"$i_gep_73" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_72", i32 0, i32 1
  %"$i_load_74" = load %Int32, %Int32* %"$i_gep_73"
  %i = alloca %Int32
  store %Int32 %"$i_load_74", %Int32* %i
  %j = alloca %Int32
  %"$inc_0" = alloca %Int32
  %"$inc_75" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* @inc
  %"$inc_fptr_76" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$inc_75", 0
  %"$inc_envptr_77" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$inc_75", 1
  %"$i_78" = load %Int32, %Int32* %i
  %"$inc_call_79" = call %Int32 %"$inc_fptr_76"(i8* %"$inc_envptr_77", %Int32 %"$i_78")
  store %Int32 %"$inc_call_79", %Int32* %"$inc_0"
  %"$$inc_0_80" = load %Int32, %Int32* %"$inc_0"
  store %Int32 %"$$inc_0_80", %Int32* %j
  %"$indices_buf_81_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_81_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_81_salloc_load", i64 20)
  %"$indices_buf_81_salloc" = bitcast i8* %"$indices_buf_81_salloc_salloc" to [20 x i8]*
  %"$indices_buf_81" = bitcast [20 x i8]* %"$indices_buf_81_salloc" to i8*
  %"$indices_gep_82" = getelementptr i8, i8* %"$indices_buf_81", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_82" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1
  %"$execptr_83" = load i8*, i8** @_execptr
  %"$j_85" = load %Int32, %Int32* %j
  %"$update_value_86" = alloca %Int32
  store %Int32 %"$j_85", %Int32* %"$update_value_86"
  %"$update_value_87" = bitcast %Int32* %"$update_value_86" to i8*
  call void @_update_field(i8* %"$execptr_83", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_84", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_32", i32 1, i8* %"$indices_buf_81", i8* %"$update_value_87")
  br label %"$matchsucc_66"

"$None_88":                                       ; preds = %entry
  %"$cur_89" = bitcast %TName_Option_Int32* %"$cur_67" to %CName_None_Int32*
  %"$indices_buf_90_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_90_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_90_salloc_load", i64 20)
  %"$indices_buf_90_salloc" = bitcast i8* %"$indices_buf_90_salloc_salloc" to [20 x i8]*
  %"$indices_buf_90" = bitcast [20 x i8]* %"$indices_buf_90_salloc" to i8*
  %"$indices_gep_91" = getelementptr i8, i8* %"$indices_buf_90", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_91" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2
  %"$execptr_92" = load i8*, i8** @_execptr
  %"$one_94" = load %Int32, %Int32* @one
  %"$update_value_95" = alloca %Int32
  store %Int32 %"$one_94", %Int32* %"$update_value_95"
  %"$update_value_96" = bitcast %Int32* %"$update_value_95" to i8*
  call void @_update_field(i8* %"$execptr_92", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_93", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_32", i32 1, i8* %"$indices_buf_90", i8* %"$update_value_96")
  br label %"$matchsucc_66"

"$empty_default_70":                              ; preds = %entry
  br label %"$matchsucc_66"

"$matchsucc_66":                                  ; preds = %"$None_88", %"$Some_71", %"$empty_default_70"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define void @Increment(i8* %0) {
entry:
  %"$_amount_98" = getelementptr i8, i8* %0, i32 0
  %"$_amount_99" = bitcast i8* %"$_amount_98" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_99"
  %"$_sender_100" = getelementptr i8, i8* %0, i32 16
  %"$_sender_101" = bitcast i8* %"$_sender_100" to [20 x i8]*
  call void @"$Increment_58"(%Uint128 %_amount, [20 x i8]* %"$_sender_101")
  ret void
}

define internal void @"$IncrementN_102"(%Uint128 %_amount, [20 x i8]* %"$_sender_103", %Int32 %n) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_103"
  %cur = alloca %TName_Option_Int32*
  %"$indices_buf_104_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_104_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_104_salloc_load", i64 20)
  %"$indices_buf_104_salloc" = bitcast i8* %"$indices_buf_104_salloc_salloc" to [20 x i8]*
  %"$indices_buf_104" = bitcast [20 x i8]* %"$indices_buf_104_salloc" to i8*
  %"$indices_gep_105" = getelementptr i8, i8* %"$indices_buf_104", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_105" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast
  %"$execptr_106" = load i8*, i8** @_execptr
  %"$cur_108" = call i8* @_fetch_field(i8* %"$execptr_106", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_107", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_32", i32 1, i8* %"$indices_buf_104", i32 1)
  %"$cur_109" = bitcast i8* %"$cur_108" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_109", %TName_Option_Int32** %cur
  %"$cur_111" = load %TName_Option_Int32*, %TName_Option_Int32** %cur
  %"$cur_tag_112" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_111", i32 0, i32 0
  %"$cur_tag_113" = load i8, i8* %"$cur_tag_112"
  switch i8 %"$cur_tag_113", label %"$empty_default_114" [
    i8 0, label %"$Some_115"
    i8 1, label %"$None_128"
  ]

"$Some_115":                                      ; preds = %entry
  %"$cur_116" = bitcast %TName_Option_Int32* %"$cur_111" to %CName_Some_Int32*
  %"$i_gep_117" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_116", i32 0, i32 1
  %"$i_load_118" = load %Int32, %Int32* %"$i_gep_117"
  %i = alloca %Int32
  store %Int32 %"$i_load_118", %Int32* %i
  %j = alloca %Int32
  %"$i_119" = load %Int32, %Int32* %i
  %"$add_call_120" = call %Int32 @_add_Int32(%Int32 %"$i_119", %Int32 %n)
  store %Int32 %"$add_call_120", %Int32* %j
  %"$indices_buf_121_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_121_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_121_salloc_load", i64 20)
  %"$indices_buf_121_salloc" = bitcast i8* %"$indices_buf_121_salloc_salloc" to [20 x i8]*
  %"$indices_buf_121" = bitcast [20 x i8]* %"$indices_buf_121_salloc" to i8*
  %"$indices_gep_122" = getelementptr i8, i8* %"$indices_buf_121", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_122" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1
  %"$execptr_123" = load i8*, i8** @_execptr
  %"$j_125" = load %Int32, %Int32* %j
  %"$update_value_126" = alloca %Int32
  store %Int32 %"$j_125", %Int32* %"$update_value_126"
  %"$update_value_127" = bitcast %Int32* %"$update_value_126" to i8*
  call void @_update_field(i8* %"$execptr_123", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_124", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_32", i32 1, i8* %"$indices_buf_121", i8* %"$update_value_127")
  br label %"$matchsucc_110"

"$None_128":                                      ; preds = %entry
  %"$cur_129" = bitcast %TName_Option_Int32* %"$cur_111" to %CName_None_Int32*
  %"$indices_buf_130_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_130_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_130_salloc_load", i64 20)
  %"$indices_buf_130_salloc" = bitcast i8* %"$indices_buf_130_salloc_salloc" to [20 x i8]*
  %"$indices_buf_130" = bitcast [20 x i8]* %"$indices_buf_130_salloc" to i8*
  %"$indices_gep_131" = getelementptr i8, i8* %"$indices_buf_130", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_131" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2
  %"$execptr_132" = load i8*, i8** @_execptr
  %"$update_value_134" = alloca %Int32
  store %Int32 %n, %Int32* %"$update_value_134"
  %"$update_value_135" = bitcast %Int32* %"$update_value_134" to i8*
  call void @_update_field(i8* %"$execptr_132", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_133", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_32", i32 1, i8* %"$indices_buf_130", i8* %"$update_value_135")
  br label %"$matchsucc_110"

"$empty_default_114":                             ; preds = %entry
  br label %"$matchsucc_110"

"$matchsucc_110":                                 ; preds = %"$None_128", %"$Some_115", %"$empty_default_114"
  ret void
}

define internal void @"$IncrementNOpt_136"(%Uint128 %_amount, [20 x i8]* %"$_sender_137", %TName_Option_Int32* %nopt) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_137"
  %"$nopt_tag_139" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %nopt, i32 0, i32 0
  %"$nopt_tag_140" = load i8, i8* %"$nopt_tag_139"
  switch i8 %"$nopt_tag_140", label %"$empty_default_141" [
    i8 0, label %"$Some_142"
    i8 1, label %"$None_148"
  ]

"$Some_142":                                      ; preds = %entry
  %"$nopt_143" = bitcast %TName_Option_Int32* %nopt to %CName_Some_Int32*
  %"$n_gep_144" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$nopt_143", i32 0, i32 1
  %"$n_load_145" = load %Int32, %Int32* %"$n_gep_144"
  %n = alloca %Int32
  store %Int32 %"$n_load_145", %Int32* %n
  %"$IncrementN__sender_146" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$IncrementN__sender_146"
  %"$n_147" = load %Int32, %Int32* %n
  call void @"$IncrementN_102"(%Uint128 %_amount, [20 x i8]* %"$IncrementN__sender_146", %Int32 %"$n_147")
  br label %"$matchsucc_138"

"$None_148":                                      ; preds = %entry
  %"$nopt_149" = bitcast %TName_Option_Int32* %nopt to %CName_None_Int32*
  br label %"$matchsucc_138"

"$empty_default_141":                             ; preds = %entry
  br label %"$matchsucc_138"

"$matchsucc_138":                                 ; preds = %"$None_148", %"$Some_142", %"$empty_default_141"
  ret void
}

define void @IncrementNOpt(i8* %0) {
entry:
  %"$_amount_151" = getelementptr i8, i8* %0, i32 0
  %"$_amount_152" = bitcast i8* %"$_amount_151" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_152"
  %"$_sender_153" = getelementptr i8, i8* %0, i32 16
  %"$_sender_154" = bitcast i8* %"$_sender_153" to [20 x i8]*
  %"$nopt_155" = getelementptr i8, i8* %0, i32 36
  %"$nopt_156" = bitcast i8* %"$nopt_155" to %TName_Option_Int32**
  %nopt = load %TName_Option_Int32*, %TName_Option_Int32** %"$nopt_156"
  call void @"$IncrementNOpt_136"(%Uint128 %_amount, [20 x i8]* %"$_sender_154", %TName_Option_Int32* %nopt)
  ret void
}
