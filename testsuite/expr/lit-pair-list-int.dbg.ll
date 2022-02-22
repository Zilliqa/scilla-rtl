; let nil_int32 = Nil {Int32} in
; let ione = Int32 1 in
; let cons_int32 = Cons {Int32} ione nil_int32 in
; let nil_uint32 = Nil {Uint32} in
; let uione = Uint32 1 in
; let cons_uint32 = Cons {Uint32} uione nil_uint32 in
; Pair {(List Int32) (List Uint32)} cons_int32 cons_uint32
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
%"$ParamDescr_201" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_202" = type { %ParamDescrString, i32, %"$ParamDescr_201"* }
%"TName_Pair_List_(Int32)_List_(Uint32)" = type { i8, %"CName_Pair_List_(Int32)_List_(Uint32)"* }
%"CName_Pair_List_(Int32)_List_(Uint32)" = type <{ i8, %TName_List_Int32*, %TName_List_Uint32* }>
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>
%TName_List_Uint32 = type { i8, %CName_Cons_Uint32*, %CName_Nil_Uint32* }
%CName_Cons_Uint32 = type <{ i8, %Uint32, %TName_List_Uint32* }>
%Uint32 = type { i32 }
%CName_Nil_Uint32 = type <{ i8 }>

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
@"$TyDescr_ADT_List_Uint32_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Uint32_ADTTyp_Specl_54" to i8*) }
@"$TyDescr_ADT_List_Int32_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Int32_ADTTyp_Specl_63" to i8*) }
@"$TyDescr_ADT_Pair_List_(Int32)_List_(Uint32)_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_72" to i8*) }
@"$TyDescr_List_ADTTyp_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_65", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_36"*], [2 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_List_ADTTyp_m_specls_64", i32 0, i32 0) }
@"$TyDescr_List_Cons_Uint32_Constr_m_args_46" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Uint32_39"]
@"$TyDescr_ADT_Cons_47" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Uint32_ADTTyp_Constr_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_47", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Uint32_Constr_m_args_46", i32 0, i32 0) }
@"$TyDescr_List_Nil_Uint32_Constr_m_args_49" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_50" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Uint32_ADTTyp_Constr_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_50", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Uint32_Constr_m_args_49", i32 0, i32 0) }
@"$TyDescr_List_Uint32_ADTTyp_Specl_m_constrs_52" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Cons_Uint32_ADTTyp_Constr_48", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Nil_Uint32_ADTTyp_Constr_51"]
@"$TyDescr_List_Uint32_ADTTyp_Specl_m_TArgs_53" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_11"]
@"$TyDescr_List_Uint32_ADTTyp_Specl_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Uint32_ADTTyp_Specl_m_TArgs_53", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_List_Uint32_ADTTyp_Specl_m_constrs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_List_ADTTyp_45" }
@"$TyDescr_List_Cons_Int32_Constr_m_args_55" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_40"]
@"$TyDescr_ADT_Cons_56" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_56", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_55", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_58" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_59" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_59", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_58", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_61" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_57", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_60"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_62" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@"$TyDescr_List_Int32_ADTTyp_Specl_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_62", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_61", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_List_ADTTyp_45" }
@"$TyDescr_List_ADTTyp_m_specls_64" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Uint32_ADTTyp_Specl_54", %"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Int32_ADTTyp_Specl_63"]
@"$TyDescr_ADT_List_65" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Pair_ADTTyp_66" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_74", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_Pair_ADTTyp_m_specls_73", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_Constr_m_args_67" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_40", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Uint32_39"]
@"$TyDescr_ADT_Pair_68" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Constr_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_68", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_Constr_m_args_67", i32 0, i32 0) }
@"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_constrs_70" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Constr_69"]
@"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_TArgs_71" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_40", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Uint32_39"]
@"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_TArgs_71", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_38"*], [1 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_constrs_70", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_Pair_ADTTyp_66" }
@"$TyDescr_Pair_ADTTyp_m_specls_73" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_72"]
@"$TyDescr_ADT_Pair_74" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Uint32_39", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_List_(Int32)_List_(Uint32)_41", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_40", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_201"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_202"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_75" = load i64, i64* @_gasrem, align 8
  %"$gascmp_76" = icmp ugt i64 5, %"$gasrem_75"
  br i1 %"$gascmp_76", label %"$out_of_gas_77", label %"$have_gas_78"

"$out_of_gas_77":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_78"

"$have_gas_78":                                   ; preds = %"$out_of_gas_77", %entry
  %"$consume_79" = sub i64 %"$gasrem_75", 5
  store i64 %"$consume_79", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !9
  %"$gasrem_80" = load i64, i64* @_gasrem, align 8
  %"$gascmp_81" = icmp ugt i64 8, %"$gasrem_80"
  br i1 %"$gascmp_81", label %"$out_of_gas_82", label %"$have_gas_83"

"$out_of_gas_82":                                 ; preds = %"$have_gas_78"
  call void @_out_of_gas()
  br label %"$have_gas_83"

"$have_gas_83":                                   ; preds = %"$out_of_gas_82", %"$have_gas_78"
  %"$consume_84" = sub i64 %"$gasrem_80", 8
  store i64 %"$consume_84", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !9
  %"$gasrem_85" = load i64, i64* @_gasrem, align 8
  %"$gascmp_86" = icmp ugt i64 196, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %"$have_gas_83"
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %"$have_gas_83"
  %"$consume_89" = sub i64 %"$gasrem_85", 196
  store i64 %"$consume_89", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !9
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 20, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$have_gas_88"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$have_gas_88"
  %"$consume_94" = sub i64 %"$gasrem_90", 20
  store i64 %"$consume_94", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !9
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 12, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_93"
  %"$consume_99" = sub i64 %"$gasrem_95", 12
  store i64 %"$consume_99", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !9
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 2, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_98"
  %"$consume_104" = sub i64 %"$gasrem_100", 2
  store i64 %"$consume_104", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define internal %"TName_Pair_List_(Int32)_List_(Uint32)"* @_scilla_expr_fun(i8* %0) !dbg !10 {
entry:
  %"$expr_6" = alloca %"TName_Pair_List_(Int32)_List_(Uint32)"*, align 8
  %"$gasrem_105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_106" = icmp ugt i64 1, %"$gasrem_105"
  br i1 %"$gascmp_106", label %"$out_of_gas_107", label %"$have_gas_108"

"$out_of_gas_107":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_108"

"$have_gas_108":                                  ; preds = %"$out_of_gas_107", %entry
  %"$consume_109" = sub i64 %"$gasrem_105", 1
  store i64 %"$consume_109", i64* @_gasrem, align 8
  %nil_int32 = alloca %TName_List_Int32*, align 8
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_108"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_108"
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %"$adtval_115_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_115_salloc" = call i8* @_salloc(i8* %"$adtval_115_load", i64 1)
  %"$adtval_115" = bitcast i8* %"$adtval_115_salloc" to %CName_Nil_Int32*
  %"$adtgep_116" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_115", i32 0, i32 0
  store i8 1, i8* %"$adtgep_116", align 1
  %"$adtptr_117" = bitcast %CName_Nil_Int32* %"$adtval_115" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_117", %TName_List_Int32** %nil_int32, align 8, !dbg !11
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 1, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$have_gas_113"
  %"$consume_122" = sub i64 %"$gasrem_118", 1
  store i64 %"$consume_122", i64* @_gasrem, align 8
  %ione = alloca %Int32, align 8
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 1, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_121"
  %"$consume_127" = sub i64 %"$gasrem_123", 1
  store i64 %"$consume_127", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %ione, align 4, !dbg !12
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$have_gas_126"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$have_gas_126"
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  %cons_int32 = alloca %TName_List_Int32*, align 8
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$have_gas_131"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  %"$ione_138" = load %Int32, %Int32* %ione, align 4
  %"$nil_int32_139" = load %TName_List_Int32*, %TName_List_Int32** %nil_int32, align 8
  %"$adtval_140_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_140_salloc" = call i8* @_salloc(i8* %"$adtval_140_load", i64 13)
  %"$adtval_140" = bitcast i8* %"$adtval_140_salloc" to %CName_Cons_Int32*
  %"$adtgep_141" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_140", i32 0, i32 0
  store i8 0, i8* %"$adtgep_141", align 1
  %"$adtgep_142" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_140", i32 0, i32 1
  store %Int32 %"$ione_138", %Int32* %"$adtgep_142", align 4
  %"$adtgep_143" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_140", i32 0, i32 2
  store %TName_List_Int32* %"$nil_int32_139", %TName_List_Int32** %"$adtgep_143", align 8
  %"$adtptr_144" = bitcast %CName_Cons_Int32* %"$adtval_140" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_144", %TName_List_Int32** %cons_int32, align 8, !dbg !13
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_136"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_136"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %nil_uint32 = alloca %TName_List_Uint32*, align 8
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_148"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  %"$adtval_155_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_155_salloc" = call i8* @_salloc(i8* %"$adtval_155_load", i64 1)
  %"$adtval_155" = bitcast i8* %"$adtval_155_salloc" to %CName_Nil_Uint32*
  %"$adtgep_156" = getelementptr inbounds %CName_Nil_Uint32, %CName_Nil_Uint32* %"$adtval_155", i32 0, i32 0
  store i8 1, i8* %"$adtgep_156", align 1
  %"$adtptr_157" = bitcast %CName_Nil_Uint32* %"$adtval_155" to %TName_List_Uint32*
  store %TName_List_Uint32* %"$adtptr_157", %TName_List_Uint32** %nil_uint32, align 8, !dbg !14
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 1, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %"$have_gas_153"
  %"$consume_162" = sub i64 %"$gasrem_158", 1
  store i64 %"$consume_162", i64* @_gasrem, align 8
  %uione = alloca %Uint32, align 8
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %"$have_gas_161"
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %"$have_gas_161"
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %uione, align 4, !dbg !15
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %"$have_gas_166"
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %"$have_gas_166"
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  %cons_uint32 = alloca %TName_List_Uint32*, align 8
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 1, %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %"$have_gas_171"
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %"$have_gas_171"
  %"$consume_177" = sub i64 %"$gasrem_173", 1
  store i64 %"$consume_177", i64* @_gasrem, align 8
  %"$uione_178" = load %Uint32, %Uint32* %uione, align 4
  %"$nil_uint32_179" = load %TName_List_Uint32*, %TName_List_Uint32** %nil_uint32, align 8
  %"$adtval_180_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_180_salloc" = call i8* @_salloc(i8* %"$adtval_180_load", i64 13)
  %"$adtval_180" = bitcast i8* %"$adtval_180_salloc" to %CName_Cons_Uint32*
  %"$adtgep_181" = getelementptr inbounds %CName_Cons_Uint32, %CName_Cons_Uint32* %"$adtval_180", i32 0, i32 0
  store i8 0, i8* %"$adtgep_181", align 1
  %"$adtgep_182" = getelementptr inbounds %CName_Cons_Uint32, %CName_Cons_Uint32* %"$adtval_180", i32 0, i32 1
  store %Uint32 %"$uione_178", %Uint32* %"$adtgep_182", align 4
  %"$adtgep_183" = getelementptr inbounds %CName_Cons_Uint32, %CName_Cons_Uint32* %"$adtval_180", i32 0, i32 2
  store %TName_List_Uint32* %"$nil_uint32_179", %TName_List_Uint32** %"$adtgep_183", align 8
  %"$adtptr_184" = bitcast %CName_Cons_Uint32* %"$adtval_180" to %TName_List_Uint32*
  store %TName_List_Uint32* %"$adtptr_184", %TName_List_Uint32** %cons_uint32, align 8, !dbg !16
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_176"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_176"
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %"$cons_int32_190" = load %TName_List_Int32*, %TName_List_Int32** %cons_int32, align 8
  %"$cons_uint32_191" = load %TName_List_Uint32*, %TName_List_Uint32** %cons_uint32, align 8
  %"$adtval_192_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_192_salloc" = call i8* @_salloc(i8* %"$adtval_192_load", i64 17)
  %"$adtval_192" = bitcast i8* %"$adtval_192_salloc" to %"CName_Pair_List_(Int32)_List_(Uint32)"*
  %"$adtgep_193" = getelementptr inbounds %"CName_Pair_List_(Int32)_List_(Uint32)", %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_192", i32 0, i32 0
  store i8 0, i8* %"$adtgep_193", align 1
  %"$adtgep_194" = getelementptr inbounds %"CName_Pair_List_(Int32)_List_(Uint32)", %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_192", i32 0, i32 1
  store %TName_List_Int32* %"$cons_int32_190", %TName_List_Int32** %"$adtgep_194", align 8
  %"$adtgep_195" = getelementptr inbounds %"CName_Pair_List_(Int32)_List_(Uint32)", %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_192", i32 0, i32 2
  store %TName_List_Uint32* %"$cons_uint32_191", %TName_List_Uint32** %"$adtgep_195", align 8
  %"$adtptr_196" = bitcast %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_192" to %"TName_Pair_List_(Int32)_List_(Uint32)"*
  store %"TName_Pair_List_(Int32)_List_(Uint32)"* %"$adtptr_196", %"TName_Pair_List_(Int32)_List_(Uint32)"** %"$expr_6", align 8, !dbg !17
  %"$$expr_6_197" = load %"TName_Pair_List_(Int32)_List_(Uint32)"*, %"TName_Pair_List_(Int32)_List_(Uint32)"** %"$expr_6", align 8
  ret %"TName_Pair_List_(Int32)_List_(Uint32)"* %"$$expr_6_197"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_198" = call %"TName_Pair_List_(Int32)_List_(Uint32)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_199" = bitcast %"TName_Pair_List_(Int32)_List_(Uint32)"* %"$exprval_198" to i8*
  %"$execptr_load_200" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_200", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_List_(Int32)_List_(Uint32)_41", i8* %"$memvoidcast_199")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "lit-pair-list-int.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 1, column: 17, scope: !10)
!12 = !DILocation(line: 2, column: 12, scope: !10)
!13 = !DILocation(line: 3, column: 18, scope: !10)
!14 = !DILocation(line: 4, column: 18, scope: !10)
!15 = !DILocation(line: 5, column: 13, scope: !10)
!16 = !DILocation(line: 6, column: 19, scope: !10)
!17 = !DILocation(line: 7, column: 1, scope: !10)
