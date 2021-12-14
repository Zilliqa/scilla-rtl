

; gas_remaining: 4001999
; ModuleID = 'SimpleMap'
source_filename = "SimpleMap"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_5" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_37" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_36"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_36" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_38"**, %"$TyDescrTy_ADTTyp_37"* }
%"$TyDescrTy_ADTTyp_Constr_38" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_40" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_43" = type { i32, %"$TyDescr_AddrFieldTyp_42"* }
%"$TyDescr_AddrFieldTyp_42" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_309" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_310" = type { %ParamDescrString, i32, %"$ParamDescr_309"* }
%"$$fundef_2_env_59" = type { %Int32 }
%Map_ByStr20_Int32 = type { [20 x i8], %Int32 }
%Uint128 = type { i128 }
%TName_Option_Int32 = type { i8, %CName_Some_Int32*, %CName_None_Int32* }
%CName_Some_Int32 = type <{ i8, %Int32 }>
%CName_None_Int32 = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
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
@"$TyDescr_Bnum_Prim_24" = global %"$TyDescrTy_PrimTyp_5" { i32 3, i32 0 }
@"$TyDescr_Bnum_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bnum_Prim_24" to i8*) }
@"$TyDescr_Message_Prim_26" = global %"$TyDescrTy_PrimTyp_5" { i32 4, i32 0 }
@"$TyDescr_Message_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Message_Prim_26" to i8*) }
@"$TyDescr_Event_Prim_28" = global %"$TyDescrTy_PrimTyp_5" { i32 5, i32 0 }
@"$TyDescr_Event_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Event_Prim_28" to i8*) }
@"$TyDescr_Exception_Prim_30" = global %"$TyDescrTy_PrimTyp_5" { i32 6, i32 0 }
@"$TyDescr_Exception_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Exception_Prim_30" to i8*) }
@"$TyDescr_Bystr_Prim_32" = global %"$TyDescrTy_PrimTyp_5" { i32 7, i32 0 }
@"$TyDescr_Bystr_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr_Prim_32" to i8*) }
@"$TyDescr_Bystr20_Prim_34" = global %"$TyDescrTy_PrimTyp_5" { i32 8, i32 20 }
@"$TyDescr_Bystr20_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr20_Prim_34" to i8*) }
@"$TyDescr_ADT_Option_Int32_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Option_Int32_ADTTyp_Specl_54" to i8*) }
@"$TyDescr_Map_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_40"* @"$TyDescr_MapTyp_57" to i8*) }
@"$TyDescr_Addr_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_43"* @"$TyDescr_AddrFields_58" to i8*) }
@"$TyDescr_Option_ADTTyp_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_56", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_Option_ADTTyp_m_specls_55", i32 0, i32 0) }
@"$TyDescr_Option_Some_Int32_Constr_m_args_46" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@"$TyDescr_ADT_Some_47" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int32_ADTTyp_Constr_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_47", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int32_Constr_m_args_46", i32 0, i32 0) }
@"$TyDescr_Option_None_Int32_Constr_m_args_49" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_50" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int32_ADTTyp_Constr_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_50", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int32_Constr_m_args_49", i32 0, i32 0) }
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_52" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Option_Some_Int32_ADTTyp_Constr_48", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Option_None_Int32_ADTTyp_Constr_51"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_53" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_53", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_Option_ADTTyp_45" }
@"$TyDescr_Option_ADTTyp_m_specls_55" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Option_Int32_ADTTyp_Specl_54"]
@"$TyDescr_ADT_Option_56" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_MapTyp_57" = unnamed_addr constant %"$TyDescr_MapTyp_40" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_7" }
@"$TyDescr_AddrFields_58" = unnamed_addr constant %"$TyDescr_AddrTyp_43" { i32 -1, %"$TyDescr_AddrFieldTyp_42"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@simple-map.one = global %Int32 zeroinitializer
@simple-map.inc = global { %Int32 (i8*, %Int32)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$access_count_100" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_108" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_165" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_184" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_200" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_253" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_271" = unnamed_addr constant [13 x i8] c"access_count\00"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_44", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_39", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Map_41", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_311" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_312" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_313" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_309"] [%"$ParamDescr_309" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_311", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_309" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_312", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_309" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_313", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_314" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_315" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_316" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Increment_317" = unnamed_addr constant [3 x %"$ParamDescr_309"] [%"$ParamDescr_309" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_314", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_309" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_315", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_309" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_316", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }]
@"$tname_Increment_318" = unnamed_addr constant [9 x i8] c"Increment"
@"$tpname__amount_319" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_320" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_321" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_nopt_322" = unnamed_addr constant [4 x i8] c"nopt"
@"$tparams_IncrementNOpt_323" = unnamed_addr constant [4 x %"$ParamDescr_309"] [%"$ParamDescr_309" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_319", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_309" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_320", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_309" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_321", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_309" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_nopt_322", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_39" }]
@"$tname_IncrementNOpt_324" = unnamed_addr constant [13 x i8] c"IncrementNOpt"
@_transition_parameters = constant [2 x %"$TransDescr_310"] [%"$TransDescr_310" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_Increment_318", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_309"* getelementptr inbounds ([3 x %"$ParamDescr_309"], [3 x %"$ParamDescr_309"]* @"$tparams_Increment_317", i32 0, i32 0) }, %"$TransDescr_310" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$tname_IncrementNOpt_324", i32 0, i32 0), i32 13 }, i32 4, %"$ParamDescr_309"* getelementptr inbounds ([4 x %"$ParamDescr_309"], [4 x %"$ParamDescr_309"]* @"$tparams_IncrementNOpt_323", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define internal %Int32 @"$fundef_2"(%"$$fundef_2_env_59"* %0, %Int32 %1) {
entry:
  %"$$fundef_2_env_simple-map.one_60" = getelementptr inbounds %"$$fundef_2_env_59", %"$$fundef_2_env_59"* %0, i32 0, i32 0
  %"$simple-map.one_envload_61" = load %Int32, %Int32* %"$$fundef_2_env_simple-map.one_60", align 4
  %simple-map.one = alloca %Int32, align 8
  store %Int32 %"$simple-map.one_envload_61", %Int32* %simple-map.one, align 4
  %"$retval_3" = alloca %Int32, align 8
  %"$gasrem_62" = load i64, i64* @_gasrem, align 8
  %"$gascmp_63" = icmp ugt i64 4, %"$gasrem_62"
  br i1 %"$gascmp_63", label %"$out_of_gas_64", label %"$have_gas_65"

"$out_of_gas_64":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_65"

"$have_gas_65":                                   ; preds = %"$out_of_gas_64", %entry
  %"$consume_66" = sub i64 %"$gasrem_62", 4
  store i64 %"$consume_66", i64* @_gasrem, align 8
  %"$simple-map.one_67" = load %Int32, %Int32* %simple-map.one, align 4
  %"$add_call_68" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %"$simple-map.one_67")
  store %Int32 %"$add_call_68", %Int32* %"$retval_3", align 4
  %"$$retval_3_69" = load %Int32, %Int32* %"$retval_3", align 4
  ret %Int32 %"$$retval_3_69"
}

declare void @_out_of_gas()

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() {
entry:
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 5, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %entry
  %"$consume_74" = sub i64 %"$gasrem_70", 5
  store i64 %"$consume_74", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  %"$gasrem_75" = load i64, i64* @_gasrem, align 8
  %"$gascmp_76" = icmp ugt i64 1, %"$gasrem_75"
  br i1 %"$gascmp_76", label %"$out_of_gas_77", label %"$have_gas_78"

"$out_of_gas_77":                                 ; preds = %"$have_gas_73"
  call void @_out_of_gas()
  br label %"$have_gas_78"

"$have_gas_78":                                   ; preds = %"$out_of_gas_77", %"$have_gas_73"
  %"$consume_79" = sub i64 %"$gasrem_75", 1
  store i64 %"$consume_79", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* @simple-map.one, align 4
  %"$gasrem_80" = load i64, i64* @_gasrem, align 8
  %"$gascmp_81" = icmp ugt i64 1, %"$gasrem_80"
  br i1 %"$gascmp_81", label %"$out_of_gas_82", label %"$have_gas_83"

"$out_of_gas_82":                                 ; preds = %"$have_gas_78"
  call void @_out_of_gas()
  br label %"$have_gas_83"

"$have_gas_83":                                   ; preds = %"$out_of_gas_82", %"$have_gas_78"
  %"$consume_84" = sub i64 %"$gasrem_80", 1
  store i64 %"$consume_84", i64* @_gasrem, align 8
  %"$$fundef_2_envp_85_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_2_envp_85_salloc" = call i8* @_salloc(i8* %"$$fundef_2_envp_85_load", i64 4)
  %"$$fundef_2_envp_85" = bitcast i8* %"$$fundef_2_envp_85_salloc" to %"$$fundef_2_env_59"*
  %"$$fundef_2_env_voidp_87" = bitcast %"$$fundef_2_env_59"* %"$$fundef_2_envp_85" to i8*
  %"$$fundef_2_cloval_88" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_2_env_59"*, %Int32)* @"$fundef_2" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_2_env_voidp_87", 1
  %"$$fundef_2_env_simple-map.one_89" = getelementptr inbounds %"$$fundef_2_env_59", %"$$fundef_2_env_59"* %"$$fundef_2_envp_85", i32 0, i32 0
  %"$simple-map.one_90" = load %Int32, %Int32* @simple-map.one, align 4
  store %Int32 %"$simple-map.one_90", %Int32* %"$$fundef_2_env_simple-map.one_89", align 4
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_2_cloval_88", { %Int32 (i8*, %Int32)*, i8* }* @simple-map.inc, align 8
  ret void
}

declare i8* @_salloc(i8*, i64)

define void @_init_state() {
entry:
  %"$access_count_4" = alloca %Map_ByStr20_Int32*, align 8
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %entry
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem, align 8
  %"$execptr_load_96" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_97" = call i8* @_new_empty_map(i8* %"$execptr_load_96")
  %"$_new_empty_map_98" = bitcast i8* %"$_new_empty_map_call_97" to %Map_ByStr20_Int32*
  store %Map_ByStr20_Int32* %"$_new_empty_map_98", %Map_ByStr20_Int32** %"$access_count_4", align 8
  %"$execptr_load_99" = load i8*, i8** @_execptr, align 8
  %"$$access_count_4_101" = load %Map_ByStr20_Int32*, %Map_ByStr20_Int32** %"$access_count_4", align 8
  %"$update_value_102" = bitcast %Map_ByStr20_Int32* %"$$access_count_4_101" to i8*
  call void @_update_field(i8* %"$execptr_load_99", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_100", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 0, i8* null, i8* %"$update_value_102")
  ret void
}

declare i8* @_new_empty_map(i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$Increment_103"(%Uint128 %_amount, [20 x i8]* %"$_origin_104", [20 x i8]* %"$_sender_105") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_104", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_105", align 1
  %cur = alloca %TName_Option_Int32*, align 8
  %"$indices_buf_106_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_106_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_106_salloc_load", i64 20)
  %"$indices_buf_106_salloc" = bitcast i8* %"$indices_buf_106_salloc_salloc" to [20 x i8]*
  %"$indices_buf_106" = bitcast [20 x i8]* %"$indices_buf_106_salloc" to i8*
  %"$indices_gep_107" = getelementptr i8, i8* %"$indices_buf_106", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_107" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_109" = load i8*, i8** @_execptr, align 8
  %"$cur_call_110" = call i8* @_fetch_field(i8* %"$execptr_load_109", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_108", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 1, i8* %"$indices_buf_106", i32 1)
  %"$cur_111" = bitcast i8* %"$cur_call_110" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_111", %TName_Option_Int32** %cur, align 8
  %"$cur_112" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$$cur_112_113" = bitcast %TName_Option_Int32* %"$cur_112" to i8*
  %"$_literal_cost_call_114" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_39", i8* %"$$cur_112_113")
  %"$gasadd_115" = add i64 %"$_literal_cost_call_114", 0
  %"$gasadd_116" = add i64 %"$gasadd_115", 1
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 %"$gasadd_116", %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %entry
  %"$consume_121" = sub i64 %"$gasrem_117", %"$gasadd_116"
  store i64 %"$consume_121", i64* @_gasrem, align 8
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 2, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %"$have_gas_120"
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %"$have_gas_120"
  %"$consume_126" = sub i64 %"$gasrem_122", 2
  store i64 %"$consume_126", i64* @_gasrem, align 8
  %"$cur_128" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$cur_tag_129" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_128", i32 0, i32 0
  %"$cur_tag_130" = load i8, i8* %"$cur_tag_129", align 1
  switch i8 %"$cur_tag_130", label %"$empty_default_131" [
    i8 0, label %"$Some_132"
    i8 1, label %"$None_169"
  ]

"$Some_132":                                      ; preds = %"$have_gas_125"
  %"$cur_133" = bitcast %TName_Option_Int32* %"$cur_128" to %CName_Some_Int32*
  %"$i_gep_134" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_133", i32 0, i32 1
  %"$i_load_135" = load %Int32, %Int32* %"$i_gep_134", align 4
  %i = alloca %Int32, align 8
  store %Int32 %"$i_load_135", %Int32* %i, align 4
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$Some_132"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$Some_132"
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem, align 8
  %j = alloca %Int32, align 8
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_139"
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %"$simple-map.inc_1" = alloca %Int32, align 8
  %"$simple-map.inc_146" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* @simple-map.inc, align 8
  %"$simple-map.inc_fptr_147" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$simple-map.inc_146", 0
  %"$simple-map.inc_envptr_148" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$simple-map.inc_146", 1
  %"$i_149" = load %Int32, %Int32* %i, align 4
  %"$simple-map.inc_call_150" = call %Int32 %"$simple-map.inc_fptr_147"(i8* %"$simple-map.inc_envptr_148", %Int32 %"$i_149")
  store %Int32 %"$simple-map.inc_call_150", %Int32* %"$simple-map.inc_1", align 4
  %"$$simple-map.inc_1_151" = load %Int32, %Int32* %"$simple-map.inc_1", align 4
  store %Int32 %"$$simple-map.inc_1_151", %Int32* %j, align 4
  %"$_literal_cost_j_152" = alloca %Int32, align 8
  %"$j_153" = load %Int32, %Int32* %j, align 4
  store %Int32 %"$j_153", %Int32* %"$_literal_cost_j_152", align 4
  %"$$_literal_cost_j_152_154" = bitcast %Int32* %"$_literal_cost_j_152" to i8*
  %"$_literal_cost_call_155" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$$_literal_cost_j_152_154")
  %"$gasadd_156" = add i64 %"$_literal_cost_call_155", 1
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 %"$gasadd_156", %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_144"
  %"$consume_161" = sub i64 %"$gasrem_157", %"$gasadd_156"
  store i64 %"$consume_161", i64* @_gasrem, align 8
  %"$indices_buf_162_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_162_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_162_salloc_load", i64 20)
  %"$indices_buf_162_salloc" = bitcast i8* %"$indices_buf_162_salloc_salloc" to [20 x i8]*
  %"$indices_buf_162" = bitcast [20 x i8]* %"$indices_buf_162_salloc" to i8*
  %"$indices_gep_163" = getelementptr i8, i8* %"$indices_buf_162", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_163" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_164" = load i8*, i8** @_execptr, align 8
  %"$j_166" = load %Int32, %Int32* %j, align 4
  %"$update_value_167" = alloca %Int32, align 8
  store %Int32 %"$j_166", %Int32* %"$update_value_167", align 4
  %"$update_value_168" = bitcast %Int32* %"$update_value_167" to i8*
  call void @_update_field(i8* %"$execptr_load_164", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_165", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 1, i8* %"$indices_buf_162", i8* %"$update_value_168")
  br label %"$matchsucc_127"

"$None_169":                                      ; preds = %"$have_gas_125"
  %"$cur_170" = bitcast %TName_Option_Int32* %"$cur_128" to %CName_None_Int32*
  %"$_literal_cost_simple-map.one_171" = alloca %Int32, align 8
  %"$simple-map.one_172" = load %Int32, %Int32* @simple-map.one, align 4
  store %Int32 %"$simple-map.one_172", %Int32* %"$_literal_cost_simple-map.one_171", align 4
  %"$$_literal_cost_simple-map.one_171_173" = bitcast %Int32* %"$_literal_cost_simple-map.one_171" to i8*
  %"$_literal_cost_call_174" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$$_literal_cost_simple-map.one_171_173")
  %"$gasadd_175" = add i64 %"$_literal_cost_call_174", 1
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 %"$gasadd_175", %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$None_169"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$None_169"
  %"$consume_180" = sub i64 %"$gasrem_176", %"$gasadd_175"
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %"$indices_buf_181_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_181_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_181_salloc_load", i64 20)
  %"$indices_buf_181_salloc" = bitcast i8* %"$indices_buf_181_salloc_salloc" to [20 x i8]*
  %"$indices_buf_181" = bitcast [20 x i8]* %"$indices_buf_181_salloc" to i8*
  %"$indices_gep_182" = getelementptr i8, i8* %"$indices_buf_181", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_182" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_183" = load i8*, i8** @_execptr, align 8
  %"$simple-map.one_185" = load %Int32, %Int32* @simple-map.one, align 4
  %"$update_value_186" = alloca %Int32, align 8
  store %Int32 %"$simple-map.one_185", %Int32* %"$update_value_186", align 4
  %"$update_value_187" = bitcast %Int32* %"$update_value_186" to i8*
  call void @_update_field(i8* %"$execptr_load_183", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_184", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 1, i8* %"$indices_buf_181", i8* %"$update_value_187")
  br label %"$matchsucc_127"

"$empty_default_131":                             ; preds = %"$have_gas_125"
  br label %"$matchsucc_127"

"$matchsucc_127":                                 ; preds = %"$have_gas_179", %"$have_gas_160", %"$empty_default_131"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @Increment(i8* %0) {
entry:
  %"$_amount_189" = getelementptr i8, i8* %0, i32 0
  %"$_amount_190" = bitcast i8* %"$_amount_189" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_190", align 8
  %"$_origin_191" = getelementptr i8, i8* %0, i32 16
  %"$_origin_192" = bitcast i8* %"$_origin_191" to [20 x i8]*
  %"$_sender_193" = getelementptr i8, i8* %0, i32 36
  %"$_sender_194" = bitcast i8* %"$_sender_193" to [20 x i8]*
  call void @"$Increment_103"(%Uint128 %_amount, [20 x i8]* %"$_origin_192", [20 x i8]* %"$_sender_194")
  ret void
}

define internal void @"$IncrementN_195"(%Uint128 %_amount, [20 x i8]* %"$_origin_196", [20 x i8]* %"$_sender_197", %Int32 %n) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_196", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_197", align 1
  %cur = alloca %TName_Option_Int32*, align 8
  %"$indices_buf_198_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_198_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_198_salloc_load", i64 20)
  %"$indices_buf_198_salloc" = bitcast i8* %"$indices_buf_198_salloc_salloc" to [20 x i8]*
  %"$indices_buf_198" = bitcast [20 x i8]* %"$indices_buf_198_salloc" to i8*
  %"$indices_gep_199" = getelementptr i8, i8* %"$indices_buf_198", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_199" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_201" = load i8*, i8** @_execptr, align 8
  %"$cur_call_202" = call i8* @_fetch_field(i8* %"$execptr_load_201", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_200", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 1, i8* %"$indices_buf_198", i32 1)
  %"$cur_203" = bitcast i8* %"$cur_call_202" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_203", %TName_Option_Int32** %cur, align 8
  %"$cur_204" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$$cur_204_205" = bitcast %TName_Option_Int32* %"$cur_204" to i8*
  %"$_literal_cost_call_206" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_39", i8* %"$$cur_204_205")
  %"$gasadd_207" = add i64 %"$_literal_cost_call_206", 0
  %"$gasadd_208" = add i64 %"$gasadd_207", 1
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 %"$gasadd_208", %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %entry
  %"$consume_213" = sub i64 %"$gasrem_209", %"$gasadd_208"
  store i64 %"$consume_213", i64* @_gasrem, align 8
  %"$gasrem_214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_215" = icmp ugt i64 2, %"$gasrem_214"
  br i1 %"$gascmp_215", label %"$out_of_gas_216", label %"$have_gas_217"

"$out_of_gas_216":                                ; preds = %"$have_gas_212"
  call void @_out_of_gas()
  br label %"$have_gas_217"

"$have_gas_217":                                  ; preds = %"$out_of_gas_216", %"$have_gas_212"
  %"$consume_218" = sub i64 %"$gasrem_214", 2
  store i64 %"$consume_218", i64* @_gasrem, align 8
  %"$cur_220" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$cur_tag_221" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_220", i32 0, i32 0
  %"$cur_tag_222" = load i8, i8* %"$cur_tag_221", align 1
  switch i8 %"$cur_tag_222", label %"$empty_default_223" [
    i8 0, label %"$Some_224"
    i8 1, label %"$None_257"
  ]

"$Some_224":                                      ; preds = %"$have_gas_217"
  %"$cur_225" = bitcast %TName_Option_Int32* %"$cur_220" to %CName_Some_Int32*
  %"$i_gep_226" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_225", i32 0, i32 1
  %"$i_load_227" = load %Int32, %Int32* %"$i_gep_226", align 4
  %i = alloca %Int32, align 8
  store %Int32 %"$i_load_227", %Int32* %i, align 4
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 1, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$Some_224"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$Some_224"
  %"$consume_232" = sub i64 %"$gasrem_228", 1
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %j = alloca %Int32, align 8
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 4, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_231"
  %"$consume_237" = sub i64 %"$gasrem_233", 4
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %"$i_238" = load %Int32, %Int32* %i, align 4
  %"$add_call_239" = call %Int32 @_add_Int32(%Int32 %"$i_238", %Int32 %n)
  store %Int32 %"$add_call_239", %Int32* %j, align 4
  %"$_literal_cost_j_240" = alloca %Int32, align 8
  %"$j_241" = load %Int32, %Int32* %j, align 4
  store %Int32 %"$j_241", %Int32* %"$_literal_cost_j_240", align 4
  %"$$_literal_cost_j_240_242" = bitcast %Int32* %"$_literal_cost_j_240" to i8*
  %"$_literal_cost_call_243" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$$_literal_cost_j_240_242")
  %"$gasadd_244" = add i64 %"$_literal_cost_call_243", 1
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 %"$gasadd_244", %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$have_gas_236"
  %"$consume_249" = sub i64 %"$gasrem_245", %"$gasadd_244"
  store i64 %"$consume_249", i64* @_gasrem, align 8
  %"$indices_buf_250_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_250_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_250_salloc_load", i64 20)
  %"$indices_buf_250_salloc" = bitcast i8* %"$indices_buf_250_salloc_salloc" to [20 x i8]*
  %"$indices_buf_250" = bitcast [20 x i8]* %"$indices_buf_250_salloc" to i8*
  %"$indices_gep_251" = getelementptr i8, i8* %"$indices_buf_250", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_251" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_252" = load i8*, i8** @_execptr, align 8
  %"$j_254" = load %Int32, %Int32* %j, align 4
  %"$update_value_255" = alloca %Int32, align 8
  store %Int32 %"$j_254", %Int32* %"$update_value_255", align 4
  %"$update_value_256" = bitcast %Int32* %"$update_value_255" to i8*
  call void @_update_field(i8* %"$execptr_load_252", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_253", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 1, i8* %"$indices_buf_250", i8* %"$update_value_256")
  br label %"$matchsucc_219"

"$None_257":                                      ; preds = %"$have_gas_217"
  %"$cur_258" = bitcast %TName_Option_Int32* %"$cur_220" to %CName_None_Int32*
  %"$_literal_cost_n_259" = alloca %Int32, align 8
  store %Int32 %n, %Int32* %"$_literal_cost_n_259", align 4
  %"$$_literal_cost_n_259_260" = bitcast %Int32* %"$_literal_cost_n_259" to i8*
  %"$_literal_cost_call_261" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$$_literal_cost_n_259_260")
  %"$gasadd_262" = add i64 %"$_literal_cost_call_261", 1
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 %"$gasadd_262", %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$None_257"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$None_257"
  %"$consume_267" = sub i64 %"$gasrem_263", %"$gasadd_262"
  store i64 %"$consume_267", i64* @_gasrem, align 8
  %"$indices_buf_268_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_268_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_268_salloc_load", i64 20)
  %"$indices_buf_268_salloc" = bitcast i8* %"$indices_buf_268_salloc_salloc" to [20 x i8]*
  %"$indices_buf_268" = bitcast [20 x i8]* %"$indices_buf_268_salloc" to i8*
  %"$indices_gep_269" = getelementptr i8, i8* %"$indices_buf_268", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_269" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_270" = load i8*, i8** @_execptr, align 8
  %"$update_value_272" = alloca %Int32, align 8
  store %Int32 %n, %Int32* %"$update_value_272", align 4
  %"$update_value_273" = bitcast %Int32* %"$update_value_272" to i8*
  call void @_update_field(i8* %"$execptr_load_270", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_271", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 1, i8* %"$indices_buf_268", i8* %"$update_value_273")
  br label %"$matchsucc_219"

"$empty_default_223":                             ; preds = %"$have_gas_217"
  br label %"$matchsucc_219"

"$matchsucc_219":                                 ; preds = %"$have_gas_266", %"$have_gas_248", %"$empty_default_223"
  ret void
}

define internal void @"$IncrementNOpt_274"(%Uint128 %_amount, [20 x i8]* %"$_origin_275", [20 x i8]* %"$_sender_276", %TName_Option_Int32* %nopt) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_275", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_276", align 1
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 2, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %entry
  %"$consume_281" = sub i64 %"$gasrem_277", 2
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %"$nopt_tag_283" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %nopt, i32 0, i32 0
  %"$nopt_tag_284" = load i8, i8* %"$nopt_tag_283", align 1
  switch i8 %"$nopt_tag_284", label %"$empty_default_285" [
    i8 0, label %"$Some_286"
    i8 1, label %"$None_298"
  ]

"$Some_286":                                      ; preds = %"$have_gas_280"
  %"$nopt_287" = bitcast %TName_Option_Int32* %nopt to %CName_Some_Int32*
  %"$n_gep_288" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$nopt_287", i32 0, i32 1
  %"$n_load_289" = load %Int32, %Int32* %"$n_gep_288", align 4
  %n = alloca %Int32, align 8
  store %Int32 %"$n_load_289", %Int32* %n, align 4
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 1, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$Some_286"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$Some_286"
  %"$consume_294" = sub i64 %"$gasrem_290", 1
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %"$IncrementN__origin_295" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$IncrementN__origin_295", align 1
  %"$IncrementN__sender_296" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$IncrementN__sender_296", align 1
  %"$n_297" = load %Int32, %Int32* %n, align 4
  call void @"$IncrementN_195"(%Uint128 %_amount, [20 x i8]* %"$IncrementN__origin_295", [20 x i8]* %"$IncrementN__sender_296", %Int32 %"$n_297")
  br label %"$matchsucc_282"

"$None_298":                                      ; preds = %"$have_gas_280"
  %"$nopt_299" = bitcast %TName_Option_Int32* %nopt to %CName_None_Int32*
  br label %"$matchsucc_282"

"$empty_default_285":                             ; preds = %"$have_gas_280"
  br label %"$matchsucc_282"

"$matchsucc_282":                                 ; preds = %"$None_298", %"$have_gas_293", %"$empty_default_285"
  ret void
}

define void @IncrementNOpt(i8* %0) {
entry:
  %"$_amount_301" = getelementptr i8, i8* %0, i32 0
  %"$_amount_302" = bitcast i8* %"$_amount_301" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_302", align 8
  %"$_origin_303" = getelementptr i8, i8* %0, i32 16
  %"$_origin_304" = bitcast i8* %"$_origin_303" to [20 x i8]*
  %"$_sender_305" = getelementptr i8, i8* %0, i32 36
  %"$_sender_306" = bitcast i8* %"$_sender_305" to [20 x i8]*
  %"$nopt_307" = getelementptr i8, i8* %0, i32 56
  %"$nopt_308" = bitcast i8* %"$nopt_307" to %TName_Option_Int32**
  %nopt = load %TName_Option_Int32*, %TName_Option_Int32** %"$nopt_308", align 8
  call void @"$IncrementNOpt_274"(%Uint128 %_amount, [20 x i8]* %"$_origin_304", [20 x i8]* %"$_sender_306", %TName_Option_Int32* %nopt)
  ret void
}
