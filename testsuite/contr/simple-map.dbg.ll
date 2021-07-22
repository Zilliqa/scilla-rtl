

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
%"$ParamDescr_303" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_304" = type { %ParamDescrString, i32, %"$ParamDescr_303"* }
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
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$access_count_94" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_102" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_159" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_178" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_194" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_247" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_265" = unnamed_addr constant [13 x i8] c"access_count\00"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_28", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_Addr_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Bnum_24", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_38", %_TyDescrTy_Typ* @"$TyDescr_Exception_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_Map_40", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_305" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_306" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_307" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_303"] [%"$ParamDescr_303" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_305", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_8" }, %"$ParamDescr_303" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_306", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34" }, %"$ParamDescr_303" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_307", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_24" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_308" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_309" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_310" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Increment_311" = unnamed_addr constant [3 x %"$ParamDescr_303"] [%"$ParamDescr_303" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_308", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }, %"$ParamDescr_303" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_309", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_303" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_310", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_Increment_312" = unnamed_addr constant [9 x i8] c"Increment"
@"$tpname__amount_313" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_314" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_315" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_nopt_316" = unnamed_addr constant [4 x i8] c"nopt"
@"$tparams_IncrementNOpt_317" = unnamed_addr constant [4 x %"$ParamDescr_303"] [%"$ParamDescr_303" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_313", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }, %"$ParamDescr_303" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_314", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_303" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_315", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_303" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_nopt_316", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_38" }]
@"$tname_IncrementNOpt_318" = unnamed_addr constant [13 x i8] c"IncrementNOpt"
@_transition_parameters = constant [2 x %"$TransDescr_304"] [%"$TransDescr_304" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_Increment_312", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_303"* getelementptr inbounds ([3 x %"$ParamDescr_303"], [3 x %"$ParamDescr_303"]* @"$tparams_Increment_311", i32 0, i32 0) }, %"$TransDescr_304" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$tname_IncrementNOpt_318", i32 0, i32 0), i32 13 }, i32 4, %"$ParamDescr_303"* getelementptr inbounds ([4 x %"$ParamDescr_303"], [4 x %"$ParamDescr_303"]* @"$tparams_IncrementNOpt_317", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define internal %Int32 @"$fundef_1"(%"$$fundef_1_env_58"* %0, %Int32 %1) !dbg !4 {
entry:
  %"$$fundef_1_env_simple-map.one_59" = getelementptr inbounds %"$$fundef_1_env_58", %"$$fundef_1_env_58"* %0, i32 0, i32 0
  %"$simple-map.one_envload_60" = load %Int32, %Int32* %"$$fundef_1_env_simple-map.one_59", align 4
  %simple-map.one = alloca %Int32, align 8
  store %Int32 %"$simple-map.one_envload_60", %Int32* %simple-map.one, align 4
  %"$retval_2" = alloca %Int32, align 8
  %"$gasrem_61" = load i64, i64* @_gasrem, align 8
  %"$gascmp_62" = icmp ugt i64 4, %"$gasrem_61"
  br i1 %"$gascmp_62", label %"$out_of_gas_63", label %"$have_gas_64"

"$out_of_gas_63":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_64"

"$have_gas_64":                                   ; preds = %"$out_of_gas_63", %entry
  %"$consume_65" = sub i64 %"$gasrem_61", 4
  store i64 %"$consume_65", i64* @_gasrem, align 8
  %"$simple-map.one_66" = load %Int32, %Int32* %simple-map.one, align 4
  %"$add_call_67" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %"$simple-map.one_66"), !dbg !8
  store %Int32 %"$add_call_67", %Int32* %"$retval_2", align 4, !dbg !8
  %"$$retval_2_68" = load %Int32, %Int32* %"$retval_2", align 4
  ret %Int32 %"$$retval_2_68"
}

declare void @_out_of_gas()

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() !dbg !9 {
entry:
  %"$gasrem_69" = load i64, i64* @_gasrem, align 8
  %"$gascmp_70" = icmp ugt i64 1, %"$gasrem_69"
  br i1 %"$gascmp_70", label %"$out_of_gas_71", label %"$have_gas_72"

"$out_of_gas_71":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_72"

"$have_gas_72":                                   ; preds = %"$out_of_gas_71", %entry
  %"$consume_73" = sub i64 %"$gasrem_69", 1
  store i64 %"$consume_73", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* @simple-map.one, align 4, !dbg !11
  %"$gasrem_74" = load i64, i64* @_gasrem, align 8
  %"$gascmp_75" = icmp ugt i64 1, %"$gasrem_74"
  br i1 %"$gascmp_75", label %"$out_of_gas_76", label %"$have_gas_77"

"$out_of_gas_76":                                 ; preds = %"$have_gas_72"
  call void @_out_of_gas()
  br label %"$have_gas_77"

"$have_gas_77":                                   ; preds = %"$out_of_gas_76", %"$have_gas_72"
  %"$consume_78" = sub i64 %"$gasrem_74", 1
  store i64 %"$consume_78", i64* @_gasrem, align 8
  %"$$fundef_1_envp_79_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_1_envp_79_salloc" = call i8* @_salloc(i8* %"$$fundef_1_envp_79_load", i64 4)
  %"$$fundef_1_envp_79" = bitcast i8* %"$$fundef_1_envp_79_salloc" to %"$$fundef_1_env_58"*
  %"$$fundef_1_env_voidp_81" = bitcast %"$$fundef_1_env_58"* %"$$fundef_1_envp_79" to i8*
  %"$$fundef_1_cloval_82" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_1_env_58"*, %Int32)* @"$fundef_1" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_1_env_voidp_81", 1
  %"$$fundef_1_env_simple-map.one_83" = getelementptr inbounds %"$$fundef_1_env_58", %"$$fundef_1_env_58"* %"$$fundef_1_envp_79", i32 0, i32 0
  %"$simple-map.one_84" = load %Int32, %Int32* @simple-map.one, align 4
  store %Int32 %"$simple-map.one_84", %Int32* %"$$fundef_1_env_simple-map.one_83", align 4
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_1_cloval_82", { %Int32 (i8*, %Int32)*, i8* }* @simple-map.inc, align 8, !dbg !12
  ret void
}

declare i8* @_salloc(i8*, i64)

define void @_init_state() !dbg !13 {
entry:
  %"$access_count_3" = alloca %Map_ByStr20_Int32*, align 8
  %"$gasrem_85" = load i64, i64* @_gasrem, align 8
  %"$gascmp_86" = icmp ugt i64 1, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %entry
  %"$consume_89" = sub i64 %"$gasrem_85", 1
  store i64 %"$consume_89", i64* @_gasrem, align 8
  %"$execptr_load_90" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_91" = call i8* @_new_empty_map(i8* %"$execptr_load_90")
  %"$_new_empty_map_92" = bitcast i8* %"$_new_empty_map_call_91" to %Map_ByStr20_Int32*
  store %Map_ByStr20_Int32* %"$_new_empty_map_92", %Map_ByStr20_Int32** %"$access_count_3", align 8, !dbg !14
  %"$execptr_load_93" = load i8*, i8** @_execptr, align 8
  %"$$access_count_3_95" = load %Map_ByStr20_Int32*, %Map_ByStr20_Int32** %"$access_count_3", align 8
  %"$update_value_96" = bitcast %Map_ByStr20_Int32* %"$$access_count_3_95" to i8*
  call void @_update_field(i8* %"$execptr_load_93", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_94", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 0, i8* null, i8* %"$update_value_96"), !dbg !14
  ret void
}

declare i8* @_new_empty_map(i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$Increment_97"(%Uint128 %_amount, [20 x i8]* %"$_origin_98", [20 x i8]* %"$_sender_99") !dbg !15 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_98", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_99", align 1
  %cur = alloca %TName_Option_Int32*, align 8
  %"$indices_buf_100_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_100_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_100_salloc_load", i64 20)
  %"$indices_buf_100_salloc" = bitcast i8* %"$indices_buf_100_salloc_salloc" to [20 x i8]*
  %"$indices_buf_100" = bitcast [20 x i8]* %"$indices_buf_100_salloc" to i8*
  %"$indices_gep_101" = getelementptr i8, i8* %"$indices_buf_100", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_101" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_103" = load i8*, i8** @_execptr, align 8
  %"$cur_call_104" = call i8* @_fetch_field(i8* %"$execptr_load_103", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_102", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_100", i32 1), !dbg !16
  %"$cur_105" = bitcast i8* %"$cur_call_104" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_105", %TName_Option_Int32** %cur, align 8
  %"$cur_106" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$$cur_106_107" = bitcast %TName_Option_Int32* %"$cur_106" to i8*
  %"$_literal_cost_call_108" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_38", i8* %"$$cur_106_107")
  %"$gasadd_109" = add i64 %"$_literal_cost_call_108", 0
  %"$gasadd_110" = add i64 %"$gasadd_109", 1
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 %"$gasadd_110", %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %entry
  %"$consume_115" = sub i64 %"$gasrem_111", %"$gasadd_110"
  store i64 %"$consume_115", i64* @_gasrem, align 8
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 2, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$have_gas_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 2
  store i64 %"$consume_120", i64* @_gasrem, align 8
  %"$cur_122" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$cur_tag_123" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_122", i32 0, i32 0
  %"$cur_tag_124" = load i8, i8* %"$cur_tag_123", align 1
  switch i8 %"$cur_tag_124", label %"$empty_default_125" [
    i8 0, label %"$Some_126"
    i8 1, label %"$None_163"
  ], !dbg !17

"$Some_126":                                      ; preds = %"$have_gas_119"
  %"$cur_127" = bitcast %TName_Option_Int32* %"$cur_122" to %CName_Some_Int32*
  %"$i_gep_128" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_127", i32 0, i32 1
  %"$i_load_129" = load %Int32, %Int32* %"$i_gep_128", align 4
  %i = alloca %Int32, align 8
  store %Int32 %"$i_load_129", %Int32* %i, align 4
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$Some_126"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$Some_126"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  %j = alloca %Int32, align 8
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %"$simple-map.inc_0" = alloca %Int32, align 8
  %"$simple-map.inc_140" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* @simple-map.inc, align 8
  %"$simple-map.inc_fptr_141" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$simple-map.inc_140", 0
  %"$simple-map.inc_envptr_142" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$simple-map.inc_140", 1
  %"$i_143" = load %Int32, %Int32* %i, align 4
  %"$simple-map.inc_call_144" = call %Int32 %"$simple-map.inc_fptr_141"(i8* %"$simple-map.inc_envptr_142", %Int32 %"$i_143"), !dbg !18
  store %Int32 %"$simple-map.inc_call_144", %Int32* %"$simple-map.inc_0", align 4, !dbg !18
  %"$$simple-map.inc_0_145" = load %Int32, %Int32* %"$simple-map.inc_0", align 4
  store %Int32 %"$$simple-map.inc_0_145", %Int32* %j, align 4, !dbg !18
  %"$_literal_cost_j_146" = alloca %Int32, align 8
  %"$j_147" = load %Int32, %Int32* %j, align 4
  store %Int32 %"$j_147", %Int32* %"$_literal_cost_j_146", align 4
  %"$$_literal_cost_j_146_148" = bitcast %Int32* %"$_literal_cost_j_146" to i8*
  %"$_literal_cost_call_149" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_j_146_148")
  %"$gasadd_150" = add i64 %"$_literal_cost_call_149", 1
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 %"$gasadd_150", %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_138"
  %"$consume_155" = sub i64 %"$gasrem_151", %"$gasadd_150"
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %"$indices_buf_156_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_156_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_156_salloc_load", i64 20)
  %"$indices_buf_156_salloc" = bitcast i8* %"$indices_buf_156_salloc_salloc" to [20 x i8]*
  %"$indices_buf_156" = bitcast [20 x i8]* %"$indices_buf_156_salloc" to i8*
  %"$indices_gep_157" = getelementptr i8, i8* %"$indices_buf_156", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_157" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_158" = load i8*, i8** @_execptr, align 8
  %"$j_160" = load %Int32, %Int32* %j, align 4
  %"$update_value_161" = alloca %Int32, align 8
  store %Int32 %"$j_160", %Int32* %"$update_value_161", align 4
  %"$update_value_162" = bitcast %Int32* %"$update_value_161" to i8*
  call void @_update_field(i8* %"$execptr_load_158", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_159", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_156", i8* %"$update_value_162"), !dbg !21
  br label %"$matchsucc_121"

"$None_163":                                      ; preds = %"$have_gas_119"
  %"$cur_164" = bitcast %TName_Option_Int32* %"$cur_122" to %CName_None_Int32*
  %"$_literal_cost_simple-map.one_165" = alloca %Int32, align 8
  %"$simple-map.one_166" = load %Int32, %Int32* @simple-map.one, align 4
  store %Int32 %"$simple-map.one_166", %Int32* %"$_literal_cost_simple-map.one_165", align 4
  %"$$_literal_cost_simple-map.one_165_167" = bitcast %Int32* %"$_literal_cost_simple-map.one_165" to i8*
  %"$_literal_cost_call_168" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_simple-map.one_165_167")
  %"$gasadd_169" = add i64 %"$_literal_cost_call_168", 1
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 %"$gasadd_169", %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$None_163"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$None_163"
  %"$consume_174" = sub i64 %"$gasrem_170", %"$gasadd_169"
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %"$indices_buf_175_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_175_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_175_salloc_load", i64 20)
  %"$indices_buf_175_salloc" = bitcast i8* %"$indices_buf_175_salloc_salloc" to [20 x i8]*
  %"$indices_buf_175" = bitcast [20 x i8]* %"$indices_buf_175_salloc" to i8*
  %"$indices_gep_176" = getelementptr i8, i8* %"$indices_buf_175", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_176" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_177" = load i8*, i8** @_execptr, align 8
  %"$simple-map.one_179" = load %Int32, %Int32* @simple-map.one, align 4
  %"$update_value_180" = alloca %Int32, align 8
  store %Int32 %"$simple-map.one_179", %Int32* %"$update_value_180", align 4
  %"$update_value_181" = bitcast %Int32* %"$update_value_180" to i8*
  call void @_update_field(i8* %"$execptr_load_177", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_178", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_175", i8* %"$update_value_181"), !dbg !22
  br label %"$matchsucc_121"

"$empty_default_125":                             ; preds = %"$have_gas_119"
  br label %"$matchsucc_121"

"$matchsucc_121":                                 ; preds = %"$have_gas_173", %"$have_gas_154", %"$empty_default_125"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @Increment(i8* %0) !dbg !24 {
entry:
  %"$_amount_183" = getelementptr i8, i8* %0, i32 0
  %"$_amount_184" = bitcast i8* %"$_amount_183" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_184", align 8
  %"$_origin_185" = getelementptr i8, i8* %0, i32 16
  %"$_origin_186" = bitcast i8* %"$_origin_185" to [20 x i8]*
  %"$_sender_187" = getelementptr i8, i8* %0, i32 36
  %"$_sender_188" = bitcast i8* %"$_sender_187" to [20 x i8]*
  call void @"$Increment_97"(%Uint128 %_amount, [20 x i8]* %"$_origin_186", [20 x i8]* %"$_sender_188"), !dbg !25
  ret void
}

define internal void @"$IncrementN_189"(%Uint128 %_amount, [20 x i8]* %"$_origin_190", [20 x i8]* %"$_sender_191", %Int32 %n) !dbg !26 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_190", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_191", align 1
  %cur = alloca %TName_Option_Int32*, align 8
  %"$indices_buf_192_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_192_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_192_salloc_load", i64 20)
  %"$indices_buf_192_salloc" = bitcast i8* %"$indices_buf_192_salloc_salloc" to [20 x i8]*
  %"$indices_buf_192" = bitcast [20 x i8]* %"$indices_buf_192_salloc" to i8*
  %"$indices_gep_193" = getelementptr i8, i8* %"$indices_buf_192", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_193" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_195" = load i8*, i8** @_execptr, align 8
  %"$cur_call_196" = call i8* @_fetch_field(i8* %"$execptr_load_195", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_194", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_192", i32 1), !dbg !27
  %"$cur_197" = bitcast i8* %"$cur_call_196" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_197", %TName_Option_Int32** %cur, align 8
  %"$cur_198" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$$cur_198_199" = bitcast %TName_Option_Int32* %"$cur_198" to i8*
  %"$_literal_cost_call_200" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_38", i8* %"$$cur_198_199")
  %"$gasadd_201" = add i64 %"$_literal_cost_call_200", 0
  %"$gasadd_202" = add i64 %"$gasadd_201", 1
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 %"$gasadd_202", %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %entry
  %"$consume_207" = sub i64 %"$gasrem_203", %"$gasadd_202"
  store i64 %"$consume_207", i64* @_gasrem, align 8
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 2, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_206"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_206"
  %"$consume_212" = sub i64 %"$gasrem_208", 2
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %"$cur_214" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$cur_tag_215" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_214", i32 0, i32 0
  %"$cur_tag_216" = load i8, i8* %"$cur_tag_215", align 1
  switch i8 %"$cur_tag_216", label %"$empty_default_217" [
    i8 0, label %"$Some_218"
    i8 1, label %"$None_251"
  ], !dbg !28

"$Some_218":                                      ; preds = %"$have_gas_211"
  %"$cur_219" = bitcast %TName_Option_Int32* %"$cur_214" to %CName_Some_Int32*
  %"$i_gep_220" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_219", i32 0, i32 1
  %"$i_load_221" = load %Int32, %Int32* %"$i_gep_220", align 4
  %i = alloca %Int32, align 8
  store %Int32 %"$i_load_221", %Int32* %i, align 4
  %"$gasrem_222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_223" = icmp ugt i64 1, %"$gasrem_222"
  br i1 %"$gascmp_223", label %"$out_of_gas_224", label %"$have_gas_225"

"$out_of_gas_224":                                ; preds = %"$Some_218"
  call void @_out_of_gas()
  br label %"$have_gas_225"

"$have_gas_225":                                  ; preds = %"$out_of_gas_224", %"$Some_218"
  %"$consume_226" = sub i64 %"$gasrem_222", 1
  store i64 %"$consume_226", i64* @_gasrem, align 8
  %j = alloca %Int32, align 8
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 4, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %"$have_gas_225"
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %"$have_gas_225"
  %"$consume_231" = sub i64 %"$gasrem_227", 4
  store i64 %"$consume_231", i64* @_gasrem, align 8
  %"$i_232" = load %Int32, %Int32* %i, align 4
  %"$add_call_233" = call %Int32 @_add_Int32(%Int32 %"$i_232", %Int32 %n), !dbg !29
  store %Int32 %"$add_call_233", %Int32* %j, align 4, !dbg !29
  %"$_literal_cost_j_234" = alloca %Int32, align 8
  %"$j_235" = load %Int32, %Int32* %j, align 4
  store %Int32 %"$j_235", %Int32* %"$_literal_cost_j_234", align 4
  %"$$_literal_cost_j_234_236" = bitcast %Int32* %"$_literal_cost_j_234" to i8*
  %"$_literal_cost_call_237" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_j_234_236")
  %"$gasadd_238" = add i64 %"$_literal_cost_call_237", 1
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 %"$gasadd_238", %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %"$have_gas_230"
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %"$have_gas_230"
  %"$consume_243" = sub i64 %"$gasrem_239", %"$gasadd_238"
  store i64 %"$consume_243", i64* @_gasrem, align 8
  %"$indices_buf_244_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_244_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_244_salloc_load", i64 20)
  %"$indices_buf_244_salloc" = bitcast i8* %"$indices_buf_244_salloc_salloc" to [20 x i8]*
  %"$indices_buf_244" = bitcast [20 x i8]* %"$indices_buf_244_salloc" to i8*
  %"$indices_gep_245" = getelementptr i8, i8* %"$indices_buf_244", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_245" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_246" = load i8*, i8** @_execptr, align 8
  %"$j_248" = load %Int32, %Int32* %j, align 4
  %"$update_value_249" = alloca %Int32, align 8
  store %Int32 %"$j_248", %Int32* %"$update_value_249", align 4
  %"$update_value_250" = bitcast %Int32* %"$update_value_249" to i8*
  call void @_update_field(i8* %"$execptr_load_246", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_247", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_244", i8* %"$update_value_250"), !dbg !32
  br label %"$matchsucc_213"

"$None_251":                                      ; preds = %"$have_gas_211"
  %"$cur_252" = bitcast %TName_Option_Int32* %"$cur_214" to %CName_None_Int32*
  %"$_literal_cost_n_253" = alloca %Int32, align 8
  store %Int32 %n, %Int32* %"$_literal_cost_n_253", align 4
  %"$$_literal_cost_n_253_254" = bitcast %Int32* %"$_literal_cost_n_253" to i8*
  %"$_literal_cost_call_255" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_n_253_254")
  %"$gasadd_256" = add i64 %"$_literal_cost_call_255", 1
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 %"$gasadd_256", %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$None_251"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$None_251"
  %"$consume_261" = sub i64 %"$gasrem_257", %"$gasadd_256"
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %"$indices_buf_262_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_262_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_262_salloc_load", i64 20)
  %"$indices_buf_262_salloc" = bitcast i8* %"$indices_buf_262_salloc_salloc" to [20 x i8]*
  %"$indices_buf_262" = bitcast [20 x i8]* %"$indices_buf_262_salloc" to i8*
  %"$indices_gep_263" = getelementptr i8, i8* %"$indices_buf_262", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_263" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_264" = load i8*, i8** @_execptr, align 8
  %"$update_value_266" = alloca %Int32, align 8
  store %Int32 %n, %Int32* %"$update_value_266", align 4
  %"$update_value_267" = bitcast %Int32* %"$update_value_266" to i8*
  call void @_update_field(i8* %"$execptr_load_264", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_265", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_262", i8* %"$update_value_267"), !dbg !33
  br label %"$matchsucc_213"

"$empty_default_217":                             ; preds = %"$have_gas_211"
  br label %"$matchsucc_213"

"$matchsucc_213":                                 ; preds = %"$have_gas_260", %"$have_gas_242", %"$empty_default_217"
  ret void
}

define internal void @"$IncrementNOpt_268"(%Uint128 %_amount, [20 x i8]* %"$_origin_269", [20 x i8]* %"$_sender_270", %TName_Option_Int32* %nopt) !dbg !35 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_269", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_270", align 1
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 2, %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %entry
  %"$consume_275" = sub i64 %"$gasrem_271", 2
  store i64 %"$consume_275", i64* @_gasrem, align 8
  %"$nopt_tag_277" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %nopt, i32 0, i32 0
  %"$nopt_tag_278" = load i8, i8* %"$nopt_tag_277", align 1
  switch i8 %"$nopt_tag_278", label %"$empty_default_279" [
    i8 0, label %"$Some_280"
    i8 1, label %"$None_292"
  ], !dbg !36

"$Some_280":                                      ; preds = %"$have_gas_274"
  %"$nopt_281" = bitcast %TName_Option_Int32* %nopt to %CName_Some_Int32*
  %"$n_gep_282" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$nopt_281", i32 0, i32 1
  %"$n_load_283" = load %Int32, %Int32* %"$n_gep_282", align 4
  %n = alloca %Int32, align 8
  store %Int32 %"$n_load_283", %Int32* %n, align 4
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$Some_280"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$Some_280"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %"$IncrementN__origin_289" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$IncrementN__origin_289", align 1
  %"$IncrementN__sender_290" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$IncrementN__sender_290", align 1
  %"$n_291" = load %Int32, %Int32* %n, align 4
  call void @"$IncrementN_189"(%Uint128 %_amount, [20 x i8]* %"$IncrementN__origin_289", [20 x i8]* %"$IncrementN__sender_290", %Int32 %"$n_291"), !dbg !37
  br label %"$matchsucc_276"

"$None_292":                                      ; preds = %"$have_gas_274"
  %"$nopt_293" = bitcast %TName_Option_Int32* %nopt to %CName_None_Int32*
  br label %"$matchsucc_276"

"$empty_default_279":                             ; preds = %"$have_gas_274"
  br label %"$matchsucc_276"

"$matchsucc_276":                                 ; preds = %"$None_292", %"$have_gas_287", %"$empty_default_279"
  ret void
}

define void @IncrementNOpt(i8* %0) !dbg !40 {
entry:
  %"$_amount_295" = getelementptr i8, i8* %0, i32 0
  %"$_amount_296" = bitcast i8* %"$_amount_295" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_296", align 8
  %"$_origin_297" = getelementptr i8, i8* %0, i32 16
  %"$_origin_298" = bitcast i8* %"$_origin_297" to [20 x i8]*
  %"$_sender_299" = getelementptr i8, i8* %0, i32 36
  %"$_sender_300" = bitcast i8* %"$_sender_299" to [20 x i8]*
  %"$nopt_301" = getelementptr i8, i8* %0, i32 56
  %"$nopt_302" = bitcast i8* %"$nopt_301" to %TName_Option_Int32**
  %nopt = load %TName_Option_Int32*, %TName_Option_Int32** %"$nopt_302", align 8
  call void @"$IncrementNOpt_268"(%Uint128 %_amount, [20 x i8]* %"$_origin_298", [20 x i8]* %"$_sender_300", %TName_Option_Int32* %nopt), !dbg !41
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
