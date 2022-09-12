

; gas_remaining: 4001999
; ModuleID = 'PM1'
source_filename = "PM1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_3" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_37" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_36"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_36" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_38"**, %"$TyDescrTy_ADTTyp_37"* }
%"$TyDescrTy_ADTTyp_Constr_38" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_42" = type { i32, %"$TyDescr_AddrFieldTyp_41"* }
%"$TyDescr_AddrFieldTyp_41" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_230" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_231" = type { %ParamDescrString, i32, %"$ParamDescr_230"* }
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_4" = global %"$TyDescrTy_PrimTyp_3" zeroinitializer
@"$TyDescr_Int32_5" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Int32_Prim_4" to i8*) }
@"$TyDescr_Uint32_Prim_6" = global %"$TyDescrTy_PrimTyp_3" { i32 1, i32 0 }
@"$TyDescr_Uint32_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Uint32_Prim_6" to i8*) }
@"$TyDescr_Int64_Prim_8" = global %"$TyDescrTy_PrimTyp_3" { i32 0, i32 1 }
@"$TyDescr_Int64_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Int64_Prim_8" to i8*) }
@"$TyDescr_Uint64_Prim_10" = global %"$TyDescrTy_PrimTyp_3" { i32 1, i32 1 }
@"$TyDescr_Uint64_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Uint64_Prim_10" to i8*) }
@"$TyDescr_Int128_Prim_12" = global %"$TyDescrTy_PrimTyp_3" { i32 0, i32 2 }
@"$TyDescr_Int128_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Int128_Prim_12" to i8*) }
@"$TyDescr_Uint128_Prim_14" = global %"$TyDescrTy_PrimTyp_3" { i32 1, i32 2 }
@"$TyDescr_Uint128_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Uint128_Prim_14" to i8*) }
@"$TyDescr_Int256_Prim_16" = global %"$TyDescrTy_PrimTyp_3" { i32 0, i32 3 }
@"$TyDescr_Int256_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Int256_Prim_16" to i8*) }
@"$TyDescr_Uint256_Prim_18" = global %"$TyDescrTy_PrimTyp_3" { i32 1, i32 3 }
@"$TyDescr_Uint256_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Uint256_Prim_18" to i8*) }
@"$TyDescr_String_Prim_20" = global %"$TyDescrTy_PrimTyp_3" { i32 2, i32 0 }
@"$TyDescr_String_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_String_Prim_20" to i8*) }
@"$TyDescr_Bnum_Prim_22" = global %"$TyDescrTy_PrimTyp_3" { i32 3, i32 0 }
@"$TyDescr_Bnum_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Bnum_Prim_22" to i8*) }
@"$TyDescr_Message_Prim_24" = global %"$TyDescrTy_PrimTyp_3" { i32 4, i32 0 }
@"$TyDescr_Message_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Message_Prim_24" to i8*) }
@"$TyDescr_Event_Prim_26" = global %"$TyDescrTy_PrimTyp_3" { i32 5, i32 0 }
@"$TyDescr_Event_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Event_Prim_26" to i8*) }
@"$TyDescr_Exception_Prim_28" = global %"$TyDescrTy_PrimTyp_3" { i32 6, i32 0 }
@"$TyDescr_Exception_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Exception_Prim_28" to i8*) }
@"$TyDescr_ReplicateContr_Prim_30" = global %"$TyDescrTy_PrimTyp_3" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_ReplicateContr_Prim_30" to i8*) }
@"$TyDescr_Bystr_Prim_32" = global %"$TyDescrTy_PrimTyp_3" { i32 7, i32 0 }
@"$TyDescr_Bystr_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Bystr_Prim_32" to i8*) }
@"$TyDescr_Bystr20_Prim_34" = global %"$TyDescrTy_PrimTyp_3" { i32 8, i32 20 }
@"$TyDescr_Bystr20_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_3"* @"$TyDescr_Bystr20_Prim_34" to i8*) }
@"$TyDescr_ADT_Bool_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Bool_ADTTyp_Specl_53" to i8*) }
@"$TyDescr_Addr_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_42"* @"$TyDescr_AddrFields_56" to i8*) }
@"$TyDescr_Bool_ADTTyp_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_55", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_Bool_ADTTyp_m_specls_54", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_45" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_46" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_46", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_48" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_49" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_49", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_51" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Bool_True_ADTTyp_Constr_47", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Bool_False_ADTTyp_Constr_50"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_52" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_Bool_ADTTyp_44" }
@"$TyDescr_Bool_ADTTyp_m_specls_54" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Bool_ADTTyp_Specl_53"]
@"$TyDescr_ADT_Bool_55" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_AddrFields_56" = unnamed_addr constant %"$TyDescr_AddrTyp_42" { i32 -3, %"$TyDescr_AddrFieldTyp_41"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_81" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_86" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_89" = unnamed_addr constant [7 x i8] c"message"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_27", %_TyDescrTy_Typ* @"$TyDescr_Int64_9", %_TyDescrTy_Typ* @"$TyDescr_Addr_43", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_19", %_TyDescrTy_Typ* @"$TyDescr_Uint32_7", %_TyDescrTy_Typ* @"$TyDescr_Uint64_11", %_TyDescrTy_Typ* @"$TyDescr_Bnum_23", %_TyDescrTy_Typ* @"$TyDescr_Uint128_15", %_TyDescrTy_Typ* @"$TyDescr_Exception_29", %_TyDescrTy_Typ* @"$TyDescr_String_21", %_TyDescrTy_Typ* @"$TyDescr_Int256_17", %_TyDescrTy_Typ* @"$TyDescr_Int128_13", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_31", %_TyDescrTy_Typ* @"$TyDescr_Message_25", %_TyDescrTy_Typ* @"$TyDescr_Int32_5"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_232" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_233" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_234" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_230"] [%"$ParamDescr_230" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_232", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_7" }, %"$ParamDescr_230" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_233", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_230" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_234", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_23" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_235" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_236" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_237" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_c_238" = unnamed_addr constant [1 x i8] c"c"
@"$tparams_t1_239" = unnamed_addr constant [4 x %"$ParamDescr_230"] [%"$ParamDescr_230" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_235", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_15" }, %"$ParamDescr_230" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_236", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_230" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_237", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_230" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_c_238", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_39" }]
@"$tname_t1_240" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_231"] [%"$TransDescr_231" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_240", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_230"* getelementptr inbounds ([4 x %"$ParamDescr_230"], [4 x %"$ParamDescr_230"]* @"$tparams_t1_239", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() !dbg !3 {
entry:
  %"$gasrem_57" = load i64, i64* @_gasrem, align 8
  %"$gascmp_58" = icmp ugt i64 5, %"$gasrem_57"
  br i1 %"$gascmp_58", label %"$out_of_gas_59", label %"$have_gas_60"

"$out_of_gas_59":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_60"

"$have_gas_60":                                   ; preds = %"$out_of_gas_59", %entry
  %"$consume_61" = sub i64 %"$gasrem_57", 5
  store i64 %"$consume_61", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() !dbg !10 {
entry:
  %"$gasrem_62" = load i64, i64* @_gasrem, align 8
  %"$gascmp_63" = icmp ugt i64 1, %"$gasrem_62"
  br i1 %"$gascmp_63", label %"$out_of_gas_64", label %"$have_gas_65"

"$out_of_gas_64":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_65"

"$have_gas_65":                                   ; preds = %"$out_of_gas_64", %entry
  %"$consume_66" = sub i64 %"$gasrem_62", 1
  store i64 %"$consume_66", i64* @_gasrem, align 8
  ret void
}

define internal void @"$create_event_67"(%Uint128 %_amount, [20 x i8]* %"$_origin_68", [20 x i8]* %"$_sender_69", %Int32 %m) !dbg !11 {
entry:
  %"$m_110" = alloca %Int32, align 8
  store %Int32 %m, %Int32* %"$m_110", align 4
  call void @llvm.dbg.declare(metadata %Int32* %"$m_110", metadata !12, metadata !DIExpression()), !dbg !14
  %"$_sender_109" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_69", [20 x i8]** %"$_sender_109", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_109", metadata !15, metadata !DIExpression()), !dbg !17
  %"$_origin_108" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_68", [20 x i8]** %"$_origin_108", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_108", metadata !18, metadata !DIExpression()), !dbg !17
  %"$_amount_107" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_107", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_107", metadata !19, metadata !DIExpression()), !dbg !17
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_68", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_69", align 1
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 1, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %entry
  %"$consume_74" = sub i64 %"$gasrem_70", 1
  store i64 %"$consume_74", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !21, metadata !DIExpression()), !dbg !24
  %"$gasrem_75" = load i64, i64* @_gasrem, align 8
  %"$gascmp_76" = icmp ugt i64 1, %"$gasrem_75"
  br i1 %"$gascmp_76", label %"$out_of_gas_77", label %"$have_gas_78"

"$out_of_gas_77":                                 ; preds = %"$have_gas_73"
  call void @_out_of_gas()
  br label %"$have_gas_78"

"$have_gas_78":                                   ; preds = %"$out_of_gas_77", %"$have_gas_73"
  %"$consume_79" = sub i64 %"$gasrem_75", 1
  store i64 %"$consume_79", i64* @_gasrem, align 8
  %"$msgobj_80_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_80_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_80_salloc_load", i64 69)
  %"$msgobj_80_salloc" = bitcast i8* %"$msgobj_80_salloc_salloc" to [69 x i8]*
  %"$msgobj_80" = bitcast [69 x i8]* %"$msgobj_80_salloc" to i8*
  store i8 2, i8* %"$msgobj_80", align 1
  %"$msgobj_fname_82" = getelementptr i8, i8* %"$msgobj_80", i32 1
  %"$msgobj_fname_83" = bitcast i8* %"$msgobj_fname_82" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_81", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_83", align 8
  %"$msgobj_td_84" = getelementptr i8, i8* %"$msgobj_80", i32 17
  %"$msgobj_td_85" = bitcast i8* %"$msgobj_td_84" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_21", %_TyDescrTy_Typ** %"$msgobj_td_85", align 8
  %"$msgobj_v_87" = getelementptr i8, i8* %"$msgobj_80", i32 25
  %"$msgobj_v_88" = bitcast i8* %"$msgobj_v_87" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_86", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_88", align 8
  %"$msgobj_fname_90" = getelementptr i8, i8* %"$msgobj_80", i32 41
  %"$msgobj_fname_91" = bitcast i8* %"$msgobj_fname_90" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_89", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_91", align 8
  %"$msgobj_td_92" = getelementptr i8, i8* %"$msgobj_80", i32 57
  %"$msgobj_td_93" = bitcast i8* %"$msgobj_td_92" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_5", %_TyDescrTy_Typ** %"$msgobj_td_93", align 8
  %"$msgobj_v_94" = getelementptr i8, i8* %"$msgobj_80", i32 65
  %"$msgobj_v_95" = bitcast i8* %"$msgobj_v_94" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_95", align 4
  store i8* %"$msgobj_80", i8** %e, align 8, !dbg !25
  %"$e_97" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_99" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_27", i8* %"$e_97")
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 %"$_literal_cost_call_99", %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_78"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_78"
  %"$consume_104" = sub i64 %"$gasrem_100", %"$_literal_cost_call_99"
  store i64 %"$consume_104", i64* @_gasrem, align 8
  %"$execptr_load_105" = load i8*, i8** @_execptr, align 8
  %"$e_106" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_105", %_TyDescrTy_Typ* @"$TyDescr_Event_27", i8* %"$e_106"), !dbg !26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_111"(%Uint128 %_amount, [20 x i8]* %"$_origin_112", [20 x i8]* %"$_sender_113", %TName_Bool* %c) !dbg !27 {
entry:
  %"$c_220" = alloca %TName_Bool*, align 8
  store %TName_Bool* %c, %TName_Bool** %"$c_220", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$c_220", metadata !28, metadata !DIExpression()), !dbg !31
  %"$_sender_219" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_113", [20 x i8]** %"$_sender_219", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_219", metadata !32, metadata !DIExpression()), !dbg !33
  %"$_origin_218" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_112", [20 x i8]** %"$_origin_218", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_218", metadata !34, metadata !DIExpression()), !dbg !33
  %"$_amount_217" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_217", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_217", metadata !35, metadata !DIExpression()), !dbg !33
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_112", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_113", align 1
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %entry
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem, align 8
  %x = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %x, metadata !36, metadata !DIExpression()), !dbg !37
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 2, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %"$have_gas_117"
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %"$have_gas_117"
  %"$consume_123" = sub i64 %"$gasrem_119", 2
  store i64 %"$consume_123", i64* @_gasrem, align 8
  %"$c_tag_125" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_126" = load i8, i8* %"$c_tag_125", align 1
  switch i8 %"$c_tag_126", label %"$empty_default_127" [
    i8 0, label %"$True_128"
    i8 1, label %"$False_135"
  ], !dbg !38

"$True_128":                                      ; preds = %"$have_gas_122"
  %"$c_129" = bitcast %TName_Bool* %c to %CName_True*
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$True_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$True_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  store %Int32 { i32 11 }, %Int32* %x, align 4, !dbg !39
  br label %"$matchsucc_124"

"$False_135":                                     ; preds = %"$have_gas_122"
  %"$c_136" = bitcast %TName_Bool* %c to %CName_False*
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 1, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$False_135"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$False_135"
  %"$consume_141" = sub i64 %"$gasrem_137", 1
  store i64 %"$consume_141", i64* @_gasrem, align 8
  store %Int32 { i32 41 }, %Int32* %x, align 4, !dbg !42
  br label %"$matchsucc_124"

"$empty_default_127":                             ; preds = %"$have_gas_122"
  br label %"$matchsucc_124"

"$matchsucc_124":                                 ; preds = %"$have_gas_140", %"$have_gas_133", %"$empty_default_127"
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 1, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %"$matchsucc_124"
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %"$matchsucc_124"
  %"$consume_146" = sub i64 %"$gasrem_142", 1
  store i64 %"$consume_146", i64* @_gasrem, align 8
  %"$create_event__origin_147" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_147", align 1
  %"$create_event__sender_148" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_148", align 1
  %"$x_149" = load %Int32, %Int32* %x, align 4
  call void @"$create_event_67"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_147", [20 x i8]* %"$create_event__sender_148", %Int32 %"$x_149"), !dbg !44
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_145"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_145"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  %y = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %y, metadata !45, metadata !DIExpression()), !dbg !46
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_153"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  store %Int32 { i32 31 }, %Int32* %y, align 4, !dbg !47
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 2, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_158"
  %"$consume_164" = sub i64 %"$gasrem_160", 2
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %"$c_tag_166" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_167" = load i8, i8* %"$c_tag_166", align 1
  switch i8 %"$c_tag_167", label %"$empty_default_168" [
    i8 0, label %"$True_169"
    i8 1, label %"$False_189"
  ], !dbg !48

"$True_169":                                      ; preds = %"$have_gas_163"
  %"$c_170" = bitcast %TName_Bool* %c to %CName_True*
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$True_169"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$True_169"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %"$y_1" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$y_1", metadata !49, metadata !DIExpression()), !dbg !52
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_174"
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  store %Int32 { i32 101 }, %Int32* %"$y_1", align 4, !dbg !53
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_179"
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %"$create_event__origin_186" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_186", align 1
  %"$create_event__sender_187" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_187", align 1
  %"$$y_1_188" = load %Int32, %Int32* %"$y_1", align 4
  call void @"$create_event_67"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_186", [20 x i8]* %"$create_event__sender_187", %Int32 %"$$y_1_188"), !dbg !54
  br label %"$matchsucc_165"

"$False_189":                                     ; preds = %"$have_gas_163"
  %"$c_190" = bitcast %TName_Bool* %c to %CName_False*
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 1, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %"$False_189"
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %"$False_189"
  %"$consume_195" = sub i64 %"$gasrem_191", 1
  store i64 %"$consume_195", i64* @_gasrem, align 8
  %"$y_2" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$y_2", metadata !55, metadata !DIExpression()), !dbg !57
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 1, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %"$have_gas_194"
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %"$have_gas_194"
  %"$consume_200" = sub i64 %"$gasrem_196", 1
  store i64 %"$consume_200", i64* @_gasrem, align 8
  store %Int32 { i32 102 }, %Int32* %"$y_2", align 4, !dbg !58
  %"$gasrem_201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_202" = icmp ugt i64 1, %"$gasrem_201"
  br i1 %"$gascmp_202", label %"$out_of_gas_203", label %"$have_gas_204"

"$out_of_gas_203":                                ; preds = %"$have_gas_199"
  call void @_out_of_gas()
  br label %"$have_gas_204"

"$have_gas_204":                                  ; preds = %"$out_of_gas_203", %"$have_gas_199"
  %"$consume_205" = sub i64 %"$gasrem_201", 1
  store i64 %"$consume_205", i64* @_gasrem, align 8
  %"$create_event__origin_206" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_206", align 1
  %"$create_event__sender_207" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_207", align 1
  %"$$y_2_208" = load %Int32, %Int32* %"$y_2", align 4
  call void @"$create_event_67"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_206", [20 x i8]* %"$create_event__sender_207", %Int32 %"$$y_2_208"), !dbg !59
  br label %"$matchsucc_165"

"$empty_default_168":                             ; preds = %"$have_gas_163"
  br label %"$matchsucc_165"

"$matchsucc_165":                                 ; preds = %"$have_gas_204", %"$have_gas_184", %"$empty_default_168"
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 1, %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %"$matchsucc_165"
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %"$matchsucc_165"
  %"$consume_213" = sub i64 %"$gasrem_209", 1
  store i64 %"$consume_213", i64* @_gasrem, align 8
  %"$create_event__origin_214" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_214", align 1
  %"$create_event__sender_215" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_215", align 1
  %"$y_216" = load %Int32, %Int32* %y, align 4
  call void @"$create_event_67"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_214", [20 x i8]* %"$create_event__sender_215", %Int32 %"$y_216"), !dbg !60
  ret void
}

define void @t1(i8* %0) !dbg !61 {
entry:
  %"$_amount_222" = getelementptr i8, i8* %0, i32 0
  %"$_amount_223" = bitcast i8* %"$_amount_222" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_223", align 8
  %"$_origin_224" = getelementptr i8, i8* %0, i32 16
  %"$_origin_225" = bitcast i8* %"$_origin_224" to [20 x i8]*
  %"$_sender_226" = getelementptr i8, i8* %0, i32 36
  %"$_sender_227" = bitcast i8* %"$_sender_226" to [20 x i8]*
  %"$c_228" = getelementptr i8, i8* %0, i32 56
  %"$c_229" = bitcast i8* %"$c_228" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_229", align 8
  call void @"$t1_111"(%Uint128 %_amount, [20 x i8]* %"$_origin_225", [20 x i8]* %"$_sender_227", %TName_Bool* %c), !dbg !62
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "match_assign.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: ".", directory: ".")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocation(line: 0, scope: !3)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!11 = distinct !DISubprogram(name: "create_event", linkageName: "create_event", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!12 = !DILocalVariable(name: "m", scope: !11, file: !2, line: 5, type: !13)
!13 = !DIBasicType(name: "Int32", size: 4)
!14 = !DILocation(line: 5, column: 25, scope: !11)
!15 = !DILocalVariable(name: "_sender", scope: !11, file: !2, line: 5, type: !16)
!16 = !DIBasicType(name: "ByStr20 with end", size: 20)
!17 = !DILocation(line: 5, column: 11, scope: !11)
!18 = !DILocalVariable(name: "_origin", scope: !11, file: !2, line: 5, type: !16)
!19 = !DILocalVariable(name: "_amount", scope: !11, file: !2, line: 5, type: !20)
!20 = !DIBasicType(name: "Uint128", size: 16)
!21 = !DILocalVariable(name: "e", scope: !11, file: !2, line: 6, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Event", baseType: !23, size: 8, align: 8, dwarfAddressSpace: 0)
!23 = !DIBasicType(name: "Event", size: 8)
!24 = !DILocation(line: 6, column: 3, scope: !11)
!25 = !DILocation(line: 6, column: 7, scope: !11)
!26 = !DILocation(line: 7, column: 3, scope: !11)
!27 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!28 = !DILocalVariable(name: "c", scope: !27, file: !2, line: 10, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !30, size: 8, align: 8, dwarfAddressSpace: 0)
!30 = !DIBasicType(name: "Bool", size: 8)
!31 = !DILocation(line: 10, column: 15, scope: !27)
!32 = !DILocalVariable(name: "_sender", scope: !27, file: !2, line: 10, type: !16)
!33 = !DILocation(line: 10, column: 12, scope: !27)
!34 = !DILocalVariable(name: "_origin", scope: !27, file: !2, line: 10, type: !16)
!35 = !DILocalVariable(name: "_amount", scope: !27, file: !2, line: 10, type: !20)
!36 = !DILocalVariable(name: "x", scope: !27, file: !2, line: 12, type: !13)
!37 = !DILocation(line: 12, column: 3, scope: !27)
!38 = !DILocation(line: 12, column: 7, scope: !27)
!39 = !DILocation(line: 14, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !2, line: 13, column: 9)
!41 = distinct !DILexicalBlock(scope: !27, file: !2, line: 12, column: 7)
!42 = !DILocation(line: 16, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !41, file: !2, line: 15, column: 9)
!44 = !DILocation(line: 18, column: 3, scope: !27)
!45 = !DILocalVariable(name: "y", scope: !27, file: !2, line: 20, type: !13)
!46 = !DILocation(line: 20, column: 3, scope: !27)
!47 = !DILocation(line: 20, column: 7, scope: !27)
!48 = !DILocation(line: 21, column: 3, scope: !27)
!49 = !DILocalVariable(name: "$y_1", scope: !50, file: !2, line: 23, type: !13)
!50 = distinct !DILexicalBlock(scope: !51, file: !2, line: 22, column: 5)
!51 = distinct !DILexicalBlock(scope: !27, file: !2, line: 21, column: 3)
!52 = !DILocation(line: 23, column: 5, scope: !50)
!53 = !DILocation(line: 23, column: 9, scope: !50)
!54 = !DILocation(line: 24, column: 5, scope: !50)
!55 = !DILocalVariable(name: "$y_2", scope: !56, file: !2, line: 26, type: !13)
!56 = distinct !DILexicalBlock(scope: !51, file: !2, line: 25, column: 5)
!57 = !DILocation(line: 26, column: 5, scope: !56)
!58 = !DILocation(line: 26, column: 9, scope: !56)
!59 = !DILocation(line: 27, column: 5, scope: !56)
!60 = !DILocation(line: 30, column: 3, scope: !27)
!61 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!62 = !DILocation(line: 10, column: 12, scope: !61)
