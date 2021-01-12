; let s1 = "hello" in
; let s2 = "" in
; 
; let b1x = 0xffee in
; let b2x = 0x in
; 
; let b1 = builtin to_bystr b1x in
; let b2 = builtin to_bystr b2x in
; 
; let n1 = builtin strlen s1 in
; let n2 = builtin strlen s2 in
; let n3 = builtin strlen b1 in
; let n4 = builtin strlen b2 in
; 
; let n5 = builtin add n1 n2 in
; let n6 = builtin add n3 n4 in
; builtin add n5 n6
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Uint32 = type { i32 }
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
@"$TyDescr_Bystr0_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 0 }
@"$TyDescr_Bystr0_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr0_Prim_30" to i8*) }
@"$TyDescr_Bystr2_Prim_32" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 2 }
@"$TyDescr_Bystr2_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr2_Prim_32" to i8*) }
@"$stringlit_49" = unnamed_addr constant [5 x i8] c"hello"
@"$stringlit_60" = unnamed_addr constant [0 x i8] zeroinitializer

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_38"(i8* %0) {
entry:
  %"$expr_0" = alloca %Uint32
  %"$gasrem_39" = load i64, i64* @_gasrem
  %"$gascmp_40" = icmp ugt i64 1, %"$gasrem_39"
  br i1 %"$gascmp_40", label %"$out_of_gas_41", label %"$have_gas_42"

"$out_of_gas_41":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_42"

"$have_gas_42":                                   ; preds = %"$out_of_gas_41", %entry
  %"$consume_43" = sub i64 %"$gasrem_39", 1
  store i64 %"$consume_43", i64* @_gasrem
  %s1 = alloca %String
  %"$gasrem_44" = load i64, i64* @_gasrem
  %"$gascmp_45" = icmp ugt i64 1, %"$gasrem_44"
  br i1 %"$gascmp_45", label %"$out_of_gas_46", label %"$have_gas_47"

"$out_of_gas_46":                                 ; preds = %"$have_gas_42"
  call void @_out_of_gas()
  br label %"$have_gas_47"

"$have_gas_47":                                   ; preds = %"$out_of_gas_46", %"$have_gas_42"
  %"$consume_48" = sub i64 %"$gasrem_44", 1
  store i64 %"$consume_48", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_49", i32 0, i32 0), i32 5 }, %String* %s1
  %"$gasrem_50" = load i64, i64* @_gasrem
  %"$gascmp_51" = icmp ugt i64 1, %"$gasrem_50"
  br i1 %"$gascmp_51", label %"$out_of_gas_52", label %"$have_gas_53"

"$out_of_gas_52":                                 ; preds = %"$have_gas_47"
  call void @_out_of_gas()
  br label %"$have_gas_53"

"$have_gas_53":                                   ; preds = %"$out_of_gas_52", %"$have_gas_47"
  %"$consume_54" = sub i64 %"$gasrem_50", 1
  store i64 %"$consume_54", i64* @_gasrem
  %s2 = alloca %String
  %"$gasrem_55" = load i64, i64* @_gasrem
  %"$gascmp_56" = icmp ugt i64 1, %"$gasrem_55"
  br i1 %"$gascmp_56", label %"$out_of_gas_57", label %"$have_gas_58"

"$out_of_gas_57":                                 ; preds = %"$have_gas_53"
  call void @_out_of_gas()
  br label %"$have_gas_58"

"$have_gas_58":                                   ; preds = %"$out_of_gas_57", %"$have_gas_53"
  %"$consume_59" = sub i64 %"$gasrem_55", 1
  store i64 %"$consume_59", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_60", i32 0, i32 0), i32 0 }, %String* %s2
  %"$gasrem_61" = load i64, i64* @_gasrem
  %"$gascmp_62" = icmp ugt i64 1, %"$gasrem_61"
  br i1 %"$gascmp_62", label %"$out_of_gas_63", label %"$have_gas_64"

"$out_of_gas_63":                                 ; preds = %"$have_gas_58"
  call void @_out_of_gas()
  br label %"$have_gas_64"

"$have_gas_64":                                   ; preds = %"$out_of_gas_63", %"$have_gas_58"
  %"$consume_65" = sub i64 %"$gasrem_61", 1
  store i64 %"$consume_65", i64* @_gasrem
  %b1x = alloca [2 x i8]
  %"$gasrem_66" = load i64, i64* @_gasrem
  %"$gascmp_67" = icmp ugt i64 1, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %"$have_gas_64"
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %"$have_gas_64"
  %"$consume_70" = sub i64 %"$gasrem_66", 1
  store i64 %"$consume_70", i64* @_gasrem
  store [2 x i8] c"\FF\EE", [2 x i8]* %b1x
  %"$gasrem_71" = load i64, i64* @_gasrem
  %"$gascmp_72" = icmp ugt i64 1, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %"$have_gas_69"
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %"$have_gas_69"
  %"$consume_75" = sub i64 %"$gasrem_71", 1
  store i64 %"$consume_75", i64* @_gasrem
  %b2x = alloca [0 x i8]
  %"$gasrem_76" = load i64, i64* @_gasrem
  %"$gascmp_77" = icmp ugt i64 1, %"$gasrem_76"
  br i1 %"$gascmp_77", label %"$out_of_gas_78", label %"$have_gas_79"

"$out_of_gas_78":                                 ; preds = %"$have_gas_74"
  call void @_out_of_gas()
  br label %"$have_gas_79"

"$have_gas_79":                                   ; preds = %"$out_of_gas_78", %"$have_gas_74"
  %"$consume_80" = sub i64 %"$gasrem_76", 1
  store i64 %"$consume_80", i64* @_gasrem
  store [0 x i8] zeroinitializer, [0 x i8]* %b2x
  %"$gasrem_81" = load i64, i64* @_gasrem
  %"$gascmp_82" = icmp ugt i64 1, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %"$have_gas_79"
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %"$have_gas_79"
  %"$consume_85" = sub i64 %"$gasrem_81", 1
  store i64 %"$consume_85", i64* @_gasrem
  %b1 = alloca %Bystr
  %"$execptr_load_86" = load i8*, i8** @_execptr
  %"$to_bystr_b1x_87" = alloca [2 x i8]
  %"$b1x_88" = load [2 x i8], [2 x i8]* %b1x
  store [2 x i8] %"$b1x_88", [2 x i8]* %"$to_bystr_b1x_87"
  %"$$to_bystr_b1x_87_89" = bitcast [2 x i8]* %"$to_bystr_b1x_87" to i8*
  %"$to_bystr_call_90" = call %Bystr @_to_bystr(i8* %"$execptr_load_86", i32 2, i8* %"$$to_bystr_b1x_87_89")
  store %Bystr %"$to_bystr_call_90", %Bystr* %b1
  %"$gasrem_91" = load i64, i64* @_gasrem
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %"$have_gas_84"
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %"$have_gas_84"
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem
  %b2 = alloca %Bystr
  %"$execptr_load_96" = load i8*, i8** @_execptr
  %"$to_bystr_b2x_97" = alloca [0 x i8]
  %"$b2x_98" = load [0 x i8], [0 x i8]* %b2x
  store [0 x i8] %"$b2x_98", [0 x i8]* %"$to_bystr_b2x_97"
  %"$$to_bystr_b2x_97_99" = bitcast [0 x i8]* %"$to_bystr_b2x_97" to i8*
  %"$to_bystr_call_100" = call %Bystr @_to_bystr(i8* %"$execptr_load_96", i32 0, i8* %"$$to_bystr_b2x_97_99")
  store %Bystr %"$to_bystr_call_100", %Bystr* %b2
  %"$gasrem_101" = load i64, i64* @_gasrem
  %"$gascmp_102" = icmp ugt i64 1, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %"$have_gas_94"
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %"$have_gas_94"
  %"$consume_105" = sub i64 %"$gasrem_101", 1
  store i64 %"$consume_105", i64* @_gasrem
  %n1 = alloca %Uint32
  %"$s1_106" = load %String, %String* %s1
  %"$strlen_call_107" = call %Uint32 @_strlen_String(%String %"$s1_106")
  store %Uint32 %"$strlen_call_107", %Uint32* %n1
  %"$gasrem_108" = load i64, i64* @_gasrem
  %"$gascmp_109" = icmp ugt i64 1, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %"$have_gas_104"
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %"$have_gas_104"
  %"$consume_112" = sub i64 %"$gasrem_108", 1
  store i64 %"$consume_112", i64* @_gasrem
  %n2 = alloca %Uint32
  %"$s2_113" = load %String, %String* %s2
  %"$strlen_call_114" = call %Uint32 @_strlen_String(%String %"$s2_113")
  store %Uint32 %"$strlen_call_114", %Uint32* %n2
  %"$gasrem_115" = load i64, i64* @_gasrem
  %"$gascmp_116" = icmp ugt i64 1, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %"$have_gas_111"
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %"$have_gas_111"
  %"$consume_119" = sub i64 %"$gasrem_115", 1
  store i64 %"$consume_119", i64* @_gasrem
  %n3 = alloca %Uint32
  %"$b1_120" = load %Bystr, %Bystr* %b1
  %"$strlen_call_121" = call %Uint32 @_strlen_ByStr(%Bystr %"$b1_120")
  store %Uint32 %"$strlen_call_121", %Uint32* %n3
  %"$gasrem_122" = load i64, i64* @_gasrem
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %"$have_gas_118"
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem
  %n4 = alloca %Uint32
  %"$b2_127" = load %Bystr, %Bystr* %b2
  %"$strlen_call_128" = call %Uint32 @_strlen_ByStr(%Bystr %"$b2_127")
  store %Uint32 %"$strlen_call_128", %Uint32* %n4
  %"$gasrem_129" = load i64, i64* @_gasrem
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_125"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_125"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem
  %n5 = alloca %Uint32
  %"$n1_134" = load %Uint32, %Uint32* %n1
  %"$n2_135" = load %Uint32, %Uint32* %n2
  %"$add_call_136" = call %Uint32 @_add_Uint32(%Uint32 %"$n1_134", %Uint32 %"$n2_135")
  store %Uint32 %"$add_call_136", %Uint32* %n5
  %"$gasrem_137" = load i64, i64* @_gasrem
  %"$gascmp_138" = icmp ugt i64 1, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$have_gas_132"
  %"$consume_141" = sub i64 %"$gasrem_137", 1
  store i64 %"$consume_141", i64* @_gasrem
  %n6 = alloca %Uint32
  %"$n3_142" = load %Uint32, %Uint32* %n3
  %"$n4_143" = load %Uint32, %Uint32* %n4
  %"$add_call_144" = call %Uint32 @_add_Uint32(%Uint32 %"$n3_142", %Uint32 %"$n4_143")
  store %Uint32 %"$add_call_144", %Uint32* %n6
  %"$n5_145" = load %Uint32, %Uint32* %n5
  %"$n6_146" = load %Uint32, %Uint32* %n6
  %"$add_call_147" = call %Uint32 @_add_Uint32(%Uint32 %"$n5_145", %Uint32 %"$n6_146")
  store %Uint32 %"$add_call_147", %Uint32* %"$expr_0"
  %"$$expr_0_148" = load %Uint32, %Uint32* %"$expr_0"
  ret %Uint32 %"$$expr_0_148"
}

declare void @_out_of_gas()

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %Uint32 @_strlen_String(%String)

declare %Uint32 @_strlen_ByStr(%Bystr)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_149" = call %Uint32 @"$scilla_expr_38"(i8* null)
  %"$pval_150" = alloca %Uint32
  %"$memvoidcast_151" = bitcast %Uint32* %"$pval_150" to i8*
  store %Uint32 %"$exprval_149", %Uint32* %"$pval_150"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_5", i8* %"$memvoidcast_151")
  ret void
}
