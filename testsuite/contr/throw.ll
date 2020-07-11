

; gas_remaining: 10000
; ModuleID = 'Throw'
source_filename = "Throw"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_0" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Uint128 = type { i128 }
%String = type { i8*, i32 }

@_execptr = global i8* null
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
@"$stringlit_46" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_51" = unnamed_addr constant [3 x i8] c"Foo"
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_24", %_TyDescrTy_Typ* @"$TyDescr_Int64_6", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_30", %_TyDescrTy_Typ* @"$TyDescr_Uint256_16", %_TyDescrTy_Typ* @"$TyDescr_Uint32_4", %_TyDescrTy_Typ* @"$TyDescr_Uint64_8", %_TyDescrTy_Typ* @"$TyDescr_Bnum_20", %_TyDescrTy_Typ* @"$TyDescr_Uint128_12", %_TyDescrTy_Typ* @"$TyDescr_Exception_26", %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ* @"$TyDescr_Int256_14", %_TyDescrTy_Typ* @"$TyDescr_Int128_10", %_TyDescrTy_Typ* @"$TyDescr_Bystr_28", %_TyDescrTy_Typ* @"$TyDescr_Message_22", %_TyDescrTy_Typ* @"$TyDescr_Int32_2"]
@_tydescr_table_length = constant i32 15

define void @_init_libs() {
entry:
  ret void
}

define internal void @"$ThrowEmpty_35"(%Uint128 %_amount, [20 x i8]* %"$_sender_36") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_36"
  %"$to_nat_load_37" = load i8*, i8** @_execptr
  call void @_throw(i8* %"$to_nat_load_37", %_TyDescrTy_Typ* @"$TyDescr_Exception_26", i8* null)
  ret void
}

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define void @ThrowEmpty(i8* %0) {
entry:
  %"$_amount_39" = getelementptr i8, i8* %0, i32 0
  %"$_amount_40" = bitcast i8* %"$_amount_39" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_40"
  %"$_sender_41" = getelementptr i8, i8* %0, i32 16
  %"$_sender_42" = bitcast i8* %"$_sender_41" to [20 x i8]*
  call void @"$ThrowEmpty_35"(%Uint128 %_amount, [20 x i8]* %"$_sender_42")
  ret void
}

define internal void @"$ThrowObj_43"(%Uint128 %_amount, [20 x i8]* %"$_sender_44") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_44"
  %t = alloca i8*
  %"$msgobj_45_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_45_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_45_salloc_load", i64 41)
  %"$msgobj_45_salloc" = bitcast i8* %"$msgobj_45_salloc_salloc" to [41 x i8]*
  %"$msgobj_45" = bitcast [41 x i8]* %"$msgobj_45_salloc" to i8*
  store i8 1, i8* %"$msgobj_45"
  %"$msgobj_fname_47" = getelementptr i8, i8* %"$msgobj_45", i32 1
  %"$msgobj_fname_48" = bitcast i8* %"$msgobj_fname_47" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_46", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_48"
  %"$msgobj_td_49" = getelementptr i8, i8* %"$msgobj_45", i32 17
  %"$msgobj_td_50" = bitcast i8* %"$msgobj_td_49" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ** %"$msgobj_td_50"
  %"$msgobj_v_52" = getelementptr i8, i8* %"$msgobj_45", i32 25
  %"$msgobj_v_53" = bitcast i8* %"$msgobj_v_52" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_51", i32 0, i32 0), i32 3 }, %String* %"$msgobj_v_53"
  store i8* %"$msgobj_45", i8** %t
  %"$to_nat_load_55" = load i8*, i8** @_execptr
  %"$t_56" = load i8*, i8** %t
  call void @_throw(i8* %"$to_nat_load_55", %_TyDescrTy_Typ* @"$TyDescr_Exception_26", i8* %"$t_56")
  ret void
}

declare i8* @_salloc(i8*, i64)

define void @ThrowObj(i8* %0) {
entry:
  %"$_amount_58" = getelementptr i8, i8* %0, i32 0
  %"$_amount_59" = bitcast i8* %"$_amount_58" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_59"
  %"$_sender_60" = getelementptr i8, i8* %0, i32 16
  %"$_sender_61" = bitcast i8* %"$_sender_60" to [20 x i8]*
  call void @"$ThrowObj_43"(%Uint128 %_amount, [20 x i8]* %"$_sender_61")
  ret void
}
