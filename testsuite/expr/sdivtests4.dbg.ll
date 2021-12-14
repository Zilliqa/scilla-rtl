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

%"$TyDescrTy_PrimTyp_19" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Int32 = type { i32 }
%"$ParamDescr_459" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_460" = type { %ParamDescrString, i32, %"$ParamDescr_459"* }
%Int256 = type { i256 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_20" = global %"$TyDescrTy_PrimTyp_19" zeroinitializer
@"$TyDescr_Int32_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Int32_Prim_20" to i8*) }
@"$TyDescr_Uint32_Prim_22" = global %"$TyDescrTy_PrimTyp_19" { i32 1, i32 0 }
@"$TyDescr_Uint32_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Uint32_Prim_22" to i8*) }
@"$TyDescr_Int64_Prim_24" = global %"$TyDescrTy_PrimTyp_19" { i32 0, i32 1 }
@"$TyDescr_Int64_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Int64_Prim_24" to i8*) }
@"$TyDescr_Uint64_Prim_26" = global %"$TyDescrTy_PrimTyp_19" { i32 1, i32 1 }
@"$TyDescr_Uint64_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Uint64_Prim_26" to i8*) }
@"$TyDescr_Int128_Prim_28" = global %"$TyDescrTy_PrimTyp_19" { i32 0, i32 2 }
@"$TyDescr_Int128_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Int128_Prim_28" to i8*) }
@"$TyDescr_Uint128_Prim_30" = global %"$TyDescrTy_PrimTyp_19" { i32 1, i32 2 }
@"$TyDescr_Uint128_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Uint128_Prim_30" to i8*) }
@"$TyDescr_Int256_Prim_32" = global %"$TyDescrTy_PrimTyp_19" { i32 0, i32 3 }
@"$TyDescr_Int256_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Int256_Prim_32" to i8*) }
@"$TyDescr_Uint256_Prim_34" = global %"$TyDescrTy_PrimTyp_19" { i32 1, i32 3 }
@"$TyDescr_Uint256_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Uint256_Prim_34" to i8*) }
@"$TyDescr_String_Prim_36" = global %"$TyDescrTy_PrimTyp_19" { i32 2, i32 0 }
@"$TyDescr_String_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_String_Prim_36" to i8*) }
@"$TyDescr_Bnum_Prim_38" = global %"$TyDescrTy_PrimTyp_19" { i32 3, i32 0 }
@"$TyDescr_Bnum_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Bnum_Prim_38" to i8*) }
@"$TyDescr_Message_Prim_40" = global %"$TyDescrTy_PrimTyp_19" { i32 4, i32 0 }
@"$TyDescr_Message_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Message_Prim_40" to i8*) }
@"$TyDescr_Event_Prim_42" = global %"$TyDescrTy_PrimTyp_19" { i32 5, i32 0 }
@"$TyDescr_Event_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Event_Prim_42" to i8*) }
@"$TyDescr_Exception_Prim_44" = global %"$TyDescrTy_PrimTyp_19" { i32 6, i32 0 }
@"$TyDescr_Exception_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Exception_Prim_44" to i8*) }
@"$TyDescr_Bystr_Prim_46" = global %"$TyDescrTy_PrimTyp_19" { i32 7, i32 0 }
@"$TyDescr_Bystr_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Bystr_Prim_46" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [14 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_43", %_TyDescrTy_Typ* @"$TyDescr_Int64_25", %_TyDescrTy_Typ* @"$TyDescr_Uint256_35", %_TyDescrTy_Typ* @"$TyDescr_Uint32_23", %_TyDescrTy_Typ* @"$TyDescr_Uint64_27", %_TyDescrTy_Typ* @"$TyDescr_Bnum_39", %_TyDescrTy_Typ* @"$TyDescr_Uint128_31", %_TyDescrTy_Typ* @"$TyDescr_Exception_45", %_TyDescrTy_Typ* @"$TyDescr_String_37", %_TyDescrTy_Typ* @"$TyDescr_Int256_33", %_TyDescrTy_Typ* @"$TyDescr_Int128_29", %_TyDescrTy_Typ* @"$TyDescr_Bystr_47", %_TyDescrTy_Typ* @"$TyDescr_Message_41", %_TyDescrTy_Typ* @"$TyDescr_Int32_21"]
@_tydescr_table_length = constant i32 14
@_contract_parameters = constant [0 x %"$ParamDescr_459"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_460"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_54" = load i64, i64* @_gasrem, align 8
  %"$gascmp_55" = icmp ugt i64 5, %"$gasrem_54"
  br i1 %"$gascmp_55", label %"$out_of_gas_56", label %"$have_gas_57"

"$out_of_gas_56":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_57"

"$have_gas_57":                                   ; preds = %"$out_of_gas_56", %entry
  %"$consume_58" = sub i64 %"$gasrem_54", 5
  store i64 %"$consume_58", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !9
  %"$gasrem_59" = load i64, i64* @_gasrem, align 8
  %"$gascmp_60" = icmp ugt i64 8, %"$gasrem_59"
  br i1 %"$gascmp_60", label %"$out_of_gas_61", label %"$have_gas_62"

"$out_of_gas_61":                                 ; preds = %"$have_gas_57"
  call void @_out_of_gas()
  br label %"$have_gas_62"

"$have_gas_62":                                   ; preds = %"$out_of_gas_61", %"$have_gas_57"
  %"$consume_63" = sub i64 %"$gasrem_59", 8
  store i64 %"$consume_63", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !9
  %"$gasrem_64" = load i64, i64* @_gasrem, align 8
  %"$gascmp_65" = icmp ugt i64 196, %"$gasrem_64"
  br i1 %"$gascmp_65", label %"$out_of_gas_66", label %"$have_gas_67"

"$out_of_gas_66":                                 ; preds = %"$have_gas_62"
  call void @_out_of_gas()
  br label %"$have_gas_67"

"$have_gas_67":                                   ; preds = %"$out_of_gas_66", %"$have_gas_62"
  %"$consume_68" = sub i64 %"$gasrem_64", 196
  store i64 %"$consume_68", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !9
  %"$gasrem_69" = load i64, i64* @_gasrem, align 8
  %"$gascmp_70" = icmp ugt i64 20, %"$gasrem_69"
  br i1 %"$gascmp_70", label %"$out_of_gas_71", label %"$have_gas_72"

"$out_of_gas_71":                                 ; preds = %"$have_gas_67"
  call void @_out_of_gas()
  br label %"$have_gas_72"

"$have_gas_72":                                   ; preds = %"$out_of_gas_71", %"$have_gas_67"
  %"$consume_73" = sub i64 %"$gasrem_69", 20
  store i64 %"$consume_73", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !9
  %"$gasrem_74" = load i64, i64* @_gasrem, align 8
  %"$gascmp_75" = icmp ugt i64 12, %"$gasrem_74"
  br i1 %"$gascmp_75", label %"$out_of_gas_76", label %"$have_gas_77"

"$out_of_gas_76":                                 ; preds = %"$have_gas_72"
  call void @_out_of_gas()
  br label %"$have_gas_77"

"$have_gas_77":                                   ; preds = %"$out_of_gas_76", %"$have_gas_72"
  %"$consume_78" = sub i64 %"$gasrem_74", 12
  store i64 %"$consume_78", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !9
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 2, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %"$have_gas_77"
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %"$have_gas_77"
  %"$consume_83" = sub i64 %"$gasrem_79", 2
  store i64 %"$consume_83", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define internal void @_scilla_expr_fun(i8* %0, %Int256* %1) !dbg !10 {
entry:
  %"$expr_18" = alloca %Int256, align 8
  %"$gasrem_84" = load i64, i64* @_gasrem, align 8
  %"$gascmp_85" = icmp ugt i64 1, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %entry
  %"$consume_88" = sub i64 %"$gasrem_84", 1
  store i64 %"$consume_88", i64* @_gasrem, align 8
  %b = alloca %Int256, align 8
  %"$gasrem_89" = load i64, i64* @_gasrem, align 8
  %"$gascmp_90" = icmp ugt i64 1, %"$gasrem_89"
  br i1 %"$gascmp_90", label %"$out_of_gas_91", label %"$have_gas_92"

"$out_of_gas_91":                                 ; preds = %"$have_gas_87"
  call void @_out_of_gas()
  br label %"$have_gas_92"

"$have_gas_92":                                   ; preds = %"$out_of_gas_91", %"$have_gas_87"
  %"$consume_93" = sub i64 %"$gasrem_89", 1
  store i64 %"$consume_93", i64* @_gasrem, align 8
  store %Int256 { i256 -1001 }, %Int256* %b, align 8, !dbg !11
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 1, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %"$have_gas_92"
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %"$have_gas_92"
  %"$consume_98" = sub i64 %"$gasrem_94", 1
  store i64 %"$consume_98", i64* @_gasrem, align 8
  %a = alloca %Int256, align 8
  %"$gasrem_99" = load i64, i64* @_gasrem, align 8
  %"$gascmp_100" = icmp ugt i64 1, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %"$have_gas_97"
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %"$have_gas_97"
  %"$consume_103" = sub i64 %"$gasrem_99", 1
  store i64 %"$consume_103", i64* @_gasrem, align 8
  store %Int256 { i256 31 }, %Int256* %a, align 8, !dbg !12
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$have_gas_102"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$have_gas_102"
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %res_div = alloca %Int256, align 8
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 80, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_107"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_107"
  %"$consume_114" = sub i64 %"$gasrem_110", 80
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %"$execptr_load_115" = load i8*, i8** @_execptr, align 8
  %"$div_a_116" = alloca %Int256, align 8
  %"$a_117" = load %Int256, %Int256* %a, align 8
  store %Int256 %"$a_117", %Int256* %"$div_a_116", align 8
  %"$div_b_118" = alloca %Int256, align 8
  %"$b_119" = load %Int256, %Int256* %b, align 8
  store %Int256 %"$b_119", %Int256* %"$div_b_118", align 8
  %"$div_call_120" = call %Int256* @_div_Int256(i8* %"$execptr_load_115", %Int256* %"$div_a_116", %Int256* %"$div_b_118"), !dbg !13
  %"$div_122" = load %Int256, %Int256* %"$div_call_120", align 8
  store %Int256 %"$div_122", %Int256* %res_div, align 8, !dbg !13
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 1, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_113"
  %"$consume_127" = sub i64 %"$gasrem_123", 1
  store i64 %"$consume_127", i64* @_gasrem, align 8
  %res_rem = alloca %Int256, align 8
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 80, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_126"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_126"
  %"$consume_133" = sub i64 %"$gasrem_129", 80
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %"$execptr_load_134" = load i8*, i8** @_execptr, align 8
  %"$rem_a_135" = alloca %Int256, align 8
  %"$a_136" = load %Int256, %Int256* %a, align 8
  store %Int256 %"$a_136", %Int256* %"$rem_a_135", align 8
  %"$rem_b_137" = alloca %Int256, align 8
  %"$b_138" = load %Int256, %Int256* %b, align 8
  store %Int256 %"$b_138", %Int256* %"$rem_b_137", align 8
  %"$rem_call_139" = call %Int256* @_rem_Int256(i8* %"$execptr_load_134", %Int256* %"$rem_a_135", %Int256* %"$rem_b_137"), !dbg !14
  %"$rem_141" = load %Int256, %Int256* %"$rem_call_139", align 8
  store %Int256 %"$rem_141", %Int256* %res_rem, align 8, !dbg !14
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 1, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %"$have_gas_132"
  %"$consume_146" = sub i64 %"$gasrem_142", 1
  store i64 %"$consume_146", i64* @_gasrem, align 8
  %res1 = alloca %Int256, align 8
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 16, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_145"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_145"
  %"$consume_152" = sub i64 %"$gasrem_148", 16
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %"$execptr_load_153" = load i8*, i8** @_execptr, align 8
  %"$add_res_div_154" = alloca %Int256, align 8
  %"$res_div_155" = load %Int256, %Int256* %res_div, align 8
  store %Int256 %"$res_div_155", %Int256* %"$add_res_div_154", align 8
  %"$add_res_rem_156" = alloca %Int256, align 8
  %"$res_rem_157" = load %Int256, %Int256* %res_rem, align 8
  store %Int256 %"$res_rem_157", %Int256* %"$add_res_rem_156", align 8
  %"$add_call_158" = call %Int256* @_add_Int256(i8* %"$execptr_load_153", %Int256* %"$add_res_div_154", %Int256* %"$add_res_rem_156"), !dbg !15
  %"$add_160" = load %Int256, %Int256* %"$add_call_158", align 8
  store %Int256 %"$add_160", %Int256* %res1, align 8, !dbg !15
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_151"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  %"$b_6" = alloca %Int256, align 8
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_164"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  store %Int256 { i256 101111111111111 }, %Int256* %"$b_6", align 8, !dbg !16
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_169"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %"$a_7" = alloca %Int256, align 8
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_174"
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  store %Int256 { i256 -311111111111 }, %Int256* %"$a_7", align 8, !dbg !17
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_179"
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %"$res_div_8" = alloca %Int256, align 8
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 80, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$have_gas_184"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$have_gas_184"
  %"$consume_191" = sub i64 %"$gasrem_187", 80
  store i64 %"$consume_191", i64* @_gasrem, align 8
  %"$execptr_load_192" = load i8*, i8** @_execptr, align 8
  %"$div_$a_7_193" = alloca %Int256, align 8
  %"$$a_7_194" = load %Int256, %Int256* %"$a_7", align 8
  store %Int256 %"$$a_7_194", %Int256* %"$div_$a_7_193", align 8
  %"$div_$b_6_195" = alloca %Int256, align 8
  %"$$b_6_196" = load %Int256, %Int256* %"$b_6", align 8
  store %Int256 %"$$b_6_196", %Int256* %"$div_$b_6_195", align 8
  %"$div_call_197" = call %Int256* @_div_Int256(i8* %"$execptr_load_192", %Int256* %"$div_$a_7_193", %Int256* %"$div_$b_6_195"), !dbg !18
  %"$div_199" = load %Int256, %Int256* %"$div_call_197", align 8
  store %Int256 %"$div_199", %Int256* %"$res_div_8", align 8, !dbg !18
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 1, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %"$have_gas_190"
  %"$consume_204" = sub i64 %"$gasrem_200", 1
  store i64 %"$consume_204", i64* @_gasrem, align 8
  %"$res_rem_9" = alloca %Int256, align 8
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 80, %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %"$have_gas_203"
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %"$have_gas_203"
  %"$consume_210" = sub i64 %"$gasrem_206", 80
  store i64 %"$consume_210", i64* @_gasrem, align 8
  %"$execptr_load_211" = load i8*, i8** @_execptr, align 8
  %"$rem_$a_7_212" = alloca %Int256, align 8
  %"$$a_7_213" = load %Int256, %Int256* %"$a_7", align 8
  store %Int256 %"$$a_7_213", %Int256* %"$rem_$a_7_212", align 8
  %"$rem_$b_6_214" = alloca %Int256, align 8
  %"$$b_6_215" = load %Int256, %Int256* %"$b_6", align 8
  store %Int256 %"$$b_6_215", %Int256* %"$rem_$b_6_214", align 8
  %"$rem_call_216" = call %Int256* @_rem_Int256(i8* %"$execptr_load_211", %Int256* %"$rem_$a_7_212", %Int256* %"$rem_$b_6_214"), !dbg !19
  %"$rem_218" = load %Int256, %Int256* %"$rem_call_216", align 8
  store %Int256 %"$rem_218", %Int256* %"$res_rem_9", align 8, !dbg !19
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_209"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_209"
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %res2 = alloca %Int256, align 8
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 16, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_222"
  %"$consume_229" = sub i64 %"$gasrem_225", 16
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %"$execptr_load_230" = load i8*, i8** @_execptr, align 8
  %"$add_$res_div_8_231" = alloca %Int256, align 8
  %"$$res_div_8_232" = load %Int256, %Int256* %"$res_div_8", align 8
  store %Int256 %"$$res_div_8_232", %Int256* %"$add_$res_div_8_231", align 8
  %"$add_$res_rem_9_233" = alloca %Int256, align 8
  %"$$res_rem_9_234" = load %Int256, %Int256* %"$res_rem_9", align 8
  store %Int256 %"$$res_rem_9_234", %Int256* %"$add_$res_rem_9_233", align 8
  %"$add_call_235" = call %Int256* @_add_Int256(i8* %"$execptr_load_230", %Int256* %"$add_$res_div_8_231", %Int256* %"$add_$res_rem_9_233"), !dbg !20
  %"$add_237" = load %Int256, %Int256* %"$add_call_235", align 8
  store %Int256 %"$add_237", %Int256* %res2, align 8, !dbg !20
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 1, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_228"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_228"
  %"$consume_242" = sub i64 %"$gasrem_238", 1
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %"$b_10" = alloca %Int256, align 8
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$have_gas_241"
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem, align 8
  store %Int256 { i256 -10 }, %Int256* %"$b_10", align 8, !dbg !21
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_246"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %"$a_11" = alloca %Int256, align 8
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_251"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  store %Int256 { i256 -3 }, %Int256* %"$a_11", align 8, !dbg !22
  %"$gasrem_258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_259" = icmp ugt i64 1, %"$gasrem_258"
  br i1 %"$gascmp_259", label %"$out_of_gas_260", label %"$have_gas_261"

"$out_of_gas_260":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_261"

"$have_gas_261":                                  ; preds = %"$out_of_gas_260", %"$have_gas_256"
  %"$consume_262" = sub i64 %"$gasrem_258", 1
  store i64 %"$consume_262", i64* @_gasrem, align 8
  %"$res_div_12" = alloca %Int256, align 8
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 80, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_261"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_261"
  %"$consume_268" = sub i64 %"$gasrem_264", 80
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %"$execptr_load_269" = load i8*, i8** @_execptr, align 8
  %"$div_$a_11_270" = alloca %Int256, align 8
  %"$$a_11_271" = load %Int256, %Int256* %"$a_11", align 8
  store %Int256 %"$$a_11_271", %Int256* %"$div_$a_11_270", align 8
  %"$div_$b_10_272" = alloca %Int256, align 8
  %"$$b_10_273" = load %Int256, %Int256* %"$b_10", align 8
  store %Int256 %"$$b_10_273", %Int256* %"$div_$b_10_272", align 8
  %"$div_call_274" = call %Int256* @_div_Int256(i8* %"$execptr_load_269", %Int256* %"$div_$a_11_270", %Int256* %"$div_$b_10_272"), !dbg !23
  %"$div_276" = load %Int256, %Int256* %"$div_call_274", align 8
  store %Int256 %"$div_276", %Int256* %"$res_div_12", align 8, !dbg !23
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_267"
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %"$res_rem_13" = alloca %Int256, align 8
  %"$gasrem_283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_284" = icmp ugt i64 80, %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %"$have_gas_280"
  %"$consume_287" = sub i64 %"$gasrem_283", 80
  store i64 %"$consume_287", i64* @_gasrem, align 8
  %"$execptr_load_288" = load i8*, i8** @_execptr, align 8
  %"$rem_$a_11_289" = alloca %Int256, align 8
  %"$$a_11_290" = load %Int256, %Int256* %"$a_11", align 8
  store %Int256 %"$$a_11_290", %Int256* %"$rem_$a_11_289", align 8
  %"$rem_$b_10_291" = alloca %Int256, align 8
  %"$$b_10_292" = load %Int256, %Int256* %"$b_10", align 8
  store %Int256 %"$$b_10_292", %Int256* %"$rem_$b_10_291", align 8
  %"$rem_call_293" = call %Int256* @_rem_Int256(i8* %"$execptr_load_288", %Int256* %"$rem_$a_11_289", %Int256* %"$rem_$b_10_291"), !dbg !24
  %"$rem_295" = load %Int256, %Int256* %"$rem_call_293", align 8
  store %Int256 %"$rem_295", %Int256* %"$res_rem_13", align 8, !dbg !24
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 1, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$have_gas_286"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$have_gas_286"
  %"$consume_300" = sub i64 %"$gasrem_296", 1
  store i64 %"$consume_300", i64* @_gasrem, align 8
  %res3 = alloca %Int256, align 8
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 16, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_299"
  %"$consume_306" = sub i64 %"$gasrem_302", 16
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %"$execptr_load_307" = load i8*, i8** @_execptr, align 8
  %"$add_$res_div_12_308" = alloca %Int256, align 8
  %"$$res_div_12_309" = load %Int256, %Int256* %"$res_div_12", align 8
  store %Int256 %"$$res_div_12_309", %Int256* %"$add_$res_div_12_308", align 8
  %"$add_$res_rem_13_310" = alloca %Int256, align 8
  %"$$res_rem_13_311" = load %Int256, %Int256* %"$res_rem_13", align 8
  store %Int256 %"$$res_rem_13_311", %Int256* %"$add_$res_rem_13_310", align 8
  %"$add_call_312" = call %Int256* @_add_Int256(i8* %"$execptr_load_307", %Int256* %"$add_$res_div_12_308", %Int256* %"$add_$res_rem_13_310"), !dbg !25
  %"$add_314" = load %Int256, %Int256* %"$add_call_312", align 8
  store %Int256 %"$add_314", %Int256* %res3, align 8, !dbg !25
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 1, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$have_gas_305"
  %"$consume_319" = sub i64 %"$gasrem_315", 1
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %"$b_14" = alloca %Int256, align 8
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 1, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_318"
  %"$consume_324" = sub i64 %"$gasrem_320", 1
  store i64 %"$consume_324", i64* @_gasrem, align 8
  store %Int256 { i256 10 }, %Int256* %"$b_14", align 8, !dbg !26
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_323"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %"$a_15" = alloca %Int256, align 8
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 1, %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$have_gas_328"
  %"$consume_334" = sub i64 %"$gasrem_330", 1
  store i64 %"$consume_334", i64* @_gasrem, align 8
  store %Int256 { i256 3 }, %Int256* %"$a_15", align 8, !dbg !27
  %"$gasrem_335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_336" = icmp ugt i64 1, %"$gasrem_335"
  br i1 %"$gascmp_336", label %"$out_of_gas_337", label %"$have_gas_338"

"$out_of_gas_337":                                ; preds = %"$have_gas_333"
  call void @_out_of_gas()
  br label %"$have_gas_338"

"$have_gas_338":                                  ; preds = %"$out_of_gas_337", %"$have_gas_333"
  %"$consume_339" = sub i64 %"$gasrem_335", 1
  store i64 %"$consume_339", i64* @_gasrem, align 8
  %"$res_div_16" = alloca %Int256, align 8
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 80, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %"$have_gas_338"
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %"$have_gas_338"
  %"$consume_345" = sub i64 %"$gasrem_341", 80
  store i64 %"$consume_345", i64* @_gasrem, align 8
  %"$execptr_load_346" = load i8*, i8** @_execptr, align 8
  %"$div_$a_15_347" = alloca %Int256, align 8
  %"$$a_15_348" = load %Int256, %Int256* %"$a_15", align 8
  store %Int256 %"$$a_15_348", %Int256* %"$div_$a_15_347", align 8
  %"$div_$b_14_349" = alloca %Int256, align 8
  %"$$b_14_350" = load %Int256, %Int256* %"$b_14", align 8
  store %Int256 %"$$b_14_350", %Int256* %"$div_$b_14_349", align 8
  %"$div_call_351" = call %Int256* @_div_Int256(i8* %"$execptr_load_346", %Int256* %"$div_$a_15_347", %Int256* %"$div_$b_14_349"), !dbg !28
  %"$div_353" = load %Int256, %Int256* %"$div_call_351", align 8
  store %Int256 %"$div_353", %Int256* %"$res_div_16", align 8, !dbg !28
  %"$gasrem_354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_355" = icmp ugt i64 1, %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %"$have_gas_344"
  %"$consume_358" = sub i64 %"$gasrem_354", 1
  store i64 %"$consume_358", i64* @_gasrem, align 8
  %"$res_rem_17" = alloca %Int256, align 8
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 80, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_357"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_357"
  %"$consume_364" = sub i64 %"$gasrem_360", 80
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %"$execptr_load_365" = load i8*, i8** @_execptr, align 8
  %"$rem_$a_15_366" = alloca %Int256, align 8
  %"$$a_15_367" = load %Int256, %Int256* %"$a_15", align 8
  store %Int256 %"$$a_15_367", %Int256* %"$rem_$a_15_366", align 8
  %"$rem_$b_14_368" = alloca %Int256, align 8
  %"$$b_14_369" = load %Int256, %Int256* %"$b_14", align 8
  store %Int256 %"$$b_14_369", %Int256* %"$rem_$b_14_368", align 8
  %"$rem_call_370" = call %Int256* @_rem_Int256(i8* %"$execptr_load_365", %Int256* %"$rem_$a_15_366", %Int256* %"$rem_$b_14_368"), !dbg !29
  %"$rem_372" = load %Int256, %Int256* %"$rem_call_370", align 8
  store %Int256 %"$rem_372", %Int256* %"$res_rem_17", align 8, !dbg !29
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 1, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_363"
  %"$consume_377" = sub i64 %"$gasrem_373", 1
  store i64 %"$consume_377", i64* @_gasrem, align 8
  %res4 = alloca %Int256, align 8
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 16, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_376"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_376"
  %"$consume_383" = sub i64 %"$gasrem_379", 16
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %"$execptr_load_384" = load i8*, i8** @_execptr, align 8
  %"$add_$res_div_16_385" = alloca %Int256, align 8
  %"$$res_div_16_386" = load %Int256, %Int256* %"$res_div_16", align 8
  store %Int256 %"$$res_div_16_386", %Int256* %"$add_$res_div_16_385", align 8
  %"$add_$res_rem_17_387" = alloca %Int256, align 8
  %"$$res_rem_17_388" = load %Int256, %Int256* %"$res_rem_17", align 8
  store %Int256 %"$$res_rem_17_388", %Int256* %"$add_$res_rem_17_387", align 8
  %"$add_call_389" = call %Int256* @_add_Int256(i8* %"$execptr_load_384", %Int256* %"$add_$res_div_16_385", %Int256* %"$add_$res_rem_17_387"), !dbg !30
  %"$add_391" = load %Int256, %Int256* %"$add_call_389", align 8
  store %Int256 %"$add_391", %Int256* %res4, align 8, !dbg !30
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 1, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %"$have_gas_382"
  %"$consume_396" = sub i64 %"$gasrem_392", 1
  store i64 %"$consume_396", i64* @_gasrem, align 8
  %res5 = alloca %Int256, align 8
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 16, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_395"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_395"
  %"$consume_402" = sub i64 %"$gasrem_398", 16
  store i64 %"$consume_402", i64* @_gasrem, align 8
  %"$execptr_load_403" = load i8*, i8** @_execptr, align 8
  %"$add_res1_404" = alloca %Int256, align 8
  %"$res1_405" = load %Int256, %Int256* %res1, align 8
  store %Int256 %"$res1_405", %Int256* %"$add_res1_404", align 8
  %"$add_res2_406" = alloca %Int256, align 8
  %"$res2_407" = load %Int256, %Int256* %res2, align 8
  store %Int256 %"$res2_407", %Int256* %"$add_res2_406", align 8
  %"$add_call_408" = call %Int256* @_add_Int256(i8* %"$execptr_load_403", %Int256* %"$add_res1_404", %Int256* %"$add_res2_406"), !dbg !31
  %"$add_410" = load %Int256, %Int256* %"$add_call_408", align 8
  store %Int256 %"$add_410", %Int256* %res5, align 8, !dbg !31
  %"$gasrem_411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_412" = icmp ugt i64 1, %"$gasrem_411"
  br i1 %"$gascmp_412", label %"$out_of_gas_413", label %"$have_gas_414"

"$out_of_gas_413":                                ; preds = %"$have_gas_401"
  call void @_out_of_gas()
  br label %"$have_gas_414"

"$have_gas_414":                                  ; preds = %"$out_of_gas_413", %"$have_gas_401"
  %"$consume_415" = sub i64 %"$gasrem_411", 1
  store i64 %"$consume_415", i64* @_gasrem, align 8
  %res6 = alloca %Int256, align 8
  %"$gasrem_417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_418" = icmp ugt i64 16, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %"$have_gas_414"
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %"$have_gas_414"
  %"$consume_421" = sub i64 %"$gasrem_417", 16
  store i64 %"$consume_421", i64* @_gasrem, align 8
  %"$execptr_load_422" = load i8*, i8** @_execptr, align 8
  %"$add_res5_423" = alloca %Int256, align 8
  %"$res5_424" = load %Int256, %Int256* %res5, align 8
  store %Int256 %"$res5_424", %Int256* %"$add_res5_423", align 8
  %"$add_res3_425" = alloca %Int256, align 8
  %"$res3_426" = load %Int256, %Int256* %res3, align 8
  store %Int256 %"$res3_426", %Int256* %"$add_res3_425", align 8
  %"$add_call_427" = call %Int256* @_add_Int256(i8* %"$execptr_load_422", %Int256* %"$add_res5_423", %Int256* %"$add_res3_425"), !dbg !32
  %"$add_429" = load %Int256, %Int256* %"$add_call_427", align 8
  store %Int256 %"$add_429", %Int256* %res6, align 8, !dbg !32
  %"$gasrem_430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_431" = icmp ugt i64 1, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %"$have_gas_420"
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %"$have_gas_420"
  %"$consume_434" = sub i64 %"$gasrem_430", 1
  store i64 %"$consume_434", i64* @_gasrem, align 8
  %res7 = alloca %Int256, align 8
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 16, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_433"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_433"
  %"$consume_440" = sub i64 %"$gasrem_436", 16
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %"$execptr_load_441" = load i8*, i8** @_execptr, align 8
  %"$add_res4_442" = alloca %Int256, align 8
  %"$res4_443" = load %Int256, %Int256* %res4, align 8
  store %Int256 %"$res4_443", %Int256* %"$add_res4_442", align 8
  %"$add_res6_444" = alloca %Int256, align 8
  %"$res6_445" = load %Int256, %Int256* %res6, align 8
  store %Int256 %"$res6_445", %Int256* %"$add_res6_444", align 8
  %"$add_call_446" = call %Int256* @_add_Int256(i8* %"$execptr_load_441", %Int256* %"$add_res4_442", %Int256* %"$add_res6_444"), !dbg !33
  %"$add_448" = load %Int256, %Int256* %"$add_call_446", align 8
  store %Int256 %"$add_448", %Int256* %res7, align 8, !dbg !33
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 1, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %"$have_gas_439"
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %"$have_gas_439"
  %"$consume_453" = sub i64 %"$gasrem_449", 1
  store i64 %"$consume_453", i64* @_gasrem, align 8
  %"$res7_454" = load %Int256, %Int256* %res7, align 8
  store %Int256 %"$res7_454", %Int256* %"$expr_18", align 8, !dbg !34
  %"$$expr_18_455" = load %Int256, %Int256* %"$expr_18", align 8
  store %Int256 %"$$expr_18_455", %Int256* %1, align 8
  ret void
}

declare %Int256* @_div_Int256(i8*, %Int256*, %Int256*)

declare %Int256* @_rem_Int256(i8*, %Int256*, %Int256*)

declare %Int256* @_add_Int256(i8*, %Int256*, %Int256*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$mainval_456" = alloca %Int256, align 8
  %"$memvoidcast_457" = bitcast %Int256* %"$mainval_456" to i8*
  call void @_scilla_expr_fun(i8* null, %Int256* %"$mainval_456")
  %"$execptr_load_458" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_458", %_TyDescrTy_Typ* @"$TyDescr_Int256_33", i8* %"$memvoidcast_457")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "sdivtests4.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !6, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 2, column: 9, scope: !10)
!12 = !DILocation(line: 3, column: 9, scope: !10)
!13 = !DILocation(line: 5, column: 15, scope: !10)
!14 = !DILocation(line: 6, column: 15, scope: !10)
!15 = !DILocation(line: 7, column: 12, scope: !10)
!16 = !DILocation(line: 9, column: 9, scope: !10)
!17 = !DILocation(line: 10, column: 9, scope: !10)
!18 = !DILocation(line: 12, column: 15, scope: !10)
!19 = !DILocation(line: 13, column: 15, scope: !10)
!20 = !DILocation(line: 14, column: 12, scope: !10)
!21 = !DILocation(line: 16, column: 9, scope: !10)
!22 = !DILocation(line: 17, column: 9, scope: !10)
!23 = !DILocation(line: 19, column: 15, scope: !10)
!24 = !DILocation(line: 20, column: 15, scope: !10)
!25 = !DILocation(line: 21, column: 12, scope: !10)
!26 = !DILocation(line: 23, column: 9, scope: !10)
!27 = !DILocation(line: 24, column: 9, scope: !10)
!28 = !DILocation(line: 26, column: 15, scope: !10)
!29 = !DILocation(line: 27, column: 15, scope: !10)
!30 = !DILocation(line: 28, column: 12, scope: !10)
!31 = !DILocation(line: 30, column: 12, scope: !10)
!32 = !DILocation(line: 31, column: 12, scope: !10)
!33 = !DILocation(line: 32, column: 12, scope: !10)
!34 = !DILocation(line: 34, column: 1, scope: !10)
