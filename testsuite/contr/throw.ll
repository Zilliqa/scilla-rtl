

; gas_remaining: 4002000
; ModuleID = 'Throw'
source_filename = "Throw"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_0" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_AddrTyp_36" = type { i32, %"$TyDescr_AddrFieldTyp_35"* }
%"$TyDescr_AddrFieldTyp_35" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
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
@"$TyDescr_Addr_37" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_36"* @"$TyDescr_AddrFields_38" to i8*) }
@"$TyDescr_AddrFields_38" = unnamed_addr constant %"$TyDescr_AddrTyp_36" { i32 -1, %"$TyDescr_AddrFieldTyp_35"* null }
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$stringlit_65" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_70" = unnamed_addr constant [3 x i8] c"Foo"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_24", %_TyDescrTy_Typ* @"$TyDescr_Int64_6", %_TyDescrTy_Typ* @"$TyDescr_Addr_37", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_30", %_TyDescrTy_Typ* @"$TyDescr_Uint256_16", %_TyDescrTy_Typ* @"$TyDescr_Uint32_4", %_TyDescrTy_Typ* @"$TyDescr_Uint64_8", %_TyDescrTy_Typ* @"$TyDescr_Bnum_20", %_TyDescrTy_Typ* @"$TyDescr_Uint128_12", %_TyDescrTy_Typ* @"$TyDescr_Exception_26", %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ* @"$TyDescr_Int256_14", %_TyDescrTy_Typ* @"$TyDescr_Int128_10", %_TyDescrTy_Typ* @"$TyDescr_Bystr_28", %_TyDescrTy_Typ* @"$TyDescr_Message_22", %_TyDescrTy_Typ* @"$TyDescr_Int32_2"]
@_tydescr_table_length = constant i32 16

define void @_init_libs() {
entry:
  ret void
}

define void @_init_state() {
entry:
  ret void
}

define internal void @"$ThrowEmpty_39"(%Uint128 %_amount, [20 x i8]* %"$_sender_40") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_40", align 1
  %"$gasrem_41" = load i64, i64* @_gasrem, align 8
  %"$gascmp_42" = icmp ugt i64 1, %"$gasrem_41"
  br i1 %"$gascmp_42", label %"$out_of_gas_43", label %"$have_gas_44"

"$out_of_gas_43":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_44"

"$have_gas_44":                                   ; preds = %"$out_of_gas_43", %entry
  %"$consume_45" = sub i64 %"$gasrem_41", 1
  store i64 %"$consume_45", i64* @_gasrem, align 8
  %"$execptr_load_46" = load i8*, i8** @_execptr, align 8
  call void @_throw(i8* %"$execptr_load_46", %_TyDescrTy_Typ* @"$TyDescr_Exception_26", i8* null)
  ret void
}

declare void @_out_of_gas()

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define void @ThrowEmpty(i8* %0) {
entry:
  %"$_amount_48" = getelementptr i8, i8* %0, i32 0
  %"$_amount_49" = bitcast i8* %"$_amount_48" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_49", align 8
  %"$_sender_50" = getelementptr i8, i8* %0, i32 16
  %"$_sender_51" = bitcast i8* %"$_sender_50" to [20 x i8]*
  call void @"$ThrowEmpty_39"(%Uint128 %_amount, [20 x i8]* %"$_sender_51")
  ret void
}

define internal void @"$ThrowObj_52"(%Uint128 %_amount, [20 x i8]* %"$_sender_53") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_53", align 1
  %"$gasrem_54" = load i64, i64* @_gasrem, align 8
  %"$gascmp_55" = icmp ugt i64 1, %"$gasrem_54"
  br i1 %"$gascmp_55", label %"$out_of_gas_56", label %"$have_gas_57"

"$out_of_gas_56":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_57"

"$have_gas_57":                                   ; preds = %"$out_of_gas_56", %entry
  %"$consume_58" = sub i64 %"$gasrem_54", 1
  store i64 %"$consume_58", i64* @_gasrem, align 8
  %t = alloca i8*, align 8
  %"$gasrem_59" = load i64, i64* @_gasrem, align 8
  %"$gascmp_60" = icmp ugt i64 1, %"$gasrem_59"
  br i1 %"$gascmp_60", label %"$out_of_gas_61", label %"$have_gas_62"

"$out_of_gas_61":                                 ; preds = %"$have_gas_57"
  call void @_out_of_gas()
  br label %"$have_gas_62"

"$have_gas_62":                                   ; preds = %"$out_of_gas_61", %"$have_gas_57"
  %"$consume_63" = sub i64 %"$gasrem_59", 1
  store i64 %"$consume_63", i64* @_gasrem, align 8
  %"$msgobj_64_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_64_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_64_salloc_load", i64 41)
  %"$msgobj_64_salloc" = bitcast i8* %"$msgobj_64_salloc_salloc" to [41 x i8]*
  %"$msgobj_64" = bitcast [41 x i8]* %"$msgobj_64_salloc" to i8*
  store i8 1, i8* %"$msgobj_64", align 1
  %"$msgobj_fname_66" = getelementptr i8, i8* %"$msgobj_64", i32 1
  %"$msgobj_fname_67" = bitcast i8* %"$msgobj_fname_66" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_65", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_67", align 8
  %"$msgobj_td_68" = getelementptr i8, i8* %"$msgobj_64", i32 17
  %"$msgobj_td_69" = bitcast i8* %"$msgobj_td_68" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ** %"$msgobj_td_69", align 8
  %"$msgobj_v_71" = getelementptr i8, i8* %"$msgobj_64", i32 25
  %"$msgobj_v_72" = bitcast i8* %"$msgobj_v_71" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_70", i32 0, i32 0), i32 3 }, %String* %"$msgobj_v_72", align 8
  store i8* %"$msgobj_64", i8** %t, align 8
  %"$t_74" = load i8*, i8** %t, align 8
  %"$_literal_cost_call_76" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_26", i8* %"$t_74")
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 %"$_literal_cost_call_76", %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %"$have_gas_62"
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %"$have_gas_62"
  %"$consume_81" = sub i64 %"$gasrem_77", %"$_literal_cost_call_76"
  store i64 %"$consume_81", i64* @_gasrem, align 8
  %"$execptr_load_82" = load i8*, i8** @_execptr, align 8
  %"$t_83" = load i8*, i8** %t, align 8
  call void @_throw(i8* %"$execptr_load_82", %_TyDescrTy_Typ* @"$TyDescr_Exception_26", i8* %"$t_83")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @ThrowObj(i8* %0) {
entry:
  %"$_amount_85" = getelementptr i8, i8* %0, i32 0
  %"$_amount_86" = bitcast i8* %"$_amount_85" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_86", align 8
  %"$_sender_87" = getelementptr i8, i8* %0, i32 16
  %"$_sender_88" = bitcast i8* %"$_sender_87" to [20 x i8]*
  call void @"$ThrowObj_52"(%Uint128 %_amount, [20 x i8]* %"$_sender_88")
  ret void
}
