; let f =
; fun (a : Int32) =>
; let n = Nil {Int32} in
; Cons {Int32}  a n
; in
; let i = Int32 0 in
; f i
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_4" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_34" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_33"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_33" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_35"**, %"$TyDescrTy_ADTTyp_34"* }
%"$TyDescrTy_ADTTyp_Constr_35" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$ParamDescr_115" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_116" = type { %ParamDescrString, i32, %"$ParamDescr_115"* }
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>
%"$$fundef_2_env_52" = type {}
%Int32 = type { i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_5" = global %"$TyDescrTy_PrimTyp_4" zeroinitializer
@"$TyDescr_Int32_6" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int32_Prim_5" to i8*) }
@"$TyDescr_Uint32_Prim_7" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 0 }
@"$TyDescr_Uint32_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint32_Prim_7" to i8*) }
@"$TyDescr_Int64_Prim_9" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 1 }
@"$TyDescr_Int64_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int64_Prim_9" to i8*) }
@"$TyDescr_Uint64_Prim_11" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 1 }
@"$TyDescr_Uint64_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint64_Prim_11" to i8*) }
@"$TyDescr_Int128_Prim_13" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 2 }
@"$TyDescr_Int128_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int128_Prim_13" to i8*) }
@"$TyDescr_Uint128_Prim_15" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 2 }
@"$TyDescr_Uint128_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint128_Prim_15" to i8*) }
@"$TyDescr_Int256_Prim_17" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 3 }
@"$TyDescr_Int256_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int256_Prim_17" to i8*) }
@"$TyDescr_Uint256_Prim_19" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 3 }
@"$TyDescr_Uint256_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint256_Prim_19" to i8*) }
@"$TyDescr_String_Prim_21" = global %"$TyDescrTy_PrimTyp_4" { i32 2, i32 0 }
@"$TyDescr_String_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_String_Prim_21" to i8*) }
@"$TyDescr_Bnum_Prim_23" = global %"$TyDescrTy_PrimTyp_4" { i32 3, i32 0 }
@"$TyDescr_Bnum_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bnum_Prim_23" to i8*) }
@"$TyDescr_Message_Prim_25" = global %"$TyDescrTy_PrimTyp_4" { i32 4, i32 0 }
@"$TyDescr_Message_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Message_Prim_25" to i8*) }
@"$TyDescr_Event_Prim_27" = global %"$TyDescrTy_PrimTyp_4" { i32 5, i32 0 }
@"$TyDescr_Event_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Event_Prim_27" to i8*) }
@"$TyDescr_Exception_Prim_29" = global %"$TyDescrTy_PrimTyp_4" { i32 6, i32 0 }
@"$TyDescr_Exception_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Exception_Prim_29" to i8*) }
@"$TyDescr_Bystr_Prim_31" = global %"$TyDescrTy_PrimTyp_4" { i32 7, i32 0 }
@"$TyDescr_Bystr_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bystr_Prim_31" to i8*) }
@"$TyDescr_ADT_List_Int32_36" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_33"* @"$TyDescr_List_Int32_ADTTyp_Specl_49" to i8*) }
@"$TyDescr_List_ADTTyp_40" = unnamed_addr constant %"$TyDescrTy_ADTTyp_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_51", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_33"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_33"*], [1 x %"$TyDescrTy_ADTTyp_Specl_33"*]* @"$TyDescr_List_ADTTyp_m_specls_50", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_41" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_6", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_36"]
@"$TyDescr_ADT_Cons_42" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_35" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_42", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_41", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_44" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_45" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_35" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_45", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_44", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_47" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_35"*] [%"$TyDescrTy_ADTTyp_Constr_35"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_43", %"$TyDescrTy_ADTTyp_Constr_35"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_46"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_48" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@"$TyDescr_List_Int32_ADTTyp_Specl_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_33" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_48", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_35"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_35"*], [2 x %"$TyDescrTy_ADTTyp_Constr_35"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_47", i32 0, i32 0), %"$TyDescrTy_ADTTyp_34"* @"$TyDescr_List_ADTTyp_40" }
@"$TyDescr_List_ADTTyp_m_specls_50" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_33"*] [%"$TyDescrTy_ADTTyp_Specl_33"* @"$TyDescr_List_Int32_ADTTyp_Specl_49"]
@"$TyDescr_ADT_List_51" = unnamed_addr constant [4 x i8] c"List"
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_28", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Bnum_24", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_Exception_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_36", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_115"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_116"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_List_Int32* @"$fundef_2"(%"$$fundef_2_env_52"* %0, %Int32 %1) !dbg !4 {
entry:
  %"$retval_3" = alloca %TName_List_Int32*, align 8
  %"$gasrem_53" = load i64, i64* @_gasrem, align 8
  %"$gascmp_54" = icmp ugt i64 1, %"$gasrem_53"
  br i1 %"$gascmp_54", label %"$out_of_gas_55", label %"$have_gas_56"

"$out_of_gas_55":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_56"

"$have_gas_56":                                   ; preds = %"$out_of_gas_55", %entry
  %"$consume_57" = sub i64 %"$gasrem_53", 1
  store i64 %"$consume_57", i64* @_gasrem, align 8
  %n = alloca %TName_List_Int32*, align 8
  %"$gasrem_58" = load i64, i64* @_gasrem, align 8
  %"$gascmp_59" = icmp ugt i64 1, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %"$have_gas_56"
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %"$have_gas_56"
  %"$consume_62" = sub i64 %"$gasrem_58", 1
  store i64 %"$consume_62", i64* @_gasrem, align 8
  %"$adtval_63_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_63_salloc" = call i8* @_salloc(i8* %"$adtval_63_load", i64 1)
  %"$adtval_63" = bitcast i8* %"$adtval_63_salloc" to %CName_Nil_Int32*
  %"$adtgep_64" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_63", i32 0, i32 0
  store i8 1, i8* %"$adtgep_64", align 1
  %"$adtptr_65" = bitcast %CName_Nil_Int32* %"$adtval_63" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_65", %TName_List_Int32** %n, align 8, !dbg !8
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 1, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %"$have_gas_61"
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %"$have_gas_61"
  %"$consume_70" = sub i64 %"$gasrem_66", 1
  store i64 %"$consume_70", i64* @_gasrem, align 8
  %"$n_71" = load %TName_List_Int32*, %TName_List_Int32** %n, align 8
  %"$adtval_72_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_72_salloc" = call i8* @_salloc(i8* %"$adtval_72_load", i64 13)
  %"$adtval_72" = bitcast i8* %"$adtval_72_salloc" to %CName_Cons_Int32*
  %"$adtgep_73" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_72", i32 0, i32 0
  store i8 0, i8* %"$adtgep_73", align 1
  %"$adtgep_74" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_72", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_74", align 4
  %"$adtgep_75" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_72", i32 0, i32 2
  store %TName_List_Int32* %"$n_71", %TName_List_Int32** %"$adtgep_75", align 8
  %"$adtptr_76" = bitcast %CName_Cons_Int32* %"$adtval_72" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_76", %TName_List_Int32** %"$retval_3", align 8, !dbg !9
  %"$$retval_3_77" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_3", align 8
  ret %TName_List_Int32* %"$$retval_3_77"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !10 {
entry:
  ret void
}

define internal %TName_List_Int32* @_scilla_expr_fun(i8* %0) !dbg !12 {
entry:
  %"$expr_1" = alloca %TName_List_Int32*, align 8
  %"$gasrem_78" = load i64, i64* @_gasrem, align 8
  %"$gascmp_79" = icmp ugt i64 1, %"$gasrem_78"
  br i1 %"$gascmp_79", label %"$out_of_gas_80", label %"$have_gas_81"

"$out_of_gas_80":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_81"

"$have_gas_81":                                   ; preds = %"$out_of_gas_80", %entry
  %"$consume_82" = sub i64 %"$gasrem_78", 1
  store i64 %"$consume_82", i64* @_gasrem, align 8
  %f = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 1, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %"$have_gas_81"
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %"$have_gas_81"
  %"$consume_87" = sub i64 %"$gasrem_83", 1
  store i64 %"$consume_87", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_2_env_52"*, %Int32)* @"$fundef_2" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f, align 8, !dbg !13
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %"$have_gas_86"
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %"$have_gas_86"
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem, align 8
  %i = alloca %Int32, align 8
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_94"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_94"
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %i, align 4, !dbg !14
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 1, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %"$have_gas_99"
  %"$consume_105" = sub i64 %"$gasrem_101", 1
  store i64 %"$consume_105", i64* @_gasrem, align 8
  %"$f_0" = alloca %TName_List_Int32*, align 8
  %"$f_106" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f, align 8
  %"$f_fptr_107" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_106", 0
  %"$f_envptr_108" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_106", 1
  %"$i_109" = load %Int32, %Int32* %i, align 4
  %"$f_call_110" = call %TName_List_Int32* %"$f_fptr_107"(i8* %"$f_envptr_108", %Int32 %"$i_109"), !dbg !15
  store %TName_List_Int32* %"$f_call_110", %TName_List_Int32** %"$f_0", align 8, !dbg !15
  %"$$f_0_111" = load %TName_List_Int32*, %TName_List_Int32** %"$f_0", align 8
  store %TName_List_Int32* %"$$f_0_111", %TName_List_Int32** %"$expr_1", align 8, !dbg !15
  %"$$expr_1_112" = load %TName_List_Int32*, %TName_List_Int32** %"$expr_1", align 8
  ret %TName_List_Int32* %"$$expr_1_112"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_113" = call %TName_List_Int32* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_114" = bitcast %TName_List_Int32* %"$exprval_113" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_36", i8* %"$memvoidcast_114")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "adt-fun.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_2", linkageName: "$fundef_2", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 3, column: 13, scope: !4)
!9 = !DILocation(line: 4, column: 5, scope: !4)
!10 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !11, file: !11, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DIFile(filename: ".", directory: ".")
!12 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!13 = !DILocation(line: 3, column: 5, scope: !12)
!14 = !DILocation(line: 6, column: 9, scope: !12)
!15 = !DILocation(line: 7, column: 1, scope: !12)
