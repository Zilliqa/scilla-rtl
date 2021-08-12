; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin19.6.0"

%"$TyDescrTy_PrimTyp_17" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$ParamDescr_282" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_283" = type { %ParamDescrString, i32, %"$ParamDescr_282"* }
%"$$fundef_15_env_52" = type { %Int32 }
%Int32 = type { i32 }
%"$$fundef_13_env_53" = type {}
%"$$fundef_11_env_54" = type { %Int32 }
%"$$fundef_9_env_55" = type {}
%"$$fundef_7_env_56" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_18" = global %"$TyDescrTy_PrimTyp_17" zeroinitializer
@"$TyDescr_Int32_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Int32_Prim_18" to i8*) }
@"$TyDescr_Uint32_Prim_20" = global %"$TyDescrTy_PrimTyp_17" { i32 1, i32 0 }
@"$TyDescr_Uint32_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Uint32_Prim_20" to i8*) }
@"$TyDescr_Int64_Prim_22" = global %"$TyDescrTy_PrimTyp_17" { i32 0, i32 1 }
@"$TyDescr_Int64_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Int64_Prim_22" to i8*) }
@"$TyDescr_Uint64_Prim_24" = global %"$TyDescrTy_PrimTyp_17" { i32 1, i32 1 }
@"$TyDescr_Uint64_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Uint64_Prim_24" to i8*) }
@"$TyDescr_Int128_Prim_26" = global %"$TyDescrTy_PrimTyp_17" { i32 0, i32 2 }
@"$TyDescr_Int128_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Int128_Prim_26" to i8*) }
@"$TyDescr_Uint128_Prim_28" = global %"$TyDescrTy_PrimTyp_17" { i32 1, i32 2 }
@"$TyDescr_Uint128_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Uint128_Prim_28" to i8*) }
@"$TyDescr_Int256_Prim_30" = global %"$TyDescrTy_PrimTyp_17" { i32 0, i32 3 }
@"$TyDescr_Int256_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Int256_Prim_30" to i8*) }
@"$TyDescr_Uint256_Prim_32" = global %"$TyDescrTy_PrimTyp_17" { i32 1, i32 3 }
@"$TyDescr_Uint256_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Uint256_Prim_32" to i8*) }
@"$TyDescr_String_Prim_34" = global %"$TyDescrTy_PrimTyp_17" { i32 2, i32 0 }
@"$TyDescr_String_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_String_Prim_34" to i8*) }
@"$TyDescr_Bnum_Prim_36" = global %"$TyDescrTy_PrimTyp_17" { i32 3, i32 0 }
@"$TyDescr_Bnum_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Bnum_Prim_36" to i8*) }
@"$TyDescr_Message_Prim_38" = global %"$TyDescrTy_PrimTyp_17" { i32 4, i32 0 }
@"$TyDescr_Message_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Message_Prim_38" to i8*) }
@"$TyDescr_Event_Prim_40" = global %"$TyDescrTy_PrimTyp_17" { i32 5, i32 0 }
@"$TyDescr_Event_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Event_Prim_40" to i8*) }
@"$TyDescr_Exception_Prim_42" = global %"$TyDescrTy_PrimTyp_17" { i32 6, i32 0 }
@"$TyDescr_Exception_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Exception_Prim_42" to i8*) }
@"$TyDescr_Bystr_Prim_44" = global %"$TyDescrTy_PrimTyp_17" { i32 7, i32 0 }
@"$TyDescr_Bystr_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Bystr_Prim_44" to i8*) }
@_tydescr_table = constant [14 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_41", %_TyDescrTy_Typ* @"$TyDescr_Int64_23", %_TyDescrTy_Typ* @"$TyDescr_Uint256_33", %_TyDescrTy_Typ* @"$TyDescr_Uint32_21", %_TyDescrTy_Typ* @"$TyDescr_Uint64_25", %_TyDescrTy_Typ* @"$TyDescr_Bnum_37", %_TyDescrTy_Typ* @"$TyDescr_Uint128_29", %_TyDescrTy_Typ* @"$TyDescr_Exception_43", %_TyDescrTy_Typ* @"$TyDescr_String_35", %_TyDescrTy_Typ* @"$TyDescr_Int256_31", %_TyDescrTy_Typ* @"$TyDescr_Int128_27", %_TyDescrTy_Typ* @"$TyDescr_Bystr_45", %_TyDescrTy_Typ* @"$TyDescr_Message_39", %_TyDescrTy_Typ* @"$TyDescr_Int32_19"]
@_tydescr_table_length = constant i32 14
@_contract_parameters = constant [0 x %"$ParamDescr_282"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_283"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Int32 @"$fundef_15"(%"$$fundef_15_env_52"* %0, %Int32 %1) {
entry:
  %"$$fundef_15_env_a__107" = getelementptr inbounds %"$$fundef_15_env_52", %"$$fundef_15_env_52"* %0, i32 0, i32 0
  %"$a__envload_108" = load %Int32, %Int32* %"$$fundef_15_env_a__107", align 4
  %a_ = alloca %Int32, align 8
  store %Int32 %"$a__envload_108", %Int32* %a_, align 4
  %"$retval_16" = alloca %Int32, align 8
  %"$gasrem_109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_110" = icmp ugt i64 4, %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %entry
  %"$consume_113" = sub i64 %"$gasrem_109", 4
  store i64 %"$consume_113", i64* @_gasrem, align 8
  %"$a__114" = load %Int32, %Int32* %a_, align 4
  %"$add_call_115" = call %Int32 @_add_Int32(%Int32 %"$a__114", %Int32 %1)
  store %Int32 %"$add_call_115", %Int32* %"$retval_16", align 4
  %"$$retval_16_116" = load %Int32, %Int32* %"$retval_16", align 4
  ret %Int32 %"$$retval_16_116"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_13"(%"$$fundef_13_env_53"* %0, %Int32 %1) {
entry:
  %"$retval_14" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_85" = load i64, i64* @_gasrem, align 8
  %"$gascmp_86" = icmp ugt i64 1, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %entry
  %"$consume_89" = sub i64 %"$gasrem_85", 1
  store i64 %"$consume_89", i64* @_gasrem, align 8
  %a_ = alloca %Int32, align 8
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$have_gas_88"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$have_gas_88"
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  store %Int32 %1, %Int32* %a_, align 4
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_93"
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem, align 8
  %"$$fundef_15_envp_100_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_15_envp_100_salloc" = call i8* @_salloc(i8* %"$$fundef_15_envp_100_load", i64 4)
  %"$$fundef_15_envp_100" = bitcast i8* %"$$fundef_15_envp_100_salloc" to %"$$fundef_15_env_52"*
  %"$$fundef_15_env_voidp_102" = bitcast %"$$fundef_15_env_52"* %"$$fundef_15_envp_100" to i8*
  %"$$fundef_15_cloval_103" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_15_env_52"*, %Int32)* @"$fundef_15" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_15_env_voidp_102", 1
  %"$$fundef_15_env_a__104" = getelementptr inbounds %"$$fundef_15_env_52", %"$$fundef_15_env_52"* %"$$fundef_15_envp_100", i32 0, i32 0
  %"$a__105" = load %Int32, %Int32* %a_, align 4
  store %Int32 %"$a__105", %Int32* %"$$fundef_15_env_a__104", align 4
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_15_cloval_103", { %Int32 (i8*, %Int32)*, i8* }* %"$retval_14", align 8
  %"$$retval_14_106" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_14", align 8
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_14_106"
}

define internal %Int32 @"$fundef_11"(%"$$fundef_11_env_54"* %0, %Int32 %1) {
entry:
  %"$$fundef_11_env_a_75" = getelementptr inbounds %"$$fundef_11_env_54", %"$$fundef_11_env_54"* %0, i32 0, i32 0
  %"$a_envload_76" = load %Int32, %Int32* %"$$fundef_11_env_a_75", align 4
  %a = alloca %Int32, align 8
  store %Int32 %"$a_envload_76", %Int32* %a, align 4
  %"$retval_12" = alloca %Int32, align 8
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 4, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %entry
  %"$consume_81" = sub i64 %"$gasrem_77", 4
  store i64 %"$consume_81", i64* @_gasrem, align 8
  %"$a_82" = load %Int32, %Int32* %a, align 4
  %"$sub_call_83" = call %Int32 @_sub_Int32(%Int32 %"$a_82", %Int32 %1)
  store %Int32 %"$sub_call_83", %Int32* %"$retval_12", align 4
  %"$$retval_12_84" = load %Int32, %Int32* %"$retval_12", align 4
  ret %Int32 %"$$retval_12_84"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_9"(%"$$fundef_9_env_55"* %0, %Int32 %1) {
entry:
  %"$retval_10" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_64" = load i64, i64* @_gasrem, align 8
  %"$gascmp_65" = icmp ugt i64 1, %"$gasrem_64"
  br i1 %"$gascmp_65", label %"$out_of_gas_66", label %"$have_gas_67"

"$out_of_gas_66":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_67"

"$have_gas_67":                                   ; preds = %"$out_of_gas_66", %entry
  %"$consume_68" = sub i64 %"$gasrem_64", 1
  store i64 %"$consume_68", i64* @_gasrem, align 8
  %"$$fundef_11_envp_69_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_11_envp_69_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_69_load", i64 4)
  %"$$fundef_11_envp_69" = bitcast i8* %"$$fundef_11_envp_69_salloc" to %"$$fundef_11_env_54"*
  %"$$fundef_11_env_voidp_71" = bitcast %"$$fundef_11_env_54"* %"$$fundef_11_envp_69" to i8*
  %"$$fundef_11_cloval_72" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_11_env_54"*, %Int32)* @"$fundef_11" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_11_env_voidp_71", 1
  %"$$fundef_11_env_a_73" = getelementptr inbounds %"$$fundef_11_env_54", %"$$fundef_11_env_54"* %"$$fundef_11_envp_69", i32 0, i32 0
  store %Int32 %1, %Int32* %"$$fundef_11_env_a_73", align 4
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_11_cloval_72", { %Int32 (i8*, %Int32)*, i8* }* %"$retval_10", align 8
  %"$$retval_10_74" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_10", align 8
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_10_74"
}

define internal %Int32 @"$fundef_7"(%"$$fundef_7_env_56"* %0, %Int32 %1, %Int32 %2) {
entry:
  %"$retval_8" = alloca %Int32, align 8
  %"$gasrem_57" = load i64, i64* @_gasrem, align 8
  %"$gascmp_58" = icmp ugt i64 4, %"$gasrem_57"
  br i1 %"$gascmp_58", label %"$out_of_gas_59", label %"$have_gas_60"

"$out_of_gas_59":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_60"

"$have_gas_60":                                   ; preds = %"$out_of_gas_59", %entry
  %"$consume_61" = sub i64 %"$gasrem_57", 4
  store i64 %"$consume_61", i64* @_gasrem, align 8
  %"$add_call_62" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %2)
  store %Int32 %"$add_call_62", %Int32* %"$retval_8", align 4
  %"$$retval_8_63" = load %Int32, %Int32* %"$retval_8", align 4
  ret %Int32 %"$$retval_8_63"
}

declare void @_out_of_gas()

declare %Int32 @_add_Int32(%Int32, %Int32)

declare i8* @_salloc(i8*, i64)

declare %Int32 @_sub_Int32(%Int32, %Int32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_6" = alloca %Int32, align 8
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 1, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %entry
  %"$consume_121" = sub i64 %"$gasrem_117", 1
  store i64 %"$consume_121", i64* @_gasrem, align 8
  %f1 = alloca { %Int32 (i8*, %Int32, %Int32)*, i8* }, align 8
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 2, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %"$have_gas_120"
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %"$have_gas_120"
  %"$consume_126" = sub i64 %"$gasrem_122", 2
  store i64 %"$consume_126", i64* @_gasrem, align 8
  store { %Int32 (i8*, %Int32, %Int32)*, i8* } { %Int32 (i8*, %Int32, %Int32)* bitcast (%Int32 (%"$$fundef_7_env_56"*, %Int32, %Int32)* @"$fundef_7" to %Int32 (i8*, %Int32, %Int32)*), i8* null }, { %Int32 (i8*, %Int32, %Int32)*, i8* }* %f1, align 8
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_125"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_125"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  %f3 = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_9_env_55"*, %Int32)* @"$fundef_9" to { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* %f3, align 8
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$have_gas_138"
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %f2 = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_146"
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_13_env_53"*, %Int32)* @"$fundef_13" to { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* %f2, align 8
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_151"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %n1 = alloca %Int32, align 8
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_159"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %n1, align 4
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_164"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  %n2 = alloca %Int32, align 8
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_169"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* %n2, align 4
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_174"
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %res1 = alloca %Int32, align 8
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_179"
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %"$f1_186" = load { %Int32 (i8*, %Int32, %Int32)*, i8* }, { %Int32 (i8*, %Int32, %Int32)*, i8* }* %f1, align 8
  %"$f1_fptr_187" = extractvalue { %Int32 (i8*, %Int32, %Int32)*, i8* } %"$f1_186", 0
  %"$f1_envptr_188" = extractvalue { %Int32 (i8*, %Int32, %Int32)*, i8* } %"$f1_186", 1
  %"$n1_189" = load %Int32, %Int32* %n1, align 4
  %"$n2_190" = load %Int32, %Int32* %n2, align 4
  %"$f1_call_191" = call %Int32 %"$f1_fptr_187"(i8* %"$f1_envptr_188", %Int32 %"$n1_189", %Int32 %"$n2_190")
  store %Int32 %"$f1_call_191", %Int32* %res1, align 4
  %"$gasrem_192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_193" = icmp ugt i64 1, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %"$have_gas_184"
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %"$have_gas_184"
  %"$consume_196" = sub i64 %"$gasrem_192", 1
  store i64 %"$consume_196", i64* @_gasrem, align 8
  %res2 = alloca %Int32, align 8
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_195"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_195"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %"$f2_0" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$f2_202" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* %f2, align 8
  %"$f2_fptr_203" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$f2_202", 0
  %"$f2_envptr_204" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$f2_202", 1
  %"$res1_205" = load %Int32, %Int32* %res1, align 4
  %"$f2_call_206" = call { %Int32 (i8*, %Int32)*, i8* } %"$f2_fptr_203"(i8* %"$f2_envptr_204", %Int32 %"$res1_205")
  store { %Int32 (i8*, %Int32)*, i8* } %"$f2_call_206", { %Int32 (i8*, %Int32)*, i8* }* %"$f2_0", align 8
  %"$f2_1" = alloca %Int32, align 8
  %"$$f2_0_207" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$f2_0", align 8
  %"$$f2_0_fptr_208" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$f2_0_207", 0
  %"$$f2_0_envptr_209" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$f2_0_207", 1
  %"$n1_210" = load %Int32, %Int32* %n1, align 4
  %"$$f2_0_call_211" = call %Int32 %"$$f2_0_fptr_208"(i8* %"$$f2_0_envptr_209", %Int32 %"$n1_210")
  store %Int32 %"$$f2_0_call_211", %Int32* %"$f2_1", align 4
  %"$$f2_1_212" = load %Int32, %Int32* %"$f2_1", align 4
  store %Int32 %"$$f2_1_212", %Int32* %res2, align 4
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %"$have_gas_200"
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %"$have_gas_200"
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %partial = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 1, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_216"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_216"
  %"$consume_222" = sub i64 %"$gasrem_218", 1
  store i64 %"$consume_222", i64* @_gasrem, align 8
  %"$f3_2" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$f3_223" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* %f3, align 8
  %"$f3_fptr_224" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$f3_223", 0
  %"$f3_envptr_225" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$f3_223", 1
  %"$res2_226" = load %Int32, %Int32* %res2, align 4
  %"$f3_call_227" = call { %Int32 (i8*, %Int32)*, i8* } %"$f3_fptr_224"(i8* %"$f3_envptr_225", %Int32 %"$res2_226")
  store { %Int32 (i8*, %Int32)*, i8* } %"$f3_call_227", { %Int32 (i8*, %Int32)*, i8* }* %"$f3_2", align 8
  %"$$f3_2_228" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$f3_2", align 8
  store { %Int32 (i8*, %Int32)*, i8* } %"$$f3_2_228", { %Int32 (i8*, %Int32)*, i8* }* %partial, align 8
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 1, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_221"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_221"
  %"$consume_233" = sub i64 %"$gasrem_229", 1
  store i64 %"$consume_233", i64* @_gasrem, align 8
  %total = alloca %Int32, align 8
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_232"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %"$partial_3" = alloca %Int32, align 8
  %"$partial_239" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %partial, align 8
  %"$partial_fptr_240" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$partial_239", 0
  %"$partial_envptr_241" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$partial_239", 1
  %"$n1_242" = load %Int32, %Int32* %n1, align 4
  %"$partial_call_243" = call %Int32 %"$partial_fptr_240"(i8* %"$partial_envptr_241", %Int32 %"$n1_242")
  store %Int32 %"$partial_call_243", %Int32* %"$partial_3", align 4
  %"$$partial_3_244" = load %Int32, %Int32* %"$partial_3", align 4
  store %Int32 %"$$partial_3_244", %Int32* %total, align 4
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 1, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$have_gas_237"
  %"$consume_249" = sub i64 %"$gasrem_245", 1
  store i64 %"$consume_249", i64* @_gasrem, align 8
  %res3 = alloca %Int32, align 8
  %"$gasrem_250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_251" = icmp ugt i64 1, %"$gasrem_250"
  br i1 %"$gascmp_251", label %"$out_of_gas_252", label %"$have_gas_253"

"$out_of_gas_252":                                ; preds = %"$have_gas_248"
  call void @_out_of_gas()
  br label %"$have_gas_253"

"$have_gas_253":                                  ; preds = %"$out_of_gas_252", %"$have_gas_248"
  %"$consume_254" = sub i64 %"$gasrem_250", 1
  store i64 %"$consume_254", i64* @_gasrem, align 8
  %"$f3_4" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$f3_255" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* %f3, align 8
  %"$f3_fptr_256" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$f3_255", 0
  %"$f3_envptr_257" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$f3_255", 1
  %"$total_258" = load %Int32, %Int32* %total, align 4
  %"$f3_call_259" = call { %Int32 (i8*, %Int32)*, i8* } %"$f3_fptr_256"(i8* %"$f3_envptr_257", %Int32 %"$total_258")
  store { %Int32 (i8*, %Int32)*, i8* } %"$f3_call_259", { %Int32 (i8*, %Int32)*, i8* }* %"$f3_4", align 8
  %"$f3_5" = alloca %Int32, align 8
  %"$$f3_4_260" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$f3_4", align 8
  %"$$f3_4_fptr_261" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$f3_4_260", 0
  %"$$f3_4_envptr_262" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$f3_4_260", 1
  %"$n1_263" = load %Int32, %Int32* %n1, align 4
  %"$$f3_4_call_264" = call %Int32 %"$$f3_4_fptr_261"(i8* %"$$f3_4_envptr_262", %Int32 %"$n1_263")
  store %Int32 %"$$f3_4_call_264", %Int32* %"$f3_5", align 4
  %"$$f3_5_265" = load %Int32, %Int32* %"$f3_5", align 4
  store %Int32 %"$$f3_5_265", %Int32* %res3, align 4
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_253"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_253"
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 1, %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %"$have_gas_269"
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %"$have_gas_269"
  %"$consume_275" = sub i64 %"$gasrem_271", 1
  store i64 %"$consume_275", i64* @_gasrem, align 8
  %"$res3_276" = load %Int32, %Int32* %res3, align 4
  store %Int32 %"$res3_276", %Int32* %"$expr_6", align 4
  %"$$expr_6_277" = load %Int32, %Int32* %"$expr_6", align 4
  ret %Int32 %"$$expr_6_277"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_278" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_279" = alloca %Int32, align 8
  %"$memvoidcast_280" = bitcast %Int32* %"$pval_279" to i8*
  store %Int32 %"$exprval_278", %Int32* %"$pval_279", align 4
  %"$execptr_load_281" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_281", %_TyDescrTy_Typ* @"$TyDescr_Int32_19", i8* %"$memvoidcast_280")
  ret void
}
