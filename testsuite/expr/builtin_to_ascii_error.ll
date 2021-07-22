; (* Contains \0 at the end, invalid in Scilla. *)
; let hello_0 = 0x68656c6c6f00 in
; builtin to_ascii hello_0
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$ParamDescr_67" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_68" = type { %ParamDescrString, i32, %"$ParamDescr_67"* }
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
@"$TyDescr_Bystr6_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 6 }
@"$TyDescr_Bystr6_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr6_Prim_30" to i8*) }
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr6_31", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_67"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_68"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  ret void
}

define internal %String @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_0" = alloca %String, align 8
  %"$gasrem_38" = load i64, i64* @_gasrem, align 8
  %"$gascmp_39" = icmp ugt i64 1, %"$gasrem_38"
  br i1 %"$gascmp_39", label %"$out_of_gas_40", label %"$have_gas_41"

"$out_of_gas_40":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_41"

"$have_gas_41":                                   ; preds = %"$out_of_gas_40", %entry
  %"$consume_42" = sub i64 %"$gasrem_38", 1
  store i64 %"$consume_42", i64* @_gasrem, align 8
  %hello_0 = alloca [6 x i8], align 1
  %"$gasrem_43" = load i64, i64* @_gasrem, align 8
  %"$gascmp_44" = icmp ugt i64 1, %"$gasrem_43"
  br i1 %"$gascmp_44", label %"$out_of_gas_45", label %"$have_gas_46"

"$out_of_gas_45":                                 ; preds = %"$have_gas_41"
  call void @_out_of_gas()
  br label %"$have_gas_46"

"$have_gas_46":                                   ; preds = %"$out_of_gas_45", %"$have_gas_41"
  %"$consume_47" = sub i64 %"$gasrem_43", 1
  store i64 %"$consume_47", i64* @_gasrem, align 8
  store [6 x i8] c"hello\00", [6 x i8]* %hello_0, align 1
  %"$_literal_cost_hello_0_48" = alloca [6 x i8], align 1
  %"$hello_0_49" = load [6 x i8], [6 x i8]* %hello_0, align 1
  store [6 x i8] %"$hello_0_49", [6 x i8]* %"$_literal_cost_hello_0_48", align 1
  %"$$_literal_cost_hello_0_48_50" = bitcast [6 x i8]* %"$_literal_cost_hello_0_48" to i8*
  %"$_literal_cost_call_51" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr6_31", i8* %"$$_literal_cost_hello_0_48_50")
  %"$gasrem_52" = load i64, i64* @_gasrem, align 8
  %"$gascmp_53" = icmp ugt i64 %"$_literal_cost_call_51", %"$gasrem_52"
  br i1 %"$gascmp_53", label %"$out_of_gas_54", label %"$have_gas_55"

"$out_of_gas_54":                                 ; preds = %"$have_gas_46"
  call void @_out_of_gas()
  br label %"$have_gas_55"

"$have_gas_55":                                   ; preds = %"$out_of_gas_54", %"$have_gas_46"
  %"$consume_56" = sub i64 %"$gasrem_52", %"$_literal_cost_call_51"
  store i64 %"$consume_56", i64* @_gasrem, align 8
  %"$execptr_load_57" = load i8*, i8** @_execptr, align 8
  %"$to_ascii_hello_0_58" = alloca [6 x i8], align 1
  %"$hello_0_59" = load [6 x i8], [6 x i8]* %hello_0, align 1
  store [6 x i8] %"$hello_0_59", [6 x i8]* %"$to_ascii_hello_0_58", align 1
  %"$$to_ascii_hello_0_58_60" = bitcast [6 x i8]* %"$to_ascii_hello_0_58" to i8*
  %"$to_ascii_call_61" = call %String @_to_ascii(i8* %"$execptr_load_57", i8* %"$$to_ascii_hello_0_58_60", i32 6)
  store %String %"$to_ascii_call_61", %String* %"$expr_0", align 8
  %"$$expr_0_62" = load %String, %String* %"$expr_0", align 8
  ret %String %"$$expr_0_62"
}

declare void @_out_of_gas()

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare %String @_to_ascii(i8*, i8*, i32)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_63" = call %String @_scilla_expr_fun(i8* null)
  %"$pval_64" = alloca %String, align 8
  %"$memvoidcast_65" = bitcast %String* %"$pval_64" to i8*
  store %String %"$exprval_63", %String* %"$pval_64", align 8
  %"$execptr_load_66" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_66", %_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$memvoidcast_65")
  ret void
}
