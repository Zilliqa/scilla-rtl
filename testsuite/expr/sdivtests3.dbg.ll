; 
; let b = Int256 -11111111111111110 in
; let a = Int256 11119999993 in
; 
; let res_div = builtin div a b in
; let res_rem = builtin rem a b in
; let res1 = builtin add res_div res_rem in
; 
; let b = Int256 11111110 in
; let a = Int256 -7773 in
; 
; let res_div = builtin div a b in
; let res_rem = builtin rem a b in
; let res2 = builtin add res_div res_rem in
; 
; let b = Int256 -10777 in
; let a = Int256 -37 in
; 
; let res_div = builtin div a b in
; let res_rem = builtin rem a b in
; let res3 = builtin add res_div res_rem in
; 
; let b = Int256 1898560 in
; let a = Int256 13323 in
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
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_19" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Int32 = type { i32 }
%"$ParamDescr_461" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_462" = type { %ParamDescrString, i32, %"$ParamDescr_461"* }
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
@"$TyDescr_ReplicateContr_Prim_46" = global %"$TyDescrTy_PrimTyp_19" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_ReplicateContr_Prim_46" to i8*) }
@"$TyDescr_Bystr_Prim_48" = global %"$TyDescrTy_PrimTyp_19" { i32 7, i32 0 }
@"$TyDescr_Bystr_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Bystr_Prim_48" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_43", %_TyDescrTy_Typ* @"$TyDescr_Int64_25", %_TyDescrTy_Typ* @"$TyDescr_Uint256_35", %_TyDescrTy_Typ* @"$TyDescr_Uint32_23", %_TyDescrTy_Typ* @"$TyDescr_Uint64_27", %_TyDescrTy_Typ* @"$TyDescr_Bnum_39", %_TyDescrTy_Typ* @"$TyDescr_Uint128_31", %_TyDescrTy_Typ* @"$TyDescr_Exception_45", %_TyDescrTy_Typ* @"$TyDescr_String_37", %_TyDescrTy_Typ* @"$TyDescr_Int256_33", %_TyDescrTy_Typ* @"$TyDescr_Int128_29", %_TyDescrTy_Typ* @"$TyDescr_Bystr_49", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_47", %_TyDescrTy_Typ* @"$TyDescr_Message_41", %_TyDescrTy_Typ* @"$TyDescr_Int32_21"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_461"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_462"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_56" = load i64, i64* @_gasrem, align 8
  %"$gascmp_57" = icmp ugt i64 5, %"$gasrem_56"
  br i1 %"$gascmp_57", label %"$out_of_gas_58", label %"$have_gas_59"

"$out_of_gas_58":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_59"

"$have_gas_59":                                   ; preds = %"$out_of_gas_58", %entry
  %"$consume_60" = sub i64 %"$gasrem_56", 5
  store i64 %"$consume_60", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !9
  %"$gasrem_61" = load i64, i64* @_gasrem, align 8
  %"$gascmp_62" = icmp ugt i64 8, %"$gasrem_61"
  br i1 %"$gascmp_62", label %"$out_of_gas_63", label %"$have_gas_64"

"$out_of_gas_63":                                 ; preds = %"$have_gas_59"
  call void @_out_of_gas()
  br label %"$have_gas_64"

"$have_gas_64":                                   ; preds = %"$out_of_gas_63", %"$have_gas_59"
  %"$consume_65" = sub i64 %"$gasrem_61", 8
  store i64 %"$consume_65", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !9
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 196, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %"$have_gas_64"
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %"$have_gas_64"
  %"$consume_70" = sub i64 %"$gasrem_66", 196
  store i64 %"$consume_70", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !9
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 20, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %"$have_gas_69"
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %"$have_gas_69"
  %"$consume_75" = sub i64 %"$gasrem_71", 20
  store i64 %"$consume_75", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !9
  %"$gasrem_76" = load i64, i64* @_gasrem, align 8
  %"$gascmp_77" = icmp ugt i64 12, %"$gasrem_76"
  br i1 %"$gascmp_77", label %"$out_of_gas_78", label %"$have_gas_79"

"$out_of_gas_78":                                 ; preds = %"$have_gas_74"
  call void @_out_of_gas()
  br label %"$have_gas_79"

"$have_gas_79":                                   ; preds = %"$out_of_gas_78", %"$have_gas_74"
  %"$consume_80" = sub i64 %"$gasrem_76", 12
  store i64 %"$consume_80", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !9
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 2, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %"$have_gas_79"
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %"$have_gas_79"
  %"$consume_85" = sub i64 %"$gasrem_81", 2
  store i64 %"$consume_85", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define internal void @_scilla_expr_fun(i8* %0, %Int256* %1) !dbg !10 {
entry:
  %"$expr_18" = alloca %Int256, align 8
  %"$gasrem_86" = load i64, i64* @_gasrem, align 8
  %"$gascmp_87" = icmp ugt i64 1, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %entry
  %"$consume_90" = sub i64 %"$gasrem_86", 1
  store i64 %"$consume_90", i64* @_gasrem, align 8
  %b = alloca %Int256, align 8
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %"$have_gas_89"
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %"$have_gas_89"
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem, align 8
  store %Int256 { i256 -11111111111111110 }, %Int256* %b, align 8, !dbg !11
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_94"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_94"
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  %a = alloca %Int256, align 8
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 1, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %"$have_gas_99"
  %"$consume_105" = sub i64 %"$gasrem_101", 1
  store i64 %"$consume_105", i64* @_gasrem, align 8
  store %Int256 { i256 11119999993 }, %Int256* %a, align 8, !dbg !12
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_104"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_104"
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %res_div = alloca %Int256, align 8
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 80, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %"$have_gas_109"
  %"$consume_116" = sub i64 %"$gasrem_112", 80
  store i64 %"$consume_116", i64* @_gasrem, align 8
  %"$execptr_load_117" = load i8*, i8** @_execptr, align 8
  %"$div_a_118" = alloca %Int256, align 8
  %"$a_119" = load %Int256, %Int256* %a, align 8
  store %Int256 %"$a_119", %Int256* %"$div_a_118", align 8
  %"$div_b_120" = alloca %Int256, align 8
  %"$b_121" = load %Int256, %Int256* %b, align 8
  store %Int256 %"$b_121", %Int256* %"$div_b_120", align 8
  %"$div_call_122" = call %Int256* @_div_Int256(i8* %"$execptr_load_117", %Int256* %"$div_a_118", %Int256* %"$div_b_120"), !dbg !13
  %"$div_124" = load %Int256, %Int256* %"$div_call_122", align 8
  store %Int256 %"$div_124", %Int256* %res_div, align 8, !dbg !13
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_115"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_115"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %res_rem = alloca %Int256, align 8
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 80, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_128"
  %"$consume_135" = sub i64 %"$gasrem_131", 80
  store i64 %"$consume_135", i64* @_gasrem, align 8
  %"$execptr_load_136" = load i8*, i8** @_execptr, align 8
  %"$rem_a_137" = alloca %Int256, align 8
  %"$a_138" = load %Int256, %Int256* %a, align 8
  store %Int256 %"$a_138", %Int256* %"$rem_a_137", align 8
  %"$rem_b_139" = alloca %Int256, align 8
  %"$b_140" = load %Int256, %Int256* %b, align 8
  store %Int256 %"$b_140", %Int256* %"$rem_b_139", align 8
  %"$rem_call_141" = call %Int256* @_rem_Int256(i8* %"$execptr_load_136", %Int256* %"$rem_a_137", %Int256* %"$rem_b_139"), !dbg !14
  %"$rem_143" = load %Int256, %Int256* %"$rem_call_141", align 8
  store %Int256 %"$rem_143", %Int256* %res_rem, align 8, !dbg !14
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_134"
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem, align 8
  %res1 = alloca %Int256, align 8
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 16, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_147"
  %"$consume_154" = sub i64 %"$gasrem_150", 16
  store i64 %"$consume_154", i64* @_gasrem, align 8
  %"$execptr_load_155" = load i8*, i8** @_execptr, align 8
  %"$add_res_div_156" = alloca %Int256, align 8
  %"$res_div_157" = load %Int256, %Int256* %res_div, align 8
  store %Int256 %"$res_div_157", %Int256* %"$add_res_div_156", align 8
  %"$add_res_rem_158" = alloca %Int256, align 8
  %"$res_rem_159" = load %Int256, %Int256* %res_rem, align 8
  store %Int256 %"$res_rem_159", %Int256* %"$add_res_rem_158", align 8
  %"$add_call_160" = call %Int256* @_add_Int256(i8* %"$execptr_load_155", %Int256* %"$add_res_div_156", %Int256* %"$add_res_rem_158"), !dbg !15
  %"$add_162" = load %Int256, %Int256* %"$add_call_160", align 8
  store %Int256 %"$add_162", %Int256* %res1, align 8, !dbg !15
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %"$have_gas_153"
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %"$b_6" = alloca %Int256, align 8
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %"$have_gas_166"
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %"$have_gas_166"
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  store %Int256 { i256 11111110 }, %Int256* %"$b_6", align 8, !dbg !16
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 1, %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %"$have_gas_171"
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %"$have_gas_171"
  %"$consume_177" = sub i64 %"$gasrem_173", 1
  store i64 %"$consume_177", i64* @_gasrem, align 8
  %"$a_7" = alloca %Int256, align 8
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 1, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_176"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_176"
  %"$consume_182" = sub i64 %"$gasrem_178", 1
  store i64 %"$consume_182", i64* @_gasrem, align 8
  store %Int256 { i256 -7773 }, %Int256* %"$a_7", align 8, !dbg !17
  %"$gasrem_183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_184" = icmp ugt i64 1, %"$gasrem_183"
  br i1 %"$gascmp_184", label %"$out_of_gas_185", label %"$have_gas_186"

"$out_of_gas_185":                                ; preds = %"$have_gas_181"
  call void @_out_of_gas()
  br label %"$have_gas_186"

"$have_gas_186":                                  ; preds = %"$out_of_gas_185", %"$have_gas_181"
  %"$consume_187" = sub i64 %"$gasrem_183", 1
  store i64 %"$consume_187", i64* @_gasrem, align 8
  %"$res_div_8" = alloca %Int256, align 8
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 80, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_186"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_186"
  %"$consume_193" = sub i64 %"$gasrem_189", 80
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %"$execptr_load_194" = load i8*, i8** @_execptr, align 8
  %"$div_$a_7_195" = alloca %Int256, align 8
  %"$$a_7_196" = load %Int256, %Int256* %"$a_7", align 8
  store %Int256 %"$$a_7_196", %Int256* %"$div_$a_7_195", align 8
  %"$div_$b_6_197" = alloca %Int256, align 8
  %"$$b_6_198" = load %Int256, %Int256* %"$b_6", align 8
  store %Int256 %"$$b_6_198", %Int256* %"$div_$b_6_197", align 8
  %"$div_call_199" = call %Int256* @_div_Int256(i8* %"$execptr_load_194", %Int256* %"$div_$a_7_195", %Int256* %"$div_$b_6_197"), !dbg !18
  %"$div_201" = load %Int256, %Int256* %"$div_call_199", align 8
  store %Int256 %"$div_201", %Int256* %"$res_div_8", align 8, !dbg !18
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_192"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %"$res_rem_9" = alloca %Int256, align 8
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 80, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_205"
  %"$consume_212" = sub i64 %"$gasrem_208", 80
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %"$execptr_load_213" = load i8*, i8** @_execptr, align 8
  %"$rem_$a_7_214" = alloca %Int256, align 8
  %"$$a_7_215" = load %Int256, %Int256* %"$a_7", align 8
  store %Int256 %"$$a_7_215", %Int256* %"$rem_$a_7_214", align 8
  %"$rem_$b_6_216" = alloca %Int256, align 8
  %"$$b_6_217" = load %Int256, %Int256* %"$b_6", align 8
  store %Int256 %"$$b_6_217", %Int256* %"$rem_$b_6_216", align 8
  %"$rem_call_218" = call %Int256* @_rem_Int256(i8* %"$execptr_load_213", %Int256* %"$rem_$a_7_214", %Int256* %"$rem_$b_6_216"), !dbg !19
  %"$rem_220" = load %Int256, %Int256* %"$rem_call_218", align 8
  store %Int256 %"$rem_220", %Int256* %"$res_rem_9", align 8, !dbg !19
  %"$gasrem_221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_222" = icmp ugt i64 1, %"$gasrem_221"
  br i1 %"$gascmp_222", label %"$out_of_gas_223", label %"$have_gas_224"

"$out_of_gas_223":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_224"

"$have_gas_224":                                  ; preds = %"$out_of_gas_223", %"$have_gas_211"
  %"$consume_225" = sub i64 %"$gasrem_221", 1
  store i64 %"$consume_225", i64* @_gasrem, align 8
  %res2 = alloca %Int256, align 8
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 16, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %"$have_gas_224"
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %"$have_gas_224"
  %"$consume_231" = sub i64 %"$gasrem_227", 16
  store i64 %"$consume_231", i64* @_gasrem, align 8
  %"$execptr_load_232" = load i8*, i8** @_execptr, align 8
  %"$add_$res_div_8_233" = alloca %Int256, align 8
  %"$$res_div_8_234" = load %Int256, %Int256* %"$res_div_8", align 8
  store %Int256 %"$$res_div_8_234", %Int256* %"$add_$res_div_8_233", align 8
  %"$add_$res_rem_9_235" = alloca %Int256, align 8
  %"$$res_rem_9_236" = load %Int256, %Int256* %"$res_rem_9", align 8
  store %Int256 %"$$res_rem_9_236", %Int256* %"$add_$res_rem_9_235", align 8
  %"$add_call_237" = call %Int256* @_add_Int256(i8* %"$execptr_load_232", %Int256* %"$add_$res_div_8_233", %Int256* %"$add_$res_rem_9_235"), !dbg !20
  %"$add_239" = load %Int256, %Int256* %"$add_call_237", align 8
  store %Int256 %"$add_239", %Int256* %res2, align 8, !dbg !20
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 1, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$have_gas_230"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$have_gas_230"
  %"$consume_244" = sub i64 %"$gasrem_240", 1
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %"$b_10" = alloca %Int256, align 8
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 1, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$have_gas_243"
  %"$consume_249" = sub i64 %"$gasrem_245", 1
  store i64 %"$consume_249", i64* @_gasrem, align 8
  store %Int256 { i256 -10777 }, %Int256* %"$b_10", align 8, !dbg !21
  %"$gasrem_250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_251" = icmp ugt i64 1, %"$gasrem_250"
  br i1 %"$gascmp_251", label %"$out_of_gas_252", label %"$have_gas_253"

"$out_of_gas_252":                                ; preds = %"$have_gas_248"
  call void @_out_of_gas()
  br label %"$have_gas_253"

"$have_gas_253":                                  ; preds = %"$out_of_gas_252", %"$have_gas_248"
  %"$consume_254" = sub i64 %"$gasrem_250", 1
  store i64 %"$consume_254", i64* @_gasrem, align 8
  %"$a_11" = alloca %Int256, align 8
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 1, %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$have_gas_253"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$have_gas_253"
  %"$consume_259" = sub i64 %"$gasrem_255", 1
  store i64 %"$consume_259", i64* @_gasrem, align 8
  store %Int256 { i256 -37 }, %Int256* %"$a_11", align 8, !dbg !22
  %"$gasrem_260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_261" = icmp ugt i64 1, %"$gasrem_260"
  br i1 %"$gascmp_261", label %"$out_of_gas_262", label %"$have_gas_263"

"$out_of_gas_262":                                ; preds = %"$have_gas_258"
  call void @_out_of_gas()
  br label %"$have_gas_263"

"$have_gas_263":                                  ; preds = %"$out_of_gas_262", %"$have_gas_258"
  %"$consume_264" = sub i64 %"$gasrem_260", 1
  store i64 %"$consume_264", i64* @_gasrem, align 8
  %"$res_div_12" = alloca %Int256, align 8
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 80, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_263"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_263"
  %"$consume_270" = sub i64 %"$gasrem_266", 80
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %"$execptr_load_271" = load i8*, i8** @_execptr, align 8
  %"$div_$a_11_272" = alloca %Int256, align 8
  %"$$a_11_273" = load %Int256, %Int256* %"$a_11", align 8
  store %Int256 %"$$a_11_273", %Int256* %"$div_$a_11_272", align 8
  %"$div_$b_10_274" = alloca %Int256, align 8
  %"$$b_10_275" = load %Int256, %Int256* %"$b_10", align 8
  store %Int256 %"$$b_10_275", %Int256* %"$div_$b_10_274", align 8
  %"$div_call_276" = call %Int256* @_div_Int256(i8* %"$execptr_load_271", %Int256* %"$div_$a_11_272", %Int256* %"$div_$b_10_274"), !dbg !23
  %"$div_278" = load %Int256, %Int256* %"$div_call_276", align 8
  store %Int256 %"$div_278", %Int256* %"$res_div_12", align 8, !dbg !23
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_269"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_269"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem, align 8
  %"$res_rem_13" = alloca %Int256, align 8
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 80, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_282"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_282"
  %"$consume_289" = sub i64 %"$gasrem_285", 80
  store i64 %"$consume_289", i64* @_gasrem, align 8
  %"$execptr_load_290" = load i8*, i8** @_execptr, align 8
  %"$rem_$a_11_291" = alloca %Int256, align 8
  %"$$a_11_292" = load %Int256, %Int256* %"$a_11", align 8
  store %Int256 %"$$a_11_292", %Int256* %"$rem_$a_11_291", align 8
  %"$rem_$b_10_293" = alloca %Int256, align 8
  %"$$b_10_294" = load %Int256, %Int256* %"$b_10", align 8
  store %Int256 %"$$b_10_294", %Int256* %"$rem_$b_10_293", align 8
  %"$rem_call_295" = call %Int256* @_rem_Int256(i8* %"$execptr_load_290", %Int256* %"$rem_$a_11_291", %Int256* %"$rem_$b_10_293"), !dbg !24
  %"$rem_297" = load %Int256, %Int256* %"$rem_call_295", align 8
  store %Int256 %"$rem_297", %Int256* %"$res_rem_13", align 8, !dbg !24
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 1, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$have_gas_288"
  %"$consume_302" = sub i64 %"$gasrem_298", 1
  store i64 %"$consume_302", i64* @_gasrem, align 8
  %res3 = alloca %Int256, align 8
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 16, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_301"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_301"
  %"$consume_308" = sub i64 %"$gasrem_304", 16
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %"$execptr_load_309" = load i8*, i8** @_execptr, align 8
  %"$add_$res_div_12_310" = alloca %Int256, align 8
  %"$$res_div_12_311" = load %Int256, %Int256* %"$res_div_12", align 8
  store %Int256 %"$$res_div_12_311", %Int256* %"$add_$res_div_12_310", align 8
  %"$add_$res_rem_13_312" = alloca %Int256, align 8
  %"$$res_rem_13_313" = load %Int256, %Int256* %"$res_rem_13", align 8
  store %Int256 %"$$res_rem_13_313", %Int256* %"$add_$res_rem_13_312", align 8
  %"$add_call_314" = call %Int256* @_add_Int256(i8* %"$execptr_load_309", %Int256* %"$add_$res_div_12_310", %Int256* %"$add_$res_rem_13_312"), !dbg !25
  %"$add_316" = load %Int256, %Int256* %"$add_call_314", align 8
  store %Int256 %"$add_316", %Int256* %res3, align 8, !dbg !25
  %"$gasrem_317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_318" = icmp ugt i64 1, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_307"
  %"$consume_321" = sub i64 %"$gasrem_317", 1
  store i64 %"$consume_321", i64* @_gasrem, align 8
  %"$b_14" = alloca %Int256, align 8
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 1, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$have_gas_320"
  %"$consume_326" = sub i64 %"$gasrem_322", 1
  store i64 %"$consume_326", i64* @_gasrem, align 8
  store %Int256 { i256 1898560 }, %Int256* %"$b_14", align 8, !dbg !26
  %"$gasrem_327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_328" = icmp ugt i64 1, %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %"$have_gas_325"
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %"$have_gas_325"
  %"$consume_331" = sub i64 %"$gasrem_327", 1
  store i64 %"$consume_331", i64* @_gasrem, align 8
  %"$a_15" = alloca %Int256, align 8
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 1, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$have_gas_330"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$have_gas_330"
  %"$consume_336" = sub i64 %"$gasrem_332", 1
  store i64 %"$consume_336", i64* @_gasrem, align 8
  store %Int256 { i256 13323 }, %Int256* %"$a_15", align 8, !dbg !27
  %"$gasrem_337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_338" = icmp ugt i64 1, %"$gasrem_337"
  br i1 %"$gascmp_338", label %"$out_of_gas_339", label %"$have_gas_340"

"$out_of_gas_339":                                ; preds = %"$have_gas_335"
  call void @_out_of_gas()
  br label %"$have_gas_340"

"$have_gas_340":                                  ; preds = %"$out_of_gas_339", %"$have_gas_335"
  %"$consume_341" = sub i64 %"$gasrem_337", 1
  store i64 %"$consume_341", i64* @_gasrem, align 8
  %"$res_div_16" = alloca %Int256, align 8
  %"$gasrem_343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_344" = icmp ugt i64 80, %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %"$have_gas_340"
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %"$have_gas_340"
  %"$consume_347" = sub i64 %"$gasrem_343", 80
  store i64 %"$consume_347", i64* @_gasrem, align 8
  %"$execptr_load_348" = load i8*, i8** @_execptr, align 8
  %"$div_$a_15_349" = alloca %Int256, align 8
  %"$$a_15_350" = load %Int256, %Int256* %"$a_15", align 8
  store %Int256 %"$$a_15_350", %Int256* %"$div_$a_15_349", align 8
  %"$div_$b_14_351" = alloca %Int256, align 8
  %"$$b_14_352" = load %Int256, %Int256* %"$b_14", align 8
  store %Int256 %"$$b_14_352", %Int256* %"$div_$b_14_351", align 8
  %"$div_call_353" = call %Int256* @_div_Int256(i8* %"$execptr_load_348", %Int256* %"$div_$a_15_349", %Int256* %"$div_$b_14_351"), !dbg !28
  %"$div_355" = load %Int256, %Int256* %"$div_call_353", align 8
  store %Int256 %"$div_355", %Int256* %"$res_div_16", align 8, !dbg !28
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_346"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_346"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %"$res_rem_17" = alloca %Int256, align 8
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 80, %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_359"
  %"$consume_366" = sub i64 %"$gasrem_362", 80
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %"$execptr_load_367" = load i8*, i8** @_execptr, align 8
  %"$rem_$a_15_368" = alloca %Int256, align 8
  %"$$a_15_369" = load %Int256, %Int256* %"$a_15", align 8
  store %Int256 %"$$a_15_369", %Int256* %"$rem_$a_15_368", align 8
  %"$rem_$b_14_370" = alloca %Int256, align 8
  %"$$b_14_371" = load %Int256, %Int256* %"$b_14", align 8
  store %Int256 %"$$b_14_371", %Int256* %"$rem_$b_14_370", align 8
  %"$rem_call_372" = call %Int256* @_rem_Int256(i8* %"$execptr_load_367", %Int256* %"$rem_$a_15_368", %Int256* %"$rem_$b_14_370"), !dbg !29
  %"$rem_374" = load %Int256, %Int256* %"$rem_call_372", align 8
  store %Int256 %"$rem_374", %Int256* %"$res_rem_17", align 8, !dbg !29
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 1, %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$have_gas_365"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$have_gas_365"
  %"$consume_379" = sub i64 %"$gasrem_375", 1
  store i64 %"$consume_379", i64* @_gasrem, align 8
  %res4 = alloca %Int256, align 8
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
  %"$add_$res_div_16_387" = alloca %Int256, align 8
  %"$$res_div_16_388" = load %Int256, %Int256* %"$res_div_16", align 8
  store %Int256 %"$$res_div_16_388", %Int256* %"$add_$res_div_16_387", align 8
  %"$add_$res_rem_17_389" = alloca %Int256, align 8
  %"$$res_rem_17_390" = load %Int256, %Int256* %"$res_rem_17", align 8
  store %Int256 %"$$res_rem_17_390", %Int256* %"$add_$res_rem_17_389", align 8
  %"$add_call_391" = call %Int256* @_add_Int256(i8* %"$execptr_load_386", %Int256* %"$add_$res_div_16_387", %Int256* %"$add_$res_rem_17_389"), !dbg !30
  %"$add_393" = load %Int256, %Int256* %"$add_call_391", align 8
  store %Int256 %"$add_393", %Int256* %res4, align 8, !dbg !30
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 1, %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %"$have_gas_384"
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %"$have_gas_384"
  %"$consume_398" = sub i64 %"$gasrem_394", 1
  store i64 %"$consume_398", i64* @_gasrem, align 8
  %res5 = alloca %Int256, align 8
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
  %"$add_res1_406" = alloca %Int256, align 8
  %"$res1_407" = load %Int256, %Int256* %res1, align 8
  store %Int256 %"$res1_407", %Int256* %"$add_res1_406", align 8
  %"$add_res2_408" = alloca %Int256, align 8
  %"$res2_409" = load %Int256, %Int256* %res2, align 8
  store %Int256 %"$res2_409", %Int256* %"$add_res2_408", align 8
  %"$add_call_410" = call %Int256* @_add_Int256(i8* %"$execptr_load_405", %Int256* %"$add_res1_406", %Int256* %"$add_res2_408"), !dbg !31
  %"$add_412" = load %Int256, %Int256* %"$add_call_410", align 8
  store %Int256 %"$add_412", %Int256* %res5, align 8, !dbg !31
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_403"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_403"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %res6 = alloca %Int256, align 8
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 16, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_416"
  %"$consume_423" = sub i64 %"$gasrem_419", 16
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %"$execptr_load_424" = load i8*, i8** @_execptr, align 8
  %"$add_res5_425" = alloca %Int256, align 8
  %"$res5_426" = load %Int256, %Int256* %res5, align 8
  store %Int256 %"$res5_426", %Int256* %"$add_res5_425", align 8
  %"$add_res3_427" = alloca %Int256, align 8
  %"$res3_428" = load %Int256, %Int256* %res3, align 8
  store %Int256 %"$res3_428", %Int256* %"$add_res3_427", align 8
  %"$add_call_429" = call %Int256* @_add_Int256(i8* %"$execptr_load_424", %Int256* %"$add_res5_425", %Int256* %"$add_res3_427"), !dbg !32
  %"$add_431" = load %Int256, %Int256* %"$add_call_429", align 8
  store %Int256 %"$add_431", %Int256* %res6, align 8, !dbg !32
  %"$gasrem_432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_433" = icmp ugt i64 1, %"$gasrem_432"
  br i1 %"$gascmp_433", label %"$out_of_gas_434", label %"$have_gas_435"

"$out_of_gas_434":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_435"

"$have_gas_435":                                  ; preds = %"$out_of_gas_434", %"$have_gas_422"
  %"$consume_436" = sub i64 %"$gasrem_432", 1
  store i64 %"$consume_436", i64* @_gasrem, align 8
  %res7 = alloca %Int256, align 8
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 16, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %"$have_gas_435"
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %"$have_gas_435"
  %"$consume_442" = sub i64 %"$gasrem_438", 16
  store i64 %"$consume_442", i64* @_gasrem, align 8
  %"$execptr_load_443" = load i8*, i8** @_execptr, align 8
  %"$add_res4_444" = alloca %Int256, align 8
  %"$res4_445" = load %Int256, %Int256* %res4, align 8
  store %Int256 %"$res4_445", %Int256* %"$add_res4_444", align 8
  %"$add_res6_446" = alloca %Int256, align 8
  %"$res6_447" = load %Int256, %Int256* %res6, align 8
  store %Int256 %"$res6_447", %Int256* %"$add_res6_446", align 8
  %"$add_call_448" = call %Int256* @_add_Int256(i8* %"$execptr_load_443", %Int256* %"$add_res4_444", %Int256* %"$add_res6_446"), !dbg !33
  %"$add_450" = load %Int256, %Int256* %"$add_call_448", align 8
  store %Int256 %"$add_450", %Int256* %res7, align 8, !dbg !33
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 1, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$have_gas_441"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$have_gas_441"
  %"$consume_455" = sub i64 %"$gasrem_451", 1
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %"$res7_456" = load %Int256, %Int256* %res7, align 8
  store %Int256 %"$res7_456", %Int256* %"$expr_18", align 8, !dbg !34
  %"$$expr_18_457" = load %Int256, %Int256* %"$expr_18", align 8
  store %Int256 %"$$expr_18_457", %Int256* %1, align 8
  ret void
}

declare %Int256* @_div_Int256(i8*, %Int256*, %Int256*)

declare %Int256* @_rem_Int256(i8*, %Int256*, %Int256*)

declare %Int256* @_add_Int256(i8*, %Int256*, %Int256*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$mainval_458" = alloca %Int256, align 8
  %"$memvoidcast_459" = bitcast %Int256* %"$mainval_458" to i8*
  call void @_scilla_expr_fun(i8* null, %Int256* %"$mainval_458")
  %"$execptr_load_460" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_460", %_TyDescrTy_Typ* @"$TyDescr_Int256_33", i8* %"$memvoidcast_459")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "sdivtests3.scilexp", directory: "codegen/expr")
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
