; let nil_int32 = Nil {Int32} in
; let ione = Int32 1 in
; let cons_int32 = Cons {Int32} ione nil_int32 in
; let nil_uint32 = Nil {Uint32} in
; let uione = Uint32 1 in
; let cons_uint32 = Cons {Uint32} uione nil_uint32 in
; Pair {(List Int32) (List Uint32)} cons_int32 cons_uint32
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_23" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_22"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_22" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_24"**, %"$TyDescrTy_ADTTyp_23"* }
%"$TyDescrTy_ADTTyp_Constr_24" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
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
@"$TyDescr_Bystr_Prim_20" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_20" to i8*) }
@"$TyDescr_ADT_List_Uint32_25" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_22"* @"$TyDescr_List_Uint32_ADTTyp_Specl_38" to i8*) }
@"$TyDescr_ADT_List_Int32_26" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_22"* @"$TyDescr_List_Int32_ADTTyp_Specl_47" to i8*) }
@"$TyDescr_ADT_Pair_List_(Int32)_List_(Uint32)_27" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_22"* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_56" to i8*) }
@"$TyDescr_List_ADTTyp_29" = unnamed_addr constant %"$TyDescrTy_ADTTyp_23" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_49", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_22"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_22"*], [2 x %"$TyDescrTy_ADTTyp_Specl_22"*]* @"$TyDescr_List_ADTTyp_m_specls_48", i32 0, i32 0) }
@"$TyDescr_List_Cons_Uint32_Constr_m_args_30" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Uint32_25"]
@"$TyDescr_ADT_Cons_31" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Uint32_ADTTyp_Constr_32" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_24" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_31", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Uint32_Constr_m_args_30", i32 0, i32 0) }
@"$TyDescr_List_Nil_Uint32_Constr_m_args_33" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_34" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Uint32_ADTTyp_Constr_35" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_24" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_34", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Uint32_Constr_m_args_33", i32 0, i32 0) }
@"$TyDescr_List_Uint32_ADTTyp_Specl_m_constrs_36" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_24"*] [%"$TyDescrTy_ADTTyp_Constr_24"* @"$TyDescr_List_Cons_Uint32_ADTTyp_Constr_32", %"$TyDescrTy_ADTTyp_Constr_24"* @"$TyDescr_List_Nil_Uint32_ADTTyp_Constr_35"]
@"$TyDescr_List_Uint32_ADTTyp_Specl_m_TArgs_37" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_5"]
@"$TyDescr_List_Uint32_ADTTyp_Specl_38" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_22" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Uint32_ADTTyp_Specl_m_TArgs_37", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_24"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_24"*], [2 x %"$TyDescrTy_ADTTyp_Constr_24"*]* @"$TyDescr_List_Uint32_ADTTyp_Specl_m_constrs_36", i32 0, i32 0), %"$TyDescrTy_ADTTyp_23"* @"$TyDescr_List_ADTTyp_29" }
@"$TyDescr_List_Cons_Int32_Constr_m_args_39" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_26"]
@"$TyDescr_ADT_Cons_40" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_41" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_24" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_40", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_39", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_42" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_43" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_24" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_43", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_42", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_45" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_24"*] [%"$TyDescrTy_ADTTyp_Constr_24"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_41", %"$TyDescrTy_ADTTyp_Constr_24"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_44"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_46" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_List_Int32_ADTTyp_Specl_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_22" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_46", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_24"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_24"*], [2 x %"$TyDescrTy_ADTTyp_Constr_24"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_45", i32 0, i32 0), %"$TyDescrTy_ADTTyp_23"* @"$TyDescr_List_ADTTyp_29" }
@"$TyDescr_List_ADTTyp_m_specls_48" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_22"*] [%"$TyDescrTy_ADTTyp_Specl_22"* @"$TyDescr_List_Uint32_ADTTyp_Specl_38", %"$TyDescrTy_ADTTyp_Specl_22"* @"$TyDescr_List_Int32_ADTTyp_Specl_47"]
@"$TyDescr_ADT_List_49" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Pair_ADTTyp_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_23" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_58", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_22"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_22"*], [1 x %"$TyDescrTy_ADTTyp_Specl_22"*]* @"$TyDescr_Pair_ADTTyp_m_specls_57", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_Constr_m_args_51" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_26", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Uint32_25"]
@"$TyDescr_ADT_Pair_52" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Constr_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_24" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_52", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_Constr_m_args_51", i32 0, i32 0) }
@"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_constrs_54" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_24"*] [%"$TyDescrTy_ADTTyp_Constr_24"* @"$TyDescr_Pair_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Constr_53"]
@"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_TArgs_55" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_26", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Uint32_25"]
@"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_22" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_TArgs_55", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_24"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_24"*], [1 x %"$TyDescrTy_ADTTyp_Constr_24"*]* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_m_constrs_54", i32 0, i32 0), %"$TyDescrTy_ADTTyp_23"* @"$TyDescr_Pair_ADTTyp_50" }
@"$TyDescr_Pair_ADTTyp_m_specls_57" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_22"*] [%"$TyDescrTy_ADTTyp_Specl_22"* @"$TyDescr_Pair_List_(Int32)_List_(Uint32)_ADTTyp_Specl_56"]
@"$TyDescr_ADT_Pair_58" = unnamed_addr constant [4 x i8] c"Pair"

define void @_init_libs() {
entry:
  ret void
}

define internal %"TName_Pair_List_(Int32)_List_(Uint32)"* @"$scilla_expr_59"(i8*) {
entry:
  %"$expr_0" = alloca %"TName_Pair_List_(Int32)_List_(Uint32)"*
  %nil_int32 = alloca %TName_List_Int32*
  %"$adtval_60_load" = load i8*, i8** @_execptr
  %"$adtval_60_salloc" = call i8* @_salloc(i8* %"$adtval_60_load", i64 1)
  %"$adtval_60" = bitcast i8* %"$adtval_60_salloc" to %CName_Nil_Int32*
  %"$adtgep_61" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_60", i32 0, i32 0
  store i8 1, i8* %"$adtgep_61"
  %"$adtptr_62" = bitcast %CName_Nil_Int32* %"$adtval_60" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_62", %TName_List_Int32** %nil_int32
  %ione = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %ione
  %cons_int32 = alloca %TName_List_Int32*
  %"$ione_63" = load %Int32, %Int32* %ione
  %"$nil_int32_64" = load %TName_List_Int32*, %TName_List_Int32** %nil_int32
  %"$adtval_65_load" = load i8*, i8** @_execptr
  %"$adtval_65_salloc" = call i8* @_salloc(i8* %"$adtval_65_load", i64 13)
  %"$adtval_65" = bitcast i8* %"$adtval_65_salloc" to %CName_Cons_Int32*
  %"$adtgep_66" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_65", i32 0, i32 0
  store i8 0, i8* %"$adtgep_66"
  %"$adtgep_67" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_65", i32 0, i32 1
  store %Int32 %"$ione_63", %Int32* %"$adtgep_67"
  %"$adtgep_68" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_65", i32 0, i32 2
  store %TName_List_Int32* %"$nil_int32_64", %TName_List_Int32** %"$adtgep_68"
  %"$adtptr_69" = bitcast %CName_Cons_Int32* %"$adtval_65" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_69", %TName_List_Int32** %cons_int32
  %nil_uint32 = alloca %TName_List_Uint32*
  %"$adtval_70_load" = load i8*, i8** @_execptr
  %"$adtval_70_salloc" = call i8* @_salloc(i8* %"$adtval_70_load", i64 1)
  %"$adtval_70" = bitcast i8* %"$adtval_70_salloc" to %CName_Nil_Uint32*
  %"$adtgep_71" = getelementptr inbounds %CName_Nil_Uint32, %CName_Nil_Uint32* %"$adtval_70", i32 0, i32 0
  store i8 1, i8* %"$adtgep_71"
  %"$adtptr_72" = bitcast %CName_Nil_Uint32* %"$adtval_70" to %TName_List_Uint32*
  store %TName_List_Uint32* %"$adtptr_72", %TName_List_Uint32** %nil_uint32
  %uione = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %uione
  %cons_uint32 = alloca %TName_List_Uint32*
  %"$uione_73" = load %Uint32, %Uint32* %uione
  %"$nil_uint32_74" = load %TName_List_Uint32*, %TName_List_Uint32** %nil_uint32
  %"$adtval_75_load" = load i8*, i8** @_execptr
  %"$adtval_75_salloc" = call i8* @_salloc(i8* %"$adtval_75_load", i64 13)
  %"$adtval_75" = bitcast i8* %"$adtval_75_salloc" to %CName_Cons_Uint32*
  %"$adtgep_76" = getelementptr inbounds %CName_Cons_Uint32, %CName_Cons_Uint32* %"$adtval_75", i32 0, i32 0
  store i8 0, i8* %"$adtgep_76"
  %"$adtgep_77" = getelementptr inbounds %CName_Cons_Uint32, %CName_Cons_Uint32* %"$adtval_75", i32 0, i32 1
  store %Uint32 %"$uione_73", %Uint32* %"$adtgep_77"
  %"$adtgep_78" = getelementptr inbounds %CName_Cons_Uint32, %CName_Cons_Uint32* %"$adtval_75", i32 0, i32 2
  store %TName_List_Uint32* %"$nil_uint32_74", %TName_List_Uint32** %"$adtgep_78"
  %"$adtptr_79" = bitcast %CName_Cons_Uint32* %"$adtval_75" to %TName_List_Uint32*
  store %TName_List_Uint32* %"$adtptr_79", %TName_List_Uint32** %cons_uint32
  %"$cons_int32_80" = load %TName_List_Int32*, %TName_List_Int32** %cons_int32
  %"$cons_uint32_81" = load %TName_List_Uint32*, %TName_List_Uint32** %cons_uint32
  %"$adtval_82_load" = load i8*, i8** @_execptr
  %"$adtval_82_salloc" = call i8* @_salloc(i8* %"$adtval_82_load", i64 17)
  %"$adtval_82" = bitcast i8* %"$adtval_82_salloc" to %"CName_Pair_List_(Int32)_List_(Uint32)"*
  %"$adtgep_83" = getelementptr inbounds %"CName_Pair_List_(Int32)_List_(Uint32)", %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_82", i32 0, i32 0
  store i8 0, i8* %"$adtgep_83"
  %"$adtgep_84" = getelementptr inbounds %"CName_Pair_List_(Int32)_List_(Uint32)", %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_82", i32 0, i32 1
  store %TName_List_Int32* %"$cons_int32_80", %TName_List_Int32** %"$adtgep_84"
  %"$adtgep_85" = getelementptr inbounds %"CName_Pair_List_(Int32)_List_(Uint32)", %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_82", i32 0, i32 2
  store %TName_List_Uint32* %"$cons_uint32_81", %TName_List_Uint32** %"$adtgep_85"
  %"$adtptr_86" = bitcast %"CName_Pair_List_(Int32)_List_(Uint32)"* %"$adtval_82" to %"TName_Pair_List_(Int32)_List_(Uint32)"*
  store %"TName_Pair_List_(Int32)_List_(Uint32)"* %"$adtptr_86", %"TName_Pair_List_(Int32)_List_(Uint32)"** %"$expr_0"
  %"$$expr_0_87" = load %"TName_Pair_List_(Int32)_List_(Uint32)"*, %"TName_Pair_List_(Int32)_List_(Uint32)"** %"$expr_0"
  ret %"TName_Pair_List_(Int32)_List_(Uint32)"* %"$$expr_0_87"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_88" = call %"TName_Pair_List_(Int32)_List_(Uint32)"* @"$scilla_expr_59"(i8* null)
  %"$memvoidcast_89" = bitcast %"TName_Pair_List_(Int32)_List_(Uint32)"* %"$exprval_88" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_List_(Int32)_List_(Uint32)_27", i8* %"$memvoidcast_89")
  ret void
}
