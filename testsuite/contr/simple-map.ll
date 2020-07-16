

; gas_remaining: 4002000
; ModuleID = 'SimpleMap'
source_filename = "SimpleMap"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_4" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_36" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_35"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_35" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_37"**, %"$TyDescrTy_ADTTyp_36"* }
%"$TyDescrTy_ADTTyp_Constr_37" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_39" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$$fundef_1_env_54" = type { %Int32 }
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
@"$TyDescr_Bnum_Prim_23" = global %"$TyDescrTy_PrimTyp_4" { i32 3, i32 0 }
@"$TyDescr_Bnum_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bnum_Prim_23" to i8*) }
@"$TyDescr_Message_Prim_25" = global %"$TyDescrTy_PrimTyp_4" { i32 4, i32 0 }
@"$TyDescr_Message_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Message_Prim_25" to i8*) }
@"$TyDescr_Event_Prim_27" = global %"$TyDescrTy_PrimTyp_4" { i32 5, i32 0 }
@"$TyDescr_Event_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Event_Prim_27" to i8*) }
@"$TyDescr_Exception_Prim_29" = global %"$TyDescrTy_PrimTyp_4" { i32 6, i32 0 }
@"$TyDescr_Exception_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Exception_Prim_29" to i8*) }
@"$TyDescr_Bystr_Prim_31" = global %"$TyDescrTy_PrimTyp_4" { i32 7, i32 0 }
@"$TyDescr_Bystr_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bystr_Prim_31" to i8*) }
@"$TyDescr_Bystr20_Prim_33" = global %"$TyDescrTy_PrimTyp_4" { i32 8, i32 20 }
@"$TyDescr_Bystr20_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bystr20_Prim_33" to i8*) }
@"$TyDescr_ADT_Option_Int32_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_Option_Int32_ADTTyp_Specl_50" to i8*) }
@"$TyDescr_Map_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_39"* @"$TyDescr_MapTyp_53" to i8*) }
@"$TyDescr_Option_ADTTyp_41" = unnamed_addr constant %"$TyDescrTy_ADTTyp_36" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_52", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_35"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_35"*], [1 x %"$TyDescrTy_ADTTyp_Specl_35"*]* @"$TyDescr_Option_ADTTyp_m_specls_51", i32 0, i32 0) }
@"$TyDescr_Option_Some_Int32_Constr_m_args_42" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@"$TyDescr_ADT_Some_43" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int32_ADTTyp_Constr_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_43", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int32_Constr_m_args_42", i32 0, i32 0) }
@"$TyDescr_Option_None_Int32_Constr_m_args_45" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_46" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int32_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_46", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int32_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_48" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_37"*] [%"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_Option_Some_Int32_ADTTyp_Constr_44", %"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_Option_None_Int32_ADTTyp_Constr_47"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_49" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_35" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_49", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_37"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_37"*], [2 x %"$TyDescrTy_ADTTyp_Constr_37"*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_48", i32 0, i32 0), %"$TyDescrTy_ADTTyp_36"* @"$TyDescr_Option_ADTTyp_41" }
@"$TyDescr_Option_ADTTyp_m_specls_51" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_35"*] [%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_Option_Int32_ADTTyp_Specl_50"]
@"$TyDescr_ADT_Option_52" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_MapTyp_53" = unnamed_addr constant %"$TyDescr_MapTyp_39" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Int32_6" }
@one = global %Int32 zeroinitializer
@inc = global { %Int32 (i8*, %Int32)*, i8* } zeroinitializer
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$access_count_71" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_92" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_101" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_115" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_132" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_141" = unnamed_addr constant [13 x i8] c"access_count\00"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_28", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Bnum_24", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_38", %_TyDescrTy_Typ* @"$TyDescr_Exception_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_Map_40", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 17

define internal %Int32 @"$fundef_1"(%"$$fundef_1_env_54"* %0, %Int32 %1) {
entry:
  %"$$fundef_1_env_one_55" = getelementptr inbounds %"$$fundef_1_env_54", %"$$fundef_1_env_54"* %0, i32 0, i32 0
  %"$one_envload_56" = load %Int32, %Int32* %"$$fundef_1_env_one_55"
  %one = alloca %Int32
  store %Int32 %"$one_envload_56", %Int32* %one
  %"$retval_2" = alloca %Int32
  %"$one_57" = load %Int32, %Int32* %one
  %"$add_call_58" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %"$one_57")
  store %Int32 %"$add_call_58", %Int32* %"$retval_2"
  %"$$retval_2_59" = load %Int32, %Int32* %"$retval_2"
  ret %Int32 %"$$retval_2_59"
}

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() {
entry:
  store %Int32 { i32 1 }, %Int32* @one
  %"$$fundef_1_envp_60_load" = load i8*, i8** @_execptr
  %"$$fundef_1_envp_60_salloc" = call i8* @_salloc(i8* %"$$fundef_1_envp_60_load", i64 4)
  %"$$fundef_1_envp_60" = bitcast i8* %"$$fundef_1_envp_60_salloc" to %"$$fundef_1_env_54"*
  %"$$fundef_1_env_voidp_62" = bitcast %"$$fundef_1_env_54"* %"$$fundef_1_envp_60" to i8*
  %"$$fundef_1_cloval_63" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_1_env_54"*, %Int32)* @"$fundef_1" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_1_env_voidp_62", 1
  %"$$fundef_1_env_one_64" = getelementptr inbounds %"$$fundef_1_env_54", %"$$fundef_1_env_54"* %"$$fundef_1_envp_60", i32 0, i32 0
  %"$one_65" = load %Int32, %Int32* @one
  store %Int32 %"$one_65", %Int32* %"$$fundef_1_env_one_64"
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_1_cloval_63", { %Int32 (i8*, %Int32)*, i8* }* @inc
  ret void
}

declare i8* @_salloc(i8*, i64)

define internal void @"$Increment_66"(%Uint128 %_amount, [20 x i8]* %"$_sender_67") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_67"
  %cur = alloca %TName_Option_Int32*
  %"$indices_buf_68_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_68_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_68_salloc_load", i64 20)
  %"$indices_buf_68_salloc" = bitcast i8* %"$indices_buf_68_salloc_salloc" to [20 x i8]*
  %"$indices_buf_68" = bitcast [20 x i8]* %"$indices_buf_68_salloc" to i8*
  %"$indices_gep_69" = getelementptr i8, i8* %"$indices_buf_68", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_69" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast
  %"$to_nat_load_70" = load i8*, i8** @_execptr
  %"$cur_72" = call i8* @_fetch_field(i8* %"$to_nat_load_70", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_71", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_68", i32 1)
  %"$cur_73" = bitcast i8* %"$cur_72" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_73", %TName_Option_Int32** %cur
  %"$cur_75" = load %TName_Option_Int32*, %TName_Option_Int32** %cur
  %"$cur_tag_76" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_75", i32 0, i32 0
  %"$cur_tag_77" = load i8, i8* %"$cur_tag_76"
  switch i8 %"$cur_tag_77", label %"$empty_default_78" [
    i8 0, label %"$Some_79"
    i8 1, label %"$None_96"
  ]

"$Some_79":                                       ; preds = %entry
  %"$cur_80" = bitcast %TName_Option_Int32* %"$cur_75" to %CName_Some_Int32*
  %"$i_gep_81" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_80", i32 0, i32 1
  %"$i_load_82" = load %Int32, %Int32* %"$i_gep_81"
  %i = alloca %Int32
  store %Int32 %"$i_load_82", %Int32* %i
  %j = alloca %Int32
  %"$inc_0" = alloca %Int32
  %"$inc_83" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* @inc
  %"$inc_fptr_84" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$inc_83", 0
  %"$inc_envptr_85" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$inc_83", 1
  %"$i_86" = load %Int32, %Int32* %i
  %"$inc_call_87" = call %Int32 %"$inc_fptr_84"(i8* %"$inc_envptr_85", %Int32 %"$i_86")
  store %Int32 %"$inc_call_87", %Int32* %"$inc_0"
  %"$$inc_0_88" = load %Int32, %Int32* %"$inc_0"
  store %Int32 %"$$inc_0_88", %Int32* %j
  %"$indices_buf_89_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_89_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_89_salloc_load", i64 20)
  %"$indices_buf_89_salloc" = bitcast i8* %"$indices_buf_89_salloc_salloc" to [20 x i8]*
  %"$indices_buf_89" = bitcast [20 x i8]* %"$indices_buf_89_salloc" to i8*
  %"$indices_gep_90" = getelementptr i8, i8* %"$indices_buf_89", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_90" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1
  %"$to_nat_load_91" = load i8*, i8** @_execptr
  %"$j_93" = load %Int32, %Int32* %j
  %"$update_value_94" = alloca %Int32
  store %Int32 %"$j_93", %Int32* %"$update_value_94"
  %"$update_value_95" = bitcast %Int32* %"$update_value_94" to i8*
  call void @_update_field(i8* %"$to_nat_load_91", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_92", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_89", i8* %"$update_value_95")
  br label %"$matchsucc_74"

"$None_96":                                       ; preds = %entry
  %"$cur_97" = bitcast %TName_Option_Int32* %"$cur_75" to %CName_None_Int32*
  %"$indices_buf_98_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_98_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_98_salloc_load", i64 20)
  %"$indices_buf_98_salloc" = bitcast i8* %"$indices_buf_98_salloc_salloc" to [20 x i8]*
  %"$indices_buf_98" = bitcast [20 x i8]* %"$indices_buf_98_salloc" to i8*
  %"$indices_gep_99" = getelementptr i8, i8* %"$indices_buf_98", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_99" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2
  %"$to_nat_load_100" = load i8*, i8** @_execptr
  %"$one_102" = load %Int32, %Int32* @one
  %"$update_value_103" = alloca %Int32
  store %Int32 %"$one_102", %Int32* %"$update_value_103"
  %"$update_value_104" = bitcast %Int32* %"$update_value_103" to i8*
  call void @_update_field(i8* %"$to_nat_load_100", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_101", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_98", i8* %"$update_value_104")
  br label %"$matchsucc_74"

"$empty_default_78":                              ; preds = %entry
  br label %"$matchsucc_74"

"$matchsucc_74":                                  ; preds = %"$None_96", %"$Some_79", %"$empty_default_78"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define void @Increment(i8* %0) {
entry:
  %"$_amount_106" = getelementptr i8, i8* %0, i32 0
  %"$_amount_107" = bitcast i8* %"$_amount_106" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_107"
  %"$_sender_108" = getelementptr i8, i8* %0, i32 16
  %"$_sender_109" = bitcast i8* %"$_sender_108" to [20 x i8]*
  call void @"$Increment_66"(%Uint128 %_amount, [20 x i8]* %"$_sender_109")
  ret void
}

define internal void @"$IncrementN_110"(%Uint128 %_amount, [20 x i8]* %"$_sender_111", %Int32 %n) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_111"
  %cur = alloca %TName_Option_Int32*
  %"$indices_buf_112_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_112_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_112_salloc_load", i64 20)
  %"$indices_buf_112_salloc" = bitcast i8* %"$indices_buf_112_salloc_salloc" to [20 x i8]*
  %"$indices_buf_112" = bitcast [20 x i8]* %"$indices_buf_112_salloc" to i8*
  %"$indices_gep_113" = getelementptr i8, i8* %"$indices_buf_112", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_113" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast
  %"$to_nat_load_114" = load i8*, i8** @_execptr
  %"$cur_116" = call i8* @_fetch_field(i8* %"$to_nat_load_114", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_115", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_112", i32 1)
  %"$cur_117" = bitcast i8* %"$cur_116" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_117", %TName_Option_Int32** %cur
  %"$cur_119" = load %TName_Option_Int32*, %TName_Option_Int32** %cur
  %"$cur_tag_120" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_119", i32 0, i32 0
  %"$cur_tag_121" = load i8, i8* %"$cur_tag_120"
  switch i8 %"$cur_tag_121", label %"$empty_default_122" [
    i8 0, label %"$Some_123"
    i8 1, label %"$None_136"
  ]

"$Some_123":                                      ; preds = %entry
  %"$cur_124" = bitcast %TName_Option_Int32* %"$cur_119" to %CName_Some_Int32*
  %"$i_gep_125" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_124", i32 0, i32 1
  %"$i_load_126" = load %Int32, %Int32* %"$i_gep_125"
  %i = alloca %Int32
  store %Int32 %"$i_load_126", %Int32* %i
  %j = alloca %Int32
  %"$i_127" = load %Int32, %Int32* %i
  %"$add_call_128" = call %Int32 @_add_Int32(%Int32 %"$i_127", %Int32 %n)
  store %Int32 %"$add_call_128", %Int32* %j
  %"$indices_buf_129_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_129_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_129_salloc_load", i64 20)
  %"$indices_buf_129_salloc" = bitcast i8* %"$indices_buf_129_salloc_salloc" to [20 x i8]*
  %"$indices_buf_129" = bitcast [20 x i8]* %"$indices_buf_129_salloc" to i8*
  %"$indices_gep_130" = getelementptr i8, i8* %"$indices_buf_129", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_130" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1
  %"$to_nat_load_131" = load i8*, i8** @_execptr
  %"$j_133" = load %Int32, %Int32* %j
  %"$update_value_134" = alloca %Int32
  store %Int32 %"$j_133", %Int32* %"$update_value_134"
  %"$update_value_135" = bitcast %Int32* %"$update_value_134" to i8*
  call void @_update_field(i8* %"$to_nat_load_131", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_132", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_129", i8* %"$update_value_135")
  br label %"$matchsucc_118"

"$None_136":                                      ; preds = %entry
  %"$cur_137" = bitcast %TName_Option_Int32* %"$cur_119" to %CName_None_Int32*
  %"$indices_buf_138_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_138_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_138_salloc_load", i64 20)
  %"$indices_buf_138_salloc" = bitcast i8* %"$indices_buf_138_salloc_salloc" to [20 x i8]*
  %"$indices_buf_138" = bitcast [20 x i8]* %"$indices_buf_138_salloc" to i8*
  %"$indices_gep_139" = getelementptr i8, i8* %"$indices_buf_138", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_139" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2
  %"$to_nat_load_140" = load i8*, i8** @_execptr
  %"$update_value_142" = alloca %Int32
  store %Int32 %n, %Int32* %"$update_value_142"
  %"$update_value_143" = bitcast %Int32* %"$update_value_142" to i8*
  call void @_update_field(i8* %"$to_nat_load_140", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_141", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_138", i8* %"$update_value_143")
  br label %"$matchsucc_118"

"$empty_default_122":                             ; preds = %entry
  br label %"$matchsucc_118"

"$matchsucc_118":                                 ; preds = %"$None_136", %"$Some_123", %"$empty_default_122"
  ret void
}

define internal void @"$IncrementNOpt_144"(%Uint128 %_amount, [20 x i8]* %"$_sender_145", %TName_Option_Int32* %nopt) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_145"
  %"$nopt_tag_147" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %nopt, i32 0, i32 0
  %"$nopt_tag_148" = load i8, i8* %"$nopt_tag_147"
  switch i8 %"$nopt_tag_148", label %"$empty_default_149" [
    i8 0, label %"$Some_150"
    i8 1, label %"$None_156"
  ]

"$Some_150":                                      ; preds = %entry
  %"$nopt_151" = bitcast %TName_Option_Int32* %nopt to %CName_Some_Int32*
  %"$n_gep_152" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$nopt_151", i32 0, i32 1
  %"$n_load_153" = load %Int32, %Int32* %"$n_gep_152"
  %n = alloca %Int32
  store %Int32 %"$n_load_153", %Int32* %n
  %"$IncrementN__sender_154" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$IncrementN__sender_154"
  %"$n_155" = load %Int32, %Int32* %n
  call void @"$IncrementN_110"(%Uint128 %_amount, [20 x i8]* %"$IncrementN__sender_154", %Int32 %"$n_155")
  br label %"$matchsucc_146"

"$None_156":                                      ; preds = %entry
  %"$nopt_157" = bitcast %TName_Option_Int32* %nopt to %CName_None_Int32*
  br label %"$matchsucc_146"

"$empty_default_149":                             ; preds = %entry
  br label %"$matchsucc_146"

"$matchsucc_146":                                 ; preds = %"$None_156", %"$Some_150", %"$empty_default_149"
  ret void
}

define void @IncrementNOpt(i8* %0) {
entry:
  %"$_amount_159" = getelementptr i8, i8* %0, i32 0
  %"$_amount_160" = bitcast i8* %"$_amount_159" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_160"
  %"$_sender_161" = getelementptr i8, i8* %0, i32 16
  %"$_sender_162" = bitcast i8* %"$_sender_161" to [20 x i8]*
  %"$nopt_163" = getelementptr i8, i8* %0, i32 36
  %"$nopt_164" = bitcast i8* %"$nopt_163" to %TName_Option_Int32**
  %nopt = load %TName_Option_Int32*, %TName_Option_Int32** %"$nopt_164"
  call void @"$IncrementNOpt_144"(%Uint128 %_amount, [20 x i8]* %"$_sender_162", %TName_Option_Int32* %nopt)
  ret void
}
