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
%"$TyDescrTy_ADTTyp_41" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_40"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_40" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_42"**, %"$TyDescrTy_ADTTyp_41"* }
%"$TyDescrTy_ADTTyp_Constr_42" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_185" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_186" = type { %ParamDescrString, i32, %"$ParamDescr_185"* }
%"$$fundef_9_env_59" = type { %Int32, %Int32 }
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
@"$TyDescr_Bystr_Prim_38" = global %"$TyDescrTy_PrimTyp_11" { i32 7, i32 0 }
@"$TyDescr_Bystr_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Bystr_Prim_38" to i8*) }
@"$TyDescr_ADT_Bool_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_Bool_ADTTyp_Specl_56" to i8*) }
@"$TyDescr_Bool_ADTTyp_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_58", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_40"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_40"*], [1 x %"$TyDescrTy_ADTTyp_Specl_40"*]* @"$TyDescr_Bool_ADTTyp_m_specls_57", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_48" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_49" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_49", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_51" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_52" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_52", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_51", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_54" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_42"*] [%"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_Bool_True_ADTTyp_Constr_50", %"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_Bool_False_ADTTyp_Constr_53"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_55" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_40" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_55", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_42"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_42"*], [2 x %"$TyDescrTy_ADTTyp_Constr_42"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_54", i32 0, i32 0), %"$TyDescrTy_ADTTyp_41"* @"$TyDescr_Bool_ADTTyp_47" }
@"$TyDescr_Bool_ADTTyp_m_specls_57" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_40"*] [%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_Bool_ADTTyp_Specl_56"]
@"$TyDescr_ADT_Bool_58" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_35", %_TyDescrTy_Typ* @"$TyDescr_Int64_17", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_43", %_TyDescrTy_Typ* @"$TyDescr_Uint256_27", %_TyDescrTy_Typ* @"$TyDescr_Uint32_15", %_TyDescrTy_Typ* @"$TyDescr_Uint64_19", %_TyDescrTy_Typ* @"$TyDescr_Bnum_31", %_TyDescrTy_Typ* @"$TyDescr_Uint128_23", %_TyDescrTy_Typ* @"$TyDescr_Exception_37", %_TyDescrTy_Typ* @"$TyDescr_String_29", %_TyDescrTy_Typ* @"$TyDescr_Int256_25", %_TyDescrTy_Typ* @"$TyDescr_Int128_21", %_TyDescrTy_Typ* @"$TyDescr_Bystr_39", %_TyDescrTy_Typ* @"$TyDescr_Message_33", %_TyDescrTy_Typ* @"$TyDescr_Int32_13"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_185"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_186"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Int32 @"$fundef_9"(%"$$fundef_9_env_59"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$$fundef_9_env_x_60" = getelementptr inbounds %"$$fundef_9_env_59", %"$$fundef_9_env_59"* %0, i32 0, i32 0
  %"$x_envload_61" = load %Int32, %Int32* %"$$fundef_9_env_x_60", align 4
  %x = alloca %Int32, align 8
  store %Int32 %"$x_envload_61", %Int32* %x, align 4
  %"$$fundef_9_env_y_62" = getelementptr inbounds %"$$fundef_9_env_59", %"$$fundef_9_env_59"* %0, i32 0, i32 1
  %"$y_envload_63" = load %Int32, %Int32* %"$$fundef_9_env_y_62", align 4
  %y = alloca %Int32, align 8
  store %Int32 %"$y_envload_63", %Int32* %y, align 4
  %"$retval_10" = alloca %Int32, align 8
  %"$gasrem_64" = load i64, i64* @_gasrem, align 8
  %"$gascmp_65" = icmp ugt i64 2, %"$gasrem_64"
  br i1 %"$gascmp_65", label %"$out_of_gas_66", label %"$have_gas_67"

"$out_of_gas_66":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_67"

"$have_gas_67":                                   ; preds = %"$out_of_gas_66", %entry
  %"$consume_68" = sub i64 %"$gasrem_64", 2
  store i64 %"$consume_68", i64* @_gasrem, align 8
  %"$c_tag_76" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$c_tag_77" = load i8, i8* %"$c_tag_76", align 1
  switch i8 %"$c_tag_77", label %"$default_78" [
    i8 0, label %"$True_79"
  ], !dbg !8

"$True_79":                                       ; preds = %"$have_gas_67"
  %"$c_80" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 1, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %"$True_79"
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %"$True_79"
  %"$consume_85" = sub i64 %"$gasrem_81", 1
  store i64 %"$consume_85", i64* @_gasrem, align 8
  %"$x_86" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_86", %Int32* %"$retval_10", align 4, !dbg !9
  br label %"$matchsucc_69"

"$default_78":                                    ; preds = %"$have_gas_67"
  br label %"$joinp_6"

"$joinp_6":                                       ; preds = %"$default_78"
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 1, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %"$joinp_6"
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %"$joinp_6"
  %"$consume_74" = sub i64 %"$gasrem_70", 1
  store i64 %"$consume_74", i64* @_gasrem, align 8
  %"$y_75" = load %Int32, %Int32* %y, align 4
  store %Int32 %"$y_75", %Int32* %"$retval_10", align 4, !dbg !12
  br label %"$matchsucc_69"

"$matchsucc_69":                                  ; preds = %"$have_gas_84", %"$have_gas_73"
  %"$$retval_10_87" = load %Int32, %Int32* %"$retval_10", align 4
  ret %Int32 %"$$retval_10_87"
}

declare void @_out_of_gas()

define void @_init_libs() !dbg !14 {
entry:
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 5, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %entry
  %"$consume_92" = sub i64 %"$gasrem_88", 5
  store i64 %"$consume_92", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !16
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 8, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %"$have_gas_91"
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %"$have_gas_91"
  %"$consume_97" = sub i64 %"$gasrem_93", 8
  store i64 %"$consume_97", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !16
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 196, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_96"
  %"$consume_102" = sub i64 %"$gasrem_98", 196
  store i64 %"$consume_102", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !16
  %"$gasrem_103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_104" = icmp ugt i64 20, %"$gasrem_103"
  br i1 %"$gascmp_104", label %"$out_of_gas_105", label %"$have_gas_106"

"$out_of_gas_105":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_106"

"$have_gas_106":                                  ; preds = %"$out_of_gas_105", %"$have_gas_101"
  %"$consume_107" = sub i64 %"$gasrem_103", 20
  store i64 %"$consume_107", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !16
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 12, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %"$have_gas_106"
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %"$have_gas_106"
  %"$consume_112" = sub i64 %"$gasrem_108", 12
  store i64 %"$consume_112", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !16
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 2, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$have_gas_111"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$have_gas_111"
  %"$consume_117" = sub i64 %"$gasrem_113", 2
  store i64 %"$consume_117", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !16
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) !dbg !17 {
entry:
  %"$expr_8" = alloca %Int32, align 8
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 1, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %entry
  %"$consume_122" = sub i64 %"$gasrem_118", 1
  store i64 %"$consume_122", i64* @_gasrem, align 8
  %x = alloca %Int32, align 8
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 1, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_121"
  %"$consume_127" = sub i64 %"$gasrem_123", 1
  store i64 %"$consume_127", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %x, align 4, !dbg !18
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$have_gas_126"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$have_gas_126"
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  %y = alloca %Int32, align 8
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$have_gas_131"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  store %Int32 { i32 41 }, %Int32* %y, align 4, !dbg !19
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_136"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_136"
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem, align 8
  %f = alloca { %Int32 (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$have_gas_141"
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %"$$fundef_9_envp_148_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_9_envp_148_salloc" = call i8* @_salloc(i8* %"$$fundef_9_envp_148_load", i64 8)
  %"$$fundef_9_envp_148" = bitcast i8* %"$$fundef_9_envp_148_salloc" to %"$$fundef_9_env_59"*
  %"$$fundef_9_env_voidp_150" = bitcast %"$$fundef_9_env_59"* %"$$fundef_9_envp_148" to i8*
  %"$$fundef_9_cloval_151" = insertvalue { %Int32 (i8*, %TName_Bool*)*, i8* } { %Int32 (i8*, %TName_Bool*)* bitcast (%Int32 (%"$$fundef_9_env_59"*, %TName_Bool*)* @"$fundef_9" to %Int32 (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_9_env_voidp_150", 1
  %"$$fundef_9_env_x_152" = getelementptr inbounds %"$$fundef_9_env_59", %"$$fundef_9_env_59"* %"$$fundef_9_envp_148", i32 0, i32 0
  %"$x_153" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_153", %Int32* %"$$fundef_9_env_x_152", align 4
  %"$$fundef_9_env_y_154" = getelementptr inbounds %"$$fundef_9_env_59", %"$$fundef_9_env_59"* %"$$fundef_9_envp_148", i32 0, i32 1
  %"$y_155" = load %Int32, %Int32* %y, align 4
  store %Int32 %"$y_155", %Int32* %"$$fundef_9_env_y_154", align 4
  store { %Int32 (i8*, %TName_Bool*)*, i8* } %"$$fundef_9_cloval_151", { %Int32 (i8*, %TName_Bool*)*, i8* }* %f, align 8, !dbg !20
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_146"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_159"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  %"$adtval_166_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_166_salloc" = call i8* @_salloc(i8* %"$adtval_166_load", i64 1)
  %"$adtval_166" = bitcast i8* %"$adtval_166_salloc" to %CName_True*
  %"$adtgep_167" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_166", i32 0, i32 0
  store i8 0, i8* %"$adtgep_167", align 1
  %"$adtptr_168" = bitcast %CName_True* %"$adtval_166" to %TName_Bool*
  store %TName_Bool* %"$adtptr_168", %TName_Bool** %t, align 8, !dbg !21
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %"$have_gas_164"
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem, align 8
  %"$f_7" = alloca %Int32, align 8
  %"$f_174" = load { %Int32 (i8*, %TName_Bool*)*, i8* }, { %Int32 (i8*, %TName_Bool*)*, i8* }* %f, align 8
  %"$f_fptr_175" = extractvalue { %Int32 (i8*, %TName_Bool*)*, i8* } %"$f_174", 0
  %"$f_envptr_176" = extractvalue { %Int32 (i8*, %TName_Bool*)*, i8* } %"$f_174", 1
  %"$t_177" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$f_call_178" = call %Int32 %"$f_fptr_175"(i8* %"$f_envptr_176", %TName_Bool* %"$t_177"), !dbg !22
  store %Int32 %"$f_call_178", %Int32* %"$f_7", align 4, !dbg !22
  %"$$f_7_179" = load %Int32, %Int32* %"$f_7", align 4
  store %Int32 %"$$f_7_179", %Int32* %"$expr_8", align 4, !dbg !22
  %"$$expr_8_180" = load %Int32, %Int32* %"$expr_8", align 4
  ret %Int32 %"$$expr_8_180"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_181" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_182" = alloca %Int32, align 8
  %"$memvoidcast_183" = bitcast %Int32* %"$pval_182" to i8*
  store %Int32 %"$exprval_181", %Int32* %"$pval_182", align 4
  %"$execptr_load_184" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_184", %_TyDescrTy_Typ* @"$TyDescr_Int32_13", i8* %"$memvoidcast_183")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "pm1.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_9", linkageName: "$fundef_9", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 4, column: 3, scope: !4)
!9 = !DILocation(line: 5, column: 13, scope: !10)
!10 = distinct !DILexicalBlock(scope: !11, file: !2, line: 5, column: 5)
!11 = distinct !DILexicalBlock(scope: !4, file: !2, line: 4, column: 3)
!12 = !DILocation(line: 6, column: 10, scope: !13)
!13 = distinct !DILexicalBlock(scope: !11, file: !2, line: 4, column: 3)
!14 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !15, file: !15, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DIFile(filename: ".", directory: ".")
!16 = !DILocation(line: 0, scope: !14)
!17 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 1, column: 9, scope: !17)
!19 = !DILocation(line: 2, column: 9, scope: !17)
!20 = !DILocation(line: 4, column: 3, scope: !17)
!21 = !DILocation(line: 9, column: 9, scope: !17)
!22 = !DILocation(line: 10, column: 1, scope: !17)
