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
%"$ParamDescr_136" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_137" = type { %ParamDescrString, i32, %"$ParamDescr_136"* }
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
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Bystr5_33", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr6_31", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_136"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_137"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  ret void
}

define internal %String @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_0" = alloca %String, align 8
  %"$gasrem_40" = load i64, i64* @_gasrem, align 8
  %"$gascmp_41" = icmp ugt i64 1, %"$gasrem_40"
  br i1 %"$gascmp_41", label %"$out_of_gas_42", label %"$have_gas_43"

"$out_of_gas_42":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_43"

"$have_gas_43":                                   ; preds = %"$out_of_gas_42", %entry
  %"$consume_44" = sub i64 %"$gasrem_40", 1
  store i64 %"$consume_44", i64* @_gasrem, align 8
  %hello = alloca [5 x i8], align 1
  %"$gasrem_45" = load i64, i64* @_gasrem, align 8
  %"$gascmp_46" = icmp ugt i64 1, %"$gasrem_45"
  br i1 %"$gascmp_46", label %"$out_of_gas_47", label %"$have_gas_48"

"$out_of_gas_47":                                 ; preds = %"$have_gas_43"
  call void @_out_of_gas()
  br label %"$have_gas_48"

"$have_gas_48":                                   ; preds = %"$out_of_gas_47", %"$have_gas_43"
  %"$consume_49" = sub i64 %"$gasrem_45", 1
  store i64 %"$consume_49", i64* @_gasrem, align 8
  store [5 x i8] c"hello", [5 x i8]* %hello, align 1
  %"$gasrem_50" = load i64, i64* @_gasrem, align 8
  %"$gascmp_51" = icmp ugt i64 1, %"$gasrem_50"
  br i1 %"$gascmp_51", label %"$out_of_gas_52", label %"$have_gas_53"

"$out_of_gas_52":                                 ; preds = %"$have_gas_48"
  call void @_out_of_gas()
  br label %"$have_gas_53"

"$have_gas_53":                                   ; preds = %"$out_of_gas_52", %"$have_gas_48"
  %"$consume_54" = sub i64 %"$gasrem_50", 1
  store i64 %"$consume_54", i64* @_gasrem, align 8
  %world = alloca [6 x i8], align 1
  %"$gasrem_55" = load i64, i64* @_gasrem, align 8
  %"$gascmp_56" = icmp ugt i64 1, %"$gasrem_55"
  br i1 %"$gascmp_56", label %"$out_of_gas_57", label %"$have_gas_58"

"$out_of_gas_57":                                 ; preds = %"$have_gas_53"
  call void @_out_of_gas()
  br label %"$have_gas_58"

"$have_gas_58":                                   ; preds = %"$out_of_gas_57", %"$have_gas_53"
  %"$consume_59" = sub i64 %"$gasrem_55", 1
  store i64 %"$consume_59", i64* @_gasrem, align 8
  store [6 x i8] c" world", [6 x i8]* %world, align 1
  %"$gasrem_60" = load i64, i64* @_gasrem, align 8
  %"$gascmp_61" = icmp ugt i64 1, %"$gasrem_60"
  br i1 %"$gascmp_61", label %"$out_of_gas_62", label %"$have_gas_63"

"$out_of_gas_62":                                 ; preds = %"$have_gas_58"
  call void @_out_of_gas()
  br label %"$have_gas_63"

"$have_gas_63":                                   ; preds = %"$out_of_gas_62", %"$have_gas_58"
  %"$consume_64" = sub i64 %"$gasrem_60", 1
  store i64 %"$consume_64", i64* @_gasrem, align 8
  %worldx = alloca %Bystr, align 8
  %"$gasrem_65" = load i64, i64* @_gasrem, align 8
  %"$gascmp_66" = icmp ugt i64 6, %"$gasrem_65"
  br i1 %"$gascmp_66", label %"$out_of_gas_67", label %"$have_gas_68"

"$out_of_gas_67":                                 ; preds = %"$have_gas_63"
  call void @_out_of_gas()
  br label %"$have_gas_68"

"$have_gas_68":                                   ; preds = %"$out_of_gas_67", %"$have_gas_63"
  %"$consume_69" = sub i64 %"$gasrem_65", 6
  store i64 %"$consume_69", i64* @_gasrem, align 8
  %"$execptr_load_70" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_world_71" = alloca [6 x i8], align 1
  %"$world_72" = load [6 x i8], [6 x i8]* %world, align 1
  store [6 x i8] %"$world_72", [6 x i8]* %"$to_bystr_world_71", align 1
  %"$$to_bystr_world_71_73" = bitcast [6 x i8]* %"$to_bystr_world_71" to i8*
  %"$to_bystr_call_74" = call %Bystr @_to_bystr(i8* %"$execptr_load_70", i32 6, i8* %"$$to_bystr_world_71_73")
  store %Bystr %"$to_bystr_call_74", %Bystr* %worldx, align 8
  %"$gasrem_75" = load i64, i64* @_gasrem, align 8
  %"$gascmp_76" = icmp ugt i64 1, %"$gasrem_75"
  br i1 %"$gascmp_76", label %"$out_of_gas_77", label %"$have_gas_78"

"$out_of_gas_77":                                 ; preds = %"$have_gas_68"
  call void @_out_of_gas()
  br label %"$have_gas_78"

"$have_gas_78":                                   ; preds = %"$out_of_gas_77", %"$have_gas_68"
  %"$consume_79" = sub i64 %"$gasrem_75", 1
  store i64 %"$consume_79", i64* @_gasrem, align 8
  %hello_s = alloca %String, align 8
  %"$_literal_cost_hello_80" = alloca [5 x i8], align 1
  %"$hello_81" = load [5 x i8], [5 x i8]* %hello, align 1
  store [5 x i8] %"$hello_81", [5 x i8]* %"$_literal_cost_hello_80", align 1
  %"$$_literal_cost_hello_80_82" = bitcast [5 x i8]* %"$_literal_cost_hello_80" to i8*
  %"$_literal_cost_call_83" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr5_33", i8* %"$$_literal_cost_hello_80_82")
  %"$gasrem_84" = load i64, i64* @_gasrem, align 8
  %"$gascmp_85" = icmp ugt i64 %"$_literal_cost_call_83", %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %"$have_gas_78"
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %"$have_gas_78"
  %"$consume_88" = sub i64 %"$gasrem_84", %"$_literal_cost_call_83"
  store i64 %"$consume_88", i64* @_gasrem, align 8
  %"$execptr_load_89" = load i8*, i8** @_execptr, align 8
  %"$to_ascii_hello_90" = alloca [5 x i8], align 1
  %"$hello_91" = load [5 x i8], [5 x i8]* %hello, align 1
  store [5 x i8] %"$hello_91", [5 x i8]* %"$to_ascii_hello_90", align 1
  %"$$to_ascii_hello_90_92" = bitcast [5 x i8]* %"$to_ascii_hello_90" to i8*
  %"$to_ascii_call_93" = call %String @_to_ascii(i8* %"$execptr_load_89", i8* %"$$to_ascii_hello_90_92", i32 5)
  store %String %"$to_ascii_call_93", %String* %hello_s, align 8
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 1, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %"$have_gas_87"
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %"$have_gas_87"
  %"$consume_98" = sub i64 %"$gasrem_94", 1
  store i64 %"$consume_98", i64* @_gasrem, align 8
  %world_s = alloca %String, align 8
  %"$_literal_cost_worldx_99" = alloca %Bystr, align 8
  %"$worldx_100" = load %Bystr, %Bystr* %worldx, align 8
  store %Bystr %"$worldx_100", %Bystr* %"$_literal_cost_worldx_99", align 8
  %"$$_literal_cost_worldx_99_101" = bitcast %Bystr* %"$_literal_cost_worldx_99" to i8*
  %"$_literal_cost_call_102" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", i8* %"$$_literal_cost_worldx_99_101")
  %"$gasrem_103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_104" = icmp ugt i64 %"$_literal_cost_call_102", %"$gasrem_103"
  br i1 %"$gascmp_104", label %"$out_of_gas_105", label %"$have_gas_106"

"$out_of_gas_105":                                ; preds = %"$have_gas_97"
  call void @_out_of_gas()
  br label %"$have_gas_106"

"$have_gas_106":                                  ; preds = %"$out_of_gas_105", %"$have_gas_97"
  %"$consume_107" = sub i64 %"$gasrem_103", %"$_literal_cost_call_102"
  store i64 %"$consume_107", i64* @_gasrem, align 8
  %"$worldx_108" = load %Bystr, %Bystr* %worldx, align 8
  %"$to_ascii_109" = extractvalue %Bystr %"$worldx_108", 0
  %"$to_ascii_110" = extractvalue %Bystr %"$worldx_108", 1
  %"$execptr_load_111" = load i8*, i8** @_execptr, align 8
  %"$to_ascii_call_112" = call %String @_to_ascii(i8* %"$execptr_load_111", i8* %"$to_ascii_109", i32 %"$to_ascii_110")
  store %String %"$to_ascii_call_112", %String* %world_s, align 8
  %"$_literal_cost_hello_s_113" = alloca %String, align 8
  %"$hello_s_114" = load %String, %String* %hello_s, align 8
  store %String %"$hello_s_114", %String* %"$_literal_cost_hello_s_113", align 8
  %"$$_literal_cost_hello_s_113_115" = bitcast %String* %"$_literal_cost_hello_s_113" to i8*
  %"$_literal_cost_call_116" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$$_literal_cost_hello_s_113_115")
  %"$_literal_cost_world_s_117" = alloca %String, align 8
  %"$world_s_118" = load %String, %String* %world_s, align 8
  store %String %"$world_s_118", %String* %"$_literal_cost_world_s_117", align 8
  %"$$_literal_cost_world_s_117_119" = bitcast %String* %"$_literal_cost_world_s_117" to i8*
  %"$_literal_cost_call_120" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$$_literal_cost_world_s_117_119")
  %"$gasadd_121" = add i64 %"$_literal_cost_call_116", %"$_literal_cost_call_120"
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 %"$gasadd_121", %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %"$have_gas_106"
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %"$have_gas_106"
  %"$consume_126" = sub i64 %"$gasrem_122", %"$gasadd_121"
  store i64 %"$consume_126", i64* @_gasrem, align 8
  %"$execptr_load_127" = load i8*, i8** @_execptr, align 8
  %"$hello_s_128" = load %String, %String* %hello_s, align 8
  %"$world_s_129" = load %String, %String* %world_s, align 8
  %"$concat_call_130" = call %String @_concat_String(i8* %"$execptr_load_127", %String %"$hello_s_128", %String %"$world_s_129")
  store %String %"$concat_call_130", %String* %"$expr_0", align 8
  %"$$expr_0_131" = load %String, %String* %"$expr_0", align 8
  ret %String %"$$expr_0_131"
}

declare void @_out_of_gas()

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare %String @_to_ascii(i8*, i8*, i32)

declare %String @_concat_String(i8*, %String, %String)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_132" = call %String @_scilla_expr_fun(i8* null)
  %"$pval_133" = alloca %String, align 8
  %"$memvoidcast_134" = bitcast %String* %"$pval_133" to i8*
  store %String %"$exprval_132", %String* %"$pval_133", align 8
  %"$execptr_load_135" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_135", %_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$memvoidcast_134")
  ret void
}
