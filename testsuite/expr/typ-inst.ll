; let tf =
; tfun 'A =>
; fun (a : 'A) =>
; a
; in
; 
; let t = @tf Uint32 in
; let one = Uint32 1 in
; t one
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_6" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$$fundef_4_env_39" = type {}
%Uint32 = type { i32 }
%"$$fundef_2_env_40" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_7" = global %"$TyDescrTy_PrimTyp_6" zeroinitializer
@"$TyDescr_Int32_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int32_Prim_7" to i8*) }
@"$TyDescr_Uint32_Prim_9" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 0 }
@"$TyDescr_Uint32_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint32_Prim_9" to i8*) }
@"$TyDescr_Int64_Prim_11" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 1 }
@"$TyDescr_Int64_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int64_Prim_11" to i8*) }
@"$TyDescr_Uint64_Prim_13" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 1 }
@"$TyDescr_Uint64_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint64_Prim_13" to i8*) }
@"$TyDescr_Int128_Prim_15" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 2 }
@"$TyDescr_Int128_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int128_Prim_15" to i8*) }
@"$TyDescr_Uint128_Prim_17" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 2 }
@"$TyDescr_Uint128_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint128_Prim_17" to i8*) }
@"$TyDescr_Int256_Prim_19" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 3 }
@"$TyDescr_Int256_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int256_Prim_19" to i8*) }
@"$TyDescr_Uint256_Prim_21" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 3 }
@"$TyDescr_Uint256_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint256_Prim_21" to i8*) }
@"$TyDescr_String_Prim_23" = global %"$TyDescrTy_PrimTyp_6" { i32 2, i32 0 }
@"$TyDescr_String_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_String_Prim_23" to i8*) }
@"$TyDescr_Bnum_Prim_25" = global %"$TyDescrTy_PrimTyp_6" { i32 3, i32 0 }
@"$TyDescr_Bnum_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bnum_Prim_25" to i8*) }
@"$TyDescr_Message_Prim_27" = global %"$TyDescrTy_PrimTyp_6" { i32 4, i32 0 }
@"$TyDescr_Message_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Message_Prim_27" to i8*) }
@"$TyDescr_Event_Prim_29" = global %"$TyDescrTy_PrimTyp_6" { i32 5, i32 0 }
@"$TyDescr_Event_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Event_Prim_29" to i8*) }
@"$TyDescr_Exception_Prim_31" = global %"$TyDescrTy_PrimTyp_6" { i32 6, i32 0 }
@"$TyDescr_Exception_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Exception_Prim_31" to i8*) }
@"$TyDescr_Bystr_Prim_33" = global %"$TyDescrTy_PrimTyp_6" { i32 7, i32 0 }
@"$TyDescr_Bystr_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr_Prim_33" to i8*) }

define internal %Uint32 @"$fundef_4"(%"$$fundef_4_env_39"* %0, %Uint32 %1) {
entry:
  %"$retval_5" = alloca %Uint32
  %"$gasrem_50" = load i64, i64* @_gasrem
  %"$gascmp_51" = icmp ugt i64 1, %"$gasrem_50"
  br i1 %"$gascmp_51", label %"$out_of_gas_52", label %"$have_gas_53"

"$out_of_gas_52":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_53"

"$have_gas_53":                                   ; preds = %"$out_of_gas_52", %entry
  %"$consume_54" = sub i64 %"$gasrem_50", 1
  store i64 %"$consume_54", i64* @_gasrem
  store %Uint32 %1, %Uint32* %"$retval_5"
  %"$$retval_5_55" = load %Uint32, %Uint32* %"$retval_5"
  ret %Uint32 %"$$retval_5_55"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_2"(%"$$fundef_2_env_40"* %0) {
entry:
  %"$retval_3" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$gasrem_41" = load i64, i64* @_gasrem
  %"$gascmp_42" = icmp ugt i64 1, %"$gasrem_41"
  br i1 %"$gascmp_42", label %"$out_of_gas_43", label %"$have_gas_44"

"$out_of_gas_43":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_44"

"$have_gas_44":                                   ; preds = %"$out_of_gas_43", %entry
  %"$consume_45" = sub i64 %"$gasrem_41", 1
  store i64 %"$consume_45", i64* @_gasrem
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_4_env_39"*, %Uint32)* @"$fundef_4" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_3"
  %"$$retval_3_49" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_3"
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_3_49"
}

declare void @_out_of_gas()

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_56"(i8* %0) {
entry:
  %"$expr_1" = alloca %Uint32
  %"$gasrem_57" = load i64, i64* @_gasrem
  %"$gascmp_58" = icmp ugt i64 1, %"$gasrem_57"
  br i1 %"$gascmp_58", label %"$out_of_gas_59", label %"$have_gas_60"

"$out_of_gas_59":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_60"

"$have_gas_60":                                   ; preds = %"$out_of_gas_59", %entry
  %"$consume_61" = sub i64 %"$gasrem_57", 1
  store i64 %"$consume_61", i64* @_gasrem
  %tf = alloca { i8*, i8* }*
  %"$gasrem_62" = load i64, i64* @_gasrem
  %"$gascmp_63" = icmp ugt i64 1, %"$gasrem_62"
  br i1 %"$gascmp_63", label %"$out_of_gas_64", label %"$have_gas_65"

"$out_of_gas_64":                                 ; preds = %"$have_gas_60"
  call void @_out_of_gas()
  br label %"$have_gas_65"

"$have_gas_65":                                   ; preds = %"$out_of_gas_64", %"$have_gas_60"
  %"$consume_66" = sub i64 %"$gasrem_62", 1
  store i64 %"$consume_66", i64* @_gasrem
  %"$dyndisp_table_70_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_70_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_70_salloc_load", i64 16)
  %"$dyndisp_table_70_salloc" = bitcast i8* %"$dyndisp_table_70_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_70" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_70_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_71" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_70", i32 0
  %"$dyndisp_pcast_72" = bitcast { i8*, i8* }* %"$dyndisp_gep_71" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_2_env_40"*)* @"$fundef_2" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_72"
  store { i8*, i8* }* %"$dyndisp_table_70", { i8*, i8* }** %tf
  %"$gasrem_73" = load i64, i64* @_gasrem
  %"$gascmp_74" = icmp ugt i64 1, %"$gasrem_73"
  br i1 %"$gascmp_74", label %"$out_of_gas_75", label %"$have_gas_76"

"$out_of_gas_75":                                 ; preds = %"$have_gas_65"
  call void @_out_of_gas()
  br label %"$have_gas_76"

"$have_gas_76":                                   ; preds = %"$out_of_gas_75", %"$have_gas_65"
  %"$consume_77" = sub i64 %"$gasrem_73", 1
  store i64 %"$consume_77", i64* @_gasrem
  %t = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$gasrem_78" = load i64, i64* @_gasrem
  %"$gascmp_79" = icmp ugt i64 1, %"$gasrem_78"
  br i1 %"$gascmp_79", label %"$out_of_gas_80", label %"$have_gas_81"

"$out_of_gas_80":                                 ; preds = %"$have_gas_76"
  call void @_out_of_gas()
  br label %"$have_gas_81"

"$have_gas_81":                                   ; preds = %"$out_of_gas_80", %"$have_gas_76"
  %"$consume_82" = sub i64 %"$gasrem_78", 1
  store i64 %"$consume_82", i64* @_gasrem
  %"$tf_83" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_84" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_83", i32 0
  %"$tf_85" = bitcast { i8*, i8* }* %"$tf_84" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_86" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_85"
  %"$tf_fptr_87" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_86", 0
  %"$tf_envptr_88" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_86", 1
  %"$tf_call_89" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$tf_fptr_87"(i8* %"$tf_envptr_88")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$tf_call_89", { %Uint32 (i8*, %Uint32)*, i8* }* %t
  %"$gasrem_90" = load i64, i64* @_gasrem
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$have_gas_81"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$have_gas_81"
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem
  %one = alloca %Uint32
  %"$gasrem_95" = load i64, i64* @_gasrem
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_93"
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem
  store %Uint32 { i32 1 }, %Uint32* %one
  %"$gasrem_100" = load i64, i64* @_gasrem
  %"$gascmp_101" = icmp ugt i64 1, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_98"
  %"$consume_104" = sub i64 %"$gasrem_100", 1
  store i64 %"$consume_104", i64* @_gasrem
  %"$t_0" = alloca %Uint32
  %"$t_105" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %t
  %"$t_fptr_106" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$t_105", 0
  %"$t_envptr_107" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$t_105", 1
  %"$one_108" = load %Uint32, %Uint32* %one
  %"$t_call_109" = call %Uint32 %"$t_fptr_106"(i8* %"$t_envptr_107", %Uint32 %"$one_108")
  store %Uint32 %"$t_call_109", %Uint32* %"$t_0"
  %"$$t_0_110" = load %Uint32, %Uint32* %"$t_0"
  store %Uint32 %"$$t_0_110", %Uint32* %"$expr_1"
  %"$$expr_1_111" = load %Uint32, %Uint32* %"$expr_1"
  ret %Uint32 %"$$expr_1_111"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_112" = call %Uint32 @"$scilla_expr_56"(i8* null)
  %"$pval_113" = alloca %Uint32
  %"$memvoidcast_114" = bitcast %Uint32* %"$pval_113" to i8*
  store %Uint32 %"$exprval_112", %Uint32* %"$pval_113"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_10", i8* %"$memvoidcast_114")
  ret void
}
