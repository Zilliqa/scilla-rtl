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

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_31" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_30"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_30" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_32"**, %"$TyDescrTy_ADTTyp_31"* }
%"$TyDescrTy_ADTTyp_Constr_32" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"TName_Pair_List_(Int32)_List_(Uint32)" = type { i8, %"CName_Pair_List_(Int32)_List_(Uint32)"* }
%"CName_Pair_List_(Int32)_List_(Uint32)" = type <{ i8, %TName_List_Int32*, %TName_List_Uint32* }>
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%Int32 = type { i32 }
%CName_Nil_Int32 = type <{ i8 }>
%TName_List_Uint32 = type { i8, %CName_Cons_Uint32*, %CName_Nil_Uint32* }
%CName_Cons_Uint32 = type <{ i8, %Uint32, %TName_List_Uint32* }>
%Uint32 = type { i32 }
%CName_Nil_Uint32 = type <{ i8 }>

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_2" = global %"$TyDescrTy_PrimTyp_1" zeroinitializer
@"$TyDescr_Int32_3" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int32_Prim_2" to i8*) }
@"$TyDescr_Uint32_Prim_4" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 0 }
@"$TyDescr_Uint32_5" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint32_Prim_4" to i8*) }
@"$TyDescr_Int64_Prim_6" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 1 }
@"$TyDescr_Int64_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int64_Prim_6" to i8*) }
@"$TyDescr_Uint64_Prim_8" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 1 }
@"$TyDescr_Uint64_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint64_Prim_8" to i8*) }
@"$TyDescr_Int128_Prim_10" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 2 }
@"$TyDescr_Int128_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int128_Prim_10" to i8*) }
@"$TyDescr_Uint128_Prim_12" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 2 }
@"$TyDescr_Uint128_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint128_Prim_12" to i8*) }
@"$TyDescr_Int256_Prim_14" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 3 }
@"$TyDescr_Int256_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int256_Prim_14" to i8*) }
@"$TyDescr_Uint256_Prim_16" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 3 }
@"$TyDescr_Uint256_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint256_Prim_16" to i8*) }
@"$TyDescr_String_Prim_18" = global %"$TyDescrTy_PrimTyp_1" { i32 2, i32 0 }
@"$TyDescr_String_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_String_Prim_18" to i8*) }
@"$TyDescr_Bnum_Prim_20" = global %"$TyDescrTy_PrimTyp_1" { i32 3, i32 0 }
@"$TyDescr_Bnum_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bnum_Prim_20" to i8*) }
@"$TyDescr_Message_Prim_22" = global %"$TyDescrTy_PrimTyp_1" { i32 4, i32 0 }
@"$TyDescr_Message_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Message_Prim_22" to i8*) }
@"$TyDescr_Event_Prim_24" = global %"$TyDescrTy_PrimTyp_1" { i32 5, i32 0 }
@"$TyDescr_Event_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Event_Prim_24" to i8*) }
@"$TyDescr_Exception_Prim_26" = global %"$TyDescrTy_PrimTyp_1" { i32 6, i32 0 }
@"$TyDescr_Exception_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Exception_Prim_26" to i8*) }
@"$TyDescr_Bystr_Prim_28" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_28" to i8*) }
@"$TyDescr_ADT_List_Uint32_33" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Uint32_ADTTyp_Specl_46" to i8*) }
@"$TyDescr_ADT_List_Int32_34" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Int32_ADTTyp_Specl_55" to i8*) }
@"$TyDescr_ADT_Pair_List_(Int32)_List_(Uint32)_35" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_64" to i8*) }
@"$TyDescr_List_ADTTyp_37" = unnamed_addr constant %"$TyDescrTy_ADTTyp_31" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_57", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_30"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_30"*], [2 x %"$TyDescrTy_ADTTyp_Specl_30"*]* @"$TyDescr_List_ADTTyp_m_specls_56", i32 0, i32 0) }
@"$TyDescr_List_Cons_Uint32_Constr_m_args_38" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Uint32_33"]
@"$TyDescr_ADT_Cons_39" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Uint32_ADTTyp_Constr_40" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_39", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Uint32_Constr_m_args_38", i32 0, i32 0) }
@"$TyDescr_List_Nil_Uint32_Constr_m_args_41" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_42" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Uint32_ADTTyp_Constr_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_42", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Uint32_Constr_m_args_41", i32 0, i32 0) }
@"$TyDescr_List_Uint32_ADTTyp_Specl_m_constrs_44" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Cons_Uint32_ADTTyp_Constr_40", %"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Nil_Uint32_ADTTyp_Constr_43"]
@"$TyDescr_List_Uint32_ADTTyp_Specl_m_TArgs_45" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_5"]
@"$TyDescr_List_Uint32_ADTTyp_Specl_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Uint32_ADTTyp_Specl_m_TArgs_45", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_32"*], [2 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_List_Uint32_ADTTyp_Specl_m_constrs_44", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_List_ADTTyp_37" }
@"$TyDescr_List_Cons_Int32_Constr_m_args_47" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_34"]
@"$TyDescr_ADT_Cons_48" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_48", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_50" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_51" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_51", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_50", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_53" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_49", %"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_52"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_54" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_List_Int32_ADTTyp_Specl_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_54", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_32"*], [2 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_53", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_List_ADTTyp_37" }
@"$TyDescr_List_ADTTyp_m_specls_56" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_30"*] [%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Uint32_ADTTyp_Specl_46", %"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_List_Int32_ADTTyp_Specl_55"]
@"$TyDescr_ADT_List_57" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Pair_ADTTyp_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_31" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_66", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_30"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_30"*], [1 x %"$TyDescrTy_ADTTyp_Specl_30"*]* @"$TyDescr_Pair_ADTTyp_m_specls_65", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_Constr_m_args_59" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_34", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Uint32_33"]
@"$TyDescr_ADT_Pair_60" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Constr_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_60", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_Constr_m_args_59", i32 0, i32 0) }
@"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_constrs_62" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Constr_61"]
@"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_TArgs_63" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_34", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Uint32_33"]
@"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_TArgs_63", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_32"*], [1 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_constrs_62", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_Pair_ADTTyp_58" }
@"$TyDescr_Pair_ADTTyp_m_specls_65" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_30"*] [%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_64"]
@"$TyDescr_ADT_Pair_66" = unnamed_addr constant [4 x i8] c"Pair"

define void @_init_libs() {
entry:
  ret void
}

define internal %"TName_Pair_List_(Int32)_List_(Uint32)"* @"$scilla_expr_67"(i8* %0) {
entry:
  %"$expr_0" = alloca %"TName_Pair_List_(Int32)_List_(Uint32)"*
  %nil_int32 = alloca %TName_List_Int32*
  %"$adtval_68_load" = load i8*, i8** @_execptr
  %"$adtval_68_salloc" = call i8* @_salloc(i8* %"$adtval_68_load", i64 1)
  %"$adtval_68" = bitcast i8* %"$adtval_68_salloc" to %CName_Nil_Int32*
  %"$adtgep_69" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_68", i32 0, i32 0
  store i8 1, i8* %"$adtgep_69"
  %"$adtptr_70" = bitcast %CName_Nil_Int32* %"$adtval_68" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_70", %TName_List_Int32** %nil_int32
  %ione = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %ione
  %cons_int32 = alloca %TName_List_Int32*
  %"$ione_71" = load %Int32, %Int32* %ione
  %"$nil_int32_72" = load %TName_List_Int32*, %TName_List_Int32** %nil_int32
  %"$adtval_73_load" = load i8*, i8** @_execptr
  %"$adtval_73_salloc" = call i8* @_salloc(i8* %"$adtval_73_load", i64 13)
  %"$adtval_73" = bitcast i8* %"$adtval_73_salloc" to %CName_Cons_Int32*
  %"$adtgep_74" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_73", i32 0, i32 0
  store i8 0, i8* %"$adtgep_74"
  %"$adtgep_75" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_73", i32 0, i32 1
  store %Int32 %"$ione_71", %Int32* %"$adtgep_75"
  %"$adtgep_76" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_73", i32 0, i32 2
  store %TName_List_Int32* %"$nil_int32_72", %TName_List_Int32** %"$adtgep_76"
  %"$adtptr_77" = bitcast %CName_Cons_Int32* %"$adtval_73" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_77", %TName_List_Int32** %cons_int32
  %nil_uint32 = alloca %TName_List_Uint32*
  %"$adtval_78_load" = load i8*, i8** @_execptr
  %"$adtval_78_salloc" = call i8* @_salloc(i8* %"$adtval_78_load", i64 1)
  %"$adtval_78" = bitcast i8* %"$adtval_78_salloc" to %CName_Nil_Uint32*
  %"$adtgep_79" = getelementptr inbounds %CName_Nil_Uint32, %CName_Nil_Uint32* %"$adtval_78", i32 0, i32 0
  store i8 1, i8* %"$adtgep_79"
  %"$adtptr_80" = bitcast %CName_Nil_Uint32* %"$adtval_78" to %TName_List_Uint32*
  store %TName_List_Uint32* %"$adtptr_80", %TName_List_Uint32** %nil_uint32
  %uione = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %uione
  %cons_uint32 = alloca %TName_List_Uint32*
  %"$uione_81" = load %Uint32, %Uint32* %uione
  %"$nil_uint32_82" = load %TName_List_Uint32*, %TName_List_Uint32** %nil_uint32
  %"$adtval_83_load" = load i8*, i8** @_execptr
  %"$adtval_83_salloc" = call i8* @_salloc(i8* %"$adtval_83_load", i64 13)
  %"$adtval_83" = bitcast i8* %"$adtval_83_salloc" to %CName_Cons_Uint32*
  %"$adtgep_84" = getelementptr inbounds %CName_Cons_Uint32, %CName_Cons_Uint32* %"$adtval_83", i32 0, i32 0
  store i8 0, i8* %"$adtgep_84"
  %"$adtgep_85" = getelementptr inbounds %CName_Cons_Uint32, %CName_Cons_Uint32* %"$adtval_83", i32 0, i32 1
  store %Uint32 %"$uione_81", %Uint32* %"$adtgep_85"
  %"$adtgep_86" = getelementptr inbounds %CName_Cons_Uint32, %CName_Cons_Uint32* %"$adtval_83", i32 0, i32 2
  store %TName_List_Uint32* %"$nil_uint32_82", %TName_List_Uint32** %"$adtgep_86"
  %"$adtptr_87" = bitcast %CName_Cons_Uint32* %"$adtval_83" to %TName_List_Uint32*
  store %TName_List_Uint32* %"$adtptr_87", %TName_List_Uint32** %cons_uint32
  %"$cons_int32_88" = load %TName_List_Int32*, %TName_List_Int32** %cons_int32
  %"$cons_uint32_89" = load %TName_List_Uint32*, %TName_List_Uint32** %cons_uint32
  %"$adtval_90_load" = load i8*, i8** @_execptr
  %"$adtval_90_salloc" = call i8* @_salloc(i8* %"$adtval_90_load", i64 17)
  %"$adtval_90" = bitcast i8* %"$adtval_90_salloc" to %"CName_Pair_List_(Int32)_List_(Uint32)"*
  %"$adtgep_91" = getelementptr inbounds %"CName_Pair_List_(Int32)_List_(Uint32)", %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_90", i32 0, i32 0
  store i8 0, i8* %"$adtgep_91"
  %"$adtgep_92" = getelementptr inbounds %"CName_Pair_List_(Int32)_List_(Uint32)", %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_90", i32 0, i32 1
  store %TName_List_Int32* %"$cons_int32_88", %TName_List_Int32** %"$adtgep_92"
  %"$adtgep_93" = getelementptr inbounds %"CName_Pair_List_(Int32)_List_(Uint32)", %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_90", i32 0, i32 2
  store %TName_List_Uint32* %"$cons_uint32_89", %TName_List_Uint32** %"$adtgep_93"
  %"$adtptr_94" = bitcast %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_90" to %"TName_Pair_List_(Int32)_List_(Uint32)"*
  store %"TName_Pair_List_(Int32)_List_(Uint32)"* %"$adtptr_94", %"TName_Pair_List_(Int32)_List_(Uint32)"** %"$expr_0"
  %"$$expr_0_95" = load %"TName_Pair_List_(Int32)_List_(Uint32)"*, %"TName_Pair_List_(Int32)_List_(Uint32)"** %"$expr_0"
  ret %"TName_Pair_List_(Int32)_List_(Uint32)"* %"$$expr_0_95"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_96" = call %"TName_Pair_List_(Int32)_List_(Uint32)"* @"$scilla_expr_67"(i8* null)
  %"$memvoidcast_97" = bitcast %"TName_Pair_List_(Int32)_List_(Uint32)"* %"$exprval_96" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_List_(Int32)_List_(Uint32)_35", i8* %"$memvoidcast_97")
  ret void
}
