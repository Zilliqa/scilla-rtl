; let tf =
; tfun 'A =>
; tfun 'B =>
; fun (a : 'A) =>
; fun (b : 'B) =>
; b
; in
; 
; let t = @tf Uint32 Int32 in
; let one = Uint32 1 in
; let two = Int32 2 in
; t one two
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_11" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$$fundef_9_env_44" = type {}
%Int32 = type { i32 }
%"$$fundef_7_env_45" = type {}
%Uint32 = type { i32 }
%"$$fundef_5_env_46" = type {}
%"$$fundef_3_env_47" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_12" = global %"$TyDescrTy_PrimTyp_11" zeroinitializer
@"$TyDescr_Int32_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Int32_Prim_12" to i8*) }
@"$TyDescr_Uint32_Prim_14" = global %"$TyDescrTy_PrimTyp_11" { i32 1, i32 0 }
@"$TyDescr_Uint32_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Uint32_Prim_14" to i8*) }
@"$TyDescr_Int64_Prim_16" = global %"$TyDescrTy_PrimTyp_11" { i32 0, i32 1 }
@"$TyDescr_Int64_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Int64_Prim_16" to i8*) }
@"$TyDescr_Uint64_Prim_18" = global %"$TyDescrTy_PrimTyp_11" { i32 1, i32 1 }
@"$TyDescr_Uint64_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Uint64_Prim_18" to i8*) }
@"$TyDescr_Int128_Prim_20" = global %"$TyDescrTy_PrimTyp_11" { i32 0, i32 2 }
@"$TyDescr_Int128_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Int128_Prim_20" to i8*) }
@"$TyDescr_Uint128_Prim_22" = global %"$TyDescrTy_PrimTyp_11" { i32 1, i32 2 }
@"$TyDescr_Uint128_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Uint128_Prim_22" to i8*) }
@"$TyDescr_Int256_Prim_24" = global %"$TyDescrTy_PrimTyp_11" { i32 0, i32 3 }
@"$TyDescr_Int256_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Int256_Prim_24" to i8*) }
@"$TyDescr_Uint256_Prim_26" = global %"$TyDescrTy_PrimTyp_11" { i32 1, i32 3 }
@"$TyDescr_Uint256_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Uint256_Prim_26" to i8*) }
@"$TyDescr_String_Prim_28" = global %"$TyDescrTy_PrimTyp_11" { i32 2, i32 0 }
@"$TyDescr_String_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_String_Prim_28" to i8*) }
@"$TyDescr_Bnum_Prim_30" = global %"$TyDescrTy_PrimTyp_11" { i32 3, i32 0 }
@"$TyDescr_Bnum_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Bnum_Prim_30" to i8*) }
@"$TyDescr_Message_Prim_32" = global %"$TyDescrTy_PrimTyp_11" { i32 4, i32 0 }
@"$TyDescr_Message_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Message_Prim_32" to i8*) }
@"$TyDescr_Event_Prim_34" = global %"$TyDescrTy_PrimTyp_11" { i32 5, i32 0 }
@"$TyDescr_Event_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Event_Prim_34" to i8*) }
@"$TyDescr_Exception_Prim_36" = global %"$TyDescrTy_PrimTyp_11" { i32 6, i32 0 }
@"$TyDescr_Exception_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Exception_Prim_36" to i8*) }
@"$TyDescr_Bystr_Prim_38" = global %"$TyDescrTy_PrimTyp_11" { i32 7, i32 0 }
@"$TyDescr_Bystr_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Bystr_Prim_38" to i8*) }

define internal %Int32 @"$fundef_9"(%"$$fundef_9_env_44"* %0, %Int32 %1) {
entry:
  %"$retval_10" = alloca %Int32
  %"$gasrem_78" = load i64, i64* @_gasrem
  %"$gascmp_79" = icmp ugt i64 1, %"$gasrem_78"
  br i1 %"$gascmp_79", label %"$out_of_gas_80", label %"$have_gas_81"

"$out_of_gas_80":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_81"

"$have_gas_81":                                   ; preds = %"$out_of_gas_80", %entry
  %"$consume_82" = sub i64 %"$gasrem_78", 1
  store i64 %"$consume_82", i64* @_gasrem
  store %Int32 %1, %Int32* %"$retval_10"
  %"$$retval_10_83" = load %Int32, %Int32* %"$retval_10"
  ret %Int32 %"$$retval_10_83"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_7"(%"$$fundef_7_env_45"* %0, %Uint32 %1) {
entry:
  %"$retval_8" = alloca { %Int32 (i8*, %Int32)*, i8* }
  %"$gasrem_69" = load i64, i64* @_gasrem
  %"$gascmp_70" = icmp ugt i64 1, %"$gasrem_69"
  br i1 %"$gascmp_70", label %"$out_of_gas_71", label %"$have_gas_72"

"$out_of_gas_71":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_72"

"$have_gas_72":                                   ; preds = %"$out_of_gas_71", %entry
  %"$consume_73" = sub i64 %"$gasrem_69", 1
  store i64 %"$consume_73", i64* @_gasrem
  store { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_9_env_44"*, %Int32)* @"$fundef_9" to %Int32 (i8*, %Int32)*), i8* null }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_8"
  %"$$retval_8_77" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_8"
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_8_77"
}

define internal { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_5"(%"$$fundef_5_env_46"* %0) {
entry:
  %"$retval_6" = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  %"$gasrem_60" = load i64, i64* @_gasrem
  %"$gascmp_61" = icmp ugt i64 1, %"$gasrem_60"
  br i1 %"$gascmp_61", label %"$out_of_gas_62", label %"$have_gas_63"

"$out_of_gas_62":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_63"

"$have_gas_63":                                   ; preds = %"$out_of_gas_62", %entry
  %"$consume_64" = sub i64 %"$gasrem_60", 1
  store i64 %"$consume_64", i64* @_gasrem
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_7_env_45"*, %Uint32)* @"$fundef_7" to { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_6"
  %"$$retval_6_68" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_6"
  ret { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_6_68"
}

define internal { i8*, i8* }* @"$fundef_3"(%"$$fundef_3_env_47"* %0) {
entry:
  %"$retval_4" = alloca { i8*, i8* }*
  %"$gasrem_48" = load i64, i64* @_gasrem
  %"$gascmp_49" = icmp ugt i64 1, %"$gasrem_48"
  br i1 %"$gascmp_49", label %"$out_of_gas_50", label %"$have_gas_51"

"$out_of_gas_50":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_51"

"$have_gas_51":                                   ; preds = %"$out_of_gas_50", %entry
  %"$consume_52" = sub i64 %"$gasrem_48", 1
  store i64 %"$consume_52", i64* @_gasrem
  %"$dyndisp_table_56_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_56_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_56_salloc_load", i64 32)
  %"$dyndisp_table_56_salloc" = bitcast i8* %"$dyndisp_table_56_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_56" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_56_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_57" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_56", i32 1
  %"$dyndisp_pcast_58" = bitcast { i8*, i8* }* %"$dyndisp_gep_57" to { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_5_env_46"*)* @"$fundef_5" to { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_58"
  store { i8*, i8* }* %"$dyndisp_table_56", { i8*, i8* }** %"$retval_4"
  %"$$retval_4_59" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_4"
  ret { i8*, i8* }* %"$$retval_4_59"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @"$scilla_expr_84"(i8* %0) {
entry:
  %"$expr_2" = alloca %Int32
  %"$gasrem_85" = load i64, i64* @_gasrem
  %"$gascmp_86" = icmp ugt i64 1, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %entry
  %"$consume_89" = sub i64 %"$gasrem_85", 1
  store i64 %"$consume_89", i64* @_gasrem
  %tf = alloca { i8*, i8* }*
  %"$gasrem_90" = load i64, i64* @_gasrem
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$have_gas_88"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$have_gas_88"
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem
  %"$dyndisp_table_98_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_98_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_98_salloc_load", i64 32)
  %"$dyndisp_table_98_salloc" = bitcast i8* %"$dyndisp_table_98_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_98" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_98_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_99" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_98", i32 0
  %"$dyndisp_pcast_100" = bitcast { i8*, i8* }* %"$dyndisp_gep_99" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_3_env_47"*)* @"$fundef_3" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_100"
  store { i8*, i8* }* %"$dyndisp_table_98", { i8*, i8* }** %tf
  %"$gasrem_101" = load i64, i64* @_gasrem
  %"$gascmp_102" = icmp ugt i64 1, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %"$have_gas_93"
  %"$consume_105" = sub i64 %"$gasrem_101", 1
  store i64 %"$consume_105", i64* @_gasrem
  %t = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  %"$gasrem_106" = load i64, i64* @_gasrem
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_104"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_104"
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem
  %"$tf_111" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_112" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_111", i32 0
  %"$tf_113" = bitcast { i8*, i8* }* %"$tf_112" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_114" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_113"
  %"$tf_fptr_115" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_114", 0
  %"$tf_envptr_116" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_114", 1
  %"$tf_call_117" = call { i8*, i8* }* %"$tf_fptr_115"(i8* %"$tf_envptr_116")
  %"$tf_118" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_117", i32 1
  %"$tf_119" = bitcast { i8*, i8* }* %"$tf_118" to { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_120" = load { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_119"
  %"$tf_fptr_121" = extractvalue { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_120", 0
  %"$tf_envptr_122" = extractvalue { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_120", 1
  %"$tf_call_123" = call { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_121"(i8* %"$tf_envptr_122")
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_123", { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %t
  %"$gasrem_124" = load i64, i64* @_gasrem
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$have_gas_109"
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem
  %one = alloca %Uint32
  %"$gasrem_129" = load i64, i64* @_gasrem
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem
  store %Uint32 { i32 1 }, %Uint32* %one
  %"$gasrem_134" = load i64, i64* @_gasrem
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem
  %two = alloca %Int32
  %"$gasrem_139" = load i64, i64* @_gasrem
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_137"
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem
  store %Int32 { i32 2 }, %Int32* %two
  %"$gasrem_144" = load i64, i64* @_gasrem
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_142"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_142"
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem
  %"$t_0" = alloca { %Int32 (i8*, %Int32)*, i8* }
  %"$t_149" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %t
  %"$t_fptr_150" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$t_149", 0
  %"$t_envptr_151" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$t_149", 1
  %"$one_152" = load %Uint32, %Uint32* %one
  %"$t_call_153" = call { %Int32 (i8*, %Int32)*, i8* } %"$t_fptr_150"(i8* %"$t_envptr_151", %Uint32 %"$one_152")
  store { %Int32 (i8*, %Int32)*, i8* } %"$t_call_153", { %Int32 (i8*, %Int32)*, i8* }* %"$t_0"
  %"$t_1" = alloca %Int32
  %"$$t_0_154" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$t_0"
  %"$$t_0_fptr_155" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$t_0_154", 0
  %"$$t_0_envptr_156" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$t_0_154", 1
  %"$two_157" = load %Int32, %Int32* %two
  %"$$t_0_call_158" = call %Int32 %"$$t_0_fptr_155"(i8* %"$$t_0_envptr_156", %Int32 %"$two_157")
  store %Int32 %"$$t_0_call_158", %Int32* %"$t_1"
  %"$$t_1_159" = load %Int32, %Int32* %"$t_1"
  store %Int32 %"$$t_1_159", %Int32* %"$expr_2"
  %"$$expr_2_160" = load %Int32, %Int32* %"$expr_2"
  ret %Int32 %"$$expr_2_160"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_161" = call %Int32 @"$scilla_expr_84"(i8* null)
  %"$pval_162" = alloca %Int32
  %"$memvoidcast_163" = bitcast %Int32* %"$pval_162" to i8*
  store %Int32 %"$exprval_161", %Int32* %"$pval_162"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_13", i8* %"$memvoidcast_163")
  ret void
}
