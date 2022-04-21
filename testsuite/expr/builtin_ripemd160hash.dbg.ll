; let s = "hello" in
; let h1 = builtin ripemd160hash s in
; let h2 = builtin ripemd160hash h1 in
; let sh = Pair {String ByStr20} s h2 in
; let sh2 = builtin ripemd160hash sh in
; let bystr1 = builtin to_bystr sh2 in
; let i4 = Int32 4 in
; let p2 = Pair {ByStr Int32} bystr1 i4 in
; builtin ripemd160hash p2
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_41" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_40"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_40" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_42"**, %"$TyDescrTy_ADTTyp_41"* }
%"$TyDescrTy_ADTTyp_Constr_42" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_266" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_267" = type { %ParamDescrString, i32, %"$ParamDescr_266"* }
%String = type { i8*, i32 }
%TName_Pair_String_ByStr20 = type { i8, %CName_Pair_String_ByStr20* }
%CName_Pair_String_ByStr20 = type <{ i8, %String, [20 x i8] }>
%Bystr = type { i8*, i32 }
%TName_Pair_ByStr_Int32 = type { i8, %CName_Pair_ByStr_Int32* }
%CName_Pair_ByStr_Int32 = type <{ i8, %Bystr, %Int32 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_8" = global %"$TyDescrTy_PrimTyp_7" zeroinitializer
@"$TyDescr_Int32_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int32_Prim_8" to i8*) }
@"$TyDescr_Uint32_Prim_10" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 0 }
@"$TyDescr_Uint32_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint32_Prim_10" to i8*) }
@"$TyDescr_Int64_Prim_12" = global %"$TyDescrTy_PrimTyp_7" { i32 0, i32 1 }
@"$TyDescr_Int64_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int64_Prim_12" to i8*) }
@"$TyDescr_Uint64_Prim_14" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 1 }
@"$TyDescr_Uint64_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint64_Prim_14" to i8*) }
@"$TyDescr_Int128_Prim_16" = global %"$TyDescrTy_PrimTyp_7" { i32 0, i32 2 }
@"$TyDescr_Int128_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int128_Prim_16" to i8*) }
@"$TyDescr_Uint128_Prim_18" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 2 }
@"$TyDescr_Uint128_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint128_Prim_18" to i8*) }
@"$TyDescr_Int256_Prim_20" = global %"$TyDescrTy_PrimTyp_7" { i32 0, i32 3 }
@"$TyDescr_Int256_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int256_Prim_20" to i8*) }
@"$TyDescr_Uint256_Prim_22" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 3 }
@"$TyDescr_Uint256_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint256_Prim_22" to i8*) }
@"$TyDescr_String_Prim_24" = global %"$TyDescrTy_PrimTyp_7" { i32 2, i32 0 }
@"$TyDescr_String_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_String_Prim_24" to i8*) }
@"$TyDescr_Bnum_Prim_26" = global %"$TyDescrTy_PrimTyp_7" { i32 3, i32 0 }
@"$TyDescr_Bnum_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bnum_Prim_26" to i8*) }
@"$TyDescr_Message_Prim_28" = global %"$TyDescrTy_PrimTyp_7" { i32 4, i32 0 }
@"$TyDescr_Message_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Message_Prim_28" to i8*) }
@"$TyDescr_Event_Prim_30" = global %"$TyDescrTy_PrimTyp_7" { i32 5, i32 0 }
@"$TyDescr_Event_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Event_Prim_30" to i8*) }
@"$TyDescr_Exception_Prim_32" = global %"$TyDescrTy_PrimTyp_7" { i32 6, i32 0 }
@"$TyDescr_Exception_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Exception_Prim_32" to i8*) }
@"$TyDescr_ReplicateContr_Prim_34" = global %"$TyDescrTy_PrimTyp_7" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_ReplicateContr_Prim_34" to i8*) }
@"$TyDescr_Bystr_Prim_36" = global %"$TyDescrTy_PrimTyp_7" { i32 7, i32 0 }
@"$TyDescr_Bystr_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr_Prim_36" to i8*) }
@"$TyDescr_Bystr20_Prim_38" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 20 }
@"$TyDescr_Bystr20_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr20_Prim_38" to i8*) }
@"$TyDescr_ADT_Pair_ByStr_Int32_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_54" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr20_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_60" to i8*) }
@"$TyDescr_Pair_ADTTyp_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_62", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 2, %"$TyDescrTy_ADTTyp_Specl_40"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_40"*], [2 x %"$TyDescrTy_ADTTyp_Specl_40"*]* @"$TyDescr_Pair_ADTTyp_m_specls_61", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_ByStr_Int32_Constr_m_args_49" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@"$TyDescr_ADT_Pair_50" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr_Int32_ADTTyp_Constr_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_50", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr_Int32_Constr_m_args_49", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_constrs_52" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_42"*] [%"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_Pair_Pair_ByStr_Int32_ADTTyp_Constr_51"]
@"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_TArgs_53" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_40" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_TArgs_53", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_42"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_42"*], [1 x %"$TyDescrTy_ADTTyp_Constr_42"*]* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_constrs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_41"* @"$TyDescr_Pair_ADTTyp_48" }
@"$TyDescr_Pair_Pair_String_ByStr20_Constr_m_args_55" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39"]
@"$TyDescr_ADT_Pair_56" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr20_ADTTyp_Constr_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_56", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr20_Constr_m_args_55", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_constrs_58" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_42"*] [%"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_Pair_Pair_String_ByStr20_ADTTyp_Constr_57"]
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_TArgs_59" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39"]
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_40" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_TArgs_59", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_42"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_42"*], [1 x %"$TyDescrTy_ADTTyp_Constr_42"*]* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_constrs_58", i32 0, i32 0), %"$TyDescrTy_ADTTyp_41"* @"$TyDescr_Pair_ADTTyp_48" }
@"$TyDescr_Pair_ADTTyp_m_specls_61" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_40"*] [%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_54", %"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_60"]
@"$TyDescr_ADT_Pair_62" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$stringlit_103" = unnamed_addr constant [5 x i8] c"hello"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_44", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_Int32_43", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_266"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_267"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !3 {
entry:
  %"$gasrem_63" = load i64, i64* @_gasrem, align 8
  %"$gascmp_64" = icmp ugt i64 5, %"$gasrem_63"
  br i1 %"$gascmp_64", label %"$out_of_gas_65", label %"$have_gas_66"

"$out_of_gas_65":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_66"

"$have_gas_66":                                   ; preds = %"$out_of_gas_65", %entry
  %"$consume_67" = sub i64 %"$gasrem_63", 5
  store i64 %"$consume_67", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !9
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 8, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %"$have_gas_66"
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %"$have_gas_66"
  %"$consume_72" = sub i64 %"$gasrem_68", 8
  store i64 %"$consume_72", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !9
  %"$gasrem_73" = load i64, i64* @_gasrem, align 8
  %"$gascmp_74" = icmp ugt i64 196, %"$gasrem_73"
  br i1 %"$gascmp_74", label %"$out_of_gas_75", label %"$have_gas_76"

"$out_of_gas_75":                                 ; preds = %"$have_gas_71"
  call void @_out_of_gas()
  br label %"$have_gas_76"

"$have_gas_76":                                   ; preds = %"$out_of_gas_75", %"$have_gas_71"
  %"$consume_77" = sub i64 %"$gasrem_73", 196
  store i64 %"$consume_77", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !9
  %"$gasrem_78" = load i64, i64* @_gasrem, align 8
  %"$gascmp_79" = icmp ugt i64 20, %"$gasrem_78"
  br i1 %"$gascmp_79", label %"$out_of_gas_80", label %"$have_gas_81"

"$out_of_gas_80":                                 ; preds = %"$have_gas_76"
  call void @_out_of_gas()
  br label %"$have_gas_81"

"$have_gas_81":                                   ; preds = %"$out_of_gas_80", %"$have_gas_76"
  %"$consume_82" = sub i64 %"$gasrem_78", 20
  store i64 %"$consume_82", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !9
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 12, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %"$have_gas_81"
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %"$have_gas_81"
  %"$consume_87" = sub i64 %"$gasrem_83", 12
  store i64 %"$consume_87", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !9
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 2, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %"$have_gas_86"
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %"$have_gas_86"
  %"$consume_92" = sub i64 %"$gasrem_88", 2
  store i64 %"$consume_92", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define internal void @_scilla_expr_fun(i8* %0, [20 x i8]* %1) !dbg !10 {
entry:
  %"$expr_6" = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %"$expr_6", metadata !11, metadata !DIExpression()), !dbg !13
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 1, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %entry
  %"$consume_97" = sub i64 %"$gasrem_93", 1
  store i64 %"$consume_97", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %s, metadata !14, metadata !DIExpression()), !dbg !16
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_96"
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_103", i32 0, i32 0), i32 5 }, %String* %s, align 8, !dbg !13
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$have_gas_101"
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %h1 = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %h1, metadata !17, metadata !DIExpression()), !dbg !18
  %"$_literal_cost_s_109" = alloca %String, align 8
  %"$s_110" = load %String, %String* %s, align 8
  store %String %"$s_110", %String* %"$_literal_cost_s_109", align 8
  %"$$_literal_cost_s_109_111" = bitcast %String* %"$_literal_cost_s_109" to i8*
  %"$_literal_cost_call_112" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$_literal_cost_s_109_111")
  %"$gasadd_113" = add i64 %"$_literal_cost_call_112", 0
  %"$gasdivceil_114" = urem i64 %"$gasadd_113", 640
  %"$gasdivceil_115" = udiv i64 %"$gasadd_113", 640
  %"$gasdivceil_116" = icmp eq i64 %"$gasdivceil_114", 0
  %"$gasdivceil_117" = add i64 %"$gasdivceil_115", 1
  %"$gasdivceil_118" = select i1 %"$gasdivceil_116", i64 %"$gasdivceil_115", i64 %"$gasdivceil_117"
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 %"$gasdivceil_118", %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %"$have_gas_107"
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %"$have_gas_107"
  %"$consume_123" = sub i64 %"$gasrem_119", %"$gasdivceil_118"
  store i64 %"$consume_123", i64* @_gasrem, align 8
  %"$execptr_load_124" = load i8*, i8** @_execptr, align 8
  %"$ripemd160hash_s_125" = alloca %String, align 8
  %"$s_126" = load %String, %String* %s, align 8
  store %String %"$s_126", %String* %"$ripemd160hash_s_125", align 8
  %"$$ripemd160hash_s_125_127" = bitcast %String* %"$ripemd160hash_s_125" to i8*
  %"$ripemd160hash_call_128" = call [20 x i8]* @_ripemd160hash(i8* %"$execptr_load_124", %_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$ripemd160hash_s_125_127"), !dbg !19
  %"$ripemd160hash_130" = load [20 x i8], [20 x i8]* %"$ripemd160hash_call_128", align 1
  store [20 x i8] %"$ripemd160hash_130", [20 x i8]* %h1, align 1, !dbg !19
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_122"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_122"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  %h2 = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %h2, metadata !20, metadata !DIExpression()), !dbg !21
  %"$_literal_cost_h1_136" = alloca [20 x i8], align 1
  %"$h1_137" = load [20 x i8], [20 x i8]* %h1, align 1
  store [20 x i8] %"$h1_137", [20 x i8]* %"$_literal_cost_h1_136", align 1
  %"$$_literal_cost_h1_136_138" = bitcast [20 x i8]* %"$_literal_cost_h1_136" to i8*
  %"$_literal_cost_call_139" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_39", i8* %"$$_literal_cost_h1_136_138")
  %"$gasadd_140" = add i64 %"$_literal_cost_call_139", 0
  %"$gasdivceil_141" = urem i64 %"$gasadd_140", 640
  %"$gasdivceil_142" = udiv i64 %"$gasadd_140", 640
  %"$gasdivceil_143" = icmp eq i64 %"$gasdivceil_141", 0
  %"$gasdivceil_144" = add i64 %"$gasdivceil_142", 1
  %"$gasdivceil_145" = select i1 %"$gasdivceil_143", i64 %"$gasdivceil_142", i64 %"$gasdivceil_144"
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 %"$gasdivceil_145", %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_134"
  %"$consume_150" = sub i64 %"$gasrem_146", %"$gasdivceil_145"
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %"$execptr_load_151" = load i8*, i8** @_execptr, align 8
  %"$ripemd160hash_h1_152" = alloca [20 x i8], align 1
  %"$h1_153" = load [20 x i8], [20 x i8]* %h1, align 1
  store [20 x i8] %"$h1_153", [20 x i8]* %"$ripemd160hash_h1_152", align 1
  %"$$ripemd160hash_h1_152_154" = bitcast [20 x i8]* %"$ripemd160hash_h1_152" to i8*
  %"$ripemd160hash_call_155" = call [20 x i8]* @_ripemd160hash(i8* %"$execptr_load_151", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39", i8* %"$$ripemd160hash_h1_152_154"), !dbg !22
  %"$ripemd160hash_157" = load [20 x i8], [20 x i8]* %"$ripemd160hash_call_155", align 1
  store [20 x i8] %"$ripemd160hash_157", [20 x i8]* %h2, align 1, !dbg !22
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 1, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %"$have_gas_149"
  %"$consume_162" = sub i64 %"$gasrem_158", 1
  store i64 %"$consume_162", i64* @_gasrem, align 8
  %sh = alloca %TName_Pair_String_ByStr20*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_String_ByStr20** %sh, metadata !23, metadata !DIExpression()), !dbg !26
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %"$have_gas_161"
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %"$have_gas_161"
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %"$s_168" = load %String, %String* %s, align 8
  %"$h2_169" = load [20 x i8], [20 x i8]* %h2, align 1
  %"$adtval_170_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_170_salloc" = call i8* @_salloc(i8* %"$adtval_170_load", i64 37)
  %"$adtval_170" = bitcast i8* %"$adtval_170_salloc" to %CName_Pair_String_ByStr20*
  %"$adtgep_171" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_170", i32 0, i32 0
  store i8 0, i8* %"$adtgep_171", align 1
  %"$adtgep_172" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_170", i32 0, i32 1
  store %String %"$s_168", %String* %"$adtgep_172", align 8
  %"$adtgep_173" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_170", i32 0, i32 2
  store [20 x i8] %"$h2_169", [20 x i8]* %"$adtgep_173", align 1
  %"$adtptr_174" = bitcast %CName_Pair_String_ByStr20* %"$adtval_170" to %TName_Pair_String_ByStr20*
  store %TName_Pair_String_ByStr20* %"$adtptr_174", %TName_Pair_String_ByStr20** %sh, align 8, !dbg !27
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %"$have_gas_166"
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %"$have_gas_166"
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %sh2 = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %sh2, metadata !28, metadata !DIExpression()), !dbg !29
  %"$sh_180" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %sh, align 8
  %"$$sh_180_181" = bitcast %TName_Pair_String_ByStr20* %"$sh_180" to i8*
  %"$_literal_cost_call_182" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_44", i8* %"$$sh_180_181")
  %"$gasadd_183" = add i64 %"$_literal_cost_call_182", 0
  %"$gasdivceil_184" = urem i64 %"$gasadd_183", 640
  %"$gasdivceil_185" = udiv i64 %"$gasadd_183", 640
  %"$gasdivceil_186" = icmp eq i64 %"$gasdivceil_184", 0
  %"$gasdivceil_187" = add i64 %"$gasdivceil_185", 1
  %"$gasdivceil_188" = select i1 %"$gasdivceil_186", i64 %"$gasdivceil_185", i64 %"$gasdivceil_187"
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 %"$gasdivceil_188", %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_178"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_178"
  %"$consume_193" = sub i64 %"$gasrem_189", %"$gasdivceil_188"
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %"$execptr_load_194" = load i8*, i8** @_execptr, align 8
  %"$sh_195" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %sh, align 8
  %"$$sh_195_196" = bitcast %TName_Pair_String_ByStr20* %"$sh_195" to i8*
  %"$ripemd160hash_call_197" = call [20 x i8]* @_ripemd160hash(i8* %"$execptr_load_194", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_44", i8* %"$$sh_195_196"), !dbg !30
  %"$ripemd160hash_199" = load [20 x i8], [20 x i8]* %"$ripemd160hash_call_197", align 1
  store [20 x i8] %"$ripemd160hash_199", [20 x i8]* %sh2, align 1, !dbg !30
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 1, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %"$have_gas_192"
  %"$consume_204" = sub i64 %"$gasrem_200", 1
  store i64 %"$consume_204", i64* @_gasrem, align 8
  %bystr1 = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %bystr1, metadata !31, metadata !DIExpression()), !dbg !33
  %"$gasrem_205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_206" = icmp ugt i64 20, %"$gasrem_205"
  br i1 %"$gascmp_206", label %"$out_of_gas_207", label %"$have_gas_208"

"$out_of_gas_207":                                ; preds = %"$have_gas_203"
  call void @_out_of_gas()
  br label %"$have_gas_208"

"$have_gas_208":                                  ; preds = %"$out_of_gas_207", %"$have_gas_203"
  %"$consume_209" = sub i64 %"$gasrem_205", 20
  store i64 %"$consume_209", i64* @_gasrem, align 8
  %"$execptr_load_210" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_sh2_211" = alloca [20 x i8], align 1
  %"$sh2_212" = load [20 x i8], [20 x i8]* %sh2, align 1
  store [20 x i8] %"$sh2_212", [20 x i8]* %"$to_bystr_sh2_211", align 1
  %"$$to_bystr_sh2_211_213" = bitcast [20 x i8]* %"$to_bystr_sh2_211" to i8*
  %"$to_bystr_call_214" = call %Bystr @_to_bystr(i8* %"$execptr_load_210", i32 20, i8* %"$$to_bystr_sh2_211_213"), !dbg !34
  store %Bystr %"$to_bystr_call_214", %Bystr* %bystr1, align 8, !dbg !34
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 1, %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %"$have_gas_208"
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %"$have_gas_208"
  %"$consume_219" = sub i64 %"$gasrem_215", 1
  store i64 %"$consume_219", i64* @_gasrem, align 8
  %i4 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %i4, metadata !35, metadata !DIExpression()), !dbg !37
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 1, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_218"
  %"$consume_224" = sub i64 %"$gasrem_220", 1
  store i64 %"$consume_224", i64* @_gasrem, align 8
  store %Int32 { i32 4 }, %Int32* %i4, align 4, !dbg !38
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 1, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_223"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_223"
  %"$consume_229" = sub i64 %"$gasrem_225", 1
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %p2 = alloca %TName_Pair_ByStr_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_ByStr_Int32** %p2, metadata !39, metadata !DIExpression()), !dbg !42
  %"$gasrem_230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_231" = icmp ugt i64 1, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$have_gas_228"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$have_gas_228"
  %"$consume_234" = sub i64 %"$gasrem_230", 1
  store i64 %"$consume_234", i64* @_gasrem, align 8
  %"$bystr1_235" = load %Bystr, %Bystr* %bystr1, align 8
  %"$i4_236" = load %Int32, %Int32* %i4, align 4
  %"$adtval_237_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_237_salloc" = call i8* @_salloc(i8* %"$adtval_237_load", i64 21)
  %"$adtval_237" = bitcast i8* %"$adtval_237_salloc" to %CName_Pair_ByStr_Int32*
  %"$adtgep_238" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_237", i32 0, i32 0
  store i8 0, i8* %"$adtgep_238", align 1
  %"$adtgep_239" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_237", i32 0, i32 1
  store %Bystr %"$bystr1_235", %Bystr* %"$adtgep_239", align 8
  %"$adtgep_240" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_237", i32 0, i32 2
  store %Int32 %"$i4_236", %Int32* %"$adtgep_240", align 4
  %"$adtptr_241" = bitcast %CName_Pair_ByStr_Int32* %"$adtval_237" to %TName_Pair_ByStr_Int32*
  store %TName_Pair_ByStr_Int32* %"$adtptr_241", %TName_Pair_ByStr_Int32** %p2, align 8, !dbg !43
  %"$p2_242" = load %TName_Pair_ByStr_Int32*, %TName_Pair_ByStr_Int32** %p2, align 8
  %"$$p2_242_243" = bitcast %TName_Pair_ByStr_Int32* %"$p2_242" to i8*
  %"$_literal_cost_call_244" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_Int32_43", i8* %"$$p2_242_243")
  %"$gasadd_245" = add i64 %"$_literal_cost_call_244", 0
  %"$gasdivceil_246" = urem i64 %"$gasadd_245", 640
  %"$gasdivceil_247" = udiv i64 %"$gasadd_245", 640
  %"$gasdivceil_248" = icmp eq i64 %"$gasdivceil_246", 0
  %"$gasdivceil_249" = add i64 %"$gasdivceil_247", 1
  %"$gasdivceil_250" = select i1 %"$gasdivceil_248", i64 %"$gasdivceil_247", i64 %"$gasdivceil_249"
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 %"$gasdivceil_250", %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$have_gas_233"
  %"$consume_255" = sub i64 %"$gasrem_251", %"$gasdivceil_250"
  store i64 %"$consume_255", i64* @_gasrem, align 8
  %"$execptr_load_256" = load i8*, i8** @_execptr, align 8
  %"$p2_257" = load %TName_Pair_ByStr_Int32*, %TName_Pair_ByStr_Int32** %p2, align 8
  %"$$p2_257_258" = bitcast %TName_Pair_ByStr_Int32* %"$p2_257" to i8*
  %"$ripemd160hash_call_259" = call [20 x i8]* @_ripemd160hash(i8* %"$execptr_load_256", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_Int32_43", i8* %"$$p2_257_258"), !dbg !44
  %"$ripemd160hash_261" = load [20 x i8], [20 x i8]* %"$ripemd160hash_call_259", align 1
  store [20 x i8] %"$ripemd160hash_261", [20 x i8]* %"$expr_6", align 1, !dbg !44
  %"$$expr_6_262" = load [20 x i8], [20 x i8]* %"$expr_6", align 1
  store [20 x i8] %"$$expr_6_262", [20 x i8]* %1, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare [20 x i8]* @_ripemd160hash(i8*, %_TyDescrTy_Typ*, i8*)

declare i8* @_salloc(i8*, i64)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$mainval_263" = alloca [20 x i8], align 1
  %"$memvoidcast_264" = bitcast [20 x i8]* %"$mainval_263" to i8*
  call void @_scilla_expr_fun(i8* null, [20 x i8]* %"$mainval_263")
  %"$execptr_load_265" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_265", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39", i8* %"$memvoidcast_264")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_ripemd160hash.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: ".", directory: ".")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocation(line: 0, scope: !3)
!10 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !8)
!11 = !DILocalVariable(name: "$expr_6", scope: !10, file: !2, line: 1, type: !12)
!12 = !DIBasicType(name: "ByStr20", size: 20)
!13 = !DILocation(line: 1, column: 15, scope: !10)
!14 = !DILocalVariable(name: "s", scope: !10, file: !2, line: 1, type: !15)
!15 = !DIBasicType(name: "String", size: 16)
!16 = !DILocation(line: 1, column: 5, scope: !10)
!17 = !DILocalVariable(name: "h1", scope: !10, file: !2, line: 2, type: !12)
!18 = !DILocation(line: 2, column: 5, scope: !10)
!19 = !DILocation(line: 2, column: 10, scope: !10)
!20 = !DILocalVariable(name: "h2", scope: !10, file: !2, line: 3, type: !12)
!21 = !DILocation(line: 3, column: 5, scope: !10)
!22 = !DILocation(line: 3, column: 10, scope: !10)
!23 = !DILocalVariable(name: "sh", scope: !10, file: !2, line: 4, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Pair (String) (ByStr20)", baseType: !25, size: 8, align: 8, dwarfAddressSpace: 0)
!25 = !DIBasicType(name: "Pair (String) (ByStr20)", size: 8)
!26 = !DILocation(line: 4, column: 5, scope: !10)
!27 = !DILocation(line: 4, column: 10, scope: !10)
!28 = !DILocalVariable(name: "sh2", scope: !10, file: !2, line: 5, type: !12)
!29 = !DILocation(line: 5, column: 5, scope: !10)
!30 = !DILocation(line: 5, column: 11, scope: !10)
!31 = !DILocalVariable(name: "bystr1", scope: !10, file: !2, line: 6, type: !32)
!32 = !DIBasicType(name: "ByStr", size: 16)
!33 = !DILocation(line: 6, column: 5, scope: !10)
!34 = !DILocation(line: 6, column: 14, scope: !10)
!35 = !DILocalVariable(name: "i4", scope: !10, file: !2, line: 7, type: !36)
!36 = !DIBasicType(name: "Int32", size: 4)
!37 = !DILocation(line: 7, column: 5, scope: !10)
!38 = !DILocation(line: 7, column: 10, scope: !10)
!39 = !DILocalVariable(name: "p2", scope: !10, file: !2, line: 8, type: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Pair (ByStr) (Int32)", baseType: !41, size: 8, align: 8, dwarfAddressSpace: 0)
!41 = !DIBasicType(name: "Pair (ByStr) (Int32)", size: 8)
!42 = !DILocation(line: 8, column: 5, scope: !10)
!43 = !DILocation(line: 8, column: 10, scope: !10)
!44 = !DILocation(line: 9, column: 1, scope: !10)
