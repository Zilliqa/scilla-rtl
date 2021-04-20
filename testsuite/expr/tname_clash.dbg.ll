; let tf =
; tfun 'A =>
; tfun 'B =>
; fun (a : 'A) =>
; fun (b : 'B) =>
; Pair {'A 'B} a b
; 
; in
; let tf2 =
; tfun 'B =>
; @tf 'B
; in
; let f = @tf2 Int32 Int64 in
; let one = Int32 1 in
; let two = Int64 2 in
; f one two
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_13" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_43" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_42"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_42" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_44"**, %"$TyDescrTy_ADTTyp_43"* }
%"$TyDescrTy_ADTTyp_Constr_44" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$$fundef_11_env_56" = type { { i8*, i8* }* }
%TName_Pair_Int32_Int64 = type { i8, %CName_Pair_Int32_Int64* }
%CName_Pair_Int32_Int64 = type <{ i8, %Int32, %Int64 }>
%Int32 = type { i32 }
%"$$fundef_9_env_57" = type { %Int32 }
%Int64 = type { i64 }
%"$$fundef_7_env_58" = type {}
%"$$fundef_5_env_59" = type {}
%"$$fundef_3_env_60" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_14" = global %"$TyDescrTy_PrimTyp_13" zeroinitializer
@"$TyDescr_Int32_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int32_Prim_14" to i8*) }
@"$TyDescr_Uint32_Prim_16" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 0 }
@"$TyDescr_Uint32_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint32_Prim_16" to i8*) }
@"$TyDescr_Int64_Prim_18" = global %"$TyDescrTy_PrimTyp_13" { i32 0, i32 1 }
@"$TyDescr_Int64_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int64_Prim_18" to i8*) }
@"$TyDescr_Uint64_Prim_20" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 1 }
@"$TyDescr_Uint64_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint64_Prim_20" to i8*) }
@"$TyDescr_Int128_Prim_22" = global %"$TyDescrTy_PrimTyp_13" { i32 0, i32 2 }
@"$TyDescr_Int128_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int128_Prim_22" to i8*) }
@"$TyDescr_Uint128_Prim_24" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 2 }
@"$TyDescr_Uint128_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint128_Prim_24" to i8*) }
@"$TyDescr_Int256_Prim_26" = global %"$TyDescrTy_PrimTyp_13" { i32 0, i32 3 }
@"$TyDescr_Int256_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int256_Prim_26" to i8*) }
@"$TyDescr_Uint256_Prim_28" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 3 }
@"$TyDescr_Uint256_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint256_Prim_28" to i8*) }
@"$TyDescr_String_Prim_30" = global %"$TyDescrTy_PrimTyp_13" { i32 2, i32 0 }
@"$TyDescr_String_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_String_Prim_30" to i8*) }
@"$TyDescr_Bnum_Prim_32" = global %"$TyDescrTy_PrimTyp_13" { i32 3, i32 0 }
@"$TyDescr_Bnum_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Bnum_Prim_32" to i8*) }
@"$TyDescr_Message_Prim_34" = global %"$TyDescrTy_PrimTyp_13" { i32 4, i32 0 }
@"$TyDescr_Message_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Message_Prim_34" to i8*) }
@"$TyDescr_Event_Prim_36" = global %"$TyDescrTy_PrimTyp_13" { i32 5, i32 0 }
@"$TyDescr_Event_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Event_Prim_36" to i8*) }
@"$TyDescr_Exception_Prim_38" = global %"$TyDescrTy_PrimTyp_13" { i32 6, i32 0 }
@"$TyDescr_Exception_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Exception_Prim_38" to i8*) }
@"$TyDescr_Bystr_Prim_40" = global %"$TyDescrTy_PrimTyp_13" { i32 7, i32 0 }
@"$TyDescr_Bystr_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Bystr_Prim_40" to i8*) }
@"$TyDescr_ADT_Pair_Int32_Int64_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_53" to i8*) }
@"$TyDescr_Pair_ADTTyp_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_43" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_55", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_42"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_42"*], [1 x %"$TyDescrTy_ADTTyp_Specl_42"*]* @"$TyDescr_Pair_ADTTyp_m_specls_54", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int32_Int64_Constr_m_args_48" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_15", %_TyDescrTy_Typ* @"$TyDescr_Int64_19"]
@"$TyDescr_ADT_Pair_49" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int32_Int64_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_49", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int32_Int64_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_constrs_51" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Pair_Pair_Int32_Int64_ADTTyp_Constr_50"]
@"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_TArgs_52" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_15", %_TyDescrTy_Typ* @"$TyDescr_Int64_19"]
@"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_TArgs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_44"*], [1 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_constrs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Pair_ADTTyp_47" }
@"$TyDescr_Pair_ADTTyp_m_specls_54" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_42"*] [%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_53"]
@"$TyDescr_ADT_Pair_55" = unnamed_addr constant [4 x i8] c"Pair"

define internal { i8*, i8* }* @"$fundef_11"(%"$$fundef_11_env_56"* %0) !dbg !4 {
entry:
  %"$$fundef_11_env_tf_107" = getelementptr inbounds %"$$fundef_11_env_56", %"$$fundef_11_env_56"* %0, i32 0, i32 0
  %"$tf_envload_108" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_11_env_tf_107", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_108", { i8*, i8* }** %tf, align 8
  %"$retval_12" = alloca { i8*, i8* }*, align 8
  %"$gasrem_109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_110" = icmp ugt i64 1, %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %entry
  %"$consume_113" = sub i64 %"$gasrem_109", 1
  store i64 %"$consume_113", i64* @_gasrem, align 8
  %"$tf_114" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_115" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_114", i32 0
  %"$tf_116" = bitcast { i8*, i8* }* %"$tf_115" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_117" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_116", align 8
  %"$tf_fptr_118" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_117", 0
  %"$tf_envptr_119" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_117", 1
  %"$tf_call_120" = call { i8*, i8* }* %"$tf_fptr_118"(i8* %"$tf_envptr_119"), !dbg !8
  store { i8*, i8* }* %"$tf_call_120", { i8*, i8* }** %"$retval_12", align 8, !dbg !9
  %"$$retval_12_121" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_12", align 8
  ret { i8*, i8* }* %"$$retval_12_121"
}

define internal %TName_Pair_Int32_Int64* @"$fundef_9"(%"$$fundef_9_env_57"* %0, %Int64 %1) !dbg !10 {
entry:
  %"$$fundef_9_env_a_93" = getelementptr inbounds %"$$fundef_9_env_57", %"$$fundef_9_env_57"* %0, i32 0, i32 0
  %"$a_envload_94" = load %Int32, %Int32* %"$$fundef_9_env_a_93", align 4
  %a = alloca %Int32, align 8
  store %Int32 %"$a_envload_94", %Int32* %a, align 4
  %"$retval_10" = alloca %TName_Pair_Int32_Int64*, align 8
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %entry
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem, align 8
  %"$a_100" = load %Int32, %Int32* %a, align 4
  %"$adtval_101_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_101_salloc" = call i8* @_salloc(i8* %"$adtval_101_load", i64 13)
  %"$adtval_101" = bitcast i8* %"$adtval_101_salloc" to %CName_Pair_Int32_Int64*
  %"$adtgep_102" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_101", i32 0, i32 0
  store i8 0, i8* %"$adtgep_102", align 1
  %"$adtgep_103" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_101", i32 0, i32 1
  store %Int32 %"$a_100", %Int32* %"$adtgep_103", align 4
  %"$adtgep_104" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_101", i32 0, i32 2
  store %Int64 %1, %Int64* %"$adtgep_104", align 8
  %"$adtptr_105" = bitcast %CName_Pair_Int32_Int64* %"$adtval_101" to %TName_Pair_Int32_Int64*
  store %TName_Pair_Int32_Int64* %"$adtptr_105", %TName_Pair_Int32_Int64** %"$retval_10", align 8, !dbg !11
  %"$$retval_10_106" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$retval_10", align 8
  ret %TName_Pair_Int32_Int64* %"$$retval_10_106"
}

define internal { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } @"$fundef_7"(%"$$fundef_7_env_58"* %0, %Int32 %1) !dbg !12 {
entry:
  %"$retval_8" = alloca { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_82" = load i64, i64* @_gasrem, align 8
  %"$gascmp_83" = icmp ugt i64 1, %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %entry
  %"$consume_86" = sub i64 %"$gasrem_82", 1
  store i64 %"$consume_86", i64* @_gasrem, align 8
  %"$$fundef_9_envp_87_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_9_envp_87_salloc" = call i8* @_salloc(i8* %"$$fundef_9_envp_87_load", i64 4)
  %"$$fundef_9_envp_87" = bitcast i8* %"$$fundef_9_envp_87_salloc" to %"$$fundef_9_env_57"*
  %"$$fundef_9_env_voidp_89" = bitcast %"$$fundef_9_env_57"* %"$$fundef_9_envp_87" to i8*
  %"$$fundef_9_cloval_90" = insertvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } { %TName_Pair_Int32_Int64* (i8*, %Int64)* bitcast (%TName_Pair_Int32_Int64* (%"$$fundef_9_env_57"*, %Int64)* @"$fundef_9" to %TName_Pair_Int32_Int64* (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_9_env_voidp_89", 1
  %"$$fundef_9_env_a_91" = getelementptr inbounds %"$$fundef_9_env_57", %"$$fundef_9_env_57"* %"$$fundef_9_envp_87", i32 0, i32 0
  store %Int32 %1, %Int32* %"$$fundef_9_env_a_91", align 4
  store { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$fundef_9_cloval_90", { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$retval_8", align 8, !dbg !13
  %"$$retval_8_92" = load { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$retval_8", align 8
  ret { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$retval_8_92"
}

define internal { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } @"$fundef_5"(%"$$fundef_5_env_59"* %0) !dbg !14 {
entry:
  %"$retval_6" = alloca { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_73" = load i64, i64* @_gasrem, align 8
  %"$gascmp_74" = icmp ugt i64 1, %"$gasrem_73"
  br i1 %"$gascmp_74", label %"$out_of_gas_75", label %"$have_gas_76"

"$out_of_gas_75":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_76"

"$have_gas_76":                                   ; preds = %"$out_of_gas_75", %entry
  %"$consume_77" = sub i64 %"$gasrem_73", 1
  store i64 %"$consume_77", i64* @_gasrem, align 8
  store { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)* bitcast ({ %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_7_env_58"*, %Int32)* @"$fundef_7" to { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*), i8* null }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %"$retval_6", align 8, !dbg !15
  %"$$retval_6_81" = load { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %"$retval_6", align 8
  ret { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$$retval_6_81"
}

define internal { i8*, i8* }* @"$fundef_3"(%"$$fundef_3_env_60"* %0) !dbg !16 {
entry:
  %"$retval_4" = alloca { i8*, i8* }*, align 8
  %"$gasrem_61" = load i64, i64* @_gasrem, align 8
  %"$gascmp_62" = icmp ugt i64 1, %"$gasrem_61"
  br i1 %"$gascmp_62", label %"$out_of_gas_63", label %"$have_gas_64"

"$out_of_gas_63":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_64"

"$have_gas_64":                                   ; preds = %"$out_of_gas_63", %entry
  %"$consume_65" = sub i64 %"$gasrem_61", 1
  store i64 %"$consume_65", i64* @_gasrem, align 8
  %"$dyndisp_table_69_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_69_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_69_salloc_load", i64 32)
  %"$dyndisp_table_69_salloc" = bitcast i8* %"$dyndisp_table_69_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_69" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_69_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_70" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_69", i32 1
  %"$dyndisp_pcast_71" = bitcast { i8*, i8* }* %"$dyndisp_gep_70" to { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (%"$$fundef_5_env_59"*)* @"$fundef_5" to { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_71", align 8
  store { i8*, i8* }* %"$dyndisp_table_69", { i8*, i8* }** %"$retval_4", align 8, !dbg !17
  %"$$retval_4_72" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_4", align 8
  ret { i8*, i8* }* %"$$retval_4_72"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !18 {
entry:
  ret void
}

define internal %TName_Pair_Int32_Int64* @_scilla_expr_fun(i8* %0) !dbg !20 {
entry:
  %"$expr_2" = alloca %TName_Pair_Int32_Int64*, align 8
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %entry
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_125"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_125"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem, align 8
  %"$dyndisp_table_135_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_135_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_135_salloc_load", i64 32)
  %"$dyndisp_table_135_salloc" = bitcast i8* %"$dyndisp_table_135_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_135" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_135_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_136" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_135", i32 0
  %"$dyndisp_pcast_137" = bitcast { i8*, i8* }* %"$dyndisp_gep_136" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_3_env_60"*)* @"$fundef_3" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_137", align 8
  store { i8*, i8* }* %"$dyndisp_table_135", { i8*, i8* }** %tf, align 8, !dbg !21
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_130"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_130"
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem, align 8
  %tf2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$have_gas_141"
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %"$$fundef_11_envp_148_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_11_envp_148_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_148_load", i64 8)
  %"$$fundef_11_envp_148" = bitcast i8* %"$$fundef_11_envp_148_salloc" to %"$$fundef_11_env_56"*
  %"$$fundef_11_env_voidp_150" = bitcast %"$$fundef_11_env_56"* %"$$fundef_11_envp_148" to i8*
  %"$$fundef_11_cloval_151" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_11_env_56"*)* @"$fundef_11" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_11_env_voidp_150", 1
  %"$$fundef_11_env_tf_152" = getelementptr inbounds %"$$fundef_11_env_56", %"$$fundef_11_env_56"* %"$$fundef_11_envp_148", i32 0, i32 0
  %"$tf_153" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_153", { i8*, i8* }** %"$$fundef_11_env_tf_152", align 8
  %"$dyndisp_table_154_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_154_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_154_salloc_load", i64 32)
  %"$dyndisp_table_154_salloc" = bitcast i8* %"$dyndisp_table_154_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_154" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_154_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_155" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_154", i32 0
  %"$dyndisp_pcast_156" = bitcast { i8*, i8* }* %"$dyndisp_gep_155" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_11_cloval_151", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_156", align 8
  store { i8*, i8* }* %"$dyndisp_table_154", { i8*, i8* }** %tf2, align 8, !dbg !22
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 1, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_146"
  %"$consume_161" = sub i64 %"$gasrem_157", 1
  store i64 %"$consume_161", i64* @_gasrem, align 8
  %f = alloca { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_160"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_160"
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %"$tf2_167" = load { i8*, i8* }*, { i8*, i8* }** %tf2, align 8
  %"$tf2_168" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf2_167", i32 0
  %"$tf2_169" = bitcast { i8*, i8* }* %"$tf2_168" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf2_170" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf2_169", align 8
  %"$tf2_fptr_171" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf2_170", 0
  %"$tf2_envptr_172" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf2_170", 1
  %"$tf2_call_173" = call { i8*, i8* }* %"$tf2_fptr_171"(i8* %"$tf2_envptr_172"), !dbg !23
  %"$tf2_174" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf2_call_173", i32 1
  %"$tf2_175" = bitcast { i8*, i8* }* %"$tf2_174" to { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$tf2_176" = load { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$tf2_175", align 8
  %"$tf2_fptr_177" = extractvalue { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$tf2_176", 0
  %"$tf2_envptr_178" = extractvalue { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$tf2_176", 1
  %"$tf2_call_179" = call { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$tf2_fptr_177"(i8* %"$tf2_envptr_178"), !dbg !23
  store { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$tf2_call_179", { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %f, align 8, !dbg !24
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_165"
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %one = alloca %Int32, align 8
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_183"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_183"
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %one, align 4, !dbg !25
  %"$gasrem_190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_191" = icmp ugt i64 1, %"$gasrem_190"
  br i1 %"$gascmp_191", label %"$out_of_gas_192", label %"$have_gas_193"

"$out_of_gas_192":                                ; preds = %"$have_gas_188"
  call void @_out_of_gas()
  br label %"$have_gas_193"

"$have_gas_193":                                  ; preds = %"$out_of_gas_192", %"$have_gas_188"
  %"$consume_194" = sub i64 %"$gasrem_190", 1
  store i64 %"$consume_194", i64* @_gasrem, align 8
  %two = alloca %Int64, align 8
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_193"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_193"
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  store %Int64 { i64 2 }, %Int64* %two, align 8, !dbg !26
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 1, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %"$have_gas_198"
  %"$consume_204" = sub i64 %"$gasrem_200", 1
  store i64 %"$consume_204", i64* @_gasrem, align 8
  %"$f_0" = alloca { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$f_205" = load { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %f, align 8
  %"$f_fptr_206" = extractvalue { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$f_205", 0
  %"$f_envptr_207" = extractvalue { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$f_205", 1
  %"$one_208" = load %Int32, %Int32* %one, align 4
  %"$f_call_209" = call { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_206"(i8* %"$f_envptr_207", %Int32 %"$one_208"), !dbg !27
  store { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$f_call_209", { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$f_0", align 8, !dbg !27
  %"$f_1" = alloca %TName_Pair_Int32_Int64*, align 8
  %"$$f_0_210" = load { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$f_0", align 8
  %"$$f_0_fptr_211" = extractvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$f_0_210", 0
  %"$$f_0_envptr_212" = extractvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$f_0_210", 1
  %"$two_213" = load %Int64, %Int64* %two, align 8
  %"$$f_0_call_214" = call %TName_Pair_Int32_Int64* %"$$f_0_fptr_211"(i8* %"$$f_0_envptr_212", %Int64 %"$two_213"), !dbg !27
  store %TName_Pair_Int32_Int64* %"$$f_0_call_214", %TName_Pair_Int32_Int64** %"$f_1", align 8, !dbg !27
  %"$$f_1_215" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$f_1", align 8
  store %TName_Pair_Int32_Int64* %"$$f_1_215", %TName_Pair_Int32_Int64** %"$expr_2", align 8, !dbg !27
  %"$$expr_2_216" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$expr_2", align 8
  ret %TName_Pair_Int32_Int64* %"$$expr_2_216"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_217" = call %TName_Pair_Int32_Int64* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_218" = bitcast %TName_Pair_Int32_Int64* %"$exprval_217" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int64_45", i8* %"$memvoidcast_218")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "tname_clash.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_11", linkageName: "$fundef_11", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 11, column: 6, scope: !4)
!9 = !DILocation(line: 11, column: 5, scope: !4)
!10 = distinct !DISubprogram(name: "$fundef_9", linkageName: "$fundef_9", scope: !2, file: !2, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 6, column: 5, scope: !10)
!12 = distinct !DISubprogram(name: "$fundef_7", linkageName: "$fundef_7", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!13 = !DILocation(line: 6, column: 5, scope: !12)
!14 = distinct !DISubprogram(name: "$fundef_5", linkageName: "$fundef_5", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 5, column: 3, scope: !14)
!16 = distinct !DISubprogram(name: "$fundef_3", linkageName: "$fundef_3", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!17 = !DILocation(line: 3, column: 3, scope: !16)
!18 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !19, file: !19, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!19 = !DIFile(filename: ".", directory: ".")
!20 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!21 = !DILocation(line: 2, column: 3, scope: !20)
!22 = !DILocation(line: 10, column: 3, scope: !20)
!23 = !DILocation(line: 13, column: 10, scope: !20)
!24 = !DILocation(line: 13, column: 9, scope: !20)
!25 = !DILocation(line: 14, column: 11, scope: !20)
!26 = !DILocation(line: 15, column: 11, scope: !20)
!27 = !DILocation(line: 16, column: 1, scope: !20)
