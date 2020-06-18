; let list_length_dummy =
; tfun 'A =>
; fun (l : List 'A) =>
; Int32 0
; 
; in
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
; let t =
; tfun 'B =>
; fun (f : forall 'A. 'A -> List 'A) =>
; @f 'B
; in
; 
; let some_bool = False in
; match some_bool with
; | True =>
; let f11 = @t Int32 in
; let f1 = f11 t1 in
; let len = @list_length_dummy Int32 in
; let one = Int32 1 in
; let f1l = f1 one in
; len f1l
; | False =>
; let f22 = @t Int64 in
; let f2 = f22 t2 in
; let len = @list_length_dummy Int64 in
; let one = Int64 1 in
; let f2l = f2 one in
; len f2l
; end
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_39" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_61" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_60"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_60" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_62"**, %"$TyDescrTy_ADTTyp_61"* }
%"$TyDescrTy_ADTTyp_Constr_62" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_List_Int64 = type { i8, %CName_Cons_Int64*, %CName_Nil_Int64* }
%CName_Cons_Int64 = type <{ i8, %Int64, %TName_List_Int64* }>
%CName_Nil_Int64 = type <{ i8 }>
%Int64 = type { i64 }
%"$$fundef_37_env_100" = type {}
%"$$fundef_35_env_101" = type {}
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>
%Int32 = type { i32 }
%"$$fundef_33_env_102" = type {}
%"$$fundef_31_env_103" = type {}
%"$$fundef_29_env_104" = type {}
%"$$fundef_27_env_105" = type {}
%"$$fundef_25_env_106" = type {}
%"$$fundef_23_env_107" = type {}
%"$$fundef_21_env_108" = type {}
%"$$fundef_19_env_109" = type {}
%"$$fundef_17_env_110" = type {}
%"$$fundef_15_env_111" = type {}
%"$$fundef_13_env_112" = type {}
%"$$fundef_11_env_113" = type {}
%"$$fundef_9_env_114" = type {}
%"$$fundef_7_env_115" = type {}
%Bool = type { i8, %True*, %False* }
%True = type <{ i8 }>
%False = type <{ i8 }>

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_40" = global %"$TyDescrTy_PrimTyp_39" zeroinitializer
@"$TyDescr_Int32_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_39"* @"$TyDescr_Int32_Prim_40" to i8*) }
@"$TyDescr_Uint32_Prim_42" = global %"$TyDescrTy_PrimTyp_39" { i32 1, i32 0 }
@"$TyDescr_Uint32_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_39"* @"$TyDescr_Uint32_Prim_42" to i8*) }
@"$TyDescr_Int64_Prim_44" = global %"$TyDescrTy_PrimTyp_39" { i32 0, i32 1 }
@"$TyDescr_Int64_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_39"* @"$TyDescr_Int64_Prim_44" to i8*) }
@"$TyDescr_Uint64_Prim_46" = global %"$TyDescrTy_PrimTyp_39" { i32 1, i32 1 }
@"$TyDescr_Uint64_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_39"* @"$TyDescr_Uint64_Prim_46" to i8*) }
@"$TyDescr_Int128_Prim_48" = global %"$TyDescrTy_PrimTyp_39" { i32 0, i32 2 }
@"$TyDescr_Int128_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_39"* @"$TyDescr_Int128_Prim_48" to i8*) }
@"$TyDescr_Uint128_Prim_50" = global %"$TyDescrTy_PrimTyp_39" { i32 1, i32 2 }
@"$TyDescr_Uint128_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_39"* @"$TyDescr_Uint128_Prim_50" to i8*) }
@"$TyDescr_Int256_Prim_52" = global %"$TyDescrTy_PrimTyp_39" { i32 0, i32 3 }
@"$TyDescr_Int256_53" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_39"* @"$TyDescr_Int256_Prim_52" to i8*) }
@"$TyDescr_Uint256_Prim_54" = global %"$TyDescrTy_PrimTyp_39" { i32 1, i32 3 }
@"$TyDescr_Uint256_55" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_39"* @"$TyDescr_Uint256_Prim_54" to i8*) }
@"$TyDescr_String_Prim_56" = global %"$TyDescrTy_PrimTyp_39" { i32 2, i32 0 }
@"$TyDescr_String_57" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_39"* @"$TyDescr_String_Prim_56" to i8*) }
@"$TyDescr_Bystr_Prim_58" = global %"$TyDescrTy_PrimTyp_39" { i32 7, i32 0 }
@"$TyDescr_Bystr_59" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_39"* @"$TyDescr_Bystr_Prim_58" to i8*) }
@"$TyDescr_ADT_Bool_63" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Bool_ADTTyp_Specl_76" to i8*) }
@"$TyDescr_ADT_List_Int64_64" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_List_Int64_ADTTyp_Specl_88" to i8*) }
@"$TyDescr_ADT_List_Int32_65" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_List_Int32_ADTTyp_Specl_97" to i8*) }
@"$TyDescr_Bool_ADTTyp_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_61" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_78", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_60"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_60"*], [1 x %"$TyDescrTy_ADTTyp_Specl_60"*]* @"$TyDescr_Bool_ADTTyp_m_specls_77", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_68" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_69" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_69", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_68", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_71" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_72" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_72", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_71", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_74" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_62"*] [%"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_Bool_True_ADTTyp_Constr_70", %"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_Bool_False_ADTTyp_Constr_73"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_75" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_60" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_75", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_62"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_62"*], [2 x %"$TyDescrTy_ADTTyp_Constr_62"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_74", i32 0, i32 0), %"$TyDescrTy_ADTTyp_61"* @"$TyDescr_Bool_ADTTyp_67" }
@"$TyDescr_Bool_ADTTyp_m_specls_77" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_60"*] [%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Bool_ADTTyp_Specl_76"]
@"$TyDescr_ADT_Bool_78" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_61" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_99", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_60"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_60"*], [2 x %"$TyDescrTy_ADTTyp_Specl_60"*]* @"$TyDescr_List_ADTTyp_m_specls_98", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int64_Constr_m_args_80" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_45", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int64_64"]
@"$TyDescr_ADT_Cons_81" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int64_ADTTyp_Constr_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_81", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int64_Constr_m_args_80", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int64_Constr_m_args_83" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_84" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int64_ADTTyp_Constr_85" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_84", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int64_Constr_m_args_83", i32 0, i32 0) }
@"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_86" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_62"*] [%"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_List_Cons_Int64_ADTTyp_Constr_82", %"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_List_Nil_Int64_ADTTyp_Constr_85"]
@"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_87" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_45"]
@"$TyDescr_List_Int64_ADTTyp_Specl_88" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_60" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_87", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_62"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_62"*], [2 x %"$TyDescrTy_ADTTyp_Constr_62"*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_86", i32 0, i32 0), %"$TyDescrTy_ADTTyp_61"* @"$TyDescr_List_ADTTyp_79" }
@"$TyDescr_List_Cons_Int32_Constr_m_args_89" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_41", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_65"]
@"$TyDescr_ADT_Cons_90" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_91" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_90", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_89", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_92" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_93" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_94" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_93", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_92", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_95" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_62"*] [%"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_91", %"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_94"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_96" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_41"]
@"$TyDescr_List_Int32_ADTTyp_Specl_97" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_60" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_96", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_62"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_62"*], [2 x %"$TyDescrTy_ADTTyp_Constr_62"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_95", i32 0, i32 0), %"$TyDescrTy_ADTTyp_61"* @"$TyDescr_List_ADTTyp_79" }
@"$TyDescr_List_ADTTyp_m_specls_98" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_60"*] [%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_List_Int64_ADTTyp_Specl_88", %"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_List_Int32_ADTTyp_Specl_97"]
@"$TyDescr_ADT_List_99" = unnamed_addr constant [4 x i8] c"List"
@"$dyndisp_223" = global [2 x { i8*, i8* }] zeroinitializer
@"$dyndisp_230" = global [2 x { i8*, i8* }] zeroinitializer
@"$dyndisp_237" = global [2 x { i8*, i8* }] zeroinitializer
@"$dyndisp_244" = global [2 x { i8*, i8* }] zeroinitializer

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_37"(%"$$fundef_37_env_100"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_38" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$f_209" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 1
  %"$f_210" = bitcast { i8*, i8* }* %"$f_209" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_211" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_210"
  %"$f_fptr_212" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_211", 0
  %"$f_envptr_213" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_211", 1
  %"$f_call_214" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_212"(i8* %"$f_envptr_213")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_214", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_38"
  %"$$retval_38_215" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_38"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_38_215"
}

define internal { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_35"(%"$$fundef_35_env_101"* %0) {
entry:
  %"$retval_36" = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_37_env_100"*, { i8*, i8* }*)* @"$fundef_37" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_36"
  %"$$retval_36_208" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_36"
  ret { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_36_208"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_33"(%"$$fundef_33_env_102"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_34" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$f_198" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$f_199" = bitcast { i8*, i8* }* %"$f_198" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_200" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_199"
  %"$f_fptr_201" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_200", 0
  %"$f_envptr_202" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_200", 1
  %"$f_call_203" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_201"(i8* %"$f_envptr_202")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_203", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_34"
  %"$$retval_34_204" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_34"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_34_204"
}

define internal { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_31"(%"$$fundef_31_env_103"* %0) {
entry:
  %"$retval_32" = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_33_env_102"*, { i8*, i8* }*)* @"$fundef_33" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_32"
  %"$$retval_32_197" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_32"
  ret { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_32_197"
}

define internal %TName_List_Int64* @"$fundef_29"(%"$$fundef_29_env_104"* %0, %Int64 %1) {
entry:
  %"$retval_30" = alloca %TName_List_Int64*
  %an = alloca %TName_List_Int64*
  %"$adtval_178_load" = load i8*, i8** @_execptr
  %"$adtval_178_salloc" = call i8* @_salloc(i8* %"$adtval_178_load", i64 1)
  %"$adtval_178" = bitcast i8* %"$adtval_178_salloc" to %CName_Nil_Int64*
  %"$adtgep_179" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_178", i32 0, i32 0
  store i8 1, i8* %"$adtgep_179"
  %"$adtptr_180" = bitcast %CName_Nil_Int64* %"$adtval_178" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_180", %TName_List_Int64** %an
  %a1 = alloca %TName_List_Int64*
  %"$an_181" = load %TName_List_Int64*, %TName_List_Int64** %an
  %"$adtval_182_load" = load i8*, i8** @_execptr
  %"$adtval_182_salloc" = call i8* @_salloc(i8* %"$adtval_182_load", i64 17)
  %"$adtval_182" = bitcast i8* %"$adtval_182_salloc" to %CName_Cons_Int64*
  %"$adtgep_183" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_182", i32 0, i32 0
  store i8 0, i8* %"$adtgep_183"
  %"$adtgep_184" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_182", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_184"
  %"$adtgep_185" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_182", i32 0, i32 2
  store %TName_List_Int64* %"$an_181", %TName_List_Int64** %"$adtgep_185"
  %"$adtptr_186" = bitcast %CName_Cons_Int64* %"$adtval_182" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_186", %TName_List_Int64** %a1
  %"$a1_187" = load %TName_List_Int64*, %TName_List_Int64** %a1
  %"$adtval_188_load" = load i8*, i8** @_execptr
  %"$adtval_188_salloc" = call i8* @_salloc(i8* %"$adtval_188_load", i64 17)
  %"$adtval_188" = bitcast i8* %"$adtval_188_salloc" to %CName_Cons_Int64*
  %"$adtgep_189" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_188", i32 0, i32 0
  store i8 0, i8* %"$adtgep_189"
  %"$adtgep_190" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_188", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_190"
  %"$adtgep_191" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_188", i32 0, i32 2
  store %TName_List_Int64* %"$a1_187", %TName_List_Int64** %"$adtgep_191"
  %"$adtptr_192" = bitcast %CName_Cons_Int64* %"$adtval_188" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_192", %TName_List_Int64** %"$retval_30"
  %"$$retval_30_193" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_30"
  ret %TName_List_Int64* %"$$retval_30_193"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_27"(%"$$fundef_27_env_105"* %0) {
entry:
  %"$retval_28" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_29_env_104"*, %Int64)* @"$fundef_29" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_28"
  %"$$retval_28_177" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_28"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_28_177"
}

define internal %TName_List_Int32* @"$fundef_25"(%"$$fundef_25_env_106"* %0, %Int32 %1) {
entry:
  %"$retval_26" = alloca %TName_List_Int32*
  %an = alloca %TName_List_Int32*
  %"$adtval_158_load" = load i8*, i8** @_execptr
  %"$adtval_158_salloc" = call i8* @_salloc(i8* %"$adtval_158_load", i64 1)
  %"$adtval_158" = bitcast i8* %"$adtval_158_salloc" to %CName_Nil_Int32*
  %"$adtgep_159" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_158", i32 0, i32 0
  store i8 1, i8* %"$adtgep_159"
  %"$adtptr_160" = bitcast %CName_Nil_Int32* %"$adtval_158" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_160", %TName_List_Int32** %an
  %a1 = alloca %TName_List_Int32*
  %"$an_161" = load %TName_List_Int32*, %TName_List_Int32** %an
  %"$adtval_162_load" = load i8*, i8** @_execptr
  %"$adtval_162_salloc" = call i8* @_salloc(i8* %"$adtval_162_load", i64 13)
  %"$adtval_162" = bitcast i8* %"$adtval_162_salloc" to %CName_Cons_Int32*
  %"$adtgep_163" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_162", i32 0, i32 0
  store i8 0, i8* %"$adtgep_163"
  %"$adtgep_164" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_162", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_164"
  %"$adtgep_165" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_162", i32 0, i32 2
  store %TName_List_Int32* %"$an_161", %TName_List_Int32** %"$adtgep_165"
  %"$adtptr_166" = bitcast %CName_Cons_Int32* %"$adtval_162" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_166", %TName_List_Int32** %a1
  %"$a1_167" = load %TName_List_Int32*, %TName_List_Int32** %a1
  %"$adtval_168_load" = load i8*, i8** @_execptr
  %"$adtval_168_salloc" = call i8* @_salloc(i8* %"$adtval_168_load", i64 13)
  %"$adtval_168" = bitcast i8* %"$adtval_168_salloc" to %CName_Cons_Int32*
  %"$adtgep_169" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_168", i32 0, i32 0
  store i8 0, i8* %"$adtgep_169"
  %"$adtgep_170" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_168", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_170"
  %"$adtgep_171" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_168", i32 0, i32 2
  store %TName_List_Int32* %"$a1_167", %TName_List_Int32** %"$adtgep_171"
  %"$adtptr_172" = bitcast %CName_Cons_Int32* %"$adtval_168" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_172", %TName_List_Int32** %"$retval_26"
  %"$$retval_26_173" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_26"
  ret %TName_List_Int32* %"$$retval_26_173"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_23"(%"$$fundef_23_env_107"* %0) {
entry:
  %"$retval_24" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_25_env_106"*, %Int32)* @"$fundef_25" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_24"
  %"$$retval_24_157" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_24"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_24_157"
}

define internal %TName_List_Int64* @"$fundef_21"(%"$$fundef_21_env_108"* %0, %Int64 %1) {
entry:
  %"$retval_22" = alloca %TName_List_Int64*
  %an = alloca %TName_List_Int64*
  %"$adtval_144_load" = load i8*, i8** @_execptr
  %"$adtval_144_salloc" = call i8* @_salloc(i8* %"$adtval_144_load", i64 1)
  %"$adtval_144" = bitcast i8* %"$adtval_144_salloc" to %CName_Nil_Int64*
  %"$adtgep_145" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_144", i32 0, i32 0
  store i8 1, i8* %"$adtgep_145"
  %"$adtptr_146" = bitcast %CName_Nil_Int64* %"$adtval_144" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_146", %TName_List_Int64** %an
  %"$an_147" = load %TName_List_Int64*, %TName_List_Int64** %an
  %"$adtval_148_load" = load i8*, i8** @_execptr
  %"$adtval_148_salloc" = call i8* @_salloc(i8* %"$adtval_148_load", i64 17)
  %"$adtval_148" = bitcast i8* %"$adtval_148_salloc" to %CName_Cons_Int64*
  %"$adtgep_149" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_148", i32 0, i32 0
  store i8 0, i8* %"$adtgep_149"
  %"$adtgep_150" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_148", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_150"
  %"$adtgep_151" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_148", i32 0, i32 2
  store %TName_List_Int64* %"$an_147", %TName_List_Int64** %"$adtgep_151"
  %"$adtptr_152" = bitcast %CName_Cons_Int64* %"$adtval_148" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_152", %TName_List_Int64** %"$retval_22"
  %"$$retval_22_153" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_22"
  ret %TName_List_Int64* %"$$retval_22_153"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_19"(%"$$fundef_19_env_109"* %0) {
entry:
  %"$retval_20" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_21_env_108"*, %Int64)* @"$fundef_21" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_20"
  %"$$retval_20_143" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_20"
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_20_143"
}

define internal %TName_List_Int32* @"$fundef_17"(%"$$fundef_17_env_110"* %0, %Int32 %1) {
entry:
  %"$retval_18" = alloca %TName_List_Int32*
  %an = alloca %TName_List_Int32*
  %"$adtval_130_load" = load i8*, i8** @_execptr
  %"$adtval_130_salloc" = call i8* @_salloc(i8* %"$adtval_130_load", i64 1)
  %"$adtval_130" = bitcast i8* %"$adtval_130_salloc" to %CName_Nil_Int32*
  %"$adtgep_131" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_130", i32 0, i32 0
  store i8 1, i8* %"$adtgep_131"
  %"$adtptr_132" = bitcast %CName_Nil_Int32* %"$adtval_130" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_132", %TName_List_Int32** %an
  %"$an_133" = load %TName_List_Int32*, %TName_List_Int32** %an
  %"$adtval_134_load" = load i8*, i8** @_execptr
  %"$adtval_134_salloc" = call i8* @_salloc(i8* %"$adtval_134_load", i64 13)
  %"$adtval_134" = bitcast i8* %"$adtval_134_salloc" to %CName_Cons_Int32*
  %"$adtgep_135" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_134", i32 0, i32 0
  store i8 0, i8* %"$adtgep_135"
  %"$adtgep_136" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_134", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_136"
  %"$adtgep_137" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_134", i32 0, i32 2
  store %TName_List_Int32* %"$an_133", %TName_List_Int32** %"$adtgep_137"
  %"$adtptr_138" = bitcast %CName_Cons_Int32* %"$adtval_134" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_138", %TName_List_Int32** %"$retval_18"
  %"$$retval_18_139" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_18"
  ret %TName_List_Int32* %"$$retval_18_139"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_15"(%"$$fundef_15_env_111"* %0) {
entry:
  %"$retval_16" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_17_env_110"*, %Int32)* @"$fundef_17" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_16"
  %"$$retval_16_129" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_16"
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_16_129"
}

define internal %Int32 @"$fundef_13"(%"$$fundef_13_env_112"* %0, %TName_List_Int64* %1) {
entry:
  %"$retval_14" = alloca %Int32
  store %Int32 zeroinitializer, %Int32* %"$retval_14"
  %"$$retval_14_125" = load %Int32, %Int32* %"$retval_14"
  ret %Int32 %"$$retval_14_125"
}

define internal { %Int32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_11"(%"$$fundef_11_env_113"* %0) {
entry:
  %"$retval_12" = alloca { %Int32 (i8*, %TName_List_Int64*)*, i8* }
  store { %Int32 (i8*, %TName_List_Int64*)*, i8* } { %Int32 (i8*, %TName_List_Int64*)* bitcast (%Int32 (%"$$fundef_13_env_112"*, %TName_List_Int64*)* @"$fundef_13" to %Int32 (i8*, %TName_List_Int64*)*), i8* null }, { %Int32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_12"
  %"$$retval_12_124" = load { %Int32 (i8*, %TName_List_Int64*)*, i8* }, { %Int32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_12"
  ret { %Int32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_12_124"
}

define internal %Int32 @"$fundef_9"(%"$$fundef_9_env_114"* %0, %TName_List_Int32* %1) {
entry:
  %"$retval_10" = alloca %Int32
  store %Int32 zeroinitializer, %Int32* %"$retval_10"
  %"$$retval_10_120" = load %Int32, %Int32* %"$retval_10"
  ret %Int32 %"$$retval_10_120"
}

define internal { %Int32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_7"(%"$$fundef_7_env_115"* %0) {
entry:
  %"$retval_8" = alloca { %Int32 (i8*, %TName_List_Int32*)*, i8* }
  store { %Int32 (i8*, %TName_List_Int32*)*, i8* } { %Int32 (i8*, %TName_List_Int32*)* bitcast (%Int32 (%"$$fundef_9_env_114"*, %TName_List_Int32*)* @"$fundef_9" to %Int32 (i8*, %TName_List_Int32*)*), i8* null }, { %Int32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_8"
  %"$$retval_8_119" = load { %Int32 (i8*, %TName_List_Int32*)*, i8* }, { %Int32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_8"
  ret { %Int32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_8_119"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @"$scilla_expr_216"(i8* %0) {
entry:
  %"$expr_6" = alloca %Int32
  %list_length_dummy = alloca { i8*, i8* }*
  store { { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Int32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_7_env_115"*)* @"$fundef_7" to { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* null }, { { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* bitcast ([2 x { i8*, i8* }]* @"$dyndisp_223" to { { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*)
  store { { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Int32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_11_env_113"*)* @"$fundef_11" to { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* null }, { { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_223", i32 0, i32 1) to { { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_223", i32 0, i32 0), { i8*, i8* }** %list_length_dummy
  %t1 = alloca { i8*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_15_env_111"*)* @"$fundef_15" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* bitcast ([2 x { i8*, i8* }]* @"$dyndisp_230" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*)
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_19_env_109"*)* @"$fundef_19" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_230", i32 0, i32 1) to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_230", i32 0, i32 0), { i8*, i8* }** %t1
  %t2 = alloca { i8*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_23_env_107"*)* @"$fundef_23" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* bitcast ([2 x { i8*, i8* }]* @"$dyndisp_237" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*)
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_27_env_105"*)* @"$fundef_27" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_237", i32 0, i32 1) to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_237", i32 0, i32 0), { i8*, i8* }** %t2
  %t = alloca { i8*, i8* }*
  store { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_31_env_103"*)* @"$fundef_31" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* bitcast ([2 x { i8*, i8* }]* @"$dyndisp_244" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*)
  store { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_35_env_101"*)* @"$fundef_35" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_244", i32 0, i32 1) to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_244", i32 0, i32 0), { i8*, i8* }** %t
  %some_bool = alloca %Bool*
  %"$adtval_245_load" = load i8*, i8** @_execptr
  %"$adtval_245_salloc" = call i8* @_salloc(i8* %"$adtval_245_load", i64 1)
  %"$adtval_245" = bitcast i8* %"$adtval_245_salloc" to %False*
  %"$adtgep_246" = getelementptr inbounds %False, %False* %"$adtval_245", i32 0, i32 0
  store i8 1, i8* %"$adtgep_246"
  %"$adtptr_247" = bitcast %False* %"$adtval_245" to %Bool*
  store %Bool* %"$adtptr_247", %Bool** %some_bool
  %"$some_bool_249" = load %Bool*, %Bool** %some_bool
  %"$some_bool_tag_250" = getelementptr inbounds %Bool, %Bool* %"$some_bool_249", i32 0, i32 0
  %"$some_bool_tag_251" = load i8, i8* %"$some_bool_tag_250"
  switch i8 %"$some_bool_tag_251", label %"$empty_default_252" [
    i8 0, label %"$True_253"
    i8 1, label %"$False_287"
  ]

"$True_253":                                      ; preds = %entry
  %"$some_bool_254" = bitcast %Bool* %"$some_bool_249" to %True*
  %f11 = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$t_255" = load { i8*, i8* }*, { i8*, i8* }** %t
  %"$t_256" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_255", i32 0
  %"$t_257" = bitcast { i8*, i8* }* %"$t_256" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_258" = load { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_257"
  %"$t_fptr_259" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_258", 0
  %"$t_envptr_260" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_258", 1
  %"$t_call_261" = call { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_259"(i8* %"$t_envptr_260")
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_261", { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$f11_0" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  %"$f11_262" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11
  %"$f11_fptr_263" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_262", 0
  %"$f11_envptr_264" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_262", 1
  %"$t1_265" = load { i8*, i8* }*, { i8*, i8* }** %t1
  %"$f11_call_266" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_fptr_263"(i8* %"$f11_envptr_264", { i8*, i8* }* %"$t1_265")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_call_266", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_0"
  %"$$f11_0_267" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_0"
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$f11_0_267", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1
  %len = alloca { %Int32 (i8*, %TName_List_Int32*)*, i8* }
  %"$list_length_dummy_268" = load { i8*, i8* }*, { i8*, i8* }** %list_length_dummy
  %"$list_length_dummy_269" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_dummy_268", i32 0
  %"$list_length_dummy_270" = bitcast { i8*, i8* }* %"$list_length_dummy_269" to { { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$list_length_dummy_271" = load { { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$list_length_dummy_270"
  %"$list_length_dummy_fptr_272" = extractvalue { { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$list_length_dummy_271", 0
  %"$list_length_dummy_envptr_273" = extractvalue { { %Int32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$list_length_dummy_271", 1
  %"$list_length_dummy_call_274" = call { %Int32 (i8*, %TName_List_Int32*)*, i8* } %"$list_length_dummy_fptr_272"(i8* %"$list_length_dummy_envptr_273")
  store { %Int32 (i8*, %TName_List_Int32*)*, i8* } %"$list_length_dummy_call_274", { %Int32 (i8*, %TName_List_Int32*)*, i8* }* %len
  %one = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %one
  %f1l = alloca %TName_List_Int32*
  %"$f1_1" = alloca %TName_List_Int32*
  %"$f1_275" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1
  %"$f1_fptr_276" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_275", 0
  %"$f1_envptr_277" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_275", 1
  %"$one_278" = load %Int32, %Int32* %one
  %"$f1_call_279" = call %TName_List_Int32* %"$f1_fptr_276"(i8* %"$f1_envptr_277", %Int32 %"$one_278")
  store %TName_List_Int32* %"$f1_call_279", %TName_List_Int32** %"$f1_1"
  %"$$f1_1_280" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_1"
  store %TName_List_Int32* %"$$f1_1_280", %TName_List_Int32** %f1l
  %"$len_2" = alloca %Int32
  %"$len_281" = load { %Int32 (i8*, %TName_List_Int32*)*, i8* }, { %Int32 (i8*, %TName_List_Int32*)*, i8* }* %len
  %"$len_fptr_282" = extractvalue { %Int32 (i8*, %TName_List_Int32*)*, i8* } %"$len_281", 0
  %"$len_envptr_283" = extractvalue { %Int32 (i8*, %TName_List_Int32*)*, i8* } %"$len_281", 1
  %"$f1l_284" = load %TName_List_Int32*, %TName_List_Int32** %f1l
  %"$len_call_285" = call %Int32 %"$len_fptr_282"(i8* %"$len_envptr_283", %TName_List_Int32* %"$f1l_284")
  store %Int32 %"$len_call_285", %Int32* %"$len_2"
  %"$$len_2_286" = load %Int32, %Int32* %"$len_2"
  store %Int32 %"$$len_2_286", %Int32* %"$expr_6"
  br label %"$matchsucc_248"

"$False_287":                                     ; preds = %entry
  %"$some_bool_288" = bitcast %Bool* %"$some_bool_249" to %False*
  %f22 = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$t_289" = load { i8*, i8* }*, { i8*, i8* }** %t
  %"$t_290" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_289", i32 1
  %"$t_291" = bitcast { i8*, i8* }* %"$t_290" to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_292" = load { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_291"
  %"$t_fptr_293" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_292", 0
  %"$t_envptr_294" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_292", 1
  %"$t_call_295" = call { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_293"(i8* %"$t_envptr_294")
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_295", { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$f22_3" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }
  %"$f22_296" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22
  %"$f22_fptr_297" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_296", 0
  %"$f22_envptr_298" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_296", 1
  %"$t2_299" = load { i8*, i8* }*, { i8*, i8* }** %t2
  %"$f22_call_300" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_fptr_297"(i8* %"$f22_envptr_298", { i8*, i8* }* %"$t2_299")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_call_300", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_3"
  %"$$f22_3_301" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_3"
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$f22_3_301", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2
  %len1 = alloca { %Int32 (i8*, %TName_List_Int64*)*, i8* }
  %"$list_length_dummy_302" = load { i8*, i8* }*, { i8*, i8* }** %list_length_dummy
  %"$list_length_dummy_303" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_dummy_302", i32 1
  %"$list_length_dummy_304" = bitcast { i8*, i8* }* %"$list_length_dummy_303" to { { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$list_length_dummy_305" = load { { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$list_length_dummy_304"
  %"$list_length_dummy_fptr_306" = extractvalue { { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$list_length_dummy_305", 0
  %"$list_length_dummy_envptr_307" = extractvalue { { %Int32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$list_length_dummy_305", 1
  %"$list_length_dummy_call_308" = call { %Int32 (i8*, %TName_List_Int64*)*, i8* } %"$list_length_dummy_fptr_306"(i8* %"$list_length_dummy_envptr_307")
  store { %Int32 (i8*, %TName_List_Int64*)*, i8* } %"$list_length_dummy_call_308", { %Int32 (i8*, %TName_List_Int64*)*, i8* }* %len1
  %one2 = alloca %Int64
  store %Int64 { i64 1 }, %Int64* %one2
  %f2l = alloca %TName_List_Int64*
  %"$f2_4" = alloca %TName_List_Int64*
  %"$f2_309" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2
  %"$f2_fptr_310" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_309", 0
  %"$f2_envptr_311" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_309", 1
  %"$one_312" = load %Int64, %Int64* %one2
  %"$f2_call_313" = call %TName_List_Int64* %"$f2_fptr_310"(i8* %"$f2_envptr_311", %Int64 %"$one_312")
  store %TName_List_Int64* %"$f2_call_313", %TName_List_Int64** %"$f2_4"
  %"$$f2_4_314" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_4"
  store %TName_List_Int64* %"$$f2_4_314", %TName_List_Int64** %f2l
  %"$len_5" = alloca %Int32
  %"$len_315" = load { %Int32 (i8*, %TName_List_Int64*)*, i8* }, { %Int32 (i8*, %TName_List_Int64*)*, i8* }* %len1
  %"$len_fptr_316" = extractvalue { %Int32 (i8*, %TName_List_Int64*)*, i8* } %"$len_315", 0
  %"$len_envptr_317" = extractvalue { %Int32 (i8*, %TName_List_Int64*)*, i8* } %"$len_315", 1
  %"$f2l_318" = load %TName_List_Int64*, %TName_List_Int64** %f2l
  %"$len_call_319" = call %Int32 %"$len_fptr_316"(i8* %"$len_envptr_317", %TName_List_Int64* %"$f2l_318")
  store %Int32 %"$len_call_319", %Int32* %"$len_5"
  %"$$len_5_320" = load %Int32, %Int32* %"$len_5"
  store %Int32 %"$$len_5_320", %Int32* %"$expr_6"
  br label %"$matchsucc_248"

"$empty_default_252":                             ; preds = %entry
  br label %"$matchsucc_248"

"$matchsucc_248":                                 ; preds = %"$False_287", %"$True_253", %"$empty_default_252"
  %"$$expr_6_321" = load %Int32, %Int32* %"$expr_6"
  ret %Int32 %"$$expr_6_321"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_322" = call %Int32 @"$scilla_expr_216"(i8* null)
  %"$pval_323" = alloca %Int32
  %"$memvoidcast_324" = bitcast %Int32* %"$pval_323" to i8*
  store %Int32 %"$exprval_322", %Int32* %"$pval_323"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_41", i8* %"$memvoidcast_324")
  ret void
}
