

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
%"$ParamDescr_316" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_317" = type { %ParamDescrString, i32, %"$ParamDescr_316"* }
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
@"$access_count_107" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_115" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_172" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_191" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_207" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_260" = unnamed_addr constant [13 x i8] c"access_count\00"
@"$access_count_278" = unnamed_addr constant [13 x i8] c"access_count\00"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_46", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_41", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Map_43", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 19
@"$pname__scilla_version_318" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_319" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_320" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_316"] [%"$ParamDescr_316" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_318", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_316" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_319", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37" }, %"$ParamDescr_316" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_320", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_321" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_322" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_323" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Increment_324" = unnamed_addr constant [3 x %"$ParamDescr_316"] [%"$ParamDescr_316" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_321", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_316" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_322", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_316" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_323", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }]
@"$tname_Increment_325" = unnamed_addr constant [9 x i8] c"Increment"
@"$tpname__amount_326" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_327" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_328" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_nopt_329" = unnamed_addr constant [4 x i8] c"nopt"
@"$tparams_IncrementNOpt_330" = unnamed_addr constant [4 x %"$ParamDescr_316"] [%"$ParamDescr_316" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_326", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_316" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_327", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_316" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_328", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_316" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_nopt_329", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_41" }]
@"$tname_IncrementNOpt_331" = unnamed_addr constant [13 x i8] c"IncrementNOpt"
@_transition_parameters = constant [2 x %"$TransDescr_317"] [%"$TransDescr_317" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_Increment_325", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_316"* getelementptr inbounds ([3 x %"$ParamDescr_316"], [3 x %"$ParamDescr_316"]* @"$tparams_Increment_324", i32 0, i32 0) }, %"$TransDescr_317" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$tname_IncrementNOpt_331", i32 0, i32 0), i32 13 }, i32 4, %"$ParamDescr_316"* getelementptr inbounds ([4 x %"$ParamDescr_316"], [4 x %"$ParamDescr_316"]* @"$tparams_IncrementNOpt_330", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define internal %Int32 @"$fundef_2"(%"$$fundef_2_env_61"* %0, %Int32 %1) !dbg !3 {
entry:
  %"$$fundef_2_env_simple-map.one_62" = getelementptr inbounds %"$$fundef_2_env_61", %"$$fundef_2_env_61"* %0, i32 0, i32 0
  %"$simple-map.one_envload_63" = load %Int32, %Int32* %"$$fundef_2_env_simple-map.one_62", align 4
  %simple-map.one = alloca %Int32, align 8
  store %Int32 %"$simple-map.one_envload_63", %Int32* %simple-map.one, align 4
  %"$retval_3" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$retval_3", metadata !8, metadata !DIExpression()), !dbg !10
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
  %"$add_call_70" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %"$simple-map.one_69"), !dbg !10
  store %Int32 %"$add_call_70", %Int32* %"$retval_3", align 4, !dbg !10
  %"$$retval_3_71" = load %Int32, %Int32* %"$retval_3", align 4
  ret %Int32 %"$$retval_3_71"
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare void @_out_of_gas()

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() !dbg !11 {
entry:
  %"$gasrem_72" = load i64, i64* @_gasrem, align 8
  %"$gascmp_73" = icmp ugt i64 5, %"$gasrem_72"
  br i1 %"$gascmp_73", label %"$out_of_gas_74", label %"$have_gas_75"

"$out_of_gas_74":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_75"

"$have_gas_75":                                   ; preds = %"$out_of_gas_74", %entry
  %"$consume_76" = sub i64 %"$gasrem_72", 5
  store i64 %"$consume_76", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !13
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %"$have_gas_75"
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %"$have_gas_75"
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* @simple-map.one, align 4, !dbg !14
  %"$gasrem_82" = load i64, i64* @_gasrem, align 8
  %"$gascmp_83" = icmp ugt i64 1, %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %"$have_gas_80"
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %"$have_gas_80"
  %"$consume_86" = sub i64 %"$gasrem_82", 1
  store i64 %"$consume_86", i64* @_gasrem, align 8
  %"$$fundef_2_envp_87_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_2_envp_87_salloc" = call i8* @_salloc(i8* %"$$fundef_2_envp_87_load", i64 4)
  %"$$fundef_2_envp_87" = bitcast i8* %"$$fundef_2_envp_87_salloc" to %"$$fundef_2_env_61"*
  %"$$fundef_2_env_voidp_89" = bitcast %"$$fundef_2_env_61"* %"$$fundef_2_envp_87" to i8*
  %"$$fundef_2_cloval_90" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_2_env_61"*, %Int32)* @"$fundef_2" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_2_env_voidp_89", 1
  %"$$fundef_2_env_simple-map.one_91" = getelementptr inbounds %"$$fundef_2_env_61", %"$$fundef_2_env_61"* %"$$fundef_2_envp_87", i32 0, i32 0
  %"$simple-map.one_92" = load %Int32, %Int32* @simple-map.one, align 4
  store %Int32 %"$simple-map.one_92", %Int32* %"$$fundef_2_env_simple-map.one_91", align 4
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_2_cloval_90", { %Int32 (i8*, %Int32)*, i8* }* @simple-map.inc, align 8, !dbg !15
  ret void
}

declare i8* @_salloc(i8*, i64)

define void @_deploy_ops() !dbg !16 {
entry:
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 1, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %entry
  %"$consume_97" = sub i64 %"$gasrem_93", 1
  store i64 %"$consume_97", i64* @_gasrem, align 8
  %"$access_count_4" = alloca %Map_ByStr20_Int32*, align 8
  call void @llvm.dbg.declare(metadata %Map_ByStr20_Int32** %"$access_count_4", metadata !17, metadata !DIExpression()), !dbg !20
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_96"
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %"$execptr_load_103" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_104" = call i8* @_new_empty_map(i8* %"$execptr_load_103")
  %"$_new_empty_map_105" = bitcast i8* %"$_new_empty_map_call_104" to %Map_ByStr20_Int32*
  store %Map_ByStr20_Int32* %"$_new_empty_map_105", %Map_ByStr20_Int32** %"$access_count_4", align 8, !dbg !21
  %"$execptr_load_106" = load i8*, i8** @_execptr, align 8
  %"$$access_count_4_108" = load %Map_ByStr20_Int32*, %Map_ByStr20_Int32** %"$access_count_4", align 8
  %"$update_value_109" = bitcast %Map_ByStr20_Int32* %"$$access_count_4_108" to i8*
  call void @_update_field(i8* %"$execptr_load_106", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_107", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_43", i32 0, i8* null, i8* %"$update_value_109"), !dbg !21
  ret void
}

declare i8* @_new_empty_map(i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$Increment_110"(%Uint128 %_amount, [20 x i8]* %"$_origin_111", [20 x i8]* %"$_sender_112") !dbg !22 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_111", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_112", align 1
  %cur = alloca %TName_Option_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int32** %cur, metadata !23, metadata !DIExpression()), !dbg !26
  %"$indices_buf_113_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_113_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_113_salloc_load", i64 20)
  %"$indices_buf_113_salloc" = bitcast i8* %"$indices_buf_113_salloc_salloc" to [20 x i8]*
  %"$indices_buf_113" = bitcast [20 x i8]* %"$indices_buf_113_salloc" to i8*
  %"$indices_gep_114" = getelementptr i8, i8* %"$indices_buf_113", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_114" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_116" = load i8*, i8** @_execptr, align 8
  %"$cur_call_117" = call i8* @_fetch_field(i8* %"$execptr_load_116", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_115", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_43", i32 1, i8* %"$indices_buf_113", i32 1), !dbg !26
  %"$cur_118" = bitcast i8* %"$cur_call_117" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_118", %TName_Option_Int32** %cur, align 8
  %"$cur_119" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$$cur_119_120" = bitcast %TName_Option_Int32* %"$cur_119" to i8*
  %"$_literal_cost_call_121" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_41", i8* %"$$cur_119_120")
  %"$gasadd_122" = add i64 %"$_literal_cost_call_121", 0
  %"$gasadd_123" = add i64 %"$gasadd_122", 1
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 %"$gasadd_123", %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %entry
  %"$consume_128" = sub i64 %"$gasrem_124", %"$gasadd_123"
  store i64 %"$consume_128", i64* @_gasrem, align 8
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 2, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 2
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %"$cur_135" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$cur_tag_136" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_135", i32 0, i32 0
  %"$cur_tag_137" = load i8, i8* %"$cur_tag_136", align 1
  switch i8 %"$cur_tag_137", label %"$empty_default_138" [
    i8 0, label %"$Some_139"
    i8 1, label %"$None_176"
  ], !dbg !27

"$Some_139":                                      ; preds = %"$have_gas_132"
  %"$cur_140" = bitcast %TName_Option_Int32* %"$cur_135" to %CName_Some_Int32*
  %"$i_gep_141" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_140", i32 0, i32 1
  %"$i_load_142" = load %Int32, %Int32* %"$i_gep_141", align 4
  %i = alloca %Int32, align 8
  store %Int32 %"$i_load_142", %Int32* %i, align 4
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$Some_139"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$Some_139"
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %j = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %j, metadata !28, metadata !DIExpression()), !dbg !31
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_146"
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %"$simple-map.inc_1" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$simple-map.inc_1", metadata !32, metadata !DIExpression()), !dbg !33
  %"$simple-map.inc_153" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* @simple-map.inc, align 8
  %"$simple-map.inc_fptr_154" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$simple-map.inc_153", 0
  %"$simple-map.inc_envptr_155" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$simple-map.inc_153", 1
  %"$i_156" = load %Int32, %Int32* %i, align 4
  %"$simple-map.inc_call_157" = call %Int32 %"$simple-map.inc_fptr_154"(i8* %"$simple-map.inc_envptr_155", %Int32 %"$i_156"), !dbg !33
  store %Int32 %"$simple-map.inc_call_157", %Int32* %"$simple-map.inc_1", align 4, !dbg !33
  %"$$simple-map.inc_1_158" = load %Int32, %Int32* %"$simple-map.inc_1", align 4
  store %Int32 %"$$simple-map.inc_1_158", %Int32* %j, align 4, !dbg !33
  %"$_literal_cost_j_159" = alloca %Int32, align 8
  %"$j_160" = load %Int32, %Int32* %j, align 4
  store %Int32 %"$j_160", %Int32* %"$_literal_cost_j_159", align 4
  %"$$_literal_cost_j_159_161" = bitcast %Int32* %"$_literal_cost_j_159" to i8*
  %"$_literal_cost_call_162" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$$_literal_cost_j_159_161")
  %"$gasadd_163" = add i64 %"$_literal_cost_call_162", 1
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 %"$gasadd_163", %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_151"
  %"$consume_168" = sub i64 %"$gasrem_164", %"$gasadd_163"
  store i64 %"$consume_168", i64* @_gasrem, align 8
  %"$indices_buf_169_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_169_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_169_salloc_load", i64 20)
  %"$indices_buf_169_salloc" = bitcast i8* %"$indices_buf_169_salloc_salloc" to [20 x i8]*
  %"$indices_buf_169" = bitcast [20 x i8]* %"$indices_buf_169_salloc" to i8*
  %"$indices_gep_170" = getelementptr i8, i8* %"$indices_buf_169", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_170" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_171" = load i8*, i8** @_execptr, align 8
  %"$j_173" = load %Int32, %Int32* %j, align 4
  %"$update_value_174" = alloca %Int32, align 8
  store %Int32 %"$j_173", %Int32* %"$update_value_174", align 4
  %"$update_value_175" = bitcast %Int32* %"$update_value_174" to i8*
  call void @_update_field(i8* %"$execptr_load_171", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_172", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_43", i32 1, i8* %"$indices_buf_169", i8* %"$update_value_175"), !dbg !34
  br label %"$matchsucc_134"

"$None_176":                                      ; preds = %"$have_gas_132"
  %"$cur_177" = bitcast %TName_Option_Int32* %"$cur_135" to %CName_None_Int32*
  %"$_literal_cost_simple-map.one_178" = alloca %Int32, align 8
  %"$simple-map.one_179" = load %Int32, %Int32* @simple-map.one, align 4
  store %Int32 %"$simple-map.one_179", %Int32* %"$_literal_cost_simple-map.one_178", align 4
  %"$$_literal_cost_simple-map.one_178_180" = bitcast %Int32* %"$_literal_cost_simple-map.one_178" to i8*
  %"$_literal_cost_call_181" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$$_literal_cost_simple-map.one_178_180")
  %"$gasadd_182" = add i64 %"$_literal_cost_call_181", 1
  %"$gasrem_183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_184" = icmp ugt i64 %"$gasadd_182", %"$gasrem_183"
  br i1 %"$gascmp_184", label %"$out_of_gas_185", label %"$have_gas_186"

"$out_of_gas_185":                                ; preds = %"$None_176"
  call void @_out_of_gas()
  br label %"$have_gas_186"

"$have_gas_186":                                  ; preds = %"$out_of_gas_185", %"$None_176"
  %"$consume_187" = sub i64 %"$gasrem_183", %"$gasadd_182"
  store i64 %"$consume_187", i64* @_gasrem, align 8
  %"$indices_buf_188_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_188_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_188_salloc_load", i64 20)
  %"$indices_buf_188_salloc" = bitcast i8* %"$indices_buf_188_salloc_salloc" to [20 x i8]*
  %"$indices_buf_188" = bitcast [20 x i8]* %"$indices_buf_188_salloc" to i8*
  %"$indices_gep_189" = getelementptr i8, i8* %"$indices_buf_188", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_189" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_190" = load i8*, i8** @_execptr, align 8
  %"$simple-map.one_192" = load %Int32, %Int32* @simple-map.one, align 4
  %"$update_value_193" = alloca %Int32, align 8
  store %Int32 %"$simple-map.one_192", %Int32* %"$update_value_193", align 4
  %"$update_value_194" = bitcast %Int32* %"$update_value_193" to i8*
  call void @_update_field(i8* %"$execptr_load_190", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_191", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_43", i32 1, i8* %"$indices_buf_188", i8* %"$update_value_194"), !dbg !35
  br label %"$matchsucc_134"

"$empty_default_138":                             ; preds = %"$have_gas_132"
  br label %"$matchsucc_134"

"$matchsucc_134":                                 ; preds = %"$have_gas_186", %"$have_gas_167", %"$empty_default_138"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @Increment(i8* %0) !dbg !37 {
entry:
  %"$_amount_196" = getelementptr i8, i8* %0, i32 0
  %"$_amount_197" = bitcast i8* %"$_amount_196" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_197", align 8
  %"$_origin_198" = getelementptr i8, i8* %0, i32 16
  %"$_origin_199" = bitcast i8* %"$_origin_198" to [20 x i8]*
  %"$_sender_200" = getelementptr i8, i8* %0, i32 36
  %"$_sender_201" = bitcast i8* %"$_sender_200" to [20 x i8]*
  call void @"$Increment_110"(%Uint128 %_amount, [20 x i8]* %"$_origin_199", [20 x i8]* %"$_sender_201"), !dbg !38
  ret void
}

define internal void @"$IncrementN_202"(%Uint128 %_amount, [20 x i8]* %"$_origin_203", [20 x i8]* %"$_sender_204", %Int32 %n) !dbg !39 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_203", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_204", align 1
  %cur = alloca %TName_Option_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int32** %cur, metadata !40, metadata !DIExpression()), !dbg !41
  %"$indices_buf_205_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_205_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_205_salloc_load", i64 20)
  %"$indices_buf_205_salloc" = bitcast i8* %"$indices_buf_205_salloc_salloc" to [20 x i8]*
  %"$indices_buf_205" = bitcast [20 x i8]* %"$indices_buf_205_salloc" to i8*
  %"$indices_gep_206" = getelementptr i8, i8* %"$indices_buf_205", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_206" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_208" = load i8*, i8** @_execptr, align 8
  %"$cur_call_209" = call i8* @_fetch_field(i8* %"$execptr_load_208", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_207", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_43", i32 1, i8* %"$indices_buf_205", i32 1), !dbg !41
  %"$cur_210" = bitcast i8* %"$cur_call_209" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$cur_210", %TName_Option_Int32** %cur, align 8
  %"$cur_211" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$$cur_211_212" = bitcast %TName_Option_Int32* %"$cur_211" to i8*
  %"$_literal_cost_call_213" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_41", i8* %"$$cur_211_212")
  %"$gasadd_214" = add i64 %"$_literal_cost_call_213", 0
  %"$gasadd_215" = add i64 %"$gasadd_214", 1
  %"$gasrem_216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_217" = icmp ugt i64 %"$gasadd_215", %"$gasrem_216"
  br i1 %"$gascmp_217", label %"$out_of_gas_218", label %"$have_gas_219"

"$out_of_gas_218":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_219"

"$have_gas_219":                                  ; preds = %"$out_of_gas_218", %entry
  %"$consume_220" = sub i64 %"$gasrem_216", %"$gasadd_215"
  store i64 %"$consume_220", i64* @_gasrem, align 8
  %"$gasrem_221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_222" = icmp ugt i64 2, %"$gasrem_221"
  br i1 %"$gascmp_222", label %"$out_of_gas_223", label %"$have_gas_224"

"$out_of_gas_223":                                ; preds = %"$have_gas_219"
  call void @_out_of_gas()
  br label %"$have_gas_224"

"$have_gas_224":                                  ; preds = %"$out_of_gas_223", %"$have_gas_219"
  %"$consume_225" = sub i64 %"$gasrem_221", 2
  store i64 %"$consume_225", i64* @_gasrem, align 8
  %"$cur_227" = load %TName_Option_Int32*, %TName_Option_Int32** %cur, align 8
  %"$cur_tag_228" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$cur_227", i32 0, i32 0
  %"$cur_tag_229" = load i8, i8* %"$cur_tag_228", align 1
  switch i8 %"$cur_tag_229", label %"$empty_default_230" [
    i8 0, label %"$Some_231"
    i8 1, label %"$None_264"
  ], !dbg !42

"$Some_231":                                      ; preds = %"$have_gas_224"
  %"$cur_232" = bitcast %TName_Option_Int32* %"$cur_227" to %CName_Some_Int32*
  %"$i_gep_233" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$cur_232", i32 0, i32 1
  %"$i_load_234" = load %Int32, %Int32* %"$i_gep_233", align 4
  %i = alloca %Int32, align 8
  store %Int32 %"$i_load_234", %Int32* %i, align 4
  %"$gasrem_235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_236" = icmp ugt i64 1, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$Some_231"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$Some_231"
  %"$consume_239" = sub i64 %"$gasrem_235", 1
  store i64 %"$consume_239", i64* @_gasrem, align 8
  %j = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %j, metadata !43, metadata !DIExpression()), !dbg !46
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 4, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$have_gas_238"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$have_gas_238"
  %"$consume_244" = sub i64 %"$gasrem_240", 4
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %"$i_245" = load %Int32, %Int32* %i, align 4
  %"$add_call_246" = call %Int32 @_add_Int32(%Int32 %"$i_245", %Int32 %n), !dbg !47
  store %Int32 %"$add_call_246", %Int32* %j, align 4, !dbg !47
  %"$_literal_cost_j_247" = alloca %Int32, align 8
  %"$j_248" = load %Int32, %Int32* %j, align 4
  store %Int32 %"$j_248", %Int32* %"$_literal_cost_j_247", align 4
  %"$$_literal_cost_j_247_249" = bitcast %Int32* %"$_literal_cost_j_247" to i8*
  %"$_literal_cost_call_250" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$$_literal_cost_j_247_249")
  %"$gasadd_251" = add i64 %"$_literal_cost_call_250", 1
  %"$gasrem_252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_253" = icmp ugt i64 %"$gasadd_251", %"$gasrem_252"
  br i1 %"$gascmp_253", label %"$out_of_gas_254", label %"$have_gas_255"

"$out_of_gas_254":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_255"

"$have_gas_255":                                  ; preds = %"$out_of_gas_254", %"$have_gas_243"
  %"$consume_256" = sub i64 %"$gasrem_252", %"$gasadd_251"
  store i64 %"$consume_256", i64* @_gasrem, align 8
  %"$indices_buf_257_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_257_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_257_salloc_load", i64 20)
  %"$indices_buf_257_salloc" = bitcast i8* %"$indices_buf_257_salloc_salloc" to [20 x i8]*
  %"$indices_buf_257" = bitcast [20 x i8]* %"$indices_buf_257_salloc" to i8*
  %"$indices_gep_258" = getelementptr i8, i8* %"$indices_buf_257", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_258" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_259" = load i8*, i8** @_execptr, align 8
  %"$j_261" = load %Int32, %Int32* %j, align 4
  %"$update_value_262" = alloca %Int32, align 8
  store %Int32 %"$j_261", %Int32* %"$update_value_262", align 4
  %"$update_value_263" = bitcast %Int32* %"$update_value_262" to i8*
  call void @_update_field(i8* %"$execptr_load_259", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_260", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_43", i32 1, i8* %"$indices_buf_257", i8* %"$update_value_263"), !dbg !48
  br label %"$matchsucc_226"

"$None_264":                                      ; preds = %"$have_gas_224"
  %"$cur_265" = bitcast %TName_Option_Int32* %"$cur_227" to %CName_None_Int32*
  %"$_literal_cost_n_266" = alloca %Int32, align 8
  store %Int32 %n, %Int32* %"$_literal_cost_n_266", align 4
  %"$$_literal_cost_n_266_267" = bitcast %Int32* %"$_literal_cost_n_266" to i8*
  %"$_literal_cost_call_268" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$$_literal_cost_n_266_267")
  %"$gasadd_269" = add i64 %"$_literal_cost_call_268", 1
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 %"$gasadd_269", %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %"$None_264"
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %"$None_264"
  %"$consume_274" = sub i64 %"$gasrem_270", %"$gasadd_269"
  store i64 %"$consume_274", i64* @_gasrem, align 8
  %"$indices_buf_275_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_275_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_275_salloc_load", i64 20)
  %"$indices_buf_275_salloc" = bitcast i8* %"$indices_buf_275_salloc_salloc" to [20 x i8]*
  %"$indices_buf_275" = bitcast [20 x i8]* %"$indices_buf_275_salloc" to i8*
  %"$indices_gep_276" = getelementptr i8, i8* %"$indices_buf_275", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_276" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast2, align 1
  %"$execptr_load_277" = load i8*, i8** @_execptr, align 8
  %"$update_value_279" = alloca %Int32, align 8
  store %Int32 %n, %Int32* %"$update_value_279", align 4
  %"$update_value_280" = bitcast %Int32* %"$update_value_279" to i8*
  call void @_update_field(i8* %"$execptr_load_277", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$access_count_278", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_43", i32 1, i8* %"$indices_buf_275", i8* %"$update_value_280"), !dbg !49
  br label %"$matchsucc_226"

"$empty_default_230":                             ; preds = %"$have_gas_224"
  br label %"$matchsucc_226"

"$matchsucc_226":                                 ; preds = %"$have_gas_273", %"$have_gas_255", %"$empty_default_230"
  ret void
}

define internal void @"$IncrementNOpt_281"(%Uint128 %_amount, [20 x i8]* %"$_origin_282", [20 x i8]* %"$_sender_283", %TName_Option_Int32* %nopt) !dbg !51 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_282", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_283", align 1
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 2, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %entry
  %"$consume_288" = sub i64 %"$gasrem_284", 2
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %"$nopt_tag_290" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %nopt, i32 0, i32 0
  %"$nopt_tag_291" = load i8, i8* %"$nopt_tag_290", align 1
  switch i8 %"$nopt_tag_291", label %"$empty_default_292" [
    i8 0, label %"$Some_293"
    i8 1, label %"$None_305"
  ], !dbg !52

"$Some_293":                                      ; preds = %"$have_gas_287"
  %"$nopt_294" = bitcast %TName_Option_Int32* %nopt to %CName_Some_Int32*
  %"$n_gep_295" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$nopt_294", i32 0, i32 1
  %"$n_load_296" = load %Int32, %Int32* %"$n_gep_295", align 4
  %n = alloca %Int32, align 8
  store %Int32 %"$n_load_296", %Int32* %n, align 4
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 1, %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %"$Some_293"
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %"$Some_293"
  %"$consume_301" = sub i64 %"$gasrem_297", 1
  store i64 %"$consume_301", i64* @_gasrem, align 8
  %"$IncrementN__origin_302" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$IncrementN__origin_302", align 1
  %"$IncrementN__sender_303" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$IncrementN__sender_303", align 1
  %"$n_304" = load %Int32, %Int32* %n, align 4
  call void @"$IncrementN_202"(%Uint128 %_amount, [20 x i8]* %"$IncrementN__origin_302", [20 x i8]* %"$IncrementN__sender_303", %Int32 %"$n_304"), !dbg !53
  br label %"$matchsucc_289"

"$None_305":                                      ; preds = %"$have_gas_287"
  %"$nopt_306" = bitcast %TName_Option_Int32* %nopt to %CName_None_Int32*
  br label %"$matchsucc_289"

"$empty_default_292":                             ; preds = %"$have_gas_287"
  br label %"$matchsucc_289"

"$matchsucc_289":                                 ; preds = %"$None_305", %"$have_gas_300", %"$empty_default_292"
  ret void
}

define void @IncrementNOpt(i8* %0) !dbg !56 {
entry:
  %"$_amount_308" = getelementptr i8, i8* %0, i32 0
  %"$_amount_309" = bitcast i8* %"$_amount_308" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_309", align 8
  %"$_origin_310" = getelementptr i8, i8* %0, i32 16
  %"$_origin_311" = bitcast i8* %"$_origin_310" to [20 x i8]*
  %"$_sender_312" = getelementptr i8, i8* %0, i32 36
  %"$_sender_313" = bitcast i8* %"$_sender_312" to [20 x i8]*
  %"$nopt_314" = getelementptr i8, i8* %0, i32 56
  %"$nopt_315" = bitcast i8* %"$nopt_314" to %TName_Option_Int32**
  %nopt = load %TName_Option_Int32*, %TName_Option_Int32** %"$nopt_315", align 8
  call void @"$IncrementNOpt_281"(%Uint128 %_amount, [20 x i8]* %"$_origin_311", [20 x i8]* %"$_sender_313", %TName_Option_Int32* %nopt), !dbg !57
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
!8 = !DILocalVariable(name: "$retval_3", scope: !3, file: !2, line: 9, type: !9)
!9 = !DIBasicType(name: "Int32", size: 4)
!10 = !DILocation(line: 9, column: 5, scope: !3)
!11 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !12, file: !12, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!12 = !DIFile(filename: ".", directory: ".")
!13 = !DILocation(line: 0, scope: !11)
!14 = !DILocation(line: 5, column: 11, scope: !11)
!15 = !DILocation(line: 9, column: 5, scope: !11)
!16 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !12, file: !12, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!17 = !DILocalVariable(name: "$access_count_4", scope: !16, file: !2, line: 13, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Map (ByStr20) (Int32)", baseType: !19, size: 8, align: 8, dwarfAddressSpace: 0)
!19 = !DIBasicType(name: "Map (ByStr20) (Int32)", size: 8)
!20 = !DILocation(line: 13, column: 7, scope: !16)
!21 = !DILocation(line: 13, column: 42, scope: !16)
!22 = distinct !DISubprogram(name: "Increment", linkageName: "Increment", scope: !2, file: !2, line: 15, type: !4, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!23 = !DILocalVariable(name: "cur", scope: !22, file: !2, line: 16, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Int32)", baseType: !25, size: 8, align: 8, dwarfAddressSpace: 0)
!25 = !DIBasicType(name: "Option (Int32)", size: 8)
!26 = !DILocation(line: 16, column: 3, scope: !22)
!27 = !DILocation(line: 17, column: 3, scope: !22)
!28 = !DILocalVariable(name: "j", scope: !29, file: !2, line: 19, type: !9)
!29 = distinct !DILexicalBlock(scope: !30, file: !2, line: 18, column: 5)
!30 = distinct !DILexicalBlock(scope: !22, file: !2, line: 17, column: 3)
!31 = !DILocation(line: 19, column: 5, scope: !29)
!32 = !DILocalVariable(name: "$simple-map.inc_1", scope: !29, file: !2, line: 19, type: !9)
!33 = !DILocation(line: 19, column: 9, scope: !29)
!34 = !DILocation(line: 20, column: 5, scope: !29)
!35 = !DILocation(line: 22, column: 5, scope: !36)
!36 = distinct !DILexicalBlock(scope: !30, file: !2, line: 21, column: 5)
!37 = distinct !DISubprogram(name: "Increment", linkageName: "Increment", scope: !2, file: !2, line: 15, type: !4, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!38 = !DILocation(line: 15, column: 12, scope: !37)
!39 = distinct !DISubprogram(name: "IncrementN", linkageName: "IncrementN", scope: !2, file: !2, line: 26, type: !4, scopeLine: 26, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!40 = !DILocalVariable(name: "cur", scope: !39, file: !2, line: 27, type: !24)
!41 = !DILocation(line: 27, column: 3, scope: !39)
!42 = !DILocation(line: 28, column: 3, scope: !39)
!43 = !DILocalVariable(name: "j", scope: !44, file: !2, line: 30, type: !9)
!44 = distinct !DILexicalBlock(scope: !45, file: !2, line: 29, column: 5)
!45 = distinct !DILexicalBlock(scope: !39, file: !2, line: 28, column: 3)
!46 = !DILocation(line: 30, column: 5, scope: !44)
!47 = !DILocation(line: 30, column: 9, scope: !44)
!48 = !DILocation(line: 31, column: 5, scope: !44)
!49 = !DILocation(line: 33, column: 5, scope: !50)
!50 = distinct !DILexicalBlock(scope: !45, file: !2, line: 32, column: 5)
!51 = distinct !DISubprogram(name: "IncrementNOpt", linkageName: "IncrementNOpt", scope: !2, file: !2, line: 37, type: !4, scopeLine: 37, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!52 = !DILocation(line: 38, column: 3, scope: !51)
!53 = !DILocation(line: 40, column: 5, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !2, line: 39, column: 5)
!55 = distinct !DILexicalBlock(scope: !51, file: !2, line: 38, column: 3)
!56 = distinct !DISubprogram(name: "IncrementNOpt", linkageName: "IncrementNOpt", scope: !2, file: !2, line: 37, type: !4, scopeLine: 37, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!57 = !DILocation(line: 37, column: 12, scope: !56)
