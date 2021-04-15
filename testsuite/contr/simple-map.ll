

; gas_remaining: 4002000
; ModuleID = 'SimpleMap'
source_filename = "SimpleMap"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@simple-map.one = global %Int32 zeroinitializer
@simple-map.inc = global { %Int32 (i8*, %Int32)*, i8* } zeroinitializer
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$access_count_85" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_93" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_149" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_168" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_182" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_229" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_247" = unnamed_addr constant [13 x i8] c"access_count\00"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_28", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Bnum_24", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_38", %_TyDescrTy_Typ* @"$TyDescr_Exception_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_Map_40", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 17

define internal %Int32 @"$fundef_1"(%"$$fundef_1_env_54"* %0, %Int32 %1) !dbg !4 {
entry:
  %"$$fundef_1_env_simple-map.one_55" = getelementptr inbounds %"$$fundef_1_env_54", %"$$fundef_1_env_54"* %0, i32 0, i32 0
  %"$simple-map.one_envload_56" = load %Int32, %Int32* %"$$fundef_1_env_simple-map.one_55", align 4
  %simple-map.one = alloca %Int32, align 8
  store %Int32 %"$simple-map.one_envload_56", %Int32* %simple-map.one, align 4
  %"$retval_2" = alloca %Int32, align 8
  %"$simple-map.one_57" = load %Int32, %Int32* %simple-map.one, align 4
  %"$add_call_58" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %"$simple-map.one_57")
  store %Int32 %"$add_call_58", %Int32* %"$retval_2", align 4, !dbg !8
  %"$$retval_2_59" = load %Int32, %Int32* %"$retval_2", align 4
  ret %Int32 %"$$retval_2_59"
}

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() !dbg !9 {
entry:
  %"$gasrem_60" = load i64, i64* @_gasrem, align 8
  %"$gascmp_61" = icmp ugt i64 1, %"$gasrem_60"
  br i1 %"$gascmp_61", label %"$out_of_gas_62", label %"$have_gas_63"

"$out_of_gas_62":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_63"

"$have_gas_63":                                   ; preds = %"$out_of_gas_62", %entry
  %"$consume_64" = sub i64 %"$gasrem_60", 1
  store i64 %"$consume_64", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* @simple-map.one, align 4, !dbg !11
  %"$gasrem_65" = load i64, i64* @_gasrem, align 8
  %"$gascmp_66" = icmp ugt i64 1, %"$gasrem_65"
  br i1 %"$gascmp_66", label %"$out_of_gas_67", label %"$have_gas_68"

"$out_of_gas_67":                                 ; preds = %"$have_gas_63"
  call void @_out_of_gas()
  br label %"$have_gas_68"

"$have_gas_68":                                   ; preds = %"$out_of_gas_67", %"$have_gas_63"
  %"$consume_69" = sub i64 %"$gasrem_65", 1
  store i64 %"$consume_69", i64* @_gasrem, align 8
  %"$$fundef_1_envp_70_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_1_envp_70_salloc" = call i8* @_salloc(i8* %"$$fundef_1_envp_70_load", i64 4)
  %"$$fundef_1_envp_70" = bitcast i8* %"$$fundef_1_envp_70_salloc" to %"$$fundef_1_env_54"*
  %"$$fundef_1_env_voidp_72" = bitcast %"$$fundef_1_env_54"* %"$$fundef_1_envp_70" to i8*
  %"$$fundef_1_cloval_73" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_1_env_54"*, %Int32)* @"$fundef_1" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_1_env_voidp_72", 1
  %"$$fundef_1_env_simple-map.one_74" = getelementptr inbounds %"$$fundef_1_env_54", %"$$fundef_1_env_54"* %"$$fundef_1_envp_70", i32 0, i32 0
  %"$simple-map.one_75" = load %Int32, %Int32* @simple-map.one, align 4
  store %Int32 %"$simple-map.one_75", %Int32* %"$$fundef_1_env_simple-map.one_74", align 4
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_1_cloval_73", { %Int32 (i8*, %Int32)*, i8* }* @simple-map.inc, align 8, !dbg !12
  ret void
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_state() !dbg !13 {
entry:
  %"$access_count_3" = alloca %Map_ByStr20_Int32*, align 8
  %"$gasrem_76" = load i64, i64* @_gasrem, align 8
  %"$gascmp_77" = icmp ugt i64 1, %"$gasrem_76"
  br i1 %"$gascmp_77", label %"$out_of_gas_78", label %"$have_gas_79"

"$out_of_gas_78":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_79"

"$have_gas_79":                                   ; preds = %"$out_of_gas_78", %entry
  %"$consume_80" = sub i64 %"$gasrem_76", 1
  store i64 %"$consume_80", i64* @_gasrem, align 8
  %"$execptr_load_81" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_82" = call i8* @_new_empty_map(i8* %"$execptr_load_81")
  %"$Emp_83" = bitcast i8* %"$_new_empty_map_call_82" to %Map_ByStr20_Int32*
  store %Map_ByStr20_Int32* %"$Emp_83", %Map_ByStr20_Int32** %"$access_count_3", align 8, !dbg !14
  %"$execptr_load_84" = load i8*, i8** @_execptr, align 8
  %"$$access_count_3_86" = load %Map_ByStr20_Int32*, %Map_ByStr20_Int32** %"$access_count_3", align 8
  %"$update_value_87" = bitcast %Map_ByStr20_Int32* %"$$access_count_3_86" to i8*
  call void @_update_field(i8* %"$execptr_load_84", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_85", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 0, i8* null, i8* %"$update_value_87"), !dbg !14
  ret void
}

declare i8* @_new_empty_map(i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$Increment_88"(%Uint128 %_amount, [20 x i8]* %"$_sender_89") !dbg !15 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_89", align 1
  %cur = alloca %TName_Option_Int32*, align 8
  %"$indices_buf_90_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_90_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_90_salloc_load", i64 20)
  %"$indices_buf_90_salloc" = bitcast i8* %"$indices_buf_90_salloc_salloc" to [20 x i8]*
  %"$indices_buf_90" = bitcast [20 x i8]* %"$indices_buf_90_salloc" to i8*
  %"$indices_gep_91" = getelementptr i8, i8* %"$indices_buf_90", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_91" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_92" = load i8*, i8** @_execptr, align 8
  %"$cur_94" = call i8* @_fetch_field(i8* %"$execptr_load_92", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_93", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_90", i32 1), !dbg !16
  %"$cur_95" = bitcast i8* %"$cur_94" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_95", %TName_Option_Int32** %cur, align 8
  %"$cur_96" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$$cur_96_97" = bitcast %TName_Option_Int32* %"$cur_96" to i8*
  %"$_literal_cost_call_98" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_38", i8* %"$$cur_96_97")
  %"$gasadd_99" = add i64 %"$_literal_cost_call_98", 0
  %"$gasadd_100" = add i64 %"$gasadd_99", 1
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 %"$gasadd_100", %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %entry
  %"$consume_105" = sub i64 %"$gasrem_101", %"$gasadd_100"
  store i64 %"$consume_105", i64* @_gasrem, align 8
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 2, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_104"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_104"
  %"$consume_110" = sub i64 %"$gasrem_106", 2
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %"$cur_112" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$cur_tag_113" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_112", i32 0, i32 0
  %"$cur_tag_114" = load i8, i8* %"$cur_tag_113", align 1
  switch i8 %"$cur_tag_114", label %"$empty_default_115" [
    i8 0, label %"$Some_116"
    i8 1, label %"$None_153"
  ], !dbg !17

"$Some_116":                                      ; preds = %"$have_gas_109"
  %"$cur_117" = bitcast %TName_Option_Int32* %"$cur_112" to %CName_Some_Int32*
  %"$i_gep_118" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_117", i32 0, i32 1
  %"$i_load_119" = load %Int32, %Int32* %"$i_gep_118", align 4
  %i = alloca %Int32, align 8
  store %Int32 %"$i_load_119", %Int32* %i, align 4
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$Some_116"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$Some_116"
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem, align 8
  %j = alloca %Int32, align 8
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_123"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %"$simple-map.inc_0" = alloca %Int32, align 8
  %"$simple-map.inc_130" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* @simple-map.inc, align 8
  %"$simple-map.inc_fptr_131" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$simple-map.inc_130", 0
  %"$simple-map.inc_envptr_132" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$simple-map.inc_130", 1
  %"$i_133" = load %Int32, %Int32* %i, align 4
  %"$simple-map.inc_call_134" = call %Int32 %"$simple-map.inc_fptr_131"(i8* %"$simple-map.inc_envptr_132", %Int32 %"$i_133"), !dbg !18
  store %Int32 %"$simple-map.inc_call_134", %Int32* %"$simple-map.inc_0", align 4, !dbg !18
  %"$$simple-map.inc_0_135" = load %Int32, %Int32* %"$simple-map.inc_0", align 4
  store %Int32 %"$$simple-map.inc_0_135", %Int32* %j, align 4, !dbg !18
  %"$_literal_cost_j_136" = alloca %Int32, align 8
  %"$j_137" = load %Int32, %Int32* %j, align 4
  store %Int32 %"$j_137", %Int32* %"$_literal_cost_j_136", align 4
  %"$$_literal_cost_j_136_138" = bitcast %Int32* %"$_literal_cost_j_136" to i8*
  %"$_literal_cost_call_139" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_j_136_138")
  %"$gasadd_140" = add i64 %"$_literal_cost_call_139", 1
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 %"$gasadd_140", %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_128"
  %"$consume_145" = sub i64 %"$gasrem_141", %"$gasadd_140"
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %"$indices_buf_146_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_146_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_146_salloc_load", i64 20)
  %"$indices_buf_146_salloc" = bitcast i8* %"$indices_buf_146_salloc_salloc" to [20 x i8]*
  %"$indices_buf_146" = bitcast [20 x i8]* %"$indices_buf_146_salloc" to i8*
  %"$indices_gep_147" = getelementptr i8, i8* %"$indices_buf_146", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_147" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_148" = load i8*, i8** @_execptr, align 8
  %"$j_150" = load %Int32, %Int32* %j, align 4
  %"$update_value_151" = alloca %Int32, align 8
  store %Int32 %"$j_150", %Int32* %"$update_value_151", align 4
  %"$update_value_152" = bitcast %Int32* %"$update_value_151" to i8*
  call void @_update_field(i8* %"$execptr_load_148", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_149", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_146", i8* %"$update_value_152"), !dbg !21
  br label %"$matchsucc_111"

"$None_153":                                      ; preds = %"$have_gas_109"
  %"$cur_154" = bitcast %TName_Option_Int32* %"$cur_112" to %CName_None_Int32*
  %"$_literal_cost_simple-map.one_155" = alloca %Int32, align 8
  %"$simple-map.one_156" = load %Int32, %Int32* @simple-map.one, align 4
  store %Int32 %"$simple-map.one_156", %Int32* %"$_literal_cost_simple-map.one_155", align 4
  %"$$_literal_cost_simple-map.one_155_157" = bitcast %Int32* %"$_literal_cost_simple-map.one_155" to i8*
  %"$_literal_cost_call_158" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_simple-map.one_155_157")
  %"$gasadd_159" = add i64 %"$_literal_cost_call_158", 1
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 %"$gasadd_159", %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$None_153"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$None_153"
  %"$consume_164" = sub i64 %"$gasrem_160", %"$gasadd_159"
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %"$indices_buf_165_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_165_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_165_salloc_load", i64 20)
  %"$indices_buf_165_salloc" = bitcast i8* %"$indices_buf_165_salloc_salloc" to [20 x i8]*
  %"$indices_buf_165" = bitcast [20 x i8]* %"$indices_buf_165_salloc" to i8*
  %"$indices_gep_166" = getelementptr i8, i8* %"$indices_buf_165", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_166" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_167" = load i8*, i8** @_execptr, align 8
  %"$simple-map.one_169" = load %Int32, %Int32* @simple-map.one, align 4
  %"$update_value_170" = alloca %Int32, align 8
  store %Int32 %"$simple-map.one_169", %Int32* %"$update_value_170", align 4
  %"$update_value_171" = bitcast %Int32* %"$update_value_170" to i8*
  call void @_update_field(i8* %"$execptr_load_167", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_168", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_165", i8* %"$update_value_171"), !dbg !22
  br label %"$matchsucc_111"

"$empty_default_115":                             ; preds = %"$have_gas_109"
  br label %"$matchsucc_111"

"$matchsucc_111":                                 ; preds = %"$have_gas_163", %"$have_gas_144", %"$empty_default_115"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @Increment(i8* %0) !dbg !24 {
entry:
  %"$_amount_173" = getelementptr i8, i8* %0, i32 0
  %"$_amount_174" = bitcast i8* %"$_amount_173" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_174", align 8
  %"$_sender_175" = getelementptr i8, i8* %0, i32 16
  %"$_sender_176" = bitcast i8* %"$_sender_175" to [20 x i8]*
  call void @"$Increment_88"(%Uint128 %_amount, [20 x i8]* %"$_sender_176"), !dbg !25
  ret void
}

define internal void @"$IncrementN_177"(%Uint128 %_amount, [20 x i8]* %"$_sender_178", %Int32 %n) !dbg !26 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_178", align 1
  %cur = alloca %TName_Option_Int32*, align 8
  %"$indices_buf_179_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_179_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_179_salloc_load", i64 20)
  %"$indices_buf_179_salloc" = bitcast i8* %"$indices_buf_179_salloc_salloc" to [20 x i8]*
  %"$indices_buf_179" = bitcast [20 x i8]* %"$indices_buf_179_salloc" to i8*
  %"$indices_gep_180" = getelementptr i8, i8* %"$indices_buf_179", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_180" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_181" = load i8*, i8** @_execptr, align 8
  %"$cur_183" = call i8* @_fetch_field(i8* %"$execptr_load_181", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_182", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_179", i32 1), !dbg !27
  %"$cur_184" = bitcast i8* %"$cur_183" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_184", %TName_Option_Int32** %cur, align 8
  %"$cur_185" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$$cur_185_186" = bitcast %TName_Option_Int32* %"$cur_185" to i8*
  %"$_literal_cost_call_187" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_38", i8* %"$$cur_185_186")
  %"$gasadd_188" = add i64 %"$_literal_cost_call_187", 0
  %"$gasadd_189" = add i64 %"$gasadd_188", 1
  %"$gasrem_190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_191" = icmp ugt i64 %"$gasadd_189", %"$gasrem_190"
  br i1 %"$gascmp_191", label %"$out_of_gas_192", label %"$have_gas_193"

"$out_of_gas_192":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_193"

"$have_gas_193":                                  ; preds = %"$out_of_gas_192", %entry
  %"$consume_194" = sub i64 %"$gasrem_190", %"$gasadd_189"
  store i64 %"$consume_194", i64* @_gasrem, align 8
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 2, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_193"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_193"
  %"$consume_199" = sub i64 %"$gasrem_195", 2
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %"$cur_201" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$cur_tag_202" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_201", i32 0, i32 0
  %"$cur_tag_203" = load i8, i8* %"$cur_tag_202", align 1
  switch i8 %"$cur_tag_203", label %"$empty_default_204" [
    i8 0, label %"$Some_205"
    i8 1, label %"$None_233"
  ], !dbg !28

"$Some_205":                                      ; preds = %"$have_gas_198"
  %"$cur_206" = bitcast %TName_Option_Int32* %"$cur_201" to %CName_Some_Int32*
  %"$i_gep_207" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_206", i32 0, i32 1
  %"$i_load_208" = load %Int32, %Int32* %"$i_gep_207", align 4
  %i = alloca %Int32, align 8
  store %Int32 %"$i_load_208", %Int32* %i, align 4
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 1, %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %"$Some_205"
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %"$Some_205"
  %"$consume_213" = sub i64 %"$gasrem_209", 1
  store i64 %"$consume_213", i64* @_gasrem, align 8
  %j = alloca %Int32, align 8
  %"$i_214" = load %Int32, %Int32* %i, align 4
  %"$add_call_215" = call %Int32 @_add_Int32(%Int32 %"$i_214", %Int32 %n)
  store %Int32 %"$add_call_215", %Int32* %j, align 4, !dbg !29
  %"$_literal_cost_j_216" = alloca %Int32, align 8
  %"$j_217" = load %Int32, %Int32* %j, align 4
  store %Int32 %"$j_217", %Int32* %"$_literal_cost_j_216", align 4
  %"$$_literal_cost_j_216_218" = bitcast %Int32* %"$_literal_cost_j_216" to i8*
  %"$_literal_cost_call_219" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_j_216_218")
  %"$gasadd_220" = add i64 %"$_literal_cost_call_219", 1
  %"$gasrem_221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_222" = icmp ugt i64 %"$gasadd_220", %"$gasrem_221"
  br i1 %"$gascmp_222", label %"$out_of_gas_223", label %"$have_gas_224"

"$out_of_gas_223":                                ; preds = %"$have_gas_212"
  call void @_out_of_gas()
  br label %"$have_gas_224"

"$have_gas_224":                                  ; preds = %"$out_of_gas_223", %"$have_gas_212"
  %"$consume_225" = sub i64 %"$gasrem_221", %"$gasadd_220"
  store i64 %"$consume_225", i64* @_gasrem, align 8
  %"$indices_buf_226_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_226_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_226_salloc_load", i64 20)
  %"$indices_buf_226_salloc" = bitcast i8* %"$indices_buf_226_salloc_salloc" to [20 x i8]*
  %"$indices_buf_226" = bitcast [20 x i8]* %"$indices_buf_226_salloc" to i8*
  %"$indices_gep_227" = getelementptr i8, i8* %"$indices_buf_226", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_227" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_228" = load i8*, i8** @_execptr, align 8
  %"$j_230" = load %Int32, %Int32* %j, align 4
  %"$update_value_231" = alloca %Int32, align 8
  store %Int32 %"$j_230", %Int32* %"$update_value_231", align 4
  %"$update_value_232" = bitcast %Int32* %"$update_value_231" to i8*
  call void @_update_field(i8* %"$execptr_load_228", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_229", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_226", i8* %"$update_value_232"), !dbg !32
  br label %"$matchsucc_200"

"$None_233":                                      ; preds = %"$have_gas_198"
  %"$cur_234" = bitcast %TName_Option_Int32* %"$cur_201" to %CName_None_Int32*
  %"$_literal_cost_n_235" = alloca %Int32, align 8
  store %Int32 %n, %Int32* %"$_literal_cost_n_235", align 4
  %"$$_literal_cost_n_235_236" = bitcast %Int32* %"$_literal_cost_n_235" to i8*
  %"$_literal_cost_call_237" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_n_235_236")
  %"$gasadd_238" = add i64 %"$_literal_cost_call_237", 1
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 %"$gasadd_238", %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %"$None_233"
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %"$None_233"
  %"$consume_243" = sub i64 %"$gasrem_239", %"$gasadd_238"
  store i64 %"$consume_243", i64* @_gasrem, align 8
  %"$indices_buf_244_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_244_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_244_salloc_load", i64 20)
  %"$indices_buf_244_salloc" = bitcast i8* %"$indices_buf_244_salloc_salloc" to [20 x i8]*
  %"$indices_buf_244" = bitcast [20 x i8]* %"$indices_buf_244_salloc" to i8*
  %"$indices_gep_245" = getelementptr i8, i8* %"$indices_buf_244", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_245" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_246" = load i8*, i8** @_execptr, align 8
  %"$update_value_248" = alloca %Int32, align 8
  store %Int32 %n, %Int32* %"$update_value_248", align 4
  %"$update_value_249" = bitcast %Int32* %"$update_value_248" to i8*
  call void @_update_field(i8* %"$execptr_load_246", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_247", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_244", i8* %"$update_value_249"), !dbg !33
  br label %"$matchsucc_200"

"$empty_default_204":                             ; preds = %"$have_gas_198"
  br label %"$matchsucc_200"

"$matchsucc_200":                                 ; preds = %"$have_gas_242", %"$have_gas_224", %"$empty_default_204"
  ret void
}

define internal void @"$IncrementNOpt_250"(%Uint128 %_amount, [20 x i8]* %"$_sender_251", %TName_Option_Int32* %nopt) !dbg !35 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_251", align 1
  %"$gasrem_252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_253" = icmp ugt i64 2, %"$gasrem_252"
  br i1 %"$gascmp_253", label %"$out_of_gas_254", label %"$have_gas_255"

"$out_of_gas_254":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_255"

"$have_gas_255":                                  ; preds = %"$out_of_gas_254", %entry
  %"$consume_256" = sub i64 %"$gasrem_252", 2
  store i64 %"$consume_256", i64* @_gasrem, align 8
  %"$nopt_tag_258" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %nopt, i32 0, i32 0
  %"$nopt_tag_259" = load i8, i8* %"$nopt_tag_258", align 1
  switch i8 %"$nopt_tag_259", label %"$empty_default_260" [
    i8 0, label %"$Some_261"
    i8 1, label %"$None_272"
  ], !dbg !36

"$Some_261":                                      ; preds = %"$have_gas_255"
  %"$nopt_262" = bitcast %TName_Option_Int32* %nopt to %CName_Some_Int32*
  %"$n_gep_263" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$nopt_262", i32 0, i32 1
  %"$n_load_264" = load %Int32, %Int32* %"$n_gep_263", align 4
  %n = alloca %Int32, align 8
  store %Int32 %"$n_load_264", %Int32* %n, align 4
  %"$gasrem_265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_266" = icmp ugt i64 1, %"$gasrem_265"
  br i1 %"$gascmp_266", label %"$out_of_gas_267", label %"$have_gas_268"

"$out_of_gas_267":                                ; preds = %"$Some_261"
  call void @_out_of_gas()
  br label %"$have_gas_268"

"$have_gas_268":                                  ; preds = %"$out_of_gas_267", %"$Some_261"
  %"$consume_269" = sub i64 %"$gasrem_265", 1
  store i64 %"$consume_269", i64* @_gasrem, align 8
  %"$IncrementN__sender_270" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$IncrementN__sender_270", align 1
  %"$n_271" = load %Int32, %Int32* %n, align 4
  call void @"$IncrementN_177"(%Uint128 %_amount, [20 x i8]* %"$IncrementN__sender_270", %Int32 %"$n_271"), !dbg !37
  br label %"$matchsucc_257"

"$None_272":                                      ; preds = %"$have_gas_255"
  %"$nopt_273" = bitcast %TName_Option_Int32* %nopt to %CName_None_Int32*
  br label %"$matchsucc_257"

"$empty_default_260":                             ; preds = %"$have_gas_255"
  br label %"$matchsucc_257"

"$matchsucc_257":                                 ; preds = %"$None_272", %"$have_gas_268", %"$empty_default_260"
  ret void
}

define void @IncrementNOpt(i8* %0) !dbg !40 {
entry:
  %"$_amount_275" = getelementptr i8, i8* %0, i32 0
  %"$_amount_276" = bitcast i8* %"$_amount_275" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_276", align 8
  %"$_sender_277" = getelementptr i8, i8* %0, i32 16
  %"$_sender_278" = bitcast i8* %"$_sender_277" to [20 x i8]*
  %"$nopt_279" = getelementptr i8, i8* %0, i32 36
  %"$nopt_280" = bitcast i8* %"$nopt_279" to %TName_Option_Int32**
  %nopt = load %TName_Option_Int32*, %TName_Option_Int32** %"$nopt_280", align 8
  call void @"$IncrementNOpt_250"(%Uint128 %_amount, [20 x i8]* %"$_sender_278", %TName_Option_Int32* %nopt), !dbg !41
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "simple-map.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_1", linkageName: "$fundef_1", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 9, column: 5, scope: !4)
!9 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !10, file: !10, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DIFile(filename: ".", directory: ".")
!11 = !DILocation(line: 5, column: 11, scope: !9)
!12 = !DILocation(line: 9, column: 5, scope: !9)
!13 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !10, file: !10, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = !DILocation(line: 13, column: 42, scope: !13)
!15 = distinct !DISubprogram(name: "Increment", linkageName: "Increment", scope: !2, file: !2, line: 15, type: !5, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 16, column: 3, scope: !15)
!17 = !DILocation(line: 17, column: 3, scope: !15)
!18 = !DILocation(line: 19, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !20, file: !2, line: 18, column: 5)
!20 = distinct !DILexicalBlock(scope: !15, file: !2, line: 17, column: 3)
!21 = !DILocation(line: 20, column: 5, scope: !19)
!22 = !DILocation(line: 22, column: 5, scope: !23)
!23 = distinct !DILexicalBlock(scope: !20, file: !2, line: 21, column: 5)
!24 = distinct !DISubprogram(name: "Increment", linkageName: "Increment", scope: !2, file: !2, line: 15, type: !5, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!25 = !DILocation(line: 15, column: 12, scope: !24)
!26 = distinct !DISubprogram(name: "IncrementN", linkageName: "IncrementN", scope: !2, file: !2, line: 26, type: !5, scopeLine: 26, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!27 = !DILocation(line: 27, column: 3, scope: !26)
!28 = !DILocation(line: 28, column: 3, scope: !26)
!29 = !DILocation(line: 30, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !31, file: !2, line: 29, column: 5)
!31 = distinct !DILexicalBlock(scope: !26, file: !2, line: 28, column: 3)
!32 = !DILocation(line: 31, column: 5, scope: !30)
!33 = !DILocation(line: 33, column: 5, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !2, line: 32, column: 5)
!35 = distinct !DISubprogram(name: "IncrementNOpt", linkageName: "IncrementNOpt", scope: !2, file: !2, line: 37, type: !5, scopeLine: 37, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!36 = !DILocation(line: 38, column: 3, scope: !35)
!37 = !DILocation(line: 40, column: 5, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !2, line: 39, column: 5)
!39 = distinct !DILexicalBlock(scope: !35, file: !2, line: 38, column: 3)
!40 = distinct !DISubprogram(name: "IncrementNOpt", linkageName: "IncrementNOpt", scope: !2, file: !2, line: 37, type: !5, scopeLine: 37, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!41 = !DILocation(line: 37, column: 12, scope: !40)
