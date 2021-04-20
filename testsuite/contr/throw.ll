

; gas_remaining: 4002000
; ModuleID = 'Throw'
source_filename = "Throw"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_0" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Uint32 = type { i32 }
%Uint128 = type { i128 }
%String = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_1" = global %"$TyDescrTy_PrimTyp_0" zeroinitializer
@"$TyDescr_Int32_2" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Int32_Prim_1" to i8*) }
@"$TyDescr_Uint32_Prim_3" = global %"$TyDescrTy_PrimTyp_0" { i32 1, i32 0 }
@"$TyDescr_Uint32_4" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Uint32_Prim_3" to i8*) }
@"$TyDescr_Int64_Prim_5" = global %"$TyDescrTy_PrimTyp_0" { i32 0, i32 1 }
@"$TyDescr_Int64_6" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Int64_Prim_5" to i8*) }
@"$TyDescr_Uint64_Prim_7" = global %"$TyDescrTy_PrimTyp_0" { i32 1, i32 1 }
@"$TyDescr_Uint64_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Uint64_Prim_7" to i8*) }
@"$TyDescr_Int128_Prim_9" = global %"$TyDescrTy_PrimTyp_0" { i32 0, i32 2 }
@"$TyDescr_Int128_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Int128_Prim_9" to i8*) }
@"$TyDescr_Uint128_Prim_11" = global %"$TyDescrTy_PrimTyp_0" { i32 1, i32 2 }
@"$TyDescr_Uint128_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Uint128_Prim_11" to i8*) }
@"$TyDescr_Int256_Prim_13" = global %"$TyDescrTy_PrimTyp_0" { i32 0, i32 3 }
@"$TyDescr_Int256_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Int256_Prim_13" to i8*) }
@"$TyDescr_Uint256_Prim_15" = global %"$TyDescrTy_PrimTyp_0" { i32 1, i32 3 }
@"$TyDescr_Uint256_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Uint256_Prim_15" to i8*) }
@"$TyDescr_String_Prim_17" = global %"$TyDescrTy_PrimTyp_0" { i32 2, i32 0 }
@"$TyDescr_String_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_String_Prim_17" to i8*) }
@"$TyDescr_Bnum_Prim_19" = global %"$TyDescrTy_PrimTyp_0" { i32 3, i32 0 }
@"$TyDescr_Bnum_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Bnum_Prim_19" to i8*) }
@"$TyDescr_Message_Prim_21" = global %"$TyDescrTy_PrimTyp_0" { i32 4, i32 0 }
@"$TyDescr_Message_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Message_Prim_21" to i8*) }
@"$TyDescr_Event_Prim_23" = global %"$TyDescrTy_PrimTyp_0" { i32 5, i32 0 }
@"$TyDescr_Event_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Event_Prim_23" to i8*) }
@"$TyDescr_Exception_Prim_25" = global %"$TyDescrTy_PrimTyp_0" { i32 6, i32 0 }
@"$TyDescr_Exception_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Exception_Prim_25" to i8*) }
@"$TyDescr_Bystr_Prim_27" = global %"$TyDescrTy_PrimTyp_0" { i32 7, i32 0 }
@"$TyDescr_Bystr_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Bystr_Prim_27" to i8*) }
@"$TyDescr_Bystr20_Prim_29" = global %"$TyDescrTy_PrimTyp_0" { i32 8, i32 20 }
@"$TyDescr_Bystr20_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_0"* @"$TyDescr_Bystr20_Prim_29" to i8*) }
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$stringlit_61" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_66" = unnamed_addr constant [3 x i8] c"Foo"
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_24", %_TyDescrTy_Typ* @"$TyDescr_Int64_6", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_30", %_TyDescrTy_Typ* @"$TyDescr_Uint256_16", %_TyDescrTy_Typ* @"$TyDescr_Uint32_4", %_TyDescrTy_Typ* @"$TyDescr_Uint64_8", %_TyDescrTy_Typ* @"$TyDescr_Bnum_20", %_TyDescrTy_Typ* @"$TyDescr_Uint128_12", %_TyDescrTy_Typ* @"$TyDescr_Exception_26", %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ* @"$TyDescr_Int256_14", %_TyDescrTy_Typ* @"$TyDescr_Int128_10", %_TyDescrTy_Typ* @"$TyDescr_Bystr_28", %_TyDescrTy_Typ* @"$TyDescr_Message_22", %_TyDescrTy_Typ* @"$TyDescr_Int32_2"]
@_tydescr_table_length = constant i32 15

define void @_init_libs() {
entry:
  ret void
}

define void @_init_state() {
entry:
  ret void
}

define internal void @"$ThrowEmpty_35"(%Uint128 %_amount, [20 x i8]* %"$_sender_36") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_36", align 1
  %"$gasrem_37" = load i64, i64* @_gasrem, align 8
  %"$gascmp_38" = icmp ugt i64 1, %"$gasrem_37"
  br i1 %"$gascmp_38", label %"$out_of_gas_39", label %"$have_gas_40"

"$out_of_gas_39":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_40"

"$have_gas_40":                                   ; preds = %"$out_of_gas_39", %entry
  %"$consume_41" = sub i64 %"$gasrem_37", 1
  store i64 %"$consume_41", i64* @_gasrem, align 8
  %"$execptr_load_42" = load i8*, i8** @_execptr, align 8
  call void @_throw(i8* %"$execptr_load_42", %_TyDescrTy_Typ* @"$TyDescr_Exception_26", i8* null)
  ret void
}

declare void @_out_of_gas()

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define void @ThrowEmpty(i8* %0) {
entry:
  %"$_amount_44" = getelementptr i8, i8* %0, i32 0
  %"$_amount_45" = bitcast i8* %"$_amount_44" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_45", align 8
  %"$_sender_46" = getelementptr i8, i8* %0, i32 16
  %"$_sender_47" = bitcast i8* %"$_sender_46" to [20 x i8]*
  call void @"$ThrowEmpty_35"(%Uint128 %_amount, [20 x i8]* %"$_sender_47")
  ret void
}

define internal void @"$ThrowObj_48"(%Uint128 %_amount, [20 x i8]* %"$_sender_49") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_49", align 1
  %"$gasrem_50" = load i64, i64* @_gasrem, align 8
  %"$gascmp_51" = icmp ugt i64 1, %"$gasrem_50"
  br i1 %"$gascmp_51", label %"$out_of_gas_52", label %"$have_gas_53"

"$out_of_gas_52":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_53"

"$have_gas_53":                                   ; preds = %"$out_of_gas_52", %entry
  %"$consume_54" = sub i64 %"$gasrem_50", 1
  store i64 %"$consume_54", i64* @_gasrem, align 8
  %t = alloca i8*, align 8
  %"$gasrem_55" = load i64, i64* @_gasrem, align 8
  %"$gascmp_56" = icmp ugt i64 1, %"$gasrem_55"
  br i1 %"$gascmp_56", label %"$out_of_gas_57", label %"$have_gas_58"

"$out_of_gas_57":                                 ; preds = %"$have_gas_53"
  call void @_out_of_gas()
  br label %"$have_gas_58"

"$have_gas_58":                                   ; preds = %"$out_of_gas_57", %"$have_gas_53"
  %"$consume_59" = sub i64 %"$gasrem_55", 1
  store i64 %"$consume_59", i64* @_gasrem, align 8
  %"$msgobj_60_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_60_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_60_salloc_load", i64 41)
  %"$msgobj_60_salloc" = bitcast i8* %"$msgobj_60_salloc_salloc" to [41 x i8]*
  %"$msgobj_60" = bitcast [41 x i8]* %"$msgobj_60_salloc" to i8*
  store i8 1, i8* %"$msgobj_60", align 1
  %"$msgobj_fname_62" = getelementptr i8, i8* %"$msgobj_60", i32 1
  %"$msgobj_fname_63" = bitcast i8* %"$msgobj_fname_62" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_61", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_63", align 8
  %"$msgobj_td_64" = getelementptr i8, i8* %"$msgobj_60", i32 17
  %"$msgobj_td_65" = bitcast i8* %"$msgobj_td_64" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ** %"$msgobj_td_65", align 8
  %"$msgobj_v_67" = getelementptr i8, i8* %"$msgobj_60", i32 25
  %"$msgobj_v_68" = bitcast i8* %"$msgobj_v_67" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_66", i32 0, i32 0), i32 3 }, %String* %"$msgobj_v_68", align 8
  store i8* %"$msgobj_60", i8** %t, align 8
  %"$t_70" = load i8*, i8** %t, align 8
  %"$_literal_cost_call_72" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_26", i8* %"$t_70")
  %"$gasrem_73" = load i64, i64* @_gasrem, align 8
  %"$gascmp_74" = icmp ugt i64 %"$_literal_cost_call_72", %"$gasrem_73"
  br i1 %"$gascmp_74", label %"$out_of_gas_75", label %"$have_gas_76"

"$out_of_gas_75":                                 ; preds = %"$have_gas_58"
  call void @_out_of_gas()
  br label %"$have_gas_76"

"$have_gas_76":                                   ; preds = %"$out_of_gas_75", %"$have_gas_58"
  %"$consume_77" = sub i64 %"$gasrem_73", %"$_literal_cost_call_72"
  store i64 %"$consume_77", i64* @_gasrem, align 8
  %"$execptr_load_78" = load i8*, i8** @_execptr, align 8
  %"$t_79" = load i8*, i8** %t, align 8
  call void @_throw(i8* %"$execptr_load_78", %_TyDescrTy_Typ* @"$TyDescr_Exception_26", i8* %"$t_79")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @ThrowObj(i8* %0) {
entry:
  %"$_amount_81" = getelementptr i8, i8* %0, i32 0
  %"$_amount_82" = bitcast i8* %"$_amount_81" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_82", align 8
  %"$_sender_83" = getelementptr i8, i8* %0, i32 16
  %"$_sender_84" = bitcast i8* %"$_sender_83" to [20 x i8]*
  call void @"$ThrowObj_48"(%Uint128 %_amount, [20 x i8]* %"$_sender_84")
  ret void
}
