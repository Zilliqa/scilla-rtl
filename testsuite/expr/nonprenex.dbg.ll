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
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_59" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_91" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_90"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_90" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_92"**, %"$TyDescrTy_ADTTyp_91"* }
%"$TyDescrTy_ADTTyp_Constr_92" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$ParamDescr_1026" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1027" = type { %ParamDescrString, i32, %"$ParamDescr_1026"* }
%"$$fundef_57_env_132" = type { %TName_Bool*, { i8*, i8* }* }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$$fundef_55_env_133" = type { %TName_Bool* }
%"$$fundef_53_env_134" = type {}
%Uint32 = type { i32 }
%"$$fundef_51_env_135" = type { { i8*, i8* }* }
%TName_List_ByStr20 = type { i8, %CName_Cons_ByStr20*, %CName_Nil_ByStr20* }
%CName_Cons_ByStr20 = type <{ i8, [20 x i8], %TName_List_ByStr20* }>
%CName_Nil_ByStr20 = type <{ i8 }>
%"$$fundef_49_env_136" = type { { i8*, i8* }* }
%"$$fundef_47_env_137" = type { { i8*, i8* }* }
%TName_List_String = type { i8, %CName_Cons_String*, %CName_Nil_String* }
%CName_Cons_String = type <{ i8, %String, %TName_List_String* }>
%String = type { i8*, i32 }
%CName_Nil_String = type <{ i8 }>
%"$$fundef_45_env_138" = type { { i8*, i8* }* }
%"$$fundef_42_env_139" = type { %Uint32, %Uint32 }
%"$$fundef_40_env_140" = type { %Uint32 }
%"$$fundef_38_env_141" = type { { i8*, i8* }* }
%"$$fundef_36_env_142" = type { %Uint32, %Uint32 }
%"$$fundef_34_env_143" = type { %Uint32 }
%"$$fundef_32_env_144" = type { { i8*, i8* }* }
%"$$fundef_30_env_145" = type { { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_28_env_146" = type { { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_26_env_147" = type {}
%"$$fundef_24_env_148" = type {}
%"$$fundef_22_env_149" = type {}
%"$$fundef_20_env_150" = type { { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_18_env_151" = type { { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_16_env_152" = type {}
%"$$fundef_14_env_153" = type {}
%"$$fundef_12_env_154" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
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
@"$TyDescr_ADT_Bool_93" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_90"* @"$TyDescr_Bool_ADTTyp_Specl_108" to i8*) }
@"$TyDescr_ADT_List_ByStr20_94" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_90"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_120" to i8*) }
@"$TyDescr_ADT_List_String_95" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_90"* @"$TyDescr_List_String_ADTTyp_Specl_129" to i8*) }
@"$TyDescr_Bool_ADTTyp_99" = unnamed_addr constant %"$TyDescrTy_ADTTyp_91" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_110", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_90"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_90"*], [1 x %"$TyDescrTy_ADTTyp_Specl_90"*]* @"$TyDescr_Bool_ADTTyp_m_specls_109", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_100" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_101" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_102" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_92" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_101", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_100", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_103" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_104" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_105" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_92" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_104", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_103", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_106" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_92"*] [%"$TyDescrTy_ADTTyp_Constr_92"* @"$TyDescr_Bool_True_ADTTyp_Constr_102", %"$TyDescrTy_ADTTyp_Constr_92"* @"$TyDescr_Bool_False_ADTTyp_Constr_105"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_107" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_108" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_90" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_107", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_92"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_92"*], [2 x %"$TyDescrTy_ADTTyp_Constr_92"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_106", i32 0, i32 0), %"$TyDescrTy_ADTTyp_91"* @"$TyDescr_Bool_ADTTyp_99" }
@"$TyDescr_Bool_ADTTyp_m_specls_109" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_90"*] [%"$TyDescrTy_ADTTyp_Specl_90"* @"$TyDescr_Bool_ADTTyp_Specl_108"]
@"$TyDescr_ADT_Bool_110" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_111" = unnamed_addr constant %"$TyDescrTy_ADTTyp_91" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_131", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_90"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_90"*], [2 x %"$TyDescrTy_ADTTyp_Specl_90"*]* @"$TyDescr_List_ADTTyp_m_specls_130", i32 0, i32 0) }
@"$TyDescr_List_Cons_ByStr20_Constr_m_args_112" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_89", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_94"]
@"$TyDescr_ADT_Cons_113" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_114" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_92" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_113", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_Constr_m_args_112", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_Constr_m_args_115" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_116" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_117" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_92" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_116", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_Constr_m_args_115", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_118" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_92"*] [%"$TyDescrTy_ADTTyp_Constr_92"* @"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_114", %"$TyDescrTy_ADTTyp_Constr_92"* @"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_117"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_119" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_89"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_120" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_90" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_119", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_92"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_92"*], [2 x %"$TyDescrTy_ADTTyp_Constr_92"*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_118", i32 0, i32 0), %"$TyDescrTy_ADTTyp_91"* @"$TyDescr_List_ADTTyp_111" }
@"$TyDescr_List_Cons_String_Constr_m_args_121" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_77", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_95"]
@"$TyDescr_ADT_Cons_122" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_String_ADTTyp_Constr_123" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_92" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_122", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_String_Constr_m_args_121", i32 0, i32 0) }
@"$TyDescr_List_Nil_String_Constr_m_args_124" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_125" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_String_ADTTyp_Constr_126" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_92" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_125", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_String_Constr_m_args_124", i32 0, i32 0) }
@"$TyDescr_List_String_ADTTyp_Specl_m_constrs_127" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_92"*] [%"$TyDescrTy_ADTTyp_Constr_92"* @"$TyDescr_List_Cons_String_ADTTyp_Constr_123", %"$TyDescrTy_ADTTyp_Constr_92"* @"$TyDescr_List_Nil_String_ADTTyp_Constr_126"]
@"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_128" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_77"]
@"$TyDescr_List_String_ADTTyp_Specl_129" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_90" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_128", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_92"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_92"*], [2 x %"$TyDescrTy_ADTTyp_Constr_92"*]* @"$TyDescr_List_String_ADTTyp_Specl_m_constrs_127", i32 0, i32 0), %"$TyDescrTy_ADTTyp_91"* @"$TyDescr_List_ADTTyp_111" }
@"$TyDescr_List_ADTTyp_m_specls_130" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_90"*] [%"$TyDescrTy_ADTTyp_Specl_90"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_120", %"$TyDescrTy_ADTTyp_Specl_90"* @"$TyDescr_List_String_ADTTyp_Specl_129"]
@"$TyDescr_ADT_List_131" = unnamed_addr constant [4 x i8] c"List"
@list_foldl = global { i8*, i8* }* null
@ListUtils.list_length = global { i8*, i8* }* null
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_83", %_TyDescrTy_Typ* @"$TyDescr_Int64_65", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_93", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_89", %_TyDescrTy_Typ* @"$TyDescr_Uint256_75", %_TyDescrTy_Typ* @"$TyDescr_Uint32_63", %_TyDescrTy_Typ* @"$TyDescr_Uint64_67", %_TyDescrTy_Typ* @"$TyDescr_Bnum_79", %_TyDescrTy_Typ* @"$TyDescr_Uint128_71", %_TyDescrTy_Typ* @"$TyDescr_Exception_85", %_TyDescrTy_Typ* @"$TyDescr_String_77", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_94", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_95", %_TyDescrTy_Typ* @"$TyDescr_Int256_73", %_TyDescrTy_Typ* @"$TyDescr_Int128_69", %_TyDescrTy_Typ* @"$TyDescr_Bystr_87", %_TyDescrTy_Typ* @"$TyDescr_Message_81", %_TyDescrTy_Typ* @"$TyDescr_Int32_61"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_1026"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1027"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { i8*, i8* }* @"$fundef_57"(%"$$fundef_57_env_132"* %0, { i8*, i8* }* %1) !dbg !4 {
entry:
  %"$$fundef_57_env_b_780" = getelementptr inbounds %"$$fundef_57_env_132", %"$$fundef_57_env_132"* %0, i32 0, i32 0
  %"$b_envload_781" = load %TName_Bool*, %TName_Bool** %"$$fundef_57_env_b_780", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_781", %TName_Bool** %b, align 8
  %"$$fundef_57_env_f_782" = getelementptr inbounds %"$$fundef_57_env_132", %"$$fundef_57_env_132"* %0, i32 0, i32 1
  %"$f_envload_783" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_57_env_f_782", align 8
  %f = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$f_envload_783", { i8*, i8* }** %f, align 8
  %"$retval_58" = alloca { i8*, i8* }*, align 8
  %"$gasrem_784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_785" = icmp ugt i64 2, %"$gasrem_784"
  br i1 %"$gascmp_785", label %"$out_of_gas_786", label %"$have_gas_787"

"$out_of_gas_786":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_787"

"$have_gas_787":                                  ; preds = %"$out_of_gas_786", %entry
  %"$consume_788" = sub i64 %"$gasrem_784", 2
  store i64 %"$consume_788", i64* @_gasrem, align 8
  %"$b_790" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_791" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_790", i32 0, i32 0
  %"$b_tag_792" = load i8, i8* %"$b_tag_791", align 1
  switch i8 %"$b_tag_792", label %"$empty_default_793" [
    i8 0, label %"$True_794"
    i8 1, label %"$False_801"
  ], !dbg !8

"$True_794":                                      ; preds = %"$have_gas_787"
  %"$b_795" = bitcast %TName_Bool* %"$b_790" to %CName_True*
  %"$gasrem_796" = load i64, i64* @_gasrem, align 8
  %"$gascmp_797" = icmp ugt i64 1, %"$gasrem_796"
  br i1 %"$gascmp_797", label %"$out_of_gas_798", label %"$have_gas_799"

"$out_of_gas_798":                                ; preds = %"$True_794"
  call void @_out_of_gas()
  br label %"$have_gas_799"

"$have_gas_799":                                  ; preds = %"$out_of_gas_798", %"$True_794"
  %"$consume_800" = sub i64 %"$gasrem_796", 1
  store i64 %"$consume_800", i64* @_gasrem, align 8
  store { i8*, i8* }* %1, { i8*, i8* }** %"$retval_58", align 8, !dbg !9
  br label %"$matchsucc_789"

"$False_801":                                     ; preds = %"$have_gas_787"
  %"$b_802" = bitcast %TName_Bool* %"$b_790" to %CName_False*
  %"$gasrem_803" = load i64, i64* @_gasrem, align 8
  %"$gascmp_804" = icmp ugt i64 1, %"$gasrem_803"
  br i1 %"$gascmp_804", label %"$out_of_gas_805", label %"$have_gas_806"

"$out_of_gas_805":                                ; preds = %"$False_801"
  call void @_out_of_gas()
  br label %"$have_gas_806"

"$have_gas_806":                                  ; preds = %"$out_of_gas_805", %"$False_801"
  %"$consume_807" = sub i64 %"$gasrem_803", 1
  store i64 %"$consume_807", i64* @_gasrem, align 8
  %"$f_808" = load { i8*, i8* }*, { i8*, i8* }** %f, align 8
  store { i8*, i8* }* %"$f_808", { i8*, i8* }** %"$retval_58", align 8, !dbg !12
  br label %"$matchsucc_789"

"$empty_default_793":                             ; preds = %"$have_gas_787"
  br label %"$matchsucc_789"

"$matchsucc_789":                                 ; preds = %"$have_gas_806", %"$have_gas_799", %"$empty_default_793"
  %"$$retval_58_809" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_58", align 8
  ret { i8*, i8* }* %"$$retval_58_809"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_55"(%"$$fundef_55_env_133"* %0, { i8*, i8* }* %1) !dbg !14 {
entry:
  %"$$fundef_55_env_b_765" = getelementptr inbounds %"$$fundef_55_env_133", %"$$fundef_55_env_133"* %0, i32 0, i32 0
  %"$b_envload_766" = load %TName_Bool*, %TName_Bool** %"$$fundef_55_env_b_765", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_766", %TName_Bool** %b, align 8
  %"$retval_56" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_768" = icmp ugt i64 1, %"$gasrem_767"
  br i1 %"$gascmp_768", label %"$out_of_gas_769", label %"$have_gas_770"

"$out_of_gas_769":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_770"

"$have_gas_770":                                  ; preds = %"$out_of_gas_769", %entry
  %"$consume_771" = sub i64 %"$gasrem_767", 1
  store i64 %"$consume_771", i64* @_gasrem, align 8
  %"$$fundef_57_envp_772_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_57_envp_772_salloc" = call i8* @_salloc(i8* %"$$fundef_57_envp_772_load", i64 16)
  %"$$fundef_57_envp_772" = bitcast i8* %"$$fundef_57_envp_772_salloc" to %"$$fundef_57_env_132"*
  %"$$fundef_57_env_voidp_774" = bitcast %"$$fundef_57_env_132"* %"$$fundef_57_envp_772" to i8*
  %"$$fundef_57_cloval_775" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_57_env_132"*, { i8*, i8* }*)* @"$fundef_57" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_57_env_voidp_774", 1
  %"$$fundef_57_env_b_776" = getelementptr inbounds %"$$fundef_57_env_132", %"$$fundef_57_env_132"* %"$$fundef_57_envp_772", i32 0, i32 0
  %"$b_777" = load %TName_Bool*, %TName_Bool** %b, align 8
  store %TName_Bool* %"$b_777", %TName_Bool** %"$$fundef_57_env_b_776", align 8
  %"$$fundef_57_env_f_778" = getelementptr inbounds %"$$fundef_57_env_132", %"$$fundef_57_env_132"* %"$$fundef_57_envp_772", i32 0, i32 1
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_57_env_f_778", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_57_cloval_775", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_56", align 8, !dbg !15
  %"$$retval_56_779" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_56", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_56_779"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_53"(%"$$fundef_53_env_134"* %0, %TName_Bool* %1) !dbg !16 {
entry:
  %"$retval_54" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_755" = icmp ugt i64 1, %"$gasrem_754"
  br i1 %"$gascmp_755", label %"$out_of_gas_756", label %"$have_gas_757"

"$out_of_gas_756":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_757"

"$have_gas_757":                                  ; preds = %"$out_of_gas_756", %entry
  %"$consume_758" = sub i64 %"$gasrem_754", 1
  store i64 %"$consume_758", i64* @_gasrem, align 8
  %"$$fundef_55_envp_759_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_55_envp_759_salloc" = call i8* @_salloc(i8* %"$$fundef_55_envp_759_load", i64 8)
  %"$$fundef_55_envp_759" = bitcast i8* %"$$fundef_55_envp_759_salloc" to %"$$fundef_55_env_133"*
  %"$$fundef_55_env_voidp_761" = bitcast %"$$fundef_55_env_133"* %"$$fundef_55_envp_759" to i8*
  %"$$fundef_55_cloval_762" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_55_env_133"*, { i8*, i8* }*)* @"$fundef_55" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_55_env_voidp_761", 1
  %"$$fundef_55_env_b_763" = getelementptr inbounds %"$$fundef_55_env_133", %"$$fundef_55_env_133"* %"$$fundef_55_envp_759", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_55_env_b_763", align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_55_cloval_762", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_54", align 8, !dbg !17
  %"$$retval_54_764" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_54", align 8
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_54_764"
}

define internal %Uint32 @"$fundef_51"(%"$$fundef_51_env_135"* %0, %TName_List_ByStr20* %1) !dbg !18 {
entry:
  %"$$fundef_51_env_ListUtils.list_length_701" = getelementptr inbounds %"$$fundef_51_env_135", %"$$fundef_51_env_135"* %0, i32 0, i32 0
  %"$ListUtils.list_length_envload_702" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_51_env_ListUtils.list_length_701", align 8
  %ListUtils.list_length = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_length_envload_702", { i8*, i8* }** %ListUtils.list_length, align 8
  %"$retval_52" = alloca %Uint32, align 8
  %"$gasrem_703" = load i64, i64* @_gasrem, align 8
  %"$gascmp_704" = icmp ugt i64 1, %"$gasrem_703"
  br i1 %"$gascmp_704", label %"$out_of_gas_705", label %"$have_gas_706"

"$out_of_gas_705":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_706"

"$have_gas_706":                                  ; preds = %"$out_of_gas_705", %entry
  %"$consume_707" = sub i64 %"$gasrem_703", 1
  store i64 %"$consume_707", i64* @_gasrem, align 8
  %ll = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_708" = load i64, i64* @_gasrem, align 8
  %"$gascmp_709" = icmp ugt i64 1, %"$gasrem_708"
  br i1 %"$gascmp_709", label %"$out_of_gas_710", label %"$have_gas_711"

"$out_of_gas_710":                                ; preds = %"$have_gas_706"
  call void @_out_of_gas()
  br label %"$have_gas_711"

"$have_gas_711":                                  ; preds = %"$out_of_gas_710", %"$have_gas_706"
  %"$consume_712" = sub i64 %"$gasrem_708", 1
  store i64 %"$consume_712", i64* @_gasrem, align 8
  %"$ListUtils.list_length_713" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_length, align 8
  %"$ListUtils.list_length_714" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_713", i32 2
  %"$ListUtils.list_length_715" = bitcast { i8*, i8* }* %"$ListUtils.list_length_714" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_716" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_715", align 8
  %"$ListUtils.list_length_fptr_717" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_716", 0
  %"$ListUtils.list_length_envptr_718" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_716", 1
  %"$ListUtils.list_length_call_719" = call { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$ListUtils.list_length_fptr_717"(i8* %"$ListUtils.list_length_envptr_718"), !dbg !19
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$ListUtils.list_length_call_719", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %ll, align 8, !dbg !20
  %"$gasrem_720" = load i64, i64* @_gasrem, align 8
  %"$gascmp_721" = icmp ugt i64 1, %"$gasrem_720"
  br i1 %"$gascmp_721", label %"$out_of_gas_722", label %"$have_gas_723"

"$out_of_gas_722":                                ; preds = %"$have_gas_711"
  call void @_out_of_gas()
  br label %"$have_gas_723"

"$have_gas_723":                                  ; preds = %"$out_of_gas_722", %"$have_gas_711"
  %"$consume_724" = sub i64 %"$gasrem_720", 1
  store i64 %"$consume_724", i64* @_gasrem, align 8
  %n = alloca %Uint32, align 8
  %"$gasrem_725" = load i64, i64* @_gasrem, align 8
  %"$gascmp_726" = icmp ugt i64 1, %"$gasrem_725"
  br i1 %"$gascmp_726", label %"$out_of_gas_727", label %"$have_gas_728"

"$out_of_gas_727":                                ; preds = %"$have_gas_723"
  call void @_out_of_gas()
  br label %"$have_gas_728"

"$have_gas_728":                                  ; preds = %"$out_of_gas_727", %"$have_gas_723"
  %"$consume_729" = sub i64 %"$gasrem_725", 1
  store i64 %"$consume_729", i64* @_gasrem, align 8
  %"$ll_6" = alloca %Uint32, align 8
  %"$ll_730" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %ll, align 8
  %"$ll_fptr_731" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$ll_730", 0
  %"$ll_envptr_732" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$ll_730", 1
  %"$ll_call_733" = call %Uint32 %"$ll_fptr_731"(i8* %"$ll_envptr_732", %TName_List_ByStr20* %1), !dbg !21
  store %Uint32 %"$ll_call_733", %Uint32* %"$ll_6", align 4, !dbg !21
  %"$$ll_6_734" = load %Uint32, %Uint32* %"$ll_6", align 4
  store %Uint32 %"$$ll_6_734", %Uint32* %n, align 4, !dbg !21
  %"$gasrem_735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_736" = icmp ugt i64 1, %"$gasrem_735"
  br i1 %"$gascmp_736", label %"$out_of_gas_737", label %"$have_gas_738"

"$out_of_gas_737":                                ; preds = %"$have_gas_728"
  call void @_out_of_gas()
  br label %"$have_gas_738"

"$have_gas_738":                                  ; preds = %"$out_of_gas_737", %"$have_gas_728"
  %"$consume_739" = sub i64 %"$gasrem_735", 1
  store i64 %"$consume_739", i64* @_gasrem, align 8
  %two = alloca %Uint32, align 8
  %"$gasrem_740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_741" = icmp ugt i64 1, %"$gasrem_740"
  br i1 %"$gascmp_741", label %"$out_of_gas_742", label %"$have_gas_743"

"$out_of_gas_742":                                ; preds = %"$have_gas_738"
  call void @_out_of_gas()
  br label %"$have_gas_743"

"$have_gas_743":                                  ; preds = %"$out_of_gas_742", %"$have_gas_738"
  %"$consume_744" = sub i64 %"$gasrem_740", 1
  store i64 %"$consume_744", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %two, align 4, !dbg !22
  %"$gasrem_745" = load i64, i64* @_gasrem, align 8
  %"$gascmp_746" = icmp ugt i64 4, %"$gasrem_745"
  br i1 %"$gascmp_746", label %"$out_of_gas_747", label %"$have_gas_748"

"$out_of_gas_747":                                ; preds = %"$have_gas_743"
  call void @_out_of_gas()
  br label %"$have_gas_748"

"$have_gas_748":                                  ; preds = %"$out_of_gas_747", %"$have_gas_743"
  %"$consume_749" = sub i64 %"$gasrem_745", 4
  store i64 %"$consume_749", i64* @_gasrem, align 8
  %"$n_750" = load %Uint32, %Uint32* %n, align 4
  %"$two_751" = load %Uint32, %Uint32* %two, align 4
  %"$add_call_752" = call %Uint32 @_add_Uint32(%Uint32 %"$n_750", %Uint32 %"$two_751"), !dbg !23
  store %Uint32 %"$add_call_752", %Uint32* %"$retval_52", align 4, !dbg !23
  %"$$retval_52_753" = load %Uint32, %Uint32* %"$retval_52", align 4
  ret %Uint32 %"$$retval_52_753"
}

define internal { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_49"(%"$$fundef_49_env_136"* %0) !dbg !24 {
entry:
  %"$$fundef_49_env_ListUtils.list_length_687" = getelementptr inbounds %"$$fundef_49_env_136", %"$$fundef_49_env_136"* %0, i32 0, i32 0
  %"$ListUtils.list_length_envload_688" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_49_env_ListUtils.list_length_687", align 8
  %ListUtils.list_length = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_length_envload_688", { i8*, i8* }** %ListUtils.list_length, align 8
  %"$retval_50" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_689" = load i64, i64* @_gasrem, align 8
  %"$gascmp_690" = icmp ugt i64 1, %"$gasrem_689"
  br i1 %"$gascmp_690", label %"$out_of_gas_691", label %"$have_gas_692"

"$out_of_gas_691":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_692"

"$have_gas_692":                                  ; preds = %"$out_of_gas_691", %entry
  %"$consume_693" = sub i64 %"$gasrem_689", 1
  store i64 %"$consume_693", i64* @_gasrem, align 8
  %"$$fundef_51_envp_694_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_51_envp_694_salloc" = call i8* @_salloc(i8* %"$$fundef_51_envp_694_load", i64 8)
  %"$$fundef_51_envp_694" = bitcast i8* %"$$fundef_51_envp_694_salloc" to %"$$fundef_51_env_135"*
  %"$$fundef_51_env_voidp_696" = bitcast %"$$fundef_51_env_135"* %"$$fundef_51_envp_694" to i8*
  %"$$fundef_51_cloval_697" = insertvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } { %Uint32 (i8*, %TName_List_ByStr20*)* bitcast (%Uint32 (%"$$fundef_51_env_135"*, %TName_List_ByStr20*)* @"$fundef_51" to %Uint32 (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_51_env_voidp_696", 1
  %"$$fundef_51_env_ListUtils.list_length_698" = getelementptr inbounds %"$$fundef_51_env_135", %"$$fundef_51_env_135"* %"$$fundef_51_envp_694", i32 0, i32 0
  %"$ListUtils.list_length_699" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_length, align 8
  store { i8*, i8* }* %"$ListUtils.list_length_699", { i8*, i8* }** %"$$fundef_51_env_ListUtils.list_length_698", align 8
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_51_cloval_697", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_50", align 8, !dbg !25
  %"$$retval_50_700" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_50", align 8
  ret { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_50_700"
}

define internal %Uint32 @"$fundef_47"(%"$$fundef_47_env_137"* %0, %TName_List_String* %1) !dbg !26 {
entry:
  %"$$fundef_47_env_ListUtils.list_length_634" = getelementptr inbounds %"$$fundef_47_env_137", %"$$fundef_47_env_137"* %0, i32 0, i32 0
  %"$ListUtils.list_length_envload_635" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_47_env_ListUtils.list_length_634", align 8
  %ListUtils.list_length = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_length_envload_635", { i8*, i8* }** %ListUtils.list_length, align 8
  %"$retval_48" = alloca %Uint32, align 8
  %"$gasrem_636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_637" = icmp ugt i64 1, %"$gasrem_636"
  br i1 %"$gascmp_637", label %"$out_of_gas_638", label %"$have_gas_639"

"$out_of_gas_638":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_639"

"$have_gas_639":                                  ; preds = %"$out_of_gas_638", %entry
  %"$consume_640" = sub i64 %"$gasrem_636", 1
  store i64 %"$consume_640", i64* @_gasrem, align 8
  %ll = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }, align 8
  %"$gasrem_641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_642" = icmp ugt i64 1, %"$gasrem_641"
  br i1 %"$gascmp_642", label %"$out_of_gas_643", label %"$have_gas_644"

"$out_of_gas_643":                                ; preds = %"$have_gas_639"
  call void @_out_of_gas()
  br label %"$have_gas_644"

"$have_gas_644":                                  ; preds = %"$out_of_gas_643", %"$have_gas_639"
  %"$consume_645" = sub i64 %"$gasrem_641", 1
  store i64 %"$consume_645", i64* @_gasrem, align 8
  %"$ListUtils.list_length_646" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_length, align 8
  %"$ListUtils.list_length_647" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_646", i32 0
  %"$ListUtils.list_length_648" = bitcast { i8*, i8* }* %"$ListUtils.list_length_647" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_649" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_648", align 8
  %"$ListUtils.list_length_fptr_650" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_649", 0
  %"$ListUtils.list_length_envptr_651" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_649", 1
  %"$ListUtils.list_length_call_652" = call { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$ListUtils.list_length_fptr_650"(i8* %"$ListUtils.list_length_envptr_651"), !dbg !27
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$ListUtils.list_length_call_652", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %ll, align 8, !dbg !28
  %"$gasrem_653" = load i64, i64* @_gasrem, align 8
  %"$gascmp_654" = icmp ugt i64 1, %"$gasrem_653"
  br i1 %"$gascmp_654", label %"$out_of_gas_655", label %"$have_gas_656"

"$out_of_gas_655":                                ; preds = %"$have_gas_644"
  call void @_out_of_gas()
  br label %"$have_gas_656"

"$have_gas_656":                                  ; preds = %"$out_of_gas_655", %"$have_gas_644"
  %"$consume_657" = sub i64 %"$gasrem_653", 1
  store i64 %"$consume_657", i64* @_gasrem, align 8
  %n = alloca %Uint32, align 8
  %"$gasrem_658" = load i64, i64* @_gasrem, align 8
  %"$gascmp_659" = icmp ugt i64 1, %"$gasrem_658"
  br i1 %"$gascmp_659", label %"$out_of_gas_660", label %"$have_gas_661"

"$out_of_gas_660":                                ; preds = %"$have_gas_656"
  call void @_out_of_gas()
  br label %"$have_gas_661"

"$have_gas_661":                                  ; preds = %"$out_of_gas_660", %"$have_gas_656"
  %"$consume_662" = sub i64 %"$gasrem_658", 1
  store i64 %"$consume_662", i64* @_gasrem, align 8
  %"$ll_6" = alloca %Uint32, align 8
  %"$ll_663" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %ll, align 8
  %"$ll_fptr_664" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$ll_663", 0
  %"$ll_envptr_665" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$ll_663", 1
  %"$ll_call_666" = call %Uint32 %"$ll_fptr_664"(i8* %"$ll_envptr_665", %TName_List_String* %1), !dbg !29
  store %Uint32 %"$ll_call_666", %Uint32* %"$ll_6", align 4, !dbg !29
  %"$$ll_6_667" = load %Uint32, %Uint32* %"$ll_6", align 4
  store %Uint32 %"$$ll_6_667", %Uint32* %n, align 4, !dbg !29
  %"$gasrem_668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_669" = icmp ugt i64 1, %"$gasrem_668"
  br i1 %"$gascmp_669", label %"$out_of_gas_670", label %"$have_gas_671"

"$out_of_gas_670":                                ; preds = %"$have_gas_661"
  call void @_out_of_gas()
  br label %"$have_gas_671"

"$have_gas_671":                                  ; preds = %"$out_of_gas_670", %"$have_gas_661"
  %"$consume_672" = sub i64 %"$gasrem_668", 1
  store i64 %"$consume_672", i64* @_gasrem, align 8
  %two = alloca %Uint32, align 8
  %"$gasrem_673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_674" = icmp ugt i64 1, %"$gasrem_673"
  br i1 %"$gascmp_674", label %"$out_of_gas_675", label %"$have_gas_676"

"$out_of_gas_675":                                ; preds = %"$have_gas_671"
  call void @_out_of_gas()
  br label %"$have_gas_676"

"$have_gas_676":                                  ; preds = %"$out_of_gas_675", %"$have_gas_671"
  %"$consume_677" = sub i64 %"$gasrem_673", 1
  store i64 %"$consume_677", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %two, align 4, !dbg !30
  %"$gasrem_678" = load i64, i64* @_gasrem, align 8
  %"$gascmp_679" = icmp ugt i64 4, %"$gasrem_678"
  br i1 %"$gascmp_679", label %"$out_of_gas_680", label %"$have_gas_681"

"$out_of_gas_680":                                ; preds = %"$have_gas_676"
  call void @_out_of_gas()
  br label %"$have_gas_681"

"$have_gas_681":                                  ; preds = %"$out_of_gas_680", %"$have_gas_676"
  %"$consume_682" = sub i64 %"$gasrem_678", 4
  store i64 %"$consume_682", i64* @_gasrem, align 8
  %"$n_683" = load %Uint32, %Uint32* %n, align 4
  %"$two_684" = load %Uint32, %Uint32* %two, align 4
  %"$add_call_685" = call %Uint32 @_add_Uint32(%Uint32 %"$n_683", %Uint32 %"$two_684"), !dbg !31
  store %Uint32 %"$add_call_685", %Uint32* %"$retval_48", align 4, !dbg !31
  %"$$retval_48_686" = load %Uint32, %Uint32* %"$retval_48", align 4
  ret %Uint32 %"$$retval_48_686"
}

define internal { %Uint32 (i8*, %TName_List_String*)*, i8* } @"$fundef_45"(%"$$fundef_45_env_138"* %0) !dbg !32 {
entry:
  %"$$fundef_45_env_ListUtils.list_length_620" = getelementptr inbounds %"$$fundef_45_env_138", %"$$fundef_45_env_138"* %0, i32 0, i32 0
  %"$ListUtils.list_length_envload_621" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_45_env_ListUtils.list_length_620", align 8
  %ListUtils.list_length = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_length_envload_621", { i8*, i8* }** %ListUtils.list_length, align 8
  %"$retval_46" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }, align 8
  %"$gasrem_622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_623" = icmp ugt i64 1, %"$gasrem_622"
  br i1 %"$gascmp_623", label %"$out_of_gas_624", label %"$have_gas_625"

"$out_of_gas_624":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_625"

"$have_gas_625":                                  ; preds = %"$out_of_gas_624", %entry
  %"$consume_626" = sub i64 %"$gasrem_622", 1
  store i64 %"$consume_626", i64* @_gasrem, align 8
  %"$$fundef_47_envp_627_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_47_envp_627_salloc" = call i8* @_salloc(i8* %"$$fundef_47_envp_627_load", i64 8)
  %"$$fundef_47_envp_627" = bitcast i8* %"$$fundef_47_envp_627_salloc" to %"$$fundef_47_env_137"*
  %"$$fundef_47_env_voidp_629" = bitcast %"$$fundef_47_env_137"* %"$$fundef_47_envp_627" to i8*
  %"$$fundef_47_cloval_630" = insertvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } { %Uint32 (i8*, %TName_List_String*)* bitcast (%Uint32 (%"$$fundef_47_env_137"*, %TName_List_String*)* @"$fundef_47" to %Uint32 (i8*, %TName_List_String*)*), i8* undef }, i8* %"$$fundef_47_env_voidp_629", 1
  %"$$fundef_47_env_ListUtils.list_length_631" = getelementptr inbounds %"$$fundef_47_env_137", %"$$fundef_47_env_137"* %"$$fundef_47_envp_627", i32 0, i32 0
  %"$ListUtils.list_length_632" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_length, align 8
  store { i8*, i8* }* %"$ListUtils.list_length_632", { i8*, i8* }** %"$$fundef_47_env_ListUtils.list_length_631", align 8
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$fundef_47_cloval_630", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_46", align 8, !dbg !33
  %"$$retval_46_633" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_46", align 8
  ret { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$retval_46_633"
}

define internal %Uint32 @"$fundef_42"(%"$$fundef_42_env_139"* %0, [20 x i8]* %1) !dbg !34 {
entry:
  %h = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_42_env_one_607" = getelementptr inbounds %"$$fundef_42_env_139", %"$$fundef_42_env_139"* %0, i32 0, i32 0
  %"$one_envload_608" = load %Uint32, %Uint32* %"$$fundef_42_env_one_607", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_608", %Uint32* %one, align 4
  %"$$fundef_42_env_z_609" = getelementptr inbounds %"$$fundef_42_env_139", %"$$fundef_42_env_139"* %0, i32 0, i32 1
  %"$z_envload_610" = load %Uint32, %Uint32* %"$$fundef_42_env_z_609", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_610", %Uint32* %z, align 4
  %"$retval_43" = alloca %Uint32, align 8
  %"$gasrem_611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_612" = icmp ugt i64 4, %"$gasrem_611"
  br i1 %"$gascmp_612", label %"$out_of_gas_613", label %"$have_gas_614"

"$out_of_gas_613":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_614"

"$have_gas_614":                                  ; preds = %"$out_of_gas_613", %entry
  %"$consume_615" = sub i64 %"$gasrem_611", 4
  store i64 %"$consume_615", i64* @_gasrem, align 8
  %"$one_616" = load %Uint32, %Uint32* %one, align 4
  %"$z_617" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_618" = call %Uint32 @_add_Uint32(%Uint32 %"$one_616", %Uint32 %"$z_617"), !dbg !36
  store %Uint32 %"$add_call_618", %Uint32* %"$retval_43", align 4, !dbg !36
  %"$$retval_43_619" = load %Uint32, %Uint32* %"$retval_43", align 4
  ret %Uint32 %"$$retval_43_619"
}

define internal { %Uint32 (i8*, [20 x i8]*)*, i8* } @"$fundef_40"(%"$$fundef_40_env_140"* %0, %Uint32 %1) !dbg !37 {
entry:
  %"$$fundef_40_env_one_592" = getelementptr inbounds %"$$fundef_40_env_140", %"$$fundef_40_env_140"* %0, i32 0, i32 0
  %"$one_envload_593" = load %Uint32, %Uint32* %"$$fundef_40_env_one_592", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_593", %Uint32* %one, align 4
  %"$retval_41" = alloca { %Uint32 (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_595" = icmp ugt i64 1, %"$gasrem_594"
  br i1 %"$gascmp_595", label %"$out_of_gas_596", label %"$have_gas_597"

"$out_of_gas_596":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_597"

"$have_gas_597":                                  ; preds = %"$out_of_gas_596", %entry
  %"$consume_598" = sub i64 %"$gasrem_594", 1
  store i64 %"$consume_598", i64* @_gasrem, align 8
  %"$$fundef_42_envp_599_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_42_envp_599_salloc" = call i8* @_salloc(i8* %"$$fundef_42_envp_599_load", i64 8)
  %"$$fundef_42_envp_599" = bitcast i8* %"$$fundef_42_envp_599_salloc" to %"$$fundef_42_env_139"*
  %"$$fundef_42_env_voidp_601" = bitcast %"$$fundef_42_env_139"* %"$$fundef_42_envp_599" to i8*
  %"$$fundef_42_cloval_602" = insertvalue { %Uint32 (i8*, [20 x i8]*)*, i8* } { %Uint32 (i8*, [20 x i8]*)* bitcast (%Uint32 (%"$$fundef_42_env_139"*, [20 x i8]*)* @"$fundef_42" to %Uint32 (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_42_env_voidp_601", 1
  %"$$fundef_42_env_one_603" = getelementptr inbounds %"$$fundef_42_env_139", %"$$fundef_42_env_139"* %"$$fundef_42_envp_599", i32 0, i32 0
  %"$one_604" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_604", %Uint32* %"$$fundef_42_env_one_603", align 4
  %"$$fundef_42_env_z_605" = getelementptr inbounds %"$$fundef_42_env_139", %"$$fundef_42_env_139"* %"$$fundef_42_envp_599", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_42_env_z_605", align 4
  store { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$$fundef_42_cloval_602", { %Uint32 (i8*, [20 x i8]*)*, i8* }* %"$retval_41", align 8, !dbg !38
  %"$$retval_41_606" = load { %Uint32 (i8*, [20 x i8]*)*, i8* }, { %Uint32 (i8*, [20 x i8]*)*, i8* }* %"$retval_41", align 8
  ret { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$$retval_41_606"
}

define internal { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_141"* %0) !dbg !39 {
entry:
  %"$$fundef_38_env_list_foldl_514" = getelementptr inbounds %"$$fundef_38_env_141", %"$$fundef_38_env_141"* %0, i32 0, i32 0
  %"$list_foldl_envload_515" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_38_env_list_foldl_514", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_515", { i8*, i8* }** %list_foldl, align 8
  %"$retval_39" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_517" = icmp ugt i64 1, %"$gasrem_516"
  br i1 %"$gascmp_517", label %"$out_of_gas_518", label %"$have_gas_519"

"$out_of_gas_518":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_519"

"$have_gas_519":                                  ; preds = %"$out_of_gas_518", %entry
  %"$consume_520" = sub i64 %"$gasrem_516", 1
  store i64 %"$consume_520", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_522" = icmp ugt i64 1, %"$gasrem_521"
  br i1 %"$gascmp_522", label %"$out_of_gas_523", label %"$have_gas_524"

"$out_of_gas_523":                                ; preds = %"$have_gas_519"
  call void @_out_of_gas()
  br label %"$have_gas_524"

"$have_gas_524":                                  ; preds = %"$out_of_gas_523", %"$have_gas_519"
  %"$consume_525" = sub i64 %"$gasrem_521", 1
  store i64 %"$consume_525", i64* @_gasrem, align 8
  %"$list_foldl_526" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_527" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_526", i32 2
  %"$list_foldl_528" = bitcast { i8*, i8* }* %"$list_foldl_527" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_529" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_528", align 8
  %"$list_foldl_fptr_530" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_529", 0
  %"$list_foldl_envptr_531" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_529", 1
  %"$list_foldl_call_532" = call { i8*, i8* }* %"$list_foldl_fptr_530"(i8* %"$list_foldl_envptr_531"), !dbg !40
  %"$list_foldl_533" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_532", i32 1
  %"$list_foldl_534" = bitcast { i8*, i8* }* %"$list_foldl_533" to { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_535" = load { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_534", align 8
  %"$list_foldl_fptr_536" = extractvalue { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_535", 0
  %"$list_foldl_envptr_537" = extractvalue { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_535", 1
  %"$list_foldl_call_538" = call { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_536"(i8* %"$list_foldl_envptr_537"), !dbg !40
  store { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_538", { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8, !dbg !41
  %"$gasrem_539" = load i64, i64* @_gasrem, align 8
  %"$gascmp_540" = icmp ugt i64 1, %"$gasrem_539"
  br i1 %"$gascmp_540", label %"$out_of_gas_541", label %"$have_gas_542"

"$out_of_gas_541":                                ; preds = %"$have_gas_524"
  call void @_out_of_gas()
  br label %"$have_gas_542"

"$have_gas_542":                                  ; preds = %"$out_of_gas_541", %"$have_gas_524"
  %"$consume_543" = sub i64 %"$gasrem_539", 1
  store i64 %"$consume_543", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_545" = icmp ugt i64 1, %"$gasrem_544"
  br i1 %"$gascmp_545", label %"$out_of_gas_546", label %"$have_gas_547"

"$out_of_gas_546":                                ; preds = %"$have_gas_542"
  call void @_out_of_gas()
  br label %"$have_gas_547"

"$have_gas_547":                                  ; preds = %"$out_of_gas_546", %"$have_gas_542"
  %"$consume_548" = sub i64 %"$gasrem_544", 1
  store i64 %"$consume_548", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !42
  %"$gasrem_549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_550" = icmp ugt i64 1, %"$gasrem_549"
  br i1 %"$gascmp_550", label %"$out_of_gas_551", label %"$have_gas_552"

"$out_of_gas_551":                                ; preds = %"$have_gas_547"
  call void @_out_of_gas()
  br label %"$have_gas_552"

"$have_gas_552":                                  ; preds = %"$out_of_gas_551", %"$have_gas_547"
  %"$consume_553" = sub i64 %"$gasrem_549", 1
  store i64 %"$consume_553", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_555" = icmp ugt i64 1, %"$gasrem_554"
  br i1 %"$gascmp_555", label %"$out_of_gas_556", label %"$have_gas_557"

"$out_of_gas_556":                                ; preds = %"$have_gas_552"
  call void @_out_of_gas()
  br label %"$have_gas_557"

"$have_gas_557":                                  ; preds = %"$out_of_gas_556", %"$have_gas_552"
  %"$consume_558" = sub i64 %"$gasrem_554", 1
  store i64 %"$consume_558", i64* @_gasrem, align 8
  %"$$fundef_40_envp_559_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_40_envp_559_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_559_load", i64 4)
  %"$$fundef_40_envp_559" = bitcast i8* %"$$fundef_40_envp_559_salloc" to %"$$fundef_40_env_140"*
  %"$$fundef_40_env_voidp_561" = bitcast %"$$fundef_40_env_140"* %"$$fundef_40_envp_559" to i8*
  %"$$fundef_40_cloval_562" = insertvalue { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, [20 x i8]*)*, i8* } (%"$$fundef_40_env_140"*, %Uint32)* @"$fundef_40" to { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_40_env_voidp_561", 1
  %"$$fundef_40_env_one_563" = getelementptr inbounds %"$$fundef_40_env_140", %"$$fundef_40_env_140"* %"$$fundef_40_envp_559", i32 0, i32 0
  %"$one_564" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_564", %Uint32* %"$$fundef_40_env_one_563", align 4
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_40_cloval_562", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8, !dbg !43
  %"$gasrem_565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_566" = icmp ugt i64 1, %"$gasrem_565"
  br i1 %"$gascmp_566", label %"$out_of_gas_567", label %"$have_gas_568"

"$out_of_gas_567":                                ; preds = %"$have_gas_557"
  call void @_out_of_gas()
  br label %"$have_gas_568"

"$have_gas_568":                                  ; preds = %"$out_of_gas_567", %"$have_gas_557"
  %"$consume_569" = sub i64 %"$gasrem_565", 1
  store i64 %"$consume_569", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_571" = icmp ugt i64 1, %"$gasrem_570"
  br i1 %"$gascmp_571", label %"$out_of_gas_572", label %"$have_gas_573"

"$out_of_gas_572":                                ; preds = %"$have_gas_568"
  call void @_out_of_gas()
  br label %"$have_gas_573"

"$have_gas_573":                                  ; preds = %"$out_of_gas_572", %"$have_gas_568"
  %"$consume_574" = sub i64 %"$gasrem_570", 1
  store i64 %"$consume_574", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4, !dbg !44
  %"$gasrem_575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_576" = icmp ugt i64 1, %"$gasrem_575"
  br i1 %"$gascmp_576", label %"$out_of_gas_577", label %"$have_gas_578"

"$out_of_gas_577":                                ; preds = %"$have_gas_573"
  call void @_out_of_gas()
  br label %"$have_gas_578"

"$have_gas_578":                                  ; preds = %"$out_of_gas_577", %"$have_gas_573"
  %"$consume_579" = sub i64 %"$gasrem_575", 1
  store i64 %"$consume_579", i64* @_gasrem, align 8
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_580" = load { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_581" = extractvalue { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_580", 0
  %"$foldl_envptr_582" = extractvalue { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_580", 1
  %"$iter_583" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_584" = call { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_581"(i8* %"$foldl_envptr_582", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_583"), !dbg !45
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_584", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8, !dbg !45
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$$foldl_4_585" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8
  %"$$foldl_4_fptr_586" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_585", 0
  %"$$foldl_4_envptr_587" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_585", 1
  %"$init_588" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_4_call_589" = call { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldl_4_fptr_586"(i8* %"$$foldl_4_envptr_587", %Uint32 %"$init_588"), !dbg !45
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldl_4_call_589", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldl_5", align 8, !dbg !45
  %"$$foldl_5_590" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldl_5", align 8
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldl_5_590", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_39", align 8, !dbg !45
  %"$$retval_39_591" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_39", align 8
  ret { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_39_591"
}

define internal %Uint32 @"$fundef_36"(%"$$fundef_36_env_142"* %0, %String %1) !dbg !46 {
entry:
  %"$$fundef_36_env_one_501" = getelementptr inbounds %"$$fundef_36_env_142", %"$$fundef_36_env_142"* %0, i32 0, i32 0
  %"$one_envload_502" = load %Uint32, %Uint32* %"$$fundef_36_env_one_501", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_502", %Uint32* %one, align 4
  %"$$fundef_36_env_z_503" = getelementptr inbounds %"$$fundef_36_env_142", %"$$fundef_36_env_142"* %0, i32 0, i32 1
  %"$z_envload_504" = load %Uint32, %Uint32* %"$$fundef_36_env_z_503", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_504", %Uint32* %z, align 4
  %"$retval_37" = alloca %Uint32, align 8
  %"$gasrem_505" = load i64, i64* @_gasrem, align 8
  %"$gascmp_506" = icmp ugt i64 4, %"$gasrem_505"
  br i1 %"$gascmp_506", label %"$out_of_gas_507", label %"$have_gas_508"

"$out_of_gas_507":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_508"

"$have_gas_508":                                  ; preds = %"$out_of_gas_507", %entry
  %"$consume_509" = sub i64 %"$gasrem_505", 4
  store i64 %"$consume_509", i64* @_gasrem, align 8
  %"$one_510" = load %Uint32, %Uint32* %one, align 4
  %"$z_511" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_512" = call %Uint32 @_add_Uint32(%Uint32 %"$one_510", %Uint32 %"$z_511"), !dbg !47
  store %Uint32 %"$add_call_512", %Uint32* %"$retval_37", align 4, !dbg !47
  %"$$retval_37_513" = load %Uint32, %Uint32* %"$retval_37", align 4
  ret %Uint32 %"$$retval_37_513"
}

define internal { %Uint32 (i8*, %String)*, i8* } @"$fundef_34"(%"$$fundef_34_env_143"* %0, %Uint32 %1) !dbg !48 {
entry:
  %"$$fundef_34_env_one_486" = getelementptr inbounds %"$$fundef_34_env_143", %"$$fundef_34_env_143"* %0, i32 0, i32 0
  %"$one_envload_487" = load %Uint32, %Uint32* %"$$fundef_34_env_one_486", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_487", %Uint32* %one, align 4
  %"$retval_35" = alloca { %Uint32 (i8*, %String)*, i8* }, align 8
  %"$gasrem_488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_489" = icmp ugt i64 1, %"$gasrem_488"
  br i1 %"$gascmp_489", label %"$out_of_gas_490", label %"$have_gas_491"

"$out_of_gas_490":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_491"

"$have_gas_491":                                  ; preds = %"$out_of_gas_490", %entry
  %"$consume_492" = sub i64 %"$gasrem_488", 1
  store i64 %"$consume_492", i64* @_gasrem, align 8
  %"$$fundef_36_envp_493_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_36_envp_493_salloc" = call i8* @_salloc(i8* %"$$fundef_36_envp_493_load", i64 8)
  %"$$fundef_36_envp_493" = bitcast i8* %"$$fundef_36_envp_493_salloc" to %"$$fundef_36_env_142"*
  %"$$fundef_36_env_voidp_495" = bitcast %"$$fundef_36_env_142"* %"$$fundef_36_envp_493" to i8*
  %"$$fundef_36_cloval_496" = insertvalue { %Uint32 (i8*, %String)*, i8* } { %Uint32 (i8*, %String)* bitcast (%Uint32 (%"$$fundef_36_env_142"*, %String)* @"$fundef_36" to %Uint32 (i8*, %String)*), i8* undef }, i8* %"$$fundef_36_env_voidp_495", 1
  %"$$fundef_36_env_one_497" = getelementptr inbounds %"$$fundef_36_env_142", %"$$fundef_36_env_142"* %"$$fundef_36_envp_493", i32 0, i32 0
  %"$one_498" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_498", %Uint32* %"$$fundef_36_env_one_497", align 4
  %"$$fundef_36_env_z_499" = getelementptr inbounds %"$$fundef_36_env_142", %"$$fundef_36_env_142"* %"$$fundef_36_envp_493", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_36_env_z_499", align 4
  store { %Uint32 (i8*, %String)*, i8* } %"$$fundef_36_cloval_496", { %Uint32 (i8*, %String)*, i8* }* %"$retval_35", align 8, !dbg !49
  %"$$retval_35_500" = load { %Uint32 (i8*, %String)*, i8* }, { %Uint32 (i8*, %String)*, i8* }* %"$retval_35", align 8
  ret { %Uint32 (i8*, %String)*, i8* } %"$$retval_35_500"
}

define internal { %Uint32 (i8*, %TName_List_String*)*, i8* } @"$fundef_32"(%"$$fundef_32_env_144"* %0) !dbg !50 {
entry:
  %"$$fundef_32_env_list_foldl_408" = getelementptr inbounds %"$$fundef_32_env_144", %"$$fundef_32_env_144"* %0, i32 0, i32 0
  %"$list_foldl_envload_409" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_32_env_list_foldl_408", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_409", { i8*, i8* }** %list_foldl, align 8
  %"$retval_33" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }, align 8
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %entry
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 1, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$have_gas_413"
  %"$consume_419" = sub i64 %"$gasrem_415", 1
  store i64 %"$consume_419", i64* @_gasrem, align 8
  %"$list_foldl_420" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_421" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_420", i32 0
  %"$list_foldl_422" = bitcast { i8*, i8* }* %"$list_foldl_421" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_423" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_422", align 8
  %"$list_foldl_fptr_424" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_423", 0
  %"$list_foldl_envptr_425" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_423", 1
  %"$list_foldl_call_426" = call { i8*, i8* }* %"$list_foldl_fptr_424"(i8* %"$list_foldl_envptr_425"), !dbg !51
  %"$list_foldl_427" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_426", i32 1
  %"$list_foldl_428" = bitcast { i8*, i8* }* %"$list_foldl_427" to { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_429" = load { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_428", align 8
  %"$list_foldl_fptr_430" = extractvalue { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_429", 0
  %"$list_foldl_envptr_431" = extractvalue { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_429", 1
  %"$list_foldl_call_432" = call { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_430"(i8* %"$list_foldl_envptr_431"), !dbg !51
  store { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_432", { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8, !dbg !52
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_418"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_418"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 1, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %"$have_gas_436"
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %"$have_gas_436"
  %"$consume_442" = sub i64 %"$gasrem_438", 1
  store i64 %"$consume_442", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !53
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$have_gas_441"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$have_gas_441"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 1, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_446"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_446"
  %"$consume_452" = sub i64 %"$gasrem_448", 1
  store i64 %"$consume_452", i64* @_gasrem, align 8
  %"$$fundef_34_envp_453_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_34_envp_453_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_453_load", i64 4)
  %"$$fundef_34_envp_453" = bitcast i8* %"$$fundef_34_envp_453_salloc" to %"$$fundef_34_env_143"*
  %"$$fundef_34_env_voidp_455" = bitcast %"$$fundef_34_env_143"* %"$$fundef_34_envp_453" to i8*
  %"$$fundef_34_cloval_456" = insertvalue { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %String)*, i8* } (%"$$fundef_34_env_143"*, %Uint32)* @"$fundef_34" to { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_34_env_voidp_455", 1
  %"$$fundef_34_env_one_457" = getelementptr inbounds %"$$fundef_34_env_143", %"$$fundef_34_env_143"* %"$$fundef_34_envp_453", i32 0, i32 0
  %"$one_458" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_458", %Uint32* %"$$fundef_34_env_one_457", align 4
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_34_cloval_456", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8, !dbg !54
  %"$gasrem_459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_460" = icmp ugt i64 1, %"$gasrem_459"
  br i1 %"$gascmp_460", label %"$out_of_gas_461", label %"$have_gas_462"

"$out_of_gas_461":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_462"

"$have_gas_462":                                  ; preds = %"$out_of_gas_461", %"$have_gas_451"
  %"$consume_463" = sub i64 %"$gasrem_459", 1
  store i64 %"$consume_463", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 1, %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %"$have_gas_462"
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %"$have_gas_462"
  %"$consume_468" = sub i64 %"$gasrem_464", 1
  store i64 %"$consume_468", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4, !dbg !55
  %"$gasrem_469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_470" = icmp ugt i64 1, %"$gasrem_469"
  br i1 %"$gascmp_470", label %"$out_of_gas_471", label %"$have_gas_472"

"$out_of_gas_471":                                ; preds = %"$have_gas_467"
  call void @_out_of_gas()
  br label %"$have_gas_472"

"$have_gas_472":                                  ; preds = %"$out_of_gas_471", %"$have_gas_467"
  %"$consume_473" = sub i64 %"$gasrem_469", 1
  store i64 %"$consume_473", i64* @_gasrem, align 8
  %"$foldl_4" = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_474" = load { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_475" = extractvalue { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_474", 0
  %"$foldl_envptr_476" = extractvalue { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_474", 1
  %"$iter_477" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_478" = call { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_475"(i8* %"$foldl_envptr_476", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_477"), !dbg !56
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_478", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8, !dbg !56
  %"$foldl_5" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }, align 8
  %"$$foldl_4_479" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_4", align 8
  %"$$foldl_4_fptr_480" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_479", 0
  %"$$foldl_4_envptr_481" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_4_479", 1
  %"$init_482" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_4_call_483" = call { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$foldl_4_fptr_480"(i8* %"$$foldl_4_envptr_481", %Uint32 %"$init_482"), !dbg !56
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$foldl_4_call_483", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$foldl_5", align 8, !dbg !56
  %"$$foldl_5_484" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$foldl_5", align 8
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$foldl_5_484", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_33", align 8, !dbg !56
  %"$$retval_33_485" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_33", align 8
  ret { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$retval_33_485"
}

define internal %Uint32 @"$fundef_30"(%"$$fundef_30_env_145"* %0, %TName_List_ByStr20* %1) !dbg !57 {
entry:
  %"$$fundef_30_env_f_340" = getelementptr inbounds %"$$fundef_30_env_145", %"$$fundef_30_env_145"* %0, i32 0, i32 0
  %"$f_envload_341" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_f_340", align 8
  %f = alloca { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_341", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_30_env_g_342" = getelementptr inbounds %"$$fundef_30_env_145", %"$$fundef_30_env_145"* %0, i32 0, i32 1
  %"$g_envload_343" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_g_342", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_343", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_30_env_z_344" = getelementptr inbounds %"$$fundef_30_env_145", %"$$fundef_30_env_145"* %0, i32 0, i32 2
  %"$z_envload_345" = load %Uint32, %Uint32* %"$$fundef_30_env_z_344", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_345", %Uint32* %z, align 4
  %"$retval_31" = alloca %Uint32, align 8
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 2, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %entry
  %"$consume_350" = sub i64 %"$gasrem_346", 2
  store i64 %"$consume_350", i64* @_gasrem, align 8
  %"$l_tag_352" = getelementptr inbounds %TName_List_ByStr20, %TName_List_ByStr20* %1, i32 0, i32 0
  %"$l_tag_353" = load i8, i8* %"$l_tag_352", align 1
  switch i8 %"$l_tag_353", label %"$empty_default_354" [
    i8 0, label %"$Cons_355"
    i8 1, label %"$Nil_399"
  ], !dbg !59

"$Cons_355":                                      ; preds = %"$have_gas_349"
  %"$l_356" = bitcast %TName_List_ByStr20* %1 to %CName_Cons_ByStr20*
  %"$h_gep_357" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_356", i32 0, i32 1
  %"$h_load_358" = load [20 x i8], [20 x i8]* %"$h_gep_357", align 1
  %h = alloca [20 x i8], align 1
  store [20 x i8] %"$h_load_358", [20 x i8]* %h, align 1
  %"$t_gep_359" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_356", i32 0, i32 2
  %"$t_load_360" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$t_gep_359", align 8
  %t = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$t_load_360", %TName_List_ByStr20** %t, align 8
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$Cons_355"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$Cons_355"
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_364"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  %"$f_0" = alloca { %Uint32 (i8*, [20 x i8]*)*, i8* }, align 8
  %"$f_371" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_372" = extractvalue { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_371", 0
  %"$f_envptr_373" = extractvalue { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_371", 1
  %"$z_374" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_375" = call { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$f_fptr_372"(i8* %"$f_envptr_373", %Uint32 %"$z_374"), !dbg !60
  store { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$f_call_375", { %Uint32 (i8*, [20 x i8]*)*, i8* }* %"$f_0", align 8, !dbg !60
  %"$f_1" = alloca %Uint32, align 8
  %"$$f_0_376" = load { %Uint32 (i8*, [20 x i8]*)*, i8* }, { %Uint32 (i8*, [20 x i8]*)*, i8* }* %"$f_0", align 8
  %"$$f_0_fptr_377" = extractvalue { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$$f_0_376", 0
  %"$$f_0_envptr_378" = extractvalue { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$$f_0_376", 1
  %"$$f_0_h_379" = alloca [20 x i8], align 1
  %"$h_380" = load [20 x i8], [20 x i8]* %h, align 1
  store [20 x i8] %"$h_380", [20 x i8]* %"$$f_0_h_379", align 1
  %"$$f_0_call_381" = call %Uint32 %"$$f_0_fptr_377"(i8* %"$$f_0_envptr_378", [20 x i8]* %"$$f_0_h_379"), !dbg !60
  store %Uint32 %"$$f_0_call_381", %Uint32* %"$f_1", align 4, !dbg !60
  %"$$f_1_382" = load %Uint32, %Uint32* %"$f_1", align 4
  store %Uint32 %"$$f_1_382", %Uint32* %res, align 4, !dbg !60
  %"$gasrem_383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_384" = icmp ugt i64 1, %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$have_gas_369"
  %"$consume_387" = sub i64 %"$gasrem_383", 1
  store i64 %"$consume_387", i64* @_gasrem, align 8
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$g_388" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_389" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_388", 0
  %"$g_envptr_390" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_388", 1
  %"$res_391" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_392" = call { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$g_fptr_389"(i8* %"$g_envptr_390", %Uint32 %"$res_391"), !dbg !63
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$g_call_392", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_2", align 8, !dbg !63
  %"$g_3" = alloca %Uint32, align 8
  %"$$g_2_393" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_2", align 8
  %"$$g_2_fptr_394" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_2_393", 0
  %"$$g_2_envptr_395" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_2_393", 1
  %"$t_396" = load %TName_List_ByStr20*, %TName_List_ByStr20** %t, align 8
  %"$$g_2_call_397" = call %Uint32 %"$$g_2_fptr_394"(i8* %"$$g_2_envptr_395", %TName_List_ByStr20* %"$t_396"), !dbg !63
  store %Uint32 %"$$g_2_call_397", %Uint32* %"$g_3", align 4, !dbg !63
  %"$$g_3_398" = load %Uint32, %Uint32* %"$g_3", align 4
  store %Uint32 %"$$g_3_398", %Uint32* %"$retval_31", align 4, !dbg !63
  br label %"$matchsucc_351"

"$Nil_399":                                       ; preds = %"$have_gas_349"
  %"$l_400" = bitcast %TName_List_ByStr20* %1 to %CName_Nil_ByStr20*
  %"$gasrem_401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_402" = icmp ugt i64 1, %"$gasrem_401"
  br i1 %"$gascmp_402", label %"$out_of_gas_403", label %"$have_gas_404"

"$out_of_gas_403":                                ; preds = %"$Nil_399"
  call void @_out_of_gas()
  br label %"$have_gas_404"

"$have_gas_404":                                  ; preds = %"$out_of_gas_403", %"$Nil_399"
  %"$consume_405" = sub i64 %"$gasrem_401", 1
  store i64 %"$consume_405", i64* @_gasrem, align 8
  %"$z_406" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_406", %Uint32* %"$retval_31", align 4, !dbg !64
  br label %"$matchsucc_351"

"$empty_default_354":                             ; preds = %"$have_gas_349"
  br label %"$matchsucc_351"

"$matchsucc_351":                                 ; preds = %"$have_gas_404", %"$have_gas_386", %"$empty_default_354"
  %"$$retval_31_407" = load %Uint32, %Uint32* %"$retval_31", align 4
  ret %Uint32 %"$$retval_31_407"
}

define internal { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_28"(%"$$fundef_28_env_146"* %0, %Uint32 %1) !dbg !66 {
entry:
  %"$$fundef_28_env_f_321" = getelementptr inbounds %"$$fundef_28_env_146", %"$$fundef_28_env_146"* %0, i32 0, i32 0
  %"$f_envload_322" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_321", align 8
  %f = alloca { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_322", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_28_env_g_323" = getelementptr inbounds %"$$fundef_28_env_146", %"$$fundef_28_env_146"* %0, i32 0, i32 1
  %"$g_envload_324" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_323", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_324", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_29" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %entry
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %"$$fundef_30_envp_330_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_30_envp_330_salloc" = call i8* @_salloc(i8* %"$$fundef_30_envp_330_load", i64 40)
  %"$$fundef_30_envp_330" = bitcast i8* %"$$fundef_30_envp_330_salloc" to %"$$fundef_30_env_145"*
  %"$$fundef_30_env_voidp_332" = bitcast %"$$fundef_30_env_145"* %"$$fundef_30_envp_330" to i8*
  %"$$fundef_30_cloval_333" = insertvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } { %Uint32 (i8*, %TName_List_ByStr20*)* bitcast (%Uint32 (%"$$fundef_30_env_145"*, %TName_List_ByStr20*)* @"$fundef_30" to %Uint32 (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_30_env_voidp_332", 1
  %"$$fundef_30_env_f_334" = getelementptr inbounds %"$$fundef_30_env_145", %"$$fundef_30_env_145"* %"$$fundef_30_envp_330", i32 0, i32 0
  %"$f_335" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_335", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_f_334", align 8
  %"$$fundef_30_env_g_336" = getelementptr inbounds %"$$fundef_30_env_145", %"$$fundef_30_env_145"* %"$$fundef_30_envp_330", i32 0, i32 1
  %"$g_337" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_337", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_30_env_g_336", align 8
  %"$$fundef_30_env_z_338" = getelementptr inbounds %"$$fundef_30_env_145", %"$$fundef_30_env_145"* %"$$fundef_30_envp_330", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_30_env_z_338", align 4
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_30_cloval_333", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_29", align 8, !dbg !67
  %"$$retval_29_339" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_29", align 8
  ret { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_29_339"
}

define internal { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_26"(%"$$fundef_26_env_147"* %0, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !68 {
entry:
  %"$retval_27" = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 1, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %entry
  %"$consume_306" = sub i64 %"$gasrem_302", 1
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 1, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_305"
  %"$consume_311" = sub i64 %"$gasrem_307", 1
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %"$$fundef_28_envp_312_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_28_envp_312_salloc" = call i8* @_salloc(i8* %"$$fundef_28_envp_312_load", i64 32)
  %"$$fundef_28_envp_312" = bitcast i8* %"$$fundef_28_envp_312_salloc" to %"$$fundef_28_env_146"*
  %"$$fundef_28_env_voidp_314" = bitcast %"$$fundef_28_env_146"* %"$$fundef_28_envp_312" to i8*
  %"$$fundef_28_cloval_315" = insertvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_28_env_146"*, %Uint32)* @"$fundef_28" to { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_28_env_voidp_314", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_28_cloval_315", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !69
  %"$$fundef_28_env_f_316" = getelementptr inbounds %"$$fundef_28_env_146", %"$$fundef_28_env_146"* %"$$fundef_28_envp_312", i32 0, i32 0
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_f_316", align 8
  %"$$fundef_28_env_g_317" = getelementptr inbounds %"$$fundef_28_env_146", %"$$fundef_28_env_146"* %"$$fundef_28_envp_312", i32 0, i32 1
  %"$g_318" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_318", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_g_317", align 8
  %"$g_319" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_319", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_27", align 8, !dbg !69
  %"$$retval_27_320" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_27", align 8
  ret { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_27_320"
}

define internal { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_24"(%"$$fundef_24_env_148"* %0) !dbg !70 {
entry:
  %"$retval_25" = alloca { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 1, %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %entry
  %"$consume_297" = sub i64 %"$gasrem_293", 1
  store i64 %"$consume_297", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_26_env_147"*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_26" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_25", align 8, !dbg !71
  %"$$retval_25_301" = load { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_25", align 8
  ret { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_25_301"
}

define internal { i8*, i8* }* @"$fundef_22"(%"$$fundef_22_env_149"* %0) !dbg !72 {
entry:
  %"$retval_23" = alloca { i8*, i8* }*, align 8
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 1, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %entry
  %"$consume_285" = sub i64 %"$gasrem_281", 1
  store i64 %"$consume_285", i64* @_gasrem, align 8
  %"$dyndisp_table_289_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_289_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_289_salloc_load", i64 48)
  %"$dyndisp_table_289_salloc" = bitcast i8* %"$dyndisp_table_289_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_289" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_289_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_290" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_289", i32 1
  %"$dyndisp_pcast_291" = bitcast { i8*, i8* }* %"$dyndisp_gep_290" to { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_24_env_148"*)* @"$fundef_24" to { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_291", align 8
  store { i8*, i8* }* %"$dyndisp_table_289", { i8*, i8* }** %"$retval_23", align 8, !dbg !73
  %"$$retval_23_292" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_23", align 8
  ret { i8*, i8* }* %"$$retval_23_292"
}

define internal %Uint32 @"$fundef_20"(%"$$fundef_20_env_150"* %0, %TName_List_String* %1) !dbg !74 {
entry:
  %"$$fundef_20_env_f_214" = getelementptr inbounds %"$$fundef_20_env_150", %"$$fundef_20_env_150"* %0, i32 0, i32 0
  %"$f_envload_215" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_f_214", align 8
  %f = alloca { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_215", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_20_env_g_216" = getelementptr inbounds %"$$fundef_20_env_150", %"$$fundef_20_env_150"* %0, i32 0, i32 1
  %"$g_envload_217" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_g_216", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_217", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_20_env_z_218" = getelementptr inbounds %"$$fundef_20_env_150", %"$$fundef_20_env_150"* %0, i32 0, i32 2
  %"$z_envload_219" = load %Uint32, %Uint32* %"$$fundef_20_env_z_218", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_219", %Uint32* %z, align 4
  %"$retval_21" = alloca %Uint32, align 8
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 2, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %entry
  %"$consume_224" = sub i64 %"$gasrem_220", 2
  store i64 %"$consume_224", i64* @_gasrem, align 8
  %"$l_tag_226" = getelementptr inbounds %TName_List_String, %TName_List_String* %1, i32 0, i32 0
  %"$l_tag_227" = load i8, i8* %"$l_tag_226", align 1
  switch i8 %"$l_tag_227", label %"$empty_default_228" [
    i8 0, label %"$Cons_229"
    i8 1, label %"$Nil_272"
  ], !dbg !75

"$Cons_229":                                      ; preds = %"$have_gas_223"
  %"$l_230" = bitcast %TName_List_String* %1 to %CName_Cons_String*
  %"$h_gep_231" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$l_230", i32 0, i32 1
  %"$h_load_232" = load %String, %String* %"$h_gep_231", align 8
  %h = alloca %String, align 8
  store %String %"$h_load_232", %String* %h, align 8
  %"$t_gep_233" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$l_230", i32 0, i32 2
  %"$t_load_234" = load %TName_List_String*, %TName_List_String** %"$t_gep_233", align 8
  %t = alloca %TName_List_String*, align 8
  store %TName_List_String* %"$t_load_234", %TName_List_String** %t, align 8
  %"$gasrem_235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_236" = icmp ugt i64 1, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$Cons_229"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$Cons_229"
  %"$consume_239" = sub i64 %"$gasrem_235", 1
  store i64 %"$consume_239", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 1, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$have_gas_238"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$have_gas_238"
  %"$consume_244" = sub i64 %"$gasrem_240", 1
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %"$f_0" = alloca { %Uint32 (i8*, %String)*, i8* }, align 8
  %"$f_245" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_246" = extractvalue { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_245", 0
  %"$f_envptr_247" = extractvalue { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_245", 1
  %"$z_248" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_249" = call { %Uint32 (i8*, %String)*, i8* } %"$f_fptr_246"(i8* %"$f_envptr_247", %Uint32 %"$z_248"), !dbg !76
  store { %Uint32 (i8*, %String)*, i8* } %"$f_call_249", { %Uint32 (i8*, %String)*, i8* }* %"$f_0", align 8, !dbg !76
  %"$f_1" = alloca %Uint32, align 8
  %"$$f_0_250" = load { %Uint32 (i8*, %String)*, i8* }, { %Uint32 (i8*, %String)*, i8* }* %"$f_0", align 8
  %"$$f_0_fptr_251" = extractvalue { %Uint32 (i8*, %String)*, i8* } %"$$f_0_250", 0
  %"$$f_0_envptr_252" = extractvalue { %Uint32 (i8*, %String)*, i8* } %"$$f_0_250", 1
  %"$h_253" = load %String, %String* %h, align 8
  %"$$f_0_call_254" = call %Uint32 %"$$f_0_fptr_251"(i8* %"$$f_0_envptr_252", %String %"$h_253"), !dbg !76
  store %Uint32 %"$$f_0_call_254", %Uint32* %"$f_1", align 4, !dbg !76
  %"$$f_1_255" = load %Uint32, %Uint32* %"$f_1", align 4
  store %Uint32 %"$$f_1_255", %Uint32* %res, align 4, !dbg !76
  %"$gasrem_256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_257" = icmp ugt i64 1, %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %"$have_gas_243"
  %"$consume_260" = sub i64 %"$gasrem_256", 1
  store i64 %"$consume_260", i64* @_gasrem, align 8
  %"$g_2" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }, align 8
  %"$g_261" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_262" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_261", 0
  %"$g_envptr_263" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_261", 1
  %"$res_264" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_265" = call { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$g_fptr_262"(i8* %"$g_envptr_263", %Uint32 %"$res_264"), !dbg !79
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$g_call_265", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$g_2", align 8, !dbg !79
  %"$g_3" = alloca %Uint32, align 8
  %"$$g_2_266" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$g_2", align 8
  %"$$g_2_fptr_267" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$g_2_266", 0
  %"$$g_2_envptr_268" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$g_2_266", 1
  %"$t_269" = load %TName_List_String*, %TName_List_String** %t, align 8
  %"$$g_2_call_270" = call %Uint32 %"$$g_2_fptr_267"(i8* %"$$g_2_envptr_268", %TName_List_String* %"$t_269"), !dbg !79
  store %Uint32 %"$$g_2_call_270", %Uint32* %"$g_3", align 4, !dbg !79
  %"$$g_3_271" = load %Uint32, %Uint32* %"$g_3", align 4
  store %Uint32 %"$$g_3_271", %Uint32* %"$retval_21", align 4, !dbg !79
  br label %"$matchsucc_225"

"$Nil_272":                                       ; preds = %"$have_gas_223"
  %"$l_273" = bitcast %TName_List_String* %1 to %CName_Nil_String*
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 1, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$Nil_272"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$Nil_272"
  %"$consume_278" = sub i64 %"$gasrem_274", 1
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %"$z_279" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_279", %Uint32* %"$retval_21", align 4, !dbg !80
  br label %"$matchsucc_225"

"$empty_default_228":                             ; preds = %"$have_gas_223"
  br label %"$matchsucc_225"

"$matchsucc_225":                                 ; preds = %"$have_gas_277", %"$have_gas_259", %"$empty_default_228"
  %"$$retval_21_280" = load %Uint32, %Uint32* %"$retval_21", align 4
  ret %Uint32 %"$$retval_21_280"
}

define internal { %Uint32 (i8*, %TName_List_String*)*, i8* } @"$fundef_18"(%"$$fundef_18_env_151"* %0, %Uint32 %1) !dbg !82 {
entry:
  %"$$fundef_18_env_f_195" = getelementptr inbounds %"$$fundef_18_env_151", %"$$fundef_18_env_151"* %0, i32 0, i32 0
  %"$f_envload_196" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_195", align 8
  %f = alloca { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_196", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_18_env_g_197" = getelementptr inbounds %"$$fundef_18_env_151", %"$$fundef_18_env_151"* %0, i32 0, i32 1
  %"$g_envload_198" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_197", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_198", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_19" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }, align 8
  %"$gasrem_199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_200" = icmp ugt i64 1, %"$gasrem_199"
  br i1 %"$gascmp_200", label %"$out_of_gas_201", label %"$have_gas_202"

"$out_of_gas_201":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_202"

"$have_gas_202":                                  ; preds = %"$out_of_gas_201", %entry
  %"$consume_203" = sub i64 %"$gasrem_199", 1
  store i64 %"$consume_203", i64* @_gasrem, align 8
  %"$$fundef_20_envp_204_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_20_envp_204_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_204_load", i64 40)
  %"$$fundef_20_envp_204" = bitcast i8* %"$$fundef_20_envp_204_salloc" to %"$$fundef_20_env_150"*
  %"$$fundef_20_env_voidp_206" = bitcast %"$$fundef_20_env_150"* %"$$fundef_20_envp_204" to i8*
  %"$$fundef_20_cloval_207" = insertvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } { %Uint32 (i8*, %TName_List_String*)* bitcast (%Uint32 (%"$$fundef_20_env_150"*, %TName_List_String*)* @"$fundef_20" to %Uint32 (i8*, %TName_List_String*)*), i8* undef }, i8* %"$$fundef_20_env_voidp_206", 1
  %"$$fundef_20_env_f_208" = getelementptr inbounds %"$$fundef_20_env_150", %"$$fundef_20_env_150"* %"$$fundef_20_envp_204", i32 0, i32 0
  %"$f_209" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_209", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_f_208", align 8
  %"$$fundef_20_env_g_210" = getelementptr inbounds %"$$fundef_20_env_150", %"$$fundef_20_env_150"* %"$$fundef_20_envp_204", i32 0, i32 1
  %"$g_211" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_211", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_20_env_g_210", align 8
  %"$$fundef_20_env_z_212" = getelementptr inbounds %"$$fundef_20_env_150", %"$$fundef_20_env_150"* %"$$fundef_20_envp_204", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_20_env_z_212", align 4
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$fundef_20_cloval_207", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_19", align 8, !dbg !83
  %"$$retval_19_213" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_19", align 8
  ret { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$retval_19_213"
}

define internal { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_16"(%"$$fundef_16_env_152"* %0, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !84 {
entry:
  %"$retval_17" = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %entry
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_179"
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %"$$fundef_18_envp_186_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_18_envp_186_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_186_load", i64 32)
  %"$$fundef_18_envp_186" = bitcast i8* %"$$fundef_18_envp_186_salloc" to %"$$fundef_18_env_151"*
  %"$$fundef_18_env_voidp_188" = bitcast %"$$fundef_18_env_151"* %"$$fundef_18_envp_186" to i8*
  %"$$fundef_18_cloval_189" = insertvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_String*)*, i8* } (%"$$fundef_18_env_151"*, %Uint32)* @"$fundef_18" to { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_18_env_voidp_188", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_18_cloval_189", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !85
  %"$$fundef_18_env_f_190" = getelementptr inbounds %"$$fundef_18_env_151", %"$$fundef_18_env_151"* %"$$fundef_18_envp_186", i32 0, i32 0
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_f_190", align 8
  %"$$fundef_18_env_g_191" = getelementptr inbounds %"$$fundef_18_env_151", %"$$fundef_18_env_151"* %"$$fundef_18_envp_186", i32 0, i32 1
  %"$g_192" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_192", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_18_env_g_191", align 8
  %"$g_193" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_193", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_17", align 8, !dbg !85
  %"$$retval_17_194" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_17", align 8
  ret { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_17_194"
}

define internal { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_14"(%"$$fundef_14_env_153"* %0) !dbg !86 {
entry:
  %"$retval_15" = alloca { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 1, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %entry
  %"$consume_171" = sub i64 %"$gasrem_167", 1
  store i64 %"$consume_171", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_16_env_152"*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_16" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_15", align 8, !dbg !87
  %"$$retval_15_175" = load { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_15", align 8
  ret { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_15_175"
}

define internal { i8*, i8* }* @"$fundef_12"(%"$$fundef_12_env_154"* %0) !dbg !88 {
entry:
  %"$retval_13" = alloca { i8*, i8* }*, align 8
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %entry
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %"$dyndisp_table_163_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_163_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_163_salloc_load", i64 48)
  %"$dyndisp_table_163_salloc" = bitcast i8* %"$dyndisp_table_163_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_163" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_163_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_164" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_163", i32 1
  %"$dyndisp_pcast_165" = bitcast { i8*, i8* }* %"$dyndisp_gep_164" to { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_14_env_153"*)* @"$fundef_14" to { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_165", align 8
  store { i8*, i8* }* %"$dyndisp_table_163", { i8*, i8* }** %"$retval_13", align 8, !dbg !89
  %"$$retval_13_166" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_13", align 8
  ret { i8*, i8* }* %"$$retval_13_166"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() !dbg !90 {
entry:
  %"$gasrem_810" = load i64, i64* @_gasrem, align 8
  %"$gascmp_811" = icmp ugt i64 1, %"$gasrem_810"
  br i1 %"$gascmp_811", label %"$out_of_gas_812", label %"$have_gas_813"

"$out_of_gas_812":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_813"

"$have_gas_813":                                  ; preds = %"$out_of_gas_812", %entry
  %"$consume_814" = sub i64 %"$gasrem_810", 1
  store i64 %"$consume_814", i64* @_gasrem, align 8
  %"$dyndisp_table_821_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_821_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_821_salloc_load", i64 48)
  %"$dyndisp_table_821_salloc" = bitcast i8* %"$dyndisp_table_821_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_821" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_821_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_822" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_821", i32 0
  %"$dyndisp_pcast_823" = bitcast { i8*, i8* }* %"$dyndisp_gep_822" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_12_env_154"*)* @"$fundef_12" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_823", align 8
  %"$dyndisp_gep_824" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_821", i32 2
  %"$dyndisp_pcast_825" = bitcast { i8*, i8* }* %"$dyndisp_gep_824" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_22_env_149"*)* @"$fundef_22" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_825", align 8
  store { i8*, i8* }* %"$dyndisp_table_821", { i8*, i8* }** @list_foldl, align 8, !dbg !92
  %"$gasrem_826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_827" = icmp ugt i64 1, %"$gasrem_826"
  br i1 %"$gascmp_827", label %"$out_of_gas_828", label %"$have_gas_829"

"$out_of_gas_828":                                ; preds = %"$have_gas_813"
  call void @_out_of_gas()
  br label %"$have_gas_829"

"$have_gas_829":                                  ; preds = %"$out_of_gas_828", %"$have_gas_813"
  %"$consume_830" = sub i64 %"$gasrem_826", 1
  store i64 %"$consume_830", i64* @_gasrem, align 8
  %"$$fundef_32_envp_831_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_32_envp_831_salloc" = call i8* @_salloc(i8* %"$$fundef_32_envp_831_load", i64 8)
  %"$$fundef_32_envp_831" = bitcast i8* %"$$fundef_32_envp_831_salloc" to %"$$fundef_32_env_144"*
  %"$$fundef_32_env_voidp_833" = bitcast %"$$fundef_32_env_144"* %"$$fundef_32_envp_831" to i8*
  %"$$fundef_32_cloval_834" = insertvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_String*)*, i8* } (%"$$fundef_32_env_144"*)* @"$fundef_32" to { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_32_env_voidp_833", 1
  %"$$fundef_32_env_list_foldl_835" = getelementptr inbounds %"$$fundef_32_env_144", %"$$fundef_32_env_144"* %"$$fundef_32_envp_831", i32 0, i32 0
  %"$list_foldl_836" = load { i8*, i8* }*, { i8*, i8* }** @list_foldl, align 8
  store { i8*, i8* }* %"$list_foldl_836", { i8*, i8* }** %"$$fundef_32_env_list_foldl_835", align 8
  %"$$fundef_38_env_voidp_838" = bitcast %"$$fundef_32_env_144"* %"$$fundef_32_envp_831" to i8*
  %"$$fundef_38_cloval_839" = insertvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_38_env_141"*)* @"$fundef_38" to { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_38_env_voidp_838", 1
  %"$dyndisp_table_840_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_840_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_840_salloc_load", i64 48)
  %"$dyndisp_table_840_salloc" = bitcast i8* %"$dyndisp_table_840_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_840" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_840_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_841" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_840", i32 0
  %"$dyndisp_pcast_842" = bitcast { i8*, i8* }* %"$dyndisp_gep_841" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$$fundef_32_cloval_834", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_842", align 8
  %"$dyndisp_gep_843" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_840", i32 2
  %"$dyndisp_pcast_844" = bitcast { i8*, i8* }* %"$dyndisp_gep_843" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$$fundef_38_cloval_839", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_844", align 8
  store { i8*, i8* }* %"$dyndisp_table_840", { i8*, i8* }** @ListUtils.list_length, align 8, !dbg !93
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !94 {
entry:
  %"$expr_44" = alloca %Uint32, align 8
  %"$gasrem_845" = load i64, i64* @_gasrem, align 8
  %"$gascmp_846" = icmp ugt i64 1, %"$gasrem_845"
  br i1 %"$gascmp_846", label %"$out_of_gas_847", label %"$have_gas_848"

"$out_of_gas_847":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_848"

"$have_gas_848":                                  ; preds = %"$out_of_gas_847", %entry
  %"$consume_849" = sub i64 %"$gasrem_845", 1
  store i64 %"$consume_849", i64* @_gasrem, align 8
  %list_length2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_851" = icmp ugt i64 1, %"$gasrem_850"
  br i1 %"$gascmp_851", label %"$out_of_gas_852", label %"$have_gas_853"

"$out_of_gas_852":                                ; preds = %"$have_gas_848"
  call void @_out_of_gas()
  br label %"$have_gas_853"

"$have_gas_853":                                  ; preds = %"$out_of_gas_852", %"$have_gas_848"
  %"$consume_854" = sub i64 %"$gasrem_850", 1
  store i64 %"$consume_854", i64* @_gasrem, align 8
  %"$$fundef_45_envp_855_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_45_envp_855_salloc" = call i8* @_salloc(i8* %"$$fundef_45_envp_855_load", i64 8)
  %"$$fundef_45_envp_855" = bitcast i8* %"$$fundef_45_envp_855_salloc" to %"$$fundef_45_env_138"*
  %"$$fundef_45_env_voidp_857" = bitcast %"$$fundef_45_env_138"* %"$$fundef_45_envp_855" to i8*
  %"$$fundef_45_cloval_858" = insertvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_String*)*, i8* } (%"$$fundef_45_env_138"*)* @"$fundef_45" to { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_45_env_voidp_857", 1
  %"$$fundef_45_env_ListUtils.list_length_859" = getelementptr inbounds %"$$fundef_45_env_138", %"$$fundef_45_env_138"* %"$$fundef_45_envp_855", i32 0, i32 0
  %"$ListUtils.list_length_860" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  store { i8*, i8* }* %"$ListUtils.list_length_860", { i8*, i8* }** %"$$fundef_45_env_ListUtils.list_length_859", align 8
  %"$$fundef_49_env_voidp_862" = bitcast %"$$fundef_45_env_138"* %"$$fundef_45_envp_855" to i8*
  %"$$fundef_49_cloval_863" = insertvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_49_env_136"*)* @"$fundef_49" to { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_49_env_voidp_862", 1
  %"$dyndisp_table_864_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_864_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_864_salloc_load", i64 48)
  %"$dyndisp_table_864_salloc" = bitcast i8* %"$dyndisp_table_864_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_864" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_864_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_865" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_864", i32 0
  %"$dyndisp_pcast_866" = bitcast { i8*, i8* }* %"$dyndisp_gep_865" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$$fundef_45_cloval_858", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_866", align 8
  %"$dyndisp_gep_867" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_864", i32 2
  %"$dyndisp_pcast_868" = bitcast { i8*, i8* }* %"$dyndisp_gep_867" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$$fundef_49_cloval_863", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_868", align 8
  store { i8*, i8* }* %"$dyndisp_table_864", { i8*, i8* }** %list_length2, align 8, !dbg !95
  %"$gasrem_869" = load i64, i64* @_gasrem, align 8
  %"$gascmp_870" = icmp ugt i64 1, %"$gasrem_869"
  br i1 %"$gascmp_870", label %"$out_of_gas_871", label %"$have_gas_872"

"$out_of_gas_871":                                ; preds = %"$have_gas_853"
  call void @_out_of_gas()
  br label %"$have_gas_872"

"$have_gas_872":                                  ; preds = %"$out_of_gas_871", %"$have_gas_853"
  %"$consume_873" = sub i64 %"$gasrem_869", 1
  store i64 %"$consume_873", i64* @_gasrem, align 8
  %t = alloca { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_874" = load i64, i64* @_gasrem, align 8
  %"$gascmp_875" = icmp ugt i64 1, %"$gasrem_874"
  br i1 %"$gascmp_875", label %"$out_of_gas_876", label %"$have_gas_877"

"$out_of_gas_876":                                ; preds = %"$have_gas_872"
  call void @_out_of_gas()
  br label %"$have_gas_877"

"$have_gas_877":                                  ; preds = %"$out_of_gas_876", %"$have_gas_872"
  %"$consume_878" = sub i64 %"$gasrem_874", 1
  store i64 %"$consume_878", i64* @_gasrem, align 8
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_53_env_134"*, %TName_Bool*)* @"$fundef_53" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %t, align 8, !dbg !96
  %"$gasrem_882" = load i64, i64* @_gasrem, align 8
  %"$gascmp_883" = icmp ugt i64 1, %"$gasrem_882"
  br i1 %"$gascmp_883", label %"$out_of_gas_884", label %"$have_gas_885"

"$out_of_gas_884":                                ; preds = %"$have_gas_877"
  call void @_out_of_gas()
  br label %"$have_gas_885"

"$have_gas_885":                                  ; preds = %"$out_of_gas_884", %"$have_gas_877"
  %"$consume_886" = sub i64 %"$gasrem_882", 1
  store i64 %"$consume_886", i64* @_gasrem, align 8
  %true = alloca %TName_Bool*, align 8
  %"$gasrem_887" = load i64, i64* @_gasrem, align 8
  %"$gascmp_888" = icmp ugt i64 1, %"$gasrem_887"
  br i1 %"$gascmp_888", label %"$out_of_gas_889", label %"$have_gas_890"

"$out_of_gas_889":                                ; preds = %"$have_gas_885"
  call void @_out_of_gas()
  br label %"$have_gas_890"

"$have_gas_890":                                  ; preds = %"$out_of_gas_889", %"$have_gas_885"
  %"$consume_891" = sub i64 %"$gasrem_887", 1
  store i64 %"$consume_891", i64* @_gasrem, align 8
  %"$adtval_892_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_892_salloc" = call i8* @_salloc(i8* %"$adtval_892_load", i64 1)
  %"$adtval_892" = bitcast i8* %"$adtval_892_salloc" to %CName_True*
  %"$adtgep_893" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_892", i32 0, i32 0
  store i8 0, i8* %"$adtgep_893", align 1
  %"$adtptr_894" = bitcast %CName_True* %"$adtval_892" to %TName_Bool*
  store %TName_Bool* %"$adtptr_894", %TName_Bool** %true, align 8, !dbg !97
  %"$gasrem_895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_896" = icmp ugt i64 1, %"$gasrem_895"
  br i1 %"$gascmp_896", label %"$out_of_gas_897", label %"$have_gas_898"

"$out_of_gas_897":                                ; preds = %"$have_gas_890"
  call void @_out_of_gas()
  br label %"$have_gas_898"

"$have_gas_898":                                  ; preds = %"$out_of_gas_897", %"$have_gas_890"
  %"$consume_899" = sub i64 %"$gasrem_895", 1
  store i64 %"$consume_899", i64* @_gasrem, align 8
  %f = alloca { i8*, i8* }*, align 8
  %"$gasrem_900" = load i64, i64* @_gasrem, align 8
  %"$gascmp_901" = icmp ugt i64 1, %"$gasrem_900"
  br i1 %"$gascmp_901", label %"$out_of_gas_902", label %"$have_gas_903"

"$out_of_gas_902":                                ; preds = %"$have_gas_898"
  call void @_out_of_gas()
  br label %"$have_gas_903"

"$have_gas_903":                                  ; preds = %"$out_of_gas_902", %"$have_gas_898"
  %"$consume_904" = sub i64 %"$gasrem_900", 1
  store i64 %"$consume_904", i64* @_gasrem, align 8
  %"$t_7" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$t_905" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %t, align 8
  %"$t_fptr_906" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$t_905", 0
  %"$t_envptr_907" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$t_905", 1
  %"$true_908" = load %TName_Bool*, %TName_Bool** %true, align 8
  %"$t_call_909" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_906"(i8* %"$t_envptr_907", %TName_Bool* %"$true_908"), !dbg !98
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_909", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$t_7", align 8, !dbg !98
  %"$t_8" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$$t_7_910" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$t_7", align 8
  %"$$t_7_fptr_911" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$t_7_910", 0
  %"$$t_7_envptr_912" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$t_7_910", 1
  %"$ListUtils.list_length_913" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$$t_7_call_914" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_7_fptr_911"(i8* %"$$t_7_envptr_912", { i8*, i8* }* %"$ListUtils.list_length_913"), !dbg !98
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_7_call_914", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$t_8", align 8, !dbg !98
  %"$t_9" = alloca { i8*, i8* }*, align 8
  %"$$t_8_915" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$t_8", align 8
  %"$$t_8_fptr_916" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_8_915", 0
  %"$$t_8_envptr_917" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_8_915", 1
  %"$list_length2_918" = load { i8*, i8* }*, { i8*, i8* }** %list_length2, align 8
  %"$$t_8_call_919" = call { i8*, i8* }* %"$$t_8_fptr_916"(i8* %"$$t_8_envptr_917", { i8*, i8* }* %"$list_length2_918"), !dbg !98
  store { i8*, i8* }* %"$$t_8_call_919", { i8*, i8* }** %"$t_9", align 8, !dbg !98
  %"$$t_9_920" = load { i8*, i8* }*, { i8*, i8* }** %"$t_9", align 8
  store { i8*, i8* }* %"$$t_9_920", { i8*, i8* }** %f, align 8, !dbg !98
  %"$gasrem_921" = load i64, i64* @_gasrem, align 8
  %"$gascmp_922" = icmp ugt i64 1, %"$gasrem_921"
  br i1 %"$gascmp_922", label %"$out_of_gas_923", label %"$have_gas_924"

"$out_of_gas_923":                                ; preds = %"$have_gas_903"
  call void @_out_of_gas()
  br label %"$have_gas_924"

"$have_gas_924":                                  ; preds = %"$out_of_gas_923", %"$have_gas_903"
  %"$consume_925" = sub i64 %"$gasrem_921", 1
  store i64 %"$consume_925", i64* @_gasrem, align 8
  %f_string = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }, align 8
  %"$gasrem_926" = load i64, i64* @_gasrem, align 8
  %"$gascmp_927" = icmp ugt i64 1, %"$gasrem_926"
  br i1 %"$gascmp_927", label %"$out_of_gas_928", label %"$have_gas_929"

"$out_of_gas_928":                                ; preds = %"$have_gas_924"
  call void @_out_of_gas()
  br label %"$have_gas_929"

"$have_gas_929":                                  ; preds = %"$out_of_gas_928", %"$have_gas_924"
  %"$consume_930" = sub i64 %"$gasrem_926", 1
  store i64 %"$consume_930", i64* @_gasrem, align 8
  %"$f_931" = load { i8*, i8* }*, { i8*, i8* }** %f, align 8
  %"$f_932" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_931", i32 0
  %"$f_933" = bitcast { i8*, i8* }* %"$f_932" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*
  %"$f_934" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* %"$f_933", align 8
  %"$f_fptr_935" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$f_934", 0
  %"$f_envptr_936" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$f_934", 1
  %"$f_call_937" = call { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_fptr_935"(i8* %"$f_envptr_936"), !dbg !99
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_call_937", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %f_string, align 8, !dbg !100
  %"$gasrem_938" = load i64, i64* @_gasrem, align 8
  %"$gascmp_939" = icmp ugt i64 1, %"$gasrem_938"
  br i1 %"$gascmp_939", label %"$out_of_gas_940", label %"$have_gas_941"

"$out_of_gas_940":                                ; preds = %"$have_gas_929"
  call void @_out_of_gas()
  br label %"$have_gas_941"

"$have_gas_941":                                  ; preds = %"$out_of_gas_940", %"$have_gas_929"
  %"$consume_942" = sub i64 %"$gasrem_938", 1
  store i64 %"$consume_942", i64* @_gasrem, align 8
  %f_bystr20 = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_943" = load i64, i64* @_gasrem, align 8
  %"$gascmp_944" = icmp ugt i64 1, %"$gasrem_943"
  br i1 %"$gascmp_944", label %"$out_of_gas_945", label %"$have_gas_946"

"$out_of_gas_945":                                ; preds = %"$have_gas_941"
  call void @_out_of_gas()
  br label %"$have_gas_946"

"$have_gas_946":                                  ; preds = %"$out_of_gas_945", %"$have_gas_941"
  %"$consume_947" = sub i64 %"$gasrem_943", 1
  store i64 %"$consume_947", i64* @_gasrem, align 8
  %"$f_948" = load { i8*, i8* }*, { i8*, i8* }** %f, align 8
  %"$f_949" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_948", i32 2
  %"$f_950" = bitcast { i8*, i8* }* %"$f_949" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*
  %"$f_951" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* %"$f_950", align 8
  %"$f_fptr_952" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$f_951", 0
  %"$f_envptr_953" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$f_951", 1
  %"$f_call_954" = call { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_fptr_952"(i8* %"$f_envptr_953"), !dbg !101
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_call_954", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %f_bystr20, align 8, !dbg !102
  %"$gasrem_955" = load i64, i64* @_gasrem, align 8
  %"$gascmp_956" = icmp ugt i64 1, %"$gasrem_955"
  br i1 %"$gascmp_956", label %"$out_of_gas_957", label %"$have_gas_958"

"$out_of_gas_957":                                ; preds = %"$have_gas_946"
  call void @_out_of_gas()
  br label %"$have_gas_958"

"$have_gas_958":                                  ; preds = %"$out_of_gas_957", %"$have_gas_946"
  %"$consume_959" = sub i64 %"$gasrem_955", 1
  store i64 %"$consume_959", i64* @_gasrem, align 8
  %nil_string = alloca %TName_List_String*, align 8
  %"$gasrem_960" = load i64, i64* @_gasrem, align 8
  %"$gascmp_961" = icmp ugt i64 1, %"$gasrem_960"
  br i1 %"$gascmp_961", label %"$out_of_gas_962", label %"$have_gas_963"

"$out_of_gas_962":                                ; preds = %"$have_gas_958"
  call void @_out_of_gas()
  br label %"$have_gas_963"

"$have_gas_963":                                  ; preds = %"$out_of_gas_962", %"$have_gas_958"
  %"$consume_964" = sub i64 %"$gasrem_960", 1
  store i64 %"$consume_964", i64* @_gasrem, align 8
  %"$adtval_965_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_965_salloc" = call i8* @_salloc(i8* %"$adtval_965_load", i64 1)
  %"$adtval_965" = bitcast i8* %"$adtval_965_salloc" to %CName_Nil_String*
  %"$adtgep_966" = getelementptr inbounds %CName_Nil_String, %CName_Nil_String* %"$adtval_965", i32 0, i32 0
  store i8 1, i8* %"$adtgep_966", align 1
  %"$adtptr_967" = bitcast %CName_Nil_String* %"$adtval_965" to %TName_List_String*
  store %TName_List_String* %"$adtptr_967", %TName_List_String** %nil_string, align 8, !dbg !103
  %"$gasrem_968" = load i64, i64* @_gasrem, align 8
  %"$gascmp_969" = icmp ugt i64 1, %"$gasrem_968"
  br i1 %"$gascmp_969", label %"$out_of_gas_970", label %"$have_gas_971"

"$out_of_gas_970":                                ; preds = %"$have_gas_963"
  call void @_out_of_gas()
  br label %"$have_gas_971"

"$have_gas_971":                                  ; preds = %"$out_of_gas_970", %"$have_gas_963"
  %"$consume_972" = sub i64 %"$gasrem_968", 1
  store i64 %"$consume_972", i64* @_gasrem, align 8
  %nil_bystr20 = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_973" = load i64, i64* @_gasrem, align 8
  %"$gascmp_974" = icmp ugt i64 1, %"$gasrem_973"
  br i1 %"$gascmp_974", label %"$out_of_gas_975", label %"$have_gas_976"

"$out_of_gas_975":                                ; preds = %"$have_gas_971"
  call void @_out_of_gas()
  br label %"$have_gas_976"

"$have_gas_976":                                  ; preds = %"$out_of_gas_975", %"$have_gas_971"
  %"$consume_977" = sub i64 %"$gasrem_973", 1
  store i64 %"$consume_977", i64* @_gasrem, align 8
  %"$adtval_978_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_978_salloc" = call i8* @_salloc(i8* %"$adtval_978_load", i64 1)
  %"$adtval_978" = bitcast i8* %"$adtval_978_salloc" to %CName_Nil_ByStr20*
  %"$adtgep_979" = getelementptr inbounds %CName_Nil_ByStr20, %CName_Nil_ByStr20* %"$adtval_978", i32 0, i32 0
  store i8 1, i8* %"$adtgep_979", align 1
  %"$adtptr_980" = bitcast %CName_Nil_ByStr20* %"$adtval_978" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_980", %TName_List_ByStr20** %nil_bystr20, align 8, !dbg !104
  %"$gasrem_981" = load i64, i64* @_gasrem, align 8
  %"$gascmp_982" = icmp ugt i64 1, %"$gasrem_981"
  br i1 %"$gascmp_982", label %"$out_of_gas_983", label %"$have_gas_984"

"$out_of_gas_983":                                ; preds = %"$have_gas_976"
  call void @_out_of_gas()
  br label %"$have_gas_984"

"$have_gas_984":                                  ; preds = %"$out_of_gas_983", %"$have_gas_976"
  %"$consume_985" = sub i64 %"$gasrem_981", 1
  store i64 %"$consume_985", i64* @_gasrem, align 8
  %a = alloca %Uint32, align 8
  %"$gasrem_986" = load i64, i64* @_gasrem, align 8
  %"$gascmp_987" = icmp ugt i64 1, %"$gasrem_986"
  br i1 %"$gascmp_987", label %"$out_of_gas_988", label %"$have_gas_989"

"$out_of_gas_988":                                ; preds = %"$have_gas_984"
  call void @_out_of_gas()
  br label %"$have_gas_989"

"$have_gas_989":                                  ; preds = %"$out_of_gas_988", %"$have_gas_984"
  %"$consume_990" = sub i64 %"$gasrem_986", 1
  store i64 %"$consume_990", i64* @_gasrem, align 8
  %"$f_string_10" = alloca %Uint32, align 8
  %"$f_string_991" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %f_string, align 8
  %"$f_string_fptr_992" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_string_991", 0
  %"$f_string_envptr_993" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_string_991", 1
  %"$nil_string_994" = load %TName_List_String*, %TName_List_String** %nil_string, align 8
  %"$f_string_call_995" = call %Uint32 %"$f_string_fptr_992"(i8* %"$f_string_envptr_993", %TName_List_String* %"$nil_string_994"), !dbg !105
  store %Uint32 %"$f_string_call_995", %Uint32* %"$f_string_10", align 4, !dbg !105
  %"$$f_string_10_996" = load %Uint32, %Uint32* %"$f_string_10", align 4
  store %Uint32 %"$$f_string_10_996", %Uint32* %a, align 4, !dbg !105
  %"$gasrem_997" = load i64, i64* @_gasrem, align 8
  %"$gascmp_998" = icmp ugt i64 1, %"$gasrem_997"
  br i1 %"$gascmp_998", label %"$out_of_gas_999", label %"$have_gas_1000"

"$out_of_gas_999":                                ; preds = %"$have_gas_989"
  call void @_out_of_gas()
  br label %"$have_gas_1000"

"$have_gas_1000":                                 ; preds = %"$out_of_gas_999", %"$have_gas_989"
  %"$consume_1001" = sub i64 %"$gasrem_997", 1
  store i64 %"$consume_1001", i64* @_gasrem, align 8
  %b = alloca %Uint32, align 8
  %"$gasrem_1002" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1003" = icmp ugt i64 1, %"$gasrem_1002"
  br i1 %"$gascmp_1003", label %"$out_of_gas_1004", label %"$have_gas_1005"

"$out_of_gas_1004":                               ; preds = %"$have_gas_1000"
  call void @_out_of_gas()
  br label %"$have_gas_1005"

"$have_gas_1005":                                 ; preds = %"$out_of_gas_1004", %"$have_gas_1000"
  %"$consume_1006" = sub i64 %"$gasrem_1002", 1
  store i64 %"$consume_1006", i64* @_gasrem, align 8
  %"$f_bystr20_11" = alloca %Uint32, align 8
  %"$f_bystr20_1007" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %f_bystr20, align 8
  %"$f_bystr20_fptr_1008" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_bystr20_1007", 0
  %"$f_bystr20_envptr_1009" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_bystr20_1007", 1
  %"$nil_bystr20_1010" = load %TName_List_ByStr20*, %TName_List_ByStr20** %nil_bystr20, align 8
  %"$f_bystr20_call_1011" = call %Uint32 %"$f_bystr20_fptr_1008"(i8* %"$f_bystr20_envptr_1009", %TName_List_ByStr20* %"$nil_bystr20_1010"), !dbg !106
  store %Uint32 %"$f_bystr20_call_1011", %Uint32* %"$f_bystr20_11", align 4, !dbg !106
  %"$$f_bystr20_11_1012" = load %Uint32, %Uint32* %"$f_bystr20_11", align 4
  store %Uint32 %"$$f_bystr20_11_1012", %Uint32* %b, align 4, !dbg !106
  %"$gasrem_1013" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1014" = icmp ugt i64 4, %"$gasrem_1013"
  br i1 %"$gascmp_1014", label %"$out_of_gas_1015", label %"$have_gas_1016"

"$out_of_gas_1015":                               ; preds = %"$have_gas_1005"
  call void @_out_of_gas()
  br label %"$have_gas_1016"

"$have_gas_1016":                                 ; preds = %"$out_of_gas_1015", %"$have_gas_1005"
  %"$consume_1017" = sub i64 %"$gasrem_1013", 4
  store i64 %"$consume_1017", i64* @_gasrem, align 8
  %"$a_1018" = load %Uint32, %Uint32* %a, align 4
  %"$b_1019" = load %Uint32, %Uint32* %b, align 4
  %"$add_call_1020" = call %Uint32 @_add_Uint32(%Uint32 %"$a_1018", %Uint32 %"$b_1019"), !dbg !107
  store %Uint32 %"$add_call_1020", %Uint32* %"$expr_44", align 4, !dbg !107
  %"$$expr_44_1021" = load %Uint32, %Uint32* %"$expr_44", align 4
  ret %Uint32 %"$$expr_44_1021"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1022" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_1023" = alloca %Uint32, align 8
  %"$memvoidcast_1024" = bitcast %Uint32* %"$pval_1023" to i8*
  store %Uint32 %"$exprval_1022", %Uint32* %"$pval_1023", align 4
  %"$execptr_load_1025" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1025", %_TyDescrTy_Typ* @"$TyDescr_Uint32_63", i8* %"$memvoidcast_1024")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "nonprenex.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_57", linkageName: "$fundef_57", scope: !2, file: !2, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 14, column: 5, scope: !4)
!9 = !DILocation(line: 15, column: 15, scope: !10)
!10 = distinct !DILexicalBlock(scope: !11, file: !2, line: 15, column: 7)
!11 = distinct !DILexicalBlock(scope: !4, file: !2, line: 14, column: 5)
!12 = !DILocation(line: 16, column: 16, scope: !13)
!13 = distinct !DILexicalBlock(scope: !11, file: !2, line: 16, column: 7)
!14 = distinct !DISubprogram(name: "$fundef_55", linkageName: "$fundef_55", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 14, column: 5, scope: !14)
!16 = distinct !DISubprogram(name: "$fundef_53", linkageName: "$fundef_53", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!17 = !DILocation(line: 13, column: 3, scope: !16)
!18 = distinct !DISubprogram(name: "$fundef_51", linkageName: "$fundef_51", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!19 = !DILocation(line: 4, column: 15, scope: !18)
!20 = !DILocation(line: 4, column: 14, scope: !18)
!21 = !DILocation(line: 5, column: 13, scope: !18)
!22 = !DILocation(line: 6, column: 15, scope: !18)
!23 = !DILocation(line: 7, column: 5, scope: !18)
!24 = distinct !DISubprogram(name: "$fundef_49", linkageName: "$fundef_49", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!25 = !DILocation(line: 4, column: 5, scope: !24)
!26 = distinct !DISubprogram(name: "$fundef_47", linkageName: "$fundef_47", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!27 = !DILocation(line: 4, column: 15, scope: !26)
!28 = !DILocation(line: 4, column: 14, scope: !26)
!29 = !DILocation(line: 5, column: 13, scope: !26)
!30 = !DILocation(line: 6, column: 15, scope: !26)
!31 = !DILocation(line: 7, column: 5, scope: !26)
!32 = distinct !DISubprogram(name: "$fundef_45", linkageName: "$fundef_45", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!33 = !DILocation(line: 4, column: 5, scope: !32)
!34 = distinct !DISubprogram(name: "$fundef_42", linkageName: "$fundef_42", scope: !35, file: !35, line: 104, type: !5, scopeLine: 104, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!35 = !DIFile(filename: "ListUtils.scillib", directory: "../src/stdlib")
!36 = !DILocation(line: 104, column: 5, scope: !34)
!37 = distinct !DISubprogram(name: "$fundef_40", linkageName: "$fundef_40", scope: !35, file: !35, line: 103, type: !5, scopeLine: 103, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!38 = !DILocation(line: 104, column: 5, scope: !37)
!39 = distinct !DISubprogram(name: "$fundef_38", linkageName: "$fundef_38", scope: !35, file: !35, line: 101, type: !5, scopeLine: 101, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!40 = !DILocation(line: 101, column: 16, scope: !39)
!41 = !DILocation(line: 101, column: 15, scope: !39)
!42 = !DILocation(line: 102, column: 13, scope: !39)
!43 = !DILocation(line: 103, column: 34, scope: !39)
!44 = !DILocation(line: 105, column: 14, scope: !39)
!45 = !DILocation(line: 106, column: 3, scope: !39)
!46 = distinct !DISubprogram(name: "$fundef_36", linkageName: "$fundef_36", scope: !35, file: !35, line: 104, type: !5, scopeLine: 104, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!47 = !DILocation(line: 104, column: 5, scope: !46)
!48 = distinct !DISubprogram(name: "$fundef_34", linkageName: "$fundef_34", scope: !35, file: !35, line: 103, type: !5, scopeLine: 103, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!49 = !DILocation(line: 104, column: 5, scope: !48)
!50 = distinct !DISubprogram(name: "$fundef_32", linkageName: "$fundef_32", scope: !35, file: !35, line: 101, type: !5, scopeLine: 101, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!51 = !DILocation(line: 101, column: 16, scope: !50)
!52 = !DILocation(line: 101, column: 15, scope: !50)
!53 = !DILocation(line: 102, column: 13, scope: !50)
!54 = !DILocation(line: 103, column: 34, scope: !50)
!55 = !DILocation(line: 105, column: 14, scope: !50)
!56 = !DILocation(line: 106, column: 3, scope: !50)
!57 = distinct !DISubprogram(name: "$fundef_30", linkageName: "$fundef_30", scope: !58, file: !58, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!58 = !DIFile(filename: "Prelude", directory: ".")
!59 = !DILocation(line: 1, column: 37, scope: !57)
!60 = !DILocation(line: 1, column: 74, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !58, line: 1, column: 52)
!62 = distinct !DILexicalBlock(scope: !57, file: !58, line: 1, column: 37)
!63 = !DILocation(line: 1, column: 83, scope: !61)
!64 = !DILocation(line: 1, column: 100, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !58, line: 1, column: 93)
!66 = distinct !DISubprogram(name: "$fundef_28", linkageName: "$fundef_28", scope: !58, file: !58, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!67 = !DILocation(line: 1, column: 37, scope: !66)
!68 = distinct !DISubprogram(name: "$fundef_26", linkageName: "$fundef_26", scope: !58, file: !58, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!69 = !DILocation(line: 1, column: 17, scope: !68)
!70 = distinct !DISubprogram(name: "$fundef_24", linkageName: "$fundef_24", scope: !58, file: !58, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!71 = !DILocation(line: 1, column: 17, scope: !70)
!72 = distinct !DISubprogram(name: "$fundef_22", linkageName: "$fundef_22", scope: !58, file: !58, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!73 = !DILocation(line: 1, column: 17, scope: !72)
!74 = distinct !DISubprogram(name: "$fundef_20", linkageName: "$fundef_20", scope: !58, file: !58, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!75 = !DILocation(line: 1, column: 37, scope: !74)
!76 = !DILocation(line: 1, column: 74, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !58, line: 1, column: 52)
!78 = distinct !DILexicalBlock(scope: !74, file: !58, line: 1, column: 37)
!79 = !DILocation(line: 1, column: 83, scope: !77)
!80 = !DILocation(line: 1, column: 100, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !58, line: 1, column: 93)
!82 = distinct !DISubprogram(name: "$fundef_18", linkageName: "$fundef_18", scope: !58, file: !58, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!83 = !DILocation(line: 1, column: 37, scope: !82)
!84 = distinct !DISubprogram(name: "$fundef_16", linkageName: "$fundef_16", scope: !58, file: !58, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!85 = !DILocation(line: 1, column: 17, scope: !84)
!86 = distinct !DISubprogram(name: "$fundef_14", linkageName: "$fundef_14", scope: !58, file: !58, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!87 = !DILocation(line: 1, column: 17, scope: !86)
!88 = distinct !DISubprogram(name: "$fundef_12", linkageName: "$fundef_12", scope: !58, file: !58, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!89 = !DILocation(line: 1, column: 17, scope: !88)
!90 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !91, file: !91, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!91 = !DIFile(filename: ".", directory: ".")
!92 = !DILocation(line: 1, column: 17, scope: !90)
!93 = !DILocation(line: 100, column: 3, scope: !90)
!94 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!95 = !DILocation(line: 2, column: 3, scope: !94)
!96 = !DILocation(line: 12, column: 3, scope: !94)
!97 = !DILocation(line: 20, column: 12, scope: !94)
!98 = !DILocation(line: 22, column: 9, scope: !94)
!99 = !DILocation(line: 24, column: 17, scope: !94)
!100 = !DILocation(line: 24, column: 16, scope: !94)
!101 = !DILocation(line: 25, column: 18, scope: !94)
!102 = !DILocation(line: 25, column: 17, scope: !94)
!103 = !DILocation(line: 26, column: 18, scope: !94)
!104 = !DILocation(line: 27, column: 19, scope: !94)
!105 = !DILocation(line: 29, column: 9, scope: !94)
!106 = !DILocation(line: 30, column: 9, scope: !94)
!107 = !DILocation(line: 31, column: 1, scope: !94)
