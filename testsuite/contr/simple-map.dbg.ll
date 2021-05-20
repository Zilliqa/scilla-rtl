

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
%"$ParamDescr_293" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_294" = type { %ParamDescrString, i32, %"$ParamDescr_293"* }
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
@"$access_count_154" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_173" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_189" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_237" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_255" = unnamed_addr constant [13 x i8] c"access_count\00"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_28", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_Addr_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Bnum_24", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_38", %_TyDescrTy_Typ* @"$TyDescr_Exception_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_Map_40", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_295" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_296" = unnamed_addr constant [13 x i8] c"_this_address"
@_contract_parameters = constant [2 x %"$ParamDescr_293"] [%"$ParamDescr_293" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_295", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_8" }, %"$ParamDescr_293" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_296", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34" }]
@_contract_parameters_length = constant i32 2
@"$tpname__amount_297" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_298" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_299" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Increment_300" = unnamed_addr constant [3 x %"$ParamDescr_293"] [%"$ParamDescr_293" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_297", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }, %"$ParamDescr_293" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_298", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_293" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_299", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_Increment_301" = unnamed_addr constant [9 x i8] c"Increment"
@"$tpname__amount_302" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_303" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_304" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_nopt_305" = unnamed_addr constant [4 x i8] c"nopt"
@"$tparams_IncrementNOpt_306" = unnamed_addr constant [4 x %"$ParamDescr_293"] [%"$ParamDescr_293" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_302", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }, %"$ParamDescr_293" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_303", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_293" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_304", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_293" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_nopt_305", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_38" }]
@"$tname_IncrementNOpt_307" = unnamed_addr constant [13 x i8] c"IncrementNOpt"
@_transition_parameters = constant [2 x %"$TransDescr_294"] [%"$TransDescr_294" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_Increment_301", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_293"* getelementptr inbounds ([3 x %"$ParamDescr_293"], [3 x %"$ParamDescr_293"]* @"$tparams_Increment_300", i32 0, i32 0) }, %"$TransDescr_294" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$tname_IncrementNOpt_307", i32 0, i32 0), i32 13 }, i32 4, %"$ParamDescr_293"* getelementptr inbounds ([4 x %"$ParamDescr_293"], [4 x %"$ParamDescr_293"]* @"$tparams_IncrementNOpt_306", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define internal %Int32 @"$fundef_1"(%"$$fundef_1_env_58"* %0, %Int32 %1) !dbg !4 {
entry:
  %"$$fundef_1_env_simple-map.one_59" = getelementptr inbounds %"$$fundef_1_env_58", %"$$fundef_1_env_58"* %0, i32 0, i32 0
  %"$simple-map.one_envload_60" = load %Int32, %Int32* %"$$fundef_1_env_simple-map.one_59", align 4
  %simple-map.one = alloca %Int32, align 8
  store %Int32 %"$simple-map.one_envload_60", %Int32* %simple-map.one, align 4
  %"$retval_2" = alloca %Int32, align 8
  %"$simple-map.one_61" = load %Int32, %Int32* %simple-map.one, align 4
  %"$add_call_62" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %"$simple-map.one_61")
  store %Int32 %"$add_call_62", %Int32* %"$retval_2", align 4, !dbg !8
  %"$$retval_2_63" = load %Int32, %Int32* %"$retval_2", align 4
  ret %Int32 %"$$retval_2_63"
}

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() !dbg !9 {
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
  store %Int32 { i32 1 }, %Int32* @simple-map.one, align 4, !dbg !11
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
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_1_cloval_77", { %Int32 (i8*, %Int32)*, i8* }* @simple-map.inc, align 8, !dbg !12
  ret void
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_state() !dbg !13 {
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
  store %Map_ByStr20_Int32* %"$Emp_87", %Map_ByStr20_Int32** %"$access_count_3", align 8, !dbg !14
  %"$execptr_load_88" = load i8*, i8** @_execptr, align 8
  %"$$access_count_3_90" = load %Map_ByStr20_Int32*, %Map_ByStr20_Int32** %"$access_count_3", align 8
  %"$update_value_91" = bitcast %Map_ByStr20_Int32* %"$$access_count_3_90" to i8*
  call void @_update_field(i8* %"$execptr_load_88", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_89", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 0, i8* null, i8* %"$update_value_91"), !dbg !14
  ret void
}

declare i8* @_new_empty_map(i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$Increment_92"(%Uint128 %_amount, [20 x i8]* %"$_origin_93", [20 x i8]* %"$_sender_94") !dbg !15 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_93", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_94", align 1
  %cur = alloca %TName_Option_Int32*, align 8
  %"$indices_buf_95_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_95_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_95_salloc_load", i64 20)
  %"$indices_buf_95_salloc" = bitcast i8* %"$indices_buf_95_salloc_salloc" to [20 x i8]*
  %"$indices_buf_95" = bitcast [20 x i8]* %"$indices_buf_95_salloc" to i8*
  %"$indices_gep_96" = getelementptr i8, i8* %"$indices_buf_95", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_96" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_98" = load i8*, i8** @_execptr, align 8
  %"$cur_call_99" = call i8* @_fetch_field(i8* %"$execptr_load_98", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_97", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_95", i32 1), !dbg !16
  %"$cur_100" = bitcast i8* %"$cur_call_99" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_100", %TName_Option_Int32** %cur, align 8
  %"$cur_101" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$$cur_101_102" = bitcast %TName_Option_Int32* %"$cur_101" to i8*
  %"$_literal_cost_call_103" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_38", i8* %"$$cur_101_102")
  %"$gasadd_104" = add i64 %"$_literal_cost_call_103", 0
  %"$gasadd_105" = add i64 %"$gasadd_104", 1
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 %"$gasadd_105", %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %entry
  %"$consume_110" = sub i64 %"$gasrem_106", %"$gasadd_105"
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 2, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_109"
  %"$consume_115" = sub i64 %"$gasrem_111", 2
  store i64 %"$consume_115", i64* @_gasrem, align 8
  %"$cur_117" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$cur_tag_118" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_117", i32 0, i32 0
  %"$cur_tag_119" = load i8, i8* %"$cur_tag_118", align 1
  switch i8 %"$cur_tag_119", label %"$empty_default_120" [
    i8 0, label %"$Some_121"
    i8 1, label %"$None_158"
  ], !dbg !17

"$Some_121":                                      ; preds = %"$have_gas_114"
  %"$cur_122" = bitcast %TName_Option_Int32* %"$cur_117" to %CName_Some_Int32*
  %"$i_gep_123" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_122", i32 0, i32 1
  %"$i_load_124" = load %Int32, %Int32* %"$i_gep_123", align 4
  %i = alloca %Int32, align 8
  store %Int32 %"$i_load_124", %Int32* %i, align 4
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$Some_121"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$Some_121"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %j = alloca %Int32, align 8
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  %"$simple-map.inc_0" = alloca %Int32, align 8
  %"$simple-map.inc_135" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* @simple-map.inc, align 8
  %"$simple-map.inc_fptr_136" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$simple-map.inc_135", 0
  %"$simple-map.inc_envptr_137" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$simple-map.inc_135", 1
  %"$i_138" = load %Int32, %Int32* %i, align 4
  %"$simple-map.inc_call_139" = call %Int32 %"$simple-map.inc_fptr_136"(i8* %"$simple-map.inc_envptr_137", %Int32 %"$i_138"), !dbg !18
  store %Int32 %"$simple-map.inc_call_139", %Int32* %"$simple-map.inc_0", align 4, !dbg !18
  %"$$simple-map.inc_0_140" = load %Int32, %Int32* %"$simple-map.inc_0", align 4
  store %Int32 %"$$simple-map.inc_0_140", %Int32* %j, align 4, !dbg !18
  %"$_literal_cost_j_141" = alloca %Int32, align 8
  %"$j_142" = load %Int32, %Int32* %j, align 4
  store %Int32 %"$j_142", %Int32* %"$_literal_cost_j_141", align 4
  %"$$_literal_cost_j_141_143" = bitcast %Int32* %"$_literal_cost_j_141" to i8*
  %"$_literal_cost_call_144" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_j_141_143")
  %"$gasadd_145" = add i64 %"$_literal_cost_call_144", 1
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 %"$gasadd_145", %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_133"
  %"$consume_150" = sub i64 %"$gasrem_146", %"$gasadd_145"
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %"$indices_buf_151_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_151_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_151_salloc_load", i64 20)
  %"$indices_buf_151_salloc" = bitcast i8* %"$indices_buf_151_salloc_salloc" to [20 x i8]*
  %"$indices_buf_151" = bitcast [20 x i8]* %"$indices_buf_151_salloc" to i8*
  %"$indices_gep_152" = getelementptr i8, i8* %"$indices_buf_151", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_152" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_153" = load i8*, i8** @_execptr, align 8
  %"$j_155" = load %Int32, %Int32* %j, align 4
  %"$update_value_156" = alloca %Int32, align 8
  store %Int32 %"$j_155", %Int32* %"$update_value_156", align 4
  %"$update_value_157" = bitcast %Int32* %"$update_value_156" to i8*
  call void @_update_field(i8* %"$execptr_load_153", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_154", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_151", i8* %"$update_value_157"), !dbg !21
  br label %"$matchsucc_116"

"$None_158":                                      ; preds = %"$have_gas_114"
  %"$cur_159" = bitcast %TName_Option_Int32* %"$cur_117" to %CName_None_Int32*
  %"$_literal_cost_simple-map.one_160" = alloca %Int32, align 8
  %"$simple-map.one_161" = load %Int32, %Int32* @simple-map.one, align 4
  store %Int32 %"$simple-map.one_161", %Int32* %"$_literal_cost_simple-map.one_160", align 4
  %"$$_literal_cost_simple-map.one_160_162" = bitcast %Int32* %"$_literal_cost_simple-map.one_160" to i8*
  %"$_literal_cost_call_163" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_simple-map.one_160_162")
  %"$gasadd_164" = add i64 %"$_literal_cost_call_163", 1
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 %"$gasadd_164", %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$None_158"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$None_158"
  %"$consume_169" = sub i64 %"$gasrem_165", %"$gasadd_164"
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %"$indices_buf_170_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_170_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_170_salloc_load", i64 20)
  %"$indices_buf_170_salloc" = bitcast i8* %"$indices_buf_170_salloc_salloc" to [20 x i8]*
  %"$indices_buf_170" = bitcast [20 x i8]* %"$indices_buf_170_salloc" to i8*
  %"$indices_gep_171" = getelementptr i8, i8* %"$indices_buf_170", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_171" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_172" = load i8*, i8** @_execptr, align 8
  %"$simple-map.one_174" = load %Int32, %Int32* @simple-map.one, align 4
  %"$update_value_175" = alloca %Int32, align 8
  store %Int32 %"$simple-map.one_174", %Int32* %"$update_value_175", align 4
  %"$update_value_176" = bitcast %Int32* %"$update_value_175" to i8*
  call void @_update_field(i8* %"$execptr_load_172", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_173", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_170", i8* %"$update_value_176"), !dbg !22
  br label %"$matchsucc_116"

"$empty_default_120":                             ; preds = %"$have_gas_114"
  br label %"$matchsucc_116"

"$matchsucc_116":                                 ; preds = %"$have_gas_168", %"$have_gas_149", %"$empty_default_120"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @Increment(i8* %0) !dbg !24 {
entry:
  %"$_amount_178" = getelementptr i8, i8* %0, i32 0
  %"$_amount_179" = bitcast i8* %"$_amount_178" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_179", align 8
  %"$_origin_180" = getelementptr i8, i8* %0, i32 16
  %"$_origin_181" = bitcast i8* %"$_origin_180" to [20 x i8]*
  %"$_sender_182" = getelementptr i8, i8* %0, i32 36
  %"$_sender_183" = bitcast i8* %"$_sender_182" to [20 x i8]*
  call void @"$Increment_92"(%Uint128 %_amount, [20 x i8]* %"$_origin_181", [20 x i8]* %"$_sender_183"), !dbg !25
  ret void
}

define internal void @"$IncrementN_184"(%Uint128 %_amount, [20 x i8]* %"$_origin_185", [20 x i8]* %"$_sender_186", %Int32 %n) !dbg !26 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_185", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_186", align 1
  %cur = alloca %TName_Option_Int32*, align 8
  %"$indices_buf_187_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_187_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_187_salloc_load", i64 20)
  %"$indices_buf_187_salloc" = bitcast i8* %"$indices_buf_187_salloc_salloc" to [20 x i8]*
  %"$indices_buf_187" = bitcast [20 x i8]* %"$indices_buf_187_salloc" to i8*
  %"$indices_gep_188" = getelementptr i8, i8* %"$indices_buf_187", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_188" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_190" = load i8*, i8** @_execptr, align 8
  %"$cur_call_191" = call i8* @_fetch_field(i8* %"$execptr_load_190", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_189", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_187", i32 1), !dbg !27
  %"$cur_192" = bitcast i8* %"$cur_call_191" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_192", %TName_Option_Int32** %cur, align 8
  %"$cur_193" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$$cur_193_194" = bitcast %TName_Option_Int32* %"$cur_193" to i8*
  %"$_literal_cost_call_195" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_38", i8* %"$$cur_193_194")
  %"$gasadd_196" = add i64 %"$_literal_cost_call_195", 0
  %"$gasadd_197" = add i64 %"$gasadd_196", 1
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 %"$gasadd_197", %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %entry
  %"$consume_202" = sub i64 %"$gasrem_198", %"$gasadd_197"
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 2, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %"$have_gas_201"
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %"$have_gas_201"
  %"$consume_207" = sub i64 %"$gasrem_203", 2
  store i64 %"$consume_207", i64* @_gasrem, align 8
  %"$cur_209" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$cur_tag_210" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_209", i32 0, i32 0
  %"$cur_tag_211" = load i8, i8* %"$cur_tag_210", align 1
  switch i8 %"$cur_tag_211", label %"$empty_default_212" [
    i8 0, label %"$Some_213"
    i8 1, label %"$None_241"
  ], !dbg !28

"$Some_213":                                      ; preds = %"$have_gas_206"
  %"$cur_214" = bitcast %TName_Option_Int32* %"$cur_209" to %CName_Some_Int32*
  %"$i_gep_215" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_214", i32 0, i32 1
  %"$i_load_216" = load %Int32, %Int32* %"$i_gep_215", align 4
  %i = alloca %Int32, align 8
  store %Int32 %"$i_load_216", %Int32* %i, align 4
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$Some_213"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$Some_213"
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %j = alloca %Int32, align 8
  %"$i_222" = load %Int32, %Int32* %i, align 4
  %"$add_call_223" = call %Int32 @_add_Int32(%Int32 %"$i_222", %Int32 %n)
  store %Int32 %"$add_call_223", %Int32* %j, align 4, !dbg !29
  %"$_literal_cost_j_224" = alloca %Int32, align 8
  %"$j_225" = load %Int32, %Int32* %j, align 4
  store %Int32 %"$j_225", %Int32* %"$_literal_cost_j_224", align 4
  %"$$_literal_cost_j_224_226" = bitcast %Int32* %"$_literal_cost_j_224" to i8*
  %"$_literal_cost_call_227" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_j_224_226")
  %"$gasadd_228" = add i64 %"$_literal_cost_call_227", 1
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 %"$gasadd_228", %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_220"
  %"$consume_233" = sub i64 %"$gasrem_229", %"$gasadd_228"
  store i64 %"$consume_233", i64* @_gasrem, align 8
  %"$indices_buf_234_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_234_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_234_salloc_load", i64 20)
  %"$indices_buf_234_salloc" = bitcast i8* %"$indices_buf_234_salloc_salloc" to [20 x i8]*
  %"$indices_buf_234" = bitcast [20 x i8]* %"$indices_buf_234_salloc" to i8*
  %"$indices_gep_235" = getelementptr i8, i8* %"$indices_buf_234", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_235" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_236" = load i8*, i8** @_execptr, align 8
  %"$j_238" = load %Int32, %Int32* %j, align 4
  %"$update_value_239" = alloca %Int32, align 8
  store %Int32 %"$j_238", %Int32* %"$update_value_239", align 4
  %"$update_value_240" = bitcast %Int32* %"$update_value_239" to i8*
  call void @_update_field(i8* %"$execptr_load_236", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_237", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_234", i8* %"$update_value_240"), !dbg !32
  br label %"$matchsucc_208"

"$None_241":                                      ; preds = %"$have_gas_206"
  %"$cur_242" = bitcast %TName_Option_Int32* %"$cur_209" to %CName_None_Int32*
  %"$_literal_cost_n_243" = alloca %Int32, align 8
  store %Int32 %n, %Int32* %"$_literal_cost_n_243", align 4
  %"$$_literal_cost_n_243_244" = bitcast %Int32* %"$_literal_cost_n_243" to i8*
  %"$_literal_cost_call_245" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_n_243_244")
  %"$gasadd_246" = add i64 %"$_literal_cost_call_245", 1
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 %"$gasadd_246", %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$None_241"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$None_241"
  %"$consume_251" = sub i64 %"$gasrem_247", %"$gasadd_246"
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %"$indices_buf_252_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_252_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_252_salloc_load", i64 20)
  %"$indices_buf_252_salloc" = bitcast i8* %"$indices_buf_252_salloc_salloc" to [20 x i8]*
  %"$indices_buf_252" = bitcast [20 x i8]* %"$indices_buf_252_salloc" to i8*
  %"$indices_gep_253" = getelementptr i8, i8* %"$indices_buf_252", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_253" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_254" = load i8*, i8** @_execptr, align 8
  %"$update_value_256" = alloca %Int32, align 8
  store %Int32 %n, %Int32* %"$update_value_256", align 4
  %"$update_value_257" = bitcast %Int32* %"$update_value_256" to i8*
  call void @_update_field(i8* %"$execptr_load_254", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_255", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_252", i8* %"$update_value_257"), !dbg !33
  br label %"$matchsucc_208"

"$empty_default_212":                             ; preds = %"$have_gas_206"
  br label %"$matchsucc_208"

"$matchsucc_208":                                 ; preds = %"$have_gas_250", %"$have_gas_232", %"$empty_default_212"
  ret void
}

define internal void @"$IncrementNOpt_258"(%Uint128 %_amount, [20 x i8]* %"$_origin_259", [20 x i8]* %"$_sender_260", %TName_Option_Int32* %nopt) !dbg !35 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_259", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_260", align 1
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 2, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %entry
  %"$consume_265" = sub i64 %"$gasrem_261", 2
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %"$nopt_tag_267" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %nopt, i32 0, i32 0
  %"$nopt_tag_268" = load i8, i8* %"$nopt_tag_267", align 1
  switch i8 %"$nopt_tag_268", label %"$empty_default_269" [
    i8 0, label %"$Some_270"
    i8 1, label %"$None_282"
  ], !dbg !36

"$Some_270":                                      ; preds = %"$have_gas_264"
  %"$nopt_271" = bitcast %TName_Option_Int32* %nopt to %CName_Some_Int32*
  %"$n_gep_272" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$nopt_271", i32 0, i32 1
  %"$n_load_273" = load %Int32, %Int32* %"$n_gep_272", align 4
  %n = alloca %Int32, align 8
  store %Int32 %"$n_load_273", %Int32* %n, align 4
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 1, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$Some_270"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$Some_270"
  %"$consume_278" = sub i64 %"$gasrem_274", 1
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %"$IncrementN__origin_279" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$IncrementN__origin_279", align 1
  %"$IncrementN__sender_280" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$IncrementN__sender_280", align 1
  %"$n_281" = load %Int32, %Int32* %n, align 4
  call void @"$IncrementN_184"(%Uint128 %_amount, [20 x i8]* %"$IncrementN__origin_279", [20 x i8]* %"$IncrementN__sender_280", %Int32 %"$n_281"), !dbg !37
  br label %"$matchsucc_266"

"$None_282":                                      ; preds = %"$have_gas_264"
  %"$nopt_283" = bitcast %TName_Option_Int32* %nopt to %CName_None_Int32*
  br label %"$matchsucc_266"

"$empty_default_269":                             ; preds = %"$have_gas_264"
  br label %"$matchsucc_266"

"$matchsucc_266":                                 ; preds = %"$None_282", %"$have_gas_277", %"$empty_default_269"
  ret void
}

define void @IncrementNOpt(i8* %0) !dbg !40 {
entry:
  %"$_amount_285" = getelementptr i8, i8* %0, i32 0
  %"$_amount_286" = bitcast i8* %"$_amount_285" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_286", align 8
  %"$_origin_287" = getelementptr i8, i8* %0, i32 16
  %"$_origin_288" = bitcast i8* %"$_origin_287" to [20 x i8]*
  %"$_sender_289" = getelementptr i8, i8* %0, i32 36
  %"$_sender_290" = bitcast i8* %"$_sender_289" to [20 x i8]*
  %"$nopt_291" = getelementptr i8, i8* %0, i32 56
  %"$nopt_292" = bitcast i8* %"$nopt_291" to %TName_Option_Int32**
  %nopt = load %TName_Option_Int32*, %TName_Option_Int32** %"$nopt_292", align 8
  call void @"$IncrementNOpt_258"(%Uint128 %_amount, [20 x i8]* %"$_origin_288", [20 x i8]* %"$_sender_290", %TName_Option_Int32* %nopt), !dbg !41
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
