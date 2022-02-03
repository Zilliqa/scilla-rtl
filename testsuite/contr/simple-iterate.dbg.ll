

; gas_remaining: 4001999
; ModuleID = 'SimpleIterate'
source_filename = "SimpleIterate"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_5" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_37" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_36"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_36" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_38"**, %"$TyDescrTy_ADTTyp_37"* }
%"$TyDescrTy_ADTTyp_Constr_38" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_42" = type { i32, %"$TyDescr_AddrFieldTyp_41"* }
%"$TyDescr_AddrFieldTyp_41" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_145" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_146" = type { %ParamDescrString, i32, %"$ParamDescr_145"* }
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
@"$TyDescr_Bystr_Prim_32" = global %"$TyDescrTy_PrimTyp_5" { i32 7, i32 0 }
@"$TyDescr_Bystr_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr_Prim_32" to i8*) }
@"$TyDescr_Bystr20_Prim_34" = global %"$TyDescrTy_PrimTyp_5" { i32 8, i32 20 }
@"$TyDescr_Bystr20_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr20_Prim_34" to i8*) }
@"$TyDescr_ADT_List_Int32_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Int32_ADTTyp_Specl_53" to i8*) }
@"$TyDescr_Addr_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_42"* @"$TyDescr_AddrFields_56" to i8*) }
@"$TyDescr_List_ADTTyp_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_55", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_List_ADTTyp_m_specls_54", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_45" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_39"]
@"$TyDescr_ADT_Cons_46" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_46", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_48" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_49" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_49", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_51" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_47", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_50"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_52" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@"$TyDescr_List_Int32_ADTTyp_Specl_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_List_ADTTyp_44" }
@"$TyDescr_List_ADTTyp_m_specls_54" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Int32_ADTTyp_Specl_53"]
@"$TyDescr_ADT_List_55" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_AddrFields_56" = unnamed_addr constant %"$TyDescr_AddrTyp_42" { i32 -1, %"$TyDescr_AddrFieldTyp_41"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_81" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_86" = unnamed_addr constant [4 x i8] c"FooN"
@"$stringlit_89" = unnamed_addr constant [1 x i8] c"n"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_39", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 17
@"$pname__scilla_version_147" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_148" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_149" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_145"] [%"$ParamDescr_145" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_147", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_145" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_148", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_145" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_149", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_150" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_151" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_152" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_nlist_153" = unnamed_addr constant [5 x i8] c"nlist"
@"$tparams_NEvents_154" = unnamed_addr constant [4 x %"$ParamDescr_145"] [%"$ParamDescr_145" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_150", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_145" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_151", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_145" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_152", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_145" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_nlist_153", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_39" }]
@"$tname_NEvents_155" = unnamed_addr constant [7 x i8] c"NEvents"
@_transition_parameters = constant [1 x %"$TransDescr_146"] [%"$TransDescr_146" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_NEvents_155", i32 0, i32 0), i32 7 }, i32 4, %"$ParamDescr_145"* getelementptr inbounds ([4 x %"$ParamDescr_145"], [4 x %"$ParamDescr_145"]* @"$tparams_NEvents_154", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() !dbg !4 {
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

define internal void @"$EventN_67"(%Uint128 %_amount, [20 x i8]* %"$_origin_68", [20 x i8]* %"$_sender_69", %Int32 %n) !dbg !11 {
entry:
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
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_85", align 8
  %"$msgobj_v_87" = getelementptr i8, i8* %"$msgobj_80", i32 25
  %"$msgobj_v_88" = bitcast i8* %"$msgobj_v_87" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_86", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_88", align 8
  %"$msgobj_fname_90" = getelementptr i8, i8* %"$msgobj_80", i32 41
  %"$msgobj_fname_91" = bitcast i8* %"$msgobj_fname_90" to %String*
  store %String { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$stringlit_89", i32 0, i32 0), i32 1 }, %String* %"$msgobj_fname_91", align 8
  %"$msgobj_td_92" = getelementptr i8, i8* %"$msgobj_80", i32 57
  %"$msgobj_td_93" = bitcast i8* %"$msgobj_td_92" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_93", align 8
  %"$msgobj_v_94" = getelementptr i8, i8* %"$msgobj_80", i32 65
  %"$msgobj_v_95" = bitcast i8* %"$msgobj_v_94" to %Int32*
  store %Int32 %n, %Int32* %"$msgobj_v_95", align 4
  store i8* %"$msgobj_80", i8** %e, align 8, !dbg !12
  %"$e_97" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_99" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_97")
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
  call void @_event(i8* %"$execptr_load_105", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_106"), !dbg !13
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$NEvents_107"(%Uint128 %_amount, [20 x i8]* %"$_origin_108", [20 x i8]* %"$_sender_109", %TName_List_Int32* %nlist) !dbg !14 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_108", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_109", align 1
  %"$nlist_110" = bitcast %TName_List_Int32* %nlist to i8*
  %"$_lengthof_call_111" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_39", i8* %"$nlist_110")
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 %"$_lengthof_call_111", %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %entry
  %"$consume_116" = sub i64 %"$gasrem_112", %"$_lengthof_call_111"
  store i64 %"$consume_116", i64* @_gasrem, align 8
  %"$nlist_1" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %nlist, %TName_List_Int32** %"$nlist_1", align 8, !dbg !15
  br label %"$loop_header_118"

"$loop_header_118":                               ; preds = %"$Cons_124", %"$have_gas_115"
  %"$$nlist_1_120" = load %TName_List_Int32*, %TName_List_Int32** %"$nlist_1", align 8
  %"$$nlist_1_tag_121" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %"$$nlist_1_120", i32 0, i32 0
  %"$$nlist_1_tag_122" = load i8, i8* %"$$nlist_1_tag_121", align 1
  switch i8 %"$$nlist_1_tag_122", label %"$empty_default_123" [
    i8 0, label %"$Cons_124"
    i8 1, label %"$Nil_134"
  ], !dbg !15

"$Cons_124":                                      ; preds = %"$loop_header_118"
  %"$$nlist_1_125" = bitcast %TName_List_Int32* %"$$nlist_1_120" to %CName_Cons_Int32*
  %"$$list_cur_3_gep_126" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$nlist_1_125", i32 0, i32 1
  %"$$list_cur_3_load_127" = load %Int32, %Int32* %"$$list_cur_3_gep_126", align 4
  %"$list_cur_3" = alloca %Int32, align 8
  store %Int32 %"$$list_cur_3_load_127", %Int32* %"$list_cur_3", align 4
  %"$$list_next_4_gep_128" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$nlist_1_125", i32 0, i32 2
  %"$$list_next_4_load_129" = load %TName_List_Int32*, %TName_List_Int32** %"$$list_next_4_gep_128", align 8
  %"$list_next_4" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$$list_next_4_load_129", %TName_List_Int32** %"$list_next_4", align 8
  %"$EventN__origin_130" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$EventN__origin_130", align 1
  %"$EventN__sender_131" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$EventN__sender_131", align 1
  %"$$list_cur_3_132" = load %Int32, %Int32* %"$list_cur_3", align 4
  call void @"$EventN_67"(%Uint128 %_amount, [20 x i8]* %"$EventN__origin_130", [20 x i8]* %"$EventN__sender_131", %Int32 %"$$list_cur_3_132"), !dbg !16
  %"$$list_next_4_133" = load %TName_List_Int32*, %TName_List_Int32** %"$list_next_4", align 8
  store %TName_List_Int32* %"$$list_next_4_133", %TName_List_Int32** %"$nlist_1", align 8, !dbg !19
  br label %"$loop_header_118"

"$Nil_134":                                       ; preds = %"$loop_header_118"
  %"$$nlist_1_135" = bitcast %TName_List_Int32* %"$$nlist_1_120" to %CName_Nil_Int32*
  br label %"$matchsucc_119"

"$empty_default_123":                             ; preds = %"$loop_header_118"
  br label %"$matchsucc_119"

"$matchsucc_119":                                 ; preds = %"$Nil_134", %"$empty_default_123"
  br label %"$loop_succ_117"

"$loop_succ_117":                                 ; preds = %"$matchsucc_119"
  ret void
}

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

define void @NEvents(i8* %0) !dbg !20 {
entry:
  %"$_amount_137" = getelementptr i8, i8* %0, i32 0
  %"$_amount_138" = bitcast i8* %"$_amount_137" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_138", align 8
  %"$_origin_139" = getelementptr i8, i8* %0, i32 16
  %"$_origin_140" = bitcast i8* %"$_origin_139" to [20 x i8]*
  %"$_sender_141" = getelementptr i8, i8* %0, i32 36
  %"$_sender_142" = bitcast i8* %"$_sender_141" to [20 x i8]*
  %"$nlist_143" = getelementptr i8, i8* %0, i32 56
  %"$nlist_144" = bitcast i8* %"$nlist_143" to %TName_List_Int32**
  %nlist = load %TName_List_Int32*, %TName_List_Int32** %"$nlist_144", align 8
  call void @"$NEvents_107"(%Uint128 %_amount, [20 x i8]* %"$_origin_140", [20 x i8]* %"$_sender_142", %TName_List_Int32* %nlist), !dbg !21
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "simple-iterate.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = distinct !DISubprogram(name: "EventN", linkageName: "EventN", scope: !2, file: !2, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 8, column: 7, scope: !11)
!13 = !DILocation(line: 9, column: 3, scope: !11)
!14 = distinct !DISubprogram(name: "NEvents", linkageName: "NEvents", scope: !2, file: !2, line: 12, type: !6, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 13, column: 3, scope: !14)
!16 = !DILocation(line: 13, column: 16, scope: !17)
!17 = distinct !DILexicalBlock(scope: !18, file: !2, line: 13, column: 3)
!18 = distinct !DILexicalBlock(scope: !14, file: !2, line: 13, column: 3)
!19 = !DILocation(line: 13, column: 3, scope: !17)
!20 = distinct !DISubprogram(name: "NEvents", linkageName: "NEvents", scope: !2, file: !2, line: 12, type: !6, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!21 = !DILocation(line: 12, column: 12, scope: !20)
