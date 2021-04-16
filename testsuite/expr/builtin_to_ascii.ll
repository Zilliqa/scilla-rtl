; let hello = 0x68656c6c6f in
; let world = 0x20776f726c64 in
; let worldx = builtin to_bystr world in
; 
; let hello_s = builtin to_ascii hello in
; let world_s = builtin to_ascii worldx in
; builtin concat hello_s world_s
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%String = type { i8*, i32 }
%Bystr = type { i8*, i32 }

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
@"$TyDescr_Bystr5_Prim_32" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 5 }
@"$TyDescr_Bystr5_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr5_Prim_32" to i8*) }

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
  %hello = alloca [5 x i8], align 1
  %"$gasrem_43" = load i64, i64* @_gasrem, align 8
  %"$gascmp_44" = icmp ugt i64 1, %"$gasrem_43"
  br i1 %"$gascmp_44", label %"$out_of_gas_45", label %"$have_gas_46"

"$out_of_gas_45":                                 ; preds = %"$have_gas_41"
  call void @_out_of_gas()
  br label %"$have_gas_46"

"$have_gas_46":                                   ; preds = %"$out_of_gas_45", %"$have_gas_41"
  %"$consume_47" = sub i64 %"$gasrem_43", 1
  store i64 %"$consume_47", i64* @_gasrem, align 8
  store [5 x i8] c"hello", [5 x i8]* %hello, align 1
  %"$gasrem_48" = load i64, i64* @_gasrem, align 8
  %"$gascmp_49" = icmp ugt i64 1, %"$gasrem_48"
  br i1 %"$gascmp_49", label %"$out_of_gas_50", label %"$have_gas_51"

"$out_of_gas_50":                                 ; preds = %"$have_gas_46"
  call void @_out_of_gas()
  br label %"$have_gas_51"

"$have_gas_51":                                   ; preds = %"$out_of_gas_50", %"$have_gas_46"
  %"$consume_52" = sub i64 %"$gasrem_48", 1
  store i64 %"$consume_52", i64* @_gasrem, align 8
  %world = alloca [6 x i8], align 1
  %"$gasrem_53" = load i64, i64* @_gasrem, align 8
  %"$gascmp_54" = icmp ugt i64 1, %"$gasrem_53"
  br i1 %"$gascmp_54", label %"$out_of_gas_55", label %"$have_gas_56"

"$out_of_gas_55":                                 ; preds = %"$have_gas_51"
  call void @_out_of_gas()
  br label %"$have_gas_56"

"$have_gas_56":                                   ; preds = %"$out_of_gas_55", %"$have_gas_51"
  %"$consume_57" = sub i64 %"$gasrem_53", 1
  store i64 %"$consume_57", i64* @_gasrem, align 8
  store [6 x i8] c" world", [6 x i8]* %world, align 1
  %"$gasrem_58" = load i64, i64* @_gasrem, align 8
  %"$gascmp_59" = icmp ugt i64 1, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %"$have_gas_56"
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %"$have_gas_56"
  %"$consume_62" = sub i64 %"$gasrem_58", 1
  store i64 %"$consume_62", i64* @_gasrem, align 8
  %worldx = alloca %Bystr, align 8
  %"$execptr_load_63" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_world_64" = alloca [6 x i8], align 1
  %"$world_65" = load [6 x i8], [6 x i8]* %world, align 1
  store [6 x i8] %"$world_65", [6 x i8]* %"$to_bystr_world_64", align 1
  %"$$to_bystr_world_64_66" = bitcast [6 x i8]* %"$to_bystr_world_64" to i8*
  %"$to_bystr_call_67" = call %Bystr @_to_bystr(i8* %"$execptr_load_63", i32 6, i8* %"$$to_bystr_world_64_66")
  store %Bystr %"$to_bystr_call_67", %Bystr* %worldx, align 8
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 1, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %"$have_gas_61"
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %"$have_gas_61"
  %"$consume_72" = sub i64 %"$gasrem_68", 1
  store i64 %"$consume_72", i64* @_gasrem, align 8
  %hello_s = alloca %String, align 8
  %"$execptr_load_73" = load i8*, i8** @_execptr, align 8
  %"$to_ascii_hello_74" = alloca [5 x i8], align 1
  %"$hello_75" = load [5 x i8], [5 x i8]* %hello, align 1
  store [5 x i8] %"$hello_75", [5 x i8]* %"$to_ascii_hello_74", align 1
  %"$$to_ascii_hello_74_76" = bitcast [5 x i8]* %"$to_ascii_hello_74" to i8*
  %"$to_ascii_call_77" = call %String @_to_ascii(i8* %"$execptr_load_73", i8* %"$$to_ascii_hello_74_76", i32 5)
  store %String %"$to_ascii_call_77", %String* %hello_s, align 8
  %"$gasrem_78" = load i64, i64* @_gasrem, align 8
  %"$gascmp_79" = icmp ugt i64 1, %"$gasrem_78"
  br i1 %"$gascmp_79", label %"$out_of_gas_80", label %"$have_gas_81"

"$out_of_gas_80":                                 ; preds = %"$have_gas_71"
  call void @_out_of_gas()
  br label %"$have_gas_81"

"$have_gas_81":                                   ; preds = %"$out_of_gas_80", %"$have_gas_71"
  %"$consume_82" = sub i64 %"$gasrem_78", 1
  store i64 %"$consume_82", i64* @_gasrem, align 8
  %world_s = alloca %String, align 8
  %"$worldx_83" = load %Bystr, %Bystr* %worldx, align 8
  %"$to_ascii_84" = extractvalue %Bystr %"$worldx_83", 0
  %"$to_ascii_85" = extractvalue %Bystr %"$worldx_83", 1
  %"$execptr_load_86" = load i8*, i8** @_execptr, align 8
  %"$to_ascii_call_87" = call %String @_to_ascii(i8* %"$execptr_load_86", i8* %"$to_ascii_84", i32 %"$to_ascii_85")
  store %String %"$to_ascii_call_87", %String* %world_s, align 8
  %"$execptr_load_88" = load i8*, i8** @_execptr, align 8
  %"$hello_s_89" = load %String, %String* %hello_s, align 8
  %"$world_s_90" = load %String, %String* %world_s, align 8
  %"$concat_call_91" = call %String @_concat_String(i8* %"$execptr_load_88", %String %"$hello_s_89", %String %"$world_s_90")
  store %String %"$concat_call_91", %String* %"$expr_0", align 8
  %"$$expr_0_92" = load %String, %String* %"$expr_0", align 8
  ret %String %"$$expr_0_92"
}

declare void @_out_of_gas()

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %String @_to_ascii(i8*, i8*, i32)

declare %String @_concat_String(i8*, %String, %String)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_93" = call %String @_scilla_expr_fun(i8* null)
  %"$pval_94" = alloca %String, align 8
  %"$memvoidcast_95" = bitcast %String* %"$pval_94" to i8*
  store %String %"$exprval_93", %String* %"$pval_94", align 8
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$memvoidcast_95")
  ret void
}
