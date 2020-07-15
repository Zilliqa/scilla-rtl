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
%"$TyDescrTy_ADTTyp_91" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_90"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_90" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_92"**, %"$TyDescrTy_ADTTyp_91"* }
%"$TyDescrTy_ADTTyp_Constr_92" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$$fundef_57_env_130" = type { %Bool*, { i8*, i8* }* }
%Bool = type { i8, %True*, %False* }
%True = type <{ i8 }>
%False = type <{ i8 }>
%"$$fundef_55_env_131" = type { %Bool* }
%"$$fundef_53_env_132" = type {}
%Uint32 = type { i32 }
%"$$fundef_51_env_133" = type { { i8*, i8* }* }
%TName_List_ByStr20 = type { i8, %CName_Cons_ByStr20*, %CName_Nil_ByStr20* }
%CName_Cons_ByStr20 = type <{ i8, [20 x i8], %TName_List_ByStr20* }>
%CName_Nil_ByStr20 = type <{ i8 }>
%"$$fundef_49_env_134" = type { { i8*, i8* }* }
%"$$fundef_47_env_135" = type { { i8*, i8* }* }
%TName_List_String = type { i8, %CName_Cons_String*, %CName_Nil_String* }
%CName_Cons_String = type <{ i8, %String, %TName_List_String* }>
%String = type { i8*, i32 }
%CName_Nil_String = type <{ i8 }>
%"$$fundef_45_env_136" = type { { i8*, i8* }* }
%"$$fundef_42_env_137" = type { %Uint32, %Uint32 }
%"$$fundef_40_env_138" = type { %Uint32 }
%"$$fundef_38_env_139" = type { { i8*, i8* }* }
%"$$fundef_36_env_140" = type { %Uint32, %Uint32 }
%"$$fundef_34_env_141" = type { %Uint32 }
%"$$fundef_32_env_142" = type { { i8*, i8* }* }
%"$$fundef_30_env_143" = type { { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_28_env_144" = type { { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_26_env_145" = type {}
%"$$fundef_24_env_146" = type {}
%"$$fundef_22_env_147" = type {}
%"$$fundef_20_env_148" = type { { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_18_env_149" = type { { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_16_env_150" = type {}
%"$$fundef_14_env_151" = type {}
%"$$fundef_12_env_152" = type {}

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
@"$TyDescr_Bnum_Prim_78" = global %"$TyDescrTy_PrimTyp_59" { i32 3, i32 0 }
@"$TyDescr_Bnum_79" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Bnum_Prim_78" to i8*) }
@"$TyDescr_Message_Prim_80" = global %"$TyDescrTy_PrimTyp_59" { i32 4, i32 0 }
@"$TyDescr_Message_81" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Message_Prim_80" to i8*) }
@"$TyDescr_Event_Prim_82" = global %"$TyDescrTy_PrimTyp_59" { i32 5, i32 0 }
@"$TyDescr_Event_83" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Event_Prim_82" to i8*) }
@"$TyDescr_Exception_Prim_84" = global %"$TyDescrTy_PrimTyp_59" { i32 6, i32 0 }
@"$TyDescr_Exception_85" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Exception_Prim_84" to i8*) }
@"$TyDescr_Bystr_Prim_86" = global %"$TyDescrTy_PrimTyp_59" { i32 7, i32 0 }
@"$TyDescr_Bystr_87" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Bystr_Prim_86" to i8*) }
@"$TyDescr_Bystr20_Prim_88" = global %"$TyDescrTy_PrimTyp_59" { i32 8, i32 20 }
@"$TyDescr_Bystr20_89" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_59"* @"$TyDescr_Bystr20_Prim_88" to i8*) }
@"$TyDescr_ADT_Bool_93" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_90"* @"$TyDescr_Bool_ADTTyp_Specl_106" to i8*) }
@"$TyDescr_ADT_List_ByStr20_94" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_90"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_118" to i8*) }
@"$TyDescr_ADT_List_String_95" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_90"* @"$TyDescr_List_String_ADTTyp_Specl_127" to i8*) }
@"$TyDescr_Bool_ADTTyp_97" = unnamed_addr constant %"$TyDescrTy_ADTTyp_91" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_108", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_90"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_90"*], [1 x %"$TyDescrTy_ADTTyp_Specl_90"*]* @"$TyDescr_Bool_ADTTyp_m_specls_107", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_98" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_99" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_100" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_92" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_99", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_98", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_101" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_102" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_103" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_92" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_102", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_101", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_104" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_92"*] [%"$TyDescrTy_ADTTyp_Constr_92"* @"$TyDescr_Bool_True_ADTTyp_Constr_100", %"$TyDescrTy_ADTTyp_Constr_92"* @"$TyDescr_Bool_False_ADTTyp_Constr_103"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_105" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_106" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_90" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_105", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_92"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_92"*], [2 x %"$TyDescrTy_ADTTyp_Constr_92"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_104", i32 0, i32 0), %"$TyDescrTy_ADTTyp_91"* @"$TyDescr_Bool_ADTTyp_97" }
@"$TyDescr_Bool_ADTTyp_m_specls_107" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_90"*] [%"$TyDescrTy_ADTTyp_Specl_90"* @"$TyDescr_Bool_ADTTyp_Specl_106"]
@"$TyDescr_ADT_Bool_108" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_109" = unnamed_addr constant %"$TyDescrTy_ADTTyp_91" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_129", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_90"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_90"*], [2 x %"$TyDescrTy_ADTTyp_Specl_90"*]* @"$TyDescr_List_ADTTyp_m_specls_128", i32 0, i32 0) }
@"$TyDescr_List_Cons_ByStr20_Constr_m_args_110" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_89", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_94"]
@"$TyDescr_ADT_Cons_111" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_112" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_92" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_111", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_Constr_m_args_110", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_Constr_m_args_113" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_114" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_115" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_92" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_114", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_Constr_m_args_113", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_116" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_92"*] [%"$TyDescrTy_ADTTyp_Constr_92"* @"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_112", %"$TyDescrTy_ADTTyp_Constr_92"* @"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_115"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_117" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_89"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_118" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_90" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_117", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_92"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_92"*], [2 x %"$TyDescrTy_ADTTyp_Constr_92"*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_116", i32 0, i32 0), %"$TyDescrTy_ADTTyp_91"* @"$TyDescr_List_ADTTyp_109" }
@"$TyDescr_List_Cons_String_Constr_m_args_119" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_77", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_95"]
@"$TyDescr_ADT_Cons_120" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_String_ADTTyp_Constr_121" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_92" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_120", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_String_Constr_m_args_119", i32 0, i32 0) }
@"$TyDescr_List_Nil_String_Constr_m_args_122" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_123" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_String_ADTTyp_Constr_124" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_92" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_123", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_String_Constr_m_args_122", i32 0, i32 0) }
@"$TyDescr_List_String_ADTTyp_Specl_m_constrs_125" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_92"*] [%"$TyDescrTy_ADTTyp_Constr_92"* @"$TyDescr_List_Cons_String_ADTTyp_Constr_121", %"$TyDescrTy_ADTTyp_Constr_92"* @"$TyDescr_List_Nil_String_ADTTyp_Constr_124"]
@"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_126" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_77"]
@"$TyDescr_List_String_ADTTyp_Specl_127" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_90" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_126", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_92"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_92"*], [2 x %"$TyDescrTy_ADTTyp_Constr_92"*]* @"$TyDescr_List_String_ADTTyp_Specl_m_constrs_125", i32 0, i32 0), %"$TyDescrTy_ADTTyp_91"* @"$TyDescr_List_ADTTyp_109" }
@"$TyDescr_List_ADTTyp_m_specls_128" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_90"*] [%"$TyDescrTy_ADTTyp_Specl_90"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_118", %"$TyDescrTy_ADTTyp_Specl_90"* @"$TyDescr_List_String_ADTTyp_Specl_127"]
@"$TyDescr_ADT_List_129" = unnamed_addr constant [4 x i8] c"List"
@list_foldl = global { i8*, i8* }* null
@list_length = global { i8*, i8* }* null

define internal { i8*, i8* }* @"$fundef_57"(%"$$fundef_57_env_130"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_57_env_b_478" = getelementptr inbounds %"$$fundef_57_env_130", %"$$fundef_57_env_130"* %0, i32 0, i32 0
  %"$b_envload_479" = load %Bool*, %Bool** %"$$fundef_57_env_b_478"
  %b = alloca %Bool*
  store %Bool* %"$b_envload_479", %Bool** %b
  %"$$fundef_57_env_f_480" = getelementptr inbounds %"$$fundef_57_env_130", %"$$fundef_57_env_130"* %0, i32 0, i32 1
  %"$f_envload_481" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_57_env_f_480"
  %f = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$f_envload_481", { i8*, i8* }** %f
  %"$retval_58" = alloca { i8*, i8* }*
  %"$b_483" = load %Bool*, %Bool** %b
  %"$b_tag_484" = getelementptr inbounds %Bool, %Bool* %"$b_483", i32 0, i32 0
  %"$b_tag_485" = load i8, i8* %"$b_tag_484"
  switch i8 %"$b_tag_485", label %"$empty_default_486" [
    i8 0, label %"$True_487"
    i8 1, label %"$False_489"
  ]

"$True_487":                                      ; preds = %entry
  %"$b_488" = bitcast %Bool* %"$b_483" to %True*
  store { i8*, i8* }* %1, { i8*, i8* }** %"$retval_58"
  br label %"$matchsucc_482"

"$False_489":                                     ; preds = %entry
  %"$b_490" = bitcast %Bool* %"$b_483" to %False*
  %"$f_491" = load { i8*, i8* }*, { i8*, i8* }** %f
  store { i8*, i8* }* %"$f_491", { i8*, i8* }** %"$retval_58"
  br label %"$matchsucc_482"

"$empty_default_486":                             ; preds = %entry
  br label %"$matchsucc_482"

"$matchsucc_482":                                 ; preds = %"$False_489", %"$True_487", %"$empty_default_486"
  %"$$retval_58_492" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_58"
  ret { i8*, i8* }* %"$$retval_58_492"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_55"(%"$$fundef_55_env_131"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_55_env_b_468" = getelementptr inbounds %"$$fundef_55_env_131", %"$$fundef_55_env_131"* %0, i32 0, i32 0
  %"$b_envload_469" = load %Bool*, %Bool** %"$$fundef_55_env_b_468"
  %b = alloca %Bool*
  store %Bool* %"$b_envload_469", %Bool** %b
  %"$retval_56" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_57_envp_470_load" = load i8*, i8** @_execptr
  %"$$fundef_57_envp_470_salloc" = call i8* @_salloc(i8* %"$$fundef_57_envp_470_load", i64 16)
  %"$$fundef_57_envp_470" = bitcast i8* %"$$fundef_57_envp_470_salloc" to %"$$fundef_57_env_130"*
  %"$$fundef_57_env_voidp_472" = bitcast %"$$fundef_57_env_130"* %"$$fundef_57_envp_470" to i8*
  %"$$fundef_57_cloval_473" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_57_env_130"*, { i8*, i8* }*)* @"$fundef_57" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_57_env_voidp_472", 1
  %"$$fundef_57_env_b_474" = getelementptr inbounds %"$$fundef_57_env_130", %"$$fundef_57_env_130"* %"$$fundef_57_envp_470", i32 0, i32 0
  %"$b_475" = load %Bool*, %Bool** %b
  store %Bool* %"$b_475", %Bool** %"$$fundef_57_env_b_474"
  %"$$fundef_57_env_f_476" = getelementptr inbounds %"$$fundef_57_env_130", %"$$fundef_57_env_130"* %"$$fundef_57_envp_470", i32 0, i32 1
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_57_env_f_476"
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_57_cloval_473", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_56"
  %"$$retval_56_477" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_56"
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_56_477"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_53"(%"$$fundef_53_env_132"* %0, %Bool* %1) {
entry:
  %"$retval_54" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_55_envp_462_load" = load i8*, i8** @_execptr
  %"$$fundef_55_envp_462_salloc" = call i8* @_salloc(i8* %"$$fundef_55_envp_462_load", i64 8)
  %"$$fundef_55_envp_462" = bitcast i8* %"$$fundef_55_envp_462_salloc" to %"$$fundef_55_env_131"*
  %"$$fundef_55_env_voidp_464" = bitcast %"$$fundef_55_env_131"* %"$$fundef_55_envp_462" to i8*
  %"$$fundef_55_cloval_465" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_55_env_131"*, { i8*, i8* }*)* @"$fundef_55" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_55_env_voidp_464", 1
  %"$$fundef_55_env_b_466" = getelementptr inbounds %"$$fundef_55_env_131", %"$$fundef_55_env_131"* %"$$fundef_55_envp_462", i32 0, i32 0
  store %Bool* %1, %Bool** %"$$fundef_55_env_b_466"
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_55_cloval_465", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_54"
  %"$$retval_54_467" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_54"
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_54_467"
}

define internal %Uint32 @"$fundef_51"(%"$$fundef_51_env_133"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_51_env_list_length_444" = getelementptr inbounds %"$$fundef_51_env_133", %"$$fundef_51_env_133"* %0, i32 0, i32 0
  %"$list_length_envload_445" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_51_env_list_length_444"
  %list_length = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_length_envload_445", { i8*, i8* }** %list_length
  %"$retval_52" = alloca %Uint32
  %ll = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }
  %"$list_length_446" = load { i8*, i8* }*, { i8*, i8* }** %list_length
  %"$list_length_447" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_446", i32 2
  %"$list_length_448" = bitcast { i8*, i8* }* %"$list_length_447" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*
  %"$list_length_449" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* %"$list_length_448"
  %"$list_length_fptr_450" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$list_length_449", 0
  %"$list_length_envptr_451" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$list_length_449", 1
  %"$list_length_call_452" = call { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$list_length_fptr_450"(i8* %"$list_length_envptr_451")
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$list_length_call_452", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %ll
  %n = alloca %Uint32
  %"$ll_6" = alloca %Uint32
  %"$ll_453" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %ll
  %"$ll_fptr_454" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$ll_453", 0
  %"$ll_envptr_455" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$ll_453", 1
  %"$ll_call_456" = call %Uint32 %"$ll_fptr_454"(i8* %"$ll_envptr_455", %TName_List_ByStr20* %1)
  store %Uint32 %"$ll_call_456", %Uint32* %"$ll_6"
  %"$$ll_6_457" = load %Uint32, %Uint32* %"$ll_6"
  store %Uint32 %"$$ll_6_457", %Uint32* %n
  %two = alloca %Uint32
  store %Uint32 { i32 2 }, %Uint32* %two
  %"$n_458" = load %Uint32, %Uint32* %n
  %"$two_459" = load %Uint32, %Uint32* %two
  %"$add_call_460" = call %Uint32 @_add_Uint32(%Uint32 %"$n_458", %Uint32 %"$two_459")
  store %Uint32 %"$add_call_460", %Uint32* %"$retval_52"
  %"$$retval_52_461" = load %Uint32, %Uint32* %"$retval_52"
  ret %Uint32 %"$$retval_52_461"
}

define internal { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_49"(%"$$fundef_49_env_134"* %0) {
entry:
  %"$$fundef_49_env_list_length_435" = getelementptr inbounds %"$$fundef_49_env_134", %"$$fundef_49_env_134"* %0, i32 0, i32 0
  %"$list_length_envload_436" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_49_env_list_length_435"
  %list_length = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_length_envload_436", { i8*, i8* }** %list_length
  %"$retval_50" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }
  %"$$fundef_51_envp_437_load" = load i8*, i8** @_execptr
  %"$$fundef_51_envp_437_salloc" = call i8* @_salloc(i8* %"$$fundef_51_envp_437_load", i64 8)
  %"$$fundef_51_envp_437" = bitcast i8* %"$$fundef_51_envp_437_salloc" to %"$$fundef_51_env_133"*
  %"$$fundef_51_env_voidp_439" = bitcast %"$$fundef_51_env_133"* %"$$fundef_51_envp_437" to i8*
  %"$$fundef_51_cloval_440" = insertvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } { %Uint32 (i8*, %TName_List_ByStr20*)* bitcast (%Uint32 (%"$$fundef_51_env_133"*, %TName_List_ByStr20*)* @"$fundef_51" to %Uint32 (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_51_env_voidp_439", 1
  %"$$fundef_51_env_list_length_441" = getelementptr inbounds %"$$fundef_51_env_133", %"$$fundef_51_env_133"* %"$$fundef_51_envp_437", i32 0, i32 0
  %"$list_length_442" = load { i8*, i8* }*, { i8*, i8* }** %list_length
  store { i8*, i8* }* %"$list_length_442", { i8*, i8* }** %"$$fundef_51_env_list_length_441"
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_51_cloval_440", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_50"
  %"$$retval_50_443" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_50"
  ret { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_50_443"
}

define internal %Uint32 @"$fundef_47"(%"$$fundef_47_env_135"* %0, %TName_List_String* %1) {
entry:
  %"$$fundef_47_env_list_length_417" = getelementptr inbounds %"$$fundef_47_env_135", %"$$fundef_47_env_135"* %0, i32 0, i32 0
  %"$list_length_envload_418" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_47_env_list_length_417"
  %list_length = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_length_envload_418", { i8*, i8* }** %list_length
  %"$retval_48" = alloca %Uint32
  %ll = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }
  %"$list_length_419" = load { i8*, i8* }*, { i8*, i8* }** %list_length
  %"$list_length_420" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_419", i32 0
  %"$list_length_421" = bitcast { i8*, i8* }* %"$list_length_420" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*
  %"$list_length_422" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* %"$list_length_421"
  %"$list_length_fptr_423" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$list_length_422", 0
  %"$list_length_envptr_424" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$list_length_422", 1
  %"$list_length_call_425" = call { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$list_length_fptr_423"(i8* %"$list_length_envptr_424")
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$list_length_call_425", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %ll
  %n = alloca %Uint32
  %"$ll_6" = alloca %Uint32
  %"$ll_426" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %ll
  %"$ll_fptr_427" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$ll_426", 0
  %"$ll_envptr_428" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$ll_426", 1
  %"$ll_call_429" = call %Uint32 %"$ll_fptr_427"(i8* %"$ll_envptr_428", %TName_List_String* %1)
  store %Uint32 %"$ll_call_429", %Uint32* %"$ll_6"
  %"$$ll_6_430" = load %Uint32, %Uint32* %"$ll_6"
  store %Uint32 %"$$ll_6_430", %Uint32* %n
  %two = alloca %Uint32
  store %Uint32 { i32 2 }, %Uint32* %two
  %"$n_431" = load %Uint32, %Uint32* %n
  %"$two_432" = load %Uint32, %Uint32* %two
  %"$add_call_433" = call %Uint32 @_add_Uint32(%Uint32 %"$n_431", %Uint32 %"$two_432")
  store %Uint32 %"$add_call_433", %Uint32* %"$retval_48"
  %"$$retval_48_434" = load %Uint32, %Uint32* %"$retval_48"
  ret %Uint32 %"$$retval_48_434"
}

define internal { %Uint32 (i8*, %TName_List_String*)*, i8* } @"$fundef_45"(%"$$fundef_45_env_136"* %0) {
entry:
  %"$$fundef_45_env_list_length_408" = getelementptr inbounds %"$$fundef_45_env_136", %"$$fundef_45_env_136"* %0, i32 0, i32 0
  %"$list_length_envload_409" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_45_env_list_length_408"
  %list_length = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_length_envload_409", { i8*, i8* }** %list_length
  %"$retval_46" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }
  %"$$fundef_47_envp_410_load" = load i8*, i8** @_execptr
  %"$$fundef_47_envp_410_salloc" = call i8* @_salloc(i8* %"$$fundef_47_envp_410_load", i64 8)
  %"$$fundef_47_envp_410" = bitcast i8* %"$$fundef_47_envp_410_salloc" to %"$$fundef_47_env_135"*
  %"$$fundef_47_env_voidp_412" = bitcast %"$$fundef_47_env_135"* %"$$fundef_47_envp_410" to i8*
  %"$$fundef_47_cloval_413" = insertvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } { %Uint32 (i8*, %TName_List_String*)* bitcast (%Uint32 (%"$$fundef_47_env_135"*, %TName_List_String*)* @"$fundef_47" to %Uint32 (i8*, %TName_List_String*)*), i8* undef }, i8* %"$$fundef_47_env_voidp_412", 1
  %"$$fundef_47_env_list_length_414" = getelementptr inbounds %"$$fundef_47_env_135", %"$$fundef_47_env_135"* %"$$fundef_47_envp_410", i32 0, i32 0
  %"$list_length_415" = load { i8*, i8* }*, { i8*, i8* }** %list_length
  store { i8*, i8* }* %"$list_length_415", { i8*, i8* }** %"$$fundef_47_env_list_length_414"
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$fundef_47_cloval_413", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_46"
  %"$$retval_46_416" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_46"
  ret { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$retval_46_416"
}

define internal %Uint32 @"$fundef_42"(%"$$fundef_42_env_137"* %0, [20 x i8]* %1) {
entry:
  %h = load [20 x i8], [20 x i8]* %1
  %"$$fundef_42_env_one_400" = getelementptr inbounds %"$$fundef_42_env_137", %"$$fundef_42_env_137"* %0, i32 0, i32 0
  %"$one_envload_401" = load %Uint32, %Uint32* %"$$fundef_42_env_one_400"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_401", %Uint32* %one
  %"$$fundef_42_env_z_402" = getelementptr inbounds %"$$fundef_42_env_137", %"$$fundef_42_env_137"* %0, i32 0, i32 1
  %"$z_envload_403" = load %Uint32, %Uint32* %"$$fundef_42_env_z_402"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_403", %Uint32* %z
  %"$retval_43" = alloca %Uint32
  %"$one_404" = load %Uint32, %Uint32* %one
  %"$z_405" = load %Uint32, %Uint32* %z
  %"$add_call_406" = call %Uint32 @_add_Uint32(%Uint32 %"$one_404", %Uint32 %"$z_405")
  store %Uint32 %"$add_call_406", %Uint32* %"$retval_43"
  %"$$retval_43_407" = load %Uint32, %Uint32* %"$retval_43"
  ret %Uint32 %"$$retval_43_407"
}

define internal { %Uint32 (i8*, [20 x i8]*)*, i8* } @"$fundef_40"(%"$$fundef_40_env_138"* %0, %Uint32 %1) {
entry:
  %"$$fundef_40_env_one_390" = getelementptr inbounds %"$$fundef_40_env_138", %"$$fundef_40_env_138"* %0, i32 0, i32 0
  %"$one_envload_391" = load %Uint32, %Uint32* %"$$fundef_40_env_one_390"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_391", %Uint32* %one
  %"$retval_41" = alloca { %Uint32 (i8*, [20 x i8]*)*, i8* }
  %"$$fundef_42_envp_392_load" = load i8*, i8** @_execptr
  %"$$fundef_42_envp_392_salloc" = call i8* @_salloc(i8* %"$$fundef_42_envp_392_load", i64 8)
  %"$$fundef_42_envp_392" = bitcast i8* %"$$fundef_42_envp_392_salloc" to %"$$fundef_42_env_137"*
  %"$$fundef_42_env_voidp_394" = bitcast %"$$fundef_42_env_137"* %"$$fundef_42_envp_392" to i8*
  %"$$fundef_42_cloval_395" = insertvalue { %Uint32 (i8*, [20 x i8]*)*, i8* } { %Uint32 (i8*, [20 x i8]*)* bitcast (%Uint32 (%"$$fundef_42_env_137"*, [20 x i8]*)* @"$fundef_42" to %Uint32 (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_42_env_voidp_394", 1
  %"$$fundef_42_env_one_396" = getelementptr inbounds %"$$fundef_42_env_137", %"$$fundef_42_env_137"* %"$$fundef_42_envp_392", i32 0, i32 0
  %"$one_397" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_397", %Uint32* %"$$fundef_42_env_one_396"
  %"$$fundef_42_env_z_398" = getelementptr inbounds %"$$fundef_42_env_137", %"$$fundef_42_env_137"* %"$$fundef_42_envp_392", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_42_env_z_398"
  store { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$$fundef_42_cloval_395", { %Uint32 (i8*, [20 x i8]*)*, i8* }* %"$retval_41"
  %"$$retval_41_399" = load { %Uint32 (i8*, [20 x i8]*)*, i8* }, { %Uint32 (i8*, [20 x i8]*)*, i8* }* %"$retval_41"
  ret { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$$retval_41_399"
}

define internal { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_139"* %0) {
entry:
  %"$$fundef_38_env_list_foldl_357" = getelementptr inbounds %"$$fundef_38_env_139", %"$$fundef_38_env_139"* %0, i32 0, i32 0
  %"$list_foldl_envload_358" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_38_env_list_foldl_357"
  %list_foldl = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldl_envload_358", { i8*, i8* }** %list_foldl
  %"$retval_39" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$list_foldl_359" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl
  %"$list_foldl_360" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_359", i32 2
  %"$list_foldl_361" = bitcast { i8*, i8* }* %"$list_foldl_360" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_362" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_361"
  %"$list_foldl_fptr_363" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_362", 0
  %"$list_foldl_envptr_364" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_362", 1
  %"$list_foldl_call_365" = call { i8*, i8* }* %"$list_foldl_fptr_363"(i8* %"$list_foldl_envptr_364")
  %"$list_foldl_366" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_365", i32 1
  %"$list_foldl_367" = bitcast { i8*, i8* }* %"$list_foldl_366" to { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_368" = load { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_367"
  %"$list_foldl_fptr_369" = extractvalue { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_368", 0
  %"$list_foldl_envptr_370" = extractvalue { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_368", 1
  %"$list_foldl_call_371" = call { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_369"(i8* %"$list_foldl_envptr_370")
  store { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_371", { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %iter = alloca { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_40_envp_372_load" = load i8*, i8** @_execptr
  %"$$fundef_40_envp_372_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_372_load", i64 4)
  %"$$fundef_40_envp_372" = bitcast i8* %"$$fundef_40_envp_372_salloc" to %"$$fundef_40_env_138"*
  %"$$fundef_40_env_voidp_374" = bitcast %"$$fundef_40_env_138"* %"$$fundef_40_envp_372" to i8*
  %"$$fundef_40_cloval_375" = insertvalue { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, [20 x i8]*)*, i8* } (%"$$fundef_40_env_138"*, %Uint32)* @"$fundef_40" to { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_40_env_voidp_374", 1
  %"$$fundef_40_env_one_376" = getelementptr inbounds %"$$fundef_40_env_138", %"$$fundef_40_env_138"* %"$$fundef_40_envp_372", i32 0, i32 0
  %"$one_377" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_377", %Uint32* %"$$fundef_40_env_one_376"
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_40_cloval_375", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %init = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %init
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$foldl_378" = load { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$foldl_fptr_379" = extractvalue { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_378", 0
  %"$foldl_envptr_380" = extractvalue { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_378", 1
  %"$iter_381" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$foldl_call_382" = call { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_379"(i8* %"$foldl_envptr_380", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_381")
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_382", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }
  %"$$foldl_4_383" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$$foldl_4_fptr_384" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_383", 0
  %"$$foldl_4_envptr_385" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_383", 1
  %"$init_386" = load %Uint32, %Uint32* %init
  %"$$foldl_4_call_387" = call { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldl_4_fptr_384"(i8* %"$$foldl_4_envptr_385", %Uint32 %"$init_386")
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldl_4_call_387", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldl_5"
  %"$$foldl_5_388" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldl_5"
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldl_5_388", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_39"
  %"$$retval_39_389" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_39"
  ret { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_39_389"
}

define internal %Uint32 @"$fundef_36"(%"$$fundef_36_env_140"* %0, %String %1) {
entry:
  %"$$fundef_36_env_one_349" = getelementptr inbounds %"$$fundef_36_env_140", %"$$fundef_36_env_140"* %0, i32 0, i32 0
  %"$one_envload_350" = load %Uint32, %Uint32* %"$$fundef_36_env_one_349"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_350", %Uint32* %one
  %"$$fundef_36_env_z_351" = getelementptr inbounds %"$$fundef_36_env_140", %"$$fundef_36_env_140"* %0, i32 0, i32 1
  %"$z_envload_352" = load %Uint32, %Uint32* %"$$fundef_36_env_z_351"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_352", %Uint32* %z
  %"$retval_37" = alloca %Uint32
  %"$one_353" = load %Uint32, %Uint32* %one
  %"$z_354" = load %Uint32, %Uint32* %z
  %"$add_call_355" = call %Uint32 @_add_Uint32(%Uint32 %"$one_353", %Uint32 %"$z_354")
  store %Uint32 %"$add_call_355", %Uint32* %"$retval_37"
  %"$$retval_37_356" = load %Uint32, %Uint32* %"$retval_37"
  ret %Uint32 %"$$retval_37_356"
}

define internal { %Uint32 (i8*, %String)*, i8* } @"$fundef_34"(%"$$fundef_34_env_141"* %0, %Uint32 %1) {
entry:
  %"$$fundef_34_env_one_339" = getelementptr inbounds %"$$fundef_34_env_141", %"$$fundef_34_env_141"* %0, i32 0, i32 0
  %"$one_envload_340" = load %Uint32, %Uint32* %"$$fundef_34_env_one_339"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_340", %Uint32* %one
  %"$retval_35" = alloca { %Uint32 (i8*, %String)*, i8* }
  %"$$fundef_36_envp_341_load" = load i8*, i8** @_execptr
  %"$$fundef_36_envp_341_salloc" = call i8* @_salloc(i8* %"$$fundef_36_envp_341_load", i64 8)
  %"$$fundef_36_envp_341" = bitcast i8* %"$$fundef_36_envp_341_salloc" to %"$$fundef_36_env_140"*
  %"$$fundef_36_env_voidp_343" = bitcast %"$$fundef_36_env_140"* %"$$fundef_36_envp_341" to i8*
  %"$$fundef_36_cloval_344" = insertvalue { %Uint32 (i8*, %String)*, i8* } { %Uint32 (i8*, %String)* bitcast (%Uint32 (%"$$fundef_36_env_140"*, %String)* @"$fundef_36" to %Uint32 (i8*, %String)*), i8* undef }, i8* %"$$fundef_36_env_voidp_343", 1
  %"$$fundef_36_env_one_345" = getelementptr inbounds %"$$fundef_36_env_140", %"$$fundef_36_env_140"* %"$$fundef_36_envp_341", i32 0, i32 0
  %"$one_346" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_346", %Uint32* %"$$fundef_36_env_one_345"
  %"$$fundef_36_env_z_347" = getelementptr inbounds %"$$fundef_36_env_140", %"$$fundef_36_env_140"* %"$$fundef_36_envp_341", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_36_env_z_347"
  store { %Uint32 (i8*, %String)*, i8* } %"$$fundef_36_cloval_344", { %Uint32 (i8*, %String)*, i8* }* %"$retval_35"
  %"$$retval_35_348" = load { %Uint32 (i8*, %String)*, i8* }, { %Uint32 (i8*, %String)*, i8* }* %"$retval_35"
  ret { %Uint32 (i8*, %String)*, i8* } %"$$retval_35_348"
}

define internal { %Uint32 (i8*, %TName_List_String*)*, i8* } @"$fundef_32"(%"$$fundef_32_env_142"* %0) {
entry:
  %"$$fundef_32_env_list_foldl_306" = getelementptr inbounds %"$$fundef_32_env_142", %"$$fundef_32_env_142"* %0, i32 0, i32 0
  %"$list_foldl_envload_307" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_32_env_list_foldl_306"
  %list_foldl = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_foldl_envload_307", { i8*, i8* }** %list_foldl
  %"$retval_33" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$list_foldl_308" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl
  %"$list_foldl_309" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_308", i32 0
  %"$list_foldl_310" = bitcast { i8*, i8* }* %"$list_foldl_309" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_311" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_310"
  %"$list_foldl_fptr_312" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_311", 0
  %"$list_foldl_envptr_313" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_311", 1
  %"$list_foldl_call_314" = call { i8*, i8* }* %"$list_foldl_fptr_312"(i8* %"$list_foldl_envptr_313")
  %"$list_foldl_315" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_314", i32 1
  %"$list_foldl_316" = bitcast { i8*, i8* }* %"$list_foldl_315" to { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_317" = load { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_316"
  %"$list_foldl_fptr_318" = extractvalue { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_317", 0
  %"$list_foldl_envptr_319" = extractvalue { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_317", 1
  %"$list_foldl_call_320" = call { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_318"(i8* %"$list_foldl_envptr_319")
  store { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_320", { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %iter = alloca { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_34_envp_321_load" = load i8*, i8** @_execptr
  %"$$fundef_34_envp_321_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_321_load", i64 4)
  %"$$fundef_34_envp_321" = bitcast i8* %"$$fundef_34_envp_321_salloc" to %"$$fundef_34_env_141"*
  %"$$fundef_34_env_voidp_323" = bitcast %"$$fundef_34_env_141"* %"$$fundef_34_envp_321" to i8*
  %"$$fundef_34_cloval_324" = insertvalue { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %String)*, i8* } (%"$$fundef_34_env_141"*, %Uint32)* @"$fundef_34" to { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_34_env_voidp_323", 1
  %"$$fundef_34_env_one_325" = getelementptr inbounds %"$$fundef_34_env_141", %"$$fundef_34_env_141"* %"$$fundef_34_envp_321", i32 0, i32 0
  %"$one_326" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_326", %Uint32* %"$$fundef_34_env_one_325"
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_34_cloval_324", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %init = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %init
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$foldl_327" = load { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl
  %"$foldl_fptr_328" = extractvalue { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_327", 0
  %"$foldl_envptr_329" = extractvalue { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_327", 1
  %"$iter_330" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %iter
  %"$foldl_call_331" = call { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_328"(i8* %"$foldl_envptr_329", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_330")
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_331", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }
  %"$$foldl_4_332" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4"
  %"$$foldl_4_fptr_333" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_332", 0
  %"$$foldl_4_envptr_334" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_332", 1
  %"$init_335" = load %Uint32, %Uint32* %init
  %"$$foldl_4_call_336" = call { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$foldl_4_fptr_333"(i8* %"$$foldl_4_envptr_334", %Uint32 %"$init_335")
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$foldl_4_call_336", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$foldl_5"
  %"$$foldl_5_337" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$foldl_5"
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$foldl_5_337", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_33"
  %"$$retval_33_338" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_33"
  ret { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$retval_33_338"
}

define internal %Uint32 @"$fundef_30"(%"$$fundef_30_env_143"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_30_env_f_263" = getelementptr inbounds %"$$fundef_30_env_143", %"$$fundef_30_env_143"* %0, i32 0, i32 0
  %"$f_envload_264" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_f_263"
  %f = alloca { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_264", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_30_env_g_265" = getelementptr inbounds %"$$fundef_30_env_143", %"$$fundef_30_env_143"* %0, i32 0, i32 1
  %"$g_envload_266" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_g_265"
  %g = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_266", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_30_env_z_267" = getelementptr inbounds %"$$fundef_30_env_143", %"$$fundef_30_env_143"* %0, i32 0, i32 2
  %"$z_envload_268" = load %Uint32, %Uint32* %"$$fundef_30_env_z_267"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_268", %Uint32* %z
  %"$retval_31" = alloca %Uint32
  %"$l_tag_270" = getelementptr inbounds %TName_List_ByStr20, %TName_List_ByStr20* %1, i32 0, i32 0
  %"$l_tag_271" = load i8, i8* %"$l_tag_270"
  switch i8 %"$l_tag_271", label %"$empty_default_272" [
    i8 0, label %"$Cons_273"
    i8 1, label %"$Nil_302"
  ]

"$Cons_273":                                      ; preds = %entry
  %"$l_274" = bitcast %TName_List_ByStr20* %1 to %CName_Cons_ByStr20*
  %"$h_gep_275" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_274", i32 0, i32 1
  %"$h_load_276" = load [20 x i8], [20 x i8]* %"$h_gep_275"
  %h = alloca [20 x i8]
  store [20 x i8] %"$h_load_276", [20 x i8]* %h
  %"$t_gep_277" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_274", i32 0, i32 2
  %"$t_load_278" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$t_gep_277"
  %t = alloca %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$t_load_278", %TName_List_ByStr20** %t
  %res = alloca %Uint32
  %"$f_0" = alloca { %Uint32 (i8*, [20 x i8]*)*, i8* }
  %"$f_279" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_280" = extractvalue { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_279", 0
  %"$f_envptr_281" = extractvalue { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_279", 1
  %"$z_282" = load %Uint32, %Uint32* %z
  %"$f_call_283" = call { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$f_fptr_280"(i8* %"$f_envptr_281", %Uint32 %"$z_282")
  store { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$f_call_283", { %Uint32 (i8*, [20 x i8]*)*, i8* }* %"$f_0"
  %"$f_1" = alloca %Uint32
  %"$$f_0_284" = load { %Uint32 (i8*, [20 x i8]*)*, i8* }, { %Uint32 (i8*, [20 x i8]*)*, i8* }* %"$f_0"
  %"$$f_0_fptr_285" = extractvalue { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$$f_0_284", 0
  %"$$f_0_envptr_286" = extractvalue { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$$f_0_284", 1
  %"$$f_0_h_287" = alloca [20 x i8]
  %"$h_288" = load [20 x i8], [20 x i8]* %h
  store [20 x i8] %"$h_288", [20 x i8]* %"$$f_0_h_287"
  %"$$f_0_call_289" = call %Uint32 %"$$f_0_fptr_285"(i8* %"$$f_0_envptr_286", [20 x i8]* %"$$f_0_h_287")
  store %Uint32 %"$$f_0_call_289", %Uint32* %"$f_1"
  %"$$f_1_290" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_290", %Uint32* %res
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }
  %"$g_291" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_292" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_291", 0
  %"$g_envptr_293" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_291", 1
  %"$res_294" = load %Uint32, %Uint32* %res
  %"$g_call_295" = call { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$g_fptr_292"(i8* %"$g_envptr_293", %Uint32 %"$res_294")
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$g_call_295", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_296" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_297" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_2_296", 0
  %"$$g_2_envptr_298" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_2_296", 1
  %"$t_299" = load %TName_List_ByStr20*, %TName_List_ByStr20** %t
  %"$$g_2_call_300" = call %Uint32 %"$$g_2_fptr_297"(i8* %"$$g_2_envptr_298", %TName_List_ByStr20* %"$t_299")
  store %Uint32 %"$$g_2_call_300", %Uint32* %"$g_3"
  %"$$g_3_301" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_301", %Uint32* %"$retval_31"
  br label %"$matchsucc_269"

"$Nil_302":                                       ; preds = %entry
  %"$l_303" = bitcast %TName_List_ByStr20* %1 to %CName_Nil_ByStr20*
  %"$z_304" = load %Uint32, %Uint32* %z
  store %Uint32 %"$z_304", %Uint32* %"$retval_31"
  br label %"$matchsucc_269"

"$empty_default_272":                             ; preds = %entry
  br label %"$matchsucc_269"

"$matchsucc_269":                                 ; preds = %"$Nil_302", %"$Cons_273", %"$empty_default_272"
  %"$$retval_31_305" = load %Uint32, %Uint32* %"$retval_31"
  ret %Uint32 %"$$retval_31_305"
}

define internal { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_28"(%"$$fundef_28_env_144"* %0, %Uint32 %1) {
entry:
  %"$$fundef_28_env_f_249" = getelementptr inbounds %"$$fundef_28_env_144", %"$$fundef_28_env_144"* %0, i32 0, i32 0
  %"$f_envload_250" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_249"
  %f = alloca { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_250", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_28_env_g_251" = getelementptr inbounds %"$$fundef_28_env_144", %"$$fundef_28_env_144"* %0, i32 0, i32 1
  %"$g_envload_252" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_251"
  %g = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_252", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_29" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }
  %"$$fundef_30_envp_253_load" = load i8*, i8** @_execptr
  %"$$fundef_30_envp_253_salloc" = call i8* @_salloc(i8* %"$$fundef_30_envp_253_load", i64 40)
  %"$$fundef_30_envp_253" = bitcast i8* %"$$fundef_30_envp_253_salloc" to %"$$fundef_30_env_143"*
  %"$$fundef_30_env_voidp_255" = bitcast %"$$fundef_30_env_143"* %"$$fundef_30_envp_253" to i8*
  %"$$fundef_30_cloval_256" = insertvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } { %Uint32 (i8*, %TName_List_ByStr20*)* bitcast (%Uint32 (%"$$fundef_30_env_143"*, %TName_List_ByStr20*)* @"$fundef_30" to %Uint32 (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_30_env_voidp_255", 1
  %"$$fundef_30_env_f_257" = getelementptr inbounds %"$$fundef_30_env_143", %"$$fundef_30_env_143"* %"$$fundef_30_envp_253", i32 0, i32 0
  %"$f_258" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %f
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_258", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_f_257"
  %"$$fundef_30_env_g_259" = getelementptr inbounds %"$$fundef_30_env_143", %"$$fundef_30_env_143"* %"$$fundef_30_envp_253", i32 0, i32 1
  %"$g_260" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_260", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_g_259"
  %"$$fundef_30_env_z_261" = getelementptr inbounds %"$$fundef_30_env_143", %"$$fundef_30_env_143"* %"$$fundef_30_envp_253", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_30_env_z_261"
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_30_cloval_256", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_29"
  %"$$retval_29_262" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_29"
  ret { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_29_262"
}

define internal { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_26"(%"$$fundef_26_env_145"* %0, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_27" = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_28_envp_240_load" = load i8*, i8** @_execptr
  %"$$fundef_28_envp_240_salloc" = call i8* @_salloc(i8* %"$$fundef_28_envp_240_load", i64 32)
  %"$$fundef_28_envp_240" = bitcast i8* %"$$fundef_28_envp_240_salloc" to %"$$fundef_28_env_144"*
  %"$$fundef_28_env_voidp_242" = bitcast %"$$fundef_28_env_144"* %"$$fundef_28_envp_240" to i8*
  %"$$fundef_28_cloval_243" = insertvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_28_env_144"*, %Uint32)* @"$fundef_28" to { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_28_env_voidp_242", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_28_cloval_243", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_28_env_f_244" = getelementptr inbounds %"$$fundef_28_env_144", %"$$fundef_28_env_144"* %"$$fundef_28_envp_240", i32 0, i32 0
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_244"
  %"$$fundef_28_env_g_245" = getelementptr inbounds %"$$fundef_28_env_144", %"$$fundef_28_env_144"* %"$$fundef_28_envp_240", i32 0, i32 1
  %"$g_246" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_246", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_245"
  %"$g_247" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_247", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_27"
  %"$$retval_27_248" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_27"
  ret { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_27_248"
}

define internal { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_24"(%"$$fundef_24_env_146"* %0) {
entry:
  %"$retval_25" = alloca { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_26_env_145"*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_26" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_25"
  %"$$retval_25_239" = load { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_25"
  ret { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_25_239"
}

define internal { i8*, i8* }* @"$fundef_22"(%"$$fundef_22_env_147"* %0) {
entry:
  %"$retval_23" = alloca { i8*, i8* }*
  %"$dyndisp_table_232_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_232_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_232_salloc_load", i64 48)
  %"$dyndisp_table_232_salloc" = bitcast i8* %"$dyndisp_table_232_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_232" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_232_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_233" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_232", i32 1
  %"$dyndisp_pcast_234" = bitcast { i8*, i8* }* %"$dyndisp_gep_233" to { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_24_env_146"*)* @"$fundef_24" to { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_234"
  store { i8*, i8* }* %"$dyndisp_table_232", { i8*, i8* }** %"$retval_23"
  %"$$retval_23_235" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_23"
  ret { i8*, i8* }* %"$$retval_23_235"
}

define internal %Uint32 @"$fundef_20"(%"$$fundef_20_env_148"* %0, %TName_List_String* %1) {
entry:
  %"$$fundef_20_env_f_187" = getelementptr inbounds %"$$fundef_20_env_148", %"$$fundef_20_env_148"* %0, i32 0, i32 0
  %"$f_envload_188" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_f_187"
  %f = alloca { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_188", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_20_env_g_189" = getelementptr inbounds %"$$fundef_20_env_148", %"$$fundef_20_env_148"* %0, i32 0, i32 1
  %"$g_envload_190" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_g_189"
  %g = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_190", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_20_env_z_191" = getelementptr inbounds %"$$fundef_20_env_148", %"$$fundef_20_env_148"* %0, i32 0, i32 2
  %"$z_envload_192" = load %Uint32, %Uint32* %"$$fundef_20_env_z_191"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_192", %Uint32* %z
  %"$retval_21" = alloca %Uint32
  %"$l_tag_194" = getelementptr inbounds %TName_List_String, %TName_List_String* %1, i32 0, i32 0
  %"$l_tag_195" = load i8, i8* %"$l_tag_194"
  switch i8 %"$l_tag_195", label %"$empty_default_196" [
    i8 0, label %"$Cons_197"
    i8 1, label %"$Nil_225"
  ]

"$Cons_197":                                      ; preds = %entry
  %"$l_198" = bitcast %TName_List_String* %1 to %CName_Cons_String*
  %"$h_gep_199" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$l_198", i32 0, i32 1
  %"$h_load_200" = load %String, %String* %"$h_gep_199"
  %h = alloca %String
  store %String %"$h_load_200", %String* %h
  %"$t_gep_201" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$l_198", i32 0, i32 2
  %"$t_load_202" = load %TName_List_String*, %TName_List_String** %"$t_gep_201"
  %t = alloca %TName_List_String*
  store %TName_List_String* %"$t_load_202", %TName_List_String** %t
  %res = alloca %Uint32
  %"$f_0" = alloca { %Uint32 (i8*, %String)*, i8* }
  %"$f_203" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_204" = extractvalue { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_203", 0
  %"$f_envptr_205" = extractvalue { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_203", 1
  %"$z_206" = load %Uint32, %Uint32* %z
  %"$f_call_207" = call { %Uint32 (i8*, %String)*, i8* } %"$f_fptr_204"(i8* %"$f_envptr_205", %Uint32 %"$z_206")
  store { %Uint32 (i8*, %String)*, i8* } %"$f_call_207", { %Uint32 (i8*, %String)*, i8* }* %"$f_0"
  %"$f_1" = alloca %Uint32
  %"$$f_0_208" = load { %Uint32 (i8*, %String)*, i8* }, { %Uint32 (i8*, %String)*, i8* }* %"$f_0"
  %"$$f_0_fptr_209" = extractvalue { %Uint32 (i8*, %String)*, i8* } %"$$f_0_208", 0
  %"$$f_0_envptr_210" = extractvalue { %Uint32 (i8*, %String)*, i8* } %"$$f_0_208", 1
  %"$h_211" = load %String, %String* %h
  %"$$f_0_call_212" = call %Uint32 %"$$f_0_fptr_209"(i8* %"$$f_0_envptr_210", %String %"$h_211")
  store %Uint32 %"$$f_0_call_212", %Uint32* %"$f_1"
  %"$$f_1_213" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_213", %Uint32* %res
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }
  %"$g_214" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_215" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_214", 0
  %"$g_envptr_216" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_214", 1
  %"$res_217" = load %Uint32, %Uint32* %res
  %"$g_call_218" = call { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$g_fptr_215"(i8* %"$g_envptr_216", %Uint32 %"$res_217")
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$g_call_218", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_219" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_220" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$g_2_219", 0
  %"$$g_2_envptr_221" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$g_2_219", 1
  %"$t_222" = load %TName_List_String*, %TName_List_String** %t
  %"$$g_2_call_223" = call %Uint32 %"$$g_2_fptr_220"(i8* %"$$g_2_envptr_221", %TName_List_String* %"$t_222")
  store %Uint32 %"$$g_2_call_223", %Uint32* %"$g_3"
  %"$$g_3_224" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_224", %Uint32* %"$retval_21"
  br label %"$matchsucc_193"

"$Nil_225":                                       ; preds = %entry
  %"$l_226" = bitcast %TName_List_String* %1 to %CName_Nil_String*
  %"$z_227" = load %Uint32, %Uint32* %z
  store %Uint32 %"$z_227", %Uint32* %"$retval_21"
  br label %"$matchsucc_193"

"$empty_default_196":                             ; preds = %entry
  br label %"$matchsucc_193"

"$matchsucc_193":                                 ; preds = %"$Nil_225", %"$Cons_197", %"$empty_default_196"
  %"$$retval_21_228" = load %Uint32, %Uint32* %"$retval_21"
  ret %Uint32 %"$$retval_21_228"
}

define internal { %Uint32 (i8*, %TName_List_String*)*, i8* } @"$fundef_18"(%"$$fundef_18_env_149"* %0, %Uint32 %1) {
entry:
  %"$$fundef_18_env_f_173" = getelementptr inbounds %"$$fundef_18_env_149", %"$$fundef_18_env_149"* %0, i32 0, i32 0
  %"$f_envload_174" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_173"
  %f = alloca { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_174", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$$fundef_18_env_g_175" = getelementptr inbounds %"$$fundef_18_env_149", %"$$fundef_18_env_149"* %0, i32 0, i32 1
  %"$g_envload_176" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_175"
  %g = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_176", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_19" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }
  %"$$fundef_20_envp_177_load" = load i8*, i8** @_execptr
  %"$$fundef_20_envp_177_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_177_load", i64 40)
  %"$$fundef_20_envp_177" = bitcast i8* %"$$fundef_20_envp_177_salloc" to %"$$fundef_20_env_148"*
  %"$$fundef_20_env_voidp_179" = bitcast %"$$fundef_20_env_148"* %"$$fundef_20_envp_177" to i8*
  %"$$fundef_20_cloval_180" = insertvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } { %Uint32 (i8*, %TName_List_String*)* bitcast (%Uint32 (%"$$fundef_20_env_148"*, %TName_List_String*)* @"$fundef_20" to %Uint32 (i8*, %TName_List_String*)*), i8* undef }, i8* %"$$fundef_20_env_voidp_179", 1
  %"$$fundef_20_env_f_181" = getelementptr inbounds %"$$fundef_20_env_148", %"$$fundef_20_env_148"* %"$$fundef_20_envp_177", i32 0, i32 0
  %"$f_182" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %f
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_182", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_f_181"
  %"$$fundef_20_env_g_183" = getelementptr inbounds %"$$fundef_20_env_148", %"$$fundef_20_env_148"* %"$$fundef_20_envp_177", i32 0, i32 1
  %"$g_184" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_184", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_g_183"
  %"$$fundef_20_env_z_185" = getelementptr inbounds %"$$fundef_20_env_148", %"$$fundef_20_env_148"* %"$$fundef_20_envp_177", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_20_env_z_185"
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$fundef_20_cloval_180", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_19"
  %"$$retval_19_186" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_19"
  ret { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$retval_19_186"
}

define internal { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_16"(%"$$fundef_16_env_150"* %0, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_17" = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_18_envp_164_load" = load i8*, i8** @_execptr
  %"$$fundef_18_envp_164_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_164_load", i64 32)
  %"$$fundef_18_envp_164" = bitcast i8* %"$$fundef_18_envp_164_salloc" to %"$$fundef_18_env_149"*
  %"$$fundef_18_env_voidp_166" = bitcast %"$$fundef_18_env_149"* %"$$fundef_18_envp_164" to i8*
  %"$$fundef_18_cloval_167" = insertvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_String*)*, i8* } (%"$$fundef_18_env_149"*, %Uint32)* @"$fundef_18" to { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_18_env_voidp_166", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_18_cloval_167", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_18_env_f_168" = getelementptr inbounds %"$$fundef_18_env_149", %"$$fundef_18_env_149"* %"$$fundef_18_envp_164", i32 0, i32 0
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_168"
  %"$$fundef_18_env_g_169" = getelementptr inbounds %"$$fundef_18_env_149", %"$$fundef_18_env_149"* %"$$fundef_18_envp_164", i32 0, i32 1
  %"$g_170" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_170", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_169"
  %"$g_171" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_171", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_17"
  %"$$retval_17_172" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_17"
  ret { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_17_172"
}

define internal { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_14"(%"$$fundef_14_env_151"* %0) {
entry:
  %"$retval_15" = alloca { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_16_env_150"*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_16" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_15"
  %"$$retval_15_163" = load { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_15"
  ret { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_15_163"
}

define internal { i8*, i8* }* @"$fundef_12"(%"$$fundef_12_env_152"* %0) {
entry:
  %"$retval_13" = alloca { i8*, i8* }*
  %"$dyndisp_table_156_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_156_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_156_salloc_load", i64 48)
  %"$dyndisp_table_156_salloc" = bitcast i8* %"$dyndisp_table_156_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_156" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_156_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_157" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_156", i32 1
  %"$dyndisp_pcast_158" = bitcast { i8*, i8* }* %"$dyndisp_gep_157" to { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_14_env_151"*)* @"$fundef_14" to { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_158"
  store { i8*, i8* }* %"$dyndisp_table_156", { i8*, i8* }** %"$retval_13"
  %"$$retval_13_159" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_13"
  ret { i8*, i8* }* %"$$retval_13_159"
}

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_493"(i8* %0) {
entry:
  %"$dyndisp_table_500_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_500_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_500_salloc_load", i64 48)
  %"$dyndisp_table_500_salloc" = bitcast i8* %"$dyndisp_table_500_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_500" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_500_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_501" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_500", i32 0
  %"$dyndisp_pcast_502" = bitcast { i8*, i8* }* %"$dyndisp_gep_501" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_12_env_152"*)* @"$fundef_12" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_502"
  %"$dyndisp_gep_503" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_500", i32 2
  %"$dyndisp_pcast_504" = bitcast { i8*, i8* }* %"$dyndisp_gep_503" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_22_env_147"*)* @"$fundef_22" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_504"
  store { i8*, i8* }* %"$dyndisp_table_500", { i8*, i8* }** @list_foldl
  %"$$fundef_32_envp_505_load" = load i8*, i8** @_execptr
  %"$$fundef_32_envp_505_salloc" = call i8* @_salloc(i8* %"$$fundef_32_envp_505_load", i64 8)
  %"$$fundef_32_envp_505" = bitcast i8* %"$$fundef_32_envp_505_salloc" to %"$$fundef_32_env_142"*
  %"$$fundef_32_env_voidp_507" = bitcast %"$$fundef_32_env_142"* %"$$fundef_32_envp_505" to i8*
  %"$$fundef_32_cloval_508" = insertvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_String*)*, i8* } (%"$$fundef_32_env_142"*)* @"$fundef_32" to { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_32_env_voidp_507", 1
  %"$$fundef_32_env_list_foldl_509" = getelementptr inbounds %"$$fundef_32_env_142", %"$$fundef_32_env_142"* %"$$fundef_32_envp_505", i32 0, i32 0
  %"$list_foldl_510" = load { i8*, i8* }*, { i8*, i8* }** @list_foldl
  store { i8*, i8* }* %"$list_foldl_510", { i8*, i8* }** %"$$fundef_32_env_list_foldl_509"
  %"$$fundef_38_env_voidp_512" = bitcast %"$$fundef_32_env_142"* %"$$fundef_32_envp_505" to i8*
  %"$$fundef_38_cloval_513" = insertvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_38_env_139"*)* @"$fundef_38" to { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_38_env_voidp_512", 1
  %"$dyndisp_table_514_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_514_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_514_salloc_load", i64 48)
  %"$dyndisp_table_514_salloc" = bitcast i8* %"$dyndisp_table_514_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_514" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_514_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_515" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_514", i32 0
  %"$dyndisp_pcast_516" = bitcast { i8*, i8* }* %"$dyndisp_gep_515" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$$fundef_32_cloval_508", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_516"
  %"$dyndisp_gep_517" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_514", i32 2
  %"$dyndisp_pcast_518" = bitcast { i8*, i8* }* %"$dyndisp_gep_517" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$$fundef_38_cloval_513", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_518"
  store { i8*, i8* }* %"$dyndisp_table_514", { i8*, i8* }** @list_length
  %"$expr_44" = alloca %Uint32
  %list_length2 = alloca { i8*, i8* }*
  %"$$fundef_45_envp_519_load" = load i8*, i8** @_execptr
  %"$$fundef_45_envp_519_salloc" = call i8* @_salloc(i8* %"$$fundef_45_envp_519_load", i64 8)
  %"$$fundef_45_envp_519" = bitcast i8* %"$$fundef_45_envp_519_salloc" to %"$$fundef_45_env_136"*
  %"$$fundef_45_env_voidp_521" = bitcast %"$$fundef_45_env_136"* %"$$fundef_45_envp_519" to i8*
  %"$$fundef_45_cloval_522" = insertvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_String*)*, i8* } (%"$$fundef_45_env_136"*)* @"$fundef_45" to { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_45_env_voidp_521", 1
  %"$$fundef_45_env_list_length_523" = getelementptr inbounds %"$$fundef_45_env_136", %"$$fundef_45_env_136"* %"$$fundef_45_envp_519", i32 0, i32 0
  %"$list_length_524" = load { i8*, i8* }*, { i8*, i8* }** @list_length
  store { i8*, i8* }* %"$list_length_524", { i8*, i8* }** %"$$fundef_45_env_list_length_523"
  %"$$fundef_49_env_voidp_526" = bitcast %"$$fundef_45_env_136"* %"$$fundef_45_envp_519" to i8*
  %"$$fundef_49_cloval_527" = insertvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_49_env_134"*)* @"$fundef_49" to { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_49_env_voidp_526", 1
  %"$dyndisp_table_528_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_528_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_528_salloc_load", i64 48)
  %"$dyndisp_table_528_salloc" = bitcast i8* %"$dyndisp_table_528_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_528" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_528_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_529" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_528", i32 0
  %"$dyndisp_pcast_530" = bitcast { i8*, i8* }* %"$dyndisp_gep_529" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$$fundef_45_cloval_522", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_530"
  %"$dyndisp_gep_531" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_528", i32 2
  %"$dyndisp_pcast_532" = bitcast { i8*, i8* }* %"$dyndisp_gep_531" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$$fundef_49_cloval_527", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_532"
  store { i8*, i8* }* %"$dyndisp_table_528", { i8*, i8* }** %list_length2
  %t = alloca { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* }
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_53_env_132"*, %Bool*)* @"$fundef_53" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* }* %t
  %true = alloca %Bool*
  %"$adtval_536_load" = load i8*, i8** @_execptr
  %"$adtval_536_salloc" = call i8* @_salloc(i8* %"$adtval_536_load", i64 1)
  %"$adtval_536" = bitcast i8* %"$adtval_536_salloc" to %True*
  %"$adtgep_537" = getelementptr inbounds %True, %True* %"$adtval_536", i32 0, i32 0
  store i8 0, i8* %"$adtgep_537"
  %"$adtptr_538" = bitcast %True* %"$adtval_536" to %Bool*
  store %Bool* %"$adtptr_538", %Bool** %true
  %f = alloca { i8*, i8* }*
  %"$t_7" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$t_539" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* }* %t
  %"$t_fptr_540" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* } %"$t_539", 0
  %"$t_envptr_541" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* } %"$t_539", 1
  %"$true_542" = load %Bool*, %Bool** %true
  %"$t_call_543" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_540"(i8* %"$t_envptr_541", %Bool* %"$true_542")
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_543", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$t_7"
  %"$t_8" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$$t_7_544" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$t_7"
  %"$$t_7_fptr_545" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$t_7_544", 0
  %"$$t_7_envptr_546" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$t_7_544", 1
  %"$list_length_547" = load { i8*, i8* }*, { i8*, i8* }** @list_length
  %"$$t_7_call_548" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_7_fptr_545"(i8* %"$$t_7_envptr_546", { i8*, i8* }* %"$list_length_547")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_7_call_548", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$t_8"
  %"$t_9" = alloca { i8*, i8* }*
  %"$$t_8_549" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$t_8"
  %"$$t_8_fptr_550" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_8_549", 0
  %"$$t_8_envptr_551" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_8_549", 1
  %"$list_length2_552" = load { i8*, i8* }*, { i8*, i8* }** %list_length2
  %"$$t_8_call_553" = call { i8*, i8* }* %"$$t_8_fptr_550"(i8* %"$$t_8_envptr_551", { i8*, i8* }* %"$list_length2_552")
  store { i8*, i8* }* %"$$t_8_call_553", { i8*, i8* }** %"$t_9"
  %"$$t_9_554" = load { i8*, i8* }*, { i8*, i8* }** %"$t_9"
  store { i8*, i8* }* %"$$t_9_554", { i8*, i8* }** %f
  %f_string = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }
  %"$f_555" = load { i8*, i8* }*, { i8*, i8* }** %f
  %"$f_556" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_555", i32 0
  %"$f_557" = bitcast { i8*, i8* }* %"$f_556" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*
  %"$f_558" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* %"$f_557"
  %"$f_fptr_559" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$f_558", 0
  %"$f_envptr_560" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$f_558", 1
  %"$f_call_561" = call { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_fptr_559"(i8* %"$f_envptr_560")
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_call_561", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %f_string
  %f_bystr20 = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }
  %"$f_562" = load { i8*, i8* }*, { i8*, i8* }** %f
  %"$f_563" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_562", i32 2
  %"$f_564" = bitcast { i8*, i8* }* %"$f_563" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*
  %"$f_565" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* %"$f_564"
  %"$f_fptr_566" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$f_565", 0
  %"$f_envptr_567" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$f_565", 1
  %"$f_call_568" = call { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_fptr_566"(i8* %"$f_envptr_567")
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_call_568", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %f_bystr20
  %nil_string = alloca %TName_List_String*
  %"$adtval_569_load" = load i8*, i8** @_execptr
  %"$adtval_569_salloc" = call i8* @_salloc(i8* %"$adtval_569_load", i64 1)
  %"$adtval_569" = bitcast i8* %"$adtval_569_salloc" to %CName_Nil_String*
  %"$adtgep_570" = getelementptr inbounds %CName_Nil_String, %CName_Nil_String* %"$adtval_569", i32 0, i32 0
  store i8 1, i8* %"$adtgep_570"
  %"$adtptr_571" = bitcast %CName_Nil_String* %"$adtval_569" to %TName_List_String*
  store %TName_List_String* %"$adtptr_571", %TName_List_String** %nil_string
  %nil_bystr20 = alloca %TName_List_ByStr20*
  %"$adtval_572_load" = load i8*, i8** @_execptr
  %"$adtval_572_salloc" = call i8* @_salloc(i8* %"$adtval_572_load", i64 1)
  %"$adtval_572" = bitcast i8* %"$adtval_572_salloc" to %CName_Nil_ByStr20*
  %"$adtgep_573" = getelementptr inbounds %CName_Nil_ByStr20, %CName_Nil_ByStr20* %"$adtval_572", i32 0, i32 0
  store i8 1, i8* %"$adtgep_573"
  %"$adtptr_574" = bitcast %CName_Nil_ByStr20* %"$adtval_572" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_574", %TName_List_ByStr20** %nil_bystr20
  %a = alloca %Uint32
  %"$f_string_10" = alloca %Uint32
  %"$f_string_575" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %f_string
  %"$f_string_fptr_576" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_string_575", 0
  %"$f_string_envptr_577" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_string_575", 1
  %"$nil_string_578" = load %TName_List_String*, %TName_List_String** %nil_string
  %"$f_string_call_579" = call %Uint32 %"$f_string_fptr_576"(i8* %"$f_string_envptr_577", %TName_List_String* %"$nil_string_578")
  store %Uint32 %"$f_string_call_579", %Uint32* %"$f_string_10"
  %"$$f_string_10_580" = load %Uint32, %Uint32* %"$f_string_10"
  store %Uint32 %"$$f_string_10_580", %Uint32* %a
  %b = alloca %Uint32
  %"$f_bystr20_11" = alloca %Uint32
  %"$f_bystr20_581" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %f_bystr20
  %"$f_bystr20_fptr_582" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_bystr20_581", 0
  %"$f_bystr20_envptr_583" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_bystr20_581", 1
  %"$nil_bystr20_584" = load %TName_List_ByStr20*, %TName_List_ByStr20** %nil_bystr20
  %"$f_bystr20_call_585" = call %Uint32 %"$f_bystr20_fptr_582"(i8* %"$f_bystr20_envptr_583", %TName_List_ByStr20* %"$nil_bystr20_584")
  store %Uint32 %"$f_bystr20_call_585", %Uint32* %"$f_bystr20_11"
  %"$$f_bystr20_11_586" = load %Uint32, %Uint32* %"$f_bystr20_11"
  store %Uint32 %"$$f_bystr20_11_586", %Uint32* %b
  %"$a_587" = load %Uint32, %Uint32* %a
  %"$b_588" = load %Uint32, %Uint32* %b
  %"$add_call_589" = call %Uint32 @_add_Uint32(%Uint32 %"$a_587", %Uint32 %"$b_588")
  store %Uint32 %"$add_call_589", %Uint32* %"$expr_44"
  %"$$expr_44_590" = load %Uint32, %Uint32* %"$expr_44"
  ret %Uint32 %"$$expr_44_590"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_591" = call %Uint32 @"$scilla_expr_493"(i8* null)
  %"$pval_592" = alloca %Uint32
  %"$memvoidcast_593" = bitcast %Uint32* %"$pval_592" to i8*
  store %Uint32 %"$exprval_591", %Uint32* %"$pval_592"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_63", i8* %"$memvoidcast_593")
  ret void
}
