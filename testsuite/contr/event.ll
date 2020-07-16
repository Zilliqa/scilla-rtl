

; gas_remaining: 4002000
; ModuleID = 'Event'
source_filename = "Event"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_0" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Uint32 = type { i32 }
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
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$stringlit_38" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_43" = unnamed_addr constant [5 x i8] c"Hello"
@"$stringlit_46" = unnamed_addr constant [3 x i8] c"msg"
@"$stringlit_51" = unnamed_addr constant [5 x i8] c"World"
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_24", %_TyDescrTy_Typ* @"$TyDescr_Int64_6", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_30", %_TyDescrTy_Typ* @"$TyDescr_Uint256_16", %_TyDescrTy_Typ* @"$TyDescr_Uint32_4", %_TyDescrTy_Typ* @"$TyDescr_Uint64_8", %_TyDescrTy_Typ* @"$TyDescr_Bnum_20", %_TyDescrTy_Typ* @"$TyDescr_Uint128_12", %_TyDescrTy_Typ* @"$TyDescr_Exception_26", %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ* @"$TyDescr_Int256_14", %_TyDescrTy_Typ* @"$TyDescr_Int128_10", %_TyDescrTy_Typ* @"$TyDescr_Bystr_28", %_TyDescrTy_Typ* @"$TyDescr_Message_22", %_TyDescrTy_Typ* @"$TyDescr_Int32_2"]
@_tydescr_table_length = constant i32 15

define void @_init_libs() {
entry:
  ret void
}

define internal void @"$EventCreate_35"(%Uint128 %_amount, [20 x i8]* %"$_sender_36") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_36"
  %e = alloca i8*
  %"$msgobj_37_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_37_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_37_salloc_load", i64 81)
  %"$msgobj_37_salloc" = bitcast i8* %"$msgobj_37_salloc_salloc" to [81 x i8]*
  %"$msgobj_37" = bitcast [81 x i8]* %"$msgobj_37_salloc" to i8*
  store i8 2, i8* %"$msgobj_37"
  %"$msgobj_fname_39" = getelementptr i8, i8* %"$msgobj_37", i32 1
  %"$msgobj_fname_40" = bitcast i8* %"$msgobj_fname_39" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_38", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_40"
  %"$msgobj_td_41" = getelementptr i8, i8* %"$msgobj_37", i32 17
  %"$msgobj_td_42" = bitcast i8* %"$msgobj_td_41" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ** %"$msgobj_td_42"
  %"$msgobj_v_44" = getelementptr i8, i8* %"$msgobj_37", i32 25
  %"$msgobj_v_45" = bitcast i8* %"$msgobj_v_44" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_43", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_45"
  %"$msgobj_fname_47" = getelementptr i8, i8* %"$msgobj_37", i32 41
  %"$msgobj_fname_48" = bitcast i8* %"$msgobj_fname_47" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_46", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_48"
  %"$msgobj_td_49" = getelementptr i8, i8* %"$msgobj_37", i32 57
  %"$msgobj_td_50" = bitcast i8* %"$msgobj_td_49" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_18", %_TyDescrTy_Typ** %"$msgobj_td_50"
  %"$msgobj_v_52" = getelementptr i8, i8* %"$msgobj_37", i32 65
  %"$msgobj_v_53" = bitcast i8* %"$msgobj_v_52" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_51", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_53"
  store i8* %"$msgobj_37", i8** %e
  %"$to_nat_load_55" = load i8*, i8** @_execptr
  %"$e_56" = load i8*, i8** %e
  call void @_event(i8* %"$to_nat_load_55", %_TyDescrTy_Typ* @"$TyDescr_Event_24", i8* %"$e_56")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @EventCreate(i8* %0) {
entry:
  %"$_amount_58" = getelementptr i8, i8* %0, i32 0
  %"$_amount_59" = bitcast i8* %"$_amount_58" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_59"
  %"$_sender_60" = getelementptr i8, i8* %0, i32 16
  %"$_sender_61" = bitcast i8* %"$_sender_60" to [20 x i8]*
  call void @"$EventCreate_35"(%Uint128 %_amount, [20 x i8]* %"$_sender_61")
  ret void
}
