

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
%Map_ByStr20_Int32 = type { [20 x i8], %Int32 }
%Uint128 = type { i128 }
%TName_Option_Int32 = type { i8, %CName_Some_Int32*, %CName_None_Int32* }
%CName_Some_Int32 = type <{ i8, %Int32 }>
%CName_None_Int32 = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
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
@"$access_count_70" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_78" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_99" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_108" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_122" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_139" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_148" = unnamed_addr constant [13 x i8] c"access_count\00"
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

define void @_init_state() {
entry:
  %"$access_count_3" = alloca %Map_ByStr20_Int32*
  %"$execptr_load_66" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_67" = call i8* @_new_empty_map(i8* %"$execptr_load_66")
  %"$Emp_68" = bitcast i8* %"$_new_empty_map_call_67" to %Map_ByStr20_Int32*
  store %Map_ByStr20_Int32* %"$Emp_68", %Map_ByStr20_Int32** %"$access_count_3"
  %"$execptr_load_69" = load i8*, i8** @_execptr
  %"$$access_count_3_71" = load %Map_ByStr20_Int32*, %Map_ByStr20_Int32** %"$access_count_3"
  %"$update_value_72" = bitcast %Map_ByStr20_Int32* %"$$access_count_3_71" to i8*
  call void @_update_field(i8* %"$execptr_load_69", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_70", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 0, i8* null, i8* %"$update_value_72")
  ret void
}

declare i8* @_new_empty_map(i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$Increment_73"(%Uint128 %_amount, [20 x i8]* %"$_sender_74") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_74"
  %cur = alloca %TName_Option_Int32*
  %"$indices_buf_75_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_75_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_75_salloc_load", i64 20)
  %"$indices_buf_75_salloc" = bitcast i8* %"$indices_buf_75_salloc_salloc" to [20 x i8]*
  %"$indices_buf_75" = bitcast [20 x i8]* %"$indices_buf_75_salloc" to i8*
  %"$indices_gep_76" = getelementptr i8, i8* %"$indices_buf_75", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_76" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast
  %"$execptr_load_77" = load i8*, i8** @_execptr
  %"$cur_79" = call i8* @_fetch_field(i8* %"$execptr_load_77", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_78", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_75", i32 1)
  %"$cur_80" = bitcast i8* %"$cur_79" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_80", %TName_Option_Int32** %cur
  %"$cur_82" = load %TName_Option_Int32*, %TName_Option_Int32** %cur
  %"$cur_tag_83" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_82", i32 0, i32 0
  %"$cur_tag_84" = load i8, i8* %"$cur_tag_83"
  switch i8 %"$cur_tag_84", label %"$empty_default_85" [
    i8 0, label %"$Some_86"
    i8 1, label %"$None_103"
  ]

"$Some_86":                                       ; preds = %entry
  %"$cur_87" = bitcast %TName_Option_Int32* %"$cur_82" to %CName_Some_Int32*
  %"$i_gep_88" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_87", i32 0, i32 1
  %"$i_load_89" = load %Int32, %Int32* %"$i_gep_88"
  %i = alloca %Int32
  store %Int32 %"$i_load_89", %Int32* %i
  %j = alloca %Int32
  %"$inc_0" = alloca %Int32
  %"$inc_90" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* @inc
  %"$inc_fptr_91" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$inc_90", 0
  %"$inc_envptr_92" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$inc_90", 1
  %"$i_93" = load %Int32, %Int32* %i
  %"$inc_call_94" = call %Int32 %"$inc_fptr_91"(i8* %"$inc_envptr_92", %Int32 %"$i_93")
  store %Int32 %"$inc_call_94", %Int32* %"$inc_0"
  %"$$inc_0_95" = load %Int32, %Int32* %"$inc_0"
  store %Int32 %"$$inc_0_95", %Int32* %j
  %"$indices_buf_96_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_96_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_96_salloc_load", i64 20)
  %"$indices_buf_96_salloc" = bitcast i8* %"$indices_buf_96_salloc_salloc" to [20 x i8]*
  %"$indices_buf_96" = bitcast [20 x i8]* %"$indices_buf_96_salloc" to i8*
  %"$indices_gep_97" = getelementptr i8, i8* %"$indices_buf_96", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_97" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1
  %"$execptr_load_98" = load i8*, i8** @_execptr
  %"$j_100" = load %Int32, %Int32* %j
  %"$update_value_101" = alloca %Int32
  store %Int32 %"$j_100", %Int32* %"$update_value_101"
  %"$update_value_102" = bitcast %Int32* %"$update_value_101" to i8*
  call void @_update_field(i8* %"$execptr_load_98", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_99", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_96", i8* %"$update_value_102")
  br label %"$matchsucc_81"

"$None_103":                                      ; preds = %entry
  %"$cur_104" = bitcast %TName_Option_Int32* %"$cur_82" to %CName_None_Int32*
  %"$indices_buf_105_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_105_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_105_salloc_load", i64 20)
  %"$indices_buf_105_salloc" = bitcast i8* %"$indices_buf_105_salloc_salloc" to [20 x i8]*
  %"$indices_buf_105" = bitcast [20 x i8]* %"$indices_buf_105_salloc" to i8*
  %"$indices_gep_106" = getelementptr i8, i8* %"$indices_buf_105", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_106" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2
  %"$execptr_load_107" = load i8*, i8** @_execptr
  %"$one_109" = load %Int32, %Int32* @one
  %"$update_value_110" = alloca %Int32
  store %Int32 %"$one_109", %Int32* %"$update_value_110"
  %"$update_value_111" = bitcast %Int32* %"$update_value_110" to i8*
  call void @_update_field(i8* %"$execptr_load_107", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_108", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_105", i8* %"$update_value_111")
  br label %"$matchsucc_81"

"$empty_default_85":                              ; preds = %entry
  br label %"$matchsucc_81"

"$matchsucc_81":                                  ; preds = %"$None_103", %"$Some_86", %"$empty_default_85"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @Increment(i8* %0) {
entry:
  %"$_amount_113" = getelementptr i8, i8* %0, i32 0
  %"$_amount_114" = bitcast i8* %"$_amount_113" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_114"
  %"$_sender_115" = getelementptr i8, i8* %0, i32 16
  %"$_sender_116" = bitcast i8* %"$_sender_115" to [20 x i8]*
  call void @"$Increment_73"(%Uint128 %_amount, [20 x i8]* %"$_sender_116")
  ret void
}

define internal void @"$IncrementN_117"(%Uint128 %_amount, [20 x i8]* %"$_sender_118", %Int32 %n) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_118"
  %cur = alloca %TName_Option_Int32*
  %"$indices_buf_119_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_119_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_119_salloc_load", i64 20)
  %"$indices_buf_119_salloc" = bitcast i8* %"$indices_buf_119_salloc_salloc" to [20 x i8]*
  %"$indices_buf_119" = bitcast [20 x i8]* %"$indices_buf_119_salloc" to i8*
  %"$indices_gep_120" = getelementptr i8, i8* %"$indices_buf_119", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_120" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast
  %"$execptr_load_121" = load i8*, i8** @_execptr
  %"$cur_123" = call i8* @_fetch_field(i8* %"$execptr_load_121", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_122", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_119", i32 1)
  %"$cur_124" = bitcast i8* %"$cur_123" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_124", %TName_Option_Int32** %cur
  %"$cur_126" = load %TName_Option_Int32*, %TName_Option_Int32** %cur
  %"$cur_tag_127" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_126", i32 0, i32 0
  %"$cur_tag_128" = load i8, i8* %"$cur_tag_127"
  switch i8 %"$cur_tag_128", label %"$empty_default_129" [
    i8 0, label %"$Some_130"
    i8 1, label %"$None_143"
  ]

"$Some_130":                                      ; preds = %entry
  %"$cur_131" = bitcast %TName_Option_Int32* %"$cur_126" to %CName_Some_Int32*
  %"$i_gep_132" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_131", i32 0, i32 1
  %"$i_load_133" = load %Int32, %Int32* %"$i_gep_132"
  %i = alloca %Int32
  store %Int32 %"$i_load_133", %Int32* %i
  %j = alloca %Int32
  %"$i_134" = load %Int32, %Int32* %i
  %"$add_call_135" = call %Int32 @_add_Int32(%Int32 %"$i_134", %Int32 %n)
  store %Int32 %"$add_call_135", %Int32* %j
  %"$indices_buf_136_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_136_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_136_salloc_load", i64 20)
  %"$indices_buf_136_salloc" = bitcast i8* %"$indices_buf_136_salloc_salloc" to [20 x i8]*
  %"$indices_buf_136" = bitcast [20 x i8]* %"$indices_buf_136_salloc" to i8*
  %"$indices_gep_137" = getelementptr i8, i8* %"$indices_buf_136", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_137" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1
  %"$execptr_load_138" = load i8*, i8** @_execptr
  %"$j_140" = load %Int32, %Int32* %j
  %"$update_value_141" = alloca %Int32
  store %Int32 %"$j_140", %Int32* %"$update_value_141"
  %"$update_value_142" = bitcast %Int32* %"$update_value_141" to i8*
  call void @_update_field(i8* %"$execptr_load_138", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_139", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_136", i8* %"$update_value_142")
  br label %"$matchsucc_125"

"$None_143":                                      ; preds = %entry
  %"$cur_144" = bitcast %TName_Option_Int32* %"$cur_126" to %CName_None_Int32*
  %"$indices_buf_145_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_145_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_145_salloc_load", i64 20)
  %"$indices_buf_145_salloc" = bitcast i8* %"$indices_buf_145_salloc_salloc" to [20 x i8]*
  %"$indices_buf_145" = bitcast [20 x i8]* %"$indices_buf_145_salloc" to i8*
  %"$indices_gep_146" = getelementptr i8, i8* %"$indices_buf_145", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_146" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2
  %"$execptr_load_147" = load i8*, i8** @_execptr
  %"$update_value_149" = alloca %Int32
  store %Int32 %n, %Int32* %"$update_value_149"
  %"$update_value_150" = bitcast %Int32* %"$update_value_149" to i8*
  call void @_update_field(i8* %"$execptr_load_147", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_148", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_145", i8* %"$update_value_150")
  br label %"$matchsucc_125"

"$empty_default_129":                             ; preds = %entry
  br label %"$matchsucc_125"

"$matchsucc_125":                                 ; preds = %"$None_143", %"$Some_130", %"$empty_default_129"
  ret void
}

define internal void @"$IncrementNOpt_151"(%Uint128 %_amount, [20 x i8]* %"$_sender_152", %TName_Option_Int32* %nopt) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_152"
  %"$nopt_tag_154" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %nopt, i32 0, i32 0
  %"$nopt_tag_155" = load i8, i8* %"$nopt_tag_154"
  switch i8 %"$nopt_tag_155", label %"$empty_default_156" [
    i8 0, label %"$Some_157"
    i8 1, label %"$None_163"
  ]

"$Some_157":                                      ; preds = %entry
  %"$nopt_158" = bitcast %TName_Option_Int32* %nopt to %CName_Some_Int32*
  %"$n_gep_159" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$nopt_158", i32 0, i32 1
  %"$n_load_160" = load %Int32, %Int32* %"$n_gep_159"
  %n = alloca %Int32
  store %Int32 %"$n_load_160", %Int32* %n
  %"$IncrementN__sender_161" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$IncrementN__sender_161"
  %"$n_162" = load %Int32, %Int32* %n
  call void @"$IncrementN_117"(%Uint128 %_amount, [20 x i8]* %"$IncrementN__sender_161", %Int32 %"$n_162")
  br label %"$matchsucc_153"

"$None_163":                                      ; preds = %entry
  %"$nopt_164" = bitcast %TName_Option_Int32* %nopt to %CName_None_Int32*
  br label %"$matchsucc_153"

"$empty_default_156":                             ; preds = %entry
  br label %"$matchsucc_153"

"$matchsucc_153":                                 ; preds = %"$None_163", %"$Some_157", %"$empty_default_156"
  ret void
}

define void @IncrementNOpt(i8* %0) {
entry:
  %"$_amount_166" = getelementptr i8, i8* %0, i32 0
  %"$_amount_167" = bitcast i8* %"$_amount_166" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_167"
  %"$_sender_168" = getelementptr i8, i8* %0, i32 16
  %"$_sender_169" = bitcast i8* %"$_sender_168" to [20 x i8]*
  %"$nopt_170" = getelementptr i8, i8* %0, i32 36
  %"$nopt_171" = bitcast i8* %"$nopt_170" to %TName_Option_Int32**
  %nopt = load %TName_Option_Int32*, %TName_Option_Int32** %"$nopt_171"
  call void @"$IncrementNOpt_151"(%Uint128 %_amount, [20 x i8]* %"$_sender_169", %TName_Option_Int32* %nopt)
  ret void
}
