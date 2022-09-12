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
; let len = @list_length Int32 in
; let one = Int32 1 in
; let f1l = f1 one in
; len f1l
; | False =>
; let f22 = @t Int64 in
; let f2 = f22 t2 in
; let len = @list_length Int64 in
; let one = Int64 1 in
; let f2l = f2 one in
; len f2l
; end
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_75" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_107" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_106"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_106" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_108"**, %"$TyDescrTy_ADTTyp_107"* }
%"$TyDescrTy_ADTTyp_Constr_108" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_1191" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1192" = type { %ParamDescrString, i32, %"$ParamDescr_1191"* }
%TName_List_Int64 = type { i8, %CName_Cons_Int64*, %CName_Nil_Int64* }
%CName_Cons_Int64 = type <{ i8, %Int64, %TName_List_Int64* }>
%CName_Nil_Int64 = type <{ i8 }>
%Int64 = type { i64 }
%"$$fundef_73_env_148" = type {}
%"$$fundef_71_env_149" = type {}
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>
%"$$fundef_69_env_150" = type {}
%"$$fundef_67_env_151" = type {}
%"$$fundef_65_env_152" = type {}
%"$$fundef_63_env_153" = type {}
%"$$fundef_61_env_154" = type {}
%"$$fundef_59_env_155" = type {}
%"$$fundef_57_env_156" = type {}
%"$$fundef_55_env_157" = type {}
%"$$fundef_53_env_158" = type {}
%"$$fundef_51_env_159" = type {}
%Uint32 = type { i32 }
%"$$fundef_48_env_160" = type { %Uint32, %Uint32 }
%"$$fundef_46_env_161" = type { %Uint32 }
%"$$fundef_44_env_162" = type { { i8*, i8* }* }
%"$$fundef_42_env_163" = type { %Uint32, %Uint32 }
%"$$fundef_40_env_164" = type { %Uint32 }
%"$$fundef_38_env_165" = type { { i8*, i8* }* }
%"$$fundef_36_env_166" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_34_env_167" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_32_env_168" = type {}
%"$$fundef_30_env_169" = type {}
%"$$fundef_28_env_170" = type {}
%"$$fundef_26_env_171" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_24_env_172" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_22_env_173" = type {}
%"$$fundef_20_env_174" = type {}
%"$$fundef_18_env_175" = type {}
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_76" = global %"$TyDescrTy_PrimTyp_75" zeroinitializer
@"$TyDescr_Int32_77" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Int32_Prim_76" to i8*) }
@"$TyDescr_Uint32_Prim_78" = global %"$TyDescrTy_PrimTyp_75" { i32 1, i32 0 }
@"$TyDescr_Uint32_79" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Uint32_Prim_78" to i8*) }
@"$TyDescr_Int64_Prim_80" = global %"$TyDescrTy_PrimTyp_75" { i32 0, i32 1 }
@"$TyDescr_Int64_81" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Int64_Prim_80" to i8*) }
@"$TyDescr_Uint64_Prim_82" = global %"$TyDescrTy_PrimTyp_75" { i32 1, i32 1 }
@"$TyDescr_Uint64_83" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Uint64_Prim_82" to i8*) }
@"$TyDescr_Int128_Prim_84" = global %"$TyDescrTy_PrimTyp_75" { i32 0, i32 2 }
@"$TyDescr_Int128_85" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Int128_Prim_84" to i8*) }
@"$TyDescr_Uint128_Prim_86" = global %"$TyDescrTy_PrimTyp_75" { i32 1, i32 2 }
@"$TyDescr_Uint128_87" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Uint128_Prim_86" to i8*) }
@"$TyDescr_Int256_Prim_88" = global %"$TyDescrTy_PrimTyp_75" { i32 0, i32 3 }
@"$TyDescr_Int256_89" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Int256_Prim_88" to i8*) }
@"$TyDescr_Uint256_Prim_90" = global %"$TyDescrTy_PrimTyp_75" { i32 1, i32 3 }
@"$TyDescr_Uint256_91" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Uint256_Prim_90" to i8*) }
@"$TyDescr_String_Prim_92" = global %"$TyDescrTy_PrimTyp_75" { i32 2, i32 0 }
@"$TyDescr_String_93" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_String_Prim_92" to i8*) }
@"$TyDescr_Bnum_Prim_94" = global %"$TyDescrTy_PrimTyp_75" { i32 3, i32 0 }
@"$TyDescr_Bnum_95" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Bnum_Prim_94" to i8*) }
@"$TyDescr_Message_Prim_96" = global %"$TyDescrTy_PrimTyp_75" { i32 4, i32 0 }
@"$TyDescr_Message_97" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Message_Prim_96" to i8*) }
@"$TyDescr_Event_Prim_98" = global %"$TyDescrTy_PrimTyp_75" { i32 5, i32 0 }
@"$TyDescr_Event_99" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Event_Prim_98" to i8*) }
@"$TyDescr_Exception_Prim_100" = global %"$TyDescrTy_PrimTyp_75" { i32 6, i32 0 }
@"$TyDescr_Exception_101" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Exception_Prim_100" to i8*) }
@"$TyDescr_ReplicateContr_Prim_102" = global %"$TyDescrTy_PrimTyp_75" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_103" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_ReplicateContr_Prim_102" to i8*) }
@"$TyDescr_Bystr_Prim_104" = global %"$TyDescrTy_PrimTyp_75" { i32 7, i32 0 }
@"$TyDescr_Bystr_105" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_75"* @"$TyDescr_Bystr_Prim_104" to i8*) }
@"$TyDescr_ADT_Bool_109" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_106"* @"$TyDescr_Bool_ADTTyp_Specl_124" to i8*) }
@"$TyDescr_ADT_List_Int64_110" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_106"* @"$TyDescr_List_Int64_ADTTyp_Specl_136" to i8*) }
@"$TyDescr_ADT_List_Int32_111" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_106"* @"$TyDescr_List_Int32_ADTTyp_Specl_145" to i8*) }
@"$TyDescr_Bool_ADTTyp_115" = unnamed_addr constant %"$TyDescrTy_ADTTyp_107" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_126", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_106"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_106"*], [1 x %"$TyDescrTy_ADTTyp_Specl_106"*]* @"$TyDescr_Bool_ADTTyp_m_specls_125", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_116" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_117" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_118" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_108" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_117", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_116", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_119" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_120" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_121" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_108" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_120", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_119", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_122" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_108"*] [%"$TyDescrTy_ADTTyp_Constr_108"* @"$TyDescr_Bool_True_ADTTyp_Constr_118", %"$TyDescrTy_ADTTyp_Constr_108"* @"$TyDescr_Bool_False_ADTTyp_Constr_121"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_123" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_124" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_106" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_123", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_108"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_108"*], [2 x %"$TyDescrTy_ADTTyp_Constr_108"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_122", i32 0, i32 0), %"$TyDescrTy_ADTTyp_107"* @"$TyDescr_Bool_ADTTyp_115" }
@"$TyDescr_Bool_ADTTyp_m_specls_125" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_106"*] [%"$TyDescrTy_ADTTyp_Specl_106"* @"$TyDescr_Bool_ADTTyp_Specl_124"]
@"$TyDescr_ADT_Bool_126" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_127" = unnamed_addr constant %"$TyDescrTy_ADTTyp_107" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_147", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_106"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_106"*], [2 x %"$TyDescrTy_ADTTyp_Specl_106"*]* @"$TyDescr_List_ADTTyp_m_specls_146", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int64_Constr_m_args_128" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_81", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int64_110"]
@"$TyDescr_ADT_Cons_129" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int64_ADTTyp_Constr_130" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_108" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_129", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int64_Constr_m_args_128", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int64_Constr_m_args_131" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_132" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int64_ADTTyp_Constr_133" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_108" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_132", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int64_Constr_m_args_131", i32 0, i32 0) }
@"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_134" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_108"*] [%"$TyDescrTy_ADTTyp_Constr_108"* @"$TyDescr_List_Cons_Int64_ADTTyp_Constr_130", %"$TyDescrTy_ADTTyp_Constr_108"* @"$TyDescr_List_Nil_Int64_ADTTyp_Constr_133"]
@"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_135" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_81"]
@"$TyDescr_List_Int64_ADTTyp_Specl_136" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_106" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_135", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_108"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_108"*], [2 x %"$TyDescrTy_ADTTyp_Constr_108"*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_134", i32 0, i32 0), %"$TyDescrTy_ADTTyp_107"* @"$TyDescr_List_ADTTyp_127" }
@"$TyDescr_List_Cons_Int32_Constr_m_args_137" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_77", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_111"]
@"$TyDescr_ADT_Cons_138" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_139" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_108" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_138", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_137", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_140" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_141" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_142" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_108" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_141", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_140", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_143" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_108"*] [%"$TyDescrTy_ADTTyp_Constr_108"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_139", %"$TyDescrTy_ADTTyp_Constr_108"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_142"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_144" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_77"]
@"$TyDescr_List_Int32_ADTTyp_Specl_145" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_106" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_144", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_108"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_108"*], [2 x %"$TyDescrTy_ADTTyp_Constr_108"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_143", i32 0, i32 0), %"$TyDescrTy_ADTTyp_107"* @"$TyDescr_List_ADTTyp_127" }
@"$TyDescr_List_ADTTyp_m_specls_146" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_106"*] [%"$TyDescrTy_ADTTyp_Specl_106"* @"$TyDescr_List_Int64_ADTTyp_Specl_136", %"$TyDescrTy_ADTTyp_Specl_106"* @"$TyDescr_List_Int32_ADTTyp_Specl_145"]
@"$TyDescr_ADT_List_147" = unnamed_addr constant [4 x i8] c"List"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@ListUtils.list_length = global { i8*, i8* }* null
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_99", %_TyDescrTy_Typ* @"$TyDescr_Int64_81", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_109", %_TyDescrTy_Typ* @"$TyDescr_Uint256_91", %_TyDescrTy_Typ* @"$TyDescr_Uint32_79", %_TyDescrTy_Typ* @"$TyDescr_Uint64_83", %_TyDescrTy_Typ* @"$TyDescr_Bnum_95", %_TyDescrTy_Typ* @"$TyDescr_Uint128_87", %_TyDescrTy_Typ* @"$TyDescr_Exception_101", %_TyDescrTy_Typ* @"$TyDescr_String_93", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int64_110", %_TyDescrTy_Typ* @"$TyDescr_Int256_89", %_TyDescrTy_Typ* @"$TyDescr_Int128_85", %_TyDescrTy_Typ* @"$TyDescr_Bystr_105", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_103", %_TyDescrTy_Typ* @"$TyDescr_Message_97", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_111", %_TyDescrTy_Typ* @"$TyDescr_Int32_77"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_1191"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1192"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_73"(%"$$fundef_73_env_148"* %0, { i8*, i8* }* %1) !dbg !3 {
entry:
  %"$retval_74" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_851" = icmp ugt i64 1, %"$gasrem_850"
  br i1 %"$gascmp_851", label %"$out_of_gas_852", label %"$have_gas_853"

"$out_of_gas_852":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_853"

"$have_gas_853":                                  ; preds = %"$out_of_gas_852", %entry
  %"$consume_854" = sub i64 %"$gasrem_850", 1
  store i64 %"$consume_854", i64* @_gasrem, align 8
  %"$f_855" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 2
  %"$f_856" = bitcast { i8*, i8* }* %"$f_855" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_857" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_856", align 8
  %"$f_fptr_858" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_857", 0
  %"$f_envptr_859" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_857", 1
  %"$f_call_860" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_858"(i8* %"$f_envptr_859"), !dbg !8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_860", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_74", align 8, !dbg !9
  %"$$retval_74_861" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_74", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_74_861"
}

define internal { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_71"(%"$$fundef_71_env_149"* %0) !dbg !10 {
entry:
  %"$retval_72" = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_841" = load i64, i64* @_gasrem, align 8
  %"$gascmp_842" = icmp ugt i64 1, %"$gasrem_841"
  br i1 %"$gascmp_842", label %"$out_of_gas_843", label %"$have_gas_844"

"$out_of_gas_843":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_844"

"$have_gas_844":                                  ; preds = %"$out_of_gas_843", %entry
  %"$consume_845" = sub i64 %"$gasrem_841", 1
  store i64 %"$consume_845", i64* @_gasrem, align 8
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_73_env_148"*, { i8*, i8* }*)* @"$fundef_73" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_72", align 8, !dbg !11
  %"$$retval_72_849" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_72", align 8
  ret { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_72_849"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_69"(%"$$fundef_69_env_150"* %0, { i8*, i8* }* %1) !dbg !12 {
entry:
  %"$retval_70" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_829" = load i64, i64* @_gasrem, align 8
  %"$gascmp_830" = icmp ugt i64 1, %"$gasrem_829"
  br i1 %"$gascmp_830", label %"$out_of_gas_831", label %"$have_gas_832"

"$out_of_gas_831":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_832"

"$have_gas_832":                                  ; preds = %"$out_of_gas_831", %entry
  %"$consume_833" = sub i64 %"$gasrem_829", 1
  store i64 %"$consume_833", i64* @_gasrem, align 8
  %"$f_834" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$f_835" = bitcast { i8*, i8* }* %"$f_834" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_836" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_835", align 8
  %"$f_fptr_837" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_836", 0
  %"$f_envptr_838" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_836", 1
  %"$f_call_839" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_837"(i8* %"$f_envptr_838"), !dbg !13
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_839", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_70", align 8, !dbg !14
  %"$$retval_70_840" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_70", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_70_840"
}

define internal { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_67"(%"$$fundef_67_env_151"* %0) !dbg !15 {
entry:
  %"$retval_68" = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_820" = load i64, i64* @_gasrem, align 8
  %"$gascmp_821" = icmp ugt i64 1, %"$gasrem_820"
  br i1 %"$gascmp_821", label %"$out_of_gas_822", label %"$have_gas_823"

"$out_of_gas_822":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_823"

"$have_gas_823":                                  ; preds = %"$out_of_gas_822", %entry
  %"$consume_824" = sub i64 %"$gasrem_820", 1
  store i64 %"$consume_824", i64* @_gasrem, align 8
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_69_env_150"*, { i8*, i8* }*)* @"$fundef_69" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_68", align 8, !dbg !16
  %"$$retval_68_828" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_68", align 8
  ret { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_68_828"
}

define internal %TName_List_Int64* @"$fundef_65"(%"$$fundef_65_env_152"* %0, %Int64 %1) !dbg !17 {
entry:
  %"$a_819" = alloca %Int64, align 8
  store %Int64 %1, %Int64* %"$a_819", align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$a_819", metadata !18, metadata !DIExpression()), !dbg !20
  %"$retval_66" = alloca %TName_List_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int64** %"$retval_66", metadata !21, metadata !DIExpression()), !dbg !24
  %"$gasrem_778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_779" = icmp ugt i64 1, %"$gasrem_778"
  br i1 %"$gascmp_779", label %"$out_of_gas_780", label %"$have_gas_781"

"$out_of_gas_780":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_781"

"$have_gas_781":                                  ; preds = %"$out_of_gas_780", %entry
  %"$consume_782" = sub i64 %"$gasrem_778", 1
  store i64 %"$consume_782", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int64** %an, metadata !25, metadata !DIExpression()), !dbg !26
  %"$gasrem_783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_784" = icmp ugt i64 1, %"$gasrem_783"
  br i1 %"$gascmp_784", label %"$out_of_gas_785", label %"$have_gas_786"

"$out_of_gas_785":                                ; preds = %"$have_gas_781"
  call void @_out_of_gas()
  br label %"$have_gas_786"

"$have_gas_786":                                  ; preds = %"$out_of_gas_785", %"$have_gas_781"
  %"$consume_787" = sub i64 %"$gasrem_783", 1
  store i64 %"$consume_787", i64* @_gasrem, align 8
  %"$adtval_788_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_788_salloc" = call i8* @_salloc(i8* %"$adtval_788_load", i64 1)
  %"$adtval_788" = bitcast i8* %"$adtval_788_salloc" to %CName_Nil_Int64*
  %"$adtgep_789" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_788", i32 0, i32 0
  store i8 1, i8* %"$adtgep_789", align 1
  %"$adtptr_790" = bitcast %CName_Nil_Int64* %"$adtval_788" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_790", %TName_List_Int64** %an, align 8, !dbg !27
  %"$gasrem_791" = load i64, i64* @_gasrem, align 8
  %"$gascmp_792" = icmp ugt i64 1, %"$gasrem_791"
  br i1 %"$gascmp_792", label %"$out_of_gas_793", label %"$have_gas_794"

"$out_of_gas_793":                                ; preds = %"$have_gas_786"
  call void @_out_of_gas()
  br label %"$have_gas_794"

"$have_gas_794":                                  ; preds = %"$out_of_gas_793", %"$have_gas_786"
  %"$consume_795" = sub i64 %"$gasrem_791", 1
  store i64 %"$consume_795", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int64** %a1, metadata !28, metadata !DIExpression()), !dbg !29
  %"$gasrem_796" = load i64, i64* @_gasrem, align 8
  %"$gascmp_797" = icmp ugt i64 1, %"$gasrem_796"
  br i1 %"$gascmp_797", label %"$out_of_gas_798", label %"$have_gas_799"

"$out_of_gas_798":                                ; preds = %"$have_gas_794"
  call void @_out_of_gas()
  br label %"$have_gas_799"

"$have_gas_799":                                  ; preds = %"$out_of_gas_798", %"$have_gas_794"
  %"$consume_800" = sub i64 %"$gasrem_796", 1
  store i64 %"$consume_800", i64* @_gasrem, align 8
  %"$an_801" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_802_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_802_salloc" = call i8* @_salloc(i8* %"$adtval_802_load", i64 17)
  %"$adtval_802" = bitcast i8* %"$adtval_802_salloc" to %CName_Cons_Int64*
  %"$adtgep_803" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_802", i32 0, i32 0
  store i8 0, i8* %"$adtgep_803", align 1
  %"$adtgep_804" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_802", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_804", align 8
  %"$adtgep_805" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_802", i32 0, i32 2
  store %TName_List_Int64* %"$an_801", %TName_List_Int64** %"$adtgep_805", align 8
  %"$adtptr_806" = bitcast %CName_Cons_Int64* %"$adtval_802" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_806", %TName_List_Int64** %a1, align 8, !dbg !30
  %"$gasrem_807" = load i64, i64* @_gasrem, align 8
  %"$gascmp_808" = icmp ugt i64 1, %"$gasrem_807"
  br i1 %"$gascmp_808", label %"$out_of_gas_809", label %"$have_gas_810"

"$out_of_gas_809":                                ; preds = %"$have_gas_799"
  call void @_out_of_gas()
  br label %"$have_gas_810"

"$have_gas_810":                                  ; preds = %"$out_of_gas_809", %"$have_gas_799"
  %"$consume_811" = sub i64 %"$gasrem_807", 1
  store i64 %"$consume_811", i64* @_gasrem, align 8
  %"$a1_812" = load %TName_List_Int64*, %TName_List_Int64** %a1, align 8
  %"$adtval_813_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_813_salloc" = call i8* @_salloc(i8* %"$adtval_813_load", i64 17)
  %"$adtval_813" = bitcast i8* %"$adtval_813_salloc" to %CName_Cons_Int64*
  %"$adtgep_814" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_813", i32 0, i32 0
  store i8 0, i8* %"$adtgep_814", align 1
  %"$adtgep_815" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_813", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_815", align 8
  %"$adtgep_816" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_813", i32 0, i32 2
  store %TName_List_Int64* %"$a1_812", %TName_List_Int64** %"$adtgep_816", align 8
  %"$adtptr_817" = bitcast %CName_Cons_Int64* %"$adtval_813" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_817", %TName_List_Int64** %"$retval_66", align 8, !dbg !31
  %"$$retval_66_818" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_66", align 8
  ret %TName_List_Int64* %"$$retval_66_818"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_63"(%"$$fundef_63_env_153"* %0) !dbg !32 {
entry:
  %"$retval_64" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_769" = load i64, i64* @_gasrem, align 8
  %"$gascmp_770" = icmp ugt i64 1, %"$gasrem_769"
  br i1 %"$gascmp_770", label %"$out_of_gas_771", label %"$have_gas_772"

"$out_of_gas_771":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_772"

"$have_gas_772":                                  ; preds = %"$out_of_gas_771", %entry
  %"$consume_773" = sub i64 %"$gasrem_769", 1
  store i64 %"$consume_773", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_65_env_152"*, %Int64)* @"$fundef_65" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_64", align 8, !dbg !33
  %"$$retval_64_777" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_64", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_64_777"
}

define internal %TName_List_Int32* @"$fundef_61"(%"$$fundef_61_env_154"* %0, %Int32 %1) !dbg !34 {
entry:
  %"$a_768" = alloca %Int32, align 8
  store %Int32 %1, %Int32* %"$a_768", align 4
  call void @llvm.dbg.declare(metadata %Int32* %"$a_768", metadata !35, metadata !DIExpression()), !dbg !37
  %"$retval_62" = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %"$retval_62", metadata !38, metadata !DIExpression()), !dbg !41
  %"$gasrem_727" = load i64, i64* @_gasrem, align 8
  %"$gascmp_728" = icmp ugt i64 1, %"$gasrem_727"
  br i1 %"$gascmp_728", label %"$out_of_gas_729", label %"$have_gas_730"

"$out_of_gas_729":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_730"

"$have_gas_730":                                  ; preds = %"$out_of_gas_729", %entry
  %"$consume_731" = sub i64 %"$gasrem_727", 1
  store i64 %"$consume_731", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %an, metadata !42, metadata !DIExpression()), !dbg !43
  %"$gasrem_732" = load i64, i64* @_gasrem, align 8
  %"$gascmp_733" = icmp ugt i64 1, %"$gasrem_732"
  br i1 %"$gascmp_733", label %"$out_of_gas_734", label %"$have_gas_735"

"$out_of_gas_734":                                ; preds = %"$have_gas_730"
  call void @_out_of_gas()
  br label %"$have_gas_735"

"$have_gas_735":                                  ; preds = %"$out_of_gas_734", %"$have_gas_730"
  %"$consume_736" = sub i64 %"$gasrem_732", 1
  store i64 %"$consume_736", i64* @_gasrem, align 8
  %"$adtval_737_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_737_salloc" = call i8* @_salloc(i8* %"$adtval_737_load", i64 1)
  %"$adtval_737" = bitcast i8* %"$adtval_737_salloc" to %CName_Nil_Int32*
  %"$adtgep_738" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_737", i32 0, i32 0
  store i8 1, i8* %"$adtgep_738", align 1
  %"$adtptr_739" = bitcast %CName_Nil_Int32* %"$adtval_737" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_739", %TName_List_Int32** %an, align 8, !dbg !44
  %"$gasrem_740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_741" = icmp ugt i64 1, %"$gasrem_740"
  br i1 %"$gascmp_741", label %"$out_of_gas_742", label %"$have_gas_743"

"$out_of_gas_742":                                ; preds = %"$have_gas_735"
  call void @_out_of_gas()
  br label %"$have_gas_743"

"$have_gas_743":                                  ; preds = %"$out_of_gas_742", %"$have_gas_735"
  %"$consume_744" = sub i64 %"$gasrem_740", 1
  store i64 %"$consume_744", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %a1, metadata !45, metadata !DIExpression()), !dbg !46
  %"$gasrem_745" = load i64, i64* @_gasrem, align 8
  %"$gascmp_746" = icmp ugt i64 1, %"$gasrem_745"
  br i1 %"$gascmp_746", label %"$out_of_gas_747", label %"$have_gas_748"

"$out_of_gas_747":                                ; preds = %"$have_gas_743"
  call void @_out_of_gas()
  br label %"$have_gas_748"

"$have_gas_748":                                  ; preds = %"$out_of_gas_747", %"$have_gas_743"
  %"$consume_749" = sub i64 %"$gasrem_745", 1
  store i64 %"$consume_749", i64* @_gasrem, align 8
  %"$an_750" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_751_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_751_salloc" = call i8* @_salloc(i8* %"$adtval_751_load", i64 13)
  %"$adtval_751" = bitcast i8* %"$adtval_751_salloc" to %CName_Cons_Int32*
  %"$adtgep_752" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_751", i32 0, i32 0
  store i8 0, i8* %"$adtgep_752", align 1
  %"$adtgep_753" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_751", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_753", align 4
  %"$adtgep_754" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_751", i32 0, i32 2
  store %TName_List_Int32* %"$an_750", %TName_List_Int32** %"$adtgep_754", align 8
  %"$adtptr_755" = bitcast %CName_Cons_Int32* %"$adtval_751" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_755", %TName_List_Int32** %a1, align 8, !dbg !47
  %"$gasrem_756" = load i64, i64* @_gasrem, align 8
  %"$gascmp_757" = icmp ugt i64 1, %"$gasrem_756"
  br i1 %"$gascmp_757", label %"$out_of_gas_758", label %"$have_gas_759"

"$out_of_gas_758":                                ; preds = %"$have_gas_748"
  call void @_out_of_gas()
  br label %"$have_gas_759"

"$have_gas_759":                                  ; preds = %"$out_of_gas_758", %"$have_gas_748"
  %"$consume_760" = sub i64 %"$gasrem_756", 1
  store i64 %"$consume_760", i64* @_gasrem, align 8
  %"$a1_761" = load %TName_List_Int32*, %TName_List_Int32** %a1, align 8
  %"$adtval_762_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_762_salloc" = call i8* @_salloc(i8* %"$adtval_762_load", i64 13)
  %"$adtval_762" = bitcast i8* %"$adtval_762_salloc" to %CName_Cons_Int32*
  %"$adtgep_763" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_762", i32 0, i32 0
  store i8 0, i8* %"$adtgep_763", align 1
  %"$adtgep_764" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_762", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_764", align 4
  %"$adtgep_765" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_762", i32 0, i32 2
  store %TName_List_Int32* %"$a1_761", %TName_List_Int32** %"$adtgep_765", align 8
  %"$adtptr_766" = bitcast %CName_Cons_Int32* %"$adtval_762" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_766", %TName_List_Int32** %"$retval_62", align 8, !dbg !48
  %"$$retval_62_767" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_62", align 8
  ret %TName_List_Int32* %"$$retval_62_767"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_59"(%"$$fundef_59_env_155"* %0) !dbg !49 {
entry:
  %"$retval_60" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_718" = load i64, i64* @_gasrem, align 8
  %"$gascmp_719" = icmp ugt i64 1, %"$gasrem_718"
  br i1 %"$gascmp_719", label %"$out_of_gas_720", label %"$have_gas_721"

"$out_of_gas_720":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_721"

"$have_gas_721":                                  ; preds = %"$out_of_gas_720", %entry
  %"$consume_722" = sub i64 %"$gasrem_718", 1
  store i64 %"$consume_722", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_61_env_154"*, %Int32)* @"$fundef_61" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_60", align 8, !dbg !50
  %"$$retval_60_726" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_60", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_60_726"
}

define internal %TName_List_Int64* @"$fundef_57"(%"$$fundef_57_env_156"* %0, %Int64 %1) !dbg !51 {
entry:
  %"$a_717" = alloca %Int64, align 8
  store %Int64 %1, %Int64* %"$a_717", align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$a_717", metadata !52, metadata !DIExpression()), !dbg !53
  %"$retval_58" = alloca %TName_List_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int64** %"$retval_58", metadata !54, metadata !DIExpression()), !dbg !55
  %"$gasrem_692" = load i64, i64* @_gasrem, align 8
  %"$gascmp_693" = icmp ugt i64 1, %"$gasrem_692"
  br i1 %"$gascmp_693", label %"$out_of_gas_694", label %"$have_gas_695"

"$out_of_gas_694":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_695"

"$have_gas_695":                                  ; preds = %"$out_of_gas_694", %entry
  %"$consume_696" = sub i64 %"$gasrem_692", 1
  store i64 %"$consume_696", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int64** %an, metadata !56, metadata !DIExpression()), !dbg !57
  %"$gasrem_697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_698" = icmp ugt i64 1, %"$gasrem_697"
  br i1 %"$gascmp_698", label %"$out_of_gas_699", label %"$have_gas_700"

"$out_of_gas_699":                                ; preds = %"$have_gas_695"
  call void @_out_of_gas()
  br label %"$have_gas_700"

"$have_gas_700":                                  ; preds = %"$out_of_gas_699", %"$have_gas_695"
  %"$consume_701" = sub i64 %"$gasrem_697", 1
  store i64 %"$consume_701", i64* @_gasrem, align 8
  %"$adtval_702_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_702_salloc" = call i8* @_salloc(i8* %"$adtval_702_load", i64 1)
  %"$adtval_702" = bitcast i8* %"$adtval_702_salloc" to %CName_Nil_Int64*
  %"$adtgep_703" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_702", i32 0, i32 0
  store i8 1, i8* %"$adtgep_703", align 1
  %"$adtptr_704" = bitcast %CName_Nil_Int64* %"$adtval_702" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_704", %TName_List_Int64** %an, align 8, !dbg !58
  %"$gasrem_705" = load i64, i64* @_gasrem, align 8
  %"$gascmp_706" = icmp ugt i64 1, %"$gasrem_705"
  br i1 %"$gascmp_706", label %"$out_of_gas_707", label %"$have_gas_708"

"$out_of_gas_707":                                ; preds = %"$have_gas_700"
  call void @_out_of_gas()
  br label %"$have_gas_708"

"$have_gas_708":                                  ; preds = %"$out_of_gas_707", %"$have_gas_700"
  %"$consume_709" = sub i64 %"$gasrem_705", 1
  store i64 %"$consume_709", i64* @_gasrem, align 8
  %"$an_710" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_711_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_711_salloc" = call i8* @_salloc(i8* %"$adtval_711_load", i64 17)
  %"$adtval_711" = bitcast i8* %"$adtval_711_salloc" to %CName_Cons_Int64*
  %"$adtgep_712" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_711", i32 0, i32 0
  store i8 0, i8* %"$adtgep_712", align 1
  %"$adtgep_713" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_711", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_713", align 8
  %"$adtgep_714" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_711", i32 0, i32 2
  store %TName_List_Int64* %"$an_710", %TName_List_Int64** %"$adtgep_714", align 8
  %"$adtptr_715" = bitcast %CName_Cons_Int64* %"$adtval_711" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_715", %TName_List_Int64** %"$retval_58", align 8, !dbg !59
  %"$$retval_58_716" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_58", align 8
  ret %TName_List_Int64* %"$$retval_58_716"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_55"(%"$$fundef_55_env_157"* %0) !dbg !60 {
entry:
  %"$retval_56" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_684" = icmp ugt i64 1, %"$gasrem_683"
  br i1 %"$gascmp_684", label %"$out_of_gas_685", label %"$have_gas_686"

"$out_of_gas_685":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_686"

"$have_gas_686":                                  ; preds = %"$out_of_gas_685", %entry
  %"$consume_687" = sub i64 %"$gasrem_683", 1
  store i64 %"$consume_687", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_57_env_156"*, %Int64)* @"$fundef_57" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_56", align 8, !dbg !61
  %"$$retval_56_691" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_56", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_56_691"
}

define internal %TName_List_Int32* @"$fundef_53"(%"$$fundef_53_env_158"* %0, %Int32 %1) !dbg !62 {
entry:
  %"$a_682" = alloca %Int32, align 8
  store %Int32 %1, %Int32* %"$a_682", align 4
  call void @llvm.dbg.declare(metadata %Int32* %"$a_682", metadata !63, metadata !DIExpression()), !dbg !64
  %"$retval_54" = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %"$retval_54", metadata !65, metadata !DIExpression()), !dbg !66
  %"$gasrem_657" = load i64, i64* @_gasrem, align 8
  %"$gascmp_658" = icmp ugt i64 1, %"$gasrem_657"
  br i1 %"$gascmp_658", label %"$out_of_gas_659", label %"$have_gas_660"

"$out_of_gas_659":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_660"

"$have_gas_660":                                  ; preds = %"$out_of_gas_659", %entry
  %"$consume_661" = sub i64 %"$gasrem_657", 1
  store i64 %"$consume_661", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %an, metadata !67, metadata !DIExpression()), !dbg !68
  %"$gasrem_662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_663" = icmp ugt i64 1, %"$gasrem_662"
  br i1 %"$gascmp_663", label %"$out_of_gas_664", label %"$have_gas_665"

"$out_of_gas_664":                                ; preds = %"$have_gas_660"
  call void @_out_of_gas()
  br label %"$have_gas_665"

"$have_gas_665":                                  ; preds = %"$out_of_gas_664", %"$have_gas_660"
  %"$consume_666" = sub i64 %"$gasrem_662", 1
  store i64 %"$consume_666", i64* @_gasrem, align 8
  %"$adtval_667_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_667_salloc" = call i8* @_salloc(i8* %"$adtval_667_load", i64 1)
  %"$adtval_667" = bitcast i8* %"$adtval_667_salloc" to %CName_Nil_Int32*
  %"$adtgep_668" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_667", i32 0, i32 0
  store i8 1, i8* %"$adtgep_668", align 1
  %"$adtptr_669" = bitcast %CName_Nil_Int32* %"$adtval_667" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_669", %TName_List_Int32** %an, align 8, !dbg !69
  %"$gasrem_670" = load i64, i64* @_gasrem, align 8
  %"$gascmp_671" = icmp ugt i64 1, %"$gasrem_670"
  br i1 %"$gascmp_671", label %"$out_of_gas_672", label %"$have_gas_673"

"$out_of_gas_672":                                ; preds = %"$have_gas_665"
  call void @_out_of_gas()
  br label %"$have_gas_673"

"$have_gas_673":                                  ; preds = %"$out_of_gas_672", %"$have_gas_665"
  %"$consume_674" = sub i64 %"$gasrem_670", 1
  store i64 %"$consume_674", i64* @_gasrem, align 8
  %"$an_675" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_676_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_676_salloc" = call i8* @_salloc(i8* %"$adtval_676_load", i64 13)
  %"$adtval_676" = bitcast i8* %"$adtval_676_salloc" to %CName_Cons_Int32*
  %"$adtgep_677" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_676", i32 0, i32 0
  store i8 0, i8* %"$adtgep_677", align 1
  %"$adtgep_678" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_676", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_678", align 4
  %"$adtgep_679" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_676", i32 0, i32 2
  store %TName_List_Int32* %"$an_675", %TName_List_Int32** %"$adtgep_679", align 8
  %"$adtptr_680" = bitcast %CName_Cons_Int32* %"$adtval_676" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_680", %TName_List_Int32** %"$retval_54", align 8, !dbg !70
  %"$$retval_54_681" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_54", align 8
  ret %TName_List_Int32* %"$$retval_54_681"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_51"(%"$$fundef_51_env_159"* %0) !dbg !71 {
entry:
  %"$retval_52" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_648" = load i64, i64* @_gasrem, align 8
  %"$gascmp_649" = icmp ugt i64 1, %"$gasrem_648"
  br i1 %"$gascmp_649", label %"$out_of_gas_650", label %"$have_gas_651"

"$out_of_gas_650":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_651"

"$have_gas_651":                                  ; preds = %"$out_of_gas_650", %entry
  %"$consume_652" = sub i64 %"$gasrem_648", 1
  store i64 %"$consume_652", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_53_env_158"*, %Int32)* @"$fundef_53" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_52", align 8, !dbg !72
  %"$$retval_52_656" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_52", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_52_656"
}

define internal %Uint32 @"$fundef_48"(%"$$fundef_48_env_160"* %0, %Int64 %1) !dbg !73 {
entry:
  %"$h_647" = alloca %Int64, align 8
  store %Int64 %1, %Int64* %"$h_647", align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$h_647", metadata !75, metadata !DIExpression()), !dbg !76
  %"$$fundef_48_env_one_634" = getelementptr inbounds %"$$fundef_48_env_160", %"$$fundef_48_env_160"* %0, i32 0, i32 0
  %"$one_envload_635" = load %Uint32, %Uint32* %"$$fundef_48_env_one_634", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_635", %Uint32* %one, align 4
  %"$$fundef_48_env_z_636" = getelementptr inbounds %"$$fundef_48_env_160", %"$$fundef_48_env_160"* %0, i32 0, i32 1
  %"$z_envload_637" = load %Uint32, %Uint32* %"$$fundef_48_env_z_636", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_637", %Uint32* %z, align 4
  %"$retval_49" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_49", metadata !77, metadata !DIExpression()), !dbg !79
  %"$gasrem_638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_639" = icmp ugt i64 4, %"$gasrem_638"
  br i1 %"$gascmp_639", label %"$out_of_gas_640", label %"$have_gas_641"

"$out_of_gas_640":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_641"

"$have_gas_641":                                  ; preds = %"$out_of_gas_640", %entry
  %"$consume_642" = sub i64 %"$gasrem_638", 4
  store i64 %"$consume_642", i64* @_gasrem, align 8
  %"$one_643" = load %Uint32, %Uint32* %one, align 4
  %"$z_644" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_645" = call %Uint32 @_add_Uint32(%Uint32 %"$one_643", %Uint32 %"$z_644"), !dbg !79
  store %Uint32 %"$add_call_645", %Uint32* %"$retval_49", align 4, !dbg !79
  %"$$retval_49_646" = load %Uint32, %Uint32* %"$retval_49", align 4
  ret %Uint32 %"$$retval_49_646"
}

define internal { %Uint32 (i8*, %Int64)*, i8* } @"$fundef_46"(%"$$fundef_46_env_161"* %0, %Uint32 %1) !dbg !80 {
entry:
  %"$z_633" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$z_633", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$z_633", metadata !81, metadata !DIExpression()), !dbg !82
  %"$$fundef_46_env_one_618" = getelementptr inbounds %"$$fundef_46_env_161", %"$$fundef_46_env_161"* %0, i32 0, i32 0
  %"$one_envload_619" = load %Uint32, %Uint32* %"$$fundef_46_env_one_618", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_619", %Uint32* %one, align 4
  %"$retval_47" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_621" = icmp ugt i64 1, %"$gasrem_620"
  br i1 %"$gascmp_621", label %"$out_of_gas_622", label %"$have_gas_623"

"$out_of_gas_622":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_623"

"$have_gas_623":                                  ; preds = %"$out_of_gas_622", %entry
  %"$consume_624" = sub i64 %"$gasrem_620", 1
  store i64 %"$consume_624", i64* @_gasrem, align 8
  %"$$fundef_48_envp_625_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_48_envp_625_salloc" = call i8* @_salloc(i8* %"$$fundef_48_envp_625_load", i64 8)
  %"$$fundef_48_envp_625" = bitcast i8* %"$$fundef_48_envp_625_salloc" to %"$$fundef_48_env_160"*
  %"$$fundef_48_env_voidp_627" = bitcast %"$$fundef_48_env_160"* %"$$fundef_48_envp_625" to i8*
  %"$$fundef_48_cloval_628" = insertvalue { %Uint32 (i8*, %Int64)*, i8* } { %Uint32 (i8*, %Int64)* bitcast (%Uint32 (%"$$fundef_48_env_160"*, %Int64)* @"$fundef_48" to %Uint32 (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_48_env_voidp_627", 1
  %"$$fundef_48_env_one_629" = getelementptr inbounds %"$$fundef_48_env_160", %"$$fundef_48_env_160"* %"$$fundef_48_envp_625", i32 0, i32 0
  %"$one_630" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_630", %Uint32* %"$$fundef_48_env_one_629", align 4
  %"$$fundef_48_env_z_631" = getelementptr inbounds %"$$fundef_48_env_160", %"$$fundef_48_env_160"* %"$$fundef_48_envp_625", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_48_env_z_631", align 4
  store { %Uint32 (i8*, %Int64)*, i8* } %"$$fundef_48_cloval_628", { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_47", align 8, !dbg !83
  %"$$retval_47_632" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_47", align 8
  ret { %Uint32 (i8*, %Int64)*, i8* } %"$$retval_47_632"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_44"(%"$$fundef_44_env_162"* %0) !dbg !84 {
entry:
  %"$$fundef_44_env_list_foldl_540" = getelementptr inbounds %"$$fundef_44_env_162", %"$$fundef_44_env_162"* %0, i32 0, i32 0
  %"$list_foldl_envload_541" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_44_env_list_foldl_540", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_541", { i8*, i8* }** %list_foldl, align 8
  %"$retval_45" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 1, %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %entry
  %"$consume_546" = sub i64 %"$gasrem_542", 1
  store i64 %"$consume_546", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$have_gas_545"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$have_gas_545"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  %"$list_foldl_552" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_553" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_552", i32 2
  %"$list_foldl_554" = bitcast { i8*, i8* }* %"$list_foldl_553" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_555" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_554", align 8
  %"$list_foldl_fptr_556" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_555", 0
  %"$list_foldl_envptr_557" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_555", 1
  %"$list_foldl_call_558" = call { i8*, i8* }* %"$list_foldl_fptr_556"(i8* %"$list_foldl_envptr_557"), !dbg !85
  %"$list_foldl_559" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_558", i32 1
  %"$list_foldl_560" = bitcast { i8*, i8* }* %"$list_foldl_559" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_561" = load { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_560", align 8
  %"$list_foldl_fptr_562" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_561", 0
  %"$list_foldl_envptr_563" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_561", 1
  %"$list_foldl_call_564" = call { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_562"(i8* %"$list_foldl_envptr_563"), !dbg !85
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_564", { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8, !dbg !86
  %"$gasrem_565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_566" = icmp ugt i64 1, %"$gasrem_565"
  br i1 %"$gascmp_566", label %"$out_of_gas_567", label %"$have_gas_568"

"$out_of_gas_567":                                ; preds = %"$have_gas_550"
  call void @_out_of_gas()
  br label %"$have_gas_568"

"$have_gas_568":                                  ; preds = %"$out_of_gas_567", %"$have_gas_550"
  %"$consume_569" = sub i64 %"$gasrem_565", 1
  store i64 %"$consume_569", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %one, metadata !87, metadata !DIExpression()), !dbg !88
  %"$gasrem_570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_571" = icmp ugt i64 1, %"$gasrem_570"
  br i1 %"$gascmp_571", label %"$out_of_gas_572", label %"$have_gas_573"

"$out_of_gas_572":                                ; preds = %"$have_gas_568"
  call void @_out_of_gas()
  br label %"$have_gas_573"

"$have_gas_573":                                  ; preds = %"$out_of_gas_572", %"$have_gas_568"
  %"$consume_574" = sub i64 %"$gasrem_570", 1
  store i64 %"$consume_574", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !89
  %"$gasrem_575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_576" = icmp ugt i64 1, %"$gasrem_575"
  br i1 %"$gascmp_576", label %"$out_of_gas_577", label %"$have_gas_578"

"$out_of_gas_577":                                ; preds = %"$have_gas_573"
  call void @_out_of_gas()
  br label %"$have_gas_578"

"$have_gas_578":                                  ; preds = %"$out_of_gas_577", %"$have_gas_573"
  %"$consume_579" = sub i64 %"$gasrem_575", 1
  store i64 %"$consume_579", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_580" = load i64, i64* @_gasrem, align 8
  %"$gascmp_581" = icmp ugt i64 1, %"$gasrem_580"
  br i1 %"$gascmp_581", label %"$out_of_gas_582", label %"$have_gas_583"

"$out_of_gas_582":                                ; preds = %"$have_gas_578"
  call void @_out_of_gas()
  br label %"$have_gas_583"

"$have_gas_583":                                  ; preds = %"$out_of_gas_582", %"$have_gas_578"
  %"$consume_584" = sub i64 %"$gasrem_580", 1
  store i64 %"$consume_584", i64* @_gasrem, align 8
  %"$$fundef_46_envp_585_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_46_envp_585_salloc" = call i8* @_salloc(i8* %"$$fundef_46_envp_585_load", i64 4)
  %"$$fundef_46_envp_585" = bitcast i8* %"$$fundef_46_envp_585_salloc" to %"$$fundef_46_env_161"*
  %"$$fundef_46_env_voidp_587" = bitcast %"$$fundef_46_env_161"* %"$$fundef_46_envp_585" to i8*
  %"$$fundef_46_cloval_588" = insertvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int64)*, i8* } (%"$$fundef_46_env_161"*, %Uint32)* @"$fundef_46" to { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_46_env_voidp_587", 1
  %"$$fundef_46_env_one_589" = getelementptr inbounds %"$$fundef_46_env_161", %"$$fundef_46_env_161"* %"$$fundef_46_envp_585", i32 0, i32 0
  %"$one_590" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_590", %Uint32* %"$$fundef_46_env_one_589", align 4
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_46_cloval_588", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8, !dbg !90
  %"$gasrem_591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_592" = icmp ugt i64 1, %"$gasrem_591"
  br i1 %"$gascmp_592", label %"$out_of_gas_593", label %"$have_gas_594"

"$out_of_gas_593":                                ; preds = %"$have_gas_583"
  call void @_out_of_gas()
  br label %"$have_gas_594"

"$have_gas_594":                                  ; preds = %"$out_of_gas_593", %"$have_gas_583"
  %"$consume_595" = sub i64 %"$gasrem_591", 1
  store i64 %"$consume_595", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %init, metadata !91, metadata !DIExpression()), !dbg !92
  %"$gasrem_596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_597" = icmp ugt i64 1, %"$gasrem_596"
  br i1 %"$gascmp_597", label %"$out_of_gas_598", label %"$have_gas_599"

"$out_of_gas_598":                                ; preds = %"$have_gas_594"
  call void @_out_of_gas()
  br label %"$have_gas_599"

"$have_gas_599":                                  ; preds = %"$out_of_gas_598", %"$have_gas_594"
  %"$consume_600" = sub i64 %"$gasrem_596", 1
  store i64 %"$consume_600", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4, !dbg !93
  %"$gasrem_601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_602" = icmp ugt i64 1, %"$gasrem_601"
  br i1 %"$gascmp_602", label %"$out_of_gas_603", label %"$have_gas_604"

"$out_of_gas_603":                                ; preds = %"$have_gas_599"
  call void @_out_of_gas()
  br label %"$have_gas_604"

"$have_gas_604":                                  ; preds = %"$out_of_gas_603", %"$have_gas_599"
  %"$consume_605" = sub i64 %"$gasrem_601", 1
  store i64 %"$consume_605", i64* @_gasrem, align 8
  %"$foldl_10" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_606" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_607" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_606", 0
  %"$foldl_envptr_608" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_606", 1
  %"$iter_609" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_610" = call { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_607"(i8* %"$foldl_envptr_608", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_609"), !dbg !94
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_610", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8, !dbg !94
  %"$foldl_11" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$$foldl_10_611" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$$foldl_10_fptr_612" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_611", 0
  %"$$foldl_10_envptr_613" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_611", 1
  %"$init_614" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_10_call_615" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_10_fptr_612"(i8* %"$$foldl_10_envptr_613", %Uint32 %"$init_614"), !dbg !94
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_10_call_615", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_11", align 8, !dbg !94
  %"$$foldl_11_616" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_11", align 8
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_11_616", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_45", align 8, !dbg !94
  %"$$retval_45_617" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_45", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_45_617"
}

define internal %Uint32 @"$fundef_42"(%"$$fundef_42_env_163"* %0, %Int32 %1) !dbg !95 {
entry:
  %"$h_539" = alloca %Int32, align 8
  store %Int32 %1, %Int32* %"$h_539", align 4
  call void @llvm.dbg.declare(metadata %Int32* %"$h_539", metadata !96, metadata !DIExpression()), !dbg !97
  %"$$fundef_42_env_one_526" = getelementptr inbounds %"$$fundef_42_env_163", %"$$fundef_42_env_163"* %0, i32 0, i32 0
  %"$one_envload_527" = load %Uint32, %Uint32* %"$$fundef_42_env_one_526", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_527", %Uint32* %one, align 4
  %"$$fundef_42_env_z_528" = getelementptr inbounds %"$$fundef_42_env_163", %"$$fundef_42_env_163"* %0, i32 0, i32 1
  %"$z_envload_529" = load %Uint32, %Uint32* %"$$fundef_42_env_z_528", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_529", %Uint32* %z, align 4
  %"$retval_43" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_43", metadata !98, metadata !DIExpression()), !dbg !99
  %"$gasrem_530" = load i64, i64* @_gasrem, align 8
  %"$gascmp_531" = icmp ugt i64 4, %"$gasrem_530"
  br i1 %"$gascmp_531", label %"$out_of_gas_532", label %"$have_gas_533"

"$out_of_gas_532":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_533"

"$have_gas_533":                                  ; preds = %"$out_of_gas_532", %entry
  %"$consume_534" = sub i64 %"$gasrem_530", 4
  store i64 %"$consume_534", i64* @_gasrem, align 8
  %"$one_535" = load %Uint32, %Uint32* %one, align 4
  %"$z_536" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_537" = call %Uint32 @_add_Uint32(%Uint32 %"$one_535", %Uint32 %"$z_536"), !dbg !99
  store %Uint32 %"$add_call_537", %Uint32* %"$retval_43", align 4, !dbg !99
  %"$$retval_43_538" = load %Uint32, %Uint32* %"$retval_43", align 4
  ret %Uint32 %"$$retval_43_538"
}

define internal { %Uint32 (i8*, %Int32)*, i8* } @"$fundef_40"(%"$$fundef_40_env_164"* %0, %Uint32 %1) !dbg !100 {
entry:
  %"$z_525" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$z_525", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$z_525", metadata !101, metadata !DIExpression()), !dbg !102
  %"$$fundef_40_env_one_510" = getelementptr inbounds %"$$fundef_40_env_164", %"$$fundef_40_env_164"* %0, i32 0, i32 0
  %"$one_envload_511" = load %Uint32, %Uint32* %"$$fundef_40_env_one_510", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_511", %Uint32* %one, align 4
  %"$retval_41" = alloca { %Uint32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 1, %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %entry
  %"$consume_516" = sub i64 %"$gasrem_512", 1
  store i64 %"$consume_516", i64* @_gasrem, align 8
  %"$$fundef_42_envp_517_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_42_envp_517_salloc" = call i8* @_salloc(i8* %"$$fundef_42_envp_517_load", i64 8)
  %"$$fundef_42_envp_517" = bitcast i8* %"$$fundef_42_envp_517_salloc" to %"$$fundef_42_env_163"*
  %"$$fundef_42_env_voidp_519" = bitcast %"$$fundef_42_env_163"* %"$$fundef_42_envp_517" to i8*
  %"$$fundef_42_cloval_520" = insertvalue { %Uint32 (i8*, %Int32)*, i8* } { %Uint32 (i8*, %Int32)* bitcast (%Uint32 (%"$$fundef_42_env_163"*, %Int32)* @"$fundef_42" to %Uint32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_42_env_voidp_519", 1
  %"$$fundef_42_env_one_521" = getelementptr inbounds %"$$fundef_42_env_163", %"$$fundef_42_env_163"* %"$$fundef_42_envp_517", i32 0, i32 0
  %"$one_522" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_522", %Uint32* %"$$fundef_42_env_one_521", align 4
  %"$$fundef_42_env_z_523" = getelementptr inbounds %"$$fundef_42_env_163", %"$$fundef_42_env_163"* %"$$fundef_42_envp_517", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_42_env_z_523", align 4
  store { %Uint32 (i8*, %Int32)*, i8* } %"$$fundef_42_cloval_520", { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_41", align 8, !dbg !103
  %"$$retval_41_524" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_41", align 8
  ret { %Uint32 (i8*, %Int32)*, i8* } %"$$retval_41_524"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_165"* %0) !dbg !104 {
entry:
  %"$$fundef_38_env_list_foldl_432" = getelementptr inbounds %"$$fundef_38_env_165", %"$$fundef_38_env_165"* %0, i32 0, i32 0
  %"$list_foldl_envload_433" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_38_env_list_foldl_432", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_433", { i8*, i8* }** %list_foldl, align 8
  %"$retval_39" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %entry
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_437"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  %"$list_foldl_444" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_445" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_444", i32 0
  %"$list_foldl_446" = bitcast { i8*, i8* }* %"$list_foldl_445" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_447" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_446", align 8
  %"$list_foldl_fptr_448" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_447", 0
  %"$list_foldl_envptr_449" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_447", 1
  %"$list_foldl_call_450" = call { i8*, i8* }* %"$list_foldl_fptr_448"(i8* %"$list_foldl_envptr_449"), !dbg !105
  %"$list_foldl_451" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_450", i32 1
  %"$list_foldl_452" = bitcast { i8*, i8* }* %"$list_foldl_451" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_453" = load { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_452", align 8
  %"$list_foldl_fptr_454" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_453", 0
  %"$list_foldl_envptr_455" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_453", 1
  %"$list_foldl_call_456" = call { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_454"(i8* %"$list_foldl_envptr_455"), !dbg !105
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_456", { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8, !dbg !106
  %"$gasrem_457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_458" = icmp ugt i64 1, %"$gasrem_457"
  br i1 %"$gascmp_458", label %"$out_of_gas_459", label %"$have_gas_460"

"$out_of_gas_459":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_460"

"$have_gas_460":                                  ; preds = %"$out_of_gas_459", %"$have_gas_442"
  %"$consume_461" = sub i64 %"$gasrem_457", 1
  store i64 %"$consume_461", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %one, metadata !107, metadata !DIExpression()), !dbg !108
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 1, %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %"$have_gas_460"
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %"$have_gas_460"
  %"$consume_466" = sub i64 %"$gasrem_462", 1
  store i64 %"$consume_466", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !109
  %"$gasrem_467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_468" = icmp ugt i64 1, %"$gasrem_467"
  br i1 %"$gascmp_468", label %"$out_of_gas_469", label %"$have_gas_470"

"$out_of_gas_469":                                ; preds = %"$have_gas_465"
  call void @_out_of_gas()
  br label %"$have_gas_470"

"$have_gas_470":                                  ; preds = %"$out_of_gas_469", %"$have_gas_465"
  %"$consume_471" = sub i64 %"$gasrem_467", 1
  store i64 %"$consume_471", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$have_gas_470"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$have_gas_470"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem, align 8
  %"$$fundef_40_envp_477_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_40_envp_477_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_477_load", i64 4)
  %"$$fundef_40_envp_477" = bitcast i8* %"$$fundef_40_envp_477_salloc" to %"$$fundef_40_env_164"*
  %"$$fundef_40_env_voidp_479" = bitcast %"$$fundef_40_env_164"* %"$$fundef_40_envp_477" to i8*
  %"$$fundef_40_cloval_480" = insertvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int32)*, i8* } (%"$$fundef_40_env_164"*, %Uint32)* @"$fundef_40" to { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_40_env_voidp_479", 1
  %"$$fundef_40_env_one_481" = getelementptr inbounds %"$$fundef_40_env_164", %"$$fundef_40_env_164"* %"$$fundef_40_envp_477", i32 0, i32 0
  %"$one_482" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_482", %Uint32* %"$$fundef_40_env_one_481", align 4
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_40_cloval_480", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8, !dbg !110
  %"$gasrem_483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_484" = icmp ugt i64 1, %"$gasrem_483"
  br i1 %"$gascmp_484", label %"$out_of_gas_485", label %"$have_gas_486"

"$out_of_gas_485":                                ; preds = %"$have_gas_475"
  call void @_out_of_gas()
  br label %"$have_gas_486"

"$have_gas_486":                                  ; preds = %"$out_of_gas_485", %"$have_gas_475"
  %"$consume_487" = sub i64 %"$gasrem_483", 1
  store i64 %"$consume_487", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %init, metadata !111, metadata !DIExpression()), !dbg !112
  %"$gasrem_488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_489" = icmp ugt i64 1, %"$gasrem_488"
  br i1 %"$gascmp_489", label %"$out_of_gas_490", label %"$have_gas_491"

"$out_of_gas_490":                                ; preds = %"$have_gas_486"
  call void @_out_of_gas()
  br label %"$have_gas_491"

"$have_gas_491":                                  ; preds = %"$out_of_gas_490", %"$have_gas_486"
  %"$consume_492" = sub i64 %"$gasrem_488", 1
  store i64 %"$consume_492", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4, !dbg !113
  %"$gasrem_493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_494" = icmp ugt i64 1, %"$gasrem_493"
  br i1 %"$gascmp_494", label %"$out_of_gas_495", label %"$have_gas_496"

"$out_of_gas_495":                                ; preds = %"$have_gas_491"
  call void @_out_of_gas()
  br label %"$have_gas_496"

"$have_gas_496":                                  ; preds = %"$out_of_gas_495", %"$have_gas_491"
  %"$consume_497" = sub i64 %"$gasrem_493", 1
  store i64 %"$consume_497", i64* @_gasrem, align 8
  %"$foldl_10" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_498" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_499" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_498", 0
  %"$foldl_envptr_500" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_498", 1
  %"$iter_501" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_502" = call { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_499"(i8* %"$foldl_envptr_500", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_501"), !dbg !114
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_502", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8, !dbg !114
  %"$foldl_11" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$$foldl_10_503" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$$foldl_10_fptr_504" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_503", 0
  %"$$foldl_10_envptr_505" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_503", 1
  %"$init_506" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_10_call_507" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_10_fptr_504"(i8* %"$$foldl_10_envptr_505", %Uint32 %"$init_506"), !dbg !114
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_10_call_507", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_11", align 8, !dbg !114
  %"$$foldl_11_508" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_11", align 8
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_11_508", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_39", align 8, !dbg !114
  %"$$retval_39_509" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_39", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_39_509"
}

define internal %Uint32 @"$fundef_36"(%"$$fundef_36_env_166"* %0, %TName_List_Int64* %1) !dbg !115 {
entry:
  %"$l_431" = alloca %TName_List_Int64*, align 8
  store %TName_List_Int64* %1, %TName_List_Int64** %"$l_431", align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int64** %"$l_431", metadata !117, metadata !DIExpression()), !dbg !118
  %"$$fundef_36_env_f_364" = getelementptr inbounds %"$$fundef_36_env_166", %"$$fundef_36_env_166"* %0, i32 0, i32 0
  %"$f_envload_365" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_36_env_f_364", align 8
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_365", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_36_env_g_366" = getelementptr inbounds %"$$fundef_36_env_166", %"$$fundef_36_env_166"* %0, i32 0, i32 1
  %"$g_envload_367" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_36_env_g_366", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_367", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_36_env_z_368" = getelementptr inbounds %"$$fundef_36_env_166", %"$$fundef_36_env_166"* %0, i32 0, i32 2
  %"$z_envload_369" = load %Uint32, %Uint32* %"$$fundef_36_env_z_368", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_369", %Uint32* %z, align 4
  %"$retval_37" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_37", metadata !119, metadata !DIExpression()), !dbg !120
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 2, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %entry
  %"$consume_374" = sub i64 %"$gasrem_370", 2
  store i64 %"$consume_374", i64* @_gasrem, align 8
  %"$l_tag_376" = getelementptr inbounds %TName_List_Int64, %TName_List_Int64* %1, i32 0, i32 0
  %"$l_tag_377" = load i8, i8* %"$l_tag_376", align 1
  switch i8 %"$l_tag_377", label %"$empty_default_378" [
    i8 0, label %"$Cons_379"
    i8 1, label %"$Nil_422"
  ], !dbg !120

"$Cons_379":                                      ; preds = %"$have_gas_373"
  %"$l_380" = bitcast %TName_List_Int64* %1 to %CName_Cons_Int64*
  %"$h_gep_381" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_380", i32 0, i32 1
  %"$h_load_382" = load %Int64, %Int64* %"$h_gep_381", align 8
  %h = alloca %Int64, align 8
  store %Int64 %"$h_load_382", %Int64* %h, align 8
  %"$t_gep_383" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_380", i32 0, i32 2
  %"$t_load_384" = load %TName_List_Int64*, %TName_List_Int64** %"$t_gep_383", align 8
  %t = alloca %TName_List_Int64*, align 8
  store %TName_List_Int64* %"$t_load_384", %TName_List_Int64** %t, align 8
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 1, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$Cons_379"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$Cons_379"
  %"$consume_389" = sub i64 %"$gasrem_385", 1
  store i64 %"$consume_389", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %res, metadata !121, metadata !DIExpression()), !dbg !124
  %"$gasrem_390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_391" = icmp ugt i64 1, %"$gasrem_390"
  br i1 %"$gascmp_391", label %"$out_of_gas_392", label %"$have_gas_393"

"$out_of_gas_392":                                ; preds = %"$have_gas_388"
  call void @_out_of_gas()
  br label %"$have_gas_393"

"$have_gas_393":                                  ; preds = %"$out_of_gas_392", %"$have_gas_388"
  %"$consume_394" = sub i64 %"$gasrem_390", 1
  store i64 %"$consume_394", i64* @_gasrem, align 8
  %"$f_6" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$f_395" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_396" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_395", 0
  %"$f_envptr_397" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_395", 1
  %"$z_398" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_399" = call { %Uint32 (i8*, %Int64)*, i8* } %"$f_fptr_396"(i8* %"$f_envptr_397", %Uint32 %"$z_398"), !dbg !125
  store { %Uint32 (i8*, %Int64)*, i8* } %"$f_call_399", { %Uint32 (i8*, %Int64)*, i8* }* %"$f_6", align 8, !dbg !125
  %"$f_7" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$f_7", metadata !126, metadata !DIExpression()), !dbg !125
  %"$$f_6_400" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$f_6", align 8
  %"$$f_6_fptr_401" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_6_400", 0
  %"$$f_6_envptr_402" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_6_400", 1
  %"$h_403" = load %Int64, %Int64* %h, align 8
  %"$$f_6_call_404" = call %Uint32 %"$$f_6_fptr_401"(i8* %"$$f_6_envptr_402", %Int64 %"$h_403"), !dbg !125
  store %Uint32 %"$$f_6_call_404", %Uint32* %"$f_7", align 4, !dbg !125
  %"$$f_7_405" = load %Uint32, %Uint32* %"$f_7", align 4
  store %Uint32 %"$$f_7_405", %Uint32* %res, align 4, !dbg !125
  %"$gasrem_406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_407" = icmp ugt i64 1, %"$gasrem_406"
  br i1 %"$gascmp_407", label %"$out_of_gas_408", label %"$have_gas_409"

"$out_of_gas_408":                                ; preds = %"$have_gas_393"
  call void @_out_of_gas()
  br label %"$have_gas_409"

"$have_gas_409":                                  ; preds = %"$out_of_gas_408", %"$have_gas_393"
  %"$consume_410" = sub i64 %"$gasrem_406", 1
  store i64 %"$consume_410", i64* @_gasrem, align 8
  %"$g_8" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$g_411" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_412" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_411", 0
  %"$g_envptr_413" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_411", 1
  %"$res_414" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_415" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_fptr_412"(i8* %"$g_envptr_413", %Uint32 %"$res_414"), !dbg !127
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_call_415", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_8", align 8, !dbg !127
  %"$g_9" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$g_9", metadata !128, metadata !DIExpression()), !dbg !127
  %"$$g_8_416" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_8", align 8
  %"$$g_8_fptr_417" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_8_416", 0
  %"$$g_8_envptr_418" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_8_416", 1
  %"$t_419" = load %TName_List_Int64*, %TName_List_Int64** %t, align 8
  %"$$g_8_call_420" = call %Uint32 %"$$g_8_fptr_417"(i8* %"$$g_8_envptr_418", %TName_List_Int64* %"$t_419"), !dbg !127
  store %Uint32 %"$$g_8_call_420", %Uint32* %"$g_9", align 4, !dbg !127
  %"$$g_9_421" = load %Uint32, %Uint32* %"$g_9", align 4
  store %Uint32 %"$$g_9_421", %Uint32* %"$retval_37", align 4, !dbg !127
  br label %"$matchsucc_375"

"$Nil_422":                                       ; preds = %"$have_gas_373"
  %"$l_423" = bitcast %TName_List_Int64* %1 to %CName_Nil_Int64*
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 1, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$Nil_422"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$Nil_422"
  %"$consume_428" = sub i64 %"$gasrem_424", 1
  store i64 %"$consume_428", i64* @_gasrem, align 8
  %"$z_429" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_429", %Uint32* %"$retval_37", align 4, !dbg !129
  br label %"$matchsucc_375"

"$empty_default_378":                             ; preds = %"$have_gas_373"
  br label %"$matchsucc_375"

"$matchsucc_375":                                 ; preds = %"$have_gas_427", %"$have_gas_409", %"$empty_default_378"
  %"$$retval_37_430" = load %Uint32, %Uint32* %"$retval_37", align 4
  ret %Uint32 %"$$retval_37_430"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_34"(%"$$fundef_34_env_167"* %0, %Uint32 %1) !dbg !131 {
entry:
  %"$z_363" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$z_363", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$z_363", metadata !132, metadata !DIExpression()), !dbg !133
  %"$$fundef_34_env_f_339" = getelementptr inbounds %"$$fundef_34_env_167", %"$$fundef_34_env_167"* %0, i32 0, i32 0
  %"$f_envload_340" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_f_339", align 8
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_340", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_34_env_g_341" = getelementptr inbounds %"$$fundef_34_env_167", %"$$fundef_34_env_167"* %0, i32 0, i32 1
  %"$g_envload_342" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_g_341", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_342", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_35" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_344" = icmp ugt i64 1, %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %entry
  %"$consume_347" = sub i64 %"$gasrem_343", 1
  store i64 %"$consume_347", i64* @_gasrem, align 8
  %"$gasrem_348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_349" = icmp ugt i64 1, %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %"$have_gas_346"
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %"$have_gas_346"
  %"$consume_352" = sub i64 %"$gasrem_348", 1
  store i64 %"$consume_352", i64* @_gasrem, align 8
  %"$$fundef_36_envp_353_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_36_envp_353_salloc" = call i8* @_salloc(i8* %"$$fundef_36_envp_353_load", i64 40)
  %"$$fundef_36_envp_353" = bitcast i8* %"$$fundef_36_envp_353_salloc" to %"$$fundef_36_env_166"*
  %"$$fundef_36_env_voidp_355" = bitcast %"$$fundef_36_env_166"* %"$$fundef_36_envp_353" to i8*
  %"$$fundef_36_cloval_356" = insertvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } { %Uint32 (i8*, %TName_List_Int64*)* bitcast (%Uint32 (%"$$fundef_36_env_166"*, %TName_List_Int64*)* @"$fundef_36" to %Uint32 (i8*, %TName_List_Int64*)*), i8* undef }, i8* %"$$fundef_36_env_voidp_355", 1
  %"$$fundef_36_env_f_357" = getelementptr inbounds %"$$fundef_36_env_166", %"$$fundef_36_env_166"* %"$$fundef_36_envp_353", i32 0, i32 0
  %"$f_358" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_358", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_36_env_f_357", align 8
  %"$$fundef_36_env_g_359" = getelementptr inbounds %"$$fundef_36_env_166", %"$$fundef_36_env_166"* %"$$fundef_36_envp_353", i32 0, i32 1
  %"$g_360" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_360", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_36_env_g_359", align 8
  %"$$fundef_36_env_z_361" = getelementptr inbounds %"$$fundef_36_env_166", %"$$fundef_36_env_166"* %"$$fundef_36_envp_353", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_36_env_z_361", align 4
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$fundef_36_cloval_356", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_35", align 8, !dbg !134
  %"$$retval_35_362" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_35", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_35_362"
}

define internal { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_32"(%"$$fundef_32_env_168"* %0, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !135 {
entry:
  %"$retval_33" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %entry
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %"$$fundef_34_envp_330_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_34_envp_330_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_330_load", i64 32)
  %"$$fundef_34_envp_330" = bitcast i8* %"$$fundef_34_envp_330_salloc" to %"$$fundef_34_env_167"*
  %"$$fundef_34_env_voidp_332" = bitcast %"$$fundef_34_env_167"* %"$$fundef_34_envp_330" to i8*
  %"$$fundef_34_cloval_333" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_34_env_167"*, %Uint32)* @"$fundef_34" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_34_env_voidp_332", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_34_cloval_333", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !136
  %"$$fundef_34_env_f_334" = getelementptr inbounds %"$$fundef_34_env_167", %"$$fundef_34_env_167"* %"$$fundef_34_envp_330", i32 0, i32 0
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_f_334", align 8
  %"$$fundef_34_env_g_335" = getelementptr inbounds %"$$fundef_34_env_167", %"$$fundef_34_env_167"* %"$$fundef_34_envp_330", i32 0, i32 1
  %"$g_336" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_336", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_g_335", align 8
  %"$g_337" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_337", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_33", align 8, !dbg !136
  %"$$retval_33_338" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_33", align 8
  ret { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_33_338"
}

define internal { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_30"(%"$$fundef_30_env_169"* %0) !dbg !137 {
entry:
  %"$retval_31" = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_317" = icmp ugt i64 1, %"$gasrem_316"
  br i1 %"$gascmp_317", label %"$out_of_gas_318", label %"$have_gas_319"

"$out_of_gas_318":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_319"

"$have_gas_319":                                  ; preds = %"$out_of_gas_318", %entry
  %"$consume_320" = sub i64 %"$gasrem_316", 1
  store i64 %"$consume_320", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_32_env_168"*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_32" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_31", align 8, !dbg !138
  %"$$retval_31_324" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_31", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_31_324"
}

define internal { i8*, i8* }* @"$fundef_28"(%"$$fundef_28_env_170"* %0) !dbg !139 {
entry:
  %"$retval_29" = alloca { i8*, i8* }*, align 8
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %entry
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %"$dyndisp_table_312_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_312_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_312_salloc_load", i64 48)
  %"$dyndisp_table_312_salloc" = bitcast i8* %"$dyndisp_table_312_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_312" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_312_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_313" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_312", i32 1
  %"$dyndisp_pcast_314" = bitcast { i8*, i8* }* %"$dyndisp_gep_313" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_30_env_169"*)* @"$fundef_30" to { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_314", align 8
  store { i8*, i8* }* %"$dyndisp_table_312", { i8*, i8* }** %"$retval_29", align 8, !dbg !140
  %"$$retval_29_315" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_29", align 8
  ret { i8*, i8* }* %"$$retval_29_315"
}

define internal %Uint32 @"$fundef_26"(%"$$fundef_26_env_171"* %0, %TName_List_Int32* %1) !dbg !141 {
entry:
  %"$l_303" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %1, %TName_List_Int32** %"$l_303", align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %"$l_303", metadata !142, metadata !DIExpression()), !dbg !143
  %"$$fundef_26_env_f_236" = getelementptr inbounds %"$$fundef_26_env_171", %"$$fundef_26_env_171"* %0, i32 0, i32 0
  %"$f_envload_237" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_f_236", align 8
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_237", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_26_env_g_238" = getelementptr inbounds %"$$fundef_26_env_171", %"$$fundef_26_env_171"* %0, i32 0, i32 1
  %"$g_envload_239" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_g_238", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_239", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_26_env_z_240" = getelementptr inbounds %"$$fundef_26_env_171", %"$$fundef_26_env_171"* %0, i32 0, i32 2
  %"$z_envload_241" = load %Uint32, %Uint32* %"$$fundef_26_env_z_240", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_241", %Uint32* %z, align 4
  %"$retval_27" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_27", metadata !144, metadata !DIExpression()), !dbg !145
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 2, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %entry
  %"$consume_246" = sub i64 %"$gasrem_242", 2
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %"$l_tag_248" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %1, i32 0, i32 0
  %"$l_tag_249" = load i8, i8* %"$l_tag_248", align 1
  switch i8 %"$l_tag_249", label %"$empty_default_250" [
    i8 0, label %"$Cons_251"
    i8 1, label %"$Nil_294"
  ], !dbg !145

"$Cons_251":                                      ; preds = %"$have_gas_245"
  %"$l_252" = bitcast %TName_List_Int32* %1 to %CName_Cons_Int32*
  %"$h_gep_253" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_252", i32 0, i32 1
  %"$h_load_254" = load %Int32, %Int32* %"$h_gep_253", align 4
  %h = alloca %Int32, align 8
  store %Int32 %"$h_load_254", %Int32* %h, align 4
  %"$t_gep_255" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_252", i32 0, i32 2
  %"$t_load_256" = load %TName_List_Int32*, %TName_List_Int32** %"$t_gep_255", align 8
  %t = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$t_load_256", %TName_List_Int32** %t, align 8
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 1, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$Cons_251"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$Cons_251"
  %"$consume_261" = sub i64 %"$gasrem_257", 1
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %res, metadata !146, metadata !DIExpression()), !dbg !149
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$have_gas_260"
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %"$f_6" = alloca { %Uint32 (i8*, %Int32)*, i8* }, align 8
  %"$f_267" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_268" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_267", 0
  %"$f_envptr_269" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_267", 1
  %"$z_270" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_271" = call { %Uint32 (i8*, %Int32)*, i8* } %"$f_fptr_268"(i8* %"$f_envptr_269", %Uint32 %"$z_270"), !dbg !150
  store { %Uint32 (i8*, %Int32)*, i8* } %"$f_call_271", { %Uint32 (i8*, %Int32)*, i8* }* %"$f_6", align 8, !dbg !150
  %"$f_7" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$f_7", metadata !151, metadata !DIExpression()), !dbg !150
  %"$$f_6_272" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$f_6", align 8
  %"$$f_6_fptr_273" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_6_272", 0
  %"$$f_6_envptr_274" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_6_272", 1
  %"$h_275" = load %Int32, %Int32* %h, align 4
  %"$$f_6_call_276" = call %Uint32 %"$$f_6_fptr_273"(i8* %"$$f_6_envptr_274", %Int32 %"$h_275"), !dbg !150
  store %Uint32 %"$$f_6_call_276", %Uint32* %"$f_7", align 4, !dbg !150
  %"$$f_7_277" = load %Uint32, %Uint32* %"$f_7", align 4
  store %Uint32 %"$$f_7_277", %Uint32* %res, align 4, !dbg !150
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 1, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$have_gas_265"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$have_gas_265"
  %"$consume_282" = sub i64 %"$gasrem_278", 1
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %"$g_8" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$g_283" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_284" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_283", 0
  %"$g_envptr_285" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_283", 1
  %"$res_286" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_287" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_fptr_284"(i8* %"$g_envptr_285", %Uint32 %"$res_286"), !dbg !152
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_call_287", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_8", align 8, !dbg !152
  %"$g_9" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$g_9", metadata !153, metadata !DIExpression()), !dbg !152
  %"$$g_8_288" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_8", align 8
  %"$$g_8_fptr_289" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_8_288", 0
  %"$$g_8_envptr_290" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_8_288", 1
  %"$t_291" = load %TName_List_Int32*, %TName_List_Int32** %t, align 8
  %"$$g_8_call_292" = call %Uint32 %"$$g_8_fptr_289"(i8* %"$$g_8_envptr_290", %TName_List_Int32* %"$t_291"), !dbg !152
  store %Uint32 %"$$g_8_call_292", %Uint32* %"$g_9", align 4, !dbg !152
  %"$$g_9_293" = load %Uint32, %Uint32* %"$g_9", align 4
  store %Uint32 %"$$g_9_293", %Uint32* %"$retval_27", align 4, !dbg !152
  br label %"$matchsucc_247"

"$Nil_294":                                       ; preds = %"$have_gas_245"
  %"$l_295" = bitcast %TName_List_Int32* %1 to %CName_Nil_Int32*
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 1, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$Nil_294"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$Nil_294"
  %"$consume_300" = sub i64 %"$gasrem_296", 1
  store i64 %"$consume_300", i64* @_gasrem, align 8
  %"$z_301" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_301", %Uint32* %"$retval_27", align 4, !dbg !154
  br label %"$matchsucc_247"

"$empty_default_250":                             ; preds = %"$have_gas_245"
  br label %"$matchsucc_247"

"$matchsucc_247":                                 ; preds = %"$have_gas_299", %"$have_gas_281", %"$empty_default_250"
  %"$$retval_27_302" = load %Uint32, %Uint32* %"$retval_27", align 4
  ret %Uint32 %"$$retval_27_302"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_24"(%"$$fundef_24_env_172"* %0, %Uint32 %1) !dbg !156 {
entry:
  %"$z_235" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$z_235", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$z_235", metadata !157, metadata !DIExpression()), !dbg !158
  %"$$fundef_24_env_f_211" = getelementptr inbounds %"$$fundef_24_env_172", %"$$fundef_24_env_172"* %0, i32 0, i32 0
  %"$f_envload_212" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_f_211", align 8
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_212", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_24_env_g_213" = getelementptr inbounds %"$$fundef_24_env_172", %"$$fundef_24_env_172"* %0, i32 0, i32 1
  %"$g_envload_214" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_g_213", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_214", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_25" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 1, %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %entry
  %"$consume_219" = sub i64 %"$gasrem_215", 1
  store i64 %"$consume_219", i64* @_gasrem, align 8
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 1, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_218"
  %"$consume_224" = sub i64 %"$gasrem_220", 1
  store i64 %"$consume_224", i64* @_gasrem, align 8
  %"$$fundef_26_envp_225_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_26_envp_225_salloc" = call i8* @_salloc(i8* %"$$fundef_26_envp_225_load", i64 40)
  %"$$fundef_26_envp_225" = bitcast i8* %"$$fundef_26_envp_225_salloc" to %"$$fundef_26_env_171"*
  %"$$fundef_26_env_voidp_227" = bitcast %"$$fundef_26_env_171"* %"$$fundef_26_envp_225" to i8*
  %"$$fundef_26_cloval_228" = insertvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } { %Uint32 (i8*, %TName_List_Int32*)* bitcast (%Uint32 (%"$$fundef_26_env_171"*, %TName_List_Int32*)* @"$fundef_26" to %Uint32 (i8*, %TName_List_Int32*)*), i8* undef }, i8* %"$$fundef_26_env_voidp_227", 1
  %"$$fundef_26_env_f_229" = getelementptr inbounds %"$$fundef_26_env_171", %"$$fundef_26_env_171"* %"$$fundef_26_envp_225", i32 0, i32 0
  %"$f_230" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_230", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_f_229", align 8
  %"$$fundef_26_env_g_231" = getelementptr inbounds %"$$fundef_26_env_171", %"$$fundef_26_env_171"* %"$$fundef_26_envp_225", i32 0, i32 1
  %"$g_232" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_232", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_g_231", align 8
  %"$$fundef_26_env_z_233" = getelementptr inbounds %"$$fundef_26_env_171", %"$$fundef_26_env_171"* %"$$fundef_26_envp_225", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_26_env_z_233", align 4
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$fundef_26_cloval_228", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_25", align 8, !dbg !159
  %"$$retval_25_234" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_25", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_25_234"
}

define internal { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_22"(%"$$fundef_22_env_173"* %0, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !160 {
entry:
  %"$retval_23" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %entry
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %"$$fundef_24_envp_202_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_24_envp_202_salloc" = call i8* @_salloc(i8* %"$$fundef_24_envp_202_load", i64 32)
  %"$$fundef_24_envp_202" = bitcast i8* %"$$fundef_24_envp_202_salloc" to %"$$fundef_24_env_172"*
  %"$$fundef_24_env_voidp_204" = bitcast %"$$fundef_24_env_172"* %"$$fundef_24_envp_202" to i8*
  %"$$fundef_24_cloval_205" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_24_env_172"*, %Uint32)* @"$fundef_24" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_24_env_voidp_204", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_24_cloval_205", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !161
  %"$$fundef_24_env_f_206" = getelementptr inbounds %"$$fundef_24_env_172", %"$$fundef_24_env_172"* %"$$fundef_24_envp_202", i32 0, i32 0
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_f_206", align 8
  %"$$fundef_24_env_g_207" = getelementptr inbounds %"$$fundef_24_env_172", %"$$fundef_24_env_172"* %"$$fundef_24_envp_202", i32 0, i32 1
  %"$g_208" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_208", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_g_207", align 8
  %"$g_209" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_209", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_23", align 8, !dbg !161
  %"$$retval_23_210" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_23", align 8
  ret { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_23_210"
}

define internal { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_20"(%"$$fundef_20_env_174"* %0) !dbg !162 {
entry:
  %"$retval_21" = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 1, %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %entry
  %"$consume_192" = sub i64 %"$gasrem_188", 1
  store i64 %"$consume_192", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_22_env_173"*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_22" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_21", align 8, !dbg !163
  %"$$retval_21_196" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_21", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_21_196"
}

define internal { i8*, i8* }* @"$fundef_18"(%"$$fundef_18_env_175"* %0) !dbg !164 {
entry:
  %"$retval_19" = alloca { i8*, i8* }*, align 8
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %entry
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %"$dyndisp_table_184_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_184_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_184_salloc_load", i64 48)
  %"$dyndisp_table_184_salloc" = bitcast i8* %"$dyndisp_table_184_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_184" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_184_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_185" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_184", i32 1
  %"$dyndisp_pcast_186" = bitcast { i8*, i8* }* %"$dyndisp_gep_185" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_20_env_174"*)* @"$fundef_20" to { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_186", align 8
  store { i8*, i8* }* %"$dyndisp_table_184", { i8*, i8* }** %"$retval_19", align 8, !dbg !165
  %"$$retval_19_187" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_19", align 8
  ret { i8*, i8* }* %"$$retval_19_187"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() !dbg !166 {
entry:
  %"$gasrem_862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_863" = icmp ugt i64 5, %"$gasrem_862"
  br i1 %"$gascmp_863", label %"$out_of_gas_864", label %"$have_gas_865"

"$out_of_gas_864":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_865"

"$have_gas_865":                                  ; preds = %"$out_of_gas_864", %entry
  %"$consume_866" = sub i64 %"$gasrem_862", 5
  store i64 %"$consume_866", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !168
  %"$gasrem_867" = load i64, i64* @_gasrem, align 8
  %"$gascmp_868" = icmp ugt i64 8, %"$gasrem_867"
  br i1 %"$gascmp_868", label %"$out_of_gas_869", label %"$have_gas_870"

"$out_of_gas_869":                                ; preds = %"$have_gas_865"
  call void @_out_of_gas()
  br label %"$have_gas_870"

"$have_gas_870":                                  ; preds = %"$out_of_gas_869", %"$have_gas_865"
  %"$consume_871" = sub i64 %"$gasrem_867", 8
  store i64 %"$consume_871", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !168
  %"$gasrem_872" = load i64, i64* @_gasrem, align 8
  %"$gascmp_873" = icmp ugt i64 196, %"$gasrem_872"
  br i1 %"$gascmp_873", label %"$out_of_gas_874", label %"$have_gas_875"

"$out_of_gas_874":                                ; preds = %"$have_gas_870"
  call void @_out_of_gas()
  br label %"$have_gas_875"

"$have_gas_875":                                  ; preds = %"$out_of_gas_874", %"$have_gas_870"
  %"$consume_876" = sub i64 %"$gasrem_872", 196
  store i64 %"$consume_876", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !168
  %"$gasrem_877" = load i64, i64* @_gasrem, align 8
  %"$gascmp_878" = icmp ugt i64 19, %"$gasrem_877"
  br i1 %"$gascmp_878", label %"$out_of_gas_879", label %"$have_gas_880"

"$out_of_gas_879":                                ; preds = %"$have_gas_875"
  call void @_out_of_gas()
  br label %"$have_gas_880"

"$have_gas_880":                                  ; preds = %"$out_of_gas_879", %"$have_gas_875"
  %"$consume_881" = sub i64 %"$gasrem_877", 19
  store i64 %"$consume_881", i64* @_gasrem, align 8
  store %Int32 { i32 19 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !168
  %"$gasrem_882" = load i64, i64* @_gasrem, align 8
  %"$gascmp_883" = icmp ugt i64 1, %"$gasrem_882"
  br i1 %"$gascmp_883", label %"$out_of_gas_884", label %"$have_gas_885"

"$out_of_gas_884":                                ; preds = %"$have_gas_880"
  call void @_out_of_gas()
  br label %"$have_gas_885"

"$have_gas_885":                                  ; preds = %"$out_of_gas_884", %"$have_gas_880"
  %"$consume_886" = sub i64 %"$gasrem_882", 1
  store i64 %"$consume_886", i64* @_gasrem, align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  %"$dyndisp_table_893_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_893_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_893_salloc_load", i64 48)
  %"$dyndisp_table_893_salloc" = bitcast i8* %"$dyndisp_table_893_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_893" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_893_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_894" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_893", i32 0
  %"$dyndisp_pcast_895" = bitcast { i8*, i8* }* %"$dyndisp_gep_894" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_18_env_175"*)* @"$fundef_18" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_895", align 8
  %"$dyndisp_gep_896" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_893", i32 2
  %"$dyndisp_pcast_897" = bitcast { i8*, i8* }* %"$dyndisp_gep_896" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_28_env_170"*)* @"$fundef_28" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_897", align 8
  store { i8*, i8* }* %"$dyndisp_table_893", { i8*, i8* }** %list_foldl, align 8, !dbg !169
  %"$$fundef_38_envp_898_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_38_envp_898_salloc" = call i8* @_salloc(i8* %"$$fundef_38_envp_898_load", i64 8)
  %"$$fundef_38_envp_898" = bitcast i8* %"$$fundef_38_envp_898_salloc" to %"$$fundef_38_env_165"*
  %"$$fundef_38_env_voidp_900" = bitcast %"$$fundef_38_env_165"* %"$$fundef_38_envp_898" to i8*
  %"$$fundef_38_cloval_901" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_38_env_165"*)* @"$fundef_38" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_38_env_voidp_900", 1
  %"$$fundef_38_env_list_foldl_902" = getelementptr inbounds %"$$fundef_38_env_165", %"$$fundef_38_env_165"* %"$$fundef_38_envp_898", i32 0, i32 0
  %"$list_foldl_903" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  store { i8*, i8* }* %"$list_foldl_903", { i8*, i8* }** %"$$fundef_38_env_list_foldl_902", align 8
  %"$$fundef_44_env_voidp_905" = bitcast %"$$fundef_38_env_165"* %"$$fundef_38_envp_898" to i8*
  %"$$fundef_44_cloval_906" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_44_env_162"*)* @"$fundef_44" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_44_env_voidp_905", 1
  %"$dyndisp_table_907_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_907_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_907_salloc_load", i64 48)
  %"$dyndisp_table_907_salloc" = bitcast i8* %"$dyndisp_table_907_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_907" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_907_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_908" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_907", i32 0
  %"$dyndisp_pcast_909" = bitcast { i8*, i8* }* %"$dyndisp_gep_908" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$$fundef_38_cloval_901", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_909", align 8
  %"$dyndisp_gep_910" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_907", i32 2
  %"$dyndisp_pcast_911" = bitcast { i8*, i8* }* %"$dyndisp_gep_910" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$$fundef_44_cloval_906", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_911", align 8
  store { i8*, i8* }* %"$dyndisp_table_907", { i8*, i8* }** @ListUtils.list_length, align 8, !dbg !170
  %"$gasrem_912" = load i64, i64* @_gasrem, align 8
  %"$gascmp_913" = icmp ugt i64 12, %"$gasrem_912"
  br i1 %"$gascmp_913", label %"$out_of_gas_914", label %"$have_gas_915"

"$out_of_gas_914":                                ; preds = %"$have_gas_885"
  call void @_out_of_gas()
  br label %"$have_gas_915"

"$have_gas_915":                                  ; preds = %"$out_of_gas_914", %"$have_gas_885"
  %"$consume_916" = sub i64 %"$gasrem_912", 12
  store i64 %"$consume_916", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !168
  %"$gasrem_917" = load i64, i64* @_gasrem, align 8
  %"$gascmp_918" = icmp ugt i64 2, %"$gasrem_917"
  br i1 %"$gascmp_918", label %"$out_of_gas_919", label %"$have_gas_920"

"$out_of_gas_919":                                ; preds = %"$have_gas_915"
  call void @_out_of_gas()
  br label %"$have_gas_920"

"$have_gas_920":                                  ; preds = %"$out_of_gas_919", %"$have_gas_915"
  %"$consume_921" = sub i64 %"$gasrem_917", 2
  store i64 %"$consume_921", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !168
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !171 {
entry:
  %"$expr_50" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$expr_50", metadata !172, metadata !DIExpression()), !dbg !173
  %"$gasrem_922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_923" = icmp ugt i64 1, %"$gasrem_922"
  br i1 %"$gascmp_923", label %"$out_of_gas_924", label %"$have_gas_925"

"$out_of_gas_924":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_925"

"$have_gas_925":                                  ; preds = %"$out_of_gas_924", %entry
  %"$consume_926" = sub i64 %"$gasrem_922", 1
  store i64 %"$consume_926", i64* @_gasrem, align 8
  %t1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_927" = load i64, i64* @_gasrem, align 8
  %"$gascmp_928" = icmp ugt i64 1, %"$gasrem_927"
  br i1 %"$gascmp_928", label %"$out_of_gas_929", label %"$have_gas_930"

"$out_of_gas_929":                                ; preds = %"$have_gas_925"
  call void @_out_of_gas()
  br label %"$have_gas_930"

"$have_gas_930":                                  ; preds = %"$out_of_gas_929", %"$have_gas_925"
  %"$consume_931" = sub i64 %"$gasrem_927", 1
  store i64 %"$consume_931", i64* @_gasrem, align 8
  %"$dyndisp_table_938_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_938_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_938_salloc_load", i64 48)
  %"$dyndisp_table_938_salloc" = bitcast i8* %"$dyndisp_table_938_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_938" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_938_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_939" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_938", i32 0
  %"$dyndisp_pcast_940" = bitcast { i8*, i8* }* %"$dyndisp_gep_939" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_51_env_159"*)* @"$fundef_51" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_940", align 8
  %"$dyndisp_gep_941" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_938", i32 2
  %"$dyndisp_pcast_942" = bitcast { i8*, i8* }* %"$dyndisp_gep_941" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_55_env_157"*)* @"$fundef_55" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_942", align 8
  store { i8*, i8* }* %"$dyndisp_table_938", { i8*, i8* }** %t1, align 8, !dbg !173
  %"$gasrem_943" = load i64, i64* @_gasrem, align 8
  %"$gascmp_944" = icmp ugt i64 1, %"$gasrem_943"
  br i1 %"$gascmp_944", label %"$out_of_gas_945", label %"$have_gas_946"

"$out_of_gas_945":                                ; preds = %"$have_gas_930"
  call void @_out_of_gas()
  br label %"$have_gas_946"

"$have_gas_946":                                  ; preds = %"$out_of_gas_945", %"$have_gas_930"
  %"$consume_947" = sub i64 %"$gasrem_943", 1
  store i64 %"$consume_947", i64* @_gasrem, align 8
  %t2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_948" = load i64, i64* @_gasrem, align 8
  %"$gascmp_949" = icmp ugt i64 1, %"$gasrem_948"
  br i1 %"$gascmp_949", label %"$out_of_gas_950", label %"$have_gas_951"

"$out_of_gas_950":                                ; preds = %"$have_gas_946"
  call void @_out_of_gas()
  br label %"$have_gas_951"

"$have_gas_951":                                  ; preds = %"$out_of_gas_950", %"$have_gas_946"
  %"$consume_952" = sub i64 %"$gasrem_948", 1
  store i64 %"$consume_952", i64* @_gasrem, align 8
  %"$dyndisp_table_959_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_959_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_959_salloc_load", i64 48)
  %"$dyndisp_table_959_salloc" = bitcast i8* %"$dyndisp_table_959_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_959" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_959_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_960" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_959", i32 0
  %"$dyndisp_pcast_961" = bitcast { i8*, i8* }* %"$dyndisp_gep_960" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_59_env_155"*)* @"$fundef_59" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_961", align 8
  %"$dyndisp_gep_962" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_959", i32 2
  %"$dyndisp_pcast_963" = bitcast { i8*, i8* }* %"$dyndisp_gep_962" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_63_env_153"*)* @"$fundef_63" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_963", align 8
  store { i8*, i8* }* %"$dyndisp_table_959", { i8*, i8* }** %t2, align 8, !dbg !174
  %"$gasrem_964" = load i64, i64* @_gasrem, align 8
  %"$gascmp_965" = icmp ugt i64 1, %"$gasrem_964"
  br i1 %"$gascmp_965", label %"$out_of_gas_966", label %"$have_gas_967"

"$out_of_gas_966":                                ; preds = %"$have_gas_951"
  call void @_out_of_gas()
  br label %"$have_gas_967"

"$have_gas_967":                                  ; preds = %"$out_of_gas_966", %"$have_gas_951"
  %"$consume_968" = sub i64 %"$gasrem_964", 1
  store i64 %"$consume_968", i64* @_gasrem, align 8
  %t = alloca { i8*, i8* }*, align 8
  %"$gasrem_969" = load i64, i64* @_gasrem, align 8
  %"$gascmp_970" = icmp ugt i64 1, %"$gasrem_969"
  br i1 %"$gascmp_970", label %"$out_of_gas_971", label %"$have_gas_972"

"$out_of_gas_971":                                ; preds = %"$have_gas_967"
  call void @_out_of_gas()
  br label %"$have_gas_972"

"$have_gas_972":                                  ; preds = %"$out_of_gas_971", %"$have_gas_967"
  %"$consume_973" = sub i64 %"$gasrem_969", 1
  store i64 %"$consume_973", i64* @_gasrem, align 8
  %"$dyndisp_table_980_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_980_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_980_salloc_load", i64 48)
  %"$dyndisp_table_980_salloc" = bitcast i8* %"$dyndisp_table_980_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_980" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_980_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_981" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_980", i32 0
  %"$dyndisp_pcast_982" = bitcast { i8*, i8* }* %"$dyndisp_gep_981" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_67_env_151"*)* @"$fundef_67" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_982", align 8
  %"$dyndisp_gep_983" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_980", i32 2
  %"$dyndisp_pcast_984" = bitcast { i8*, i8* }* %"$dyndisp_gep_983" to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_71_env_149"*)* @"$fundef_71" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_984", align 8
  store { i8*, i8* }* %"$dyndisp_table_980", { i8*, i8* }** %t, align 8, !dbg !175
  %"$gasrem_985" = load i64, i64* @_gasrem, align 8
  %"$gascmp_986" = icmp ugt i64 1, %"$gasrem_985"
  br i1 %"$gascmp_986", label %"$out_of_gas_987", label %"$have_gas_988"

"$out_of_gas_987":                                ; preds = %"$have_gas_972"
  call void @_out_of_gas()
  br label %"$have_gas_988"

"$have_gas_988":                                  ; preds = %"$out_of_gas_987", %"$have_gas_972"
  %"$consume_989" = sub i64 %"$gasrem_985", 1
  store i64 %"$consume_989", i64* @_gasrem, align 8
  %some_bool = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %some_bool, metadata !176, metadata !DIExpression()), !dbg !179
  %"$gasrem_990" = load i64, i64* @_gasrem, align 8
  %"$gascmp_991" = icmp ugt i64 1, %"$gasrem_990"
  br i1 %"$gascmp_991", label %"$out_of_gas_992", label %"$have_gas_993"

"$out_of_gas_992":                                ; preds = %"$have_gas_988"
  call void @_out_of_gas()
  br label %"$have_gas_993"

"$have_gas_993":                                  ; preds = %"$out_of_gas_992", %"$have_gas_988"
  %"$consume_994" = sub i64 %"$gasrem_990", 1
  store i64 %"$consume_994", i64* @_gasrem, align 8
  %"$adtval_995_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_995_salloc" = call i8* @_salloc(i8* %"$adtval_995_load", i64 1)
  %"$adtval_995" = bitcast i8* %"$adtval_995_salloc" to %CName_False*
  %"$adtgep_996" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_995", i32 0, i32 0
  store i8 1, i8* %"$adtgep_996", align 1
  %"$adtptr_997" = bitcast %CName_False* %"$adtval_995" to %TName_Bool*
  store %TName_Bool* %"$adtptr_997", %TName_Bool** %some_bool, align 8, !dbg !180
  %"$gasrem_998" = load i64, i64* @_gasrem, align 8
  %"$gascmp_999" = icmp ugt i64 2, %"$gasrem_998"
  br i1 %"$gascmp_999", label %"$out_of_gas_1000", label %"$have_gas_1001"

"$out_of_gas_1000":                               ; preds = %"$have_gas_993"
  call void @_out_of_gas()
  br label %"$have_gas_1001"

"$have_gas_1001":                                 ; preds = %"$out_of_gas_1000", %"$have_gas_993"
  %"$consume_1002" = sub i64 %"$gasrem_998", 2
  store i64 %"$consume_1002", i64* @_gasrem, align 8
  %"$some_bool_1004" = load %TName_Bool*, %TName_Bool** %some_bool, align 8
  %"$some_bool_tag_1005" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool_1004", i32 0, i32 0
  %"$some_bool_tag_1006" = load i8, i8* %"$some_bool_tag_1005", align 1
  switch i8 %"$some_bool_tag_1006", label %"$empty_default_1007" [
    i8 0, label %"$True_1008"
    i8 1, label %"$False_1097"
  ], !dbg !181

"$True_1008":                                     ; preds = %"$have_gas_1001"
  %"$some_bool_1009" = bitcast %TName_Bool* %"$some_bool_1004" to %CName_True*
  %"$gasrem_1010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1011" = icmp ugt i64 1, %"$gasrem_1010"
  br i1 %"$gascmp_1011", label %"$out_of_gas_1012", label %"$have_gas_1013"

"$out_of_gas_1012":                               ; preds = %"$True_1008"
  call void @_out_of_gas()
  br label %"$have_gas_1013"

"$have_gas_1013":                                 ; preds = %"$out_of_gas_1012", %"$True_1008"
  %"$consume_1014" = sub i64 %"$gasrem_1010", 1
  store i64 %"$consume_1014", i64* @_gasrem, align 8
  %f11 = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_1015" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1016" = icmp ugt i64 1, %"$gasrem_1015"
  br i1 %"$gascmp_1016", label %"$out_of_gas_1017", label %"$have_gas_1018"

"$out_of_gas_1017":                               ; preds = %"$have_gas_1013"
  call void @_out_of_gas()
  br label %"$have_gas_1018"

"$have_gas_1018":                                 ; preds = %"$out_of_gas_1017", %"$have_gas_1013"
  %"$consume_1019" = sub i64 %"$gasrem_1015", 1
  store i64 %"$consume_1019", i64* @_gasrem, align 8
  %"$t_1020" = load { i8*, i8* }*, { i8*, i8* }** %t, align 8
  %"$t_1021" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_1020", i32 0
  %"$t_1022" = bitcast { i8*, i8* }* %"$t_1021" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_1023" = load { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_1022", align 8
  %"$t_fptr_1024" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_1023", 0
  %"$t_envptr_1025" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_1023", 1
  %"$t_call_1026" = call { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_1024"(i8* %"$t_envptr_1025"), !dbg !182
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_1026", { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11, align 8, !dbg !185
  %"$gasrem_1027" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1028" = icmp ugt i64 1, %"$gasrem_1027"
  br i1 %"$gascmp_1028", label %"$out_of_gas_1029", label %"$have_gas_1030"

"$out_of_gas_1029":                               ; preds = %"$have_gas_1018"
  call void @_out_of_gas()
  br label %"$have_gas_1030"

"$have_gas_1030":                                 ; preds = %"$out_of_gas_1029", %"$have_gas_1018"
  %"$consume_1031" = sub i64 %"$gasrem_1027", 1
  store i64 %"$consume_1031", i64* @_gasrem, align 8
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_1032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1033" = icmp ugt i64 1, %"$gasrem_1032"
  br i1 %"$gascmp_1033", label %"$out_of_gas_1034", label %"$have_gas_1035"

"$out_of_gas_1034":                               ; preds = %"$have_gas_1030"
  call void @_out_of_gas()
  br label %"$have_gas_1035"

"$have_gas_1035":                                 ; preds = %"$out_of_gas_1034", %"$have_gas_1030"
  %"$consume_1036" = sub i64 %"$gasrem_1032", 1
  store i64 %"$consume_1036", i64* @_gasrem, align 8
  %"$f11_12" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$f11_1037" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11, align 8
  %"$f11_fptr_1038" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_1037", 0
  %"$f11_envptr_1039" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_1037", 1
  %"$t1_1040" = load { i8*, i8* }*, { i8*, i8* }** %t1, align 8
  %"$f11_call_1041" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_fptr_1038"(i8* %"$f11_envptr_1039", { i8*, i8* }* %"$t1_1040"), !dbg !186
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_call_1041", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_12", align 8, !dbg !186
  %"$$f11_12_1042" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_12", align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$f11_12_1042", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8, !dbg !186
  %"$gasrem_1043" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1044" = icmp ugt i64 1, %"$gasrem_1043"
  br i1 %"$gascmp_1044", label %"$out_of_gas_1045", label %"$have_gas_1046"

"$out_of_gas_1045":                               ; preds = %"$have_gas_1035"
  call void @_out_of_gas()
  br label %"$have_gas_1046"

"$have_gas_1046":                                 ; preds = %"$out_of_gas_1045", %"$have_gas_1035"
  %"$consume_1047" = sub i64 %"$gasrem_1043", 1
  store i64 %"$consume_1047", i64* @_gasrem, align 8
  %len = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_1048" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1049" = icmp ugt i64 1, %"$gasrem_1048"
  br i1 %"$gascmp_1049", label %"$out_of_gas_1050", label %"$have_gas_1051"

"$out_of_gas_1050":                               ; preds = %"$have_gas_1046"
  call void @_out_of_gas()
  br label %"$have_gas_1051"

"$have_gas_1051":                                 ; preds = %"$out_of_gas_1050", %"$have_gas_1046"
  %"$consume_1052" = sub i64 %"$gasrem_1048", 1
  store i64 %"$consume_1052", i64* @_gasrem, align 8
  %"$ListUtils.list_length_1053" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_1054" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_1053", i32 0
  %"$ListUtils.list_length_1055" = bitcast { i8*, i8* }* %"$ListUtils.list_length_1054" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1056" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_1055", align 8
  %"$ListUtils.list_length_fptr_1057" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1056", 0
  %"$ListUtils.list_length_envptr_1058" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1056", 1
  %"$ListUtils.list_length_call_1059" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_fptr_1057"(i8* %"$ListUtils.list_length_envptr_1058"), !dbg !187
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_call_1059", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8, !dbg !188
  %"$gasrem_1060" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1061" = icmp ugt i64 1, %"$gasrem_1060"
  br i1 %"$gascmp_1061", label %"$out_of_gas_1062", label %"$have_gas_1063"

"$out_of_gas_1062":                               ; preds = %"$have_gas_1051"
  call void @_out_of_gas()
  br label %"$have_gas_1063"

"$have_gas_1063":                                 ; preds = %"$out_of_gas_1062", %"$have_gas_1051"
  %"$consume_1064" = sub i64 %"$gasrem_1060", 1
  store i64 %"$consume_1064", i64* @_gasrem, align 8
  %one = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %one, metadata !189, metadata !DIExpression()), !dbg !190
  %"$gasrem_1065" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1066" = icmp ugt i64 1, %"$gasrem_1065"
  br i1 %"$gascmp_1066", label %"$out_of_gas_1067", label %"$have_gas_1068"

"$out_of_gas_1067":                               ; preds = %"$have_gas_1063"
  call void @_out_of_gas()
  br label %"$have_gas_1068"

"$have_gas_1068":                                 ; preds = %"$out_of_gas_1067", %"$have_gas_1063"
  %"$consume_1069" = sub i64 %"$gasrem_1065", 1
  store i64 %"$consume_1069", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %one, align 4, !dbg !191
  %"$gasrem_1070" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1071" = icmp ugt i64 1, %"$gasrem_1070"
  br i1 %"$gascmp_1071", label %"$out_of_gas_1072", label %"$have_gas_1073"

"$out_of_gas_1072":                               ; preds = %"$have_gas_1068"
  call void @_out_of_gas()
  br label %"$have_gas_1073"

"$have_gas_1073":                                 ; preds = %"$out_of_gas_1072", %"$have_gas_1068"
  %"$consume_1074" = sub i64 %"$gasrem_1070", 1
  store i64 %"$consume_1074", i64* @_gasrem, align 8
  %f1l = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %f1l, metadata !192, metadata !DIExpression()), !dbg !193
  %"$gasrem_1075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1076" = icmp ugt i64 1, %"$gasrem_1075"
  br i1 %"$gascmp_1076", label %"$out_of_gas_1077", label %"$have_gas_1078"

"$out_of_gas_1077":                               ; preds = %"$have_gas_1073"
  call void @_out_of_gas()
  br label %"$have_gas_1078"

"$have_gas_1078":                                 ; preds = %"$out_of_gas_1077", %"$have_gas_1073"
  %"$consume_1079" = sub i64 %"$gasrem_1075", 1
  store i64 %"$consume_1079", i64* @_gasrem, align 8
  %"$f1_13" = alloca %TName_List_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int32** %"$f1_13", metadata !194, metadata !DIExpression()), !dbg !195
  %"$f1_1080" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8
  %"$f1_fptr_1081" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_1080", 0
  %"$f1_envptr_1082" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_1080", 1
  %"$one_1083" = load %Int32, %Int32* %one, align 4
  %"$f1_call_1084" = call %TName_List_Int32* %"$f1_fptr_1081"(i8* %"$f1_envptr_1082", %Int32 %"$one_1083"), !dbg !195
  store %TName_List_Int32* %"$f1_call_1084", %TName_List_Int32** %"$f1_13", align 8, !dbg !195
  %"$$f1_13_1085" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_13", align 8
  store %TName_List_Int32* %"$$f1_13_1085", %TName_List_Int32** %f1l, align 8, !dbg !195
  %"$gasrem_1086" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1087" = icmp ugt i64 1, %"$gasrem_1086"
  br i1 %"$gascmp_1087", label %"$out_of_gas_1088", label %"$have_gas_1089"

"$out_of_gas_1088":                               ; preds = %"$have_gas_1078"
  call void @_out_of_gas()
  br label %"$have_gas_1089"

"$have_gas_1089":                                 ; preds = %"$out_of_gas_1088", %"$have_gas_1078"
  %"$consume_1090" = sub i64 %"$gasrem_1086", 1
  store i64 %"$consume_1090", i64* @_gasrem, align 8
  %"$len_14" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$len_14", metadata !196, metadata !DIExpression()), !dbg !197
  %"$len_1091" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8
  %"$len_fptr_1092" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_1091", 0
  %"$len_envptr_1093" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_1091", 1
  %"$f1l_1094" = load %TName_List_Int32*, %TName_List_Int32** %f1l, align 8
  %"$len_call_1095" = call %Uint32 %"$len_fptr_1092"(i8* %"$len_envptr_1093", %TName_List_Int32* %"$f1l_1094"), !dbg !197
  store %Uint32 %"$len_call_1095", %Uint32* %"$len_14", align 4, !dbg !197
  %"$$len_14_1096" = load %Uint32, %Uint32* %"$len_14", align 4
  store %Uint32 %"$$len_14_1096", %Uint32* %"$expr_50", align 4, !dbg !197
  br label %"$matchsucc_1003"

"$False_1097":                                    ; preds = %"$have_gas_1001"
  %"$some_bool_1098" = bitcast %TName_Bool* %"$some_bool_1004" to %CName_False*
  %"$gasrem_1099" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1100" = icmp ugt i64 1, %"$gasrem_1099"
  br i1 %"$gascmp_1100", label %"$out_of_gas_1101", label %"$have_gas_1102"

"$out_of_gas_1101":                               ; preds = %"$False_1097"
  call void @_out_of_gas()
  br label %"$have_gas_1102"

"$have_gas_1102":                                 ; preds = %"$out_of_gas_1101", %"$False_1097"
  %"$consume_1103" = sub i64 %"$gasrem_1099", 1
  store i64 %"$consume_1103", i64* @_gasrem, align 8
  %f22 = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_1104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1105" = icmp ugt i64 1, %"$gasrem_1104"
  br i1 %"$gascmp_1105", label %"$out_of_gas_1106", label %"$have_gas_1107"

"$out_of_gas_1106":                               ; preds = %"$have_gas_1102"
  call void @_out_of_gas()
  br label %"$have_gas_1107"

"$have_gas_1107":                                 ; preds = %"$out_of_gas_1106", %"$have_gas_1102"
  %"$consume_1108" = sub i64 %"$gasrem_1104", 1
  store i64 %"$consume_1108", i64* @_gasrem, align 8
  %"$t_1109" = load { i8*, i8* }*, { i8*, i8* }** %t, align 8
  %"$t_1110" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_1109", i32 2
  %"$t_1111" = bitcast { i8*, i8* }* %"$t_1110" to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_1112" = load { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_1111", align 8
  %"$t_fptr_1113" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_1112", 0
  %"$t_envptr_1114" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_1112", 1
  %"$t_call_1115" = call { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_1113"(i8* %"$t_envptr_1114"), !dbg !198
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_1115", { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22, align 8, !dbg !200
  %"$gasrem_1116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1117" = icmp ugt i64 1, %"$gasrem_1116"
  br i1 %"$gascmp_1117", label %"$out_of_gas_1118", label %"$have_gas_1119"

"$out_of_gas_1118":                               ; preds = %"$have_gas_1107"
  call void @_out_of_gas()
  br label %"$have_gas_1119"

"$have_gas_1119":                                 ; preds = %"$out_of_gas_1118", %"$have_gas_1107"
  %"$consume_1120" = sub i64 %"$gasrem_1116", 1
  store i64 %"$consume_1120", i64* @_gasrem, align 8
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_1121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1122" = icmp ugt i64 1, %"$gasrem_1121"
  br i1 %"$gascmp_1122", label %"$out_of_gas_1123", label %"$have_gas_1124"

"$out_of_gas_1123":                               ; preds = %"$have_gas_1119"
  call void @_out_of_gas()
  br label %"$have_gas_1124"

"$have_gas_1124":                                 ; preds = %"$out_of_gas_1123", %"$have_gas_1119"
  %"$consume_1125" = sub i64 %"$gasrem_1121", 1
  store i64 %"$consume_1125", i64* @_gasrem, align 8
  %"$f22_15" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$f22_1126" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22, align 8
  %"$f22_fptr_1127" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_1126", 0
  %"$f22_envptr_1128" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_1126", 1
  %"$t2_1129" = load { i8*, i8* }*, { i8*, i8* }** %t2, align 8
  %"$f22_call_1130" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_fptr_1127"(i8* %"$f22_envptr_1128", { i8*, i8* }* %"$t2_1129"), !dbg !201
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_call_1130", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_15", align 8, !dbg !201
  %"$$f22_15_1131" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_15", align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$f22_15_1131", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8, !dbg !201
  %"$gasrem_1132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1133" = icmp ugt i64 1, %"$gasrem_1132"
  br i1 %"$gascmp_1133", label %"$out_of_gas_1134", label %"$have_gas_1135"

"$out_of_gas_1134":                               ; preds = %"$have_gas_1124"
  call void @_out_of_gas()
  br label %"$have_gas_1135"

"$have_gas_1135":                                 ; preds = %"$out_of_gas_1134", %"$have_gas_1124"
  %"$consume_1136" = sub i64 %"$gasrem_1132", 1
  store i64 %"$consume_1136", i64* @_gasrem, align 8
  %len1 = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_1137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1138" = icmp ugt i64 1, %"$gasrem_1137"
  br i1 %"$gascmp_1138", label %"$out_of_gas_1139", label %"$have_gas_1140"

"$out_of_gas_1139":                               ; preds = %"$have_gas_1135"
  call void @_out_of_gas()
  br label %"$have_gas_1140"

"$have_gas_1140":                                 ; preds = %"$out_of_gas_1139", %"$have_gas_1135"
  %"$consume_1141" = sub i64 %"$gasrem_1137", 1
  store i64 %"$consume_1141", i64* @_gasrem, align 8
  %"$ListUtils.list_length_1142" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_1143" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_1142", i32 2
  %"$ListUtils.list_length_1144" = bitcast { i8*, i8* }* %"$ListUtils.list_length_1143" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1145" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_1144", align 8
  %"$ListUtils.list_length_fptr_1146" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1145", 0
  %"$ListUtils.list_length_envptr_1147" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1145", 1
  %"$ListUtils.list_length_call_1148" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_fptr_1146"(i8* %"$ListUtils.list_length_envptr_1147"), !dbg !202
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_call_1148", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8, !dbg !203
  %"$gasrem_1149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1150" = icmp ugt i64 1, %"$gasrem_1149"
  br i1 %"$gascmp_1150", label %"$out_of_gas_1151", label %"$have_gas_1152"

"$out_of_gas_1151":                               ; preds = %"$have_gas_1140"
  call void @_out_of_gas()
  br label %"$have_gas_1152"

"$have_gas_1152":                                 ; preds = %"$out_of_gas_1151", %"$have_gas_1140"
  %"$consume_1153" = sub i64 %"$gasrem_1149", 1
  store i64 %"$consume_1153", i64* @_gasrem, align 8
  %one2 = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %one2, metadata !204, metadata !DIExpression()), !dbg !205
  %"$gasrem_1154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1155" = icmp ugt i64 1, %"$gasrem_1154"
  br i1 %"$gascmp_1155", label %"$out_of_gas_1156", label %"$have_gas_1157"

"$out_of_gas_1156":                               ; preds = %"$have_gas_1152"
  call void @_out_of_gas()
  br label %"$have_gas_1157"

"$have_gas_1157":                                 ; preds = %"$out_of_gas_1156", %"$have_gas_1152"
  %"$consume_1158" = sub i64 %"$gasrem_1154", 1
  store i64 %"$consume_1158", i64* @_gasrem, align 8
  store %Int64 { i64 1 }, %Int64* %one2, align 8, !dbg !206
  %"$gasrem_1159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1160" = icmp ugt i64 1, %"$gasrem_1159"
  br i1 %"$gascmp_1160", label %"$out_of_gas_1161", label %"$have_gas_1162"

"$out_of_gas_1161":                               ; preds = %"$have_gas_1157"
  call void @_out_of_gas()
  br label %"$have_gas_1162"

"$have_gas_1162":                                 ; preds = %"$out_of_gas_1161", %"$have_gas_1157"
  %"$consume_1163" = sub i64 %"$gasrem_1159", 1
  store i64 %"$consume_1163", i64* @_gasrem, align 8
  %f2l = alloca %TName_List_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int64** %f2l, metadata !207, metadata !DIExpression()), !dbg !208
  %"$gasrem_1164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1165" = icmp ugt i64 1, %"$gasrem_1164"
  br i1 %"$gascmp_1165", label %"$out_of_gas_1166", label %"$have_gas_1167"

"$out_of_gas_1166":                               ; preds = %"$have_gas_1162"
  call void @_out_of_gas()
  br label %"$have_gas_1167"

"$have_gas_1167":                                 ; preds = %"$out_of_gas_1166", %"$have_gas_1162"
  %"$consume_1168" = sub i64 %"$gasrem_1164", 1
  store i64 %"$consume_1168", i64* @_gasrem, align 8
  %"$f2_16" = alloca %TName_List_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Int64** %"$f2_16", metadata !209, metadata !DIExpression()), !dbg !210
  %"$f2_1169" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8
  %"$f2_fptr_1170" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1169", 0
  %"$f2_envptr_1171" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1169", 1
  %"$one_1172" = load %Int64, %Int64* %one2, align 8
  %"$f2_call_1173" = call %TName_List_Int64* %"$f2_fptr_1170"(i8* %"$f2_envptr_1171", %Int64 %"$one_1172"), !dbg !210
  store %TName_List_Int64* %"$f2_call_1173", %TName_List_Int64** %"$f2_16", align 8, !dbg !210
  %"$$f2_16_1174" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_16", align 8
  store %TName_List_Int64* %"$$f2_16_1174", %TName_List_Int64** %f2l, align 8, !dbg !210
  %"$gasrem_1175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1176" = icmp ugt i64 1, %"$gasrem_1175"
  br i1 %"$gascmp_1176", label %"$out_of_gas_1177", label %"$have_gas_1178"

"$out_of_gas_1177":                               ; preds = %"$have_gas_1167"
  call void @_out_of_gas()
  br label %"$have_gas_1178"

"$have_gas_1178":                                 ; preds = %"$out_of_gas_1177", %"$have_gas_1167"
  %"$consume_1179" = sub i64 %"$gasrem_1175", 1
  store i64 %"$consume_1179", i64* @_gasrem, align 8
  %"$len_17" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$len_17", metadata !211, metadata !DIExpression()), !dbg !212
  %"$len_1180" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8
  %"$len_fptr_1181" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1180", 0
  %"$len_envptr_1182" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1180", 1
  %"$f2l_1183" = load %TName_List_Int64*, %TName_List_Int64** %f2l, align 8
  %"$len_call_1184" = call %Uint32 %"$len_fptr_1181"(i8* %"$len_envptr_1182", %TName_List_Int64* %"$f2l_1183"), !dbg !212
  store %Uint32 %"$len_call_1184", %Uint32* %"$len_17", align 4, !dbg !212
  %"$$len_17_1185" = load %Uint32, %Uint32* %"$len_17", align 4
  store %Uint32 %"$$len_17_1185", %Uint32* %"$expr_50", align 4, !dbg !212
  br label %"$matchsucc_1003"

"$empty_default_1007":                            ; preds = %"$have_gas_1001"
  br label %"$matchsucc_1003"

"$matchsucc_1003":                                ; preds = %"$have_gas_1178", %"$have_gas_1089", %"$empty_default_1007"
  %"$$expr_50_1186" = load %Uint32, %Uint32* %"$expr_50", align 4
  ret %Uint32 %"$$expr_50_1186"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1187" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_1188" = alloca %Uint32, align 8
  %"$memvoidcast_1189" = bitcast %Uint32* %"$pval_1188" to i8*
  store %Uint32 %"$exprval_1187", %Uint32* %"$pval_1188", align 4
  %"$execptr_load_1190" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1190", %_TyDescrTy_Typ* @"$TyDescr_Uint32_79", i8* %"$memvoidcast_1189")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "fun-type-inst.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_73", linkageName: "$fundef_73", scope: !2, file: !2, line: 19, type: !4, scopeLine: 19, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocation(line: 19, column: 6, scope: !3)
!9 = !DILocation(line: 19, column: 5, scope: !3)
!10 = distinct !DISubprogram(name: "$fundef_71", linkageName: "$fundef_71", scope: !2, file: !2, line: 19, type: !4, scopeLine: 19, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!11 = !DILocation(line: 19, column: 5, scope: !10)
!12 = distinct !DISubprogram(name: "$fundef_69", linkageName: "$fundef_69", scope: !2, file: !2, line: 19, type: !4, scopeLine: 19, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!13 = !DILocation(line: 19, column: 6, scope: !12)
!14 = !DILocation(line: 19, column: 5, scope: !12)
!15 = distinct !DISubprogram(name: "$fundef_67", linkageName: "$fundef_67", scope: !2, file: !2, line: 19, type: !4, scopeLine: 19, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!16 = !DILocation(line: 19, column: 5, scope: !15)
!17 = distinct !DISubprogram(name: "$fundef_65", linkageName: "$fundef_65", scope: !2, file: !2, line: 11, type: !4, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!18 = !DILocalVariable(name: "a", scope: !17, file: !2, line: 10, type: !19)
!19 = !DIBasicType(name: "Int64", size: 8)
!20 = !DILocation(line: 10, column: 8, scope: !17)
!21 = !DILocalVariable(name: "$retval_66", scope: !17, file: !2, line: 11, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "List (Int64)", baseType: !23, size: 8, align: 8, dwarfAddressSpace: 0)
!23 = !DIBasicType(name: "List (Int64)", size: 8)
!24 = !DILocation(line: 11, column: 5, scope: !17)
!25 = !DILocalVariable(name: "an", scope: !17, file: !2, line: 11, type: !22)
!26 = !DILocation(line: 11, column: 9, scope: !17)
!27 = !DILocation(line: 11, column: 14, scope: !17)
!28 = !DILocalVariable(name: "a1", scope: !17, file: !2, line: 12, type: !22)
!29 = !DILocation(line: 12, column: 9, scope: !17)
!30 = !DILocation(line: 12, column: 14, scope: !17)
!31 = !DILocation(line: 13, column: 5, scope: !17)
!32 = distinct !DISubprogram(name: "$fundef_63", linkageName: "$fundef_63", scope: !2, file: !2, line: 11, type: !4, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!33 = !DILocation(line: 11, column: 5, scope: !32)
!34 = distinct !DISubprogram(name: "$fundef_61", linkageName: "$fundef_61", scope: !2, file: !2, line: 11, type: !4, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!35 = !DILocalVariable(name: "a", scope: !34, file: !2, line: 10, type: !36)
!36 = !DIBasicType(name: "Int32", size: 4)
!37 = !DILocation(line: 10, column: 8, scope: !34)
!38 = !DILocalVariable(name: "$retval_62", scope: !34, file: !2, line: 11, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "List (Int32)", baseType: !40, size: 8, align: 8, dwarfAddressSpace: 0)
!40 = !DIBasicType(name: "List (Int32)", size: 8)
!41 = !DILocation(line: 11, column: 5, scope: !34)
!42 = !DILocalVariable(name: "an", scope: !34, file: !2, line: 11, type: !39)
!43 = !DILocation(line: 11, column: 9, scope: !34)
!44 = !DILocation(line: 11, column: 14, scope: !34)
!45 = !DILocalVariable(name: "a1", scope: !34, file: !2, line: 12, type: !39)
!46 = !DILocation(line: 12, column: 9, scope: !34)
!47 = !DILocation(line: 12, column: 14, scope: !34)
!48 = !DILocation(line: 13, column: 5, scope: !34)
!49 = distinct !DISubprogram(name: "$fundef_59", linkageName: "$fundef_59", scope: !2, file: !2, line: 11, type: !4, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!50 = !DILocation(line: 11, column: 5, scope: !49)
!51 = distinct !DISubprogram(name: "$fundef_57", linkageName: "$fundef_57", scope: !2, file: !2, line: 4, type: !4, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!52 = !DILocalVariable(name: "a", scope: !51, file: !2, line: 3, type: !19)
!53 = !DILocation(line: 3, column: 8, scope: !51)
!54 = !DILocalVariable(name: "$retval_58", scope: !51, file: !2, line: 4, type: !22)
!55 = !DILocation(line: 4, column: 5, scope: !51)
!56 = !DILocalVariable(name: "an", scope: !51, file: !2, line: 4, type: !22)
!57 = !DILocation(line: 4, column: 9, scope: !51)
!58 = !DILocation(line: 4, column: 14, scope: !51)
!59 = !DILocation(line: 5, column: 5, scope: !51)
!60 = distinct !DISubprogram(name: "$fundef_55", linkageName: "$fundef_55", scope: !2, file: !2, line: 4, type: !4, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!61 = !DILocation(line: 4, column: 5, scope: !60)
!62 = distinct !DISubprogram(name: "$fundef_53", linkageName: "$fundef_53", scope: !2, file: !2, line: 4, type: !4, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!63 = !DILocalVariable(name: "a", scope: !62, file: !2, line: 3, type: !36)
!64 = !DILocation(line: 3, column: 8, scope: !62)
!65 = !DILocalVariable(name: "$retval_54", scope: !62, file: !2, line: 4, type: !39)
!66 = !DILocation(line: 4, column: 5, scope: !62)
!67 = !DILocalVariable(name: "an", scope: !62, file: !2, line: 4, type: !39)
!68 = !DILocation(line: 4, column: 9, scope: !62)
!69 = !DILocation(line: 4, column: 14, scope: !62)
!70 = !DILocation(line: 5, column: 5, scope: !62)
!71 = distinct !DISubprogram(name: "$fundef_51", linkageName: "$fundef_51", scope: !2, file: !2, line: 4, type: !4, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!72 = !DILocation(line: 4, column: 5, scope: !71)
!73 = distinct !DISubprogram(name: "$fundef_48", linkageName: "$fundef_48", scope: !74, file: !74, line: 104, type: !4, scopeLine: 104, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!74 = !DIFile(filename: "ListUtils.scillib", directory: "../src/stdlib")
!75 = !DILocalVariable(name: "h", scope: !73, file: !74, line: 103, type: !19)
!76 = !DILocation(line: 103, column: 39, scope: !73)
!77 = !DILocalVariable(name: "$retval_49", scope: !73, file: !74, line: 104, type: !78)
!78 = !DIBasicType(name: "Uint32", size: 4)
!79 = !DILocation(line: 104, column: 5, scope: !73)
!80 = distinct !DISubprogram(name: "$fundef_46", linkageName: "$fundef_46", scope: !74, file: !74, line: 103, type: !4, scopeLine: 103, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!81 = !DILocalVariable(name: "z", scope: !80, file: !74, line: 103, type: !78)
!82 = !DILocation(line: 103, column: 19, scope: !80)
!83 = !DILocation(line: 104, column: 5, scope: !80)
!84 = distinct !DISubprogram(name: "$fundef_44", linkageName: "$fundef_44", scope: !74, file: !74, line: 101, type: !4, scopeLine: 101, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!85 = !DILocation(line: 101, column: 16, scope: !84)
!86 = !DILocation(line: 101, column: 15, scope: !84)
!87 = !DILocalVariable(name: "one", scope: !84, file: !74, line: 102, type: !78)
!88 = !DILocation(line: 102, column: 7, scope: !84)
!89 = !DILocation(line: 102, column: 13, scope: !84)
!90 = !DILocation(line: 103, column: 34, scope: !84)
!91 = !DILocalVariable(name: "init", scope: !84, file: !74, line: 105, type: !78)
!92 = !DILocation(line: 105, column: 7, scope: !84)
!93 = !DILocation(line: 105, column: 14, scope: !84)
!94 = !DILocation(line: 106, column: 3, scope: !84)
!95 = distinct !DISubprogram(name: "$fundef_42", linkageName: "$fundef_42", scope: !74, file: !74, line: 104, type: !4, scopeLine: 104, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!96 = !DILocalVariable(name: "h", scope: !95, file: !74, line: 103, type: !36)
!97 = !DILocation(line: 103, column: 39, scope: !95)
!98 = !DILocalVariable(name: "$retval_43", scope: !95, file: !74, line: 104, type: !78)
!99 = !DILocation(line: 104, column: 5, scope: !95)
!100 = distinct !DISubprogram(name: "$fundef_40", linkageName: "$fundef_40", scope: !74, file: !74, line: 103, type: !4, scopeLine: 103, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!101 = !DILocalVariable(name: "z", scope: !100, file: !74, line: 103, type: !78)
!102 = !DILocation(line: 103, column: 19, scope: !100)
!103 = !DILocation(line: 104, column: 5, scope: !100)
!104 = distinct !DISubprogram(name: "$fundef_38", linkageName: "$fundef_38", scope: !74, file: !74, line: 101, type: !4, scopeLine: 101, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!105 = !DILocation(line: 101, column: 16, scope: !104)
!106 = !DILocation(line: 101, column: 15, scope: !104)
!107 = !DILocalVariable(name: "one", scope: !104, file: !74, line: 102, type: !78)
!108 = !DILocation(line: 102, column: 7, scope: !104)
!109 = !DILocation(line: 102, column: 13, scope: !104)
!110 = !DILocation(line: 103, column: 34, scope: !104)
!111 = !DILocalVariable(name: "init", scope: !104, file: !74, line: 105, type: !78)
!112 = !DILocation(line: 105, column: 7, scope: !104)
!113 = !DILocation(line: 105, column: 14, scope: !104)
!114 = !DILocation(line: 106, column: 3, scope: !104)
!115 = distinct !DISubprogram(name: "$fundef_36", linkageName: "$fundef_36", scope: !116, file: !116, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!116 = !DIFile(filename: "Prelude", directory: ".")
!117 = !DILocalVariable(name: "l", scope: !115, file: !116, line: 1, type: !22)
!118 = !DILocation(line: 1, column: 22, scope: !115)
!119 = !DILocalVariable(name: "$retval_37", scope: !115, file: !116, line: 1, type: !78)
!120 = !DILocation(line: 1, column: 37, scope: !115)
!121 = !DILocalVariable(name: "res", scope: !122, file: !116, line: 1, type: !78)
!122 = distinct !DILexicalBlock(scope: !123, file: !116, line: 1, column: 52)
!123 = distinct !DILexicalBlock(scope: !115, file: !116, line: 1, column: 37)
!124 = !DILocation(line: 1, column: 68, scope: !122)
!125 = !DILocation(line: 1, column: 74, scope: !122)
!126 = !DILocalVariable(name: "$f_7", scope: !122, file: !116, line: 1, type: !78)
!127 = !DILocation(line: 1, column: 83, scope: !122)
!128 = !DILocalVariable(name: "$g_9", scope: !122, file: !116, line: 1, type: !78)
!129 = !DILocation(line: 1, column: 100, scope: !130)
!130 = distinct !DILexicalBlock(scope: !123, file: !116, line: 1, column: 93)
!131 = distinct !DISubprogram(name: "$fundef_34", linkageName: "$fundef_34", scope: !116, file: !116, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!132 = !DILocalVariable(name: "z", scope: !131, file: !116, line: 1, type: !78)
!133 = !DILocation(line: 1, column: 6, scope: !131)
!134 = !DILocation(line: 1, column: 37, scope: !131)
!135 = distinct !DISubprogram(name: "$fundef_32", linkageName: "$fundef_32", scope: !116, file: !116, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!136 = !DILocation(line: 1, column: 17, scope: !135)
!137 = distinct !DISubprogram(name: "$fundef_30", linkageName: "$fundef_30", scope: !116, file: !116, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!138 = !DILocation(line: 1, column: 17, scope: !137)
!139 = distinct !DISubprogram(name: "$fundef_28", linkageName: "$fundef_28", scope: !116, file: !116, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!140 = !DILocation(line: 1, column: 17, scope: !139)
!141 = distinct !DISubprogram(name: "$fundef_26", linkageName: "$fundef_26", scope: !116, file: !116, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!142 = !DILocalVariable(name: "l", scope: !141, file: !116, line: 1, type: !39)
!143 = !DILocation(line: 1, column: 22, scope: !141)
!144 = !DILocalVariable(name: "$retval_27", scope: !141, file: !116, line: 1, type: !78)
!145 = !DILocation(line: 1, column: 37, scope: !141)
!146 = !DILocalVariable(name: "res", scope: !147, file: !116, line: 1, type: !78)
!147 = distinct !DILexicalBlock(scope: !148, file: !116, line: 1, column: 52)
!148 = distinct !DILexicalBlock(scope: !141, file: !116, line: 1, column: 37)
!149 = !DILocation(line: 1, column: 68, scope: !147)
!150 = !DILocation(line: 1, column: 74, scope: !147)
!151 = !DILocalVariable(name: "$f_7", scope: !147, file: !116, line: 1, type: !78)
!152 = !DILocation(line: 1, column: 83, scope: !147)
!153 = !DILocalVariable(name: "$g_9", scope: !147, file: !116, line: 1, type: !78)
!154 = !DILocation(line: 1, column: 100, scope: !155)
!155 = distinct !DILexicalBlock(scope: !148, file: !116, line: 1, column: 93)
!156 = distinct !DISubprogram(name: "$fundef_24", linkageName: "$fundef_24", scope: !116, file: !116, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!157 = !DILocalVariable(name: "z", scope: !156, file: !116, line: 1, type: !78)
!158 = !DILocation(line: 1, column: 6, scope: !156)
!159 = !DILocation(line: 1, column: 37, scope: !156)
!160 = distinct !DISubprogram(name: "$fundef_22", linkageName: "$fundef_22", scope: !116, file: !116, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!161 = !DILocation(line: 1, column: 17, scope: !160)
!162 = distinct !DISubprogram(name: "$fundef_20", linkageName: "$fundef_20", scope: !116, file: !116, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!163 = !DILocation(line: 1, column: 17, scope: !162)
!164 = distinct !DISubprogram(name: "$fundef_18", linkageName: "$fundef_18", scope: !116, file: !116, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!165 = !DILocation(line: 1, column: 17, scope: !164)
!166 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !167, file: !167, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!167 = !DIFile(filename: ".", directory: ".")
!168 = !DILocation(line: 0, scope: !166)
!169 = !DILocation(line: 1, column: 17, scope: !166)
!170 = !DILocation(line: 100, column: 3, scope: !166)
!171 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !4, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!172 = !DILocalVariable(name: "$expr_50", scope: !171, file: !2, line: 2, type: !78)
!173 = !DILocation(line: 2, column: 3, scope: !171)
!174 = !DILocation(line: 9, column: 3, scope: !171)
!175 = !DILocation(line: 17, column: 3, scope: !171)
!176 = !DILocalVariable(name: "some_bool", scope: !171, file: !2, line: 22, type: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !178, size: 8, align: 8, dwarfAddressSpace: 0)
!178 = !DIBasicType(name: "Bool", size: 8)
!179 = !DILocation(line: 22, column: 5, scope: !171)
!180 = !DILocation(line: 22, column: 17, scope: !171)
!181 = !DILocation(line: 23, column: 1, scope: !171)
!182 = !DILocation(line: 25, column: 14, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !2, line: 24, column: 3)
!184 = distinct !DILexicalBlock(scope: !171, file: !2, line: 23, column: 1)
!185 = !DILocation(line: 25, column: 13, scope: !183)
!186 = !DILocation(line: 26, column: 12, scope: !183)
!187 = !DILocation(line: 27, column: 14, scope: !183)
!188 = !DILocation(line: 27, column: 13, scope: !183)
!189 = !DILocalVariable(name: "one", scope: !183, file: !2, line: 28, type: !36)
!190 = !DILocation(line: 28, column: 7, scope: !183)
!191 = !DILocation(line: 28, column: 13, scope: !183)
!192 = !DILocalVariable(name: "f1l", scope: !183, file: !2, line: 29, type: !39)
!193 = !DILocation(line: 29, column: 7, scope: !183)
!194 = !DILocalVariable(name: "$f1_13", scope: !183, file: !2, line: 29, type: !39)
!195 = !DILocation(line: 29, column: 13, scope: !183)
!196 = !DILocalVariable(name: "$len_14", scope: !183, file: !2, line: 30, type: !78)
!197 = !DILocation(line: 30, column: 3, scope: !183)
!198 = !DILocation(line: 32, column: 14, scope: !199)
!199 = distinct !DILexicalBlock(scope: !184, file: !2, line: 31, column: 3)
!200 = !DILocation(line: 32, column: 13, scope: !199)
!201 = !DILocation(line: 33, column: 12, scope: !199)
!202 = !DILocation(line: 34, column: 14, scope: !199)
!203 = !DILocation(line: 34, column: 13, scope: !199)
!204 = !DILocalVariable(name: "one", scope: !199, file: !2, line: 35, type: !19)
!205 = !DILocation(line: 35, column: 7, scope: !199)
!206 = !DILocation(line: 35, column: 13, scope: !199)
!207 = !DILocalVariable(name: "f2l", scope: !199, file: !2, line: 36, type: !22)
!208 = !DILocation(line: 36, column: 7, scope: !199)
!209 = !DILocalVariable(name: "$f2_16", scope: !199, file: !2, line: 36, type: !22)
!210 = !DILocation(line: 36, column: 13, scope: !199)
!211 = !DILocalVariable(name: "$len_17", scope: !199, file: !2, line: 37, type: !78)
!212 = !DILocation(line: 37, column: 3, scope: !199)
