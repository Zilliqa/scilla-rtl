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
%"$ParamDescr_559" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_560" = type { %ParamDescrString, i32, %"$ParamDescr_559"* }
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
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_33", %_TyDescrTy_Typ* @"$TyDescr_Int64_15", %_TyDescrTy_Typ* @"$TyDescr_Uint256_25", %_TyDescrTy_Typ* @"$TyDescr_Uint32_13", %_TyDescrTy_Typ* @"$TyDescr_Uint64_17", %_TyDescrTy_Typ* @"$TyDescr_Bnum_29", %_TyDescrTy_Typ* @"$TyDescr_Uint128_21", %_TyDescrTy_Typ* @"$TyDescr_Bystr4_39", %_TyDescrTy_Typ* @"$TyDescr_Exception_35", %_TyDescrTy_Typ* @"$TyDescr_String_27", %_TyDescrTy_Typ* @"$TyDescr_Int256_23", %_TyDescrTy_Typ* @"$TyDescr_Int128_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ* @"$TyDescr_Message_31", %_TyDescrTy_Typ* @"$TyDescr_Int32_11"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_559"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_560"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define internal %String @_scilla_expr_fun(i8* %0) !dbg !9 {
entry:
  %"$expr_8" = alloca %String, align 8
  %"$gasrem_46" = load i64, i64* @_gasrem, align 8
  %"$gascmp_47" = icmp ugt i64 1, %"$gasrem_46"
  br i1 %"$gascmp_47", label %"$out_of_gas_48", label %"$have_gas_49"

"$out_of_gas_48":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_49"

"$have_gas_49":                                   ; preds = %"$out_of_gas_48", %entry
  %"$consume_50" = sub i64 %"$gasrem_46", 1
  store i64 %"$consume_50", i64* @_gasrem, align 8
  %uint32_val = alloca %Uint32, align 8
  %"$gasrem_51" = load i64, i64* @_gasrem, align 8
  %"$gascmp_52" = icmp ugt i64 1, %"$gasrem_51"
  br i1 %"$gascmp_52", label %"$out_of_gas_53", label %"$have_gas_54"

"$out_of_gas_53":                                 ; preds = %"$have_gas_49"
  call void @_out_of_gas()
  br label %"$have_gas_54"

"$have_gas_54":                                   ; preds = %"$out_of_gas_53", %"$have_gas_49"
  %"$consume_55" = sub i64 %"$gasrem_51", 1
  store i64 %"$consume_55", i64* @_gasrem, align 8
  store %Uint32 { i32 2011 }, %Uint32* %uint32_val, align 4, !dbg !10
  %"$gasrem_56" = load i64, i64* @_gasrem, align 8
  %"$gascmp_57" = icmp ugt i64 1, %"$gasrem_56"
  br i1 %"$gascmp_57", label %"$out_of_gas_58", label %"$have_gas_59"

"$out_of_gas_58":                                 ; preds = %"$have_gas_54"
  call void @_out_of_gas()
  br label %"$have_gas_59"

"$have_gas_59":                                   ; preds = %"$out_of_gas_58", %"$have_gas_54"
  %"$consume_60" = sub i64 %"$gasrem_56", 1
  store i64 %"$consume_60", i64* @_gasrem, align 8
  %uint64_val = alloca %Uint32, align 8
  %"$gasrem_61" = load i64, i64* @_gasrem, align 8
  %"$gascmp_62" = icmp ugt i64 1, %"$gasrem_61"
  br i1 %"$gascmp_62", label %"$out_of_gas_63", label %"$have_gas_64"

"$out_of_gas_63":                                 ; preds = %"$have_gas_59"
  call void @_out_of_gas()
  br label %"$have_gas_64"

"$have_gas_64":                                   ; preds = %"$out_of_gas_63", %"$have_gas_59"
  %"$consume_65" = sub i64 %"$gasrem_61", 1
  store i64 %"$consume_65", i64* @_gasrem, align 8
  store %Uint32 { i32 2012 }, %Uint32* %uint64_val, align 4, !dbg !11
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 1, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %"$have_gas_64"
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %"$have_gas_64"
  %"$consume_70" = sub i64 %"$gasrem_66", 1
  store i64 %"$consume_70", i64* @_gasrem, align 8
  %uint128_val = alloca %Uint32, align 8
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 1, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %"$have_gas_69"
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %"$have_gas_69"
  %"$consume_75" = sub i64 %"$gasrem_71", 1
  store i64 %"$consume_75", i64* @_gasrem, align 8
  store %Uint32 { i32 6018 }, %Uint32* %uint128_val, align 4, !dbg !12
  %"$gasrem_76" = load i64, i64* @_gasrem, align 8
  %"$gascmp_77" = icmp ugt i64 1, %"$gasrem_76"
  br i1 %"$gascmp_77", label %"$out_of_gas_78", label %"$have_gas_79"

"$out_of_gas_78":                                 ; preds = %"$have_gas_74"
  call void @_out_of_gas()
  br label %"$have_gas_79"

"$have_gas_79":                                   ; preds = %"$out_of_gas_78", %"$have_gas_74"
  %"$consume_80" = sub i64 %"$gasrem_76", 1
  store i64 %"$consume_80", i64* @_gasrem, align 8
  %uint256_val = alloca %Uint32, align 8
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 1, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %"$have_gas_79"
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %"$have_gas_79"
  %"$consume_85" = sub i64 %"$gasrem_81", 1
  store i64 %"$consume_85", i64* @_gasrem, align 8
  store %Uint32 { i32 551 }, %Uint32* %uint256_val, align 4, !dbg !13
  %"$gasrem_86" = load i64, i64* @_gasrem, align 8
  %"$gascmp_87" = icmp ugt i64 1, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %"$have_gas_84"
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %"$have_gas_84"
  %"$consume_90" = sub i64 %"$gasrem_86", 1
  store i64 %"$consume_90", i64* @_gasrem, align 8
  %int32_val = alloca %Int32, align 8
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %"$have_gas_89"
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %"$have_gas_89"
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem, align 8
  store %Int32 { i32 -2011 }, %Int32* %int32_val, align 4, !dbg !14
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_94"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_94"
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  %int64_val = alloca %Int32, align 8
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 1, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %"$have_gas_99"
  %"$consume_105" = sub i64 %"$gasrem_101", 1
  store i64 %"$consume_105", i64* @_gasrem, align 8
  store %Int32 { i32 2012 }, %Int32* %int64_val, align 4, !dbg !15
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_104"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_104"
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %int128_val = alloca %Int32, align 8
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 1, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_109"
  %"$consume_115" = sub i64 %"$gasrem_111", 1
  store i64 %"$consume_115", i64* @_gasrem, align 8
  store %Int32 { i32 -6018 }, %Int32* %int128_val, align 4, !dbg !16
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$have_gas_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem, align 8
  %int256_val = alloca %Int32, align 8
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_119"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_119"
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  store %Int32 { i32 -551 }, %Int32* %int256_val, align 4, !dbg !17
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_124"
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  %bystrx_val = alloca [4 x i8], align 1
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  store [4 x i8] c"\FF\00\CC\11", [4 x i8]* %bystrx_val, align 1, !dbg !18
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$have_gas_134"
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem, align 8
  %bystr_val = alloca %Bystr, align 8
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 4, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_139"
  %"$consume_145" = sub i64 %"$gasrem_141", 4
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %"$execptr_load_146" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bystrx_val_147" = alloca [4 x i8], align 1
  %"$bystrx_val_148" = load [4 x i8], [4 x i8]* %bystrx_val, align 1
  store [4 x i8] %"$bystrx_val_148", [4 x i8]* %"$to_bystr_bystrx_val_147", align 1
  %"$$to_bystr_bystrx_val_147_149" = bitcast [4 x i8]* %"$to_bystr_bystrx_val_147" to i8*
  %"$to_bystr_call_150" = call %Bystr @_to_bystr(i8* %"$execptr_load_146", i32 4, i8* %"$$to_bystr_bystrx_val_147_149"), !dbg !19
  store %Bystr %"$to_bystr_call_150", %Bystr* %bystr_val, align 8, !dbg !19
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_144"
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %uint32_str = alloca %String, align 8
  %"$_literal_cost_uint32_val_156" = alloca %Uint32, align 8
  %"$uint32_val_157" = load %Uint32, %Uint32* %uint32_val, align 4
  store %Uint32 %"$uint32_val_157", %Uint32* %"$_literal_cost_uint32_val_156", align 4
  %"$$_literal_cost_uint32_val_156_158" = bitcast %Uint32* %"$_literal_cost_uint32_val_156" to i8*
  %"$_literal_cost_call_159" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$_literal_cost_uint32_val_156_158")
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 %"$_literal_cost_call_159", %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_154"
  %"$consume_164" = sub i64 %"$gasrem_160", %"$_literal_cost_call_159"
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %"$execptr_load_165" = load i8*, i8** @_execptr, align 8
  %"$to_string_uint32_val_166" = alloca %Uint32, align 8
  %"$uint32_val_167" = load %Uint32, %Uint32* %uint32_val, align 4
  store %Uint32 %"$uint32_val_167", %Uint32* %"$to_string_uint32_val_166", align 4
  %"$$to_string_uint32_val_166_168" = bitcast %Uint32* %"$to_string_uint32_val_166" to i8*
  %"$to_string_call_169" = call %String @_to_string(i8* %"$execptr_load_165", %_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$to_string_uint32_val_166_168"), !dbg !20
  store %String %"$to_string_call_169", %String* %uint32_str, align 8, !dbg !20
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_163"
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %uint64_str = alloca %String, align 8
  %"$_literal_cost_uint64_val_175" = alloca %Uint32, align 8
  %"$uint64_val_176" = load %Uint32, %Uint32* %uint64_val, align 4
  store %Uint32 %"$uint64_val_176", %Uint32* %"$_literal_cost_uint64_val_175", align 4
  %"$$_literal_cost_uint64_val_175_177" = bitcast %Uint32* %"$_literal_cost_uint64_val_175" to i8*
  %"$_literal_cost_call_178" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$_literal_cost_uint64_val_175_177")
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 %"$_literal_cost_call_178", %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %"$have_gas_173"
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %"$have_gas_173"
  %"$consume_183" = sub i64 %"$gasrem_179", %"$_literal_cost_call_178"
  store i64 %"$consume_183", i64* @_gasrem, align 8
  %"$execptr_load_184" = load i8*, i8** @_execptr, align 8
  %"$to_string_uint64_val_185" = alloca %Uint32, align 8
  %"$uint64_val_186" = load %Uint32, %Uint32* %uint64_val, align 4
  store %Uint32 %"$uint64_val_186", %Uint32* %"$to_string_uint64_val_185", align 4
  %"$$to_string_uint64_val_185_187" = bitcast %Uint32* %"$to_string_uint64_val_185" to i8*
  %"$to_string_call_188" = call %String @_to_string(i8* %"$execptr_load_184", %_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$to_string_uint64_val_185_187"), !dbg !21
  store %String %"$to_string_call_188", %String* %uint64_str, align 8, !dbg !21
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_182"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_182"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %uint128_str = alloca %String, align 8
  %"$_literal_cost_uint128_val_194" = alloca %Uint32, align 8
  %"$uint128_val_195" = load %Uint32, %Uint32* %uint128_val, align 4
  store %Uint32 %"$uint128_val_195", %Uint32* %"$_literal_cost_uint128_val_194", align 4
  %"$$_literal_cost_uint128_val_194_196" = bitcast %Uint32* %"$_literal_cost_uint128_val_194" to i8*
  %"$_literal_cost_call_197" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$_literal_cost_uint128_val_194_196")
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
  %"$to_string_uint128_val_204" = alloca %Uint32, align 8
  %"$uint128_val_205" = load %Uint32, %Uint32* %uint128_val, align 4
  store %Uint32 %"$uint128_val_205", %Uint32* %"$to_string_uint128_val_204", align 4
  %"$$to_string_uint128_val_204_206" = bitcast %Uint32* %"$to_string_uint128_val_204" to i8*
  %"$to_string_call_207" = call %String @_to_string(i8* %"$execptr_load_203", %_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$to_string_uint128_val_204_206"), !dbg !22
  store %String %"$to_string_call_207", %String* %uint128_str, align 8, !dbg !22
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 1, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_201"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_201"
  %"$consume_212" = sub i64 %"$gasrem_208", 1
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %uint256_str = alloca %String, align 8
  %"$_literal_cost_uint256_val_213" = alloca %Uint32, align 8
  %"$uint256_val_214" = load %Uint32, %Uint32* %uint256_val, align 4
  store %Uint32 %"$uint256_val_214", %Uint32* %"$_literal_cost_uint256_val_213", align 4
  %"$$_literal_cost_uint256_val_213_215" = bitcast %Uint32* %"$_literal_cost_uint256_val_213" to i8*
  %"$_literal_cost_call_216" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$_literal_cost_uint256_val_213_215")
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
  %"$to_string_uint256_val_223" = alloca %Uint32, align 8
  %"$uint256_val_224" = load %Uint32, %Uint32* %uint256_val, align 4
  store %Uint32 %"$uint256_val_224", %Uint32* %"$to_string_uint256_val_223", align 4
  %"$$to_string_uint256_val_223_225" = bitcast %Uint32* %"$to_string_uint256_val_223" to i8*
  %"$to_string_call_226" = call %String @_to_string(i8* %"$execptr_load_222", %_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$to_string_uint256_val_223_225"), !dbg !23
  store %String %"$to_string_call_226", %String* %uint256_str, align 8, !dbg !23
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 1, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %"$have_gas_220"
  %"$consume_231" = sub i64 %"$gasrem_227", 1
  store i64 %"$consume_231", i64* @_gasrem, align 8
  %int32_str = alloca %String, align 8
  %"$_literal_cost_int32_val_232" = alloca %Int32, align 8
  %"$int32_val_233" = load %Int32, %Int32* %int32_val, align 4
  store %Int32 %"$int32_val_233", %Int32* %"$_literal_cost_int32_val_232", align 4
  %"$$_literal_cost_int32_val_232_234" = bitcast %Int32* %"$_literal_cost_int32_val_232" to i8*
  %"$_literal_cost_call_235" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$_literal_cost_int32_val_232_234")
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
  %"$to_string_int32_val_242" = alloca %Int32, align 8
  %"$int32_val_243" = load %Int32, %Int32* %int32_val, align 4
  store %Int32 %"$int32_val_243", %Int32* %"$to_string_int32_val_242", align 4
  %"$$to_string_int32_val_242_244" = bitcast %Int32* %"$to_string_int32_val_242" to i8*
  %"$to_string_call_245" = call %String @_to_string(i8* %"$execptr_load_241", %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$to_string_int32_val_242_244"), !dbg !24
  store %String %"$to_string_call_245", %String* %int32_str, align 8, !dbg !24
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 1, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$have_gas_239"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$have_gas_239"
  %"$consume_250" = sub i64 %"$gasrem_246", 1
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %int64_str = alloca %String, align 8
  %"$_literal_cost_int64_val_251" = alloca %Int32, align 8
  %"$int64_val_252" = load %Int32, %Int32* %int64_val, align 4
  store %Int32 %"$int64_val_252", %Int32* %"$_literal_cost_int64_val_251", align 4
  %"$$_literal_cost_int64_val_251_253" = bitcast %Int32* %"$_literal_cost_int64_val_251" to i8*
  %"$_literal_cost_call_254" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$_literal_cost_int64_val_251_253")
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
  %"$to_string_int64_val_261" = alloca %Int32, align 8
  %"$int64_val_262" = load %Int32, %Int32* %int64_val, align 4
  store %Int32 %"$int64_val_262", %Int32* %"$to_string_int64_val_261", align 4
  %"$$to_string_int64_val_261_263" = bitcast %Int32* %"$to_string_int64_val_261" to i8*
  %"$to_string_call_264" = call %String @_to_string(i8* %"$execptr_load_260", %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$to_string_int64_val_261_263"), !dbg !25
  store %String %"$to_string_call_264", %String* %int64_str, align 8, !dbg !25
  %"$gasrem_265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_266" = icmp ugt i64 1, %"$gasrem_265"
  br i1 %"$gascmp_266", label %"$out_of_gas_267", label %"$have_gas_268"

"$out_of_gas_267":                                ; preds = %"$have_gas_258"
  call void @_out_of_gas()
  br label %"$have_gas_268"

"$have_gas_268":                                  ; preds = %"$out_of_gas_267", %"$have_gas_258"
  %"$consume_269" = sub i64 %"$gasrem_265", 1
  store i64 %"$consume_269", i64* @_gasrem, align 8
  %int128_str = alloca %String, align 8
  %"$_literal_cost_int128_val_270" = alloca %Int32, align 8
  %"$int128_val_271" = load %Int32, %Int32* %int128_val, align 4
  store %Int32 %"$int128_val_271", %Int32* %"$_literal_cost_int128_val_270", align 4
  %"$$_literal_cost_int128_val_270_272" = bitcast %Int32* %"$_literal_cost_int128_val_270" to i8*
  %"$_literal_cost_call_273" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$_literal_cost_int128_val_270_272")
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
  %"$to_string_int128_val_280" = alloca %Int32, align 8
  %"$int128_val_281" = load %Int32, %Int32* %int128_val, align 4
  store %Int32 %"$int128_val_281", %Int32* %"$to_string_int128_val_280", align 4
  %"$$to_string_int128_val_280_282" = bitcast %Int32* %"$to_string_int128_val_280" to i8*
  %"$to_string_call_283" = call %String @_to_string(i8* %"$execptr_load_279", %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$to_string_int128_val_280_282"), !dbg !26
  store %String %"$to_string_call_283", %String* %int128_str, align 8, !dbg !26
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_277"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %int256_str = alloca %String, align 8
  %"$_literal_cost_int256_val_289" = alloca %Int32, align 8
  %"$int256_val_290" = load %Int32, %Int32* %int256_val, align 4
  store %Int32 %"$int256_val_290", %Int32* %"$_literal_cost_int256_val_289", align 4
  %"$$_literal_cost_int256_val_289_291" = bitcast %Int32* %"$_literal_cost_int256_val_289" to i8*
  %"$_literal_cost_call_292" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$_literal_cost_int256_val_289_291")
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
  %"$to_string_int256_val_299" = alloca %Int32, align 8
  %"$int256_val_300" = load %Int32, %Int32* %int256_val, align 4
  store %Int32 %"$int256_val_300", %Int32* %"$to_string_int256_val_299", align 4
  %"$$to_string_int256_val_299_301" = bitcast %Int32* %"$to_string_int256_val_299" to i8*
  %"$to_string_call_302" = call %String @_to_string(i8* %"$execptr_load_298", %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$to_string_int256_val_299_301"), !dbg !27
  store %String %"$to_string_call_302", %String* %int256_str, align 8, !dbg !27
  %"$gasrem_303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_304" = icmp ugt i64 1, %"$gasrem_303"
  br i1 %"$gascmp_304", label %"$out_of_gas_305", label %"$have_gas_306"

"$out_of_gas_305":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_306"

"$have_gas_306":                                  ; preds = %"$out_of_gas_305", %"$have_gas_296"
  %"$consume_307" = sub i64 %"$gasrem_303", 1
  store i64 %"$consume_307", i64* @_gasrem, align 8
  %bystrx_str = alloca %String, align 8
  %"$_literal_cost_bystrx_val_308" = alloca [4 x i8], align 1
  %"$bystrx_val_309" = load [4 x i8], [4 x i8]* %bystrx_val, align 1
  store [4 x i8] %"$bystrx_val_309", [4 x i8]* %"$_literal_cost_bystrx_val_308", align 1
  %"$$_literal_cost_bystrx_val_308_310" = bitcast [4 x i8]* %"$_literal_cost_bystrx_val_308" to i8*
  %"$_literal_cost_call_311" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr4_39", i8* %"$$_literal_cost_bystrx_val_308_310")
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
  %"$to_string_bystrx_val_318" = alloca [4 x i8], align 1
  %"$bystrx_val_319" = load [4 x i8], [4 x i8]* %bystrx_val, align 1
  store [4 x i8] %"$bystrx_val_319", [4 x i8]* %"$to_string_bystrx_val_318", align 1
  %"$$to_string_bystrx_val_318_320" = bitcast [4 x i8]* %"$to_string_bystrx_val_318" to i8*
  %"$to_string_call_321" = call %String @_to_string(i8* %"$execptr_load_317", %_TyDescrTy_Typ* @"$TyDescr_Bystr4_39", i8* %"$$to_string_bystrx_val_318_320"), !dbg !28
  store %String %"$to_string_call_321", %String* %bystrx_str, align 8, !dbg !28
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 1, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$have_gas_315"
  %"$consume_326" = sub i64 %"$gasrem_322", 1
  store i64 %"$consume_326", i64* @_gasrem, align 8
  %bystr_str = alloca %String, align 8
  %"$_literal_cost_bystr_val_327" = alloca %Bystr, align 8
  %"$bystr_val_328" = load %Bystr, %Bystr* %bystr_val, align 8
  store %Bystr %"$bystr_val_328", %Bystr* %"$_literal_cost_bystr_val_327", align 8
  %"$$_literal_cost_bystr_val_327_329" = bitcast %Bystr* %"$_literal_cost_bystr_val_327" to i8*
  %"$_literal_cost_call_330" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_37", i8* %"$$_literal_cost_bystr_val_327_329")
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
  %"$to_string_bystr_val_337" = alloca %Bystr, align 8
  %"$bystr_val_338" = load %Bystr, %Bystr* %bystr_val, align 8
  store %Bystr %"$bystr_val_338", %Bystr* %"$to_string_bystr_val_337", align 8
  %"$$to_string_bystr_val_337_339" = bitcast %Bystr* %"$to_string_bystr_val_337" to i8*
  %"$to_string_call_340" = call %String @_to_string(i8* %"$execptr_load_336", %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", i8* %"$$to_string_bystr_val_337_339"), !dbg !29
  store %String %"$to_string_call_340", %String* %bystr_str, align 8, !dbg !29
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %"$have_gas_334"
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  %s_acc = alloca %String, align 8
  %"$_literal_cost_uint32_str_346" = alloca %String, align 8
  %"$uint32_str_347" = load %String, %String* %uint32_str, align 8
  store %String %"$uint32_str_347", %String* %"$_literal_cost_uint32_str_346", align 8
  %"$$_literal_cost_uint32_str_346_348" = bitcast %String* %"$_literal_cost_uint32_str_346" to i8*
  %"$_literal_cost_call_349" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$$_literal_cost_uint32_str_346_348")
  %"$_literal_cost_uint64_str_350" = alloca %String, align 8
  %"$uint64_str_351" = load %String, %String* %uint64_str, align 8
  store %String %"$uint64_str_351", %String* %"$_literal_cost_uint64_str_350", align 8
  %"$$_literal_cost_uint64_str_350_352" = bitcast %String* %"$_literal_cost_uint64_str_350" to i8*
  %"$_literal_cost_call_353" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$$_literal_cost_uint64_str_350_352")
  %"$gasadd_354" = add i64 %"$_literal_cost_call_349", %"$_literal_cost_call_353"
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 %"$gasadd_354", %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %"$have_gas_344"
  %"$consume_359" = sub i64 %"$gasrem_355", %"$gasadd_354"
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %"$execptr_load_360" = load i8*, i8** @_execptr, align 8
  %"$uint32_str_361" = load %String, %String* %uint32_str, align 8
  %"$uint64_str_362" = load %String, %String* %uint64_str, align 8
  %"$concat_call_363" = call %String @_concat_String(i8* %"$execptr_load_360", %String %"$uint32_str_361", %String %"$uint64_str_362"), !dbg !30
  store %String %"$concat_call_363", %String* %s_acc, align 8, !dbg !30
  %"$gasrem_364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_365" = icmp ugt i64 1, %"$gasrem_364"
  br i1 %"$gascmp_365", label %"$out_of_gas_366", label %"$have_gas_367"

"$out_of_gas_366":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_367"

"$have_gas_367":                                  ; preds = %"$out_of_gas_366", %"$have_gas_358"
  %"$consume_368" = sub i64 %"$gasrem_364", 1
  store i64 %"$consume_368", i64* @_gasrem, align 8
  %"$s_acc_0" = alloca %String, align 8
  %"$_literal_cost_s_acc_369" = alloca %String, align 8
  %"$s_acc_370" = load %String, %String* %s_acc, align 8
  store %String %"$s_acc_370", %String* %"$_literal_cost_s_acc_369", align 8
  %"$$_literal_cost_s_acc_369_371" = bitcast %String* %"$_literal_cost_s_acc_369" to i8*
  %"$_literal_cost_call_372" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$$_literal_cost_s_acc_369_371")
  %"$_literal_cost_uint128_str_373" = alloca %String, align 8
  %"$uint128_str_374" = load %String, %String* %uint128_str, align 8
  store %String %"$uint128_str_374", %String* %"$_literal_cost_uint128_str_373", align 8
  %"$$_literal_cost_uint128_str_373_375" = bitcast %String* %"$_literal_cost_uint128_str_373" to i8*
  %"$_literal_cost_call_376" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$$_literal_cost_uint128_str_373_375")
  %"$gasadd_377" = add i64 %"$_literal_cost_call_372", %"$_literal_cost_call_376"
  %"$gasrem_378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_379" = icmp ugt i64 %"$gasadd_377", %"$gasrem_378"
  br i1 %"$gascmp_379", label %"$out_of_gas_380", label %"$have_gas_381"

"$out_of_gas_380":                                ; preds = %"$have_gas_367"
  call void @_out_of_gas()
  br label %"$have_gas_381"

"$have_gas_381":                                  ; preds = %"$out_of_gas_380", %"$have_gas_367"
  %"$consume_382" = sub i64 %"$gasrem_378", %"$gasadd_377"
  store i64 %"$consume_382", i64* @_gasrem, align 8
  %"$execptr_load_383" = load i8*, i8** @_execptr, align 8
  %"$s_acc_384" = load %String, %String* %s_acc, align 8
  %"$uint128_str_385" = load %String, %String* %uint128_str, align 8
  %"$concat_call_386" = call %String @_concat_String(i8* %"$execptr_load_383", %String %"$s_acc_384", %String %"$uint128_str_385"), !dbg !31
  store %String %"$concat_call_386", %String* %"$s_acc_0", align 8, !dbg !31
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 1, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_381"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_381"
  %"$consume_391" = sub i64 %"$gasrem_387", 1
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %"$s_acc_1" = alloca %String, align 8
  %"$_literal_cost_$s_acc_0_392" = alloca %String, align 8
  %"$$s_acc_0_393" = load %String, %String* %"$s_acc_0", align 8
  store %String %"$$s_acc_0_393", %String* %"$_literal_cost_$s_acc_0_392", align 8
  %"$$_literal_cost_$s_acc_0_392_394" = bitcast %String* %"$_literal_cost_$s_acc_0_392" to i8*
  %"$_literal_cost_call_395" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$$_literal_cost_$s_acc_0_392_394")
  %"$_literal_cost_uint256_str_396" = alloca %String, align 8
  %"$uint256_str_397" = load %String, %String* %uint256_str, align 8
  store %String %"$uint256_str_397", %String* %"$_literal_cost_uint256_str_396", align 8
  %"$$_literal_cost_uint256_str_396_398" = bitcast %String* %"$_literal_cost_uint256_str_396" to i8*
  %"$_literal_cost_call_399" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$$_literal_cost_uint256_str_396_398")
  %"$gasadd_400" = add i64 %"$_literal_cost_call_395", %"$_literal_cost_call_399"
  %"$gasrem_401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_402" = icmp ugt i64 %"$gasadd_400", %"$gasrem_401"
  br i1 %"$gascmp_402", label %"$out_of_gas_403", label %"$have_gas_404"

"$out_of_gas_403":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_404"

"$have_gas_404":                                  ; preds = %"$out_of_gas_403", %"$have_gas_390"
  %"$consume_405" = sub i64 %"$gasrem_401", %"$gasadd_400"
  store i64 %"$consume_405", i64* @_gasrem, align 8
  %"$execptr_load_406" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_0_407" = load %String, %String* %"$s_acc_0", align 8
  %"$uint256_str_408" = load %String, %String* %uint256_str, align 8
  %"$concat_call_409" = call %String @_concat_String(i8* %"$execptr_load_406", %String %"$$s_acc_0_407", %String %"$uint256_str_408"), !dbg !32
  store %String %"$concat_call_409", %String* %"$s_acc_1", align 8, !dbg !32
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$have_gas_404"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$have_gas_404"
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  %"$s_acc_2" = alloca %String, align 8
  %"$_literal_cost_$s_acc_1_415" = alloca %String, align 8
  %"$$s_acc_1_416" = load %String, %String* %"$s_acc_1", align 8
  store %String %"$$s_acc_1_416", %String* %"$_literal_cost_$s_acc_1_415", align 8
  %"$$_literal_cost_$s_acc_1_415_417" = bitcast %String* %"$_literal_cost_$s_acc_1_415" to i8*
  %"$_literal_cost_call_418" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$$_literal_cost_$s_acc_1_415_417")
  %"$_literal_cost_int32_str_419" = alloca %String, align 8
  %"$int32_str_420" = load %String, %String* %int32_str, align 8
  store %String %"$int32_str_420", %String* %"$_literal_cost_int32_str_419", align 8
  %"$$_literal_cost_int32_str_419_421" = bitcast %String* %"$_literal_cost_int32_str_419" to i8*
  %"$_literal_cost_call_422" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$$_literal_cost_int32_str_419_421")
  %"$gasadd_423" = add i64 %"$_literal_cost_call_418", %"$_literal_cost_call_422"
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 %"$gasadd_423", %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_413"
  %"$consume_428" = sub i64 %"$gasrem_424", %"$gasadd_423"
  store i64 %"$consume_428", i64* @_gasrem, align 8
  %"$execptr_load_429" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_1_430" = load %String, %String* %"$s_acc_1", align 8
  %"$int32_str_431" = load %String, %String* %int32_str, align 8
  %"$concat_call_432" = call %String @_concat_String(i8* %"$execptr_load_429", %String %"$$s_acc_1_430", %String %"$int32_str_431"), !dbg !33
  store %String %"$concat_call_432", %String* %"$s_acc_2", align 8, !dbg !33
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_427"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %"$s_acc_3" = alloca %String, align 8
  %"$_literal_cost_$s_acc_2_438" = alloca %String, align 8
  %"$$s_acc_2_439" = load %String, %String* %"$s_acc_2", align 8
  store %String %"$$s_acc_2_439", %String* %"$_literal_cost_$s_acc_2_438", align 8
  %"$$_literal_cost_$s_acc_2_438_440" = bitcast %String* %"$_literal_cost_$s_acc_2_438" to i8*
  %"$_literal_cost_call_441" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$$_literal_cost_$s_acc_2_438_440")
  %"$_literal_cost_int64_str_442" = alloca %String, align 8
  %"$int64_str_443" = load %String, %String* %int64_str, align 8
  store %String %"$int64_str_443", %String* %"$_literal_cost_int64_str_442", align 8
  %"$$_literal_cost_int64_str_442_444" = bitcast %String* %"$_literal_cost_int64_str_442" to i8*
  %"$_literal_cost_call_445" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$$_literal_cost_int64_str_442_444")
  %"$gasadd_446" = add i64 %"$_literal_cost_call_441", %"$_literal_cost_call_445"
  %"$gasrem_447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_448" = icmp ugt i64 %"$gasadd_446", %"$gasrem_447"
  br i1 %"$gascmp_448", label %"$out_of_gas_449", label %"$have_gas_450"

"$out_of_gas_449":                                ; preds = %"$have_gas_436"
  call void @_out_of_gas()
  br label %"$have_gas_450"

"$have_gas_450":                                  ; preds = %"$out_of_gas_449", %"$have_gas_436"
  %"$consume_451" = sub i64 %"$gasrem_447", %"$gasadd_446"
  store i64 %"$consume_451", i64* @_gasrem, align 8
  %"$execptr_load_452" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_2_453" = load %String, %String* %"$s_acc_2", align 8
  %"$int64_str_454" = load %String, %String* %int64_str, align 8
  %"$concat_call_455" = call %String @_concat_String(i8* %"$execptr_load_452", %String %"$$s_acc_2_453", %String %"$int64_str_454"), !dbg !34
  store %String %"$concat_call_455", %String* %"$s_acc_3", align 8, !dbg !34
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$have_gas_450"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$have_gas_450"
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem, align 8
  %"$s_acc_4" = alloca %String, align 8
  %"$_literal_cost_$s_acc_3_461" = alloca %String, align 8
  %"$$s_acc_3_462" = load %String, %String* %"$s_acc_3", align 8
  store %String %"$$s_acc_3_462", %String* %"$_literal_cost_$s_acc_3_461", align 8
  %"$$_literal_cost_$s_acc_3_461_463" = bitcast %String* %"$_literal_cost_$s_acc_3_461" to i8*
  %"$_literal_cost_call_464" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$$_literal_cost_$s_acc_3_461_463")
  %"$_literal_cost_int128_str_465" = alloca %String, align 8
  %"$int128_str_466" = load %String, %String* %int128_str, align 8
  store %String %"$int128_str_466", %String* %"$_literal_cost_int128_str_465", align 8
  %"$$_literal_cost_int128_str_465_467" = bitcast %String* %"$_literal_cost_int128_str_465" to i8*
  %"$_literal_cost_call_468" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$$_literal_cost_int128_str_465_467")
  %"$gasadd_469" = add i64 %"$_literal_cost_call_464", %"$_literal_cost_call_468"
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 %"$gasadd_469", %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$have_gas_459"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$have_gas_459"
  %"$consume_474" = sub i64 %"$gasrem_470", %"$gasadd_469"
  store i64 %"$consume_474", i64* @_gasrem, align 8
  %"$execptr_load_475" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_3_476" = load %String, %String* %"$s_acc_3", align 8
  %"$int128_str_477" = load %String, %String* %int128_str, align 8
  %"$concat_call_478" = call %String @_concat_String(i8* %"$execptr_load_475", %String %"$$s_acc_3_476", %String %"$int128_str_477"), !dbg !35
  store %String %"$concat_call_478", %String* %"$s_acc_4", align 8, !dbg !35
  %"$gasrem_479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_480" = icmp ugt i64 1, %"$gasrem_479"
  br i1 %"$gascmp_480", label %"$out_of_gas_481", label %"$have_gas_482"

"$out_of_gas_481":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_482"

"$have_gas_482":                                  ; preds = %"$out_of_gas_481", %"$have_gas_473"
  %"$consume_483" = sub i64 %"$gasrem_479", 1
  store i64 %"$consume_483", i64* @_gasrem, align 8
  %"$s_acc_5" = alloca %String, align 8
  %"$_literal_cost_$s_acc_4_484" = alloca %String, align 8
  %"$$s_acc_4_485" = load %String, %String* %"$s_acc_4", align 8
  store %String %"$$s_acc_4_485", %String* %"$_literal_cost_$s_acc_4_484", align 8
  %"$$_literal_cost_$s_acc_4_484_486" = bitcast %String* %"$_literal_cost_$s_acc_4_484" to i8*
  %"$_literal_cost_call_487" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$$_literal_cost_$s_acc_4_484_486")
  %"$_literal_cost_int256_str_488" = alloca %String, align 8
  %"$int256_str_489" = load %String, %String* %int256_str, align 8
  store %String %"$int256_str_489", %String* %"$_literal_cost_int256_str_488", align 8
  %"$$_literal_cost_int256_str_488_490" = bitcast %String* %"$_literal_cost_int256_str_488" to i8*
  %"$_literal_cost_call_491" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$$_literal_cost_int256_str_488_490")
  %"$gasadd_492" = add i64 %"$_literal_cost_call_487", %"$_literal_cost_call_491"
  %"$gasrem_493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_494" = icmp ugt i64 %"$gasadd_492", %"$gasrem_493"
  br i1 %"$gascmp_494", label %"$out_of_gas_495", label %"$have_gas_496"

"$out_of_gas_495":                                ; preds = %"$have_gas_482"
  call void @_out_of_gas()
  br label %"$have_gas_496"

"$have_gas_496":                                  ; preds = %"$out_of_gas_495", %"$have_gas_482"
  %"$consume_497" = sub i64 %"$gasrem_493", %"$gasadd_492"
  store i64 %"$consume_497", i64* @_gasrem, align 8
  %"$execptr_load_498" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_4_499" = load %String, %String* %"$s_acc_4", align 8
  %"$int256_str_500" = load %String, %String* %int256_str, align 8
  %"$concat_call_501" = call %String @_concat_String(i8* %"$execptr_load_498", %String %"$$s_acc_4_499", %String %"$int256_str_500"), !dbg !36
  store %String %"$concat_call_501", %String* %"$s_acc_5", align 8, !dbg !36
  %"$gasrem_502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_503" = icmp ugt i64 1, %"$gasrem_502"
  br i1 %"$gascmp_503", label %"$out_of_gas_504", label %"$have_gas_505"

"$out_of_gas_504":                                ; preds = %"$have_gas_496"
  call void @_out_of_gas()
  br label %"$have_gas_505"

"$have_gas_505":                                  ; preds = %"$out_of_gas_504", %"$have_gas_496"
  %"$consume_506" = sub i64 %"$gasrem_502", 1
  store i64 %"$consume_506", i64* @_gasrem, align 8
  %"$s_acc_6" = alloca %String, align 8
  %"$_literal_cost_$s_acc_5_507" = alloca %String, align 8
  %"$$s_acc_5_508" = load %String, %String* %"$s_acc_5", align 8
  store %String %"$$s_acc_5_508", %String* %"$_literal_cost_$s_acc_5_507", align 8
  %"$$_literal_cost_$s_acc_5_507_509" = bitcast %String* %"$_literal_cost_$s_acc_5_507" to i8*
  %"$_literal_cost_call_510" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$$_literal_cost_$s_acc_5_507_509")
  %"$_literal_cost_bystrx_str_511" = alloca %String, align 8
  %"$bystrx_str_512" = load %String, %String* %bystrx_str, align 8
  store %String %"$bystrx_str_512", %String* %"$_literal_cost_bystrx_str_511", align 8
  %"$$_literal_cost_bystrx_str_511_513" = bitcast %String* %"$_literal_cost_bystrx_str_511" to i8*
  %"$_literal_cost_call_514" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$$_literal_cost_bystrx_str_511_513")
  %"$gasadd_515" = add i64 %"$_literal_cost_call_510", %"$_literal_cost_call_514"
  %"$gasrem_516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_517" = icmp ugt i64 %"$gasadd_515", %"$gasrem_516"
  br i1 %"$gascmp_517", label %"$out_of_gas_518", label %"$have_gas_519"

"$out_of_gas_518":                                ; preds = %"$have_gas_505"
  call void @_out_of_gas()
  br label %"$have_gas_519"

"$have_gas_519":                                  ; preds = %"$out_of_gas_518", %"$have_gas_505"
  %"$consume_520" = sub i64 %"$gasrem_516", %"$gasadd_515"
  store i64 %"$consume_520", i64* @_gasrem, align 8
  %"$execptr_load_521" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_5_522" = load %String, %String* %"$s_acc_5", align 8
  %"$bystrx_str_523" = load %String, %String* %bystrx_str, align 8
  %"$concat_call_524" = call %String @_concat_String(i8* %"$execptr_load_521", %String %"$$s_acc_5_522", %String %"$bystrx_str_523"), !dbg !37
  store %String %"$concat_call_524", %String* %"$s_acc_6", align 8, !dbg !37
  %"$gasrem_525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_526" = icmp ugt i64 1, %"$gasrem_525"
  br i1 %"$gascmp_526", label %"$out_of_gas_527", label %"$have_gas_528"

"$out_of_gas_527":                                ; preds = %"$have_gas_519"
  call void @_out_of_gas()
  br label %"$have_gas_528"

"$have_gas_528":                                  ; preds = %"$out_of_gas_527", %"$have_gas_519"
  %"$consume_529" = sub i64 %"$gasrem_525", 1
  store i64 %"$consume_529", i64* @_gasrem, align 8
  %"$s_acc_7" = alloca %String, align 8
  %"$_literal_cost_$s_acc_6_530" = alloca %String, align 8
  %"$$s_acc_6_531" = load %String, %String* %"$s_acc_6", align 8
  store %String %"$$s_acc_6_531", %String* %"$_literal_cost_$s_acc_6_530", align 8
  %"$$_literal_cost_$s_acc_6_530_532" = bitcast %String* %"$_literal_cost_$s_acc_6_530" to i8*
  %"$_literal_cost_call_533" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$$_literal_cost_$s_acc_6_530_532")
  %"$_literal_cost_bystr_str_534" = alloca %String, align 8
  %"$bystr_str_535" = load %String, %String* %bystr_str, align 8
  store %String %"$bystr_str_535", %String* %"$_literal_cost_bystr_str_534", align 8
  %"$$_literal_cost_bystr_str_534_536" = bitcast %String* %"$_literal_cost_bystr_str_534" to i8*
  %"$_literal_cost_call_537" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$$_literal_cost_bystr_str_534_536")
  %"$gasadd_538" = add i64 %"$_literal_cost_call_533", %"$_literal_cost_call_537"
  %"$gasrem_539" = load i64, i64* @_gasrem, align 8
  %"$gascmp_540" = icmp ugt i64 %"$gasadd_538", %"$gasrem_539"
  br i1 %"$gascmp_540", label %"$out_of_gas_541", label %"$have_gas_542"

"$out_of_gas_541":                                ; preds = %"$have_gas_528"
  call void @_out_of_gas()
  br label %"$have_gas_542"

"$have_gas_542":                                  ; preds = %"$out_of_gas_541", %"$have_gas_528"
  %"$consume_543" = sub i64 %"$gasrem_539", %"$gasadd_538"
  store i64 %"$consume_543", i64* @_gasrem, align 8
  %"$execptr_load_544" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_6_545" = load %String, %String* %"$s_acc_6", align 8
  %"$bystr_str_546" = load %String, %String* %bystr_str, align 8
  %"$concat_call_547" = call %String @_concat_String(i8* %"$execptr_load_544", %String %"$$s_acc_6_545", %String %"$bystr_str_546"), !dbg !38
  store %String %"$concat_call_547", %String* %"$s_acc_7", align 8, !dbg !38
  %"$gasrem_548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_549" = icmp ugt i64 1, %"$gasrem_548"
  br i1 %"$gascmp_549", label %"$out_of_gas_550", label %"$have_gas_551"

"$out_of_gas_550":                                ; preds = %"$have_gas_542"
  call void @_out_of_gas()
  br label %"$have_gas_551"

"$have_gas_551":                                  ; preds = %"$out_of_gas_550", %"$have_gas_542"
  %"$consume_552" = sub i64 %"$gasrem_548", 1
  store i64 %"$consume_552", i64* @_gasrem, align 8
  %"$$s_acc_7_553" = load %String, %String* %"$s_acc_7", align 8
  store %String %"$$s_acc_7_553", %String* %"$expr_8", align 8, !dbg !39
  %"$$expr_8_554" = load %String, %String* %"$expr_8", align 8
  ret %String %"$$expr_8_554"
}

declare void @_out_of_gas()

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare %String @_to_string(i8*, %_TyDescrTy_Typ*, i8*)

declare %String @_concat_String(i8*, %String, %String)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_555" = call %String @_scilla_expr_fun(i8* null)
  %"$pval_556" = alloca %String, align 8
  %"$memvoidcast_557" = bitcast %String* %"$pval_556" to i8*
  store %String %"$exprval_555", %String* %"$pval_556", align 8
  %"$execptr_load_558" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_558", %_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$memvoidcast_557")
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
!9 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 1, column: 18, scope: !9)
!11 = !DILocation(line: 2, column: 18, scope: !9)
!12 = !DILocation(line: 3, column: 19, scope: !9)
!13 = !DILocation(line: 4, column: 19, scope: !9)
!14 = !DILocation(line: 6, column: 17, scope: !9)
!15 = !DILocation(line: 7, column: 17, scope: !9)
!16 = !DILocation(line: 8, column: 18, scope: !9)
!17 = !DILocation(line: 9, column: 18, scope: !9)
!18 = !DILocation(line: 11, column: 18, scope: !9)
!19 = !DILocation(line: 12, column: 17, scope: !9)
!20 = !DILocation(line: 14, column: 18, scope: !9)
!21 = !DILocation(line: 15, column: 18, scope: !9)
!22 = !DILocation(line: 16, column: 19, scope: !9)
!23 = !DILocation(line: 17, column: 19, scope: !9)
!24 = !DILocation(line: 19, column: 17, scope: !9)
!25 = !DILocation(line: 20, column: 17, scope: !9)
!26 = !DILocation(line: 21, column: 18, scope: !9)
!27 = !DILocation(line: 22, column: 18, scope: !9)
!28 = !DILocation(line: 24, column: 18, scope: !9)
!29 = !DILocation(line: 25, column: 17, scope: !9)
!30 = !DILocation(line: 27, column: 13, scope: !9)
!31 = !DILocation(line: 28, column: 13, scope: !9)
!32 = !DILocation(line: 29, column: 13, scope: !9)
!33 = !DILocation(line: 30, column: 13, scope: !9)
!34 = !DILocation(line: 31, column: 13, scope: !9)
!35 = !DILocation(line: 32, column: 13, scope: !9)
!36 = !DILocation(line: 33, column: 13, scope: !9)
!37 = !DILocation(line: 34, column: 13, scope: !9)
!38 = !DILocation(line: 35, column: 13, scope: !9)
!39 = !DILocation(line: 36, column: 1, scope: !9)
