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

%"$TyDescrTy_PrimTyp_10" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_42" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_41"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_41" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_43"**, %"$TyDescrTy_ADTTyp_42"* }
%"$TyDescrTy_ADTTyp_Constr_43" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_154" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_155" = type { %ParamDescrString, i32, %"$ParamDescr_154"* }
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>
%"$$fundef_8_env_60" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_11" = global %"$TyDescrTy_PrimTyp_10" zeroinitializer
@"$TyDescr_Int32_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int32_Prim_11" to i8*) }
@"$TyDescr_Uint32_Prim_13" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 0 }
@"$TyDescr_Uint32_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint32_Prim_13" to i8*) }
@"$TyDescr_Int64_Prim_15" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 1 }
@"$TyDescr_Int64_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int64_Prim_15" to i8*) }
@"$TyDescr_Uint64_Prim_17" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 1 }
@"$TyDescr_Uint64_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint64_Prim_17" to i8*) }
@"$TyDescr_Int128_Prim_19" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 2 }
@"$TyDescr_Int128_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int128_Prim_19" to i8*) }
@"$TyDescr_Uint128_Prim_21" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 2 }
@"$TyDescr_Uint128_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint128_Prim_21" to i8*) }
@"$TyDescr_Int256_Prim_23" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 3 }
@"$TyDescr_Int256_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int256_Prim_23" to i8*) }
@"$TyDescr_Uint256_Prim_25" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 3 }
@"$TyDescr_Uint256_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint256_Prim_25" to i8*) }
@"$TyDescr_String_Prim_27" = global %"$TyDescrTy_PrimTyp_10" { i32 2, i32 0 }
@"$TyDescr_String_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_String_Prim_27" to i8*) }
@"$TyDescr_Bnum_Prim_29" = global %"$TyDescrTy_PrimTyp_10" { i32 3, i32 0 }
@"$TyDescr_Bnum_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bnum_Prim_29" to i8*) }
@"$TyDescr_Message_Prim_31" = global %"$TyDescrTy_PrimTyp_10" { i32 4, i32 0 }
@"$TyDescr_Message_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Message_Prim_31" to i8*) }
@"$TyDescr_Event_Prim_33" = global %"$TyDescrTy_PrimTyp_10" { i32 5, i32 0 }
@"$TyDescr_Event_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Event_Prim_33" to i8*) }
@"$TyDescr_Exception_Prim_35" = global %"$TyDescrTy_PrimTyp_10" { i32 6, i32 0 }
@"$TyDescr_Exception_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Exception_Prim_35" to i8*) }
@"$TyDescr_ReplicateContr_Prim_37" = global %"$TyDescrTy_PrimTyp_10" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_ReplicateContr_Prim_37" to i8*) }
@"$TyDescr_Bystr_Prim_39" = global %"$TyDescrTy_PrimTyp_10" { i32 7, i32 0 }
@"$TyDescr_Bystr_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bystr_Prim_39" to i8*) }
@"$TyDescr_ADT_List_Int32_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_41"* @"$TyDescr_List_Int32_ADTTyp_Specl_57" to i8*) }
@"$TyDescr_List_ADTTyp_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_42" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_59", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_41"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_41"*], [1 x %"$TyDescrTy_ADTTyp_Specl_41"*]* @"$TyDescr_List_ADTTyp_m_specls_58", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_49" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_12", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_44"]
@"$TyDescr_ADT_Cons_50" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_43" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_50", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_49", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_52" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_53" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_43" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_53", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_52", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_55" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_43"*] [%"$TyDescrTy_ADTTyp_Constr_43"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_51", %"$TyDescrTy_ADTTyp_Constr_43"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_54"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_56" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_12"]
@"$TyDescr_List_Int32_ADTTyp_Specl_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_41" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_43"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_43"*], [2 x %"$TyDescrTy_ADTTyp_Constr_43"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_55", i32 0, i32 0), %"$TyDescrTy_ADTTyp_42"* @"$TyDescr_List_ADTTyp_48" }
@"$TyDescr_List_ADTTyp_m_specls_58" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_41"*] [%"$TyDescrTy_ADTTyp_Specl_41"* @"$TyDescr_List_Int32_ADTTyp_Specl_57"]
@"$TyDescr_ADT_List_59" = unnamed_addr constant [4 x i8] c"List"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_34", %_TyDescrTy_Typ* @"$TyDescr_Int64_16", %_TyDescrTy_Typ* @"$TyDescr_Uint256_26", %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", %_TyDescrTy_Typ* @"$TyDescr_Uint64_18", %_TyDescrTy_Typ* @"$TyDescr_Bnum_30", %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ* @"$TyDescr_Exception_36", %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ* @"$TyDescr_Int256_24", %_TyDescrTy_Typ* @"$TyDescr_Int128_20", %_TyDescrTy_Typ* @"$TyDescr_Bystr_40", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_38", %_TyDescrTy_Typ* @"$TyDescr_Message_32", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_44", %_TyDescrTy_Typ* @"$TyDescr_Int32_12"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_154"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_155"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_List_Int32* @"$fundef_8"(%"$$fundef_8_env_60"* %0, %Int32 %1) !dbg !3 {
entry:
  %"$retval_9" = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %"$retval_9", metadata !8, metadata !DIExpression()), !dbg !11
  %"$gasrem_61" = load i64, i64* @_gasrem, align 8
  %"$gascmp_62" = icmp ugt i64 1, %"$gasrem_61"
  br i1 %"$gascmp_62", label %"$out_of_gas_63", label %"$have_gas_64"

"$out_of_gas_63":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_64"

"$have_gas_64":                                   ; preds = %"$out_of_gas_63", %entry
  %"$consume_65" = sub i64 %"$gasrem_61", 1
  store i64 %"$consume_65", i64* @_gasrem, align 8
  %n = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %n, metadata !12, metadata !DIExpression()), !dbg !13
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 1, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %"$have_gas_64"
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %"$have_gas_64"
  %"$consume_70" = sub i64 %"$gasrem_66", 1
  store i64 %"$consume_70", i64* @_gasrem, align 8
  %"$adtval_71_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_71_salloc" = call i8* @_salloc(i8* %"$adtval_71_load", i64 1)
  %"$adtval_71" = bitcast i8* %"$adtval_71_salloc" to %CName_Nil_Int32*
  %"$adtgep_72" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_71", i32 0, i32 0
  store i8 1, i8* %"$adtgep_72", align 1
  %"$adtptr_73" = bitcast %CName_Nil_Int32* %"$adtval_71" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_73", %TName_List_Int32** %n, align 8, !dbg !14
  %"$gasrem_74" = load i64, i64* @_gasrem, align 8
  %"$gascmp_75" = icmp ugt i64 1, %"$gasrem_74"
  br i1 %"$gascmp_75", label %"$out_of_gas_76", label %"$have_gas_77"

"$out_of_gas_76":                                 ; preds = %"$have_gas_69"
  call void @_out_of_gas()
  br label %"$have_gas_77"

"$have_gas_77":                                   ; preds = %"$out_of_gas_76", %"$have_gas_69"
  %"$consume_78" = sub i64 %"$gasrem_74", 1
  store i64 %"$consume_78", i64* @_gasrem, align 8
  %"$n_79" = load %TName_List_Int32*, %TName_List_Int32** %n, align 8
  %"$adtval_80_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_80_salloc" = call i8* @_salloc(i8* %"$adtval_80_load", i64 13)
  %"$adtval_80" = bitcast i8* %"$adtval_80_salloc" to %CName_Cons_Int32*
  %"$adtgep_81" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_80", i32 0, i32 0
  store i8 0, i8* %"$adtgep_81", align 1
  %"$adtgep_82" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_80", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_82", align 4
  %"$adtgep_83" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_80", i32 0, i32 2
  store %TName_List_Int32* %"$n_79", %TName_List_Int32** %"$adtgep_83", align 8
  %"$adtptr_84" = bitcast %CName_Cons_Int32* %"$adtval_80" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_84", %TName_List_Int32** %"$retval_9", align 8, !dbg !15
  %"$$retval_9_85" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_9", align 8
  ret %TName_List_Int32* %"$$retval_9_85"
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !16 {
entry:
  %"$gasrem_86" = load i64, i64* @_gasrem, align 8
  %"$gascmp_87" = icmp ugt i64 5, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %entry
  %"$consume_90" = sub i64 %"$gasrem_86", 5
  store i64 %"$consume_90", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !18
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 8, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %"$have_gas_89"
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %"$have_gas_89"
  %"$consume_95" = sub i64 %"$gasrem_91", 8
  store i64 %"$consume_95", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !18
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 196, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_94"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_94"
  %"$consume_100" = sub i64 %"$gasrem_96", 196
  store i64 %"$consume_100", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !18
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 20, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %"$have_gas_99"
  %"$consume_105" = sub i64 %"$gasrem_101", 20
  store i64 %"$consume_105", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !18
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 12, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_104"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_104"
  %"$consume_110" = sub i64 %"$gasrem_106", 12
  store i64 %"$consume_110", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !18
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 2, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_109"
  %"$consume_115" = sub i64 %"$gasrem_111", 2
  store i64 %"$consume_115", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !18
  ret void
}

define internal %TName_List_Int32* @_scilla_expr_fun(i8* %0) !dbg !19 {
entry:
  %"$expr_7" = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %"$expr_7", metadata !20, metadata !DIExpression()), !dbg !21
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %entry
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem, align 8
  %f = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_119"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_119"
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_8_env_60"*, %Int32)* @"$fundef_8" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f, align 8, !dbg !22
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_124"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %i = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %i, metadata !23, metadata !DIExpression()), !dbg !25
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %i, align 4, !dbg !26
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_137"
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem, align 8
  %"$f_6" = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %"$f_6", metadata !27, metadata !DIExpression()), !dbg !28
  %"$f_144" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f, align 8
  %"$f_fptr_145" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_144", 0
  %"$f_envptr_146" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_144", 1
  %"$i_147" = load %Int32, %Int32* %i, align 4
  %"$f_call_148" = call %TName_List_Int32* %"$f_fptr_145"(i8* %"$f_envptr_146", %Int32 %"$i_147"), !dbg !28
  store %TName_List_Int32* %"$f_call_148", %TName_List_Int32** %"$f_6", align 8, !dbg !28
  %"$$f_6_149" = load %TName_List_Int32*, %TName_List_Int32** %"$f_6", align 8
  store %TName_List_Int32* %"$$f_6_149", %TName_List_Int32** %"$expr_7", align 8, !dbg !28
  %"$$expr_7_150" = load %TName_List_Int32*, %TName_List_Int32** %"$expr_7", align 8
  ret %TName_List_Int32* %"$$expr_7_150"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_151" = call %TName_List_Int32* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_152" = bitcast %TName_List_Int32* %"$exprval_151" to i8*
  %"$execptr_load_153" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_153", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_44", i8* %"$memvoidcast_152")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "adt-fun.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_8", linkageName: "$fundef_8", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "$retval_9", scope: !3, file: !2, line: 3, type: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "List (Int32)", baseType: !10, size: 8, align: 8, dwarfAddressSpace: 0)
!10 = !DIBasicType(name: "List (Int32)", size: 8)
!11 = !DILocation(line: 3, column: 5, scope: !3)
!12 = !DILocalVariable(name: "n", scope: !3, file: !2, line: 3, type: !9)
!13 = !DILocation(line: 3, column: 9, scope: !3)
!14 = !DILocation(line: 3, column: 13, scope: !3)
!15 = !DILocation(line: 4, column: 5, scope: !3)
!16 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !17, file: !17, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!17 = !DIFile(filename: ".", directory: ".")
!18 = !DILocation(line: 0, scope: !16)
!19 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !4, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!20 = !DILocalVariable(name: "$expr_7", scope: !19, file: !2, line: 2, type: !9)
!21 = !DILocation(line: 2, column: 3, scope: !19)
!22 = !DILocation(line: 3, column: 5, scope: !19)
!23 = !DILocalVariable(name: "i", scope: !19, file: !2, line: 6, type: !24)
!24 = !DIBasicType(name: "Int32", size: 4)
!25 = !DILocation(line: 6, column: 5, scope: !19)
!26 = !DILocation(line: 6, column: 9, scope: !19)
!27 = !DILocalVariable(name: "$f_6", scope: !19, file: !2, line: 7, type: !9)
!28 = !DILocation(line: 7, column: 1, scope: !19)
