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
%"$ParamDescr_337" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_338" = type { %ParamDescrString, i32, %"$ParamDescr_337"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_337"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_338"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  ret void
}

define internal %String @_scilla_expr_fun(i8* %0) {
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
  store %Uint32 { i32 2011 }, %Uint32* %uint32_val, align 4
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
  store %Uint32 { i32 2012 }, %Uint32* %uint64_val, align 4
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
  store %Uint32 { i32 6018 }, %Uint32* %uint128_val, align 4
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
  store %Uint32 { i32 551 }, %Uint32* %uint256_val, align 4
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
  store %Int32 { i32 -2011 }, %Int32* %int32_val, align 4
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
  store %Int32 { i32 2012 }, %Int32* %int64_val, align 4
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
  store %Int32 { i32 -6018 }, %Int32* %int128_val, align 4
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
  store %Int32 { i32 -551 }, %Int32* %int256_val, align 4
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
  store [4 x i8] c"\FF\00\CC\11", [4 x i8]* %bystrx_val, align 1
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
  %"$execptr_load_141" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bystrx_val_142" = alloca [4 x i8], align 1
  %"$bystrx_val_143" = load [4 x i8], [4 x i8]* %bystrx_val, align 1
  store [4 x i8] %"$bystrx_val_143", [4 x i8]* %"$to_bystr_bystrx_val_142", align 1
  %"$$to_bystr_bystrx_val_142_144" = bitcast [4 x i8]* %"$to_bystr_bystrx_val_142" to i8*
  %"$to_bystr_call_145" = call %Bystr @_to_bystr(i8* %"$execptr_load_141", i32 4, i8* %"$$to_bystr_bystrx_val_142_144")
  store %Bystr %"$to_bystr_call_145", %Bystr* %bystr_val, align 8
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_139"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %uint32_str = alloca %String, align 8
  %"$execptr_load_151" = load i8*, i8** @_execptr, align 8
  %"$to_string_uint32_val_152" = alloca %Uint32, align 8
  %"$uint32_val_153" = load %Uint32, %Uint32* %uint32_val, align 4
  store %Uint32 %"$uint32_val_153", %Uint32* %"$to_string_uint32_val_152", align 4
  %"$$to_string_uint32_val_152_154" = bitcast %Uint32* %"$to_string_uint32_val_152" to i8*
  %"$to_string_call_155" = call %String @_to_string(i8* %"$execptr_load_151", %_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$to_string_uint32_val_152_154")
  store %String %"$to_string_call_155", %String* %uint32_str, align 8
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_149"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %uint64_str = alloca %String, align 8
  %"$execptr_load_161" = load i8*, i8** @_execptr, align 8
  %"$to_string_uint64_val_162" = alloca %Uint32, align 8
  %"$uint64_val_163" = load %Uint32, %Uint32* %uint64_val, align 4
  store %Uint32 %"$uint64_val_163", %Uint32* %"$to_string_uint64_val_162", align 4
  %"$$to_string_uint64_val_162_164" = bitcast %Uint32* %"$to_string_uint64_val_162" to i8*
  %"$to_string_call_165" = call %String @_to_string(i8* %"$execptr_load_161", %_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$to_string_uint64_val_162_164")
  store %String %"$to_string_call_165", %String* %uint64_str, align 8
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_159"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  %uint128_str = alloca %String, align 8
  %"$execptr_load_171" = load i8*, i8** @_execptr, align 8
  %"$to_string_uint128_val_172" = alloca %Uint32, align 8
  %"$uint128_val_173" = load %Uint32, %Uint32* %uint128_val, align 4
  store %Uint32 %"$uint128_val_173", %Uint32* %"$to_string_uint128_val_172", align 4
  %"$$to_string_uint128_val_172_174" = bitcast %Uint32* %"$to_string_uint128_val_172" to i8*
  %"$to_string_call_175" = call %String @_to_string(i8* %"$execptr_load_171", %_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$to_string_uint128_val_172_174")
  store %String %"$to_string_call_175", %String* %uint128_str, align 8
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_169"
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %uint256_str = alloca %String, align 8
  %"$execptr_load_181" = load i8*, i8** @_execptr, align 8
  %"$to_string_uint256_val_182" = alloca %Uint32, align 8
  %"$uint256_val_183" = load %Uint32, %Uint32* %uint256_val, align 4
  store %Uint32 %"$uint256_val_183", %Uint32* %"$to_string_uint256_val_182", align 4
  %"$$to_string_uint256_val_182_184" = bitcast %Uint32* %"$to_string_uint256_val_182" to i8*
  %"$to_string_call_185" = call %String @_to_string(i8* %"$execptr_load_181", %_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$to_string_uint256_val_182_184")
  store %String %"$to_string_call_185", %String* %uint256_str, align 8
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$have_gas_179"
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %int32_str = alloca %String, align 8
  %"$execptr_load_191" = load i8*, i8** @_execptr, align 8
  %"$to_string_int32_val_192" = alloca %Int32, align 8
  %"$int32_val_193" = load %Int32, %Int32* %int32_val, align 4
  store %Int32 %"$int32_val_193", %Int32* %"$to_string_int32_val_192", align 4
  %"$$to_string_int32_val_192_194" = bitcast %Int32* %"$to_string_int32_val_192" to i8*
  %"$to_string_call_195" = call %String @_to_string(i8* %"$execptr_load_191", %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$to_string_int32_val_192_194")
  store %String %"$to_string_call_195", %String* %int32_str, align 8
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 1, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %"$have_gas_189"
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %"$have_gas_189"
  %"$consume_200" = sub i64 %"$gasrem_196", 1
  store i64 %"$consume_200", i64* @_gasrem, align 8
  %int64_str = alloca %String, align 8
  %"$execptr_load_201" = load i8*, i8** @_execptr, align 8
  %"$to_string_int64_val_202" = alloca %Int32, align 8
  %"$int64_val_203" = load %Int32, %Int32* %int64_val, align 4
  store %Int32 %"$int64_val_203", %Int32* %"$to_string_int64_val_202", align 4
  %"$$to_string_int64_val_202_204" = bitcast %Int32* %"$to_string_int64_val_202" to i8*
  %"$to_string_call_205" = call %String @_to_string(i8* %"$execptr_load_201", %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$to_string_int64_val_202_204")
  store %String %"$to_string_call_205", %String* %int64_str, align 8
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 1, %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %"$have_gas_199"
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %"$have_gas_199"
  %"$consume_210" = sub i64 %"$gasrem_206", 1
  store i64 %"$consume_210", i64* @_gasrem, align 8
  %int128_str = alloca %String, align 8
  %"$execptr_load_211" = load i8*, i8** @_execptr, align 8
  %"$to_string_int128_val_212" = alloca %Int32, align 8
  %"$int128_val_213" = load %Int32, %Int32* %int128_val, align 4
  store %Int32 %"$int128_val_213", %Int32* %"$to_string_int128_val_212", align 4
  %"$$to_string_int128_val_212_214" = bitcast %Int32* %"$to_string_int128_val_212" to i8*
  %"$to_string_call_215" = call %String @_to_string(i8* %"$execptr_load_211", %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$to_string_int128_val_212_214")
  store %String %"$to_string_call_215", %String* %int128_str, align 8
  %"$gasrem_216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_217" = icmp ugt i64 1, %"$gasrem_216"
  br i1 %"$gascmp_217", label %"$out_of_gas_218", label %"$have_gas_219"

"$out_of_gas_218":                                ; preds = %"$have_gas_209"
  call void @_out_of_gas()
  br label %"$have_gas_219"

"$have_gas_219":                                  ; preds = %"$out_of_gas_218", %"$have_gas_209"
  %"$consume_220" = sub i64 %"$gasrem_216", 1
  store i64 %"$consume_220", i64* @_gasrem, align 8
  %int256_str = alloca %String, align 8
  %"$execptr_load_221" = load i8*, i8** @_execptr, align 8
  %"$to_string_int256_val_222" = alloca %Int32, align 8
  %"$int256_val_223" = load %Int32, %Int32* %int256_val, align 4
  store %Int32 %"$int256_val_223", %Int32* %"$to_string_int256_val_222", align 4
  %"$$to_string_int256_val_222_224" = bitcast %Int32* %"$to_string_int256_val_222" to i8*
  %"$to_string_call_225" = call %String @_to_string(i8* %"$execptr_load_221", %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$to_string_int256_val_222_224")
  store %String %"$to_string_call_225", %String* %int256_str, align 8
  %"$gasrem_226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_227" = icmp ugt i64 1, %"$gasrem_226"
  br i1 %"$gascmp_227", label %"$out_of_gas_228", label %"$have_gas_229"

"$out_of_gas_228":                                ; preds = %"$have_gas_219"
  call void @_out_of_gas()
  br label %"$have_gas_229"

"$have_gas_229":                                  ; preds = %"$out_of_gas_228", %"$have_gas_219"
  %"$consume_230" = sub i64 %"$gasrem_226", 1
  store i64 %"$consume_230", i64* @_gasrem, align 8
  %bystrx_str = alloca %String, align 8
  %"$execptr_load_231" = load i8*, i8** @_execptr, align 8
  %"$to_string_bystrx_val_232" = alloca [4 x i8], align 1
  %"$bystrx_val_233" = load [4 x i8], [4 x i8]* %bystrx_val, align 1
  store [4 x i8] %"$bystrx_val_233", [4 x i8]* %"$to_string_bystrx_val_232", align 1
  %"$$to_string_bystrx_val_232_234" = bitcast [4 x i8]* %"$to_string_bystrx_val_232" to i8*
  %"$to_string_call_235" = call %String @_to_string(i8* %"$execptr_load_231", %_TyDescrTy_Typ* @"$TyDescr_Bystr4_39", i8* %"$$to_string_bystrx_val_232_234")
  store %String %"$to_string_call_235", %String* %bystrx_str, align 8
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 1, %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %"$have_gas_229"
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %"$have_gas_229"
  %"$consume_240" = sub i64 %"$gasrem_236", 1
  store i64 %"$consume_240", i64* @_gasrem, align 8
  %bystr_str = alloca %String, align 8
  %"$execptr_load_241" = load i8*, i8** @_execptr, align 8
  %"$to_string_bystr_val_242" = alloca %Bystr, align 8
  %"$bystr_val_243" = load %Bystr, %Bystr* %bystr_val, align 8
  store %Bystr %"$bystr_val_243", %Bystr* %"$to_string_bystr_val_242", align 8
  %"$$to_string_bystr_val_242_244" = bitcast %Bystr* %"$to_string_bystr_val_242" to i8*
  %"$to_string_call_245" = call %String @_to_string(i8* %"$execptr_load_241", %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", i8* %"$$to_string_bystr_val_242_244")
  store %String %"$to_string_call_245", %String* %bystr_str, align 8
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 1, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$have_gas_239"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$have_gas_239"
  %"$consume_250" = sub i64 %"$gasrem_246", 1
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %s_acc = alloca %String, align 8
  %"$execptr_load_251" = load i8*, i8** @_execptr, align 8
  %"$uint32_str_252" = load %String, %String* %uint32_str, align 8
  %"$uint64_str_253" = load %String, %String* %uint64_str, align 8
  %"$concat_call_254" = call %String @_concat_String(i8* %"$execptr_load_251", %String %"$uint32_str_252", %String %"$uint64_str_253")
  store %String %"$concat_call_254", %String* %s_acc, align 8
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 1, %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$have_gas_249"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$have_gas_249"
  %"$consume_259" = sub i64 %"$gasrem_255", 1
  store i64 %"$consume_259", i64* @_gasrem, align 8
  %"$s_acc_0" = alloca %String, align 8
  %"$execptr_load_260" = load i8*, i8** @_execptr, align 8
  %"$s_acc_261" = load %String, %String* %s_acc, align 8
  %"$uint128_str_262" = load %String, %String* %uint128_str, align 8
  %"$concat_call_263" = call %String @_concat_String(i8* %"$execptr_load_260", %String %"$s_acc_261", %String %"$uint128_str_262")
  store %String %"$concat_call_263", %String* %"$s_acc_0", align 8
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_258"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_258"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %"$s_acc_1" = alloca %String, align 8
  %"$execptr_load_269" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_0_270" = load %String, %String* %"$s_acc_0", align 8
  %"$uint256_str_271" = load %String, %String* %uint256_str, align 8
  %"$concat_call_272" = call %String @_concat_String(i8* %"$execptr_load_269", %String %"$$s_acc_0_270", %String %"$uint256_str_271")
  store %String %"$concat_call_272", %String* %"$s_acc_1", align 8
  %"$gasrem_273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_274" = icmp ugt i64 1, %"$gasrem_273"
  br i1 %"$gascmp_274", label %"$out_of_gas_275", label %"$have_gas_276"

"$out_of_gas_275":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_276"

"$have_gas_276":                                  ; preds = %"$out_of_gas_275", %"$have_gas_267"
  %"$consume_277" = sub i64 %"$gasrem_273", 1
  store i64 %"$consume_277", i64* @_gasrem, align 8
  %"$s_acc_2" = alloca %String, align 8
  %"$execptr_load_278" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_1_279" = load %String, %String* %"$s_acc_1", align 8
  %"$int32_str_280" = load %String, %String* %int32_str, align 8
  %"$concat_call_281" = call %String @_concat_String(i8* %"$execptr_load_278", %String %"$$s_acc_1_279", %String %"$int32_str_280")
  store %String %"$concat_call_281", %String* %"$s_acc_2", align 8
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 1, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$have_gas_276"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$have_gas_276"
  %"$consume_286" = sub i64 %"$gasrem_282", 1
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %"$s_acc_3" = alloca %String, align 8
  %"$execptr_load_287" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_2_288" = load %String, %String* %"$s_acc_2", align 8
  %"$int64_str_289" = load %String, %String* %int64_str, align 8
  %"$concat_call_290" = call %String @_concat_String(i8* %"$execptr_load_287", %String %"$$s_acc_2_288", %String %"$int64_str_289")
  store %String %"$concat_call_290", %String* %"$s_acc_3", align 8
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 1, %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %"$have_gas_285"
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %"$have_gas_285"
  %"$consume_295" = sub i64 %"$gasrem_291", 1
  store i64 %"$consume_295", i64* @_gasrem, align 8
  %"$s_acc_4" = alloca %String, align 8
  %"$execptr_load_296" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_3_297" = load %String, %String* %"$s_acc_3", align 8
  %"$int128_str_298" = load %String, %String* %int128_str, align 8
  %"$concat_call_299" = call %String @_concat_String(i8* %"$execptr_load_296", %String %"$$s_acc_3_297", %String %"$int128_str_298")
  store %String %"$concat_call_299", %String* %"$s_acc_4", align 8
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_294"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_294"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %"$s_acc_5" = alloca %String, align 8
  %"$execptr_load_305" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_4_306" = load %String, %String* %"$s_acc_4", align 8
  %"$int256_str_307" = load %String, %String* %int256_str, align 8
  %"$concat_call_308" = call %String @_concat_String(i8* %"$execptr_load_305", %String %"$$s_acc_4_306", %String %"$int256_str_307")
  store %String %"$concat_call_308", %String* %"$s_acc_5", align 8
  %"$gasrem_309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_310" = icmp ugt i64 1, %"$gasrem_309"
  br i1 %"$gascmp_310", label %"$out_of_gas_311", label %"$have_gas_312"

"$out_of_gas_311":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_312"

"$have_gas_312":                                  ; preds = %"$out_of_gas_311", %"$have_gas_303"
  %"$consume_313" = sub i64 %"$gasrem_309", 1
  store i64 %"$consume_313", i64* @_gasrem, align 8
  %"$s_acc_6" = alloca %String, align 8
  %"$execptr_load_314" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_5_315" = load %String, %String* %"$s_acc_5", align 8
  %"$bystrx_str_316" = load %String, %String* %bystrx_str, align 8
  %"$concat_call_317" = call %String @_concat_String(i8* %"$execptr_load_314", %String %"$$s_acc_5_315", %String %"$bystrx_str_316")
  store %String %"$concat_call_317", %String* %"$s_acc_6", align 8
  %"$gasrem_318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_319" = icmp ugt i64 1, %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %"$have_gas_312"
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %"$have_gas_312"
  %"$consume_322" = sub i64 %"$gasrem_318", 1
  store i64 %"$consume_322", i64* @_gasrem, align 8
  %"$s_acc_7" = alloca %String, align 8
  %"$execptr_load_323" = load i8*, i8** @_execptr, align 8
  %"$$s_acc_6_324" = load %String, %String* %"$s_acc_6", align 8
  %"$bystr_str_325" = load %String, %String* %bystr_str, align 8
  %"$concat_call_326" = call %String @_concat_String(i8* %"$execptr_load_323", %String %"$$s_acc_6_324", %String %"$bystr_str_325")
  store %String %"$concat_call_326", %String* %"$s_acc_7", align 8
  %"$gasrem_327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_328" = icmp ugt i64 1, %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %"$have_gas_321"
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %"$have_gas_321"
  %"$consume_331" = sub i64 %"$gasrem_327", 1
  store i64 %"$consume_331", i64* @_gasrem, align 8
  %"$$s_acc_7_332" = load %String, %String* %"$s_acc_7", align 8
  store %String %"$$s_acc_7_332", %String* %"$expr_8", align 8
  %"$$expr_8_333" = load %String, %String* %"$expr_8", align 8
  ret %String %"$$expr_8_333"
}

declare void @_out_of_gas()

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %String @_to_string(i8*, %_TyDescrTy_Typ*, i8*)

declare %String @_concat_String(i8*, %String, %String)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_334" = call %String @_scilla_expr_fun(i8* null)
  %"$pval_335" = alloca %String, align 8
  %"$memvoidcast_336" = bitcast %String* %"$pval_335" to i8*
  store %String %"$exprval_334", %String* %"$pval_335", align 8
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$memvoidcast_336")
  ret void
}
