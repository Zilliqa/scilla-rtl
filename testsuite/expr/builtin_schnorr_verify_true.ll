; let pk = 0x03afac217c49b76a1e88d78b13b473e87b0d3a7b78788b30d14b6eb1de29937d86 in
; let msg_bs = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6 in
; let msg = builtin to_bystr msg_bs in
; let sign = 0x919dbde710bfa1a227d1d51220022a6f5a92509b2072fc0ac50ee97a3a55987a4254276de534b018a0bb7c99a7fbdb468430956935b3ebb668df8b4fa3e25aad in
; builtin schnorr_verify pk msg sign
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_45" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_44"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_44" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_46"**, %"$TyDescrTy_ADTTyp_45"* }
%"$TyDescrTy_ADTTyp_Constr_46" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_167" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_168" = type { %ParamDescrString, i32, %"$ParamDescr_167"* }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%Bystr = type { i8*, i32 }

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
@"$TyDescr_Bystr64_Prim_38" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 64 }
@"$TyDescr_Bystr64_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr64_Prim_38" to i8*) }
@"$TyDescr_Bystr32_Prim_40" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 32 }
@"$TyDescr_Bystr32_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr32_Prim_40" to i8*) }
@"$TyDescr_Bystr33_Prim_42" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 33 }
@"$TyDescr_Bystr33_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr33_Prim_42" to i8*) }
@"$TyDescr_ADT_Bool_47" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_44"* @"$TyDescr_Bool_ADTTyp_Specl_60" to i8*) }
@"$TyDescr_Bool_ADTTyp_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_45" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_62", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_44"*], [1 x %"$TyDescrTy_ADTTyp_Specl_44"*]* @"$TyDescr_Bool_ADTTyp_m_specls_61", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_52" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_53" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_46" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_53", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_52", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_55" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_56" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_46" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_56", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_55", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_58" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_46"*] [%"$TyDescrTy_ADTTyp_Constr_46"* @"$TyDescr_Bool_True_ADTTyp_Constr_54", %"$TyDescrTy_ADTTyp_Constr_46"* @"$TyDescr_Bool_False_ADTTyp_Constr_57"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_59" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_44" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_59", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_46"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_46"*], [2 x %"$TyDescrTy_ADTTyp_Constr_46"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_58", i32 0, i32 0), %"$TyDescrTy_ADTTyp_45"* @"$TyDescr_Bool_ADTTyp_51" }
@"$TyDescr_Bool_ADTTyp_m_specls_61" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_44"*] [%"$TyDescrTy_ADTTyp_Specl_44"* @"$TyDescr_Bool_ADTTyp_Specl_60"]
@"$TyDescr_ADT_Bool_62" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_47", %_TyDescrTy_Typ* @"$TyDescr_Bystr33_43", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_39", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_41", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 19
@_contract_parameters = constant [0 x %"$ParamDescr_167"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_168"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
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
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 8, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %"$have_gas_66"
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %"$have_gas_66"
  %"$consume_72" = sub i64 %"$gasrem_68", 8
  store i64 %"$consume_72", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_73" = load i64, i64* @_gasrem, align 8
  %"$gascmp_74" = icmp ugt i64 196, %"$gasrem_73"
  br i1 %"$gascmp_74", label %"$out_of_gas_75", label %"$have_gas_76"

"$out_of_gas_75":                                 ; preds = %"$have_gas_71"
  call void @_out_of_gas()
  br label %"$have_gas_76"

"$have_gas_76":                                   ; preds = %"$out_of_gas_75", %"$have_gas_71"
  %"$consume_77" = sub i64 %"$gasrem_73", 196
  store i64 %"$consume_77", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_78" = load i64, i64* @_gasrem, align 8
  %"$gascmp_79" = icmp ugt i64 20, %"$gasrem_78"
  br i1 %"$gascmp_79", label %"$out_of_gas_80", label %"$have_gas_81"

"$out_of_gas_80":                                 ; preds = %"$have_gas_76"
  call void @_out_of_gas()
  br label %"$have_gas_81"

"$have_gas_81":                                   ; preds = %"$out_of_gas_80", %"$have_gas_76"
  %"$consume_82" = sub i64 %"$gasrem_78", 20
  store i64 %"$consume_82", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 12, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %"$have_gas_81"
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %"$have_gas_81"
  %"$consume_87" = sub i64 %"$gasrem_83", 12
  store i64 %"$consume_87", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 2, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %"$have_gas_86"
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %"$have_gas_86"
  %"$consume_92" = sub i64 %"$gasrem_88", 2
  store i64 %"$consume_92", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

declare void @_out_of_gas()

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_6" = alloca %TName_Bool*, align 8
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 1, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %entry
  %"$consume_97" = sub i64 %"$gasrem_93", 1
  store i64 %"$consume_97", i64* @_gasrem, align 8
  %pk = alloca [33 x i8], align 1
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_96"
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  store [33 x i8] c"\03\AF\AC!|I\B7j\1E\88\D7\8B\13\B4s\E8{\0D:{xx\8B0\D1Kn\B1\DE)\93}\86", [33 x i8]* %pk, align 1
  %"$gasrem_103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_104" = icmp ugt i64 1, %"$gasrem_103"
  br i1 %"$gascmp_104", label %"$out_of_gas_105", label %"$have_gas_106"

"$out_of_gas_105":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_106"

"$have_gas_106":                                  ; preds = %"$out_of_gas_105", %"$have_gas_101"
  %"$consume_107" = sub i64 %"$gasrem_103", 1
  store i64 %"$consume_107", i64* @_gasrem, align 8
  %msg_bs = alloca [32 x i8], align 1
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 1, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %"$have_gas_106"
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %"$have_gas_106"
  %"$consume_112" = sub i64 %"$gasrem_108", 1
  store i64 %"$consume_112", i64* @_gasrem, align 8
  store [32 x i8] c"\B1\0E-Rv\12\07;&\EE\CD\FDq~j2\0C\F4KJ\FA\C2\B0s-\9F\CB\E2\B7\FA\0C\F6", [32 x i8]* %msg_bs, align 1
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 1, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$have_gas_111"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$have_gas_111"
  %"$consume_117" = sub i64 %"$gasrem_113", 1
  store i64 %"$consume_117", i64* @_gasrem, align 8
  %msg = alloca %Bystr, align 8
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 32, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$have_gas_116"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$have_gas_116"
  %"$consume_122" = sub i64 %"$gasrem_118", 32
  store i64 %"$consume_122", i64* @_gasrem, align 8
  %"$execptr_load_123" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_msg_bs_124" = alloca [32 x i8], align 1
  %"$msg_bs_125" = load [32 x i8], [32 x i8]* %msg_bs, align 1
  store [32 x i8] %"$msg_bs_125", [32 x i8]* %"$to_bystr_msg_bs_124", align 1
  %"$$to_bystr_msg_bs_124_126" = bitcast [32 x i8]* %"$to_bystr_msg_bs_124" to i8*
  %"$to_bystr_call_127" = call %Bystr @_to_bystr(i8* %"$execptr_load_123", i32 32, i8* %"$$to_bystr_msg_bs_124_126")
  store %Bystr %"$to_bystr_call_127", %Bystr* %msg, align 8
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$have_gas_121"
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  %sign = alloca [64 x i8], align 1
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$have_gas_131"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  store [64 x i8] c"\91\9D\BD\E7\10\BF\A1\A2'\D1\D5\12 \02*oZ\92P\9B r\FC\0A\C5\0E\E9z:U\98zBT'm\E54\B0\18\A0\BB|\99\A7\FB\DBF\840\95i5\B3\EB\B6h\DF\8BO\A3\E2Z\AD", [64 x i8]* %sign, align 1
  %"$_literal_cost_msg_138" = alloca %Bystr, align 8
  %"$msg_139" = load %Bystr, %Bystr* %msg, align 8
  store %Bystr %"$msg_139", %Bystr* %"$_literal_cost_msg_138", align 8
  %"$$_literal_cost_msg_138_140" = bitcast %Bystr* %"$_literal_cost_msg_138" to i8*
  %"$_literal_cost_call_141" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_37", i8* %"$$_literal_cost_msg_138_140")
  %"$gasadd_142" = add i64 %"$_literal_cost_call_141", 66
  %"$gasdivceil_143" = urem i64 %"$gasadd_142", 64
  %"$gasdivceil_144" = udiv i64 %"$gasadd_142", 64
  %"$gasdivceil_145" = icmp eq i64 %"$gasdivceil_143", 0
  %"$gasdivceil_146" = add i64 %"$gasdivceil_144", 1
  %"$gasdivceil_147" = select i1 %"$gasdivceil_145", i64 %"$gasdivceil_144", i64 %"$gasdivceil_146"
  %"$gasmul_148" = mul i64 15, %"$gasdivceil_147"
  %"$gasadd_149" = add i64 250, %"$gasmul_148"
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 %"$gasadd_149", %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_136"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_136"
  %"$consume_154" = sub i64 %"$gasrem_150", %"$gasadd_149"
  store i64 %"$consume_154", i64* @_gasrem, align 8
  %"$execptr_load_155" = load i8*, i8** @_execptr, align 8
  %"$schnorr_verify_pk_156" = alloca [33 x i8], align 1
  %"$pk_157" = load [33 x i8], [33 x i8]* %pk, align 1
  store [33 x i8] %"$pk_157", [33 x i8]* %"$schnorr_verify_pk_156", align 1
  %"$msg_158" = load %Bystr, %Bystr* %msg, align 8
  %"$schnorr_verify_sign_159" = alloca [64 x i8], align 1
  %"$sign_160" = load [64 x i8], [64 x i8]* %sign, align 1
  store [64 x i8] %"$sign_160", [64 x i8]* %"$schnorr_verify_sign_159", align 1
  %"$schnorr_verify_call_161" = call %TName_Bool* @_schnorr_verify(i8* %"$execptr_load_155", [33 x i8]* %"$schnorr_verify_pk_156", %Bystr %"$msg_158", [64 x i8]* %"$schnorr_verify_sign_159")
  store %TName_Bool* %"$schnorr_verify_call_161", %TName_Bool** %"$expr_6", align 8
  %"$$expr_6_163" = load %TName_Bool*, %TName_Bool** %"$expr_6", align 8
  ret %TName_Bool* %"$$expr_6_163"
}

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare %TName_Bool* @_schnorr_verify(i8*, [33 x i8]*, %Bystr, [64 x i8]*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_164" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_165" = bitcast %TName_Bool* %"$exprval_164" to i8*
  %"$execptr_load_166" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_166", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_47", i8* %"$memvoidcast_165")
  ret void
}
