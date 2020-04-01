; ModuleID = 'SimpleMap'
source_filename = "SimpleMap"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
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
@0 = unnamed_addr constant [13 x i8] c"access_count\00"
@1 = unnamed_addr constant [13 x i8] c"access_count\00"
@2 = unnamed_addr constant [13 x i8] c"access_count\00"
@3 = unnamed_addr constant [13 x i8] c"access_count\00"
@4 = unnamed_addr constant [13 x i8] c"access_count\00"
@5 = unnamed_addr constant [13 x i8] c"access_count\00"
@_tydescr_table = constant [13 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_26", %_TyDescrTy_Typ* @"$TyDescr_Int32_6", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_Map_32", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_24", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12"]
@_tydescr_table_length = constant i32 13

define internal %Int32 @"$fundef_1"(%"$$fundef_1_env_46"*, %Int32) {
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
  %"$cur_65" = call i8* @_fetch_field(i8* %"$execptr_64", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_32", i32 1, i8* %"$indices_buf_62", i32 1)
  %"$cur_66" = bitcast i8* %"$cur_65" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_66", %TName_Option_Int32** %cur
  %"$cur_68" = load %TName_Option_Int32*, %TName_Option_Int32** %cur
  %"$cur_tag_69" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_68", i32 0, i32 0
  %"$cur_tag_70" = load i8, i8* %"$cur_tag_69"
  switch i8 %"$cur_tag_70", label %"$empty_default_71" [
    i8 0, label %"$Some_72"
    i8 1, label %"$None_88"
  ]

"$Some_72":                                       ; preds = %entry
  %"$cur_73" = bitcast %TName_Option_Int32* %"$cur_68" to %CName_Some_Int32*
  %"$i_gep_74" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_73", i32 0, i32 1
  %"$i_load_75" = load %Int32, %Int32* %"$i_gep_74"
  %i = alloca %Int32
  store %Int32 %"$i_load_75", %Int32* %i
  %j = alloca %Int32
  %"$inc_0" = alloca %Int32
  %"$inc_76" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* @inc
  %"$inc_fptr_77" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$inc_76", 0
  %"$inc_envptr_78" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$inc_76", 1
  %"$i_79" = load %Int32, %Int32* %i
  %"$inc_call_80" = call %Int32 %"$inc_fptr_77"(i8* %"$inc_envptr_78", %Int32 %"$i_79")
  store %Int32 %"$inc_call_80", %Int32* %"$inc_0"
  %"$$inc_0_81" = load %Int32, %Int32* %"$inc_0"
  store %Int32 %"$$inc_0_81", %Int32* %j
  %"$indices_buf_82_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_82_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_82_salloc_load", i64 20)
  %"$indices_buf_82_salloc" = bitcast i8* %"$indices_buf_82_salloc_salloc" to [20 x i8]*
  %"$indices_buf_82" = bitcast [20 x i8]* %"$indices_buf_82_salloc" to i8*
  %"$indices_gep_83" = getelementptr i8, i8* %"$indices_buf_82", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_83" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1
  %"$execptr_84" = load i8*, i8** @_execptr
  %"$j_85" = load %Int32, %Int32* %j
  %"$update_value_86" = alloca %Int32
  store %Int32 %"$j_85", %Int32* %"$update_value_86"
  %"$update_value_87" = bitcast %Int32* %"$update_value_86" to i8*
  call void @_update_field(i8* %"$execptr_84", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_32", i32 1, i8* %"$indices_buf_82", i8* %"$update_value_87")
  br label %"$matchsucc_67"

"$None_88":                                       ; preds = %entry
  %"$cur_89" = bitcast %TName_Option_Int32* %"$cur_68" to %CName_None_Int32*
  %"$indices_buf_90_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_90_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_90_salloc_load", i64 20)
  %"$indices_buf_90_salloc" = bitcast i8* %"$indices_buf_90_salloc_salloc" to [20 x i8]*
  %"$indices_buf_90" = bitcast [20 x i8]* %"$indices_buf_90_salloc" to i8*
  %"$indices_gep_91" = getelementptr i8, i8* %"$indices_buf_90", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_91" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2
  %"$execptr_92" = load i8*, i8** @_execptr
  %"$one_93" = load %Int32, %Int32* @one
  %"$update_value_94" = alloca %Int32
  store %Int32 %"$one_93", %Int32* %"$update_value_94"
  %"$update_value_95" = bitcast %Int32* %"$update_value_94" to i8*
  call void @_update_field(i8* %"$execptr_92", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @2, i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_32", i32 1, i8* %"$indices_buf_90", i8* %"$update_value_95")
  br label %"$matchsucc_67"

"$empty_default_71":                              ; preds = %entry
  br label %"$matchsucc_67"

"$matchsucc_67":                                  ; preds = %"$None_88", %"$Some_72", %"$empty_default_71"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define void @Increment(i8*) {
entry:
  %"$_amount_97" = getelementptr i8, i8* %0, i32 0
  %"$_amount_98" = bitcast i8* %"$_amount_97" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_98"
  %"$_sender_99" = getelementptr i8, i8* %0, i32 16
  %"$_sender_100" = bitcast i8* %"$_sender_99" to [20 x i8]*
  call void @"$Increment_60"(%Uint128 %_amount, [20 x i8]* %"$_sender_100")
  ret void
}

define internal void @"$IncrementN_101"(%Uint128 %_amount, [20 x i8]* %"$_sender_102", %Int32 %n) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_102"
  %cur = alloca %TName_Option_Int32*
  %"$indices_buf_103_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_103_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_103_salloc_load", i64 20)
  %"$indices_buf_103_salloc" = bitcast i8* %"$indices_buf_103_salloc_salloc" to [20 x i8]*
  %"$indices_buf_103" = bitcast [20 x i8]* %"$indices_buf_103_salloc" to i8*
  %"$indices_gep_104" = getelementptr i8, i8* %"$indices_buf_103", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_104" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast
  %"$execptr_105" = load i8*, i8** @_execptr
  %"$cur_106" = call i8* @_fetch_field(i8* %"$execptr_105", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_32", i32 1, i8* %"$indices_buf_103", i32 1)
  %"$cur_107" = bitcast i8* %"$cur_106" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_107", %TName_Option_Int32** %cur
  %"$cur_109" = load %TName_Option_Int32*, %TName_Option_Int32** %cur
  %"$cur_tag_110" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_109", i32 0, i32 0
  %"$cur_tag_111" = load i8, i8* %"$cur_tag_110"
  switch i8 %"$cur_tag_111", label %"$empty_default_112" [
    i8 0, label %"$Some_113"
    i8 1, label %"$None_125"
  ]

"$Some_113":                                      ; preds = %entry
  %"$cur_114" = bitcast %TName_Option_Int32* %"$cur_109" to %CName_Some_Int32*
  %"$i_gep_115" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_114", i32 0, i32 1
  %"$i_load_116" = load %Int32, %Int32* %"$i_gep_115"
  %i = alloca %Int32
  store %Int32 %"$i_load_116", %Int32* %i
  %j = alloca %Int32
  %"$i_117" = load %Int32, %Int32* %i
  %"$add_call_118" = call %Int32 @_add_Int32(%Int32 %"$i_117", %Int32 %n)
  store %Int32 %"$add_call_118", %Int32* %j
  %"$indices_buf_119_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_119_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_119_salloc_load", i64 20)
  %"$indices_buf_119_salloc" = bitcast i8* %"$indices_buf_119_salloc_salloc" to [20 x i8]*
  %"$indices_buf_119" = bitcast [20 x i8]* %"$indices_buf_119_salloc" to i8*
  %"$indices_gep_120" = getelementptr i8, i8* %"$indices_buf_119", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_120" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1
  %"$execptr_121" = load i8*, i8** @_execptr
  %"$j_122" = load %Int32, %Int32* %j
  %"$update_value_123" = alloca %Int32
  store %Int32 %"$j_122", %Int32* %"$update_value_123"
  %"$update_value_124" = bitcast %Int32* %"$update_value_123" to i8*
  call void @_update_field(i8* %"$execptr_121", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_32", i32 1, i8* %"$indices_buf_119", i8* %"$update_value_124")
  br label %"$matchsucc_108"

"$None_125":                                      ; preds = %entry
  %"$cur_126" = bitcast %TName_Option_Int32* %"$cur_109" to %CName_None_Int32*
  %"$indices_buf_127_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_127_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_127_salloc_load", i64 20)
  %"$indices_buf_127_salloc" = bitcast i8* %"$indices_buf_127_salloc_salloc" to [20 x i8]*
  %"$indices_buf_127" = bitcast [20 x i8]* %"$indices_buf_127_salloc" to i8*
  %"$indices_gep_128" = getelementptr i8, i8* %"$indices_buf_127", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_128" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2
  %"$execptr_129" = load i8*, i8** @_execptr
  %"$update_value_130" = alloca %Int32
  store %Int32 %n, %Int32* %"$update_value_130"
  %"$update_value_131" = bitcast %Int32* %"$update_value_130" to i8*
  call void @_update_field(i8* %"$execptr_129", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_32", i32 1, i8* %"$indices_buf_127", i8* %"$update_value_131")
  br label %"$matchsucc_108"

"$empty_default_112":                             ; preds = %entry
  br label %"$matchsucc_108"

"$matchsucc_108":                                 ; preds = %"$None_125", %"$Some_113", %"$empty_default_112"
  ret void
}

define internal void @"$IncrementNOpt_132"(%Uint128 %_amount, [20 x i8]* %"$_sender_133", %TName_Option_Int32* %nopt) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_133"
  %"$nopt_tag_135" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %nopt, i32 0, i32 0
  %"$nopt_tag_136" = load i8, i8* %"$nopt_tag_135"
  switch i8 %"$nopt_tag_136", label %"$empty_default_137" [
    i8 0, label %"$Some_138"
    i8 1, label %"$None_144"
  ]

"$Some_138":                                      ; preds = %entry
  %"$nopt_139" = bitcast %TName_Option_Int32* %nopt to %CName_Some_Int32*
  %"$n_gep_140" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$nopt_139", i32 0, i32 1
  %"$n_load_141" = load %Int32, %Int32* %"$n_gep_140"
  %n = alloca %Int32
  store %Int32 %"$n_load_141", %Int32* %n
  %"$IncrementN__sender_142" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$IncrementN__sender_142"
  %"$n_143" = load %Int32, %Int32* %n
  call void @"$IncrementN_101"(%Uint128 %_amount, [20 x i8]* %"$IncrementN__sender_142", %Int32 %"$n_143")
  br label %"$matchsucc_134"

"$None_144":                                      ; preds = %entry
  %"$nopt_145" = bitcast %TName_Option_Int32* %nopt to %CName_None_Int32*
  br label %"$matchsucc_134"

"$empty_default_137":                             ; preds = %entry
  br label %"$matchsucc_134"

"$matchsucc_134":                                 ; preds = %"$None_144", %"$Some_138", %"$empty_default_137"
  ret void
}

define void @IncrementNOpt(i8*) {
entry:
  %"$_amount_147" = getelementptr i8, i8* %0, i32 0
  %"$_amount_148" = bitcast i8* %"$_amount_147" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_148"
  %"$_sender_149" = getelementptr i8, i8* %0, i32 16
  %"$_sender_150" = bitcast i8* %"$_sender_149" to [20 x i8]*
  %"$nopt_151" = getelementptr i8, i8* %0, i32 36
  %"$nopt_152" = bitcast i8* %"$nopt_151" to %TName_Option_Int32**
  %nopt = load %TName_Option_Int32*, %TName_Option_Int32** %"$nopt_152"
  call void @"$IncrementNOpt_132"(%Uint128 %_amount, [20 x i8]* %"$_sender_150", %TName_Option_Int32* %nopt)
  ret void
}

