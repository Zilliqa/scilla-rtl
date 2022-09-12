; let x = Int32 42 in
; let y = Int32 41 in
; let f = fun (o : Option (Option Int32)) =>
; match o with
; | None => x
; | Some None => y
; | Some (Some z) => z
; end
; in
; let o1 = Some {Int32} x in
; let o2 = Some {(Option Int32)} o1 in
; f o2
; 
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_11" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_43" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_42"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_42" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_44"**, %"$TyDescrTy_ADTTyp_43"* }
%"$TyDescrTy_ADTTyp_Constr_44" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_235" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_236" = type { %ParamDescrString, i32, %"$ParamDescr_235"* }
%"$$fundef_9_env_71" = type { %Int32, %Int32 }
%"TName_Option_Option_(Int32)" = type { i8, %"CName_Some_Option_(Int32)"*, %"CName_None_Option_(Int32)"* }
%"CName_Some_Option_(Int32)" = type <{ i8, %TName_Option_Int32* }>
%TName_Option_Int32 = type { i8, %CName_Some_Int32*, %CName_None_Int32* }
%CName_Some_Int32 = type <{ i8, %Int32 }>
%CName_None_Int32 = type <{ i8 }>
%"CName_None_Option_(Int32)" = type <{ i8 }>

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
@"$TyDescr_ReplicateContr_Prim_38" = global %"$TyDescrTy_PrimTyp_11" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_ReplicateContr_Prim_38" to i8*) }
@"$TyDescr_Bystr_Prim_40" = global %"$TyDescrTy_PrimTyp_11" { i32 7, i32 0 }
@"$TyDescr_Bystr_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Bystr_Prim_40" to i8*) }
@"$TyDescr_ADT_Option_Int32_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Option_Int32_ADTTyp_Specl_59" to i8*) }
@"$TyDescr_ADT_Option_Option_(Int32)_46" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_68" to i8*) }
@"$TyDescr_Option_ADTTyp_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_43" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_70", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_42"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_42"*], [2 x %"$TyDescrTy_ADTTyp_Specl_42"*]* @"$TyDescr_Option_ADTTyp_m_specls_69", i32 0, i32 0) }
@"$TyDescr_Option_Some_Int32_Constr_m_args_51" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_13"]
@"$TyDescr_ADT_Some_52" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int32_ADTTyp_Constr_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_52", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int32_Constr_m_args_51", i32 0, i32 0) }
@"$TyDescr_Option_None_Int32_Constr_m_args_54" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_55" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int32_ADTTyp_Constr_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_55", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int32_Constr_m_args_54", i32 0, i32 0) }
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_57" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Option_Some_Int32_ADTTyp_Constr_53", %"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Option_None_Int32_ADTTyp_Constr_56"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_58" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_13"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_58", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_44"*], [2 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_57", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Option_ADTTyp_50" }
@"$TyDescr_Option_Some_Option_(Int32)_Constr_m_args_60" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_45"]
@"$TyDescr_ADT_Some_61" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Option_(Int32)_ADTTyp_Constr_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_61", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Option_(Int32)_Constr_m_args_60", i32 0, i32 0) }
@"$TyDescr_Option_None_Option_(Int32)_Constr_m_args_63" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_64" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Option_(Int32)_ADTTyp_Constr_65" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_64", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Option_(Int32)_Constr_m_args_63", i32 0, i32 0) }
@"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_constrs_66" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Option_Some_Option_(Int32)_ADTTyp_Constr_62", %"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Option_None_Option_(Int32)_ADTTyp_Constr_65"]
@"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_TArgs_67" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_45"]
@"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_68" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_TArgs_67", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_44"*], [2 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_constrs_66", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Option_ADTTyp_50" }
@"$TyDescr_Option_ADTTyp_m_specls_69" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_42"*] [%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Option_Int32_ADTTyp_Specl_59", %"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_68"]
@"$TyDescr_ADT_Option_70" = unnamed_addr constant [6 x i8] c"Option"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_35", %_TyDescrTy_Typ* @"$TyDescr_Int64_17", %_TyDescrTy_Typ* @"$TyDescr_Uint256_27", %_TyDescrTy_Typ* @"$TyDescr_Uint32_15", %_TyDescrTy_Typ* @"$TyDescr_Uint64_19", %_TyDescrTy_Typ* @"$TyDescr_Bnum_31", %_TyDescrTy_Typ* @"$TyDescr_Uint128_23", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_45", %_TyDescrTy_Typ* @"$TyDescr_Exception_37", %_TyDescrTy_Typ* @"$TyDescr_String_29", %_TyDescrTy_Typ* @"$TyDescr_Int256_25", %_TyDescrTy_Typ* @"$TyDescr_Int128_21", %_TyDescrTy_Typ* @"$TyDescr_Bystr_41", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_39", %_TyDescrTy_Typ* @"$TyDescr_Message_33", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Option_(Int32)_46", %_TyDescrTy_Typ* @"$TyDescr_Int32_13"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_235"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_236"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Int32 @"$fundef_9"(%"$$fundef_9_env_71"* %0, %"TName_Option_Option_(Int32)"* %1) {
entry:
  %"$$fundef_9_env_x_72" = getelementptr inbounds %"$$fundef_9_env_71", %"$$fundef_9_env_71"* %0, i32 0, i32 0
  %"$x_envload_73" = load %Int32, %Int32* %"$$fundef_9_env_x_72", align 4
  %x = alloca %Int32, align 8
  store %Int32 %"$x_envload_73", %Int32* %x, align 4
  %"$$fundef_9_env_y_74" = getelementptr inbounds %"$$fundef_9_env_71", %"$$fundef_9_env_71"* %0, i32 0, i32 1
  %"$y_envload_75" = load %Int32, %Int32* %"$$fundef_9_env_y_74", align 4
  %y = alloca %Int32, align 8
  store %Int32 %"$y_envload_75", %Int32* %y, align 4
  %"$retval_10" = alloca %Int32, align 8
  %"$gasrem_76" = load i64, i64* @_gasrem, align 8
  %"$gascmp_77" = icmp ugt i64 3, %"$gasrem_76"
  br i1 %"$gascmp_77", label %"$out_of_gas_78", label %"$have_gas_79"

"$out_of_gas_78":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_79"

"$have_gas_79":                                   ; preds = %"$out_of_gas_78", %entry
  %"$consume_80" = sub i64 %"$gasrem_76", 3
  store i64 %"$consume_80", i64* @_gasrem, align 8
  %"$o_tag_82" = getelementptr inbounds %"TName_Option_Option_(Int32)", %"TName_Option_Option_(Int32)"* %1, i32 0, i32 0
  %"$o_tag_83" = load i8, i8* %"$o_tag_82", align 1
  switch i8 %"$o_tag_83", label %"$empty_default_84" [
    i8 1, label %"$None_85"
    i8 0, label %"$Some_93"
  ]

"$None_85":                                       ; preds = %"$have_gas_79"
  %"$o_86" = bitcast %"TName_Option_Option_(Int32)"* %1 to %"CName_None_Option_(Int32)"*
  %"$gasrem_87" = load i64, i64* @_gasrem, align 8
  %"$gascmp_88" = icmp ugt i64 1, %"$gasrem_87"
  br i1 %"$gascmp_88", label %"$out_of_gas_89", label %"$have_gas_90"

"$out_of_gas_89":                                 ; preds = %"$None_85"
  call void @_out_of_gas()
  br label %"$have_gas_90"

"$have_gas_90":                                   ; preds = %"$out_of_gas_89", %"$None_85"
  %"$consume_91" = sub i64 %"$gasrem_87", 1
  store i64 %"$consume_91", i64* @_gasrem, align 8
  %"$x_92" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_92", %Int32* %"$retval_10", align 4
  br label %"$matchsucc_81"

"$Some_93":                                       ; preds = %"$have_gas_79"
  %"$o_94" = bitcast %"TName_Option_Option_(Int32)"* %1 to %"CName_Some_Option_(Int32)"*
  %"$$o_6_gep_95" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$o_94", i32 0, i32 1
  %"$$o_6_load_96" = load %TName_Option_Int32*, %TName_Option_Int32** %"$$o_6_gep_95", align 8
  %"$o_6" = alloca %TName_Option_Int32*, align 8
  store %TName_Option_Int32* %"$$o_6_load_96", %TName_Option_Int32** %"$o_6", align 8
  %"$$o_6_98" = load %TName_Option_Int32*, %TName_Option_Int32** %"$o_6", align 8
  %"$$o_6_tag_99" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$o_6_98", i32 0, i32 0
  %"$$o_6_tag_100" = load i8, i8* %"$$o_6_tag_99", align 1
  switch i8 %"$$o_6_tag_100", label %"$empty_default_101" [
    i8 1, label %"$None_102"
    i8 0, label %"$Some_110"
  ]

"$None_102":                                      ; preds = %"$Some_93"
  %"$$o_6_103" = bitcast %TName_Option_Int32* %"$$o_6_98" to %CName_None_Int32*
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$None_102"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$None_102"
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %"$y_109" = load %Int32, %Int32* %y, align 4
  store %Int32 %"$y_109", %Int32* %"$retval_10", align 4
  br label %"$matchsucc_97"

"$Some_110":                                      ; preds = %"$Some_93"
  %"$$o_6_111" = bitcast %TName_Option_Int32* %"$$o_6_98" to %CName_Some_Int32*
  %"$z_gep_112" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$o_6_111", i32 0, i32 1
  %"$z_load_113" = load %Int32, %Int32* %"$z_gep_112", align 4
  %z = alloca %Int32, align 8
  store %Int32 %"$z_load_113", %Int32* %z, align 4
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %"$Some_110"
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %"$Some_110"
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem, align 8
  %"$z_119" = load %Int32, %Int32* %z, align 4
  store %Int32 %"$z_119", %Int32* %"$retval_10", align 4
  br label %"$matchsucc_97"

"$empty_default_101":                             ; preds = %"$Some_93"
  br label %"$matchsucc_97"

"$matchsucc_97":                                  ; preds = %"$have_gas_117", %"$have_gas_107", %"$empty_default_101"
  br label %"$matchsucc_81"

"$empty_default_84":                              ; preds = %"$have_gas_79"
  br label %"$matchsucc_81"

"$matchsucc_81":                                  ; preds = %"$matchsucc_97", %"$have_gas_90", %"$empty_default_84"
  %"$$retval_10_120" = load %Int32, %Int32* %"$retval_10", align 4
  ret %Int32 %"$$retval_10_120"
}

declare void @_out_of_gas()

define void @_init_libs() {
entry:
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 5, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %entry
  %"$consume_125" = sub i64 %"$gasrem_121", 5
  store i64 %"$consume_125", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 8, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_124"
  %"$consume_130" = sub i64 %"$gasrem_126", 8
  store i64 %"$consume_130", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 196, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 196
  store i64 %"$consume_135", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 20, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$have_gas_134"
  %"$consume_140" = sub i64 %"$gasrem_136", 20
  store i64 %"$consume_140", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 12, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_139"
  %"$consume_145" = sub i64 %"$gasrem_141", 12
  store i64 %"$consume_145", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 2, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_144"
  %"$consume_150" = sub i64 %"$gasrem_146", 2
  store i64 %"$consume_150", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_8" = alloca %Int32, align 8
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %entry
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %x = alloca %Int32, align 8
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_154"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %x, align 4
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_159"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  %y = alloca %Int32, align 8
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_164"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  store %Int32 { i32 41 }, %Int32* %y, align 4
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_169"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %f = alloca { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }, align 8
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_174"
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %"$$fundef_9_envp_181_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_9_envp_181_salloc" = call i8* @_salloc(i8* %"$$fundef_9_envp_181_load", i64 8)
  %"$$fundef_9_envp_181" = bitcast i8* %"$$fundef_9_envp_181_salloc" to %"$$fundef_9_env_71"*
  %"$$fundef_9_env_voidp_183" = bitcast %"$$fundef_9_env_71"* %"$$fundef_9_envp_181" to i8*
  %"$$fundef_9_cloval_184" = insertvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)* bitcast (%Int32 (%"$$fundef_9_env_71"*, %"TName_Option_Option_(Int32)"*)* @"$fundef_9" to %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*), i8* undef }, i8* %"$$fundef_9_env_voidp_183", 1
  %"$$fundef_9_env_x_185" = getelementptr inbounds %"$$fundef_9_env_71", %"$$fundef_9_env_71"* %"$$fundef_9_envp_181", i32 0, i32 0
  %"$x_186" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_186", %Int32* %"$$fundef_9_env_x_185", align 4
  %"$$fundef_9_env_y_187" = getelementptr inbounds %"$$fundef_9_env_71", %"$$fundef_9_env_71"* %"$$fundef_9_envp_181", i32 0, i32 1
  %"$y_188" = load %Int32, %Int32* %y, align 4
  store %Int32 %"$y_188", %Int32* %"$$fundef_9_env_y_187", align 4
  store { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$$fundef_9_cloval_184", { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }* %f, align 8
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_179"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %o1 = alloca %TName_Option_Int32*, align 8
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$have_gas_192"
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %"$x_199" = load %Int32, %Int32* %x, align 4
  %"$adtval_200_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_200_salloc" = call i8* @_salloc(i8* %"$adtval_200_load", i64 5)
  %"$adtval_200" = bitcast i8* %"$adtval_200_salloc" to %CName_Some_Int32*
  %"$adtgep_201" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$adtval_200", i32 0, i32 0
  store i8 0, i8* %"$adtgep_201", align 1
  %"$adtgep_202" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$adtval_200", i32 0, i32 1
  store %Int32 %"$x_199", %Int32* %"$adtgep_202", align 4
  %"$adtptr_203" = bitcast %CName_Some_Int32* %"$adtval_200" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$adtptr_203", %TName_Option_Int32** %o1, align 8
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 1, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$have_gas_197"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$have_gas_197"
  %"$consume_208" = sub i64 %"$gasrem_204", 1
  store i64 %"$consume_208", i64* @_gasrem, align 8
  %o2 = alloca %"TName_Option_Option_(Int32)"*, align 8
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 1, %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %"$have_gas_207"
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %"$have_gas_207"
  %"$consume_213" = sub i64 %"$gasrem_209", 1
  store i64 %"$consume_213", i64* @_gasrem, align 8
  %"$o1_214" = load %TName_Option_Int32*, %TName_Option_Int32** %o1, align 8
  %"$adtval_215_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_215_salloc" = call i8* @_salloc(i8* %"$adtval_215_load", i64 9)
  %"$adtval_215" = bitcast i8* %"$adtval_215_salloc" to %"CName_Some_Option_(Int32)"*
  %"$adtgep_216" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$adtval_215", i32 0, i32 0
  store i8 0, i8* %"$adtgep_216", align 1
  %"$adtgep_217" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$adtval_215", i32 0, i32 1
  store %TName_Option_Int32* %"$o1_214", %TName_Option_Int32** %"$adtgep_217", align 8
  %"$adtptr_218" = bitcast %"CName_Some_Option_(Int32)"* %"$adtval_215" to %"TName_Option_Option_(Int32)"*
  store %"TName_Option_Option_(Int32)"* %"$adtptr_218", %"TName_Option_Option_(Int32)"** %o2, align 8
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_212"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_212"
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %"$f_7" = alloca %Int32, align 8
  %"$f_224" = load { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }, { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }* %f, align 8
  %"$f_fptr_225" = extractvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$f_224", 0
  %"$f_envptr_226" = extractvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$f_224", 1
  %"$o2_227" = load %"TName_Option_Option_(Int32)"*, %"TName_Option_Option_(Int32)"** %o2, align 8
  %"$f_call_228" = call %Int32 %"$f_fptr_225"(i8* %"$f_envptr_226", %"TName_Option_Option_(Int32)"* %"$o2_227")
  store %Int32 %"$f_call_228", %Int32* %"$f_7", align 4
  %"$$f_7_229" = load %Int32, %Int32* %"$f_7", align 4
  store %Int32 %"$$f_7_229", %Int32* %"$expr_8", align 4
  %"$$expr_8_230" = load %Int32, %Int32* %"$expr_8", align 4
  ret %Int32 %"$$expr_8_230"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_231" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_232" = alloca %Int32, align 8
  %"$memvoidcast_233" = bitcast %Int32* %"$pval_232" to i8*
  store %Int32 %"$exprval_231", %Int32* %"$pval_232", align 4
  %"$execptr_load_234" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_234", %_TyDescrTy_Typ* @"$TyDescr_Int32_13", i8* %"$memvoidcast_233")
  ret void
}
