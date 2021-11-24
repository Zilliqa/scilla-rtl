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
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_15" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Int32 = type { i32 }
%"$ParamDescr_595" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_596" = type { %ParamDescrString, i32, %"$ParamDescr_595"* }
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
@"$TyDescr_Bystr_Prim_42" = global %"$TyDescrTy_PrimTyp_15" { i32 7, i32 0 }
@"$TyDescr_Bystr_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Bystr_Prim_42" to i8*) }
@"$TyDescr_Bystr4_Prim_44" = global %"$TyDescrTy_PrimTyp_15" { i32 8, i32 4 }
@"$TyDescr_Bystr4_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_15"* @"$TyDescr_Bystr4_Prim_44" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_39", %_TyDescrTy_Typ* @"$TyDescr_Int64_21", %_TyDescrTy_Typ* @"$TyDescr_Uint256_31", %_TyDescrTy_Typ* @"$TyDescr_Uint32_19", %_TyDescrTy_Typ* @"$TyDescr_Uint64_23", %_TyDescrTy_Typ* @"$TyDescr_Bnum_35", %_TyDescrTy_Typ* @"$TyDescr_Uint128_27", %_TyDescrTy_Typ* @"$TyDescr_Bystr4_45", %_TyDescrTy_Typ* @"$TyDescr_Exception_41", %_TyDescrTy_Typ* @"$TyDescr_String_33", %_TyDescrTy_Typ* @"$TyDescr_Int256_29", %_TyDescrTy_Typ* @"$TyDescr_Int128_25", %_TyDescrTy_Typ* @"$TyDescr_Bystr_43", %_TyDescrTy_Typ* @"$TyDescr_Message_37", %_TyDescrTy_Typ* @"$TyDescr_Int32_17"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_595"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_596"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_52" = load i64, i64* @_gasrem, align 8
  %"$gascmp_53" = icmp ugt i64 5, %"$gasrem_52"
  br i1 %"$gascmp_53", label %"$out_of_gas_54", label %"$have_gas_55"

"$out_of_gas_54":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_55"

"$have_gas_55":                                   ; preds = %"$out_of_gas_54", %entry
  %"$consume_56" = sub i64 %"$gasrem_52", 5
  store i64 %"$consume_56", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !9
  %"$gasrem_57" = load i64, i64* @_gasrem, align 8
  %"$gascmp_58" = icmp ugt i64 8, %"$gasrem_57"
  br i1 %"$gascmp_58", label %"$out_of_gas_59", label %"$have_gas_60"

"$out_of_gas_59":                                 ; preds = %"$have_gas_55"
  call void @_out_of_gas()
  br label %"$have_gas_60"

"$have_gas_60":                                   ; preds = %"$out_of_gas_59", %"$have_gas_55"
  %"$consume_61" = sub i64 %"$gasrem_57", 8
  store i64 %"$consume_61", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !9
  %"$gasrem_62" = load i64, i64* @_gasrem, align 8
  %"$gascmp_63" = icmp ugt i64 196, %"$gasrem_62"
  br i1 %"$gascmp_63", label %"$out_of_gas_64", label %"$have_gas_65"

"$out_of_gas_64":                                 ; preds = %"$have_gas_60"
  call void @_out_of_gas()
  br label %"$have_gas_65"

"$have_gas_65":                                   ; preds = %"$out_of_gas_64", %"$have_gas_60"
  %"$consume_66" = sub i64 %"$gasrem_62", 196
  store i64 %"$consume_66", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !9
  %"$gasrem_67" = load i64, i64* @_gasrem, align 8
  %"$gascmp_68" = icmp ugt i64 20, %"$gasrem_67"
  br i1 %"$gascmp_68", label %"$out_of_gas_69", label %"$have_gas_70"

"$out_of_gas_69":                                 ; preds = %"$have_gas_65"
  call void @_out_of_gas()
  br label %"$have_gas_70"

"$have_gas_70":                                   ; preds = %"$out_of_gas_69", %"$have_gas_65"
  %"$consume_71" = sub i64 %"$gasrem_67", 20
  store i64 %"$consume_71", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !9
  %"$gasrem_72" = load i64, i64* @_gasrem, align 8
  %"$gascmp_73" = icmp ugt i64 12, %"$gasrem_72"
  br i1 %"$gascmp_73", label %"$out_of_gas_74", label %"$have_gas_75"

"$out_of_gas_74":                                 ; preds = %"$have_gas_70"
  call void @_out_of_gas()
  br label %"$have_gas_75"

"$have_gas_75":                                   ; preds = %"$out_of_gas_74", %"$have_gas_70"
  %"$consume_76" = sub i64 %"$gasrem_72", 12
  store i64 %"$consume_76", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !9
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 2, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %"$have_gas_75"
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %"$have_gas_75"
  %"$consume_81" = sub i64 %"$gasrem_77", 2
  store i64 %"$consume_81", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define internal %String @_scilla_expr_fun(i8* %0) !dbg !10 {
entry:
  %"$expr_14" = alloca %String, align 8
  %"$gasrem_82" = load i64, i64* @_gasrem, align 8
  %"$gascmp_83" = icmp ugt i64 1, %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %entry
  %"$consume_86" = sub i64 %"$gasrem_82", 1
  store i64 %"$consume_86", i64* @_gasrem, align 8
  %uint32_val = alloca %Uint32, align 8
  %"$gasrem_87" = load i64, i64* @_gasrem, align 8
  %"$gascmp_88" = icmp ugt i64 1, %"$gasrem_87"
  br i1 %"$gascmp_88", label %"$out_of_gas_89", label %"$have_gas_90"

"$out_of_gas_89":                                 ; preds = %"$have_gas_85"
  call void @_out_of_gas()
  br label %"$have_gas_90"

"$have_gas_90":                                   ; preds = %"$out_of_gas_89", %"$have_gas_85"
  %"$consume_91" = sub i64 %"$gasrem_87", 1
  store i64 %"$consume_91", i64* @_gasrem, align 8
  store %Uint32 { i32 2011 }, %Uint32* %uint32_val, align 4, !dbg !11
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 1, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %"$have_gas_90"
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %"$have_gas_90"
  %"$consume_96" = sub i64 %"$gasrem_92", 1
  store i64 %"$consume_96", i64* @_gasrem, align 8
  %uint64_val = alloca %Uint32, align 8
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %"$have_gas_95"
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %"$have_gas_95"
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem, align 8
  store %Uint32 { i32 2012 }, %Uint32* %uint64_val, align 4, !dbg !12
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 1, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$have_gas_100"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$have_gas_100"
  %"$consume_106" = sub i64 %"$gasrem_102", 1
  store i64 %"$consume_106", i64* @_gasrem, align 8
  %uint128_val = alloca %Uint32, align 8
  %"$gasrem_107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_108" = icmp ugt i64 1, %"$gasrem_107"
  br i1 %"$gascmp_108", label %"$out_of_gas_109", label %"$have_gas_110"

"$out_of_gas_109":                                ; preds = %"$have_gas_105"
  call void @_out_of_gas()
  br label %"$have_gas_110"

"$have_gas_110":                                  ; preds = %"$out_of_gas_109", %"$have_gas_105"
  %"$consume_111" = sub i64 %"$gasrem_107", 1
  store i64 %"$consume_111", i64* @_gasrem, align 8
  store %Uint32 { i32 6018 }, %Uint32* %uint128_val, align 4, !dbg !13
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %"$have_gas_110"
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %"$have_gas_110"
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  %uint256_val = alloca %Uint32, align 8
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 1, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %"$have_gas_115"
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %"$have_gas_115"
  %"$consume_121" = sub i64 %"$gasrem_117", 1
  store i64 %"$consume_121", i64* @_gasrem, align 8
  store %Uint32 { i32 551 }, %Uint32* %uint256_val, align 4, !dbg !14
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %"$have_gas_120"
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %"$have_gas_120"
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem, align 8
  %int32_val = alloca %Int32, align 8
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_125"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_125"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem, align 8
  store %Int32 { i32 -2011 }, %Int32* %int32_val, align 4, !dbg !15
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_130"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_130"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  %int64_val = alloca %Int32, align 8
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 1, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$have_gas_135"
  %"$consume_141" = sub i64 %"$gasrem_137", 1
  store i64 %"$consume_141", i64* @_gasrem, align 8
  store %Int32 { i32 2012 }, %Int32* %int64_val, align 4, !dbg !16
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 1, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %"$have_gas_140"
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %"$have_gas_140"
  %"$consume_146" = sub i64 %"$gasrem_142", 1
  store i64 %"$consume_146", i64* @_gasrem, align 8
  %int128_val = alloca %Int32, align 8
  %"$gasrem_147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %"$have_gas_145"
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %"$have_gas_145"
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem, align 8
  store %Int32 { i32 -6018 }, %Int32* %int128_val, align 4, !dbg !17
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$have_gas_150"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$have_gas_150"
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem, align 8
  %int256_val = alloca %Int32, align 8
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 1, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_155"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_155"
  %"$consume_161" = sub i64 %"$gasrem_157", 1
  store i64 %"$consume_161", i64* @_gasrem, align 8
  store %Int32 { i32 -551 }, %Int32* %int256_val, align 4, !dbg !18
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_160"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_160"
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %bystrx_val = alloca [4 x i8], align 1
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 1, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$have_gas_165"
  %"$consume_171" = sub i64 %"$gasrem_167", 1
  store i64 %"$consume_171", i64* @_gasrem, align 8
  store [4 x i8] c"\FF\00\CC\11", [4 x i8]* %bystrx_val, align 1, !dbg !19
  %"$gasrem_172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_173" = icmp ugt i64 1, %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %"$have_gas_170"
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %"$have_gas_170"
  %"$consume_176" = sub i64 %"$gasrem_172", 1
  store i64 %"$consume_176", i64* @_gasrem, align 8
  %bystr_val = alloca %Bystr, align 8
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 4, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %"$have_gas_175"
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %"$have_gas_175"
  %"$consume_181" = sub i64 %"$gasrem_177", 4
  store i64 %"$consume_181", i64* @_gasrem, align 8
  %"$execptr_load_182" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bystrx_val_183" = alloca [4 x i8], align 1
  %"$bystrx_val_184" = load [4 x i8], [4 x i8]* %bystrx_val, align 1
  store [4 x i8] %"$bystrx_val_184", [4 x i8]* %"$to_bystr_bystrx_val_183", align 1
  %"$$to_bystr_bystrx_val_183_185" = bitcast [4 x i8]* %"$to_bystr_bystrx_val_183" to i8*
  %"$to_bystr_call_186" = call %Bystr @_to_bystr(i8* %"$execptr_load_182", i32 4, i8* %"$$to_bystr_bystrx_val_183_185"), !dbg !20
  store %Bystr %"$to_bystr_call_186", %Bystr* %bystr_val, align 8, !dbg !20
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 1, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$have_gas_180"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$have_gas_180"
  %"$consume_191" = sub i64 %"$gasrem_187", 1
  store i64 %"$consume_191", i64* @_gasrem, align 8
  %uint32_str = alloca %String, align 8
  %"$_literal_cost_uint32_val_192" = alloca %Uint32, align 8
  %"$uint32_val_193" = load %Uint32, %Uint32* %uint32_val, align 4
  store %Uint32 %"$uint32_val_193", %Uint32* %"$_literal_cost_uint32_val_192", align 4
  %"$$_literal_cost_uint32_val_192_194" = bitcast %Uint32* %"$_literal_cost_uint32_val_192" to i8*
  %"$_literal_cost_call_195" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_19", i8* %"$$_literal_cost_uint32_val_192_194")
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 %"$_literal_cost_call_195", %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %"$have_gas_190"
  %"$consume_200" = sub i64 %"$gasrem_196", %"$_literal_cost_call_195"
  store i64 %"$consume_200", i64* @_gasrem, align 8
  %"$execptr_load_201" = load i8*, i8** @_execptr, align 8
  %"$to_string_uint32_val_202" = alloca %Uint32, align 8
  %"$uint32_val_203" = load %Uint32, %Uint32* %uint32_val, align 4
  store %Uint32 %"$uint32_val_203", %Uint32* %"$to_string_uint32_val_202", align 4
  %"$$to_string_uint32_val_202_204" = bitcast %Uint32* %"$to_string_uint32_val_202" to i8*
  %"$to_string_call_205" = call %String @_to_string(i8* %"$execptr_load_201", %_TyDescrTy_Typ* @"$TyDescr_Uint32_19", i8* %"$$to_string_uint32_val_202_204"), !dbg !21
  store %String %"$to_string_call_205", %String* %uint32_str, align 8, !dbg !21
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 1, %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %"$have_gas_199"
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %"$have_gas_199"
  %"$consume_210" = sub i64 %"$gasrem_206", 1
  store i64 %"$consume_210", i64* @_gasrem, align 8
  %uint64_str = alloca %String, align 8
  %"$_literal_cost_uint64_val_211" = alloca %Uint32, align 8
  %"$uint64_val_212" = load %Uint32, %Uint32* %uint64_val, align 4
  store %Uint32 %"$uint64_val_212", %Uint32* %"$_literal_cost_uint64_val_211", align 4
  %"$$_literal_cost_uint64_val_211_213" = bitcast %Uint32* %"$_literal_cost_uint64_val_211" to i8*
  %"$_literal_cost_call_214" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_19", i8* %"$$_literal_cost_uint64_val_211_213")
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 %"$_literal_cost_call_214", %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %"$have_gas_209"
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %"$have_gas_209"
  %"$consume_219" = sub i64 %"$gasrem_215", %"$_literal_cost_call_214"
  store i64 %"$consume_219", i64* @_gasrem, align 8
  %"$execptr_load_220" = load i8*, i8** @_execptr, align 8
  %"$to_string_uint64_val_221" = alloca %Uint32, align 8
  %"$uint64_val_222" = load %Uint32, %Uint32* %uint64_val, align 4
  store %Uint32 %"$uint64_val_222", %Uint32* %"$to_string_uint64_val_221", align 4
  %"$$to_string_uint64_val_221_223" = bitcast %Uint32* %"$to_string_uint64_val_221" to i8*
  %"$to_string_call_224" = call %String @_to_string(i8* %"$execptr_load_220", %_TyDescrTy_Typ* @"$TyDescr_Uint32_19", i8* %"$$to_string_uint64_val_221_223"), !dbg !22
  store %String %"$to_string_call_224", %String* %uint64_str, align 8, !dbg !22
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 1, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_218"
  %"$consume_229" = sub i64 %"$gasrem_225", 1
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %uint128_str = alloca %String, align 8
  %"$_literal_cost_uint128_val_230" = alloca %Uint32, align 8
  %"$uint128_val_231" = load %Uint32, %Uint32* %uint128_val, align 4
  store %Uint32 %"$uint128_val_231", %Uint32* %"$_literal_cost_uint128_val_230", align 4
  %"$$_literal_cost_uint128_val_230_232" = bitcast %Uint32* %"$_literal_cost_uint128_val_230" to i8*
  %"$_literal_cost_call_233" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_19", i8* %"$$_literal_cost_uint128_val_230_232")
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 %"$_literal_cost_call_233", %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_228"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_228"
  %"$consume_238" = sub i64 %"$gasrem_234", %"$_literal_cost_call_233"
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %"$execptr_load_239" = load i8*, i8** @_execptr, align 8
  %"$to_string_uint128_val_240" = alloca %Uint32, align 8
  %"$uint128_val_241" = load %Uint32, %Uint32* %uint128_val, align 4
  store %Uint32 %"$uint128_val_241", %Uint32* %"$to_string_uint128_val_240", align 4
  %"$$to_string_uint128_val_240_242" = bitcast %Uint32* %"$to_string_uint128_val_240" to i8*
  %"$to_string_call_243" = call %String @_to_string(i8* %"$execptr_load_239", %_TyDescrTy_Typ* @"$TyDescr_Uint32_19", i8* %"$$to_string_uint128_val_240_242"), !dbg !23
  store %String %"$to_string_call_243", %String* %uint128_str, align 8, !dbg !23
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_237"
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %uint256_str = alloca %String, align 8
  %"$_literal_cost_uint256_val_249" = alloca %Uint32, align 8
  %"$uint256_val_250" = load %Uint32, %Uint32* %uint256_val, align 4
  store %Uint32 %"$uint256_val_250", %Uint32* %"$_literal_cost_uint256_val_249", align 4
  %"$$_literal_cost_uint256_val_249_251" = bitcast %Uint32* %"$_literal_cost_uint256_val_249" to i8*
  %"$_literal_cost_call_252" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_19", i8* %"$$_literal_cost_uint256_val_249_251")
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 %"$_literal_cost_call_252", %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_247"
  %"$consume_257" = sub i64 %"$gasrem_253", %"$_literal_cost_call_252"
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %"$execptr_load_258" = load i8*, i8** @_execptr, align 8
  %"$to_string_uint256_val_259" = alloca %Uint32, align 8
  %"$uint256_val_260" = load %Uint32, %Uint32* %uint256_val, align 4
  store %Uint32 %"$uint256_val_260", %Uint32* %"$to_string_uint256_val_259", align 4
  %"$$to_string_uint256_val_259_261" = bitcast %Uint32* %"$to_string_uint256_val_259" to i8*
  %"$to_string_call_262" = call %String @_to_string(i8* %"$execptr_load_258", %_TyDescrTy_Typ* @"$TyDescr_Uint32_19", i8* %"$$to_string_uint256_val_259_261"), !dbg !24
  store %String %"$to_string_call_262", %String* %uint256_str, align 8, !dbg !24
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 1, %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_256"
  %"$consume_267" = sub i64 %"$gasrem_263", 1
  store i64 %"$consume_267", i64* @_gasrem, align 8
  %int32_str = alloca %String, align 8
  %"$_literal_cost_int32_val_268" = alloca %Int32, align 8
  %"$int32_val_269" = load %Int32, %Int32* %int32_val, align 4
  store %Int32 %"$int32_val_269", %Int32* %"$_literal_cost_int32_val_268", align 4
  %"$$_literal_cost_int32_val_268_270" = bitcast %Int32* %"$_literal_cost_int32_val_268" to i8*
  %"$_literal_cost_call_271" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_17", i8* %"$$_literal_cost_int32_val_268_270")
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 %"$_literal_cost_call_271", %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_266"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_266"
  %"$consume_276" = sub i64 %"$gasrem_272", %"$_literal_cost_call_271"
  store i64 %"$consume_276", i64* @_gasrem, align 8
  %"$execptr_load_277" = load i8*, i8** @_execptr, align 8
  %"$to_string_int32_val_278" = alloca %Int32, align 8
  %"$int32_val_279" = load %Int32, %Int32* %int32_val, align 4
  store %Int32 %"$int32_val_279", %Int32* %"$to_string_int32_val_278", align 4
  %"$$to_string_int32_val_278_280" = bitcast %Int32* %"$to_string_int32_val_278" to i8*
  %"$to_string_call_281" = call %String @_to_string(i8* %"$execptr_load_277", %_TyDescrTy_Typ* @"$TyDescr_Int32_17", i8* %"$$to_string_int32_val_278_280"), !dbg !25
  store %String %"$to_string_call_281", %String* %int32_str, align 8, !dbg !25
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 1, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$have_gas_275"
  %"$consume_286" = sub i64 %"$gasrem_282", 1
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %int64_str = alloca %String, align 8
  %"$_literal_cost_int64_val_287" = alloca %Int32, align 8
  %"$int64_val_288" = load %Int32, %Int32* %int64_val, align 4
  store %Int32 %"$int64_val_288", %Int32* %"$_literal_cost_int64_val_287", align 4
  %"$$_literal_cost_int64_val_287_289" = bitcast %Int32* %"$_literal_cost_int64_val_287" to i8*
  %"$_literal_cost_call_290" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_17", i8* %"$$_literal_cost_int64_val_287_289")
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 %"$_literal_cost_call_290", %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %"$have_gas_285"
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %"$have_gas_285"
  %"$consume_295" = sub i64 %"$gasrem_291", %"$_literal_cost_call_290"
  store i64 %"$consume_295", i64* @_gasrem, align 8
  %"$execptr_load_296" = load i8*, i8** @_execptr, align 8
  %"$to_string_int64_val_297" = alloca %Int32, align 8
  %"$int64_val_298" = load %Int32, %Int32* %int64_val, align 4
  store %Int32 %"$int64_val_298", %Int32* %"$to_string_int64_val_297", align 4
  %"$$to_string_int64_val_297_299" = bitcast %Int32* %"$to_string_int64_val_297" to i8*
  %"$to_string_call_300" = call %String @_to_string(i8* %"$execptr_load_296", %_TyDescrTy_Typ* @"$TyDescr_Int32_17", i8* %"$$to_string_int64_val_297_299"), !dbg !26
  store %String %"$to_string_call_300", %String* %int64_str, align 8, !dbg !26
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_294"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_294"
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %int128_str = alloca %String, align 8
  %"$_literal_cost_int128_val_306" = alloca %Int32, align 8
  %"$int128_val_307" = load %Int32, %Int32* %int128_val, align 4
  store %Int32 %"$int128_val_307", %Int32* %"$_literal_cost_int128_val_306", align 4
  %"$$_literal_cost_int128_val_306_308" = bitcast %Int32* %"$_literal_cost_int128_val_306" to i8*
  %"$_literal_cost_call_309" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_17", i8* %"$$_literal_cost_int128_val_306_308")
  %"$gasrem_310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_311" = icmp ugt i64 %"$_literal_cost_call_309", %"$gasrem_310"
  br i1 %"$gascmp_311", label %"$out_of_gas_312", label %"$have_gas_313"

"$out_of_gas_312":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_313"

"$have_gas_313":                                  ; preds = %"$out_of_gas_312", %"$have_gas_304"
  %"$consume_314" = sub i64 %"$gasrem_310", %"$_literal_cost_call_309"
  store i64 %"$consume_314", i64* @_gasrem, align 8
  %"$execptr_load_315" = load i8*, i8** @_execptr, align 8
  %"$to_string_int128_val_316" = alloca %Int32, align 8
  %"$int128_val_317" = load %Int32, %Int32* %int128_val, align 4
  store %Int32 %"$int128_val_317", %Int32* %"$to_string_int128_val_316", align 4
  %"$$to_string_int128_val_316_318" = bitcast %Int32* %"$to_string_int128_val_316" to i8*
  %"$to_string_call_319" = call %String @_to_string(i8* %"$execptr_load_315", %_TyDescrTy_Typ* @"$TyDescr_Int32_17", i8* %"$$to_string_int128_val_316_318"), !dbg !27
  store %String %"$to_string_call_319", %String* %int128_str, align 8, !dbg !27
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 1, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_313"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_313"
  %"$consume_324" = sub i64 %"$gasrem_320", 1
  store i64 %"$consume_324", i64* @_gasrem, align 8
  %int256_str = alloca %String, align 8
  %"$_literal_cost_int256_val_325" = alloca %Int32, align 8
  %"$int256_val_326" = load %Int32, %Int32* %int256_val, align 4
  store %Int32 %"$int256_val_326", %Int32* %"$_literal_cost_int256_val_325", align 4
  %"$$_literal_cost_int256_val_325_327" = bitcast %Int32* %"$_literal_cost_int256_val_325" to i8*
  %"$_literal_cost_call_328" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_17", i8* %"$$_literal_cost_int256_val_325_327")
  %"$gasrem_329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_330" = icmp ugt i64 %"$_literal_cost_call_328", %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %"$have_gas_323"
  %"$consume_333" = sub i64 %"$gasrem_329", %"$_literal_cost_call_328"
  store i64 %"$consume_333", i64* @_gasrem, align 8
  %"$execptr_load_334" = load i8*, i8** @_execptr, align 8
  %"$to_string_int256_val_335" = alloca %Int32, align 8
  %"$int256_val_336" = load %Int32, %Int32* %int256_val, align 4
  store %Int32 %"$int256_val_336", %Int32* %"$to_string_int256_val_335", align 4
  %"$$to_string_int256_val_335_337" = bitcast %Int32* %"$to_string_int256_val_335" to i8*
  %"$to_string_call_338" = call %String @_to_string(i8* %"$execptr_load_334", %_TyDescrTy_Typ* @"$TyDescr_Int32_17", i8* %"$$to_string_int256_val_335_337"), !dbg !28
  store %String %"$to_string_call_338", %String* %int256_str, align 8, !dbg !28
  %"$gasrem_339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_340" = icmp ugt i64 1, %"$gasrem_339"
  br i1 %"$gascmp_340", label %"$out_of_gas_341", label %"$have_gas_342"

"$out_of_gas_341":                                ; preds = %"$have_gas_332"
  call void @_out_of_gas()
  br label %"$have_gas_342"

"$have_gas_342":                                  ; preds = %"$out_of_gas_341", %"$have_gas_332"
  %"$consume_343" = sub i64 %"$gasrem_339", 1
  store i64 %"$consume_343", i64* @_gasrem, align 8
  %bystrx_str = alloca %String, align 8
  %"$_literal_cost_bystrx_val_344" = alloca [4 x i8], align 1
  %"$bystrx_val_345" = load [4 x i8], [4 x i8]* %bystrx_val, align 1
  store [4 x i8] %"$bystrx_val_345", [4 x i8]* %"$_literal_cost_bystrx_val_344", align 1
  %"$$_literal_cost_bystrx_val_344_346" = bitcast [4 x i8]* %"$_literal_cost_bystrx_val_344" to i8*
  %"$_literal_cost_call_347" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr4_45", i8* %"$$_literal_cost_bystrx_val_344_346")
  %"$gasrem_348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_349" = icmp ugt i64 %"$_literal_cost_call_347", %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %"$have_gas_342"
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %"$have_gas_342"
  %"$consume_352" = sub i64 %"$gasrem_348", %"$_literal_cost_call_347"
  store i64 %"$consume_352", i64* @_gasrem, align 8
  %"$execptr_load_353" = load i8*, i8** @_execptr, align 8
  %"$to_string_bystrx_val_354" = alloca [4 x i8], align 1
  %"$bystrx_val_355" = load [4 x i8], [4 x i8]* %bystrx_val, align 1
  store [4 x i8] %"$bystrx_val_355", [4 x i8]* %"$to_string_bystrx_val_354", align 1
  %"$$to_string_bystrx_val_354_356" = bitcast [4 x i8]* %"$to_string_bystrx_val_354" to i8*
  %"$to_string_call_357" = call %String @_to_string(i8* %"$execptr_load_353", %_TyDescrTy_Typ* @"$TyDescr_Bystr4_45", i8* %"$$to_string_bystrx_val_354_356"), !dbg !29
  store %String %"$to_string_call_357", %String* %bystrx_str, align 8, !dbg !29
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 1, %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$have_gas_351"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$have_gas_351"
  %"$consume_362" = sub i64 %"$gasrem_358", 1
  store i64 %"$consume_362", i64* @_gasrem, align 8
  %bystr_str = alloca %String, align 8
  %"$_literal_cost_bystr_val_363" = alloca %Bystr, align 8
  %"$bystr_val_364" = load %Bystr, %Bystr* %bystr_val, align 8
  store %Bystr %"$bystr_val_364", %Bystr* %"$_literal_cost_bystr_val_363", align 8
  %"$$_literal_cost_bystr_val_363_365" = bitcast %Bystr* %"$_literal_cost_bystr_val_363" to i8*
  %"$_literal_cost_call_366" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_43", i8* %"$$_literal_cost_bystr_val_363_365")
  %"$gasrem_367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_368" = icmp ugt i64 %"$_literal_cost_call_366", %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %"$have_gas_361"
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %"$have_gas_361"
  %"$consume_371" = sub i64 %"$gasrem_367", %"$_literal_cost_call_366"
  store i64 %"$consume_371", i64* @_gasrem, align 8
  %"$execptr_load_372" = load i8*, i8** @_execptr, align 8
  %"$to_string_bystr_val_373" = alloca %Bystr, align 8
  %"$bystr_val_374" = load %Bystr, %Bystr* %bystr_val, align 8
  store %Bystr %"$bystr_val_374", %Bystr* %"$to_string_bystr_val_373", align 8
  %"$$to_string_bystr_val_373_375" = bitcast %Bystr* %"$to_string_bystr_val_373" to i8*
  %"$to_string_call_376" = call %String @_to_string(i8* %"$execptr_load_372", %_TyDescrTy_Typ* @"$TyDescr_Bystr_43", i8* %"$$to_string_bystr_val_373_375"), !dbg !30
  store %String %"$to_string_call_376", %String* %bystr_str, align 8, !dbg !30
  %"$gasrem_377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_378" = icmp ugt i64 1, %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %"$have_gas_370"
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %"$have_gas_370"
  %"$consume_381" = sub i64 %"$gasrem_377", 1
  store i64 %"$consume_381", i64* @_gasrem, align 8
  %s_acc = alloca %String, align 8
  %"$_literal_cost_uint32_str_382" = alloca %String, align 8
  %"$uint32_str_383" = load %String, %String* %uint32_str, align 8
  store %String %"$uint32_str_383", %String* %"$_literal_cost_uint32_str_382", align 8
  %"$$_literal_cost_uint32_str_382_384" = bitcast %String* %"$_literal_cost_uint32_str_382" to i8*
  %"$_literal_cost_call_385" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_uint32_str_382_384")
  %"$_literal_cost_uint64_str_386" = alloca %String, align 8
  %"$uint64_str_387" = load %String, %String* %uint64_str, align 8
  store %String %"$uint64_str_387", %String* %"$_literal_cost_uint64_str_386", align 8
  %"$$_literal_cost_uint64_str_386_388" = bitcast %String* %"$_literal_cost_uint64_str_386" to i8*
  %"$_literal_cost_call_389" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_uint64_str_386_388")
  %"$gasadd_390" = add i64 %"$_literal_cost_call_385", %"$_literal_cost_call_389"
  %"$gasrem_391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_392" = icmp ugt i64 %"$gasadd_390", %"$gasrem_391"
  br i1 %"$gascmp_392", label %"$out_of_gas_393", label %"$have_gas_394"

"$out_of_gas_393":                                ; preds = %"$have_gas_380"
  call void @_out_of_gas()
  br label %"$have_gas_394"

"$have_gas_394":                                  ; preds = %"$out_of_gas_393", %"$have_gas_380"
  %"$consume_395" = sub i64 %"$gasrem_391", %"$gasadd_390"
  store i64 %"$consume_395", i64* @_gasrem, align 8
  %"$execptr_load_396" = load i8*, i8** @_execptr, align 8
  %"$uint32_str_397" = load %String, %String* %uint32_str, align 8
  %"$uint64_str_398" = load %String, %String* %uint64_str, align 8
  %"$concat_call_399" = call %String @_concat_String(i8* %"$execptr_load_396", %String %"$uint32_str_397", %String %"$uint64_str_398"), !dbg !31
  store %String %"$concat_call_399", %String* %s_acc, align 8, !dbg !31
  %"$gasrem_400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_401" = icmp ugt i64 1, %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %"$have_gas_394"
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %"$have_gas_394"
  %"$consume_404" = sub i64 %"$gasrem_400", 1
  store i64 %"$consume_404", i64* @_gasrem, align 8
  %"$s_acc_6" = alloca %String, align 8
  %"$_literal_cost_s_acc_405" = alloca %String, align 8
  %"$s_acc_406" = load %String, %String* %s_acc, align 8
  store %String %"$s_acc_406", %String* %"$_literal_cost_s_acc_405", align 8
  %"$$_literal_cost_s_acc_405_407" = bitcast %String* %"$_literal_cost_s_acc_405" to i8*
  %"$_literal_cost_call_408" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_s_acc_405_407")
  %"$_literal_cost_uint128_str_409" = alloca %String, align 8
  %"$uint128_str_410" = load %String, %String* %uint128_str, align 8
  store %String %"$uint128_str_410", %String* %"$_literal_cost_uint128_str_409", align 8
  %"$$_literal_cost_uint128_str_409_411" = bitcast %String* %"$_literal_cost_uint128_str_409" to i8*
  %"$_literal_cost_call_412" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_uint128_str_409_411")
  %"$gasadd_413" = add i64 %"$_literal_cost_call_408", %"$_literal_cost_call_412"
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 %"$gasadd_413", %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$have_gas_403"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$have_gas_403"
  %"$consume_418" = sub i64 %"$gasrem_414", %"$gasadd_413"
  store i64 %"$consume_418", i64* @_gasrem, align 8
  %"$execptr_load_419" = load i8*, i8** @_execptr, align 8
  %"$s_acc_420" = load %String, %String* %s_acc, align 8
  %"$uint128_str_421" = load %String, %String* %uint128_str, align 8
  %"$concat_call_422" = call %String @_concat_String(i8* %"$execptr_load_419", %String %"$s_acc_420", %String %"$uint128_str_421"), !dbg !32
  store %String %"$concat_call_422", %String* %"$s_acc_6", align 8, !dbg !32
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_417"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_417"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %"$s_acc_7" = alloca %String, align 8
  %"$_literal_cost_$s_acc_6_428" = alloca %String, align 8
  %"$$s_acc_6_429" = load %String, %String* %"$s_acc_6", align 8
  store %String %"$$s_acc_6_429", %String* %"$_literal_cost_$s_acc_6_428", align 8
  %"$$_literal_cost_$s_acc_6_428_430" = bitcast %String* %"$_literal_cost_$s_acc_6_428" to i8*
  %"$_literal_cost_call_431" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_$s_acc_6_428_430")
  %"$_literal_cost_uint256_str_432" = alloca %String, align 8
  %"$uint256_str_433" = load %String, %String* %uint256_str, align 8
  store %String %"$uint256_str_433", %String* %"$_literal_cost_uint256_str_432", align 8
  %"$$_literal_cost_uint256_str_432_434" = bitcast %String* %"$_literal_cost_uint256_str_432" to i8*
  %"$_literal_cost_call_435" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_uint256_str_432_434")
  %"$gasadd_436" = add i64 %"$_literal_cost_call_431", %"$_literal_cost_call_435"
  %"$gasrem_437" = load i64, i64* @_gasrem, align 8
  %"$gascmp_438" = icmp ugt i64 %"$gasadd_436", %"$gasrem_437"
  br i1 %"$gascmp_438", label %"$out_of_gas_439", label %"$have_gas_440"

"$out_of_gas_439":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_440"

"$have_gas_440":                                  ; preds = %"$out_of_gas_439", %"$have_gas_426"
  %"$consume_441" = sub i64 %"$gasrem_437", %"$gasadd_436"
  store i64 %"$consume_441", i64* @_gasrem, align 8
  %"$execptr_load_442" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_6_443" = load %String, %String* %"$s_acc_6", align 8
  %"$uint256_str_444" = load %String, %String* %uint256_str, align 8
  %"$concat_call_445" = call %String @_concat_String(i8* %"$execptr_load_442", %String %"$$s_acc_6_443", %String %"$uint256_str_444"), !dbg !33
  store %String %"$concat_call_445", %String* %"$s_acc_7", align 8, !dbg !33
  %"$gasrem_446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_447" = icmp ugt i64 1, %"$gasrem_446"
  br i1 %"$gascmp_447", label %"$out_of_gas_448", label %"$have_gas_449"

"$out_of_gas_448":                                ; preds = %"$have_gas_440"
  call void @_out_of_gas()
  br label %"$have_gas_449"

"$have_gas_449":                                  ; preds = %"$out_of_gas_448", %"$have_gas_440"
  %"$consume_450" = sub i64 %"$gasrem_446", 1
  store i64 %"$consume_450", i64* @_gasrem, align 8
  %"$s_acc_8" = alloca %String, align 8
  %"$_literal_cost_$s_acc_7_451" = alloca %String, align 8
  %"$$s_acc_7_452" = load %String, %String* %"$s_acc_7", align 8
  store %String %"$$s_acc_7_452", %String* %"$_literal_cost_$s_acc_7_451", align 8
  %"$$_literal_cost_$s_acc_7_451_453" = bitcast %String* %"$_literal_cost_$s_acc_7_451" to i8*
  %"$_literal_cost_call_454" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_$s_acc_7_451_453")
  %"$_literal_cost_int32_str_455" = alloca %String, align 8
  %"$int32_str_456" = load %String, %String* %int32_str, align 8
  store %String %"$int32_str_456", %String* %"$_literal_cost_int32_str_455", align 8
  %"$$_literal_cost_int32_str_455_457" = bitcast %String* %"$_literal_cost_int32_str_455" to i8*
  %"$_literal_cost_call_458" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_int32_str_455_457")
  %"$gasadd_459" = add i64 %"$_literal_cost_call_454", %"$_literal_cost_call_458"
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 %"$gasadd_459", %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$have_gas_449"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$have_gas_449"
  %"$consume_464" = sub i64 %"$gasrem_460", %"$gasadd_459"
  store i64 %"$consume_464", i64* @_gasrem, align 8
  %"$execptr_load_465" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_7_466" = load %String, %String* %"$s_acc_7", align 8
  %"$int32_str_467" = load %String, %String* %int32_str, align 8
  %"$concat_call_468" = call %String @_concat_String(i8* %"$execptr_load_465", %String %"$$s_acc_7_466", %String %"$int32_str_467"), !dbg !34
  store %String %"$concat_call_468", %String* %"$s_acc_8", align 8, !dbg !34
  %"$gasrem_469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_470" = icmp ugt i64 1, %"$gasrem_469"
  br i1 %"$gascmp_470", label %"$out_of_gas_471", label %"$have_gas_472"

"$out_of_gas_471":                                ; preds = %"$have_gas_463"
  call void @_out_of_gas()
  br label %"$have_gas_472"

"$have_gas_472":                                  ; preds = %"$out_of_gas_471", %"$have_gas_463"
  %"$consume_473" = sub i64 %"$gasrem_469", 1
  store i64 %"$consume_473", i64* @_gasrem, align 8
  %"$s_acc_9" = alloca %String, align 8
  %"$_literal_cost_$s_acc_8_474" = alloca %String, align 8
  %"$$s_acc_8_475" = load %String, %String* %"$s_acc_8", align 8
  store %String %"$$s_acc_8_475", %String* %"$_literal_cost_$s_acc_8_474", align 8
  %"$$_literal_cost_$s_acc_8_474_476" = bitcast %String* %"$_literal_cost_$s_acc_8_474" to i8*
  %"$_literal_cost_call_477" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_$s_acc_8_474_476")
  %"$_literal_cost_int64_str_478" = alloca %String, align 8
  %"$int64_str_479" = load %String, %String* %int64_str, align 8
  store %String %"$int64_str_479", %String* %"$_literal_cost_int64_str_478", align 8
  %"$$_literal_cost_int64_str_478_480" = bitcast %String* %"$_literal_cost_int64_str_478" to i8*
  %"$_literal_cost_call_481" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_int64_str_478_480")
  %"$gasadd_482" = add i64 %"$_literal_cost_call_477", %"$_literal_cost_call_481"
  %"$gasrem_483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_484" = icmp ugt i64 %"$gasadd_482", %"$gasrem_483"
  br i1 %"$gascmp_484", label %"$out_of_gas_485", label %"$have_gas_486"

"$out_of_gas_485":                                ; preds = %"$have_gas_472"
  call void @_out_of_gas()
  br label %"$have_gas_486"

"$have_gas_486":                                  ; preds = %"$out_of_gas_485", %"$have_gas_472"
  %"$consume_487" = sub i64 %"$gasrem_483", %"$gasadd_482"
  store i64 %"$consume_487", i64* @_gasrem, align 8
  %"$execptr_load_488" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_8_489" = load %String, %String* %"$s_acc_8", align 8
  %"$int64_str_490" = load %String, %String* %int64_str, align 8
  %"$concat_call_491" = call %String @_concat_String(i8* %"$execptr_load_488", %String %"$$s_acc_8_489", %String %"$int64_str_490"), !dbg !35
  store %String %"$concat_call_491", %String* %"$s_acc_9", align 8, !dbg !35
  %"$gasrem_492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_493" = icmp ugt i64 1, %"$gasrem_492"
  br i1 %"$gascmp_493", label %"$out_of_gas_494", label %"$have_gas_495"

"$out_of_gas_494":                                ; preds = %"$have_gas_486"
  call void @_out_of_gas()
  br label %"$have_gas_495"

"$have_gas_495":                                  ; preds = %"$out_of_gas_494", %"$have_gas_486"
  %"$consume_496" = sub i64 %"$gasrem_492", 1
  store i64 %"$consume_496", i64* @_gasrem, align 8
  %"$s_acc_10" = alloca %String, align 8
  %"$_literal_cost_$s_acc_9_497" = alloca %String, align 8
  %"$$s_acc_9_498" = load %String, %String* %"$s_acc_9", align 8
  store %String %"$$s_acc_9_498", %String* %"$_literal_cost_$s_acc_9_497", align 8
  %"$$_literal_cost_$s_acc_9_497_499" = bitcast %String* %"$_literal_cost_$s_acc_9_497" to i8*
  %"$_literal_cost_call_500" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_$s_acc_9_497_499")
  %"$_literal_cost_int128_str_501" = alloca %String, align 8
  %"$int128_str_502" = load %String, %String* %int128_str, align 8
  store %String %"$int128_str_502", %String* %"$_literal_cost_int128_str_501", align 8
  %"$$_literal_cost_int128_str_501_503" = bitcast %String* %"$_literal_cost_int128_str_501" to i8*
  %"$_literal_cost_call_504" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_int128_str_501_503")
  %"$gasadd_505" = add i64 %"$_literal_cost_call_500", %"$_literal_cost_call_504"
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 %"$gasadd_505", %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_495"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_495"
  %"$consume_510" = sub i64 %"$gasrem_506", %"$gasadd_505"
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %"$execptr_load_511" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_9_512" = load %String, %String* %"$s_acc_9", align 8
  %"$int128_str_513" = load %String, %String* %int128_str, align 8
  %"$concat_call_514" = call %String @_concat_String(i8* %"$execptr_load_511", %String %"$$s_acc_9_512", %String %"$int128_str_513"), !dbg !36
  store %String %"$concat_call_514", %String* %"$s_acc_10", align 8, !dbg !36
  %"$gasrem_515" = load i64, i64* @_gasrem, align 8
  %"$gascmp_516" = icmp ugt i64 1, %"$gasrem_515"
  br i1 %"$gascmp_516", label %"$out_of_gas_517", label %"$have_gas_518"

"$out_of_gas_517":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_518"

"$have_gas_518":                                  ; preds = %"$out_of_gas_517", %"$have_gas_509"
  %"$consume_519" = sub i64 %"$gasrem_515", 1
  store i64 %"$consume_519", i64* @_gasrem, align 8
  %"$s_acc_11" = alloca %String, align 8
  %"$_literal_cost_$s_acc_10_520" = alloca %String, align 8
  %"$$s_acc_10_521" = load %String, %String* %"$s_acc_10", align 8
  store %String %"$$s_acc_10_521", %String* %"$_literal_cost_$s_acc_10_520", align 8
  %"$$_literal_cost_$s_acc_10_520_522" = bitcast %String* %"$_literal_cost_$s_acc_10_520" to i8*
  %"$_literal_cost_call_523" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_$s_acc_10_520_522")
  %"$_literal_cost_int256_str_524" = alloca %String, align 8
  %"$int256_str_525" = load %String, %String* %int256_str, align 8
  store %String %"$int256_str_525", %String* %"$_literal_cost_int256_str_524", align 8
  %"$$_literal_cost_int256_str_524_526" = bitcast %String* %"$_literal_cost_int256_str_524" to i8*
  %"$_literal_cost_call_527" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_int256_str_524_526")
  %"$gasadd_528" = add i64 %"$_literal_cost_call_523", %"$_literal_cost_call_527"
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 %"$gasadd_528", %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_518"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_518"
  %"$consume_533" = sub i64 %"$gasrem_529", %"$gasadd_528"
  store i64 %"$consume_533", i64* @_gasrem, align 8
  %"$execptr_load_534" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_10_535" = load %String, %String* %"$s_acc_10", align 8
  %"$int256_str_536" = load %String, %String* %int256_str, align 8
  %"$concat_call_537" = call %String @_concat_String(i8* %"$execptr_load_534", %String %"$$s_acc_10_535", %String %"$int256_str_536"), !dbg !37
  store %String %"$concat_call_537", %String* %"$s_acc_11", align 8, !dbg !37
  %"$gasrem_538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_539" = icmp ugt i64 1, %"$gasrem_538"
  br i1 %"$gascmp_539", label %"$out_of_gas_540", label %"$have_gas_541"

"$out_of_gas_540":                                ; preds = %"$have_gas_532"
  call void @_out_of_gas()
  br label %"$have_gas_541"

"$have_gas_541":                                  ; preds = %"$out_of_gas_540", %"$have_gas_532"
  %"$consume_542" = sub i64 %"$gasrem_538", 1
  store i64 %"$consume_542", i64* @_gasrem, align 8
  %"$s_acc_12" = alloca %String, align 8
  %"$_literal_cost_$s_acc_11_543" = alloca %String, align 8
  %"$$s_acc_11_544" = load %String, %String* %"$s_acc_11", align 8
  store %String %"$$s_acc_11_544", %String* %"$_literal_cost_$s_acc_11_543", align 8
  %"$$_literal_cost_$s_acc_11_543_545" = bitcast %String* %"$_literal_cost_$s_acc_11_543" to i8*
  %"$_literal_cost_call_546" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_$s_acc_11_543_545")
  %"$_literal_cost_bystrx_str_547" = alloca %String, align 8
  %"$bystrx_str_548" = load %String, %String* %bystrx_str, align 8
  store %String %"$bystrx_str_548", %String* %"$_literal_cost_bystrx_str_547", align 8
  %"$$_literal_cost_bystrx_str_547_549" = bitcast %String* %"$_literal_cost_bystrx_str_547" to i8*
  %"$_literal_cost_call_550" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_bystrx_str_547_549")
  %"$gasadd_551" = add i64 %"$_literal_cost_call_546", %"$_literal_cost_call_550"
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 %"$gasadd_551", %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %"$have_gas_541"
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %"$have_gas_541"
  %"$consume_556" = sub i64 %"$gasrem_552", %"$gasadd_551"
  store i64 %"$consume_556", i64* @_gasrem, align 8
  %"$execptr_load_557" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_11_558" = load %String, %String* %"$s_acc_11", align 8
  %"$bystrx_str_559" = load %String, %String* %bystrx_str, align 8
  %"$concat_call_560" = call %String @_concat_String(i8* %"$execptr_load_557", %String %"$$s_acc_11_558", %String %"$bystrx_str_559"), !dbg !38
  store %String %"$concat_call_560", %String* %"$s_acc_12", align 8, !dbg !38
  %"$gasrem_561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_562" = icmp ugt i64 1, %"$gasrem_561"
  br i1 %"$gascmp_562", label %"$out_of_gas_563", label %"$have_gas_564"

"$out_of_gas_563":                                ; preds = %"$have_gas_555"
  call void @_out_of_gas()
  br label %"$have_gas_564"

"$have_gas_564":                                  ; preds = %"$out_of_gas_563", %"$have_gas_555"
  %"$consume_565" = sub i64 %"$gasrem_561", 1
  store i64 %"$consume_565", i64* @_gasrem, align 8
  %"$s_acc_13" = alloca %String, align 8
  %"$_literal_cost_$s_acc_12_566" = alloca %String, align 8
  %"$$s_acc_12_567" = load %String, %String* %"$s_acc_12", align 8
  store %String %"$$s_acc_12_567", %String* %"$_literal_cost_$s_acc_12_566", align 8
  %"$$_literal_cost_$s_acc_12_566_568" = bitcast %String* %"$_literal_cost_$s_acc_12_566" to i8*
  %"$_literal_cost_call_569" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_$s_acc_12_566_568")
  %"$_literal_cost_bystr_str_570" = alloca %String, align 8
  %"$bystr_str_571" = load %String, %String* %bystr_str, align 8
  store %String %"$bystr_str_571", %String* %"$_literal_cost_bystr_str_570", align 8
  %"$$_literal_cost_bystr_str_570_572" = bitcast %String* %"$_literal_cost_bystr_str_570" to i8*
  %"$_literal_cost_call_573" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$$_literal_cost_bystr_str_570_572")
  %"$gasadd_574" = add i64 %"$_literal_cost_call_569", %"$_literal_cost_call_573"
  %"$gasrem_575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_576" = icmp ugt i64 %"$gasadd_574", %"$gasrem_575"
  br i1 %"$gascmp_576", label %"$out_of_gas_577", label %"$have_gas_578"

"$out_of_gas_577":                                ; preds = %"$have_gas_564"
  call void @_out_of_gas()
  br label %"$have_gas_578"

"$have_gas_578":                                  ; preds = %"$out_of_gas_577", %"$have_gas_564"
  %"$consume_579" = sub i64 %"$gasrem_575", %"$gasadd_574"
  store i64 %"$consume_579", i64* @_gasrem, align 8
  %"$execptr_load_580" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_12_581" = load %String, %String* %"$s_acc_12", align 8
  %"$bystr_str_582" = load %String, %String* %bystr_str, align 8
  %"$concat_call_583" = call %String @_concat_String(i8* %"$execptr_load_580", %String %"$$s_acc_12_581", %String %"$bystr_str_582"), !dbg !39
  store %String %"$concat_call_583", %String* %"$s_acc_13", align 8, !dbg !39
  %"$gasrem_584" = load i64, i64* @_gasrem, align 8
  %"$gascmp_585" = icmp ugt i64 1, %"$gasrem_584"
  br i1 %"$gascmp_585", label %"$out_of_gas_586", label %"$have_gas_587"

"$out_of_gas_586":                                ; preds = %"$have_gas_578"
  call void @_out_of_gas()
  br label %"$have_gas_587"

"$have_gas_587":                                  ; preds = %"$out_of_gas_586", %"$have_gas_578"
  %"$consume_588" = sub i64 %"$gasrem_584", 1
  store i64 %"$consume_588", i64* @_gasrem, align 8
  %"$$s_acc_13_589" = load %String, %String* %"$s_acc_13", align 8
  store %String %"$$s_acc_13_589", %String* %"$expr_14", align 8, !dbg !40
  %"$$expr_14_590" = load %String, %String* %"$expr_14", align 8
  ret %String %"$$expr_14_590"
}

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare %String @_to_string(i8*, %_TyDescrTy_Typ*, i8*)

declare %String @_concat_String(i8*, %String, %String)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_591" = call %String @_scilla_expr_fun(i8* null)
  %"$pval_592" = alloca %String, align 8
  %"$memvoidcast_593" = bitcast %String* %"$pval_592" to i8*
  store %String %"$exprval_591", %String* %"$pval_592", align 8
  %"$execptr_load_594" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_594", %_TyDescrTy_Typ* @"$TyDescr_String_33", i8* %"$memvoidcast_593")
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
