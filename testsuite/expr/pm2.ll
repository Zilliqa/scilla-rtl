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
%"$TyDescrTy_ADTTyp_41" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_40"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_40" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_42"**, %"$TyDescrTy_ADTTyp_41"* }
%"$TyDescrTy_ADTTyp_Constr_42" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_233" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_234" = type { %ParamDescrString, i32, %"$ParamDescr_233"* }
%"$$fundef_9_env_69" = type { %Int32, %Int32 }
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
@"$TyDescr_Bystr_Prim_38" = global %"$TyDescrTy_PrimTyp_11" { i32 7, i32 0 }
@"$TyDescr_Bystr_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Bystr_Prim_38" to i8*) }
@"$TyDescr_ADT_Option_Int32_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_Option_Int32_ADTTyp_Specl_57" to i8*) }
@"$TyDescr_ADT_Option_Option_(Int32)_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_66" to i8*) }
@"$TyDescr_Option_ADTTyp_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_41" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_68", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_40"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_40"*], [2 x %"$TyDescrTy_ADTTyp_Specl_40"*]* @"$TyDescr_Option_ADTTyp_m_specls_67", i32 0, i32 0) }
@"$TyDescr_Option_Some_Int32_Constr_m_args_49" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_13"]
@"$TyDescr_ADT_Some_50" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int32_ADTTyp_Constr_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_50", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int32_Constr_m_args_49", i32 0, i32 0) }
@"$TyDescr_Option_None_Int32_Constr_m_args_52" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_53" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int32_ADTTyp_Constr_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_53", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int32_Constr_m_args_52", i32 0, i32 0) }
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_55" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_42"*] [%"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_Option_Some_Int32_ADTTyp_Constr_51", %"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_Option_None_Int32_ADTTyp_Constr_54"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_56" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_13"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_40" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_42"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_42"*], [2 x %"$TyDescrTy_ADTTyp_Constr_42"*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_55", i32 0, i32 0), %"$TyDescrTy_ADTTyp_41"* @"$TyDescr_Option_ADTTyp_48" }
@"$TyDescr_Option_Some_Option_(Int32)_Constr_m_args_58" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_43"]
@"$TyDescr_ADT_Some_59" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Option_(Int32)_ADTTyp_Constr_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_59", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Option_(Int32)_Constr_m_args_58", i32 0, i32 0) }
@"$TyDescr_Option_None_Option_(Int32)_Constr_m_args_61" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_62" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Option_(Int32)_ADTTyp_Constr_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_42" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_62", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Option_(Int32)_Constr_m_args_61", i32 0, i32 0) }
@"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_constrs_64" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_42"*] [%"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_Option_Some_Option_(Int32)_ADTTyp_Constr_60", %"$TyDescrTy_ADTTyp_Constr_42"* @"$TyDescr_Option_None_Option_(Int32)_ADTTyp_Constr_63"]
@"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_TArgs_65" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_43"]
@"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_66" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_40" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_TArgs_65", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_42"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_42"*], [2 x %"$TyDescrTy_ADTTyp_Constr_42"*]* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_constrs_64", i32 0, i32 0), %"$TyDescrTy_ADTTyp_41"* @"$TyDescr_Option_ADTTyp_48" }
@"$TyDescr_Option_ADTTyp_m_specls_67" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_40"*] [%"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_Option_Int32_ADTTyp_Specl_57", %"$TyDescrTy_ADTTyp_Specl_40"* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_66"]
@"$TyDescr_ADT_Option_68" = unnamed_addr constant [6 x i8] c"Option"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_35", %_TyDescrTy_Typ* @"$TyDescr_Int64_17", %_TyDescrTy_Typ* @"$TyDescr_Uint256_27", %_TyDescrTy_Typ* @"$TyDescr_Uint32_15", %_TyDescrTy_Typ* @"$TyDescr_Uint64_19", %_TyDescrTy_Typ* @"$TyDescr_Bnum_31", %_TyDescrTy_Typ* @"$TyDescr_Uint128_23", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_43", %_TyDescrTy_Typ* @"$TyDescr_Exception_37", %_TyDescrTy_Typ* @"$TyDescr_String_29", %_TyDescrTy_Typ* @"$TyDescr_Int256_25", %_TyDescrTy_Typ* @"$TyDescr_Int128_21", %_TyDescrTy_Typ* @"$TyDescr_Bystr_39", %_TyDescrTy_Typ* @"$TyDescr_Message_33", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Option_(Int32)_44", %_TyDescrTy_Typ* @"$TyDescr_Int32_13"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_233"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_234"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Int32 @"$fundef_9"(%"$$fundef_9_env_69"* %0, %"TName_Option_Option_(Int32)"* %1) {
entry:
  %"$$fundef_9_env_x_70" = getelementptr inbounds %"$$fundef_9_env_69", %"$$fundef_9_env_69"* %0, i32 0, i32 0
  %"$x_envload_71" = load %Int32, %Int32* %"$$fundef_9_env_x_70", align 4
  %x = alloca %Int32, align 8
  store %Int32 %"$x_envload_71", %Int32* %x, align 4
  %"$$fundef_9_env_y_72" = getelementptr inbounds %"$$fundef_9_env_69", %"$$fundef_9_env_69"* %0, i32 0, i32 1
  %"$y_envload_73" = load %Int32, %Int32* %"$$fundef_9_env_y_72", align 4
  %y = alloca %Int32, align 8
  store %Int32 %"$y_envload_73", %Int32* %y, align 4
  %"$retval_10" = alloca %Int32, align 8
  %"$gasrem_74" = load i64, i64* @_gasrem, align 8
  %"$gascmp_75" = icmp ugt i64 3, %"$gasrem_74"
  br i1 %"$gascmp_75", label %"$out_of_gas_76", label %"$have_gas_77"

"$out_of_gas_76":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_77"

"$have_gas_77":                                   ; preds = %"$out_of_gas_76", %entry
  %"$consume_78" = sub i64 %"$gasrem_74", 3
  store i64 %"$consume_78", i64* @_gasrem, align 8
  %"$o_tag_80" = getelementptr inbounds %"TName_Option_Option_(Int32)", %"TName_Option_Option_(Int32)"* %1, i32 0, i32 0
  %"$o_tag_81" = load i8, i8* %"$o_tag_80", align 1
  switch i8 %"$o_tag_81", label %"$empty_default_82" [
    i8 1, label %"$None_83"
    i8 0, label %"$Some_91"
  ]

"$None_83":                                       ; preds = %"$have_gas_77"
  %"$o_84" = bitcast %"TName_Option_Option_(Int32)"* %1 to %"CName_None_Option_(Int32)"*
  %"$gasrem_85" = load i64, i64* @_gasrem, align 8
  %"$gascmp_86" = icmp ugt i64 1, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %"$None_83"
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %"$None_83"
  %"$consume_89" = sub i64 %"$gasrem_85", 1
  store i64 %"$consume_89", i64* @_gasrem, align 8
  %"$x_90" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_90", %Int32* %"$retval_10", align 4
  br label %"$matchsucc_79"

"$Some_91":                                       ; preds = %"$have_gas_77"
  %"$o_92" = bitcast %"TName_Option_Option_(Int32)"* %1 to %"CName_Some_Option_(Int32)"*
  %"$$o_6_gep_93" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$o_92", i32 0, i32 1
  %"$$o_6_load_94" = load %TName_Option_Int32*, %TName_Option_Int32** %"$$o_6_gep_93", align 8
  %"$o_6" = alloca %TName_Option_Int32*, align 8
  store %TName_Option_Int32* %"$$o_6_load_94", %TName_Option_Int32** %"$o_6", align 8
  %"$$o_6_96" = load %TName_Option_Int32*, %TName_Option_Int32** %"$o_6", align 8
  %"$$o_6_tag_97" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$o_6_96", i32 0, i32 0
  %"$$o_6_tag_98" = load i8, i8* %"$$o_6_tag_97", align 1
  switch i8 %"$$o_6_tag_98", label %"$empty_default_99" [
    i8 1, label %"$None_100"
    i8 0, label %"$Some_108"
  ]

"$None_100":                                      ; preds = %"$Some_91"
  %"$$o_6_101" = bitcast %TName_Option_Int32* %"$$o_6_96" to %CName_None_Int32*
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 1, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$None_100"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$None_100"
  %"$consume_106" = sub i64 %"$gasrem_102", 1
  store i64 %"$consume_106", i64* @_gasrem, align 8
  %"$y_107" = load %Int32, %Int32* %y, align 4
  store %Int32 %"$y_107", %Int32* %"$retval_10", align 4
  br label %"$matchsucc_95"

"$Some_108":                                      ; preds = %"$Some_91"
  %"$$o_6_109" = bitcast %TName_Option_Int32* %"$$o_6_96" to %CName_Some_Int32*
  %"$z_gep_110" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$o_6_109", i32 0, i32 1
  %"$z_load_111" = load %Int32, %Int32* %"$z_gep_110", align 4
  %z = alloca %Int32, align 8
  store %Int32 %"$z_load_111", %Int32* %z, align 4
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %"$Some_108"
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %"$Some_108"
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  %"$z_117" = load %Int32, %Int32* %z, align 4
  store %Int32 %"$z_117", %Int32* %"$retval_10", align 4
  br label %"$matchsucc_95"

"$empty_default_99":                              ; preds = %"$Some_91"
  br label %"$matchsucc_95"

"$matchsucc_95":                                  ; preds = %"$have_gas_115", %"$have_gas_105", %"$empty_default_99"
  br label %"$matchsucc_79"

"$empty_default_82":                              ; preds = %"$have_gas_77"
  br label %"$matchsucc_79"

"$matchsucc_79":                                  ; preds = %"$matchsucc_95", %"$have_gas_88", %"$empty_default_82"
  %"$$retval_10_118" = load %Int32, %Int32* %"$retval_10", align 4
  ret %Int32 %"$$retval_10_118"
}

declare void @_out_of_gas()

define void @_init_libs() {
entry:
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 5, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %entry
  %"$consume_123" = sub i64 %"$gasrem_119", 5
  store i64 %"$consume_123", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 8, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$have_gas_122"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$have_gas_122"
  %"$consume_128" = sub i64 %"$gasrem_124", 8
  store i64 %"$consume_128", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 196, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 196
  store i64 %"$consume_133", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 20, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 20
  store i64 %"$consume_138", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 12, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_137"
  %"$consume_143" = sub i64 %"$gasrem_139", 12
  store i64 %"$consume_143", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 2, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_142"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_142"
  %"$consume_148" = sub i64 %"$gasrem_144", 2
  store i64 %"$consume_148", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_8" = alloca %Int32, align 8
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 1, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %entry
  %"$consume_153" = sub i64 %"$gasrem_149", 1
  store i64 %"$consume_153", i64* @_gasrem, align 8
  %x = alloca %Int32, align 8
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 1, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %"$have_gas_152"
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %"$have_gas_152"
  %"$consume_158" = sub i64 %"$gasrem_154", 1
  store i64 %"$consume_158", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %x, align 4
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_157"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_157"
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem, align 8
  %y = alloca %Int32, align 8
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_162"
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  store %Int32 { i32 41 }, %Int32* %y, align 4
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %"$have_gas_167"
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem, align 8
  %f = alloca { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }, align 8
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_172"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_172"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %"$$fundef_9_envp_179_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_9_envp_179_salloc" = call i8* @_salloc(i8* %"$$fundef_9_envp_179_load", i64 8)
  %"$$fundef_9_envp_179" = bitcast i8* %"$$fundef_9_envp_179_salloc" to %"$$fundef_9_env_69"*
  %"$$fundef_9_env_voidp_181" = bitcast %"$$fundef_9_env_69"* %"$$fundef_9_envp_179" to i8*
  %"$$fundef_9_cloval_182" = insertvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)* bitcast (%Int32 (%"$$fundef_9_env_69"*, %"TName_Option_Option_(Int32)"*)* @"$fundef_9" to %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*), i8* undef }, i8* %"$$fundef_9_env_voidp_181", 1
  %"$$fundef_9_env_x_183" = getelementptr inbounds %"$$fundef_9_env_69", %"$$fundef_9_env_69"* %"$$fundef_9_envp_179", i32 0, i32 0
  %"$x_184" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_184", %Int32* %"$$fundef_9_env_x_183", align 4
  %"$$fundef_9_env_y_185" = getelementptr inbounds %"$$fundef_9_env_69", %"$$fundef_9_env_69"* %"$$fundef_9_envp_179", i32 0, i32 1
  %"$y_186" = load %Int32, %Int32* %y, align 4
  store %Int32 %"$y_186", %Int32* %"$$fundef_9_env_y_185", align 4
  store { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$$fundef_9_cloval_182", { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }* %f, align 8
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 1, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$have_gas_177"
  %"$consume_191" = sub i64 %"$gasrem_187", 1
  store i64 %"$consume_191", i64* @_gasrem, align 8
  %o1 = alloca %TName_Option_Int32*, align 8
  %"$gasrem_192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_193" = icmp ugt i64 1, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %"$have_gas_190"
  %"$consume_196" = sub i64 %"$gasrem_192", 1
  store i64 %"$consume_196", i64* @_gasrem, align 8
  %"$x_197" = load %Int32, %Int32* %x, align 4
  %"$adtval_198_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_198_salloc" = call i8* @_salloc(i8* %"$adtval_198_load", i64 5)
  %"$adtval_198" = bitcast i8* %"$adtval_198_salloc" to %CName_Some_Int32*
  %"$adtgep_199" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$adtval_198", i32 0, i32 0
  store i8 0, i8* %"$adtgep_199", align 1
  %"$adtgep_200" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$adtval_198", i32 0, i32 1
  store %Int32 %"$x_197", %Int32* %"$adtgep_200", align 4
  %"$adtptr_201" = bitcast %CName_Some_Int32* %"$adtval_198" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$adtptr_201", %TName_Option_Int32** %o1, align 8
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_195"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_195"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %o2 = alloca %"TName_Option_Option_(Int32)"*, align 8
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 1, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$have_gas_205"
  %"$consume_211" = sub i64 %"$gasrem_207", 1
  store i64 %"$consume_211", i64* @_gasrem, align 8
  %"$o1_212" = load %TName_Option_Int32*, %TName_Option_Int32** %o1, align 8
  %"$adtval_213_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_213_salloc" = call i8* @_salloc(i8* %"$adtval_213_load", i64 9)
  %"$adtval_213" = bitcast i8* %"$adtval_213_salloc" to %"CName_Some_Option_(Int32)"*
  %"$adtgep_214" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$adtval_213", i32 0, i32 0
  store i8 0, i8* %"$adtgep_214", align 1
  %"$adtgep_215" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$adtval_213", i32 0, i32 1
  store %TName_Option_Int32* %"$o1_212", %TName_Option_Int32** %"$adtgep_215", align 8
  %"$adtptr_216" = bitcast %"CName_Some_Option_(Int32)"* %"$adtval_213" to %"TName_Option_Option_(Int32)"*
  store %"TName_Option_Option_(Int32)"* %"$adtptr_216", %"TName_Option_Option_(Int32)"** %o2, align 8
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_210"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_210"
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %"$f_7" = alloca %Int32, align 8
  %"$f_222" = load { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }, { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }* %f, align 8
  %"$f_fptr_223" = extractvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$f_222", 0
  %"$f_envptr_224" = extractvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$f_222", 1
  %"$o2_225" = load %"TName_Option_Option_(Int32)"*, %"TName_Option_Option_(Int32)"** %o2, align 8
  %"$f_call_226" = call %Int32 %"$f_fptr_223"(i8* %"$f_envptr_224", %"TName_Option_Option_(Int32)"* %"$o2_225")
  store %Int32 %"$f_call_226", %Int32* %"$f_7", align 4
  %"$$f_7_227" = load %Int32, %Int32* %"$f_7", align 4
  store %Int32 %"$$f_7_227", %Int32* %"$expr_8", align 4
  %"$$expr_8_228" = load %Int32, %Int32* %"$expr_8", align 4
  ret %Int32 %"$$expr_8_228"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_229" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_230" = alloca %Int32, align 8
  %"$memvoidcast_231" = bitcast %Int32* %"$pval_230" to i8*
  store %Int32 %"$exprval_229", %Int32* %"$pval_230", align 4
  %"$execptr_load_232" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_232", %_TyDescrTy_Typ* @"$TyDescr_Int32_13", i8* %"$memvoidcast_231")
  ret void
}
