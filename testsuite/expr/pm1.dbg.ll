; let x = Int32 42 in
; let y = Int32 41 in
; let f = fun (c : Bool) =>
; match c with
; | True => x
; | _ => y
; end
; in
; let t = True in
; f t
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_11" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_43" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_42"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_42" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_44"**, %"$TyDescrTy_ADTTyp_43"* }
%"$TyDescrTy_ADTTyp_Constr_44" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_187" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_188" = type { %ParamDescrString, i32, %"$ParamDescr_187"* }
%"$$fundef_9_env_61" = type { %Int32, %Int32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

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
@"$TyDescr_ReplicateContr_Prim_38" = global %"$TyDescrTy_PrimTyp_11" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_ReplicateContr_Prim_38" to i8*) }
@"$TyDescr_Bystr_Prim_40" = global %"$TyDescrTy_PrimTyp_11" { i32 7, i32 0 }
@"$TyDescr_Bystr_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Bystr_Prim_40" to i8*) }
@"$TyDescr_ADT_Bool_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Bool_ADTTyp_Specl_58" to i8*) }
@"$TyDescr_Bool_ADTTyp_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_43" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_60", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_42"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_42"*], [1 x %"$TyDescrTy_ADTTyp_Specl_42"*]* @"$TyDescr_Bool_ADTTyp_m_specls_59", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_50" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_51" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_51", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_50", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_53" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_54" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_54", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_53", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_56" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Bool_True_ADTTyp_Constr_52", %"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Bool_False_ADTTyp_Constr_55"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_57" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_57", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_44"*], [2 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Bool_ADTTyp_49" }
@"$TyDescr_Bool_ADTTyp_m_specls_59" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_42"*] [%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Bool_ADTTyp_Specl_58"]
@"$TyDescr_ADT_Bool_60" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_35", %_TyDescrTy_Typ* @"$TyDescr_Int64_17", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45", %_TyDescrTy_Typ* @"$TyDescr_Uint256_27", %_TyDescrTy_Typ* @"$TyDescr_Uint32_15", %_TyDescrTy_Typ* @"$TyDescr_Uint64_19", %_TyDescrTy_Typ* @"$TyDescr_Bnum_31", %_TyDescrTy_Typ* @"$TyDescr_Uint128_23", %_TyDescrTy_Typ* @"$TyDescr_Exception_37", %_TyDescrTy_Typ* @"$TyDescr_String_29", %_TyDescrTy_Typ* @"$TyDescr_Int256_25", %_TyDescrTy_Typ* @"$TyDescr_Int128_21", %_TyDescrTy_Typ* @"$TyDescr_Bystr_41", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_39", %_TyDescrTy_Typ* @"$TyDescr_Message_33", %_TyDescrTy_Typ* @"$TyDescr_Int32_13"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_187"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_188"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Int32 @"$fundef_9"(%"$$fundef_9_env_61"* %0, %TName_Bool* %1) !dbg !3 {
entry:
  %"$$fundef_9_env_x_62" = getelementptr inbounds %"$$fundef_9_env_61", %"$$fundef_9_env_61"* %0, i32 0, i32 0
  %"$x_envload_63" = load %Int32, %Int32* %"$$fundef_9_env_x_62", align 4
  %x = alloca %Int32, align 8
  store %Int32 %"$x_envload_63", %Int32* %x, align 4
  %"$$fundef_9_env_y_64" = getelementptr inbounds %"$$fundef_9_env_61", %"$$fundef_9_env_61"* %0, i32 0, i32 1
  %"$y_envload_65" = load %Int32, %Int32* %"$$fundef_9_env_y_64", align 4
  %y = alloca %Int32, align 8
  store %Int32 %"$y_envload_65", %Int32* %y, align 4
  %"$retval_10" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$retval_10", metadata !8, metadata !DIExpression()), !dbg !10
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 2, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %entry
  %"$consume_70" = sub i64 %"$gasrem_66", 2
  store i64 %"$consume_70", i64* @_gasrem, align 8
  %"$c_tag_78" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$c_tag_79" = load i8, i8* %"$c_tag_78", align 1
  switch i8 %"$c_tag_79", label %"$default_80" [
    i8 0, label %"$True_81"
  ], !dbg !10

"$True_81":                                       ; preds = %"$have_gas_69"
  %"$c_82" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 1, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %"$True_81"
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %"$True_81"
  %"$consume_87" = sub i64 %"$gasrem_83", 1
  store i64 %"$consume_87", i64* @_gasrem, align 8
  %"$x_88" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_88", %Int32* %"$retval_10", align 4, !dbg !11
  br label %"$matchsucc_71"

"$default_80":                                    ; preds = %"$have_gas_69"
  br label %"$joinp_6"

"$joinp_6":                                       ; preds = %"$default_80"
  %"$gasrem_72" = load i64, i64* @_gasrem, align 8
  %"$gascmp_73" = icmp ugt i64 1, %"$gasrem_72"
  br i1 %"$gascmp_73", label %"$out_of_gas_74", label %"$have_gas_75"

"$out_of_gas_74":                                 ; preds = %"$joinp_6"
  call void @_out_of_gas()
  br label %"$have_gas_75"

"$have_gas_75":                                   ; preds = %"$out_of_gas_74", %"$joinp_6"
  %"$consume_76" = sub i64 %"$gasrem_72", 1
  store i64 %"$consume_76", i64* @_gasrem, align 8
  %"$y_77" = load %Int32, %Int32* %y, align 4
  store %Int32 %"$y_77", %Int32* %"$retval_10", align 4, !dbg !14
  br label %"$matchsucc_71"

"$matchsucc_71":                                  ; preds = %"$have_gas_86", %"$have_gas_75"
  %"$$retval_10_89" = load %Int32, %Int32* %"$retval_10", align 4
  ret %Int32 %"$$retval_10_89"
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare void @_out_of_gas()

define void @_init_libs() !dbg !16 {
entry:
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 5, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %entry
  %"$consume_94" = sub i64 %"$gasrem_90", 5
  store i64 %"$consume_94", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !18
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 8, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_93"
  %"$consume_99" = sub i64 %"$gasrem_95", 8
  store i64 %"$consume_99", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !18
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 196, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_98"
  %"$consume_104" = sub i64 %"$gasrem_100", 196
  store i64 %"$consume_104", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !18
  %"$gasrem_105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_106" = icmp ugt i64 20, %"$gasrem_105"
  br i1 %"$gascmp_106", label %"$out_of_gas_107", label %"$have_gas_108"

"$out_of_gas_107":                                ; preds = %"$have_gas_103"
  call void @_out_of_gas()
  br label %"$have_gas_108"

"$have_gas_108":                                  ; preds = %"$out_of_gas_107", %"$have_gas_103"
  %"$consume_109" = sub i64 %"$gasrem_105", 20
  store i64 %"$consume_109", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !18
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 12, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_108"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_108"
  %"$consume_114" = sub i64 %"$gasrem_110", 12
  store i64 %"$consume_114", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !18
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 2, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %"$have_gas_113"
  %"$consume_119" = sub i64 %"$gasrem_115", 2
  store i64 %"$consume_119", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !18
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) !dbg !19 {
entry:
  %"$expr_8" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$expr_8", metadata !20, metadata !DIExpression()), !dbg !21
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %entry
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem, align 8
  %x = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %x, metadata !22, metadata !DIExpression()), !dbg !23
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_123"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %x, align 4, !dbg !21
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  %y = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %y, metadata !24, metadata !DIExpression()), !dbg !25
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  store %Int32 { i32 41 }, %Int32* %y, align 4, !dbg !26
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_138"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %f = alloca { %Int32 (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$$fundef_9_envp_150_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_9_envp_150_salloc" = call i8* @_salloc(i8* %"$$fundef_9_envp_150_load", i64 8)
  %"$$fundef_9_envp_150" = bitcast i8* %"$$fundef_9_envp_150_salloc" to %"$$fundef_9_env_61"*
  %"$$fundef_9_env_voidp_152" = bitcast %"$$fundef_9_env_61"* %"$$fundef_9_envp_150" to i8*
  %"$$fundef_9_cloval_153" = insertvalue { %Int32 (i8*, %TName_Bool*)*, i8* } { %Int32 (i8*, %TName_Bool*)* bitcast (%Int32 (%"$$fundef_9_env_61"*, %TName_Bool*)* @"$fundef_9" to %Int32 (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_9_env_voidp_152", 1
  %"$$fundef_9_env_x_154" = getelementptr inbounds %"$$fundef_9_env_61", %"$$fundef_9_env_61"* %"$$fundef_9_envp_150", i32 0, i32 0
  %"$x_155" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_155", %Int32* %"$$fundef_9_env_x_154", align 4
  %"$$fundef_9_env_y_156" = getelementptr inbounds %"$$fundef_9_env_61", %"$$fundef_9_env_61"* %"$$fundef_9_envp_150", i32 0, i32 1
  %"$y_157" = load %Int32, %Int32* %y, align 4
  store %Int32 %"$y_157", %Int32* %"$$fundef_9_env_y_156", align 4
  store { %Int32 (i8*, %TName_Bool*)*, i8* } %"$$fundef_9_cloval_153", { %Int32 (i8*, %TName_Bool*)*, i8* }* %f, align 8, !dbg !27
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 1, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %"$have_gas_148"
  %"$consume_162" = sub i64 %"$gasrem_158", 1
  store i64 %"$consume_162", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %t, metadata !28, metadata !DIExpression()), !dbg !31
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %"$have_gas_161"
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %"$have_gas_161"
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %"$adtval_168_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_168_salloc" = call i8* @_salloc(i8* %"$adtval_168_load", i64 1)
  %"$adtval_168" = bitcast i8* %"$adtval_168_salloc" to %CName_True*
  %"$adtgep_169" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_168", i32 0, i32 0
  store i8 0, i8* %"$adtgep_169", align 1
  %"$adtptr_170" = bitcast %CName_True* %"$adtval_168" to %TName_Bool*
  store %TName_Bool* %"$adtptr_170", %TName_Bool** %t, align 8, !dbg !32
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_166"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_166"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %"$f_7" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$f_7", metadata !33, metadata !DIExpression()), !dbg !34
  %"$f_176" = load { %Int32 (i8*, %TName_Bool*)*, i8* }, { %Int32 (i8*, %TName_Bool*)*, i8* }* %f, align 8
  %"$f_fptr_177" = extractvalue { %Int32 (i8*, %TName_Bool*)*, i8* } %"$f_176", 0
  %"$f_envptr_178" = extractvalue { %Int32 (i8*, %TName_Bool*)*, i8* } %"$f_176", 1
  %"$t_179" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$f_call_180" = call %Int32 %"$f_fptr_177"(i8* %"$f_envptr_178", %TName_Bool* %"$t_179"), !dbg !34
  store %Int32 %"$f_call_180", %Int32* %"$f_7", align 4, !dbg !34
  %"$$f_7_181" = load %Int32, %Int32* %"$f_7", align 4
  store %Int32 %"$$f_7_181", %Int32* %"$expr_8", align 4, !dbg !34
  %"$$expr_8_182" = load %Int32, %Int32* %"$expr_8", align 4
  ret %Int32 %"$$expr_8_182"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_183" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_184" = alloca %Int32, align 8
  %"$memvoidcast_185" = bitcast %Int32* %"$pval_184" to i8*
  store %Int32 %"$exprval_183", %Int32* %"$pval_184", align 4
  %"$execptr_load_186" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_186", %_TyDescrTy_Typ* @"$TyDescr_Int32_13", i8* %"$memvoidcast_185")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "pm1.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_9", linkageName: "$fundef_9", scope: !2, file: !2, line: 4, type: !4, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "$retval_10", scope: !3, file: !2, line: 4, type: !9)
!9 = !DIBasicType(name: "Int32", size: 4)
!10 = !DILocation(line: 4, column: 3, scope: !3)
!11 = !DILocation(line: 5, column: 13, scope: !12)
!12 = distinct !DILexicalBlock(scope: !13, file: !2, line: 5, column: 5)
!13 = distinct !DILexicalBlock(scope: !3, file: !2, line: 4, column: 3)
!14 = !DILocation(line: 6, column: 10, scope: !15)
!15 = distinct !DILexicalBlock(scope: !13, file: !2, line: 4, column: 3)
!16 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !17, file: !17, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!17 = !DIFile(filename: ".", directory: ".")
!18 = !DILocation(line: 0, scope: !16)
!19 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!20 = !DILocalVariable(name: "$expr_8", scope: !19, file: !2, line: 1, type: !9)
!21 = !DILocation(line: 1, column: 9, scope: !19)
!22 = !DILocalVariable(name: "x", scope: !19, file: !2, line: 1, type: !9)
!23 = !DILocation(line: 1, column: 5, scope: !19)
!24 = !DILocalVariable(name: "y", scope: !19, file: !2, line: 2, type: !9)
!25 = !DILocation(line: 2, column: 5, scope: !19)
!26 = !DILocation(line: 2, column: 9, scope: !19)
!27 = !DILocation(line: 4, column: 3, scope: !19)
!28 = !DILocalVariable(name: "t", scope: !19, file: !2, line: 9, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !30, size: 8, align: 8, dwarfAddressSpace: 0)
!30 = !DIBasicType(name: "Bool", size: 8)
!31 = !DILocation(line: 9, column: 5, scope: !19)
!32 = !DILocation(line: 9, column: 9, scope: !19)
!33 = !DILocalVariable(name: "$f_7", scope: !19, file: !2, line: 10, type: !9)
!34 = !DILocation(line: 10, column: 1, scope: !19)
