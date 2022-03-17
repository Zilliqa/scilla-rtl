

; gas_remaining: 4001999
; ModuleID = 'NameClash1'
source_filename = "NameClash1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%"$ParamDescr_187" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_188" = type { %ParamDescrString, i32, %"$ParamDescr_187"* }
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
@"$x_121" = unnamed_addr constant [2 x i8] c"x\00"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_28", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_Addr_44", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_40", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Bnum_24", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_Exception_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_34", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_32", %_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_189" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_190" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_191" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_187"] [%"$ParamDescr_187" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_189", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_8" }, %"$ParamDescr_187" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_190", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36" }, %"$ParamDescr_187" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_191", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_24" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_192" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_193" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_194" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_c_195" = unnamed_addr constant [1 x i8] c"c"
@"$tparams_t1_196" = unnamed_addr constant [4 x %"$ParamDescr_187"] [%"$ParamDescr_187" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_192", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }, %"$ParamDescr_187" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_193", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_187" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_194", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_187" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_c_195", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_40" }]
@"$tname_t1_197" = unnamed_addr constant [2 x i8] c"t1"
@_transition_parameters = constant [1 x %"$TransDescr_188"] [%"$TransDescr_188" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_197", i32 0, i32 0), i32 2 }, i32 4, %"$ParamDescr_187"* getelementptr inbounds ([4 x %"$ParamDescr_187"], [4 x %"$ParamDescr_187"]* @"$tparams_t1_196", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define void @_init_libs() !dbg !4 {
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
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 1, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %"$have_gas_66"
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %"$have_gas_66"
  %"$consume_72" = sub i64 %"$gasrem_68", 1
  store i64 %"$consume_72", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$x_3", align 4, !dbg !11
  %"$execptr_load_73" = load i8*, i8** @_execptr, align 8
  %"$$x_3_75" = load %Int32, %Int32* %"$x_3", align 4
  %"$update_value_76" = alloca %Int32, align 8
  store %Int32 %"$$x_3_75", %Int32* %"$update_value_76", align 4
  %"$update_value_77" = bitcast %Int32* %"$update_value_76" to i8*
  call void @_update_field(i8* %"$execptr_load_73", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_74", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_6", i32 0, i8* null, i8* %"$update_value_77"), !dbg !11
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$create_event_78"(%Uint128 %_amount, [20 x i8]* %"$_origin_79", [20 x i8]* %"$_sender_80", %Int32 %m) !dbg !12 {
entry:
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
  store i8* %"$msgobj_91", i8** %e, align 8, !dbg !13
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
  call void @_event(i8* %"$execptr_load_116", %_TyDescrTy_Typ* @"$TyDescr_Event_28", i8* %"$e_117"), !dbg !14
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_118"(%Uint128 %_amount, [20 x i8]* %"$_origin_119", [20 x i8]* %"$_sender_120", %TName_Bool* %c) !dbg !15 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_119", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_120", align 1
  %"$x_1" = alloca %Int32, align 8
  %"$execptr_load_122" = load i8*, i8** @_execptr, align 8
  %"$$x_1_call_123" = call i8* @_fetch_field(i8* %"$execptr_load_122", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_121", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_6", i32 0, i8* null, i32 1), !dbg !16
  %"$$x_1_124" = bitcast i8* %"$$x_1_call_123" to %Int32*
  %"$$x_1_125" = load %Int32, %Int32* %"$$x_1_124", align 4
  store %Int32 %"$$x_1_125", %Int32* %"$x_1", align 4
  %"$_literal_cost_$x_1_126" = alloca %Int32, align 8
  %"$$x_1_127" = load %Int32, %Int32* %"$x_1", align 4
  store %Int32 %"$$x_1_127", %Int32* %"$_literal_cost_$x_1_126", align 4
  %"$$_literal_cost_$x_1_126_128" = bitcast %Int32* %"$_literal_cost_$x_1_126" to i8*
  %"$_literal_cost_call_129" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$$_literal_cost_$x_1_126_128")
  %"$gasadd_130" = add i64 %"$_literal_cost_call_129", 0
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 %"$gasadd_130", %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %entry
  %"$consume_135" = sub i64 %"$gasrem_131", %"$gasadd_130"
  store i64 %"$consume_135", i64* @_gasrem, align 8
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$have_gas_134"
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem, align 8
  %y = alloca %Int32, align 8
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_139"
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %"$x_2" = alloca %Int32, align 8
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_144"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$x_2", align 4, !dbg !17
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_149"
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %"$$x_2_156" = load %Int32, %Int32* %"$x_2", align 4
  store %Int32 %"$$x_2_156", %Int32* %y, align 4, !dbg !18
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 1, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_154"
  %"$consume_161" = sub i64 %"$gasrem_157", 1
  store i64 %"$consume_161", i64* @_gasrem, align 8
  %z = alloca %Int32, align 8
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 4, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_160"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_160"
  %"$consume_166" = sub i64 %"$gasrem_162", 4
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %"$$x_1_167" = load %Int32, %Int32* %"$x_1", align 4
  %"$y_168" = load %Int32, %Int32* %y, align 4
  %"$add_call_169" = call %Int32 @_add_Int32(%Int32 %"$$x_1_167", %Int32 %"$y_168"), !dbg !19
  store %Int32 %"$add_call_169", %Int32* %z, align 4, !dbg !19
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_165"
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %"$create_event__origin_175" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$create_event__origin_175", align 1
  %"$create_event__sender_176" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_176", align 1
  %"$z_177" = load %Int32, %Int32* %z, align 4
  call void @"$create_event_78"(%Uint128 %_amount, [20 x i8]* %"$create_event__origin_175", [20 x i8]* %"$create_event__sender_176", %Int32 %"$z_177"), !dbg !20
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @t1(i8* %0) !dbg !21 {
entry:
  %"$_amount_179" = getelementptr i8, i8* %0, i32 0
  %"$_amount_180" = bitcast i8* %"$_amount_179" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_180", align 8
  %"$_origin_181" = getelementptr i8, i8* %0, i32 16
  %"$_origin_182" = bitcast i8* %"$_origin_181" to [20 x i8]*
  %"$_sender_183" = getelementptr i8, i8* %0, i32 36
  %"$_sender_184" = bitcast i8* %"$_sender_183" to [20 x i8]*
  %"$c_185" = getelementptr i8, i8* %0, i32 56
  %"$c_186" = bitcast i8* %"$c_185" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_186", align 8
  call void @"$t1_118"(%Uint128 %_amount, [20 x i8]* %"$_origin_182", [20 x i8]* %"$_sender_184", %TName_Bool* %c), !dbg !22
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "name_clash2.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 5, column: 19, scope: !10)
!12 = distinct !DISubprogram(name: "create_event", linkageName: "create_event", scope: !2, file: !2, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!13 = !DILocation(line: 8, column: 7, scope: !12)
!14 = !DILocation(line: 9, column: 3, scope: !12)
!15 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 12, type: !6, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 13, column: 3, scope: !15)
!17 = !DILocation(line: 15, column: 13, scope: !15)
!18 = !DILocation(line: 16, column: 5, scope: !15)
!19 = !DILocation(line: 17, column: 7, scope: !15)
!20 = !DILocation(line: 18, column: 3, scope: !15)
!21 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 12, type: !6, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 12, column: 12, scope: !21)
