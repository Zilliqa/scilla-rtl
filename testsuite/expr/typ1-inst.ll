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

%"$TyDescrTy_PrimTyp_17" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Int32 = type { i32 }
%"$ParamDescr_204" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_205" = type { %ParamDescrString, i32, %"$ParamDescr_204"* }
%"$$fundef_15_env_54" = type {}
%"$$fundef_13_env_55" = type {}
%Uint32 = type { i32 }
%"$$fundef_11_env_56" = type {}
%"$$fundef_9_env_57" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_18" = global %"$TyDescrTy_PrimTyp_17" zeroinitializer
@"$TyDescr_Int32_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Int32_Prim_18" to i8*) }
@"$TyDescr_Uint32_Prim_20" = global %"$TyDescrTy_PrimTyp_17" { i32 1, i32 0 }
@"$TyDescr_Uint32_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Uint32_Prim_20" to i8*) }
@"$TyDescr_Int64_Prim_22" = global %"$TyDescrTy_PrimTyp_17" { i32 0, i32 1 }
@"$TyDescr_Int64_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Int64_Prim_22" to i8*) }
@"$TyDescr_Uint64_Prim_24" = global %"$TyDescrTy_PrimTyp_17" { i32 1, i32 1 }
@"$TyDescr_Uint64_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Uint64_Prim_24" to i8*) }
@"$TyDescr_Int128_Prim_26" = global %"$TyDescrTy_PrimTyp_17" { i32 0, i32 2 }
@"$TyDescr_Int128_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Int128_Prim_26" to i8*) }
@"$TyDescr_Uint128_Prim_28" = global %"$TyDescrTy_PrimTyp_17" { i32 1, i32 2 }
@"$TyDescr_Uint128_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Uint128_Prim_28" to i8*) }
@"$TyDescr_Int256_Prim_30" = global %"$TyDescrTy_PrimTyp_17" { i32 0, i32 3 }
@"$TyDescr_Int256_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Int256_Prim_30" to i8*) }
@"$TyDescr_Uint256_Prim_32" = global %"$TyDescrTy_PrimTyp_17" { i32 1, i32 3 }
@"$TyDescr_Uint256_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Uint256_Prim_32" to i8*) }
@"$TyDescr_String_Prim_34" = global %"$TyDescrTy_PrimTyp_17" { i32 2, i32 0 }
@"$TyDescr_String_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_String_Prim_34" to i8*) }
@"$TyDescr_Bnum_Prim_36" = global %"$TyDescrTy_PrimTyp_17" { i32 3, i32 0 }
@"$TyDescr_Bnum_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Bnum_Prim_36" to i8*) }
@"$TyDescr_Message_Prim_38" = global %"$TyDescrTy_PrimTyp_17" { i32 4, i32 0 }
@"$TyDescr_Message_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Message_Prim_38" to i8*) }
@"$TyDescr_Event_Prim_40" = global %"$TyDescrTy_PrimTyp_17" { i32 5, i32 0 }
@"$TyDescr_Event_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Event_Prim_40" to i8*) }
@"$TyDescr_Exception_Prim_42" = global %"$TyDescrTy_PrimTyp_17" { i32 6, i32 0 }
@"$TyDescr_Exception_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Exception_Prim_42" to i8*) }
@"$TyDescr_ReplicateContr_Prim_44" = global %"$TyDescrTy_PrimTyp_17" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_ReplicateContr_Prim_44" to i8*) }
@"$TyDescr_Bystr_Prim_46" = global %"$TyDescrTy_PrimTyp_17" { i32 7, i32 0 }
@"$TyDescr_Bystr_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Bystr_Prim_46" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_41", %_TyDescrTy_Typ* @"$TyDescr_Int64_23", %_TyDescrTy_Typ* @"$TyDescr_Uint256_33", %_TyDescrTy_Typ* @"$TyDescr_Uint32_21", %_TyDescrTy_Typ* @"$TyDescr_Uint64_25", %_TyDescrTy_Typ* @"$TyDescr_Bnum_37", %_TyDescrTy_Typ* @"$TyDescr_Uint128_29", %_TyDescrTy_Typ* @"$TyDescr_Exception_43", %_TyDescrTy_Typ* @"$TyDescr_String_35", %_TyDescrTy_Typ* @"$TyDescr_Int256_31", %_TyDescrTy_Typ* @"$TyDescr_Int128_27", %_TyDescrTy_Typ* @"$TyDescr_Bystr_47", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_45", %_TyDescrTy_Typ* @"$TyDescr_Message_39", %_TyDescrTy_Typ* @"$TyDescr_Int32_19"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_204"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_205"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Int32 @"$fundef_15"(%"$$fundef_15_env_54"* %0, %Int32 %1) {
entry:
  %"$retval_16" = alloca %Int32, align 8
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %entry
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem, align 8
  store %Int32 %1, %Int32* %"$retval_16", align 4
  %"$$retval_16_93" = load %Int32, %Int32* %"$retval_16", align 4
  ret %Int32 %"$$retval_16_93"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_13"(%"$$fundef_13_env_55"* %0, %Uint32 %1) {
entry:
  %"$retval_14" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 1, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %entry
  %"$consume_83" = sub i64 %"$gasrem_79", 1
  store i64 %"$consume_83", i64* @_gasrem, align 8
  store { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_15_env_54"*, %Int32)* @"$fundef_15" to %Int32 (i8*, %Int32)*), i8* null }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_14", align 8
  %"$$retval_14_87" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_14", align 8
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_14_87"
}

define internal { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_11"(%"$$fundef_11_env_56"* %0) {
entry:
  %"$retval_12" = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 1, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %entry
  %"$consume_74" = sub i64 %"$gasrem_70", 1
  store i64 %"$consume_74", i64* @_gasrem, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_13_env_55"*, %Uint32)* @"$fundef_13" to { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_12", align 8
  %"$$retval_12_78" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_12", align 8
  ret { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_12_78"
}

define internal { i8*, i8* }* @"$fundef_9"(%"$$fundef_9_env_57"* %0) {
entry:
  %"$retval_10" = alloca { i8*, i8* }*, align 8
  %"$gasrem_58" = load i64, i64* @_gasrem, align 8
  %"$gascmp_59" = icmp ugt i64 1, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %entry
  %"$consume_62" = sub i64 %"$gasrem_58", 1
  store i64 %"$consume_62", i64* @_gasrem, align 8
  %"$dyndisp_table_66_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_66_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_66_salloc_load", i64 32)
  %"$dyndisp_table_66_salloc" = bitcast i8* %"$dyndisp_table_66_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_66" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_66_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_67" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_66", i32 1
  %"$dyndisp_pcast_68" = bitcast { i8*, i8* }* %"$dyndisp_gep_67" to { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_11_env_56"*)* @"$fundef_11" to { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_68", align 8
  store { i8*, i8* }* %"$dyndisp_table_66", { i8*, i8* }** %"$retval_10", align 8
  %"$$retval_10_69" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_10", align 8
  ret { i8*, i8* }* %"$$retval_10_69"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 5, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %entry
  %"$consume_98" = sub i64 %"$gasrem_94", 5
  store i64 %"$consume_98", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_99" = load i64, i64* @_gasrem, align 8
  %"$gascmp_100" = icmp ugt i64 8, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %"$have_gas_97"
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %"$have_gas_97"
  %"$consume_103" = sub i64 %"$gasrem_99", 8
  store i64 %"$consume_103", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 196, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$have_gas_102"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$have_gas_102"
  %"$consume_108" = sub i64 %"$gasrem_104", 196
  store i64 %"$consume_108", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_110" = icmp ugt i64 20, %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %"$have_gas_107"
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %"$have_gas_107"
  %"$consume_113" = sub i64 %"$gasrem_109", 20
  store i64 %"$consume_113", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 12, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %"$have_gas_112"
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %"$have_gas_112"
  %"$consume_118" = sub i64 %"$gasrem_114", 12
  store i64 %"$consume_118", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 2, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %"$have_gas_117"
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %"$have_gas_117"
  %"$consume_123" = sub i64 %"$gasrem_119", 2
  store i64 %"$consume_123", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_8" = alloca %Int32, align 8
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %entry
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %"$dyndisp_table_137_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_137_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_137_salloc_load", i64 32)
  %"$dyndisp_table_137_salloc" = bitcast i8* %"$dyndisp_table_137_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_137" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_137_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_138" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_137", i32 0
  %"$dyndisp_pcast_139" = bitcast { i8*, i8* }* %"$dyndisp_gep_138" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_9_env_57"*)* @"$fundef_9" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_139", align 8
  store { i8*, i8* }* %"$dyndisp_table_137", { i8*, i8* }** %tf, align 8
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_132"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %t = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$tf_150" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_151" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_150", i32 0
  %"$tf_152" = bitcast { i8*, i8* }* %"$tf_151" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_153" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_152", align 8
  %"$tf_fptr_154" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_153", 0
  %"$tf_envptr_155" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_153", 1
  %"$tf_call_156" = call { i8*, i8* }* %"$tf_fptr_154"(i8* %"$tf_envptr_155")
  %"$tf_157" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_156", i32 1
  %"$tf_158" = bitcast { i8*, i8* }* %"$tf_157" to { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_159" = load { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_158", align 8
  %"$tf_fptr_160" = extractvalue { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_159", 0
  %"$tf_envptr_161" = extractvalue { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_159", 1
  %"$tf_call_162" = call { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_160"(i8* %"$tf_envptr_161")
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_162", { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %t, align 8
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %"$have_gas_148"
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %"$have_gas_166"
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %"$have_gas_166"
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 1, %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %"$have_gas_171"
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %"$have_gas_171"
  %"$consume_177" = sub i64 %"$gasrem_173", 1
  store i64 %"$consume_177", i64* @_gasrem, align 8
  %two = alloca %Int32, align 8
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 1, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_176"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_176"
  %"$consume_182" = sub i64 %"$gasrem_178", 1
  store i64 %"$consume_182", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* %two, align 4
  %"$gasrem_183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_184" = icmp ugt i64 1, %"$gasrem_183"
  br i1 %"$gascmp_184", label %"$out_of_gas_185", label %"$have_gas_186"

"$out_of_gas_185":                                ; preds = %"$have_gas_181"
  call void @_out_of_gas()
  br label %"$have_gas_186"

"$have_gas_186":                                  ; preds = %"$out_of_gas_185", %"$have_gas_181"
  %"$consume_187" = sub i64 %"$gasrem_183", 1
  store i64 %"$consume_187", i64* @_gasrem, align 8
  %"$t_6" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$t_188" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %t, align 8
  %"$t_fptr_189" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$t_188", 0
  %"$t_envptr_190" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$t_188", 1
  %"$one_191" = load %Uint32, %Uint32* %one, align 4
  %"$t_call_192" = call { %Int32 (i8*, %Int32)*, i8* } %"$t_fptr_189"(i8* %"$t_envptr_190", %Uint32 %"$one_191")
  store { %Int32 (i8*, %Int32)*, i8* } %"$t_call_192", { %Int32 (i8*, %Int32)*, i8* }* %"$t_6", align 8
  %"$t_7" = alloca %Int32, align 8
  %"$$t_6_193" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$t_6", align 8
  %"$$t_6_fptr_194" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$t_6_193", 0
  %"$$t_6_envptr_195" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$t_6_193", 1
  %"$two_196" = load %Int32, %Int32* %two, align 4
  %"$$t_6_call_197" = call %Int32 %"$$t_6_fptr_194"(i8* %"$$t_6_envptr_195", %Int32 %"$two_196")
  store %Int32 %"$$t_6_call_197", %Int32* %"$t_7", align 4
  %"$$t_7_198" = load %Int32, %Int32* %"$t_7", align 4
  store %Int32 %"$$t_7_198", %Int32* %"$expr_8", align 4
  %"$$expr_8_199" = load %Int32, %Int32* %"$expr_8", align 4
  ret %Int32 %"$$expr_8_199"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_200" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_201" = alloca %Int32, align 8
  %"$memvoidcast_202" = bitcast %Int32* %"$pval_201" to i8*
  store %Int32 %"$exprval_200", %Int32* %"$pval_201", align 4
  %"$execptr_load_203" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_203", %_TyDescrTy_Typ* @"$TyDescr_Int32_19", i8* %"$memvoidcast_202")
  ret void
}
