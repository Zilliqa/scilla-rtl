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
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_11" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$ParamDescr_166" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_167" = type { %ParamDescrString, i32, %"$ParamDescr_166"* }
%"$$fundef_9_env_46" = type {}
%Int32 = type { i32 }
%"$$fundef_7_env_47" = type {}
%Uint32 = type { i32 }
%"$$fundef_5_env_48" = type {}
%"$$fundef_3_env_49" = type {}

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
@_tydescr_table = constant [14 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_35", %_TyDescrTy_Typ* @"$TyDescr_Int64_17", %_TyDescrTy_Typ* @"$TyDescr_Uint256_27", %_TyDescrTy_Typ* @"$TyDescr_Uint32_15", %_TyDescrTy_Typ* @"$TyDescr_Uint64_19", %_TyDescrTy_Typ* @"$TyDescr_Bnum_31", %_TyDescrTy_Typ* @"$TyDescr_Uint128_23", %_TyDescrTy_Typ* @"$TyDescr_Exception_37", %_TyDescrTy_Typ* @"$TyDescr_String_29", %_TyDescrTy_Typ* @"$TyDescr_Int256_25", %_TyDescrTy_Typ* @"$TyDescr_Int128_21", %_TyDescrTy_Typ* @"$TyDescr_Bystr_39", %_TyDescrTy_Typ* @"$TyDescr_Message_33", %_TyDescrTy_Typ* @"$TyDescr_Int32_13"]
@_tydescr_table_length = constant i32 14
@_contract_parameters = constant [0 x %"$ParamDescr_166"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_167"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Int32 @"$fundef_9"(%"$$fundef_9_env_46"* %0, %Int32 %1) !dbg !4 {
entry:
  %"$retval_10" = alloca %Int32, align 8
  %"$gasrem_80" = load i64, i64* @_gasrem, align 8
  %"$gascmp_81" = icmp ugt i64 1, %"$gasrem_80"
  br i1 %"$gascmp_81", label %"$out_of_gas_82", label %"$have_gas_83"

"$out_of_gas_82":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_83"

"$have_gas_83":                                   ; preds = %"$out_of_gas_82", %entry
  %"$consume_84" = sub i64 %"$gasrem_80", 1
  store i64 %"$consume_84", i64* @_gasrem, align 8
  store %Int32 %1, %Int32* %"$retval_10", align 4, !dbg !8
  %"$$retval_10_85" = load %Int32, %Int32* %"$retval_10", align 4
  ret %Int32 %"$$retval_10_85"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_7"(%"$$fundef_7_env_47"* %0, %Uint32 %1) !dbg !9 {
entry:
  %"$retval_8" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 1, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %entry
  %"$consume_75" = sub i64 %"$gasrem_71", 1
  store i64 %"$consume_75", i64* @_gasrem, align 8
  store { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_9_env_46"*, %Int32)* @"$fundef_9" to %Int32 (i8*, %Int32)*), i8* null }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_8", align 8, !dbg !10
  %"$$retval_8_79" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_8", align 8
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_8_79"
}

define internal { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_5"(%"$$fundef_5_env_48"* %0) !dbg !11 {
entry:
  %"$retval_6" = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_62" = load i64, i64* @_gasrem, align 8
  %"$gascmp_63" = icmp ugt i64 1, %"$gasrem_62"
  br i1 %"$gascmp_63", label %"$out_of_gas_64", label %"$have_gas_65"

"$out_of_gas_64":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_65"

"$have_gas_65":                                   ; preds = %"$out_of_gas_64", %entry
  %"$consume_66" = sub i64 %"$gasrem_62", 1
  store i64 %"$consume_66", i64* @_gasrem, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_7_env_47"*, %Uint32)* @"$fundef_7" to { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_6", align 8, !dbg !12
  %"$$retval_6_70" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_6", align 8
  ret { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_6_70"
}

define internal { i8*, i8* }* @"$fundef_3"(%"$$fundef_3_env_49"* %0) !dbg !13 {
entry:
  %"$retval_4" = alloca { i8*, i8* }*, align 8
  %"$gasrem_50" = load i64, i64* @_gasrem, align 8
  %"$gascmp_51" = icmp ugt i64 1, %"$gasrem_50"
  br i1 %"$gascmp_51", label %"$out_of_gas_52", label %"$have_gas_53"

"$out_of_gas_52":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_53"

"$have_gas_53":                                   ; preds = %"$out_of_gas_52", %entry
  %"$consume_54" = sub i64 %"$gasrem_50", 1
  store i64 %"$consume_54", i64* @_gasrem, align 8
  %"$dyndisp_table_58_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_58_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_58_salloc_load", i64 32)
  %"$dyndisp_table_58_salloc" = bitcast i8* %"$dyndisp_table_58_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_58" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_58_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_59" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_58", i32 1
  %"$dyndisp_pcast_60" = bitcast { i8*, i8* }* %"$dyndisp_gep_59" to { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_5_env_48"*)* @"$fundef_5" to { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_60", align 8
  store { i8*, i8* }* %"$dyndisp_table_58", { i8*, i8* }** %"$retval_4", align 8, !dbg !14
  %"$$retval_4_61" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_4", align 8
  ret { i8*, i8* }* %"$$retval_4_61"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !15 {
entry:
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) !dbg !17 {
entry:
  %"$expr_2" = alloca %Int32, align 8
  %"$gasrem_86" = load i64, i64* @_gasrem, align 8
  %"$gascmp_87" = icmp ugt i64 1, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %entry
  %"$consume_90" = sub i64 %"$gasrem_86", 1
  store i64 %"$consume_90", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %"$have_gas_89"
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %"$have_gas_89"
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem, align 8
  %"$dyndisp_table_99_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_99_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_99_salloc_load", i64 32)
  %"$dyndisp_table_99_salloc" = bitcast i8* %"$dyndisp_table_99_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_99" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_99_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_100" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_99", i32 0
  %"$dyndisp_pcast_101" = bitcast { i8*, i8* }* %"$dyndisp_gep_100" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_3_env_49"*)* @"$fundef_3" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_101", align 8
  store { i8*, i8* }* %"$dyndisp_table_99", { i8*, i8* }** %tf, align 8, !dbg !18
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 1, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$have_gas_94"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$have_gas_94"
  %"$consume_106" = sub i64 %"$gasrem_102", 1
  store i64 %"$consume_106", i64* @_gasrem, align 8
  %t = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_108" = icmp ugt i64 1, %"$gasrem_107"
  br i1 %"$gascmp_108", label %"$out_of_gas_109", label %"$have_gas_110"

"$out_of_gas_109":                                ; preds = %"$have_gas_105"
  call void @_out_of_gas()
  br label %"$have_gas_110"

"$have_gas_110":                                  ; preds = %"$out_of_gas_109", %"$have_gas_105"
  %"$consume_111" = sub i64 %"$gasrem_107", 1
  store i64 %"$consume_111", i64* @_gasrem, align 8
  %"$tf_112" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_113" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_112", i32 0
  %"$tf_114" = bitcast { i8*, i8* }* %"$tf_113" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_115" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_114", align 8
  %"$tf_fptr_116" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_115", 0
  %"$tf_envptr_117" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_115", 1
  %"$tf_call_118" = call { i8*, i8* }* %"$tf_fptr_116"(i8* %"$tf_envptr_117"), !dbg !19
  %"$tf_119" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_118", i32 1
  %"$tf_120" = bitcast { i8*, i8* }* %"$tf_119" to { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_121" = load { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_120", align 8
  %"$tf_fptr_122" = extractvalue { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_121", 0
  %"$tf_envptr_123" = extractvalue { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_121", 1
  %"$tf_call_124" = call { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_122"(i8* %"$tf_envptr_123"), !dbg !19
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_124", { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %t, align 8, !dbg !20
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_110"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_110"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !21
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %two = alloca %Int32, align 8
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_138"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* %two, align 4, !dbg !22
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$t_0" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$t_150" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %t, align 8
  %"$t_fptr_151" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$t_150", 0
  %"$t_envptr_152" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$t_150", 1
  %"$one_153" = load %Uint32, %Uint32* %one, align 4
  %"$t_call_154" = call { %Int32 (i8*, %Int32)*, i8* } %"$t_fptr_151"(i8* %"$t_envptr_152", %Uint32 %"$one_153"), !dbg !23
  store { %Int32 (i8*, %Int32)*, i8* } %"$t_call_154", { %Int32 (i8*, %Int32)*, i8* }* %"$t_0", align 8, !dbg !23
  %"$t_1" = alloca %Int32, align 8
  %"$$t_0_155" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$t_0", align 8
  %"$$t_0_fptr_156" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$t_0_155", 0
  %"$$t_0_envptr_157" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$t_0_155", 1
  %"$two_158" = load %Int32, %Int32* %two, align 4
  %"$$t_0_call_159" = call %Int32 %"$$t_0_fptr_156"(i8* %"$$t_0_envptr_157", %Int32 %"$two_158"), !dbg !23
  store %Int32 %"$$t_0_call_159", %Int32* %"$t_1", align 4, !dbg !23
  %"$$t_1_160" = load %Int32, %Int32* %"$t_1", align 4
  store %Int32 %"$$t_1_160", %Int32* %"$expr_2", align 4, !dbg !23
  %"$$expr_2_161" = load %Int32, %Int32* %"$expr_2", align 4
  ret %Int32 %"$$expr_2_161"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_162" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_163" = alloca %Int32, align 8
  %"$memvoidcast_164" = bitcast %Int32* %"$pval_163" to i8*
  store %Int32 %"$exprval_162", %Int32* %"$pval_163", align 4
  %"$execptr_load_165" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_165", %_TyDescrTy_Typ* @"$TyDescr_Int32_13", i8* %"$memvoidcast_164")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "typ1-inst.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_9", linkageName: "$fundef_9", scope: !2, file: !2, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 6, column: 5, scope: !4)
!9 = distinct !DISubprogram(name: "$fundef_7", linkageName: "$fundef_7", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 6, column: 5, scope: !9)
!11 = distinct !DISubprogram(name: "$fundef_5", linkageName: "$fundef_5", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 5, column: 3, scope: !11)
!13 = distinct !DISubprogram(name: "$fundef_3", linkageName: "$fundef_3", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = !DILocation(line: 3, column: 3, scope: !13)
!15 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !16, file: !16, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DIFile(filename: ".", directory: ".")
!17 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 2, column: 3, scope: !17)
!19 = !DILocation(line: 9, column: 10, scope: !17)
!20 = !DILocation(line: 9, column: 9, scope: !17)
!21 = !DILocation(line: 10, column: 11, scope: !17)
!22 = !DILocation(line: 11, column: 11, scope: !17)
!23 = !DILocation(line: 12, column: 1, scope: !17)
