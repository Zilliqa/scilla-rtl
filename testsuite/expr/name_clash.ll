; let a = Uint32 1 in
; let x =
; let a = Uint32 2 in
; a
; in
; builtin add a x
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_2" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Uint32 = type { i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_3" = global %"$TyDescrTy_PrimTyp_2" zeroinitializer
@"$TyDescr_Int32_4" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Int32_Prim_3" to i8*) }
@"$TyDescr_Uint32_Prim_5" = global %"$TyDescrTy_PrimTyp_2" { i32 1, i32 0 }
@"$TyDescr_Uint32_6" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Uint32_Prim_5" to i8*) }
@"$TyDescr_Int64_Prim_7" = global %"$TyDescrTy_PrimTyp_2" { i32 0, i32 1 }
@"$TyDescr_Int64_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Int64_Prim_7" to i8*) }
@"$TyDescr_Uint64_Prim_9" = global %"$TyDescrTy_PrimTyp_2" { i32 1, i32 1 }
@"$TyDescr_Uint64_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Uint64_Prim_9" to i8*) }
@"$TyDescr_Int128_Prim_11" = global %"$TyDescrTy_PrimTyp_2" { i32 0, i32 2 }
@"$TyDescr_Int128_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Int128_Prim_11" to i8*) }
@"$TyDescr_Uint128_Prim_13" = global %"$TyDescrTy_PrimTyp_2" { i32 1, i32 2 }
@"$TyDescr_Uint128_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Uint128_Prim_13" to i8*) }
@"$TyDescr_Int256_Prim_15" = global %"$TyDescrTy_PrimTyp_2" { i32 0, i32 3 }
@"$TyDescr_Int256_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Int256_Prim_15" to i8*) }
@"$TyDescr_Uint256_Prim_17" = global %"$TyDescrTy_PrimTyp_2" { i32 1, i32 3 }
@"$TyDescr_Uint256_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Uint256_Prim_17" to i8*) }
@"$TyDescr_String_Prim_19" = global %"$TyDescrTy_PrimTyp_2" { i32 2, i32 0 }
@"$TyDescr_String_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_String_Prim_19" to i8*) }
@"$TyDescr_Bnum_Prim_21" = global %"$TyDescrTy_PrimTyp_2" { i32 3, i32 0 }
@"$TyDescr_Bnum_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Bnum_Prim_21" to i8*) }
@"$TyDescr_Message_Prim_23" = global %"$TyDescrTy_PrimTyp_2" { i32 4, i32 0 }
@"$TyDescr_Message_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Message_Prim_23" to i8*) }
@"$TyDescr_Event_Prim_25" = global %"$TyDescrTy_PrimTyp_2" { i32 5, i32 0 }
@"$TyDescr_Event_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Event_Prim_25" to i8*) }
@"$TyDescr_Exception_Prim_27" = global %"$TyDescrTy_PrimTyp_2" { i32 6, i32 0 }
@"$TyDescr_Exception_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Exception_Prim_27" to i8*) }
@"$TyDescr_Bystr_Prim_29" = global %"$TyDescrTy_PrimTyp_2" { i32 7, i32 0 }
@"$TyDescr_Bystr_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Bystr_Prim_29" to i8*) }

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_1" = alloca %Uint32, align 8
  %"$gasrem_37" = load i64, i64* @_gasrem, align 8
  %"$gascmp_38" = icmp ugt i64 1, %"$gasrem_37"
  br i1 %"$gascmp_38", label %"$out_of_gas_39", label %"$have_gas_40"

"$out_of_gas_39":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_40"

"$have_gas_40":                                   ; preds = %"$out_of_gas_39", %entry
  %"$consume_41" = sub i64 %"$gasrem_37", 1
  store i64 %"$consume_41", i64* @_gasrem, align 8
  %a = alloca %Uint32, align 8
  %"$gasrem_42" = load i64, i64* @_gasrem, align 8
  %"$gascmp_43" = icmp ugt i64 1, %"$gasrem_42"
  br i1 %"$gascmp_43", label %"$out_of_gas_44", label %"$have_gas_45"

"$out_of_gas_44":                                 ; preds = %"$have_gas_40"
  call void @_out_of_gas()
  br label %"$have_gas_45"

"$have_gas_45":                                   ; preds = %"$out_of_gas_44", %"$have_gas_40"
  %"$consume_46" = sub i64 %"$gasrem_42", 1
  store i64 %"$consume_46", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %a, align 4
  %"$gasrem_47" = load i64, i64* @_gasrem, align 8
  %"$gascmp_48" = icmp ugt i64 1, %"$gasrem_47"
  br i1 %"$gascmp_48", label %"$out_of_gas_49", label %"$have_gas_50"

"$out_of_gas_49":                                 ; preds = %"$have_gas_45"
  call void @_out_of_gas()
  br label %"$have_gas_50"

"$have_gas_50":                                   ; preds = %"$out_of_gas_49", %"$have_gas_45"
  %"$consume_51" = sub i64 %"$gasrem_47", 1
  store i64 %"$consume_51", i64* @_gasrem, align 8
  %x = alloca %Uint32, align 8
  %"$gasrem_52" = load i64, i64* @_gasrem, align 8
  %"$gascmp_53" = icmp ugt i64 1, %"$gasrem_52"
  br i1 %"$gascmp_53", label %"$out_of_gas_54", label %"$have_gas_55"

"$out_of_gas_54":                                 ; preds = %"$have_gas_50"
  call void @_out_of_gas()
  br label %"$have_gas_55"

"$have_gas_55":                                   ; preds = %"$out_of_gas_54", %"$have_gas_50"
  %"$consume_56" = sub i64 %"$gasrem_52", 1
  store i64 %"$consume_56", i64* @_gasrem, align 8
  %"$a_0" = alloca %Uint32, align 8
  %"$gasrem_57" = load i64, i64* @_gasrem, align 8
  %"$gascmp_58" = icmp ugt i64 1, %"$gasrem_57"
  br i1 %"$gascmp_58", label %"$out_of_gas_59", label %"$have_gas_60"

"$out_of_gas_59":                                 ; preds = %"$have_gas_55"
  call void @_out_of_gas()
  br label %"$have_gas_60"

"$have_gas_60":                                   ; preds = %"$out_of_gas_59", %"$have_gas_55"
  %"$consume_61" = sub i64 %"$gasrem_57", 1
  store i64 %"$consume_61", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %"$a_0", align 4
  %"$gasrem_62" = load i64, i64* @_gasrem, align 8
  %"$gascmp_63" = icmp ugt i64 1, %"$gasrem_62"
  br i1 %"$gascmp_63", label %"$out_of_gas_64", label %"$have_gas_65"

"$out_of_gas_64":                                 ; preds = %"$have_gas_60"
  call void @_out_of_gas()
  br label %"$have_gas_65"

"$have_gas_65":                                   ; preds = %"$out_of_gas_64", %"$have_gas_60"
  %"$consume_66" = sub i64 %"$gasrem_62", 1
  store i64 %"$consume_66", i64* @_gasrem, align 8
  %"$$a_0_67" = load %Uint32, %Uint32* %"$a_0", align 4
  store %Uint32 %"$$a_0_67", %Uint32* %x, align 4
  %"$a_68" = load %Uint32, %Uint32* %a, align 4
  %"$x_69" = load %Uint32, %Uint32* %x, align 4
  %"$add_call_70" = call %Uint32 @_add_Uint32(%Uint32 %"$a_68", %Uint32 %"$x_69")
  store %Uint32 %"$add_call_70", %Uint32* %"$expr_1", align 4
  %"$$expr_1_71" = load %Uint32, %Uint32* %"$expr_1", align 4
  ret %Uint32 %"$$expr_1_71"
}

declare void @_out_of_gas()

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_72" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_73" = alloca %Uint32, align 8
  %"$memvoidcast_74" = bitcast %Uint32* %"$pval_73" to i8*
  store %Uint32 %"$exprval_72", %Uint32* %"$pval_73", align 4
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_6", i8* %"$memvoidcast_74")
  ret void
}
