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
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_75" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_107" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_106"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_106" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_108"**, %"$TyDescrTy_ADTTyp_107"* }
%"$TyDescrTy_ADTTyp_Constr_108" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_1179" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1180" = type { %ParamDescrString, i32, %"$ParamDescr_1179"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_1179"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1180"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_73"(%"$$fundef_73_env_148"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_74" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_838" = load i64, i64* @_gasrem, align 8
  %"$gascmp_839" = icmp ugt i64 1, %"$gasrem_838"
  br i1 %"$gascmp_839", label %"$out_of_gas_840", label %"$have_gas_841"

"$out_of_gas_840":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_841"

"$have_gas_841":                                  ; preds = %"$out_of_gas_840", %entry
  %"$consume_842" = sub i64 %"$gasrem_838", 1
  store i64 %"$consume_842", i64* @_gasrem, align 8
  %"$f_843" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 2
  %"$f_844" = bitcast { i8*, i8* }* %"$f_843" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_845" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_844", align 8
  %"$f_fptr_846" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_845", 0
  %"$f_envptr_847" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_845", 1
  %"$f_call_848" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_846"(i8* %"$f_envptr_847")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_848", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_74", align 8
  %"$$retval_74_849" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_74", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_74_849"
}

define internal { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_71"(%"$$fundef_71_env_149"* %0) {
entry:
  %"$retval_72" = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_829" = load i64, i64* @_gasrem, align 8
  %"$gascmp_830" = icmp ugt i64 1, %"$gasrem_829"
  br i1 %"$gascmp_830", label %"$out_of_gas_831", label %"$have_gas_832"

"$out_of_gas_831":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_832"

"$have_gas_832":                                  ; preds = %"$out_of_gas_831", %entry
  %"$consume_833" = sub i64 %"$gasrem_829", 1
  store i64 %"$consume_833", i64* @_gasrem, align 8
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_73_env_148"*, { i8*, i8* }*)* @"$fundef_73" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_72", align 8
  %"$$retval_72_837" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_72", align 8
  ret { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_72_837"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_69"(%"$$fundef_69_env_150"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_70" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_817" = load i64, i64* @_gasrem, align 8
  %"$gascmp_818" = icmp ugt i64 1, %"$gasrem_817"
  br i1 %"$gascmp_818", label %"$out_of_gas_819", label %"$have_gas_820"

"$out_of_gas_819":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_820"

"$have_gas_820":                                  ; preds = %"$out_of_gas_819", %entry
  %"$consume_821" = sub i64 %"$gasrem_817", 1
  store i64 %"$consume_821", i64* @_gasrem, align 8
  %"$f_822" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$f_823" = bitcast { i8*, i8* }* %"$f_822" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_824" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_823", align 8
  %"$f_fptr_825" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_824", 0
  %"$f_envptr_826" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_824", 1
  %"$f_call_827" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_825"(i8* %"$f_envptr_826")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_827", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_70", align 8
  %"$$retval_70_828" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_70", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_70_828"
}

define internal { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_67"(%"$$fundef_67_env_151"* %0) {
entry:
  %"$retval_68" = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_808" = load i64, i64* @_gasrem, align 8
  %"$gascmp_809" = icmp ugt i64 1, %"$gasrem_808"
  br i1 %"$gascmp_809", label %"$out_of_gas_810", label %"$have_gas_811"

"$out_of_gas_810":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_811"

"$have_gas_811":                                  ; preds = %"$out_of_gas_810", %entry
  %"$consume_812" = sub i64 %"$gasrem_808", 1
  store i64 %"$consume_812", i64* @_gasrem, align 8
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_69_env_150"*, { i8*, i8* }*)* @"$fundef_69" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_68", align 8
  %"$$retval_68_816" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_68", align 8
  ret { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_68_816"
}

define internal %TName_List_Int64* @"$fundef_65"(%"$$fundef_65_env_152"* %0, %Int64 %1) {
entry:
  %"$retval_66" = alloca %TName_List_Int64*, align 8
  %"$gasrem_767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_768" = icmp ugt i64 1, %"$gasrem_767"
  br i1 %"$gascmp_768", label %"$out_of_gas_769", label %"$have_gas_770"

"$out_of_gas_769":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_770"

"$have_gas_770":                                  ; preds = %"$out_of_gas_769", %entry
  %"$consume_771" = sub i64 %"$gasrem_767", 1
  store i64 %"$consume_771", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  %"$gasrem_772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_773" = icmp ugt i64 1, %"$gasrem_772"
  br i1 %"$gascmp_773", label %"$out_of_gas_774", label %"$have_gas_775"

"$out_of_gas_774":                                ; preds = %"$have_gas_770"
  call void @_out_of_gas()
  br label %"$have_gas_775"

"$have_gas_775":                                  ; preds = %"$out_of_gas_774", %"$have_gas_770"
  %"$consume_776" = sub i64 %"$gasrem_772", 1
  store i64 %"$consume_776", i64* @_gasrem, align 8
  %"$adtval_777_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_777_salloc" = call i8* @_salloc(i8* %"$adtval_777_load", i64 1)
  %"$adtval_777" = bitcast i8* %"$adtval_777_salloc" to %CName_Nil_Int64*
  %"$adtgep_778" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_777", i32 0, i32 0
  store i8 1, i8* %"$adtgep_778", align 1
  %"$adtptr_779" = bitcast %CName_Nil_Int64* %"$adtval_777" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_779", %TName_List_Int64** %an, align 8
  %"$gasrem_780" = load i64, i64* @_gasrem, align 8
  %"$gascmp_781" = icmp ugt i64 1, %"$gasrem_780"
  br i1 %"$gascmp_781", label %"$out_of_gas_782", label %"$have_gas_783"

"$out_of_gas_782":                                ; preds = %"$have_gas_775"
  call void @_out_of_gas()
  br label %"$have_gas_783"

"$have_gas_783":                                  ; preds = %"$out_of_gas_782", %"$have_gas_775"
  %"$consume_784" = sub i64 %"$gasrem_780", 1
  store i64 %"$consume_784", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int64*, align 8
  %"$gasrem_785" = load i64, i64* @_gasrem, align 8
  %"$gascmp_786" = icmp ugt i64 1, %"$gasrem_785"
  br i1 %"$gascmp_786", label %"$out_of_gas_787", label %"$have_gas_788"

"$out_of_gas_787":                                ; preds = %"$have_gas_783"
  call void @_out_of_gas()
  br label %"$have_gas_788"

"$have_gas_788":                                  ; preds = %"$out_of_gas_787", %"$have_gas_783"
  %"$consume_789" = sub i64 %"$gasrem_785", 1
  store i64 %"$consume_789", i64* @_gasrem, align 8
  %"$an_790" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_791_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_791_salloc" = call i8* @_salloc(i8* %"$adtval_791_load", i64 17)
  %"$adtval_791" = bitcast i8* %"$adtval_791_salloc" to %CName_Cons_Int64*
  %"$adtgep_792" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_791", i32 0, i32 0
  store i8 0, i8* %"$adtgep_792", align 1
  %"$adtgep_793" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_791", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_793", align 8
  %"$adtgep_794" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_791", i32 0, i32 2
  store %TName_List_Int64* %"$an_790", %TName_List_Int64** %"$adtgep_794", align 8
  %"$adtptr_795" = bitcast %CName_Cons_Int64* %"$adtval_791" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_795", %TName_List_Int64** %a1, align 8
  %"$gasrem_796" = load i64, i64* @_gasrem, align 8
  %"$gascmp_797" = icmp ugt i64 1, %"$gasrem_796"
  br i1 %"$gascmp_797", label %"$out_of_gas_798", label %"$have_gas_799"

"$out_of_gas_798":                                ; preds = %"$have_gas_788"
  call void @_out_of_gas()
  br label %"$have_gas_799"

"$have_gas_799":                                  ; preds = %"$out_of_gas_798", %"$have_gas_788"
  %"$consume_800" = sub i64 %"$gasrem_796", 1
  store i64 %"$consume_800", i64* @_gasrem, align 8
  %"$a1_801" = load %TName_List_Int64*, %TName_List_Int64** %a1, align 8
  %"$adtval_802_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_802_salloc" = call i8* @_salloc(i8* %"$adtval_802_load", i64 17)
  %"$adtval_802" = bitcast i8* %"$adtval_802_salloc" to %CName_Cons_Int64*
  %"$adtgep_803" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_802", i32 0, i32 0
  store i8 0, i8* %"$adtgep_803", align 1
  %"$adtgep_804" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_802", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_804", align 8
  %"$adtgep_805" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_802", i32 0, i32 2
  store %TName_List_Int64* %"$a1_801", %TName_List_Int64** %"$adtgep_805", align 8
  %"$adtptr_806" = bitcast %CName_Cons_Int64* %"$adtval_802" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_806", %TName_List_Int64** %"$retval_66", align 8
  %"$$retval_66_807" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_66", align 8
  ret %TName_List_Int64* %"$$retval_66_807"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_63"(%"$$fundef_63_env_153"* %0) {
entry:
  %"$retval_64" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_758" = load i64, i64* @_gasrem, align 8
  %"$gascmp_759" = icmp ugt i64 1, %"$gasrem_758"
  br i1 %"$gascmp_759", label %"$out_of_gas_760", label %"$have_gas_761"

"$out_of_gas_760":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_761"

"$have_gas_761":                                  ; preds = %"$out_of_gas_760", %entry
  %"$consume_762" = sub i64 %"$gasrem_758", 1
  store i64 %"$consume_762", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_65_env_152"*, %Int64)* @"$fundef_65" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_64", align 8
  %"$$retval_64_766" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_64", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_64_766"
}

define internal %TName_List_Int32* @"$fundef_61"(%"$$fundef_61_env_154"* %0, %Int32 %1) {
entry:
  %"$retval_62" = alloca %TName_List_Int32*, align 8
  %"$gasrem_717" = load i64, i64* @_gasrem, align 8
  %"$gascmp_718" = icmp ugt i64 1, %"$gasrem_717"
  br i1 %"$gascmp_718", label %"$out_of_gas_719", label %"$have_gas_720"

"$out_of_gas_719":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_720"

"$have_gas_720":                                  ; preds = %"$out_of_gas_719", %entry
  %"$consume_721" = sub i64 %"$gasrem_717", 1
  store i64 %"$consume_721", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  %"$gasrem_722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_723" = icmp ugt i64 1, %"$gasrem_722"
  br i1 %"$gascmp_723", label %"$out_of_gas_724", label %"$have_gas_725"

"$out_of_gas_724":                                ; preds = %"$have_gas_720"
  call void @_out_of_gas()
  br label %"$have_gas_725"

"$have_gas_725":                                  ; preds = %"$out_of_gas_724", %"$have_gas_720"
  %"$consume_726" = sub i64 %"$gasrem_722", 1
  store i64 %"$consume_726", i64* @_gasrem, align 8
  %"$adtval_727_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_727_salloc" = call i8* @_salloc(i8* %"$adtval_727_load", i64 1)
  %"$adtval_727" = bitcast i8* %"$adtval_727_salloc" to %CName_Nil_Int32*
  %"$adtgep_728" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_727", i32 0, i32 0
  store i8 1, i8* %"$adtgep_728", align 1
  %"$adtptr_729" = bitcast %CName_Nil_Int32* %"$adtval_727" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_729", %TName_List_Int32** %an, align 8
  %"$gasrem_730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_731" = icmp ugt i64 1, %"$gasrem_730"
  br i1 %"$gascmp_731", label %"$out_of_gas_732", label %"$have_gas_733"

"$out_of_gas_732":                                ; preds = %"$have_gas_725"
  call void @_out_of_gas()
  br label %"$have_gas_733"

"$have_gas_733":                                  ; preds = %"$out_of_gas_732", %"$have_gas_725"
  %"$consume_734" = sub i64 %"$gasrem_730", 1
  store i64 %"$consume_734", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int32*, align 8
  %"$gasrem_735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_736" = icmp ugt i64 1, %"$gasrem_735"
  br i1 %"$gascmp_736", label %"$out_of_gas_737", label %"$have_gas_738"

"$out_of_gas_737":                                ; preds = %"$have_gas_733"
  call void @_out_of_gas()
  br label %"$have_gas_738"

"$have_gas_738":                                  ; preds = %"$out_of_gas_737", %"$have_gas_733"
  %"$consume_739" = sub i64 %"$gasrem_735", 1
  store i64 %"$consume_739", i64* @_gasrem, align 8
  %"$an_740" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_741_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_741_salloc" = call i8* @_salloc(i8* %"$adtval_741_load", i64 13)
  %"$adtval_741" = bitcast i8* %"$adtval_741_salloc" to %CName_Cons_Int32*
  %"$adtgep_742" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_741", i32 0, i32 0
  store i8 0, i8* %"$adtgep_742", align 1
  %"$adtgep_743" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_741", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_743", align 4
  %"$adtgep_744" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_741", i32 0, i32 2
  store %TName_List_Int32* %"$an_740", %TName_List_Int32** %"$adtgep_744", align 8
  %"$adtptr_745" = bitcast %CName_Cons_Int32* %"$adtval_741" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_745", %TName_List_Int32** %a1, align 8
  %"$gasrem_746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_747" = icmp ugt i64 1, %"$gasrem_746"
  br i1 %"$gascmp_747", label %"$out_of_gas_748", label %"$have_gas_749"

"$out_of_gas_748":                                ; preds = %"$have_gas_738"
  call void @_out_of_gas()
  br label %"$have_gas_749"

"$have_gas_749":                                  ; preds = %"$out_of_gas_748", %"$have_gas_738"
  %"$consume_750" = sub i64 %"$gasrem_746", 1
  store i64 %"$consume_750", i64* @_gasrem, align 8
  %"$a1_751" = load %TName_List_Int32*, %TName_List_Int32** %a1, align 8
  %"$adtval_752_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_752_salloc" = call i8* @_salloc(i8* %"$adtval_752_load", i64 13)
  %"$adtval_752" = bitcast i8* %"$adtval_752_salloc" to %CName_Cons_Int32*
  %"$adtgep_753" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_752", i32 0, i32 0
  store i8 0, i8* %"$adtgep_753", align 1
  %"$adtgep_754" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_752", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_754", align 4
  %"$adtgep_755" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_752", i32 0, i32 2
  store %TName_List_Int32* %"$a1_751", %TName_List_Int32** %"$adtgep_755", align 8
  %"$adtptr_756" = bitcast %CName_Cons_Int32* %"$adtval_752" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_756", %TName_List_Int32** %"$retval_62", align 8
  %"$$retval_62_757" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_62", align 8
  ret %TName_List_Int32* %"$$retval_62_757"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_59"(%"$$fundef_59_env_155"* %0) {
entry:
  %"$retval_60" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_708" = load i64, i64* @_gasrem, align 8
  %"$gascmp_709" = icmp ugt i64 1, %"$gasrem_708"
  br i1 %"$gascmp_709", label %"$out_of_gas_710", label %"$have_gas_711"

"$out_of_gas_710":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_711"

"$have_gas_711":                                  ; preds = %"$out_of_gas_710", %entry
  %"$consume_712" = sub i64 %"$gasrem_708", 1
  store i64 %"$consume_712", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_61_env_154"*, %Int32)* @"$fundef_61" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_60", align 8
  %"$$retval_60_716" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_60", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_60_716"
}

define internal %TName_List_Int64* @"$fundef_57"(%"$$fundef_57_env_156"* %0, %Int64 %1) {
entry:
  %"$retval_58" = alloca %TName_List_Int64*, align 8
  %"$gasrem_683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_684" = icmp ugt i64 1, %"$gasrem_683"
  br i1 %"$gascmp_684", label %"$out_of_gas_685", label %"$have_gas_686"

"$out_of_gas_685":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_686"

"$have_gas_686":                                  ; preds = %"$out_of_gas_685", %entry
  %"$consume_687" = sub i64 %"$gasrem_683", 1
  store i64 %"$consume_687", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  %"$gasrem_688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_689" = icmp ugt i64 1, %"$gasrem_688"
  br i1 %"$gascmp_689", label %"$out_of_gas_690", label %"$have_gas_691"

"$out_of_gas_690":                                ; preds = %"$have_gas_686"
  call void @_out_of_gas()
  br label %"$have_gas_691"

"$have_gas_691":                                  ; preds = %"$out_of_gas_690", %"$have_gas_686"
  %"$consume_692" = sub i64 %"$gasrem_688", 1
  store i64 %"$consume_692", i64* @_gasrem, align 8
  %"$adtval_693_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_693_salloc" = call i8* @_salloc(i8* %"$adtval_693_load", i64 1)
  %"$adtval_693" = bitcast i8* %"$adtval_693_salloc" to %CName_Nil_Int64*
  %"$adtgep_694" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_693", i32 0, i32 0
  store i8 1, i8* %"$adtgep_694", align 1
  %"$adtptr_695" = bitcast %CName_Nil_Int64* %"$adtval_693" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_695", %TName_List_Int64** %an, align 8
  %"$gasrem_696" = load i64, i64* @_gasrem, align 8
  %"$gascmp_697" = icmp ugt i64 1, %"$gasrem_696"
  br i1 %"$gascmp_697", label %"$out_of_gas_698", label %"$have_gas_699"

"$out_of_gas_698":                                ; preds = %"$have_gas_691"
  call void @_out_of_gas()
  br label %"$have_gas_699"

"$have_gas_699":                                  ; preds = %"$out_of_gas_698", %"$have_gas_691"
  %"$consume_700" = sub i64 %"$gasrem_696", 1
  store i64 %"$consume_700", i64* @_gasrem, align 8
  %"$an_701" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_702_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_702_salloc" = call i8* @_salloc(i8* %"$adtval_702_load", i64 17)
  %"$adtval_702" = bitcast i8* %"$adtval_702_salloc" to %CName_Cons_Int64*
  %"$adtgep_703" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_702", i32 0, i32 0
  store i8 0, i8* %"$adtgep_703", align 1
  %"$adtgep_704" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_702", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_704", align 8
  %"$adtgep_705" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_702", i32 0, i32 2
  store %TName_List_Int64* %"$an_701", %TName_List_Int64** %"$adtgep_705", align 8
  %"$adtptr_706" = bitcast %CName_Cons_Int64* %"$adtval_702" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_706", %TName_List_Int64** %"$retval_58", align 8
  %"$$retval_58_707" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_58", align 8
  ret %TName_List_Int64* %"$$retval_58_707"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_55"(%"$$fundef_55_env_157"* %0) {
entry:
  %"$retval_56" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_674" = load i64, i64* @_gasrem, align 8
  %"$gascmp_675" = icmp ugt i64 1, %"$gasrem_674"
  br i1 %"$gascmp_675", label %"$out_of_gas_676", label %"$have_gas_677"

"$out_of_gas_676":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_677"

"$have_gas_677":                                  ; preds = %"$out_of_gas_676", %entry
  %"$consume_678" = sub i64 %"$gasrem_674", 1
  store i64 %"$consume_678", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_57_env_156"*, %Int64)* @"$fundef_57" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_56", align 8
  %"$$retval_56_682" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_56", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_56_682"
}

define internal %TName_List_Int32* @"$fundef_53"(%"$$fundef_53_env_158"* %0, %Int32 %1) {
entry:
  %"$retval_54" = alloca %TName_List_Int32*, align 8
  %"$gasrem_649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_650" = icmp ugt i64 1, %"$gasrem_649"
  br i1 %"$gascmp_650", label %"$out_of_gas_651", label %"$have_gas_652"

"$out_of_gas_651":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_652"

"$have_gas_652":                                  ; preds = %"$out_of_gas_651", %entry
  %"$consume_653" = sub i64 %"$gasrem_649", 1
  store i64 %"$consume_653", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  %"$gasrem_654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_655" = icmp ugt i64 1, %"$gasrem_654"
  br i1 %"$gascmp_655", label %"$out_of_gas_656", label %"$have_gas_657"

"$out_of_gas_656":                                ; preds = %"$have_gas_652"
  call void @_out_of_gas()
  br label %"$have_gas_657"

"$have_gas_657":                                  ; preds = %"$out_of_gas_656", %"$have_gas_652"
  %"$consume_658" = sub i64 %"$gasrem_654", 1
  store i64 %"$consume_658", i64* @_gasrem, align 8
  %"$adtval_659_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_659_salloc" = call i8* @_salloc(i8* %"$adtval_659_load", i64 1)
  %"$adtval_659" = bitcast i8* %"$adtval_659_salloc" to %CName_Nil_Int32*
  %"$adtgep_660" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_659", i32 0, i32 0
  store i8 1, i8* %"$adtgep_660", align 1
  %"$adtptr_661" = bitcast %CName_Nil_Int32* %"$adtval_659" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_661", %TName_List_Int32** %an, align 8
  %"$gasrem_662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_663" = icmp ugt i64 1, %"$gasrem_662"
  br i1 %"$gascmp_663", label %"$out_of_gas_664", label %"$have_gas_665"

"$out_of_gas_664":                                ; preds = %"$have_gas_657"
  call void @_out_of_gas()
  br label %"$have_gas_665"

"$have_gas_665":                                  ; preds = %"$out_of_gas_664", %"$have_gas_657"
  %"$consume_666" = sub i64 %"$gasrem_662", 1
  store i64 %"$consume_666", i64* @_gasrem, align 8
  %"$an_667" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_668_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_668_salloc" = call i8* @_salloc(i8* %"$adtval_668_load", i64 13)
  %"$adtval_668" = bitcast i8* %"$adtval_668_salloc" to %CName_Cons_Int32*
  %"$adtgep_669" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_668", i32 0, i32 0
  store i8 0, i8* %"$adtgep_669", align 1
  %"$adtgep_670" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_668", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_670", align 4
  %"$adtgep_671" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_668", i32 0, i32 2
  store %TName_List_Int32* %"$an_667", %TName_List_Int32** %"$adtgep_671", align 8
  %"$adtptr_672" = bitcast %CName_Cons_Int32* %"$adtval_668" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_672", %TName_List_Int32** %"$retval_54", align 8
  %"$$retval_54_673" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_54", align 8
  ret %TName_List_Int32* %"$$retval_54_673"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_51"(%"$$fundef_51_env_159"* %0) {
entry:
  %"$retval_52" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_641" = icmp ugt i64 1, %"$gasrem_640"
  br i1 %"$gascmp_641", label %"$out_of_gas_642", label %"$have_gas_643"

"$out_of_gas_642":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_643"

"$have_gas_643":                                  ; preds = %"$out_of_gas_642", %entry
  %"$consume_644" = sub i64 %"$gasrem_640", 1
  store i64 %"$consume_644", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_53_env_158"*, %Int32)* @"$fundef_53" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_52", align 8
  %"$$retval_52_648" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_52", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_52_648"
}

define internal %Uint32 @"$fundef_48"(%"$$fundef_48_env_160"* %0, %Int64 %1) {
entry:
  %"$$fundef_48_env_one_627" = getelementptr inbounds %"$$fundef_48_env_160", %"$$fundef_48_env_160"* %0, i32 0, i32 0
  %"$one_envload_628" = load %Uint32, %Uint32* %"$$fundef_48_env_one_627", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_628", %Uint32* %one, align 4
  %"$$fundef_48_env_z_629" = getelementptr inbounds %"$$fundef_48_env_160", %"$$fundef_48_env_160"* %0, i32 0, i32 1
  %"$z_envload_630" = load %Uint32, %Uint32* %"$$fundef_48_env_z_629", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_630", %Uint32* %z, align 4
  %"$retval_49" = alloca %Uint32, align 8
  %"$gasrem_631" = load i64, i64* @_gasrem, align 8
  %"$gascmp_632" = icmp ugt i64 4, %"$gasrem_631"
  br i1 %"$gascmp_632", label %"$out_of_gas_633", label %"$have_gas_634"

"$out_of_gas_633":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_634"

"$have_gas_634":                                  ; preds = %"$out_of_gas_633", %entry
  %"$consume_635" = sub i64 %"$gasrem_631", 4
  store i64 %"$consume_635", i64* @_gasrem, align 8
  %"$one_636" = load %Uint32, %Uint32* %one, align 4
  %"$z_637" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_638" = call %Uint32 @_add_Uint32(%Uint32 %"$one_636", %Uint32 %"$z_637")
  store %Uint32 %"$add_call_638", %Uint32* %"$retval_49", align 4
  %"$$retval_49_639" = load %Uint32, %Uint32* %"$retval_49", align 4
  ret %Uint32 %"$$retval_49_639"
}

define internal { %Uint32 (i8*, %Int64)*, i8* } @"$fundef_46"(%"$$fundef_46_env_161"* %0, %Uint32 %1) {
entry:
  %"$$fundef_46_env_one_612" = getelementptr inbounds %"$$fundef_46_env_161", %"$$fundef_46_env_161"* %0, i32 0, i32 0
  %"$one_envload_613" = load %Uint32, %Uint32* %"$$fundef_46_env_one_612", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_613", %Uint32* %one, align 4
  %"$retval_47" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_614" = load i64, i64* @_gasrem, align 8
  %"$gascmp_615" = icmp ugt i64 1, %"$gasrem_614"
  br i1 %"$gascmp_615", label %"$out_of_gas_616", label %"$have_gas_617"

"$out_of_gas_616":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_617"

"$have_gas_617":                                  ; preds = %"$out_of_gas_616", %entry
  %"$consume_618" = sub i64 %"$gasrem_614", 1
  store i64 %"$consume_618", i64* @_gasrem, align 8
  %"$$fundef_48_envp_619_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_48_envp_619_salloc" = call i8* @_salloc(i8* %"$$fundef_48_envp_619_load", i64 8)
  %"$$fundef_48_envp_619" = bitcast i8* %"$$fundef_48_envp_619_salloc" to %"$$fundef_48_env_160"*
  %"$$fundef_48_env_voidp_621" = bitcast %"$$fundef_48_env_160"* %"$$fundef_48_envp_619" to i8*
  %"$$fundef_48_cloval_622" = insertvalue { %Uint32 (i8*, %Int64)*, i8* } { %Uint32 (i8*, %Int64)* bitcast (%Uint32 (%"$$fundef_48_env_160"*, %Int64)* @"$fundef_48" to %Uint32 (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_48_env_voidp_621", 1
  %"$$fundef_48_env_one_623" = getelementptr inbounds %"$$fundef_48_env_160", %"$$fundef_48_env_160"* %"$$fundef_48_envp_619", i32 0, i32 0
  %"$one_624" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_624", %Uint32* %"$$fundef_48_env_one_623", align 4
  %"$$fundef_48_env_z_625" = getelementptr inbounds %"$$fundef_48_env_160", %"$$fundef_48_env_160"* %"$$fundef_48_envp_619", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_48_env_z_625", align 4
  store { %Uint32 (i8*, %Int64)*, i8* } %"$$fundef_48_cloval_622", { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_47", align 8
  %"$$retval_47_626" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_47", align 8
  ret { %Uint32 (i8*, %Int64)*, i8* } %"$$retval_47_626"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_44"(%"$$fundef_44_env_162"* %0) {
entry:
  %"$$fundef_44_env_list_foldl_534" = getelementptr inbounds %"$$fundef_44_env_162", %"$$fundef_44_env_162"* %0, i32 0, i32 0
  %"$list_foldl_envload_535" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_44_env_list_foldl_534", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_535", { i8*, i8* }** %list_foldl, align 8
  %"$retval_45" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_537" = icmp ugt i64 1, %"$gasrem_536"
  br i1 %"$gascmp_537", label %"$out_of_gas_538", label %"$have_gas_539"

"$out_of_gas_538":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_539"

"$have_gas_539":                                  ; preds = %"$out_of_gas_538", %entry
  %"$consume_540" = sub i64 %"$gasrem_536", 1
  store i64 %"$consume_540", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_542" = icmp ugt i64 1, %"$gasrem_541"
  br i1 %"$gascmp_542", label %"$out_of_gas_543", label %"$have_gas_544"

"$out_of_gas_543":                                ; preds = %"$have_gas_539"
  call void @_out_of_gas()
  br label %"$have_gas_544"

"$have_gas_544":                                  ; preds = %"$out_of_gas_543", %"$have_gas_539"
  %"$consume_545" = sub i64 %"$gasrem_541", 1
  store i64 %"$consume_545", i64* @_gasrem, align 8
  %"$list_foldl_546" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_547" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_546", i32 2
  %"$list_foldl_548" = bitcast { i8*, i8* }* %"$list_foldl_547" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_549" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_548", align 8
  %"$list_foldl_fptr_550" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_549", 0
  %"$list_foldl_envptr_551" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_549", 1
  %"$list_foldl_call_552" = call { i8*, i8* }* %"$list_foldl_fptr_550"(i8* %"$list_foldl_envptr_551")
  %"$list_foldl_553" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_552", i32 1
  %"$list_foldl_554" = bitcast { i8*, i8* }* %"$list_foldl_553" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_555" = load { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_554", align 8
  %"$list_foldl_fptr_556" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_555", 0
  %"$list_foldl_envptr_557" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_555", 1
  %"$list_foldl_call_558" = call { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_556"(i8* %"$list_foldl_envptr_557")
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_558", { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$gasrem_559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_560" = icmp ugt i64 1, %"$gasrem_559"
  br i1 %"$gascmp_560", label %"$out_of_gas_561", label %"$have_gas_562"

"$out_of_gas_561":                                ; preds = %"$have_gas_544"
  call void @_out_of_gas()
  br label %"$have_gas_562"

"$have_gas_562":                                  ; preds = %"$out_of_gas_561", %"$have_gas_544"
  %"$consume_563" = sub i64 %"$gasrem_559", 1
  store i64 %"$consume_563", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_565" = icmp ugt i64 1, %"$gasrem_564"
  br i1 %"$gascmp_565", label %"$out_of_gas_566", label %"$have_gas_567"

"$out_of_gas_566":                                ; preds = %"$have_gas_562"
  call void @_out_of_gas()
  br label %"$have_gas_567"

"$have_gas_567":                                  ; preds = %"$out_of_gas_566", %"$have_gas_562"
  %"$consume_568" = sub i64 %"$gasrem_564", 1
  store i64 %"$consume_568", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_570" = icmp ugt i64 1, %"$gasrem_569"
  br i1 %"$gascmp_570", label %"$out_of_gas_571", label %"$have_gas_572"

"$out_of_gas_571":                                ; preds = %"$have_gas_567"
  call void @_out_of_gas()
  br label %"$have_gas_572"

"$have_gas_572":                                  ; preds = %"$out_of_gas_571", %"$have_gas_567"
  %"$consume_573" = sub i64 %"$gasrem_569", 1
  store i64 %"$consume_573", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_575" = icmp ugt i64 1, %"$gasrem_574"
  br i1 %"$gascmp_575", label %"$out_of_gas_576", label %"$have_gas_577"

"$out_of_gas_576":                                ; preds = %"$have_gas_572"
  call void @_out_of_gas()
  br label %"$have_gas_577"

"$have_gas_577":                                  ; preds = %"$out_of_gas_576", %"$have_gas_572"
  %"$consume_578" = sub i64 %"$gasrem_574", 1
  store i64 %"$consume_578", i64* @_gasrem, align 8
  %"$$fundef_46_envp_579_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_46_envp_579_salloc" = call i8* @_salloc(i8* %"$$fundef_46_envp_579_load", i64 4)
  %"$$fundef_46_envp_579" = bitcast i8* %"$$fundef_46_envp_579_salloc" to %"$$fundef_46_env_161"*
  %"$$fundef_46_env_voidp_581" = bitcast %"$$fundef_46_env_161"* %"$$fundef_46_envp_579" to i8*
  %"$$fundef_46_cloval_582" = insertvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int64)*, i8* } (%"$$fundef_46_env_161"*, %Uint32)* @"$fundef_46" to { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_46_env_voidp_581", 1
  %"$$fundef_46_env_one_583" = getelementptr inbounds %"$$fundef_46_env_161", %"$$fundef_46_env_161"* %"$$fundef_46_envp_579", i32 0, i32 0
  %"$one_584" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_584", %Uint32* %"$$fundef_46_env_one_583", align 4
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_46_cloval_582", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$gasrem_585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_586" = icmp ugt i64 1, %"$gasrem_585"
  br i1 %"$gascmp_586", label %"$out_of_gas_587", label %"$have_gas_588"

"$out_of_gas_587":                                ; preds = %"$have_gas_577"
  call void @_out_of_gas()
  br label %"$have_gas_588"

"$have_gas_588":                                  ; preds = %"$out_of_gas_587", %"$have_gas_577"
  %"$consume_589" = sub i64 %"$gasrem_585", 1
  store i64 %"$consume_589", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_590" = load i64, i64* @_gasrem, align 8
  %"$gascmp_591" = icmp ugt i64 1, %"$gasrem_590"
  br i1 %"$gascmp_591", label %"$out_of_gas_592", label %"$have_gas_593"

"$out_of_gas_592":                                ; preds = %"$have_gas_588"
  call void @_out_of_gas()
  br label %"$have_gas_593"

"$have_gas_593":                                  ; preds = %"$out_of_gas_592", %"$have_gas_588"
  %"$consume_594" = sub i64 %"$gasrem_590", 1
  store i64 %"$consume_594", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4
  %"$gasrem_595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_596" = icmp ugt i64 1, %"$gasrem_595"
  br i1 %"$gascmp_596", label %"$out_of_gas_597", label %"$have_gas_598"

"$out_of_gas_597":                                ; preds = %"$have_gas_593"
  call void @_out_of_gas()
  br label %"$have_gas_598"

"$have_gas_598":                                  ; preds = %"$out_of_gas_597", %"$have_gas_593"
  %"$consume_599" = sub i64 %"$gasrem_595", 1
  store i64 %"$consume_599", i64* @_gasrem, align 8
  %"$foldl_10" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_600" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_601" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_600", 0
  %"$foldl_envptr_602" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_600", 1
  %"$iter_603" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_604" = call { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_601"(i8* %"$foldl_envptr_602", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_603")
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_604", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$foldl_11" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$$foldl_10_605" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$$foldl_10_fptr_606" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_605", 0
  %"$$foldl_10_envptr_607" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_605", 1
  %"$init_608" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_10_call_609" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_10_fptr_606"(i8* %"$$foldl_10_envptr_607", %Uint32 %"$init_608")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_10_call_609", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_11", align 8
  %"$$foldl_11_610" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_11", align 8
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_11_610", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_45", align 8
  %"$$retval_45_611" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_45", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_45_611"
}

define internal %Uint32 @"$fundef_42"(%"$$fundef_42_env_163"* %0, %Int32 %1) {
entry:
  %"$$fundef_42_env_one_521" = getelementptr inbounds %"$$fundef_42_env_163", %"$$fundef_42_env_163"* %0, i32 0, i32 0
  %"$one_envload_522" = load %Uint32, %Uint32* %"$$fundef_42_env_one_521", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_522", %Uint32* %one, align 4
  %"$$fundef_42_env_z_523" = getelementptr inbounds %"$$fundef_42_env_163", %"$$fundef_42_env_163"* %0, i32 0, i32 1
  %"$z_envload_524" = load %Uint32, %Uint32* %"$$fundef_42_env_z_523", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_524", %Uint32* %z, align 4
  %"$retval_43" = alloca %Uint32, align 8
  %"$gasrem_525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_526" = icmp ugt i64 4, %"$gasrem_525"
  br i1 %"$gascmp_526", label %"$out_of_gas_527", label %"$have_gas_528"

"$out_of_gas_527":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_528"

"$have_gas_528":                                  ; preds = %"$out_of_gas_527", %entry
  %"$consume_529" = sub i64 %"$gasrem_525", 4
  store i64 %"$consume_529", i64* @_gasrem, align 8
  %"$one_530" = load %Uint32, %Uint32* %one, align 4
  %"$z_531" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_532" = call %Uint32 @_add_Uint32(%Uint32 %"$one_530", %Uint32 %"$z_531")
  store %Uint32 %"$add_call_532", %Uint32* %"$retval_43", align 4
  %"$$retval_43_533" = load %Uint32, %Uint32* %"$retval_43", align 4
  ret %Uint32 %"$$retval_43_533"
}

define internal { %Uint32 (i8*, %Int32)*, i8* } @"$fundef_40"(%"$$fundef_40_env_164"* %0, %Uint32 %1) {
entry:
  %"$$fundef_40_env_one_506" = getelementptr inbounds %"$$fundef_40_env_164", %"$$fundef_40_env_164"* %0, i32 0, i32 0
  %"$one_envload_507" = load %Uint32, %Uint32* %"$$fundef_40_env_one_506", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_507", %Uint32* %one, align 4
  %"$retval_41" = alloca { %Uint32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 1, %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %entry
  %"$consume_512" = sub i64 %"$gasrem_508", 1
  store i64 %"$consume_512", i64* @_gasrem, align 8
  %"$$fundef_42_envp_513_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_42_envp_513_salloc" = call i8* @_salloc(i8* %"$$fundef_42_envp_513_load", i64 8)
  %"$$fundef_42_envp_513" = bitcast i8* %"$$fundef_42_envp_513_salloc" to %"$$fundef_42_env_163"*
  %"$$fundef_42_env_voidp_515" = bitcast %"$$fundef_42_env_163"* %"$$fundef_42_envp_513" to i8*
  %"$$fundef_42_cloval_516" = insertvalue { %Uint32 (i8*, %Int32)*, i8* } { %Uint32 (i8*, %Int32)* bitcast (%Uint32 (%"$$fundef_42_env_163"*, %Int32)* @"$fundef_42" to %Uint32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_42_env_voidp_515", 1
  %"$$fundef_42_env_one_517" = getelementptr inbounds %"$$fundef_42_env_163", %"$$fundef_42_env_163"* %"$$fundef_42_envp_513", i32 0, i32 0
  %"$one_518" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_518", %Uint32* %"$$fundef_42_env_one_517", align 4
  %"$$fundef_42_env_z_519" = getelementptr inbounds %"$$fundef_42_env_163", %"$$fundef_42_env_163"* %"$$fundef_42_envp_513", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_42_env_z_519", align 4
  store { %Uint32 (i8*, %Int32)*, i8* } %"$$fundef_42_cloval_516", { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_41", align 8
  %"$$retval_41_520" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_41", align 8
  ret { %Uint32 (i8*, %Int32)*, i8* } %"$$retval_41_520"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_165"* %0) {
entry:
  %"$$fundef_38_env_list_foldl_428" = getelementptr inbounds %"$$fundef_38_env_165", %"$$fundef_38_env_165"* %0, i32 0, i32 0
  %"$list_foldl_envload_429" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_38_env_list_foldl_428", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_429", { i8*, i8* }** %list_foldl, align 8
  %"$retval_39" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_431" = icmp ugt i64 1, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %entry
  %"$consume_434" = sub i64 %"$gasrem_430", 1
  store i64 %"$consume_434", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 1, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_433"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_433"
  %"$consume_439" = sub i64 %"$gasrem_435", 1
  store i64 %"$consume_439", i64* @_gasrem, align 8
  %"$list_foldl_440" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_441" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_440", i32 0
  %"$list_foldl_442" = bitcast { i8*, i8* }* %"$list_foldl_441" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_443" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_442", align 8
  %"$list_foldl_fptr_444" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_443", 0
  %"$list_foldl_envptr_445" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_443", 1
  %"$list_foldl_call_446" = call { i8*, i8* }* %"$list_foldl_fptr_444"(i8* %"$list_foldl_envptr_445")
  %"$list_foldl_447" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_446", i32 1
  %"$list_foldl_448" = bitcast { i8*, i8* }* %"$list_foldl_447" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_449" = load { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_448", align 8
  %"$list_foldl_fptr_450" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_449", 0
  %"$list_foldl_envptr_451" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_449", 1
  %"$list_foldl_call_452" = call { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_450"(i8* %"$list_foldl_envptr_451")
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_452", { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_438"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_438"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 1, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$have_gas_456"
  %"$consume_462" = sub i64 %"$gasrem_458", 1
  store i64 %"$consume_462", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_464" = icmp ugt i64 1, %"$gasrem_463"
  br i1 %"$gascmp_464", label %"$out_of_gas_465", label %"$have_gas_466"

"$out_of_gas_465":                                ; preds = %"$have_gas_461"
  call void @_out_of_gas()
  br label %"$have_gas_466"

"$have_gas_466":                                  ; preds = %"$out_of_gas_465", %"$have_gas_461"
  %"$consume_467" = sub i64 %"$gasrem_463", 1
  store i64 %"$consume_467", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %"$have_gas_466"
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %"$have_gas_466"
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  %"$$fundef_40_envp_473_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_40_envp_473_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_473_load", i64 4)
  %"$$fundef_40_envp_473" = bitcast i8* %"$$fundef_40_envp_473_salloc" to %"$$fundef_40_env_164"*
  %"$$fundef_40_env_voidp_475" = bitcast %"$$fundef_40_env_164"* %"$$fundef_40_envp_473" to i8*
  %"$$fundef_40_cloval_476" = insertvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int32)*, i8* } (%"$$fundef_40_env_164"*, %Uint32)* @"$fundef_40" to { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_40_env_voidp_475", 1
  %"$$fundef_40_env_one_477" = getelementptr inbounds %"$$fundef_40_env_164", %"$$fundef_40_env_164"* %"$$fundef_40_envp_473", i32 0, i32 0
  %"$one_478" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_478", %Uint32* %"$$fundef_40_env_one_477", align 4
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_40_cloval_476", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$gasrem_479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_480" = icmp ugt i64 1, %"$gasrem_479"
  br i1 %"$gascmp_480", label %"$out_of_gas_481", label %"$have_gas_482"

"$out_of_gas_481":                                ; preds = %"$have_gas_471"
  call void @_out_of_gas()
  br label %"$have_gas_482"

"$have_gas_482":                                  ; preds = %"$out_of_gas_481", %"$have_gas_471"
  %"$consume_483" = sub i64 %"$gasrem_479", 1
  store i64 %"$consume_483", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_485" = icmp ugt i64 1, %"$gasrem_484"
  br i1 %"$gascmp_485", label %"$out_of_gas_486", label %"$have_gas_487"

"$out_of_gas_486":                                ; preds = %"$have_gas_482"
  call void @_out_of_gas()
  br label %"$have_gas_487"

"$have_gas_487":                                  ; preds = %"$out_of_gas_486", %"$have_gas_482"
  %"$consume_488" = sub i64 %"$gasrem_484", 1
  store i64 %"$consume_488", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4
  %"$gasrem_489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_490" = icmp ugt i64 1, %"$gasrem_489"
  br i1 %"$gascmp_490", label %"$out_of_gas_491", label %"$have_gas_492"

"$out_of_gas_491":                                ; preds = %"$have_gas_487"
  call void @_out_of_gas()
  br label %"$have_gas_492"

"$have_gas_492":                                  ; preds = %"$out_of_gas_491", %"$have_gas_487"
  %"$consume_493" = sub i64 %"$gasrem_489", 1
  store i64 %"$consume_493", i64* @_gasrem, align 8
  %"$foldl_10" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_494" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_495" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_494", 0
  %"$foldl_envptr_496" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_494", 1
  %"$iter_497" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_498" = call { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_495"(i8* %"$foldl_envptr_496", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_497")
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_498", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$foldl_11" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$$foldl_10_499" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$$foldl_10_fptr_500" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_499", 0
  %"$$foldl_10_envptr_501" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_499", 1
  %"$init_502" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_10_call_503" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_10_fptr_500"(i8* %"$$foldl_10_envptr_501", %Uint32 %"$init_502")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_10_call_503", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_11", align 8
  %"$$foldl_11_504" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_11", align 8
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_11_504", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_39", align 8
  %"$$retval_39_505" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_39", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_39_505"
}

define internal %Uint32 @"$fundef_36"(%"$$fundef_36_env_166"* %0, %TName_List_Int64* %1) {
entry:
  %"$$fundef_36_env_f_361" = getelementptr inbounds %"$$fundef_36_env_166", %"$$fundef_36_env_166"* %0, i32 0, i32 0
  %"$f_envload_362" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_36_env_f_361", align 8
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_362", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_36_env_g_363" = getelementptr inbounds %"$$fundef_36_env_166", %"$$fundef_36_env_166"* %0, i32 0, i32 1
  %"$g_envload_364" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_36_env_g_363", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_364", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_36_env_z_365" = getelementptr inbounds %"$$fundef_36_env_166", %"$$fundef_36_env_166"* %0, i32 0, i32 2
  %"$z_envload_366" = load %Uint32, %Uint32* %"$$fundef_36_env_z_365", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_366", %Uint32* %z, align 4
  %"$retval_37" = alloca %Uint32, align 8
  %"$gasrem_367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_368" = icmp ugt i64 2, %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %entry
  %"$consume_371" = sub i64 %"$gasrem_367", 2
  store i64 %"$consume_371", i64* @_gasrem, align 8
  %"$l_tag_373" = getelementptr inbounds %TName_List_Int64, %TName_List_Int64* %1, i32 0, i32 0
  %"$l_tag_374" = load i8, i8* %"$l_tag_373", align 1
  switch i8 %"$l_tag_374", label %"$empty_default_375" [
    i8 0, label %"$Cons_376"
    i8 1, label %"$Nil_419"
  ]

"$Cons_376":                                      ; preds = %"$have_gas_370"
  %"$l_377" = bitcast %TName_List_Int64* %1 to %CName_Cons_Int64*
  %"$h_gep_378" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_377", i32 0, i32 1
  %"$h_load_379" = load %Int64, %Int64* %"$h_gep_378", align 8
  %h = alloca %Int64, align 8
  store %Int64 %"$h_load_379", %Int64* %h, align 8
  %"$t_gep_380" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_377", i32 0, i32 2
  %"$t_load_381" = load %TName_List_Int64*, %TName_List_Int64** %"$t_gep_380", align 8
  %t = alloca %TName_List_Int64*, align 8
  store %TName_List_Int64* %"$t_load_381", %TName_List_Int64** %t, align 8
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$Cons_376"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$Cons_376"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 1, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_385"
  %"$consume_391" = sub i64 %"$gasrem_387", 1
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %"$f_6" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$f_392" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_393" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_392", 0
  %"$f_envptr_394" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_392", 1
  %"$z_395" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_396" = call { %Uint32 (i8*, %Int64)*, i8* } %"$f_fptr_393"(i8* %"$f_envptr_394", %Uint32 %"$z_395")
  store { %Uint32 (i8*, %Int64)*, i8* } %"$f_call_396", { %Uint32 (i8*, %Int64)*, i8* }* %"$f_6", align 8
  %"$f_7" = alloca %Uint32, align 8
  %"$$f_6_397" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$f_6", align 8
  %"$$f_6_fptr_398" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_6_397", 0
  %"$$f_6_envptr_399" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_6_397", 1
  %"$h_400" = load %Int64, %Int64* %h, align 8
  %"$$f_6_call_401" = call %Uint32 %"$$f_6_fptr_398"(i8* %"$$f_6_envptr_399", %Int64 %"$h_400")
  store %Uint32 %"$$f_6_call_401", %Uint32* %"$f_7", align 4
  %"$$f_7_402" = load %Uint32, %Uint32* %"$f_7", align 4
  store %Uint32 %"$$f_7_402", %Uint32* %res, align 4
  %"$gasrem_403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_404" = icmp ugt i64 1, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$have_gas_390"
  %"$consume_407" = sub i64 %"$gasrem_403", 1
  store i64 %"$consume_407", i64* @_gasrem, align 8
  %"$g_8" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$g_408" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_409" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_408", 0
  %"$g_envptr_410" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_408", 1
  %"$res_411" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_412" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_fptr_409"(i8* %"$g_envptr_410", %Uint32 %"$res_411")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_call_412", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_8", align 8
  %"$g_9" = alloca %Uint32, align 8
  %"$$g_8_413" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_8", align 8
  %"$$g_8_fptr_414" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_8_413", 0
  %"$$g_8_envptr_415" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_8_413", 1
  %"$t_416" = load %TName_List_Int64*, %TName_List_Int64** %t, align 8
  %"$$g_8_call_417" = call %Uint32 %"$$g_8_fptr_414"(i8* %"$$g_8_envptr_415", %TName_List_Int64* %"$t_416")
  store %Uint32 %"$$g_8_call_417", %Uint32* %"$g_9", align 4
  %"$$g_9_418" = load %Uint32, %Uint32* %"$g_9", align 4
  store %Uint32 %"$$g_9_418", %Uint32* %"$retval_37", align 4
  br label %"$matchsucc_372"

"$Nil_419":                                       ; preds = %"$have_gas_370"
  %"$l_420" = bitcast %TName_List_Int64* %1 to %CName_Nil_Int64*
  %"$gasrem_421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_422" = icmp ugt i64 1, %"$gasrem_421"
  br i1 %"$gascmp_422", label %"$out_of_gas_423", label %"$have_gas_424"

"$out_of_gas_423":                                ; preds = %"$Nil_419"
  call void @_out_of_gas()
  br label %"$have_gas_424"

"$have_gas_424":                                  ; preds = %"$out_of_gas_423", %"$Nil_419"
  %"$consume_425" = sub i64 %"$gasrem_421", 1
  store i64 %"$consume_425", i64* @_gasrem, align 8
  %"$z_426" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_426", %Uint32* %"$retval_37", align 4
  br label %"$matchsucc_372"

"$empty_default_375":                             ; preds = %"$have_gas_370"
  br label %"$matchsucc_372"

"$matchsucc_372":                                 ; preds = %"$have_gas_424", %"$have_gas_406", %"$empty_default_375"
  %"$$retval_37_427" = load %Uint32, %Uint32* %"$retval_37", align 4
  ret %Uint32 %"$$retval_37_427"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_34"(%"$$fundef_34_env_167"* %0, %Uint32 %1) {
entry:
  %"$$fundef_34_env_f_337" = getelementptr inbounds %"$$fundef_34_env_167", %"$$fundef_34_env_167"* %0, i32 0, i32 0
  %"$f_envload_338" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_f_337", align 8
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_338", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_34_env_g_339" = getelementptr inbounds %"$$fundef_34_env_167", %"$$fundef_34_env_167"* %0, i32 0, i32 1
  %"$g_envload_340" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_g_339", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_340", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_35" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %entry
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 1, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %"$have_gas_344"
  %"$consume_350" = sub i64 %"$gasrem_346", 1
  store i64 %"$consume_350", i64* @_gasrem, align 8
  %"$$fundef_36_envp_351_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_36_envp_351_salloc" = call i8* @_salloc(i8* %"$$fundef_36_envp_351_load", i64 40)
  %"$$fundef_36_envp_351" = bitcast i8* %"$$fundef_36_envp_351_salloc" to %"$$fundef_36_env_166"*
  %"$$fundef_36_env_voidp_353" = bitcast %"$$fundef_36_env_166"* %"$$fundef_36_envp_351" to i8*
  %"$$fundef_36_cloval_354" = insertvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } { %Uint32 (i8*, %TName_List_Int64*)* bitcast (%Uint32 (%"$$fundef_36_env_166"*, %TName_List_Int64*)* @"$fundef_36" to %Uint32 (i8*, %TName_List_Int64*)*), i8* undef }, i8* %"$$fundef_36_env_voidp_353", 1
  %"$$fundef_36_env_f_355" = getelementptr inbounds %"$$fundef_36_env_166", %"$$fundef_36_env_166"* %"$$fundef_36_envp_351", i32 0, i32 0
  %"$f_356" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_356", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_36_env_f_355", align 8
  %"$$fundef_36_env_g_357" = getelementptr inbounds %"$$fundef_36_env_166", %"$$fundef_36_env_166"* %"$$fundef_36_envp_351", i32 0, i32 1
  %"$g_358" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_358", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_36_env_g_357", align 8
  %"$$fundef_36_env_z_359" = getelementptr inbounds %"$$fundef_36_env_166", %"$$fundef_36_env_166"* %"$$fundef_36_envp_351", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_36_env_z_359", align 4
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$fundef_36_cloval_354", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_35", align 8
  %"$$retval_35_360" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_35", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_35_360"
}

define internal { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_32"(%"$$fundef_32_env_168"* %0, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_33" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 1, %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %entry
  %"$consume_327" = sub i64 %"$gasrem_323", 1
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %"$$fundef_34_envp_328_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_34_envp_328_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_328_load", i64 32)
  %"$$fundef_34_envp_328" = bitcast i8* %"$$fundef_34_envp_328_salloc" to %"$$fundef_34_env_167"*
  %"$$fundef_34_env_voidp_330" = bitcast %"$$fundef_34_env_167"* %"$$fundef_34_envp_328" to i8*
  %"$$fundef_34_cloval_331" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_34_env_167"*, %Uint32)* @"$fundef_34" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_34_env_voidp_330", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_34_cloval_331", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_34_env_f_332" = getelementptr inbounds %"$$fundef_34_env_167", %"$$fundef_34_env_167"* %"$$fundef_34_envp_328", i32 0, i32 0
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_f_332", align 8
  %"$$fundef_34_env_g_333" = getelementptr inbounds %"$$fundef_34_env_167", %"$$fundef_34_env_167"* %"$$fundef_34_envp_328", i32 0, i32 1
  %"$g_334" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_334", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_g_333", align 8
  %"$g_335" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_335", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_33", align 8
  %"$$retval_33_336" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_33", align 8
  ret { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_33_336"
}

define internal { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_30"(%"$$fundef_30_env_169"* %0) {
entry:
  %"$retval_31" = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 1, %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %entry
  %"$consume_318" = sub i64 %"$gasrem_314", 1
  store i64 %"$consume_318", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_32_env_168"*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_32" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_31", align 8
  %"$$retval_31_322" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_31", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_31_322"
}

define internal { i8*, i8* }* @"$fundef_28"(%"$$fundef_28_env_170"* %0) {
entry:
  %"$retval_29" = alloca { i8*, i8* }*, align 8
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 1, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %entry
  %"$consume_306" = sub i64 %"$gasrem_302", 1
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %"$dyndisp_table_310_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_310_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_310_salloc_load", i64 48)
  %"$dyndisp_table_310_salloc" = bitcast i8* %"$dyndisp_table_310_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_310" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_310_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_311" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_310", i32 1
  %"$dyndisp_pcast_312" = bitcast { i8*, i8* }* %"$dyndisp_gep_311" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_30_env_169"*)* @"$fundef_30" to { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_312", align 8
  store { i8*, i8* }* %"$dyndisp_table_310", { i8*, i8* }** %"$retval_29", align 8
  %"$$retval_29_313" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_29", align 8
  ret { i8*, i8* }* %"$$retval_29_313"
}

define internal %Uint32 @"$fundef_26"(%"$$fundef_26_env_171"* %0, %TName_List_Int32* %1) {
entry:
  %"$$fundef_26_env_f_235" = getelementptr inbounds %"$$fundef_26_env_171", %"$$fundef_26_env_171"* %0, i32 0, i32 0
  %"$f_envload_236" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_f_235", align 8
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_236", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_26_env_g_237" = getelementptr inbounds %"$$fundef_26_env_171", %"$$fundef_26_env_171"* %0, i32 0, i32 1
  %"$g_envload_238" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_26_env_g_237", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_238", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_26_env_z_239" = getelementptr inbounds %"$$fundef_26_env_171", %"$$fundef_26_env_171"* %0, i32 0, i32 2
  %"$z_envload_240" = load %Uint32, %Uint32* %"$$fundef_26_env_z_239", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_240", %Uint32* %z, align 4
  %"$retval_27" = alloca %Uint32, align 8
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 2, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %entry
  %"$consume_245" = sub i64 %"$gasrem_241", 2
  store i64 %"$consume_245", i64* @_gasrem, align 8
  %"$l_tag_247" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %1, i32 0, i32 0
  %"$l_tag_248" = load i8, i8* %"$l_tag_247", align 1
  switch i8 %"$l_tag_248", label %"$empty_default_249" [
    i8 0, label %"$Cons_250"
    i8 1, label %"$Nil_293"
  ]

"$Cons_250":                                      ; preds = %"$have_gas_244"
  %"$l_251" = bitcast %TName_List_Int32* %1 to %CName_Cons_Int32*
  %"$h_gep_252" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_251", i32 0, i32 1
  %"$h_load_253" = load %Int32, %Int32* %"$h_gep_252", align 4
  %h = alloca %Int32, align 8
  store %Int32 %"$h_load_253", %Int32* %h, align 4
  %"$t_gep_254" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_251", i32 0, i32 2
  %"$t_load_255" = load %TName_List_Int32*, %TName_List_Int32** %"$t_gep_254", align 8
  %t = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$t_load_255", %TName_List_Int32** %t, align 8
  %"$gasrem_256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_257" = icmp ugt i64 1, %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %"$Cons_250"
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %"$Cons_250"
  %"$consume_260" = sub i64 %"$gasrem_256", 1
  store i64 %"$consume_260", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_259"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_259"
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %"$f_6" = alloca { %Uint32 (i8*, %Int32)*, i8* }, align 8
  %"$f_266" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_267" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_266", 0
  %"$f_envptr_268" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_266", 1
  %"$z_269" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_270" = call { %Uint32 (i8*, %Int32)*, i8* } %"$f_fptr_267"(i8* %"$f_envptr_268", %Uint32 %"$z_269")
  store { %Uint32 (i8*, %Int32)*, i8* } %"$f_call_270", { %Uint32 (i8*, %Int32)*, i8* }* %"$f_6", align 8
  %"$f_7" = alloca %Uint32, align 8
  %"$$f_6_271" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$f_6", align 8
  %"$$f_6_fptr_272" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_6_271", 0
  %"$$f_6_envptr_273" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_6_271", 1
  %"$h_274" = load %Int32, %Int32* %h, align 4
  %"$$f_6_call_275" = call %Uint32 %"$$f_6_fptr_272"(i8* %"$$f_6_envptr_273", %Int32 %"$h_274")
  store %Uint32 %"$$f_6_call_275", %Uint32* %"$f_7", align 4
  %"$$f_7_276" = load %Uint32, %Uint32* %"$f_7", align 4
  store %Uint32 %"$$f_7_276", %Uint32* %res, align 4
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_264"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_264"
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %"$g_8" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$g_282" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_283" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_282", 0
  %"$g_envptr_284" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_282", 1
  %"$res_285" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_286" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_fptr_283"(i8* %"$g_envptr_284", %Uint32 %"$res_285")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_call_286", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_8", align 8
  %"$g_9" = alloca %Uint32, align 8
  %"$$g_8_287" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_8", align 8
  %"$$g_8_fptr_288" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_8_287", 0
  %"$$g_8_envptr_289" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_8_287", 1
  %"$t_290" = load %TName_List_Int32*, %TName_List_Int32** %t, align 8
  %"$$g_8_call_291" = call %Uint32 %"$$g_8_fptr_288"(i8* %"$$g_8_envptr_289", %TName_List_Int32* %"$t_290")
  store %Uint32 %"$$g_8_call_291", %Uint32* %"$g_9", align 4
  %"$$g_9_292" = load %Uint32, %Uint32* %"$g_9", align 4
  store %Uint32 %"$$g_9_292", %Uint32* %"$retval_27", align 4
  br label %"$matchsucc_246"

"$Nil_293":                                       ; preds = %"$have_gas_244"
  %"$l_294" = bitcast %TName_List_Int32* %1 to %CName_Nil_Int32*
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 1, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$Nil_293"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$Nil_293"
  %"$consume_299" = sub i64 %"$gasrem_295", 1
  store i64 %"$consume_299", i64* @_gasrem, align 8
  %"$z_300" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_300", %Uint32* %"$retval_27", align 4
  br label %"$matchsucc_246"

"$empty_default_249":                             ; preds = %"$have_gas_244"
  br label %"$matchsucc_246"

"$matchsucc_246":                                 ; preds = %"$have_gas_298", %"$have_gas_280", %"$empty_default_249"
  %"$$retval_27_301" = load %Uint32, %Uint32* %"$retval_27", align 4
  ret %Uint32 %"$$retval_27_301"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_24"(%"$$fundef_24_env_172"* %0, %Uint32 %1) {
entry:
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
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$fundef_26_cloval_228", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_25", align 8
  %"$$retval_25_234" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_25", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_25_234"
}

define internal { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_22"(%"$$fundef_22_env_173"* %0, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1) {
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
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_24_cloval_205", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_24_env_f_206" = getelementptr inbounds %"$$fundef_24_env_172", %"$$fundef_24_env_172"* %"$$fundef_24_envp_202", i32 0, i32 0
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_f_206", align 8
  %"$$fundef_24_env_g_207" = getelementptr inbounds %"$$fundef_24_env_172", %"$$fundef_24_env_172"* %"$$fundef_24_envp_202", i32 0, i32 1
  %"$g_208" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_208", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_g_207", align 8
  %"$g_209" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_209", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_23", align 8
  %"$$retval_23_210" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_23", align 8
  ret { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_23_210"
}

define internal { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_20"(%"$$fundef_20_env_174"* %0) {
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
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_22_env_173"*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_22" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_21", align 8
  %"$$retval_21_196" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_21", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_21_196"
}

define internal { i8*, i8* }* @"$fundef_18"(%"$$fundef_18_env_175"* %0) {
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
  store { i8*, i8* }* %"$dyndisp_table_184", { i8*, i8* }** %"$retval_19", align 8
  %"$$retval_19_187" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_19", align 8
  ret { i8*, i8* }* %"$$retval_19_187"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  %"$gasrem_850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_851" = icmp ugt i64 5, %"$gasrem_850"
  br i1 %"$gascmp_851", label %"$out_of_gas_852", label %"$have_gas_853"

"$out_of_gas_852":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_853"

"$have_gas_853":                                  ; preds = %"$out_of_gas_852", %entry
  %"$consume_854" = sub i64 %"$gasrem_850", 5
  store i64 %"$consume_854", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_855" = load i64, i64* @_gasrem, align 8
  %"$gascmp_856" = icmp ugt i64 8, %"$gasrem_855"
  br i1 %"$gascmp_856", label %"$out_of_gas_857", label %"$have_gas_858"

"$out_of_gas_857":                                ; preds = %"$have_gas_853"
  call void @_out_of_gas()
  br label %"$have_gas_858"

"$have_gas_858":                                  ; preds = %"$out_of_gas_857", %"$have_gas_853"
  %"$consume_859" = sub i64 %"$gasrem_855", 8
  store i64 %"$consume_859", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_860" = load i64, i64* @_gasrem, align 8
  %"$gascmp_861" = icmp ugt i64 196, %"$gasrem_860"
  br i1 %"$gascmp_861", label %"$out_of_gas_862", label %"$have_gas_863"

"$out_of_gas_862":                                ; preds = %"$have_gas_858"
  call void @_out_of_gas()
  br label %"$have_gas_863"

"$have_gas_863":                                  ; preds = %"$out_of_gas_862", %"$have_gas_858"
  %"$consume_864" = sub i64 %"$gasrem_860", 196
  store i64 %"$consume_864", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_866" = icmp ugt i64 19, %"$gasrem_865"
  br i1 %"$gascmp_866", label %"$out_of_gas_867", label %"$have_gas_868"

"$out_of_gas_867":                                ; preds = %"$have_gas_863"
  call void @_out_of_gas()
  br label %"$have_gas_868"

"$have_gas_868":                                  ; preds = %"$out_of_gas_867", %"$have_gas_863"
  %"$consume_869" = sub i64 %"$gasrem_865", 19
  store i64 %"$consume_869", i64* @_gasrem, align 8
  store %Int32 { i32 19 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_870" = load i64, i64* @_gasrem, align 8
  %"$gascmp_871" = icmp ugt i64 1, %"$gasrem_870"
  br i1 %"$gascmp_871", label %"$out_of_gas_872", label %"$have_gas_873"

"$out_of_gas_872":                                ; preds = %"$have_gas_868"
  call void @_out_of_gas()
  br label %"$have_gas_873"

"$have_gas_873":                                  ; preds = %"$out_of_gas_872", %"$have_gas_868"
  %"$consume_874" = sub i64 %"$gasrem_870", 1
  store i64 %"$consume_874", i64* @_gasrem, align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  %"$dyndisp_table_881_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_881_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_881_salloc_load", i64 48)
  %"$dyndisp_table_881_salloc" = bitcast i8* %"$dyndisp_table_881_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_881" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_881_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_882" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_881", i32 0
  %"$dyndisp_pcast_883" = bitcast { i8*, i8* }* %"$dyndisp_gep_882" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_18_env_175"*)* @"$fundef_18" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_883", align 8
  %"$dyndisp_gep_884" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_881", i32 2
  %"$dyndisp_pcast_885" = bitcast { i8*, i8* }* %"$dyndisp_gep_884" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_28_env_170"*)* @"$fundef_28" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_885", align 8
  store { i8*, i8* }* %"$dyndisp_table_881", { i8*, i8* }** %list_foldl, align 8
  %"$$fundef_38_envp_886_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_38_envp_886_salloc" = call i8* @_salloc(i8* %"$$fundef_38_envp_886_load", i64 8)
  %"$$fundef_38_envp_886" = bitcast i8* %"$$fundef_38_envp_886_salloc" to %"$$fundef_38_env_165"*
  %"$$fundef_38_env_voidp_888" = bitcast %"$$fundef_38_env_165"* %"$$fundef_38_envp_886" to i8*
  %"$$fundef_38_cloval_889" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_38_env_165"*)* @"$fundef_38" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_38_env_voidp_888", 1
  %"$$fundef_38_env_list_foldl_890" = getelementptr inbounds %"$$fundef_38_env_165", %"$$fundef_38_env_165"* %"$$fundef_38_envp_886", i32 0, i32 0
  %"$list_foldl_891" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  store { i8*, i8* }* %"$list_foldl_891", { i8*, i8* }** %"$$fundef_38_env_list_foldl_890", align 8
  %"$$fundef_44_env_voidp_893" = bitcast %"$$fundef_38_env_165"* %"$$fundef_38_envp_886" to i8*
  %"$$fundef_44_cloval_894" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_44_env_162"*)* @"$fundef_44" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_44_env_voidp_893", 1
  %"$dyndisp_table_895_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_895_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_895_salloc_load", i64 48)
  %"$dyndisp_table_895_salloc" = bitcast i8* %"$dyndisp_table_895_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_895" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_895_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_896" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_895", i32 0
  %"$dyndisp_pcast_897" = bitcast { i8*, i8* }* %"$dyndisp_gep_896" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$$fundef_38_cloval_889", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_897", align 8
  %"$dyndisp_gep_898" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_895", i32 2
  %"$dyndisp_pcast_899" = bitcast { i8*, i8* }* %"$dyndisp_gep_898" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$$fundef_44_cloval_894", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_899", align 8
  store { i8*, i8* }* %"$dyndisp_table_895", { i8*, i8* }** @ListUtils.list_length, align 8
  %"$gasrem_900" = load i64, i64* @_gasrem, align 8
  %"$gascmp_901" = icmp ugt i64 12, %"$gasrem_900"
  br i1 %"$gascmp_901", label %"$out_of_gas_902", label %"$have_gas_903"

"$out_of_gas_902":                                ; preds = %"$have_gas_873"
  call void @_out_of_gas()
  br label %"$have_gas_903"

"$have_gas_903":                                  ; preds = %"$out_of_gas_902", %"$have_gas_873"
  %"$consume_904" = sub i64 %"$gasrem_900", 12
  store i64 %"$consume_904", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_905" = load i64, i64* @_gasrem, align 8
  %"$gascmp_906" = icmp ugt i64 2, %"$gasrem_905"
  br i1 %"$gascmp_906", label %"$out_of_gas_907", label %"$have_gas_908"

"$out_of_gas_907":                                ; preds = %"$have_gas_903"
  call void @_out_of_gas()
  br label %"$have_gas_908"

"$have_gas_908":                                  ; preds = %"$out_of_gas_907", %"$have_gas_903"
  %"$consume_909" = sub i64 %"$gasrem_905", 2
  store i64 %"$consume_909", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_50" = alloca %Uint32, align 8
  %"$gasrem_910" = load i64, i64* @_gasrem, align 8
  %"$gascmp_911" = icmp ugt i64 1, %"$gasrem_910"
  br i1 %"$gascmp_911", label %"$out_of_gas_912", label %"$have_gas_913"

"$out_of_gas_912":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_913"

"$have_gas_913":                                  ; preds = %"$out_of_gas_912", %entry
  %"$consume_914" = sub i64 %"$gasrem_910", 1
  store i64 %"$consume_914", i64* @_gasrem, align 8
  %t1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_915" = load i64, i64* @_gasrem, align 8
  %"$gascmp_916" = icmp ugt i64 1, %"$gasrem_915"
  br i1 %"$gascmp_916", label %"$out_of_gas_917", label %"$have_gas_918"

"$out_of_gas_917":                                ; preds = %"$have_gas_913"
  call void @_out_of_gas()
  br label %"$have_gas_918"

"$have_gas_918":                                  ; preds = %"$out_of_gas_917", %"$have_gas_913"
  %"$consume_919" = sub i64 %"$gasrem_915", 1
  store i64 %"$consume_919", i64* @_gasrem, align 8
  %"$dyndisp_table_926_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_926_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_926_salloc_load", i64 48)
  %"$dyndisp_table_926_salloc" = bitcast i8* %"$dyndisp_table_926_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_926" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_926_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_927" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_926", i32 0
  %"$dyndisp_pcast_928" = bitcast { i8*, i8* }* %"$dyndisp_gep_927" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_51_env_159"*)* @"$fundef_51" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_928", align 8
  %"$dyndisp_gep_929" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_926", i32 2
  %"$dyndisp_pcast_930" = bitcast { i8*, i8* }* %"$dyndisp_gep_929" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_55_env_157"*)* @"$fundef_55" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_930", align 8
  store { i8*, i8* }* %"$dyndisp_table_926", { i8*, i8* }** %t1, align 8
  %"$gasrem_931" = load i64, i64* @_gasrem, align 8
  %"$gascmp_932" = icmp ugt i64 1, %"$gasrem_931"
  br i1 %"$gascmp_932", label %"$out_of_gas_933", label %"$have_gas_934"

"$out_of_gas_933":                                ; preds = %"$have_gas_918"
  call void @_out_of_gas()
  br label %"$have_gas_934"

"$have_gas_934":                                  ; preds = %"$out_of_gas_933", %"$have_gas_918"
  %"$consume_935" = sub i64 %"$gasrem_931", 1
  store i64 %"$consume_935", i64* @_gasrem, align 8
  %t2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_937" = icmp ugt i64 1, %"$gasrem_936"
  br i1 %"$gascmp_937", label %"$out_of_gas_938", label %"$have_gas_939"

"$out_of_gas_938":                                ; preds = %"$have_gas_934"
  call void @_out_of_gas()
  br label %"$have_gas_939"

"$have_gas_939":                                  ; preds = %"$out_of_gas_938", %"$have_gas_934"
  %"$consume_940" = sub i64 %"$gasrem_936", 1
  store i64 %"$consume_940", i64* @_gasrem, align 8
  %"$dyndisp_table_947_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_947_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_947_salloc_load", i64 48)
  %"$dyndisp_table_947_salloc" = bitcast i8* %"$dyndisp_table_947_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_947" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_947_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_948" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_947", i32 0
  %"$dyndisp_pcast_949" = bitcast { i8*, i8* }* %"$dyndisp_gep_948" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_59_env_155"*)* @"$fundef_59" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_949", align 8
  %"$dyndisp_gep_950" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_947", i32 2
  %"$dyndisp_pcast_951" = bitcast { i8*, i8* }* %"$dyndisp_gep_950" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_63_env_153"*)* @"$fundef_63" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_951", align 8
  store { i8*, i8* }* %"$dyndisp_table_947", { i8*, i8* }** %t2, align 8
  %"$gasrem_952" = load i64, i64* @_gasrem, align 8
  %"$gascmp_953" = icmp ugt i64 1, %"$gasrem_952"
  br i1 %"$gascmp_953", label %"$out_of_gas_954", label %"$have_gas_955"

"$out_of_gas_954":                                ; preds = %"$have_gas_939"
  call void @_out_of_gas()
  br label %"$have_gas_955"

"$have_gas_955":                                  ; preds = %"$out_of_gas_954", %"$have_gas_939"
  %"$consume_956" = sub i64 %"$gasrem_952", 1
  store i64 %"$consume_956", i64* @_gasrem, align 8
  %t = alloca { i8*, i8* }*, align 8
  %"$gasrem_957" = load i64, i64* @_gasrem, align 8
  %"$gascmp_958" = icmp ugt i64 1, %"$gasrem_957"
  br i1 %"$gascmp_958", label %"$out_of_gas_959", label %"$have_gas_960"

"$out_of_gas_959":                                ; preds = %"$have_gas_955"
  call void @_out_of_gas()
  br label %"$have_gas_960"

"$have_gas_960":                                  ; preds = %"$out_of_gas_959", %"$have_gas_955"
  %"$consume_961" = sub i64 %"$gasrem_957", 1
  store i64 %"$consume_961", i64* @_gasrem, align 8
  %"$dyndisp_table_968_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_968_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_968_salloc_load", i64 48)
  %"$dyndisp_table_968_salloc" = bitcast i8* %"$dyndisp_table_968_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_968" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_968_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_969" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_968", i32 0
  %"$dyndisp_pcast_970" = bitcast { i8*, i8* }* %"$dyndisp_gep_969" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_67_env_151"*)* @"$fundef_67" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_970", align 8
  %"$dyndisp_gep_971" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_968", i32 2
  %"$dyndisp_pcast_972" = bitcast { i8*, i8* }* %"$dyndisp_gep_971" to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  store { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)* bitcast ({ { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_71_env_149"*)* @"$fundef_71" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*), i8* null }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_972", align 8
  store { i8*, i8* }* %"$dyndisp_table_968", { i8*, i8* }** %t, align 8
  %"$gasrem_973" = load i64, i64* @_gasrem, align 8
  %"$gascmp_974" = icmp ugt i64 1, %"$gasrem_973"
  br i1 %"$gascmp_974", label %"$out_of_gas_975", label %"$have_gas_976"

"$out_of_gas_975":                                ; preds = %"$have_gas_960"
  call void @_out_of_gas()
  br label %"$have_gas_976"

"$have_gas_976":                                  ; preds = %"$out_of_gas_975", %"$have_gas_960"
  %"$consume_977" = sub i64 %"$gasrem_973", 1
  store i64 %"$consume_977", i64* @_gasrem, align 8
  %some_bool = alloca %TName_Bool*, align 8
  %"$gasrem_978" = load i64, i64* @_gasrem, align 8
  %"$gascmp_979" = icmp ugt i64 1, %"$gasrem_978"
  br i1 %"$gascmp_979", label %"$out_of_gas_980", label %"$have_gas_981"

"$out_of_gas_980":                                ; preds = %"$have_gas_976"
  call void @_out_of_gas()
  br label %"$have_gas_981"

"$have_gas_981":                                  ; preds = %"$out_of_gas_980", %"$have_gas_976"
  %"$consume_982" = sub i64 %"$gasrem_978", 1
  store i64 %"$consume_982", i64* @_gasrem, align 8
  %"$adtval_983_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_983_salloc" = call i8* @_salloc(i8* %"$adtval_983_load", i64 1)
  %"$adtval_983" = bitcast i8* %"$adtval_983_salloc" to %CName_False*
  %"$adtgep_984" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_983", i32 0, i32 0
  store i8 1, i8* %"$adtgep_984", align 1
  %"$adtptr_985" = bitcast %CName_False* %"$adtval_983" to %TName_Bool*
  store %TName_Bool* %"$adtptr_985", %TName_Bool** %some_bool, align 8
  %"$gasrem_986" = load i64, i64* @_gasrem, align 8
  %"$gascmp_987" = icmp ugt i64 2, %"$gasrem_986"
  br i1 %"$gascmp_987", label %"$out_of_gas_988", label %"$have_gas_989"

"$out_of_gas_988":                                ; preds = %"$have_gas_981"
  call void @_out_of_gas()
  br label %"$have_gas_989"

"$have_gas_989":                                  ; preds = %"$out_of_gas_988", %"$have_gas_981"
  %"$consume_990" = sub i64 %"$gasrem_986", 2
  store i64 %"$consume_990", i64* @_gasrem, align 8
  %"$some_bool_992" = load %TName_Bool*, %TName_Bool** %some_bool, align 8
  %"$some_bool_tag_993" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool_992", i32 0, i32 0
  %"$some_bool_tag_994" = load i8, i8* %"$some_bool_tag_993", align 1
  switch i8 %"$some_bool_tag_994", label %"$empty_default_995" [
    i8 0, label %"$True_996"
    i8 1, label %"$False_1085"
  ]

"$True_996":                                      ; preds = %"$have_gas_989"
  %"$some_bool_997" = bitcast %TName_Bool* %"$some_bool_992" to %CName_True*
  %"$gasrem_998" = load i64, i64* @_gasrem, align 8
  %"$gascmp_999" = icmp ugt i64 1, %"$gasrem_998"
  br i1 %"$gascmp_999", label %"$out_of_gas_1000", label %"$have_gas_1001"

"$out_of_gas_1000":                               ; preds = %"$True_996"
  call void @_out_of_gas()
  br label %"$have_gas_1001"

"$have_gas_1001":                                 ; preds = %"$out_of_gas_1000", %"$True_996"
  %"$consume_1002" = sub i64 %"$gasrem_998", 1
  store i64 %"$consume_1002", i64* @_gasrem, align 8
  %f11 = alloca { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_1003" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1004" = icmp ugt i64 1, %"$gasrem_1003"
  br i1 %"$gascmp_1004", label %"$out_of_gas_1005", label %"$have_gas_1006"

"$out_of_gas_1005":                               ; preds = %"$have_gas_1001"
  call void @_out_of_gas()
  br label %"$have_gas_1006"

"$have_gas_1006":                                 ; preds = %"$out_of_gas_1005", %"$have_gas_1001"
  %"$consume_1007" = sub i64 %"$gasrem_1003", 1
  store i64 %"$consume_1007", i64* @_gasrem, align 8
  %"$t_1008" = load { i8*, i8* }*, { i8*, i8* }** %t, align 8
  %"$t_1009" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_1008", i32 0
  %"$t_1010" = bitcast { i8*, i8* }* %"$t_1009" to { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_1011" = load { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_1010", align 8
  %"$t_fptr_1012" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_1011", 0
  %"$t_envptr_1013" = extractvalue { { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_1011", 1
  %"$t_call_1014" = call { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_1012"(i8* %"$t_envptr_1013")
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_1014", { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11, align 8
  %"$gasrem_1015" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1016" = icmp ugt i64 1, %"$gasrem_1015"
  br i1 %"$gascmp_1016", label %"$out_of_gas_1017", label %"$have_gas_1018"

"$out_of_gas_1017":                               ; preds = %"$have_gas_1006"
  call void @_out_of_gas()
  br label %"$have_gas_1018"

"$have_gas_1018":                                 ; preds = %"$out_of_gas_1017", %"$have_gas_1006"
  %"$consume_1019" = sub i64 %"$gasrem_1015", 1
  store i64 %"$consume_1019", i64* @_gasrem, align 8
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_1020" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1021" = icmp ugt i64 1, %"$gasrem_1020"
  br i1 %"$gascmp_1021", label %"$out_of_gas_1022", label %"$have_gas_1023"

"$out_of_gas_1022":                               ; preds = %"$have_gas_1018"
  call void @_out_of_gas()
  br label %"$have_gas_1023"

"$have_gas_1023":                                 ; preds = %"$out_of_gas_1022", %"$have_gas_1018"
  %"$consume_1024" = sub i64 %"$gasrem_1020", 1
  store i64 %"$consume_1024", i64* @_gasrem, align 8
  %"$f11_12" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$f11_1025" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f11, align 8
  %"$f11_fptr_1026" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_1025", 0
  %"$f11_envptr_1027" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f11_1025", 1
  %"$t1_1028" = load { i8*, i8* }*, { i8*, i8* }** %t1, align 8
  %"$f11_call_1029" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_fptr_1026"(i8* %"$f11_envptr_1027", { i8*, i8* }* %"$t1_1028")
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f11_call_1029", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_12", align 8
  %"$$f11_12_1030" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$f11_12", align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$f11_12_1030", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8
  %"$gasrem_1031" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1032" = icmp ugt i64 1, %"$gasrem_1031"
  br i1 %"$gascmp_1032", label %"$out_of_gas_1033", label %"$have_gas_1034"

"$out_of_gas_1033":                               ; preds = %"$have_gas_1023"
  call void @_out_of_gas()
  br label %"$have_gas_1034"

"$have_gas_1034":                                 ; preds = %"$out_of_gas_1033", %"$have_gas_1023"
  %"$consume_1035" = sub i64 %"$gasrem_1031", 1
  store i64 %"$consume_1035", i64* @_gasrem, align 8
  %len = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_1036" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1037" = icmp ugt i64 1, %"$gasrem_1036"
  br i1 %"$gascmp_1037", label %"$out_of_gas_1038", label %"$have_gas_1039"

"$out_of_gas_1038":                               ; preds = %"$have_gas_1034"
  call void @_out_of_gas()
  br label %"$have_gas_1039"

"$have_gas_1039":                                 ; preds = %"$out_of_gas_1038", %"$have_gas_1034"
  %"$consume_1040" = sub i64 %"$gasrem_1036", 1
  store i64 %"$consume_1040", i64* @_gasrem, align 8
  %"$ListUtils.list_length_1041" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_1042" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_1041", i32 0
  %"$ListUtils.list_length_1043" = bitcast { i8*, i8* }* %"$ListUtils.list_length_1042" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1044" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_1043", align 8
  %"$ListUtils.list_length_fptr_1045" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1044", 0
  %"$ListUtils.list_length_envptr_1046" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1044", 1
  %"$ListUtils.list_length_call_1047" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_fptr_1045"(i8* %"$ListUtils.list_length_envptr_1046")
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_call_1047", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8
  %"$gasrem_1048" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1049" = icmp ugt i64 1, %"$gasrem_1048"
  br i1 %"$gascmp_1049", label %"$out_of_gas_1050", label %"$have_gas_1051"

"$out_of_gas_1050":                               ; preds = %"$have_gas_1039"
  call void @_out_of_gas()
  br label %"$have_gas_1051"

"$have_gas_1051":                                 ; preds = %"$out_of_gas_1050", %"$have_gas_1039"
  %"$consume_1052" = sub i64 %"$gasrem_1048", 1
  store i64 %"$consume_1052", i64* @_gasrem, align 8
  %one = alloca %Int32, align 8
  %"$gasrem_1053" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1054" = icmp ugt i64 1, %"$gasrem_1053"
  br i1 %"$gascmp_1054", label %"$out_of_gas_1055", label %"$have_gas_1056"

"$out_of_gas_1055":                               ; preds = %"$have_gas_1051"
  call void @_out_of_gas()
  br label %"$have_gas_1056"

"$have_gas_1056":                                 ; preds = %"$out_of_gas_1055", %"$have_gas_1051"
  %"$consume_1057" = sub i64 %"$gasrem_1053", 1
  store i64 %"$consume_1057", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %one, align 4
  %"$gasrem_1058" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1059" = icmp ugt i64 1, %"$gasrem_1058"
  br i1 %"$gascmp_1059", label %"$out_of_gas_1060", label %"$have_gas_1061"

"$out_of_gas_1060":                               ; preds = %"$have_gas_1056"
  call void @_out_of_gas()
  br label %"$have_gas_1061"

"$have_gas_1061":                                 ; preds = %"$out_of_gas_1060", %"$have_gas_1056"
  %"$consume_1062" = sub i64 %"$gasrem_1058", 1
  store i64 %"$consume_1062", i64* @_gasrem, align 8
  %f1l = alloca %TName_List_Int32*, align 8
  %"$gasrem_1063" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1064" = icmp ugt i64 1, %"$gasrem_1063"
  br i1 %"$gascmp_1064", label %"$out_of_gas_1065", label %"$have_gas_1066"

"$out_of_gas_1065":                               ; preds = %"$have_gas_1061"
  call void @_out_of_gas()
  br label %"$have_gas_1066"

"$have_gas_1066":                                 ; preds = %"$out_of_gas_1065", %"$have_gas_1061"
  %"$consume_1067" = sub i64 %"$gasrem_1063", 1
  store i64 %"$consume_1067", i64* @_gasrem, align 8
  %"$f1_13" = alloca %TName_List_Int32*, align 8
  %"$f1_1068" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8
  %"$f1_fptr_1069" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_1068", 0
  %"$f1_envptr_1070" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_1068", 1
  %"$one_1071" = load %Int32, %Int32* %one, align 4
  %"$f1_call_1072" = call %TName_List_Int32* %"$f1_fptr_1069"(i8* %"$f1_envptr_1070", %Int32 %"$one_1071")
  store %TName_List_Int32* %"$f1_call_1072", %TName_List_Int32** %"$f1_13", align 8
  %"$$f1_13_1073" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_13", align 8
  store %TName_List_Int32* %"$$f1_13_1073", %TName_List_Int32** %f1l, align 8
  %"$gasrem_1074" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1075" = icmp ugt i64 1, %"$gasrem_1074"
  br i1 %"$gascmp_1075", label %"$out_of_gas_1076", label %"$have_gas_1077"

"$out_of_gas_1076":                               ; preds = %"$have_gas_1066"
  call void @_out_of_gas()
  br label %"$have_gas_1077"

"$have_gas_1077":                                 ; preds = %"$out_of_gas_1076", %"$have_gas_1066"
  %"$consume_1078" = sub i64 %"$gasrem_1074", 1
  store i64 %"$consume_1078", i64* @_gasrem, align 8
  %"$len_14" = alloca %Uint32, align 8
  %"$len_1079" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8
  %"$len_fptr_1080" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_1079", 0
  %"$len_envptr_1081" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_1079", 1
  %"$f1l_1082" = load %TName_List_Int32*, %TName_List_Int32** %f1l, align 8
  %"$len_call_1083" = call %Uint32 %"$len_fptr_1080"(i8* %"$len_envptr_1081", %TName_List_Int32* %"$f1l_1082")
  store %Uint32 %"$len_call_1083", %Uint32* %"$len_14", align 4
  %"$$len_14_1084" = load %Uint32, %Uint32* %"$len_14", align 4
  store %Uint32 %"$$len_14_1084", %Uint32* %"$expr_50", align 4
  br label %"$matchsucc_991"

"$False_1085":                                    ; preds = %"$have_gas_989"
  %"$some_bool_1086" = bitcast %TName_Bool* %"$some_bool_992" to %CName_False*
  %"$gasrem_1087" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1088" = icmp ugt i64 1, %"$gasrem_1087"
  br i1 %"$gascmp_1088", label %"$out_of_gas_1089", label %"$have_gas_1090"

"$out_of_gas_1089":                               ; preds = %"$False_1085"
  call void @_out_of_gas()
  br label %"$have_gas_1090"

"$have_gas_1090":                                 ; preds = %"$out_of_gas_1089", %"$False_1085"
  %"$consume_1091" = sub i64 %"$gasrem_1087", 1
  store i64 %"$consume_1091", i64* @_gasrem, align 8
  %f22 = alloca { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_1092" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1093" = icmp ugt i64 1, %"$gasrem_1092"
  br i1 %"$gascmp_1093", label %"$out_of_gas_1094", label %"$have_gas_1095"

"$out_of_gas_1094":                               ; preds = %"$have_gas_1090"
  call void @_out_of_gas()
  br label %"$have_gas_1095"

"$have_gas_1095":                                 ; preds = %"$out_of_gas_1094", %"$have_gas_1090"
  %"$consume_1096" = sub i64 %"$gasrem_1092", 1
  store i64 %"$consume_1096", i64* @_gasrem, align 8
  %"$t_1097" = load { i8*, i8* }*, { i8*, i8* }** %t, align 8
  %"$t_1098" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$t_1097", i32 2
  %"$t_1099" = bitcast { i8*, i8* }* %"$t_1098" to { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }*
  %"$t_1100" = load { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }, { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* }* %"$t_1099", align 8
  %"$t_fptr_1101" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_1100", 0
  %"$t_envptr_1102" = extractvalue { { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*)*, i8* } %"$t_1100", 1
  %"$t_call_1103" = call { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_1101"(i8* %"$t_envptr_1102")
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_1103", { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22, align 8
  %"$gasrem_1104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1105" = icmp ugt i64 1, %"$gasrem_1104"
  br i1 %"$gascmp_1105", label %"$out_of_gas_1106", label %"$have_gas_1107"

"$out_of_gas_1106":                               ; preds = %"$have_gas_1095"
  call void @_out_of_gas()
  br label %"$have_gas_1107"

"$have_gas_1107":                                 ; preds = %"$out_of_gas_1106", %"$have_gas_1095"
  %"$consume_1108" = sub i64 %"$gasrem_1104", 1
  store i64 %"$consume_1108", i64* @_gasrem, align 8
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_1109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1110" = icmp ugt i64 1, %"$gasrem_1109"
  br i1 %"$gascmp_1110", label %"$out_of_gas_1111", label %"$have_gas_1112"

"$out_of_gas_1111":                               ; preds = %"$have_gas_1107"
  call void @_out_of_gas()
  br label %"$have_gas_1112"

"$have_gas_1112":                                 ; preds = %"$out_of_gas_1111", %"$have_gas_1107"
  %"$consume_1113" = sub i64 %"$gasrem_1109", 1
  store i64 %"$consume_1113", i64* @_gasrem, align 8
  %"$f22_15" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$f22_1114" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %f22, align 8
  %"$f22_fptr_1115" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_1114", 0
  %"$f22_envptr_1116" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$f22_1114", 1
  %"$t2_1117" = load { i8*, i8* }*, { i8*, i8* }** %t2, align 8
  %"$f22_call_1118" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_fptr_1115"(i8* %"$f22_envptr_1116", { i8*, i8* }* %"$t2_1117")
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f22_call_1118", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_15", align 8
  %"$$f22_15_1119" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$f22_15", align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$f22_15_1119", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8
  %"$gasrem_1120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1121" = icmp ugt i64 1, %"$gasrem_1120"
  br i1 %"$gascmp_1121", label %"$out_of_gas_1122", label %"$have_gas_1123"

"$out_of_gas_1122":                               ; preds = %"$have_gas_1112"
  call void @_out_of_gas()
  br label %"$have_gas_1123"

"$have_gas_1123":                                 ; preds = %"$out_of_gas_1122", %"$have_gas_1112"
  %"$consume_1124" = sub i64 %"$gasrem_1120", 1
  store i64 %"$consume_1124", i64* @_gasrem, align 8
  %len1 = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_1125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1126" = icmp ugt i64 1, %"$gasrem_1125"
  br i1 %"$gascmp_1126", label %"$out_of_gas_1127", label %"$have_gas_1128"

"$out_of_gas_1127":                               ; preds = %"$have_gas_1123"
  call void @_out_of_gas()
  br label %"$have_gas_1128"

"$have_gas_1128":                                 ; preds = %"$out_of_gas_1127", %"$have_gas_1123"
  %"$consume_1129" = sub i64 %"$gasrem_1125", 1
  store i64 %"$consume_1129", i64* @_gasrem, align 8
  %"$ListUtils.list_length_1130" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_1131" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_1130", i32 2
  %"$ListUtils.list_length_1132" = bitcast { i8*, i8* }* %"$ListUtils.list_length_1131" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1133" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_1132", align 8
  %"$ListUtils.list_length_fptr_1134" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1133", 0
  %"$ListUtils.list_length_envptr_1135" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1133", 1
  %"$ListUtils.list_length_call_1136" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_fptr_1134"(i8* %"$ListUtils.list_length_envptr_1135")
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_call_1136", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8
  %"$gasrem_1137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1138" = icmp ugt i64 1, %"$gasrem_1137"
  br i1 %"$gascmp_1138", label %"$out_of_gas_1139", label %"$have_gas_1140"

"$out_of_gas_1139":                               ; preds = %"$have_gas_1128"
  call void @_out_of_gas()
  br label %"$have_gas_1140"

"$have_gas_1140":                                 ; preds = %"$out_of_gas_1139", %"$have_gas_1128"
  %"$consume_1141" = sub i64 %"$gasrem_1137", 1
  store i64 %"$consume_1141", i64* @_gasrem, align 8
  %one2 = alloca %Int64, align 8
  %"$gasrem_1142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1143" = icmp ugt i64 1, %"$gasrem_1142"
  br i1 %"$gascmp_1143", label %"$out_of_gas_1144", label %"$have_gas_1145"

"$out_of_gas_1144":                               ; preds = %"$have_gas_1140"
  call void @_out_of_gas()
  br label %"$have_gas_1145"

"$have_gas_1145":                                 ; preds = %"$out_of_gas_1144", %"$have_gas_1140"
  %"$consume_1146" = sub i64 %"$gasrem_1142", 1
  store i64 %"$consume_1146", i64* @_gasrem, align 8
  store %Int64 { i64 1 }, %Int64* %one2, align 8
  %"$gasrem_1147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1148" = icmp ugt i64 1, %"$gasrem_1147"
  br i1 %"$gascmp_1148", label %"$out_of_gas_1149", label %"$have_gas_1150"

"$out_of_gas_1149":                               ; preds = %"$have_gas_1145"
  call void @_out_of_gas()
  br label %"$have_gas_1150"

"$have_gas_1150":                                 ; preds = %"$out_of_gas_1149", %"$have_gas_1145"
  %"$consume_1151" = sub i64 %"$gasrem_1147", 1
  store i64 %"$consume_1151", i64* @_gasrem, align 8
  %f2l = alloca %TName_List_Int64*, align 8
  %"$gasrem_1152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1153" = icmp ugt i64 1, %"$gasrem_1152"
  br i1 %"$gascmp_1153", label %"$out_of_gas_1154", label %"$have_gas_1155"

"$out_of_gas_1154":                               ; preds = %"$have_gas_1150"
  call void @_out_of_gas()
  br label %"$have_gas_1155"

"$have_gas_1155":                                 ; preds = %"$out_of_gas_1154", %"$have_gas_1150"
  %"$consume_1156" = sub i64 %"$gasrem_1152", 1
  store i64 %"$consume_1156", i64* @_gasrem, align 8
  %"$f2_16" = alloca %TName_List_Int64*, align 8
  %"$f2_1157" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8
  %"$f2_fptr_1158" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1157", 0
  %"$f2_envptr_1159" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1157", 1
  %"$one_1160" = load %Int64, %Int64* %one2, align 8
  %"$f2_call_1161" = call %TName_List_Int64* %"$f2_fptr_1158"(i8* %"$f2_envptr_1159", %Int64 %"$one_1160")
  store %TName_List_Int64* %"$f2_call_1161", %TName_List_Int64** %"$f2_16", align 8
  %"$$f2_16_1162" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_16", align 8
  store %TName_List_Int64* %"$$f2_16_1162", %TName_List_Int64** %f2l, align 8
  %"$gasrem_1163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1164" = icmp ugt i64 1, %"$gasrem_1163"
  br i1 %"$gascmp_1164", label %"$out_of_gas_1165", label %"$have_gas_1166"

"$out_of_gas_1165":                               ; preds = %"$have_gas_1155"
  call void @_out_of_gas()
  br label %"$have_gas_1166"

"$have_gas_1166":                                 ; preds = %"$out_of_gas_1165", %"$have_gas_1155"
  %"$consume_1167" = sub i64 %"$gasrem_1163", 1
  store i64 %"$consume_1167", i64* @_gasrem, align 8
  %"$len_17" = alloca %Uint32, align 8
  %"$len_1168" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8
  %"$len_fptr_1169" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1168", 0
  %"$len_envptr_1170" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1168", 1
  %"$f2l_1171" = load %TName_List_Int64*, %TName_List_Int64** %f2l, align 8
  %"$len_call_1172" = call %Uint32 %"$len_fptr_1169"(i8* %"$len_envptr_1170", %TName_List_Int64* %"$f2l_1171")
  store %Uint32 %"$len_call_1172", %Uint32* %"$len_17", align 4
  %"$$len_17_1173" = load %Uint32, %Uint32* %"$len_17", align 4
  store %Uint32 %"$$len_17_1173", %Uint32* %"$expr_50", align 4
  br label %"$matchsucc_991"

"$empty_default_995":                             ; preds = %"$have_gas_989"
  br label %"$matchsucc_991"

"$matchsucc_991":                                 ; preds = %"$have_gas_1166", %"$have_gas_1077", %"$empty_default_995"
  %"$$expr_50_1174" = load %Uint32, %Uint32* %"$expr_50", align 4
  ret %Uint32 %"$$expr_50_1174"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1175" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_1176" = alloca %Uint32, align 8
  %"$memvoidcast_1177" = bitcast %Uint32* %"$pval_1176" to i8*
  store %Uint32 %"$exprval_1175", %Uint32* %"$pval_1176", align 4
  %"$execptr_load_1178" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1178", %_TyDescrTy_Typ* @"$TyDescr_Uint32_79", i8* %"$memvoidcast_1177")
  ret void
}
