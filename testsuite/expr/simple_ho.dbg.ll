; let ho =
; fun( h : Int32 -> Int32) =>
; fun (i : Int32) =>
; h i
; in
; 
; let inc =
; fun (a : Int32) =>
; let b = Int32 1 in
; builtin add a b
; in
; 
; let hundred = Int32 100 in
; ho inc hundred
; 
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_16" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Int32 = type { i32 }
%"$ParamDescr_183" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_184" = type { %ParamDescrString, i32, %"$ParamDescr_183"* }
%"$$fundef_14_env_51" = type {}
%"$$fundef_12_env_52" = type { { %Int32 (i8*, %Int32)*, i8* } }
%"$$fundef_10_env_53" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_17" = global %"$TyDescrTy_PrimTyp_16" zeroinitializer
@"$TyDescr_Int32_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Int32_Prim_17" to i8*) }
@"$TyDescr_Uint32_Prim_19" = global %"$TyDescrTy_PrimTyp_16" { i32 1, i32 0 }
@"$TyDescr_Uint32_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Uint32_Prim_19" to i8*) }
@"$TyDescr_Int64_Prim_21" = global %"$TyDescrTy_PrimTyp_16" { i32 0, i32 1 }
@"$TyDescr_Int64_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Int64_Prim_21" to i8*) }
@"$TyDescr_Uint64_Prim_23" = global %"$TyDescrTy_PrimTyp_16" { i32 1, i32 1 }
@"$TyDescr_Uint64_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Uint64_Prim_23" to i8*) }
@"$TyDescr_Int128_Prim_25" = global %"$TyDescrTy_PrimTyp_16" { i32 0, i32 2 }
@"$TyDescr_Int128_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Int128_Prim_25" to i8*) }
@"$TyDescr_Uint128_Prim_27" = global %"$TyDescrTy_PrimTyp_16" { i32 1, i32 2 }
@"$TyDescr_Uint128_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Uint128_Prim_27" to i8*) }
@"$TyDescr_Int256_Prim_29" = global %"$TyDescrTy_PrimTyp_16" { i32 0, i32 3 }
@"$TyDescr_Int256_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Int256_Prim_29" to i8*) }
@"$TyDescr_Uint256_Prim_31" = global %"$TyDescrTy_PrimTyp_16" { i32 1, i32 3 }
@"$TyDescr_Uint256_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Uint256_Prim_31" to i8*) }
@"$TyDescr_String_Prim_33" = global %"$TyDescrTy_PrimTyp_16" { i32 2, i32 0 }
@"$TyDescr_String_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_String_Prim_33" to i8*) }
@"$TyDescr_Bnum_Prim_35" = global %"$TyDescrTy_PrimTyp_16" { i32 3, i32 0 }
@"$TyDescr_Bnum_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Bnum_Prim_35" to i8*) }
@"$TyDescr_Message_Prim_37" = global %"$TyDescrTy_PrimTyp_16" { i32 4, i32 0 }
@"$TyDescr_Message_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Message_Prim_37" to i8*) }
@"$TyDescr_Event_Prim_39" = global %"$TyDescrTy_PrimTyp_16" { i32 5, i32 0 }
@"$TyDescr_Event_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Event_Prim_39" to i8*) }
@"$TyDescr_Exception_Prim_41" = global %"$TyDescrTy_PrimTyp_16" { i32 6, i32 0 }
@"$TyDescr_Exception_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Exception_Prim_41" to i8*) }
@"$TyDescr_Bystr_Prim_43" = global %"$TyDescrTy_PrimTyp_16" { i32 7, i32 0 }
@"$TyDescr_Bystr_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Bystr_Prim_43" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [14 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_40", %_TyDescrTy_Typ* @"$TyDescr_Int64_22", %_TyDescrTy_Typ* @"$TyDescr_Uint256_32", %_TyDescrTy_Typ* @"$TyDescr_Uint32_20", %_TyDescrTy_Typ* @"$TyDescr_Uint64_24", %_TyDescrTy_Typ* @"$TyDescr_Bnum_36", %_TyDescrTy_Typ* @"$TyDescr_Uint128_28", %_TyDescrTy_Typ* @"$TyDescr_Exception_42", %_TyDescrTy_Typ* @"$TyDescr_String_34", %_TyDescrTy_Typ* @"$TyDescr_Int256_30", %_TyDescrTy_Typ* @"$TyDescr_Int128_26", %_TyDescrTy_Typ* @"$TyDescr_Bystr_44", %_TyDescrTy_Typ* @"$TyDescr_Message_38", %_TyDescrTy_Typ* @"$TyDescr_Int32_18"]
@_tydescr_table_length = constant i32 14
@_contract_parameters = constant [0 x %"$ParamDescr_183"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_184"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Int32 @"$fundef_14"(%"$$fundef_14_env_51"* %0, %Int32 %1) !dbg !4 {
entry:
  %"$retval_15" = alloca %Int32, align 8
  %"$gasrem_78" = load i64, i64* @_gasrem, align 8
  %"$gascmp_79" = icmp ugt i64 1, %"$gasrem_78"
  br i1 %"$gascmp_79", label %"$out_of_gas_80", label %"$have_gas_81"

"$out_of_gas_80":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_81"

"$have_gas_81":                                   ; preds = %"$out_of_gas_80", %entry
  %"$consume_82" = sub i64 %"$gasrem_78", 1
  store i64 %"$consume_82", i64* @_gasrem, align 8
  %b = alloca %Int32, align 8
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 1, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %"$have_gas_81"
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %"$have_gas_81"
  %"$consume_87" = sub i64 %"$gasrem_83", 1
  store i64 %"$consume_87", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %b, align 4, !dbg !8
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 4, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %"$have_gas_86"
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %"$have_gas_86"
  %"$consume_92" = sub i64 %"$gasrem_88", 4
  store i64 %"$consume_92", i64* @_gasrem, align 8
  %"$b_93" = load %Int32, %Int32* %b, align 4
  %"$add_call_94" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %"$b_93"), !dbg !9
  store %Int32 %"$add_call_94", %Int32* %"$retval_15", align 4, !dbg !9
  %"$$retval_15_95" = load %Int32, %Int32* %"$retval_15", align 4
  ret %Int32 %"$$retval_15_95"
}

define internal %Int32 @"$fundef_12"(%"$$fundef_12_env_52"* %0, %Int32 %1) !dbg !10 {
entry:
  %"$$fundef_12_env_h_65" = getelementptr inbounds %"$$fundef_12_env_52", %"$$fundef_12_env_52"* %0, i32 0, i32 0
  %"$h_envload_66" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$$fundef_12_env_h_65", align 8
  %h = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  store { %Int32 (i8*, %Int32)*, i8* } %"$h_envload_66", { %Int32 (i8*, %Int32)*, i8* }* %h, align 8
  %"$retval_13" = alloca %Int32, align 8
  %"$gasrem_67" = load i64, i64* @_gasrem, align 8
  %"$gascmp_68" = icmp ugt i64 1, %"$gasrem_67"
  br i1 %"$gascmp_68", label %"$out_of_gas_69", label %"$have_gas_70"

"$out_of_gas_69":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_70"

"$have_gas_70":                                   ; preds = %"$out_of_gas_69", %entry
  %"$consume_71" = sub i64 %"$gasrem_67", 1
  store i64 %"$consume_71", i64* @_gasrem, align 8
  %"$h_6" = alloca %Int32, align 8
  %"$h_72" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %h, align 8
  %"$h_fptr_73" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$h_72", 0
  %"$h_envptr_74" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$h_72", 1
  %"$h_call_75" = call %Int32 %"$h_fptr_73"(i8* %"$h_envptr_74", %Int32 %1), !dbg !11
  store %Int32 %"$h_call_75", %Int32* %"$h_6", align 4, !dbg !11
  %"$$h_6_76" = load %Int32, %Int32* %"$h_6", align 4
  store %Int32 %"$$h_6_76", %Int32* %"$retval_13", align 4, !dbg !11
  %"$$retval_13_77" = load %Int32, %Int32* %"$retval_13", align 4
  ret %Int32 %"$$retval_13_77"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_10"(%"$$fundef_10_env_53"* %0, { %Int32 (i8*, %Int32)*, i8* } %1) !dbg !12 {
entry:
  %"$retval_11" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_54" = load i64, i64* @_gasrem, align 8
  %"$gascmp_55" = icmp ugt i64 1, %"$gasrem_54"
  br i1 %"$gascmp_55", label %"$out_of_gas_56", label %"$have_gas_57"

"$out_of_gas_56":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_57"

"$have_gas_57":                                   ; preds = %"$out_of_gas_56", %entry
  %"$consume_58" = sub i64 %"$gasrem_54", 1
  store i64 %"$consume_58", i64* @_gasrem, align 8
  %"$$fundef_12_envp_59_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_12_envp_59_salloc" = call i8* @_salloc(i8* %"$$fundef_12_envp_59_load", i64 16)
  %"$$fundef_12_envp_59" = bitcast i8* %"$$fundef_12_envp_59_salloc" to %"$$fundef_12_env_52"*
  %"$$fundef_12_env_voidp_61" = bitcast %"$$fundef_12_env_52"* %"$$fundef_12_envp_59" to i8*
  %"$$fundef_12_cloval_62" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_12_env_52"*, %Int32)* @"$fundef_12" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_12_env_voidp_61", 1
  %"$$fundef_12_env_h_63" = getelementptr inbounds %"$$fundef_12_env_52", %"$$fundef_12_env_52"* %"$$fundef_12_envp_59", i32 0, i32 0
  store { %Int32 (i8*, %Int32)*, i8* } %1, { %Int32 (i8*, %Int32)*, i8* }* %"$$fundef_12_env_h_63", align 8
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_12_cloval_62", { %Int32 (i8*, %Int32)*, i8* }* %"$retval_11", align 8, !dbg !13
  %"$$retval_11_64" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_11", align 8
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_11_64"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() !dbg !14 {
entry:
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 5, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %entry
  %"$consume_100" = sub i64 %"$gasrem_96", 5
  store i64 %"$consume_100", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !16
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 8, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %"$have_gas_99"
  %"$consume_105" = sub i64 %"$gasrem_101", 8
  store i64 %"$consume_105", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !16
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 196, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_104"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_104"
  %"$consume_110" = sub i64 %"$gasrem_106", 196
  store i64 %"$consume_110", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !16
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 20, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_109"
  %"$consume_115" = sub i64 %"$gasrem_111", 20
  store i64 %"$consume_115", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !16
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 12, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$have_gas_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 12
  store i64 %"$consume_120", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !16
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 2, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_119"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_119"
  %"$consume_125" = sub i64 %"$gasrem_121", 2
  store i64 %"$consume_125", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !16
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) !dbg !17 {
entry:
  %"$expr_9" = alloca %Int32, align 8
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %entry
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  %ho = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }, align 8
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_10_env_53"*, { %Int32 (i8*, %Int32)*, i8* })* @"$fundef_10" to { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }* %ho, align 8, !dbg !18
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_134"
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem, align 8
  %inc = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_142"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_142"
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem, align 8
  store { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_14_env_51"*, %Int32)* @"$fundef_14" to %Int32 (i8*, %Int32)*), i8* null }, { %Int32 (i8*, %Int32)*, i8* }* %inc, align 8, !dbg !19
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$have_gas_147"
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem, align 8
  %hundred = alloca %Int32, align 8
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 1, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_155"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_155"
  %"$consume_161" = sub i64 %"$gasrem_157", 1
  store i64 %"$consume_161", i64* @_gasrem, align 8
  store %Int32 { i32 100 }, %Int32* %hundred, align 4, !dbg !20
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_160"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_160"
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %"$ho_7" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$ho_167" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }* %ho, align 8
  %"$ho_fptr_168" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } %"$ho_167", 0
  %"$ho_envptr_169" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } %"$ho_167", 1
  %"$inc_170" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %inc, align 8
  %"$ho_call_171" = call { %Int32 (i8*, %Int32)*, i8* } %"$ho_fptr_168"(i8* %"$ho_envptr_169", { %Int32 (i8*, %Int32)*, i8* } %"$inc_170"), !dbg !21
  store { %Int32 (i8*, %Int32)*, i8* } %"$ho_call_171", { %Int32 (i8*, %Int32)*, i8* }* %"$ho_7", align 8, !dbg !21
  %"$ho_8" = alloca %Int32, align 8
  %"$$ho_7_172" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$ho_7", align 8
  %"$$ho_7_fptr_173" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$ho_7_172", 0
  %"$$ho_7_envptr_174" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$ho_7_172", 1
  %"$hundred_175" = load %Int32, %Int32* %hundred, align 4
  %"$$ho_7_call_176" = call %Int32 %"$$ho_7_fptr_173"(i8* %"$$ho_7_envptr_174", %Int32 %"$hundred_175"), !dbg !21
  store %Int32 %"$$ho_7_call_176", %Int32* %"$ho_8", align 4, !dbg !21
  %"$$ho_8_177" = load %Int32, %Int32* %"$ho_8", align 4
  store %Int32 %"$$ho_8_177", %Int32* %"$expr_9", align 4, !dbg !21
  %"$$expr_9_178" = load %Int32, %Int32* %"$expr_9", align 4
  ret %Int32 %"$$expr_9_178"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_179" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_180" = alloca %Int32, align 8
  %"$memvoidcast_181" = bitcast %Int32* %"$pval_180" to i8*
  store %Int32 %"$exprval_179", %Int32* %"$pval_180", align 4
  %"$execptr_load_182" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_182", %_TyDescrTy_Typ* @"$TyDescr_Int32_18", i8* %"$memvoidcast_181")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "simple_ho.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_14", linkageName: "$fundef_14", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 9, column: 13, scope: !4)
!9 = !DILocation(line: 10, column: 5, scope: !4)
!10 = distinct !DISubprogram(name: "$fundef_12", linkageName: "$fundef_12", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 4, column: 5, scope: !10)
!12 = distinct !DISubprogram(name: "$fundef_10", linkageName: "$fundef_10", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!13 = !DILocation(line: 4, column: 5, scope: !12)
!14 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !15, file: !15, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DIFile(filename: ".", directory: ".")
!16 = !DILocation(line: 0, scope: !14)
!17 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 3, column: 3, scope: !17)
!19 = !DILocation(line: 9, column: 5, scope: !17)
!20 = !DILocation(line: 13, column: 15, scope: !17)
!21 = !DILocation(line: 14, column: 1, scope: !17)
