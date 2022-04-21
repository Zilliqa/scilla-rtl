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
%"$TyDescrTy_ADTTyp_40" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_39"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_39" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_41"**, %"$TyDescrTy_ADTTyp_40"* }
%"$TyDescrTy_ADTTyp_Constr_41" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_135" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_136" = type { %ParamDescrString, i32, %"$ParamDescr_135"* }
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
@"$TyDescr_ReplicateContr_Prim_35" = global %"$TyDescrTy_PrimTyp_8" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_ReplicateContr_Prim_35" to i8*) }
@"$TyDescr_Bystr_Prim_37" = global %"$TyDescrTy_PrimTyp_8" { i32 7, i32 0 }
@"$TyDescr_Bystr_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Bystr_Prim_37" to i8*) }
@"$TyDescr_ADT_Option_Uint64_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_39"* @"$TyDescr_Option_Uint64_ADTTyp_Specl_55" to i8*) }
@"$TyDescr_Option_ADTTyp_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_40" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_57", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_39"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_39"*], [1 x %"$TyDescrTy_ADTTyp_Specl_39"*]* @"$TyDescr_Option_ADTTyp_m_specls_56", i32 0, i32 0) }
@"$TyDescr_Option_Some_Uint64_Constr_m_args_47" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint64_16"]
@"$TyDescr_ADT_Some_48" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint64_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_48", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint64_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint64_Constr_m_args_50" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_51" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint64_ADTTyp_Constr_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_51", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint64_Constr_m_args_50", i32 0, i32 0) }
@"$TyDescr_Option_Uint64_ADTTyp_Specl_m_constrs_53" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_41"*] [%"$TyDescrTy_ADTTyp_Constr_41"* @"$TyDescr_Option_Some_Uint64_ADTTyp_Constr_49", %"$TyDescrTy_ADTTyp_Constr_41"* @"$TyDescr_Option_None_Uint64_ADTTyp_Constr_52"]
@"$TyDescr_Option_Uint64_ADTTyp_Specl_m_TArgs_54" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint64_16"]
@"$TyDescr_Option_Uint64_ADTTyp_Specl_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_39" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint64_ADTTyp_Specl_m_TArgs_54", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_41"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_41"*], [2 x %"$TyDescrTy_ADTTyp_Constr_41"*]* @"$TyDescr_Option_Uint64_ADTTyp_Specl_m_constrs_53", i32 0, i32 0), %"$TyDescrTy_ADTTyp_40"* @"$TyDescr_Option_ADTTyp_46" }
@"$TyDescr_Option_ADTTyp_m_specls_56" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_39"*] [%"$TyDescrTy_ADTTyp_Specl_39"* @"$TyDescr_Option_Uint64_ADTTyp_Specl_55"]
@"$TyDescr_ADT_Option_57" = unnamed_addr constant [6 x i8] c"Option"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_32", %_TyDescrTy_Typ* @"$TyDescr_Int64_14", %_TyDescrTy_Typ* @"$TyDescr_Uint256_24", %_TyDescrTy_Typ* @"$TyDescr_Uint32_12", %_TyDescrTy_Typ* @"$TyDescr_Uint64_16", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint64_42", %_TyDescrTy_Typ* @"$TyDescr_Bnum_28", %_TyDescrTy_Typ* @"$TyDescr_Uint128_20", %_TyDescrTy_Typ* @"$TyDescr_Exception_34", %_TyDescrTy_Typ* @"$TyDescr_String_26", %_TyDescrTy_Typ* @"$TyDescr_Int256_22", %_TyDescrTy_Typ* @"$TyDescr_Int128_18", %_TyDescrTy_Typ* @"$TyDescr_Bystr_38", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_36", %_TyDescrTy_Typ* @"$TyDescr_Message_30", %_TyDescrTy_Typ* @"$TyDescr_Int32_10"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_135"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_136"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  %"$gasrem_58" = load i64, i64* @_gasrem, align 8
  %"$gascmp_59" = icmp ugt i64 5, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %entry
  %"$consume_62" = sub i64 %"$gasrem_58", 5
  store i64 %"$consume_62", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_63" = load i64, i64* @_gasrem, align 8
  %"$gascmp_64" = icmp ugt i64 8, %"$gasrem_63"
  br i1 %"$gascmp_64", label %"$out_of_gas_65", label %"$have_gas_66"

"$out_of_gas_65":                                 ; preds = %"$have_gas_61"
  call void @_out_of_gas()
  br label %"$have_gas_66"

"$have_gas_66":                                   ; preds = %"$out_of_gas_65", %"$have_gas_61"
  %"$consume_67" = sub i64 %"$gasrem_63", 8
  store i64 %"$consume_67", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 196, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %"$have_gas_66"
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %"$have_gas_66"
  %"$consume_72" = sub i64 %"$gasrem_68", 196
  store i64 %"$consume_72", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_73" = load i64, i64* @_gasrem, align 8
  %"$gascmp_74" = icmp ugt i64 20, %"$gasrem_73"
  br i1 %"$gascmp_74", label %"$out_of_gas_75", label %"$have_gas_76"

"$out_of_gas_75":                                 ; preds = %"$have_gas_71"
  call void @_out_of_gas()
  br label %"$have_gas_76"

"$have_gas_76":                                   ; preds = %"$out_of_gas_75", %"$have_gas_71"
  %"$consume_77" = sub i64 %"$gasrem_73", 20
  store i64 %"$consume_77", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_78" = load i64, i64* @_gasrem, align 8
  %"$gascmp_79" = icmp ugt i64 12, %"$gasrem_78"
  br i1 %"$gascmp_79", label %"$out_of_gas_80", label %"$have_gas_81"

"$out_of_gas_80":                                 ; preds = %"$have_gas_76"
  call void @_out_of_gas()
  br label %"$have_gas_81"

"$have_gas_81":                                   ; preds = %"$out_of_gas_80", %"$have_gas_76"
  %"$consume_82" = sub i64 %"$gasrem_78", 12
  store i64 %"$consume_82", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 2, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %"$have_gas_81"
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %"$have_gas_81"
  %"$consume_87" = sub i64 %"$gasrem_83", 2
  store i64 %"$consume_87", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

declare void @_out_of_gas()

define internal %TName_Option_Uint64* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_7" = alloca %TName_Option_Uint64*, align 8
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %entry
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem, align 8
  %"$a_6" = alloca %TName_Option_Uint64*, align 8
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 1, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %"$have_gas_91"
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %"$have_gas_91"
  %"$consume_97" = sub i64 %"$gasrem_93", 1
  store i64 %"$consume_97", i64* @_gasrem, align 8
  %a = alloca %Uint32, align 8
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_96"
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %a, align 4
  %"$gasrem_103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_104" = icmp ugt i64 1, %"$gasrem_103"
  br i1 %"$gascmp_104", label %"$out_of_gas_105", label %"$have_gas_106"

"$out_of_gas_105":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_106"

"$have_gas_106":                                  ; preds = %"$out_of_gas_105", %"$have_gas_101"
  %"$consume_107" = sub i64 %"$gasrem_103", 1
  store i64 %"$consume_107", i64* @_gasrem, align 8
  %b = alloca %TName_Option_Uint64*, align 8
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 4, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %"$have_gas_106"
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %"$have_gas_106"
  %"$consume_112" = sub i64 %"$gasrem_108", 4
  store i64 %"$consume_112", i64* @_gasrem, align 8
  %"$execptr_load_113" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_a_114" = alloca %Uint32, align 8
  %"$a_115" = load %Uint32, %Uint32* %a, align 4
  store %Uint32 %"$a_115", %Uint32* %"$to_uint64_a_114", align 4
  %"$$to_uint64_a_114_116" = bitcast %Uint32* %"$to_uint64_a_114" to i8*
  %"$to_uint64_call_117" = call i8* @_to_uint64(i8* %"$execptr_load_113", %_TyDescrTy_Typ* @"$TyDescr_Uint32_12", i8* %"$$to_uint64_a_114_116")
  %"$to_uint64_118" = bitcast i8* %"$to_uint64_call_117" to %TName_Option_Uint64*
  store %TName_Option_Uint64* %"$to_uint64_118", %TName_Option_Uint64** %b, align 8
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 1, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %"$have_gas_111"
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %"$have_gas_111"
  %"$consume_123" = sub i64 %"$gasrem_119", 1
  store i64 %"$consume_123", i64* @_gasrem, align 8
  %"$b_124" = load %TName_Option_Uint64*, %TName_Option_Uint64** %b, align 8
  store %TName_Option_Uint64* %"$b_124", %TName_Option_Uint64** %"$a_6", align 8
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_122"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_122"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %"$$a_6_130" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$a_6", align 8
  store %TName_Option_Uint64* %"$$a_6_130", %TName_Option_Uint64** %"$expr_7", align 8
  %"$$expr_7_131" = load %TName_Option_Uint64*, %TName_Option_Uint64** %"$expr_7", align 8
  ret %TName_Option_Uint64* %"$$expr_7_131"
}

declare i8* @_to_uint64(i8*, %_TyDescrTy_Typ*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_132" = call %TName_Option_Uint64* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_133" = bitcast %TName_Option_Uint64* %"$exprval_132" to i8*
  %"$execptr_load_134" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_134", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint64_42", i8* %"$memvoidcast_133")
  ret void
}
