; let list_length2 =
; tfun 'A =>
; fun (l : List 'A) =>
; let ll = @list_length 'A in
; let n = ll l in
; let two = Uint32 2 in
; builtin add n two
; in
; 
; let t =
; fun (b : Bool) =>
; fun (f : forall 'A. List 'A -> Uint32) =>
; fun (g : forall 'A. List 'A -> Uint32) =>
; match b with
; | True => g
; | False => f
; end
; in
; 
; let true = True in
; 
; let f = t true list_length list_length2 in
; 
; let f_string = @f String in
; let f_bystr20 = @f ByStr20 in
; let nil_string = Nil {String} in
; let nil_bystr20 = Nil {ByStr20} in
; 
; let a = f_string nil_string in
; let b = f_bystr20 nil_bystr20 in
; builtin add a b
; 
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_59" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_83" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_82"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_82" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_84"**, %"$TyDescrTy_ADTTyp_83"* }
%"$TyDescrTy_ADTTyp_Constr_84" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$$fundef_57_env_122" = type { %Bool*, { i8*, i8* }* }
%Bool = type { i8, %True*, %False* }
%True = type <{ i8 }>
%False = type <{ i8 }>
%"$$fundef_55_env_123" = type { %Bool* }
%"$$fundef_53_env_124" = type {}
%Uint32 = type { i32 }
%"$$fundef_51_env_125" = type { { i8*, i8* }* }
%TName_List_ByStr20 = type { i8, %CName_Cons_ByStr20*, %CName_Nil_ByStr20* }
%CName_Cons_ByStr20 = type <{ i8, [20 x i8], %TName_List_ByStr20* }>
%CName_Nil_ByStr20 = type <{ i8 }>
%"$$fundef_49_env_126" = type { { i8*, i8* }* }
%"$$fundef_47_env_127" = type { { i8*, i8* }* }
%TName_List_String = type { i8, %CName_Cons_String*, %CName_Nil_String* }
%CName_Cons_String = type <{ i8, %String, %TName_List_String* }>
%String = type { i8*, i32 }
%CName_Nil_String = type <{ i8 }>
%"$$fundef_45_env_128" = type { { i8*, i8* }* }
%"$$fundef_42_env_129" = type { %Uint32, %Uint32 }
%"$$fundef_40_env_130" = type { %Uint32 }
%"$$fundef_38_env_131" = type { { i8*, i8* }* }
%"$$fundef_36_env_132" = type { %Uint32, %Uint32 }
%"$$fundef_34_env_133" = type { %Uint32 }
%"$$fundef_32_env_134" = type { { i8*, i8* }* }
%"$$fundef_30_env_135" = type { { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_28_env_136" = type { { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_26_env_137" = type {}
%"$$fundef_24_env_138" = type {}
%"$$fundef_22_env_139" = type {}
%"$$fundef_20_env_140" = type { { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_18_env_141" = type { { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_16_env_142" = type {}
%"$$fundef_14_env_143" = type {}
%"$$fundef_12_env_144" = type {}

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_60" = global %"$TyDescrTy_PrimTyp_59" zeroinitializer
@"$TyDescr_Int32_61" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Int32_Prim_60" to i8*) }
@"$TyDescr_Uint32_Prim_62" = global %"$TyDescrTy_PrimTyp_59" { i32 1, i32 0 }
@"$TyDescr_Uint32_63" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Uint32_Prim_62" to i8*) }
@"$TyDescr_Int64_Prim_64" = global %"$TyDescrTy_PrimTyp_59" { i32 0, i32 1 }
@"$TyDescr_Int64_65" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Int64_Prim_64" to i8*) }
@"$TyDescr_Uint64_Prim_66" = global %"$TyDescrTy_PrimTyp_59" { i32 1, i32 1 }
@"$TyDescr_Uint64_67" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Uint64_Prim_66" to i8*) }
@"$TyDescr_Int128_Prim_68" = global %"$TyDescrTy_PrimTyp_59" { i32 0, i32 2 }
@"$TyDescr_Int128_69" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Int128_Prim_68" to i8*) }
@"$TyDescr_Uint128_Prim_70" = global %"$TyDescrTy_PrimTyp_59" { i32 1, i32 2 }
@"$TyDescr_Uint128_71" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Uint128_Prim_70" to i8*) }
@"$TyDescr_Int256_Prim_72" = global %"$TyDescrTy_PrimTyp_59" { i32 0, i32 3 }
@"$TyDescr_Int256_73" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Int256_Prim_72" to i8*) }
@"$TyDescr_Uint256_Prim_74" = global %"$TyDescrTy_PrimTyp_59" { i32 1, i32 3 }
@"$TyDescr_Uint256_75" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Uint256_Prim_74" to i8*) }
@"$TyDescr_String_Prim_76" = global %"$TyDescrTy_PrimTyp_59" { i32 2, i32 0 }
@"$TyDescr_String_77" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_String_Prim_76" to i8*) }
@"$TyDescr_Bystr_Prim_78" = global %"$TyDescrTy_PrimTyp_59" { i32 7, i32 0 }
@"$TyDescr_Bystr_79" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Bystr_Prim_78" to i8*) }
@"$TyDescr_Bystr20_Prim_80" = global %"$TyDescrTy_PrimTyp_59" { i32 8, i32 20 }
@"$TyDescr_Bystr20_81" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Bystr20_Prim_80" to i8*) }
@"$TyDescr_ADT_Bool_85" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_82"* @"$TyDescr_Bool_ADTTyp_Specl_98" to i8*) }
@"$TyDescr_ADT_List_ByStr20_86" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_82"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_110" to i8*) }
@"$TyDescr_ADT_List_String_87" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_82"* @"$TyDescr_List_String_ADTTyp_Specl_119" to i8*) }
@"$TyDescr_Bool_ADTTyp_89" = unnamed_addr constant %"$TyDescrTy_ADTTyp_83" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_100", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_82"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_82"*], [1 x %"$TyDescrTy_ADTTyp_Specl_82"*]* @"$TyDescr_Bool_ADTTyp_m_specls_99", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_90" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_91" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_92" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_84" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_91", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_90", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_93" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_94" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_95" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_84" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_94", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_93", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_96" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_84"*] [%"$TyDescrTy_ADTTyp_Constr_84"* @"$TyDescr_Bool_True_ADTTyp_Constr_92", %"$TyDescrTy_ADTTyp_Constr_84"* @"$TyDescr_Bool_False_ADTTyp_Constr_95"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_97" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_98" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_82" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_97", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_84"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_84"*], [2 x %"$TyDescrTy_ADTTyp_Constr_84"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_96", i32 0, i32 0), %"$TyDescrTy_ADTTyp_83"* @"$TyDescr_Bool_ADTTyp_89" }
@"$TyDescr_Bool_ADTTyp_m_specls_99" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_82"*] [%"$TyDescrTy_ADTTyp_Specl_82"* @"$TyDescr_Bool_ADTTyp_Specl_98"]
@"$TyDescr_ADT_Bool_100" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_101" = unnamed_addr constant %"$TyDescrTy_ADTTyp_83" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_121", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_82"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_82"*], [2 x %"$TyDescrTy_ADTTyp_Specl_82"*]* @"$TyDescr_List_ADTTyp_m_specls_120", i32 0, i32 0) }
@"$TyDescr_List_Cons_ByStr20_Constr_m_args_102" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_81", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_86"]
@"$TyDescr_ADT_Cons_103" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_104" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_84" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_103", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_Constr_m_args_102", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_Constr_m_args_105" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_106" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_107" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_84" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_106", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_Constr_m_args_105", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_108" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_84"*] [%"$TyDescrTy_ADTTyp_Constr_84"* @"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_104", %"$TyDescrTy_ADTTyp_Constr_84"* @"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_107"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_109" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_81"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_110" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_82" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_109", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_84"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_84"*], [2 x %"$TyDescrTy_ADTTyp_Constr_84"*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_108", i32 0, i32 0), %"$TyDescrTy_ADTTyp_83"* @"$TyDescr_List_ADTTyp_101" }
@"$TyDescr_List_Cons_String_Constr_m_args_111" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_77", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_87"]
@"$TyDescr_ADT_Cons_112" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_String_ADTTyp_Constr_113" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_84" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_112", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_String_Constr_m_args_111", i32 0, i32 0) }
@"$TyDescr_List_Nil_String_Constr_m_args_114" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_115" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_String_ADTTyp_Constr_116" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_84" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_115", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_String_Constr_m_args_114", i32 0, i32 0) }
@"$TyDescr_List_String_ADTTyp_Specl_m_constrs_117" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_84"*] [%"$TyDescrTy_ADTTyp_Constr_84"* @"$TyDescr_List_Cons_String_ADTTyp_Constr_113", %"$TyDescrTy_ADTTyp_Constr_84"* @"$TyDescr_List_Nil_String_ADTTyp_Constr_116"]
@"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_118" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_77"]
@"$TyDescr_List_String_ADTTyp_Specl_119" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_82" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_118", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_84"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_84"*], [2 x %"$TyDescrTy_ADTTyp_Constr_84"*]* @"$TyDescr_List_String_ADTTyp_Specl_m_constrs_117", i32 0, i32 0), %"$TyDescrTy_ADTTyp_83"* @"$TyDescr_List_ADTTyp_101" }
@"$TyDescr_List_ADTTyp_m_specls_120" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_82"*] [%"$TyDescrTy_ADTTyp_Specl_82"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_110", %"$TyDescrTy_ADTTyp_Specl_82"* @"$TyDescr_List_String_ADTTyp_Specl_119"]
@"$TyDescr_ADT_List_121" = unnamed_addr constant [4 x i8] c"List"
@list_foldl = global { i8*, i8* }* null
@list_length = global { i8*, i8* }* null

define internal { i8*, i8* }* @"$fundef_57"(%"$$fundef_57_env_122"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_57_env_b_470" = getelementptr inbounds %"$$fundef_57_env_122", %"$$fundef_57_env_122"* %0, i32 0, i32 0
  %"$b_envload_471" = load %Bool*, %Bool** %"$$fundef_57_env_b_470"
  %b = alloca %Bool*
  store %Bool* %"$b_envload_471", %Bool** %b
  %"$$fundef_57_env_f_472" = getelementptr inbounds %"$$fundef_57_env_122", %"$$fundef_57_env_122"* %0, i32 0, i32 1
  %"$f_envload_473" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_57_env_f_472"
  %f = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$f_envload_473", { i8*, i8* }** %f
  %"$retval_58" = alloca { i8*, i8* }*
  %"$b_475" = load %Bool*, %Bool** %b
  %"$b_tag_476" = getelementptr inbounds %Bool, %Bool* %"$b_475", i32 0, i32 0
  %"$b_tag_477" = load i8, i8* %"$b_tag_476"
  switch i8 %"$b_tag_477", label %"$empty_default_478" [
    i8 0, label %"$True_479"
    i8 1, label %"$False_481"
  ]

"$True_479":                                      ; preds = %entry
  %"$b_480" = bitcast %Bool* %"$b_475" to %True*
  store { i8*, i8* }* %1, { i8*, i8* }** %"$retval_58"
  br label %"$matchsucc_474"

"$False_481":                                     ; preds = %entry
  %"$b_482" = bitcast %Bool* %"$b_475" to %False*
  %"$f_483" = load { i8*, i8* }*, { i8*, i8* }** %f
  store { i8*, i8* }* %"$f_483", { i8*, i8* }** %"$retval_58"
  br label %"$matchsucc_474"

"$empty_default_478":                             ; preds = %entry
  br label %"$matchsucc_474"

"$matchsucc_474":                                 ; preds = %"$False_481", %"$True_479", %"$empty_default_478"
  %"$$retval_58_484" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_58"
  ret { i8*, i8* }* %"$$retval_58_484"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_55"(%"$$fundef_55_env_123"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_55_env_b_460" = getelementptr inbounds %"$$fundef_55_env_123", %"$$fundef_55_env_123"* %0, i32 0, i32 0
  %"$b_envload_461" = load %Bool*, %Bool** %"$$fundef_55_env_b_460"
  %b = alloca %Bool*
  store %Bool* %"$b_envload_461", %Bool** %b
  %"$retval_56" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_57_envp_462_load" = load i8*, i8** @_execptr
  %"$$fundef_57_envp_462_salloc" = call i8* @_salloc(i8* %"$$fundef_57_envp_462_load", i64 16)
  %"$$fundef_57_envp_462" = bitcast i8* %"$$fundef_57_envp_462_salloc" to %"$$fundef_57_env_122"*
  %"$$fundef_57_env_voidp_464" = bitcast %"$$fundef_57_env_122"* %"$$fundef_57_envp_462" to i8*
  %"$$fundef_57_cloval_465" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_57_env_122"*, { i8*, i8* }*)* @"$fundef_57" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_57_env_voidp_464", 1
  %"$$fundef_57_env_b_466" = getelementptr inbounds %"$$fundef_57_env_122", %"$$fundef_57_env_122"* %"$$fundef_57_envp_462", i32 0, i32 0
  %"$b_467" = load %Bool*, %Bool** %b
  store %Bool* %"$b_467", %Bool** %"$$fundef_57_env_b_466"
  %"$$fundef_57_env_f_468" = getelementptr inbounds %"$$fundef_57_env_122", %"$$fundef_57_env_122"* %"$$fundef_57_envp_462", i32 0, i32 1
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_57_env_f_468"
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_57_cloval_465", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_56"
  %"$$retval_56_469" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_56"
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_56_469"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_53"(%"$$fundef_53_env_124"* %0, %Bool* %1) {
entry:
  %"$retval_54" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_55_envp_454_load" = load i8*, i8** @_execptr
  %"$$fundef_55_envp_454_salloc" = call i8* @_salloc(i8* %"$$fundef_55_envp_454_load", i64 8)
  %"$$fundef_55_envp_454" = bitcast i8* %"$$fundef_55_envp_454_salloc" to %"$$fundef_55_env_123"*
  %"$$fundef_55_env_voidp_456" = bitcast %"$$fundef_55_env_123"* %"$$fundef_55_envp_454" to i8*
  %"$$fundef_55_cloval_457" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_55_env_123"*, { i8*, i8* }*)* @"$fundef_55" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_55_env_voidp_456", 1
  %"$$fundef_55_env_b_458" = getelementptr inbounds %"$$fundef_55_env_123", %"$$fundef_55_env_123"* %"$$fundef_55_envp_454", i32 0, i32 0
  store %Bool* %1, %Bool** %"$$fundef_55_env_b_458"
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_55_cloval_457", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_54"
  %"$$retval_54_459" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_54"
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_54_459"
}

define internal %Uint32 @"$fundef_51"(%"$$fundef_51_env_125"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_51_env_list_length_436" = getelementptr inbounds %"$$fundef_51_env_125", %"$$fundef_51_env_125"* %0, i32 0, i32 0
  %"$list_length_envload_437" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_51_env_list_length_436"
  %list_length = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_length_envload_437", { i8*, i8* }** %list_length
  %"$retval_52" = alloca %Uint32
  %ll = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }
  %"$list_length_438" = load { i8*, i8* }*, { i8*, i8* }** %list_length
  %"$list_length_439" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_438", i32 2
  %"$list_length_440" = bitcast { i8*, i8* }* %"$list_length_439" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*
  %"$list_length_441" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* %"$list_length_440"
  %"$list_length_fptr_442" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$list_length_441", 0
  %"$list_length_envptr_443" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$list_length_441", 1
  %"$list_length_call_444" = call { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$list_length_fptr_442"(i8* %"$list_length_envptr_443")
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$list_length_call_444", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %ll
  %n = alloca %Uint32
  %"$ll_6" = alloca %Uint32
  %"$ll_445" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %ll
  %"$ll_fptr_446" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$ll_445", 0
  %"$ll_envptr_447" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$ll_445", 1
  %"$ll_call_448" = call %Uint32 %"$ll_fptr_446"(i8* %"$ll_envptr_447", %TName_List_ByStr20* %1)
  store %Uint32 %"$ll_call_448", %Uint32* %"$ll_6"
  %"$$ll_6_449" = load %Uint32, %Uint32* %"$ll_6"
  store %Uint32 %"$$ll_6_449", %Uint32* %n
  %two = alloca %Uint32
  store %Uint32 { i32 2 }, %Uint32* %two
  %"$n_450" = load %Uint32, %Uint32* %n
  %"$two_451" = load %Uint32, %Uint32* %two
  %"$add_call_452" = call %Uint32 @_add_Uint32(%Uint32 %"$n_450", %Uint32 %"$two_451")
  store %Uint32 %"$add_call_452", %Uint32* %"$retval_52"
  %"$$retval_52_453" = load %Uint32, %Uint32* %"$retval_52"
  ret %Uint32 %"$$retval_52_453"
}

define internal { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_49"(%"$$fundef_49_env_126"* %0) {
entry:
  %"$$fundef_49_env_list_length_427" = getelementptr inbounds %"$$fundef_49_env_126", %"$$fundef_49_env_126"* %0, i32 0, i32 0
  %"$list_length_envload_428" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_49_env_list_length_427"
  %list_length = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_length_envload_428", { i8*, i8* }** %list_length
  %"$retval_50" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }
  %"$$fundef_51_envp_429_load" = load i8*, i8** @_execptr
  %"$$fundef_51_envp_429_salloc" = call i8* @_salloc(i8* %"$$fundef_51_envp_429_load", i64 8)
  %"$$fundef_51_envp_429" = bitcast i8* %"$$fundef_51_envp_429_salloc" to %"$$fundef_51_env_125"*
  %"$$fundef_51_env_voidp_431" = bitcast %"$$fundef_51_env_125"* %"$$fundef_51_envp_429" to i8*
  %"$$fundef_51_cloval_432" = insertvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } { %Uint32 (i8*, %TName_List_ByStr20*)* bitcast (%Uint32 (%"$$fundef_51_env_125"*, %TName_List_ByStr20*)* @"$fundef_51" to %Uint32 (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_51_env_voidp_431", 1
  %"$$fundef_51_env_list_length_433" = getelementptr inbounds %"$$fundef_51_env_125", %"$$fundef_51_env_125"* %"$$fundef_51_envp_429", i32 0, i32 0
  %"$list_length_434" = load { i8*, i8* }*, { i8*, i8* }** %list_length
  store { i8*, i8* }* %"$list_length_434", { i8*, i8* }** %"$$fundef_51_env_list_length_433"
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_51_cloval_432", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_50"
  %"$$retval_50_435" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_50"
  ret { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_50_435"
}

define internal %Uint32 @"$fundef_47"(%"$$fundef_47_env_127"* %0, %TName_List_String* %1) {
entry:
  %"$$fundef_47_env_list_length_409" = getelementptr inbounds %"$$fundef_47_env_127", %"$$fundef_47_env_127"* %0, i32 0, i32 0
  %"$list_length_envload_410" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_47_env_list_length_409"
  %list_length = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_length_envload_410", { i8*, i8* }** %list_length
  %"$retval_48" = alloca %Uint32
  %ll = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }
  %"$list_length_411" = load { i8*, i8* }*, { i8*, i8* }** %list_length
  %"$list_length_412" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_411", i32 0
  %"$list_length_413" = bitcast { i8*, i8* }* %"$list_length_412" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*
  %"$list_length_414" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* %"$list_length_413"
  %"$list_length_fptr_415" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$list_length_414", 0
  %"$list_length_envptr_416" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$list_length_414", 1
  %"$list_length_call_417" = call { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$list_length_fptr_415"(i8* %"$list_length_envptr_416")
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$list_length_call_417", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %ll
  %n = alloca %Uint32
  %"$ll_6" = alloca %Uint32
  %"$ll_418" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %ll
  %"$ll_fptr_419" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$ll_418", 0
  %"$ll_envptr_420" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$ll_418", 1
  %"$ll_call_421" = call %Uint32 %"$ll_fptr_419"(i8* %"$ll_envptr_420", %TName_List_String* %1)
  store %Uint32 %"$ll_call_421", %Uint32* %"$ll_6"
  %"$$ll_6_422" = load %Uint32, %Uint32* %"$ll_6"
  store %Uint32 %"$$ll_6_422", %Uint32* %n
  %two = alloca %Uint32
  store %Uint32 { i32 2 }, %Uint32* %two
  %"$n_423" = load %Uint32, %Uint32* %n
  %"$two_424" = load %Uint32, %Uint32* %two
  %"$add_call_425" = call %Uint32 @_add_Uint32(%Uint32 %"$n_423", %Uint32 %"$two_424")
  store %Uint32 %"$add_call_425", %Uint32* %"$retval_48"
  %"$$retval_48_426" = load %Uint32, %Uint32* %"$retval_48"
  ret %Uint32 %"$$retval_48_426"
}

define internal { %Uint32 (i8*, %TName_List_String*)*, i8* } @"$fundef_45"(%"$$fundef_45_env_128"* %0) {
entry:
  %"$$fundef_45_env_list_length_400" = getelementptr inbounds %"$$fundef_45_env_128", %"$$fundef_45_env_128"* %0, i32 0, i32 0
  %"$list_length_envload_401" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_45_env_list_length_400"
  %list_length = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_length_envload_401", { i8*, i8* }** %list_length
  %"$retval_46" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }
  %"$$fundef_47_envp_402_load" = load i8*, i8** @_execptr
  %"$$fundef_47_envp_402_salloc" = call i8* @_salloc(i8* %"$$fundef_47_envp_402_load", i64 8)
  %"$$fundef_47_envp_402" = bitcast i8* %"$$fundef_47_envp_402_salloc" to %"$$fundef_47_env_127"*
  %"$$fundef_47_env_voidp_404" = bitcast %"$$fundef_47_env_127"* %"$$fundef_47_envp_402" to i8*
  %"$$fundef_47_cloval_405" = insertvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } { %Uint32 (i8*, %TName_List_String*)* bitcast (%Uint32 (%"$$fundef_47_env_127"*, %TName_List_String*)* @"$fundef_47" to %Uint32 (i8*, %TName_List_String*)*), i8* undef }, i8* %"$$fundef_47_env_voidp_404", 1
  %"$$fundef_47_env_list_length_406" = getelementptr inbounds %"$$fundef_47_env_127", %"$$fundef_47_env_127"* %"$$fundef_47_envp_402", i32 0, i32 0
  %"$list_length_407" = load { i8*, i8* }*, { i8*, i8* }** %list_length
  store { i8*, i8* }* %"$list_length_407", { i8*, i8* }** %"$$fundef_47_env_list_length_406"
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$fundef_47_cloval_405", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_46"
  %"$$retval_46_408" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_46"
  ret { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$retval_46_408"
}

define internal %Uint32 @"$fundef_42"(%"$$fundef_42_env_129"* %0, [20 x i8]* %1) {
entry:
  %h = load [20 x i8], [20 x i8]* %1
  %"$$fundef_42_env_one_392" = getelementptr inbounds %"$$fundef_42_env_129", %"$$fundef_42_env_129"* %0, i32 0, i32 0
  %"$one_envload_393" = load %Uint32, %Uint32* %"$$fundef_42_env_one_392"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_393", %Uint32* %one
  %"$$fundef_42_env_z_394" = getelementptr inbounds %"$$fundef_42_env_129", %"$$fundef_42_env_129"* %0, i32 0, i32 1
  %"$z_envload_395" = load %Uint32, %Uint32* %"$$fundef_42_env_z_394"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_395", %Uint32* %z
  %"$retval_43" = alloca %Uint32
  %"$one_396" = load %Uint32, %Uint32* %one
  %"$z_397" = load %Uint32, %Uint32* %z
  %"$add_call_398" = call %Uint32 @_add_Uint32(%Uint32 %"$one_396", %Uint32 %"$z_397")
  store %Uint32 %"$add_call_398", %Uint32* %"$retval_43"
  %"$$retval_43_399" = load %Uint32, %Uint32* %"$retval_43"
  ret %Uint32 %"$$retval_43_399"
}

define internal { %Uint32 (i8*, [20 x i8]*)*, i8* } @"$fundef_40"(%"$$fundef_40_env_130"* %0, %Uint32 %1) {
entry:
  %"$$fundef_40_env_one_382" = getelementptr inbounds %"$$fundef_40_env_130", %"$$fundef_40_env_130"* %0, i32 0, i32 0
  %"$one_envload_383" = load %Uint32, %Uint32* %"$$fundef_40_env_one_382"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_383", %Uint32* %one
  %"$retval_41" = alloca { %Uint32 (i8*, [20 x i8]*)*, i8* }
  %"$$fundef_42_envp_384_load" = load i8*, i8** @_execptr
  %"$$fundef_42_envp_384_salloc" = call i8* @_salloc(i8* %"$$fundef_42_envp_384_load", i64 8)
  %"$$fundef_42_envp_384" = bitcast i8* %"$$fundef_42_envp_384_salloc" to %"$$fundef_42_env_129"*
  %"$$fundef_42_env_voidp_386" = bitcast %"$$fundef_42_env_129"* %"$$fundef_42_envp_384" to i8*
  %"$$fundef_42_cloval_387" = insertvalue { %Uint32 (i8*, [20 x i8]*)*, i8* } { %Uint32 (i8*, [20 x i8]*)* bitcast (%Uint32 (%"$$fundef_42_env_129"*, [20 x i8]*)* @"$fundef_42" to %Uint32 (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_42_env_voidp_386", 1
  %"$$fundef_42_env_one_388" = getelementptr inbounds %"$$fundef_42_env_129", %"$$fundef_42_env_129"* %"$$fundef_42_envp_384", i32 0, i32 0
  %"$one_389" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_389", %Uint32* %"$$fundef_42_env_one_388"
  %"$$fundef_42_env_z_390" = getelementptr inbounds %"$$fundef_42_env_129", %"$$fundef_42_env_129"* %"$$fundef_42_envp_384", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_42_env_z_390"
  store { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$$fundef_42_cloval_387", { %Uint32 (i8*, [20 x i8]*)*, i8* }* %"$retval_41"
  %"$$retval_41_391" = load { %Uint32 (i8*, [20 x i8]*)*, i8* }, { %Uint32 (i8*, [20 x i8]*)*, i8* }* %"$retval_41"
  ret { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$$retval_41_391"
}

define internal { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_131"* %0) {
entry:
  %"$$fundef_38_env_list_foldl_349" = getelementptr inbounds %"$$fundef_38_env_131", %"$$fundef_38_env_131"* %0, i32 0, i32 0
  %"$list_foldl_envload_350" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_38_env_list_foldl_349"
  %list_foldl = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldl_envload_350", { i8*, i8* }** %list_foldl
  %"$retval_39" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$list_foldl_351" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl
  %"$list_foldl_352" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_351", i32 2
  %"$list_foldl_353" = bitcast { i8*, i8* }* %"$list_foldl_352" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_354" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_353"
  %"$list_foldl_fptr_355" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_354", 0
  %"$list_foldl_envptr_356" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_354", 1
  %"$list_foldl_call_357" = call { i8*, i8* }* %"$list_foldl_fptr_355"(i8* %"$list_foldl_envptr_356")
  %"$list_foldl_358" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_357", i32 1
  %"$list_foldl_359" = bitcast { i8*, i8* }* %"$list_foldl_358" to { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_360" = load { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_359"
  %"$list_foldl_fptr_361" = extractvalue { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_360", 0
  %"$list_foldl_envptr_362" = extractvalue { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_360", 1
  %"$list_foldl_call_363" = call { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_361"(i8* %"$list_foldl_envptr_362")
  store { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_363", { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %iter = alloca { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_40_envp_364_load" = load i8*, i8** @_execptr
  %"$$fundef_40_envp_364_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_364_load", i64 4)
  %"$$fundef_40_envp_364" = bitcast i8* %"$$fundef_40_envp_364_salloc" to %"$$fundef_40_env_130"*
  %"$$fundef_40_env_voidp_366" = bitcast %"$$fundef_40_env_130"* %"$$fundef_40_envp_364" to i8*
  %"$$fundef_40_cloval_367" = insertvalue { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, [20 x i8]*)*, i8* } (%"$$fundef_40_env_130"*, %Uint32)* @"$fundef_40" to { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_40_env_voidp_366", 1
  %"$$fundef_40_env_one_368" = getelementptr inbounds %"$$fundef_40_env_130", %"$$fundef_40_env_130"* %"$$fundef_40_envp_364", i32 0, i32 0
  %"$one_369" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_369", %Uint32* %"$$fundef_40_env_one_368"
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_40_cloval_367", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %init = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %init
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$foldl_370" = load { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$foldl_fptr_371" = extractvalue { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_370", 0
  %"$foldl_envptr_372" = extractvalue { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_370", 1
  %"$iter_373" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$foldl_call_374" = call { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_371"(i8* %"$foldl_envptr_372", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_373")
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_374", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }
  %"$$foldl_4_375" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$$foldl_4_fptr_376" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_375", 0
  %"$$foldl_4_envptr_377" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_375", 1
  %"$init_378" = load %Uint32, %Uint32* %init
  %"$$foldl_4_call_379" = call { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldl_4_fptr_376"(i8* %"$$foldl_4_envptr_377", %Uint32 %"$init_378")
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldl_4_call_379", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldl_5"
  %"$$foldl_5_380" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldl_5"
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldl_5_380", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_39"
  %"$$retval_39_381" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_39"
  ret { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_39_381"
}

define internal %Uint32 @"$fundef_36"(%"$$fundef_36_env_132"* %0, %String %1) {
entry:
  %"$$fundef_36_env_one_341" = getelementptr inbounds %"$$fundef_36_env_132", %"$$fundef_36_env_132"* %0, i32 0, i32 0
  %"$one_envload_342" = load %Uint32, %Uint32* %"$$fundef_36_env_one_341"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_342", %Uint32* %one
  %"$$fundef_36_env_z_343" = getelementptr inbounds %"$$fundef_36_env_132", %"$$fundef_36_env_132"* %0, i32 0, i32 1
  %"$z_envload_344" = load %Uint32, %Uint32* %"$$fundef_36_env_z_343"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_344", %Uint32* %z
  %"$retval_37" = alloca %Uint32
  %"$one_345" = load %Uint32, %Uint32* %one
  %"$z_346" = load %Uint32, %Uint32* %z
  %"$add_call_347" = call %Uint32 @_add_Uint32(%Uint32 %"$one_345", %Uint32 %"$z_346")
  store %Uint32 %"$add_call_347", %Uint32* %"$retval_37"
  %"$$retval_37_348" = load %Uint32, %Uint32* %"$retval_37"
  ret %Uint32 %"$$retval_37_348"
}

define internal { %Uint32 (i8*, %String)*, i8* } @"$fundef_34"(%"$$fundef_34_env_133"* %0, %Uint32 %1) {
entry:
  %"$$fundef_34_env_one_331" = getelementptr inbounds %"$$fundef_34_env_133", %"$$fundef_34_env_133"* %0, i32 0, i32 0
  %"$one_envload_332" = load %Uint32, %Uint32* %"$$fundef_34_env_one_331"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_332", %Uint32* %one
  %"$retval_35" = alloca { %Uint32 (i8*, %String)*, i8* }
  %"$$fundef_36_envp_333_load" = load i8*, i8** @_execptr
  %"$$fundef_36_envp_333_salloc" = call i8* @_salloc(i8* %"$$fundef_36_envp_333_load", i64 8)
  %"$$fundef_36_envp_333" = bitcast i8* %"$$fundef_36_envp_333_salloc" to %"$$fundef_36_env_132"*
  %"$$fundef_36_env_voidp_335" = bitcast %"$$fundef_36_env_132"* %"$$fundef_36_envp_333" to i8*
  %"$$fundef_36_cloval_336" = insertvalue { %Uint32 (i8*, %String)*, i8* } { %Uint32 (i8*, %String)* bitcast (%Uint32 (%"$$fundef_36_env_132"*, %String)* @"$fundef_36" to %Uint32 (i8*, %String)*), i8* undef }, i8* %"$$fundef_36_env_voidp_335", 1
  %"$$fundef_36_env_one_337" = getelementptr inbounds %"$$fundef_36_env_132", %"$$fundef_36_env_132"* %"$$fundef_36_envp_333", i32 0, i32 0
  %"$one_338" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_338", %Uint32* %"$$fundef_36_env_one_337"
  %"$$fundef_36_env_z_339" = getelementptr inbounds %"$$fundef_36_env_132", %"$$fundef_36_env_132"* %"$$fundef_36_envp_333", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_36_env_z_339"
  store { %Uint32 (i8*, %String)*, i8* } %"$$fundef_36_cloval_336", { %Uint32 (i8*, %String)*, i8* }* %"$retval_35"
  %"$$retval_35_340" = load { %Uint32 (i8*, %String)*, i8* }, { %Uint32 (i8*, %String)*, i8* }* %"$retval_35"
  ret { %Uint32 (i8*, %String)*, i8* } %"$$retval_35_340"
}

define internal { %Uint32 (i8*, %TName_List_String*)*, i8* } @"$fundef_32"(%"$$fundef_32_env_134"* %0) {
entry:
  %"$$fundef_32_env_list_foldl_298" = getelementptr inbounds %"$$fundef_32_env_134", %"$$fundef_32_env_134"* %0, i32 0, i32 0
  %"$list_foldl_envload_299" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_32_env_list_foldl_298"
  %list_foldl = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldl_envload_299", { i8*, i8* }** %list_foldl
  %"$retval_33" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$list_foldl_300" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl
  %"$list_foldl_301" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_300", i32 0
  %"$list_foldl_302" = bitcast { i8*, i8* }* %"$list_foldl_301" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_303" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_302"
  %"$list_foldl_fptr_304" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_303", 0
  %"$list_foldl_envptr_305" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_303", 1
  %"$list_foldl_call_306" = call { i8*, i8* }* %"$list_foldl_fptr_304"(i8* %"$list_foldl_envptr_305")
  %"$list_foldl_307" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_306", i32 1
  %"$list_foldl_308" = bitcast { i8*, i8* }* %"$list_foldl_307" to { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_309" = load { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_308"
  %"$list_foldl_fptr_310" = extractvalue { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_309", 0
  %"$list_foldl_envptr_311" = extractvalue { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_309", 1
  %"$list_foldl_call_312" = call { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_310"(i8* %"$list_foldl_envptr_311")
  store { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_312", { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %iter = alloca { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_34_envp_313_load" = load i8*, i8** @_execptr
  %"$$fundef_34_envp_313_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_313_load", i64 4)
  %"$$fundef_34_envp_313" = bitcast i8* %"$$fundef_34_envp_313_salloc" to %"$$fundef_34_env_133"*
  %"$$fundef_34_env_voidp_315" = bitcast %"$$fundef_34_env_133"* %"$$fundef_34_envp_313" to i8*
  %"$$fundef_34_cloval_316" = insertvalue { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %String)*, i8* } (%"$$fundef_34_env_133"*, %Uint32)* @"$fundef_34" to { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_34_env_voidp_315", 1
  %"$$fundef_34_env_one_317" = getelementptr inbounds %"$$fundef_34_env_133", %"$$fundef_34_env_133"* %"$$fundef_34_envp_313", i32 0, i32 0
  %"$one_318" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_318", %Uint32* %"$$fundef_34_env_one_317"
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_34_cloval_316", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %init = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %init
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$foldl_319" = load { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$foldl_fptr_320" = extractvalue { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_319", 0
  %"$foldl_envptr_321" = extractvalue { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_319", 1
  %"$iter_322" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$foldl_call_323" = call { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_320"(i8* %"$foldl_envptr_321", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_322")
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_323", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }
  %"$$foldl_4_324" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$$foldl_4_fptr_325" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_324", 0
  %"$$foldl_4_envptr_326" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_324", 1
  %"$init_327" = load %Uint32, %Uint32* %init
  %"$$foldl_4_call_328" = call { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$foldl_4_fptr_325"(i8* %"$$foldl_4_envptr_326", %Uint32 %"$init_327")
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$foldl_4_call_328", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$foldl_5"
  %"$$foldl_5_329" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$foldl_5"
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$foldl_5_329", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_33"
  %"$$retval_33_330" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_33"
  ret { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$retval_33_330"
}

define internal %Uint32 @"$fundef_30"(%"$$fundef_30_env_135"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_30_env_f_255" = getelementptr inbounds %"$$fundef_30_env_135", %"$$fundef_30_env_135"* %0, i32 0, i32 0
  %"$f_envload_256" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_f_255"
  %f = alloca { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_256", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_30_env_g_257" = getelementptr inbounds %"$$fundef_30_env_135", %"$$fundef_30_env_135"* %0, i32 0, i32 1
  %"$g_envload_258" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_g_257"
  %g = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_258", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_30_env_z_259" = getelementptr inbounds %"$$fundef_30_env_135", %"$$fundef_30_env_135"* %0, i32 0, i32 2
  %"$z_envload_260" = load %Uint32, %Uint32* %"$$fundef_30_env_z_259"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_260", %Uint32* %z
  %"$retval_31" = alloca %Uint32
  %"$l_tag_262" = getelementptr inbounds %TName_List_ByStr20, %TName_List_ByStr20* %1, i32 0, i32 0
  %"$l_tag_263" = load i8, i8* %"$l_tag_262"
  switch i8 %"$l_tag_263", label %"$empty_default_264" [
    i8 0, label %"$Cons_265"
    i8 1, label %"$Nil_294"
  ]

"$Cons_265":                                      ; preds = %entry
  %"$l_266" = bitcast %TName_List_ByStr20* %1 to %CName_Cons_ByStr20*
  %"$h_gep_267" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_266", i32 0, i32 1
  %"$h_load_268" = load [20 x i8], [20 x i8]* %"$h_gep_267"
  %h = alloca [20 x i8]
  store [20 x i8] %"$h_load_268", [20 x i8]* %h
  %"$t_gep_269" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_266", i32 0, i32 2
  %"$t_load_270" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$t_gep_269"
  %t = alloca %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$t_load_270", %TName_List_ByStr20** %t
  %res = alloca %Uint32
  %"$f_0" = alloca { %Uint32 (i8*, [20 x i8]*)*, i8* }
  %"$f_271" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_272" = extractvalue { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_271", 0
  %"$f_envptr_273" = extractvalue { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_271", 1
  %"$z_274" = load %Uint32, %Uint32* %z
  %"$f_call_275" = call { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$f_fptr_272"(i8* %"$f_envptr_273", %Uint32 %"$z_274")
  store { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$f_call_275", { %Uint32 (i8*, [20 x i8]*)*, i8* }* %"$f_0"
  %"$f_1" = alloca %Uint32
  %"$$f_0_276" = load { %Uint32 (i8*, [20 x i8]*)*, i8* }, { %Uint32 (i8*, [20 x i8]*)*, i8* }* %"$f_0"
  %"$$f_0_fptr_277" = extractvalue { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$$f_0_276", 0
  %"$$f_0_envptr_278" = extractvalue { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$$f_0_276", 1
  %"$$f_0_h_279" = alloca [20 x i8]
  %"$h_280" = load [20 x i8], [20 x i8]* %h
  store [20 x i8] %"$h_280", [20 x i8]* %"$$f_0_h_279"
  %"$$f_0_call_281" = call %Uint32 %"$$f_0_fptr_277"(i8* %"$$f_0_envptr_278", [20 x i8]* %"$$f_0_h_279")
  store %Uint32 %"$$f_0_call_281", %Uint32* %"$f_1"
  %"$$f_1_282" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_282", %Uint32* %res
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }
  %"$g_283" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_284" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_283", 0
  %"$g_envptr_285" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_283", 1
  %"$res_286" = load %Uint32, %Uint32* %res
  %"$g_call_287" = call { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$g_fptr_284"(i8* %"$g_envptr_285", %Uint32 %"$res_286")
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$g_call_287", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_288" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_289" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_2_288", 0
  %"$$g_2_envptr_290" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_2_288", 1
  %"$t_291" = load %TName_List_ByStr20*, %TName_List_ByStr20** %t
  %"$$g_2_call_292" = call %Uint32 %"$$g_2_fptr_289"(i8* %"$$g_2_envptr_290", %TName_List_ByStr20* %"$t_291")
  store %Uint32 %"$$g_2_call_292", %Uint32* %"$g_3"
  %"$$g_3_293" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_293", %Uint32* %"$retval_31"
  br label %"$matchsucc_261"

"$Nil_294":                                       ; preds = %entry
  %"$l_295" = bitcast %TName_List_ByStr20* %1 to %CName_Nil_ByStr20*
  %"$z_296" = load %Uint32, %Uint32* %z
  store %Uint32 %"$z_296", %Uint32* %"$retval_31"
  br label %"$matchsucc_261"

"$empty_default_264":                             ; preds = %entry
  br label %"$matchsucc_261"

"$matchsucc_261":                                 ; preds = %"$Nil_294", %"$Cons_265", %"$empty_default_264"
  %"$$retval_31_297" = load %Uint32, %Uint32* %"$retval_31"
  ret %Uint32 %"$$retval_31_297"
}

define internal { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_28"(%"$$fundef_28_env_136"* %0, %Uint32 %1) {
entry:
  %"$$fundef_28_env_f_241" = getelementptr inbounds %"$$fundef_28_env_136", %"$$fundef_28_env_136"* %0, i32 0, i32 0
  %"$f_envload_242" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_241"
  %f = alloca { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_242", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_28_env_g_243" = getelementptr inbounds %"$$fundef_28_env_136", %"$$fundef_28_env_136"* %0, i32 0, i32 1
  %"$g_envload_244" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_243"
  %g = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_244", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_29" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }
  %"$$fundef_30_envp_245_load" = load i8*, i8** @_execptr
  %"$$fundef_30_envp_245_salloc" = call i8* @_salloc(i8* %"$$fundef_30_envp_245_load", i64 40)
  %"$$fundef_30_envp_245" = bitcast i8* %"$$fundef_30_envp_245_salloc" to %"$$fundef_30_env_135"*
  %"$$fundef_30_env_voidp_247" = bitcast %"$$fundef_30_env_135"* %"$$fundef_30_envp_245" to i8*
  %"$$fundef_30_cloval_248" = insertvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } { %Uint32 (i8*, %TName_List_ByStr20*)* bitcast (%Uint32 (%"$$fundef_30_env_135"*, %TName_List_ByStr20*)* @"$fundef_30" to %Uint32 (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_30_env_voidp_247", 1
  %"$$fundef_30_env_f_249" = getelementptr inbounds %"$$fundef_30_env_135", %"$$fundef_30_env_135"* %"$$fundef_30_envp_245", i32 0, i32 0
  %"$f_250" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %f
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_250", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_f_249"
  %"$$fundef_30_env_g_251" = getelementptr inbounds %"$$fundef_30_env_135", %"$$fundef_30_env_135"* %"$$fundef_30_envp_245", i32 0, i32 1
  %"$g_252" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_252", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_g_251"
  %"$$fundef_30_env_z_253" = getelementptr inbounds %"$$fundef_30_env_135", %"$$fundef_30_env_135"* %"$$fundef_30_envp_245", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_30_env_z_253"
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_30_cloval_248", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_29"
  %"$$retval_29_254" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_29"
  ret { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_29_254"
}

define internal { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_26"(%"$$fundef_26_env_137"* %0, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_27" = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_28_envp_232_load" = load i8*, i8** @_execptr
  %"$$fundef_28_envp_232_salloc" = call i8* @_salloc(i8* %"$$fundef_28_envp_232_load", i64 32)
  %"$$fundef_28_envp_232" = bitcast i8* %"$$fundef_28_envp_232_salloc" to %"$$fundef_28_env_136"*
  %"$$fundef_28_env_voidp_234" = bitcast %"$$fundef_28_env_136"* %"$$fundef_28_envp_232" to i8*
  %"$$fundef_28_cloval_235" = insertvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_28_env_136"*, %Uint32)* @"$fundef_28" to { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_28_env_voidp_234", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_28_cloval_235", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_28_env_f_236" = getelementptr inbounds %"$$fundef_28_env_136", %"$$fundef_28_env_136"* %"$$fundef_28_envp_232", i32 0, i32 0
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_236"
  %"$$fundef_28_env_g_237" = getelementptr inbounds %"$$fundef_28_env_136", %"$$fundef_28_env_136"* %"$$fundef_28_envp_232", i32 0, i32 1
  %"$g_238" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_238", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_237"
  %"$g_239" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_239", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_27"
  %"$$retval_27_240" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_27"
  ret { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_27_240"
}

define internal { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_24"(%"$$fundef_24_env_138"* %0) {
entry:
  %"$retval_25" = alloca { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_26_env_137"*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_26" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_25"
  %"$$retval_25_231" = load { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_25"
  ret { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_25_231"
}

define internal { i8*, i8* }* @"$fundef_22"(%"$$fundef_22_env_139"* %0) {
entry:
  %"$retval_23" = alloca { i8*, i8* }*
  %"$dyndisp_table_224_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_224_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_224_salloc_load", i64 48)
  %"$dyndisp_table_224_salloc" = bitcast i8* %"$dyndisp_table_224_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_224" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_224_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_225" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_224", i32 1
  %"$dyndisp_pcast_226" = bitcast { i8*, i8* }* %"$dyndisp_gep_225" to { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_24_env_138"*)* @"$fundef_24" to { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_226"
  store { i8*, i8* }* %"$dyndisp_table_224", { i8*, i8* }** %"$retval_23"
  %"$$retval_23_227" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_23"
  ret { i8*, i8* }* %"$$retval_23_227"
}

define internal %Uint32 @"$fundef_20"(%"$$fundef_20_env_140"* %0, %TName_List_String* %1) {
entry:
  %"$$fundef_20_env_f_179" = getelementptr inbounds %"$$fundef_20_env_140", %"$$fundef_20_env_140"* %0, i32 0, i32 0
  %"$f_envload_180" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_f_179"
  %f = alloca { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_180", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_20_env_g_181" = getelementptr inbounds %"$$fundef_20_env_140", %"$$fundef_20_env_140"* %0, i32 0, i32 1
  %"$g_envload_182" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_g_181"
  %g = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_182", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_20_env_z_183" = getelementptr inbounds %"$$fundef_20_env_140", %"$$fundef_20_env_140"* %0, i32 0, i32 2
  %"$z_envload_184" = load %Uint32, %Uint32* %"$$fundef_20_env_z_183"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_184", %Uint32* %z
  %"$retval_21" = alloca %Uint32
  %"$l_tag_186" = getelementptr inbounds %TName_List_String, %TName_List_String* %1, i32 0, i32 0
  %"$l_tag_187" = load i8, i8* %"$l_tag_186"
  switch i8 %"$l_tag_187", label %"$empty_default_188" [
    i8 0, label %"$Cons_189"
    i8 1, label %"$Nil_217"
  ]

"$Cons_189":                                      ; preds = %entry
  %"$l_190" = bitcast %TName_List_String* %1 to %CName_Cons_String*
  %"$h_gep_191" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$l_190", i32 0, i32 1
  %"$h_load_192" = load %String, %String* %"$h_gep_191"
  %h = alloca %String
  store %String %"$h_load_192", %String* %h
  %"$t_gep_193" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$l_190", i32 0, i32 2
  %"$t_load_194" = load %TName_List_String*, %TName_List_String** %"$t_gep_193"
  %t = alloca %TName_List_String*
  store %TName_List_String* %"$t_load_194", %TName_List_String** %t
  %res = alloca %Uint32
  %"$f_0" = alloca { %Uint32 (i8*, %String)*, i8* }
  %"$f_195" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_196" = extractvalue { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_195", 0
  %"$f_envptr_197" = extractvalue { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_195", 1
  %"$z_198" = load %Uint32, %Uint32* %z
  %"$f_call_199" = call { %Uint32 (i8*, %String)*, i8* } %"$f_fptr_196"(i8* %"$f_envptr_197", %Uint32 %"$z_198")
  store { %Uint32 (i8*, %String)*, i8* } %"$f_call_199", { %Uint32 (i8*, %String)*, i8* }* %"$f_0"
  %"$f_1" = alloca %Uint32
  %"$$f_0_200" = load { %Uint32 (i8*, %String)*, i8* }, { %Uint32 (i8*, %String)*, i8* }* %"$f_0"
  %"$$f_0_fptr_201" = extractvalue { %Uint32 (i8*, %String)*, i8* } %"$$f_0_200", 0
  %"$$f_0_envptr_202" = extractvalue { %Uint32 (i8*, %String)*, i8* } %"$$f_0_200", 1
  %"$h_203" = load %String, %String* %h
  %"$$f_0_call_204" = call %Uint32 %"$$f_0_fptr_201"(i8* %"$$f_0_envptr_202", %String %"$h_203")
  store %Uint32 %"$$f_0_call_204", %Uint32* %"$f_1"
  %"$$f_1_205" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_205", %Uint32* %res
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }
  %"$g_206" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_207" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_206", 0
  %"$g_envptr_208" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_206", 1
  %"$res_209" = load %Uint32, %Uint32* %res
  %"$g_call_210" = call { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$g_fptr_207"(i8* %"$g_envptr_208", %Uint32 %"$res_209")
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$g_call_210", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_211" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_212" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$g_2_211", 0
  %"$$g_2_envptr_213" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$g_2_211", 1
  %"$t_214" = load %TName_List_String*, %TName_List_String** %t
  %"$$g_2_call_215" = call %Uint32 %"$$g_2_fptr_212"(i8* %"$$g_2_envptr_213", %TName_List_String* %"$t_214")
  store %Uint32 %"$$g_2_call_215", %Uint32* %"$g_3"
  %"$$g_3_216" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_216", %Uint32* %"$retval_21"
  br label %"$matchsucc_185"

"$Nil_217":                                       ; preds = %entry
  %"$l_218" = bitcast %TName_List_String* %1 to %CName_Nil_String*
  %"$z_219" = load %Uint32, %Uint32* %z
  store %Uint32 %"$z_219", %Uint32* %"$retval_21"
  br label %"$matchsucc_185"

"$empty_default_188":                             ; preds = %entry
  br label %"$matchsucc_185"

"$matchsucc_185":                                 ; preds = %"$Nil_217", %"$Cons_189", %"$empty_default_188"
  %"$$retval_21_220" = load %Uint32, %Uint32* %"$retval_21"
  ret %Uint32 %"$$retval_21_220"
}

define internal { %Uint32 (i8*, %TName_List_String*)*, i8* } @"$fundef_18"(%"$$fundef_18_env_141"* %0, %Uint32 %1) {
entry:
  %"$$fundef_18_env_f_165" = getelementptr inbounds %"$$fundef_18_env_141", %"$$fundef_18_env_141"* %0, i32 0, i32 0
  %"$f_envload_166" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_165"
  %f = alloca { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_166", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_18_env_g_167" = getelementptr inbounds %"$$fundef_18_env_141", %"$$fundef_18_env_141"* %0, i32 0, i32 1
  %"$g_envload_168" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_167"
  %g = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_168", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_19" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }
  %"$$fundef_20_envp_169_load" = load i8*, i8** @_execptr
  %"$$fundef_20_envp_169_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_169_load", i64 40)
  %"$$fundef_20_envp_169" = bitcast i8* %"$$fundef_20_envp_169_salloc" to %"$$fundef_20_env_140"*
  %"$$fundef_20_env_voidp_171" = bitcast %"$$fundef_20_env_140"* %"$$fundef_20_envp_169" to i8*
  %"$$fundef_20_cloval_172" = insertvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } { %Uint32 (i8*, %TName_List_String*)* bitcast (%Uint32 (%"$$fundef_20_env_140"*, %TName_List_String*)* @"$fundef_20" to %Uint32 (i8*, %TName_List_String*)*), i8* undef }, i8* %"$$fundef_20_env_voidp_171", 1
  %"$$fundef_20_env_f_173" = getelementptr inbounds %"$$fundef_20_env_140", %"$$fundef_20_env_140"* %"$$fundef_20_envp_169", i32 0, i32 0
  %"$f_174" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %f
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_174", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_f_173"
  %"$$fundef_20_env_g_175" = getelementptr inbounds %"$$fundef_20_env_140", %"$$fundef_20_env_140"* %"$$fundef_20_envp_169", i32 0, i32 1
  %"$g_176" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_176", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_g_175"
  %"$$fundef_20_env_z_177" = getelementptr inbounds %"$$fundef_20_env_140", %"$$fundef_20_env_140"* %"$$fundef_20_envp_169", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_20_env_z_177"
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$fundef_20_cloval_172", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_19"
  %"$$retval_19_178" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_19"
  ret { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$retval_19_178"
}

define internal { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_16"(%"$$fundef_16_env_142"* %0, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_17" = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_18_envp_156_load" = load i8*, i8** @_execptr
  %"$$fundef_18_envp_156_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_156_load", i64 32)
  %"$$fundef_18_envp_156" = bitcast i8* %"$$fundef_18_envp_156_salloc" to %"$$fundef_18_env_141"*
  %"$$fundef_18_env_voidp_158" = bitcast %"$$fundef_18_env_141"* %"$$fundef_18_envp_156" to i8*
  %"$$fundef_18_cloval_159" = insertvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_String*)*, i8* } (%"$$fundef_18_env_141"*, %Uint32)* @"$fundef_18" to { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_18_env_voidp_158", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_18_cloval_159", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_18_env_f_160" = getelementptr inbounds %"$$fundef_18_env_141", %"$$fundef_18_env_141"* %"$$fundef_18_envp_156", i32 0, i32 0
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_160"
  %"$$fundef_18_env_g_161" = getelementptr inbounds %"$$fundef_18_env_141", %"$$fundef_18_env_141"* %"$$fundef_18_envp_156", i32 0, i32 1
  %"$g_162" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_162", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_161"
  %"$g_163" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_163", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_17"
  %"$$retval_17_164" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_17"
  ret { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_17_164"
}

define internal { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_14"(%"$$fundef_14_env_143"* %0) {
entry:
  %"$retval_15" = alloca { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_16_env_142"*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_16" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_15"
  %"$$retval_15_155" = load { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_15"
  ret { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_15_155"
}

define internal { i8*, i8* }* @"$fundef_12"(%"$$fundef_12_env_144"* %0) {
entry:
  %"$retval_13" = alloca { i8*, i8* }*
  %"$dyndisp_table_148_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_148_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_148_salloc_load", i64 48)
  %"$dyndisp_table_148_salloc" = bitcast i8* %"$dyndisp_table_148_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_148" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_148_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_149" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_148", i32 1
  %"$dyndisp_pcast_150" = bitcast { i8*, i8* }* %"$dyndisp_gep_149" to { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_14_env_143"*)* @"$fundef_14" to { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_150"
  store { i8*, i8* }* %"$dyndisp_table_148", { i8*, i8* }** %"$retval_13"
  %"$$retval_13_151" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_13"
  ret { i8*, i8* }* %"$$retval_13_151"
}

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_485"(i8* %0) {
entry:
  %"$dyndisp_table_492_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_492_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_492_salloc_load", i64 48)
  %"$dyndisp_table_492_salloc" = bitcast i8* %"$dyndisp_table_492_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_492" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_492_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_493" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_492", i32 0
  %"$dyndisp_pcast_494" = bitcast { i8*, i8* }* %"$dyndisp_gep_493" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_12_env_144"*)* @"$fundef_12" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_494"
  %"$dyndisp_gep_495" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_492", i32 2
  %"$dyndisp_pcast_496" = bitcast { i8*, i8* }* %"$dyndisp_gep_495" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_22_env_139"*)* @"$fundef_22" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_496"
  store { i8*, i8* }* %"$dyndisp_table_492", { i8*, i8* }** @list_foldl
  %"$$fundef_32_envp_497_load" = load i8*, i8** @_execptr
  %"$$fundef_32_envp_497_salloc" = call i8* @_salloc(i8* %"$$fundef_32_envp_497_load", i64 8)
  %"$$fundef_32_envp_497" = bitcast i8* %"$$fundef_32_envp_497_salloc" to %"$$fundef_32_env_134"*
  %"$$fundef_32_env_voidp_499" = bitcast %"$$fundef_32_env_134"* %"$$fundef_32_envp_497" to i8*
  %"$$fundef_32_cloval_500" = insertvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_String*)*, i8* } (%"$$fundef_32_env_134"*)* @"$fundef_32" to { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_32_env_voidp_499", 1
  %"$$fundef_32_env_list_foldl_501" = getelementptr inbounds %"$$fundef_32_env_134", %"$$fundef_32_env_134"* %"$$fundef_32_envp_497", i32 0, i32 0
  %"$list_foldl_502" = load { i8*, i8* }*, { i8*, i8* }** @list_foldl
  store { i8*, i8* }* %"$list_foldl_502", { i8*, i8* }** %"$$fundef_32_env_list_foldl_501"
  %"$$fundef_38_env_voidp_504" = bitcast %"$$fundef_32_env_134"* %"$$fundef_32_envp_497" to i8*
  %"$$fundef_38_cloval_505" = insertvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_38_env_131"*)* @"$fundef_38" to { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_38_env_voidp_504", 1
  %"$dyndisp_table_506_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_506_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_506_salloc_load", i64 48)
  %"$dyndisp_table_506_salloc" = bitcast i8* %"$dyndisp_table_506_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_506" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_506_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_507" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_506", i32 0
  %"$dyndisp_pcast_508" = bitcast { i8*, i8* }* %"$dyndisp_gep_507" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$$fundef_32_cloval_500", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_508"
  %"$dyndisp_gep_509" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_506", i32 2
  %"$dyndisp_pcast_510" = bitcast { i8*, i8* }* %"$dyndisp_gep_509" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$$fundef_38_cloval_505", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_510"
  store { i8*, i8* }* %"$dyndisp_table_506", { i8*, i8* }** @list_length
  %"$expr_44" = alloca %Uint32
  %list_length2 = alloca { i8*, i8* }*
  %"$$fundef_45_envp_511_load" = load i8*, i8** @_execptr
  %"$$fundef_45_envp_511_salloc" = call i8* @_salloc(i8* %"$$fundef_45_envp_511_load", i64 8)
  %"$$fundef_45_envp_511" = bitcast i8* %"$$fundef_45_envp_511_salloc" to %"$$fundef_45_env_128"*
  %"$$fundef_45_env_voidp_513" = bitcast %"$$fundef_45_env_128"* %"$$fundef_45_envp_511" to i8*
  %"$$fundef_45_cloval_514" = insertvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_String*)*, i8* } (%"$$fundef_45_env_128"*)* @"$fundef_45" to { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_45_env_voidp_513", 1
  %"$$fundef_45_env_list_length_515" = getelementptr inbounds %"$$fundef_45_env_128", %"$$fundef_45_env_128"* %"$$fundef_45_envp_511", i32 0, i32 0
  %"$list_length_516" = load { i8*, i8* }*, { i8*, i8* }** @list_length
  store { i8*, i8* }* %"$list_length_516", { i8*, i8* }** %"$$fundef_45_env_list_length_515"
  %"$$fundef_49_env_voidp_518" = bitcast %"$$fundef_45_env_128"* %"$$fundef_45_envp_511" to i8*
  %"$$fundef_49_cloval_519" = insertvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_49_env_126"*)* @"$fundef_49" to { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_49_env_voidp_518", 1
  %"$dyndisp_table_520_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_520_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_520_salloc_load", i64 48)
  %"$dyndisp_table_520_salloc" = bitcast i8* %"$dyndisp_table_520_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_520" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_520_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_521" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_520", i32 0
  %"$dyndisp_pcast_522" = bitcast { i8*, i8* }* %"$dyndisp_gep_521" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$$fundef_45_cloval_514", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_522"
  %"$dyndisp_gep_523" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_520", i32 2
  %"$dyndisp_pcast_524" = bitcast { i8*, i8* }* %"$dyndisp_gep_523" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$$fundef_49_cloval_519", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_524"
  store { i8*, i8* }* %"$dyndisp_table_520", { i8*, i8* }** %list_length2
  %t = alloca { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* }
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_53_env_124"*, %Bool*)* @"$fundef_53" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* }* %t
  %true = alloca %Bool*
  %"$adtval_528_load" = load i8*, i8** @_execptr
  %"$adtval_528_salloc" = call i8* @_salloc(i8* %"$adtval_528_load", i64 1)
  %"$adtval_528" = bitcast i8* %"$adtval_528_salloc" to %True*
  %"$adtgep_529" = getelementptr inbounds %True, %True* %"$adtval_528", i32 0, i32 0
  store i8 0, i8* %"$adtgep_529"
  %"$adtptr_530" = bitcast %True* %"$adtval_528" to %Bool*
  store %Bool* %"$adtptr_530", %Bool** %true
  %f = alloca { i8*, i8* }*
  %"$t_7" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$t_531" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* }* %t
  %"$t_fptr_532" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* } %"$t_531", 0
  %"$t_envptr_533" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* } %"$t_531", 1
  %"$true_534" = load %Bool*, %Bool** %true
  %"$t_call_535" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_532"(i8* %"$t_envptr_533", %Bool* %"$true_534")
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_535", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$t_7"
  %"$t_8" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$$t_7_536" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$t_7"
  %"$$t_7_fptr_537" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$t_7_536", 0
  %"$$t_7_envptr_538" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$t_7_536", 1
  %"$list_length_539" = load { i8*, i8* }*, { i8*, i8* }** @list_length
  %"$$t_7_call_540" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_7_fptr_537"(i8* %"$$t_7_envptr_538", { i8*, i8* }* %"$list_length_539")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_7_call_540", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$t_8"
  %"$t_9" = alloca { i8*, i8* }*
  %"$$t_8_541" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$t_8"
  %"$$t_8_fptr_542" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_8_541", 0
  %"$$t_8_envptr_543" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_8_541", 1
  %"$list_length2_544" = load { i8*, i8* }*, { i8*, i8* }** %list_length2
  %"$$t_8_call_545" = call { i8*, i8* }* %"$$t_8_fptr_542"(i8* %"$$t_8_envptr_543", { i8*, i8* }* %"$list_length2_544")
  store { i8*, i8* }* %"$$t_8_call_545", { i8*, i8* }** %"$t_9"
  %"$$t_9_546" = load { i8*, i8* }*, { i8*, i8* }** %"$t_9"
  store { i8*, i8* }* %"$$t_9_546", { i8*, i8* }** %f
  %f_string = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }
  %"$f_547" = load { i8*, i8* }*, { i8*, i8* }** %f
  %"$f_548" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_547", i32 0
  %"$f_549" = bitcast { i8*, i8* }* %"$f_548" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*
  %"$f_550" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* %"$f_549"
  %"$f_fptr_551" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$f_550", 0
  %"$f_envptr_552" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$f_550", 1
  %"$f_call_553" = call { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_fptr_551"(i8* %"$f_envptr_552")
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_call_553", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %f_string
  %f_bystr20 = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }
  %"$f_554" = load { i8*, i8* }*, { i8*, i8* }** %f
  %"$f_555" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_554", i32 2
  %"$f_556" = bitcast { i8*, i8* }* %"$f_555" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*
  %"$f_557" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* %"$f_556"
  %"$f_fptr_558" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$f_557", 0
  %"$f_envptr_559" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$f_557", 1
  %"$f_call_560" = call { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_fptr_558"(i8* %"$f_envptr_559")
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_call_560", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %f_bystr20
  %nil_string = alloca %TName_List_String*
  %"$adtval_561_load" = load i8*, i8** @_execptr
  %"$adtval_561_salloc" = call i8* @_salloc(i8* %"$adtval_561_load", i64 1)
  %"$adtval_561" = bitcast i8* %"$adtval_561_salloc" to %CName_Nil_String*
  %"$adtgep_562" = getelementptr inbounds %CName_Nil_String, %CName_Nil_String* %"$adtval_561", i32 0, i32 0
  store i8 1, i8* %"$adtgep_562"
  %"$adtptr_563" = bitcast %CName_Nil_String* %"$adtval_561" to %TName_List_String*
  store %TName_List_String* %"$adtptr_563", %TName_List_String** %nil_string
  %nil_bystr20 = alloca %TName_List_ByStr20*
  %"$adtval_564_load" = load i8*, i8** @_execptr
  %"$adtval_564_salloc" = call i8* @_salloc(i8* %"$adtval_564_load", i64 1)
  %"$adtval_564" = bitcast i8* %"$adtval_564_salloc" to %CName_Nil_ByStr20*
  %"$adtgep_565" = getelementptr inbounds %CName_Nil_ByStr20, %CName_Nil_ByStr20* %"$adtval_564", i32 0, i32 0
  store i8 1, i8* %"$adtgep_565"
  %"$adtptr_566" = bitcast %CName_Nil_ByStr20* %"$adtval_564" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_566", %TName_List_ByStr20** %nil_bystr20
  %a = alloca %Uint32
  %"$f_string_10" = alloca %Uint32
  %"$f_string_567" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %f_string
  %"$f_string_fptr_568" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_string_567", 0
  %"$f_string_envptr_569" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_string_567", 1
  %"$nil_string_570" = load %TName_List_String*, %TName_List_String** %nil_string
  %"$f_string_call_571" = call %Uint32 %"$f_string_fptr_568"(i8* %"$f_string_envptr_569", %TName_List_String* %"$nil_string_570")
  store %Uint32 %"$f_string_call_571", %Uint32* %"$f_string_10"
  %"$$f_string_10_572" = load %Uint32, %Uint32* %"$f_string_10"
  store %Uint32 %"$$f_string_10_572", %Uint32* %a
  %b = alloca %Uint32
  %"$f_bystr20_11" = alloca %Uint32
  %"$f_bystr20_573" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %f_bystr20
  %"$f_bystr20_fptr_574" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_bystr20_573", 0
  %"$f_bystr20_envptr_575" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_bystr20_573", 1
  %"$nil_bystr20_576" = load %TName_List_ByStr20*, %TName_List_ByStr20** %nil_bystr20
  %"$f_bystr20_call_577" = call %Uint32 %"$f_bystr20_fptr_574"(i8* %"$f_bystr20_envptr_575", %TName_List_ByStr20* %"$nil_bystr20_576")
  store %Uint32 %"$f_bystr20_call_577", %Uint32* %"$f_bystr20_11"
  %"$$f_bystr20_11_578" = load %Uint32, %Uint32* %"$f_bystr20_11"
  store %Uint32 %"$$f_bystr20_11_578", %Uint32* %b
  %"$a_579" = load %Uint32, %Uint32* %a
  %"$b_580" = load %Uint32, %Uint32* %b
  %"$add_call_581" = call %Uint32 @_add_Uint32(%Uint32 %"$a_579", %Uint32 %"$b_580")
  store %Uint32 %"$add_call_581", %Uint32* %"$expr_44"
  %"$$expr_44_582" = load %Uint32, %Uint32* %"$expr_44"
  ret %Uint32 %"$$expr_44_582"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_583" = call %Uint32 @"$scilla_expr_485"(i8* null)
  %"$pval_584" = alloca %Uint32
  %"$memvoidcast_585" = bitcast %Uint32* %"$pval_584" to i8*
  store %Uint32 %"$exprval_583", %Uint32* %"$pval_584"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_63", i8* %"$memvoidcast_585")
  ret void
}
