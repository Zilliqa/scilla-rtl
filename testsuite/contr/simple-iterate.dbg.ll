

; gas_remaining: 4002000
; ModuleID = 'SimpleIterate'
source_filename = "SimpleIterate"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin19.6.0"

%"$TyDescrTy_PrimTyp_4" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_36" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_35"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_35" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_37"**, %"$TyDescrTy_ADTTyp_36"* }
%"$TyDescrTy_ADTTyp_Constr_37" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_41" = type { i32, %"$TyDescr_AddrFieldTyp_40"* }
%"$TyDescr_AddrFieldTyp_40" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Uint32 = type { i32 }
%"$ParamDescr_134" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_135" = type { %ParamDescrString, i32, %"$ParamDescr_134"* }
%Uint128 = type { i128 }
%Int32 = type { i32 }
%String = type { i8*, i32 }
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>

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
@"$TyDescr_ADT_List_Int32_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_List_Int32_ADTTyp_Specl_52" to i8*) }
@"$TyDescr_Addr_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_41"* @"$TyDescr_AddrFields_55" to i8*) }
@"$TyDescr_List_ADTTyp_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_54", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_35"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_35"*], [1 x %"$TyDescrTy_ADTTyp_Specl_35"*]* @"$TyDescr_List_ADTTyp_m_specls_53", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_44" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_6", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_38"]
@"$TyDescr_ADT_Cons_45" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_45", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_44", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_47" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_48" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_48", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_50" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_37"*] [%"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_46", %"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_49"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_51" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@"$TyDescr_List_Int32_ADTTyp_Specl_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_35" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_37"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_37"*], [2 x %"$TyDescrTy_ADTTyp_Constr_37"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_36"* @"$TyDescr_List_ADTTyp_43" }
@"$TyDescr_List_ADTTyp_m_specls_53" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_35"*] [%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_List_Int32_ADTTyp_Specl_52"]
@"$TyDescr_ADT_List_54" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_AddrFields_55" = unnamed_addr constant %"$TyDescr_AddrTyp_41" { i32 -1, %"$TyDescr_AddrFieldTyp_40"* null }
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_70" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_75" = unnamed_addr constant [4 x i8] c"FooN"
@"$stringlit_78" = unnamed_addr constant [1 x i8] c"n"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_28", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_Addr_42", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Bnum_24", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_Exception_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_38", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 17
@"$pname__scilla_version_136" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_137" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_138" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_134"] [%"$ParamDescr_134" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_136", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_8" }, %"$ParamDescr_134" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_137", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34" }, %"$ParamDescr_134" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_138", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_24" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_139" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_140" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_141" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_nlist_142" = unnamed_addr constant [5 x i8] c"nlist"
@"$tparams_NEvents_143" = unnamed_addr constant [4 x %"$ParamDescr_134"] [%"$ParamDescr_134" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_139", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }, %"$ParamDescr_134" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_140", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }, %"$ParamDescr_134" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_141", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }, %"$ParamDescr_134" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_nlist_142", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_38" }]
@"$tname_NEvents_144" = unnamed_addr constant [7 x i8] c"NEvents"
@_transition_parameters = constant [1 x %"$TransDescr_135"] [%"$TransDescr_135" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_NEvents_144", i32 0, i32 0), i32 7 }, i32 4, %"$ParamDescr_134"* getelementptr inbounds ([4 x %"$ParamDescr_134"], [4 x %"$ParamDescr_134"]* @"$tparams_NEvents_143", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define void @_init_state() !dbg !9 {
entry:
  ret void
}

define internal void @"$EventN_56"(%Uint128 %_amount, [20 x i8]* %"$_origin_57", [20 x i8]* %"$_sender_58", %Int32 %n) !dbg !10 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_57", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_58", align 1
  %"$gasrem_59" = load i64, i64* @_gasrem, align 8
  %"$gascmp_60" = icmp ugt i64 1, %"$gasrem_59"
  br i1 %"$gascmp_60", label %"$out_of_gas_61", label %"$have_gas_62"

"$out_of_gas_61":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_62"

"$have_gas_62":                                   ; preds = %"$out_of_gas_61", %entry
  %"$consume_63" = sub i64 %"$gasrem_59", 1
  store i64 %"$consume_63", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_64" = load i64, i64* @_gasrem, align 8
  %"$gascmp_65" = icmp ugt i64 1, %"$gasrem_64"
  br i1 %"$gascmp_65", label %"$out_of_gas_66", label %"$have_gas_67"

"$out_of_gas_66":                                 ; preds = %"$have_gas_62"
  call void @_out_of_gas()
  br label %"$have_gas_67"

"$have_gas_67":                                   ; preds = %"$out_of_gas_66", %"$have_gas_62"
  %"$consume_68" = sub i64 %"$gasrem_64", 1
  store i64 %"$consume_68", i64* @_gasrem, align 8
  %"$msgobj_69_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_69_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_69_salloc_load", i64 69)
  %"$msgobj_69_salloc" = bitcast i8* %"$msgobj_69_salloc_salloc" to [69 x i8]*
  %"$msgobj_69" = bitcast [69 x i8]* %"$msgobj_69_salloc" to i8*
  store i8 2, i8* %"$msgobj_69", align 1
  %"$msgobj_fname_71" = getelementptr i8, i8* %"$msgobj_69", i32 1
  %"$msgobj_fname_72" = bitcast i8* %"$msgobj_fname_71" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_70", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_72", align 8
  %"$msgobj_td_73" = getelementptr i8, i8* %"$msgobj_69", i32 17
  %"$msgobj_td_74" = bitcast i8* %"$msgobj_td_73" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_74", align 8
  %"$msgobj_v_76" = getelementptr i8, i8* %"$msgobj_69", i32 25
  %"$msgobj_v_77" = bitcast i8* %"$msgobj_v_76" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_75", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_77", align 8
  %"$msgobj_fname_79" = getelementptr i8, i8* %"$msgobj_69", i32 41
  %"$msgobj_fname_80" = bitcast i8* %"$msgobj_fname_79" to %String*
  store %String { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$stringlit_78", i32 0, i32 0), i32 1 }, %String* %"$msgobj_fname_80", align 8
  %"$msgobj_td_81" = getelementptr i8, i8* %"$msgobj_69", i32 57
  %"$msgobj_td_82" = bitcast i8* %"$msgobj_td_81" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_6", %_TyDescrTy_Typ** %"$msgobj_td_82", align 8
  %"$msgobj_v_83" = getelementptr i8, i8* %"$msgobj_69", i32 65
  %"$msgobj_v_84" = bitcast i8* %"$msgobj_v_83" to %Int32*
  store %Int32 %n, %Int32* %"$msgobj_v_84", align 4
  store i8* %"$msgobj_69", i8** %e, align 8, !dbg !11
  %"$e_86" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_88" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_28", i8* %"$e_86")
  %"$gasrem_89" = load i64, i64* @_gasrem, align 8
  %"$gascmp_90" = icmp ugt i64 %"$_literal_cost_call_88", %"$gasrem_89"
  br i1 %"$gascmp_90", label %"$out_of_gas_91", label %"$have_gas_92"

"$out_of_gas_91":                                 ; preds = %"$have_gas_67"
  call void @_out_of_gas()
  br label %"$have_gas_92"

"$have_gas_92":                                   ; preds = %"$out_of_gas_91", %"$have_gas_67"
  %"$consume_93" = sub i64 %"$gasrem_89", %"$_literal_cost_call_88"
  store i64 %"$consume_93", i64* @_gasrem, align 8
  %"$execptr_load_94" = load i8*, i8** @_execptr, align 8
  %"$e_95" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_94", %_TyDescrTy_Typ* @"$TyDescr_Event_28", i8* %"$e_95"), !dbg !12
  ret void
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$NEvents_96"(%Uint128 %_amount, [20 x i8]* %"$_origin_97", [20 x i8]* %"$_sender_98", %TName_List_Int32* %nlist) !dbg !13 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_97", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_98", align 1
  %"$nlist_99" = bitcast %TName_List_Int32* %nlist to i8*
  %"$_lengthof_call_100" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_38", i8* %"$nlist_99")
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 %"$_lengthof_call_100", %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %entry
  %"$consume_105" = sub i64 %"$gasrem_101", %"$_lengthof_call_100"
  store i64 %"$consume_105", i64* @_gasrem, align 8
  %"$nlist_0" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %nlist, %TName_List_Int32** %"$nlist_0", align 8, !dbg !14
  br label %"$loop_header_107"

"$loop_header_107":                               ; preds = %"$Cons_113", %"$have_gas_104"
  %"$$nlist_0_109" = load %TName_List_Int32*, %TName_List_Int32** %"$nlist_0", align 8
  %"$$nlist_0_tag_110" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %"$$nlist_0_109", i32 0, i32 0
  %"$$nlist_0_tag_111" = load i8, i8* %"$$nlist_0_tag_110", align 1
  switch i8 %"$$nlist_0_tag_111", label %"$empty_default_112" [
    i8 0, label %"$Cons_113"
    i8 1, label %"$Nil_123"
  ], !dbg !14

"$Cons_113":                                      ; preds = %"$loop_header_107"
  %"$$nlist_0_114" = bitcast %TName_List_Int32* %"$$nlist_0_109" to %CName_Cons_Int32*
  %"$$list_cur_2_gep_115" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$nlist_0_114", i32 0, i32 1
  %"$$list_cur_2_load_116" = load %Int32, %Int32* %"$$list_cur_2_gep_115", align 4
  %"$list_cur_2" = alloca %Int32, align 8
  store %Int32 %"$$list_cur_2_load_116", %Int32* %"$list_cur_2", align 4
  %"$$list_next_3_gep_117" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$nlist_0_114", i32 0, i32 2
  %"$$list_next_3_load_118" = load %TName_List_Int32*, %TName_List_Int32** %"$$list_next_3_gep_117", align 8
  %"$list_next_3" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$$list_next_3_load_118", %TName_List_Int32** %"$list_next_3", align 8
  %"$EventN__origin_119" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$EventN__origin_119", align 1
  %"$EventN__sender_120" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$EventN__sender_120", align 1
  %"$$list_cur_2_121" = load %Int32, %Int32* %"$list_cur_2", align 4
  call void @"$EventN_56"(%Uint128 %_amount, [20 x i8]* %"$EventN__origin_119", [20 x i8]* %"$EventN__sender_120", %Int32 %"$$list_cur_2_121"), !dbg !15
  %"$$list_next_3_122" = load %TName_List_Int32*, %TName_List_Int32** %"$list_next_3", align 8
  store %TName_List_Int32* %"$$list_next_3_122", %TName_List_Int32** %"$nlist_0", align 8, !dbg !18
  br label %"$loop_header_107"

"$Nil_123":                                       ; preds = %"$loop_header_107"
  %"$$nlist_0_124" = bitcast %TName_List_Int32* %"$$nlist_0_109" to %CName_Nil_Int32*
  br label %"$matchsucc_108"

"$empty_default_112":                             ; preds = %"$loop_header_107"
  br label %"$matchsucc_108"

"$matchsucc_108":                                 ; preds = %"$Nil_123", %"$empty_default_112"
  br label %"$loop_succ_106"

"$loop_succ_106":                                 ; preds = %"$matchsucc_108"
  ret void
}

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

define void @NEvents(i8* %0) !dbg !19 {
entry:
  %"$_amount_126" = getelementptr i8, i8* %0, i32 0
  %"$_amount_127" = bitcast i8* %"$_amount_126" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_127", align 8
  %"$_origin_128" = getelementptr i8, i8* %0, i32 16
  %"$_origin_129" = bitcast i8* %"$_origin_128" to [20 x i8]*
  %"$_sender_130" = getelementptr i8, i8* %0, i32 36
  %"$_sender_131" = bitcast i8* %"$_sender_130" to [20 x i8]*
  %"$nlist_132" = getelementptr i8, i8* %0, i32 56
  %"$nlist_133" = bitcast i8* %"$nlist_132" to %TName_List_Int32**
  %nlist = load %TName_List_Int32*, %TName_List_Int32** %"$nlist_133", align 8
  call void @"$NEvents_96"(%Uint128 %_amount, [20 x i8]* %"$_origin_129", [20 x i8]* %"$_sender_131", %TName_List_Int32* %nlist), !dbg !20
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
!9 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = distinct !DISubprogram(name: "EventN", linkageName: "EventN", scope: !2, file: !2, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 8, column: 7, scope: !10)
!12 = !DILocation(line: 9, column: 3, scope: !10)
!13 = distinct !DISubprogram(name: "NEvents", linkageName: "NEvents", scope: !2, file: !2, line: 12, type: !6, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = !DILocation(line: 13, column: 3, scope: !13)
!15 = !DILocation(line: 13, column: 16, scope: !16)
!16 = distinct !DILexicalBlock(scope: !17, file: !2, line: 13, column: 3)
!17 = distinct !DILexicalBlock(scope: !13, file: !2, line: 13, column: 3)
!18 = !DILocation(line: 13, column: 3, scope: !16)
!19 = distinct !DISubprogram(name: "NEvents", linkageName: "NEvents", scope: !2, file: !2, line: 12, type: !6, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!20 = !DILocation(line: 12, column: 12, scope: !19)
