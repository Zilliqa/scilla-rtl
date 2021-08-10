

; gas_remaining: 4002000
; ModuleID = 'SimpleUnuccury2'
source_filename = "SimpleUnuccury2"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin19.6.0"

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_AddrTyp_43" = type { i32, %"$TyDescr_AddrFieldTyp_42"* }
%"$TyDescr_AddrFieldTyp_42" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_157" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_158" = type { %ParamDescrString, i32, %"$ParamDescr_157"* }
%"$$fundef_4_env_46" = type { %Int32 }
%"$$fundef_2_env_47" = type {}
%Uint128 = type { i128 }

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
@"$TyDescr_Bystr_Prim_34" = global %"$TyDescrTy_PrimTyp_7" { i32 7, i32 0 }
@"$TyDescr_Bystr_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr_Prim_34" to i8*) }
@"$TyDescr_Bystr20_Prim_36" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 20 }
@"$TyDescr_Bystr20_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr20_Prim_36" to i8*) }
@"$TyDescr_Addr_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_43"* @"$TyDescr_AddrFields_45" to i8*) }
@"$TyDescr_AddrFields_45" = unnamed_addr constant %"$TyDescr_AddrTyp_43" { i32 -1, %"$TyDescr_AddrFieldTyp_42"* null }
@uncurry2.uncur_lib_func = global { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$res_83" = unnamed_addr constant [4 x i8] c"res\00"
@"$res_142" = unnamed_addr constant [4 x i8] c"res\00"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Addr_44", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 16
@"$pname__scilla_version_159" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_160" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_161" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_157"] [%"$ParamDescr_157" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_159", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_11" }, %"$ParamDescr_157" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_160", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37" }, %"$ParamDescr_157" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_161", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_27" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_162" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_163" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_164" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x1_165" = unnamed_addr constant [2 x i8] c"x1"
@"$tpname_x2_166" = unnamed_addr constant [2 x i8] c"x2"
@"$tparams_dummy_167" = unnamed_addr constant [5 x %"$ParamDescr_157"] [%"$ParamDescr_157" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_162", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_157" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_163", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_157" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_164", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_157" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tpname_x1_165", i32 0, i32 0), i32 2 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_9" }, %"$ParamDescr_157" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tpname_x2_166", i32 0, i32 0), i32 2 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_9" }]
@"$tname_dummy_168" = unnamed_addr constant [5 x i8] c"dummy"
@_transition_parameters = constant [1 x %"$TransDescr_158"] [%"$TransDescr_158" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tname_dummy_168", i32 0, i32 0), i32 5 }, i32 5, %"$ParamDescr_157"* getelementptr inbounds ([5 x %"$ParamDescr_157"], [5 x %"$ParamDescr_157"]* @"$tparams_dummy_167", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define internal %Int32 @"$fundef_4"(%"$$fundef_4_env_46"* %0, %Int32 %1) {
entry:
  %"$$fundef_4_env_a_59" = getelementptr inbounds %"$$fundef_4_env_46", %"$$fundef_4_env_46"* %0, i32 0, i32 0
  %"$a_envload_60" = load %Int32, %Int32* %"$$fundef_4_env_a_59", align 4
  %a = alloca %Int32, align 8
  store %Int32 %"$a_envload_60", %Int32* %a, align 4
  %"$retval_5" = alloca %Int32, align 8
  %"$gasrem_61" = load i64, i64* @_gasrem, align 8
  %"$gascmp_62" = icmp ugt i64 4, %"$gasrem_61"
  br i1 %"$gascmp_62", label %"$out_of_gas_63", label %"$have_gas_64"

"$out_of_gas_63":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_64"

"$have_gas_64":                                   ; preds = %"$out_of_gas_63", %entry
  %"$consume_65" = sub i64 %"$gasrem_61", 4
  store i64 %"$consume_65", i64* @_gasrem, align 8
  %"$a_66" = load %Int32, %Int32* %a, align 4
  %"$add_call_67" = call %Int32 @_add_Int32(%Int32 %"$a_66", %Int32 %1)
  store %Int32 %"$add_call_67", %Int32* %"$retval_5", align 4
  %"$$retval_5_68" = load %Int32, %Int32* %"$retval_5", align 4
  ret %Int32 %"$$retval_5_68"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_2"(%"$$fundef_2_env_47"* %0, %Int32 %1) {
entry:
  %"$retval_3" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_48" = load i64, i64* @_gasrem, align 8
  %"$gascmp_49" = icmp ugt i64 1, %"$gasrem_48"
  br i1 %"$gascmp_49", label %"$out_of_gas_50", label %"$have_gas_51"

"$out_of_gas_50":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_51"

"$have_gas_51":                                   ; preds = %"$out_of_gas_50", %entry
  %"$consume_52" = sub i64 %"$gasrem_48", 1
  store i64 %"$consume_52", i64* @_gasrem, align 8
  %"$$fundef_4_envp_53_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_4_envp_53_salloc" = call i8* @_salloc(i8* %"$$fundef_4_envp_53_load", i64 4)
  %"$$fundef_4_envp_53" = bitcast i8* %"$$fundef_4_envp_53_salloc" to %"$$fundef_4_env_46"*
  %"$$fundef_4_env_voidp_55" = bitcast %"$$fundef_4_env_46"* %"$$fundef_4_envp_53" to i8*
  %"$$fundef_4_cloval_56" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_4_env_46"*, %Int32)* @"$fundef_4" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_4_env_voidp_55", 1
  %"$$fundef_4_env_a_57" = getelementptr inbounds %"$$fundef_4_env_46", %"$$fundef_4_env_46"* %"$$fundef_4_envp_53", i32 0, i32 0
  store %Int32 %1, %Int32* %"$$fundef_4_env_a_57", align 4
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_4_cloval_56", { %Int32 (i8*, %Int32)*, i8* }* %"$retval_3", align 8
  %"$$retval_3_58" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_3", align 8
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_3_58"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() {
entry:
  %"$gasrem_69" = load i64, i64* @_gasrem, align 8
  %"$gascmp_70" = icmp ugt i64 1, %"$gasrem_69"
  br i1 %"$gascmp_70", label %"$out_of_gas_71", label %"$have_gas_72"

"$out_of_gas_71":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_72"

"$have_gas_72":                                   ; preds = %"$out_of_gas_71", %entry
  %"$consume_73" = sub i64 %"$gasrem_69", 1
  store i64 %"$consume_73", i64* @_gasrem, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_2_env_47"*, %Int32)* @"$fundef_2" to { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* @uncurry2.uncur_lib_func, align 8
  ret void
}

define void @_init_state() {
entry:
  %"$res_6" = alloca %Int32, align 8
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %entry
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$res_6", align 4
  %"$execptr_load_82" = load i8*, i8** @_execptr, align 8
  %"$$res_6_84" = load %Int32, %Int32* %"$res_6", align 4
  %"$update_value_85" = alloca %Int32, align 8
  store %Int32 %"$$res_6_84", %Int32* %"$update_value_85", align 4
  %"$update_value_86" = bitcast %Int32* %"$update_value_85" to i8*
  call void @_update_field(i8* %"$execptr_load_82", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$res_83", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_9", i32 0, i8* null, i8* %"$update_value_86")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$dummy_87"(%Uint128 %_amount, [20 x i8]* %"$_origin_88", [20 x i8]* %"$_sender_89", %Int32 %x1, %Int32 %x2) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_88", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_89", align 1
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %entry
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  %partial_app1 = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_93"
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem, align 8
  %"$uncurry2.uncur_lib_func_0" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$uncurry2.uncur_lib_func_100" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* @uncurry2.uncur_lib_func, align 8
  %"$uncurry2.uncur_lib_func_fptr_101" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$uncurry2.uncur_lib_func_100", 0
  %"$uncurry2.uncur_lib_func_envptr_102" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$uncurry2.uncur_lib_func_100", 1
  %"$uncurry2.uncur_lib_func_call_103" = call { %Int32 (i8*, %Int32)*, i8* } %"$uncurry2.uncur_lib_func_fptr_101"(i8* %"$uncurry2.uncur_lib_func_envptr_102", %Int32 %x1)
  store { %Int32 (i8*, %Int32)*, i8* } %"$uncurry2.uncur_lib_func_call_103", { %Int32 (i8*, %Int32)*, i8* }* %"$uncurry2.uncur_lib_func_0", align 8
  %"$$uncurry2.uncur_lib_func_0_104" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$uncurry2.uncur_lib_func_0", align 8
  store { %Int32 (i8*, %Int32)*, i8* } %"$$uncurry2.uncur_lib_func_0_104", { %Int32 (i8*, %Int32)*, i8* }* %partial_app1, align 8
  %"$gasrem_105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_106" = icmp ugt i64 1, %"$gasrem_105"
  br i1 %"$gascmp_106", label %"$out_of_gas_107", label %"$have_gas_108"

"$out_of_gas_107":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_108"

"$have_gas_108":                                  ; preds = %"$out_of_gas_107", %"$have_gas_98"
  %"$consume_109" = sub i64 %"$gasrem_105", 1
  store i64 %"$consume_109", i64* @_gasrem, align 8
  %total_app = alloca %Int32, align 8
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_108"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_108"
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %"$partial_app1_1" = alloca %Int32, align 8
  %"$partial_app1_115" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %partial_app1, align 8
  %"$partial_app1_fptr_116" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$partial_app1_115", 0
  %"$partial_app1_envptr_117" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$partial_app1_115", 1
  %"$partial_app1_call_118" = call %Int32 %"$partial_app1_fptr_116"(i8* %"$partial_app1_envptr_117", %Int32 %x2)
  store %Int32 %"$partial_app1_call_118", %Int32* %"$partial_app1_1", align 4
  %"$$partial_app1_1_119" = load %Int32, %Int32* %"$partial_app1_1", align 4
  store %Int32 %"$$partial_app1_1_119", %Int32* %total_app, align 4
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$have_gas_113"
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem, align 8
  %y = alloca %Int32, align 8
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 4, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_123"
  %"$consume_129" = sub i64 %"$gasrem_125", 4
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %"$total_app_130" = load %Int32, %Int32* %total_app, align 4
  %"$add_call_131" = call %Int32 @_add_Int32(%Int32 %x1, %Int32 %"$total_app_130")
  store %Int32 %"$add_call_131", %Int32* %y, align 4
  %"$_literal_cost_y_132" = alloca %Int32, align 8
  %"$y_133" = load %Int32, %Int32* %y, align 4
  store %Int32 %"$y_133", %Int32* %"$_literal_cost_y_132", align 4
  %"$$_literal_cost_y_132_134" = bitcast %Int32* %"$_literal_cost_y_132" to i8*
  %"$_literal_cost_call_135" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_9", i8* %"$$_literal_cost_y_132_134")
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 %"$_literal_cost_call_135", %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$have_gas_128"
  %"$consume_140" = sub i64 %"$gasrem_136", %"$_literal_cost_call_135"
  store i64 %"$consume_140", i64* @_gasrem, align 8
  %"$execptr_load_141" = load i8*, i8** @_execptr, align 8
  %"$y_143" = load %Int32, %Int32* %y, align 4
  %"$update_value_144" = alloca %Int32, align 8
  store %Int32 %"$y_143", %Int32* %"$update_value_144", align 4
  %"$update_value_145" = bitcast %Int32* %"$update_value_144" to i8*
  call void @_update_field(i8* %"$execptr_load_141", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$res_142", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_9", i32 0, i8* null, i8* %"$update_value_145")
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @dummy(i8* %0) {
entry:
  %"$_amount_147" = getelementptr i8, i8* %0, i32 0
  %"$_amount_148" = bitcast i8* %"$_amount_147" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_148", align 8
  %"$_origin_149" = getelementptr i8, i8* %0, i32 16
  %"$_origin_150" = bitcast i8* %"$_origin_149" to [20 x i8]*
  %"$_sender_151" = getelementptr i8, i8* %0, i32 36
  %"$_sender_152" = bitcast i8* %"$_sender_151" to [20 x i8]*
  %"$x1_153" = getelementptr i8, i8* %0, i32 56
  %"$x1_154" = bitcast i8* %"$x1_153" to %Int32*
  %x1 = load %Int32, %Int32* %"$x1_154", align 4
  %"$x2_155" = getelementptr i8, i8* %0, i32 60
  %"$x2_156" = bitcast i8* %"$x2_155" to %Int32*
  %x2 = load %Int32, %Int32* %"$x2_156", align 4
  call void @"$dummy_87"(%Uint128 %_amount, [20 x i8]* %"$_origin_150", [20 x i8]* %"$_sender_152", %Int32 %x1, %Int32 %x2)
  ret void
}
