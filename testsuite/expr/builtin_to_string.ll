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

%"$TyDescrTy_PrimTyp_9" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%String = type { i8*, i32 }
%Uint32 = type { i32 }
%Int32 = type { i32 }
%Bystr = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_10" = global %"$TyDescrTy_PrimTyp_9" zeroinitializer
@"$TyDescr_Int32_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Int32_Prim_10" to i8*) }
@"$TyDescr_Uint32_Prim_12" = global %"$TyDescrTy_PrimTyp_9" { i32 1, i32 0 }
@"$TyDescr_Uint32_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Uint32_Prim_12" to i8*) }
@"$TyDescr_Int64_Prim_14" = global %"$TyDescrTy_PrimTyp_9" { i32 0, i32 1 }
@"$TyDescr_Int64_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Int64_Prim_14" to i8*) }
@"$TyDescr_Uint64_Prim_16" = global %"$TyDescrTy_PrimTyp_9" { i32 1, i32 1 }
@"$TyDescr_Uint64_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Uint64_Prim_16" to i8*) }
@"$TyDescr_Int128_Prim_18" = global %"$TyDescrTy_PrimTyp_9" { i32 0, i32 2 }
@"$TyDescr_Int128_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Int128_Prim_18" to i8*) }
@"$TyDescr_Uint128_Prim_20" = global %"$TyDescrTy_PrimTyp_9" { i32 1, i32 2 }
@"$TyDescr_Uint128_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Uint128_Prim_20" to i8*) }
@"$TyDescr_Int256_Prim_22" = global %"$TyDescrTy_PrimTyp_9" { i32 0, i32 3 }
@"$TyDescr_Int256_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Int256_Prim_22" to i8*) }
@"$TyDescr_Uint256_Prim_24" = global %"$TyDescrTy_PrimTyp_9" { i32 1, i32 3 }
@"$TyDescr_Uint256_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Uint256_Prim_24" to i8*) }
@"$TyDescr_String_Prim_26" = global %"$TyDescrTy_PrimTyp_9" { i32 2, i32 0 }
@"$TyDescr_String_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_String_Prim_26" to i8*) }
@"$TyDescr_Bnum_Prim_28" = global %"$TyDescrTy_PrimTyp_9" { i32 3, i32 0 }
@"$TyDescr_Bnum_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Bnum_Prim_28" to i8*) }
@"$TyDescr_Message_Prim_30" = global %"$TyDescrTy_PrimTyp_9" { i32 4, i32 0 }
@"$TyDescr_Message_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Message_Prim_30" to i8*) }
@"$TyDescr_Event_Prim_32" = global %"$TyDescrTy_PrimTyp_9" { i32 5, i32 0 }
@"$TyDescr_Event_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Event_Prim_32" to i8*) }
@"$TyDescr_Exception_Prim_34" = global %"$TyDescrTy_PrimTyp_9" { i32 6, i32 0 }
@"$TyDescr_Exception_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Exception_Prim_34" to i8*) }
@"$TyDescr_Bystr_Prim_36" = global %"$TyDescrTy_PrimTyp_9" { i32 7, i32 0 }
@"$TyDescr_Bystr_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Bystr_Prim_36" to i8*) }
@"$TyDescr_Bystr4_Prim_38" = global %"$TyDescrTy_PrimTyp_9" { i32 8, i32 4 }
@"$TyDescr_Bystr4_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Bystr4_Prim_38" to i8*) }

define void @_init_libs() {
entry:
  ret void
}

define internal %String @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_8" = alloca %String, align 8
  %"$gasrem_44" = load i64, i64* @_gasrem, align 8
  %"$gascmp_45" = icmp ugt i64 1, %"$gasrem_44"
  br i1 %"$gascmp_45", label %"$out_of_gas_46", label %"$have_gas_47"

"$out_of_gas_46":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_47"

"$have_gas_47":                                   ; preds = %"$out_of_gas_46", %entry
  %"$consume_48" = sub i64 %"$gasrem_44", 1
  store i64 %"$consume_48", i64* @_gasrem, align 8
  %uint32_val = alloca %Uint32, align 8
  %"$gasrem_49" = load i64, i64* @_gasrem, align 8
  %"$gascmp_50" = icmp ugt i64 1, %"$gasrem_49"
  br i1 %"$gascmp_50", label %"$out_of_gas_51", label %"$have_gas_52"

"$out_of_gas_51":                                 ; preds = %"$have_gas_47"
  call void @_out_of_gas()
  br label %"$have_gas_52"

"$have_gas_52":                                   ; preds = %"$out_of_gas_51", %"$have_gas_47"
  %"$consume_53" = sub i64 %"$gasrem_49", 1
  store i64 %"$consume_53", i64* @_gasrem, align 8
  store %Uint32 { i32 2011 }, %Uint32* %uint32_val, align 4
  %"$gasrem_54" = load i64, i64* @_gasrem, align 8
  %"$gascmp_55" = icmp ugt i64 1, %"$gasrem_54"
  br i1 %"$gascmp_55", label %"$out_of_gas_56", label %"$have_gas_57"

"$out_of_gas_56":                                 ; preds = %"$have_gas_52"
  call void @_out_of_gas()
  br label %"$have_gas_57"

"$have_gas_57":                                   ; preds = %"$out_of_gas_56", %"$have_gas_52"
  %"$consume_58" = sub i64 %"$gasrem_54", 1
  store i64 %"$consume_58", i64* @_gasrem, align 8
  %uint64_val = alloca %Uint32, align 8
  %"$gasrem_59" = load i64, i64* @_gasrem, align 8
  %"$gascmp_60" = icmp ugt i64 1, %"$gasrem_59"
  br i1 %"$gascmp_60", label %"$out_of_gas_61", label %"$have_gas_62"

"$out_of_gas_61":                                 ; preds = %"$have_gas_57"
  call void @_out_of_gas()
  br label %"$have_gas_62"

"$have_gas_62":                                   ; preds = %"$out_of_gas_61", %"$have_gas_57"
  %"$consume_63" = sub i64 %"$gasrem_59", 1
  store i64 %"$consume_63", i64* @_gasrem, align 8
  store %Uint32 { i32 2012 }, %Uint32* %uint64_val, align 4
  %"$gasrem_64" = load i64, i64* @_gasrem, align 8
  %"$gascmp_65" = icmp ugt i64 1, %"$gasrem_64"
  br i1 %"$gascmp_65", label %"$out_of_gas_66", label %"$have_gas_67"

"$out_of_gas_66":                                 ; preds = %"$have_gas_62"
  call void @_out_of_gas()
  br label %"$have_gas_67"

"$have_gas_67":                                   ; preds = %"$out_of_gas_66", %"$have_gas_62"
  %"$consume_68" = sub i64 %"$gasrem_64", 1
  store i64 %"$consume_68", i64* @_gasrem, align 8
  %uint128_val = alloca %Uint32, align 8
  %"$gasrem_69" = load i64, i64* @_gasrem, align 8
  %"$gascmp_70" = icmp ugt i64 1, %"$gasrem_69"
  br i1 %"$gascmp_70", label %"$out_of_gas_71", label %"$have_gas_72"

"$out_of_gas_71":                                 ; preds = %"$have_gas_67"
  call void @_out_of_gas()
  br label %"$have_gas_72"

"$have_gas_72":                                   ; preds = %"$out_of_gas_71", %"$have_gas_67"
  %"$consume_73" = sub i64 %"$gasrem_69", 1
  store i64 %"$consume_73", i64* @_gasrem, align 8
  store %Uint32 { i32 6018 }, %Uint32* %uint128_val, align 4
  %"$gasrem_74" = load i64, i64* @_gasrem, align 8
  %"$gascmp_75" = icmp ugt i64 1, %"$gasrem_74"
  br i1 %"$gascmp_75", label %"$out_of_gas_76", label %"$have_gas_77"

"$out_of_gas_76":                                 ; preds = %"$have_gas_72"
  call void @_out_of_gas()
  br label %"$have_gas_77"

"$have_gas_77":                                   ; preds = %"$out_of_gas_76", %"$have_gas_72"
  %"$consume_78" = sub i64 %"$gasrem_74", 1
  store i64 %"$consume_78", i64* @_gasrem, align 8
  %uint256_val = alloca %Uint32, align 8
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 1, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %"$have_gas_77"
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %"$have_gas_77"
  %"$consume_83" = sub i64 %"$gasrem_79", 1
  store i64 %"$consume_83", i64* @_gasrem, align 8
  store %Uint32 { i32 551 }, %Uint32* %uint256_val, align 4
  %"$gasrem_84" = load i64, i64* @_gasrem, align 8
  %"$gascmp_85" = icmp ugt i64 1, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %"$have_gas_82"
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %"$have_gas_82"
  %"$consume_88" = sub i64 %"$gasrem_84", 1
  store i64 %"$consume_88", i64* @_gasrem, align 8
  %int32_val = alloca %Int32, align 8
  %"$gasrem_89" = load i64, i64* @_gasrem, align 8
  %"$gascmp_90" = icmp ugt i64 1, %"$gasrem_89"
  br i1 %"$gascmp_90", label %"$out_of_gas_91", label %"$have_gas_92"

"$out_of_gas_91":                                 ; preds = %"$have_gas_87"
  call void @_out_of_gas()
  br label %"$have_gas_92"

"$have_gas_92":                                   ; preds = %"$out_of_gas_91", %"$have_gas_87"
  %"$consume_93" = sub i64 %"$gasrem_89", 1
  store i64 %"$consume_93", i64* @_gasrem, align 8
  store %Int32 { i32 -2011 }, %Int32* %int32_val, align 4
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 1, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %"$have_gas_92"
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %"$have_gas_92"
  %"$consume_98" = sub i64 %"$gasrem_94", 1
  store i64 %"$consume_98", i64* @_gasrem, align 8
  %int64_val = alloca %Int32, align 8
  %"$gasrem_99" = load i64, i64* @_gasrem, align 8
  %"$gascmp_100" = icmp ugt i64 1, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %"$have_gas_97"
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %"$have_gas_97"
  %"$consume_103" = sub i64 %"$gasrem_99", 1
  store i64 %"$consume_103", i64* @_gasrem, align 8
  store %Int32 { i32 2012 }, %Int32* %int64_val, align 4
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$have_gas_102"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$have_gas_102"
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %int128_val = alloca %Int32, align 8
  %"$gasrem_109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_110" = icmp ugt i64 1, %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %"$have_gas_107"
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %"$have_gas_107"
  %"$consume_113" = sub i64 %"$gasrem_109", 1
  store i64 %"$consume_113", i64* @_gasrem, align 8
  store %Int32 { i32 -6018 }, %Int32* %int128_val, align 4
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %"$have_gas_112"
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %"$have_gas_112"
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem, align 8
  %int256_val = alloca %Int32, align 8
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 1, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %"$have_gas_117"
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %"$have_gas_117"
  %"$consume_123" = sub i64 %"$gasrem_119", 1
  store i64 %"$consume_123", i64* @_gasrem, align 8
  store %Int32 { i32 -551 }, %Int32* %int256_val, align 4
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$have_gas_122"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$have_gas_122"
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem, align 8
  %bystrx_val = alloca [4 x i8], align 1
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  store [4 x i8] c"\FF\00\CC\11", [4 x i8]* %bystrx_val, align 1
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  %bystr_val = alloca %Bystr, align 8
  %"$execptr_load_139" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bystrx_val_140" = alloca [4 x i8], align 1
  %"$bystrx_val_141" = load [4 x i8], [4 x i8]* %bystrx_val, align 1
  store [4 x i8] %"$bystrx_val_141", [4 x i8]* %"$to_bystr_bystrx_val_140", align 1
  %"$$to_bystr_bystrx_val_140_142" = bitcast [4 x i8]* %"$to_bystr_bystrx_val_140" to i8*
  %"$to_bystr_call_143" = call %Bystr @_to_bystr(i8* %"$execptr_load_139", i32 4, i8* %"$$to_bystr_bystrx_val_140_142")
  store %Bystr %"$to_bystr_call_143", %Bystr* %bystr_val, align 8
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_137"
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem, align 8
  %uint32_str = alloca %String, align 8
  %"$execptr_load_149" = load i8*, i8** @_execptr, align 8
  %"$to_string_uint32_val_150" = alloca %Uint32, align 8
  %"$uint32_val_151" = load %Uint32, %Uint32* %uint32_val, align 4
  store %Uint32 %"$uint32_val_151", %Uint32* %"$to_string_uint32_val_150", align 4
  %"$$to_string_uint32_val_150_152" = bitcast %Uint32* %"$to_string_uint32_val_150" to i8*
  %"$to_string_call_153" = call %String @_to_string(i8* %"$execptr_load_149", %_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$to_string_uint32_val_150_152")
  store %String %"$to_string_call_153", %String* %uint32_str, align 8
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 1, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %"$have_gas_147"
  %"$consume_158" = sub i64 %"$gasrem_154", 1
  store i64 %"$consume_158", i64* @_gasrem, align 8
  %uint64_str = alloca %String, align 8
  %"$execptr_load_159" = load i8*, i8** @_execptr, align 8
  %"$to_string_uint64_val_160" = alloca %Uint32, align 8
  %"$uint64_val_161" = load %Uint32, %Uint32* %uint64_val, align 4
  store %Uint32 %"$uint64_val_161", %Uint32* %"$to_string_uint64_val_160", align 4
  %"$$to_string_uint64_val_160_162" = bitcast %Uint32* %"$to_string_uint64_val_160" to i8*
  %"$to_string_call_163" = call %String @_to_string(i8* %"$execptr_load_159", %_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$to_string_uint64_val_160_162")
  store %String %"$to_string_call_163", %String* %uint64_str, align 8
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_157"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_157"
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  %uint128_str = alloca %String, align 8
  %"$execptr_load_169" = load i8*, i8** @_execptr, align 8
  %"$to_string_uint128_val_170" = alloca %Uint32, align 8
  %"$uint128_val_171" = load %Uint32, %Uint32* %uint128_val, align 4
  store %Uint32 %"$uint128_val_171", %Uint32* %"$to_string_uint128_val_170", align 4
  %"$$to_string_uint128_val_170_172" = bitcast %Uint32* %"$to_string_uint128_val_170" to i8*
  %"$to_string_call_173" = call %String @_to_string(i8* %"$execptr_load_169", %_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$to_string_uint128_val_170_172")
  store %String %"$to_string_call_173", %String* %uint128_str, align 8
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_167"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %uint256_str = alloca %String, align 8
  %"$execptr_load_179" = load i8*, i8** @_execptr, align 8
  %"$to_string_uint256_val_180" = alloca %Uint32, align 8
  %"$uint256_val_181" = load %Uint32, %Uint32* %uint256_val, align 4
  store %Uint32 %"$uint256_val_181", %Uint32* %"$to_string_uint256_val_180", align 4
  %"$$to_string_uint256_val_180_182" = bitcast %Uint32* %"$to_string_uint256_val_180" to i8*
  %"$to_string_call_183" = call %String @_to_string(i8* %"$execptr_load_179", %_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$to_string_uint256_val_180_182")
  store %String %"$to_string_call_183", %String* %uint256_str, align 8
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$have_gas_177"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %int32_str = alloca %String, align 8
  %"$execptr_load_189" = load i8*, i8** @_execptr, align 8
  %"$to_string_int32_val_190" = alloca %Int32, align 8
  %"$int32_val_191" = load %Int32, %Int32* %int32_val, align 4
  store %Int32 %"$int32_val_191", %Int32* %"$to_string_int32_val_190", align 4
  %"$$to_string_int32_val_190_192" = bitcast %Int32* %"$to_string_int32_val_190" to i8*
  %"$to_string_call_193" = call %String @_to_string(i8* %"$execptr_load_189", %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$to_string_int32_val_190_192")
  store %String %"$to_string_call_193", %String* %int32_str, align 8
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$have_gas_187"
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %int64_str = alloca %String, align 8
  %"$execptr_load_199" = load i8*, i8** @_execptr, align 8
  %"$to_string_int64_val_200" = alloca %Int32, align 8
  %"$int64_val_201" = load %Int32, %Int32* %int64_val, align 4
  store %Int32 %"$int64_val_201", %Int32* %"$to_string_int64_val_200", align 4
  %"$$to_string_int64_val_200_202" = bitcast %Int32* %"$to_string_int64_val_200" to i8*
  %"$to_string_call_203" = call %String @_to_string(i8* %"$execptr_load_199", %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$to_string_int64_val_200_202")
  store %String %"$to_string_call_203", %String* %int64_str, align 8
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 1, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$have_gas_197"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$have_gas_197"
  %"$consume_208" = sub i64 %"$gasrem_204", 1
  store i64 %"$consume_208", i64* @_gasrem, align 8
  %int128_str = alloca %String, align 8
  %"$execptr_load_209" = load i8*, i8** @_execptr, align 8
  %"$to_string_int128_val_210" = alloca %Int32, align 8
  %"$int128_val_211" = load %Int32, %Int32* %int128_val, align 4
  store %Int32 %"$int128_val_211", %Int32* %"$to_string_int128_val_210", align 4
  %"$$to_string_int128_val_210_212" = bitcast %Int32* %"$to_string_int128_val_210" to i8*
  %"$to_string_call_213" = call %String @_to_string(i8* %"$execptr_load_209", %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$to_string_int128_val_210_212")
  store %String %"$to_string_call_213", %String* %int128_str, align 8
  %"$gasrem_214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_215" = icmp ugt i64 1, %"$gasrem_214"
  br i1 %"$gascmp_215", label %"$out_of_gas_216", label %"$have_gas_217"

"$out_of_gas_216":                                ; preds = %"$have_gas_207"
  call void @_out_of_gas()
  br label %"$have_gas_217"

"$have_gas_217":                                  ; preds = %"$out_of_gas_216", %"$have_gas_207"
  %"$consume_218" = sub i64 %"$gasrem_214", 1
  store i64 %"$consume_218", i64* @_gasrem, align 8
  %int256_str = alloca %String, align 8
  %"$execptr_load_219" = load i8*, i8** @_execptr, align 8
  %"$to_string_int256_val_220" = alloca %Int32, align 8
  %"$int256_val_221" = load %Int32, %Int32* %int256_val, align 4
  store %Int32 %"$int256_val_221", %Int32* %"$to_string_int256_val_220", align 4
  %"$$to_string_int256_val_220_222" = bitcast %Int32* %"$to_string_int256_val_220" to i8*
  %"$to_string_call_223" = call %String @_to_string(i8* %"$execptr_load_219", %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$to_string_int256_val_220_222")
  store %String %"$to_string_call_223", %String* %int256_str, align 8
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %"$have_gas_217"
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %"$have_gas_217"
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  %bystrx_str = alloca %String, align 8
  %"$execptr_load_229" = load i8*, i8** @_execptr, align 8
  %"$to_string_bystrx_val_230" = alloca [4 x i8], align 1
  %"$bystrx_val_231" = load [4 x i8], [4 x i8]* %bystrx_val, align 1
  store [4 x i8] %"$bystrx_val_231", [4 x i8]* %"$to_string_bystrx_val_230", align 1
  %"$$to_string_bystrx_val_230_232" = bitcast [4 x i8]* %"$to_string_bystrx_val_230" to i8*
  %"$to_string_call_233" = call %String @_to_string(i8* %"$execptr_load_229", %_TyDescrTy_Typ* @"$TyDescr_Bystr4_39", i8* %"$$to_string_bystrx_val_230_232")
  store %String %"$to_string_call_233", %String* %bystrx_str, align 8
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_227"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %bystr_str = alloca %String, align 8
  %"$execptr_load_239" = load i8*, i8** @_execptr, align 8
  %"$to_string_bystr_val_240" = alloca %Bystr, align 8
  %"$bystr_val_241" = load %Bystr, %Bystr* %bystr_val, align 8
  store %Bystr %"$bystr_val_241", %Bystr* %"$to_string_bystr_val_240", align 8
  %"$$to_string_bystr_val_240_242" = bitcast %Bystr* %"$to_string_bystr_val_240" to i8*
  %"$to_string_call_243" = call %String @_to_string(i8* %"$execptr_load_239", %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", i8* %"$$to_string_bystr_val_240_242")
  store %String %"$to_string_call_243", %String* %bystr_str, align 8
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_237"
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %s_acc = alloca %String, align 8
  %"$execptr_load_249" = load i8*, i8** @_execptr, align 8
  %"$uint32_str_250" = load %String, %String* %uint32_str, align 8
  %"$uint64_str_251" = load %String, %String* %uint64_str, align 8
  %"$concat_call_252" = call %String @_concat_String(i8* %"$execptr_load_249", %String %"$uint32_str_250", %String %"$uint64_str_251")
  store %String %"$concat_call_252", %String* %s_acc, align 8
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_247"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %"$s_acc_0" = alloca %String, align 8
  %"$execptr_load_258" = load i8*, i8** @_execptr, align 8
  %"$s_acc_259" = load %String, %String* %s_acc, align 8
  %"$uint128_str_260" = load %String, %String* %uint128_str, align 8
  %"$concat_call_261" = call %String @_concat_String(i8* %"$execptr_load_258", %String %"$s_acc_259", %String %"$uint128_str_260")
  store %String %"$concat_call_261", %String* %"$s_acc_0", align 8
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$have_gas_256"
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %"$s_acc_1" = alloca %String, align 8
  %"$execptr_load_267" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_0_268" = load %String, %String* %"$s_acc_0", align 8
  %"$uint256_str_269" = load %String, %String* %uint256_str, align 8
  %"$concat_call_270" = call %String @_concat_String(i8* %"$execptr_load_267", %String %"$$s_acc_0_268", %String %"$uint256_str_269")
  store %String %"$concat_call_270", %String* %"$s_acc_1", align 8
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 1, %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %"$have_gas_265"
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %"$have_gas_265"
  %"$consume_275" = sub i64 %"$gasrem_271", 1
  store i64 %"$consume_275", i64* @_gasrem, align 8
  %"$s_acc_2" = alloca %String, align 8
  %"$execptr_load_276" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_1_277" = load %String, %String* %"$s_acc_1", align 8
  %"$int32_str_278" = load %String, %String* %int32_str, align 8
  %"$concat_call_279" = call %String @_concat_String(i8* %"$execptr_load_276", %String %"$$s_acc_1_277", %String %"$int32_str_278")
  store %String %"$concat_call_279", %String* %"$s_acc_2", align 8
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 1, %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %"$have_gas_274"
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %"$have_gas_274"
  %"$consume_284" = sub i64 %"$gasrem_280", 1
  store i64 %"$consume_284", i64* @_gasrem, align 8
  %"$s_acc_3" = alloca %String, align 8
  %"$execptr_load_285" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_2_286" = load %String, %String* %"$s_acc_2", align 8
  %"$int64_str_287" = load %String, %String* %int64_str, align 8
  %"$concat_call_288" = call %String @_concat_String(i8* %"$execptr_load_285", %String %"$$s_acc_2_286", %String %"$int64_str_287")
  store %String %"$concat_call_288", %String* %"$s_acc_3", align 8
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 1, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %"$have_gas_283"
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %"$have_gas_283"
  %"$consume_293" = sub i64 %"$gasrem_289", 1
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %"$s_acc_4" = alloca %String, align 8
  %"$execptr_load_294" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_3_295" = load %String, %String* %"$s_acc_3", align 8
  %"$int128_str_296" = load %String, %String* %int128_str, align 8
  %"$concat_call_297" = call %String @_concat_String(i8* %"$execptr_load_294", %String %"$$s_acc_3_295", %String %"$int128_str_296")
  store %String %"$concat_call_297", %String* %"$s_acc_4", align 8
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 1, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$have_gas_292"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$have_gas_292"
  %"$consume_302" = sub i64 %"$gasrem_298", 1
  store i64 %"$consume_302", i64* @_gasrem, align 8
  %"$s_acc_5" = alloca %String, align 8
  %"$execptr_load_303" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_4_304" = load %String, %String* %"$s_acc_4", align 8
  %"$int256_str_305" = load %String, %String* %int256_str, align 8
  %"$concat_call_306" = call %String @_concat_String(i8* %"$execptr_load_303", %String %"$$s_acc_4_304", %String %"$int256_str_305")
  store %String %"$concat_call_306", %String* %"$s_acc_5", align 8
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 1, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_301"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_301"
  %"$consume_311" = sub i64 %"$gasrem_307", 1
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %"$s_acc_6" = alloca %String, align 8
  %"$execptr_load_312" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_5_313" = load %String, %String* %"$s_acc_5", align 8
  %"$bystrx_str_314" = load %String, %String* %bystrx_str, align 8
  %"$concat_call_315" = call %String @_concat_String(i8* %"$execptr_load_312", %String %"$$s_acc_5_313", %String %"$bystrx_str_314")
  store %String %"$concat_call_315", %String* %"$s_acc_6", align 8
  %"$gasrem_316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_317" = icmp ugt i64 1, %"$gasrem_316"
  br i1 %"$gascmp_317", label %"$out_of_gas_318", label %"$have_gas_319"

"$out_of_gas_318":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_319"

"$have_gas_319":                                  ; preds = %"$out_of_gas_318", %"$have_gas_310"
  %"$consume_320" = sub i64 %"$gasrem_316", 1
  store i64 %"$consume_320", i64* @_gasrem, align 8
  %"$s_acc_7" = alloca %String, align 8
  %"$execptr_load_321" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_6_322" = load %String, %String* %"$s_acc_6", align 8
  %"$bystr_str_323" = load %String, %String* %bystr_str, align 8
  %"$concat_call_324" = call %String @_concat_String(i8* %"$execptr_load_321", %String %"$$s_acc_6_322", %String %"$bystr_str_323")
  store %String %"$concat_call_324", %String* %"$s_acc_7", align 8
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_319"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_319"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %"$$s_acc_7_330" = load %String, %String* %"$s_acc_7", align 8
  store %String %"$$s_acc_7_330", %String* %"$expr_8", align 8
  %"$$expr_8_331" = load %String, %String* %"$expr_8", align 8
  ret %String %"$$expr_8_331"
}

declare void @_out_of_gas()

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %String @_to_string(i8*, %_TyDescrTy_Typ*, i8*)

declare %String @_concat_String(i8*, %String, %String)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_332" = call %String @_scilla_expr_fun(i8* null)
  %"$pval_333" = alloca %String, align 8
  %"$memvoidcast_334" = bitcast %String* %"$pval_333" to i8*
  store %String %"$exprval_332", %String* %"$pval_333", align 8
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$memvoidcast_334")
  ret void
}
