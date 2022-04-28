

; gas_remaining: 4001999
; ModuleID = 'SimpleMap'
source_filename = "SimpleMap"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_5" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_39" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_38"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_38" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_40"**, %"$TyDescrTy_ADTTyp_39"* }
%"$TyDescrTy_ADTTyp_Constr_40" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_42" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_45" = type { i32, %"$TyDescr_AddrFieldTyp_44"* }
%"$TyDescr_AddrFieldTyp_44" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_328" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_329" = type { %ParamDescrString, i32, %"$ParamDescr_328"* }
%"$$fundef_2_env_61" = type { %Int32 }
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
@"$TyDescr_ReplicateContr_Prim_32" = global %"$TyDescrTy_PrimTyp_5" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_ReplicateContr_Prim_32" to i8*) }
@"$TyDescr_Bystr_Prim_34" = global %"$TyDescrTy_PrimTyp_5" { i32 7, i32 0 }
@"$TyDescr_Bystr_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr_Prim_34" to i8*) }
@"$TyDescr_Bystr20_Prim_36" = global %"$TyDescrTy_PrimTyp_5" { i32 8, i32 20 }
@"$TyDescr_Bystr20_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr20_Prim_36" to i8*) }
@"$TyDescr_ADT_Option_Int32_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Option_Int32_ADTTyp_Specl_56" to i8*) }
@"$TyDescr_Map_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_42"* @"$TyDescr_MapTyp_59" to i8*) }
@"$TyDescr_Addr_46" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_45"* @"$TyDescr_AddrFields_60" to i8*) }
@"$TyDescr_Option_ADTTyp_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_58", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_38"*], [1 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_Option_ADTTyp_m_specls_57", i32 0, i32 0) }
@"$TyDescr_Option_Some_Int32_Constr_m_args_48" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@"$TyDescr_ADT_Some_49" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int32_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_49", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int32_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_Option_None_Int32_Constr_m_args_51" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_52" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int32_ADTTyp_Constr_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_52", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int32_Constr_m_args_51", i32 0, i32 0) }
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_54" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Option_Some_Int32_ADTTyp_Constr_50", %"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Option_None_Int32_ADTTyp_Constr_53"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_55" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_55", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_40"*], [2 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_54", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Option_ADTTyp_47" }
@"$TyDescr_Option_ADTTyp_m_specls_57" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Option_Int32_ADTTyp_Specl_56"]
@"$TyDescr_ADT_Option_58" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_MapTyp_59" = unnamed_addr constant %"$TyDescr_MapTyp_42" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ* @"$TyDescr_Int32_7" }
@"$TyDescr_AddrFields_60" = unnamed_addr constant %"$TyDescr_AddrTyp_45" { i32 -3, %"$TyDescr_AddrFieldTyp_44"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@simple-map.one = global %Int32 zeroinitializer
@simple-map.inc = global { %Int32 (i8*, %Int32)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$access_count_108" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_116" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_173" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_192" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_211" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_264" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_282" = unnamed_addr constant [13 x i8] c"access_count\00"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_46", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_41", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Map_43", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 19
@"$pname__scilla_version_330" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_331" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_332" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_328"] [%"$ParamDescr_328" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_330", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_328" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_331", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37" }, %"$ParamDescr_328" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_332", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_333" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_334" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_335" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Increment_336" = unnamed_addr constant [3 x %"$ParamDescr_328"] [%"$ParamDescr_328" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_333", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_328" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_334", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_328" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_335", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }]
@"$tname_Increment_337" = unnamed_addr constant [9 x i8] c"Increment"
@"$tpname__amount_338" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_339" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_340" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_nopt_341" = unnamed_addr constant [4 x i8] c"nopt"
@"$tparams_IncrementNOpt_342" = unnamed_addr constant [4 x %"$ParamDescr_328"] [%"$ParamDescr_328" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_338", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_328" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_339", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_328" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_340", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_328" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_nopt_341", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_41" }]
@"$tname_IncrementNOpt_343" = unnamed_addr constant [13 x i8] c"IncrementNOpt"
@_transition_parameters = constant [2 x %"$TransDescr_329"] [%"$TransDescr_329" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_Increment_337", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_328"* getelementptr inbounds ([3 x %"$ParamDescr_328"], [3 x %"$ParamDescr_328"]* @"$tparams_Increment_336", i32 0, i32 0) }, %"$TransDescr_329" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$tname_IncrementNOpt_343", i32 0, i32 0), i32 13 }, i32 4, %"$ParamDescr_328"* getelementptr inbounds ([4 x %"$ParamDescr_328"], [4 x %"$ParamDescr_328"]* @"$tparams_IncrementNOpt_342", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define internal %Int32 @"$fundef_2"(%"$$fundef_2_env_61"* %0, %Int32 %1) !dbg !3 {
entry:
  %"$a_72" = alloca %Int32, align 8
  store %Int32 %1, %Int32* %"$a_72", align 4
  call void @llvm.dbg.declare(metadata %Int32* %"$a_72", metadata !8, metadata !DIExpression()), !dbg !10
  %"$$fundef_2_env_simple-map.one_62" = getelementptr inbounds %"$$fundef_2_env_61", %"$$fundef_2_env_61"* %0, i32 0, i32 0
  %"$simple-map.one_envload_63" = load %Int32, %Int32* %"$$fundef_2_env_simple-map.one_62", align 4
  %simple-map.one = alloca %Int32, align 8
  store %Int32 %"$simple-map.one_envload_63", %Int32* %simple-map.one, align 4
  %"$retval_3" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$retval_3", metadata !11, metadata !DIExpression()), !dbg !12
  %"$gasrem_64" = load i64, i64* @_gasrem, align 8
  %"$gascmp_65" = icmp ugt i64 4, %"$gasrem_64"
  br i1 %"$gascmp_65", label %"$out_of_gas_66", label %"$have_gas_67"

"$out_of_gas_66":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_67"

"$have_gas_67":                                   ; preds = %"$out_of_gas_66", %entry
  %"$consume_68" = sub i64 %"$gasrem_64", 4
  store i64 %"$consume_68", i64* @_gasrem, align 8
  %"$simple-map.one_69" = load %Int32, %Int32* %simple-map.one, align 4
  %"$add_call_70" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %"$simple-map.one_69"), !dbg !12
  store %Int32 %"$add_call_70", %Int32* %"$retval_3", align 4, !dbg !12
  %"$$retval_3_71" = load %Int32, %Int32* %"$retval_3", align 4
  ret %Int32 %"$$retval_3_71"
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare void @_out_of_gas()

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() !dbg !13 {
entry:
  %"$gasrem_73" = load i64, i64* @_gasrem, align 8
  %"$gascmp_74" = icmp ugt i64 5, %"$gasrem_73"
  br i1 %"$gascmp_74", label %"$out_of_gas_75", label %"$have_gas_76"

"$out_of_gas_75":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_76"

"$have_gas_76":                                   ; preds = %"$out_of_gas_75", %entry
  %"$consume_77" = sub i64 %"$gasrem_73", 5
  store i64 %"$consume_77", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !15
  %"$gasrem_78" = load i64, i64* @_gasrem, align 8
  %"$gascmp_79" = icmp ugt i64 1, %"$gasrem_78"
  br i1 %"$gascmp_79", label %"$out_of_gas_80", label %"$have_gas_81"

"$out_of_gas_80":                                 ; preds = %"$have_gas_76"
  call void @_out_of_gas()
  br label %"$have_gas_81"

"$have_gas_81":                                   ; preds = %"$out_of_gas_80", %"$have_gas_76"
  %"$consume_82" = sub i64 %"$gasrem_78", 1
  store i64 %"$consume_82", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* @simple-map.one, align 4, !dbg !16
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 1, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %"$have_gas_81"
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %"$have_gas_81"
  %"$consume_87" = sub i64 %"$gasrem_83", 1
  store i64 %"$consume_87", i64* @_gasrem, align 8
  %"$$fundef_2_envp_88_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_2_envp_88_salloc" = call i8* @_salloc(i8* %"$$fundef_2_envp_88_load", i64 4)
  %"$$fundef_2_envp_88" = bitcast i8* %"$$fundef_2_envp_88_salloc" to %"$$fundef_2_env_61"*
  %"$$fundef_2_env_voidp_90" = bitcast %"$$fundef_2_env_61"* %"$$fundef_2_envp_88" to i8*
  %"$$fundef_2_cloval_91" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_2_env_61"*, %Int32)* @"$fundef_2" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_2_env_voidp_90", 1
  %"$$fundef_2_env_simple-map.one_92" = getelementptr inbounds %"$$fundef_2_env_61", %"$$fundef_2_env_61"* %"$$fundef_2_envp_88", i32 0, i32 0
  %"$simple-map.one_93" = load %Int32, %Int32* @simple-map.one, align 4
  store %Int32 %"$simple-map.one_93", %Int32* %"$$fundef_2_env_simple-map.one_92", align 4
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_2_cloval_91", { %Int32 (i8*, %Int32)*, i8* }* @simple-map.inc, align 8, !dbg !17
  ret void
}

declare i8* @_salloc(i8*, i64)

define void @_deploy_ops() !dbg !18 {
entry:
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 1, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %entry
  %"$consume_98" = sub i64 %"$gasrem_94", 1
  store i64 %"$consume_98", i64* @_gasrem, align 8
  %"$access_count_4" = alloca %Map_ByStr20_Int32*, align 8
  call void @llvm.dbg.declare(metadata %Map_ByStr20_Int32** %"$access_count_4", metadata !19, metadata !DIExpression()), !dbg !22
  %"$gasrem_99" = load i64, i64* @_gasrem, align 8
  %"$gascmp_100" = icmp ugt i64 1, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %"$have_gas_97"
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %"$have_gas_97"
  %"$consume_103" = sub i64 %"$gasrem_99", 1
  store i64 %"$consume_103", i64* @_gasrem, align 8
  %"$execptr_load_104" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_105" = call i8* @_new_empty_map(i8* %"$execptr_load_104")
  %"$_new_empty_map_106" = bitcast i8* %"$_new_empty_map_call_105" to %Map_ByStr20_Int32*
  store %Map_ByStr20_Int32* %"$_new_empty_map_106", %Map_ByStr20_Int32** %"$access_count_4", align 8, !dbg !23
  %"$execptr_load_107" = load i8*, i8** @_execptr, align 8
  %"$$access_count_4_109" = load %Map_ByStr20_Int32*, %Map_ByStr20_Int32** %"$access_count_4", align 8
  %"$update_value_110" = bitcast %Map_ByStr20_Int32* %"$$access_count_4_109" to i8*
  call void @_update_field(i8* %"$execptr_load_107", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_108", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_43", i32 0, i8* null, i8* %"$update_value_110"), !dbg !23
  ret void
}

declare i8* @_new_empty_map(i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$Increment_111"(%Uint128 %_amount, [20 x i8]* %"$_origin_112", [20 x i8]* %"$_sender_113") !dbg !24 {
entry:
  %"$_sender_198" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_113", [20 x i8]** %"$_sender_198", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_198", metadata !25, metadata !DIExpression()), !dbg !27
  %"$_origin_197" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_112", [20 x i8]** %"$_origin_197", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_197", metadata !28, metadata !DIExpression()), !dbg !27
  %"$_amount_196" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_196", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_196", metadata !29, metadata !DIExpression()), !dbg !27
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_112", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_113", align 1
  %cur = alloca %TName_Option_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int32** %cur, metadata !31, metadata !DIExpression()), !dbg !34
  %"$indices_buf_114_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_114_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_114_salloc_load", i64 20)
  %"$indices_buf_114_salloc" = bitcast i8* %"$indices_buf_114_salloc_salloc" to [20 x i8]*
  %"$indices_buf_114" = bitcast [20 x i8]* %"$indices_buf_114_salloc" to i8*
  %"$indices_gep_115" = getelementptr i8, i8* %"$indices_buf_114", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_115" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_117" = load i8*, i8** @_execptr, align 8
  %"$cur_call_118" = call i8* @_fetch_field(i8* %"$execptr_load_117", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_116", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_43", i32 1, i8* %"$indices_buf_114", i32 1), !dbg !34
  %"$cur_119" = bitcast i8* %"$cur_call_118" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_119", %TName_Option_Int32** %cur, align 8
  %"$cur_120" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$$cur_120_121" = bitcast %TName_Option_Int32* %"$cur_120" to i8*
  %"$_literal_cost_call_122" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_41", i8* %"$$cur_120_121")
  %"$gasadd_123" = add i64 %"$_literal_cost_call_122", 0
  %"$gasadd_124" = add i64 %"$gasadd_123", 1
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 %"$gasadd_124", %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %entry
  %"$consume_129" = sub i64 %"$gasrem_125", %"$gasadd_124"
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 2, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 2
  store i64 %"$consume_134", i64* @_gasrem, align 8
  %"$cur_136" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$cur_tag_137" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_136", i32 0, i32 0
  %"$cur_tag_138" = load i8, i8* %"$cur_tag_137", align 1
  switch i8 %"$cur_tag_138", label %"$empty_default_139" [
    i8 0, label %"$Some_140"
    i8 1, label %"$None_177"
  ], !dbg !35

"$Some_140":                                      ; preds = %"$have_gas_133"
  %"$cur_141" = bitcast %TName_Option_Int32* %"$cur_136" to %CName_Some_Int32*
  %"$i_gep_142" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_141", i32 0, i32 1
  %"$i_load_143" = load %Int32, %Int32* %"$i_gep_142", align 4
  %i = alloca %Int32, align 8
  store %Int32 %"$i_load_143", %Int32* %i, align 4
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$Some_140"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$Some_140"
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem, align 8
  %j = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %j, metadata !36, metadata !DIExpression()), !dbg !39
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 1, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %"$have_gas_147"
  %"$consume_153" = sub i64 %"$gasrem_149", 1
  store i64 %"$consume_153", i64* @_gasrem, align 8
  %"$simple-map.inc_1" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$simple-map.inc_1", metadata !40, metadata !DIExpression()), !dbg !41
  %"$simple-map.inc_154" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* @simple-map.inc, align 8
  %"$simple-map.inc_fptr_155" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$simple-map.inc_154", 0
  %"$simple-map.inc_envptr_156" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$simple-map.inc_154", 1
  %"$i_157" = load %Int32, %Int32* %i, align 4
  %"$simple-map.inc_call_158" = call %Int32 %"$simple-map.inc_fptr_155"(i8* %"$simple-map.inc_envptr_156", %Int32 %"$i_157"), !dbg !41
  store %Int32 %"$simple-map.inc_call_158", %Int32* %"$simple-map.inc_1", align 4, !dbg !41
  %"$$simple-map.inc_1_159" = load %Int32, %Int32* %"$simple-map.inc_1", align 4
  store %Int32 %"$$simple-map.inc_1_159", %Int32* %j, align 4, !dbg !41
  %"$_literal_cost_j_160" = alloca %Int32, align 8
  %"$j_161" = load %Int32, %Int32* %j, align 4
  store %Int32 %"$j_161", %Int32* %"$_literal_cost_j_160", align 4
  %"$$_literal_cost_j_160_162" = bitcast %Int32* %"$_literal_cost_j_160" to i8*
  %"$_literal_cost_call_163" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$$_literal_cost_j_160_162")
  %"$gasadd_164" = add i64 %"$_literal_cost_call_163", 1
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 %"$gasadd_164", %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_152"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_152"
  %"$consume_169" = sub i64 %"$gasrem_165", %"$gasadd_164"
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %"$indices_buf_170_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_170_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_170_salloc_load", i64 20)
  %"$indices_buf_170_salloc" = bitcast i8* %"$indices_buf_170_salloc_salloc" to [20 x i8]*
  %"$indices_buf_170" = bitcast [20 x i8]* %"$indices_buf_170_salloc" to i8*
  %"$indices_gep_171" = getelementptr i8, i8* %"$indices_buf_170", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_171" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_172" = load i8*, i8** @_execptr, align 8
  %"$j_174" = load %Int32, %Int32* %j, align 4
  %"$update_value_175" = alloca %Int32, align 8
  store %Int32 %"$j_174", %Int32* %"$update_value_175", align 4
  %"$update_value_176" = bitcast %Int32* %"$update_value_175" to i8*
  call void @_update_field(i8* %"$execptr_load_172", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_173", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_43", i32 1, i8* %"$indices_buf_170", i8* %"$update_value_176"), !dbg !42
  br label %"$matchsucc_135"

"$None_177":                                      ; preds = %"$have_gas_133"
  %"$cur_178" = bitcast %TName_Option_Int32* %"$cur_136" to %CName_None_Int32*
  %"$_literal_cost_simple-map.one_179" = alloca %Int32, align 8
  %"$simple-map.one_180" = load %Int32, %Int32* @simple-map.one, align 4
  store %Int32 %"$simple-map.one_180", %Int32* %"$_literal_cost_simple-map.one_179", align 4
  %"$$_literal_cost_simple-map.one_179_181" = bitcast %Int32* %"$_literal_cost_simple-map.one_179" to i8*
  %"$_literal_cost_call_182" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$$_literal_cost_simple-map.one_179_181")
  %"$gasadd_183" = add i64 %"$_literal_cost_call_182", 1
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 %"$gasadd_183", %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$None_177"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$None_177"
  %"$consume_188" = sub i64 %"$gasrem_184", %"$gasadd_183"
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %"$indices_buf_189_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_189_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_189_salloc_load", i64 20)
  %"$indices_buf_189_salloc" = bitcast i8* %"$indices_buf_189_salloc_salloc" to [20 x i8]*
  %"$indices_buf_189" = bitcast [20 x i8]* %"$indices_buf_189_salloc" to i8*
  %"$indices_gep_190" = getelementptr i8, i8* %"$indices_buf_189", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_190" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_191" = load i8*, i8** @_execptr, align 8
  %"$simple-map.one_193" = load %Int32, %Int32* @simple-map.one, align 4
  %"$update_value_194" = alloca %Int32, align 8
  store %Int32 %"$simple-map.one_193", %Int32* %"$update_value_194", align 4
  %"$update_value_195" = bitcast %Int32* %"$update_value_194" to i8*
  call void @_update_field(i8* %"$execptr_load_191", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_192", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_43", i32 1, i8* %"$indices_buf_189", i8* %"$update_value_195"), !dbg !43
  br label %"$matchsucc_135"

"$empty_default_139":                             ; preds = %"$have_gas_133"
  br label %"$matchsucc_135"

"$matchsucc_135":                                 ; preds = %"$have_gas_187", %"$have_gas_168", %"$empty_default_139"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @Increment(i8* %0) !dbg !45 {
entry:
  %"$_amount_200" = getelementptr i8, i8* %0, i32 0
  %"$_amount_201" = bitcast i8* %"$_amount_200" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_201", align 8
  %"$_origin_202" = getelementptr i8, i8* %0, i32 16
  %"$_origin_203" = bitcast i8* %"$_origin_202" to [20 x i8]*
  %"$_sender_204" = getelementptr i8, i8* %0, i32 36
  %"$_sender_205" = bitcast i8* %"$_sender_204" to [20 x i8]*
  call void @"$Increment_111"(%Uint128 %_amount, [20 x i8]* %"$_origin_203", [20 x i8]* %"$_sender_205"), !dbg !46
  ret void
}

define internal void @"$IncrementN_206"(%Uint128 %_amount, [20 x i8]* %"$_origin_207", [20 x i8]* %"$_sender_208", %Int32 %n) !dbg !47 {
entry:
  %"$n_288" = alloca %Int32, align 8
  store %Int32 %n, %Int32* %"$n_288", align 4
  call void @llvm.dbg.declare(metadata %Int32* %"$n_288", metadata !48, metadata !DIExpression()), !dbg !49
  %"$_sender_287" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_208", [20 x i8]** %"$_sender_287", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_287", metadata !50, metadata !DIExpression()), !dbg !51
  %"$_origin_286" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_207", [20 x i8]** %"$_origin_286", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_286", metadata !52, metadata !DIExpression()), !dbg !51
  %"$_amount_285" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_285", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_285", metadata !53, metadata !DIExpression()), !dbg !51
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_207", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_208", align 1
  %cur = alloca %TName_Option_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int32** %cur, metadata !54, metadata !DIExpression()), !dbg !55
  %"$indices_buf_209_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_209_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_209_salloc_load", i64 20)
  %"$indices_buf_209_salloc" = bitcast i8* %"$indices_buf_209_salloc_salloc" to [20 x i8]*
  %"$indices_buf_209" = bitcast [20 x i8]* %"$indices_buf_209_salloc" to i8*
  %"$indices_gep_210" = getelementptr i8, i8* %"$indices_buf_209", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_210" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_212" = load i8*, i8** @_execptr, align 8
  %"$cur_call_213" = call i8* @_fetch_field(i8* %"$execptr_load_212", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_211", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_43", i32 1, i8* %"$indices_buf_209", i32 1), !dbg !55
  %"$cur_214" = bitcast i8* %"$cur_call_213" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_214", %TName_Option_Int32** %cur, align 8
  %"$cur_215" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$$cur_215_216" = bitcast %TName_Option_Int32* %"$cur_215" to i8*
  %"$_literal_cost_call_217" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_41", i8* %"$$cur_215_216")
  %"$gasadd_218" = add i64 %"$_literal_cost_call_217", 0
  %"$gasadd_219" = add i64 %"$gasadd_218", 1
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 %"$gasadd_219", %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %entry
  %"$consume_224" = sub i64 %"$gasrem_220", %"$gasadd_219"
  store i64 %"$consume_224", i64* @_gasrem, align 8
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 2, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_223"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_223"
  %"$consume_229" = sub i64 %"$gasrem_225", 2
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %"$cur_231" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$cur_tag_232" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_231", i32 0, i32 0
  %"$cur_tag_233" = load i8, i8* %"$cur_tag_232", align 1
  switch i8 %"$cur_tag_233", label %"$empty_default_234" [
    i8 0, label %"$Some_235"
    i8 1, label %"$None_268"
  ], !dbg !56

"$Some_235":                                      ; preds = %"$have_gas_228"
  %"$cur_236" = bitcast %TName_Option_Int32* %"$cur_231" to %CName_Some_Int32*
  %"$i_gep_237" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_236", i32 0, i32 1
  %"$i_load_238" = load %Int32, %Int32* %"$i_gep_237", align 4
  %i = alloca %Int32, align 8
  store %Int32 %"$i_load_238", %Int32* %i, align 4
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 1, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %"$Some_235"
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %"$Some_235"
  %"$consume_243" = sub i64 %"$gasrem_239", 1
  store i64 %"$consume_243", i64* @_gasrem, align 8
  %j = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %j, metadata !57, metadata !DIExpression()), !dbg !60
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 4, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_242"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_242"
  %"$consume_248" = sub i64 %"$gasrem_244", 4
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %"$i_249" = load %Int32, %Int32* %i, align 4
  %"$add_call_250" = call %Int32 @_add_Int32(%Int32 %"$i_249", %Int32 %n), !dbg !61
  store %Int32 %"$add_call_250", %Int32* %j, align 4, !dbg !61
  %"$_literal_cost_j_251" = alloca %Int32, align 8
  %"$j_252" = load %Int32, %Int32* %j, align 4
  store %Int32 %"$j_252", %Int32* %"$_literal_cost_j_251", align 4
  %"$$_literal_cost_j_251_253" = bitcast %Int32* %"$_literal_cost_j_251" to i8*
  %"$_literal_cost_call_254" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$$_literal_cost_j_251_253")
  %"$gasadd_255" = add i64 %"$_literal_cost_call_254", 1
  %"$gasrem_256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_257" = icmp ugt i64 %"$gasadd_255", %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %"$have_gas_247"
  %"$consume_260" = sub i64 %"$gasrem_256", %"$gasadd_255"
  store i64 %"$consume_260", i64* @_gasrem, align 8
  %"$indices_buf_261_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_261_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_261_salloc_load", i64 20)
  %"$indices_buf_261_salloc" = bitcast i8* %"$indices_buf_261_salloc_salloc" to [20 x i8]*
  %"$indices_buf_261" = bitcast [20 x i8]* %"$indices_buf_261_salloc" to i8*
  %"$indices_gep_262" = getelementptr i8, i8* %"$indices_buf_261", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_262" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_263" = load i8*, i8** @_execptr, align 8
  %"$j_265" = load %Int32, %Int32* %j, align 4
  %"$update_value_266" = alloca %Int32, align 8
  store %Int32 %"$j_265", %Int32* %"$update_value_266", align 4
  %"$update_value_267" = bitcast %Int32* %"$update_value_266" to i8*
  call void @_update_field(i8* %"$execptr_load_263", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_264", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_43", i32 1, i8* %"$indices_buf_261", i8* %"$update_value_267"), !dbg !62
  br label %"$matchsucc_230"

"$None_268":                                      ; preds = %"$have_gas_228"
  %"$cur_269" = bitcast %TName_Option_Int32* %"$cur_231" to %CName_None_Int32*
  %"$_literal_cost_n_270" = alloca %Int32, align 8
  store %Int32 %n, %Int32* %"$_literal_cost_n_270", align 4
  %"$$_literal_cost_n_270_271" = bitcast %Int32* %"$_literal_cost_n_270" to i8*
  %"$_literal_cost_call_272" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$$_literal_cost_n_270_271")
  %"$gasadd_273" = add i64 %"$_literal_cost_call_272", 1
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 %"$gasadd_273", %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$None_268"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$None_268"
  %"$consume_278" = sub i64 %"$gasrem_274", %"$gasadd_273"
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %"$indices_buf_279_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_279_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_279_salloc_load", i64 20)
  %"$indices_buf_279_salloc" = bitcast i8* %"$indices_buf_279_salloc_salloc" to [20 x i8]*
  %"$indices_buf_279" = bitcast [20 x i8]* %"$indices_buf_279_salloc" to i8*
  %"$indices_gep_280" = getelementptr i8, i8* %"$indices_buf_279", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_280" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_281" = load i8*, i8** @_execptr, align 8
  %"$update_value_283" = alloca %Int32, align 8
  store %Int32 %n, %Int32* %"$update_value_283", align 4
  %"$update_value_284" = bitcast %Int32* %"$update_value_283" to i8*
  call void @_update_field(i8* %"$execptr_load_281", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_282", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_43", i32 1, i8* %"$indices_buf_279", i8* %"$update_value_284"), !dbg !63
  br label %"$matchsucc_230"

"$empty_default_234":                             ; preds = %"$have_gas_228"
  br label %"$matchsucc_230"

"$matchsucc_230":                                 ; preds = %"$have_gas_277", %"$have_gas_259", %"$empty_default_234"
  ret void
}

define internal void @"$IncrementNOpt_289"(%Uint128 %_amount, [20 x i8]* %"$_origin_290", [20 x i8]* %"$_sender_291", %TName_Option_Int32* %nopt) !dbg !65 {
entry:
  %"$nopt_318" = alloca %TName_Option_Int32*, align 8
  store %TName_Option_Int32* %nopt, %TName_Option_Int32** %"$nopt_318", align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int32** %"$nopt_318", metadata !66, metadata !DIExpression()), !dbg !67
  %"$_sender_317" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_291", [20 x i8]** %"$_sender_317", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_317", metadata !68, metadata !DIExpression()), !dbg !69
  %"$_origin_316" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_290", [20 x i8]** %"$_origin_316", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_316", metadata !70, metadata !DIExpression()), !dbg !69
  %"$_amount_315" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_315", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_315", metadata !71, metadata !DIExpression()), !dbg !69
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_290", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_291", align 1
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 2, %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %entry
  %"$consume_296" = sub i64 %"$gasrem_292", 2
  store i64 %"$consume_296", i64* @_gasrem, align 8
  %"$nopt_tag_298" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %nopt, i32 0, i32 0
  %"$nopt_tag_299" = load i8, i8* %"$nopt_tag_298", align 1
  switch i8 %"$nopt_tag_299", label %"$empty_default_300" [
    i8 0, label %"$Some_301"
    i8 1, label %"$None_313"
  ], !dbg !72

"$Some_301":                                      ; preds = %"$have_gas_295"
  %"$nopt_302" = bitcast %TName_Option_Int32* %nopt to %CName_Some_Int32*
  %"$n_gep_303" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$nopt_302", i32 0, i32 1
  %"$n_load_304" = load %Int32, %Int32* %"$n_gep_303", align 4
  %n = alloca %Int32, align 8
  store %Int32 %"$n_load_304", %Int32* %n, align 4
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$Some_301"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$Some_301"
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem, align 8
  %"$IncrementN__origin_310" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$IncrementN__origin_310", align 1
  %"$IncrementN__sender_311" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$IncrementN__sender_311", align 1
  %"$n_312" = load %Int32, %Int32* %n, align 4
  call void @"$IncrementN_206"(%Uint128 %_amount, [20 x i8]* %"$IncrementN__origin_310", [20 x i8]* %"$IncrementN__sender_311", %Int32 %"$n_312"), !dbg !73
  br label %"$matchsucc_297"

"$None_313":                                      ; preds = %"$have_gas_295"
  %"$nopt_314" = bitcast %TName_Option_Int32* %nopt to %CName_None_Int32*
  br label %"$matchsucc_297"

"$empty_default_300":                             ; preds = %"$have_gas_295"
  br label %"$matchsucc_297"

"$matchsucc_297":                                 ; preds = %"$None_313", %"$have_gas_308", %"$empty_default_300"
  ret void
}

define void @IncrementNOpt(i8* %0) !dbg !76 {
entry:
  %"$_amount_320" = getelementptr i8, i8* %0, i32 0
  %"$_amount_321" = bitcast i8* %"$_amount_320" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_321", align 8
  %"$_origin_322" = getelementptr i8, i8* %0, i32 16
  %"$_origin_323" = bitcast i8* %"$_origin_322" to [20 x i8]*
  %"$_sender_324" = getelementptr i8, i8* %0, i32 36
  %"$_sender_325" = bitcast i8* %"$_sender_324" to [20 x i8]*
  %"$nopt_326" = getelementptr i8, i8* %0, i32 56
  %"$nopt_327" = bitcast i8* %"$nopt_326" to %TName_Option_Int32**
  %nopt = load %TName_Option_Int32*, %TName_Option_Int32** %"$nopt_327", align 8
  call void @"$IncrementNOpt_289"(%Uint128 %_amount, [20 x i8]* %"$_origin_323", [20 x i8]* %"$_sender_325", %TName_Option_Int32* %nopt), !dbg !77
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "simple-map.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "$fundef_2", linkageName: "$fundef_2", scope: !2, file: !2, line: 9, type: !4, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "a", scope: !3, file: !2, line: 8, type: !9)
!9 = !DIBasicType(name: "Int32", size: 4)
!10 = !DILocation(line: 8, column: 8, scope: !3)
!11 = !DILocalVariable(name: "$retval_3", scope: !3, file: !2, line: 9, type: !9)
!12 = !DILocation(line: 9, column: 5, scope: !3)
!13 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !14, file: !14, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!14 = !DIFile(filename: ".", directory: ".")
!15 = !DILocation(line: 0, scope: !13)
!16 = !DILocation(line: 5, column: 11, scope: !13)
!17 = !DILocation(line: 9, column: 5, scope: !13)
!18 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !14, file: !14, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!19 = !DILocalVariable(name: "$access_count_4", scope: !18, file: !2, line: 13, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Map (ByStr20) (Int32)", baseType: !21, size: 8, align: 8, dwarfAddressSpace: 0)
!21 = !DIBasicType(name: "Map (ByStr20) (Int32)", size: 8)
!22 = !DILocation(line: 13, column: 7, scope: !18)
!23 = !DILocation(line: 13, column: 42, scope: !18)
!24 = distinct !DISubprogram(name: "Increment", linkageName: "Increment", scope: !2, file: !2, line: 15, type: !4, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!25 = !DILocalVariable(name: "_sender", scope: !24, file: !2, line: 15, type: !26)
!26 = !DIBasicType(name: "ByStr20 with end", size: 20)
!27 = !DILocation(line: 15, column: 12, scope: !24)
!28 = !DILocalVariable(name: "_origin", scope: !24, file: !2, line: 15, type: !26)
!29 = !DILocalVariable(name: "_amount", scope: !24, file: !2, line: 15, type: !30)
!30 = !DIBasicType(name: "Uint128", size: 16)
!31 = !DILocalVariable(name: "cur", scope: !24, file: !2, line: 16, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Int32)", baseType: !33, size: 8, align: 8, dwarfAddressSpace: 0)
!33 = !DIBasicType(name: "Option (Int32)", size: 8)
!34 = !DILocation(line: 16, column: 3, scope: !24)
!35 = !DILocation(line: 17, column: 3, scope: !24)
!36 = !DILocalVariable(name: "j", scope: !37, file: !2, line: 19, type: !9)
!37 = distinct !DILexicalBlock(scope: !38, file: !2, line: 18, column: 5)
!38 = distinct !DILexicalBlock(scope: !24, file: !2, line: 17, column: 3)
!39 = !DILocation(line: 19, column: 5, scope: !37)
!40 = !DILocalVariable(name: "$simple-map.inc_1", scope: !37, file: !2, line: 19, type: !9)
!41 = !DILocation(line: 19, column: 9, scope: !37)
!42 = !DILocation(line: 20, column: 5, scope: !37)
!43 = !DILocation(line: 22, column: 5, scope: !44)
!44 = distinct !DILexicalBlock(scope: !38, file: !2, line: 21, column: 5)
!45 = distinct !DISubprogram(name: "Increment", linkageName: "Increment", scope: !2, file: !2, line: 15, type: !4, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!46 = !DILocation(line: 15, column: 12, scope: !45)
!47 = distinct !DISubprogram(name: "IncrementN", linkageName: "IncrementN", scope: !2, file: !2, line: 26, type: !4, scopeLine: 26, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!48 = !DILocalVariable(name: "n", scope: !47, file: !2, line: 26, type: !9)
!49 = !DILocation(line: 26, column: 23, scope: !47)
!50 = !DILocalVariable(name: "_sender", scope: !47, file: !2, line: 26, type: !26)
!51 = !DILocation(line: 26, column: 11, scope: !47)
!52 = !DILocalVariable(name: "_origin", scope: !47, file: !2, line: 26, type: !26)
!53 = !DILocalVariable(name: "_amount", scope: !47, file: !2, line: 26, type: !30)
!54 = !DILocalVariable(name: "cur", scope: !47, file: !2, line: 27, type: !32)
!55 = !DILocation(line: 27, column: 3, scope: !47)
!56 = !DILocation(line: 28, column: 3, scope: !47)
!57 = !DILocalVariable(name: "j", scope: !58, file: !2, line: 30, type: !9)
!58 = distinct !DILexicalBlock(scope: !59, file: !2, line: 29, column: 5)
!59 = distinct !DILexicalBlock(scope: !47, file: !2, line: 28, column: 3)
!60 = !DILocation(line: 30, column: 5, scope: !58)
!61 = !DILocation(line: 30, column: 9, scope: !58)
!62 = !DILocation(line: 31, column: 5, scope: !58)
!63 = !DILocation(line: 33, column: 5, scope: !64)
!64 = distinct !DILexicalBlock(scope: !59, file: !2, line: 32, column: 5)
!65 = distinct !DISubprogram(name: "IncrementNOpt", linkageName: "IncrementNOpt", scope: !2, file: !2, line: 37, type: !4, scopeLine: 37, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!66 = !DILocalVariable(name: "nopt", scope: !65, file: !2, line: 37, type: !32)
!67 = !DILocation(line: 37, column: 27, scope: !65)
!68 = !DILocalVariable(name: "_sender", scope: !65, file: !2, line: 37, type: !26)
!69 = !DILocation(line: 37, column: 12, scope: !65)
!70 = !DILocalVariable(name: "_origin", scope: !65, file: !2, line: 37, type: !26)
!71 = !DILocalVariable(name: "_amount", scope: !65, file: !2, line: 37, type: !30)
!72 = !DILocation(line: 38, column: 3, scope: !65)
!73 = !DILocation(line: 40, column: 5, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !2, line: 39, column: 5)
!75 = distinct !DILexicalBlock(scope: !65, file: !2, line: 38, column: 3)
!76 = distinct !DISubprogram(name: "IncrementNOpt", linkageName: "IncrementNOpt", scope: !2, file: !2, line: 37, type: !4, scopeLine: 37, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!77 = !DILocation(line: 37, column: 12, scope: !76)
