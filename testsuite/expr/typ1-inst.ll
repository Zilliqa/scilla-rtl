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
%"$ParamDescr_202" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_203" = type { %ParamDescrString, i32, %"$ParamDescr_202"* }
%"$$fundef_15_env_52" = type {}
%"$$fundef_13_env_53" = type {}
%Uint32 = type { i32 }
%"$$fundef_11_env_54" = type {}
%"$$fundef_9_env_55" = type {}

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
@"$TyDescr_Bystr_Prim_44" = global %"$TyDescrTy_PrimTyp_17" { i32 7, i32 0 }
@"$TyDescr_Bystr_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Bystr_Prim_44" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [14 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_41", %_TyDescrTy_Typ* @"$TyDescr_Int64_23", %_TyDescrTy_Typ* @"$TyDescr_Uint256_33", %_TyDescrTy_Typ* @"$TyDescr_Uint32_21", %_TyDescrTy_Typ* @"$TyDescr_Uint64_25", %_TyDescrTy_Typ* @"$TyDescr_Bnum_37", %_TyDescrTy_Typ* @"$TyDescr_Uint128_29", %_TyDescrTy_Typ* @"$TyDescr_Exception_43", %_TyDescrTy_Typ* @"$TyDescr_String_35", %_TyDescrTy_Typ* @"$TyDescr_Int256_31", %_TyDescrTy_Typ* @"$TyDescr_Int128_27", %_TyDescrTy_Typ* @"$TyDescr_Bystr_45", %_TyDescrTy_Typ* @"$TyDescr_Message_39", %_TyDescrTy_Typ* @"$TyDescr_Int32_19"]
@_tydescr_table_length = constant i32 14
@_contract_parameters = constant [0 x %"$ParamDescr_202"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_203"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Int32 @"$fundef_15"(%"$$fundef_15_env_52"* %0, %Int32 %1) {
entry:
  %"$retval_16" = alloca %Int32, align 8
  %"$gasrem_86" = load i64, i64* @_gasrem, align 8
  %"$gascmp_87" = icmp ugt i64 1, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %entry
  %"$consume_90" = sub i64 %"$gasrem_86", 1
  store i64 %"$consume_90", i64* @_gasrem, align 8
  store %Int32 %1, %Int32* %"$retval_16", align 4
  %"$$retval_16_91" = load %Int32, %Int32* %"$retval_16", align 4
  ret %Int32 %"$$retval_16_91"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_13"(%"$$fundef_13_env_53"* %0, %Uint32 %1) {
entry:
  %"$retval_14" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %entry
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem, align 8
  store { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_15_env_52"*, %Int32)* @"$fundef_15" to %Int32 (i8*, %Int32)*), i8* null }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_14", align 8
  %"$$retval_14_85" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_14", align 8
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_14_85"
}

define internal { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_11"(%"$$fundef_11_env_54"* %0) {
entry:
  %"$retval_12" = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 1, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %entry
  %"$consume_72" = sub i64 %"$gasrem_68", 1
  store i64 %"$consume_72", i64* @_gasrem, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_13_env_53"*, %Uint32)* @"$fundef_13" to { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_12", align 8
  %"$$retval_12_76" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_12", align 8
  ret { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_12_76"
}

define internal { i8*, i8* }* @"$fundef_9"(%"$$fundef_9_env_55"* %0) {
entry:
  %"$retval_10" = alloca { i8*, i8* }*, align 8
  %"$gasrem_56" = load i64, i64* @_gasrem, align 8
  %"$gascmp_57" = icmp ugt i64 1, %"$gasrem_56"
  br i1 %"$gascmp_57", label %"$out_of_gas_58", label %"$have_gas_59"

"$out_of_gas_58":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_59"

"$have_gas_59":                                   ; preds = %"$out_of_gas_58", %entry
  %"$consume_60" = sub i64 %"$gasrem_56", 1
  store i64 %"$consume_60", i64* @_gasrem, align 8
  %"$dyndisp_table_64_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_64_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_64_salloc_load", i64 32)
  %"$dyndisp_table_64_salloc" = bitcast i8* %"$dyndisp_table_64_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_64" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_64_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_65" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_64", i32 1
  %"$dyndisp_pcast_66" = bitcast { i8*, i8* }* %"$dyndisp_gep_65" to { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_11_env_54"*)* @"$fundef_11" to { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_66", align 8
  store { i8*, i8* }* %"$dyndisp_table_64", { i8*, i8* }** %"$retval_10", align 8
  %"$$retval_10_67" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_10", align 8
  ret { i8*, i8* }* %"$$retval_10_67"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 5, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %entry
  %"$consume_96" = sub i64 %"$gasrem_92", 5
  store i64 %"$consume_96", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 8, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %"$have_gas_95"
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %"$have_gas_95"
  %"$consume_101" = sub i64 %"$gasrem_97", 8
  store i64 %"$consume_101", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 196, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$have_gas_100"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$have_gas_100"
  %"$consume_106" = sub i64 %"$gasrem_102", 196
  store i64 %"$consume_106", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_108" = icmp ugt i64 20, %"$gasrem_107"
  br i1 %"$gascmp_108", label %"$out_of_gas_109", label %"$have_gas_110"

"$out_of_gas_109":                                ; preds = %"$have_gas_105"
  call void @_out_of_gas()
  br label %"$have_gas_110"

"$have_gas_110":                                  ; preds = %"$out_of_gas_109", %"$have_gas_105"
  %"$consume_111" = sub i64 %"$gasrem_107", 20
  store i64 %"$consume_111", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 12, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %"$have_gas_110"
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %"$have_gas_110"
  %"$consume_116" = sub i64 %"$gasrem_112", 12
  store i64 %"$consume_116", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 2, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %"$have_gas_115"
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %"$have_gas_115"
  %"$consume_121" = sub i64 %"$gasrem_117", 2
  store i64 %"$consume_121", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_8" = alloca %Int32, align 8
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
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_9_env_55"*)* @"$fundef_9" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_137", align 8
  store { i8*, i8* }* %"$dyndisp_table_135", { i8*, i8* }** %tf, align 8
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_130"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_130"
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem, align 8
  %t = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$have_gas_141"
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %"$tf_148" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_149" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_148", i32 0
  %"$tf_150" = bitcast { i8*, i8* }* %"$tf_149" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_151" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_150", align 8
  %"$tf_fptr_152" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_151", 0
  %"$tf_envptr_153" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_151", 1
  %"$tf_call_154" = call { i8*, i8* }* %"$tf_fptr_152"(i8* %"$tf_envptr_153")
  %"$tf_155" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_154", i32 1
  %"$tf_156" = bitcast { i8*, i8* }* %"$tf_155" to { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_157" = load { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_156", align 8
  %"$tf_fptr_158" = extractvalue { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_157", 0
  %"$tf_envptr_159" = extractvalue { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_157", 1
  %"$tf_call_160" = call { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_158"(i8* %"$tf_envptr_159")
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_160", { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %t, align 8
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_146"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_164"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_169"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %two = alloca %Int32, align 8
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_174"
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* %two, align 4
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_179"
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %"$t_6" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$t_186" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %t, align 8
  %"$t_fptr_187" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$t_186", 0
  %"$t_envptr_188" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$t_186", 1
  %"$one_189" = load %Uint32, %Uint32* %one, align 4
  %"$t_call_190" = call { %Int32 (i8*, %Int32)*, i8* } %"$t_fptr_187"(i8* %"$t_envptr_188", %Uint32 %"$one_189")
  store { %Int32 (i8*, %Int32)*, i8* } %"$t_call_190", { %Int32 (i8*, %Int32)*, i8* }* %"$t_6", align 8
  %"$t_7" = alloca %Int32, align 8
  %"$$t_6_191" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$t_6", align 8
  %"$$t_6_fptr_192" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$t_6_191", 0
  %"$$t_6_envptr_193" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$t_6_191", 1
  %"$two_194" = load %Int32, %Int32* %two, align 4
  %"$$t_6_call_195" = call %Int32 %"$$t_6_fptr_192"(i8* %"$$t_6_envptr_193", %Int32 %"$two_194")
  store %Int32 %"$$t_6_call_195", %Int32* %"$t_7", align 4
  %"$$t_7_196" = load %Int32, %Int32* %"$t_7", align 4
  store %Int32 %"$$t_7_196", %Int32* %"$expr_8", align 4
  %"$$expr_8_197" = load %Int32, %Int32* %"$expr_8", align 4
  ret %Int32 %"$$expr_8_197"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_198" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_199" = alloca %Int32, align 8
  %"$memvoidcast_200" = bitcast %Int32* %"$pval_199" to i8*
  store %Int32 %"$exprval_198", %Int32* %"$pval_199", align 4
  %"$execptr_load_201" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_201", %_TyDescrTy_Typ* @"$TyDescr_Int32_19", i8* %"$memvoidcast_200")
  ret void
}
