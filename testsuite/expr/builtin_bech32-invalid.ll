; let bech32str = "zil102n74869xnvdwq3yh8p0k9jjgtejruft268tg9" in
; let prefix = "zil" in
; builtin bech32_to_bystr20 prefix bech32str
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_33" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_32"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_32" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_34"**, %"$TyDescrTy_ADTTyp_33"* }
%"$TyDescrTy_ADTTyp_Constr_34" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$ParamDescr_97" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_98" = type { %ParamDescrString, i32, %"$ParamDescr_97"* }
%TName_Option_ByStr20 = type { i8, %CName_Some_ByStr20*, %CName_None_ByStr20* }
%CName_Some_ByStr20 = type <{ i8, [20 x i8] }>
%CName_None_ByStr20 = type <{ i8 }>
%String = type { i8*, i32 }

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
@"$TyDescr_Bystr_Prim_28" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_28" to i8*) }
@"$TyDescr_Bystr20_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 20 }
@"$TyDescr_Bystr20_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr20_Prim_30" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_35" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_48" to i8*) }
@"$TyDescr_Option_ADTTyp_39" = unnamed_addr constant %"$TyDescrTy_ADTTyp_33" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_50", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_32"*], [1 x %"$TyDescrTy_ADTTyp_Specl_32"*]* @"$TyDescr_Option_ADTTyp_m_specls_49", i32 0, i32 0) }
@"$TyDescr_Option_Some_ByStr20_Constr_m_args_40" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_31"]
@"$TyDescr_ADT_Some_41" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_ADTTyp_Constr_42" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_41", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_Constr_m_args_40", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_Constr_m_args_43" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_44" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_ADTTyp_Constr_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_44", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_Constr_m_args_43", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_constrs_46" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_34"*] [%"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_Option_Some_ByStr20_ADTTyp_Constr_42", %"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_Option_None_ByStr20_ADTTyp_Constr_45"]
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_TArgs_47" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_31"]
@"$TyDescr_Option_ByStr20_ADTTyp_Specl_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_32" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_TArgs_47", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_34"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_34"*], [2 x %"$TyDescrTy_ADTTyp_Constr_34"*]* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_m_constrs_46", i32 0, i32 0), %"$TyDescrTy_ADTTyp_33"* @"$TyDescr_Option_ADTTyp_39" }
@"$TyDescr_Option_ADTTyp_m_specls_49" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_32"*] [%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Option_ByStr20_ADTTyp_Specl_48"]
@"$TyDescr_ADT_Option_50" = unnamed_addr constant [6 x i8] c"Option"
@"$stringlit_61" = unnamed_addr constant [42 x i8] c"zil102n74869xnvdwq3yh8p0k9jjgtejruft268tg9"
@"$stringlit_72" = unnamed_addr constant [3 x i8] c"zil"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_35", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_97"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_98"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Option_ByStr20* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_0" = alloca %TName_Option_ByStr20*, align 8
  %"$gasrem_51" = load i64, i64* @_gasrem, align 8
  %"$gascmp_52" = icmp ugt i64 1, %"$gasrem_51"
  br i1 %"$gascmp_52", label %"$out_of_gas_53", label %"$have_gas_54"

"$out_of_gas_53":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_54"

"$have_gas_54":                                   ; preds = %"$out_of_gas_53", %entry
  %"$consume_55" = sub i64 %"$gasrem_51", 1
  store i64 %"$consume_55", i64* @_gasrem, align 8
  %bech32str = alloca %String, align 8
  %"$gasrem_56" = load i64, i64* @_gasrem, align 8
  %"$gascmp_57" = icmp ugt i64 1, %"$gasrem_56"
  br i1 %"$gascmp_57", label %"$out_of_gas_58", label %"$have_gas_59"

"$out_of_gas_58":                                 ; preds = %"$have_gas_54"
  call void @_out_of_gas()
  br label %"$have_gas_59"

"$have_gas_59":                                   ; preds = %"$out_of_gas_58", %"$have_gas_54"
  %"$consume_60" = sub i64 %"$gasrem_56", 1
  store i64 %"$consume_60", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"$stringlit_61", i32 0, i32 0), i32 42 }, %String* %bech32str, align 8
  %"$gasrem_62" = load i64, i64* @_gasrem, align 8
  %"$gascmp_63" = icmp ugt i64 1, %"$gasrem_62"
  br i1 %"$gascmp_63", label %"$out_of_gas_64", label %"$have_gas_65"

"$out_of_gas_64":                                 ; preds = %"$have_gas_59"
  call void @_out_of_gas()
  br label %"$have_gas_65"

"$have_gas_65":                                   ; preds = %"$out_of_gas_64", %"$have_gas_59"
  %"$consume_66" = sub i64 %"$gasrem_62", 1
  store i64 %"$consume_66", i64* @_gasrem, align 8
  %prefix = alloca %String, align 8
  %"$gasrem_67" = load i64, i64* @_gasrem, align 8
  %"$gascmp_68" = icmp ugt i64 1, %"$gasrem_67"
  br i1 %"$gascmp_68", label %"$out_of_gas_69", label %"$have_gas_70"

"$out_of_gas_69":                                 ; preds = %"$have_gas_65"
  call void @_out_of_gas()
  br label %"$have_gas_70"

"$have_gas_70":                                   ; preds = %"$out_of_gas_69", %"$have_gas_65"
  %"$consume_71" = sub i64 %"$gasrem_67", 1
  store i64 %"$consume_71", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_72", i32 0, i32 0), i32 3 }, %String* %prefix, align 8
  %"$_literal_cost_prefix_73" = alloca %String, align 8
  %"$prefix_74" = load %String, %String* %prefix, align 8
  store %String %"$prefix_74", %String* %"$_literal_cost_prefix_73", align 8
  %"$$_literal_cost_prefix_73_75" = bitcast %String* %"$_literal_cost_prefix_73" to i8*
  %"$_literal_cost_call_76" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$$_literal_cost_prefix_73_75")
  %"$_literal_cost_bech32str_77" = alloca %String, align 8
  %"$bech32str_78" = load %String, %String* %bech32str, align 8
  store %String %"$bech32str_78", %String* %"$_literal_cost_bech32str_77", align 8
  %"$$_literal_cost_bech32str_77_79" = bitcast %String* %"$_literal_cost_bech32str_77" to i8*
  %"$_literal_cost_call_80" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$$_literal_cost_bech32str_77_79")
  %"$gasadd_81" = add i64 %"$_literal_cost_call_76", %"$_literal_cost_call_80"
  %"$gasmul_82" = mul i64 %"$gasadd_81", 4
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 %"$gasmul_82", %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %"$have_gas_70"
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %"$have_gas_70"
  %"$consume_87" = sub i64 %"$gasrem_83", %"$gasmul_82"
  store i64 %"$consume_87", i64* @_gasrem, align 8
  %"$execptr_load_88" = load i8*, i8** @_execptr, align 8
  %"$prefix_89" = load %String, %String* %prefix, align 8
  %"$bech32str_90" = load %String, %String* %bech32str, align 8
  %"$bech32_to_bystr20_call_91" = call %TName_Option_ByStr20* @_bech32_to_bystr20(i8* %"$execptr_load_88", %String %"$prefix_89", %String %"$bech32str_90")
  store %TName_Option_ByStr20* %"$bech32_to_bystr20_call_91", %TName_Option_ByStr20** %"$expr_0", align 8
  %"$$expr_0_93" = load %TName_Option_ByStr20*, %TName_Option_ByStr20** %"$expr_0", align 8
  ret %TName_Option_ByStr20* %"$$expr_0_93"
}

declare void @_out_of_gas()

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare %TName_Option_ByStr20* @_bech32_to_bystr20(i8*, %String, %String)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_94" = call %TName_Option_ByStr20* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_95" = bitcast %TName_Option_ByStr20* %"$exprval_94" to i8*
  %"$execptr_load_96" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_96", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_35", i8* %"$memvoidcast_95")
  ret void
}
