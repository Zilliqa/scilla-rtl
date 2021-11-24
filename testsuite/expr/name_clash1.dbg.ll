; let a =
; let a = Uint32 1 in
; let b = builtin to_uint64 a in
; b
; in
; a
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_8" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_38" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_37"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_37" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_39"**, %"$TyDescrTy_ADTTyp_38"* }
%"$TyDescrTy_ADTTyp_Constr_39" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_133" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_134" = type { %ParamDescrString, i32, %"$ParamDescr_133"* }
%TName_Option_Uint64 = type { i8, %CName_Some_Uint64*, %CName_None_Uint64* }
%CName_Some_Uint64 = type <{ i8, %Uint64 }>
%Uint64 = type { i64 }
%CName_None_Uint64 = type <{ i8 }>
%Uint32 = type { i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_9" = global %"$TyDescrTy_PrimTyp_8" zeroinitializer
@"$TyDescr_Int32_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Int32_Prim_9" to i8*) }
@"$TyDescr_Uint32_Prim_11" = global %"$TyDescrTy_PrimTyp_8" { i32 1, i32 0 }
@"$TyDescr_Uint32_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Uint32_Prim_11" to i8*) }
@"$TyDescr_Int64_Prim_13" = global %"$TyDescrTy_PrimTyp_8" { i32 0, i32 1 }
@"$TyDescr_Int64_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Int64_Prim_13" to i8*) }
@"$TyDescr_Uint64_Prim_15" = global %"$TyDescrTy_PrimTyp_8" { i32 1, i32 1 }
@"$TyDescr_Uint64_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Uint64_Prim_15" to i8*) }
@"$TyDescr_Int128_Prim_17" = global %"$TyDescrTy_PrimTyp_8" { i32 0, i32 2 }
@"$TyDescr_Int128_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Int128_Prim_17" to i8*) }
@"$TyDescr_Uint128_Prim_19" = global %"$TyDescrTy_PrimTyp_8" { i32 1, i32 2 }
@"$TyDescr_Uint128_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Uint128_Prim_19" to i8*) }
@"$TyDescr_Int256_Prim_21" = global %"$TyDescrTy_PrimTyp_8" { i32 0, i32 3 }
@"$TyDescr_Int256_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Int256_Prim_21" to i8*) }
@"$TyDescr_Uint256_Prim_23" = global %"$TyDescrTy_PrimTyp_8" { i32 1, i32 3 }
@"$TyDescr_Uint256_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Uint256_Prim_23" to i8*) }
@"$TyDescr_String_Prim_25" = global %"$TyDescrTy_PrimTyp_8" { i32 2, i32 0 }
@"$TyDescr_String_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_String_Prim_25" to i8*) }
@"$TyDescr_Bnum_Prim_27" = global %"$TyDescrTy_PrimTyp_8" { i32 3, i32 0 }
@"$TyDescr_Bnum_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Bnum_Prim_27" to i8*) }
@"$TyDescr_Message_Prim_29" = global %"$TyDescrTy_PrimTyp_8" { i32 4, i32 0 }
@"$TyDescr_Message_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Message_Prim_29" to i8*) }
@"$TyDescr_Event_Prim_31" = global %"$TyDescrTy_PrimTyp_8" { i32 5, i32 0 }
@"$TyDescr_Event_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Event_Prim_31" to i8*) }
@"$TyDescr_Exception_Prim_33" = global %"$TyDescrTy_PrimTyp_8" { i32 6, i32 0 }
@"$TyDescr_Exception_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Exception_Prim_33" to i8*) }
@"$TyDescr_Bystr_Prim_35" = global %"$TyDescrTy_PrimTyp_8" { i32 7, i32 0 }
@"$TyDescr_Bystr_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Bystr_Prim_35" to i8*) }
@"$TyDescr_ADT_Option_Uint64_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_Option_Uint64_ADTTyp_Specl_53" to i8*) }
@"$TyDescr_Option_ADTTyp_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_38" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_55", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_37"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_37"*], [1 x %"$TyDescrTy_ADTTyp_Specl_37"*]* @"$TyDescr_Option_ADTTyp_m_specls_54", i32 0, i32 0) }
@"$TyDescr_Option_Some_Uint64_Constr_m_args_45" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint64_16"]
@"$TyDescr_ADT_Some_46" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint64_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_46", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint64_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint64_Constr_m_args_48" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_49" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint64_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_49", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint64_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_Option_Uint64_ADTTyp_Specl_m_constrs_51" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_39"*] [%"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_Option_Some_Uint64_ADTTyp_Constr_47", %"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_Option_None_Uint64_ADTTyp_Constr_50"]
@"$TyDescr_Option_Uint64_ADTTyp_Specl_m_TArgs_52" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint64_16"]
@"$TyDescr_Option_Uint64_ADTTyp_Specl_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_37" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint64_ADTTyp_Specl_m_TArgs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_39"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_39"*], [2 x %"$TyDescrTy_ADTTyp_Constr_39"*]* @"$TyDescr_Option_Uint64_ADTTyp_Specl_m_constrs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_38"* @"$TyDescr_Option_ADTTyp_44" }
@"$TyDescr_Option_ADTTyp_m_specls_54" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_37"*] [%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_Option_Uint64_ADTTyp_Specl_53"]
@"$TyDescr_ADT_Option_55" = unnamed_addr constant [6 x i8] c"Option"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_32", %_TyDescrTy_Typ* @"$TyDescr_Int64_14", %_TyDescrTy_Typ* @"$TyDescr_Uint256_24", %_TyDescrTy_Typ* @"$TyDescr_Uint32_12", %_TyDescrTy_Typ* @"$TyDescr_Uint64_16", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint64_40", %_TyDescrTy_Typ* @"$TyDescr_Bnum_28", %_TyDescrTy_Typ* @"$TyDescr_Uint128_20", %_TyDescrTy_Typ* @"$TyDescr_Exception_34", %_TyDescrTy_Typ* @"$TyDescr_String_26", %_TyDescrTy_Typ* @"$TyDescr_Int256_22", %_TyDescrTy_Typ* @"$TyDescr_Int128_18", %_TyDescrTy_Typ* @"$TyDescr_Bystr_36", %_TyDescrTy_Typ* @"$TyDescr_Message_30", %_TyDescrTy_Typ* @"$TyDescr_Int32_10"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_133"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_134"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_56" = load i64, i64* @_gasrem, align 8
  %"$gascmp_57" = icmp ugt i64 5, %"$gasrem_56"
  br i1 %"$gascmp_57", label %"$out_of_gas_58", label %"$have_gas_59"

"$out_of_gas_58":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_59"

"$have_gas_59":                                   ; preds = %"$out_of_gas_58", %entry
  %"$consume_60" = sub i64 %"$gasrem_56", 5
  store i64 %"$consume_60", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !9
  %"$gasrem_61" = load i64, i64* @_gasrem, align 8
  %"$gascmp_62" = icmp ugt i64 8, %"$gasrem_61"
  br i1 %"$gascmp_62", label %"$out_of_gas_63", label %"$have_gas_64"

"$out_of_gas_63":                                 ; preds = %"$have_gas_59"
  call void @_out_of_gas()
  br label %"$have_gas_64"

"$have_gas_64":                                   ; preds = %"$out_of_gas_63", %"$have_gas_59"
  %"$consume_65" = sub i64 %"$gasrem_61", 8
  store i64 %"$consume_65", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !9
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 196, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %"$have_gas_64"
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %"$have_gas_64"
  %"$consume_70" = sub i64 %"$gasrem_66", 196
  store i64 %"$consume_70", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !9
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 20, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %"$have_gas_69"
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %"$have_gas_69"
  %"$consume_75" = sub i64 %"$gasrem_71", 20
  store i64 %"$consume_75", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !9
  %"$gasrem_76" = load i64, i64* @_gasrem, align 8
  %"$gascmp_77" = icmp ugt i64 12, %"$gasrem_76"
  br i1 %"$gascmp_77", label %"$out_of_gas_78", label %"$have_gas_79"

"$out_of_gas_78":                                 ; preds = %"$have_gas_74"
  call void @_out_of_gas()
  br label %"$have_gas_79"

"$have_gas_79":                                   ; preds = %"$out_of_gas_78", %"$have_gas_74"
  %"$consume_80" = sub i64 %"$gasrem_76", 12
  store i64 %"$consume_80", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !9
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 2, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %"$have_gas_79"
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %"$have_gas_79"
  %"$consume_85" = sub i64 %"$gasrem_81", 2
  store i64 %"$consume_85", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define internal %TName_Option_Uint64* @_scilla_expr_fun(i8* %0) !dbg !10 {
entry:
  %"$expr_7" = alloca %TName_Option_Uint64*, align 8
  %"$gasrem_86" = load i64, i64* @_gasrem, align 8
  %"$gascmp_87" = icmp ugt i64 1, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %entry
  %"$consume_90" = sub i64 %"$gasrem_86", 1
  store i64 %"$consume_90", i64* @_gasrem, align 8
  %"$a_6" = alloca %TName_Option_Uint64*, align 8
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %"$have_gas_89"
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %"$have_gas_89"
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem, align 8
  %a = alloca %Uint32, align 8
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_94"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_94"
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %a, align 4, !dbg !11
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 1, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %"$have_gas_99"
  %"$consume_105" = sub i64 %"$gasrem_101", 1
  store i64 %"$consume_105", i64* @_gasrem, align 8
  %b = alloca %TName_Option_Uint64*, align 8
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 4, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_104"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_104"
  %"$consume_110" = sub i64 %"$gasrem_106", 4
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %"$execptr_load_111" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_a_112" = alloca %Uint32, align 8
  %"$a_113" = load %Uint32, %Uint32* %a, align 4
  store %Uint32 %"$a_113", %Uint32* %"$to_uint64_a_112", align 4
  %"$$to_uint64_a_112_114" = bitcast %Uint32* %"$to_uint64_a_112" to i8*
  %"$to_uint64_call_115" = call i8* @_to_uint64(i8* %"$execptr_load_111", %_TyDescrTy_Typ* @"$TyDescr_Uint32_12", i8* %"$$to_uint64_a_112_114"), !dbg !12
  %"$to_uint64_116" = bitcast i8* %"$to_uint64_call_115" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_116", %TName_Option_Uint64** %b, align 8, !dbg !12
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 1, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %"$have_gas_109"
  %"$consume_121" = sub i64 %"$gasrem_117", 1
  store i64 %"$consume_121", i64* @_gasrem, align 8
  %"$b_122" = load %TName_Option_Uint64*, %TName_Option_Uint64** %b, align 8
  store %TName_Option_Uint64* %"$b_122", %TName_Option_Uint64** %"$a_6", align 8, !dbg !13
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 1, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_120"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_120"
  %"$consume_127" = sub i64 %"$gasrem_123", 1
  store i64 %"$consume_127", i64* @_gasrem, align 8
  %"$$a_6_128" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$a_6", align 8
  store %TName_Option_Uint64* %"$$a_6_128", %TName_Option_Uint64** %"$expr_7", align 8, !dbg !14
  %"$$expr_7_129" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$expr_7", align 8
  ret %TName_Option_Uint64* %"$$expr_7_129"
}

declare i8* @_to_uint64(i8*, %_TyDescrTy_Typ*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_130" = call %TName_Option_Uint64* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_131" = bitcast %TName_Option_Uint64* %"$exprval_130" to i8*
  %"$execptr_load_132" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_132", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint64_40", i8* %"$memvoidcast_131")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "name_clash1.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !6, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 2, column: 11, scope: !10)
!12 = !DILocation(line: 3, column: 11, scope: !10)
!13 = !DILocation(line: 4, column: 3, scope: !10)
!14 = !DILocation(line: 6, column: 1, scope: !10)
