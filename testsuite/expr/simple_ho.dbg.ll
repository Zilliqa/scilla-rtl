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
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_10" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$ParamDescr_141" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_142" = type { %ParamDescrString, i32, %"$ParamDescr_141"* }
%"$$fundef_8_env_45" = type {}
%Int32 = type { i32 }
%"$$fundef_6_env_46" = type { { %Int32 (i8*, %Int32)*, i8* } }
%"$$fundef_4_env_47" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_11" = global %"$TyDescrTy_PrimTyp_10" zeroinitializer
@"$TyDescr_Int32_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int32_Prim_11" to i8*) }
@"$TyDescr_Uint32_Prim_13" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 0 }
@"$TyDescr_Uint32_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint32_Prim_13" to i8*) }
@"$TyDescr_Int64_Prim_15" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 1 }
@"$TyDescr_Int64_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int64_Prim_15" to i8*) }
@"$TyDescr_Uint64_Prim_17" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 1 }
@"$TyDescr_Uint64_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint64_Prim_17" to i8*) }
@"$TyDescr_Int128_Prim_19" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 2 }
@"$TyDescr_Int128_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int128_Prim_19" to i8*) }
@"$TyDescr_Uint128_Prim_21" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 2 }
@"$TyDescr_Uint128_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint128_Prim_21" to i8*) }
@"$TyDescr_Int256_Prim_23" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 3 }
@"$TyDescr_Int256_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int256_Prim_23" to i8*) }
@"$TyDescr_Uint256_Prim_25" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 3 }
@"$TyDescr_Uint256_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint256_Prim_25" to i8*) }
@"$TyDescr_String_Prim_27" = global %"$TyDescrTy_PrimTyp_10" { i32 2, i32 0 }
@"$TyDescr_String_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_String_Prim_27" to i8*) }
@"$TyDescr_Bnum_Prim_29" = global %"$TyDescrTy_PrimTyp_10" { i32 3, i32 0 }
@"$TyDescr_Bnum_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bnum_Prim_29" to i8*) }
@"$TyDescr_Message_Prim_31" = global %"$TyDescrTy_PrimTyp_10" { i32 4, i32 0 }
@"$TyDescr_Message_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Message_Prim_31" to i8*) }
@"$TyDescr_Event_Prim_33" = global %"$TyDescrTy_PrimTyp_10" { i32 5, i32 0 }
@"$TyDescr_Event_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Event_Prim_33" to i8*) }
@"$TyDescr_Exception_Prim_35" = global %"$TyDescrTy_PrimTyp_10" { i32 6, i32 0 }
@"$TyDescr_Exception_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Exception_Prim_35" to i8*) }
@"$TyDescr_Bystr_Prim_37" = global %"$TyDescrTy_PrimTyp_10" { i32 7, i32 0 }
@"$TyDescr_Bystr_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bystr_Prim_37" to i8*) }
@_tydescr_table = constant [14 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_34", %_TyDescrTy_Typ* @"$TyDescr_Int64_16", %_TyDescrTy_Typ* @"$TyDescr_Uint256_26", %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", %_TyDescrTy_Typ* @"$TyDescr_Uint64_18", %_TyDescrTy_Typ* @"$TyDescr_Bnum_30", %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ* @"$TyDescr_Exception_36", %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ* @"$TyDescr_Int256_24", %_TyDescrTy_Typ* @"$TyDescr_Int128_20", %_TyDescrTy_Typ* @"$TyDescr_Bystr_38", %_TyDescrTy_Typ* @"$TyDescr_Message_32", %_TyDescrTy_Typ* @"$TyDescr_Int32_12"]
@_tydescr_table_length = constant i32 14
@_contract_parameters = constant [0 x %"$ParamDescr_141"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_142"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Int32 @"$fundef_8"(%"$$fundef_8_env_45"* %0, %Int32 %1) !dbg !4 {
entry:
  %"$retval_9" = alloca %Int32, align 8
  %"$gasrem_72" = load i64, i64* @_gasrem, align 8
  %"$gascmp_73" = icmp ugt i64 1, %"$gasrem_72"
  br i1 %"$gascmp_73", label %"$out_of_gas_74", label %"$have_gas_75"

"$out_of_gas_74":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_75"

"$have_gas_75":                                   ; preds = %"$out_of_gas_74", %entry
  %"$consume_76" = sub i64 %"$gasrem_72", 1
  store i64 %"$consume_76", i64* @_gasrem, align 8
  %b = alloca %Int32, align 8
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %"$have_gas_75"
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %"$have_gas_75"
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %b, align 4, !dbg !8
  %"$b_82" = load %Int32, %Int32* %b, align 4
  %"$add_call_83" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %"$b_82")
  store %Int32 %"$add_call_83", %Int32* %"$retval_9", align 4, !dbg !9
  %"$$retval_9_84" = load %Int32, %Int32* %"$retval_9", align 4
  ret %Int32 %"$$retval_9_84"
}

define internal %Int32 @"$fundef_6"(%"$$fundef_6_env_46"* %0, %Int32 %1) !dbg !10 {
entry:
  %"$$fundef_6_env_h_59" = getelementptr inbounds %"$$fundef_6_env_46", %"$$fundef_6_env_46"* %0, i32 0, i32 0
  %"$h_envload_60" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$$fundef_6_env_h_59", align 8
  %h = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  store { %Int32 (i8*, %Int32)*, i8* } %"$h_envload_60", { %Int32 (i8*, %Int32)*, i8* }* %h, align 8
  %"$retval_7" = alloca %Int32, align 8
  %"$gasrem_61" = load i64, i64* @_gasrem, align 8
  %"$gascmp_62" = icmp ugt i64 1, %"$gasrem_61"
  br i1 %"$gascmp_62", label %"$out_of_gas_63", label %"$have_gas_64"

"$out_of_gas_63":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_64"

"$have_gas_64":                                   ; preds = %"$out_of_gas_63", %entry
  %"$consume_65" = sub i64 %"$gasrem_61", 1
  store i64 %"$consume_65", i64* @_gasrem, align 8
  %"$h_0" = alloca %Int32, align 8
  %"$h_66" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %h, align 8
  %"$h_fptr_67" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$h_66", 0
  %"$h_envptr_68" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$h_66", 1
  %"$h_call_69" = call %Int32 %"$h_fptr_67"(i8* %"$h_envptr_68", %Int32 %1), !dbg !11
  store %Int32 %"$h_call_69", %Int32* %"$h_0", align 4, !dbg !11
  %"$$h_0_70" = load %Int32, %Int32* %"$h_0", align 4
  store %Int32 %"$$h_0_70", %Int32* %"$retval_7", align 4, !dbg !11
  %"$$retval_7_71" = load %Int32, %Int32* %"$retval_7", align 4
  ret %Int32 %"$$retval_7_71"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_4"(%"$$fundef_4_env_47"* %0, { %Int32 (i8*, %Int32)*, i8* } %1) !dbg !12 {
entry:
  %"$retval_5" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_48" = load i64, i64* @_gasrem, align 8
  %"$gascmp_49" = icmp ugt i64 1, %"$gasrem_48"
  br i1 %"$gascmp_49", label %"$out_of_gas_50", label %"$have_gas_51"

"$out_of_gas_50":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_51"

"$have_gas_51":                                   ; preds = %"$out_of_gas_50", %entry
  %"$consume_52" = sub i64 %"$gasrem_48", 1
  store i64 %"$consume_52", i64* @_gasrem, align 8
  %"$$fundef_6_envp_53_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_6_envp_53_salloc" = call i8* @_salloc(i8* %"$$fundef_6_envp_53_load", i64 16)
  %"$$fundef_6_envp_53" = bitcast i8* %"$$fundef_6_envp_53_salloc" to %"$$fundef_6_env_46"*
  %"$$fundef_6_env_voidp_55" = bitcast %"$$fundef_6_env_46"* %"$$fundef_6_envp_53" to i8*
  %"$$fundef_6_cloval_56" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_6_env_46"*, %Int32)* @"$fundef_6" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_6_env_voidp_55", 1
  %"$$fundef_6_env_h_57" = getelementptr inbounds %"$$fundef_6_env_46", %"$$fundef_6_env_46"* %"$$fundef_6_envp_53", i32 0, i32 0
  store { %Int32 (i8*, %Int32)*, i8* } %1, { %Int32 (i8*, %Int32)*, i8* }* %"$$fundef_6_env_h_57", align 8
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_6_cloval_56", { %Int32 (i8*, %Int32)*, i8* }* %"$retval_5", align 8, !dbg !13
  %"$$retval_5_58" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_5", align 8
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_5_58"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() !dbg !14 {
entry:
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) !dbg !16 {
entry:
  %"$expr_3" = alloca %Int32, align 8
  %"$gasrem_85" = load i64, i64* @_gasrem, align 8
  %"$gascmp_86" = icmp ugt i64 1, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %entry
  %"$consume_89" = sub i64 %"$gasrem_85", 1
  store i64 %"$consume_89", i64* @_gasrem, align 8
  %ho = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }, align 8
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$have_gas_88"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$have_gas_88"
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_4_env_47"*, { %Int32 (i8*, %Int32)*, i8* })* @"$fundef_4" to { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }* %ho, align 8, !dbg !17
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_93"
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %inc = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_104" = icmp ugt i64 1, %"$gasrem_103"
  br i1 %"$gascmp_104", label %"$out_of_gas_105", label %"$have_gas_106"

"$out_of_gas_105":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_106"

"$have_gas_106":                                  ; preds = %"$out_of_gas_105", %"$have_gas_101"
  %"$consume_107" = sub i64 %"$gasrem_103", 1
  store i64 %"$consume_107", i64* @_gasrem, align 8
  store { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_8_env_45"*, %Int32)* @"$fundef_8" to %Int32 (i8*, %Int32)*), i8* null }, { %Int32 (i8*, %Int32)*, i8* }* %inc, align 8, !dbg !18
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 1, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_106"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_106"
  %"$consume_115" = sub i64 %"$gasrem_111", 1
  store i64 %"$consume_115", i64* @_gasrem, align 8
  %hundred = alloca %Int32, align 8
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$have_gas_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem, align 8
  store %Int32 { i32 100 }, %Int32* %hundred, align 4, !dbg !19
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_119"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_119"
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  %"$ho_1" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$ho_126" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }* %ho, align 8
  %"$ho_fptr_127" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } %"$ho_126", 0
  %"$ho_envptr_128" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } %"$ho_126", 1
  %"$inc_129" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %inc, align 8
  %"$ho_call_130" = call { %Int32 (i8*, %Int32)*, i8* } %"$ho_fptr_127"(i8* %"$ho_envptr_128", { %Int32 (i8*, %Int32)*, i8* } %"$inc_129"), !dbg !20
  store { %Int32 (i8*, %Int32)*, i8* } %"$ho_call_130", { %Int32 (i8*, %Int32)*, i8* }* %"$ho_1", align 8, !dbg !20
  %"$ho_2" = alloca %Int32, align 8
  %"$$ho_1_131" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$ho_1", align 8
  %"$$ho_1_fptr_132" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$ho_1_131", 0
  %"$$ho_1_envptr_133" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$ho_1_131", 1
  %"$hundred_134" = load %Int32, %Int32* %hundred, align 4
  %"$$ho_1_call_135" = call %Int32 %"$$ho_1_fptr_132"(i8* %"$$ho_1_envptr_133", %Int32 %"$hundred_134"), !dbg !20
  store %Int32 %"$$ho_1_call_135", %Int32* %"$ho_2", align 4, !dbg !20
  %"$$ho_2_136" = load %Int32, %Int32* %"$ho_2", align 4
  store %Int32 %"$$ho_2_136", %Int32* %"$expr_3", align 4, !dbg !20
  %"$$expr_3_137" = load %Int32, %Int32* %"$expr_3", align 4
  ret %Int32 %"$$expr_3_137"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_138" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_139" = alloca %Int32, align 8
  %"$memvoidcast_140" = bitcast %Int32* %"$pval_139" to i8*
  store %Int32 %"$exprval_138", %Int32* %"$pval_139", align 4
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_12", i8* %"$memvoidcast_140")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "simple_ho.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_8", linkageName: "$fundef_8", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 9, column: 13, scope: !4)
!9 = !DILocation(line: 10, column: 5, scope: !4)
!10 = distinct !DISubprogram(name: "$fundef_6", linkageName: "$fundef_6", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 4, column: 5, scope: !10)
!12 = distinct !DISubprogram(name: "$fundef_4", linkageName: "$fundef_4", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!13 = !DILocation(line: 4, column: 5, scope: !12)
!14 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !15, file: !15, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DIFile(filename: ".", directory: ".")
!16 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!17 = !DILocation(line: 3, column: 3, scope: !16)
!18 = !DILocation(line: 9, column: 5, scope: !16)
!19 = !DILocation(line: 13, column: 15, scope: !16)
!20 = !DILocation(line: 14, column: 1, scope: !16)
