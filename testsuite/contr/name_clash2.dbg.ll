

; gas_remaining: 4001999
; ModuleID = 'NameClash1'
source_filename = "NameClash1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_4" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_38" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_37"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_37" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_39"**, %"$TyDescrTy_ADTTyp_38"* }
%"$TyDescrTy_ADTTyp_Constr_39" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_43" = type { i32, %"$TyDescr_AddrFieldTyp_42"* }
%"$TyDescr_AddrFieldTyp_42" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_195" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_196" = type { %ParamDescrString, i32, %"$ParamDescr_195"* }
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

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
@"$TyDescr_ReplicateContr_Prim_31" = global %"$TyDescrTy_PrimTyp_4" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_ReplicateContr_Prim_31" to i8*) }
@"$TyDescr_Bystr_Prim_33" = global %"$TyDescrTy_PrimTyp_4" { i32 7, i32 0 }
@"$TyDescr_Bystr_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bystr_Prim_33" to i8*) }
@"$TyDescr_Bystr20_Prim_35" = global %"$TyDescrTy_PrimTyp_4" { i32 8, i32 20 }
@"$TyDescr_Bystr20_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bystr20_Prim_35" to i8*) }
@"$TyDescr_ADT_Bool_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_Bool_ADTTyp_Specl_54" to i8*) }
@"$TyDescr_Addr_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_43"* @"$TyDescr_AddrFields_57" to i8*) }
@"$TyDescr_Bool_ADTTyp_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_56", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_37"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_37"*], [1 x %"$TyDescrTy_ADTTyp_Specl_37"*]* @"$TyDescr_Bool_ADTTyp_m_specls_55", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_46" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_47" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_47", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_46", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_49" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_50" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_50", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_49", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_52" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_39"*] [%"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_Bool_True_ADTTyp_Constr_48", %"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_Bool_False_ADTTyp_Constr_51"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_53" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_37" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_53", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_39"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_39"*], [2 x %"$TyDescrTy_ADTTyp_Constr_39"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_38"* @"$TyDescr_Bool_ADTTyp_45" }
@"$TyDescr_Bool_ADTTyp_m_specls_55" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_37"*] [%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_Bool_ADTTyp_Specl_54"]
@"$TyDescr_ADT_Bool_56" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_AddrFields_57" = unnamed_addr constant %"$TyDescr_AddrTyp_43" { i32 -3, %"$TyDescr_AddrFieldTyp_42"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$x_74" = unnamed_addr constant [2 x i8] c"x\00"
@"$stringlit_92" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_97" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_100" = unnamed_addr constant [7 x i8] c"message"
@"$x_125" = unnamed_addr constant [2 x i8] c"x\00"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_28", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_Addr_44", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_40", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Bnum_24", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_Exception_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_34", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_32", %_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_197" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_198" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_199" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_195"] [%"$ParamDescr_195" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_197", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_8" }, %"$ParamDescr_195" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_198", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36" }, %"$ParamDescr_195" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_199", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_24" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_200" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_201" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_202" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_c_203" = unnamed_addr constant [1 x i8] c"c"
@"$tparams_t1_204" = unnamed_addr constant [4 x %"$ParamDescr_195"] [%"$ParamDescr_195" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_200", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }, %"$ParamDescr_195" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_201", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_195" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_202", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_195" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_c_203", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_40" }]
@"$tname_t1_205" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_196"] [%"$TransDescr_196" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_205", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_195"* getelementptr inbounds ([4 x %"$ParamDescr_195"], [4 x %"$ParamDescr_195"]* @"$tparams_t1_204", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() !dbg !3 {
entry:
  %"$gasrem_58" = load i64, i64* @_gasrem, align 8
  %"$gascmp_59" = icmp ugt i64 5, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %entry
  %"$consume_62" = sub i64 %"$gasrem_58", 5
  store i64 %"$consume_62", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() !dbg !10 {
entry:
  %"$gasrem_63" = load i64, i64* @_gasrem, align 8
  %"$gascmp_64" = icmp ugt i64 1, %"$gasrem_63"
  br i1 %"$gascmp_64", label %"$out_of_gas_65", label %"$have_gas_66"

"$out_of_gas_65":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_66"

"$have_gas_66":                                   ; preds = %"$out_of_gas_65", %entry
  %"$consume_67" = sub i64 %"$gasrem_63", 1
  store i64 %"$consume_67", i64* @_gasrem, align 8
  %"$x_3" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$x_3", metadata !11, metadata !DIExpression()), !dbg !13
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 1, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %"$have_gas_66"
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %"$have_gas_66"
  %"$consume_72" = sub i64 %"$gasrem_68", 1
  store i64 %"$consume_72", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$x_3", align 4, !dbg !14
  %"$execptr_load_73" = load i8*, i8** @_execptr, align 8
  %"$$x_3_75" = load %Int32, %Int32* %"$x_3", align 4
  %"$update_value_76" = alloca %Int32, align 8
  store %Int32 %"$$x_3_75", %Int32* %"$update_value_76", align 4
  %"$update_value_77" = bitcast %Int32* %"$update_value_76" to i8*
  call void @_update_field(i8* %"$execptr_load_73", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_74", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_6", i32 0, i8* null, i8* %"$update_value_77"), !dbg !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$create_event_78"(%Uint128 %_amount, [20 x i8]* %"$_origin_79", [20 x i8]* %"$_sender_80", %Int32 %m) !dbg !15 {
entry:
  %"$m_121" = alloca %Int32, align 8
  store %Int32 %m, %Int32* %"$m_121", align 4
  call void @llvm.dbg.declare(metadata %Int32* %"$m_121", metadata !16, metadata !DIExpression()), !dbg !17
  %"$_sender_120" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_80", [20 x i8]** %"$_sender_120", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_120", metadata !18, metadata !DIExpression()), !dbg !20
  %"$_origin_119" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_79", [20 x i8]** %"$_origin_119", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_119", metadata !21, metadata !DIExpression()), !dbg !20
  %"$_amount_118" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_118", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_118", metadata !22, metadata !DIExpression()), !dbg !20
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_79", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_80", align 1
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 1, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %entry
  %"$consume_85" = sub i64 %"$gasrem_81", 1
  store i64 %"$consume_85", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !24, metadata !DIExpression()), !dbg !27
  %"$gasrem_86" = load i64, i64* @_gasrem, align 8
  %"$gascmp_87" = icmp ugt i64 1, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %"$have_gas_84"
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %"$have_gas_84"
  %"$consume_90" = sub i64 %"$gasrem_86", 1
  store i64 %"$consume_90", i64* @_gasrem, align 8
  %"$msgobj_91_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_91_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_91_salloc_load", i64 69)
  %"$msgobj_91_salloc" = bitcast i8* %"$msgobj_91_salloc_salloc" to [69 x i8]*
  %"$msgobj_91" = bitcast [69 x i8]* %"$msgobj_91_salloc" to i8*
  store i8 2, i8* %"$msgobj_91", align 1
  %"$msgobj_fname_93" = getelementptr i8, i8* %"$msgobj_91", i32 1
  %"$msgobj_fname_94" = bitcast i8* %"$msgobj_fname_93" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_92", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_94", align 8
  %"$msgobj_td_95" = getelementptr i8, i8* %"$msgobj_91", i32 17
  %"$msgobj_td_96" = bitcast i8* %"$msgobj_td_95" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_96", align 8
  %"$msgobj_v_98" = getelementptr i8, i8* %"$msgobj_91", i32 25
  %"$msgobj_v_99" = bitcast i8* %"$msgobj_v_98" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_97", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_99", align 8
  %"$msgobj_fname_101" = getelementptr i8, i8* %"$msgobj_91", i32 41
  %"$msgobj_fname_102" = bitcast i8* %"$msgobj_fname_101" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_100", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_102", align 8
  %"$msgobj_td_103" = getelementptr i8, i8* %"$msgobj_91", i32 57
  %"$msgobj_td_104" = bitcast i8* %"$msgobj_td_103" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_6", %_TyDescrTy_Typ** %"$msgobj_td_104", align 8
  %"$msgobj_v_105" = getelementptr i8, i8* %"$msgobj_91", i32 65
  %"$msgobj_v_106" = bitcast i8* %"$msgobj_v_105" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_106", align 4
  store i8* %"$msgobj_91", i8** %e, align 8, !dbg !28
  %"$e_108" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_110" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_28", i8* %"$e_108")
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 %"$_literal_cost_call_110", %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_89"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_89"
  %"$consume_115" = sub i64 %"$gasrem_111", %"$_literal_cost_call_110"
  store i64 %"$consume_115", i64* @_gasrem, align 8
  %"$execptr_load_116" = load i8*, i8** @_execptr, align 8
  %"$e_117" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_116", %_TyDescrTy_Typ* @"$TyDescr_Event_28", i8* %"$e_117"), !dbg !29
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_122"(%Uint128 %_amount, [20 x i8]* %"$_origin_123", [20 x i8]* %"$_sender_124", %TName_Bool* %c) !dbg !30 {
entry:
  %"$c_185" = alloca %TName_Bool*, align 8
  store %TName_Bool* %c, %TName_Bool** %"$c_185", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$c_185", metadata !31, metadata !DIExpression()), !dbg !34
  %"$_sender_184" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_124", [20 x i8]** %"$_sender_184", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_184", metadata !35, metadata !DIExpression()), !dbg !36
  %"$_origin_183" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_123", [20 x i8]** %"$_origin_183", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_183", metadata !37, metadata !DIExpression()), !dbg !36
  %"$_amount_182" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_182", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_182", metadata !38, metadata !DIExpression()), !dbg !36
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_123", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_124", align 1
  %"$x_1" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$x_1", metadata !39, metadata !DIExpression()), !dbg !40
  %"$execptr_load_126" = load i8*, i8** @_execptr, align 8
  %"$$x_1_call_127" = call i8* @_fetch_field(i8* %"$execptr_load_126", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_125", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_6", i32 0, i8* null, i32 1), !dbg !40
  %"$$x_1_128" = bitcast i8* %"$$x_1_call_127" to %Int32*
  %"$$x_1_129" = load %Int32, %Int32* %"$$x_1_128", align 4
  store %Int32 %"$$x_1_129", %Int32* %"$x_1", align 4
  %"$_literal_cost_$x_1_130" = alloca %Int32, align 8
  %"$$x_1_131" = load %Int32, %Int32* %"$x_1", align 4
  store %Int32 %"$$x_1_131", %Int32* %"$_literal_cost_$x_1_130", align 4
  %"$$_literal_cost_$x_1_130_132" = bitcast %Int32* %"$_literal_cost_$x_1_130" to i8*
  %"$_literal_cost_call_133" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_$x_1_130_132")
  %"$gasadd_134" = add i64 %"$_literal_cost_call_133", 0
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 %"$gasadd_134", %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %entry
  %"$consume_139" = sub i64 %"$gasrem_135", %"$gasadd_134"
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_138"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %y = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %y, metadata !41, metadata !DIExpression()), !dbg !42
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$x_2" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$x_2", metadata !43, metadata !DIExpression()), !dbg !44
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_148"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$x_2", align 4, !dbg !45
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_153"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %"$$x_2_160" = load %Int32, %Int32* %"$x_2", align 4
  store %Int32 %"$$x_2_160", %Int32* %y, align 4, !dbg !46
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_158"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  %z = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %z, metadata !47, metadata !DIExpression()), !dbg !48
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 4, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_164"
  %"$consume_170" = sub i64 %"$gasrem_166", 4
  store i64 %"$consume_170", i64* @_gasrem, align 8
  %"$$x_1_171" = load %Int32, %Int32* %"$x_1", align 4
  %"$y_172" = load %Int32, %Int32* %y, align 4
  %"$add_call_173" = call %Int32 @_add_Int32(%Int32 %"$$x_1_171", %Int32 %"$y_172"), !dbg !49
  store %Int32 %"$add_call_173", %Int32* %z, align 4, !dbg !49
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_169"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %"$create_event__origin_179" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_179", align 1
  %"$create_event__sender_180" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_180", align 1
  %"$z_181" = load %Int32, %Int32* %z, align 4
  call void @"$create_event_78"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_179", [20 x i8]* %"$create_event__sender_180", %Int32 %"$z_181"), !dbg !50
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @t1(i8* %0) !dbg !51 {
entry:
  %"$_amount_187" = getelementptr i8, i8* %0, i32 0
  %"$_amount_188" = bitcast i8* %"$_amount_187" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_188", align 8
  %"$_origin_189" = getelementptr i8, i8* %0, i32 16
  %"$_origin_190" = bitcast i8* %"$_origin_189" to [20 x i8]*
  %"$_sender_191" = getelementptr i8, i8* %0, i32 36
  %"$_sender_192" = bitcast i8* %"$_sender_191" to [20 x i8]*
  %"$c_193" = getelementptr i8, i8* %0, i32 56
  %"$c_194" = bitcast i8* %"$c_193" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_194", align 8
  call void @"$t1_122"(%Uint128 %_amount, [20 x i8]* %"$_origin_190", [20 x i8]* %"$_sender_192", %TName_Bool* %c), !dbg !52
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "name_clash2.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: ".", directory: ".")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocation(line: 0, scope: !3)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!11 = !DILocalVariable(name: "$x_3", scope: !10, file: !2, line: 5, type: !12)
!12 = !DIBasicType(name: "Int32", size: 4)
!13 = !DILocation(line: 5, column: 7, scope: !10)
!14 = !DILocation(line: 5, column: 19, scope: !10)
!15 = distinct !DISubprogram(name: "create_event", linkageName: "create_event", scope: !2, file: !2, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!16 = !DILocalVariable(name: "m", scope: !15, file: !2, line: 7, type: !12)
!17 = !DILocation(line: 7, column: 25, scope: !15)
!18 = !DILocalVariable(name: "_sender", scope: !15, file: !2, line: 7, type: !19)
!19 = !DIBasicType(name: "ByStr20 with end", size: 20)
!20 = !DILocation(line: 7, column: 11, scope: !15)
!21 = !DILocalVariable(name: "_origin", scope: !15, file: !2, line: 7, type: !19)
!22 = !DILocalVariable(name: "_amount", scope: !15, file: !2, line: 7, type: !23)
!23 = !DIBasicType(name: "Uint128", size: 16)
!24 = !DILocalVariable(name: "e", scope: !15, file: !2, line: 8, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Event", baseType: !26, size: 8, align: 8, dwarfAddressSpace: 0)
!26 = !DIBasicType(name: "Event", size: 8)
!27 = !DILocation(line: 8, column: 3, scope: !15)
!28 = !DILocation(line: 8, column: 7, scope: !15)
!29 = !DILocation(line: 9, column: 3, scope: !15)
!30 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!31 = !DILocalVariable(name: "c", scope: !30, file: !2, line: 12, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !33, size: 8, align: 8, dwarfAddressSpace: 0)
!33 = !DIBasicType(name: "Bool", size: 8)
!34 = !DILocation(line: 12, column: 15, scope: !30)
!35 = !DILocalVariable(name: "_sender", scope: !30, file: !2, line: 12, type: !19)
!36 = !DILocation(line: 12, column: 12, scope: !30)
!37 = !DILocalVariable(name: "_origin", scope: !30, file: !2, line: 12, type: !19)
!38 = !DILocalVariable(name: "_amount", scope: !30, file: !2, line: 12, type: !23)
!39 = !DILocalVariable(name: "$x_1", scope: !30, file: !2, line: 13, type: !12)
!40 = !DILocation(line: 13, column: 3, scope: !30)
!41 = !DILocalVariable(name: "y", scope: !30, file: !2, line: 14, type: !12)
!42 = !DILocation(line: 14, column: 3, scope: !30)
!43 = !DILocalVariable(name: "$x_2", scope: !30, file: !2, line: 15, type: !12)
!44 = !DILocation(line: 15, column: 9, scope: !30)
!45 = !DILocation(line: 15, column: 13, scope: !30)
!46 = !DILocation(line: 16, column: 5, scope: !30)
!47 = !DILocalVariable(name: "z", scope: !30, file: !2, line: 17, type: !12)
!48 = !DILocation(line: 17, column: 3, scope: !30)
!49 = !DILocation(line: 17, column: 7, scope: !30)
!50 = !DILocation(line: 18, column: 3, scope: !30)
!51 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!52 = !DILocation(line: 12, column: 12, scope: !51)
