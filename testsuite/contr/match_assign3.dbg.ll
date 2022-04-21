

; gas_remaining: 4001999
; ModuleID = 'PM1'
source_filename = "PM1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_35" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_34"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_34" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_36"**, %"$TyDescrTy_ADTTyp_35"* }
%"$TyDescrTy_ADTTyp_Constr_36" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_40" = type { i32, %"$TyDescr_AddrFieldTyp_39"* }
%"$TyDescr_AddrFieldTyp_39" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_202" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_203" = type { %ParamDescrString, i32, %"$ParamDescr_202"* }
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_2" = global %"$TyDescrTy_PrimTyp_1" zeroinitializer
@"$TyDescr_Int32_3" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int32_Prim_2" to i8*) }
@"$TyDescr_Uint32_Prim_4" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 0 }
@"$TyDescr_Uint32_5" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint32_Prim_4" to i8*) }
@"$TyDescr_Int64_Prim_6" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 1 }
@"$TyDescr_Int64_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int64_Prim_6" to i8*) }
@"$TyDescr_Uint64_Prim_8" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 1 }
@"$TyDescr_Uint64_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint64_Prim_8" to i8*) }
@"$TyDescr_Int128_Prim_10" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 2 }
@"$TyDescr_Int128_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int128_Prim_10" to i8*) }
@"$TyDescr_Uint128_Prim_12" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 2 }
@"$TyDescr_Uint128_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint128_Prim_12" to i8*) }
@"$TyDescr_Int256_Prim_14" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 3 }
@"$TyDescr_Int256_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int256_Prim_14" to i8*) }
@"$TyDescr_Uint256_Prim_16" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 3 }
@"$TyDescr_Uint256_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint256_Prim_16" to i8*) }
@"$TyDescr_String_Prim_18" = global %"$TyDescrTy_PrimTyp_1" { i32 2, i32 0 }
@"$TyDescr_String_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_String_Prim_18" to i8*) }
@"$TyDescr_Bnum_Prim_20" = global %"$TyDescrTy_PrimTyp_1" { i32 3, i32 0 }
@"$TyDescr_Bnum_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bnum_Prim_20" to i8*) }
@"$TyDescr_Message_Prim_22" = global %"$TyDescrTy_PrimTyp_1" { i32 4, i32 0 }
@"$TyDescr_Message_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Message_Prim_22" to i8*) }
@"$TyDescr_Event_Prim_24" = global %"$TyDescrTy_PrimTyp_1" { i32 5, i32 0 }
@"$TyDescr_Event_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Event_Prim_24" to i8*) }
@"$TyDescr_Exception_Prim_26" = global %"$TyDescrTy_PrimTyp_1" { i32 6, i32 0 }
@"$TyDescr_Exception_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Exception_Prim_26" to i8*) }
@"$TyDescr_ReplicateContr_Prim_28" = global %"$TyDescrTy_PrimTyp_1" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_ReplicateContr_Prim_28" to i8*) }
@"$TyDescr_Bystr_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_30" to i8*) }
@"$TyDescr_Bystr20_Prim_32" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 20 }
@"$TyDescr_Bystr20_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr20_Prim_32" to i8*) }
@"$TyDescr_ADT_Bool_37" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Bool_ADTTyp_Specl_51" to i8*) }
@"$TyDescr_Addr_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_40"* @"$TyDescr_AddrFields_54" to i8*) }
@"$TyDescr_Bool_ADTTyp_42" = unnamed_addr constant %"$TyDescrTy_ADTTyp_35" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_53", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_34"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_34"*], [1 x %"$TyDescrTy_ADTTyp_Specl_34"*]* @"$TyDescr_Bool_ADTTyp_m_specls_52", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_43" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_44" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_44", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_43", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_46" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_47" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_47", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_46", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_49" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_36"*] [%"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Bool_True_ADTTyp_Constr_45", %"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Bool_False_ADTTyp_Constr_48"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_50" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_34" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_36"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_36"*], [2 x %"$TyDescrTy_ADTTyp_Constr_36"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_49", i32 0, i32 0), %"$TyDescrTy_ADTTyp_35"* @"$TyDescr_Bool_ADTTyp_42" }
@"$TyDescr_Bool_ADTTyp_m_specls_52" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_34"*] [%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Bool_ADTTyp_Specl_51"]
@"$TyDescr_ADT_Bool_53" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_AddrFields_54" = unnamed_addr constant %"$TyDescr_AddrTyp_40" { i32 -3, %"$TyDescr_AddrFieldTyp_39"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_79" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_84" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_87" = unnamed_addr constant [7 x i8] c"message"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Addr_41", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_37", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_31", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_204" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_205" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_206" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_202"] [%"$ParamDescr_202" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_204", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_5" }, %"$ParamDescr_202" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_205", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33" }, %"$ParamDescr_202" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_206", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_21" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_207" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_208" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_209" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_c_210" = unnamed_addr constant [1 x i8] c"c"
@"$tparams_t1_211" = unnamed_addr constant [4 x %"$ParamDescr_202"] [%"$ParamDescr_202" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_207", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_202" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_208", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_202" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_209", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_202" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_c_210", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_37" }]
@"$tname_t1_212" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_203"] [%"$TransDescr_203" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_212", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_202"* getelementptr inbounds ([4 x %"$ParamDescr_202"], [4 x %"$ParamDescr_202"]* @"$tparams_t1_211", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() !dbg !3 {
entry:
  %"$gasrem_55" = load i64, i64* @_gasrem, align 8
  %"$gascmp_56" = icmp ugt i64 5, %"$gasrem_55"
  br i1 %"$gascmp_56", label %"$out_of_gas_57", label %"$have_gas_58"

"$out_of_gas_57":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_58"

"$have_gas_58":                                   ; preds = %"$out_of_gas_57", %entry
  %"$consume_59" = sub i64 %"$gasrem_55", 5
  store i64 %"$consume_59", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() !dbg !10 {
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
  ret void
}

define internal void @"$create_event_65"(%Uint128 %_amount, [20 x i8]* %"$_origin_66", [20 x i8]* %"$_sender_67", %Int32 %m) !dbg !11 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_66", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_67", align 1
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 1, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %entry
  %"$consume_72" = sub i64 %"$gasrem_68", 1
  store i64 %"$consume_72", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !12, metadata !DIExpression()), !dbg !15
  %"$gasrem_73" = load i64, i64* @_gasrem, align 8
  %"$gascmp_74" = icmp ugt i64 1, %"$gasrem_73"
  br i1 %"$gascmp_74", label %"$out_of_gas_75", label %"$have_gas_76"

"$out_of_gas_75":                                 ; preds = %"$have_gas_71"
  call void @_out_of_gas()
  br label %"$have_gas_76"

"$have_gas_76":                                   ; preds = %"$out_of_gas_75", %"$have_gas_71"
  %"$consume_77" = sub i64 %"$gasrem_73", 1
  store i64 %"$consume_77", i64* @_gasrem, align 8
  %"$msgobj_78_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_78_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_78_salloc_load", i64 69)
  %"$msgobj_78_salloc" = bitcast i8* %"$msgobj_78_salloc_salloc" to [69 x i8]*
  %"$msgobj_78" = bitcast [69 x i8]* %"$msgobj_78_salloc" to i8*
  store i8 2, i8* %"$msgobj_78", align 1
  %"$msgobj_fname_80" = getelementptr i8, i8* %"$msgobj_78", i32 1
  %"$msgobj_fname_81" = bitcast i8* %"$msgobj_fname_80" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_79", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_81", align 8
  %"$msgobj_td_82" = getelementptr i8, i8* %"$msgobj_78", i32 17
  %"$msgobj_td_83" = bitcast i8* %"$msgobj_td_82" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_83", align 8
  %"$msgobj_v_85" = getelementptr i8, i8* %"$msgobj_78", i32 25
  %"$msgobj_v_86" = bitcast i8* %"$msgobj_v_85" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_84", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_86", align 8
  %"$msgobj_fname_88" = getelementptr i8, i8* %"$msgobj_78", i32 41
  %"$msgobj_fname_89" = bitcast i8* %"$msgobj_fname_88" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_87", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_89", align 8
  %"$msgobj_td_90" = getelementptr i8, i8* %"$msgobj_78", i32 57
  %"$msgobj_td_91" = bitcast i8* %"$msgobj_td_90" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ** %"$msgobj_td_91", align 8
  %"$msgobj_v_92" = getelementptr i8, i8* %"$msgobj_78", i32 65
  %"$msgobj_v_93" = bitcast i8* %"$msgobj_v_92" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_93", align 4
  store i8* %"$msgobj_78", i8** %e, align 8, !dbg !16
  %"$e_95" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_97" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_95")
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 %"$_literal_cost_call_97", %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_76"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_76"
  %"$consume_102" = sub i64 %"$gasrem_98", %"$_literal_cost_call_97"
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %"$execptr_load_103" = load i8*, i8** @_execptr, align 8
  %"$e_104" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_103", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_104"), !dbg !17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_105"(%Uint128 %_amount, [20 x i8]* %"$_origin_106", [20 x i8]* %"$_sender_107", %TName_Bool* %c) !dbg !18 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_106", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_107", align 1
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 1, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %entry
  %"$consume_112" = sub i64 %"$gasrem_108", 1
  store i64 %"$consume_112", i64* @_gasrem, align 8
  %x = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %x, metadata !19, metadata !DIExpression()), !dbg !21
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 2, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$have_gas_111"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$have_gas_111"
  %"$consume_117" = sub i64 %"$gasrem_113", 2
  store i64 %"$consume_117", i64* @_gasrem, align 8
  %"$c_tag_119" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_120" = load i8, i8* %"$c_tag_119", align 1
  switch i8 %"$c_tag_120", label %"$empty_default_121" [
    i8 0, label %"$True_122"
    i8 1, label %"$False_129"
  ], !dbg !22

"$True_122":                                      ; preds = %"$have_gas_116"
  %"$c_123" = bitcast %TName_Bool* %c to %CName_True*
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$True_122"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$True_122"
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem, align 8
  store %Int32 { i32 11 }, %Int32* %x, align 4, !dbg !23
  br label %"$matchsucc_118"

"$False_129":                                     ; preds = %"$have_gas_116"
  %"$c_130" = bitcast %TName_Bool* %c to %CName_False*
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$False_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$False_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  store %Int32 { i32 41 }, %Int32* %x, align 4, !dbg !26
  br label %"$matchsucc_118"

"$empty_default_121":                             ; preds = %"$have_gas_116"
  br label %"$matchsucc_118"

"$matchsucc_118":                                 ; preds = %"$have_gas_134", %"$have_gas_127", %"$empty_default_121"
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$matchsucc_118"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$matchsucc_118"
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem, align 8
  %"$create_event__origin_141" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_141", align 1
  %"$create_event__sender_142" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_142", align 1
  %"$x_143" = load %Int32, %Int32* %x, align 4
  call void @"$create_event_65"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_141", [20 x i8]* %"$create_event__sender_142", %Int32 %"$x_143"), !dbg !28
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 2, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_139"
  %"$consume_148" = sub i64 %"$gasrem_144", 2
  store i64 %"$consume_148", i64* @_gasrem, align 8
  %"$c_tag_150" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_151" = load i8, i8* %"$c_tag_150", align 1
  switch i8 %"$c_tag_151", label %"$empty_default_152" [
    i8 0, label %"$True_153"
    i8 1, label %"$False_173"
  ], !dbg !29

"$True_153":                                      ; preds = %"$have_gas_147"
  %"$c_154" = bitcast %TName_Bool* %c to %CName_True*
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$True_153"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$True_153"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %y = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %y, metadata !30, metadata !DIExpression()), !dbg !33
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_158"
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  store %Int32 { i32 101 }, %Int32* %y, align 4, !dbg !34
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_163"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %"$create_event__origin_170" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_170", align 1
  %"$create_event__sender_171" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_171", align 1
  %"$y_172" = load %Int32, %Int32* %y, align 4
  call void @"$create_event_65"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_170", [20 x i8]* %"$create_event__sender_171", %Int32 %"$y_172"), !dbg !35
  br label %"$matchsucc_149"

"$False_173":                                     ; preds = %"$have_gas_147"
  %"$c_174" = bitcast %TName_Bool* %c to %CName_False*
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %"$False_173"
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %"$False_173"
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %y1 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %y1, metadata !36, metadata !DIExpression()), !dbg !38
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_178"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_178"
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  store %Int32 { i32 102 }, %Int32* %y1, align 4, !dbg !39
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_183"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_183"
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %"$create_event__origin_190" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_190", align 1
  %"$create_event__sender_191" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_191", align 1
  %"$y_192" = load %Int32, %Int32* %y1, align 4
  call void @"$create_event_65"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_190", [20 x i8]* %"$create_event__sender_191", %Int32 %"$y_192"), !dbg !40
  br label %"$matchsucc_149"

"$empty_default_152":                             ; preds = %"$have_gas_147"
  br label %"$matchsucc_149"

"$matchsucc_149":                                 ; preds = %"$have_gas_188", %"$have_gas_168", %"$empty_default_152"
  ret void
}

define void @t1(i8* %0) !dbg !41 {
entry:
  %"$_amount_194" = getelementptr i8, i8* %0, i32 0
  %"$_amount_195" = bitcast i8* %"$_amount_194" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_195", align 8
  %"$_origin_196" = getelementptr i8, i8* %0, i32 16
  %"$_origin_197" = bitcast i8* %"$_origin_196" to [20 x i8]*
  %"$_sender_198" = getelementptr i8, i8* %0, i32 36
  %"$_sender_199" = bitcast i8* %"$_sender_198" to [20 x i8]*
  %"$c_200" = getelementptr i8, i8* %0, i32 56
  %"$c_201" = bitcast i8* %"$c_200" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_201", align 8
  call void @"$t1_105"(%Uint128 %_amount, [20 x i8]* %"$_origin_197", [20 x i8]* %"$_sender_199", %TName_Bool* %c), !dbg !42
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "match_assign3.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: ".", directory: ".")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocation(line: 0, scope: !3)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!11 = distinct !DISubprogram(name: "create_event", linkageName: "create_event", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!12 = !DILocalVariable(name: "e", scope: !11, file: !2, line: 6, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Event", baseType: !14, size: 8, align: 8, dwarfAddressSpace: 0)
!14 = !DIBasicType(name: "Event", size: 8)
!15 = !DILocation(line: 6, column: 3, scope: !11)
!16 = !DILocation(line: 6, column: 7, scope: !11)
!17 = !DILocation(line: 7, column: 3, scope: !11)
!18 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!19 = !DILocalVariable(name: "x", scope: !18, file: !2, line: 12, type: !20)
!20 = !DIBasicType(name: "Int32", size: 4)
!21 = !DILocation(line: 12, column: 3, scope: !18)
!22 = !DILocation(line: 12, column: 7, scope: !18)
!23 = !DILocation(line: 14, column: 9, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !2, line: 13, column: 9)
!25 = distinct !DILexicalBlock(scope: !18, file: !2, line: 12, column: 7)
!26 = !DILocation(line: 16, column: 9, scope: !27)
!27 = distinct !DILexicalBlock(scope: !25, file: !2, line: 15, column: 9)
!28 = !DILocation(line: 18, column: 3, scope: !18)
!29 = !DILocation(line: 20, column: 3, scope: !18)
!30 = !DILocalVariable(name: "y", scope: !31, file: !2, line: 22, type: !20)
!31 = distinct !DILexicalBlock(scope: !32, file: !2, line: 21, column: 5)
!32 = distinct !DILexicalBlock(scope: !18, file: !2, line: 20, column: 3)
!33 = !DILocation(line: 22, column: 5, scope: !31)
!34 = !DILocation(line: 22, column: 9, scope: !31)
!35 = !DILocation(line: 23, column: 5, scope: !31)
!36 = !DILocalVariable(name: "y", scope: !37, file: !2, line: 25, type: !20)
!37 = distinct !DILexicalBlock(scope: !32, file: !2, line: 24, column: 5)
!38 = !DILocation(line: 25, column: 5, scope: !37)
!39 = !DILocation(line: 25, column: 9, scope: !37)
!40 = !DILocation(line: 26, column: 5, scope: !37)
!41 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!42 = !DILocation(line: 10, column: 12, scope: !41)
