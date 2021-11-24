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

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Int32 = type { i32 }
%"$ParamDescr_251" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_252" = type { %ParamDescrString, i32, %"$ParamDescr_251"* }
%Uint32 = type { i32 }
%String = type { i8*, i32 }
%Bystr = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_8" = global %"$TyDescrTy_PrimTyp_7" zeroinitializer
@"$TyDescr_Int32_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int32_Prim_8" to i8*) }
@"$TyDescr_Uint32_Prim_10" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 0 }
@"$TyDescr_Uint32_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint32_Prim_10" to i8*) }
@"$TyDescr_Int64_Prim_12" = global %"$TyDescrTy_PrimTyp_7" { i32 0, i32 1 }
@"$TyDescr_Int64_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int64_Prim_12" to i8*) }
@"$TyDescr_Uint64_Prim_14" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 1 }
@"$TyDescr_Uint64_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint64_Prim_14" to i8*) }
@"$TyDescr_Int128_Prim_16" = global %"$TyDescrTy_PrimTyp_7" { i32 0, i32 2 }
@"$TyDescr_Int128_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int128_Prim_16" to i8*) }
@"$TyDescr_Uint128_Prim_18" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 2 }
@"$TyDescr_Uint128_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint128_Prim_18" to i8*) }
@"$TyDescr_Int256_Prim_20" = global %"$TyDescrTy_PrimTyp_7" { i32 0, i32 3 }
@"$TyDescr_Int256_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int256_Prim_20" to i8*) }
@"$TyDescr_Uint256_Prim_22" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 3 }
@"$TyDescr_Uint256_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint256_Prim_22" to i8*) }
@"$TyDescr_String_Prim_24" = global %"$TyDescrTy_PrimTyp_7" { i32 2, i32 0 }
@"$TyDescr_String_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_String_Prim_24" to i8*) }
@"$TyDescr_Bnum_Prim_26" = global %"$TyDescrTy_PrimTyp_7" { i32 3, i32 0 }
@"$TyDescr_Bnum_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bnum_Prim_26" to i8*) }
@"$TyDescr_Message_Prim_28" = global %"$TyDescrTy_PrimTyp_7" { i32 4, i32 0 }
@"$TyDescr_Message_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Message_Prim_28" to i8*) }
@"$TyDescr_Event_Prim_30" = global %"$TyDescrTy_PrimTyp_7" { i32 5, i32 0 }
@"$TyDescr_Event_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Event_Prim_30" to i8*) }
@"$TyDescr_Exception_Prim_32" = global %"$TyDescrTy_PrimTyp_7" { i32 6, i32 0 }
@"$TyDescr_Exception_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Exception_Prim_32" to i8*) }
@"$TyDescr_Bystr_Prim_34" = global %"$TyDescrTy_PrimTyp_7" { i32 7, i32 0 }
@"$TyDescr_Bystr_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr_Prim_34" to i8*) }
@"$TyDescr_Bystr0_Prim_36" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 0 }
@"$TyDescr_Bystr0_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr0_Prim_36" to i8*) }
@"$TyDescr_Bystr2_Prim_38" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 2 }
@"$TyDescr_Bystr2_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr2_Prim_38" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$stringlit_86" = unnamed_addr constant [5 x i8] c"hello"
@"$stringlit_97" = unnamed_addr constant [0 x i8] zeroinitializer
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr0_37", %_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_39", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_251"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_252"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  %"$gasrem_46" = load i64, i64* @_gasrem, align 8
  %"$gascmp_47" = icmp ugt i64 5, %"$gasrem_46"
  br i1 %"$gascmp_47", label %"$out_of_gas_48", label %"$have_gas_49"

"$out_of_gas_48":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_49"

"$have_gas_49":                                   ; preds = %"$out_of_gas_48", %entry
  %"$consume_50" = sub i64 %"$gasrem_46", 5
  store i64 %"$consume_50", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_51" = load i64, i64* @_gasrem, align 8
  %"$gascmp_52" = icmp ugt i64 8, %"$gasrem_51"
  br i1 %"$gascmp_52", label %"$out_of_gas_53", label %"$have_gas_54"

"$out_of_gas_53":                                 ; preds = %"$have_gas_49"
  call void @_out_of_gas()
  br label %"$have_gas_54"

"$have_gas_54":                                   ; preds = %"$out_of_gas_53", %"$have_gas_49"
  %"$consume_55" = sub i64 %"$gasrem_51", 8
  store i64 %"$consume_55", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_56" = load i64, i64* @_gasrem, align 8
  %"$gascmp_57" = icmp ugt i64 196, %"$gasrem_56"
  br i1 %"$gascmp_57", label %"$out_of_gas_58", label %"$have_gas_59"

"$out_of_gas_58":                                 ; preds = %"$have_gas_54"
  call void @_out_of_gas()
  br label %"$have_gas_59"

"$have_gas_59":                                   ; preds = %"$out_of_gas_58", %"$have_gas_54"
  %"$consume_60" = sub i64 %"$gasrem_56", 196
  store i64 %"$consume_60", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_61" = load i64, i64* @_gasrem, align 8
  %"$gascmp_62" = icmp ugt i64 20, %"$gasrem_61"
  br i1 %"$gascmp_62", label %"$out_of_gas_63", label %"$have_gas_64"

"$out_of_gas_63":                                 ; preds = %"$have_gas_59"
  call void @_out_of_gas()
  br label %"$have_gas_64"

"$have_gas_64":                                   ; preds = %"$out_of_gas_63", %"$have_gas_59"
  %"$consume_65" = sub i64 %"$gasrem_61", 20
  store i64 %"$consume_65", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 12, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %"$have_gas_64"
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %"$have_gas_64"
  %"$consume_70" = sub i64 %"$gasrem_66", 12
  store i64 %"$consume_70", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 2, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %"$have_gas_69"
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %"$have_gas_69"
  %"$consume_75" = sub i64 %"$gasrem_71", 2
  store i64 %"$consume_75", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

declare void @_out_of_gas()

define internal %Uint32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_6" = alloca %Uint32, align 8
  %"$gasrem_76" = load i64, i64* @_gasrem, align 8
  %"$gascmp_77" = icmp ugt i64 1, %"$gasrem_76"
  br i1 %"$gascmp_77", label %"$out_of_gas_78", label %"$have_gas_79"

"$out_of_gas_78":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_79"

"$have_gas_79":                                   ; preds = %"$out_of_gas_78", %entry
  %"$consume_80" = sub i64 %"$gasrem_76", 1
  store i64 %"$consume_80", i64* @_gasrem, align 8
  %s1 = alloca %String, align 8
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 1, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %"$have_gas_79"
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %"$have_gas_79"
  %"$consume_85" = sub i64 %"$gasrem_81", 1
  store i64 %"$consume_85", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_86", i32 0, i32 0), i32 5 }, %String* %s1, align 8
  %"$gasrem_87" = load i64, i64* @_gasrem, align 8
  %"$gascmp_88" = icmp ugt i64 1, %"$gasrem_87"
  br i1 %"$gascmp_88", label %"$out_of_gas_89", label %"$have_gas_90"

"$out_of_gas_89":                                 ; preds = %"$have_gas_84"
  call void @_out_of_gas()
  br label %"$have_gas_90"

"$have_gas_90":                                   ; preds = %"$out_of_gas_89", %"$have_gas_84"
  %"$consume_91" = sub i64 %"$gasrem_87", 1
  store i64 %"$consume_91", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 1, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %"$have_gas_90"
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %"$have_gas_90"
  %"$consume_96" = sub i64 %"$gasrem_92", 1
  store i64 %"$consume_96", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_97", i32 0, i32 0), i32 0 }, %String* %s2, align 8
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_95"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_95"
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %b1x = alloca [2 x i8], align 1
  %"$gasrem_103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_104" = icmp ugt i64 1, %"$gasrem_103"
  br i1 %"$gascmp_104", label %"$out_of_gas_105", label %"$have_gas_106"

"$out_of_gas_105":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_106"

"$have_gas_106":                                  ; preds = %"$out_of_gas_105", %"$have_gas_101"
  %"$consume_107" = sub i64 %"$gasrem_103", 1
  store i64 %"$consume_107", i64* @_gasrem, align 8
  store [2 x i8] c"\FF\EE", [2 x i8]* %b1x, align 1
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 1, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %"$have_gas_106"
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %"$have_gas_106"
  %"$consume_112" = sub i64 %"$gasrem_108", 1
  store i64 %"$consume_112", i64* @_gasrem, align 8
  %b2x = alloca [0 x i8], align 1
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 1, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$have_gas_111"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$have_gas_111"
  %"$consume_117" = sub i64 %"$gasrem_113", 1
  store i64 %"$consume_117", i64* @_gasrem, align 8
  store [0 x i8] zeroinitializer, [0 x i8]* %b2x, align 1
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 1, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$have_gas_116"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$have_gas_116"
  %"$consume_122" = sub i64 %"$gasrem_118", 1
  store i64 %"$consume_122", i64* @_gasrem, align 8
  %b1 = alloca %Bystr, align 8
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 2, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_121"
  %"$consume_127" = sub i64 %"$gasrem_123", 2
  store i64 %"$consume_127", i64* @_gasrem, align 8
  %"$execptr_load_128" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_b1x_129" = alloca [2 x i8], align 1
  %"$b1x_130" = load [2 x i8], [2 x i8]* %b1x, align 1
  store [2 x i8] %"$b1x_130", [2 x i8]* %"$to_bystr_b1x_129", align 1
  %"$$to_bystr_b1x_129_131" = bitcast [2 x i8]* %"$to_bystr_b1x_129" to i8*
  %"$to_bystr_call_132" = call %Bystr @_to_bystr(i8* %"$execptr_load_128", i32 2, i8* %"$$to_bystr_b1x_129_131")
  store %Bystr %"$to_bystr_call_132", %Bystr* %b1, align 8
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$have_gas_126"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$have_gas_126"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  %b2 = alloca %Bystr, align 8
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 0, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_136"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_136"
  %"$consume_142" = sub i64 %"$gasrem_138", 0
  store i64 %"$consume_142", i64* @_gasrem, align 8
  %"$execptr_load_143" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_b2x_144" = alloca [0 x i8], align 1
  %"$b2x_145" = load [0 x i8], [0 x i8]* %b2x, align 1
  store [0 x i8] %"$b2x_145", [0 x i8]* %"$to_bystr_b2x_144", align 1
  %"$$to_bystr_b2x_144_146" = bitcast [0 x i8]* %"$to_bystr_b2x_144" to i8*
  %"$to_bystr_call_147" = call %Bystr @_to_bystr(i8* %"$execptr_load_143", i32 0, i8* %"$$to_bystr_b2x_144_146")
  store %Bystr %"$to_bystr_call_147", %Bystr* %b2, align 8
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_141"
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %n1 = alloca %Uint32, align 8
  %"$_literal_cost_s1_153" = alloca %String, align 8
  %"$s1_154" = load %String, %String* %s1, align 8
  store %String %"$s1_154", %String* %"$_literal_cost_s1_153", align 8
  %"$$_literal_cost_s1_153_155" = bitcast %String* %"$_literal_cost_s1_153" to i8*
  %"$_literal_cost_call_156" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$_literal_cost_s1_153_155")
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 %"$_literal_cost_call_156", %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_151"
  %"$consume_161" = sub i64 %"$gasrem_157", %"$_literal_cost_call_156"
  store i64 %"$consume_161", i64* @_gasrem, align 8
  %"$s1_162" = load %String, %String* %s1, align 8
  %"$strlen_call_163" = call %Uint32 @_strlen_String(%String %"$s1_162")
  store %Uint32 %"$strlen_call_163", %Uint32* %n1, align 4
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_160"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_160"
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  %n2 = alloca %Uint32, align 8
  %"$_literal_cost_s2_169" = alloca %String, align 8
  %"$s2_170" = load %String, %String* %s2, align 8
  store %String %"$s2_170", %String* %"$_literal_cost_s2_169", align 8
  %"$$_literal_cost_s2_169_171" = bitcast %String* %"$_literal_cost_s2_169" to i8*
  %"$_literal_cost_call_172" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$_literal_cost_s2_169_171")
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 %"$_literal_cost_call_172", %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %"$have_gas_167"
  %"$consume_177" = sub i64 %"$gasrem_173", %"$_literal_cost_call_172"
  store i64 %"$consume_177", i64* @_gasrem, align 8
  %"$s2_178" = load %String, %String* %s2, align 8
  %"$strlen_call_179" = call %Uint32 @_strlen_String(%String %"$s2_178")
  store %Uint32 %"$strlen_call_179", %Uint32* %n2, align 4
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_176"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_176"
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %n3 = alloca %Uint32, align 8
  %"$_literal_cost_b1_185" = alloca %Bystr, align 8
  %"$b1_186" = load %Bystr, %Bystr* %b1, align 8
  store %Bystr %"$b1_186", %Bystr* %"$_literal_cost_b1_185", align 8
  %"$$_literal_cost_b1_185_187" = bitcast %Bystr* %"$_literal_cost_b1_185" to i8*
  %"$_literal_cost_call_188" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_35", i8* %"$$_literal_cost_b1_185_187")
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 %"$_literal_cost_call_188", %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_183"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_183"
  %"$consume_193" = sub i64 %"$gasrem_189", %"$_literal_cost_call_188"
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %"$b1_194" = load %Bystr, %Bystr* %b1, align 8
  %"$strlen_call_195" = call %Uint32 @_strlen_ByStr(%Bystr %"$b1_194")
  store %Uint32 %"$strlen_call_195", %Uint32* %n3, align 4
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 1, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %"$have_gas_192"
  %"$consume_200" = sub i64 %"$gasrem_196", 1
  store i64 %"$consume_200", i64* @_gasrem, align 8
  %n4 = alloca %Uint32, align 8
  %"$_literal_cost_b2_201" = alloca %Bystr, align 8
  %"$b2_202" = load %Bystr, %Bystr* %b2, align 8
  store %Bystr %"$b2_202", %Bystr* %"$_literal_cost_b2_201", align 8
  %"$$_literal_cost_b2_201_203" = bitcast %Bystr* %"$_literal_cost_b2_201" to i8*
  %"$_literal_cost_call_204" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_35", i8* %"$$_literal_cost_b2_201_203")
  %"$gasrem_205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_206" = icmp ugt i64 %"$_literal_cost_call_204", %"$gasrem_205"
  br i1 %"$gascmp_206", label %"$out_of_gas_207", label %"$have_gas_208"

"$out_of_gas_207":                                ; preds = %"$have_gas_199"
  call void @_out_of_gas()
  br label %"$have_gas_208"

"$have_gas_208":                                  ; preds = %"$out_of_gas_207", %"$have_gas_199"
  %"$consume_209" = sub i64 %"$gasrem_205", %"$_literal_cost_call_204"
  store i64 %"$consume_209", i64* @_gasrem, align 8
  %"$b2_210" = load %Bystr, %Bystr* %b2, align 8
  %"$strlen_call_211" = call %Uint32 @_strlen_ByStr(%Bystr %"$b2_210")
  store %Uint32 %"$strlen_call_211", %Uint32* %n4, align 4
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 1, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %"$have_gas_208"
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %"$have_gas_208"
  %"$consume_216" = sub i64 %"$gasrem_212", 1
  store i64 %"$consume_216", i64* @_gasrem, align 8
  %n5 = alloca %Uint32, align 8
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 4, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_215"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_215"
  %"$consume_221" = sub i64 %"$gasrem_217", 4
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %"$n1_222" = load %Uint32, %Uint32* %n1, align 4
  %"$n2_223" = load %Uint32, %Uint32* %n2, align 4
  %"$add_call_224" = call %Uint32 @_add_Uint32(%Uint32 %"$n1_222", %Uint32 %"$n2_223")
  store %Uint32 %"$add_call_224", %Uint32* %n5, align 4
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 1, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_220"
  %"$consume_229" = sub i64 %"$gasrem_225", 1
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %n6 = alloca %Uint32, align 8
  %"$gasrem_230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_231" = icmp ugt i64 4, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$have_gas_228"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$have_gas_228"
  %"$consume_234" = sub i64 %"$gasrem_230", 4
  store i64 %"$consume_234", i64* @_gasrem, align 8
  %"$n3_235" = load %Uint32, %Uint32* %n3, align 4
  %"$n4_236" = load %Uint32, %Uint32* %n4, align 4
  %"$add_call_237" = call %Uint32 @_add_Uint32(%Uint32 %"$n3_235", %Uint32 %"$n4_236")
  store %Uint32 %"$add_call_237", %Uint32* %n6, align 4
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 4, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_233"
  %"$consume_242" = sub i64 %"$gasrem_238", 4
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %"$n5_243" = load %Uint32, %Uint32* %n5, align 4
  %"$n6_244" = load %Uint32, %Uint32* %n6, align 4
  %"$add_call_245" = call %Uint32 @_add_Uint32(%Uint32 %"$n5_243", %Uint32 %"$n6_244")
  store %Uint32 %"$add_call_245", %Uint32* %"$expr_6", align 4
  %"$$expr_6_246" = load %Uint32, %Uint32* %"$expr_6", align 4
  ret %Uint32 %"$$expr_6_246"
}

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare %Uint32 @_strlen_String(%String)

declare %Uint32 @_strlen_ByStr(%Bystr)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_247" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_248" = alloca %Uint32, align 8
  %"$memvoidcast_249" = bitcast %Uint32* %"$pval_248" to i8*
  store %Uint32 %"$exprval_247", %Uint32* %"$pval_248", align 4
  %"$execptr_load_250" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_250", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", i8* %"$memvoidcast_249")
  ret void
}
