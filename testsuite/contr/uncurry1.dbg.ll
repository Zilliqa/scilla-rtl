; gas_remaining: 100000
; ModuleID = 'SimpleUnuccury'
source_filename = "SimpleUnuccury"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin19.6.0"

%"$TyDescrTy_PrimTyp_24" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_56" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_55"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_55" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_57"**, %"$TyDescrTy_ADTTyp_56"* }
%"$TyDescrTy_ADTTyp_Constr_57" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_61" = type { i32, %"$TyDescr_AddrFieldTyp_60"* }
%"$TyDescr_AddrFieldTyp_60" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_455" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_456" = type { %ParamDescrString, i32, %"$ParamDescr_455"* }
%"$$fundef_22_env_76" = type { %Int32 }
%"$$fundef_20_env_77" = type {}
%"$$fundef_10_env_78" = type { %Int32 }
%"$$fundef_8_env_79" = type {}
%"$$fundef_14_env_80" = type { %Int32 }
%"$$fundef_12_env_81" = type {}
%"$$fundef_16_env_82" = type {}
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%Uint128 = type { i128 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_25" = global %"$TyDescrTy_PrimTyp_24" zeroinitializer
@"$TyDescr_Int32_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Int32_Prim_25" to i8*) }
@"$TyDescr_Uint32_Prim_27" = global %"$TyDescrTy_PrimTyp_24" { i32 1, i32 0 }
@"$TyDescr_Uint32_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Uint32_Prim_27" to i8*) }
@"$TyDescr_Int64_Prim_29" = global %"$TyDescrTy_PrimTyp_24" { i32 0, i32 1 }
@"$TyDescr_Int64_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Int64_Prim_29" to i8*) }
@"$TyDescr_Uint64_Prim_31" = global %"$TyDescrTy_PrimTyp_24" { i32 1, i32 1 }
@"$TyDescr_Uint64_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Uint64_Prim_31" to i8*) }
@"$TyDescr_Int128_Prim_33" = global %"$TyDescrTy_PrimTyp_24" { i32 0, i32 2 }
@"$TyDescr_Int128_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Int128_Prim_33" to i8*) }
@"$TyDescr_Uint128_Prim_35" = global %"$TyDescrTy_PrimTyp_24" { i32 1, i32 2 }
@"$TyDescr_Uint128_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Uint128_Prim_35" to i8*) }
@"$TyDescr_Int256_Prim_37" = global %"$TyDescrTy_PrimTyp_24" { i32 0, i32 3 }
@"$TyDescr_Int256_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Int256_Prim_37" to i8*) }
@"$TyDescr_Uint256_Prim_39" = global %"$TyDescrTy_PrimTyp_24" { i32 1, i32 3 }
@"$TyDescr_Uint256_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Uint256_Prim_39" to i8*) }
@"$TyDescr_String_Prim_41" = global %"$TyDescrTy_PrimTyp_24" { i32 2, i32 0 }
@"$TyDescr_String_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_String_Prim_41" to i8*) }
@"$TyDescr_Bnum_Prim_43" = global %"$TyDescrTy_PrimTyp_24" { i32 3, i32 0 }
@"$TyDescr_Bnum_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Bnum_Prim_43" to i8*) }
@"$TyDescr_Message_Prim_45" = global %"$TyDescrTy_PrimTyp_24" { i32 4, i32 0 }
@"$TyDescr_Message_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Message_Prim_45" to i8*) }
@"$TyDescr_Event_Prim_47" = global %"$TyDescrTy_PrimTyp_24" { i32 5, i32 0 }
@"$TyDescr_Event_48" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Event_Prim_47" to i8*) }
@"$TyDescr_Exception_Prim_49" = global %"$TyDescrTy_PrimTyp_24" { i32 6, i32 0 }
@"$TyDescr_Exception_50" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Exception_Prim_49" to i8*) }
@"$TyDescr_Bystr_Prim_51" = global %"$TyDescrTy_PrimTyp_24" { i32 7, i32 0 }
@"$TyDescr_Bystr_52" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Bystr_Prim_51" to i8*) }
@"$TyDescr_Bystr20_Prim_53" = global %"$TyDescrTy_PrimTyp_24" { i32 8, i32 20 }
@"$TyDescr_Bystr20_54" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Bystr20_Prim_53" to i8*) }
@"$TyDescr_ADT_Bool_58" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Bool_ADTTyp_Specl_72" to i8*) }
@"$TyDescr_Addr_62" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_61"* @"$TyDescr_AddrFields_75" to i8*) }
@"$TyDescr_Bool_ADTTyp_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_56" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_74", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_55"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_55"*], [1 x %"$TyDescrTy_ADTTyp_Specl_55"*]* @"$TyDescr_Bool_ADTTyp_m_specls_73", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_64" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_65" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_66" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_65", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_64", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_67" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_68" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_68", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_67", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_70" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Bool_True_ADTTyp_Constr_66", %"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Bool_False_ADTTyp_Constr_69"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_71" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_71", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_57"*], [2 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_70", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Bool_ADTTyp_63" }
@"$TyDescr_Bool_ADTTyp_m_specls_73" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_55"*] [%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Bool_ADTTyp_Specl_72"]
@"$TyDescr_ADT_Bool_74" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_AddrFields_75" = unnamed_addr constant %"$TyDescr_AddrTyp_61" { i32 -1, %"$TyDescr_AddrFieldTyp_60"* null }
@uncurry1.uncur_lib_func = global { %Int32 (i8*, %Int32, %Int32)*, i8* } zeroinitializer
@uncurry1.no_uncur_lib_func = global { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } zeroinitializer
@uncurry1.uncur_lib_func_partial = global { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$some_bool_197" = unnamed_addr constant [10 x i8] c"some_bool\00"
@"$res_206" = unnamed_addr constant [4 x i8] c"res\00"
@"$res_335" = unnamed_addr constant [4 x i8] c"res\00"
@"$some_bool_372" = unnamed_addr constant [10 x i8] c"some_bool\00"
@"$res_438" = unnamed_addr constant [4 x i8] c"res\00"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_48", %_TyDescrTy_Typ* @"$TyDescr_Int64_30", %_TyDescrTy_Typ* @"$TyDescr_Addr_62", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_58", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54", %_TyDescrTy_Typ* @"$TyDescr_Uint256_40", %_TyDescrTy_Typ* @"$TyDescr_Uint32_28", %_TyDescrTy_Typ* @"$TyDescr_Uint64_32", %_TyDescrTy_Typ* @"$TyDescr_Bnum_44", %_TyDescrTy_Typ* @"$TyDescr_Uint128_36", %_TyDescrTy_Typ* @"$TyDescr_Exception_50", %_TyDescrTy_Typ* @"$TyDescr_String_42", %_TyDescrTy_Typ* @"$TyDescr_Int256_38", %_TyDescrTy_Typ* @"$TyDescr_Int128_34", %_TyDescrTy_Typ* @"$TyDescr_Bystr_52", %_TyDescrTy_Typ* @"$TyDescr_Message_46", %_TyDescrTy_Typ* @"$TyDescr_Int32_26"]
@_tydescr_table_length = constant i32 17
@"$pname__scilla_version_457" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_458" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_459" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_455"] [%"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_457", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_28" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_458", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_459", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_44" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_460" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_461" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_462" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x1_463" = unnamed_addr constant [2 x i8] c"x1"
@"$tpname_x2_464" = unnamed_addr constant [2 x i8] c"x2"
@"$tparams_dummy_465" = unnamed_addr constant [5 x %"$ParamDescr_455"] [%"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_460", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_461", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_62" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_462", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_62" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tpname_x1_463", i32 0, i32 0), i32 2 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_26" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tpname_x2_464", i32 0, i32 0), i32 2 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_26" }]
@"$tname_dummy_466" = unnamed_addr constant [5 x i8] c"dummy"
@"$tpname__amount_467" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_468" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_469" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x1_470" = unnamed_addr constant [2 x i8] c"x1"
@"$tpname_x2_471" = unnamed_addr constant [2 x i8] c"x2"
@"$tparams_dummy2_472" = unnamed_addr constant [5 x %"$ParamDescr_455"] [%"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_467", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_468", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_62" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_469", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_62" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tpname_x1_470", i32 0, i32 0), i32 2 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_26" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tpname_x2_471", i32 0, i32 0), i32 2 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_26" }]
@"$tname_dummy2_473" = unnamed_addr constant [6 x i8] c"dummy2"
@_transition_parameters = constant [2 x %"$TransDescr_456"] [%"$TransDescr_456" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tname_dummy_466", i32 0, i32 0), i32 5 }, i32 5, %"$ParamDescr_455"* getelementptr inbounds ([5 x %"$ParamDescr_455"], [5 x %"$ParamDescr_455"]* @"$tparams_dummy_465", i32 0, i32 0) }, %"$TransDescr_456" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_dummy2_473", i32 0, i32 0), i32 6 }, i32 5, %"$ParamDescr_455"* getelementptr inbounds ([5 x %"$ParamDescr_455"], [5 x %"$ParamDescr_455"]* @"$tparams_dummy2_472", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define internal %Int32 @"$fundef_22"(%"$$fundef_22_env_76"* %0, %Int32 %1) !dbg !4 {
entry:
  %"$$fundef_22_env_a_154" = getelementptr inbounds %"$$fundef_22_env_76", %"$$fundef_22_env_76"* %0, i32 0, i32 0
  %"$a_envload_155" = load %Int32, %Int32* %"$$fundef_22_env_a_154", align 4
  %a = alloca %Int32, align 8
  store %Int32 %"$a_envload_155", %Int32* %a, align 4
  %"$retval_23" = alloca %Int32, align 8
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 4, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %entry
  %"$consume_160" = sub i64 %"$gasrem_156", 4
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %"$a_161" = load %Int32, %Int32* %a, align 4
  %"$sub_call_162" = call %Int32 @_sub_Int32(%Int32 %"$a_161", %Int32 %1), !dbg !8
  store %Int32 %"$sub_call_162", %Int32* %"$retval_23", align 4, !dbg !8
  %"$$retval_23_163" = load %Int32, %Int32* %"$retval_23", align 4
  ret %Int32 %"$$retval_23_163"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_20"(%"$$fundef_20_env_77"* %0, %Int32 %1) !dbg !9 {
entry:
  %"$retval_21" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %entry
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %"$$fundef_22_envp_148_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_22_envp_148_salloc" = call i8* @_salloc(i8* %"$$fundef_22_envp_148_load", i64 4)
  %"$$fundef_22_envp_148" = bitcast i8* %"$$fundef_22_envp_148_salloc" to %"$$fundef_22_env_76"*
  %"$$fundef_22_env_voidp_150" = bitcast %"$$fundef_22_env_76"* %"$$fundef_22_envp_148" to i8*
  %"$$fundef_22_cloval_151" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_22_env_76"*, %Int32)* @"$fundef_22" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_22_env_voidp_150", 1
  %"$$fundef_22_env_a_152" = getelementptr inbounds %"$$fundef_22_env_76", %"$$fundef_22_env_76"* %"$$fundef_22_envp_148", i32 0, i32 0
  store %Int32 %1, %Int32* %"$$fundef_22_env_a_152", align 4
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_22_cloval_151", { %Int32 (i8*, %Int32)*, i8* }* %"$retval_21", align 8, !dbg !10
  %"$$retval_21_153" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_21", align 8
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_21_153"
}

define internal %Int32 @"$fundef_10"(%"$$fundef_10_env_78"* %0, %Int32 %1) !dbg !11 {
entry:
  %"$$fundef_10_env_a_133" = getelementptr inbounds %"$$fundef_10_env_78", %"$$fundef_10_env_78"* %0, i32 0, i32 0
  %"$a_envload_134" = load %Int32, %Int32* %"$$fundef_10_env_a_133", align 4
  %a = alloca %Int32, align 8
  store %Int32 %"$a_envload_134", %Int32* %a, align 4
  %"$retval_11" = alloca %Int32, align 8
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 4, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %entry
  %"$consume_139" = sub i64 %"$gasrem_135", 4
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %"$a_140" = load %Int32, %Int32* %a, align 4
  %"$add_call_141" = call %Int32 @_add_Int32(%Int32 %"$a_140", %Int32 %1), !dbg !12
  store %Int32 %"$add_call_141", %Int32* %"$retval_11", align 4, !dbg !12
  %"$$retval_11_142" = load %Int32, %Int32* %"$retval_11", align 4
  ret %Int32 %"$$retval_11_142"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_8"(%"$$fundef_8_env_79"* %0, %Int32 %1) !dbg !13 {
entry:
  %"$retval_9" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %entry
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem, align 8
  %"$$fundef_10_envp_127_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_10_envp_127_salloc" = call i8* @_salloc(i8* %"$$fundef_10_envp_127_load", i64 4)
  %"$$fundef_10_envp_127" = bitcast i8* %"$$fundef_10_envp_127_salloc" to %"$$fundef_10_env_78"*
  %"$$fundef_10_env_voidp_129" = bitcast %"$$fundef_10_env_78"* %"$$fundef_10_envp_127" to i8*
  %"$$fundef_10_cloval_130" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_10_env_78"*, %Int32)* @"$fundef_10" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_10_env_voidp_129", 1
  %"$$fundef_10_env_a_131" = getelementptr inbounds %"$$fundef_10_env_78", %"$$fundef_10_env_78"* %"$$fundef_10_envp_127", i32 0, i32 0
  store %Int32 %1, %Int32* %"$$fundef_10_env_a_131", align 4
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_10_cloval_130", { %Int32 (i8*, %Int32)*, i8* }* %"$retval_9", align 8, !dbg !14
  %"$$retval_9_132" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_9", align 8
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_9_132"
}

define internal %Int32 @"$fundef_14"(%"$$fundef_14_env_80"* %0, %Int32 %1) !dbg !15 {
entry:
  %"$$fundef_14_env_a__112" = getelementptr inbounds %"$$fundef_14_env_80", %"$$fundef_14_env_80"* %0, i32 0, i32 0
  %"$a__envload_113" = load %Int32, %Int32* %"$$fundef_14_env_a__112", align 4
  %a_ = alloca %Int32, align 8
  store %Int32 %"$a__envload_113", %Int32* %a_, align 4
  %"$retval_15" = alloca %Int32, align 8
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 4, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %entry
  %"$consume_118" = sub i64 %"$gasrem_114", 4
  store i64 %"$consume_118", i64* @_gasrem, align 8
  %"$a__119" = load %Int32, %Int32* %a_, align 4
  %"$add_call_120" = call %Int32 @_add_Int32(%Int32 %"$a__119", %Int32 %1), !dbg !16
  store %Int32 %"$add_call_120", %Int32* %"$retval_15", align 4, !dbg !16
  %"$$retval_15_121" = load %Int32, %Int32* %"$retval_15", align 4
  ret %Int32 %"$$retval_15_121"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_12"(%"$$fundef_12_env_81"* %0, %Int32 %1) !dbg !17 {
entry:
  %"$retval_13" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %entry
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  %a_ = alloca %Int32, align 8
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_93"
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem, align 8
  store %Int32 %1, %Int32* %a_, align 4, !dbg !18
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 1, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_98"
  %"$consume_104" = sub i64 %"$gasrem_100", 1
  store i64 %"$consume_104", i64* @_gasrem, align 8
  %"$$fundef_14_envp_105_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_14_envp_105_salloc" = call i8* @_salloc(i8* %"$$fundef_14_envp_105_load", i64 4)
  %"$$fundef_14_envp_105" = bitcast i8* %"$$fundef_14_envp_105_salloc" to %"$$fundef_14_env_80"*
  %"$$fundef_14_env_voidp_107" = bitcast %"$$fundef_14_env_80"* %"$$fundef_14_envp_105" to i8*
  %"$$fundef_14_cloval_108" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_14_env_80"*, %Int32)* @"$fundef_14" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_14_env_voidp_107", 1
  %"$$fundef_14_env_a__109" = getelementptr inbounds %"$$fundef_14_env_80", %"$$fundef_14_env_80"* %"$$fundef_14_envp_105", i32 0, i32 0
  %"$a__110" = load %Int32, %Int32* %a_, align 4
  store %Int32 %"$a__110", %Int32* %"$$fundef_14_env_a__109", align 4
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_14_cloval_108", { %Int32 (i8*, %Int32)*, i8* }* %"$retval_13", align 8, !dbg !19
  %"$$retval_13_111" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_13", align 8
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_13_111"
}

define internal %Int32 @"$fundef_16"(%"$$fundef_16_env_82"* %0, %Int32 %1, %Int32 %2) !dbg !20 {
entry:
  %"$retval_17" = alloca %Int32, align 8
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 4, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %entry
  %"$consume_87" = sub i64 %"$gasrem_83", 4
  store i64 %"$consume_87", i64* @_gasrem, align 8
  %"$add_call_88" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %2), !dbg !21
  store %Int32 %"$add_call_88", %Int32* %"$retval_17", align 4, !dbg !21
  %"$$retval_17_89" = load %Int32, %Int32* %"$retval_17", align 4
  ret %Int32 %"$$retval_17_89"
}

declare void @_out_of_gas()

declare %Int32 @_add_Int32(%Int32, %Int32)

declare i8* @_salloc(i8*, i64)

declare %Int32 @_sub_Int32(%Int32, %Int32)

define void @_init_libs() !dbg !22 {
entry:
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 2, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %entry
  %"$consume_168" = sub i64 %"$gasrem_164", 2
  store i64 %"$consume_168", i64* @_gasrem, align 8
  store { %Int32 (i8*, %Int32, %Int32)*, i8* } { %Int32 (i8*, %Int32, %Int32)* bitcast (%Int32 (%"$$fundef_16_env_82"*, %Int32, %Int32)* @"$fundef_16" to %Int32 (i8*, %Int32, %Int32)*), i8* null }, { %Int32 (i8*, %Int32, %Int32)*, i8* }* @uncurry1.uncur_lib_func, align 8, !dbg !24
  %"$gasrem_172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_173" = icmp ugt i64 1, %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %"$have_gas_167"
  %"$consume_176" = sub i64 %"$gasrem_172", 1
  store i64 %"$consume_176", i64* @_gasrem, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_12_env_81"*, %Int32)* @"$fundef_12" to { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* @uncurry1.no_uncur_lib_func, align 8, !dbg !25
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_175"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_175"
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_8_env_79"*, %Int32)* @"$fundef_8" to { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* @uncurry1.uncur_lib_func_partial, align 8, !dbg !26
  ret void
}

define void @_init_state() !dbg !27 {
entry:
  %"$some_bool_18" = alloca %TName_Bool*, align 8
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 1, %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %entry
  %"$consume_192" = sub i64 %"$gasrem_188", 1
  store i64 %"$consume_192", i64* @_gasrem, align 8
  %"$adtval_193_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_193_salloc" = call i8* @_salloc(i8* %"$adtval_193_load", i64 1)
  %"$adtval_193" = bitcast i8* %"$adtval_193_salloc" to %CName_False*
  %"$adtgep_194" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_193", i32 0, i32 0
  store i8 1, i8* %"$adtgep_194", align 1
  %"$adtptr_195" = bitcast %CName_False* %"$adtval_193" to %TName_Bool*
  store %TName_Bool* %"$adtptr_195", %TName_Bool** %"$some_bool_18", align 8, !dbg !28
  %"$execptr_load_196" = load i8*, i8** @_execptr, align 8
  %"$$some_bool_18_198" = load %TName_Bool*, %TName_Bool** %"$some_bool_18", align 8
  %"$update_value_199" = bitcast %TName_Bool* %"$$some_bool_18_198" to i8*
  call void @_update_field(i8* %"$execptr_load_196", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$some_bool_197", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_58", i32 0, i8* null, i8* %"$update_value_199"), !dbg !28
  %"$res_19" = alloca %Int32, align 8
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 1, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %"$have_gas_191"
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %"$have_gas_191"
  %"$consume_204" = sub i64 %"$gasrem_200", 1
  store i64 %"$consume_204", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$res_19", align 4, !dbg !29
  %"$execptr_load_205" = load i8*, i8** @_execptr, align 8
  %"$$res_19_207" = load %Int32, %Int32* %"$res_19", align 4
  %"$update_value_208" = alloca %Int32, align 8
  store %Int32 %"$$res_19_207", %Int32* %"$update_value_208", align 4
  %"$update_value_209" = bitcast %Int32* %"$update_value_208" to i8*
  call void @_update_field(i8* %"$execptr_load_205", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$res_206", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_26", i32 0, i8* null, i8* %"$update_value_209"), !dbg !29
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$dummy_210"(%Uint128 %_amount, [20 x i8]* %"$_origin_211", [20 x i8]* %"$_sender_212", %Int32 %x1, %Int32 %x2) !dbg !30 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_211", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_212", align 1
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %entry
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %partial_app_func = alloca %Int32, align 8
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 1, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_216"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_216"
  %"$consume_222" = sub i64 %"$gasrem_218", 1
  store i64 %"$consume_222", i64* @_gasrem, align 8
  %partial_app_func_ = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_224" = icmp ugt i64 1, %"$gasrem_223"
  br i1 %"$gascmp_224", label %"$out_of_gas_225", label %"$have_gas_226"

"$out_of_gas_225":                                ; preds = %"$have_gas_221"
  call void @_out_of_gas()
  br label %"$have_gas_226"

"$have_gas_226":                                  ; preds = %"$out_of_gas_225", %"$have_gas_221"
  %"$consume_227" = sub i64 %"$gasrem_223", 1
  store i64 %"$consume_227", i64* @_gasrem, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_20_env_77"*, %Int32)* @"$fundef_20" to { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* %partial_app_func_, align 8, !dbg !31
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 1, %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %"$have_gas_226"
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %"$have_gas_226"
  %"$consume_235" = sub i64 %"$gasrem_231", 1
  store i64 %"$consume_235", i64* @_gasrem, align 8
  %n1 = alloca %Int32, align 8
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 1, %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %"$have_gas_234"
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %"$have_gas_234"
  %"$consume_240" = sub i64 %"$gasrem_236", 1
  store i64 %"$consume_240", i64* @_gasrem, align 8
  store %Int32 { i32 4 }, %Int32* %n1, align 4, !dbg !32
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 1, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %"$have_gas_239"
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %"$have_gas_239"
  %"$consume_245" = sub i64 %"$gasrem_241", 1
  store i64 %"$consume_245", i64* @_gasrem, align 8
  %n2 = alloca %Int32, align 8
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 1, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$have_gas_244"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$have_gas_244"
  %"$consume_250" = sub i64 %"$gasrem_246", 1
  store i64 %"$consume_250", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* %n2, align 4, !dbg !33
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 1, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$have_gas_249"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$have_gas_249"
  %"$consume_255" = sub i64 %"$gasrem_251", 1
  store i64 %"$consume_255", i64* @_gasrem, align 8
  %res1 = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_257" = icmp ugt i64 1, %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %"$have_gas_254"
  %"$consume_260" = sub i64 %"$gasrem_256", 1
  store i64 %"$consume_260", i64* @_gasrem, align 8
  %"$partial_app_func__0" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$partial_app_func__261" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* %partial_app_func_, align 8
  %"$partial_app_func__fptr_262" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$partial_app_func__261", 0
  %"$partial_app_func__envptr_263" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$partial_app_func__261", 1
  %"$n1_264" = load %Int32, %Int32* %n1, align 4
  %"$partial_app_func__call_265" = call { %Int32 (i8*, %Int32)*, i8* } %"$partial_app_func__fptr_262"(i8* %"$partial_app_func__envptr_263", %Int32 %"$n1_264"), !dbg !34
  store { %Int32 (i8*, %Int32)*, i8* } %"$partial_app_func__call_265", { %Int32 (i8*, %Int32)*, i8* }* %"$partial_app_func__0", align 8, !dbg !34
  %"$$partial_app_func__0_266" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$partial_app_func__0", align 8
  store { %Int32 (i8*, %Int32)*, i8* } %"$$partial_app_func__0_266", { %Int32 (i8*, %Int32)*, i8* }* %res1, align 8, !dbg !34
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 1, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_259"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_259"
  %"$consume_271" = sub i64 %"$gasrem_267", 1
  store i64 %"$consume_271", i64* @_gasrem, align 8
  %"$res1_1" = alloca %Int32, align 8
  %"$res1_272" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %res1, align 8
  %"$res1_fptr_273" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$res1_272", 0
  %"$res1_envptr_274" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$res1_272", 1
  %"$n2_275" = load %Int32, %Int32* %n2, align 4
  %"$res1_call_276" = call %Int32 %"$res1_fptr_273"(i8* %"$res1_envptr_274", %Int32 %"$n2_275"), !dbg !35
  store %Int32 %"$res1_call_276", %Int32* %"$res1_1", align 4, !dbg !35
  %"$$res1_1_277" = load %Int32, %Int32* %"$res1_1", align 4
  store %Int32 %"$$res1_1_277", %Int32* %partial_app_func, align 4, !dbg !35
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 1, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$have_gas_270"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$have_gas_270"
  %"$consume_282" = sub i64 %"$gasrem_278", 1
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %total_app1 = alloca %Int32, align 8
  %"$gasrem_283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_284" = icmp ugt i64 1, %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %"$have_gas_281"
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %"$have_gas_281"
  %"$consume_287" = sub i64 %"$gasrem_283", 1
  store i64 %"$consume_287", i64* @_gasrem, align 8
  %"$uncurry1.uncur_lib_func_288" = load { %Int32 (i8*, %Int32, %Int32)*, i8* }, { %Int32 (i8*, %Int32, %Int32)*, i8* }* @uncurry1.uncur_lib_func, align 8
  %"$uncurry1.uncur_lib_func_fptr_289" = extractvalue { %Int32 (i8*, %Int32, %Int32)*, i8* } %"$uncurry1.uncur_lib_func_288", 0
  %"$uncurry1.uncur_lib_func_envptr_290" = extractvalue { %Int32 (i8*, %Int32, %Int32)*, i8* } %"$uncurry1.uncur_lib_func_288", 1
  %"$uncurry1.uncur_lib_func_call_291" = call %Int32 %"$uncurry1.uncur_lib_func_fptr_289"(i8* %"$uncurry1.uncur_lib_func_envptr_290", %Int32 %x1, %Int32 %x2), !dbg !36
  store %Int32 %"$uncurry1.uncur_lib_func_call_291", %Int32* %total_app1, align 4, !dbg !36
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 1, %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %"$have_gas_286"
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %"$have_gas_286"
  %"$consume_296" = sub i64 %"$gasrem_292", 1
  store i64 %"$consume_296", i64* @_gasrem, align 8
  %total_app2 = alloca %Int32, align 8
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 1, %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %"$have_gas_295"
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %"$have_gas_295"
  %"$consume_301" = sub i64 %"$gasrem_297", 1
  store i64 %"$consume_301", i64* @_gasrem, align 8
  %"$uncurry1.no_uncur_lib_func_2" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$uncurry1.no_uncur_lib_func_302" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* @uncurry1.no_uncur_lib_func, align 8
  %"$uncurry1.no_uncur_lib_func_fptr_303" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$uncurry1.no_uncur_lib_func_302", 0
  %"$uncurry1.no_uncur_lib_func_envptr_304" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$uncurry1.no_uncur_lib_func_302", 1
  %"$total_app1_305" = load %Int32, %Int32* %total_app1, align 4
  %"$uncurry1.no_uncur_lib_func_call_306" = call { %Int32 (i8*, %Int32)*, i8* } %"$uncurry1.no_uncur_lib_func_fptr_303"(i8* %"$uncurry1.no_uncur_lib_func_envptr_304", %Int32 %"$total_app1_305"), !dbg !37
  store { %Int32 (i8*, %Int32)*, i8* } %"$uncurry1.no_uncur_lib_func_call_306", { %Int32 (i8*, %Int32)*, i8* }* %"$uncurry1.no_uncur_lib_func_2", align 8, !dbg !37
  %"$uncurry1.no_uncur_lib_func_3" = alloca %Int32, align 8
  %"$$uncurry1.no_uncur_lib_func_2_307" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$uncurry1.no_uncur_lib_func_2", align 8
  %"$$uncurry1.no_uncur_lib_func_2_fptr_308" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$uncurry1.no_uncur_lib_func_2_307", 0
  %"$$uncurry1.no_uncur_lib_func_2_envptr_309" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$uncurry1.no_uncur_lib_func_2_307", 1
  %"$$uncurry1.no_uncur_lib_func_2_call_310" = call %Int32 %"$$uncurry1.no_uncur_lib_func_2_fptr_308"(i8* %"$$uncurry1.no_uncur_lib_func_2_envptr_309", %Int32 %x2), !dbg !37
  store %Int32 %"$$uncurry1.no_uncur_lib_func_2_call_310", %Int32* %"$uncurry1.no_uncur_lib_func_3", align 4, !dbg !37
  %"$$uncurry1.no_uncur_lib_func_3_311" = load %Int32, %Int32* %"$uncurry1.no_uncur_lib_func_3", align 4
  store %Int32 %"$$uncurry1.no_uncur_lib_func_3_311", %Int32* %total_app2, align 4, !dbg !37
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 1, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_300"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_300"
  %"$consume_316" = sub i64 %"$gasrem_312", 1
  store i64 %"$consume_316", i64* @_gasrem, align 8
  %y = alloca %Int32, align 8
  %"$gasrem_317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_318" = icmp ugt i64 4, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_315"
  %"$consume_321" = sub i64 %"$gasrem_317", 4
  store i64 %"$consume_321", i64* @_gasrem, align 8
  %"$partial_app_func_322" = load %Int32, %Int32* %partial_app_func, align 4
  %"$total_app2_323" = load %Int32, %Int32* %total_app2, align 4
  %"$add_call_324" = call %Int32 @_add_Int32(%Int32 %"$partial_app_func_322", %Int32 %"$total_app2_323"), !dbg !38
  store %Int32 %"$add_call_324", %Int32* %y, align 4, !dbg !38
  %"$_literal_cost_y_325" = alloca %Int32, align 8
  %"$y_326" = load %Int32, %Int32* %y, align 4
  store %Int32 %"$y_326", %Int32* %"$_literal_cost_y_325", align 4
  %"$$_literal_cost_y_325_327" = bitcast %Int32* %"$_literal_cost_y_325" to i8*
  %"$_literal_cost_call_328" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_26", i8* %"$$_literal_cost_y_325_327")
  %"$gasrem_329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_330" = icmp ugt i64 %"$_literal_cost_call_328", %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %"$have_gas_320"
  %"$consume_333" = sub i64 %"$gasrem_329", %"$_literal_cost_call_328"
  store i64 %"$consume_333", i64* @_gasrem, align 8
  %"$execptr_load_334" = load i8*, i8** @_execptr, align 8
  %"$y_336" = load %Int32, %Int32* %y, align 4
  %"$update_value_337" = alloca %Int32, align 8
  store %Int32 %"$y_336", %Int32* %"$update_value_337", align 4
  %"$update_value_338" = bitcast %Int32* %"$update_value_337" to i8*
  call void @_update_field(i8* %"$execptr_load_334", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$res_335", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_26", i32 0, i8* null, i8* %"$update_value_338"), !dbg !39
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @dummy(i8* %0) !dbg !40 {
entry:
  %"$_amount_340" = getelementptr i8, i8* %0, i32 0
  %"$_amount_341" = bitcast i8* %"$_amount_340" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_341", align 8
  %"$_origin_342" = getelementptr i8, i8* %0, i32 16
  %"$_origin_343" = bitcast i8* %"$_origin_342" to [20 x i8]*
  %"$_sender_344" = getelementptr i8, i8* %0, i32 36
  %"$_sender_345" = bitcast i8* %"$_sender_344" to [20 x i8]*
  %"$x1_346" = getelementptr i8, i8* %0, i32 56
  %"$x1_347" = bitcast i8* %"$x1_346" to %Int32*
  %x1 = load %Int32, %Int32* %"$x1_347", align 4
  %"$x2_348" = getelementptr i8, i8* %0, i32 60
  %"$x2_349" = bitcast i8* %"$x2_348" to %Int32*
  %x2 = load %Int32, %Int32* %"$x2_349", align 4
  call void @"$dummy_210"(%Uint128 %_amount, [20 x i8]* %"$_origin_343", [20 x i8]* %"$_sender_345", %Int32 %x1, %Int32 %x2), !dbg !41
  ret void
}

define internal void @"$dummy2_350"(%Uint128 %_amount, [20 x i8]* %"$_origin_351", [20 x i8]* %"$_sender_352", %Int32 %x1, %Int32 %x2) !dbg !42 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_351", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_352", align 1
  %"$gasrem_353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_354" = icmp ugt i64 1, %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %entry
  %"$consume_357" = sub i64 %"$gasrem_353", 1
  store i64 %"$consume_357", i64* @_gasrem, align 8
  %total_app = alloca %Int32, align 8
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 1, %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$have_gas_356"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$have_gas_356"
  %"$consume_362" = sub i64 %"$gasrem_358", 1
  store i64 %"$consume_362", i64* @_gasrem, align 8
  %"$uncurry1.uncur_lib_func_partial_4" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$uncurry1.uncur_lib_func_partial_363" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* @uncurry1.uncur_lib_func_partial, align 8
  %"$uncurry1.uncur_lib_func_partial_fptr_364" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$uncurry1.uncur_lib_func_partial_363", 0
  %"$uncurry1.uncur_lib_func_partial_envptr_365" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$uncurry1.uncur_lib_func_partial_363", 1
  %"$uncurry1.uncur_lib_func_partial_call_366" = call { %Int32 (i8*, %Int32)*, i8* } %"$uncurry1.uncur_lib_func_partial_fptr_364"(i8* %"$uncurry1.uncur_lib_func_partial_envptr_365", %Int32 %x1), !dbg !43
  store { %Int32 (i8*, %Int32)*, i8* } %"$uncurry1.uncur_lib_func_partial_call_366", { %Int32 (i8*, %Int32)*, i8* }* %"$uncurry1.uncur_lib_func_partial_4", align 8, !dbg !43
  %"$uncurry1.uncur_lib_func_partial_5" = alloca %Int32, align 8
  %"$$uncurry1.uncur_lib_func_partial_4_367" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$uncurry1.uncur_lib_func_partial_4", align 8
  %"$$uncurry1.uncur_lib_func_partial_4_fptr_368" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$uncurry1.uncur_lib_func_partial_4_367", 0
  %"$$uncurry1.uncur_lib_func_partial_4_envptr_369" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$uncurry1.uncur_lib_func_partial_4_367", 1
  %"$$uncurry1.uncur_lib_func_partial_4_call_370" = call %Int32 %"$$uncurry1.uncur_lib_func_partial_4_fptr_368"(i8* %"$$uncurry1.uncur_lib_func_partial_4_envptr_369", %Int32 %x2), !dbg !43
  store %Int32 %"$$uncurry1.uncur_lib_func_partial_4_call_370", %Int32* %"$uncurry1.uncur_lib_func_partial_5", align 4, !dbg !43
  %"$$uncurry1.uncur_lib_func_partial_5_371" = load %Int32, %Int32* %"$uncurry1.uncur_lib_func_partial_5", align 4
  store %Int32 %"$$uncurry1.uncur_lib_func_partial_5_371", %Int32* %total_app, align 4, !dbg !43
  %some_bool_ = alloca %TName_Bool*, align 8
  %"$execptr_load_373" = load i8*, i8** @_execptr, align 8
  %"$some_bool__call_374" = call i8* @_fetch_field(i8* %"$execptr_load_373", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$some_bool_372", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_58", i32 0, i8* null, i32 1), !dbg !44
  %"$some_bool__375" = bitcast i8* %"$some_bool__call_374" to %TName_Bool*
  store %TName_Bool* %"$some_bool__375", %TName_Bool** %some_bool_, align 8
  %"$some_bool__376" = load %TName_Bool*, %TName_Bool** %some_bool_, align 8
  %"$$some_bool__376_377" = bitcast %TName_Bool* %"$some_bool__376" to i8*
  %"$_literal_cost_call_378" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_58", i8* %"$$some_bool__376_377")
  %"$gasadd_379" = add i64 %"$_literal_cost_call_378", 0
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 %"$gasadd_379", %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$have_gas_361"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$have_gas_361"
  %"$consume_384" = sub i64 %"$gasrem_380", %"$gasadd_379"
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 2, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$have_gas_383"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$have_gas_383"
  %"$consume_389" = sub i64 %"$gasrem_385", 2
  store i64 %"$consume_389", i64* @_gasrem, align 8
  %"$some_bool__391" = load %TName_Bool*, %TName_Bool** %some_bool_, align 8
  %"$some_bool__tag_392" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool__391", i32 0, i32 0
  %"$some_bool__tag_393" = load i8, i8* %"$some_bool__tag_392", align 1
  switch i8 %"$some_bool__tag_393", label %"$empty_default_394" [
    i8 1, label %"$False_395"
    i8 0, label %"$True_442"
  ], !dbg !45

"$False_395":                                     ; preds = %"$have_gas_388"
  %"$some_bool__396" = bitcast %TName_Bool* %"$some_bool__391" to %CName_False*
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$False_395"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$False_395"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  %partial_app1 = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_403" = icmp ugt i64 1, %"$gasrem_402"
  br i1 %"$gascmp_403", label %"$out_of_gas_404", label %"$have_gas_405"

"$out_of_gas_404":                                ; preds = %"$have_gas_400"
  call void @_out_of_gas()
  br label %"$have_gas_405"

"$have_gas_405":                                  ; preds = %"$out_of_gas_404", %"$have_gas_400"
  %"$consume_406" = sub i64 %"$gasrem_402", 1
  store i64 %"$consume_406", i64* @_gasrem, align 8
  %"$uncurry1.uncur_lib_func_partial_6" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$uncurry1.uncur_lib_func_partial_407" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* @uncurry1.uncur_lib_func_partial, align 8
  %"$uncurry1.uncur_lib_func_partial_fptr_408" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$uncurry1.uncur_lib_func_partial_407", 0
  %"$uncurry1.uncur_lib_func_partial_envptr_409" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$uncurry1.uncur_lib_func_partial_407", 1
  %"$total_app_410" = load %Int32, %Int32* %total_app, align 4
  %"$uncurry1.uncur_lib_func_partial_call_411" = call { %Int32 (i8*, %Int32)*, i8* } %"$uncurry1.uncur_lib_func_partial_fptr_408"(i8* %"$uncurry1.uncur_lib_func_partial_envptr_409", %Int32 %"$total_app_410"), !dbg !46
  store { %Int32 (i8*, %Int32)*, i8* } %"$uncurry1.uncur_lib_func_partial_call_411", { %Int32 (i8*, %Int32)*, i8* }* %"$uncurry1.uncur_lib_func_partial_6", align 8, !dbg !46
  %"$$uncurry1.uncur_lib_func_partial_6_412" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$uncurry1.uncur_lib_func_partial_6", align 8
  store { %Int32 (i8*, %Int32)*, i8* } %"$$uncurry1.uncur_lib_func_partial_6_412", { %Int32 (i8*, %Int32)*, i8* }* %partial_app1, align 8, !dbg !46
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_405"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_405"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %partial_app2 = alloca %Int32, align 8
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_416"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %"$partial_app1_7" = alloca %Int32, align 8
  %"$partial_app1_423" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %partial_app1, align 8
  %"$partial_app1_fptr_424" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$partial_app1_423", 0
  %"$partial_app1_envptr_425" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$partial_app1_423", 1
  %"$partial_app1_call_426" = call %Int32 %"$partial_app1_fptr_424"(i8* %"$partial_app1_envptr_425", %Int32 %x1), !dbg !49
  store %Int32 %"$partial_app1_call_426", %Int32* %"$partial_app1_7", align 4, !dbg !49
  %"$$partial_app1_7_427" = load %Int32, %Int32* %"$partial_app1_7", align 4
  store %Int32 %"$$partial_app1_7_427", %Int32* %partial_app2, align 4, !dbg !49
  %"$_literal_cost_partial_app2_428" = alloca %Int32, align 8
  %"$partial_app2_429" = load %Int32, %Int32* %partial_app2, align 4
  store %Int32 %"$partial_app2_429", %Int32* %"$_literal_cost_partial_app2_428", align 4
  %"$$_literal_cost_partial_app2_428_430" = bitcast %Int32* %"$_literal_cost_partial_app2_428" to i8*
  %"$_literal_cost_call_431" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_26", i8* %"$$_literal_cost_partial_app2_428_430")
  %"$gasrem_432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_433" = icmp ugt i64 %"$_literal_cost_call_431", %"$gasrem_432"
  br i1 %"$gascmp_433", label %"$out_of_gas_434", label %"$have_gas_435"

"$out_of_gas_434":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_435"

"$have_gas_435":                                  ; preds = %"$out_of_gas_434", %"$have_gas_421"
  %"$consume_436" = sub i64 %"$gasrem_432", %"$_literal_cost_call_431"
  store i64 %"$consume_436", i64* @_gasrem, align 8
  %"$execptr_load_437" = load i8*, i8** @_execptr, align 8
  %"$partial_app2_439" = load %Int32, %Int32* %partial_app2, align 4
  %"$update_value_440" = alloca %Int32, align 8
  store %Int32 %"$partial_app2_439", %Int32* %"$update_value_440", align 4
  %"$update_value_441" = bitcast %Int32* %"$update_value_440" to i8*
  call void @_update_field(i8* %"$execptr_load_437", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$res_438", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_26", i32 0, i8* null, i8* %"$update_value_441"), !dbg !50
  br label %"$matchsucc_390"

"$True_442":                                      ; preds = %"$have_gas_388"
  %"$some_bool__443" = bitcast %TName_Bool* %"$some_bool__391" to %CName_True*
  br label %"$matchsucc_390"

"$empty_default_394":                             ; preds = %"$have_gas_388"
  br label %"$matchsucc_390"

"$matchsucc_390":                                 ; preds = %"$True_442", %"$have_gas_435", %"$empty_default_394"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @dummy2(i8* %0) !dbg !51 {
entry:
  %"$_amount_445" = getelementptr i8, i8* %0, i32 0
  %"$_amount_446" = bitcast i8* %"$_amount_445" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_446", align 8
  %"$_origin_447" = getelementptr i8, i8* %0, i32 16
  %"$_origin_448" = bitcast i8* %"$_origin_447" to [20 x i8]*
  %"$_sender_449" = getelementptr i8, i8* %0, i32 36
  %"$_sender_450" = bitcast i8* %"$_sender_449" to [20 x i8]*
  %"$x1_451" = getelementptr i8, i8* %0, i32 56
  %"$x1_452" = bitcast i8* %"$x1_451" to %Int32*
  %x1 = load %Int32, %Int32* %"$x1_452", align 4
  %"$x2_453" = getelementptr i8, i8* %0, i32 60
  %"$x2_454" = bitcast i8* %"$x2_453" to %Int32*
  %x2 = load %Int32, %Int32* %"$x2_454", align 4
  call void @"$dummy2_350"(%Uint128 %_amount, [20 x i8]* %"$_origin_448", [20 x i8]* %"$_sender_450", %Int32 %x1, %Int32 %x2), !dbg !52
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "uncurry1.scilla", directory: "tests/codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_22", linkageName: "$fundef_22", scope: !2, file: !2, line: 36, type: !5, scopeLine: 36, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 36, column: 21, scope: !4)
!9 = distinct !DISubprogram(name: "$fundef_20", linkageName: "$fundef_20", scope: !2, file: !2, line: 35, type: !5, scopeLine: 35, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 36, column: 21, scope: !9)
!11 = distinct !DISubprogram(name: "$fundef_10", linkageName: "$fundef_10", scope: !2, file: !2, line: 22, type: !5, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 22, column: 13, scope: !11)
!13 = distinct !DISubprogram(name: "$fundef_8", linkageName: "$fundef_8", scope: !2, file: !2, line: 21, type: !5, scopeLine: 21, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = !DILocation(line: 22, column: 13, scope: !13)
!15 = distinct !DISubprogram(name: "$fundef_14", linkageName: "$fundef_14", scope: !2, file: !2, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 14, column: 17, scope: !15)
!17 = distinct !DISubprogram(name: "$fundef_12", linkageName: "$fundef_12", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 12, column: 18, scope: !17)
!19 = !DILocation(line: 14, column: 17, scope: !17)
!20 = distinct !DISubprogram(name: "$fundef_16", linkageName: "$fundef_16", scope: !2, file: !2, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!21 = !DILocation(line: 8, column: 13, scope: !20)
!22 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !23, file: !23, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!23 = !DIFile(filename: ".", directory: ".")
!24 = !DILocation(line: 7, column: 9, scope: !22)
!25 = !DILocation(line: 12, column: 9, scope: !22)
!26 = !DILocation(line: 21, column: 9, scope: !22)
!27 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !23, file: !23, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DILocation(line: 28, column: 26, scope: !27)
!29 = !DILocation(line: 29, column: 21, scope: !27)
!30 = distinct !DISubprogram(name: "dummy", linkageName: "dummy", scope: !2, file: !2, line: 31, type: !5, scopeLine: 31, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!31 = !DILocation(line: 35, column: 17, scope: !30)
!32 = !DILocation(line: 38, column: 18, scope: !30)
!33 = !DILocation(line: 39, column: 18, scope: !30)
!34 = !DILocation(line: 40, column: 20, scope: !30)
!35 = !DILocation(line: 41, column: 9, scope: !30)
!36 = !DILocation(line: 43, column: 18, scope: !30)
!37 = !DILocation(line: 44, column: 18, scope: !30)
!38 = !DILocation(line: 46, column: 9, scope: !30)
!39 = !DILocation(line: 47, column: 5, scope: !30)
!40 = distinct !DISubprogram(name: "dummy", linkageName: "dummy", scope: !2, file: !2, line: 31, type: !5, scopeLine: 31, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!41 = !DILocation(line: 31, column: 12, scope: !40)
!42 = distinct !DISubprogram(name: "dummy2", linkageName: "dummy2", scope: !2, file: !2, line: 50, type: !5, scopeLine: 50, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!43 = !DILocation(line: 53, column: 17, scope: !42)
!44 = !DILocation(line: 55, column: 5, scope: !42)
!45 = !DILocation(line: 56, column: 5, scope: !42)
!46 = !DILocation(line: 58, column: 24, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !2, line: 57, column: 7)
!48 = distinct !DILexicalBlock(scope: !42, file: !2, line: 56, column: 5)
!49 = !DILocation(line: 59, column: 24, scope: !47)
!50 = !DILocation(line: 60, column: 9, scope: !47)
!51 = distinct !DISubprogram(name: "dummy2", linkageName: "dummy2", scope: !2, file: !2, line: 50, type: !5, scopeLine: 50, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!52 = !DILocation(line: 50, column: 12, scope: !51)