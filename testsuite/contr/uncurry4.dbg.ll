; gas_remaining: 100000
; ModuleID = 'SimpleUnuccury4'
source_filename = "SimpleUnuccury4"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin19.6.0"

%"$TyDescrTy_PrimTyp_9" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_AddrTyp_45" = type { i32, %"$TyDescr_AddrFieldTyp_44"* }
%"$TyDescr_AddrFieldTyp_44" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%Uint32 = type { i32 }
%"$ParamDescr_201" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_202" = type { %ParamDescrString, i32, %"$ParamDescr_201"* }
%"$$fundef_3_env_48" = type {}
%Int32 = type { i32 }
%"$$fundef_7_env_49" = type { %Int32 }
%"$$fundef_5_env_50" = type {}
%Uint128 = type { i128 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_10" = global %"$TyDescrTy_PrimTyp_9" zeroinitializer
@"$TyDescr_Int32_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Int32_Prim_10" to i8*) }
@"$TyDescr_Uint32_Prim_12" = global %"$TyDescrTy_PrimTyp_9" { i32 1, i32 0 }
@"$TyDescr_Uint32_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Uint32_Prim_12" to i8*) }
@"$TyDescr_Int64_Prim_14" = global %"$TyDescrTy_PrimTyp_9" { i32 0, i32 1 }
@"$TyDescr_Int64_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Int64_Prim_14" to i8*) }
@"$TyDescr_Uint64_Prim_16" = global %"$TyDescrTy_PrimTyp_9" { i32 1, i32 1 }
@"$TyDescr_Uint64_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Uint64_Prim_16" to i8*) }
@"$TyDescr_Int128_Prim_18" = global %"$TyDescrTy_PrimTyp_9" { i32 0, i32 2 }
@"$TyDescr_Int128_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Int128_Prim_18" to i8*) }
@"$TyDescr_Uint128_Prim_20" = global %"$TyDescrTy_PrimTyp_9" { i32 1, i32 2 }
@"$TyDescr_Uint128_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Uint128_Prim_20" to i8*) }
@"$TyDescr_Int256_Prim_22" = global %"$TyDescrTy_PrimTyp_9" { i32 0, i32 3 }
@"$TyDescr_Int256_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Int256_Prim_22" to i8*) }
@"$TyDescr_Uint256_Prim_24" = global %"$TyDescrTy_PrimTyp_9" { i32 1, i32 3 }
@"$TyDescr_Uint256_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Uint256_Prim_24" to i8*) }
@"$TyDescr_String_Prim_26" = global %"$TyDescrTy_PrimTyp_9" { i32 2, i32 0 }
@"$TyDescr_String_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_String_Prim_26" to i8*) }
@"$TyDescr_Bnum_Prim_28" = global %"$TyDescrTy_PrimTyp_9" { i32 3, i32 0 }
@"$TyDescr_Bnum_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Bnum_Prim_28" to i8*) }
@"$TyDescr_Message_Prim_30" = global %"$TyDescrTy_PrimTyp_9" { i32 4, i32 0 }
@"$TyDescr_Message_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Message_Prim_30" to i8*) }
@"$TyDescr_Event_Prim_32" = global %"$TyDescrTy_PrimTyp_9" { i32 5, i32 0 }
@"$TyDescr_Event_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Event_Prim_32" to i8*) }
@"$TyDescr_Exception_Prim_34" = global %"$TyDescrTy_PrimTyp_9" { i32 6, i32 0 }
@"$TyDescr_Exception_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Exception_Prim_34" to i8*) }
@"$TyDescr_Bystr_Prim_36" = global %"$TyDescrTy_PrimTyp_9" { i32 7, i32 0 }
@"$TyDescr_Bystr_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Bystr_Prim_36" to i8*) }
@"$TyDescr_Bystr20_Prim_38" = global %"$TyDescrTy_PrimTyp_9" { i32 8, i32 20 }
@"$TyDescr_Bystr20_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Bystr20_Prim_38" to i8*) }
@"$TyDescr_Addr_46" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_45"* @"$TyDescr_AddrFields_47" to i8*) }
@"$TyDescr_AddrFields_47" = unnamed_addr constant %"$TyDescr_AddrTyp_45" { i32 -1, %"$TyDescr_AddrFieldTyp_44"* null }
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$res_85" = unnamed_addr constant [4 x i8] c"res\00"
@"$res_145" = unnamed_addr constant [4 x i8] c"res\00"
@"$res_186" = unnamed_addr constant [4 x i8] c"res\00"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_33", %_TyDescrTy_Typ* @"$TyDescr_Int64_15", %_TyDescrTy_Typ* @"$TyDescr_Addr_46", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39", %_TyDescrTy_Typ* @"$TyDescr_Uint256_25", %_TyDescrTy_Typ* @"$TyDescr_Uint32_13", %_TyDescrTy_Typ* @"$TyDescr_Uint64_17", %_TyDescrTy_Typ* @"$TyDescr_Bnum_29", %_TyDescrTy_Typ* @"$TyDescr_Uint128_21", %_TyDescrTy_Typ* @"$TyDescr_Exception_35", %_TyDescrTy_Typ* @"$TyDescr_String_27", %_TyDescrTy_Typ* @"$TyDescr_Int256_23", %_TyDescrTy_Typ* @"$TyDescr_Int128_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ* @"$TyDescr_Message_31", %_TyDescrTy_Typ* @"$TyDescr_Int32_11"]
@_tydescr_table_length = constant i32 16
@"$pname__scilla_version_203" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_204" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_205" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_201"] [%"$ParamDescr_201" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_203", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_13" }, %"$ParamDescr_201" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_204", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_39" }, %"$ParamDescr_201" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_205", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_29" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_206" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_207" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_208" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x1_209" = unnamed_addr constant [2 x i8] c"x1"
@"$tpname_x2_210" = unnamed_addr constant [2 x i8] c"x2"
@"$tparams_dummy_211" = unnamed_addr constant [5 x %"$ParamDescr_201"] [%"$ParamDescr_201" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_206", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_21" }, %"$ParamDescr_201" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_207", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_201" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_208", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_201" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tpname_x1_209", i32 0, i32 0), i32 2 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_11" }, %"$ParamDescr_201" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tpname_x2_210", i32 0, i32 0), i32 2 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_11" }]
@"$tname_dummy_212" = unnamed_addr constant [5 x i8] c"dummy"
@_transition_parameters = constant [1 x %"$TransDescr_202"] [%"$TransDescr_202" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tname_dummy_212", i32 0, i32 0), i32 5 }, i32 5, %"$ParamDescr_201"* getelementptr inbounds ([5 x %"$ParamDescr_201"], [5 x %"$ParamDescr_201"]* @"$tparams_dummy_211", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define internal %Int32 @"$fundef_3"(%"$$fundef_3_env_48"* %0, %Int32 %1, %Int32 %2) !dbg !4 {
entry:
  %"$retval_4" = alloca %Int32, align 8
  %"$gasrem_72" = load i64, i64* @_gasrem, align 8
  %"$gascmp_73" = icmp ugt i64 4, %"$gasrem_72"
  br i1 %"$gascmp_73", label %"$out_of_gas_74", label %"$have_gas_75"

"$out_of_gas_74":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_75"

"$have_gas_75":                                   ; preds = %"$out_of_gas_74", %entry
  %"$consume_76" = sub i64 %"$gasrem_72", 4
  store i64 %"$consume_76", i64* @_gasrem, align 8
  %"$add_call_77" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %2), !dbg !8
  store %Int32 %"$add_call_77", %Int32* %"$retval_4", align 4, !dbg !8
  %"$$retval_4_78" = load %Int32, %Int32* %"$retval_4", align 4
  ret %Int32 %"$$retval_4_78"
}

define internal %Int32 @"$fundef_7"(%"$$fundef_7_env_49"* %0, %Int32 %1) !dbg !9 {
entry:
  %"$$fundef_7_env_a_62" = getelementptr inbounds %"$$fundef_7_env_49", %"$$fundef_7_env_49"* %0, i32 0, i32 0
  %"$a_envload_63" = load %Int32, %Int32* %"$$fundef_7_env_a_62", align 4
  %a = alloca %Int32, align 8
  store %Int32 %"$a_envload_63", %Int32* %a, align 4
  %"$retval_8" = alloca %Int32, align 8
  %"$gasrem_64" = load i64, i64* @_gasrem, align 8
  %"$gascmp_65" = icmp ugt i64 4, %"$gasrem_64"
  br i1 %"$gascmp_65", label %"$out_of_gas_66", label %"$have_gas_67"

"$out_of_gas_66":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_67"

"$have_gas_67":                                   ; preds = %"$out_of_gas_66", %entry
  %"$consume_68" = sub i64 %"$gasrem_64", 4
  store i64 %"$consume_68", i64* @_gasrem, align 8
  %"$a_69" = load %Int32, %Int32* %a, align 4
  %"$add_call_70" = call %Int32 @_add_Int32(%Int32 %"$a_69", %Int32 %1), !dbg !10
  store %Int32 %"$add_call_70", %Int32* %"$retval_8", align 4, !dbg !10
  %"$$retval_8_71" = load %Int32, %Int32* %"$retval_8", align 4
  ret %Int32 %"$$retval_8_71"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_5"(%"$$fundef_5_env_50"* %0, %Int32 %1) !dbg !11 {
entry:
  %"$retval_6" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_51" = load i64, i64* @_gasrem, align 8
  %"$gascmp_52" = icmp ugt i64 1, %"$gasrem_51"
  br i1 %"$gascmp_52", label %"$out_of_gas_53", label %"$have_gas_54"

"$out_of_gas_53":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_54"

"$have_gas_54":                                   ; preds = %"$out_of_gas_53", %entry
  %"$consume_55" = sub i64 %"$gasrem_51", 1
  store i64 %"$consume_55", i64* @_gasrem, align 8
  %"$$fundef_7_envp_56_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_7_envp_56_salloc" = call i8* @_salloc(i8* %"$$fundef_7_envp_56_load", i64 4)
  %"$$fundef_7_envp_56" = bitcast i8* %"$$fundef_7_envp_56_salloc" to %"$$fundef_7_env_49"*
  %"$$fundef_7_env_voidp_58" = bitcast %"$$fundef_7_env_49"* %"$$fundef_7_envp_56" to i8*
  %"$$fundef_7_cloval_59" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_7_env_49"*, %Int32)* @"$fundef_7" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_7_env_voidp_58", 1
  %"$$fundef_7_env_a_60" = getelementptr inbounds %"$$fundef_7_env_49", %"$$fundef_7_env_49"* %"$$fundef_7_envp_56", i32 0, i32 0
  store %Int32 %1, %Int32* %"$$fundef_7_env_a_60", align 4
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_7_cloval_59", { %Int32 (i8*, %Int32)*, i8* }* %"$retval_6", align 8, !dbg !12
  %"$$retval_6_61" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_6", align 8
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_6_61"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() !dbg !13 {
entry:
  ret void
}

define void @_init_state() !dbg !15 {
entry:
  %"$res_2" = alloca %Int32, align 8
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 1, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %entry
  %"$consume_83" = sub i64 %"$gasrem_79", 1
  store i64 %"$consume_83", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$res_2", align 4, !dbg !16
  %"$execptr_load_84" = load i8*, i8** @_execptr, align 8
  %"$$res_2_86" = load %Int32, %Int32* %"$res_2", align 4
  %"$update_value_87" = alloca %Int32, align 8
  store %Int32 %"$$res_2_86", %Int32* %"$update_value_87", align 4
  %"$update_value_88" = bitcast %Int32* %"$update_value_87" to i8*
  call void @_update_field(i8* %"$execptr_load_84", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$res_85", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i32 0, i8* null, i8* %"$update_value_88"), !dbg !16
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$dummy_89"(%Uint128 %_amount, [20 x i8]* %"$_origin_90", [20 x i8]* %"$_sender_91", %Int32 %x1, %Int32 %x2) !dbg !17 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_90", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_91", align 1
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 1, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %entry
  %"$consume_96" = sub i64 %"$gasrem_92", 1
  store i64 %"$consume_96", i64* @_gasrem, align 8
  %x = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %"$have_gas_95"
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %"$have_gas_95"
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem, align 8
  %f = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 1, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$have_gas_100"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$have_gas_100"
  %"$consume_106" = sub i64 %"$gasrem_102", 1
  store i64 %"$consume_106", i64* @_gasrem, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_5_env_50"*, %Int32)* @"$fundef_5" to { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* %f, align 8, !dbg !18
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_105"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_105"
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %"$f_115" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* %f, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$f_115", { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* %x, align 8, !dbg !19
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$have_gas_113"
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem, align 8
  %total_app = alloca %Int32, align 8
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_119"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_119"
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  %"$x_0" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$x_126" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* %x, align 8
  %"$x_fptr_127" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$x_126", 0
  %"$x_envptr_128" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$x_126", 1
  %"$x_call_129" = call { %Int32 (i8*, %Int32)*, i8* } %"$x_fptr_127"(i8* %"$x_envptr_128", %Int32 %x1), !dbg !20
  store { %Int32 (i8*, %Int32)*, i8* } %"$x_call_129", { %Int32 (i8*, %Int32)*, i8* }* %"$x_0", align 8, !dbg !20
  %"$x_1" = alloca %Int32, align 8
  %"$$x_0_130" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$x_0", align 8
  %"$$x_0_fptr_131" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$x_0_130", 0
  %"$$x_0_envptr_132" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$x_0_130", 1
  %"$$x_0_call_133" = call %Int32 %"$$x_0_fptr_131"(i8* %"$$x_0_envptr_132", %Int32 %x2), !dbg !20
  store %Int32 %"$$x_0_call_133", %Int32* %"$x_1", align 4, !dbg !20
  %"$$x_1_134" = load %Int32, %Int32* %"$x_1", align 4
  store %Int32 %"$$x_1_134", %Int32* %total_app, align 4, !dbg !20
  %"$_literal_cost_total_app_135" = alloca %Int32, align 8
  %"$total_app_136" = load %Int32, %Int32* %total_app, align 4
  store %Int32 %"$total_app_136", %Int32* %"$_literal_cost_total_app_135", align 4
  %"$$_literal_cost_total_app_135_137" = bitcast %Int32* %"$_literal_cost_total_app_135" to i8*
  %"$_literal_cost_call_138" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$_literal_cost_total_app_135_137")
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 %"$_literal_cost_call_138", %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_124"
  %"$consume_143" = sub i64 %"$gasrem_139", %"$_literal_cost_call_138"
  store i64 %"$consume_143", i64* @_gasrem, align 8
  %"$execptr_load_144" = load i8*, i8** @_execptr, align 8
  %"$total_app_146" = load %Int32, %Int32* %total_app, align 4
  %"$update_value_147" = alloca %Int32, align 8
  store %Int32 %"$total_app_146", %Int32* %"$update_value_147", align 4
  %"$update_value_148" = bitcast %Int32* %"$update_value_147" to i8*
  call void @_update_field(i8* %"$execptr_load_144", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$res_145", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i32 0, i8* null, i8* %"$update_value_148"), !dbg !21
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 1, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %"$have_gas_142"
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %"$have_gas_142"
  %"$consume_153" = sub i64 %"$gasrem_149", 1
  store i64 %"$consume_153", i64* @_gasrem, align 8
  %y = alloca { %Int32 (i8*, %Int32, %Int32)*, i8* }, align 8
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 2, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %"$have_gas_152"
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %"$have_gas_152"
  %"$consume_158" = sub i64 %"$gasrem_154", 2
  store i64 %"$consume_158", i64* @_gasrem, align 8
  store { %Int32 (i8*, %Int32, %Int32)*, i8* } { %Int32 (i8*, %Int32, %Int32)* bitcast (%Int32 (%"$$fundef_3_env_48"*, %Int32, %Int32)* @"$fundef_3" to %Int32 (i8*, %Int32, %Int32)*), i8* null }, { %Int32 (i8*, %Int32, %Int32)*, i8* }* %y, align 8, !dbg !22
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_157"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_157"
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %total_app2 = alloca %Int32, align 8
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 1, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$have_gas_165"
  %"$consume_171" = sub i64 %"$gasrem_167", 1
  store i64 %"$consume_171", i64* @_gasrem, align 8
  %"$y_172" = load { %Int32 (i8*, %Int32, %Int32)*, i8* }, { %Int32 (i8*, %Int32, %Int32)*, i8* }* %y, align 8
  %"$y_fptr_173" = extractvalue { %Int32 (i8*, %Int32, %Int32)*, i8* } %"$y_172", 0
  %"$y_envptr_174" = extractvalue { %Int32 (i8*, %Int32, %Int32)*, i8* } %"$y_172", 1
  %"$y_call_175" = call %Int32 %"$y_fptr_173"(i8* %"$y_envptr_174", %Int32 %x1, %Int32 %x2), !dbg !23
  store %Int32 %"$y_call_175", %Int32* %total_app2, align 4, !dbg !23
  %"$_literal_cost_total_app2_176" = alloca %Int32, align 8
  %"$total_app2_177" = load %Int32, %Int32* %total_app2, align 4
  store %Int32 %"$total_app2_177", %Int32* %"$_literal_cost_total_app2_176", align 4
  %"$$_literal_cost_total_app2_176_178" = bitcast %Int32* %"$_literal_cost_total_app2_176" to i8*
  %"$_literal_cost_call_179" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$_literal_cost_total_app2_176_178")
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 %"$_literal_cost_call_179", %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_170"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_170"
  %"$consume_184" = sub i64 %"$gasrem_180", %"$_literal_cost_call_179"
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %"$execptr_load_185" = load i8*, i8** @_execptr, align 8
  %"$total_app2_187" = load %Int32, %Int32* %total_app2, align 4
  %"$update_value_188" = alloca %Int32, align 8
  store %Int32 %"$total_app2_187", %Int32* %"$update_value_188", align 4
  %"$update_value_189" = bitcast %Int32* %"$update_value_188" to i8*
  call void @_update_field(i8* %"$execptr_load_185", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$res_186", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i32 0, i8* null, i8* %"$update_value_189"), !dbg !24
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @dummy(i8* %0) !dbg !25 {
entry:
  %"$_amount_191" = getelementptr i8, i8* %0, i32 0
  %"$_amount_192" = bitcast i8* %"$_amount_191" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_192", align 8
  %"$_origin_193" = getelementptr i8, i8* %0, i32 16
  %"$_origin_194" = bitcast i8* %"$_origin_193" to [20 x i8]*
  %"$_sender_195" = getelementptr i8, i8* %0, i32 36
  %"$_sender_196" = bitcast i8* %"$_sender_195" to [20 x i8]*
  %"$x1_197" = getelementptr i8, i8* %0, i32 56
  %"$x1_198" = bitcast i8* %"$x1_197" to %Int32*
  %x1 = load %Int32, %Int32* %"$x1_198", align 4
  %"$x2_199" = getelementptr i8, i8* %0, i32 60
  %"$x2_200" = bitcast i8* %"$x2_199" to %Int32*
  %x2 = load %Int32, %Int32* %"$x2_200", align 4
  call void @"$dummy_89"(%Uint128 %_amount, [20 x i8]* %"$_origin_194", [20 x i8]* %"$_sender_196", %Int32 %x1, %Int32 %x2), !dbg !26
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "uncurry4.scilla", directory: "tests/codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_3", linkageName: "$fundef_3", scope: !2, file: !2, line: 22, type: !5, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 23, column: 13, scope: !4)
!9 = distinct !DISubprogram(name: "$fundef_7", linkageName: "$fundef_7", scope: !2, file: !2, line: 15, type: !5, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 15, column: 17, scope: !9)
!11 = distinct !DISubprogram(name: "$fundef_5", linkageName: "$fundef_5", scope: !2, file: !2, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 15, column: 17, scope: !11)
!13 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !14, file: !14, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = !DIFile(filename: ".", directory: ".")
!15 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !14, file: !14, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 7, column: 21, scope: !15)
!17 = distinct !DISubprogram(name: "dummy", linkageName: "dummy", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 14, column: 13, scope: !17)
!19 = !DILocation(line: 16, column: 17, scope: !17)
!20 = !DILocation(line: 17, column: 17, scope: !17)
!21 = !DILocation(line: 18, column: 5, scope: !17)
!22 = !DILocation(line: 22, column: 9, scope: !17)
!23 = !DILocation(line: 24, column: 18, scope: !17)
!24 = !DILocation(line: 26, column: 5, scope: !17)
!25 = distinct !DISubprogram(name: "dummy", linkageName: "dummy", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!26 = !DILocation(line: 9, column: 12, scope: !25)