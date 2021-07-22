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
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$ParamDescr_215" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_216" = type { %ParamDescrString, i32, %"$ParamDescr_215"* }
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
@"$stringlit_50" = unnamed_addr constant [5 x i8] c"hello"
@"$stringlit_61" = unnamed_addr constant [0 x i8] zeroinitializer
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr0_31", %_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_33", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_215"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_216"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !9 {
entry:
  %"$expr_0" = alloca %Uint32, align 8
  %"$gasrem_40" = load i64, i64* @_gasrem, align 8
  %"$gascmp_41" = icmp ugt i64 1, %"$gasrem_40"
  br i1 %"$gascmp_41", label %"$out_of_gas_42", label %"$have_gas_43"

"$out_of_gas_42":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_43"

"$have_gas_43":                                   ; preds = %"$out_of_gas_42", %entry
  %"$consume_44" = sub i64 %"$gasrem_40", 1
  store i64 %"$consume_44", i64* @_gasrem, align 8
  %s1 = alloca %String, align 8
  %"$gasrem_45" = load i64, i64* @_gasrem, align 8
  %"$gascmp_46" = icmp ugt i64 1, %"$gasrem_45"
  br i1 %"$gascmp_46", label %"$out_of_gas_47", label %"$have_gas_48"

"$out_of_gas_47":                                 ; preds = %"$have_gas_43"
  call void @_out_of_gas()
  br label %"$have_gas_48"

"$have_gas_48":                                   ; preds = %"$out_of_gas_47", %"$have_gas_43"
  %"$consume_49" = sub i64 %"$gasrem_45", 1
  store i64 %"$consume_49", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_50", i32 0, i32 0), i32 5 }, %String* %s1, align 8, !dbg !10
  %"$gasrem_51" = load i64, i64* @_gasrem, align 8
  %"$gascmp_52" = icmp ugt i64 1, %"$gasrem_51"
  br i1 %"$gascmp_52", label %"$out_of_gas_53", label %"$have_gas_54"

"$out_of_gas_53":                                 ; preds = %"$have_gas_48"
  call void @_out_of_gas()
  br label %"$have_gas_54"

"$have_gas_54":                                   ; preds = %"$out_of_gas_53", %"$have_gas_48"
  %"$consume_55" = sub i64 %"$gasrem_51", 1
  store i64 %"$consume_55", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  %"$gasrem_56" = load i64, i64* @_gasrem, align 8
  %"$gascmp_57" = icmp ugt i64 1, %"$gasrem_56"
  br i1 %"$gascmp_57", label %"$out_of_gas_58", label %"$have_gas_59"

"$out_of_gas_58":                                 ; preds = %"$have_gas_54"
  call void @_out_of_gas()
  br label %"$have_gas_59"

"$have_gas_59":                                   ; preds = %"$out_of_gas_58", %"$have_gas_54"
  %"$consume_60" = sub i64 %"$gasrem_56", 1
  store i64 %"$consume_60", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_61", i32 0, i32 0), i32 0 }, %String* %s2, align 8, !dbg !11
  %"$gasrem_62" = load i64, i64* @_gasrem, align 8
  %"$gascmp_63" = icmp ugt i64 1, %"$gasrem_62"
  br i1 %"$gascmp_63", label %"$out_of_gas_64", label %"$have_gas_65"

"$out_of_gas_64":                                 ; preds = %"$have_gas_59"
  call void @_out_of_gas()
  br label %"$have_gas_65"

"$have_gas_65":                                   ; preds = %"$out_of_gas_64", %"$have_gas_59"
  %"$consume_66" = sub i64 %"$gasrem_62", 1
  store i64 %"$consume_66", i64* @_gasrem, align 8
  %b1x = alloca [2 x i8], align 1
  %"$gasrem_67" = load i64, i64* @_gasrem, align 8
  %"$gascmp_68" = icmp ugt i64 1, %"$gasrem_67"
  br i1 %"$gascmp_68", label %"$out_of_gas_69", label %"$have_gas_70"

"$out_of_gas_69":                                 ; preds = %"$have_gas_65"
  call void @_out_of_gas()
  br label %"$have_gas_70"

"$have_gas_70":                                   ; preds = %"$out_of_gas_69", %"$have_gas_65"
  %"$consume_71" = sub i64 %"$gasrem_67", 1
  store i64 %"$consume_71", i64* @_gasrem, align 8
  store [2 x i8] c"\FF\EE", [2 x i8]* %b1x, align 1, !dbg !12
  %"$gasrem_72" = load i64, i64* @_gasrem, align 8
  %"$gascmp_73" = icmp ugt i64 1, %"$gasrem_72"
  br i1 %"$gascmp_73", label %"$out_of_gas_74", label %"$have_gas_75"

"$out_of_gas_74":                                 ; preds = %"$have_gas_70"
  call void @_out_of_gas()
  br label %"$have_gas_75"

"$have_gas_75":                                   ; preds = %"$out_of_gas_74", %"$have_gas_70"
  %"$consume_76" = sub i64 %"$gasrem_72", 1
  store i64 %"$consume_76", i64* @_gasrem, align 8
  %b2x = alloca [0 x i8], align 1
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %"$have_gas_75"
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %"$have_gas_75"
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem, align 8
  store [0 x i8] zeroinitializer, [0 x i8]* %b2x, align 1, !dbg !13
  %"$gasrem_82" = load i64, i64* @_gasrem, align 8
  %"$gascmp_83" = icmp ugt i64 1, %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %"$have_gas_80"
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %"$have_gas_80"
  %"$consume_86" = sub i64 %"$gasrem_82", 1
  store i64 %"$consume_86", i64* @_gasrem, align 8
  %b1 = alloca %Bystr, align 8
  %"$gasrem_87" = load i64, i64* @_gasrem, align 8
  %"$gascmp_88" = icmp ugt i64 2, %"$gasrem_87"
  br i1 %"$gascmp_88", label %"$out_of_gas_89", label %"$have_gas_90"

"$out_of_gas_89":                                 ; preds = %"$have_gas_85"
  call void @_out_of_gas()
  br label %"$have_gas_90"

"$have_gas_90":                                   ; preds = %"$out_of_gas_89", %"$have_gas_85"
  %"$consume_91" = sub i64 %"$gasrem_87", 2
  store i64 %"$consume_91", i64* @_gasrem, align 8
  %"$execptr_load_92" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_b1x_93" = alloca [2 x i8], align 1
  %"$b1x_94" = load [2 x i8], [2 x i8]* %b1x, align 1
  store [2 x i8] %"$b1x_94", [2 x i8]* %"$to_bystr_b1x_93", align 1
  %"$$to_bystr_b1x_93_95" = bitcast [2 x i8]* %"$to_bystr_b1x_93" to i8*
  %"$to_bystr_call_96" = call %Bystr @_to_bystr(i8* %"$execptr_load_92", i32 2, i8* %"$$to_bystr_b1x_93_95"), !dbg !14
  store %Bystr %"$to_bystr_call_96", %Bystr* %b1, align 8, !dbg !14
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %"$have_gas_90"
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %"$have_gas_90"
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem, align 8
  %b2 = alloca %Bystr, align 8
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 0, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$have_gas_100"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$have_gas_100"
  %"$consume_106" = sub i64 %"$gasrem_102", 0
  store i64 %"$consume_106", i64* @_gasrem, align 8
  %"$execptr_load_107" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_b2x_108" = alloca [0 x i8], align 1
  %"$b2x_109" = load [0 x i8], [0 x i8]* %b2x, align 1
  store [0 x i8] %"$b2x_109", [0 x i8]* %"$to_bystr_b2x_108", align 1
  %"$$to_bystr_b2x_108_110" = bitcast [0 x i8]* %"$to_bystr_b2x_108" to i8*
  %"$to_bystr_call_111" = call %Bystr @_to_bystr(i8* %"$execptr_load_107", i32 0, i8* %"$$to_bystr_b2x_108_110"), !dbg !15
  store %Bystr %"$to_bystr_call_111", %Bystr* %b2, align 8, !dbg !15
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %"$have_gas_105"
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %"$have_gas_105"
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  %n1 = alloca %Uint32, align 8
  %"$_literal_cost_s1_117" = alloca %String, align 8
  %"$s1_118" = load %String, %String* %s1, align 8
  store %String %"$s1_118", %String* %"$_literal_cost_s1_117", align 8
  %"$$_literal_cost_s1_117_119" = bitcast %String* %"$_literal_cost_s1_117" to i8*
  %"$_literal_cost_call_120" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$$_literal_cost_s1_117_119")
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 %"$_literal_cost_call_120", %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_115"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_115"
  %"$consume_125" = sub i64 %"$gasrem_121", %"$_literal_cost_call_120"
  store i64 %"$consume_125", i64* @_gasrem, align 8
  %"$s1_126" = load %String, %String* %s1, align 8
  %"$strlen_call_127" = call %Uint32 @_strlen_String(%String %"$s1_126"), !dbg !16
  store %Uint32 %"$strlen_call_127", %Uint32* %n1, align 4, !dbg !16
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$have_gas_124"
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  %n2 = alloca %Uint32, align 8
  %"$_literal_cost_s2_133" = alloca %String, align 8
  %"$s2_134" = load %String, %String* %s2, align 8
  store %String %"$s2_134", %String* %"$_literal_cost_s2_133", align 8
  %"$$_literal_cost_s2_133_135" = bitcast %String* %"$_literal_cost_s2_133" to i8*
  %"$_literal_cost_call_136" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$$_literal_cost_s2_133_135")
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 %"$_literal_cost_call_136", %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$have_gas_131"
  %"$consume_141" = sub i64 %"$gasrem_137", %"$_literal_cost_call_136"
  store i64 %"$consume_141", i64* @_gasrem, align 8
  %"$s2_142" = load %String, %String* %s2, align 8
  %"$strlen_call_143" = call %Uint32 @_strlen_String(%String %"$s2_142"), !dbg !17
  store %Uint32 %"$strlen_call_143", %Uint32* %n2, align 4, !dbg !17
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_140"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_140"
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem, align 8
  %n3 = alloca %Uint32, align 8
  %"$_literal_cost_b1_149" = alloca %Bystr, align 8
  %"$b1_150" = load %Bystr, %Bystr* %b1, align 8
  store %Bystr %"$b1_150", %Bystr* %"$_literal_cost_b1_149", align 8
  %"$$_literal_cost_b1_149_151" = bitcast %Bystr* %"$_literal_cost_b1_149" to i8*
  %"$_literal_cost_call_152" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", i8* %"$$_literal_cost_b1_149_151")
  %"$gasrem_153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_154" = icmp ugt i64 %"$_literal_cost_call_152", %"$gasrem_153"
  br i1 %"$gascmp_154", label %"$out_of_gas_155", label %"$have_gas_156"

"$out_of_gas_155":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_156"

"$have_gas_156":                                  ; preds = %"$out_of_gas_155", %"$have_gas_147"
  %"$consume_157" = sub i64 %"$gasrem_153", %"$_literal_cost_call_152"
  store i64 %"$consume_157", i64* @_gasrem, align 8
  %"$b1_158" = load %Bystr, %Bystr* %b1, align 8
  %"$strlen_call_159" = call %Uint32 @_strlen_ByStr(%Bystr %"$b1_158"), !dbg !18
  store %Uint32 %"$strlen_call_159", %Uint32* %n3, align 4, !dbg !18
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_156"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_156"
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %n4 = alloca %Uint32, align 8
  %"$_literal_cost_b2_165" = alloca %Bystr, align 8
  %"$b2_166" = load %Bystr, %Bystr* %b2, align 8
  store %Bystr %"$b2_166", %Bystr* %"$_literal_cost_b2_165", align 8
  %"$$_literal_cost_b2_165_167" = bitcast %Bystr* %"$_literal_cost_b2_165" to i8*
  %"$_literal_cost_call_168" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", i8* %"$$_literal_cost_b2_165_167")
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 %"$_literal_cost_call_168", %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %"$have_gas_163"
  %"$consume_173" = sub i64 %"$gasrem_169", %"$_literal_cost_call_168"
  store i64 %"$consume_173", i64* @_gasrem, align 8
  %"$b2_174" = load %Bystr, %Bystr* %b2, align 8
  %"$strlen_call_175" = call %Uint32 @_strlen_ByStr(%Bystr %"$b2_174"), !dbg !19
  store %Uint32 %"$strlen_call_175", %Uint32* %n4, align 4, !dbg !19
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_172"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_172"
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %n5 = alloca %Uint32, align 8
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 4, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_179"
  %"$consume_185" = sub i64 %"$gasrem_181", 4
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %"$n1_186" = load %Uint32, %Uint32* %n1, align 4
  %"$n2_187" = load %Uint32, %Uint32* %n2, align 4
  %"$add_call_188" = call %Uint32 @_add_Uint32(%Uint32 %"$n1_186", %Uint32 %"$n2_187"), !dbg !20
  store %Uint32 %"$add_call_188", %Uint32* %n5, align 4, !dbg !20
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_184"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_184"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %n6 = alloca %Uint32, align 8
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 4, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$have_gas_192"
  %"$consume_198" = sub i64 %"$gasrem_194", 4
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %"$n3_199" = load %Uint32, %Uint32* %n3, align 4
  %"$n4_200" = load %Uint32, %Uint32* %n4, align 4
  %"$add_call_201" = call %Uint32 @_add_Uint32(%Uint32 %"$n3_199", %Uint32 %"$n4_200"), !dbg !21
  store %Uint32 %"$add_call_201", %Uint32* %n6, align 4, !dbg !21
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 4, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_197"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_197"
  %"$consume_206" = sub i64 %"$gasrem_202", 4
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %"$n5_207" = load %Uint32, %Uint32* %n5, align 4
  %"$n6_208" = load %Uint32, %Uint32* %n6, align 4
  %"$add_call_209" = call %Uint32 @_add_Uint32(%Uint32 %"$n5_207", %Uint32 %"$n6_208"), !dbg !22
  store %Uint32 %"$add_call_209", %Uint32* %"$expr_0", align 4, !dbg !22
  %"$$expr_0_210" = load %Uint32, %Uint32* %"$expr_0", align 4
  ret %Uint32 %"$$expr_0_210"
}

declare void @_out_of_gas()

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare %Uint32 @_strlen_String(%String)

declare %Uint32 @_strlen_ByStr(%Bystr)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_211" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_212" = alloca %Uint32, align 8
  %"$memvoidcast_213" = bitcast %Uint32* %"$pval_212" to i8*
  store %Uint32 %"$exprval_211", %Uint32* %"$pval_212", align 4
  %"$execptr_load_214" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_214", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", i8* %"$memvoidcast_213")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_strlen.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 1, column: 16, scope: !9)
!11 = !DILocation(line: 2, column: 11, scope: !9)
!12 = !DILocation(line: 4, column: 11, scope: !9)
!13 = !DILocation(line: 5, column: 11, scope: !9)
!14 = !DILocation(line: 7, column: 10, scope: !9)
!15 = !DILocation(line: 8, column: 10, scope: !9)
!16 = !DILocation(line: 10, column: 10, scope: !9)
!17 = !DILocation(line: 11, column: 10, scope: !9)
!18 = !DILocation(line: 12, column: 10, scope: !9)
!19 = !DILocation(line: 13, column: 10, scope: !9)
!20 = !DILocation(line: 15, column: 10, scope: !9)
!21 = !DILocation(line: 16, column: 10, scope: !9)
!22 = !DILocation(line: 17, column: 1, scope: !9)
