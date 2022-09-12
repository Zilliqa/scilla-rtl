

; gas_remaining: 4001999
; ModuleID = 'SimpleIterate'
source_filename = "SimpleIterate"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_5" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_39" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_38"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_38" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_40"**, %"$TyDescrTy_ADTTyp_39"* }
%"$TyDescrTy_ADTTyp_Constr_40" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_44" = type { i32, %"$TyDescr_AddrFieldTyp_43"* }
%"$TyDescr_AddrFieldTyp_43" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_155" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_156" = type { %ParamDescrString, i32, %"$ParamDescr_155"* }
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>

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
@"$TyDescr_ADT_List_Int32_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_List_Int32_ADTTyp_Specl_55" to i8*) }
@"$TyDescr_Addr_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_44"* @"$TyDescr_AddrFields_58" to i8*) }
@"$TyDescr_List_ADTTyp_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_57", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_38"*], [1 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_List_ADTTyp_m_specls_56", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_47" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_41"]
@"$TyDescr_ADT_Cons_48" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_48", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_50" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_51" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_51", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_50", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_53" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_49", %"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_52"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_54" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@"$TyDescr_List_Int32_ADTTyp_Specl_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_54", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_40"*], [2 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_53", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_List_ADTTyp_46" }
@"$TyDescr_List_ADTTyp_m_specls_56" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_List_Int32_ADTTyp_Specl_55"]
@"$TyDescr_ADT_List_57" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_AddrFields_58" = unnamed_addr constant %"$TyDescr_AddrTyp_44" { i32 -3, %"$TyDescr_AddrFieldTyp_43"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_83" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_88" = unnamed_addr constant [4 x i8] c"FooN"
@"$stringlit_91" = unnamed_addr constant [1 x i8] c"n"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_45", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_41", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_157" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_158" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_159" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_155"] [%"$ParamDescr_155" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_157", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_155" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_158", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37" }, %"$ParamDescr_155" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_159", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_160" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_161" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_162" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_nlist_163" = unnamed_addr constant [5 x i8] c"nlist"
@"$tparams_NEvents_164" = unnamed_addr constant [4 x %"$ParamDescr_155"] [%"$ParamDescr_155" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_160", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_155" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_161", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }, %"$ParamDescr_155" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_162", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }, %"$ParamDescr_155" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_nlist_163", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_41" }]
@"$tname_NEvents_165" = unnamed_addr constant [7 x i8] c"NEvents"
@_transition_parameters = constant [1 x %"$TransDescr_156"] [%"$TransDescr_156" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_NEvents_165", i32 0, i32 0), i32 7 }, i32 4, %"$ParamDescr_155"* getelementptr inbounds ([4 x %"$ParamDescr_155"], [4 x %"$ParamDescr_155"]* @"$tparams_NEvents_164", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() !dbg !3 {
entry:
  %"$gasrem_59" = load i64, i64* @_gasrem, align 8
  %"$gascmp_60" = icmp ugt i64 5, %"$gasrem_59"
  br i1 %"$gascmp_60", label %"$out_of_gas_61", label %"$have_gas_62"

"$out_of_gas_61":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_62"

"$have_gas_62":                                   ; preds = %"$out_of_gas_61", %entry
  %"$consume_63" = sub i64 %"$gasrem_59", 5
  store i64 %"$consume_63", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() !dbg !10 {
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
  ret void
}

define internal void @"$EventN_69"(%Uint128 %_amount, [20 x i8]* %"$_origin_70", [20 x i8]* %"$_sender_71", %Int32 %n) !dbg !11 {
entry:
  %"$n_112" = alloca %Int32, align 8
  store %Int32 %n, %Int32* %"$n_112", align 4
  call void @llvm.dbg.declare(metadata %Int32* %"$n_112", metadata !12, metadata !DIExpression()), !dbg !14
  %"$_sender_111" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_71", [20 x i8]** %"$_sender_111", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_111", metadata !15, metadata !DIExpression()), !dbg !17
  %"$_origin_110" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_70", [20 x i8]** %"$_origin_110", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_110", metadata !18, metadata !DIExpression()), !dbg !17
  %"$_amount_109" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_109", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_109", metadata !19, metadata !DIExpression()), !dbg !17
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_70", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_71", align 1
  %"$gasrem_72" = load i64, i64* @_gasrem, align 8
  %"$gascmp_73" = icmp ugt i64 1, %"$gasrem_72"
  br i1 %"$gascmp_73", label %"$out_of_gas_74", label %"$have_gas_75"

"$out_of_gas_74":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_75"

"$have_gas_75":                                   ; preds = %"$out_of_gas_74", %entry
  %"$consume_76" = sub i64 %"$gasrem_72", 1
  store i64 %"$consume_76", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !21, metadata !DIExpression()), !dbg !24
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %"$have_gas_75"
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %"$have_gas_75"
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem, align 8
  %"$msgobj_82_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_82_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_82_salloc_load", i64 69)
  %"$msgobj_82_salloc" = bitcast i8* %"$msgobj_82_salloc_salloc" to [69 x i8]*
  %"$msgobj_82" = bitcast [69 x i8]* %"$msgobj_82_salloc" to i8*
  store i8 2, i8* %"$msgobj_82", align 1
  %"$msgobj_fname_84" = getelementptr i8, i8* %"$msgobj_82", i32 1
  %"$msgobj_fname_85" = bitcast i8* %"$msgobj_fname_84" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_83", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_85", align 8
  %"$msgobj_td_86" = getelementptr i8, i8* %"$msgobj_82", i32 17
  %"$msgobj_td_87" = bitcast i8* %"$msgobj_td_86" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_87", align 8
  %"$msgobj_v_89" = getelementptr i8, i8* %"$msgobj_82", i32 25
  %"$msgobj_v_90" = bitcast i8* %"$msgobj_v_89" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_88", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_90", align 8
  %"$msgobj_fname_92" = getelementptr i8, i8* %"$msgobj_82", i32 41
  %"$msgobj_fname_93" = bitcast i8* %"$msgobj_fname_92" to %String*
  store %String { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$stringlit_91", i32 0, i32 0), i32 1 }, %String* %"$msgobj_fname_93", align 8
  %"$msgobj_td_94" = getelementptr i8, i8* %"$msgobj_82", i32 57
  %"$msgobj_td_95" = bitcast i8* %"$msgobj_td_94" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_95", align 8
  %"$msgobj_v_96" = getelementptr i8, i8* %"$msgobj_82", i32 65
  %"$msgobj_v_97" = bitcast i8* %"$msgobj_v_96" to %Int32*
  store %Int32 %n, %Int32* %"$msgobj_v_97", align 4
  store i8* %"$msgobj_82", i8** %e, align 8, !dbg !25
  %"$e_99" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_101" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_99")
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 %"$_literal_cost_call_101", %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$have_gas_80"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$have_gas_80"
  %"$consume_106" = sub i64 %"$gasrem_102", %"$_literal_cost_call_101"
  store i64 %"$consume_106", i64* @_gasrem, align 8
  %"$execptr_load_107" = load i8*, i8** @_execptr, align 8
  %"$e_108" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_107", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_108"), !dbg !26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$NEvents_113"(%Uint128 %_amount, [20 x i8]* %"$_origin_114", [20 x i8]* %"$_sender_115", %TName_List_Int32* %nlist) !dbg !27 {
entry:
  %"$nlist_145" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %nlist, %TName_List_Int32** %"$nlist_145", align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %"$nlist_145", metadata !28, metadata !DIExpression()), !dbg !31
  %"$_sender_144" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_115", [20 x i8]** %"$_sender_144", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_144", metadata !32, metadata !DIExpression()), !dbg !33
  %"$_origin_143" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_114", [20 x i8]** %"$_origin_143", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_143", metadata !34, metadata !DIExpression()), !dbg !33
  %"$_amount_142" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_142", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_142", metadata !35, metadata !DIExpression()), !dbg !33
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_114", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_115", align 1
  %"$nlist_116" = bitcast %TName_List_Int32* %nlist to i8*
  %"$_lengthof_call_117" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_41", i8* %"$nlist_116")
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 %"$_lengthof_call_117", %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %entry
  %"$consume_122" = sub i64 %"$gasrem_118", %"$_lengthof_call_117"
  store i64 %"$consume_122", i64* @_gasrem, align 8
  %"$nlist_1" = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %"$nlist_1", metadata !36, metadata !DIExpression()), !dbg !37
  store %TName_List_Int32* %nlist, %TName_List_Int32** %"$nlist_1", align 8, !dbg !38
  br label %"$loop_header_124"

"$loop_header_124":                               ; preds = %"$Cons_130", %"$have_gas_121"
  %"$$nlist_1_126" = load %TName_List_Int32*, %TName_List_Int32** %"$nlist_1", align 8
  %"$$nlist_1_tag_127" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %"$$nlist_1_126", i32 0, i32 0
  %"$$nlist_1_tag_128" = load i8, i8* %"$$nlist_1_tag_127", align 1
  switch i8 %"$$nlist_1_tag_128", label %"$empty_default_129" [
    i8 0, label %"$Cons_130"
    i8 1, label %"$Nil_140"
  ], !dbg !38

"$Cons_130":                                      ; preds = %"$loop_header_124"
  %"$$nlist_1_131" = bitcast %TName_List_Int32* %"$$nlist_1_126" to %CName_Cons_Int32*
  %"$$list_cur_3_gep_132" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$nlist_1_131", i32 0, i32 1
  %"$$list_cur_3_load_133" = load %Int32, %Int32* %"$$list_cur_3_gep_132", align 4
  %"$list_cur_3" = alloca %Int32, align 8
  store %Int32 %"$$list_cur_3_load_133", %Int32* %"$list_cur_3", align 4
  %"$$list_next_4_gep_134" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$nlist_1_131", i32 0, i32 2
  %"$$list_next_4_load_135" = load %TName_List_Int32*, %TName_List_Int32** %"$$list_next_4_gep_134", align 8
  %"$list_next_4" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$$list_next_4_load_135", %TName_List_Int32** %"$list_next_4", align 8
  %"$EventN__origin_136" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$EventN__origin_136", align 1
  %"$EventN__sender_137" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$EventN__sender_137", align 1
  %"$$list_cur_3_138" = load %Int32, %Int32* %"$list_cur_3", align 4
  call void @"$EventN_69"(%Uint128 %_amount, [20 x i8]* %"$EventN__origin_136", [20 x i8]* %"$EventN__sender_137", %Int32 %"$$list_cur_3_138"), !dbg !39
  %"$$list_next_4_139" = load %TName_List_Int32*, %TName_List_Int32** %"$list_next_4", align 8
  store %TName_List_Int32* %"$$list_next_4_139", %TName_List_Int32** %"$nlist_1", align 8, !dbg !42
  br label %"$loop_header_124"

"$Nil_140":                                       ; preds = %"$loop_header_124"
  %"$$nlist_1_141" = bitcast %TName_List_Int32* %"$$nlist_1_126" to %CName_Nil_Int32*
  br label %"$matchsucc_125"

"$empty_default_129":                             ; preds = %"$loop_header_124"
  br label %"$matchsucc_125"

"$matchsucc_125":                                 ; preds = %"$Nil_140", %"$empty_default_129"
  br label %"$loop_succ_123"

"$loop_succ_123":                                 ; preds = %"$matchsucc_125"
  ret void
}

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

define void @NEvents(i8* %0) !dbg !43 {
entry:
  %"$_amount_147" = getelementptr i8, i8* %0, i32 0
  %"$_amount_148" = bitcast i8* %"$_amount_147" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_148", align 8
  %"$_origin_149" = getelementptr i8, i8* %0, i32 16
  %"$_origin_150" = bitcast i8* %"$_origin_149" to [20 x i8]*
  %"$_sender_151" = getelementptr i8, i8* %0, i32 36
  %"$_sender_152" = bitcast i8* %"$_sender_151" to [20 x i8]*
  %"$nlist_153" = getelementptr i8, i8* %0, i32 56
  %"$nlist_154" = bitcast i8* %"$nlist_153" to %TName_List_Int32**
  %nlist = load %TName_List_Int32*, %TName_List_Int32** %"$nlist_154", align 8
  call void @"$NEvents_113"(%Uint128 %_amount, [20 x i8]* %"$_origin_150", [20 x i8]* %"$_sender_152", %TName_List_Int32* %nlist), !dbg !44
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "simple-iterate.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: ".", directory: ".")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocation(line: 0, scope: !3)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!11 = distinct !DISubprogram(name: "EventN", linkageName: "EventN", scope: !2, file: !2, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!12 = !DILocalVariable(name: "n", scope: !11, file: !2, line: 7, type: !13)
!13 = !DIBasicType(name: "Int32", size: 4)
!14 = !DILocation(line: 7, column: 19, scope: !11)
!15 = !DILocalVariable(name: "_sender", scope: !11, file: !2, line: 7, type: !16)
!16 = !DIBasicType(name: "ByStr20 with end", size: 20)
!17 = !DILocation(line: 7, column: 11, scope: !11)
!18 = !DILocalVariable(name: "_origin", scope: !11, file: !2, line: 7, type: !16)
!19 = !DILocalVariable(name: "_amount", scope: !11, file: !2, line: 7, type: !20)
!20 = !DIBasicType(name: "Uint128", size: 16)
!21 = !DILocalVariable(name: "e", scope: !11, file: !2, line: 8, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Event", baseType: !23, size: 8, align: 8, dwarfAddressSpace: 0)
!23 = !DIBasicType(name: "Event", size: 8)
!24 = !DILocation(line: 8, column: 3, scope: !11)
!25 = !DILocation(line: 8, column: 7, scope: !11)
!26 = !DILocation(line: 9, column: 3, scope: !11)
!27 = distinct !DISubprogram(name: "NEvents", linkageName: "NEvents", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!28 = !DILocalVariable(name: "nlist", scope: !27, file: !2, line: 12, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "List (Int32)", baseType: !30, size: 8, align: 8, dwarfAddressSpace: 0)
!30 = !DIBasicType(name: "List (Int32)", size: 8)
!31 = !DILocation(line: 12, column: 21, scope: !27)
!32 = !DILocalVariable(name: "_sender", scope: !27, file: !2, line: 12, type: !16)
!33 = !DILocation(line: 12, column: 12, scope: !27)
!34 = !DILocalVariable(name: "_origin", scope: !27, file: !2, line: 12, type: !16)
!35 = !DILocalVariable(name: "_amount", scope: !27, file: !2, line: 12, type: !20)
!36 = !DILocalVariable(name: "$nlist_1", scope: !27, file: !2, line: 13, type: !29)
!37 = !DILocation(line: 13, column: 10, scope: !27)
!38 = !DILocation(line: 13, column: 3, scope: !27)
!39 = !DILocation(line: 13, column: 16, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !2, line: 13, column: 3)
!41 = distinct !DILexicalBlock(scope: !27, file: !2, line: 13, column: 3)
!42 = !DILocation(line: 13, column: 3, scope: !40)
!43 = distinct !DISubprogram(name: "NEvents", linkageName: "NEvents", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!44 = !DILocation(line: 12, column: 12, scope: !43)
