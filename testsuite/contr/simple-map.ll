

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
%"$TyDescr_AddrTyp_42" = type { i32, %"$TyDescr_AddrFieldTyp_41"* }
%"$TyDescr_AddrFieldTyp_41" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$$fundef_1_env_58" = type { %Int32 }
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
@"$TyDescr_ADT_Option_Int32_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_Option_Int32_ADTTyp_Specl_53" to i8*) }
@"$TyDescr_Map_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_39"* @"$TyDescr_MapTyp_56" to i8*) }
@"$TyDescr_Addr_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_42"* @"$TyDescr_AddrFields_57" to i8*) }
@"$TyDescr_Option_ADTTyp_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_36" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_55", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_35"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_35"*], [1 x %"$TyDescrTy_ADTTyp_Specl_35"*]* @"$TyDescr_Option_ADTTyp_m_specls_54", i32 0, i32 0) }
@"$TyDescr_Option_Some_Int32_Constr_m_args_45" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@"$TyDescr_ADT_Some_46" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int32_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_46", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int32_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_Option_None_Int32_Constr_m_args_48" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_49" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int32_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_49", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int32_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_51" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_37"*] [%"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_Option_Some_Int32_ADTTyp_Constr_47", %"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_Option_None_Int32_ADTTyp_Constr_50"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_52" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_35" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_37"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_37"*], [2 x %"$TyDescrTy_ADTTyp_Constr_37"*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_36"* @"$TyDescr_Option_ADTTyp_44" }
@"$TyDescr_Option_ADTTyp_m_specls_54" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_35"*] [%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_Option_Int32_ADTTyp_Specl_53"]
@"$TyDescr_ADT_Option_55" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_MapTyp_56" = unnamed_addr constant %"$TyDescr_MapTyp_39" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Int32_6" }
@"$TyDescr_AddrFields_57" = unnamed_addr constant %"$TyDescr_AddrTyp_42" { i32 -1, %"$TyDescr_AddrFieldTyp_41"* null }
@simple-map.one = global %Int32 zeroinitializer
@simple-map.inc = global { %Int32 (i8*, %Int32)*, i8* } zeroinitializer
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$access_count_89" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_97" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_153" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_172" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_186" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_233" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_251" = unnamed_addr constant [13 x i8] c"access_count\00"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_28", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_Addr_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Bnum_24", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_38", %_TyDescrTy_Typ* @"$TyDescr_Exception_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_Map_40", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 18

define internal %Int32 @"$fundef_1"(%"$$fundef_1_env_58"* %0, %Int32 %1) {
entry:
  %"$$fundef_1_env_simple-map.one_59" = getelementptr inbounds %"$$fundef_1_env_58", %"$$fundef_1_env_58"* %0, i32 0, i32 0
  %"$simple-map.one_envload_60" = load %Int32, %Int32* %"$$fundef_1_env_simple-map.one_59", align 4
  %simple-map.one = alloca %Int32, align 8
  store %Int32 %"$simple-map.one_envload_60", %Int32* %simple-map.one, align 4
  %"$retval_2" = alloca %Int32, align 8
  %"$simple-map.one_61" = load %Int32, %Int32* %simple-map.one, align 4
  %"$add_call_62" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %"$simple-map.one_61")
  store %Int32 %"$add_call_62", %Int32* %"$retval_2", align 4
  %"$$retval_2_63" = load %Int32, %Int32* %"$retval_2", align 4
  ret %Int32 %"$$retval_2_63"
}

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() {
entry:
  %"$gasrem_64" = load i64, i64* @_gasrem, align 8
  %"$gascmp_65" = icmp ugt i64 1, %"$gasrem_64"
  br i1 %"$gascmp_65", label %"$out_of_gas_66", label %"$have_gas_67"

"$out_of_gas_66":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_67"

"$have_gas_67":                                   ; preds = %"$out_of_gas_66", %entry
  %"$consume_68" = sub i64 %"$gasrem_64", 1
  store i64 %"$consume_68", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* @simple-map.one, align 4
  %"$gasrem_69" = load i64, i64* @_gasrem, align 8
  %"$gascmp_70" = icmp ugt i64 1, %"$gasrem_69"
  br i1 %"$gascmp_70", label %"$out_of_gas_71", label %"$have_gas_72"

"$out_of_gas_71":                                 ; preds = %"$have_gas_67"
  call void @_out_of_gas()
  br label %"$have_gas_72"

"$have_gas_72":                                   ; preds = %"$out_of_gas_71", %"$have_gas_67"
  %"$consume_73" = sub i64 %"$gasrem_69", 1
  store i64 %"$consume_73", i64* @_gasrem, align 8
  %"$$fundef_1_envp_74_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_1_envp_74_salloc" = call i8* @_salloc(i8* %"$$fundef_1_envp_74_load", i64 4)
  %"$$fundef_1_envp_74" = bitcast i8* %"$$fundef_1_envp_74_salloc" to %"$$fundef_1_env_58"*
  %"$$fundef_1_env_voidp_76" = bitcast %"$$fundef_1_env_58"* %"$$fundef_1_envp_74" to i8*
  %"$$fundef_1_cloval_77" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_1_env_58"*, %Int32)* @"$fundef_1" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_1_env_voidp_76", 1
  %"$$fundef_1_env_simple-map.one_78" = getelementptr inbounds %"$$fundef_1_env_58", %"$$fundef_1_env_58"* %"$$fundef_1_envp_74", i32 0, i32 0
  %"$simple-map.one_79" = load %Int32, %Int32* @simple-map.one, align 4
  store %Int32 %"$simple-map.one_79", %Int32* %"$$fundef_1_env_simple-map.one_78", align 4
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_1_cloval_77", { %Int32 (i8*, %Int32)*, i8* }* @simple-map.inc, align 8
  ret void
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_state() {
entry:
  %"$access_count_3" = alloca %Map_ByStr20_Int32*, align 8
  %"$gasrem_80" = load i64, i64* @_gasrem, align 8
  %"$gascmp_81" = icmp ugt i64 1, %"$gasrem_80"
  br i1 %"$gascmp_81", label %"$out_of_gas_82", label %"$have_gas_83"

"$out_of_gas_82":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_83"

"$have_gas_83":                                   ; preds = %"$out_of_gas_82", %entry
  %"$consume_84" = sub i64 %"$gasrem_80", 1
  store i64 %"$consume_84", i64* @_gasrem, align 8
  %"$execptr_load_85" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_86" = call i8* @_new_empty_map(i8* %"$execptr_load_85")
  %"$Emp_87" = bitcast i8* %"$_new_empty_map_call_86" to %Map_ByStr20_Int32*
  store %Map_ByStr20_Int32* %"$Emp_87", %Map_ByStr20_Int32** %"$access_count_3", align 8
  %"$execptr_load_88" = load i8*, i8** @_execptr, align 8
  %"$$access_count_3_90" = load %Map_ByStr20_Int32*, %Map_ByStr20_Int32** %"$access_count_3", align 8
  %"$update_value_91" = bitcast %Map_ByStr20_Int32* %"$$access_count_3_90" to i8*
  call void @_update_field(i8* %"$execptr_load_88", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_89", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 0, i8* null, i8* %"$update_value_91")
  ret void
}

declare i8* @_new_empty_map(i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$Increment_92"(%Uint128 %_amount, [20 x i8]* %"$_sender_93") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_93", align 1
  %cur = alloca %TName_Option_Int32*, align 8
  %"$indices_buf_94_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_94_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_94_salloc_load", i64 20)
  %"$indices_buf_94_salloc" = bitcast i8* %"$indices_buf_94_salloc_salloc" to [20 x i8]*
  %"$indices_buf_94" = bitcast [20 x i8]* %"$indices_buf_94_salloc" to i8*
  %"$indices_gep_95" = getelementptr i8, i8* %"$indices_buf_94", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_95" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_96" = load i8*, i8** @_execptr, align 8
  %"$cur_98" = call i8* @_fetch_field(i8* %"$execptr_load_96", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_97", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_94", i32 1)
  %"$cur_99" = bitcast i8* %"$cur_98" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_99", %TName_Option_Int32** %cur, align 8
  %"$cur_100" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$$cur_100_101" = bitcast %TName_Option_Int32* %"$cur_100" to i8*
  %"$_literal_cost_call_102" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_38", i8* %"$$cur_100_101")
  %"$gasadd_103" = add i64 %"$_literal_cost_call_102", 0
  %"$gasadd_104" = add i64 %"$gasadd_103", 1
  %"$gasrem_105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_106" = icmp ugt i64 %"$gasadd_104", %"$gasrem_105"
  br i1 %"$gascmp_106", label %"$out_of_gas_107", label %"$have_gas_108"

"$out_of_gas_107":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_108"

"$have_gas_108":                                  ; preds = %"$out_of_gas_107", %entry
  %"$consume_109" = sub i64 %"$gasrem_105", %"$gasadd_104"
  store i64 %"$consume_109", i64* @_gasrem, align 8
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 2, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_108"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_108"
  %"$consume_114" = sub i64 %"$gasrem_110", 2
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %"$cur_116" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$cur_tag_117" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_116", i32 0, i32 0
  %"$cur_tag_118" = load i8, i8* %"$cur_tag_117", align 1
  switch i8 %"$cur_tag_118", label %"$empty_default_119" [
    i8 0, label %"$Some_120"
    i8 1, label %"$None_157"
  ]

"$Some_120":                                      ; preds = %"$have_gas_113"
  %"$cur_121" = bitcast %TName_Option_Int32* %"$cur_116" to %CName_Some_Int32*
  %"$i_gep_122" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_121", i32 0, i32 1
  %"$i_load_123" = load %Int32, %Int32* %"$i_gep_122", align 4
  %i = alloca %Int32, align 8
  store %Int32 %"$i_load_123", %Int32* %i, align 4
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$Some_120"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$Some_120"
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem, align 8
  %j = alloca %Int32, align 8
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %"$simple-map.inc_0" = alloca %Int32, align 8
  %"$simple-map.inc_134" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* @simple-map.inc, align 8
  %"$simple-map.inc_fptr_135" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$simple-map.inc_134", 0
  %"$simple-map.inc_envptr_136" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$simple-map.inc_134", 1
  %"$i_137" = load %Int32, %Int32* %i, align 4
  %"$simple-map.inc_call_138" = call %Int32 %"$simple-map.inc_fptr_135"(i8* %"$simple-map.inc_envptr_136", %Int32 %"$i_137")
  store %Int32 %"$simple-map.inc_call_138", %Int32* %"$simple-map.inc_0", align 4
  %"$$simple-map.inc_0_139" = load %Int32, %Int32* %"$simple-map.inc_0", align 4
  store %Int32 %"$$simple-map.inc_0_139", %Int32* %j, align 4
  %"$_literal_cost_j_140" = alloca %Int32, align 8
  %"$j_141" = load %Int32, %Int32* %j, align 4
  store %Int32 %"$j_141", %Int32* %"$_literal_cost_j_140", align 4
  %"$$_literal_cost_j_140_142" = bitcast %Int32* %"$_literal_cost_j_140" to i8*
  %"$_literal_cost_call_143" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_j_140_142")
  %"$gasadd_144" = add i64 %"$_literal_cost_call_143", 1
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 %"$gasadd_144", %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_132"
  %"$consume_149" = sub i64 %"$gasrem_145", %"$gasadd_144"
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$indices_buf_150_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_150_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_150_salloc_load", i64 20)
  %"$indices_buf_150_salloc" = bitcast i8* %"$indices_buf_150_salloc_salloc" to [20 x i8]*
  %"$indices_buf_150" = bitcast [20 x i8]* %"$indices_buf_150_salloc" to i8*
  %"$indices_gep_151" = getelementptr i8, i8* %"$indices_buf_150", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_151" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_152" = load i8*, i8** @_execptr, align 8
  %"$j_154" = load %Int32, %Int32* %j, align 4
  %"$update_value_155" = alloca %Int32, align 8
  store %Int32 %"$j_154", %Int32* %"$update_value_155", align 4
  %"$update_value_156" = bitcast %Int32* %"$update_value_155" to i8*
  call void @_update_field(i8* %"$execptr_load_152", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_153", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_150", i8* %"$update_value_156")
  br label %"$matchsucc_115"

"$None_157":                                      ; preds = %"$have_gas_113"
  %"$cur_158" = bitcast %TName_Option_Int32* %"$cur_116" to %CName_None_Int32*
  %"$_literal_cost_simple-map.one_159" = alloca %Int32, align 8
  %"$simple-map.one_160" = load %Int32, %Int32* @simple-map.one, align 4
  store %Int32 %"$simple-map.one_160", %Int32* %"$_literal_cost_simple-map.one_159", align 4
  %"$$_literal_cost_simple-map.one_159_161" = bitcast %Int32* %"$_literal_cost_simple-map.one_159" to i8*
  %"$_literal_cost_call_162" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_simple-map.one_159_161")
  %"$gasadd_163" = add i64 %"$_literal_cost_call_162", 1
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 %"$gasadd_163", %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$None_157"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$None_157"
  %"$consume_168" = sub i64 %"$gasrem_164", %"$gasadd_163"
  store i64 %"$consume_168", i64* @_gasrem, align 8
  %"$indices_buf_169_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_169_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_169_salloc_load", i64 20)
  %"$indices_buf_169_salloc" = bitcast i8* %"$indices_buf_169_salloc_salloc" to [20 x i8]*
  %"$indices_buf_169" = bitcast [20 x i8]* %"$indices_buf_169_salloc" to i8*
  %"$indices_gep_170" = getelementptr i8, i8* %"$indices_buf_169", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_170" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_171" = load i8*, i8** @_execptr, align 8
  %"$simple-map.one_173" = load %Int32, %Int32* @simple-map.one, align 4
  %"$update_value_174" = alloca %Int32, align 8
  store %Int32 %"$simple-map.one_173", %Int32* %"$update_value_174", align 4
  %"$update_value_175" = bitcast %Int32* %"$update_value_174" to i8*
  call void @_update_field(i8* %"$execptr_load_171", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_172", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_169", i8* %"$update_value_175")
  br label %"$matchsucc_115"

"$empty_default_119":                             ; preds = %"$have_gas_113"
  br label %"$matchsucc_115"

"$matchsucc_115":                                 ; preds = %"$have_gas_167", %"$have_gas_148", %"$empty_default_119"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @Increment(i8* %0) {
entry:
  %"$_amount_177" = getelementptr i8, i8* %0, i32 0
  %"$_amount_178" = bitcast i8* %"$_amount_177" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_178", align 8
  %"$_sender_179" = getelementptr i8, i8* %0, i32 16
  %"$_sender_180" = bitcast i8* %"$_sender_179" to [20 x i8]*
  call void @"$Increment_92"(%Uint128 %_amount, [20 x i8]* %"$_sender_180")
  ret void
}

define internal void @"$IncrementN_181"(%Uint128 %_amount, [20 x i8]* %"$_sender_182", %Int32 %n) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_182", align 1
  %cur = alloca %TName_Option_Int32*, align 8
  %"$indices_buf_183_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_183_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_183_salloc_load", i64 20)
  %"$indices_buf_183_salloc" = bitcast i8* %"$indices_buf_183_salloc_salloc" to [20 x i8]*
  %"$indices_buf_183" = bitcast [20 x i8]* %"$indices_buf_183_salloc" to i8*
  %"$indices_gep_184" = getelementptr i8, i8* %"$indices_buf_183", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_184" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_185" = load i8*, i8** @_execptr, align 8
  %"$cur_187" = call i8* @_fetch_field(i8* %"$execptr_load_185", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_186", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_183", i32 1)
  %"$cur_188" = bitcast i8* %"$cur_187" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_188", %TName_Option_Int32** %cur, align 8
  %"$cur_189" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$$cur_189_190" = bitcast %TName_Option_Int32* %"$cur_189" to i8*
  %"$_literal_cost_call_191" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_38", i8* %"$$cur_189_190")
  %"$gasadd_192" = add i64 %"$_literal_cost_call_191", 0
  %"$gasadd_193" = add i64 %"$gasadd_192", 1
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 %"$gasadd_193", %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %entry
  %"$consume_198" = sub i64 %"$gasrem_194", %"$gasadd_193"
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %"$gasrem_199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_200" = icmp ugt i64 2, %"$gasrem_199"
  br i1 %"$gascmp_200", label %"$out_of_gas_201", label %"$have_gas_202"

"$out_of_gas_201":                                ; preds = %"$have_gas_197"
  call void @_out_of_gas()
  br label %"$have_gas_202"

"$have_gas_202":                                  ; preds = %"$out_of_gas_201", %"$have_gas_197"
  %"$consume_203" = sub i64 %"$gasrem_199", 2
  store i64 %"$consume_203", i64* @_gasrem, align 8
  %"$cur_205" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$cur_tag_206" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_205", i32 0, i32 0
  %"$cur_tag_207" = load i8, i8* %"$cur_tag_206", align 1
  switch i8 %"$cur_tag_207", label %"$empty_default_208" [
    i8 0, label %"$Some_209"
    i8 1, label %"$None_237"
  ]

"$Some_209":                                      ; preds = %"$have_gas_202"
  %"$cur_210" = bitcast %TName_Option_Int32* %"$cur_205" to %CName_Some_Int32*
  %"$i_gep_211" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_210", i32 0, i32 1
  %"$i_load_212" = load %Int32, %Int32* %"$i_gep_211", align 4
  %i = alloca %Int32, align 8
  store %Int32 %"$i_load_212", %Int32* %i, align 4
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %"$Some_209"
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %"$Some_209"
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %j = alloca %Int32, align 8
  %"$i_218" = load %Int32, %Int32* %i, align 4
  %"$add_call_219" = call %Int32 @_add_Int32(%Int32 %"$i_218", %Int32 %n)
  store %Int32 %"$add_call_219", %Int32* %j, align 4
  %"$_literal_cost_j_220" = alloca %Int32, align 8
  %"$j_221" = load %Int32, %Int32* %j, align 4
  store %Int32 %"$j_221", %Int32* %"$_literal_cost_j_220", align 4
  %"$$_literal_cost_j_220_222" = bitcast %Int32* %"$_literal_cost_j_220" to i8*
  %"$_literal_cost_call_223" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_j_220_222")
  %"$gasadd_224" = add i64 %"$_literal_cost_call_223", 1
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 %"$gasadd_224", %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_216"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_216"
  %"$consume_229" = sub i64 %"$gasrem_225", %"$gasadd_224"
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %"$indices_buf_230_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_230_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_230_salloc_load", i64 20)
  %"$indices_buf_230_salloc" = bitcast i8* %"$indices_buf_230_salloc_salloc" to [20 x i8]*
  %"$indices_buf_230" = bitcast [20 x i8]* %"$indices_buf_230_salloc" to i8*
  %"$indices_gep_231" = getelementptr i8, i8* %"$indices_buf_230", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_231" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_232" = load i8*, i8** @_execptr, align 8
  %"$j_234" = load %Int32, %Int32* %j, align 4
  %"$update_value_235" = alloca %Int32, align 8
  store %Int32 %"$j_234", %Int32* %"$update_value_235", align 4
  %"$update_value_236" = bitcast %Int32* %"$update_value_235" to i8*
  call void @_update_field(i8* %"$execptr_load_232", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_233", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_230", i8* %"$update_value_236")
  br label %"$matchsucc_204"

"$None_237":                                      ; preds = %"$have_gas_202"
  %"$cur_238" = bitcast %TName_Option_Int32* %"$cur_205" to %CName_None_Int32*
  %"$_literal_cost_n_239" = alloca %Int32, align 8
  store %Int32 %n, %Int32* %"$_literal_cost_n_239", align 4
  %"$$_literal_cost_n_239_240" = bitcast %Int32* %"$_literal_cost_n_239" to i8*
  %"$_literal_cost_call_241" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_n_239_240")
  %"$gasadd_242" = add i64 %"$_literal_cost_call_241", 1
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 %"$gasadd_242", %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$None_237"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$None_237"
  %"$consume_247" = sub i64 %"$gasrem_243", %"$gasadd_242"
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %"$indices_buf_248_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_248_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_248_salloc_load", i64 20)
  %"$indices_buf_248_salloc" = bitcast i8* %"$indices_buf_248_salloc_salloc" to [20 x i8]*
  %"$indices_buf_248" = bitcast [20 x i8]* %"$indices_buf_248_salloc" to i8*
  %"$indices_gep_249" = getelementptr i8, i8* %"$indices_buf_248", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_249" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_250" = load i8*, i8** @_execptr, align 8
  %"$update_value_252" = alloca %Int32, align 8
  store %Int32 %n, %Int32* %"$update_value_252", align 4
  %"$update_value_253" = bitcast %Int32* %"$update_value_252" to i8*
  call void @_update_field(i8* %"$execptr_load_250", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_251", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_248", i8* %"$update_value_253")
  br label %"$matchsucc_204"

"$empty_default_208":                             ; preds = %"$have_gas_202"
  br label %"$matchsucc_204"

"$matchsucc_204":                                 ; preds = %"$have_gas_246", %"$have_gas_228", %"$empty_default_208"
  ret void
}

define internal void @"$IncrementNOpt_254"(%Uint128 %_amount, [20 x i8]* %"$_sender_255", %TName_Option_Int32* %nopt) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_255", align 1
  %"$gasrem_256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_257" = icmp ugt i64 2, %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %entry
  %"$consume_260" = sub i64 %"$gasrem_256", 2
  store i64 %"$consume_260", i64* @_gasrem, align 8
  %"$nopt_tag_262" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %nopt, i32 0, i32 0
  %"$nopt_tag_263" = load i8, i8* %"$nopt_tag_262", align 1
  switch i8 %"$nopt_tag_263", label %"$empty_default_264" [
    i8 0, label %"$Some_265"
    i8 1, label %"$None_276"
  ]

"$Some_265":                                      ; preds = %"$have_gas_259"
  %"$nopt_266" = bitcast %TName_Option_Int32* %nopt to %CName_Some_Int32*
  %"$n_gep_267" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$nopt_266", i32 0, i32 1
  %"$n_load_268" = load %Int32, %Int32* %"$n_gep_267", align 4
  %n = alloca %Int32, align 8
  store %Int32 %"$n_load_268", %Int32* %n, align 4
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$Some_265"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$Some_265"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %"$IncrementN__sender_274" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$IncrementN__sender_274", align 1
  %"$n_275" = load %Int32, %Int32* %n, align 4
  call void @"$IncrementN_181"(%Uint128 %_amount, [20 x i8]* %"$IncrementN__sender_274", %Int32 %"$n_275")
  br label %"$matchsucc_261"

"$None_276":                                      ; preds = %"$have_gas_259"
  %"$nopt_277" = bitcast %TName_Option_Int32* %nopt to %CName_None_Int32*
  br label %"$matchsucc_261"

"$empty_default_264":                             ; preds = %"$have_gas_259"
  br label %"$matchsucc_261"

"$matchsucc_261":                                 ; preds = %"$None_276", %"$have_gas_272", %"$empty_default_264"
  ret void
}

define void @IncrementNOpt(i8* %0) {
entry:
  %"$_amount_279" = getelementptr i8, i8* %0, i32 0
  %"$_amount_280" = bitcast i8* %"$_amount_279" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_280", align 8
  %"$_sender_281" = getelementptr i8, i8* %0, i32 16
  %"$_sender_282" = bitcast i8* %"$_sender_281" to [20 x i8]*
  %"$nopt_283" = getelementptr i8, i8* %0, i32 36
  %"$nopt_284" = bitcast i8* %"$nopt_283" to %TName_Option_Int32**
  %nopt = load %TName_Option_Int32*, %TName_Option_Int32** %"$nopt_284", align 8
  call void @"$IncrementNOpt_254"(%Uint128 %_amount, [20 x i8]* %"$_sender_282", %TName_Option_Int32* %nopt)
  ret void
}
