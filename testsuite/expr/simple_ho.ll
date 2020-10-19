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

%"$TyDescrTy_PrimTyp_10" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$$fundef_8_env_43" = type {}
%Int32 = type { i32 }
%"$$fundef_6_env_44" = type { { %Int32 (i8*, %Int32)*, i8* } }
%"$$fundef_4_env_45" = type {}

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

define internal %Int32 @"$fundef_8"(%"$$fundef_8_env_43"* %0, %Int32 %1) {
entry:
  %"$retval_9" = alloca %Int32
  %"$gasrem_70" = load i64, i64* @_gasrem
  %"$gascmp_71" = icmp ugt i64 1, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %entry
  %"$consume_74" = sub i64 %"$gasrem_70", 1
  store i64 %"$consume_74", i64* @_gasrem
  %b = alloca %Int32
  %"$gasrem_75" = load i64, i64* @_gasrem
  %"$gascmp_76" = icmp ugt i64 1, %"$gasrem_75"
  br i1 %"$gascmp_76", label %"$out_of_gas_77", label %"$have_gas_78"

"$out_of_gas_77":                                 ; preds = %"$have_gas_73"
  call void @_out_of_gas()
  br label %"$have_gas_78"

"$have_gas_78":                                   ; preds = %"$out_of_gas_77", %"$have_gas_73"
  %"$consume_79" = sub i64 %"$gasrem_75", 1
  store i64 %"$consume_79", i64* @_gasrem
  store %Int32 { i32 1 }, %Int32* %b
  %"$b_80" = load %Int32, %Int32* %b
  %"$add_call_81" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %"$b_80")
  store %Int32 %"$add_call_81", %Int32* %"$retval_9"
  %"$$retval_9_82" = load %Int32, %Int32* %"$retval_9"
  ret %Int32 %"$$retval_9_82"
}

define internal %Int32 @"$fundef_6"(%"$$fundef_6_env_44"* %0, %Int32 %1) {
entry:
  %"$$fundef_6_env_h_57" = getelementptr inbounds %"$$fundef_6_env_44", %"$$fundef_6_env_44"* %0, i32 0, i32 0
  %"$h_envload_58" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$$fundef_6_env_h_57"
  %h = alloca { %Int32 (i8*, %Int32)*, i8* }
  store { %Int32 (i8*, %Int32)*, i8* } %"$h_envload_58", { %Int32 (i8*, %Int32)*, i8* }* %h
  %"$retval_7" = alloca %Int32
  %"$gasrem_59" = load i64, i64* @_gasrem
  %"$gascmp_60" = icmp ugt i64 1, %"$gasrem_59"
  br i1 %"$gascmp_60", label %"$out_of_gas_61", label %"$have_gas_62"

"$out_of_gas_61":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_62"

"$have_gas_62":                                   ; preds = %"$out_of_gas_61", %entry
  %"$consume_63" = sub i64 %"$gasrem_59", 1
  store i64 %"$consume_63", i64* @_gasrem
  %"$h_0" = alloca %Int32
  %"$h_64" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %h
  %"$h_fptr_65" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$h_64", 0
  %"$h_envptr_66" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$h_64", 1
  %"$h_call_67" = call %Int32 %"$h_fptr_65"(i8* %"$h_envptr_66", %Int32 %1)
  store %Int32 %"$h_call_67", %Int32* %"$h_0"
  %"$$h_0_68" = load %Int32, %Int32* %"$h_0"
  store %Int32 %"$$h_0_68", %Int32* %"$retval_7"
  %"$$retval_7_69" = load %Int32, %Int32* %"$retval_7"
  ret %Int32 %"$$retval_7_69"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_4"(%"$$fundef_4_env_45"* %0, { %Int32 (i8*, %Int32)*, i8* } %1) {
entry:
  %"$retval_5" = alloca { %Int32 (i8*, %Int32)*, i8* }
  %"$gasrem_46" = load i64, i64* @_gasrem
  %"$gascmp_47" = icmp ugt i64 1, %"$gasrem_46"
  br i1 %"$gascmp_47", label %"$out_of_gas_48", label %"$have_gas_49"

"$out_of_gas_48":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_49"

"$have_gas_49":                                   ; preds = %"$out_of_gas_48", %entry
  %"$consume_50" = sub i64 %"$gasrem_46", 1
  store i64 %"$consume_50", i64* @_gasrem
  %"$$fundef_6_envp_51_load" = load i8*, i8** @_execptr
  %"$$fundef_6_envp_51_salloc" = call i8* @_salloc(i8* %"$$fundef_6_envp_51_load", i64 16)
  %"$$fundef_6_envp_51" = bitcast i8* %"$$fundef_6_envp_51_salloc" to %"$$fundef_6_env_44"*
  %"$$fundef_6_env_voidp_53" = bitcast %"$$fundef_6_env_44"* %"$$fundef_6_envp_51" to i8*
  %"$$fundef_6_cloval_54" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_6_env_44"*, %Int32)* @"$fundef_6" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_6_env_voidp_53", 1
  %"$$fundef_6_env_h_55" = getelementptr inbounds %"$$fundef_6_env_44", %"$$fundef_6_env_44"* %"$$fundef_6_envp_51", i32 0, i32 0
  store { %Int32 (i8*, %Int32)*, i8* } %1, { %Int32 (i8*, %Int32)*, i8* }* %"$$fundef_6_env_h_55"
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_6_cloval_54", { %Int32 (i8*, %Int32)*, i8* }* %"$retval_5"
  %"$$retval_5_56" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_5"
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_5_56"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @"$scilla_expr_83"(i8* %0) {
entry:
  %"$expr_3" = alloca %Int32
  %"$gasrem_84" = load i64, i64* @_gasrem
  %"$gascmp_85" = icmp ugt i64 1, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %entry
  %"$consume_88" = sub i64 %"$gasrem_84", 1
  store i64 %"$consume_88", i64* @_gasrem
  %ho = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }
  %"$gasrem_89" = load i64, i64* @_gasrem
  %"$gascmp_90" = icmp ugt i64 1, %"$gasrem_89"
  br i1 %"$gascmp_90", label %"$out_of_gas_91", label %"$have_gas_92"

"$out_of_gas_91":                                 ; preds = %"$have_gas_87"
  call void @_out_of_gas()
  br label %"$have_gas_92"

"$have_gas_92":                                   ; preds = %"$out_of_gas_91", %"$have_gas_87"
  %"$consume_93" = sub i64 %"$gasrem_89", 1
  store i64 %"$consume_93", i64* @_gasrem
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_4_env_45"*, { %Int32 (i8*, %Int32)*, i8* })* @"$fundef_4" to { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }* %ho
  %"$gasrem_97" = load i64, i64* @_gasrem
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %"$have_gas_92"
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %"$have_gas_92"
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem
  %inc = alloca { %Int32 (i8*, %Int32)*, i8* }
  %"$gasrem_102" = load i64, i64* @_gasrem
  %"$gascmp_103" = icmp ugt i64 1, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$have_gas_100"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$have_gas_100"
  %"$consume_106" = sub i64 %"$gasrem_102", 1
  store i64 %"$consume_106", i64* @_gasrem
  store { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_8_env_43"*, %Int32)* @"$fundef_8" to %Int32 (i8*, %Int32)*), i8* null }, { %Int32 (i8*, %Int32)*, i8* }* %inc
  %"$gasrem_110" = load i64, i64* @_gasrem
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_105"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_105"
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem
  %hundred = alloca %Int32
  %"$gasrem_115" = load i64, i64* @_gasrem
  %"$gascmp_116" = icmp ugt i64 1, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %"$have_gas_113"
  %"$consume_119" = sub i64 %"$gasrem_115", 1
  store i64 %"$consume_119", i64* @_gasrem
  store %Int32 { i32 100 }, %Int32* %hundred
  %"$gasrem_120" = load i64, i64* @_gasrem
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$have_gas_118"
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem
  %"$ho_1" = alloca { %Int32 (i8*, %Int32)*, i8* }
  %"$ho_125" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }* %ho
  %"$ho_fptr_126" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } %"$ho_125", 0
  %"$ho_envptr_127" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } %"$ho_125", 1
  %"$inc_128" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %inc
  %"$ho_call_129" = call { %Int32 (i8*, %Int32)*, i8* } %"$ho_fptr_126"(i8* %"$ho_envptr_127", { %Int32 (i8*, %Int32)*, i8* } %"$inc_128")
  store { %Int32 (i8*, %Int32)*, i8* } %"$ho_call_129", { %Int32 (i8*, %Int32)*, i8* }* %"$ho_1"
  %"$ho_2" = alloca %Int32
  %"$$ho_1_130" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$ho_1"
  %"$$ho_1_fptr_131" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$ho_1_130", 0
  %"$$ho_1_envptr_132" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$ho_1_130", 1
  %"$hundred_133" = load %Int32, %Int32* %hundred
  %"$$ho_1_call_134" = call %Int32 %"$$ho_1_fptr_131"(i8* %"$$ho_1_envptr_132", %Int32 %"$hundred_133")
  store %Int32 %"$$ho_1_call_134", %Int32* %"$ho_2"
  %"$$ho_2_135" = load %Int32, %Int32* %"$ho_2"
  store %Int32 %"$$ho_2_135", %Int32* %"$expr_3"
  %"$$expr_3_136" = load %Int32, %Int32* %"$expr_3"
  ret %Int32 %"$$expr_3_136"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_137" = call %Int32 @"$scilla_expr_83"(i8* null)
  %"$pval_138" = alloca %Int32
  %"$memvoidcast_139" = bitcast %Int32* %"$pval_138" to i8*
  store %Int32 %"$exprval_137", %Int32* %"$pval_138"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_12", i8* %"$memvoidcast_139")
  ret void
}
