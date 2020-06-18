; let list_length_dummy =
; tfun 'A =>
; fun (l : List 'A) =>
; Int32 0
; 
; in
; 
; let t1 =
; tfun 'A =>
; fun (a : 'A) =>
; let an = Nil {'A} in
; Cons {'A} a an
; in
; 
; let t2 =
; tfun 'A =>
; fun (a : 'A) =>
; let an = Nil {'A} in
; let a1 = Cons {'A} a an in
; Cons {'A} a a1
; in
; 
; let some_bool = True in
; let f =
; match some_bool with
; | True => t1
; | False => t2
; end
; in
; 
; let some_bool2 = False in
; match some_bool2 with
; | True =>
; let f1 = @f Int32 in
; let len = @list_length_dummy Int32 in
; let one = Int32 1 in
; let f1l = f1 one in
; len f1l
; | False =>
; let f2 = @f Int64 in
; let len = @list_length_dummy Int64 in
; let one = Int64 1 in
; let f2l = f2 one in
; len f2l
; end
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_29" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_51" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_50"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_50" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_52"**, %"$TyDescrTy_ADTTyp_51"* }
%"$TyDescrTy_ADTTyp_Constr_52" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_List_Int64 = type { i8, %CName_Cons_Int64*, %CName_Nil_Int64* }
%CName_Cons_Int64 = type <{ i8, %Int64, %TName_List_Int64* }>
%CName_Nil_Int64 = type <{ i8 }>
%"$$fundef_27_env_90" = type {}
%Int64 = type { i64 }
%"$$fundef_25_env_91" = type {}
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>
%"$$fundef_23_env_92" = type {}
%Int32 = type { i32 }
%"$$fundef_21_env_93" = type {}
%"$$fundef_19_env_94" = type {}
%"$$fundef_17_env_95" = type {}
%"$$fundef_15_env_96" = type {}
%"$$fundef_13_env_97" = type {}
%"$$fundef_11_env_98" = type {}
%"$$fundef_9_env_99" = type {}
%"$$fundef_7_env_100" = type {}
%"$$fundef_5_env_101" = type {}
%Bool = type { i8, %True*, %False* }
%True = type <{ i8 }>
%False = type <{ i8 }>

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_30" = global %"$TyDescrTy_PrimTyp_29" zeroinitializer
@"$TyDescr_Int32_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Int32_Prim_30" to i8*) }
@"$TyDescr_Uint32_Prim_32" = global %"$TyDescrTy_PrimTyp_29" { i32 1, i32 0 }
@"$TyDescr_Uint32_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Uint32_Prim_32" to i8*) }
@"$TyDescr_Int64_Prim_34" = global %"$TyDescrTy_PrimTyp_29" { i32 0, i32 1 }
@"$TyDescr_Int64_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Int64_Prim_34" to i8*) }
@"$TyDescr_Uint64_Prim_36" = global %"$TyDescrTy_PrimTyp_29" { i32 1, i32 1 }
@"$TyDescr_Uint64_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Uint64_Prim_36" to i8*) }
@"$TyDescr_Int128_Prim_38" = global %"$TyDescrTy_PrimTyp_29" { i32 0, i32 2 }
@"$TyDescr_Int128_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Int128_Prim_38" to i8*) }
@"$TyDescr_Uint128_Prim_40" = global %"$TyDescrTy_PrimTyp_29" { i32 1, i32 2 }
@"$TyDescr_Uint128_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Uint128_Prim_40" to i8*) }
@"$TyDescr_Int256_Prim_42" = global %"$TyDescrTy_PrimTyp_29" { i32 0, i32 3 }
@"$TyDescr_Int256_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Int256_Prim_42" to i8*) }
@"$TyDescr_Uint256_Prim_44" = global %"$TyDescrTy_PrimTyp_29" { i32 1, i32 3 }
@"$TyDescr_Uint256_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Uint256_Prim_44" to i8*) }
@"$TyDescr_String_Prim_46" = global %"$TyDescrTy_PrimTyp_29" { i32 2, i32 0 }
@"$TyDescr_String_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_String_Prim_46" to i8*) }
@"$TyDescr_Bystr_Prim_48" = global %"$TyDescrTy_PrimTyp_29" { i32 7, i32 0 }
@"$TyDescr_Bystr_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Bystr_Prim_48" to i8*) }
@"$TyDescr_ADT_Bool_53" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_Bool_ADTTyp_Specl_66" to i8*) }
@"$TyDescr_ADT_List_Int64_54" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_List_Int64_ADTTyp_Specl_78" to i8*) }
@"$TyDescr_ADT_List_Int32_55" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_List_Int32_ADTTyp_Specl_87" to i8*) }
@"$TyDescr_Bool_ADTTyp_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_51" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_68", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_50"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_50"*], [1 x %"$TyDescrTy_ADTTyp_Specl_50"*]* @"$TyDescr_Bool_ADTTyp_m_specls_67", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_58" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_59" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_52" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_59", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_58", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_61" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_62" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_52" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_62", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_61", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_64" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_52"*] [%"$TyDescrTy_ADTTyp_Constr_52"* @"$TyDescr_Bool_True_ADTTyp_Constr_60", %"$TyDescrTy_ADTTyp_Constr_52"* @"$TyDescr_Bool_False_ADTTyp_Constr_63"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_65" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_66" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_50" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_65", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_52"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_52"*], [2 x %"$TyDescrTy_ADTTyp_Constr_52"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_64", i32 0, i32 0), %"$TyDescrTy_ADTTyp_51"* @"$TyDescr_Bool_ADTTyp_57" }
@"$TyDescr_Bool_ADTTyp_m_specls_67" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_50"*] [%"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_Bool_ADTTyp_Specl_66"]
@"$TyDescr_ADT_Bool_68" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_51" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_89", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_50"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_50"*], [2 x %"$TyDescrTy_ADTTyp_Specl_50"*]* @"$TyDescr_List_ADTTyp_m_specls_88", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int64_Constr_m_args_70" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_35", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int64_54"]
@"$TyDescr_ADT_Cons_71" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int64_ADTTyp_Constr_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_52" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_71", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int64_Constr_m_args_70", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int64_Constr_m_args_73" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_74" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int64_ADTTyp_Constr_75" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_52" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_74", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int64_Constr_m_args_73", i32 0, i32 0) }
@"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_76" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_52"*] [%"$TyDescrTy_ADTTyp_Constr_52"* @"$TyDescr_List_Cons_Int64_ADTTyp_Constr_72", %"$TyDescrTy_ADTTyp_Constr_52"* @"$TyDescr_List_Nil_Int64_ADTTyp_Constr_75"]
@"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_77" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_35"]
@"$TyDescr_List_Int64_ADTTyp_Specl_78" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_50" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_77", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_52"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_52"*], [2 x %"$TyDescrTy_ADTTyp_Constr_52"*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_76", i32 0, i32 0), %"$TyDescrTy_ADTTyp_51"* @"$TyDescr_List_ADTTyp_69" }
@"$TyDescr_List_Cons_Int32_Constr_m_args_79" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_31", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_55"]
@"$TyDescr_ADT_Cons_80" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_81" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_52" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_80", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_79", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_82" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_83" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_84" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_52" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_83", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_82", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_85" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_52"*] [%"$TyDescrTy_ADTTyp_Constr_52"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_81", %"$TyDescrTy_ADTTyp_Constr_52"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_84"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_86" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_31"]
@"$TyDescr_List_Int32_ADTTyp_Specl_87" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_50" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_86", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_52"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_52"*], [2 x %"$TyDescrTy_ADTTyp_Constr_52"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_85", i32 0, i32 0), %"$TyDescrTy_ADTTyp_51"* @"$TyDescr_List_ADTTyp_69" }
@"$TyDescr_List_ADTTyp_m_specls_88" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_50"*] [%"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_List_Int64_ADTTyp_Specl_78", %"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_List_Int32_ADTTyp_Specl_87"]
@"$TyDescr_ADT_List_89" = unnamed_addr constant [4 x i8] c"List"
@"$dyndisp_187" = global [2 x { i8*, i8* }] zeroinitializer
@"$dyndisp_194" = global [2 x { i8*, i8* }] zeroinitializer
@"$dyndisp_201" = global [2 x { i8*, i8* }] zeroinitializer

define internal %TName_List_Int64* @"$fundef_27"(%"$$fundef_27_env_90"* %0, %Int64 %1) {
entry:
  %"$retval_28" = alloca %TName_List_Int64*
  %an = alloca %TName_List_Int64*
  %"$adtval_164_load" = load i8*, i8** @_execptr
  %"$adtval_164_salloc" = call i8* @_salloc(i8* %"$adtval_164_load", i64 1)
  %"$adtval_164" = bitcast i8* %"$adtval_164_salloc" to %CName_Nil_Int64*
  %"$adtgep_165" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_164", i32 0, i32 0
  store i8 1, i8* %"$adtgep_165"
  %"$adtptr_166" = bitcast %CName_Nil_Int64* %"$adtval_164" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_166", %TName_List_Int64** %an
  %a1 = alloca %TName_List_Int64*
  %"$an_167" = load %TName_List_Int64*, %TName_List_Int64** %an
  %"$adtval_168_load" = load i8*, i8** @_execptr
  %"$adtval_168_salloc" = call i8* @_salloc(i8* %"$adtval_168_load", i64 17)
  %"$adtval_168" = bitcast i8* %"$adtval_168_salloc" to %CName_Cons_Int64*
  %"$adtgep_169" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_168", i32 0, i32 0
  store i8 0, i8* %"$adtgep_169"
  %"$adtgep_170" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_168", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_170"
  %"$adtgep_171" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_168", i32 0, i32 2
  store %TName_List_Int64* %"$an_167", %TName_List_Int64** %"$adtgep_171"
  %"$adtptr_172" = bitcast %CName_Cons_Int64* %"$adtval_168" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_172", %TName_List_Int64** %a1
  %"$a1_173" = load %TName_List_Int64*, %TName_List_Int64** %a1
  %"$adtval_174_load" = load i8*, i8** @_execptr
  %"$adtval_174_salloc" = call i8* @_salloc(i8* %"$adtval_174_load", i64 17)
  %"$adtval_174" = bitcast i8* %"$adtval_174_salloc" to %CName_Cons_Int64*
  %"$adtgep_175" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_174", i32 0, i32 0
  store i8 0, i8* %"$adtgep_175"
  %"$adtgep_176" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_174", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_176"
  %"$adtgep_177" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_174", i32 0, i32 2
  store %TName_List_Int64* %"$a1_173", %TName_List_Int64** %"$adtgep_177"
  %"$adtptr_178" = bitcast %CName_Cons_Int64* %"$adtval_174" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_178", %TName_List_Int64** %"$retval_28"
  %"$$retval_28_179" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_28"
  ret %TName_List_Int64* %"$$retval_28_179"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_25"(%"$$fundef_25_env_91"* %0) {
entry:
  %"$retval_26" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_27_env_90"*, %Int64)* @"$fundef_27" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_26"
  %"$$retval_26_163" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_26"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_26_163"
}

define internal %TName_List_Int32* @"$fundef_23"(%"$$fundef_23_env_92"* %0, %Int32 %1) {
entry:
  %"$retval_24" = alloca %TName_List_Int32*
  %an = alloca %TName_List_Int32*
  %"$adtval_144_load" = load i8*, i8** @_execptr
  %"$adtval_144_salloc" = call i8* @_salloc(i8* %"$adtval_144_load", i64 1)
  %"$adtval_144" = bitcast i8* %"$adtval_144_salloc" to %CName_Nil_Int32*
  %"$adtgep_145" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_144", i32 0, i32 0
  store i8 1, i8* %"$adtgep_145"
  %"$adtptr_146" = bitcast %CName_Nil_Int32* %"$adtval_144" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_146", %TName_List_Int32** %an
  %a1 = alloca %TName_List_Int32*
  %"$an_147" = load %TName_List_Int32*, %TName_List_Int32** %an
  %"$adtval_148_load" = load i8*, i8** @_execptr
  %"$adtval_148_salloc" = call i8* @_salloc(i8* %"$adtval_148_load", i64 13)
  %"$adtval_148" = bitcast i8* %"$adtval_148_salloc" to %CName_Cons_Int32*
  %"$adtgep_149" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_148", i32 0, i32 0
  store i8 0, i8* %"$adtgep_149"
  %"$adtgep_150" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_148", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_150"
  %"$adtgep_151" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_148", i32 0, i32 2
  store %TName_List_Int32* %"$an_147", %TName_List_Int32** %"$adtgep_151"
  %"$adtptr_152" = bitcast %CName_Cons_Int32* %"$adtval_148" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_152", %TName_List_Int32** %a1
  %"$a1_153" = load %TName_List_Int32*, %TName_List_Int32** %a1
  %"$adtval_154_load" = load i8*, i8** @_execptr
  %"$adtval_154_salloc" = call i8* @_salloc(i8* %"$adtval_154_load", i64 13)
  %"$adtval_154" = bitcast i8* %"$adtval_154_salloc" to %CName_Cons_Int32*
  %"$adtgep_155" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_154", i32 0, i32 0
  store i8 0, i8* %"$adtgep_155"
  %"$adtgep_156" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_154", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_156"
  %"$adtgep_157" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_154", i32 0, i32 2
  store %TName_List_Int32* %"$a1_153", %TName_List_Int32** %"$adtgep_157"
  %"$adtptr_158" = bitcast %CName_Cons_Int32* %"$adtval_154" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_158", %TName_List_Int32** %"$retval_24"
  %"$$retval_24_159" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_24"
  ret %TName_List_Int32* %"$$retval_24_159"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_21"(%"$$fundef_21_env_93"* %0) {
entry:
  %"$retval_22" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_23_env_92"*, %Int32)* @"$fundef_23" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_22"
  %"$$retval_22_143" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_22"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_22_143"
}

define internal %TName_List_Int64* @"$fundef_19"(%"$$fundef_19_env_94"* %0, %Int64 %1) {
entry:
  %"$retval_20" = alloca %TName_List_Int64*
  %an = alloca %TName_List_Int64*
  %"$adtval_130_load" = load i8*, i8** @_execptr
  %"$adtval_130_salloc" = call i8* @_salloc(i8* %"$adtval_130_load", i64 1)
  %"$adtval_130" = bitcast i8* %"$adtval_130_salloc" to %CName_Nil_Int64*
  %"$adtgep_131" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_130", i32 0, i32 0
  store i8 1, i8* %"$adtgep_131"
  %"$adtptr_132" = bitcast %CName_Nil_Int64* %"$adtval_130" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_132", %TName_List_Int64** %an
  %"$an_133" = load %TName_List_Int64*, %TName_List_Int64** %an
  %"$adtval_134_load" = load i8*, i8** @_execptr
  %"$adtval_134_salloc" = call i8* @_salloc(i8* %"$adtval_134_load", i64 17)
  %"$adtval_134" = bitcast i8* %"$adtval_134_salloc" to %CName_Cons_Int64*
  %"$adtgep_135" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_134", i32 0, i32 0
  store i8 0, i8* %"$adtgep_135"
  %"$adtgep_136" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_134", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_136"
  %"$adtgep_137" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_134", i32 0, i32 2
  store %TName_List_Int64* %"$an_133", %TName_List_Int64** %"$adtgep_137"
  %"$adtptr_138" = bitcast %CName_Cons_Int64* %"$adtval_134" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_138", %TName_List_Int64** %"$retval_20"
  %"$$retval_20_139" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_20"
  ret %TName_List_Int64* %"$$retval_20_139"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_17"(%"$$fundef_17_env_95"* %0) {
entry:
  %"$retval_18" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_19_env_94"*, %Int64)* @"$fundef_19" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_18"
  %"$$retval_18_129" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_18"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_18_129"
}

define internal %TName_List_Int32* @"$fundef_15"(%"$$fundef_15_env_96"* %0, %Int32 %1) {
entry:
  %"$retval_16" = alloca %TName_List_Int32*
  %an = alloca %TName_List_Int32*
  %"$adtval_116_load" = load i8*, i8** @_execptr
  %"$adtval_116_salloc" = call i8* @_salloc(i8* %"$adtval_116_load", i64 1)
  %"$adtval_116" = bitcast i8* %"$adtval_116_salloc" to %CName_Nil_Int32*
  %"$adtgep_117" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_116", i32 0, i32 0
  store i8 1, i8* %"$adtgep_117"
  %"$adtptr_118" = bitcast %CName_Nil_Int32* %"$adtval_116" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_118", %TName_List_Int32** %an
  %"$an_119" = load %TName_List_Int32*, %TName_List_Int32** %an
  %"$adtval_120_load" = load i8*, i8** @_execptr
  %"$adtval_120_salloc" = call i8* @_salloc(i8* %"$adtval_120_load", i64 13)
  %"$adtval_120" = bitcast i8* %"$adtval_120_salloc" to %CName_Cons_Int32*
  %"$adtgep_121" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_120", i32 0, i32 0
  store i8 0, i8* %"$adtgep_121"
  %"$adtgep_122" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_120", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_122"
  %"$adtgep_123" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_120", i32 0, i32 2
  store %TName_List_Int32* %"$an_119", %TName_List_Int32** %"$adtgep_123"
  %"$adtptr_124" = bitcast %CName_Cons_Int32* %"$adtval_120" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_124", %TName_List_Int32** %"$retval_16"
  %"$$retval_16_125" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_16"
  ret %TName_List_Int32* %"$$retval_16_125"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_13"(%"$$fundef_13_env_97"* %0) {
entry:
  %"$retval_14" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_15_env_96"*, %Int32)* @"$fundef_15" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_14"
  %"$$retval_14_115" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_14"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_14_115"
}

define internal %Int32 @"$fundef_11"(%"$$fundef_11_env_98"* %0, %TName_List_Int64* %1) {
entry:
  %"$retval_12" = alloca %Int32
  store %Int32 zeroinitializer, %Int32* %"$retval_12"
  %"$$retval_12_111" = load %Int32, %Int32* %"$retval_12"
  ret %Int32 %"$$retval_12_111"
}

define internal { %Int32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_9"(%"$$fundef_9_env_99"* %0) {
entry:
  %"$retval_10" = alloca { %Int32 (i8*, %TName_List_Int64*)*, i8* }
  store { %Int32 (i8*, %TName_List_Int64*)*, i8* } { %Int32 (i8*, %TName_List_Int64*)* bitcast (%Int32 (%"$$fundef_11_env_98"*, %TName_List_Int64*)* @"$fundef_11" to %Int32 (i8*, %TName_List_Int64*)*), i8* null }, { %Int32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_10"
  %"$$retval_10_110" = load { %Int32 (i8*, %TName_List_Int64*)*, i8* }, { %Int32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_10"
  ret { %Int32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_10_110"
}

define internal %Int32 @"$fundef_7"(%"$$fundef_7_env_100"* %0, %TName_List_Int32* %1) {
entry:
  %"$retval_8" = alloca %Int32
  store %Int32 zeroinitializer, %Int32* %"$retval_8"
  %"$$retval_8_106" = load %Int32, %Int32* %"$retval_8"
  ret %Int32 %"$$retval_8_106"
}

define internal { %Int32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_5"(%"$$fundef_5_env_101"* %0) {
entry:
  %"$retval_6" = alloca { %Int32 (i8*, %TName_List_Int32*)*, i8* }
  store { %Int32 (i8*, %TName_List_Int32*)*, i8* } { %Int32 (i8*, %TName_List_Int32*)* bitcast (%Int32 (%"$$fundef_7_env_100"*, %TName_List_Int32*)* @"$fundef_7" to %Int32 (i8*, %TName_List_Int32*)*), i8* null }, { %Int32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_6"
  %"$$retval_6_105" = load { %Int32 (i8*, %TName_List_Int32*)*, i8* }, { %Int32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_6"
  ret { %Int32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_6_105"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @"$scilla_expr_180"(i8* %0) {
entry:
  %"$expr_4" = alloca %Int32
  %list_length_dummy = alloca { i8*, i8* }*
  store { { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Int32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_5_env_101"*)* @"$fundef_5" to { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* null }, { { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* bitcast ([2 x { i8*, i8* }]* @"$dyndisp_187" to { { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*)
  store { { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Int32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_9_env_99"*)* @"$fundef_9" to { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* null }, { { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_187", i32 0, i32 1) to { { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_187", i32 0, i32 0), { i8*, i8* }** %list_length_dummy
  %t1 = alloca { i8*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_13_env_97"*)* @"$fundef_13" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* bitcast ([2 x { i8*, i8* }]* @"$dyndisp_194" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*)
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_17_env_95"*)* @"$fundef_17" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_194", i32 0, i32 1) to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_194", i32 0, i32 0), { i8*, i8* }** %t1
  %t2 = alloca { i8*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_21_env_93"*)* @"$fundef_21" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* bitcast ([2 x { i8*, i8* }]* @"$dyndisp_201" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*)
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_25_env_91"*)* @"$fundef_25" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_201", i32 0, i32 1) to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_201", i32 0, i32 0), { i8*, i8* }** %t2
  %some_bool = alloca %Bool*
  %"$adtval_202_load" = load i8*, i8** @_execptr
  %"$adtval_202_salloc" = call i8* @_salloc(i8* %"$adtval_202_load", i64 1)
  %"$adtval_202" = bitcast i8* %"$adtval_202_salloc" to %True*
  %"$adtgep_203" = getelementptr inbounds %True, %True* %"$adtval_202", i32 0, i32 0
  store i8 0, i8* %"$adtgep_203"
  %"$adtptr_204" = bitcast %True* %"$adtval_202" to %Bool*
  store %Bool* %"$adtptr_204", %Bool** %some_bool
  %f = alloca { i8*, i8* }*
  %"$some_bool_206" = load %Bool*, %Bool** %some_bool
  %"$some_bool_tag_207" = getelementptr inbounds %Bool, %Bool* %"$some_bool_206", i32 0, i32 0
  %"$some_bool_tag_208" = load i8, i8* %"$some_bool_tag_207"
  switch i8 %"$some_bool_tag_208", label %"$empty_default_209" [
    i8 0, label %"$True_210"
    i8 1, label %"$False_213"
  ]

"$True_210":                                      ; preds = %entry
  %"$some_bool_211" = bitcast %Bool* %"$some_bool_206" to %True*
  %"$t1_212" = load { i8*, i8* }*, { i8*, i8* }** %t1
  store { i8*, i8* }* %"$t1_212", { i8*, i8* }** %f
  br label %"$matchsucc_205"

"$False_213":                                     ; preds = %entry
  %"$some_bool_214" = bitcast %Bool* %"$some_bool_206" to %False*
  %"$t2_215" = load { i8*, i8* }*, { i8*, i8* }** %t2
  store { i8*, i8* }* %"$t2_215", { i8*, i8* }** %f
  br label %"$matchsucc_205"

"$empty_default_209":                             ; preds = %entry
  br label %"$matchsucc_205"

"$matchsucc_205":                                 ; preds = %"$False_213", %"$True_210", %"$empty_default_209"
  %some_bool2 = alloca %Bool*
  %"$adtval_216_load" = load i8*, i8** @_execptr
  %"$adtval_216_salloc" = call i8* @_salloc(i8* %"$adtval_216_load", i64 1)
  %"$adtval_216" = bitcast i8* %"$adtval_216_salloc" to %False*
  %"$adtgep_217" = getelementptr inbounds %False, %False* %"$adtval_216", i32 0, i32 0
  store i8 1, i8* %"$adtgep_217"
  %"$adtptr_218" = bitcast %False* %"$adtval_216" to %Bool*
  store %Bool* %"$adtptr_218", %Bool** %some_bool2
  %"$some_bool2_220" = load %Bool*, %Bool** %some_bool2
  %"$some_bool2_tag_221" = getelementptr inbounds %Bool, %Bool* %"$some_bool2_220", i32 0, i32 0
  %"$some_bool2_tag_222" = load i8, i8* %"$some_bool2_tag_221"
  switch i8 %"$some_bool2_tag_222", label %"$empty_default_223" [
    i8 0, label %"$True_224"
    i8 1, label %"$False_252"
  ]

"$True_224":                                      ; preds = %"$matchsucc_205"
  %"$some_bool2_225" = bitcast %Bool* %"$some_bool2_220" to %True*
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$f_226" = load { i8*, i8* }*, { i8*, i8* }** %f
  %"$f_227" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_226", i32 0
  %"$f_228" = bitcast { i8*, i8* }* %"$f_227" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_229" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_228"
  %"$f_fptr_230" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_229", 0
  %"$f_envptr_231" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_229", 1
  %"$f_call_232" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_230"(i8* %"$f_envptr_231")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_232", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1
  %len = alloca { %Int32 (i8*, %TName_List_Int32*)*, i8* }
  %"$list_length_dummy_233" = load { i8*, i8* }*, { i8*, i8* }** %list_length_dummy
  %"$list_length_dummy_234" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_dummy_233", i32 0
  %"$list_length_dummy_235" = bitcast { i8*, i8* }* %"$list_length_dummy_234" to { { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$list_length_dummy_236" = load { { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$list_length_dummy_235"
  %"$list_length_dummy_fptr_237" = extractvalue { { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$list_length_dummy_236", 0
  %"$list_length_dummy_envptr_238" = extractvalue { { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$list_length_dummy_236", 1
  %"$list_length_dummy_call_239" = call { %Int32 (i8*, %TName_List_Int32*)*, i8* } %"$list_length_dummy_fptr_237"(i8* %"$list_length_dummy_envptr_238")
  store { %Int32 (i8*, %TName_List_Int32*)*, i8* } %"$list_length_dummy_call_239", { %Int32 (i8*, %TName_List_Int32*)*, i8* }* %len
  %one = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %one
  %f1l = alloca %TName_List_Int32*
  %"$f1_0" = alloca %TName_List_Int32*
  %"$f1_240" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1
  %"$f1_fptr_241" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_240", 0
  %"$f1_envptr_242" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_240", 1
  %"$one_243" = load %Int32, %Int32* %one
  %"$f1_call_244" = call %TName_List_Int32* %"$f1_fptr_241"(i8* %"$f1_envptr_242", %Int32 %"$one_243")
  store %TName_List_Int32* %"$f1_call_244", %TName_List_Int32** %"$f1_0"
  %"$$f1_0_245" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_0"
  store %TName_List_Int32* %"$$f1_0_245", %TName_List_Int32** %f1l
  %"$len_1" = alloca %Int32
  %"$len_246" = load { %Int32 (i8*, %TName_List_Int32*)*, i8* }, { %Int32 (i8*, %TName_List_Int32*)*, i8* }* %len
  %"$len_fptr_247" = extractvalue { %Int32 (i8*, %TName_List_Int32*)*, i8* } %"$len_246", 0
  %"$len_envptr_248" = extractvalue { %Int32 (i8*, %TName_List_Int32*)*, i8* } %"$len_246", 1
  %"$f1l_249" = load %TName_List_Int32*, %TName_List_Int32** %f1l
  %"$len_call_250" = call %Int32 %"$len_fptr_247"(i8* %"$len_envptr_248", %TName_List_Int32* %"$f1l_249")
  store %Int32 %"$len_call_250", %Int32* %"$len_1"
  %"$$len_1_251" = load %Int32, %Int32* %"$len_1"
  store %Int32 %"$$len_1_251", %Int32* %"$expr_4"
  br label %"$matchsucc_219"

"$False_252":                                     ; preds = %"$matchsucc_205"
  %"$some_bool2_253" = bitcast %Bool* %"$some_bool2_220" to %False*
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$f_254" = load { i8*, i8* }*, { i8*, i8* }** %f
  %"$f_255" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_254", i32 1
  %"$f_256" = bitcast { i8*, i8* }* %"$f_255" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_257" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_256"
  %"$f_fptr_258" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_257", 0
  %"$f_envptr_259" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_257", 1
  %"$f_call_260" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_258"(i8* %"$f_envptr_259")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_260", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2
  %len1 = alloca { %Int32 (i8*, %TName_List_Int64*)*, i8* }
  %"$list_length_dummy_261" = load { i8*, i8* }*, { i8*, i8* }** %list_length_dummy
  %"$list_length_dummy_262" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_dummy_261", i32 1
  %"$list_length_dummy_263" = bitcast { i8*, i8* }* %"$list_length_dummy_262" to { { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$list_length_dummy_264" = load { { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$list_length_dummy_263"
  %"$list_length_dummy_fptr_265" = extractvalue { { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$list_length_dummy_264", 0
  %"$list_length_dummy_envptr_266" = extractvalue { { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$list_length_dummy_264", 1
  %"$list_length_dummy_call_267" = call { %Int32 (i8*, %TName_List_Int64*)*, i8* } %"$list_length_dummy_fptr_265"(i8* %"$list_length_dummy_envptr_266")
  store { %Int32 (i8*, %TName_List_Int64*)*, i8* } %"$list_length_dummy_call_267", { %Int32 (i8*, %TName_List_Int64*)*, i8* }* %len1
  %one2 = alloca %Int64
  store %Int64 { i64 1 }, %Int64* %one2
  %f2l = alloca %TName_List_Int64*
  %"$f2_2" = alloca %TName_List_Int64*
  %"$f2_268" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2
  %"$f2_fptr_269" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_268", 0
  %"$f2_envptr_270" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_268", 1
  %"$one_271" = load %Int64, %Int64* %one2
  %"$f2_call_272" = call %TName_List_Int64* %"$f2_fptr_269"(i8* %"$f2_envptr_270", %Int64 %"$one_271")
  store %TName_List_Int64* %"$f2_call_272", %TName_List_Int64** %"$f2_2"
  %"$$f2_2_273" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_2"
  store %TName_List_Int64* %"$$f2_2_273", %TName_List_Int64** %f2l
  %"$len_3" = alloca %Int32
  %"$len_274" = load { %Int32 (i8*, %TName_List_Int64*)*, i8* }, { %Int32 (i8*, %TName_List_Int64*)*, i8* }* %len1
  %"$len_fptr_275" = extractvalue { %Int32 (i8*, %TName_List_Int64*)*, i8* } %"$len_274", 0
  %"$len_envptr_276" = extractvalue { %Int32 (i8*, %TName_List_Int64*)*, i8* } %"$len_274", 1
  %"$f2l_277" = load %TName_List_Int64*, %TName_List_Int64** %f2l
  %"$len_call_278" = call %Int32 %"$len_fptr_275"(i8* %"$len_envptr_276", %TName_List_Int64* %"$f2l_277")
  store %Int32 %"$len_call_278", %Int32* %"$len_3"
  %"$$len_3_279" = load %Int32, %Int32* %"$len_3"
  store %Int32 %"$$len_3_279", %Int32* %"$expr_4"
  br label %"$matchsucc_219"

"$empty_default_223":                             ; preds = %"$matchsucc_205"
  br label %"$matchsucc_219"

"$matchsucc_219":                                 ; preds = %"$False_252", %"$True_224", %"$empty_default_223"
  %"$$expr_4_280" = load %Int32, %Int32* %"$expr_4"
  ret %Int32 %"$$expr_4_280"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_281" = call %Int32 @"$scilla_expr_180"(i8* null)
  %"$pval_282" = alloca %Int32
  %"$memvoidcast_283" = bitcast %Int32* %"$pval_282" to i8*
  store %Int32 %"$exprval_281", %Int32* %"$pval_282"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_31", i8* %"$memvoidcast_283")
  ret void
}
