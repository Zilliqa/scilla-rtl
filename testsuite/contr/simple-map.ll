

; gas_remaining: 4001999
; ModuleID = 'SimpleMap'
source_filename = "SimpleMap"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%"$ParamDescr_314" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_315" = type { %ParamDescrString, i32, %"$ParamDescr_314"* }
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
@"$access_count_105" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_113" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_170" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_189" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_205" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_258" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_276" = unnamed_addr constant [13 x i8] c"access_count\00"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_44", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_39", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Map_41", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_316" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_317" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_318" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_314"] [%"$ParamDescr_314" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_316", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_314" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_317", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_314" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_318", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_319" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_320" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_321" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Increment_322" = unnamed_addr constant [3 x %"$ParamDescr_314"] [%"$ParamDescr_314" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_319", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_314" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_320", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_314" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_321", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }]
@"$tname_Increment_323" = unnamed_addr constant [9 x i8] c"Increment"
@"$tpname__amount_324" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_325" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_326" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_nopt_327" = unnamed_addr constant [4 x i8] c"nopt"
@"$tparams_IncrementNOpt_328" = unnamed_addr constant [4 x %"$ParamDescr_314"] [%"$ParamDescr_314" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_324", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_314" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_325", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_314" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_326", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_314" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_nopt_327", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_39" }]
@"$tname_IncrementNOpt_329" = unnamed_addr constant [13 x i8] c"IncrementNOpt"
@_transition_parameters = constant [2 x %"$TransDescr_315"] [%"$TransDescr_315" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_Increment_323", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_314"* getelementptr inbounds ([3 x %"$ParamDescr_314"], [3 x %"$ParamDescr_314"]* @"$tparams_Increment_322", i32 0, i32 0) }, %"$TransDescr_315" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$tname_IncrementNOpt_329", i32 0, i32 0), i32 13 }, i32 4, %"$ParamDescr_314"* getelementptr inbounds ([4 x %"$ParamDescr_314"], [4 x %"$ParamDescr_314"]* @"$tparams_IncrementNOpt_328", i32 0, i32 0) }]
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

define void @_deploy_ops() {
entry:
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %entry
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem, align 8
  %"$access_count_4" = alloca %Map_ByStr20_Int32*, align 8
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_94"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_94"
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  %"$execptr_load_101" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_102" = call i8* @_new_empty_map(i8* %"$execptr_load_101")
  %"$_new_empty_map_103" = bitcast i8* %"$_new_empty_map_call_102" to %Map_ByStr20_Int32*
  store %Map_ByStr20_Int32* %"$_new_empty_map_103", %Map_ByStr20_Int32** %"$access_count_4", align 8
  %"$execptr_load_104" = load i8*, i8** @_execptr, align 8
  %"$$access_count_4_106" = load %Map_ByStr20_Int32*, %Map_ByStr20_Int32** %"$access_count_4", align 8
  %"$update_value_107" = bitcast %Map_ByStr20_Int32* %"$$access_count_4_106" to i8*
  call void @_update_field(i8* %"$execptr_load_104", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_105", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 0, i8* null, i8* %"$update_value_107")
  ret void
}

declare i8* @_new_empty_map(i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$Increment_108"(%Uint128 %_amount, [20 x i8]* %"$_origin_109", [20 x i8]* %"$_sender_110") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_109", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_110", align 1
  %cur = alloca %TName_Option_Int32*, align 8
  %"$indices_buf_111_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_111_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_111_salloc_load", i64 20)
  %"$indices_buf_111_salloc" = bitcast i8* %"$indices_buf_111_salloc_salloc" to [20 x i8]*
  %"$indices_buf_111" = bitcast [20 x i8]* %"$indices_buf_111_salloc" to i8*
  %"$indices_gep_112" = getelementptr i8, i8* %"$indices_buf_111", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_112" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_114" = load i8*, i8** @_execptr, align 8
  %"$cur_call_115" = call i8* @_fetch_field(i8* %"$execptr_load_114", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_113", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 1, i8* %"$indices_buf_111", i32 1)
  %"$cur_116" = bitcast i8* %"$cur_call_115" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_116", %TName_Option_Int32** %cur, align 8
  %"$cur_117" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$$cur_117_118" = bitcast %TName_Option_Int32* %"$cur_117" to i8*
  %"$_literal_cost_call_119" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_39", i8* %"$$cur_117_118")
  %"$gasadd_120" = add i64 %"$_literal_cost_call_119", 0
  %"$gasadd_121" = add i64 %"$gasadd_120", 1
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 %"$gasadd_121", %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %entry
  %"$consume_126" = sub i64 %"$gasrem_122", %"$gasadd_121"
  store i64 %"$consume_126", i64* @_gasrem, align 8
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 2, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_125"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_125"
  %"$consume_131" = sub i64 %"$gasrem_127", 2
  store i64 %"$consume_131", i64* @_gasrem, align 8
  %"$cur_133" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$cur_tag_134" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_133", i32 0, i32 0
  %"$cur_tag_135" = load i8, i8* %"$cur_tag_134", align 1
  switch i8 %"$cur_tag_135", label %"$empty_default_136" [
    i8 0, label %"$Some_137"
    i8 1, label %"$None_174"
  ]

"$Some_137":                                      ; preds = %"$have_gas_130"
  %"$cur_138" = bitcast %TName_Option_Int32* %"$cur_133" to %CName_Some_Int32*
  %"$i_gep_139" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_138", i32 0, i32 1
  %"$i_load_140" = load %Int32, %Int32* %"$i_gep_139", align 4
  %i = alloca %Int32, align 8
  store %Int32 %"$i_load_140", %Int32* %i, align 4
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$Some_137"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$Some_137"
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %j = alloca %Int32, align 8
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_144"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %"$simple-map.inc_1" = alloca %Int32, align 8
  %"$simple-map.inc_151" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* @simple-map.inc, align 8
  %"$simple-map.inc_fptr_152" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$simple-map.inc_151", 0
  %"$simple-map.inc_envptr_153" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$simple-map.inc_151", 1
  %"$i_154" = load %Int32, %Int32* %i, align 4
  %"$simple-map.inc_call_155" = call %Int32 %"$simple-map.inc_fptr_152"(i8* %"$simple-map.inc_envptr_153", %Int32 %"$i_154")
  store %Int32 %"$simple-map.inc_call_155", %Int32* %"$simple-map.inc_1", align 4
  %"$$simple-map.inc_1_156" = load %Int32, %Int32* %"$simple-map.inc_1", align 4
  store %Int32 %"$$simple-map.inc_1_156", %Int32* %j, align 4
  %"$_literal_cost_j_157" = alloca %Int32, align 8
  %"$j_158" = load %Int32, %Int32* %j, align 4
  store %Int32 %"$j_158", %Int32* %"$_literal_cost_j_157", align 4
  %"$$_literal_cost_j_157_159" = bitcast %Int32* %"$_literal_cost_j_157" to i8*
  %"$_literal_cost_call_160" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$$_literal_cost_j_157_159")
  %"$gasadd_161" = add i64 %"$_literal_cost_call_160", 1
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 %"$gasadd_161", %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_149"
  %"$consume_166" = sub i64 %"$gasrem_162", %"$gasadd_161"
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %"$indices_buf_167_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_167_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_167_salloc_load", i64 20)
  %"$indices_buf_167_salloc" = bitcast i8* %"$indices_buf_167_salloc_salloc" to [20 x i8]*
  %"$indices_buf_167" = bitcast [20 x i8]* %"$indices_buf_167_salloc" to i8*
  %"$indices_gep_168" = getelementptr i8, i8* %"$indices_buf_167", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_168" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_169" = load i8*, i8** @_execptr, align 8
  %"$j_171" = load %Int32, %Int32* %j, align 4
  %"$update_value_172" = alloca %Int32, align 8
  store %Int32 %"$j_171", %Int32* %"$update_value_172", align 4
  %"$update_value_173" = bitcast %Int32* %"$update_value_172" to i8*
  call void @_update_field(i8* %"$execptr_load_169", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_170", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 1, i8* %"$indices_buf_167", i8* %"$update_value_173")
  br label %"$matchsucc_132"

"$None_174":                                      ; preds = %"$have_gas_130"
  %"$cur_175" = bitcast %TName_Option_Int32* %"$cur_133" to %CName_None_Int32*
  %"$_literal_cost_simple-map.one_176" = alloca %Int32, align 8
  %"$simple-map.one_177" = load %Int32, %Int32* @simple-map.one, align 4
  store %Int32 %"$simple-map.one_177", %Int32* %"$_literal_cost_simple-map.one_176", align 4
  %"$$_literal_cost_simple-map.one_176_178" = bitcast %Int32* %"$_literal_cost_simple-map.one_176" to i8*
  %"$_literal_cost_call_179" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$$_literal_cost_simple-map.one_176_178")
  %"$gasadd_180" = add i64 %"$_literal_cost_call_179", 1
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 %"$gasadd_180", %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$None_174"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$None_174"
  %"$consume_185" = sub i64 %"$gasrem_181", %"$gasadd_180"
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %"$indices_buf_186_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_186_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_186_salloc_load", i64 20)
  %"$indices_buf_186_salloc" = bitcast i8* %"$indices_buf_186_salloc_salloc" to [20 x i8]*
  %"$indices_buf_186" = bitcast [20 x i8]* %"$indices_buf_186_salloc" to i8*
  %"$indices_gep_187" = getelementptr i8, i8* %"$indices_buf_186", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_187" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_188" = load i8*, i8** @_execptr, align 8
  %"$simple-map.one_190" = load %Int32, %Int32* @simple-map.one, align 4
  %"$update_value_191" = alloca %Int32, align 8
  store %Int32 %"$simple-map.one_190", %Int32* %"$update_value_191", align 4
  %"$update_value_192" = bitcast %Int32* %"$update_value_191" to i8*
  call void @_update_field(i8* %"$execptr_load_188", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_189", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 1, i8* %"$indices_buf_186", i8* %"$update_value_192")
  br label %"$matchsucc_132"

"$empty_default_136":                             ; preds = %"$have_gas_130"
  br label %"$matchsucc_132"

"$matchsucc_132":                                 ; preds = %"$have_gas_184", %"$have_gas_165", %"$empty_default_136"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @Increment(i8* %0) {
entry:
  %"$_amount_194" = getelementptr i8, i8* %0, i32 0
  %"$_amount_195" = bitcast i8* %"$_amount_194" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_195", align 8
  %"$_origin_196" = getelementptr i8, i8* %0, i32 16
  %"$_origin_197" = bitcast i8* %"$_origin_196" to [20 x i8]*
  %"$_sender_198" = getelementptr i8, i8* %0, i32 36
  %"$_sender_199" = bitcast i8* %"$_sender_198" to [20 x i8]*
  call void @"$Increment_108"(%Uint128 %_amount, [20 x i8]* %"$_origin_197", [20 x i8]* %"$_sender_199")
  ret void
}

define internal void @"$IncrementN_200"(%Uint128 %_amount, [20 x i8]* %"$_origin_201", [20 x i8]* %"$_sender_202", %Int32 %n) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_201", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_202", align 1
  %cur = alloca %TName_Option_Int32*, align 8
  %"$indices_buf_203_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_203_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_203_salloc_load", i64 20)
  %"$indices_buf_203_salloc" = bitcast i8* %"$indices_buf_203_salloc_salloc" to [20 x i8]*
  %"$indices_buf_203" = bitcast [20 x i8]* %"$indices_buf_203_salloc" to i8*
  %"$indices_gep_204" = getelementptr i8, i8* %"$indices_buf_203", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_204" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_206" = load i8*, i8** @_execptr, align 8
  %"$cur_call_207" = call i8* @_fetch_field(i8* %"$execptr_load_206", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_205", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 1, i8* %"$indices_buf_203", i32 1)
  %"$cur_208" = bitcast i8* %"$cur_call_207" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_208", %TName_Option_Int32** %cur, align 8
  %"$cur_209" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$$cur_209_210" = bitcast %TName_Option_Int32* %"$cur_209" to i8*
  %"$_literal_cost_call_211" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_39", i8* %"$$cur_209_210")
  %"$gasadd_212" = add i64 %"$_literal_cost_call_211", 0
  %"$gasadd_213" = add i64 %"$gasadd_212", 1
  %"$gasrem_214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_215" = icmp ugt i64 %"$gasadd_213", %"$gasrem_214"
  br i1 %"$gascmp_215", label %"$out_of_gas_216", label %"$have_gas_217"

"$out_of_gas_216":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_217"

"$have_gas_217":                                  ; preds = %"$out_of_gas_216", %entry
  %"$consume_218" = sub i64 %"$gasrem_214", %"$gasadd_213"
  store i64 %"$consume_218", i64* @_gasrem, align 8
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 2, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_217"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_217"
  %"$consume_223" = sub i64 %"$gasrem_219", 2
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %"$cur_225" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$cur_tag_226" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_225", i32 0, i32 0
  %"$cur_tag_227" = load i8, i8* %"$cur_tag_226", align 1
  switch i8 %"$cur_tag_227", label %"$empty_default_228" [
    i8 0, label %"$Some_229"
    i8 1, label %"$None_262"
  ]

"$Some_229":                                      ; preds = %"$have_gas_222"
  %"$cur_230" = bitcast %TName_Option_Int32* %"$cur_225" to %CName_Some_Int32*
  %"$i_gep_231" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_230", i32 0, i32 1
  %"$i_load_232" = load %Int32, %Int32* %"$i_gep_231", align 4
  %i = alloca %Int32, align 8
  store %Int32 %"$i_load_232", %Int32* %i, align 4
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$Some_229"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$Some_229"
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %j = alloca %Int32, align 8
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 4, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_236"
  %"$consume_242" = sub i64 %"$gasrem_238", 4
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %"$i_243" = load %Int32, %Int32* %i, align 4
  %"$add_call_244" = call %Int32 @_add_Int32(%Int32 %"$i_243", %Int32 %n)
  store %Int32 %"$add_call_244", %Int32* %j, align 4
  %"$_literal_cost_j_245" = alloca %Int32, align 8
  %"$j_246" = load %Int32, %Int32* %j, align 4
  store %Int32 %"$j_246", %Int32* %"$_literal_cost_j_245", align 4
  %"$$_literal_cost_j_245_247" = bitcast %Int32* %"$_literal_cost_j_245" to i8*
  %"$_literal_cost_call_248" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$$_literal_cost_j_245_247")
  %"$gasadd_249" = add i64 %"$_literal_cost_call_248", 1
  %"$gasrem_250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_251" = icmp ugt i64 %"$gasadd_249", %"$gasrem_250"
  br i1 %"$gascmp_251", label %"$out_of_gas_252", label %"$have_gas_253"

"$out_of_gas_252":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_253"

"$have_gas_253":                                  ; preds = %"$out_of_gas_252", %"$have_gas_241"
  %"$consume_254" = sub i64 %"$gasrem_250", %"$gasadd_249"
  store i64 %"$consume_254", i64* @_gasrem, align 8
  %"$indices_buf_255_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_255_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_255_salloc_load", i64 20)
  %"$indices_buf_255_salloc" = bitcast i8* %"$indices_buf_255_salloc_salloc" to [20 x i8]*
  %"$indices_buf_255" = bitcast [20 x i8]* %"$indices_buf_255_salloc" to i8*
  %"$indices_gep_256" = getelementptr i8, i8* %"$indices_buf_255", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_256" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_257" = load i8*, i8** @_execptr, align 8
  %"$j_259" = load %Int32, %Int32* %j, align 4
  %"$update_value_260" = alloca %Int32, align 8
  store %Int32 %"$j_259", %Int32* %"$update_value_260", align 4
  %"$update_value_261" = bitcast %Int32* %"$update_value_260" to i8*
  call void @_update_field(i8* %"$execptr_load_257", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_258", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 1, i8* %"$indices_buf_255", i8* %"$update_value_261")
  br label %"$matchsucc_224"

"$None_262":                                      ; preds = %"$have_gas_222"
  %"$cur_263" = bitcast %TName_Option_Int32* %"$cur_225" to %CName_None_Int32*
  %"$_literal_cost_n_264" = alloca %Int32, align 8
  store %Int32 %n, %Int32* %"$_literal_cost_n_264", align 4
  %"$$_literal_cost_n_264_265" = bitcast %Int32* %"$_literal_cost_n_264" to i8*
  %"$_literal_cost_call_266" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$$_literal_cost_n_264_265")
  %"$gasadd_267" = add i64 %"$_literal_cost_call_266", 1
  %"$gasrem_268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_269" = icmp ugt i64 %"$gasadd_267", %"$gasrem_268"
  br i1 %"$gascmp_269", label %"$out_of_gas_270", label %"$have_gas_271"

"$out_of_gas_270":                                ; preds = %"$None_262"
  call void @_out_of_gas()
  br label %"$have_gas_271"

"$have_gas_271":                                  ; preds = %"$out_of_gas_270", %"$None_262"
  %"$consume_272" = sub i64 %"$gasrem_268", %"$gasadd_267"
  store i64 %"$consume_272", i64* @_gasrem, align 8
  %"$indices_buf_273_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_273_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_273_salloc_load", i64 20)
  %"$indices_buf_273_salloc" = bitcast i8* %"$indices_buf_273_salloc_salloc" to [20 x i8]*
  %"$indices_buf_273" = bitcast [20 x i8]* %"$indices_buf_273_salloc" to i8*
  %"$indices_gep_274" = getelementptr i8, i8* %"$indices_buf_273", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_274" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_275" = load i8*, i8** @_execptr, align 8
  %"$update_value_277" = alloca %Int32, align 8
  store %Int32 %n, %Int32* %"$update_value_277", align 4
  %"$update_value_278" = bitcast %Int32* %"$update_value_277" to i8*
  call void @_update_field(i8* %"$execptr_load_275", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_276", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 1, i8* %"$indices_buf_273", i8* %"$update_value_278")
  br label %"$matchsucc_224"

"$empty_default_228":                             ; preds = %"$have_gas_222"
  br label %"$matchsucc_224"

"$matchsucc_224":                                 ; preds = %"$have_gas_271", %"$have_gas_253", %"$empty_default_228"
  ret void
}

define internal void @"$IncrementNOpt_279"(%Uint128 %_amount, [20 x i8]* %"$_origin_280", [20 x i8]* %"$_sender_281", %TName_Option_Int32* %nopt) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_280", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_281", align 1
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 2, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %entry
  %"$consume_286" = sub i64 %"$gasrem_282", 2
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %"$nopt_tag_288" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %nopt, i32 0, i32 0
  %"$nopt_tag_289" = load i8, i8* %"$nopt_tag_288", align 1
  switch i8 %"$nopt_tag_289", label %"$empty_default_290" [
    i8 0, label %"$Some_291"
    i8 1, label %"$None_303"
  ]

"$Some_291":                                      ; preds = %"$have_gas_285"
  %"$nopt_292" = bitcast %TName_Option_Int32* %nopt to %CName_Some_Int32*
  %"$n_gep_293" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$nopt_292", i32 0, i32 1
  %"$n_load_294" = load %Int32, %Int32* %"$n_gep_293", align 4
  %n = alloca %Int32, align 8
  store %Int32 %"$n_load_294", %Int32* %n, align 4
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 1, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$Some_291"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$Some_291"
  %"$consume_299" = sub i64 %"$gasrem_295", 1
  store i64 %"$consume_299", i64* @_gasrem, align 8
  %"$IncrementN__origin_300" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$IncrementN__origin_300", align 1
  %"$IncrementN__sender_301" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$IncrementN__sender_301", align 1
  %"$n_302" = load %Int32, %Int32* %n, align 4
  call void @"$IncrementN_200"(%Uint128 %_amount, [20 x i8]* %"$IncrementN__origin_300", [20 x i8]* %"$IncrementN__sender_301", %Int32 %"$n_302")
  br label %"$matchsucc_287"

"$None_303":                                      ; preds = %"$have_gas_285"
  %"$nopt_304" = bitcast %TName_Option_Int32* %nopt to %CName_None_Int32*
  br label %"$matchsucc_287"

"$empty_default_290":                             ; preds = %"$have_gas_285"
  br label %"$matchsucc_287"

"$matchsucc_287":                                 ; preds = %"$None_303", %"$have_gas_298", %"$empty_default_290"
  ret void
}

define void @IncrementNOpt(i8* %0) {
entry:
  %"$_amount_306" = getelementptr i8, i8* %0, i32 0
  %"$_amount_307" = bitcast i8* %"$_amount_306" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_307", align 8
  %"$_origin_308" = getelementptr i8, i8* %0, i32 16
  %"$_origin_309" = bitcast i8* %"$_origin_308" to [20 x i8]*
  %"$_sender_310" = getelementptr i8, i8* %0, i32 36
  %"$_sender_311" = bitcast i8* %"$_sender_310" to [20 x i8]*
  %"$nopt_312" = getelementptr i8, i8* %0, i32 56
  %"$nopt_313" = bitcast i8* %"$nopt_312" to %TName_Option_Int32**
  %nopt = load %TName_Option_Int32*, %TName_Option_Int32** %"$nopt_313", align 8
  call void @"$IncrementNOpt_279"(%Uint128 %_amount, [20 x i8]* %"$_origin_309", [20 x i8]* %"$_sender_311", %TName_Option_Int32* %nopt)
  ret void
}
