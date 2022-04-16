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

%"$TyDescrTy_PrimTyp_65" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_99" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_98"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_98" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_100"**, %"$TyDescrTy_ADTTyp_99"* }
%"$TyDescrTy_ADTTyp_Constr_100" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_1059" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1060" = type { %ParamDescrString, i32, %"$ParamDescr_1059"* }
%"$$fundef_63_env_140" = type { %TName_Bool*, { i8*, i8* }* }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$$fundef_61_env_141" = type { %TName_Bool* }
%"$$fundef_59_env_142" = type {}
%Uint32 = type { i32 }
%"$$fundef_57_env_143" = type { { i8*, i8* }* }
%TName_List_ByStr20 = type { i8, %CName_Cons_ByStr20*, %CName_Nil_ByStr20* }
%CName_Cons_ByStr20 = type <{ i8, [20 x i8], %TName_List_ByStr20* }>
%CName_Nil_ByStr20 = type <{ i8 }>
%"$$fundef_55_env_144" = type { { i8*, i8* }* }
%"$$fundef_53_env_145" = type { { i8*, i8* }* }
%TName_List_String = type { i8, %CName_Cons_String*, %CName_Nil_String* }
%CName_Cons_String = type <{ i8, %String, %TName_List_String* }>
%String = type { i8*, i32 }
%CName_Nil_String = type <{ i8 }>
%"$$fundef_51_env_146" = type { { i8*, i8* }* }
%"$$fundef_48_env_147" = type { %Uint32, %Uint32 }
%"$$fundef_46_env_148" = type { %Uint32 }
%"$$fundef_44_env_149" = type { { i8*, i8* }* }
%"$$fundef_42_env_150" = type { %Uint32, %Uint32 }
%"$$fundef_40_env_151" = type { %Uint32 }
%"$$fundef_38_env_152" = type { { i8*, i8* }* }
%"$$fundef_36_env_153" = type { { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_34_env_154" = type { { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_32_env_155" = type {}
%"$$fundef_30_env_156" = type {}
%"$$fundef_28_env_157" = type {}
%"$$fundef_26_env_158" = type { { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_24_env_159" = type { { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_22_env_160" = type {}
%"$$fundef_20_env_161" = type {}
%"$$fundef_18_env_162" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_66" = global %"$TyDescrTy_PrimTyp_65" zeroinitializer
@"$TyDescr_Int32_67" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Int32_Prim_66" to i8*) }
@"$TyDescr_Uint32_Prim_68" = global %"$TyDescrTy_PrimTyp_65" { i32 1, i32 0 }
@"$TyDescr_Uint32_69" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Uint32_Prim_68" to i8*) }
@"$TyDescr_Int64_Prim_70" = global %"$TyDescrTy_PrimTyp_65" { i32 0, i32 1 }
@"$TyDescr_Int64_71" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Int64_Prim_70" to i8*) }
@"$TyDescr_Uint64_Prim_72" = global %"$TyDescrTy_PrimTyp_65" { i32 1, i32 1 }
@"$TyDescr_Uint64_73" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Uint64_Prim_72" to i8*) }
@"$TyDescr_Int128_Prim_74" = global %"$TyDescrTy_PrimTyp_65" { i32 0, i32 2 }
@"$TyDescr_Int128_75" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Int128_Prim_74" to i8*) }
@"$TyDescr_Uint128_Prim_76" = global %"$TyDescrTy_PrimTyp_65" { i32 1, i32 2 }
@"$TyDescr_Uint128_77" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Uint128_Prim_76" to i8*) }
@"$TyDescr_Int256_Prim_78" = global %"$TyDescrTy_PrimTyp_65" { i32 0, i32 3 }
@"$TyDescr_Int256_79" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Int256_Prim_78" to i8*) }
@"$TyDescr_Uint256_Prim_80" = global %"$TyDescrTy_PrimTyp_65" { i32 1, i32 3 }
@"$TyDescr_Uint256_81" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Uint256_Prim_80" to i8*) }
@"$TyDescr_String_Prim_82" = global %"$TyDescrTy_PrimTyp_65" { i32 2, i32 0 }
@"$TyDescr_String_83" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_String_Prim_82" to i8*) }
@"$TyDescr_Bnum_Prim_84" = global %"$TyDescrTy_PrimTyp_65" { i32 3, i32 0 }
@"$TyDescr_Bnum_85" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Bnum_Prim_84" to i8*) }
@"$TyDescr_Message_Prim_86" = global %"$TyDescrTy_PrimTyp_65" { i32 4, i32 0 }
@"$TyDescr_Message_87" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Message_Prim_86" to i8*) }
@"$TyDescr_Event_Prim_88" = global %"$TyDescrTy_PrimTyp_65" { i32 5, i32 0 }
@"$TyDescr_Event_89" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Event_Prim_88" to i8*) }
@"$TyDescr_Exception_Prim_90" = global %"$TyDescrTy_PrimTyp_65" { i32 6, i32 0 }
@"$TyDescr_Exception_91" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Exception_Prim_90" to i8*) }
@"$TyDescr_ReplicateContr_Prim_92" = global %"$TyDescrTy_PrimTyp_65" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_93" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_ReplicateContr_Prim_92" to i8*) }
@"$TyDescr_Bystr_Prim_94" = global %"$TyDescrTy_PrimTyp_65" { i32 7, i32 0 }
@"$TyDescr_Bystr_95" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Bystr_Prim_94" to i8*) }
@"$TyDescr_Bystr20_Prim_96" = global %"$TyDescrTy_PrimTyp_65" { i32 8, i32 20 }
@"$TyDescr_Bystr20_97" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Bystr20_Prim_96" to i8*) }
@"$TyDescr_ADT_Bool_101" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_98"* @"$TyDescr_Bool_ADTTyp_Specl_116" to i8*) }
@"$TyDescr_ADT_List_ByStr20_102" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_98"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_128" to i8*) }
@"$TyDescr_ADT_List_String_103" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_98"* @"$TyDescr_List_String_ADTTyp_Specl_137" to i8*) }
@"$TyDescr_Bool_ADTTyp_107" = unnamed_addr constant %"$TyDescrTy_ADTTyp_99" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_118", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_98"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_98"*], [1 x %"$TyDescrTy_ADTTyp_Specl_98"*]* @"$TyDescr_Bool_ADTTyp_m_specls_117", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_108" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_109" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_110" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_100" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_109", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_108", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_111" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_112" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_113" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_100" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_112", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_111", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_114" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_100"*] [%"$TyDescrTy_ADTTyp_Constr_100"* @"$TyDescr_Bool_True_ADTTyp_Constr_110", %"$TyDescrTy_ADTTyp_Constr_100"* @"$TyDescr_Bool_False_ADTTyp_Constr_113"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_115" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_116" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_98" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_115", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_100"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_100"*], [2 x %"$TyDescrTy_ADTTyp_Constr_100"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_114", i32 0, i32 0), %"$TyDescrTy_ADTTyp_99"* @"$TyDescr_Bool_ADTTyp_107" }
@"$TyDescr_Bool_ADTTyp_m_specls_117" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_98"*] [%"$TyDescrTy_ADTTyp_Specl_98"* @"$TyDescr_Bool_ADTTyp_Specl_116"]
@"$TyDescr_ADT_Bool_118" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_119" = unnamed_addr constant %"$TyDescrTy_ADTTyp_99" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_139", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_98"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_98"*], [2 x %"$TyDescrTy_ADTTyp_Specl_98"*]* @"$TyDescr_List_ADTTyp_m_specls_138", i32 0, i32 0) }
@"$TyDescr_List_Cons_ByStr20_Constr_m_args_120" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_97", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_102"]
@"$TyDescr_ADT_Cons_121" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_122" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_100" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_121", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_Constr_m_args_120", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_Constr_m_args_123" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_124" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_125" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_100" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_124", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_Constr_m_args_123", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_126" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_100"*] [%"$TyDescrTy_ADTTyp_Constr_100"* @"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_122", %"$TyDescrTy_ADTTyp_Constr_100"* @"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_125"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_127" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_97"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_128" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_98" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_127", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_100"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_100"*], [2 x %"$TyDescrTy_ADTTyp_Constr_100"*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_126", i32 0, i32 0), %"$TyDescrTy_ADTTyp_99"* @"$TyDescr_List_ADTTyp_119" }
@"$TyDescr_List_Cons_String_Constr_m_args_129" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_83", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_103"]
@"$TyDescr_ADT_Cons_130" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_String_ADTTyp_Constr_131" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_100" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_130", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_String_Constr_m_args_129", i32 0, i32 0) }
@"$TyDescr_List_Nil_String_Constr_m_args_132" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_133" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_String_ADTTyp_Constr_134" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_100" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_133", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_String_Constr_m_args_132", i32 0, i32 0) }
@"$TyDescr_List_String_ADTTyp_Specl_m_constrs_135" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_100"*] [%"$TyDescrTy_ADTTyp_Constr_100"* @"$TyDescr_List_Cons_String_ADTTyp_Constr_131", %"$TyDescrTy_ADTTyp_Constr_100"* @"$TyDescr_List_Nil_String_ADTTyp_Constr_134"]
@"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_136" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_83"]
@"$TyDescr_List_String_ADTTyp_Specl_137" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_98" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_136", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_100"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_100"*], [2 x %"$TyDescrTy_ADTTyp_Constr_100"*]* @"$TyDescr_List_String_ADTTyp_Specl_m_constrs_135", i32 0, i32 0), %"$TyDescrTy_ADTTyp_99"* @"$TyDescr_List_ADTTyp_119" }
@"$TyDescr_List_ADTTyp_m_specls_138" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_98"*] [%"$TyDescrTy_ADTTyp_Specl_98"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_128", %"$TyDescrTy_ADTTyp_Specl_98"* @"$TyDescr_List_String_ADTTyp_Specl_137"]
@"$TyDescr_ADT_List_139" = unnamed_addr constant [4 x i8] c"List"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@ListUtils.list_length = global { i8*, i8* }* null
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_89", %_TyDescrTy_Typ* @"$TyDescr_Int64_71", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_101", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_97", %_TyDescrTy_Typ* @"$TyDescr_Uint256_81", %_TyDescrTy_Typ* @"$TyDescr_Uint32_69", %_TyDescrTy_Typ* @"$TyDescr_Uint64_73", %_TyDescrTy_Typ* @"$TyDescr_Bnum_85", %_TyDescrTy_Typ* @"$TyDescr_Uint128_77", %_TyDescrTy_Typ* @"$TyDescr_Exception_91", %_TyDescrTy_Typ* @"$TyDescr_String_83", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_102", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_103", %_TyDescrTy_Typ* @"$TyDescr_Int256_79", %_TyDescrTy_Typ* @"$TyDescr_Int128_75", %_TyDescrTy_Typ* @"$TyDescr_Bystr_95", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_93", %_TyDescrTy_Typ* @"$TyDescr_Message_87", %_TyDescrTy_Typ* @"$TyDescr_Int32_67"]
@_tydescr_table_length = constant i32 19
@_contract_parameters = constant [0 x %"$ParamDescr_1059"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1060"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { i8*, i8* }* @"$fundef_63"(%"$$fundef_63_env_140"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_63_env_b_788" = getelementptr inbounds %"$$fundef_63_env_140", %"$$fundef_63_env_140"* %0, i32 0, i32 0
  %"$b_envload_789" = load %TName_Bool*, %TName_Bool** %"$$fundef_63_env_b_788", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_789", %TName_Bool** %b, align 8
  %"$$fundef_63_env_f_790" = getelementptr inbounds %"$$fundef_63_env_140", %"$$fundef_63_env_140"* %0, i32 0, i32 1
  %"$f_envload_791" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_63_env_f_790", align 8
  %f = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$f_envload_791", { i8*, i8* }** %f, align 8
  %"$retval_64" = alloca { i8*, i8* }*, align 8
  %"$gasrem_792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_793" = icmp ugt i64 2, %"$gasrem_792"
  br i1 %"$gascmp_793", label %"$out_of_gas_794", label %"$have_gas_795"

"$out_of_gas_794":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_795"

"$have_gas_795":                                  ; preds = %"$out_of_gas_794", %entry
  %"$consume_796" = sub i64 %"$gasrem_792", 2
  store i64 %"$consume_796", i64* @_gasrem, align 8
  %"$b_798" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_799" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_798", i32 0, i32 0
  %"$b_tag_800" = load i8, i8* %"$b_tag_799", align 1
  switch i8 %"$b_tag_800", label %"$empty_default_801" [
    i8 0, label %"$True_802"
    i8 1, label %"$False_809"
  ]

"$True_802":                                      ; preds = %"$have_gas_795"
  %"$b_803" = bitcast %TName_Bool* %"$b_798" to %CName_True*
  %"$gasrem_804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_805" = icmp ugt i64 1, %"$gasrem_804"
  br i1 %"$gascmp_805", label %"$out_of_gas_806", label %"$have_gas_807"

"$out_of_gas_806":                                ; preds = %"$True_802"
  call void @_out_of_gas()
  br label %"$have_gas_807"

"$have_gas_807":                                  ; preds = %"$out_of_gas_806", %"$True_802"
  %"$consume_808" = sub i64 %"$gasrem_804", 1
  store i64 %"$consume_808", i64* @_gasrem, align 8
  store { i8*, i8* }* %1, { i8*, i8* }** %"$retval_64", align 8
  br label %"$matchsucc_797"

"$False_809":                                     ; preds = %"$have_gas_795"
  %"$b_810" = bitcast %TName_Bool* %"$b_798" to %CName_False*
  %"$gasrem_811" = load i64, i64* @_gasrem, align 8
  %"$gascmp_812" = icmp ugt i64 1, %"$gasrem_811"
  br i1 %"$gascmp_812", label %"$out_of_gas_813", label %"$have_gas_814"

"$out_of_gas_813":                                ; preds = %"$False_809"
  call void @_out_of_gas()
  br label %"$have_gas_814"

"$have_gas_814":                                  ; preds = %"$out_of_gas_813", %"$False_809"
  %"$consume_815" = sub i64 %"$gasrem_811", 1
  store i64 %"$consume_815", i64* @_gasrem, align 8
  %"$f_816" = load { i8*, i8* }*, { i8*, i8* }** %f, align 8
  store { i8*, i8* }* %"$f_816", { i8*, i8* }** %"$retval_64", align 8
  br label %"$matchsucc_797"

"$empty_default_801":                             ; preds = %"$have_gas_795"
  br label %"$matchsucc_797"

"$matchsucc_797":                                 ; preds = %"$have_gas_814", %"$have_gas_807", %"$empty_default_801"
  %"$$retval_64_817" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_64", align 8
  ret { i8*, i8* }* %"$$retval_64_817"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_61"(%"$$fundef_61_env_141"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_61_env_b_773" = getelementptr inbounds %"$$fundef_61_env_141", %"$$fundef_61_env_141"* %0, i32 0, i32 0
  %"$b_envload_774" = load %TName_Bool*, %TName_Bool** %"$$fundef_61_env_b_773", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_774", %TName_Bool** %b, align 8
  %"$retval_62" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_775" = load i64, i64* @_gasrem, align 8
  %"$gascmp_776" = icmp ugt i64 1, %"$gasrem_775"
  br i1 %"$gascmp_776", label %"$out_of_gas_777", label %"$have_gas_778"

"$out_of_gas_777":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_778"

"$have_gas_778":                                  ; preds = %"$out_of_gas_777", %entry
  %"$consume_779" = sub i64 %"$gasrem_775", 1
  store i64 %"$consume_779", i64* @_gasrem, align 8
  %"$$fundef_63_envp_780_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_63_envp_780_salloc" = call i8* @_salloc(i8* %"$$fundef_63_envp_780_load", i64 16)
  %"$$fundef_63_envp_780" = bitcast i8* %"$$fundef_63_envp_780_salloc" to %"$$fundef_63_env_140"*
  %"$$fundef_63_env_voidp_782" = bitcast %"$$fundef_63_env_140"* %"$$fundef_63_envp_780" to i8*
  %"$$fundef_63_cloval_783" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_63_env_140"*, { i8*, i8* }*)* @"$fundef_63" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_63_env_voidp_782", 1
  %"$$fundef_63_env_b_784" = getelementptr inbounds %"$$fundef_63_env_140", %"$$fundef_63_env_140"* %"$$fundef_63_envp_780", i32 0, i32 0
  %"$b_785" = load %TName_Bool*, %TName_Bool** %b, align 8
  store %TName_Bool* %"$b_785", %TName_Bool** %"$$fundef_63_env_b_784", align 8
  %"$$fundef_63_env_f_786" = getelementptr inbounds %"$$fundef_63_env_140", %"$$fundef_63_env_140"* %"$$fundef_63_envp_780", i32 0, i32 1
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_63_env_f_786", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_63_cloval_783", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62", align 8
  %"$$retval_62_787" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_62_787"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_59"(%"$$fundef_59_env_142"* %0, %TName_Bool* %1) {
entry:
  %"$retval_60" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_763" = icmp ugt i64 1, %"$gasrem_762"
  br i1 %"$gascmp_763", label %"$out_of_gas_764", label %"$have_gas_765"

"$out_of_gas_764":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_765"

"$have_gas_765":                                  ; preds = %"$out_of_gas_764", %entry
  %"$consume_766" = sub i64 %"$gasrem_762", 1
  store i64 %"$consume_766", i64* @_gasrem, align 8
  %"$$fundef_61_envp_767_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_61_envp_767_salloc" = call i8* @_salloc(i8* %"$$fundef_61_envp_767_load", i64 8)
  %"$$fundef_61_envp_767" = bitcast i8* %"$$fundef_61_envp_767_salloc" to %"$$fundef_61_env_141"*
  %"$$fundef_61_env_voidp_769" = bitcast %"$$fundef_61_env_141"* %"$$fundef_61_envp_767" to i8*
  %"$$fundef_61_cloval_770" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_61_env_141"*, { i8*, i8* }*)* @"$fundef_61" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_61_env_voidp_769", 1
  %"$$fundef_61_env_b_771" = getelementptr inbounds %"$$fundef_61_env_141", %"$$fundef_61_env_141"* %"$$fundef_61_envp_767", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_61_env_b_771", align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_61_cloval_770", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_60", align 8
  %"$$retval_60_772" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_60", align 8
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_60_772"
}

define internal %Uint32 @"$fundef_57"(%"$$fundef_57_env_143"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_57_env_ListUtils.list_length_709" = getelementptr inbounds %"$$fundef_57_env_143", %"$$fundef_57_env_143"* %0, i32 0, i32 0
  %"$ListUtils.list_length_envload_710" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_57_env_ListUtils.list_length_709", align 8
  %ListUtils.list_length = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_length_envload_710", { i8*, i8* }** %ListUtils.list_length, align 8
  %"$retval_58" = alloca %Uint32, align 8
  %"$gasrem_711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_712" = icmp ugt i64 1, %"$gasrem_711"
  br i1 %"$gascmp_712", label %"$out_of_gas_713", label %"$have_gas_714"

"$out_of_gas_713":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_714"

"$have_gas_714":                                  ; preds = %"$out_of_gas_713", %entry
  %"$consume_715" = sub i64 %"$gasrem_711", 1
  store i64 %"$consume_715", i64* @_gasrem, align 8
  %ll = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_716" = load i64, i64* @_gasrem, align 8
  %"$gascmp_717" = icmp ugt i64 1, %"$gasrem_716"
  br i1 %"$gascmp_717", label %"$out_of_gas_718", label %"$have_gas_719"

"$out_of_gas_718":                                ; preds = %"$have_gas_714"
  call void @_out_of_gas()
  br label %"$have_gas_719"

"$have_gas_719":                                  ; preds = %"$out_of_gas_718", %"$have_gas_714"
  %"$consume_720" = sub i64 %"$gasrem_716", 1
  store i64 %"$consume_720", i64* @_gasrem, align 8
  %"$ListUtils.list_length_721" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_length, align 8
  %"$ListUtils.list_length_722" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_721", i32 2
  %"$ListUtils.list_length_723" = bitcast { i8*, i8* }* %"$ListUtils.list_length_722" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_724" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_723", align 8
  %"$ListUtils.list_length_fptr_725" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_724", 0
  %"$ListUtils.list_length_envptr_726" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_724", 1
  %"$ListUtils.list_length_call_727" = call { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$ListUtils.list_length_fptr_725"(i8* %"$ListUtils.list_length_envptr_726")
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$ListUtils.list_length_call_727", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %ll, align 8
  %"$gasrem_728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_729" = icmp ugt i64 1, %"$gasrem_728"
  br i1 %"$gascmp_729", label %"$out_of_gas_730", label %"$have_gas_731"

"$out_of_gas_730":                                ; preds = %"$have_gas_719"
  call void @_out_of_gas()
  br label %"$have_gas_731"

"$have_gas_731":                                  ; preds = %"$out_of_gas_730", %"$have_gas_719"
  %"$consume_732" = sub i64 %"$gasrem_728", 1
  store i64 %"$consume_732", i64* @_gasrem, align 8
  %n = alloca %Uint32, align 8
  %"$gasrem_733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_734" = icmp ugt i64 1, %"$gasrem_733"
  br i1 %"$gascmp_734", label %"$out_of_gas_735", label %"$have_gas_736"

"$out_of_gas_735":                                ; preds = %"$have_gas_731"
  call void @_out_of_gas()
  br label %"$have_gas_736"

"$have_gas_736":                                  ; preds = %"$out_of_gas_735", %"$have_gas_731"
  %"$consume_737" = sub i64 %"$gasrem_733", 1
  store i64 %"$consume_737", i64* @_gasrem, align 8
  %"$ll_12" = alloca %Uint32, align 8
  %"$ll_738" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %ll, align 8
  %"$ll_fptr_739" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$ll_738", 0
  %"$ll_envptr_740" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$ll_738", 1
  %"$ll_call_741" = call %Uint32 %"$ll_fptr_739"(i8* %"$ll_envptr_740", %TName_List_ByStr20* %1)
  store %Uint32 %"$ll_call_741", %Uint32* %"$ll_12", align 4
  %"$$ll_12_742" = load %Uint32, %Uint32* %"$ll_12", align 4
  store %Uint32 %"$$ll_12_742", %Uint32* %n, align 4
  %"$gasrem_743" = load i64, i64* @_gasrem, align 8
  %"$gascmp_744" = icmp ugt i64 1, %"$gasrem_743"
  br i1 %"$gascmp_744", label %"$out_of_gas_745", label %"$have_gas_746"

"$out_of_gas_745":                                ; preds = %"$have_gas_736"
  call void @_out_of_gas()
  br label %"$have_gas_746"

"$have_gas_746":                                  ; preds = %"$out_of_gas_745", %"$have_gas_736"
  %"$consume_747" = sub i64 %"$gasrem_743", 1
  store i64 %"$consume_747", i64* @_gasrem, align 8
  %two = alloca %Uint32, align 8
  %"$gasrem_748" = load i64, i64* @_gasrem, align 8
  %"$gascmp_749" = icmp ugt i64 1, %"$gasrem_748"
  br i1 %"$gascmp_749", label %"$out_of_gas_750", label %"$have_gas_751"

"$out_of_gas_750":                                ; preds = %"$have_gas_746"
  call void @_out_of_gas()
  br label %"$have_gas_751"

"$have_gas_751":                                  ; preds = %"$out_of_gas_750", %"$have_gas_746"
  %"$consume_752" = sub i64 %"$gasrem_748", 1
  store i64 %"$consume_752", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %two, align 4
  %"$gasrem_753" = load i64, i64* @_gasrem, align 8
  %"$gascmp_754" = icmp ugt i64 4, %"$gasrem_753"
  br i1 %"$gascmp_754", label %"$out_of_gas_755", label %"$have_gas_756"

"$out_of_gas_755":                                ; preds = %"$have_gas_751"
  call void @_out_of_gas()
  br label %"$have_gas_756"

"$have_gas_756":                                  ; preds = %"$out_of_gas_755", %"$have_gas_751"
  %"$consume_757" = sub i64 %"$gasrem_753", 4
  store i64 %"$consume_757", i64* @_gasrem, align 8
  %"$n_758" = load %Uint32, %Uint32* %n, align 4
  %"$two_759" = load %Uint32, %Uint32* %two, align 4
  %"$add_call_760" = call %Uint32 @_add_Uint32(%Uint32 %"$n_758", %Uint32 %"$two_759")
  store %Uint32 %"$add_call_760", %Uint32* %"$retval_58", align 4
  %"$$retval_58_761" = load %Uint32, %Uint32* %"$retval_58", align 4
  ret %Uint32 %"$$retval_58_761"
}

define internal { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_55"(%"$$fundef_55_env_144"* %0) {
entry:
  %"$$fundef_55_env_ListUtils.list_length_695" = getelementptr inbounds %"$$fundef_55_env_144", %"$$fundef_55_env_144"* %0, i32 0, i32 0
  %"$ListUtils.list_length_envload_696" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_55_env_ListUtils.list_length_695", align 8
  %ListUtils.list_length = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_length_envload_696", { i8*, i8* }** %ListUtils.list_length, align 8
  %"$retval_56" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_698" = icmp ugt i64 1, %"$gasrem_697"
  br i1 %"$gascmp_698", label %"$out_of_gas_699", label %"$have_gas_700"

"$out_of_gas_699":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_700"

"$have_gas_700":                                  ; preds = %"$out_of_gas_699", %entry
  %"$consume_701" = sub i64 %"$gasrem_697", 1
  store i64 %"$consume_701", i64* @_gasrem, align 8
  %"$$fundef_57_envp_702_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_57_envp_702_salloc" = call i8* @_salloc(i8* %"$$fundef_57_envp_702_load", i64 8)
  %"$$fundef_57_envp_702" = bitcast i8* %"$$fundef_57_envp_702_salloc" to %"$$fundef_57_env_143"*
  %"$$fundef_57_env_voidp_704" = bitcast %"$$fundef_57_env_143"* %"$$fundef_57_envp_702" to i8*
  %"$$fundef_57_cloval_705" = insertvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } { %Uint32 (i8*, %TName_List_ByStr20*)* bitcast (%Uint32 (%"$$fundef_57_env_143"*, %TName_List_ByStr20*)* @"$fundef_57" to %Uint32 (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_57_env_voidp_704", 1
  %"$$fundef_57_env_ListUtils.list_length_706" = getelementptr inbounds %"$$fundef_57_env_143", %"$$fundef_57_env_143"* %"$$fundef_57_envp_702", i32 0, i32 0
  %"$ListUtils.list_length_707" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_length, align 8
  store { i8*, i8* }* %"$ListUtils.list_length_707", { i8*, i8* }** %"$$fundef_57_env_ListUtils.list_length_706", align 8
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_57_cloval_705", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_56", align 8
  %"$$retval_56_708" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_56", align 8
  ret { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_56_708"
}

define internal %Uint32 @"$fundef_53"(%"$$fundef_53_env_145"* %0, %TName_List_String* %1) {
entry:
  %"$$fundef_53_env_ListUtils.list_length_642" = getelementptr inbounds %"$$fundef_53_env_145", %"$$fundef_53_env_145"* %0, i32 0, i32 0
  %"$ListUtils.list_length_envload_643" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_53_env_ListUtils.list_length_642", align 8
  %ListUtils.list_length = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_length_envload_643", { i8*, i8* }** %ListUtils.list_length, align 8
  %"$retval_54" = alloca %Uint32, align 8
  %"$gasrem_644" = load i64, i64* @_gasrem, align 8
  %"$gascmp_645" = icmp ugt i64 1, %"$gasrem_644"
  br i1 %"$gascmp_645", label %"$out_of_gas_646", label %"$have_gas_647"

"$out_of_gas_646":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_647"

"$have_gas_647":                                  ; preds = %"$out_of_gas_646", %entry
  %"$consume_648" = sub i64 %"$gasrem_644", 1
  store i64 %"$consume_648", i64* @_gasrem, align 8
  %ll = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }, align 8
  %"$gasrem_649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_650" = icmp ugt i64 1, %"$gasrem_649"
  br i1 %"$gascmp_650", label %"$out_of_gas_651", label %"$have_gas_652"

"$out_of_gas_651":                                ; preds = %"$have_gas_647"
  call void @_out_of_gas()
  br label %"$have_gas_652"

"$have_gas_652":                                  ; preds = %"$out_of_gas_651", %"$have_gas_647"
  %"$consume_653" = sub i64 %"$gasrem_649", 1
  store i64 %"$consume_653", i64* @_gasrem, align 8
  %"$ListUtils.list_length_654" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_length, align 8
  %"$ListUtils.list_length_655" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_654", i32 0
  %"$ListUtils.list_length_656" = bitcast { i8*, i8* }* %"$ListUtils.list_length_655" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_657" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_656", align 8
  %"$ListUtils.list_length_fptr_658" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_657", 0
  %"$ListUtils.list_length_envptr_659" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_657", 1
  %"$ListUtils.list_length_call_660" = call { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$ListUtils.list_length_fptr_658"(i8* %"$ListUtils.list_length_envptr_659")
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$ListUtils.list_length_call_660", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %ll, align 8
  %"$gasrem_661" = load i64, i64* @_gasrem, align 8
  %"$gascmp_662" = icmp ugt i64 1, %"$gasrem_661"
  br i1 %"$gascmp_662", label %"$out_of_gas_663", label %"$have_gas_664"

"$out_of_gas_663":                                ; preds = %"$have_gas_652"
  call void @_out_of_gas()
  br label %"$have_gas_664"

"$have_gas_664":                                  ; preds = %"$out_of_gas_663", %"$have_gas_652"
  %"$consume_665" = sub i64 %"$gasrem_661", 1
  store i64 %"$consume_665", i64* @_gasrem, align 8
  %n = alloca %Uint32, align 8
  %"$gasrem_666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_667" = icmp ugt i64 1, %"$gasrem_666"
  br i1 %"$gascmp_667", label %"$out_of_gas_668", label %"$have_gas_669"

"$out_of_gas_668":                                ; preds = %"$have_gas_664"
  call void @_out_of_gas()
  br label %"$have_gas_669"

"$have_gas_669":                                  ; preds = %"$out_of_gas_668", %"$have_gas_664"
  %"$consume_670" = sub i64 %"$gasrem_666", 1
  store i64 %"$consume_670", i64* @_gasrem, align 8
  %"$ll_12" = alloca %Uint32, align 8
  %"$ll_671" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %ll, align 8
  %"$ll_fptr_672" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$ll_671", 0
  %"$ll_envptr_673" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$ll_671", 1
  %"$ll_call_674" = call %Uint32 %"$ll_fptr_672"(i8* %"$ll_envptr_673", %TName_List_String* %1)
  store %Uint32 %"$ll_call_674", %Uint32* %"$ll_12", align 4
  %"$$ll_12_675" = load %Uint32, %Uint32* %"$ll_12", align 4
  store %Uint32 %"$$ll_12_675", %Uint32* %n, align 4
  %"$gasrem_676" = load i64, i64* @_gasrem, align 8
  %"$gascmp_677" = icmp ugt i64 1, %"$gasrem_676"
  br i1 %"$gascmp_677", label %"$out_of_gas_678", label %"$have_gas_679"

"$out_of_gas_678":                                ; preds = %"$have_gas_669"
  call void @_out_of_gas()
  br label %"$have_gas_679"

"$have_gas_679":                                  ; preds = %"$out_of_gas_678", %"$have_gas_669"
  %"$consume_680" = sub i64 %"$gasrem_676", 1
  store i64 %"$consume_680", i64* @_gasrem, align 8
  %two = alloca %Uint32, align 8
  %"$gasrem_681" = load i64, i64* @_gasrem, align 8
  %"$gascmp_682" = icmp ugt i64 1, %"$gasrem_681"
  br i1 %"$gascmp_682", label %"$out_of_gas_683", label %"$have_gas_684"

"$out_of_gas_683":                                ; preds = %"$have_gas_679"
  call void @_out_of_gas()
  br label %"$have_gas_684"

"$have_gas_684":                                  ; preds = %"$out_of_gas_683", %"$have_gas_679"
  %"$consume_685" = sub i64 %"$gasrem_681", 1
  store i64 %"$consume_685", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %two, align 4
  %"$gasrem_686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_687" = icmp ugt i64 4, %"$gasrem_686"
  br i1 %"$gascmp_687", label %"$out_of_gas_688", label %"$have_gas_689"

"$out_of_gas_688":                                ; preds = %"$have_gas_684"
  call void @_out_of_gas()
  br label %"$have_gas_689"

"$have_gas_689":                                  ; preds = %"$out_of_gas_688", %"$have_gas_684"
  %"$consume_690" = sub i64 %"$gasrem_686", 4
  store i64 %"$consume_690", i64* @_gasrem, align 8
  %"$n_691" = load %Uint32, %Uint32* %n, align 4
  %"$two_692" = load %Uint32, %Uint32* %two, align 4
  %"$add_call_693" = call %Uint32 @_add_Uint32(%Uint32 %"$n_691", %Uint32 %"$two_692")
  store %Uint32 %"$add_call_693", %Uint32* %"$retval_54", align 4
  %"$$retval_54_694" = load %Uint32, %Uint32* %"$retval_54", align 4
  ret %Uint32 %"$$retval_54_694"
}

define internal { %Uint32 (i8*, %TName_List_String*)*, i8* } @"$fundef_51"(%"$$fundef_51_env_146"* %0) {
entry:
  %"$$fundef_51_env_ListUtils.list_length_628" = getelementptr inbounds %"$$fundef_51_env_146", %"$$fundef_51_env_146"* %0, i32 0, i32 0
  %"$ListUtils.list_length_envload_629" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_51_env_ListUtils.list_length_628", align 8
  %ListUtils.list_length = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$ListUtils.list_length_envload_629", { i8*, i8* }** %ListUtils.list_length, align 8
  %"$retval_52" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }, align 8
  %"$gasrem_630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_631" = icmp ugt i64 1, %"$gasrem_630"
  br i1 %"$gascmp_631", label %"$out_of_gas_632", label %"$have_gas_633"

"$out_of_gas_632":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_633"

"$have_gas_633":                                  ; preds = %"$out_of_gas_632", %entry
  %"$consume_634" = sub i64 %"$gasrem_630", 1
  store i64 %"$consume_634", i64* @_gasrem, align 8
  %"$$fundef_53_envp_635_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_53_envp_635_salloc" = call i8* @_salloc(i8* %"$$fundef_53_envp_635_load", i64 8)
  %"$$fundef_53_envp_635" = bitcast i8* %"$$fundef_53_envp_635_salloc" to %"$$fundef_53_env_145"*
  %"$$fundef_53_env_voidp_637" = bitcast %"$$fundef_53_env_145"* %"$$fundef_53_envp_635" to i8*
  %"$$fundef_53_cloval_638" = insertvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } { %Uint32 (i8*, %TName_List_String*)* bitcast (%Uint32 (%"$$fundef_53_env_145"*, %TName_List_String*)* @"$fundef_53" to %Uint32 (i8*, %TName_List_String*)*), i8* undef }, i8* %"$$fundef_53_env_voidp_637", 1
  %"$$fundef_53_env_ListUtils.list_length_639" = getelementptr inbounds %"$$fundef_53_env_145", %"$$fundef_53_env_145"* %"$$fundef_53_envp_635", i32 0, i32 0
  %"$ListUtils.list_length_640" = load { i8*, i8* }*, { i8*, i8* }** %ListUtils.list_length, align 8
  store { i8*, i8* }* %"$ListUtils.list_length_640", { i8*, i8* }** %"$$fundef_53_env_ListUtils.list_length_639", align 8
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$fundef_53_cloval_638", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_52", align 8
  %"$$retval_52_641" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_52", align 8
  ret { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$retval_52_641"
}

define internal %Uint32 @"$fundef_48"(%"$$fundef_48_env_147"* %0, [20 x i8]* %1) {
entry:
  %h = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_48_env_one_615" = getelementptr inbounds %"$$fundef_48_env_147", %"$$fundef_48_env_147"* %0, i32 0, i32 0
  %"$one_envload_616" = load %Uint32, %Uint32* %"$$fundef_48_env_one_615", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_616", %Uint32* %one, align 4
  %"$$fundef_48_env_z_617" = getelementptr inbounds %"$$fundef_48_env_147", %"$$fundef_48_env_147"* %0, i32 0, i32 1
  %"$z_envload_618" = load %Uint32, %Uint32* %"$$fundef_48_env_z_617", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_618", %Uint32* %z, align 4
  %"$retval_49" = alloca %Uint32, align 8
  %"$gasrem_619" = load i64, i64* @_gasrem, align 8
  %"$gascmp_620" = icmp ugt i64 4, %"$gasrem_619"
  br i1 %"$gascmp_620", label %"$out_of_gas_621", label %"$have_gas_622"

"$out_of_gas_621":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_622"

"$have_gas_622":                                  ; preds = %"$out_of_gas_621", %entry
  %"$consume_623" = sub i64 %"$gasrem_619", 4
  store i64 %"$consume_623", i64* @_gasrem, align 8
  %"$one_624" = load %Uint32, %Uint32* %one, align 4
  %"$z_625" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_626" = call %Uint32 @_add_Uint32(%Uint32 %"$one_624", %Uint32 %"$z_625")
  store %Uint32 %"$add_call_626", %Uint32* %"$retval_49", align 4
  %"$$retval_49_627" = load %Uint32, %Uint32* %"$retval_49", align 4
  ret %Uint32 %"$$retval_49_627"
}

define internal { %Uint32 (i8*, [20 x i8]*)*, i8* } @"$fundef_46"(%"$$fundef_46_env_148"* %0, %Uint32 %1) {
entry:
  %"$$fundef_46_env_one_600" = getelementptr inbounds %"$$fundef_46_env_148", %"$$fundef_46_env_148"* %0, i32 0, i32 0
  %"$one_envload_601" = load %Uint32, %Uint32* %"$$fundef_46_env_one_600", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_601", %Uint32* %one, align 4
  %"$retval_47" = alloca { %Uint32 (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_602" = load i64, i64* @_gasrem, align 8
  %"$gascmp_603" = icmp ugt i64 1, %"$gasrem_602"
  br i1 %"$gascmp_603", label %"$out_of_gas_604", label %"$have_gas_605"

"$out_of_gas_604":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_605"

"$have_gas_605":                                  ; preds = %"$out_of_gas_604", %entry
  %"$consume_606" = sub i64 %"$gasrem_602", 1
  store i64 %"$consume_606", i64* @_gasrem, align 8
  %"$$fundef_48_envp_607_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_48_envp_607_salloc" = call i8* @_salloc(i8* %"$$fundef_48_envp_607_load", i64 8)
  %"$$fundef_48_envp_607" = bitcast i8* %"$$fundef_48_envp_607_salloc" to %"$$fundef_48_env_147"*
  %"$$fundef_48_env_voidp_609" = bitcast %"$$fundef_48_env_147"* %"$$fundef_48_envp_607" to i8*
  %"$$fundef_48_cloval_610" = insertvalue { %Uint32 (i8*, [20 x i8]*)*, i8* } { %Uint32 (i8*, [20 x i8]*)* bitcast (%Uint32 (%"$$fundef_48_env_147"*, [20 x i8]*)* @"$fundef_48" to %Uint32 (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_48_env_voidp_609", 1
  %"$$fundef_48_env_one_611" = getelementptr inbounds %"$$fundef_48_env_147", %"$$fundef_48_env_147"* %"$$fundef_48_envp_607", i32 0, i32 0
  %"$one_612" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_612", %Uint32* %"$$fundef_48_env_one_611", align 4
  %"$$fundef_48_env_z_613" = getelementptr inbounds %"$$fundef_48_env_147", %"$$fundef_48_env_147"* %"$$fundef_48_envp_607", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_48_env_z_613", align 4
  store { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$$fundef_48_cloval_610", { %Uint32 (i8*, [20 x i8]*)*, i8* }* %"$retval_47", align 8
  %"$$retval_47_614" = load { %Uint32 (i8*, [20 x i8]*)*, i8* }, { %Uint32 (i8*, [20 x i8]*)*, i8* }* %"$retval_47", align 8
  ret { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$$retval_47_614"
}

define internal { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_44"(%"$$fundef_44_env_149"* %0) {
entry:
  %"$$fundef_44_env_list_foldl_522" = getelementptr inbounds %"$$fundef_44_env_149", %"$$fundef_44_env_149"* %0, i32 0, i32 0
  %"$list_foldl_envload_523" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_44_env_list_foldl_522", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_523", { i8*, i8* }** %list_foldl, align 8
  %"$retval_45" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_525" = icmp ugt i64 1, %"$gasrem_524"
  br i1 %"$gascmp_525", label %"$out_of_gas_526", label %"$have_gas_527"

"$out_of_gas_526":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_527"

"$have_gas_527":                                  ; preds = %"$out_of_gas_526", %entry
  %"$consume_528" = sub i64 %"$gasrem_524", 1
  store i64 %"$consume_528", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 1, %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_527"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_527"
  %"$consume_533" = sub i64 %"$gasrem_529", 1
  store i64 %"$consume_533", i64* @_gasrem, align 8
  %"$list_foldl_534" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_535" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_534", i32 2
  %"$list_foldl_536" = bitcast { i8*, i8* }* %"$list_foldl_535" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_537" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_536", align 8
  %"$list_foldl_fptr_538" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_537", 0
  %"$list_foldl_envptr_539" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_537", 1
  %"$list_foldl_call_540" = call { i8*, i8* }* %"$list_foldl_fptr_538"(i8* %"$list_foldl_envptr_539")
  %"$list_foldl_541" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_540", i32 1
  %"$list_foldl_542" = bitcast { i8*, i8* }* %"$list_foldl_541" to { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_543" = load { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_542", align 8
  %"$list_foldl_fptr_544" = extractvalue { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_543", 0
  %"$list_foldl_envptr_545" = extractvalue { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_543", 1
  %"$list_foldl_call_546" = call { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_544"(i8* %"$list_foldl_envptr_545")
  store { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_546", { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$have_gas_532"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$have_gas_532"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 1, %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %"$have_gas_550"
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %"$have_gas_550"
  %"$consume_556" = sub i64 %"$gasrem_552", 1
  store i64 %"$consume_556", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_558" = icmp ugt i64 1, %"$gasrem_557"
  br i1 %"$gascmp_558", label %"$out_of_gas_559", label %"$have_gas_560"

"$out_of_gas_559":                                ; preds = %"$have_gas_555"
  call void @_out_of_gas()
  br label %"$have_gas_560"

"$have_gas_560":                                  ; preds = %"$out_of_gas_559", %"$have_gas_555"
  %"$consume_561" = sub i64 %"$gasrem_557", 1
  store i64 %"$consume_561", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_563" = icmp ugt i64 1, %"$gasrem_562"
  br i1 %"$gascmp_563", label %"$out_of_gas_564", label %"$have_gas_565"

"$out_of_gas_564":                                ; preds = %"$have_gas_560"
  call void @_out_of_gas()
  br label %"$have_gas_565"

"$have_gas_565":                                  ; preds = %"$out_of_gas_564", %"$have_gas_560"
  %"$consume_566" = sub i64 %"$gasrem_562", 1
  store i64 %"$consume_566", i64* @_gasrem, align 8
  %"$$fundef_46_envp_567_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_46_envp_567_salloc" = call i8* @_salloc(i8* %"$$fundef_46_envp_567_load", i64 4)
  %"$$fundef_46_envp_567" = bitcast i8* %"$$fundef_46_envp_567_salloc" to %"$$fundef_46_env_148"*
  %"$$fundef_46_env_voidp_569" = bitcast %"$$fundef_46_env_148"* %"$$fundef_46_envp_567" to i8*
  %"$$fundef_46_cloval_570" = insertvalue { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, [20 x i8]*)*, i8* } (%"$$fundef_46_env_148"*, %Uint32)* @"$fundef_46" to { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_46_env_voidp_569", 1
  %"$$fundef_46_env_one_571" = getelementptr inbounds %"$$fundef_46_env_148", %"$$fundef_46_env_148"* %"$$fundef_46_envp_567", i32 0, i32 0
  %"$one_572" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_572", %Uint32* %"$$fundef_46_env_one_571", align 4
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_46_cloval_570", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$gasrem_573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_574" = icmp ugt i64 1, %"$gasrem_573"
  br i1 %"$gascmp_574", label %"$out_of_gas_575", label %"$have_gas_576"

"$out_of_gas_575":                                ; preds = %"$have_gas_565"
  call void @_out_of_gas()
  br label %"$have_gas_576"

"$have_gas_576":                                  ; preds = %"$out_of_gas_575", %"$have_gas_565"
  %"$consume_577" = sub i64 %"$gasrem_573", 1
  store i64 %"$consume_577", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_579" = icmp ugt i64 1, %"$gasrem_578"
  br i1 %"$gascmp_579", label %"$out_of_gas_580", label %"$have_gas_581"

"$out_of_gas_580":                                ; preds = %"$have_gas_576"
  call void @_out_of_gas()
  br label %"$have_gas_581"

"$have_gas_581":                                  ; preds = %"$out_of_gas_580", %"$have_gas_576"
  %"$consume_582" = sub i64 %"$gasrem_578", 1
  store i64 %"$consume_582", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4
  %"$gasrem_583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_584" = icmp ugt i64 1, %"$gasrem_583"
  br i1 %"$gascmp_584", label %"$out_of_gas_585", label %"$have_gas_586"

"$out_of_gas_585":                                ; preds = %"$have_gas_581"
  call void @_out_of_gas()
  br label %"$have_gas_586"

"$have_gas_586":                                  ; preds = %"$out_of_gas_585", %"$have_gas_581"
  %"$consume_587" = sub i64 %"$gasrem_583", 1
  store i64 %"$consume_587", i64* @_gasrem, align 8
  %"$foldl_10" = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_588" = load { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_589" = extractvalue { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_588", 0
  %"$foldl_envptr_590" = extractvalue { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_588", 1
  %"$iter_591" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_592" = call { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_589"(i8* %"$foldl_envptr_590", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_591")
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_592", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$foldl_11" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$$foldl_10_593" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$$foldl_10_fptr_594" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_593", 0
  %"$$foldl_10_envptr_595" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_593", 1
  %"$init_596" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_10_call_597" = call { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldl_10_fptr_594"(i8* %"$$foldl_10_envptr_595", %Uint32 %"$init_596")
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldl_10_call_597", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldl_11", align 8
  %"$$foldl_11_598" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$foldl_11", align 8
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$foldl_11_598", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_45", align 8
  %"$$retval_45_599" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_45", align 8
  ret { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_45_599"
}

define internal %Uint32 @"$fundef_42"(%"$$fundef_42_env_150"* %0, %String %1) {
entry:
  %"$$fundef_42_env_one_509" = getelementptr inbounds %"$$fundef_42_env_150", %"$$fundef_42_env_150"* %0, i32 0, i32 0
  %"$one_envload_510" = load %Uint32, %Uint32* %"$$fundef_42_env_one_509", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_510", %Uint32* %one, align 4
  %"$$fundef_42_env_z_511" = getelementptr inbounds %"$$fundef_42_env_150", %"$$fundef_42_env_150"* %0, i32 0, i32 1
  %"$z_envload_512" = load %Uint32, %Uint32* %"$$fundef_42_env_z_511", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_512", %Uint32* %z, align 4
  %"$retval_43" = alloca %Uint32, align 8
  %"$gasrem_513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_514" = icmp ugt i64 4, %"$gasrem_513"
  br i1 %"$gascmp_514", label %"$out_of_gas_515", label %"$have_gas_516"

"$out_of_gas_515":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_516"

"$have_gas_516":                                  ; preds = %"$out_of_gas_515", %entry
  %"$consume_517" = sub i64 %"$gasrem_513", 4
  store i64 %"$consume_517", i64* @_gasrem, align 8
  %"$one_518" = load %Uint32, %Uint32* %one, align 4
  %"$z_519" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_520" = call %Uint32 @_add_Uint32(%Uint32 %"$one_518", %Uint32 %"$z_519")
  store %Uint32 %"$add_call_520", %Uint32* %"$retval_43", align 4
  %"$$retval_43_521" = load %Uint32, %Uint32* %"$retval_43", align 4
  ret %Uint32 %"$$retval_43_521"
}

define internal { %Uint32 (i8*, %String)*, i8* } @"$fundef_40"(%"$$fundef_40_env_151"* %0, %Uint32 %1) {
entry:
  %"$$fundef_40_env_one_494" = getelementptr inbounds %"$$fundef_40_env_151", %"$$fundef_40_env_151"* %0, i32 0, i32 0
  %"$one_envload_495" = load %Uint32, %Uint32* %"$$fundef_40_env_one_494", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_495", %Uint32* %one, align 4
  %"$retval_41" = alloca { %Uint32 (i8*, %String)*, i8* }, align 8
  %"$gasrem_496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_497" = icmp ugt i64 1, %"$gasrem_496"
  br i1 %"$gascmp_497", label %"$out_of_gas_498", label %"$have_gas_499"

"$out_of_gas_498":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_499"

"$have_gas_499":                                  ; preds = %"$out_of_gas_498", %entry
  %"$consume_500" = sub i64 %"$gasrem_496", 1
  store i64 %"$consume_500", i64* @_gasrem, align 8
  %"$$fundef_42_envp_501_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_42_envp_501_salloc" = call i8* @_salloc(i8* %"$$fundef_42_envp_501_load", i64 8)
  %"$$fundef_42_envp_501" = bitcast i8* %"$$fundef_42_envp_501_salloc" to %"$$fundef_42_env_150"*
  %"$$fundef_42_env_voidp_503" = bitcast %"$$fundef_42_env_150"* %"$$fundef_42_envp_501" to i8*
  %"$$fundef_42_cloval_504" = insertvalue { %Uint32 (i8*, %String)*, i8* } { %Uint32 (i8*, %String)* bitcast (%Uint32 (%"$$fundef_42_env_150"*, %String)* @"$fundef_42" to %Uint32 (i8*, %String)*), i8* undef }, i8* %"$$fundef_42_env_voidp_503", 1
  %"$$fundef_42_env_one_505" = getelementptr inbounds %"$$fundef_42_env_150", %"$$fundef_42_env_150"* %"$$fundef_42_envp_501", i32 0, i32 0
  %"$one_506" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_506", %Uint32* %"$$fundef_42_env_one_505", align 4
  %"$$fundef_42_env_z_507" = getelementptr inbounds %"$$fundef_42_env_150", %"$$fundef_42_env_150"* %"$$fundef_42_envp_501", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_42_env_z_507", align 4
  store { %Uint32 (i8*, %String)*, i8* } %"$$fundef_42_cloval_504", { %Uint32 (i8*, %String)*, i8* }* %"$retval_41", align 8
  %"$$retval_41_508" = load { %Uint32 (i8*, %String)*, i8* }, { %Uint32 (i8*, %String)*, i8* }* %"$retval_41", align 8
  ret { %Uint32 (i8*, %String)*, i8* } %"$$retval_41_508"
}

define internal { %Uint32 (i8*, %TName_List_String*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_152"* %0) {
entry:
  %"$$fundef_38_env_list_foldl_416" = getelementptr inbounds %"$$fundef_38_env_152", %"$$fundef_38_env_152"* %0, i32 0, i32 0
  %"$list_foldl_envload_417" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_38_env_list_foldl_416", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_417", { i8*, i8* }** %list_foldl, align 8
  %"$retval_39" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }, align 8
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %entry
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_421"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %"$list_foldl_428" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_429" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_428", i32 0
  %"$list_foldl_430" = bitcast { i8*, i8* }* %"$list_foldl_429" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_431" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_430", align 8
  %"$list_foldl_fptr_432" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_431", 0
  %"$list_foldl_envptr_433" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_431", 1
  %"$list_foldl_call_434" = call { i8*, i8* }* %"$list_foldl_fptr_432"(i8* %"$list_foldl_envptr_433")
  %"$list_foldl_435" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_434", i32 1
  %"$list_foldl_436" = bitcast { i8*, i8* }* %"$list_foldl_435" to { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_437" = load { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_436", align 8
  %"$list_foldl_fptr_438" = extractvalue { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_437", 0
  %"$list_foldl_envptr_439" = extractvalue { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_437", 1
  %"$list_foldl_call_440" = call { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_438"(i8* %"$list_foldl_envptr_439")
  store { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_440", { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$gasrem_441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_442" = icmp ugt i64 1, %"$gasrem_441"
  br i1 %"$gascmp_442", label %"$out_of_gas_443", label %"$have_gas_444"

"$out_of_gas_443":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_444"

"$have_gas_444":                                  ; preds = %"$out_of_gas_443", %"$have_gas_426"
  %"$consume_445" = sub i64 %"$gasrem_441", 1
  store i64 %"$consume_445", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_447" = icmp ugt i64 1, %"$gasrem_446"
  br i1 %"$gascmp_447", label %"$out_of_gas_448", label %"$have_gas_449"

"$out_of_gas_448":                                ; preds = %"$have_gas_444"
  call void @_out_of_gas()
  br label %"$have_gas_449"

"$have_gas_449":                                  ; preds = %"$out_of_gas_448", %"$have_gas_444"
  %"$consume_450" = sub i64 %"$gasrem_446", 1
  store i64 %"$consume_450", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 1, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$have_gas_449"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$have_gas_449"
  %"$consume_455" = sub i64 %"$gasrem_451", 1
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$have_gas_454"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$have_gas_454"
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem, align 8
  %"$$fundef_40_envp_461_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_40_envp_461_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_461_load", i64 4)
  %"$$fundef_40_envp_461" = bitcast i8* %"$$fundef_40_envp_461_salloc" to %"$$fundef_40_env_151"*
  %"$$fundef_40_env_voidp_463" = bitcast %"$$fundef_40_env_151"* %"$$fundef_40_envp_461" to i8*
  %"$$fundef_40_cloval_464" = insertvalue { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %String)*, i8* } (%"$$fundef_40_env_151"*, %Uint32)* @"$fundef_40" to { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_40_env_voidp_463", 1
  %"$$fundef_40_env_one_465" = getelementptr inbounds %"$$fundef_40_env_151", %"$$fundef_40_env_151"* %"$$fundef_40_envp_461", i32 0, i32 0
  %"$one_466" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_466", %Uint32* %"$$fundef_40_env_one_465", align 4
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_40_cloval_464", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$gasrem_467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_468" = icmp ugt i64 1, %"$gasrem_467"
  br i1 %"$gascmp_468", label %"$out_of_gas_469", label %"$have_gas_470"

"$out_of_gas_469":                                ; preds = %"$have_gas_459"
  call void @_out_of_gas()
  br label %"$have_gas_470"

"$have_gas_470":                                  ; preds = %"$out_of_gas_469", %"$have_gas_459"
  %"$consume_471" = sub i64 %"$gasrem_467", 1
  store i64 %"$consume_471", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$have_gas_470"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$have_gas_470"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 1, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %"$have_gas_475"
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %"$have_gas_475"
  %"$consume_481" = sub i64 %"$gasrem_477", 1
  store i64 %"$consume_481", i64* @_gasrem, align 8
  %"$foldl_10" = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_482" = load { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_483" = extractvalue { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_482", 0
  %"$foldl_envptr_484" = extractvalue { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_482", 1
  %"$iter_485" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_486" = call { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_483"(i8* %"$foldl_envptr_484", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_485")
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_486", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$foldl_11" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }, align 8
  %"$$foldl_10_487" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$$foldl_10_fptr_488" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_487", 0
  %"$$foldl_10_envptr_489" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_487", 1
  %"$init_490" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_10_call_491" = call { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$foldl_10_fptr_488"(i8* %"$$foldl_10_envptr_489", %Uint32 %"$init_490")
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$foldl_10_call_491", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$foldl_11", align 8
  %"$$foldl_11_492" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$foldl_11", align 8
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$foldl_11_492", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_39", align 8
  %"$$retval_39_493" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_39", align 8
  ret { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$retval_39_493"
}

define internal %Uint32 @"$fundef_36"(%"$$fundef_36_env_153"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_36_env_f_348" = getelementptr inbounds %"$$fundef_36_env_153", %"$$fundef_36_env_153"* %0, i32 0, i32 0
  %"$f_envload_349" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_36_env_f_348", align 8
  %f = alloca { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_349", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_36_env_g_350" = getelementptr inbounds %"$$fundef_36_env_153", %"$$fundef_36_env_153"* %0, i32 0, i32 1
  %"$g_envload_351" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_36_env_g_350", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_351", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_36_env_z_352" = getelementptr inbounds %"$$fundef_36_env_153", %"$$fundef_36_env_153"* %0, i32 0, i32 2
  %"$z_envload_353" = load %Uint32, %Uint32* %"$$fundef_36_env_z_352", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_353", %Uint32* %z, align 4
  %"$retval_37" = alloca %Uint32, align 8
  %"$gasrem_354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_355" = icmp ugt i64 2, %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %entry
  %"$consume_358" = sub i64 %"$gasrem_354", 2
  store i64 %"$consume_358", i64* @_gasrem, align 8
  %"$l_tag_360" = getelementptr inbounds %TName_List_ByStr20, %TName_List_ByStr20* %1, i32 0, i32 0
  %"$l_tag_361" = load i8, i8* %"$l_tag_360", align 1
  switch i8 %"$l_tag_361", label %"$empty_default_362" [
    i8 0, label %"$Cons_363"
    i8 1, label %"$Nil_407"
  ]

"$Cons_363":                                      ; preds = %"$have_gas_357"
  %"$l_364" = bitcast %TName_List_ByStr20* %1 to %CName_Cons_ByStr20*
  %"$h_gep_365" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_364", i32 0, i32 1
  %"$h_load_366" = load [20 x i8], [20 x i8]* %"$h_gep_365", align 1
  %h = alloca [20 x i8], align 1
  store [20 x i8] %"$h_load_366", [20 x i8]* %h, align 1
  %"$t_gep_367" = getelementptr inbounds %CName_Cons_ByStr20, %CName_Cons_ByStr20* %"$l_364", i32 0, i32 2
  %"$t_load_368" = load %TName_List_ByStr20*, %TName_List_ByStr20** %"$t_gep_367", align 8
  %t = alloca %TName_List_ByStr20*, align 8
  store %TName_List_ByStr20* %"$t_load_368", %TName_List_ByStr20** %t, align 8
  %"$gasrem_369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_370" = icmp ugt i64 1, %"$gasrem_369"
  br i1 %"$gascmp_370", label %"$out_of_gas_371", label %"$have_gas_372"

"$out_of_gas_371":                                ; preds = %"$Cons_363"
  call void @_out_of_gas()
  br label %"$have_gas_372"

"$have_gas_372":                                  ; preds = %"$out_of_gas_371", %"$Cons_363"
  %"$consume_373" = sub i64 %"$gasrem_369", 1
  store i64 %"$consume_373", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_372"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_372"
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  %"$f_6" = alloca { %Uint32 (i8*, [20 x i8]*)*, i8* }, align 8
  %"$f_379" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_380" = extractvalue { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_379", 0
  %"$f_envptr_381" = extractvalue { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_379", 1
  %"$z_382" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_383" = call { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$f_fptr_380"(i8* %"$f_envptr_381", %Uint32 %"$z_382")
  store { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$f_call_383", { %Uint32 (i8*, [20 x i8]*)*, i8* }* %"$f_6", align 8
  %"$f_7" = alloca %Uint32, align 8
  %"$$f_6_384" = load { %Uint32 (i8*, [20 x i8]*)*, i8* }, { %Uint32 (i8*, [20 x i8]*)*, i8* }* %"$f_6", align 8
  %"$$f_6_fptr_385" = extractvalue { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$$f_6_384", 0
  %"$$f_6_envptr_386" = extractvalue { %Uint32 (i8*, [20 x i8]*)*, i8* } %"$$f_6_384", 1
  %"$$f_6_h_387" = alloca [20 x i8], align 1
  %"$h_388" = load [20 x i8], [20 x i8]* %h, align 1
  store [20 x i8] %"$h_388", [20 x i8]* %"$$f_6_h_387", align 1
  %"$$f_6_call_389" = call %Uint32 %"$$f_6_fptr_385"(i8* %"$$f_6_envptr_386", [20 x i8]* %"$$f_6_h_387")
  store %Uint32 %"$$f_6_call_389", %Uint32* %"$f_7", align 4
  %"$$f_7_390" = load %Uint32, %Uint32* %"$f_7", align 4
  store %Uint32 %"$$f_7_390", %Uint32* %res, align 4
  %"$gasrem_391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_392" = icmp ugt i64 1, %"$gasrem_391"
  br i1 %"$gascmp_392", label %"$out_of_gas_393", label %"$have_gas_394"

"$out_of_gas_393":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_394"

"$have_gas_394":                                  ; preds = %"$out_of_gas_393", %"$have_gas_377"
  %"$consume_395" = sub i64 %"$gasrem_391", 1
  store i64 %"$consume_395", i64* @_gasrem, align 8
  %"$g_8" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$g_396" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_397" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_396", 0
  %"$g_envptr_398" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_396", 1
  %"$res_399" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_400" = call { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$g_fptr_397"(i8* %"$g_envptr_398", %Uint32 %"$res_399")
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$g_call_400", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_8", align 8
  %"$g_9" = alloca %Uint32, align 8
  %"$$g_8_401" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$g_8", align 8
  %"$$g_8_fptr_402" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_8_401", 0
  %"$$g_8_envptr_403" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$g_8_401", 1
  %"$t_404" = load %TName_List_ByStr20*, %TName_List_ByStr20** %t, align 8
  %"$$g_8_call_405" = call %Uint32 %"$$g_8_fptr_402"(i8* %"$$g_8_envptr_403", %TName_List_ByStr20* %"$t_404")
  store %Uint32 %"$$g_8_call_405", %Uint32* %"$g_9", align 4
  %"$$g_9_406" = load %Uint32, %Uint32* %"$g_9", align 4
  store %Uint32 %"$$g_9_406", %Uint32* %"$retval_37", align 4
  br label %"$matchsucc_359"

"$Nil_407":                                       ; preds = %"$have_gas_357"
  %"$l_408" = bitcast %TName_List_ByStr20* %1 to %CName_Nil_ByStr20*
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 1, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %"$Nil_407"
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %"$Nil_407"
  %"$consume_413" = sub i64 %"$gasrem_409", 1
  store i64 %"$consume_413", i64* @_gasrem, align 8
  %"$z_414" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_414", %Uint32* %"$retval_37", align 4
  br label %"$matchsucc_359"

"$empty_default_362":                             ; preds = %"$have_gas_357"
  br label %"$matchsucc_359"

"$matchsucc_359":                                 ; preds = %"$have_gas_412", %"$have_gas_394", %"$empty_default_362"
  %"$$retval_37_415" = load %Uint32, %Uint32* %"$retval_37", align 4
  ret %Uint32 %"$$retval_37_415"
}

define internal { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_34"(%"$$fundef_34_env_154"* %0, %Uint32 %1) {
entry:
  %"$$fundef_34_env_f_324" = getelementptr inbounds %"$$fundef_34_env_154", %"$$fundef_34_env_154"* %0, i32 0, i32 0
  %"$f_envload_325" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_f_324", align 8
  %f = alloca { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_325", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_34_env_g_326" = getelementptr inbounds %"$$fundef_34_env_154", %"$$fundef_34_env_154"* %0, i32 0, i32 1
  %"$g_envload_327" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_g_326", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_327", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_35" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 1, %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %entry
  %"$consume_332" = sub i64 %"$gasrem_328", 1
  store i64 %"$consume_332", i64* @_gasrem, align 8
  %"$gasrem_333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_334" = icmp ugt i64 1, %"$gasrem_333"
  br i1 %"$gascmp_334", label %"$out_of_gas_335", label %"$have_gas_336"

"$out_of_gas_335":                                ; preds = %"$have_gas_331"
  call void @_out_of_gas()
  br label %"$have_gas_336"

"$have_gas_336":                                  ; preds = %"$out_of_gas_335", %"$have_gas_331"
  %"$consume_337" = sub i64 %"$gasrem_333", 1
  store i64 %"$consume_337", i64* @_gasrem, align 8
  %"$$fundef_36_envp_338_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_36_envp_338_salloc" = call i8* @_salloc(i8* %"$$fundef_36_envp_338_load", i64 40)
  %"$$fundef_36_envp_338" = bitcast i8* %"$$fundef_36_envp_338_salloc" to %"$$fundef_36_env_153"*
  %"$$fundef_36_env_voidp_340" = bitcast %"$$fundef_36_env_153"* %"$$fundef_36_envp_338" to i8*
  %"$$fundef_36_cloval_341" = insertvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } { %Uint32 (i8*, %TName_List_ByStr20*)* bitcast (%Uint32 (%"$$fundef_36_env_153"*, %TName_List_ByStr20*)* @"$fundef_36" to %Uint32 (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_36_env_voidp_340", 1
  %"$$fundef_36_env_f_342" = getelementptr inbounds %"$$fundef_36_env_153", %"$$fundef_36_env_153"* %"$$fundef_36_envp_338", i32 0, i32 0
  %"$f_343" = load { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_343", { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_36_env_f_342", align 8
  %"$$fundef_36_env_g_344" = getelementptr inbounds %"$$fundef_36_env_153", %"$$fundef_36_env_153"* %"$$fundef_36_envp_338", i32 0, i32 1
  %"$g_345" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_345", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_36_env_g_344", align 8
  %"$$fundef_36_env_z_346" = getelementptr inbounds %"$$fundef_36_env_153", %"$$fundef_36_env_153"* %"$$fundef_36_envp_338", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_36_env_z_346", align 4
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_36_cloval_341", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_35", align 8
  %"$$retval_35_347" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_35", align 8
  ret { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_35_347"
}

define internal { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_32"(%"$$fundef_32_env_155"* %0, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_33" = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_311" = icmp ugt i64 1, %"$gasrem_310"
  br i1 %"$gascmp_311", label %"$out_of_gas_312", label %"$have_gas_313"

"$out_of_gas_312":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_313"

"$have_gas_313":                                  ; preds = %"$out_of_gas_312", %entry
  %"$consume_314" = sub i64 %"$gasrem_310", 1
  store i64 %"$consume_314", i64* @_gasrem, align 8
  %"$$fundef_34_envp_315_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_34_envp_315_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_315_load", i64 32)
  %"$$fundef_34_envp_315" = bitcast i8* %"$$fundef_34_envp_315_salloc" to %"$$fundef_34_env_154"*
  %"$$fundef_34_env_voidp_317" = bitcast %"$$fundef_34_env_154"* %"$$fundef_34_envp_315" to i8*
  %"$$fundef_34_cloval_318" = insertvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_34_env_154"*, %Uint32)* @"$fundef_34" to { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_34_env_voidp_317", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_34_cloval_318", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_34_env_f_319" = getelementptr inbounds %"$$fundef_34_env_154", %"$$fundef_34_env_154"* %"$$fundef_34_envp_315", i32 0, i32 0
  store { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_f_319", align 8
  %"$$fundef_34_env_g_320" = getelementptr inbounds %"$$fundef_34_env_154", %"$$fundef_34_env_154"* %"$$fundef_34_envp_315", i32 0, i32 1
  %"$g_321" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_321", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_g_320", align 8
  %"$g_322" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_322", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_33", align 8
  %"$$retval_33_323" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_33", align 8
  ret { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_33_323"
}

define internal { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_30"(%"$$fundef_30_env_156"* %0) {
entry:
  %"$retval_31" = alloca { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %entry
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_32_env_155"*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_32" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_31", align 8
  %"$$retval_31_309" = load { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_31", align 8
  ret { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_31_309"
}

define internal { i8*, i8* }* @"$fundef_28"(%"$$fundef_28_env_157"* %0) {
entry:
  %"$retval_29" = alloca { i8*, i8* }*, align 8
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 1, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %entry
  %"$consume_293" = sub i64 %"$gasrem_289", 1
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %"$dyndisp_table_297_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_297_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_297_salloc_load", i64 48)
  %"$dyndisp_table_297_salloc" = bitcast i8* %"$dyndisp_table_297_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_297" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_297_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_298" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_297", i32 1
  %"$dyndisp_pcast_299" = bitcast { i8*, i8* }* %"$dyndisp_gep_298" to { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_30_env_156"*)* @"$fundef_30" to { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, [20 x i8]*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_299", align 8
  store { i8*, i8* }* %"$dyndisp_table_297", { i8*, i8* }** %"$retval_29", align 8
  %"$$retval_29_300" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_29", align 8
  ret { i8*, i8* }* %"$$retval_29_300"
}

define internal %Uint32 @"$fundef_26"(%"$$fundef_26_env_158"* %0, %TName_List_String* %1) {
entry:
  %"$$fundef_26_env_f_222" = getelementptr inbounds %"$$fundef_26_env_158", %"$$fundef_26_env_158"* %0, i32 0, i32 0
  %"$f_envload_223" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_f_222", align 8
  %f = alloca { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_223", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_26_env_g_224" = getelementptr inbounds %"$$fundef_26_env_158", %"$$fundef_26_env_158"* %0, i32 0, i32 1
  %"$g_envload_225" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_g_224", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_225", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_26_env_z_226" = getelementptr inbounds %"$$fundef_26_env_158", %"$$fundef_26_env_158"* %0, i32 0, i32 2
  %"$z_envload_227" = load %Uint32, %Uint32* %"$$fundef_26_env_z_226", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_227", %Uint32* %z, align 4
  %"$retval_27" = alloca %Uint32, align 8
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 2, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %entry
  %"$consume_232" = sub i64 %"$gasrem_228", 2
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %"$l_tag_234" = getelementptr inbounds %TName_List_String, %TName_List_String* %1, i32 0, i32 0
  %"$l_tag_235" = load i8, i8* %"$l_tag_234", align 1
  switch i8 %"$l_tag_235", label %"$empty_default_236" [
    i8 0, label %"$Cons_237"
    i8 1, label %"$Nil_280"
  ]

"$Cons_237":                                      ; preds = %"$have_gas_231"
  %"$l_238" = bitcast %TName_List_String* %1 to %CName_Cons_String*
  %"$h_gep_239" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$l_238", i32 0, i32 1
  %"$h_load_240" = load %String, %String* %"$h_gep_239", align 8
  %h = alloca %String, align 8
  store %String %"$h_load_240", %String* %h, align 8
  %"$t_gep_241" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$l_238", i32 0, i32 2
  %"$t_load_242" = load %TName_List_String*, %TName_List_String** %"$t_gep_241", align 8
  %t = alloca %TName_List_String*, align 8
  store %TName_List_String* %"$t_load_242", %TName_List_String** %t, align 8
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$Cons_237"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$Cons_237"
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_246"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %"$f_6" = alloca { %Uint32 (i8*, %String)*, i8* }, align 8
  %"$f_253" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_254" = extractvalue { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_253", 0
  %"$f_envptr_255" = extractvalue { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_253", 1
  %"$z_256" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_257" = call { %Uint32 (i8*, %String)*, i8* } %"$f_fptr_254"(i8* %"$f_envptr_255", %Uint32 %"$z_256")
  store { %Uint32 (i8*, %String)*, i8* } %"$f_call_257", { %Uint32 (i8*, %String)*, i8* }* %"$f_6", align 8
  %"$f_7" = alloca %Uint32, align 8
  %"$$f_6_258" = load { %Uint32 (i8*, %String)*, i8* }, { %Uint32 (i8*, %String)*, i8* }* %"$f_6", align 8
  %"$$f_6_fptr_259" = extractvalue { %Uint32 (i8*, %String)*, i8* } %"$$f_6_258", 0
  %"$$f_6_envptr_260" = extractvalue { %Uint32 (i8*, %String)*, i8* } %"$$f_6_258", 1
  %"$h_261" = load %String, %String* %h, align 8
  %"$$f_6_call_262" = call %Uint32 %"$$f_6_fptr_259"(i8* %"$$f_6_envptr_260", %String %"$h_261")
  store %Uint32 %"$$f_6_call_262", %Uint32* %"$f_7", align 4
  %"$$f_7_263" = load %Uint32, %Uint32* %"$f_7", align 4
  store %Uint32 %"$$f_7_263", %Uint32* %res, align 4
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_251"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %"$g_8" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }, align 8
  %"$g_269" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_270" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_269", 0
  %"$g_envptr_271" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_269", 1
  %"$res_272" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_273" = call { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$g_fptr_270"(i8* %"$g_envptr_271", %Uint32 %"$res_272")
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$g_call_273", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$g_8", align 8
  %"$g_9" = alloca %Uint32, align 8
  %"$$g_8_274" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$g_8", align 8
  %"$$g_8_fptr_275" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$g_8_274", 0
  %"$$g_8_envptr_276" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$g_8_274", 1
  %"$t_277" = load %TName_List_String*, %TName_List_String** %t, align 8
  %"$$g_8_call_278" = call %Uint32 %"$$g_8_fptr_275"(i8* %"$$g_8_envptr_276", %TName_List_String* %"$t_277")
  store %Uint32 %"$$g_8_call_278", %Uint32* %"$g_9", align 4
  %"$$g_9_279" = load %Uint32, %Uint32* %"$g_9", align 4
  store %Uint32 %"$$g_9_279", %Uint32* %"$retval_27", align 4
  br label %"$matchsucc_233"

"$Nil_280":                                       ; preds = %"$have_gas_231"
  %"$l_281" = bitcast %TName_List_String* %1 to %CName_Nil_String*
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 1, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$Nil_280"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$Nil_280"
  %"$consume_286" = sub i64 %"$gasrem_282", 1
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %"$z_287" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_287", %Uint32* %"$retval_27", align 4
  br label %"$matchsucc_233"

"$empty_default_236":                             ; preds = %"$have_gas_231"
  br label %"$matchsucc_233"

"$matchsucc_233":                                 ; preds = %"$have_gas_285", %"$have_gas_267", %"$empty_default_236"
  %"$$retval_27_288" = load %Uint32, %Uint32* %"$retval_27", align 4
  ret %Uint32 %"$$retval_27_288"
}

define internal { %Uint32 (i8*, %TName_List_String*)*, i8* } @"$fundef_24"(%"$$fundef_24_env_159"* %0, %Uint32 %1) {
entry:
  %"$$fundef_24_env_f_198" = getelementptr inbounds %"$$fundef_24_env_159", %"$$fundef_24_env_159"* %0, i32 0, i32 0
  %"$f_envload_199" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_f_198", align 8
  %f = alloca { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_199", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_24_env_g_200" = getelementptr inbounds %"$$fundef_24_env_159", %"$$fundef_24_env_159"* %0, i32 0, i32 1
  %"$g_envload_201" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_g_200", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_201", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_25" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }, align 8
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %entry
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 1, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$have_gas_205"
  %"$consume_211" = sub i64 %"$gasrem_207", 1
  store i64 %"$consume_211", i64* @_gasrem, align 8
  %"$$fundef_26_envp_212_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_26_envp_212_salloc" = call i8* @_salloc(i8* %"$$fundef_26_envp_212_load", i64 40)
  %"$$fundef_26_envp_212" = bitcast i8* %"$$fundef_26_envp_212_salloc" to %"$$fundef_26_env_158"*
  %"$$fundef_26_env_voidp_214" = bitcast %"$$fundef_26_env_158"* %"$$fundef_26_envp_212" to i8*
  %"$$fundef_26_cloval_215" = insertvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } { %Uint32 (i8*, %TName_List_String*)* bitcast (%Uint32 (%"$$fundef_26_env_158"*, %TName_List_String*)* @"$fundef_26" to %Uint32 (i8*, %TName_List_String*)*), i8* undef }, i8* %"$$fundef_26_env_voidp_214", 1
  %"$$fundef_26_env_f_216" = getelementptr inbounds %"$$fundef_26_env_158", %"$$fundef_26_env_158"* %"$$fundef_26_envp_212", i32 0, i32 0
  %"$f_217" = load { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %"$f_217", { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_f_216", align 8
  %"$$fundef_26_env_g_218" = getelementptr inbounds %"$$fundef_26_env_158", %"$$fundef_26_env_158"* %"$$fundef_26_envp_212", i32 0, i32 1
  %"$g_219" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_219", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_g_218", align 8
  %"$$fundef_26_env_z_220" = getelementptr inbounds %"$$fundef_26_env_158", %"$$fundef_26_env_158"* %"$$fundef_26_envp_212", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_26_env_z_220", align 4
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$fundef_26_cloval_215", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_25", align 8
  %"$$retval_25_221" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_25", align 8
  ret { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$retval_25_221"
}

define internal { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_22"(%"$$fundef_22_env_160"* %0, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_23" = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %entry
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %"$$fundef_24_envp_189_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_24_envp_189_salloc" = call i8* @_salloc(i8* %"$$fundef_24_envp_189_load", i64 32)
  %"$$fundef_24_envp_189" = bitcast i8* %"$$fundef_24_envp_189_salloc" to %"$$fundef_24_env_159"*
  %"$$fundef_24_env_voidp_191" = bitcast %"$$fundef_24_env_159"* %"$$fundef_24_envp_189" to i8*
  %"$$fundef_24_cloval_192" = insertvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_String*)*, i8* } (%"$$fundef_24_env_159"*, %Uint32)* @"$fundef_24" to { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_24_env_voidp_191", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_24_cloval_192", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_24_env_f_193" = getelementptr inbounds %"$$fundef_24_env_159", %"$$fundef_24_env_159"* %"$$fundef_24_envp_189", i32 0, i32 0
  store { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_f_193", align 8
  %"$$fundef_24_env_g_194" = getelementptr inbounds %"$$fundef_24_env_159", %"$$fundef_24_env_159"* %"$$fundef_24_envp_189", i32 0, i32 1
  %"$g_195" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_195", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_g_194", align 8
  %"$g_196" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_196", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_23", align 8
  %"$$retval_23_197" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_23", align 8
  ret { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_23_197"
}

define internal { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_20"(%"$$fundef_20_env_161"* %0) {
entry:
  %"$retval_21" = alloca { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %entry
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_22_env_160"*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_22" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_21", align 8
  %"$$retval_21_183" = load { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_21", align 8
  ret { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_21_183"
}

define internal { i8*, i8* }* @"$fundef_18"(%"$$fundef_18_env_162"* %0) {
entry:
  %"$retval_19" = alloca { i8*, i8* }*, align 8
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %entry
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %"$dyndisp_table_171_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_171_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_171_salloc_load", i64 48)
  %"$dyndisp_table_171_salloc" = bitcast i8* %"$dyndisp_table_171_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_171" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_171_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_172" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_171", i32 1
  %"$dyndisp_pcast_173" = bitcast { i8*, i8* }* %"$dyndisp_gep_172" to { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_20_env_161"*)* @"$fundef_20" to { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %String)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_173", align 8
  store { i8*, i8* }* %"$dyndisp_table_171", { i8*, i8* }** %"$retval_19", align 8
  %"$$retval_19_174" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_19", align 8
  ret { i8*, i8* }* %"$$retval_19_174"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  %"$gasrem_818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_819" = icmp ugt i64 5, %"$gasrem_818"
  br i1 %"$gascmp_819", label %"$out_of_gas_820", label %"$have_gas_821"

"$out_of_gas_820":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_821"

"$have_gas_821":                                  ; preds = %"$out_of_gas_820", %entry
  %"$consume_822" = sub i64 %"$gasrem_818", 5
  store i64 %"$consume_822", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_824" = icmp ugt i64 8, %"$gasrem_823"
  br i1 %"$gascmp_824", label %"$out_of_gas_825", label %"$have_gas_826"

"$out_of_gas_825":                                ; preds = %"$have_gas_821"
  call void @_out_of_gas()
  br label %"$have_gas_826"

"$have_gas_826":                                  ; preds = %"$out_of_gas_825", %"$have_gas_821"
  %"$consume_827" = sub i64 %"$gasrem_823", 8
  store i64 %"$consume_827", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_829" = icmp ugt i64 196, %"$gasrem_828"
  br i1 %"$gascmp_829", label %"$out_of_gas_830", label %"$have_gas_831"

"$out_of_gas_830":                                ; preds = %"$have_gas_826"
  call void @_out_of_gas()
  br label %"$have_gas_831"

"$have_gas_831":                                  ; preds = %"$out_of_gas_830", %"$have_gas_826"
  %"$consume_832" = sub i64 %"$gasrem_828", 196
  store i64 %"$consume_832", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_833" = load i64, i64* @_gasrem, align 8
  %"$gascmp_834" = icmp ugt i64 19, %"$gasrem_833"
  br i1 %"$gascmp_834", label %"$out_of_gas_835", label %"$have_gas_836"

"$out_of_gas_835":                                ; preds = %"$have_gas_831"
  call void @_out_of_gas()
  br label %"$have_gas_836"

"$have_gas_836":                                  ; preds = %"$out_of_gas_835", %"$have_gas_831"
  %"$consume_837" = sub i64 %"$gasrem_833", 19
  store i64 %"$consume_837", i64* @_gasrem, align 8
  store %Int32 { i32 19 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_838" = load i64, i64* @_gasrem, align 8
  %"$gascmp_839" = icmp ugt i64 1, %"$gasrem_838"
  br i1 %"$gascmp_839", label %"$out_of_gas_840", label %"$have_gas_841"

"$out_of_gas_840":                                ; preds = %"$have_gas_836"
  call void @_out_of_gas()
  br label %"$have_gas_841"

"$have_gas_841":                                  ; preds = %"$out_of_gas_840", %"$have_gas_836"
  %"$consume_842" = sub i64 %"$gasrem_838", 1
  store i64 %"$consume_842", i64* @_gasrem, align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  %"$dyndisp_table_849_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_849_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_849_salloc_load", i64 48)
  %"$dyndisp_table_849_salloc" = bitcast i8* %"$dyndisp_table_849_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_849" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_849_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_850" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_849", i32 0
  %"$dyndisp_pcast_851" = bitcast { i8*, i8* }* %"$dyndisp_gep_850" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_18_env_162"*)* @"$fundef_18" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_851", align 8
  %"$dyndisp_gep_852" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_849", i32 2
  %"$dyndisp_pcast_853" = bitcast { i8*, i8* }* %"$dyndisp_gep_852" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_28_env_157"*)* @"$fundef_28" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_853", align 8
  store { i8*, i8* }* %"$dyndisp_table_849", { i8*, i8* }** %list_foldl, align 8
  %"$$fundef_38_envp_854_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_38_envp_854_salloc" = call i8* @_salloc(i8* %"$$fundef_38_envp_854_load", i64 8)
  %"$$fundef_38_envp_854" = bitcast i8* %"$$fundef_38_envp_854_salloc" to %"$$fundef_38_env_152"*
  %"$$fundef_38_env_voidp_856" = bitcast %"$$fundef_38_env_152"* %"$$fundef_38_envp_854" to i8*
  %"$$fundef_38_cloval_857" = insertvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_String*)*, i8* } (%"$$fundef_38_env_152"*)* @"$fundef_38" to { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_38_env_voidp_856", 1
  %"$$fundef_38_env_list_foldl_858" = getelementptr inbounds %"$$fundef_38_env_152", %"$$fundef_38_env_152"* %"$$fundef_38_envp_854", i32 0, i32 0
  %"$list_foldl_859" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  store { i8*, i8* }* %"$list_foldl_859", { i8*, i8* }** %"$$fundef_38_env_list_foldl_858", align 8
  %"$$fundef_44_env_voidp_861" = bitcast %"$$fundef_38_env_152"* %"$$fundef_38_envp_854" to i8*
  %"$$fundef_44_cloval_862" = insertvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_44_env_149"*)* @"$fundef_44" to { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_44_env_voidp_861", 1
  %"$dyndisp_table_863_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_863_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_863_salloc_load", i64 48)
  %"$dyndisp_table_863_salloc" = bitcast i8* %"$dyndisp_table_863_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_863" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_863_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_864" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_863", i32 0
  %"$dyndisp_pcast_865" = bitcast { i8*, i8* }* %"$dyndisp_gep_864" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$$fundef_38_cloval_857", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_865", align 8
  %"$dyndisp_gep_866" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_863", i32 2
  %"$dyndisp_pcast_867" = bitcast { i8*, i8* }* %"$dyndisp_gep_866" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$$fundef_44_cloval_862", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_867", align 8
  store { i8*, i8* }* %"$dyndisp_table_863", { i8*, i8* }** @ListUtils.list_length, align 8
  %"$gasrem_868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_869" = icmp ugt i64 12, %"$gasrem_868"
  br i1 %"$gascmp_869", label %"$out_of_gas_870", label %"$have_gas_871"

"$out_of_gas_870":                                ; preds = %"$have_gas_841"
  call void @_out_of_gas()
  br label %"$have_gas_871"

"$have_gas_871":                                  ; preds = %"$out_of_gas_870", %"$have_gas_841"
  %"$consume_872" = sub i64 %"$gasrem_868", 12
  store i64 %"$consume_872", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_874" = icmp ugt i64 2, %"$gasrem_873"
  br i1 %"$gascmp_874", label %"$out_of_gas_875", label %"$have_gas_876"

"$out_of_gas_875":                                ; preds = %"$have_gas_871"
  call void @_out_of_gas()
  br label %"$have_gas_876"

"$have_gas_876":                                  ; preds = %"$out_of_gas_875", %"$have_gas_871"
  %"$consume_877" = sub i64 %"$gasrem_873", 2
  store i64 %"$consume_877", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_50" = alloca %Uint32, align 8
  %"$gasrem_878" = load i64, i64* @_gasrem, align 8
  %"$gascmp_879" = icmp ugt i64 1, %"$gasrem_878"
  br i1 %"$gascmp_879", label %"$out_of_gas_880", label %"$have_gas_881"

"$out_of_gas_880":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_881"

"$have_gas_881":                                  ; preds = %"$out_of_gas_880", %entry
  %"$consume_882" = sub i64 %"$gasrem_878", 1
  store i64 %"$consume_882", i64* @_gasrem, align 8
  %list_length2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_883" = load i64, i64* @_gasrem, align 8
  %"$gascmp_884" = icmp ugt i64 1, %"$gasrem_883"
  br i1 %"$gascmp_884", label %"$out_of_gas_885", label %"$have_gas_886"

"$out_of_gas_885":                                ; preds = %"$have_gas_881"
  call void @_out_of_gas()
  br label %"$have_gas_886"

"$have_gas_886":                                  ; preds = %"$out_of_gas_885", %"$have_gas_881"
  %"$consume_887" = sub i64 %"$gasrem_883", 1
  store i64 %"$consume_887", i64* @_gasrem, align 8
  %"$$fundef_51_envp_888_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_51_envp_888_salloc" = call i8* @_salloc(i8* %"$$fundef_51_envp_888_load", i64 8)
  %"$$fundef_51_envp_888" = bitcast i8* %"$$fundef_51_envp_888_salloc" to %"$$fundef_51_env_146"*
  %"$$fundef_51_env_voidp_890" = bitcast %"$$fundef_51_env_146"* %"$$fundef_51_envp_888" to i8*
  %"$$fundef_51_cloval_891" = insertvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_String*)*, i8* } (%"$$fundef_51_env_146"*)* @"$fundef_51" to { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_51_env_voidp_890", 1
  %"$$fundef_51_env_ListUtils.list_length_892" = getelementptr inbounds %"$$fundef_51_env_146", %"$$fundef_51_env_146"* %"$$fundef_51_envp_888", i32 0, i32 0
  %"$ListUtils.list_length_893" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  store { i8*, i8* }* %"$ListUtils.list_length_893", { i8*, i8* }** %"$$fundef_51_env_ListUtils.list_length_892", align 8
  %"$$fundef_55_env_voidp_895" = bitcast %"$$fundef_51_env_146"* %"$$fundef_51_envp_888" to i8*
  %"$$fundef_55_cloval_896" = insertvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_55_env_144"*)* @"$fundef_55" to { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_55_env_voidp_895", 1
  %"$dyndisp_table_897_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_897_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_897_salloc_load", i64 48)
  %"$dyndisp_table_897_salloc" = bitcast i8* %"$dyndisp_table_897_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_897" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_897_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_898" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_897", i32 0
  %"$dyndisp_pcast_899" = bitcast { i8*, i8* }* %"$dyndisp_gep_898" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$$fundef_51_cloval_891", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_899", align 8
  %"$dyndisp_gep_900" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_897", i32 2
  %"$dyndisp_pcast_901" = bitcast { i8*, i8* }* %"$dyndisp_gep_900" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$$fundef_55_cloval_896", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_901", align 8
  store { i8*, i8* }* %"$dyndisp_table_897", { i8*, i8* }** %list_length2, align 8
  %"$gasrem_902" = load i64, i64* @_gasrem, align 8
  %"$gascmp_903" = icmp ugt i64 1, %"$gasrem_902"
  br i1 %"$gascmp_903", label %"$out_of_gas_904", label %"$have_gas_905"

"$out_of_gas_904":                                ; preds = %"$have_gas_886"
  call void @_out_of_gas()
  br label %"$have_gas_905"

"$have_gas_905":                                  ; preds = %"$out_of_gas_904", %"$have_gas_886"
  %"$consume_906" = sub i64 %"$gasrem_902", 1
  store i64 %"$consume_906", i64* @_gasrem, align 8
  %t = alloca { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_907" = load i64, i64* @_gasrem, align 8
  %"$gascmp_908" = icmp ugt i64 1, %"$gasrem_907"
  br i1 %"$gascmp_908", label %"$out_of_gas_909", label %"$have_gas_910"

"$out_of_gas_909":                                ; preds = %"$have_gas_905"
  call void @_out_of_gas()
  br label %"$have_gas_910"

"$have_gas_910":                                  ; preds = %"$out_of_gas_909", %"$have_gas_905"
  %"$consume_911" = sub i64 %"$gasrem_907", 1
  store i64 %"$consume_911", i64* @_gasrem, align 8
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_59_env_142"*, %TName_Bool*)* @"$fundef_59" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %t, align 8
  %"$gasrem_915" = load i64, i64* @_gasrem, align 8
  %"$gascmp_916" = icmp ugt i64 1, %"$gasrem_915"
  br i1 %"$gascmp_916", label %"$out_of_gas_917", label %"$have_gas_918"

"$out_of_gas_917":                                ; preds = %"$have_gas_910"
  call void @_out_of_gas()
  br label %"$have_gas_918"

"$have_gas_918":                                  ; preds = %"$out_of_gas_917", %"$have_gas_910"
  %"$consume_919" = sub i64 %"$gasrem_915", 1
  store i64 %"$consume_919", i64* @_gasrem, align 8
  %true = alloca %TName_Bool*, align 8
  %"$gasrem_920" = load i64, i64* @_gasrem, align 8
  %"$gascmp_921" = icmp ugt i64 1, %"$gasrem_920"
  br i1 %"$gascmp_921", label %"$out_of_gas_922", label %"$have_gas_923"

"$out_of_gas_922":                                ; preds = %"$have_gas_918"
  call void @_out_of_gas()
  br label %"$have_gas_923"

"$have_gas_923":                                  ; preds = %"$out_of_gas_922", %"$have_gas_918"
  %"$consume_924" = sub i64 %"$gasrem_920", 1
  store i64 %"$consume_924", i64* @_gasrem, align 8
  %"$adtval_925_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_925_salloc" = call i8* @_salloc(i8* %"$adtval_925_load", i64 1)
  %"$adtval_925" = bitcast i8* %"$adtval_925_salloc" to %CName_True*
  %"$adtgep_926" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_925", i32 0, i32 0
  store i8 0, i8* %"$adtgep_926", align 1
  %"$adtptr_927" = bitcast %CName_True* %"$adtval_925" to %TName_Bool*
  store %TName_Bool* %"$adtptr_927", %TName_Bool** %true, align 8
  %"$gasrem_928" = load i64, i64* @_gasrem, align 8
  %"$gascmp_929" = icmp ugt i64 1, %"$gasrem_928"
  br i1 %"$gascmp_929", label %"$out_of_gas_930", label %"$have_gas_931"

"$out_of_gas_930":                                ; preds = %"$have_gas_923"
  call void @_out_of_gas()
  br label %"$have_gas_931"

"$have_gas_931":                                  ; preds = %"$out_of_gas_930", %"$have_gas_923"
  %"$consume_932" = sub i64 %"$gasrem_928", 1
  store i64 %"$consume_932", i64* @_gasrem, align 8
  %f = alloca { i8*, i8* }*, align 8
  %"$gasrem_933" = load i64, i64* @_gasrem, align 8
  %"$gascmp_934" = icmp ugt i64 1, %"$gasrem_933"
  br i1 %"$gascmp_934", label %"$out_of_gas_935", label %"$have_gas_936"

"$out_of_gas_935":                                ; preds = %"$have_gas_931"
  call void @_out_of_gas()
  br label %"$have_gas_936"

"$have_gas_936":                                  ; preds = %"$out_of_gas_935", %"$have_gas_931"
  %"$consume_937" = sub i64 %"$gasrem_933", 1
  store i64 %"$consume_937", i64* @_gasrem, align 8
  %"$t_13" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$t_938" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %t, align 8
  %"$t_fptr_939" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$t_938", 0
  %"$t_envptr_940" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$t_938", 1
  %"$true_941" = load %TName_Bool*, %TName_Bool** %true, align 8
  %"$t_call_942" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_939"(i8* %"$t_envptr_940", %TName_Bool* %"$true_941")
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_942", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$t_13", align 8
  %"$t_14" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$$t_13_943" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$t_13", align 8
  %"$$t_13_fptr_944" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$t_13_943", 0
  %"$$t_13_envptr_945" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$t_13_943", 1
  %"$ListUtils.list_length_946" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$$t_13_call_947" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_13_fptr_944"(i8* %"$$t_13_envptr_945", { i8*, i8* }* %"$ListUtils.list_length_946")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_13_call_947", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$t_14", align 8
  %"$t_15" = alloca { i8*, i8* }*, align 8
  %"$$t_14_948" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$t_14", align 8
  %"$$t_14_fptr_949" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_14_948", 0
  %"$$t_14_envptr_950" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_14_948", 1
  %"$list_length2_951" = load { i8*, i8* }*, { i8*, i8* }** %list_length2, align 8
  %"$$t_14_call_952" = call { i8*, i8* }* %"$$t_14_fptr_949"(i8* %"$$t_14_envptr_950", { i8*, i8* }* %"$list_length2_951")
  store { i8*, i8* }* %"$$t_14_call_952", { i8*, i8* }** %"$t_15", align 8
  %"$$t_15_953" = load { i8*, i8* }*, { i8*, i8* }** %"$t_15", align 8
  store { i8*, i8* }* %"$$t_15_953", { i8*, i8* }** %f, align 8
  %"$gasrem_954" = load i64, i64* @_gasrem, align 8
  %"$gascmp_955" = icmp ugt i64 1, %"$gasrem_954"
  br i1 %"$gascmp_955", label %"$out_of_gas_956", label %"$have_gas_957"

"$out_of_gas_956":                                ; preds = %"$have_gas_936"
  call void @_out_of_gas()
  br label %"$have_gas_957"

"$have_gas_957":                                  ; preds = %"$out_of_gas_956", %"$have_gas_936"
  %"$consume_958" = sub i64 %"$gasrem_954", 1
  store i64 %"$consume_958", i64* @_gasrem, align 8
  %f_string = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }, align 8
  %"$gasrem_959" = load i64, i64* @_gasrem, align 8
  %"$gascmp_960" = icmp ugt i64 1, %"$gasrem_959"
  br i1 %"$gascmp_960", label %"$out_of_gas_961", label %"$have_gas_962"

"$out_of_gas_961":                                ; preds = %"$have_gas_957"
  call void @_out_of_gas()
  br label %"$have_gas_962"

"$have_gas_962":                                  ; preds = %"$out_of_gas_961", %"$have_gas_957"
  %"$consume_963" = sub i64 %"$gasrem_959", 1
  store i64 %"$consume_963", i64* @_gasrem, align 8
  %"$f_964" = load { i8*, i8* }*, { i8*, i8* }** %f, align 8
  %"$f_965" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_964", i32 0
  %"$f_966" = bitcast { i8*, i8* }* %"$f_965" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*
  %"$f_967" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* %"$f_966", align 8
  %"$f_fptr_968" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$f_967", 0
  %"$f_envptr_969" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$f_967", 1
  %"$f_call_970" = call { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_fptr_968"(i8* %"$f_envptr_969")
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_call_970", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %f_string, align 8
  %"$gasrem_971" = load i64, i64* @_gasrem, align 8
  %"$gascmp_972" = icmp ugt i64 1, %"$gasrem_971"
  br i1 %"$gascmp_972", label %"$out_of_gas_973", label %"$have_gas_974"

"$out_of_gas_973":                                ; preds = %"$have_gas_962"
  call void @_out_of_gas()
  br label %"$have_gas_974"

"$have_gas_974":                                  ; preds = %"$out_of_gas_973", %"$have_gas_962"
  %"$consume_975" = sub i64 %"$gasrem_971", 1
  store i64 %"$consume_975", i64* @_gasrem, align 8
  %f_bystr20 = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, align 8
  %"$gasrem_976" = load i64, i64* @_gasrem, align 8
  %"$gascmp_977" = icmp ugt i64 1, %"$gasrem_976"
  br i1 %"$gascmp_977", label %"$out_of_gas_978", label %"$have_gas_979"

"$out_of_gas_978":                                ; preds = %"$have_gas_974"
  call void @_out_of_gas()
  br label %"$have_gas_979"

"$have_gas_979":                                  ; preds = %"$out_of_gas_978", %"$have_gas_974"
  %"$consume_980" = sub i64 %"$gasrem_976", 1
  store i64 %"$consume_980", i64* @_gasrem, align 8
  %"$f_981" = load { i8*, i8* }*, { i8*, i8* }** %f, align 8
  %"$f_982" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_981", i32 2
  %"$f_983" = bitcast { i8*, i8* }* %"$f_982" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*
  %"$f_984" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* %"$f_983", align 8
  %"$f_fptr_985" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$f_984", 0
  %"$f_envptr_986" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$f_984", 1
  %"$f_call_987" = call { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_fptr_985"(i8* %"$f_envptr_986")
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_call_987", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %f_bystr20, align 8
  %"$gasrem_988" = load i64, i64* @_gasrem, align 8
  %"$gascmp_989" = icmp ugt i64 1, %"$gasrem_988"
  br i1 %"$gascmp_989", label %"$out_of_gas_990", label %"$have_gas_991"

"$out_of_gas_990":                                ; preds = %"$have_gas_979"
  call void @_out_of_gas()
  br label %"$have_gas_991"

"$have_gas_991":                                  ; preds = %"$out_of_gas_990", %"$have_gas_979"
  %"$consume_992" = sub i64 %"$gasrem_988", 1
  store i64 %"$consume_992", i64* @_gasrem, align 8
  %nil_string = alloca %TName_List_String*, align 8
  %"$gasrem_993" = load i64, i64* @_gasrem, align 8
  %"$gascmp_994" = icmp ugt i64 1, %"$gasrem_993"
  br i1 %"$gascmp_994", label %"$out_of_gas_995", label %"$have_gas_996"

"$out_of_gas_995":                                ; preds = %"$have_gas_991"
  call void @_out_of_gas()
  br label %"$have_gas_996"

"$have_gas_996":                                  ; preds = %"$out_of_gas_995", %"$have_gas_991"
  %"$consume_997" = sub i64 %"$gasrem_993", 1
  store i64 %"$consume_997", i64* @_gasrem, align 8
  %"$adtval_998_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_998_salloc" = call i8* @_salloc(i8* %"$adtval_998_load", i64 1)
  %"$adtval_998" = bitcast i8* %"$adtval_998_salloc" to %CName_Nil_String*
  %"$adtgep_999" = getelementptr inbounds %CName_Nil_String, %CName_Nil_String* %"$adtval_998", i32 0, i32 0
  store i8 1, i8* %"$adtgep_999", align 1
  %"$adtptr_1000" = bitcast %CName_Nil_String* %"$adtval_998" to %TName_List_String*
  store %TName_List_String* %"$adtptr_1000", %TName_List_String** %nil_string, align 8
  %"$gasrem_1001" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1002" = icmp ugt i64 1, %"$gasrem_1001"
  br i1 %"$gascmp_1002", label %"$out_of_gas_1003", label %"$have_gas_1004"

"$out_of_gas_1003":                               ; preds = %"$have_gas_996"
  call void @_out_of_gas()
  br label %"$have_gas_1004"

"$have_gas_1004":                                 ; preds = %"$out_of_gas_1003", %"$have_gas_996"
  %"$consume_1005" = sub i64 %"$gasrem_1001", 1
  store i64 %"$consume_1005", i64* @_gasrem, align 8
  %nil_bystr20 = alloca %TName_List_ByStr20*, align 8
  %"$gasrem_1006" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1007" = icmp ugt i64 1, %"$gasrem_1006"
  br i1 %"$gascmp_1007", label %"$out_of_gas_1008", label %"$have_gas_1009"

"$out_of_gas_1008":                               ; preds = %"$have_gas_1004"
  call void @_out_of_gas()
  br label %"$have_gas_1009"

"$have_gas_1009":                                 ; preds = %"$out_of_gas_1008", %"$have_gas_1004"
  %"$consume_1010" = sub i64 %"$gasrem_1006", 1
  store i64 %"$consume_1010", i64* @_gasrem, align 8
  %"$adtval_1011_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1011_salloc" = call i8* @_salloc(i8* %"$adtval_1011_load", i64 1)
  %"$adtval_1011" = bitcast i8* %"$adtval_1011_salloc" to %CName_Nil_ByStr20*
  %"$adtgep_1012" = getelementptr inbounds %CName_Nil_ByStr20, %CName_Nil_ByStr20* %"$adtval_1011", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1012", align 1
  %"$adtptr_1013" = bitcast %CName_Nil_ByStr20* %"$adtval_1011" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_1013", %TName_List_ByStr20** %nil_bystr20, align 8
  %"$gasrem_1014" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1015" = icmp ugt i64 1, %"$gasrem_1014"
  br i1 %"$gascmp_1015", label %"$out_of_gas_1016", label %"$have_gas_1017"

"$out_of_gas_1016":                               ; preds = %"$have_gas_1009"
  call void @_out_of_gas()
  br label %"$have_gas_1017"

"$have_gas_1017":                                 ; preds = %"$out_of_gas_1016", %"$have_gas_1009"
  %"$consume_1018" = sub i64 %"$gasrem_1014", 1
  store i64 %"$consume_1018", i64* @_gasrem, align 8
  %a = alloca %Uint32, align 8
  %"$gasrem_1019" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1020" = icmp ugt i64 1, %"$gasrem_1019"
  br i1 %"$gascmp_1020", label %"$out_of_gas_1021", label %"$have_gas_1022"

"$out_of_gas_1021":                               ; preds = %"$have_gas_1017"
  call void @_out_of_gas()
  br label %"$have_gas_1022"

"$have_gas_1022":                                 ; preds = %"$out_of_gas_1021", %"$have_gas_1017"
  %"$consume_1023" = sub i64 %"$gasrem_1019", 1
  store i64 %"$consume_1023", i64* @_gasrem, align 8
  %"$f_string_16" = alloca %Uint32, align 8
  %"$f_string_1024" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %f_string, align 8
  %"$f_string_fptr_1025" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_string_1024", 0
  %"$f_string_envptr_1026" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_string_1024", 1
  %"$nil_string_1027" = load %TName_List_String*, %TName_List_String** %nil_string, align 8
  %"$f_string_call_1028" = call %Uint32 %"$f_string_fptr_1025"(i8* %"$f_string_envptr_1026", %TName_List_String* %"$nil_string_1027")
  store %Uint32 %"$f_string_call_1028", %Uint32* %"$f_string_16", align 4
  %"$$f_string_16_1029" = load %Uint32, %Uint32* %"$f_string_16", align 4
  store %Uint32 %"$$f_string_16_1029", %Uint32* %a, align 4
  %"$gasrem_1030" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1031" = icmp ugt i64 1, %"$gasrem_1030"
  br i1 %"$gascmp_1031", label %"$out_of_gas_1032", label %"$have_gas_1033"

"$out_of_gas_1032":                               ; preds = %"$have_gas_1022"
  call void @_out_of_gas()
  br label %"$have_gas_1033"

"$have_gas_1033":                                 ; preds = %"$out_of_gas_1032", %"$have_gas_1022"
  %"$consume_1034" = sub i64 %"$gasrem_1030", 1
  store i64 %"$consume_1034", i64* @_gasrem, align 8
  %b = alloca %Uint32, align 8
  %"$gasrem_1035" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1036" = icmp ugt i64 1, %"$gasrem_1035"
  br i1 %"$gascmp_1036", label %"$out_of_gas_1037", label %"$have_gas_1038"

"$out_of_gas_1037":                               ; preds = %"$have_gas_1033"
  call void @_out_of_gas()
  br label %"$have_gas_1038"

"$have_gas_1038":                                 ; preds = %"$out_of_gas_1037", %"$have_gas_1033"
  %"$consume_1039" = sub i64 %"$gasrem_1035", 1
  store i64 %"$consume_1039", i64* @_gasrem, align 8
  %"$f_bystr20_17" = alloca %Uint32, align 8
  %"$f_bystr20_1040" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %f_bystr20, align 8
  %"$f_bystr20_fptr_1041" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_bystr20_1040", 0
  %"$f_bystr20_envptr_1042" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_bystr20_1040", 1
  %"$nil_bystr20_1043" = load %TName_List_ByStr20*, %TName_List_ByStr20** %nil_bystr20, align 8
  %"$f_bystr20_call_1044" = call %Uint32 %"$f_bystr20_fptr_1041"(i8* %"$f_bystr20_envptr_1042", %TName_List_ByStr20* %"$nil_bystr20_1043")
  store %Uint32 %"$f_bystr20_call_1044", %Uint32* %"$f_bystr20_17", align 4
  %"$$f_bystr20_17_1045" = load %Uint32, %Uint32* %"$f_bystr20_17", align 4
  store %Uint32 %"$$f_bystr20_17_1045", %Uint32* %b, align 4
  %"$gasrem_1046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1047" = icmp ugt i64 4, %"$gasrem_1046"
  br i1 %"$gascmp_1047", label %"$out_of_gas_1048", label %"$have_gas_1049"

"$out_of_gas_1048":                               ; preds = %"$have_gas_1038"
  call void @_out_of_gas()
  br label %"$have_gas_1049"

"$have_gas_1049":                                 ; preds = %"$out_of_gas_1048", %"$have_gas_1038"
  %"$consume_1050" = sub i64 %"$gasrem_1046", 4
  store i64 %"$consume_1050", i64* @_gasrem, align 8
  %"$a_1051" = load %Uint32, %Uint32* %a, align 4
  %"$b_1052" = load %Uint32, %Uint32* %b, align 4
  %"$add_call_1053" = call %Uint32 @_add_Uint32(%Uint32 %"$a_1051", %Uint32 %"$b_1052")
  store %Uint32 %"$add_call_1053", %Uint32* %"$expr_50", align 4
  %"$$expr_50_1054" = load %Uint32, %Uint32* %"$expr_50", align 4
  ret %Uint32 %"$$expr_50_1054"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1055" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_1056" = alloca %Uint32, align 8
  %"$memvoidcast_1057" = bitcast %Uint32* %"$pval_1056" to i8*
  store %Uint32 %"$exprval_1055", %Uint32* %"$pval_1056", align 4
  %"$execptr_load_1058" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1058", %_TyDescrTy_Typ* @"$TyDescr_Uint32_69", i8* %"$memvoidcast_1057")
  ret void
}
