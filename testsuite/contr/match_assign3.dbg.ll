

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
%"$ParamDescr_210" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_211" = type { %ParamDescrString, i32, %"$ParamDescr_210"* }
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
@"$pname__scilla_version_212" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_213" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_214" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_210"] [%"$ParamDescr_210" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_212", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_5" }, %"$ParamDescr_210" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_213", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33" }, %"$ParamDescr_210" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_214", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_21" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_215" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_216" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_217" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_c_218" = unnamed_addr constant [1 x i8] c"c"
@"$tparams_t1_219" = unnamed_addr constant [4 x %"$ParamDescr_210"] [%"$ParamDescr_210" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_215", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_210" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_216", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_210" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_217", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_210" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_c_218", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_37" }]
@"$tname_t1_220" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_211"] [%"$TransDescr_211" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_220", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_210"* getelementptr inbounds ([4 x %"$ParamDescr_210"], [4 x %"$ParamDescr_210"]* @"$tparams_t1_219", i32 0, i32 0) }]
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
  %"$m_108" = alloca %Int32, align 8
  store %Int32 %m, %Int32* %"$m_108", align 4
  call void @llvm.dbg.declare(metadata %Int32* %"$m_108", metadata !12, metadata !DIExpression()), !dbg !14
  %"$_sender_107" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_67", [20 x i8]** %"$_sender_107", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_107", metadata !15, metadata !DIExpression()), !dbg !17
  %"$_origin_106" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_66", [20 x i8]** %"$_origin_106", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_106", metadata !18, metadata !DIExpression()), !dbg !17
  %"$_amount_105" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_105", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_105", metadata !19, metadata !DIExpression()), !dbg !17
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
  call void @llvm.dbg.declare(metadata i8** %e, metadata !21, metadata !DIExpression()), !dbg !24
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
  store i8* %"$msgobj_78", i8** %e, align 8, !dbg !25
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
  call void @_event(i8* %"$execptr_load_103", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_104"), !dbg !26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_109"(%Uint128 %_amount, [20 x i8]* %"$_origin_110", [20 x i8]* %"$_sender_111", %TName_Bool* %c) !dbg !27 {
entry:
  %"$c_200" = alloca %TName_Bool*, align 8
  store %TName_Bool* %c, %TName_Bool** %"$c_200", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$c_200", metadata !28, metadata !DIExpression()), !dbg !31
  %"$_sender_199" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_111", [20 x i8]** %"$_sender_199", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_199", metadata !32, metadata !DIExpression()), !dbg !33
  %"$_origin_198" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_110", [20 x i8]** %"$_origin_198", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_198", metadata !34, metadata !DIExpression()), !dbg !33
  %"$_amount_197" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_197", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_197", metadata !35, metadata !DIExpression()), !dbg !33
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_110", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_111", align 1
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %entry
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  %x = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %x, metadata !36, metadata !DIExpression()), !dbg !37
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 2, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %"$have_gas_115"
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %"$have_gas_115"
  %"$consume_121" = sub i64 %"$gasrem_117", 2
  store i64 %"$consume_121", i64* @_gasrem, align 8
  %"$c_tag_123" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_124" = load i8, i8* %"$c_tag_123", align 1
  switch i8 %"$c_tag_124", label %"$empty_default_125" [
    i8 0, label %"$True_126"
    i8 1, label %"$False_133"
  ], !dbg !38

"$True_126":                                      ; preds = %"$have_gas_120"
  %"$c_127" = bitcast %TName_Bool* %c to %CName_True*
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$True_126"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$True_126"
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  store %Int32 { i32 11 }, %Int32* %x, align 4, !dbg !39
  br label %"$matchsucc_122"

"$False_133":                                     ; preds = %"$have_gas_120"
  %"$c_134" = bitcast %TName_Bool* %c to %CName_False*
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$False_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$False_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  store %Int32 { i32 41 }, %Int32* %x, align 4, !dbg !42
  br label %"$matchsucc_122"

"$empty_default_125":                             ; preds = %"$have_gas_120"
  br label %"$matchsucc_122"

"$matchsucc_122":                                 ; preds = %"$have_gas_138", %"$have_gas_131", %"$empty_default_125"
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$matchsucc_122"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$matchsucc_122"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %"$create_event__origin_145" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_145", align 1
  %"$create_event__sender_146" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_146", align 1
  %"$x_147" = load %Int32, %Int32* %x, align 4
  call void @"$create_event_65"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_145", [20 x i8]* %"$create_event__sender_146", %Int32 %"$x_147"), !dbg !44
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 2, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_143"
  %"$consume_152" = sub i64 %"$gasrem_148", 2
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %"$c_tag_154" = getelementptr inbounds %TName_Bool, %TName_Bool* %c, i32 0, i32 0
  %"$c_tag_155" = load i8, i8* %"$c_tag_154", align 1
  switch i8 %"$c_tag_155", label %"$empty_default_156" [
    i8 0, label %"$True_157"
    i8 1, label %"$False_177"
  ], !dbg !45

"$True_157":                                      ; preds = %"$have_gas_151"
  %"$c_158" = bitcast %TName_Bool* %c to %CName_True*
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$True_157"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$True_157"
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem, align 8
  %y = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %y, metadata !46, metadata !DIExpression()), !dbg !49
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_162"
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  store %Int32 { i32 101 }, %Int32* %y, align 4, !dbg !50
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %"$have_gas_167"
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem, align 8
  %"$create_event__origin_174" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_174", align 1
  %"$create_event__sender_175" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_175", align 1
  %"$y_176" = load %Int32, %Int32* %y, align 4
  call void @"$create_event_65"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_174", [20 x i8]* %"$create_event__sender_175", %Int32 %"$y_176"), !dbg !51
  br label %"$matchsucc_153"

"$False_177":                                     ; preds = %"$have_gas_151"
  %"$c_178" = bitcast %TName_Bool* %c to %CName_False*
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 1, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %"$False_177"
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %"$False_177"
  %"$consume_183" = sub i64 %"$gasrem_179", 1
  store i64 %"$consume_183", i64* @_gasrem, align 8
  %y1 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %y1, metadata !52, metadata !DIExpression()), !dbg !54
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$have_gas_182"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$have_gas_182"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  store %Int32 { i32 102 }, %Int32* %y1, align 4, !dbg !55
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_187"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %"$create_event__origin_194" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_194", align 1
  %"$create_event__sender_195" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_195", align 1
  %"$y_196" = load %Int32, %Int32* %y1, align 4
  call void @"$create_event_65"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_194", [20 x i8]* %"$create_event__sender_195", %Int32 %"$y_196"), !dbg !56
  br label %"$matchsucc_153"

"$empty_default_156":                             ; preds = %"$have_gas_151"
  br label %"$matchsucc_153"

"$matchsucc_153":                                 ; preds = %"$have_gas_192", %"$have_gas_172", %"$empty_default_156"
  ret void
}

define void @t1(i8* %0) !dbg !57 {
entry:
  %"$_amount_202" = getelementptr i8, i8* %0, i32 0
  %"$_amount_203" = bitcast i8* %"$_amount_202" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_203", align 8
  %"$_origin_204" = getelementptr i8, i8* %0, i32 16
  %"$_origin_205" = bitcast i8* %"$_origin_204" to [20 x i8]*
  %"$_sender_206" = getelementptr i8, i8* %0, i32 36
  %"$_sender_207" = bitcast i8* %"$_sender_206" to [20 x i8]*
  %"$c_208" = getelementptr i8, i8* %0, i32 56
  %"$c_209" = bitcast i8* %"$c_208" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_209", align 8
  call void @"$t1_109"(%Uint128 %_amount, [20 x i8]* %"$_origin_205", [20 x i8]* %"$_sender_207", %TName_Bool* %c), !dbg !58
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
!45 = !DILocation(line: 20, column: 3, scope: !27)
!46 = !DILocalVariable(name: "y", scope: !47, file: !2, line: 22, type: !13)
!47 = distinct !DILexicalBlock(scope: !48, file: !2, line: 21, column: 5)
!48 = distinct !DILexicalBlock(scope: !27, file: !2, line: 20, column: 3)
!49 = !DILocation(line: 22, column: 5, scope: !47)
!50 = !DILocation(line: 22, column: 9, scope: !47)
!51 = !DILocation(line: 23, column: 5, scope: !47)
!52 = !DILocalVariable(name: "y", scope: !53, file: !2, line: 25, type: !13)
!53 = distinct !DILexicalBlock(scope: !48, file: !2, line: 24, column: 5)
!54 = !DILocation(line: 25, column: 5, scope: !53)
!55 = !DILocation(line: 25, column: 9, scope: !53)
!56 = !DILocation(line: 26, column: 5, scope: !53)
!57 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!58 = !DILocation(line: 10, column: 12, scope: !57)
