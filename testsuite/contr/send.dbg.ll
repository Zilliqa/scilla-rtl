

; gas_remaining: 4001999
; ModuleID = 'Send'
source_filename = "Send"
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
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
%Uint32 = type { i32 }
%"$ParamDescr_292" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_293" = type { %ParamDescrString, i32, %"$ParamDescr_292"* }
%"$$fundef_3_env_57" = type {}
%Uint128 = type { i128 }
%String = type { i8*, i32 }

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
@"$TyDescr_ADT_List_Message_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Message_ADTTyp_Specl_53" to i8*) }
@"$TyDescr_Addr_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_42"* @"$TyDescr_AddrFields_56" to i8*) }
@"$TyDescr_List_ADTTyp_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_55", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_List_ADTTyp_m_specls_54", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_45" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39"]
@"$TyDescr_ADT_Cons_46" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_46", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_48" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_49" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_49", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_51" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_47", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_50"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_52" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_27"]
@"$TyDescr_List_Message_ADTTyp_Specl_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_List_ADTTyp_44" }
@"$TyDescr_List_ADTTyp_m_specls_54" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Message_ADTTyp_Specl_53"]
@"$TyDescr_ADT_List_55" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_AddrFields_56" = unnamed_addr constant %"$TyDescr_AddrTyp_42" { i32 -3, %"$TyDescr_AddrFieldTyp_41"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@send.one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_115" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_120" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_123" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_130" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_185" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_190" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_193" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_200" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_219" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_224" = unnamed_addr constant [3 x i8] c"foo"
@"$stringlit_227" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_234" = unnamed_addr constant [7 x i8] c"_amount"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", %_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 17
@"$pname__scilla_version_294" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_295" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_296" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_292"] [%"$ParamDescr_292" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_294", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_292" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_295", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_292" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_296", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_297" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_298" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_299" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_SendMsg_300" = unnamed_addr constant [3 x %"$ParamDescr_292"] [%"$ParamDescr_292" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_297", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_292" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_298", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_292" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_299", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_SendMsg_301" = unnamed_addr constant [7 x i8] c"SendMsg"
@"$tpname__amount_302" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_303" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_304" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_SendMsg2_305" = unnamed_addr constant [3 x %"$ParamDescr_292"] [%"$ParamDescr_292" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_302", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_292" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_303", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_292" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_304", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_SendMsg2_306" = unnamed_addr constant [8 x i8] c"SendMsg2"
@_transition_parameters = constant [2 x %"$TransDescr_293"] [%"$TransDescr_293" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_SendMsg_301", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_292"* getelementptr inbounds ([3 x %"$ParamDescr_292"], [3 x %"$ParamDescr_292"]* @"$tparams_SendMsg_300", i32 0, i32 0) }, %"$TransDescr_293" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_SendMsg2_306", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_292"* getelementptr inbounds ([3 x %"$ParamDescr_292"], [3 x %"$ParamDescr_292"]* @"$tparams_SendMsg2_305", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define internal %TName_List_Message* @"$fundef_3"(%"$$fundef_3_env_57"* %0, i8* %1) !dbg !4 {
entry:
  %"$retval_4" = alloca %TName_List_Message*, align 8
  %"$gasrem_58" = load i64, i64* @_gasrem, align 8
  %"$gascmp_59" = icmp ugt i64 1, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %entry
  %"$consume_62" = sub i64 %"$gasrem_58", 1
  store i64 %"$consume_62", i64* @_gasrem, align 8
  %nil_msg = alloca %TName_List_Message*, align 8
  %"$gasrem_63" = load i64, i64* @_gasrem, align 8
  %"$gascmp_64" = icmp ugt i64 1, %"$gasrem_63"
  br i1 %"$gascmp_64", label %"$out_of_gas_65", label %"$have_gas_66"

"$out_of_gas_65":                                 ; preds = %"$have_gas_61"
  call void @_out_of_gas()
  br label %"$have_gas_66"

"$have_gas_66":                                   ; preds = %"$out_of_gas_65", %"$have_gas_61"
  %"$consume_67" = sub i64 %"$gasrem_63", 1
  store i64 %"$consume_67", i64* @_gasrem, align 8
  %"$adtval_68_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_68_salloc" = call i8* @_salloc(i8* %"$adtval_68_load", i64 1)
  %"$adtval_68" = bitcast i8* %"$adtval_68_salloc" to %CName_Nil_Message*
  %"$adtgep_69" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_68", i32 0, i32 0
  store i8 1, i8* %"$adtgep_69", align 1
  %"$adtptr_70" = bitcast %CName_Nil_Message* %"$adtval_68" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_70", %TName_List_Message** %nil_msg, align 8, !dbg !8
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 1, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %"$have_gas_66"
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %"$have_gas_66"
  %"$consume_75" = sub i64 %"$gasrem_71", 1
  store i64 %"$consume_75", i64* @_gasrem, align 8
  %"$nil_msg_76" = load %TName_List_Message*, %TName_List_Message** %nil_msg, align 8
  %"$adtval_77_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_77_salloc" = call i8* @_salloc(i8* %"$adtval_77_load", i64 17)
  %"$adtval_77" = bitcast i8* %"$adtval_77_salloc" to %CName_Cons_Message*
  %"$adtgep_78" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_77", i32 0, i32 0
  store i8 0, i8* %"$adtgep_78", align 1
  %"$adtgep_79" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_77", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_79", align 8
  %"$adtgep_80" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_77", i32 0, i32 2
  store %TName_List_Message* %"$nil_msg_76", %TName_List_Message** %"$adtgep_80", align 8
  %"$adtptr_81" = bitcast %CName_Cons_Message* %"$adtval_77" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_81", %TName_List_Message** %"$retval_4", align 8, !dbg !9
  %"$$retval_4_82" = load %TName_List_Message*, %TName_List_Message** %"$retval_4", align 8
  ret %TName_List_Message* %"$$retval_4_82"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !10 {
entry:
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 5, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %entry
  %"$consume_87" = sub i64 %"$gasrem_83", 5
  store i64 %"$consume_87", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !12
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %"$have_gas_86"
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %"$have_gas_86"
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem, align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_3_env_57"*, i8*)* @"$fundef_3" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8, !dbg !13
  ret void
}

define void @_deploy_ops() !dbg !14 {
entry:
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %entry
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  ret void
}

define internal void @"$SendMsg_101"(%Uint128 %_amount, [20 x i8]* %"$_origin_102", [20 x i8]* %"$_sender_103") !dbg !15 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_102", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_103", align 1
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %entry
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_110" = icmp ugt i64 1, %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %"$have_gas_107"
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %"$have_gas_107"
  %"$consume_113" = sub i64 %"$gasrem_109", 1
  store i64 %"$consume_113", i64* @_gasrem, align 8
  %"$msgobj_114_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_114_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_114_salloc_load", i64 125)
  %"$msgobj_114_salloc" = bitcast i8* %"$msgobj_114_salloc_salloc" to [125 x i8]*
  %"$msgobj_114" = bitcast [125 x i8]* %"$msgobj_114_salloc" to i8*
  store i8 3, i8* %"$msgobj_114", align 1
  %"$msgobj_fname_116" = getelementptr i8, i8* %"$msgobj_114", i32 1
  %"$msgobj_fname_117" = bitcast i8* %"$msgobj_fname_116" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_115", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_117", align 8
  %"$msgobj_td_118" = getelementptr i8, i8* %"$msgobj_114", i32 17
  %"$msgobj_td_119" = bitcast i8* %"$msgobj_td_118" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_119", align 8
  %"$msgobj_v_121" = getelementptr i8, i8* %"$msgobj_114", i32 25
  %"$msgobj_v_122" = bitcast i8* %"$msgobj_v_121" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_120", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_122", align 8
  %"$msgobj_fname_124" = getelementptr i8, i8* %"$msgobj_114", i32 41
  %"$msgobj_fname_125" = bitcast i8* %"$msgobj_fname_124" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_123", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_125", align 8
  %"$msgobj_td_126" = getelementptr i8, i8* %"$msgobj_114", i32 57
  %"$msgobj_td_127" = bitcast i8* %"$msgobj_td_126" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_127", align 8
  %"$msgobj_v_128" = getelementptr i8, i8* %"$msgobj_114", i32 65
  %"$msgobj_v_129" = bitcast i8* %"$msgobj_v_128" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_129", align 1
  %"$msgobj_fname_131" = getelementptr i8, i8* %"$msgobj_114", i32 85
  %"$msgobj_fname_132" = bitcast i8* %"$msgobj_fname_131" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_130", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_132", align 8
  %"$msgobj_td_133" = getelementptr i8, i8* %"$msgobj_114", i32 101
  %"$msgobj_td_134" = bitcast i8* %"$msgobj_td_133" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_134", align 8
  %"$msgobj_v_135" = getelementptr i8, i8* %"$msgobj_114", i32 109
  %"$msgobj_v_136" = bitcast i8* %"$msgobj_v_135" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_136", align 8
  store i8* %"$msgobj_114", i8** %msg1, align 8, !dbg !16
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_112"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_112"
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$have_gas_141"
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %"$send.one_msg_1" = alloca %TName_List_Message*, align 8
  %"$send.one_msg_148" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8
  %"$send.one_msg_fptr_149" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_148", 0
  %"$send.one_msg_envptr_150" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_148", 1
  %"$msg1_151" = load i8*, i8** %msg1, align 8
  %"$send.one_msg_call_152" = call %TName_List_Message* %"$send.one_msg_fptr_149"(i8* %"$send.one_msg_envptr_150", i8* %"$msg1_151"), !dbg !17
  store %TName_List_Message* %"$send.one_msg_call_152", %TName_List_Message** %"$send.one_msg_1", align 8, !dbg !17
  %"$$send.one_msg_1_153" = load %TName_List_Message*, %TName_List_Message** %"$send.one_msg_1", align 8
  store %TName_List_Message* %"$$send.one_msg_1_153", %TName_List_Message** %msgs1, align 8, !dbg !17
  %"$msgs1_154" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$$msgs1_154_155" = bitcast %TName_List_Message* %"$msgs1_154" to i8*
  %"$_literal_cost_call_156" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", i8* %"$$msgs1_154_155")
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 %"$_literal_cost_call_156", %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_146"
  %"$consume_161" = sub i64 %"$gasrem_157", %"$_literal_cost_call_156"
  store i64 %"$consume_161", i64* @_gasrem, align 8
  %"$execptr_load_162" = load i8*, i8** @_execptr, align 8
  %"$msgs1_163" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  call void @_send(i8* %"$execptr_load_162", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", %TName_List_Message* %"$msgs1_163"), !dbg !18
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @SendMsg(i8* %0) !dbg !19 {
entry:
  %"$_amount_165" = getelementptr i8, i8* %0, i32 0
  %"$_amount_166" = bitcast i8* %"$_amount_165" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_166", align 8
  %"$_origin_167" = getelementptr i8, i8* %0, i32 16
  %"$_origin_168" = bitcast i8* %"$_origin_167" to [20 x i8]*
  %"$_sender_169" = getelementptr i8, i8* %0, i32 36
  %"$_sender_170" = bitcast i8* %"$_sender_169" to [20 x i8]*
  call void @"$SendMsg_101"(%Uint128 %_amount, [20 x i8]* %"$_origin_168", [20 x i8]* %"$_sender_170"), !dbg !20
  ret void
}

define internal void @"$SendMsg2_171"(%Uint128 %_amount, [20 x i8]* %"$_origin_172", [20 x i8]* %"$_sender_173") !dbg !21 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_172", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_173", align 1
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %entry
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 1, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %"$have_gas_177"
  %"$consume_183" = sub i64 %"$gasrem_179", 1
  store i64 %"$consume_183", i64* @_gasrem, align 8
  %"$msgobj_184_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_184_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_184_salloc_load", i64 125)
  %"$msgobj_184_salloc" = bitcast i8* %"$msgobj_184_salloc_salloc" to [125 x i8]*
  %"$msgobj_184" = bitcast [125 x i8]* %"$msgobj_184_salloc" to i8*
  store i8 3, i8* %"$msgobj_184", align 1
  %"$msgobj_fname_186" = getelementptr i8, i8* %"$msgobj_184", i32 1
  %"$msgobj_fname_187" = bitcast i8* %"$msgobj_fname_186" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_185", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_187", align 8
  %"$msgobj_td_188" = getelementptr i8, i8* %"$msgobj_184", i32 17
  %"$msgobj_td_189" = bitcast i8* %"$msgobj_td_188" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_189", align 8
  %"$msgobj_v_191" = getelementptr i8, i8* %"$msgobj_184", i32 25
  %"$msgobj_v_192" = bitcast i8* %"$msgobj_v_191" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_190", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_192", align 8
  %"$msgobj_fname_194" = getelementptr i8, i8* %"$msgobj_184", i32 41
  %"$msgobj_fname_195" = bitcast i8* %"$msgobj_fname_194" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_193", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_195", align 8
  %"$msgobj_td_196" = getelementptr i8, i8* %"$msgobj_184", i32 57
  %"$msgobj_td_197" = bitcast i8* %"$msgobj_td_196" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_197", align 8
  %"$msgobj_v_198" = getelementptr i8, i8* %"$msgobj_184", i32 65
  %"$msgobj_v_199" = bitcast i8* %"$msgobj_v_198" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_199", align 1
  %"$msgobj_fname_201" = getelementptr i8, i8* %"$msgobj_184", i32 85
  %"$msgobj_fname_202" = bitcast i8* %"$msgobj_fname_201" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_200", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_202", align 8
  %"$msgobj_td_203" = getelementptr i8, i8* %"$msgobj_184", i32 101
  %"$msgobj_td_204" = bitcast i8* %"$msgobj_td_203" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_204", align 8
  %"$msgobj_v_205" = getelementptr i8, i8* %"$msgobj_184", i32 109
  %"$msgobj_v_206" = bitcast i8* %"$msgobj_v_205" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_206", align 8
  store i8* %"$msgobj_184", i8** %msg1, align 8, !dbg !22
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 1, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_182"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_182"
  %"$consume_212" = sub i64 %"$gasrem_208", 1
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %msg2 = alloca i8*, align 8
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %"$have_gas_211"
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %"$msgobj_218_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_218_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_218_salloc_load", i64 125)
  %"$msgobj_218_salloc" = bitcast i8* %"$msgobj_218_salloc_salloc" to [125 x i8]*
  %"$msgobj_218" = bitcast [125 x i8]* %"$msgobj_218_salloc" to i8*
  store i8 3, i8* %"$msgobj_218", align 1
  %"$msgobj_fname_220" = getelementptr i8, i8* %"$msgobj_218", i32 1
  %"$msgobj_fname_221" = bitcast i8* %"$msgobj_fname_220" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_219", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_221", align 8
  %"$msgobj_td_222" = getelementptr i8, i8* %"$msgobj_218", i32 17
  %"$msgobj_td_223" = bitcast i8* %"$msgobj_td_222" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_223", align 8
  %"$msgobj_v_225" = getelementptr i8, i8* %"$msgobj_218", i32 25
  %"$msgobj_v_226" = bitcast i8* %"$msgobj_v_225" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_224", i32 0, i32 0), i32 3 }, %String* %"$msgobj_v_226", align 8
  %"$msgobj_fname_228" = getelementptr i8, i8* %"$msgobj_218", i32 41
  %"$msgobj_fname_229" = bitcast i8* %"$msgobj_fname_228" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_227", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_229", align 8
  %"$msgobj_td_230" = getelementptr i8, i8* %"$msgobj_218", i32 57
  %"$msgobj_td_231" = bitcast i8* %"$msgobj_td_230" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_231", align 8
  %"$msgobj_v_232" = getelementptr i8, i8* %"$msgobj_218", i32 65
  %"$msgobj_v_233" = bitcast i8* %"$msgobj_v_232" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_233", align 1
  %"$msgobj_fname_235" = getelementptr i8, i8* %"$msgobj_218", i32 85
  %"$msgobj_fname_236" = bitcast i8* %"$msgobj_fname_235" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_234", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_236", align 8
  %"$msgobj_td_237" = getelementptr i8, i8* %"$msgobj_218", i32 101
  %"$msgobj_td_238" = bitcast i8* %"$msgobj_td_237" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_238", align 8
  %"$msgobj_v_239" = getelementptr i8, i8* %"$msgobj_218", i32 109
  %"$msgobj_v_240" = bitcast i8* %"$msgobj_v_239" to %Uint128*
  store %Uint128 { i128 100 }, %Uint128* %"$msgobj_v_240", align 8
  store i8* %"$msgobj_218", i8** %msg2, align 8, !dbg !23
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_216"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_216"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 1, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_245"
  %"$consume_251" = sub i64 %"$gasrem_247", 1
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %"$send.one_msg_2" = alloca %TName_List_Message*, align 8
  %"$send.one_msg_252" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8
  %"$send.one_msg_fptr_253" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_252", 0
  %"$send.one_msg_envptr_254" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_252", 1
  %"$msg1_255" = load i8*, i8** %msg1, align 8
  %"$send.one_msg_call_256" = call %TName_List_Message* %"$send.one_msg_fptr_253"(i8* %"$send.one_msg_envptr_254", i8* %"$msg1_255"), !dbg !24
  store %TName_List_Message* %"$send.one_msg_call_256", %TName_List_Message** %"$send.one_msg_2", align 8, !dbg !24
  %"$$send.one_msg_2_257" = load %TName_List_Message*, %TName_List_Message** %"$send.one_msg_2", align 8
  store %TName_List_Message* %"$$send.one_msg_2_257", %TName_List_Message** %msgs1, align 8, !dbg !24
  %"$gasrem_258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_259" = icmp ugt i64 1, %"$gasrem_258"
  br i1 %"$gascmp_259", label %"$out_of_gas_260", label %"$have_gas_261"

"$out_of_gas_260":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_261"

"$have_gas_261":                                  ; preds = %"$out_of_gas_260", %"$have_gas_250"
  %"$consume_262" = sub i64 %"$gasrem_258", 1
  store i64 %"$consume_262", i64* @_gasrem, align 8
  %msgs2 = alloca %TName_List_Message*, align 8
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 1, %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_261"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_261"
  %"$consume_267" = sub i64 %"$gasrem_263", 1
  store i64 %"$consume_267", i64* @_gasrem, align 8
  %"$msg2_268" = load i8*, i8** %msg2, align 8
  %"$msgs1_269" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$adtval_270_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_270_salloc" = call i8* @_salloc(i8* %"$adtval_270_load", i64 17)
  %"$adtval_270" = bitcast i8* %"$adtval_270_salloc" to %CName_Cons_Message*
  %"$adtgep_271" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_270", i32 0, i32 0
  store i8 0, i8* %"$adtgep_271", align 1
  %"$adtgep_272" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_270", i32 0, i32 1
  store i8* %"$msg2_268", i8** %"$adtgep_272", align 8
  %"$adtgep_273" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_270", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_269", %TName_List_Message** %"$adtgep_273", align 8
  %"$adtptr_274" = bitcast %CName_Cons_Message* %"$adtval_270" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_274", %TName_List_Message** %msgs2, align 8, !dbg !25
  %"$msgs2_275" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  %"$$msgs2_275_276" = bitcast %TName_List_Message* %"$msgs2_275" to i8*
  %"$_literal_cost_call_277" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", i8* %"$$msgs2_275_276")
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 %"$_literal_cost_call_277", %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$have_gas_266"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$have_gas_266"
  %"$consume_282" = sub i64 %"$gasrem_278", %"$_literal_cost_call_277"
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %"$execptr_load_283" = load i8*, i8** @_execptr, align 8
  %"$msgs2_284" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  call void @_send(i8* %"$execptr_load_283", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", %TName_List_Message* %"$msgs2_284"), !dbg !26
  ret void
}

define void @SendMsg2(i8* %0) !dbg !27 {
entry:
  %"$_amount_286" = getelementptr i8, i8* %0, i32 0
  %"$_amount_287" = bitcast i8* %"$_amount_286" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_287", align 8
  %"$_origin_288" = getelementptr i8, i8* %0, i32 16
  %"$_origin_289" = bitcast i8* %"$_origin_288" to [20 x i8]*
  %"$_sender_290" = getelementptr i8, i8* %0, i32 36
  %"$_sender_291" = bitcast i8* %"$_sender_290" to [20 x i8]*
  call void @"$SendMsg2_171"(%Uint128 %_amount, [20 x i8]* %"$_origin_289", [20 x i8]* %"$_sender_291"), !dbg !28
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "send.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_3", linkageName: "$fundef_3", scope: !2, file: !2, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 7, column: 17, scope: !4)
!9 = !DILocation(line: 8, column: 3, scope: !4)
!10 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !11, file: !11, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DIFile(filename: ".", directory: ".")
!12 = !DILocation(line: 0, scope: !10)
!13 = !DILocation(line: 7, column: 3, scope: !10)
!14 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !11, file: !11, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = distinct !DISubprogram(name: "SendMsg", linkageName: "SendMsg", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 14, column: 10, scope: !15)
!17 = !DILocation(line: 15, column: 11, scope: !15)
!18 = !DILocation(line: 16, column: 3, scope: !15)
!19 = distinct !DISubprogram(name: "SendMsg", linkageName: "SendMsg", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!20 = !DILocation(line: 13, column: 12, scope: !19)
!21 = distinct !DISubprogram(name: "SendMsg2", linkageName: "SendMsg2", scope: !2, file: !2, line: 19, type: !5, scopeLine: 19, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 20, column: 10, scope: !21)
!23 = !DILocation(line: 21, column: 10, scope: !21)
!24 = !DILocation(line: 22, column: 11, scope: !21)
!25 = !DILocation(line: 23, column: 11, scope: !21)
!26 = !DILocation(line: 24, column: 3, scope: !21)
!27 = distinct !DISubprogram(name: "SendMsg2", linkageName: "SendMsg2", scope: !2, file: !2, line: 19, type: !5, scopeLine: 19, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DILocation(line: 19, column: 12, scope: !27)
