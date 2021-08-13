; 
; let b = Int256 -1001 in
; let a = Int256 31 in
; 
; let res_div = builtin div a b in
; let res_rem = builtin rem a b in
; let res1 = builtin add res_div res_rem in
; 
; let b = Int256 101111111111111 in
; let a = Int256 -311111111111 in
; 
; let res_div = builtin div a b in
; let res_rem = builtin rem a b in
; let res2 = builtin add res_div res_rem in
; 
; let b = Int256 -10 in
; let a = Int256 -3 in
; 
; let res_div = builtin div a b in
; let res_rem = builtin rem a b in
; let res3 = builtin add res_div res_rem in
; 
; let b = Int256 10 in
; let a = Int256 3 in
; 
; let res_div = builtin div a b in
; let res_rem = builtin rem a b in
; let res4 = builtin add res_div res_rem in
; 
; let res5 = builtin add res1 res2 in
; let res6 = builtin add res5 res3 in
; let res7 = builtin add res4 res6 in
; 
; res7
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_13" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$ParamDescr_423" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_424" = type { %ParamDescrString, i32, %"$ParamDescr_423"* }
%Int256 = type { i256 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_14" = global %"$TyDescrTy_PrimTyp_13" zeroinitializer
@"$TyDescr_Int32_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int32_Prim_14" to i8*) }
@"$TyDescr_Uint32_Prim_16" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 0 }
@"$TyDescr_Uint32_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint32_Prim_16" to i8*) }
@"$TyDescr_Int64_Prim_18" = global %"$TyDescrTy_PrimTyp_13" { i32 0, i32 1 }
@"$TyDescr_Int64_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int64_Prim_18" to i8*) }
@"$TyDescr_Uint64_Prim_20" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 1 }
@"$TyDescr_Uint64_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint64_Prim_20" to i8*) }
@"$TyDescr_Int128_Prim_22" = global %"$TyDescrTy_PrimTyp_13" { i32 0, i32 2 }
@"$TyDescr_Int128_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int128_Prim_22" to i8*) }
@"$TyDescr_Uint128_Prim_24" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 2 }
@"$TyDescr_Uint128_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint128_Prim_24" to i8*) }
@"$TyDescr_Int256_Prim_26" = global %"$TyDescrTy_PrimTyp_13" { i32 0, i32 3 }
@"$TyDescr_Int256_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int256_Prim_26" to i8*) }
@"$TyDescr_Uint256_Prim_28" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 3 }
@"$TyDescr_Uint256_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint256_Prim_28" to i8*) }
@"$TyDescr_String_Prim_30" = global %"$TyDescrTy_PrimTyp_13" { i32 2, i32 0 }
@"$TyDescr_String_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_String_Prim_30" to i8*) }
@"$TyDescr_Bnum_Prim_32" = global %"$TyDescrTy_PrimTyp_13" { i32 3, i32 0 }
@"$TyDescr_Bnum_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Bnum_Prim_32" to i8*) }
@"$TyDescr_Message_Prim_34" = global %"$TyDescrTy_PrimTyp_13" { i32 4, i32 0 }
@"$TyDescr_Message_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Message_Prim_34" to i8*) }
@"$TyDescr_Event_Prim_36" = global %"$TyDescrTy_PrimTyp_13" { i32 5, i32 0 }
@"$TyDescr_Event_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Event_Prim_36" to i8*) }
@"$TyDescr_Exception_Prim_38" = global %"$TyDescrTy_PrimTyp_13" { i32 6, i32 0 }
@"$TyDescr_Exception_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Exception_Prim_38" to i8*) }
@"$TyDescr_Bystr_Prim_40" = global %"$TyDescrTy_PrimTyp_13" { i32 7, i32 0 }
@"$TyDescr_Bystr_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Bystr_Prim_40" to i8*) }
@_tydescr_table = constant [14 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_37", %_TyDescrTy_Typ* @"$TyDescr_Int64_19", %_TyDescrTy_Typ* @"$TyDescr_Uint256_29", %_TyDescrTy_Typ* @"$TyDescr_Uint32_17", %_TyDescrTy_Typ* @"$TyDescr_Uint64_21", %_TyDescrTy_Typ* @"$TyDescr_Bnum_33", %_TyDescrTy_Typ* @"$TyDescr_Uint128_25", %_TyDescrTy_Typ* @"$TyDescr_Exception_39", %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ* @"$TyDescr_Int256_27", %_TyDescrTy_Typ* @"$TyDescr_Int128_23", %_TyDescrTy_Typ* @"$TyDescr_Bystr_41", %_TyDescrTy_Typ* @"$TyDescr_Message_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_15"]
@_tydescr_table_length = constant i32 14
@_contract_parameters = constant [0 x %"$ParamDescr_423"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_424"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  ret void
}

define internal void @_scilla_expr_fun(i8* %0, %Int256* %1) {
entry:
  %"$expr_12" = alloca %Int256, align 8
  %"$gasrem_48" = load i64, i64* @_gasrem, align 8
  %"$gascmp_49" = icmp ugt i64 1, %"$gasrem_48"
  br i1 %"$gascmp_49", label %"$out_of_gas_50", label %"$have_gas_51"

"$out_of_gas_50":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_51"

"$have_gas_51":                                   ; preds = %"$out_of_gas_50", %entry
  %"$consume_52" = sub i64 %"$gasrem_48", 1
  store i64 %"$consume_52", i64* @_gasrem, align 8
  %b = alloca %Int256, align 8
  %"$gasrem_53" = load i64, i64* @_gasrem, align 8
  %"$gascmp_54" = icmp ugt i64 1, %"$gasrem_53"
  br i1 %"$gascmp_54", label %"$out_of_gas_55", label %"$have_gas_56"

"$out_of_gas_55":                                 ; preds = %"$have_gas_51"
  call void @_out_of_gas()
  br label %"$have_gas_56"

"$have_gas_56":                                   ; preds = %"$out_of_gas_55", %"$have_gas_51"
  %"$consume_57" = sub i64 %"$gasrem_53", 1
  store i64 %"$consume_57", i64* @_gasrem, align 8
  store %Int256 { i256 -1001 }, %Int256* %b, align 8
  %"$gasrem_58" = load i64, i64* @_gasrem, align 8
  %"$gascmp_59" = icmp ugt i64 1, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %"$have_gas_56"
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %"$have_gas_56"
  %"$consume_62" = sub i64 %"$gasrem_58", 1
  store i64 %"$consume_62", i64* @_gasrem, align 8
  %a = alloca %Int256, align 8
  %"$gasrem_63" = load i64, i64* @_gasrem, align 8
  %"$gascmp_64" = icmp ugt i64 1, %"$gasrem_63"
  br i1 %"$gascmp_64", label %"$out_of_gas_65", label %"$have_gas_66"

"$out_of_gas_65":                                 ; preds = %"$have_gas_61"
  call void @_out_of_gas()
  br label %"$have_gas_66"

"$have_gas_66":                                   ; preds = %"$out_of_gas_65", %"$have_gas_61"
  %"$consume_67" = sub i64 %"$gasrem_63", 1
  store i64 %"$consume_67", i64* @_gasrem, align 8
  store %Int256 { i256 31 }, %Int256* %a, align 8
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 1, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %"$have_gas_66"
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %"$have_gas_66"
  %"$consume_72" = sub i64 %"$gasrem_68", 1
  store i64 %"$consume_72", i64* @_gasrem, align 8
  %res_div = alloca %Int256, align 8
  %"$gasrem_74" = load i64, i64* @_gasrem, align 8
  %"$gascmp_75" = icmp ugt i64 80, %"$gasrem_74"
  br i1 %"$gascmp_75", label %"$out_of_gas_76", label %"$have_gas_77"

"$out_of_gas_76":                                 ; preds = %"$have_gas_71"
  call void @_out_of_gas()
  br label %"$have_gas_77"

"$have_gas_77":                                   ; preds = %"$out_of_gas_76", %"$have_gas_71"
  %"$consume_78" = sub i64 %"$gasrem_74", 80
  store i64 %"$consume_78", i64* @_gasrem, align 8
  %"$execptr_load_79" = load i8*, i8** @_execptr, align 8
  %"$div_a_80" = alloca %Int256, align 8
  %"$a_81" = load %Int256, %Int256* %a, align 8
  store %Int256 %"$a_81", %Int256* %"$div_a_80", align 8
  %"$div_b_82" = alloca %Int256, align 8
  %"$b_83" = load %Int256, %Int256* %b, align 8
  store %Int256 %"$b_83", %Int256* %"$div_b_82", align 8
  %"$div_call_84" = call %Int256* @_div_Int256(i8* %"$execptr_load_79", %Int256* %"$div_a_80", %Int256* %"$div_b_82")
  %"$div_86" = load %Int256, %Int256* %"$div_call_84", align 8
  store %Int256 %"$div_86", %Int256* %res_div, align 8
  %"$gasrem_87" = load i64, i64* @_gasrem, align 8
  %"$gascmp_88" = icmp ugt i64 1, %"$gasrem_87"
  br i1 %"$gascmp_88", label %"$out_of_gas_89", label %"$have_gas_90"

"$out_of_gas_89":                                 ; preds = %"$have_gas_77"
  call void @_out_of_gas()
  br label %"$have_gas_90"

"$have_gas_90":                                   ; preds = %"$out_of_gas_89", %"$have_gas_77"
  %"$consume_91" = sub i64 %"$gasrem_87", 1
  store i64 %"$consume_91", i64* @_gasrem, align 8
  %res_rem = alloca %Int256, align 8
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 80, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %"$have_gas_90"
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %"$have_gas_90"
  %"$consume_97" = sub i64 %"$gasrem_93", 80
  store i64 %"$consume_97", i64* @_gasrem, align 8
  %"$execptr_load_98" = load i8*, i8** @_execptr, align 8
  %"$rem_a_99" = alloca %Int256, align 8
  %"$a_100" = load %Int256, %Int256* %a, align 8
  store %Int256 %"$a_100", %Int256* %"$rem_a_99", align 8
  %"$rem_b_101" = alloca %Int256, align 8
  %"$b_102" = load %Int256, %Int256* %b, align 8
  store %Int256 %"$b_102", %Int256* %"$rem_b_101", align 8
  %"$rem_call_103" = call %Int256* @_rem_Int256(i8* %"$execptr_load_98", %Int256* %"$rem_a_99", %Int256* %"$rem_b_101")
  %"$rem_105" = load %Int256, %Int256* %"$rem_call_103", align 8
  store %Int256 %"$rem_105", %Int256* %res_rem, align 8
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_96"
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %res1 = alloca %Int256, align 8
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 16, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %"$have_gas_109"
  %"$consume_116" = sub i64 %"$gasrem_112", 16
  store i64 %"$consume_116", i64* @_gasrem, align 8
  %"$execptr_load_117" = load i8*, i8** @_execptr, align 8
  %"$add_res_div_118" = alloca %Int256, align 8
  %"$res_div_119" = load %Int256, %Int256* %res_div, align 8
  store %Int256 %"$res_div_119", %Int256* %"$add_res_div_118", align 8
  %"$add_res_rem_120" = alloca %Int256, align 8
  %"$res_rem_121" = load %Int256, %Int256* %res_rem, align 8
  store %Int256 %"$res_rem_121", %Int256* %"$add_res_rem_120", align 8
  %"$add_call_122" = call %Int256* @_add_Int256(i8* %"$execptr_load_117", %Int256* %"$add_res_div_118", %Int256* %"$add_res_rem_120")
  %"$add_124" = load %Int256, %Int256* %"$add_call_122", align 8
  store %Int256 %"$add_124", %Int256* %res1, align 8
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_115"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_115"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %"$b_0" = alloca %Int256, align 8
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  store %Int256 { i256 101111111111111 }, %Int256* %"$b_0", align 8
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %"$a_1" = alloca %Int256, align 8
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_138"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  store %Int256 { i256 -311111111111 }, %Int256* %"$a_1", align 8
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$res_div_2" = alloca %Int256, align 8
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 80, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_148"
  %"$consume_155" = sub i64 %"$gasrem_151", 80
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %"$execptr_load_156" = load i8*, i8** @_execptr, align 8
  %"$div_$a_1_157" = alloca %Int256, align 8
  %"$$a_1_158" = load %Int256, %Int256* %"$a_1", align 8
  store %Int256 %"$$a_1_158", %Int256* %"$div_$a_1_157", align 8
  %"$div_$b_0_159" = alloca %Int256, align 8
  %"$$b_0_160" = load %Int256, %Int256* %"$b_0", align 8
  store %Int256 %"$$b_0_160", %Int256* %"$div_$b_0_159", align 8
  %"$div_call_161" = call %Int256* @_div_Int256(i8* %"$execptr_load_156", %Int256* %"$div_$a_1_157", %Int256* %"$div_$b_0_159")
  %"$div_163" = load %Int256, %Int256* %"$div_call_161", align 8
  store %Int256 %"$div_163", %Int256* %"$res_div_2", align 8
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_154"
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  %"$res_rem_3" = alloca %Int256, align 8
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 80, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_167"
  %"$consume_174" = sub i64 %"$gasrem_170", 80
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %"$execptr_load_175" = load i8*, i8** @_execptr, align 8
  %"$rem_$a_1_176" = alloca %Int256, align 8
  %"$$a_1_177" = load %Int256, %Int256* %"$a_1", align 8
  store %Int256 %"$$a_1_177", %Int256* %"$rem_$a_1_176", align 8
  %"$rem_$b_0_178" = alloca %Int256, align 8
  %"$$b_0_179" = load %Int256, %Int256* %"$b_0", align 8
  store %Int256 %"$$b_0_179", %Int256* %"$rem_$b_0_178", align 8
  %"$rem_call_180" = call %Int256* @_rem_Int256(i8* %"$execptr_load_175", %Int256* %"$rem_$a_1_176", %Int256* %"$rem_$b_0_178")
  %"$rem_182" = load %Int256, %Int256* %"$rem_call_180", align 8
  store %Int256 %"$rem_182", %Int256* %"$res_rem_3", align 8
  %"$gasrem_183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_184" = icmp ugt i64 1, %"$gasrem_183"
  br i1 %"$gascmp_184", label %"$out_of_gas_185", label %"$have_gas_186"

"$out_of_gas_185":                                ; preds = %"$have_gas_173"
  call void @_out_of_gas()
  br label %"$have_gas_186"

"$have_gas_186":                                  ; preds = %"$out_of_gas_185", %"$have_gas_173"
  %"$consume_187" = sub i64 %"$gasrem_183", 1
  store i64 %"$consume_187", i64* @_gasrem, align 8
  %res2 = alloca %Int256, align 8
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 16, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_186"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_186"
  %"$consume_193" = sub i64 %"$gasrem_189", 16
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %"$execptr_load_194" = load i8*, i8** @_execptr, align 8
  %"$add_$res_div_2_195" = alloca %Int256, align 8
  %"$$res_div_2_196" = load %Int256, %Int256* %"$res_div_2", align 8
  store %Int256 %"$$res_div_2_196", %Int256* %"$add_$res_div_2_195", align 8
  %"$add_$res_rem_3_197" = alloca %Int256, align 8
  %"$$res_rem_3_198" = load %Int256, %Int256* %"$res_rem_3", align 8
  store %Int256 %"$$res_rem_3_198", %Int256* %"$add_$res_rem_3_197", align 8
  %"$add_call_199" = call %Int256* @_add_Int256(i8* %"$execptr_load_194", %Int256* %"$add_$res_div_2_195", %Int256* %"$add_$res_rem_3_197")
  %"$add_201" = load %Int256, %Int256* %"$add_call_199", align 8
  store %Int256 %"$add_201", %Int256* %res2, align 8
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_192"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %"$b_4" = alloca %Int256, align 8
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 1, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$have_gas_205"
  %"$consume_211" = sub i64 %"$gasrem_207", 1
  store i64 %"$consume_211", i64* @_gasrem, align 8
  store %Int256 { i256 -10 }, %Int256* %"$b_4", align 8
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 1, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %"$have_gas_210"
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %"$have_gas_210"
  %"$consume_216" = sub i64 %"$gasrem_212", 1
  store i64 %"$consume_216", i64* @_gasrem, align 8
  %"$a_5" = alloca %Int256, align 8
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_215"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_215"
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  store %Int256 { i256 -3 }, %Int256* %"$a_5", align 8
  %"$gasrem_222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_223" = icmp ugt i64 1, %"$gasrem_222"
  br i1 %"$gascmp_223", label %"$out_of_gas_224", label %"$have_gas_225"

"$out_of_gas_224":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_225"

"$have_gas_225":                                  ; preds = %"$out_of_gas_224", %"$have_gas_220"
  %"$consume_226" = sub i64 %"$gasrem_222", 1
  store i64 %"$consume_226", i64* @_gasrem, align 8
  %"$res_div_6" = alloca %Int256, align 8
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 80, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_225"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_225"
  %"$consume_232" = sub i64 %"$gasrem_228", 80
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %"$execptr_load_233" = load i8*, i8** @_execptr, align 8
  %"$div_$a_5_234" = alloca %Int256, align 8
  %"$$a_5_235" = load %Int256, %Int256* %"$a_5", align 8
  store %Int256 %"$$a_5_235", %Int256* %"$div_$a_5_234", align 8
  %"$div_$b_4_236" = alloca %Int256, align 8
  %"$$b_4_237" = load %Int256, %Int256* %"$b_4", align 8
  store %Int256 %"$$b_4_237", %Int256* %"$div_$b_4_236", align 8
  %"$div_call_238" = call %Int256* @_div_Int256(i8* %"$execptr_load_233", %Int256* %"$div_$a_5_234", %Int256* %"$div_$b_4_236")
  %"$div_240" = load %Int256, %Int256* %"$div_call_238", align 8
  store %Int256 %"$div_240", %Int256* %"$res_div_6", align 8
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 1, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %"$have_gas_231"
  %"$consume_245" = sub i64 %"$gasrem_241", 1
  store i64 %"$consume_245", i64* @_gasrem, align 8
  %"$res_rem_7" = alloca %Int256, align 8
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 80, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_244"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_244"
  %"$consume_251" = sub i64 %"$gasrem_247", 80
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %"$execptr_load_252" = load i8*, i8** @_execptr, align 8
  %"$rem_$a_5_253" = alloca %Int256, align 8
  %"$$a_5_254" = load %Int256, %Int256* %"$a_5", align 8
  store %Int256 %"$$a_5_254", %Int256* %"$rem_$a_5_253", align 8
  %"$rem_$b_4_255" = alloca %Int256, align 8
  %"$$b_4_256" = load %Int256, %Int256* %"$b_4", align 8
  store %Int256 %"$$b_4_256", %Int256* %"$rem_$b_4_255", align 8
  %"$rem_call_257" = call %Int256* @_rem_Int256(i8* %"$execptr_load_252", %Int256* %"$rem_$a_5_253", %Int256* %"$rem_$b_4_255")
  %"$rem_259" = load %Int256, %Int256* %"$rem_call_257", align 8
  store %Int256 %"$rem_259", %Int256* %"$res_rem_7", align 8
  %"$gasrem_260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_261" = icmp ugt i64 1, %"$gasrem_260"
  br i1 %"$gascmp_261", label %"$out_of_gas_262", label %"$have_gas_263"

"$out_of_gas_262":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_263"

"$have_gas_263":                                  ; preds = %"$out_of_gas_262", %"$have_gas_250"
  %"$consume_264" = sub i64 %"$gasrem_260", 1
  store i64 %"$consume_264", i64* @_gasrem, align 8
  %res3 = alloca %Int256, align 8
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 16, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_263"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_263"
  %"$consume_270" = sub i64 %"$gasrem_266", 16
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %"$execptr_load_271" = load i8*, i8** @_execptr, align 8
  %"$add_$res_div_6_272" = alloca %Int256, align 8
  %"$$res_div_6_273" = load %Int256, %Int256* %"$res_div_6", align 8
  store %Int256 %"$$res_div_6_273", %Int256* %"$add_$res_div_6_272", align 8
  %"$add_$res_rem_7_274" = alloca %Int256, align 8
  %"$$res_rem_7_275" = load %Int256, %Int256* %"$res_rem_7", align 8
  store %Int256 %"$$res_rem_7_275", %Int256* %"$add_$res_rem_7_274", align 8
  %"$add_call_276" = call %Int256* @_add_Int256(i8* %"$execptr_load_271", %Int256* %"$add_$res_div_6_272", %Int256* %"$add_$res_rem_7_274")
  %"$add_278" = load %Int256, %Int256* %"$add_call_276", align 8
  store %Int256 %"$add_278", %Int256* %res3, align 8
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_269"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_269"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem, align 8
  %"$b_8" = alloca %Int256, align 8
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_282"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_282"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  store %Int256 { i256 10 }, %Int256* %"$b_8", align 8
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 1, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %"$have_gas_287"
  %"$consume_293" = sub i64 %"$gasrem_289", 1
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %"$a_9" = alloca %Int256, align 8
  %"$gasrem_294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_295" = icmp ugt i64 1, %"$gasrem_294"
  br i1 %"$gascmp_295", label %"$out_of_gas_296", label %"$have_gas_297"

"$out_of_gas_296":                                ; preds = %"$have_gas_292"
  call void @_out_of_gas()
  br label %"$have_gas_297"

"$have_gas_297":                                  ; preds = %"$out_of_gas_296", %"$have_gas_292"
  %"$consume_298" = sub i64 %"$gasrem_294", 1
  store i64 %"$consume_298", i64* @_gasrem, align 8
  store %Int256 { i256 3 }, %Int256* %"$a_9", align 8
  %"$gasrem_299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_300" = icmp ugt i64 1, %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %"$have_gas_297"
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %"$have_gas_297"
  %"$consume_303" = sub i64 %"$gasrem_299", 1
  store i64 %"$consume_303", i64* @_gasrem, align 8
  %"$res_div_10" = alloca %Int256, align 8
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 80, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_302"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_302"
  %"$consume_309" = sub i64 %"$gasrem_305", 80
  store i64 %"$consume_309", i64* @_gasrem, align 8
  %"$execptr_load_310" = load i8*, i8** @_execptr, align 8
  %"$div_$a_9_311" = alloca %Int256, align 8
  %"$$a_9_312" = load %Int256, %Int256* %"$a_9", align 8
  store %Int256 %"$$a_9_312", %Int256* %"$div_$a_9_311", align 8
  %"$div_$b_8_313" = alloca %Int256, align 8
  %"$$b_8_314" = load %Int256, %Int256* %"$b_8", align 8
  store %Int256 %"$$b_8_314", %Int256* %"$div_$b_8_313", align 8
  %"$div_call_315" = call %Int256* @_div_Int256(i8* %"$execptr_load_310", %Int256* %"$div_$a_9_311", %Int256* %"$div_$b_8_313")
  %"$div_317" = load %Int256, %Int256* %"$div_call_315", align 8
  store %Int256 %"$div_317", %Int256* %"$res_div_10", align 8
  %"$gasrem_318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_319" = icmp ugt i64 1, %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %"$have_gas_308"
  %"$consume_322" = sub i64 %"$gasrem_318", 1
  store i64 %"$consume_322", i64* @_gasrem, align 8
  %"$res_rem_11" = alloca %Int256, align 8
  %"$gasrem_324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_325" = icmp ugt i64 80, %"$gasrem_324"
  br i1 %"$gascmp_325", label %"$out_of_gas_326", label %"$have_gas_327"

"$out_of_gas_326":                                ; preds = %"$have_gas_321"
  call void @_out_of_gas()
  br label %"$have_gas_327"

"$have_gas_327":                                  ; preds = %"$out_of_gas_326", %"$have_gas_321"
  %"$consume_328" = sub i64 %"$gasrem_324", 80
  store i64 %"$consume_328", i64* @_gasrem, align 8
  %"$execptr_load_329" = load i8*, i8** @_execptr, align 8
  %"$rem_$a_9_330" = alloca %Int256, align 8
  %"$$a_9_331" = load %Int256, %Int256* %"$a_9", align 8
  store %Int256 %"$$a_9_331", %Int256* %"$rem_$a_9_330", align 8
  %"$rem_$b_8_332" = alloca %Int256, align 8
  %"$$b_8_333" = load %Int256, %Int256* %"$b_8", align 8
  store %Int256 %"$$b_8_333", %Int256* %"$rem_$b_8_332", align 8
  %"$rem_call_334" = call %Int256* @_rem_Int256(i8* %"$execptr_load_329", %Int256* %"$rem_$a_9_330", %Int256* %"$rem_$b_8_332")
  %"$rem_336" = load %Int256, %Int256* %"$rem_call_334", align 8
  store %Int256 %"$rem_336", %Int256* %"$res_rem_11", align 8
  %"$gasrem_337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_338" = icmp ugt i64 1, %"$gasrem_337"
  br i1 %"$gascmp_338", label %"$out_of_gas_339", label %"$have_gas_340"

"$out_of_gas_339":                                ; preds = %"$have_gas_327"
  call void @_out_of_gas()
  br label %"$have_gas_340"

"$have_gas_340":                                  ; preds = %"$out_of_gas_339", %"$have_gas_327"
  %"$consume_341" = sub i64 %"$gasrem_337", 1
  store i64 %"$consume_341", i64* @_gasrem, align 8
  %res4 = alloca %Int256, align 8
  %"$gasrem_343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_344" = icmp ugt i64 16, %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %"$have_gas_340"
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %"$have_gas_340"
  %"$consume_347" = sub i64 %"$gasrem_343", 16
  store i64 %"$consume_347", i64* @_gasrem, align 8
  %"$execptr_load_348" = load i8*, i8** @_execptr, align 8
  %"$add_$res_div_10_349" = alloca %Int256, align 8
  %"$$res_div_10_350" = load %Int256, %Int256* %"$res_div_10", align 8
  store %Int256 %"$$res_div_10_350", %Int256* %"$add_$res_div_10_349", align 8
  %"$add_$res_rem_11_351" = alloca %Int256, align 8
  %"$$res_rem_11_352" = load %Int256, %Int256* %"$res_rem_11", align 8
  store %Int256 %"$$res_rem_11_352", %Int256* %"$add_$res_rem_11_351", align 8
  %"$add_call_353" = call %Int256* @_add_Int256(i8* %"$execptr_load_348", %Int256* %"$add_$res_div_10_349", %Int256* %"$add_$res_rem_11_351")
  %"$add_355" = load %Int256, %Int256* %"$add_call_353", align 8
  store %Int256 %"$add_355", %Int256* %res4, align 8
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_346"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_346"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %res5 = alloca %Int256, align 8
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 16, %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_359"
  %"$consume_366" = sub i64 %"$gasrem_362", 16
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %"$execptr_load_367" = load i8*, i8** @_execptr, align 8
  %"$add_res1_368" = alloca %Int256, align 8
  %"$res1_369" = load %Int256, %Int256* %res1, align 8
  store %Int256 %"$res1_369", %Int256* %"$add_res1_368", align 8
  %"$add_res2_370" = alloca %Int256, align 8
  %"$res2_371" = load %Int256, %Int256* %res2, align 8
  store %Int256 %"$res2_371", %Int256* %"$add_res2_370", align 8
  %"$add_call_372" = call %Int256* @_add_Int256(i8* %"$execptr_load_367", %Int256* %"$add_res1_368", %Int256* %"$add_res2_370")
  %"$add_374" = load %Int256, %Int256* %"$add_call_372", align 8
  store %Int256 %"$add_374", %Int256* %res5, align 8
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 1, %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$have_gas_365"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$have_gas_365"
  %"$consume_379" = sub i64 %"$gasrem_375", 1
  store i64 %"$consume_379", i64* @_gasrem, align 8
  %res6 = alloca %Int256, align 8
  %"$gasrem_381" = load i64, i64* @_gasrem, align 8
  %"$gascmp_382" = icmp ugt i64 16, %"$gasrem_381"
  br i1 %"$gascmp_382", label %"$out_of_gas_383", label %"$have_gas_384"

"$out_of_gas_383":                                ; preds = %"$have_gas_378"
  call void @_out_of_gas()
  br label %"$have_gas_384"

"$have_gas_384":                                  ; preds = %"$out_of_gas_383", %"$have_gas_378"
  %"$consume_385" = sub i64 %"$gasrem_381", 16
  store i64 %"$consume_385", i64* @_gasrem, align 8
  %"$execptr_load_386" = load i8*, i8** @_execptr, align 8
  %"$add_res5_387" = alloca %Int256, align 8
  %"$res5_388" = load %Int256, %Int256* %res5, align 8
  store %Int256 %"$res5_388", %Int256* %"$add_res5_387", align 8
  %"$add_res3_389" = alloca %Int256, align 8
  %"$res3_390" = load %Int256, %Int256* %res3, align 8
  store %Int256 %"$res3_390", %Int256* %"$add_res3_389", align 8
  %"$add_call_391" = call %Int256* @_add_Int256(i8* %"$execptr_load_386", %Int256* %"$add_res5_387", %Int256* %"$add_res3_389")
  %"$add_393" = load %Int256, %Int256* %"$add_call_391", align 8
  store %Int256 %"$add_393", %Int256* %res6, align 8
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 1, %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %"$have_gas_384"
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %"$have_gas_384"
  %"$consume_398" = sub i64 %"$gasrem_394", 1
  store i64 %"$consume_398", i64* @_gasrem, align 8
  %res7 = alloca %Int256, align 8
  %"$gasrem_400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_401" = icmp ugt i64 16, %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %"$have_gas_397"
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %"$have_gas_397"
  %"$consume_404" = sub i64 %"$gasrem_400", 16
  store i64 %"$consume_404", i64* @_gasrem, align 8
  %"$execptr_load_405" = load i8*, i8** @_execptr, align 8
  %"$add_res4_406" = alloca %Int256, align 8
  %"$res4_407" = load %Int256, %Int256* %res4, align 8
  store %Int256 %"$res4_407", %Int256* %"$add_res4_406", align 8
  %"$add_res6_408" = alloca %Int256, align 8
  %"$res6_409" = load %Int256, %Int256* %res6, align 8
  store %Int256 %"$res6_409", %Int256* %"$add_res6_408", align 8
  %"$add_call_410" = call %Int256* @_add_Int256(i8* %"$execptr_load_405", %Int256* %"$add_res4_406", %Int256* %"$add_res6_408")
  %"$add_412" = load %Int256, %Int256* %"$add_call_410", align 8
  store %Int256 %"$add_412", %Int256* %res7, align 8
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_403"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_403"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %"$res7_418" = load %Int256, %Int256* %res7, align 8
  store %Int256 %"$res7_418", %Int256* %"$expr_12", align 8
  %"$$expr_12_419" = load %Int256, %Int256* %"$expr_12", align 8
  store %Int256 %"$$expr_12_419", %Int256* %1, align 8
  ret void
}

declare void @_out_of_gas()

declare %Int256* @_div_Int256(i8*, %Int256*, %Int256*)

declare %Int256* @_rem_Int256(i8*, %Int256*, %Int256*)

declare %Int256* @_add_Int256(i8*, %Int256*, %Int256*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$mainval_420" = alloca %Int256, align 8
  %"$memvoidcast_421" = bitcast %Int256* %"$mainval_420" to i8*
  call void @_scilla_expr_fun(i8* null, %Int256* %"$mainval_420")
  %"$execptr_load_422" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_422", %_TyDescrTy_Typ* @"$TyDescr_Int256_27", i8* %"$memvoidcast_421")
  ret void
}
