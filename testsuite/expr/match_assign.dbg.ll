; let b = False in
; match b with
; | True =>
; let x = Int32 1 in
; x
; | False =>
; let x = Int32 2 in
; x
; end
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_37" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_36"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_36" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_38"**, %"$TyDescrTy_ADTTyp_37"* }
%"$TyDescrTy_ADTTyp_Constr_38" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_149" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_150" = type { %ParamDescrString, i32, %"$ParamDescr_149"* }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

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
@"$TyDescr_ADT_Bool_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Bool_ADTTyp_Specl_52" to i8*) }
@"$TyDescr_Bool_ADTTyp_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_54", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_Bool_ADTTyp_m_specls_53", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_44" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_45" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_45", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_44", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_47" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_48" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_48", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_50" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Bool_True_ADTTyp_Constr_46", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Bool_False_ADTTyp_Constr_49"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_51" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_Bool_ADTTyp_43" }
@"$TyDescr_Bool_ADTTyp_m_specls_53" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Bool_ADTTyp_Specl_52"]
@"$TyDescr_ADT_Bool_54" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_39", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_149"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_150"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_55" = load i64, i64* @_gasrem, align 8
  %"$gascmp_56" = icmp ugt i64 5, %"$gasrem_55"
  br i1 %"$gascmp_56", label %"$out_of_gas_57", label %"$have_gas_58"

"$out_of_gas_57":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_58"

"$have_gas_58":                                   ; preds = %"$out_of_gas_57", %entry
  %"$consume_59" = sub i64 %"$gasrem_55", 5
  store i64 %"$consume_59", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !9
  %"$gasrem_60" = load i64, i64* @_gasrem, align 8
  %"$gascmp_61" = icmp ugt i64 8, %"$gasrem_60"
  br i1 %"$gascmp_61", label %"$out_of_gas_62", label %"$have_gas_63"

"$out_of_gas_62":                                 ; preds = %"$have_gas_58"
  call void @_out_of_gas()
  br label %"$have_gas_63"

"$have_gas_63":                                   ; preds = %"$out_of_gas_62", %"$have_gas_58"
  %"$consume_64" = sub i64 %"$gasrem_60", 8
  store i64 %"$consume_64", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !9
  %"$gasrem_65" = load i64, i64* @_gasrem, align 8
  %"$gascmp_66" = icmp ugt i64 196, %"$gasrem_65"
  br i1 %"$gascmp_66", label %"$out_of_gas_67", label %"$have_gas_68"

"$out_of_gas_67":                                 ; preds = %"$have_gas_63"
  call void @_out_of_gas()
  br label %"$have_gas_68"

"$have_gas_68":                                   ; preds = %"$out_of_gas_67", %"$have_gas_63"
  %"$consume_69" = sub i64 %"$gasrem_65", 196
  store i64 %"$consume_69", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !9
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 20, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %"$have_gas_68"
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %"$have_gas_68"
  %"$consume_74" = sub i64 %"$gasrem_70", 20
  store i64 %"$consume_74", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !9
  %"$gasrem_75" = load i64, i64* @_gasrem, align 8
  %"$gascmp_76" = icmp ugt i64 12, %"$gasrem_75"
  br i1 %"$gascmp_76", label %"$out_of_gas_77", label %"$have_gas_78"

"$out_of_gas_77":                                 ; preds = %"$have_gas_73"
  call void @_out_of_gas()
  br label %"$have_gas_78"

"$have_gas_78":                                   ; preds = %"$out_of_gas_77", %"$have_gas_73"
  %"$consume_79" = sub i64 %"$gasrem_75", 12
  store i64 %"$consume_79", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !9
  %"$gasrem_80" = load i64, i64* @_gasrem, align 8
  %"$gascmp_81" = icmp ugt i64 2, %"$gasrem_80"
  br i1 %"$gascmp_81", label %"$out_of_gas_82", label %"$have_gas_83"

"$out_of_gas_82":                                 ; preds = %"$have_gas_78"
  call void @_out_of_gas()
  br label %"$have_gas_83"

"$have_gas_83":                                   ; preds = %"$out_of_gas_82", %"$have_gas_78"
  %"$consume_84" = sub i64 %"$gasrem_80", 2
  store i64 %"$consume_84", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define internal %Int32 @_scilla_expr_fun(i8* %0) !dbg !10 {
entry:
  %"$expr_6" = alloca %Int32, align 8
  %"$gasrem_85" = load i64, i64* @_gasrem, align 8
  %"$gascmp_86" = icmp ugt i64 1, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %entry
  %"$consume_89" = sub i64 %"$gasrem_85", 1
  store i64 %"$consume_89", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$have_gas_88"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$have_gas_88"
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  %"$adtval_95_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_95_salloc" = call i8* @_salloc(i8* %"$adtval_95_load", i64 1)
  %"$adtval_95" = bitcast i8* %"$adtval_95_salloc" to %CName_False*
  %"$adtgep_96" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_95", i32 0, i32 0
  store i8 1, i8* %"$adtgep_96", align 1
  %"$adtptr_97" = bitcast %CName_False* %"$adtval_95" to %TName_Bool*
  store %TName_Bool* %"$adtptr_97", %TName_Bool** %b, align 8, !dbg !11
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 2, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_93"
  %"$consume_102" = sub i64 %"$gasrem_98", 2
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %"$b_104" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_105" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_104", i32 0, i32 0
  %"$b_tag_106" = load i8, i8* %"$b_tag_105", align 1
  switch i8 %"$b_tag_106", label %"$empty_default_107" [
    i8 0, label %"$True_108"
    i8 1, label %"$False_126"
  ], !dbg !12

"$True_108":                                      ; preds = %"$have_gas_101"
  %"$b_109" = bitcast %TName_Bool* %"$b_104" to %CName_True*
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$True_108"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$True_108"
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %x = alloca %Int32, align 8
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 1, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %"$have_gas_113"
  %"$consume_119" = sub i64 %"$gasrem_115", 1
  store i64 %"$consume_119", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %x, align 4, !dbg !13
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$have_gas_118"
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem, align 8
  %"$x_125" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_125", %Int32* %"$expr_6", align 4, !dbg !16
  br label %"$matchsucc_103"

"$False_126":                                     ; preds = %"$have_gas_101"
  %"$b_127" = bitcast %TName_Bool* %"$b_104" to %CName_False*
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$False_126"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$False_126"
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  %x1 = alloca %Int32, align 8
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$have_gas_131"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* %x1, align 4, !dbg !17
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_136"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_136"
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem, align 8
  %"$x_143" = load %Int32, %Int32* %x1, align 4
  store %Int32 %"$x_143", %Int32* %"$expr_6", align 4, !dbg !19
  br label %"$matchsucc_103"

"$empty_default_107":                             ; preds = %"$have_gas_101"
  br label %"$matchsucc_103"

"$matchsucc_103":                                 ; preds = %"$have_gas_141", %"$have_gas_123", %"$empty_default_107"
  %"$$expr_6_144" = load %Int32, %Int32* %"$expr_6", align 4
  ret %Int32 %"$$expr_6_144"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_145" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_146" = alloca %Int32, align 8
  %"$memvoidcast_147" = bitcast %Int32* %"$pval_146" to i8*
  store %Int32 %"$exprval_145", %Int32* %"$pval_146", align 4
  %"$execptr_load_148" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_148", %_TyDescrTy_Typ* @"$TyDescr_Int32_9", i8* %"$memvoidcast_147")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "match_assign.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 1, column: 9, scope: !10)
!12 = !DILocation(line: 2, column: 1, scope: !10)
!13 = !DILocation(line: 4, column: 11, scope: !14)
!14 = distinct !DILexicalBlock(scope: !15, file: !2, line: 3, column: 3)
!15 = distinct !DILexicalBlock(scope: !10, file: !2, line: 2, column: 1)
!16 = !DILocation(line: 5, column: 3, scope: !14)
!17 = !DILocation(line: 7, column: 11, scope: !18)
!18 = distinct !DILexicalBlock(scope: !15, file: !2, line: 6, column: 3)
!19 = !DILocation(line: 8, column: 3, scope: !18)
