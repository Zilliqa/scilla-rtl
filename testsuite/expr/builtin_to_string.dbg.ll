; let uint32_val = Uint32 2011 in
; let uint64_val = Uint32 2012 in
; let uint128_val = Uint32 6018 in
; let uint256_val = Uint32 551 in
; 
; let int32_val = Int32 -2011 in
; let int64_val = Int32 2012 in
; let int128_val = Int32 -6018 in
; let int256_val = Int32 -551 in
; 
; let bystrx_val = 0xff00cc11 in
; let bystr_val = builtin to_bystr bystrx_val in
; 
; let uint32_str = builtin to_string uint32_val in
; let uint64_str = builtin to_string uint64_val in
; let uint128_str = builtin to_string uint128_val in
; let uint256_str = builtin to_string uint256_val in
; 
; let int32_str = builtin to_string int32_val in
; let int64_str = builtin to_string int64_val in
; let int128_str = builtin to_string int128_val in
; let int256_str = builtin to_string int256_val in
; 
; let bystrx_str = builtin to_string bystrx_val in
; let bystr_str = builtin to_string bystr_val in
; 
; let s_acc = builtin concat uint32_str uint64_str in
; let s_acc = builtin concat s_acc uint128_str in
; let s_acc = builtin concat s_acc uint256_str in
; let s_acc = builtin concat s_acc int32_str in
; let s_acc = builtin concat s_acc int64_str in
; let s_acc = builtin concat s_acc int128_str in
; let s_acc = builtin concat s_acc int256_str in
; let s_acc = builtin concat s_acc bystrx_str in
; let s_acc = builtin concat s_acc bystr_str in
; s_acc
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_15" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Int32 = type { i32 }
%"$ParamDescr_597" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_598" = type { %ParamDescrString, i32, %"$ParamDescr_597"* }
%String = type { i8*, i32 }
%Uint32 = type { i32 }
%Bystr = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_16" = global %"$TyDescrTy_PrimTyp_15" zeroinitializer
@"$TyDescr_Int32_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Int32_Prim_16" to i8*) }
@"$TyDescr_Uint32_Prim_18" = global %"$TyDescrTy_PrimTyp_15" { i32 1, i32 0 }
@"$TyDescr_Uint32_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Uint32_Prim_18" to i8*) }
@"$TyDescr_Int64_Prim_20" = global %"$TyDescrTy_PrimTyp_15" { i32 0, i32 1 }
@"$TyDescr_Int64_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Int64_Prim_20" to i8*) }
@"$TyDescr_Uint64_Prim_22" = global %"$TyDescrTy_PrimTyp_15" { i32 1, i32 1 }
@"$TyDescr_Uint64_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Uint64_Prim_22" to i8*) }
@"$TyDescr_Int128_Prim_24" = global %"$TyDescrTy_PrimTyp_15" { i32 0, i32 2 }
@"$TyDescr_Int128_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Int128_Prim_24" to i8*) }
@"$TyDescr_Uint128_Prim_26" = global %"$TyDescrTy_PrimTyp_15" { i32 1, i32 2 }
@"$TyDescr_Uint128_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Uint128_Prim_26" to i8*) }
@"$TyDescr_Int256_Prim_28" = global %"$TyDescrTy_PrimTyp_15" { i32 0, i32 3 }
@"$TyDescr_Int256_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Int256_Prim_28" to i8*) }
@"$TyDescr_Uint256_Prim_30" = global %"$TyDescrTy_PrimTyp_15" { i32 1, i32 3 }
@"$TyDescr_Uint256_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Uint256_Prim_30" to i8*) }
@"$TyDescr_String_Prim_32" = global %"$TyDescrTy_PrimTyp_15" { i32 2, i32 0 }
@"$TyDescr_String_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_String_Prim_32" to i8*) }
@"$TyDescr_Bnum_Prim_34" = global %"$TyDescrTy_PrimTyp_15" { i32 3, i32 0 }
@"$TyDescr_Bnum_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Bnum_Prim_34" to i8*) }
@"$TyDescr_Message_Prim_36" = global %"$TyDescrTy_PrimTyp_15" { i32 4, i32 0 }
@"$TyDescr_Message_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Message_Prim_36" to i8*) }
@"$TyDescr_Event_Prim_38" = global %"$TyDescrTy_PrimTyp_15" { i32 5, i32 0 }
@"$TyDescr_Event_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Event_Prim_38" to i8*) }
@"$TyDescr_Exception_Prim_40" = global %"$TyDescrTy_PrimTyp_15" { i32 6, i32 0 }
@"$TyDescr_Exception_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Exception_Prim_40" to i8*) }
@"$TyDescr_ReplicateContr_Prim_42" = global %"$TyDescrTy_PrimTyp_15" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_ReplicateContr_Prim_42" to i8*) }
@"$TyDescr_Bystr_Prim_44" = global %"$TyDescrTy_PrimTyp_15" { i32 7, i32 0 }
@"$TyDescr_Bystr_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Bystr_Prim_44" to i8*) }
@"$TyDescr_Bystr4_Prim_46" = global %"$TyDescrTy_PrimTyp_15" { i32 8, i32 4 }
@"$TyDescr_Bystr4_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Bystr4_Prim_46" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_39", %_TyDescrTy_Typ* @"$TyDescr_Int64_21", %_TyDescrTy_Typ* @"$TyDescr_Uint256_31", %_TyDescrTy_Typ* @"$TyDescr_Uint32_19", %_TyDescrTy_Typ* @"$TyDescr_Uint64_23", %_TyDescrTy_Typ* @"$TyDescr_Bnum_35", %_TyDescrTy_Typ* @"$TyDescr_Uint128_27", %_TyDescrTy_Typ* @"$TyDescr_Bystr4_47", %_TyDescrTy_Typ* @"$TyDescr_Exception_41", %_TyDescrTy_Typ* @"$TyDescr_String_33", %_TyDescrTy_Typ* @"$TyDescr_Int256_29", %_TyDescrTy_Typ* @"$TyDescr_Int128_25", %_TyDescrTy_Typ* @"$TyDescr_Bystr_45", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_43", %_TyDescrTy_Typ* @"$TyDescr_Message_37", %_TyDescrTy_Typ* @"$TyDescr_Int32_17"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_597"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_598"] zeroinitializer
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

define internal %String @_scilla_expr_fun(i8* %0) !dbg !10 {
entry:
  %"$expr_14" = alloca %String, align 8
  %"$gasrem_84" = load i64, i64* @_gasrem, align 8
  %"$gascmp_85" = icmp ugt i64 1, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %entry
  %"$consume_88" = sub i64 %"$gasrem_84", 1
  store i64 %"$consume_88", i64* @_gasrem, align 8
  %uint32_val = alloca %Uint32, align 8
  %"$gasrem_89" = load i64, i64* @_gasrem, align 8
  %"$gascmp_90" = icmp ugt i64 1, %"$gasrem_89"
  br i1 %"$gascmp_90", label %"$out_of_gas_91", label %"$have_gas_92"

"$out_of_gas_91":                                 ; preds = %"$have_gas_87"
  call void @_out_of_gas()
  br label %"$have_gas_92"

"$have_gas_92":                                   ; preds = %"$out_of_gas_91", %"$have_gas_87"
  %"$consume_93" = sub i64 %"$gasrem_89", 1
  store i64 %"$consume_93", i64* @_gasrem, align 8
  store %Uint32 { i32 2011 }, %Uint32* %uint32_val, align 4, !dbg !11
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 1, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %"$have_gas_92"
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %"$have_gas_92"
  %"$consume_98" = sub i64 %"$gasrem_94", 1
  store i64 %"$consume_98", i64* @_gasrem, align 8
  %uint64_val = alloca %Uint32, align 8
  %"$gasrem_99" = load i64, i64* @_gasrem, align 8
  %"$gascmp_100" = icmp ugt i64 1, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %"$have_gas_97"
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %"$have_gas_97"
  %"$consume_103" = sub i64 %"$gasrem_99", 1
  store i64 %"$consume_103", i64* @_gasrem, align 8
  store %Uint32 { i32 2012 }, %Uint32* %uint64_val, align 4, !dbg !12
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$have_gas_102"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$have_gas_102"
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %uint128_val = alloca %Uint32, align 8
  %"$gasrem_109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_110" = icmp ugt i64 1, %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %"$have_gas_107"
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %"$have_gas_107"
  %"$consume_113" = sub i64 %"$gasrem_109", 1
  store i64 %"$consume_113", i64* @_gasrem, align 8
  store %Uint32 { i32 6018 }, %Uint32* %uint128_val, align 4, !dbg !13
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %"$have_gas_112"
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %"$have_gas_112"
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem, align 8
  %uint256_val = alloca %Uint32, align 8
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 1, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %"$have_gas_117"
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %"$have_gas_117"
  %"$consume_123" = sub i64 %"$gasrem_119", 1
  store i64 %"$consume_123", i64* @_gasrem, align 8
  store %Uint32 { i32 551 }, %Uint32* %uint256_val, align 4, !dbg !14
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$have_gas_122"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$have_gas_122"
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem, align 8
  %int32_val = alloca %Int32, align 8
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  store %Int32 { i32 -2011 }, %Int32* %int32_val, align 4, !dbg !15
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  %int64_val = alloca %Int32, align 8
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_137"
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem, align 8
  store %Int32 { i32 2012 }, %Int32* %int64_val, align 4, !dbg !16
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_142"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_142"
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem, align 8
  %int128_val = alloca %Int32, align 8
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 1, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %"$have_gas_147"
  %"$consume_153" = sub i64 %"$gasrem_149", 1
  store i64 %"$consume_153", i64* @_gasrem, align 8
  store %Int32 { i32 -6018 }, %Int32* %int128_val, align 4, !dbg !17
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 1, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %"$have_gas_152"
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %"$have_gas_152"
  %"$consume_158" = sub i64 %"$gasrem_154", 1
  store i64 %"$consume_158", i64* @_gasrem, align 8
  %int256_val = alloca %Int32, align 8
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_157"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_157"
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem, align 8
  store %Int32 { i32 -551 }, %Int32* %int256_val, align 4, !dbg !18
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_162"
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  %bystrx_val = alloca [4 x i8], align 1
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %"$have_gas_167"
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem, align 8
  store [4 x i8] c"\FF\00\CC\11", [4 x i8]* %bystrx_val, align 1, !dbg !19
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_172"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_172"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %bystr_val = alloca %Bystr, align 8
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 4, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %"$have_gas_177"
  %"$consume_183" = sub i64 %"$gasrem_179", 4
  store i64 %"$consume_183", i64* @_gasrem, align 8
  %"$execptr_load_184" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bystrx_val_185" = alloca [4 x i8], align 1
  %"$bystrx_val_186" = load [4 x i8], [4 x i8]* %bystrx_val, align 1
  store [4 x i8] %"$bystrx_val_186", [4 x i8]* %"$to_bystr_bystrx_val_185", align 1
  %"$$to_bystr_bystrx_val_185_187" = bitcast [4 x i8]* %"$to_bystr_bystrx_val_185" to i8*
  %"$to_bystr_call_188" = call %Bystr @_to_bystr(i8* %"$execptr_load_184", i32 4, i8* %"$$to_bystr_bystrx_val_185_187"), !dbg !20
  store %Bystr %"$to_bystr_call_188", %Bystr* %bystr_val, align 8, !dbg !20
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_182"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_182"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %uint32_str = alloca %String, align 8
  %"$_literal_cost_uint32_val_194" = alloca %Uint32, align 8
  %"$uint32_val_195" = load %Uint32, %Uint32* %uint32_val, align 4
  store %Uint32 %"$uint32_val_195", %Uint32* %"$_literal_cost_uint32_val_194", align 4
  %"$$_literal_cost_uint32_val_194_196" = bitcast %Uint32* %"$_literal_cost_uint32_val_194" to i8*
  %"$_literal_cost_call_197" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_19", i8* %"$$_literal_cost_uint32_val_194_196")
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 %"$_literal_cost_call_197", %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %"$have_gas_192"
  %"$consume_202" = sub i64 %"$gasrem_198", %"$_literal_cost_call_197"
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %"$execptr_load_203" = load i8*, i8** @_execptr, align 8
  %"$to_string_uint32_val_204" = alloca %Uint32, align 8
  %"$uint32_val_205" = load %Uint32, %Uint32* %uint32_val, align 4
  store %Uint32 %"$uint32_val_205", %Uint32* %"$to_string_uint32_val_204", align 4
  %"$$to_string_uint32_val_204_206" = bitcast %Uint32* %"$to_string_uint32_val_204" to i8*
  %"$to_string_call_207" = call %String @_to_string(i8* %"$execptr_load_203", %_TyDescrTy_Typ* @"$TyDescr_Uint32_19", i8* %"$$to_string_uint32_val_204_206"), !dbg !21
  store %String %"$to_string_call_207", %String* %uint32_str, align 8, !dbg !21
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 1, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_201"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_201"
  %"$consume_212" = sub i64 %"$gasrem_208", 1
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %uint64_str = alloca %String, align 8
  %"$_literal_cost_uint64_val_213" = alloca %Uint32, align 8
  %"$uint64_val_214" = load %Uint32, %Uint32* %uint64_val, align 4
  store %Uint32 %"$uint64_val_214", %Uint32* %"$_literal_cost_uint64_val_213", align 4
  %"$$_literal_cost_uint64_val_213_215" = bitcast %Uint32* %"$_literal_cost_uint64_val_213" to i8*
  %"$_literal_cost_call_216" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_19", i8* %"$$_literal_cost_uint64_val_213_215")
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 %"$_literal_cost_call_216", %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_211"
  %"$consume_221" = sub i64 %"$gasrem_217", %"$_literal_cost_call_216"
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %"$execptr_load_222" = load i8*, i8** @_execptr, align 8
  %"$to_string_uint64_val_223" = alloca %Uint32, align 8
  %"$uint64_val_224" = load %Uint32, %Uint32* %uint64_val, align 4
  store %Uint32 %"$uint64_val_224", %Uint32* %"$to_string_uint64_val_223", align 4
  %"$$to_string_uint64_val_223_225" = bitcast %Uint32* %"$to_string_uint64_val_223" to i8*
  %"$to_string_call_226" = call %String @_to_string(i8* %"$execptr_load_222", %_TyDescrTy_Typ* @"$TyDescr_Uint32_19", i8* %"$$to_string_uint64_val_223_225"), !dbg !22
  store %String %"$to_string_call_226", %String* %uint64_str, align 8, !dbg !22
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 1, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %"$have_gas_220"
  %"$consume_231" = sub i64 %"$gasrem_227", 1
  store i64 %"$consume_231", i64* @_gasrem, align 8
  %uint128_str = alloca %String, align 8
  %"$_literal_cost_uint128_val_232" = alloca %Uint32, align 8
  %"$uint128_val_233" = load %Uint32, %Uint32* %uint128_val, align 4
  store %Uint32 %"$uint128_val_233", %Uint32* %"$_literal_cost_uint128_val_232", align 4
  %"$$_literal_cost_uint128_val_232_234" = bitcast %Uint32* %"$_literal_cost_uint128_val_232" to i8*
  %"$_literal_cost_call_235" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_19", i8* %"$$_literal_cost_uint128_val_232_234")
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 %"$_literal_cost_call_235", %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %"$have_gas_230"
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %"$have_gas_230"
  %"$consume_240" = sub i64 %"$gasrem_236", %"$_literal_cost_call_235"
  store i64 %"$consume_240", i64* @_gasrem, align 8
  %"$execptr_load_241" = load i8*, i8** @_execptr, align 8
  %"$to_string_uint128_val_242" = alloca %Uint32, align 8
  %"$uint128_val_243" = load %Uint32, %Uint32* %uint128_val, align 4
  store %Uint32 %"$uint128_val_243", %Uint32* %"$to_string_uint128_val_242", align 4
  %"$$to_string_uint128_val_242_244" = bitcast %Uint32* %"$to_string_uint128_val_242" to i8*
  %"$to_string_call_245" = call %String @_to_string(i8* %"$execptr_load_241", %_TyDescrTy_Typ* @"$TyDescr_Uint32_19", i8* %"$$to_string_uint128_val_242_244"), !dbg !23
  store %String %"$to_string_call_245", %String* %uint128_str, align 8, !dbg !23
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 1, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$have_gas_239"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$have_gas_239"
  %"$consume_250" = sub i64 %"$gasrem_246", 1
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %uint256_str = alloca %String, align 8
  %"$_literal_cost_uint256_val_251" = alloca %Uint32, align 8
  %"$uint256_val_252" = load %Uint32, %Uint32* %uint256_val, align 4
  store %Uint32 %"$uint256_val_252", %Uint32* %"$_literal_cost_uint256_val_251", align 4
  %"$$_literal_cost_uint256_val_251_253" = bitcast %Uint32* %"$_literal_cost_uint256_val_251" to i8*
  %"$_literal_cost_call_254" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_19", i8* %"$$_literal_cost_uint256_val_251_253")
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 %"$_literal_cost_call_254", %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$have_gas_249"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$have_gas_249"
  %"$consume_259" = sub i64 %"$gasrem_255", %"$_literal_cost_call_254"
  store i64 %"$consume_259", i64* @_gasrem, align 8
  %"$execptr_load_260" = load i8*, i8** @_execptr, align 8
  %"$to_string_uint256_val_261" = alloca %Uint32, align 8
  %"$uint256_val_262" = load %Uint32, %Uint32* %uint256_val, align 4
  store %Uint32 %"$uint256_val_262", %Uint32* %"$to_string_uint256_val_261", align 4
  %"$$to_string_uint256_val_261_263" = bitcast %Uint32* %"$to_string_uint256_val_261" to i8*
  %"$to_string_call_264" = call %String @_to_string(i8* %"$execptr_load_260", %_TyDescrTy_Typ* @"$TyDescr_Uint32_19", i8* %"$$to_string_uint256_val_261_263"), !dbg !24
  store %String %"$to_string_call_264", %String* %uint256_str, align 8, !dbg !24
  %"$gasrem_265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_266" = icmp ugt i64 1, %"$gasrem_265"
  br i1 %"$gascmp_266", label %"$out_of_gas_267", label %"$have_gas_268"

"$out_of_gas_267":                                ; preds = %"$have_gas_258"
  call void @_out_of_gas()
  br label %"$have_gas_268"

"$have_gas_268":                                  ; preds = %"$out_of_gas_267", %"$have_gas_258"
  %"$consume_269" = sub i64 %"$gasrem_265", 1
  store i64 %"$consume_269", i64* @_gasrem, align 8
  %int32_str = alloca %String, align 8
  %"$_literal_cost_int32_val_270" = alloca %Int32, align 8
  %"$int32_val_271" = load %Int32, %Int32* %int32_val, align 4
  store %Int32 %"$int32_val_271", %Int32* %"$_literal_cost_int32_val_270", align 4
  %"$$_literal_cost_int32_val_270_272" = bitcast %Int32* %"$_literal_cost_int32_val_270" to i8*
  %"$_literal_cost_call_273" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_17", i8* %"$$_literal_cost_int32_val_270_272")
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 %"$_literal_cost_call_273", %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$have_gas_268"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$have_gas_268"
  %"$consume_278" = sub i64 %"$gasrem_274", %"$_literal_cost_call_273"
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %"$execptr_load_279" = load i8*, i8** @_execptr, align 8
  %"$to_string_int32_val_280" = alloca %Int32, align 8
  %"$int32_val_281" = load %Int32, %Int32* %int32_val, align 4
  store %Int32 %"$int32_val_281", %Int32* %"$to_string_int32_val_280", align 4
  %"$$to_string_int32_val_280_282" = bitcast %Int32* %"$to_string_int32_val_280" to i8*
  %"$to_string_call_283" = call %String @_to_string(i8* %"$execptr_load_279", %_TyDescrTy_Typ* @"$TyDescr_Int32_17", i8* %"$$to_string_int32_val_280_282"), !dbg !25
  store %String %"$to_string_call_283", %String* %int32_str, align 8, !dbg !25
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_277"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %int64_str = alloca %String, align 8
  %"$_literal_cost_int64_val_289" = alloca %Int32, align 8
  %"$int64_val_290" = load %Int32, %Int32* %int64_val, align 4
  store %Int32 %"$int64_val_290", %Int32* %"$_literal_cost_int64_val_289", align 4
  %"$$_literal_cost_int64_val_289_291" = bitcast %Int32* %"$_literal_cost_int64_val_289" to i8*
  %"$_literal_cost_call_292" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_17", i8* %"$$_literal_cost_int64_val_289_291")
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 %"$_literal_cost_call_292", %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %"$have_gas_287"
  %"$consume_297" = sub i64 %"$gasrem_293", %"$_literal_cost_call_292"
  store i64 %"$consume_297", i64* @_gasrem, align 8
  %"$execptr_load_298" = load i8*, i8** @_execptr, align 8
  %"$to_string_int64_val_299" = alloca %Int32, align 8
  %"$int64_val_300" = load %Int32, %Int32* %int64_val, align 4
  store %Int32 %"$int64_val_300", %Int32* %"$to_string_int64_val_299", align 4
  %"$$to_string_int64_val_299_301" = bitcast %Int32* %"$to_string_int64_val_299" to i8*
  %"$to_string_call_302" = call %String @_to_string(i8* %"$execptr_load_298", %_TyDescrTy_Typ* @"$TyDescr_Int32_17", i8* %"$$to_string_int64_val_299_301"), !dbg !26
  store %String %"$to_string_call_302", %String* %int64_str, align 8, !dbg !26
  %"$gasrem_303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_304" = icmp ugt i64 1, %"$gasrem_303"
  br i1 %"$gascmp_304", label %"$out_of_gas_305", label %"$have_gas_306"

"$out_of_gas_305":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_306"

"$have_gas_306":                                  ; preds = %"$out_of_gas_305", %"$have_gas_296"
  %"$consume_307" = sub i64 %"$gasrem_303", 1
  store i64 %"$consume_307", i64* @_gasrem, align 8
  %int128_str = alloca %String, align 8
  %"$_literal_cost_int128_val_308" = alloca %Int32, align 8
  %"$int128_val_309" = load %Int32, %Int32* %int128_val, align 4
  store %Int32 %"$int128_val_309", %Int32* %"$_literal_cost_int128_val_308", align 4
  %"$$_literal_cost_int128_val_308_310" = bitcast %Int32* %"$_literal_cost_int128_val_308" to i8*
  %"$_literal_cost_call_311" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_17", i8* %"$$_literal_cost_int128_val_308_310")
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 %"$_literal_cost_call_311", %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_306"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_306"
  %"$consume_316" = sub i64 %"$gasrem_312", %"$_literal_cost_call_311"
  store i64 %"$consume_316", i64* @_gasrem, align 8
  %"$execptr_load_317" = load i8*, i8** @_execptr, align 8
  %"$to_string_int128_val_318" = alloca %Int32, align 8
  %"$int128_val_319" = load %Int32, %Int32* %int128_val, align 4
  store %Int32 %"$int128_val_319", %Int32* %"$to_string_int128_val_318", align 4
  %"$$to_string_int128_val_318_320" = bitcast %Int32* %"$to_string_int128_val_318" to i8*
  %"$to_string_call_321" = call %String @_to_string(i8* %"$execptr_load_317", %_TyDescrTy_Typ* @"$TyDescr_Int32_17", i8* %"$$to_string_int128_val_318_320"), !dbg !27
  store %String %"$to_string_call_321", %String* %int128_str, align 8, !dbg !27
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 1, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$have_gas_315"
  %"$consume_326" = sub i64 %"$gasrem_322", 1
  store i64 %"$consume_326", i64* @_gasrem, align 8
  %int256_str = alloca %String, align 8
  %"$_literal_cost_int256_val_327" = alloca %Int32, align 8
  %"$int256_val_328" = load %Int32, %Int32* %int256_val, align 4
  store %Int32 %"$int256_val_328", %Int32* %"$_literal_cost_int256_val_327", align 4
  %"$$_literal_cost_int256_val_327_329" = bitcast %Int32* %"$_literal_cost_int256_val_327" to i8*
  %"$_literal_cost_call_330" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_17", i8* %"$$_literal_cost_int256_val_327_329")
  %"$gasrem_331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_332" = icmp ugt i64 %"$_literal_cost_call_330", %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %"$have_gas_325"
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %"$have_gas_325"
  %"$consume_335" = sub i64 %"$gasrem_331", %"$_literal_cost_call_330"
  store i64 %"$consume_335", i64* @_gasrem, align 8
  %"$execptr_load_336" = load i8*, i8** @_execptr, align 8
  %"$to_string_int256_val_337" = alloca %Int32, align 8
  %"$int256_val_338" = load %Int32, %Int32* %int256_val, align 4
  store %Int32 %"$int256_val_338", %Int32* %"$to_string_int256_val_337", align 4
  %"$$to_string_int256_val_337_339" = bitcast %Int32* %"$to_string_int256_val_337" to i8*
  %"$to_string_call_340" = call %String @_to_string(i8* %"$execptr_load_336", %_TyDescrTy_Typ* @"$TyDescr_Int32_17", i8* %"$$to_string_int256_val_337_339"), !dbg !28
  store %String %"$to_string_call_340", %String* %int256_str, align 8, !dbg !28
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %"$have_gas_334"
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  %bystrx_str = alloca %String, align 8
  %"$_literal_cost_bystrx_val_346" = alloca [4 x i8], align 1
  %"$bystrx_val_347" = load [4 x i8], [4 x i8]* %bystrx_val, align 1
  store [4 x i8] %"$bystrx_val_347", [4 x i8]* %"$_literal_cost_bystrx_val_346", align 1
  %"$$_literal_cost_bystrx_val_346_348" = bitcast [4 x i8]* %"$_literal_cost_bystrx_val_346" to i8*
  %"$_literal_cost_call_349" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr4_47", i8* %"$$_literal_cost_bystrx_val_346_348")
  %"$gasrem_350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_351" = icmp ugt i64 %"$_literal_cost_call_349", %"$gasrem_350"
  br i1 %"$gascmp_351", label %"$out_of_gas_352", label %"$have_gas_353"

"$out_of_gas_352":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_353"

"$have_gas_353":                                  ; preds = %"$out_of_gas_352", %"$have_gas_344"
  %"$consume_354" = sub i64 %"$gasrem_350", %"$_literal_cost_call_349"
  store i64 %"$consume_354", i64* @_gasrem, align 8
  %"$execptr_load_355" = load i8*, i8** @_execptr, align 8
  %"$to_string_bystrx_val_356" = alloca [4 x i8], align 1
  %"$bystrx_val_357" = load [4 x i8], [4 x i8]* %bystrx_val, align 1
  store [4 x i8] %"$bystrx_val_357", [4 x i8]* %"$to_string_bystrx_val_356", align 1
  %"$$to_string_bystrx_val_356_358" = bitcast [4 x i8]* %"$to_string_bystrx_val_356" to i8*
  %"$to_string_call_359" = call %String @_to_string(i8* %"$execptr_load_355", %_TyDescrTy_Typ* @"$TyDescr_Bystr4_47", i8* %"$$to_string_bystrx_val_356_358"), !dbg !29
  store %String %"$to_string_call_359", %String* %bystrx_str, align 8, !dbg !29
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_353"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_353"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %bystr_str = alloca %String, align 8
  %"$_literal_cost_bystr_val_365" = alloca %Bystr, align 8
  %"$bystr_val_366" = load %Bystr, %Bystr* %bystr_val, align 8
  store %Bystr %"$bystr_val_366", %Bystr* %"$_literal_cost_bystr_val_365", align 8
  %"$$_literal_cost_bystr_val_365_367" = bitcast %Bystr* %"$_literal_cost_bystr_val_365" to i8*
  %"$_literal_cost_call_368" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_45", i8* %"$$_literal_cost_bystr_val_365_367")
  %"$gasrem_369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_370" = icmp ugt i64 %"$_literal_cost_call_368", %"$gasrem_369"
  br i1 %"$gascmp_370", label %"$out_of_gas_371", label %"$have_gas_372"

"$out_of_gas_371":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_372"

"$have_gas_372":                                  ; preds = %"$out_of_gas_371", %"$have_gas_363"
  %"$consume_373" = sub i64 %"$gasrem_369", %"$_literal_cost_call_368"
  store i64 %"$consume_373", i64* @_gasrem, align 8
  %"$execptr_load_374" = load i8*, i8** @_execptr, align 8
  %"$to_string_bystr_val_375" = alloca %Bystr, align 8
  %"$bystr_val_376" = load %Bystr, %Bystr* %bystr_val, align 8
  store %Bystr %"$bystr_val_376", %Bystr* %"$to_string_bystr_val_375", align 8
  %"$$to_string_bystr_val_375_377" = bitcast %Bystr* %"$to_string_bystr_val_375" to i8*
  %"$to_string_call_378" = call %String @_to_string(i8* %"$execptr_load_374", %_TyDescrTy_Typ* @"$TyDescr_Bystr_45", i8* %"$$to_string_bystr_val_375_377"), !dbg !30
  store %String %"$to_string_call_378", %String* %bystr_str, align 8, !dbg !30
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_372"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_372"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %s_acc = alloca %String, align 8
  %"$_literal_cost_uint32_str_384" = alloca %String, align 8
  %"$uint32_str_385" = load %String, %String* %uint32_str, align 8
  store %String %"$uint32_str_385", %String* %"$_literal_cost_uint32_str_384", align 8
  %"$$_literal_cost_uint32_str_384_386" = bitcast %String* %"$_literal_cost_uint32_str_384" to i8*
  %"$_literal_cost_call_387" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_uint32_str_384_386")
  %"$_literal_cost_uint64_str_388" = alloca %String, align 8
  %"$uint64_str_389" = load %String, %String* %uint64_str, align 8
  store %String %"$uint64_str_389", %String* %"$_literal_cost_uint64_str_388", align 8
  %"$$_literal_cost_uint64_str_388_390" = bitcast %String* %"$_literal_cost_uint64_str_388" to i8*
  %"$_literal_cost_call_391" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_uint64_str_388_390")
  %"$gasadd_392" = add i64 %"$_literal_cost_call_387", %"$_literal_cost_call_391"
  %"$gasrem_393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_394" = icmp ugt i64 %"$gasadd_392", %"$gasrem_393"
  br i1 %"$gascmp_394", label %"$out_of_gas_395", label %"$have_gas_396"

"$out_of_gas_395":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_396"

"$have_gas_396":                                  ; preds = %"$out_of_gas_395", %"$have_gas_382"
  %"$consume_397" = sub i64 %"$gasrem_393", %"$gasadd_392"
  store i64 %"$consume_397", i64* @_gasrem, align 8
  %"$execptr_load_398" = load i8*, i8** @_execptr, align 8
  %"$uint32_str_399" = load %String, %String* %uint32_str, align 8
  %"$uint64_str_400" = load %String, %String* %uint64_str, align 8
  %"$concat_call_401" = call %String @_concat_String(i8* %"$execptr_load_398", %String %"$uint32_str_399", %String %"$uint64_str_400"), !dbg !31
  store %String %"$concat_call_401", %String* %s_acc, align 8, !dbg !31
  %"$gasrem_402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_403" = icmp ugt i64 1, %"$gasrem_402"
  br i1 %"$gascmp_403", label %"$out_of_gas_404", label %"$have_gas_405"

"$out_of_gas_404":                                ; preds = %"$have_gas_396"
  call void @_out_of_gas()
  br label %"$have_gas_405"

"$have_gas_405":                                  ; preds = %"$out_of_gas_404", %"$have_gas_396"
  %"$consume_406" = sub i64 %"$gasrem_402", 1
  store i64 %"$consume_406", i64* @_gasrem, align 8
  %"$s_acc_6" = alloca %String, align 8
  %"$_literal_cost_s_acc_407" = alloca %String, align 8
  %"$s_acc_408" = load %String, %String* %s_acc, align 8
  store %String %"$s_acc_408", %String* %"$_literal_cost_s_acc_407", align 8
  %"$$_literal_cost_s_acc_407_409" = bitcast %String* %"$_literal_cost_s_acc_407" to i8*
  %"$_literal_cost_call_410" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_s_acc_407_409")
  %"$_literal_cost_uint128_str_411" = alloca %String, align 8
  %"$uint128_str_412" = load %String, %String* %uint128_str, align 8
  store %String %"$uint128_str_412", %String* %"$_literal_cost_uint128_str_411", align 8
  %"$$_literal_cost_uint128_str_411_413" = bitcast %String* %"$_literal_cost_uint128_str_411" to i8*
  %"$_literal_cost_call_414" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_uint128_str_411_413")
  %"$gasadd_415" = add i64 %"$_literal_cost_call_410", %"$_literal_cost_call_414"
  %"$gasrem_416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_417" = icmp ugt i64 %"$gasadd_415", %"$gasrem_416"
  br i1 %"$gascmp_417", label %"$out_of_gas_418", label %"$have_gas_419"

"$out_of_gas_418":                                ; preds = %"$have_gas_405"
  call void @_out_of_gas()
  br label %"$have_gas_419"

"$have_gas_419":                                  ; preds = %"$out_of_gas_418", %"$have_gas_405"
  %"$consume_420" = sub i64 %"$gasrem_416", %"$gasadd_415"
  store i64 %"$consume_420", i64* @_gasrem, align 8
  %"$execptr_load_421" = load i8*, i8** @_execptr, align 8
  %"$s_acc_422" = load %String, %String* %s_acc, align 8
  %"$uint128_str_423" = load %String, %String* %uint128_str, align 8
  %"$concat_call_424" = call %String @_concat_String(i8* %"$execptr_load_421", %String %"$s_acc_422", %String %"$uint128_str_423"), !dbg !32
  store %String %"$concat_call_424", %String* %"$s_acc_6", align 8, !dbg !32
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 1, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_419"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_419"
  %"$consume_429" = sub i64 %"$gasrem_425", 1
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %"$s_acc_7" = alloca %String, align 8
  %"$_literal_cost_$s_acc_6_430" = alloca %String, align 8
  %"$$s_acc_6_431" = load %String, %String* %"$s_acc_6", align 8
  store %String %"$$s_acc_6_431", %String* %"$_literal_cost_$s_acc_6_430", align 8
  %"$$_literal_cost_$s_acc_6_430_432" = bitcast %String* %"$_literal_cost_$s_acc_6_430" to i8*
  %"$_literal_cost_call_433" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_$s_acc_6_430_432")
  %"$_literal_cost_uint256_str_434" = alloca %String, align 8
  %"$uint256_str_435" = load %String, %String* %uint256_str, align 8
  store %String %"$uint256_str_435", %String* %"$_literal_cost_uint256_str_434", align 8
  %"$$_literal_cost_uint256_str_434_436" = bitcast %String* %"$_literal_cost_uint256_str_434" to i8*
  %"$_literal_cost_call_437" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_uint256_str_434_436")
  %"$gasadd_438" = add i64 %"$_literal_cost_call_433", %"$_literal_cost_call_437"
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 %"$gasadd_438", %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_428"
  %"$consume_443" = sub i64 %"$gasrem_439", %"$gasadd_438"
  store i64 %"$consume_443", i64* @_gasrem, align 8
  %"$execptr_load_444" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_6_445" = load %String, %String* %"$s_acc_6", align 8
  %"$uint256_str_446" = load %String, %String* %uint256_str, align 8
  %"$concat_call_447" = call %String @_concat_String(i8* %"$execptr_load_444", %String %"$$s_acc_6_445", %String %"$uint256_str_446"), !dbg !33
  store %String %"$concat_call_447", %String* %"$s_acc_7", align 8, !dbg !33
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 1, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_442"
  %"$consume_452" = sub i64 %"$gasrem_448", 1
  store i64 %"$consume_452", i64* @_gasrem, align 8
  %"$s_acc_8" = alloca %String, align 8
  %"$_literal_cost_$s_acc_7_453" = alloca %String, align 8
  %"$$s_acc_7_454" = load %String, %String* %"$s_acc_7", align 8
  store %String %"$$s_acc_7_454", %String* %"$_literal_cost_$s_acc_7_453", align 8
  %"$$_literal_cost_$s_acc_7_453_455" = bitcast %String* %"$_literal_cost_$s_acc_7_453" to i8*
  %"$_literal_cost_call_456" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_$s_acc_7_453_455")
  %"$_literal_cost_int32_str_457" = alloca %String, align 8
  %"$int32_str_458" = load %String, %String* %int32_str, align 8
  store %String %"$int32_str_458", %String* %"$_literal_cost_int32_str_457", align 8
  %"$$_literal_cost_int32_str_457_459" = bitcast %String* %"$_literal_cost_int32_str_457" to i8*
  %"$_literal_cost_call_460" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_int32_str_457_459")
  %"$gasadd_461" = add i64 %"$_literal_cost_call_456", %"$_literal_cost_call_460"
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 %"$gasadd_461", %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %"$have_gas_451"
  %"$consume_466" = sub i64 %"$gasrem_462", %"$gasadd_461"
  store i64 %"$consume_466", i64* @_gasrem, align 8
  %"$execptr_load_467" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_7_468" = load %String, %String* %"$s_acc_7", align 8
  %"$int32_str_469" = load %String, %String* %int32_str, align 8
  %"$concat_call_470" = call %String @_concat_String(i8* %"$execptr_load_467", %String %"$$s_acc_7_468", %String %"$int32_str_469"), !dbg !34
  store %String %"$concat_call_470", %String* %"$s_acc_8", align 8, !dbg !34
  %"$gasrem_471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_472" = icmp ugt i64 1, %"$gasrem_471"
  br i1 %"$gascmp_472", label %"$out_of_gas_473", label %"$have_gas_474"

"$out_of_gas_473":                                ; preds = %"$have_gas_465"
  call void @_out_of_gas()
  br label %"$have_gas_474"

"$have_gas_474":                                  ; preds = %"$out_of_gas_473", %"$have_gas_465"
  %"$consume_475" = sub i64 %"$gasrem_471", 1
  store i64 %"$consume_475", i64* @_gasrem, align 8
  %"$s_acc_9" = alloca %String, align 8
  %"$_literal_cost_$s_acc_8_476" = alloca %String, align 8
  %"$$s_acc_8_477" = load %String, %String* %"$s_acc_8", align 8
  store %String %"$$s_acc_8_477", %String* %"$_literal_cost_$s_acc_8_476", align 8
  %"$$_literal_cost_$s_acc_8_476_478" = bitcast %String* %"$_literal_cost_$s_acc_8_476" to i8*
  %"$_literal_cost_call_479" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_$s_acc_8_476_478")
  %"$_literal_cost_int64_str_480" = alloca %String, align 8
  %"$int64_str_481" = load %String, %String* %int64_str, align 8
  store %String %"$int64_str_481", %String* %"$_literal_cost_int64_str_480", align 8
  %"$$_literal_cost_int64_str_480_482" = bitcast %String* %"$_literal_cost_int64_str_480" to i8*
  %"$_literal_cost_call_483" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_int64_str_480_482")
  %"$gasadd_484" = add i64 %"$_literal_cost_call_479", %"$_literal_cost_call_483"
  %"$gasrem_485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_486" = icmp ugt i64 %"$gasadd_484", %"$gasrem_485"
  br i1 %"$gascmp_486", label %"$out_of_gas_487", label %"$have_gas_488"

"$out_of_gas_487":                                ; preds = %"$have_gas_474"
  call void @_out_of_gas()
  br label %"$have_gas_488"

"$have_gas_488":                                  ; preds = %"$out_of_gas_487", %"$have_gas_474"
  %"$consume_489" = sub i64 %"$gasrem_485", %"$gasadd_484"
  store i64 %"$consume_489", i64* @_gasrem, align 8
  %"$execptr_load_490" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_8_491" = load %String, %String* %"$s_acc_8", align 8
  %"$int64_str_492" = load %String, %String* %int64_str, align 8
  %"$concat_call_493" = call %String @_concat_String(i8* %"$execptr_load_490", %String %"$$s_acc_8_491", %String %"$int64_str_492"), !dbg !35
  store %String %"$concat_call_493", %String* %"$s_acc_9", align 8, !dbg !35
  %"$gasrem_494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_495" = icmp ugt i64 1, %"$gasrem_494"
  br i1 %"$gascmp_495", label %"$out_of_gas_496", label %"$have_gas_497"

"$out_of_gas_496":                                ; preds = %"$have_gas_488"
  call void @_out_of_gas()
  br label %"$have_gas_497"

"$have_gas_497":                                  ; preds = %"$out_of_gas_496", %"$have_gas_488"
  %"$consume_498" = sub i64 %"$gasrem_494", 1
  store i64 %"$consume_498", i64* @_gasrem, align 8
  %"$s_acc_10" = alloca %String, align 8
  %"$_literal_cost_$s_acc_9_499" = alloca %String, align 8
  %"$$s_acc_9_500" = load %String, %String* %"$s_acc_9", align 8
  store %String %"$$s_acc_9_500", %String* %"$_literal_cost_$s_acc_9_499", align 8
  %"$$_literal_cost_$s_acc_9_499_501" = bitcast %String* %"$_literal_cost_$s_acc_9_499" to i8*
  %"$_literal_cost_call_502" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_$s_acc_9_499_501")
  %"$_literal_cost_int128_str_503" = alloca %String, align 8
  %"$int128_str_504" = load %String, %String* %int128_str, align 8
  store %String %"$int128_str_504", %String* %"$_literal_cost_int128_str_503", align 8
  %"$$_literal_cost_int128_str_503_505" = bitcast %String* %"$_literal_cost_int128_str_503" to i8*
  %"$_literal_cost_call_506" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_int128_str_503_505")
  %"$gasadd_507" = add i64 %"$_literal_cost_call_502", %"$_literal_cost_call_506"
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 %"$gasadd_507", %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %"$have_gas_497"
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %"$have_gas_497"
  %"$consume_512" = sub i64 %"$gasrem_508", %"$gasadd_507"
  store i64 %"$consume_512", i64* @_gasrem, align 8
  %"$execptr_load_513" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_9_514" = load %String, %String* %"$s_acc_9", align 8
  %"$int128_str_515" = load %String, %String* %int128_str, align 8
  %"$concat_call_516" = call %String @_concat_String(i8* %"$execptr_load_513", %String %"$$s_acc_9_514", %String %"$int128_str_515"), !dbg !36
  store %String %"$concat_call_516", %String* %"$s_acc_10", align 8, !dbg !36
  %"$gasrem_517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_518" = icmp ugt i64 1, %"$gasrem_517"
  br i1 %"$gascmp_518", label %"$out_of_gas_519", label %"$have_gas_520"

"$out_of_gas_519":                                ; preds = %"$have_gas_511"
  call void @_out_of_gas()
  br label %"$have_gas_520"

"$have_gas_520":                                  ; preds = %"$out_of_gas_519", %"$have_gas_511"
  %"$consume_521" = sub i64 %"$gasrem_517", 1
  store i64 %"$consume_521", i64* @_gasrem, align 8
  %"$s_acc_11" = alloca %String, align 8
  %"$_literal_cost_$s_acc_10_522" = alloca %String, align 8
  %"$$s_acc_10_523" = load %String, %String* %"$s_acc_10", align 8
  store %String %"$$s_acc_10_523", %String* %"$_literal_cost_$s_acc_10_522", align 8
  %"$$_literal_cost_$s_acc_10_522_524" = bitcast %String* %"$_literal_cost_$s_acc_10_522" to i8*
  %"$_literal_cost_call_525" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_$s_acc_10_522_524")
  %"$_literal_cost_int256_str_526" = alloca %String, align 8
  %"$int256_str_527" = load %String, %String* %int256_str, align 8
  store %String %"$int256_str_527", %String* %"$_literal_cost_int256_str_526", align 8
  %"$$_literal_cost_int256_str_526_528" = bitcast %String* %"$_literal_cost_int256_str_526" to i8*
  %"$_literal_cost_call_529" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_int256_str_526_528")
  %"$gasadd_530" = add i64 %"$_literal_cost_call_525", %"$_literal_cost_call_529"
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 %"$gasadd_530", %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$have_gas_520"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$have_gas_520"
  %"$consume_535" = sub i64 %"$gasrem_531", %"$gasadd_530"
  store i64 %"$consume_535", i64* @_gasrem, align 8
  %"$execptr_load_536" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_10_537" = load %String, %String* %"$s_acc_10", align 8
  %"$int256_str_538" = load %String, %String* %int256_str, align 8
  %"$concat_call_539" = call %String @_concat_String(i8* %"$execptr_load_536", %String %"$$s_acc_10_537", %String %"$int256_str_538"), !dbg !37
  store %String %"$concat_call_539", %String* %"$s_acc_11", align 8, !dbg !37
  %"$gasrem_540" = load i64, i64* @_gasrem, align 8
  %"$gascmp_541" = icmp ugt i64 1, %"$gasrem_540"
  br i1 %"$gascmp_541", label %"$out_of_gas_542", label %"$have_gas_543"

"$out_of_gas_542":                                ; preds = %"$have_gas_534"
  call void @_out_of_gas()
  br label %"$have_gas_543"

"$have_gas_543":                                  ; preds = %"$out_of_gas_542", %"$have_gas_534"
  %"$consume_544" = sub i64 %"$gasrem_540", 1
  store i64 %"$consume_544", i64* @_gasrem, align 8
  %"$s_acc_12" = alloca %String, align 8
  %"$_literal_cost_$s_acc_11_545" = alloca %String, align 8
  %"$$s_acc_11_546" = load %String, %String* %"$s_acc_11", align 8
  store %String %"$$s_acc_11_546", %String* %"$_literal_cost_$s_acc_11_545", align 8
  %"$$_literal_cost_$s_acc_11_545_547" = bitcast %String* %"$_literal_cost_$s_acc_11_545" to i8*
  %"$_literal_cost_call_548" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_$s_acc_11_545_547")
  %"$_literal_cost_bystrx_str_549" = alloca %String, align 8
  %"$bystrx_str_550" = load %String, %String* %bystrx_str, align 8
  store %String %"$bystrx_str_550", %String* %"$_literal_cost_bystrx_str_549", align 8
  %"$$_literal_cost_bystrx_str_549_551" = bitcast %String* %"$_literal_cost_bystrx_str_549" to i8*
  %"$_literal_cost_call_552" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_bystrx_str_549_551")
  %"$gasadd_553" = add i64 %"$_literal_cost_call_548", %"$_literal_cost_call_552"
  %"$gasrem_554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_555" = icmp ugt i64 %"$gasadd_553", %"$gasrem_554"
  br i1 %"$gascmp_555", label %"$out_of_gas_556", label %"$have_gas_557"

"$out_of_gas_556":                                ; preds = %"$have_gas_543"
  call void @_out_of_gas()
  br label %"$have_gas_557"

"$have_gas_557":                                  ; preds = %"$out_of_gas_556", %"$have_gas_543"
  %"$consume_558" = sub i64 %"$gasrem_554", %"$gasadd_553"
  store i64 %"$consume_558", i64* @_gasrem, align 8
  %"$execptr_load_559" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_11_560" = load %String, %String* %"$s_acc_11", align 8
  %"$bystrx_str_561" = load %String, %String* %bystrx_str, align 8
  %"$concat_call_562" = call %String @_concat_String(i8* %"$execptr_load_559", %String %"$$s_acc_11_560", %String %"$bystrx_str_561"), !dbg !38
  store %String %"$concat_call_562", %String* %"$s_acc_12", align 8, !dbg !38
  %"$gasrem_563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_564" = icmp ugt i64 1, %"$gasrem_563"
  br i1 %"$gascmp_564", label %"$out_of_gas_565", label %"$have_gas_566"

"$out_of_gas_565":                                ; preds = %"$have_gas_557"
  call void @_out_of_gas()
  br label %"$have_gas_566"

"$have_gas_566":                                  ; preds = %"$out_of_gas_565", %"$have_gas_557"
  %"$consume_567" = sub i64 %"$gasrem_563", 1
  store i64 %"$consume_567", i64* @_gasrem, align 8
  %"$s_acc_13" = alloca %String, align 8
  %"$_literal_cost_$s_acc_12_568" = alloca %String, align 8
  %"$$s_acc_12_569" = load %String, %String* %"$s_acc_12", align 8
  store %String %"$$s_acc_12_569", %String* %"$_literal_cost_$s_acc_12_568", align 8
  %"$$_literal_cost_$s_acc_12_568_570" = bitcast %String* %"$_literal_cost_$s_acc_12_568" to i8*
  %"$_literal_cost_call_571" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_$s_acc_12_568_570")
  %"$_literal_cost_bystr_str_572" = alloca %String, align 8
  %"$bystr_str_573" = load %String, %String* %bystr_str, align 8
  store %String %"$bystr_str_573", %String* %"$_literal_cost_bystr_str_572", align 8
  %"$$_literal_cost_bystr_str_572_574" = bitcast %String* %"$_literal_cost_bystr_str_572" to i8*
  %"$_literal_cost_call_575" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_bystr_str_572_574")
  %"$gasadd_576" = add i64 %"$_literal_cost_call_571", %"$_literal_cost_call_575"
  %"$gasrem_577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_578" = icmp ugt i64 %"$gasadd_576", %"$gasrem_577"
  br i1 %"$gascmp_578", label %"$out_of_gas_579", label %"$have_gas_580"

"$out_of_gas_579":                                ; preds = %"$have_gas_566"
  call void @_out_of_gas()
  br label %"$have_gas_580"

"$have_gas_580":                                  ; preds = %"$out_of_gas_579", %"$have_gas_566"
  %"$consume_581" = sub i64 %"$gasrem_577", %"$gasadd_576"
  store i64 %"$consume_581", i64* @_gasrem, align 8
  %"$execptr_load_582" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_12_583" = load %String, %String* %"$s_acc_12", align 8
  %"$bystr_str_584" = load %String, %String* %bystr_str, align 8
  %"$concat_call_585" = call %String @_concat_String(i8* %"$execptr_load_582", %String %"$$s_acc_12_583", %String %"$bystr_str_584"), !dbg !39
  store %String %"$concat_call_585", %String* %"$s_acc_13", align 8, !dbg !39
  %"$gasrem_586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_587" = icmp ugt i64 1, %"$gasrem_586"
  br i1 %"$gascmp_587", label %"$out_of_gas_588", label %"$have_gas_589"

"$out_of_gas_588":                                ; preds = %"$have_gas_580"
  call void @_out_of_gas()
  br label %"$have_gas_589"

"$have_gas_589":                                  ; preds = %"$out_of_gas_588", %"$have_gas_580"
  %"$consume_590" = sub i64 %"$gasrem_586", 1
  store i64 %"$consume_590", i64* @_gasrem, align 8
  %"$$s_acc_13_591" = load %String, %String* %"$s_acc_13", align 8
  store %String %"$$s_acc_13_591", %String* %"$expr_14", align 8, !dbg !40
  %"$$expr_14_592" = load %String, %String* %"$expr_14", align 8
  ret %String %"$$expr_14_592"
}

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare %String @_to_string(i8*, %_TyDescrTy_Typ*, i8*)

declare %String @_concat_String(i8*, %String, %String)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_593" = call %String @_scilla_expr_fun(i8* null)
  %"$pval_594" = alloca %String, align 8
  %"$memvoidcast_595" = bitcast %String* %"$pval_594" to i8*
  store %String %"$exprval_593", %String* %"$pval_594", align 8
  %"$execptr_load_596" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_596", %_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$memvoidcast_595")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_to_string.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 1, column: 18, scope: !10)
!12 = !DILocation(line: 2, column: 18, scope: !10)
!13 = !DILocation(line: 3, column: 19, scope: !10)
!14 = !DILocation(line: 4, column: 19, scope: !10)
!15 = !DILocation(line: 6, column: 17, scope: !10)
!16 = !DILocation(line: 7, column: 17, scope: !10)
!17 = !DILocation(line: 8, column: 18, scope: !10)
!18 = !DILocation(line: 9, column: 18, scope: !10)
!19 = !DILocation(line: 11, column: 18, scope: !10)
!20 = !DILocation(line: 12, column: 17, scope: !10)
!21 = !DILocation(line: 14, column: 18, scope: !10)
!22 = !DILocation(line: 15, column: 18, scope: !10)
!23 = !DILocation(line: 16, column: 19, scope: !10)
!24 = !DILocation(line: 17, column: 19, scope: !10)
!25 = !DILocation(line: 19, column: 17, scope: !10)
!26 = !DILocation(line: 20, column: 17, scope: !10)
!27 = !DILocation(line: 21, column: 18, scope: !10)
!28 = !DILocation(line: 22, column: 18, scope: !10)
!29 = !DILocation(line: 24, column: 18, scope: !10)
!30 = !DILocation(line: 25, column: 17, scope: !10)
!31 = !DILocation(line: 27, column: 13, scope: !10)
!32 = !DILocation(line: 28, column: 13, scope: !10)
!33 = !DILocation(line: 29, column: 13, scope: !10)
!34 = !DILocation(line: 30, column: 13, scope: !10)
!35 = !DILocation(line: 31, column: 13, scope: !10)
!36 = !DILocation(line: 32, column: 13, scope: !10)
!37 = !DILocation(line: 33, column: 13, scope: !10)
!38 = !DILocation(line: 34, column: 13, scope: !10)
!39 = !DILocation(line: 35, column: 13, scope: !10)
!40 = !DILocation(line: 36, column: 1, scope: !10)
