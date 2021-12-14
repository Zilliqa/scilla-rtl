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
; | True => t2
; | False => t1
; end
; in
; 
; let some_bool2 = False in
; match some_bool2 with
; | True =>
; let f1 = @f Int32 in
; let len = @list_length Int32 in
; let one = Int32 1 in
; let f1l = f1 one in
; len f1l
; | False =>
; let f2 = @f Int64 in
; let len = @list_length Int64 in
; let one = Int64 1 in
; let f2l = f2 one in
; len f2l
; end
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_65" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_95" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_94"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_94" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_96"**, %"$TyDescrTy_ADTTyp_95"* }
%"$TyDescrTy_ADTTyp_Constr_96" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_1112" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1113" = type { %ParamDescrString, i32, %"$ParamDescr_1112"* }
%TName_List_Int64 = type { i8, %CName_Cons_Int64*, %CName_Nil_Int64* }
%CName_Cons_Int64 = type <{ i8, %Int64, %TName_List_Int64* }>
%CName_Nil_Int64 = type <{ i8 }>
%"$$fundef_63_env_136" = type {}
%Int64 = type { i64 }
%"$$fundef_61_env_137" = type {}
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>
%"$$fundef_59_env_138" = type {}
%"$$fundef_57_env_139" = type {}
%"$$fundef_55_env_140" = type {}
%"$$fundef_53_env_141" = type {}
%"$$fundef_51_env_142" = type {}
%"$$fundef_49_env_143" = type {}
%Uint32 = type { i32 }
%"$$fundef_46_env_144" = type { %Uint32, %Uint32 }
%"$$fundef_44_env_145" = type { %Uint32 }
%"$$fundef_42_env_146" = type { { i8*, i8* }* }
%"$$fundef_40_env_147" = type { %Uint32, %Uint32 }
%"$$fundef_38_env_148" = type { %Uint32 }
%"$$fundef_36_env_149" = type { { i8*, i8* }* }
%"$$fundef_34_env_150" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_32_env_151" = type { { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_30_env_152" = type {}
%"$$fundef_28_env_153" = type {}
%"$$fundef_26_env_154" = type {}
%"$$fundef_24_env_155" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, %Uint32 }
%"$$fundef_22_env_156" = type { { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_20_env_157" = type {}
%"$$fundef_18_env_158" = type {}
%"$$fundef_16_env_159" = type {}
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

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
@"$TyDescr_Bystr_Prim_92" = global %"$TyDescrTy_PrimTyp_65" { i32 7, i32 0 }
@"$TyDescr_Bystr_93" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_65"* @"$TyDescr_Bystr_Prim_92" to i8*) }
@"$TyDescr_ADT_Bool_97" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_94"* @"$TyDescr_Bool_ADTTyp_Specl_112" to i8*) }
@"$TyDescr_ADT_List_Int64_98" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_94"* @"$TyDescr_List_Int64_ADTTyp_Specl_124" to i8*) }
@"$TyDescr_ADT_List_Int32_99" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_94"* @"$TyDescr_List_Int32_ADTTyp_Specl_133" to i8*) }
@"$TyDescr_Bool_ADTTyp_103" = unnamed_addr constant %"$TyDescrTy_ADTTyp_95" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_114", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_94"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_94"*], [1 x %"$TyDescrTy_ADTTyp_Specl_94"*]* @"$TyDescr_Bool_ADTTyp_m_specls_113", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_104" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_105" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_106" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_96" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_105", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_104", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_107" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_108" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_109" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_96" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_108", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_107", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_110" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_96"*] [%"$TyDescrTy_ADTTyp_Constr_96"* @"$TyDescr_Bool_True_ADTTyp_Constr_106", %"$TyDescrTy_ADTTyp_Constr_96"* @"$TyDescr_Bool_False_ADTTyp_Constr_109"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_111" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_112" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_94" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_111", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_96"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_96"*], [2 x %"$TyDescrTy_ADTTyp_Constr_96"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_110", i32 0, i32 0), %"$TyDescrTy_ADTTyp_95"* @"$TyDescr_Bool_ADTTyp_103" }
@"$TyDescr_Bool_ADTTyp_m_specls_113" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_94"*] [%"$TyDescrTy_ADTTyp_Specl_94"* @"$TyDescr_Bool_ADTTyp_Specl_112"]
@"$TyDescr_ADT_Bool_114" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_115" = unnamed_addr constant %"$TyDescrTy_ADTTyp_95" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_135", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_94"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_94"*], [2 x %"$TyDescrTy_ADTTyp_Specl_94"*]* @"$TyDescr_List_ADTTyp_m_specls_134", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int64_Constr_m_args_116" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_71", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int64_98"]
@"$TyDescr_ADT_Cons_117" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int64_ADTTyp_Constr_118" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_96" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_117", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int64_Constr_m_args_116", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int64_Constr_m_args_119" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_120" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int64_ADTTyp_Constr_121" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_96" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_120", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int64_Constr_m_args_119", i32 0, i32 0) }
@"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_122" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_96"*] [%"$TyDescrTy_ADTTyp_Constr_96"* @"$TyDescr_List_Cons_Int64_ADTTyp_Constr_118", %"$TyDescrTy_ADTTyp_Constr_96"* @"$TyDescr_List_Nil_Int64_ADTTyp_Constr_121"]
@"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_123" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int64_71"]
@"$TyDescr_List_Int64_ADTTyp_Specl_124" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_94" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_TArgs_123", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_96"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_96"*], [2 x %"$TyDescrTy_ADTTyp_Constr_96"*]* @"$TyDescr_List_Int64_ADTTyp_Specl_m_constrs_122", i32 0, i32 0), %"$TyDescrTy_ADTTyp_95"* @"$TyDescr_List_ADTTyp_115" }
@"$TyDescr_List_Cons_Int32_Constr_m_args_125" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_67", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_99"]
@"$TyDescr_ADT_Cons_126" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_127" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_96" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_126", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_125", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_128" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_129" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_130" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_96" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_129", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_128", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_131" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_96"*] [%"$TyDescrTy_ADTTyp_Constr_96"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_127", %"$TyDescrTy_ADTTyp_Constr_96"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_130"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_132" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_67"]
@"$TyDescr_List_Int32_ADTTyp_Specl_133" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_94" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_132", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_96"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_96"*], [2 x %"$TyDescrTy_ADTTyp_Constr_96"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_131", i32 0, i32 0), %"$TyDescrTy_ADTTyp_95"* @"$TyDescr_List_ADTTyp_115" }
@"$TyDescr_List_ADTTyp_m_specls_134" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_94"*] [%"$TyDescrTy_ADTTyp_Specl_94"* @"$TyDescr_List_Int64_ADTTyp_Specl_124", %"$TyDescrTy_ADTTyp_Specl_94"* @"$TyDescr_List_Int32_ADTTyp_Specl_133"]
@"$TyDescr_ADT_List_135" = unnamed_addr constant [4 x i8] c"List"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@ListUtils.list_length = global { i8*, i8* }* null
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_89", %_TyDescrTy_Typ* @"$TyDescr_Int64_71", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_97", %_TyDescrTy_Typ* @"$TyDescr_Uint256_81", %_TyDescrTy_Typ* @"$TyDescr_Uint32_69", %_TyDescrTy_Typ* @"$TyDescr_Uint64_73", %_TyDescrTy_Typ* @"$TyDescr_Bnum_85", %_TyDescrTy_Typ* @"$TyDescr_Uint128_77", %_TyDescrTy_Typ* @"$TyDescr_Exception_91", %_TyDescrTy_Typ* @"$TyDescr_String_83", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int64_98", %_TyDescrTy_Typ* @"$TyDescr_Int256_79", %_TyDescrTy_Typ* @"$TyDescr_Int128_75", %_TyDescrTy_Typ* @"$TyDescr_Bystr_93", %_TyDescrTy_Typ* @"$TyDescr_Message_87", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_99", %_TyDescrTy_Typ* @"$TyDescr_Int32_67"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_1112"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1113"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_List_Int64* @"$fundef_63"(%"$$fundef_63_env_136"* %0, %Int64 %1) !dbg !4 {
entry:
  %"$retval_64" = alloca %TName_List_Int64*, align 8
  %"$gasrem_751" = load i64, i64* @_gasrem, align 8
  %"$gascmp_752" = icmp ugt i64 1, %"$gasrem_751"
  br i1 %"$gascmp_752", label %"$out_of_gas_753", label %"$have_gas_754"

"$out_of_gas_753":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_754"

"$have_gas_754":                                  ; preds = %"$out_of_gas_753", %entry
  %"$consume_755" = sub i64 %"$gasrem_751", 1
  store i64 %"$consume_755", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  %"$gasrem_756" = load i64, i64* @_gasrem, align 8
  %"$gascmp_757" = icmp ugt i64 1, %"$gasrem_756"
  br i1 %"$gascmp_757", label %"$out_of_gas_758", label %"$have_gas_759"

"$out_of_gas_758":                                ; preds = %"$have_gas_754"
  call void @_out_of_gas()
  br label %"$have_gas_759"

"$have_gas_759":                                  ; preds = %"$out_of_gas_758", %"$have_gas_754"
  %"$consume_760" = sub i64 %"$gasrem_756", 1
  store i64 %"$consume_760", i64* @_gasrem, align 8
  %"$adtval_761_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_761_salloc" = call i8* @_salloc(i8* %"$adtval_761_load", i64 1)
  %"$adtval_761" = bitcast i8* %"$adtval_761_salloc" to %CName_Nil_Int64*
  %"$adtgep_762" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_761", i32 0, i32 0
  store i8 1, i8* %"$adtgep_762", align 1
  %"$adtptr_763" = bitcast %CName_Nil_Int64* %"$adtval_761" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_763", %TName_List_Int64** %an, align 8, !dbg !8
  %"$gasrem_764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_765" = icmp ugt i64 1, %"$gasrem_764"
  br i1 %"$gascmp_765", label %"$out_of_gas_766", label %"$have_gas_767"

"$out_of_gas_766":                                ; preds = %"$have_gas_759"
  call void @_out_of_gas()
  br label %"$have_gas_767"

"$have_gas_767":                                  ; preds = %"$out_of_gas_766", %"$have_gas_759"
  %"$consume_768" = sub i64 %"$gasrem_764", 1
  store i64 %"$consume_768", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int64*, align 8
  %"$gasrem_769" = load i64, i64* @_gasrem, align 8
  %"$gascmp_770" = icmp ugt i64 1, %"$gasrem_769"
  br i1 %"$gascmp_770", label %"$out_of_gas_771", label %"$have_gas_772"

"$out_of_gas_771":                                ; preds = %"$have_gas_767"
  call void @_out_of_gas()
  br label %"$have_gas_772"

"$have_gas_772":                                  ; preds = %"$out_of_gas_771", %"$have_gas_767"
  %"$consume_773" = sub i64 %"$gasrem_769", 1
  store i64 %"$consume_773", i64* @_gasrem, align 8
  %"$an_774" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_775_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_775_salloc" = call i8* @_salloc(i8* %"$adtval_775_load", i64 17)
  %"$adtval_775" = bitcast i8* %"$adtval_775_salloc" to %CName_Cons_Int64*
  %"$adtgep_776" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_775", i32 0, i32 0
  store i8 0, i8* %"$adtgep_776", align 1
  %"$adtgep_777" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_775", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_777", align 8
  %"$adtgep_778" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_775", i32 0, i32 2
  store %TName_List_Int64* %"$an_774", %TName_List_Int64** %"$adtgep_778", align 8
  %"$adtptr_779" = bitcast %CName_Cons_Int64* %"$adtval_775" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_779", %TName_List_Int64** %a1, align 8, !dbg !9
  %"$gasrem_780" = load i64, i64* @_gasrem, align 8
  %"$gascmp_781" = icmp ugt i64 1, %"$gasrem_780"
  br i1 %"$gascmp_781", label %"$out_of_gas_782", label %"$have_gas_783"

"$out_of_gas_782":                                ; preds = %"$have_gas_772"
  call void @_out_of_gas()
  br label %"$have_gas_783"

"$have_gas_783":                                  ; preds = %"$out_of_gas_782", %"$have_gas_772"
  %"$consume_784" = sub i64 %"$gasrem_780", 1
  store i64 %"$consume_784", i64* @_gasrem, align 8
  %"$a1_785" = load %TName_List_Int64*, %TName_List_Int64** %a1, align 8
  %"$adtval_786_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_786_salloc" = call i8* @_salloc(i8* %"$adtval_786_load", i64 17)
  %"$adtval_786" = bitcast i8* %"$adtval_786_salloc" to %CName_Cons_Int64*
  %"$adtgep_787" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_786", i32 0, i32 0
  store i8 0, i8* %"$adtgep_787", align 1
  %"$adtgep_788" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_786", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_788", align 8
  %"$adtgep_789" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_786", i32 0, i32 2
  store %TName_List_Int64* %"$a1_785", %TName_List_Int64** %"$adtgep_789", align 8
  %"$adtptr_790" = bitcast %CName_Cons_Int64* %"$adtval_786" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_790", %TName_List_Int64** %"$retval_64", align 8, !dbg !10
  %"$$retval_64_791" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_64", align 8
  ret %TName_List_Int64* %"$$retval_64_791"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_61"(%"$$fundef_61_env_137"* %0) !dbg !11 {
entry:
  %"$retval_62" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_743" = icmp ugt i64 1, %"$gasrem_742"
  br i1 %"$gascmp_743", label %"$out_of_gas_744", label %"$have_gas_745"

"$out_of_gas_744":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_745"

"$have_gas_745":                                  ; preds = %"$out_of_gas_744", %entry
  %"$consume_746" = sub i64 %"$gasrem_742", 1
  store i64 %"$consume_746", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_63_env_136"*, %Int64)* @"$fundef_63" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_62", align 8, !dbg !12
  %"$$retval_62_750" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_62", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_62_750"
}

define internal %TName_List_Int32* @"$fundef_59"(%"$$fundef_59_env_138"* %0, %Int32 %1) !dbg !13 {
entry:
  %"$retval_60" = alloca %TName_List_Int32*, align 8
  %"$gasrem_701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_702" = icmp ugt i64 1, %"$gasrem_701"
  br i1 %"$gascmp_702", label %"$out_of_gas_703", label %"$have_gas_704"

"$out_of_gas_703":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_704"

"$have_gas_704":                                  ; preds = %"$out_of_gas_703", %entry
  %"$consume_705" = sub i64 %"$gasrem_701", 1
  store i64 %"$consume_705", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  %"$gasrem_706" = load i64, i64* @_gasrem, align 8
  %"$gascmp_707" = icmp ugt i64 1, %"$gasrem_706"
  br i1 %"$gascmp_707", label %"$out_of_gas_708", label %"$have_gas_709"

"$out_of_gas_708":                                ; preds = %"$have_gas_704"
  call void @_out_of_gas()
  br label %"$have_gas_709"

"$have_gas_709":                                  ; preds = %"$out_of_gas_708", %"$have_gas_704"
  %"$consume_710" = sub i64 %"$gasrem_706", 1
  store i64 %"$consume_710", i64* @_gasrem, align 8
  %"$adtval_711_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_711_salloc" = call i8* @_salloc(i8* %"$adtval_711_load", i64 1)
  %"$adtval_711" = bitcast i8* %"$adtval_711_salloc" to %CName_Nil_Int32*
  %"$adtgep_712" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_711", i32 0, i32 0
  store i8 1, i8* %"$adtgep_712", align 1
  %"$adtptr_713" = bitcast %CName_Nil_Int32* %"$adtval_711" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_713", %TName_List_Int32** %an, align 8, !dbg !14
  %"$gasrem_714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_715" = icmp ugt i64 1, %"$gasrem_714"
  br i1 %"$gascmp_715", label %"$out_of_gas_716", label %"$have_gas_717"

"$out_of_gas_716":                                ; preds = %"$have_gas_709"
  call void @_out_of_gas()
  br label %"$have_gas_717"

"$have_gas_717":                                  ; preds = %"$out_of_gas_716", %"$have_gas_709"
  %"$consume_718" = sub i64 %"$gasrem_714", 1
  store i64 %"$consume_718", i64* @_gasrem, align 8
  %a1 = alloca %TName_List_Int32*, align 8
  %"$gasrem_719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_720" = icmp ugt i64 1, %"$gasrem_719"
  br i1 %"$gascmp_720", label %"$out_of_gas_721", label %"$have_gas_722"

"$out_of_gas_721":                                ; preds = %"$have_gas_717"
  call void @_out_of_gas()
  br label %"$have_gas_722"

"$have_gas_722":                                  ; preds = %"$out_of_gas_721", %"$have_gas_717"
  %"$consume_723" = sub i64 %"$gasrem_719", 1
  store i64 %"$consume_723", i64* @_gasrem, align 8
  %"$an_724" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_725_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_725_salloc" = call i8* @_salloc(i8* %"$adtval_725_load", i64 13)
  %"$adtval_725" = bitcast i8* %"$adtval_725_salloc" to %CName_Cons_Int32*
  %"$adtgep_726" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_725", i32 0, i32 0
  store i8 0, i8* %"$adtgep_726", align 1
  %"$adtgep_727" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_725", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_727", align 4
  %"$adtgep_728" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_725", i32 0, i32 2
  store %TName_List_Int32* %"$an_724", %TName_List_Int32** %"$adtgep_728", align 8
  %"$adtptr_729" = bitcast %CName_Cons_Int32* %"$adtval_725" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_729", %TName_List_Int32** %a1, align 8, !dbg !15
  %"$gasrem_730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_731" = icmp ugt i64 1, %"$gasrem_730"
  br i1 %"$gascmp_731", label %"$out_of_gas_732", label %"$have_gas_733"

"$out_of_gas_732":                                ; preds = %"$have_gas_722"
  call void @_out_of_gas()
  br label %"$have_gas_733"

"$have_gas_733":                                  ; preds = %"$out_of_gas_732", %"$have_gas_722"
  %"$consume_734" = sub i64 %"$gasrem_730", 1
  store i64 %"$consume_734", i64* @_gasrem, align 8
  %"$a1_735" = load %TName_List_Int32*, %TName_List_Int32** %a1, align 8
  %"$adtval_736_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_736_salloc" = call i8* @_salloc(i8* %"$adtval_736_load", i64 13)
  %"$adtval_736" = bitcast i8* %"$adtval_736_salloc" to %CName_Cons_Int32*
  %"$adtgep_737" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_736", i32 0, i32 0
  store i8 0, i8* %"$adtgep_737", align 1
  %"$adtgep_738" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_736", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_738", align 4
  %"$adtgep_739" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_736", i32 0, i32 2
  store %TName_List_Int32* %"$a1_735", %TName_List_Int32** %"$adtgep_739", align 8
  %"$adtptr_740" = bitcast %CName_Cons_Int32* %"$adtval_736" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_740", %TName_List_Int32** %"$retval_60", align 8, !dbg !16
  %"$$retval_60_741" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_60", align 8
  ret %TName_List_Int32* %"$$retval_60_741"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_57"(%"$$fundef_57_env_139"* %0) !dbg !17 {
entry:
  %"$retval_58" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_692" = load i64, i64* @_gasrem, align 8
  %"$gascmp_693" = icmp ugt i64 1, %"$gasrem_692"
  br i1 %"$gascmp_693", label %"$out_of_gas_694", label %"$have_gas_695"

"$out_of_gas_694":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_695"

"$have_gas_695":                                  ; preds = %"$out_of_gas_694", %entry
  %"$consume_696" = sub i64 %"$gasrem_692", 1
  store i64 %"$consume_696", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_59_env_138"*, %Int32)* @"$fundef_59" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_58", align 8, !dbg !18
  %"$$retval_58_700" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_58", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_58_700"
}

define internal %TName_List_Int64* @"$fundef_55"(%"$$fundef_55_env_140"* %0, %Int64 %1) !dbg !19 {
entry:
  %"$retval_56" = alloca %TName_List_Int64*, align 8
  %"$gasrem_667" = load i64, i64* @_gasrem, align 8
  %"$gascmp_668" = icmp ugt i64 1, %"$gasrem_667"
  br i1 %"$gascmp_668", label %"$out_of_gas_669", label %"$have_gas_670"

"$out_of_gas_669":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_670"

"$have_gas_670":                                  ; preds = %"$out_of_gas_669", %entry
  %"$consume_671" = sub i64 %"$gasrem_667", 1
  store i64 %"$consume_671", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int64*, align 8
  %"$gasrem_672" = load i64, i64* @_gasrem, align 8
  %"$gascmp_673" = icmp ugt i64 1, %"$gasrem_672"
  br i1 %"$gascmp_673", label %"$out_of_gas_674", label %"$have_gas_675"

"$out_of_gas_674":                                ; preds = %"$have_gas_670"
  call void @_out_of_gas()
  br label %"$have_gas_675"

"$have_gas_675":                                  ; preds = %"$out_of_gas_674", %"$have_gas_670"
  %"$consume_676" = sub i64 %"$gasrem_672", 1
  store i64 %"$consume_676", i64* @_gasrem, align 8
  %"$adtval_677_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_677_salloc" = call i8* @_salloc(i8* %"$adtval_677_load", i64 1)
  %"$adtval_677" = bitcast i8* %"$adtval_677_salloc" to %CName_Nil_Int64*
  %"$adtgep_678" = getelementptr inbounds %CName_Nil_Int64, %CName_Nil_Int64* %"$adtval_677", i32 0, i32 0
  store i8 1, i8* %"$adtgep_678", align 1
  %"$adtptr_679" = bitcast %CName_Nil_Int64* %"$adtval_677" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_679", %TName_List_Int64** %an, align 8, !dbg !20
  %"$gasrem_680" = load i64, i64* @_gasrem, align 8
  %"$gascmp_681" = icmp ugt i64 1, %"$gasrem_680"
  br i1 %"$gascmp_681", label %"$out_of_gas_682", label %"$have_gas_683"

"$out_of_gas_682":                                ; preds = %"$have_gas_675"
  call void @_out_of_gas()
  br label %"$have_gas_683"

"$have_gas_683":                                  ; preds = %"$out_of_gas_682", %"$have_gas_675"
  %"$consume_684" = sub i64 %"$gasrem_680", 1
  store i64 %"$consume_684", i64* @_gasrem, align 8
  %"$an_685" = load %TName_List_Int64*, %TName_List_Int64** %an, align 8
  %"$adtval_686_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_686_salloc" = call i8* @_salloc(i8* %"$adtval_686_load", i64 17)
  %"$adtval_686" = bitcast i8* %"$adtval_686_salloc" to %CName_Cons_Int64*
  %"$adtgep_687" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_686", i32 0, i32 0
  store i8 0, i8* %"$adtgep_687", align 1
  %"$adtgep_688" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_686", i32 0, i32 1
  store %Int64 %1, %Int64* %"$adtgep_688", align 8
  %"$adtgep_689" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$adtval_686", i32 0, i32 2
  store %TName_List_Int64* %"$an_685", %TName_List_Int64** %"$adtgep_689", align 8
  %"$adtptr_690" = bitcast %CName_Cons_Int64* %"$adtval_686" to %TName_List_Int64*
  store %TName_List_Int64* %"$adtptr_690", %TName_List_Int64** %"$retval_56", align 8, !dbg !21
  %"$$retval_56_691" = load %TName_List_Int64*, %TName_List_Int64** %"$retval_56", align 8
  ret %TName_List_Int64* %"$$retval_56_691"
}

define internal { %TName_List_Int64* (i8*, %Int64)*, i8* } @"$fundef_53"(%"$$fundef_53_env_141"* %0) !dbg !22 {
entry:
  %"$retval_54" = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_658" = load i64, i64* @_gasrem, align 8
  %"$gascmp_659" = icmp ugt i64 1, %"$gasrem_658"
  br i1 %"$gascmp_659", label %"$out_of_gas_660", label %"$have_gas_661"

"$out_of_gas_660":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_661"

"$have_gas_661":                                  ; preds = %"$out_of_gas_660", %entry
  %"$consume_662" = sub i64 %"$gasrem_658", 1
  store i64 %"$consume_662", i64* @_gasrem, align 8
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } { %TName_List_Int64* (i8*, %Int64)* bitcast (%TName_List_Int64* (%"$$fundef_55_env_140"*, %Int64)* @"$fundef_55" to %TName_List_Int64* (i8*, %Int64)*), i8* null }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_54", align 8, !dbg !23
  %"$$retval_54_666" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %"$retval_54", align 8
  ret { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$$retval_54_666"
}

define internal %TName_List_Int32* @"$fundef_51"(%"$$fundef_51_env_142"* %0, %Int32 %1) !dbg !24 {
entry:
  %"$retval_52" = alloca %TName_List_Int32*, align 8
  %"$gasrem_633" = load i64, i64* @_gasrem, align 8
  %"$gascmp_634" = icmp ugt i64 1, %"$gasrem_633"
  br i1 %"$gascmp_634", label %"$out_of_gas_635", label %"$have_gas_636"

"$out_of_gas_635":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_636"

"$have_gas_636":                                  ; preds = %"$out_of_gas_635", %entry
  %"$consume_637" = sub i64 %"$gasrem_633", 1
  store i64 %"$consume_637", i64* @_gasrem, align 8
  %an = alloca %TName_List_Int32*, align 8
  %"$gasrem_638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_639" = icmp ugt i64 1, %"$gasrem_638"
  br i1 %"$gascmp_639", label %"$out_of_gas_640", label %"$have_gas_641"

"$out_of_gas_640":                                ; preds = %"$have_gas_636"
  call void @_out_of_gas()
  br label %"$have_gas_641"

"$have_gas_641":                                  ; preds = %"$out_of_gas_640", %"$have_gas_636"
  %"$consume_642" = sub i64 %"$gasrem_638", 1
  store i64 %"$consume_642", i64* @_gasrem, align 8
  %"$adtval_643_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_643_salloc" = call i8* @_salloc(i8* %"$adtval_643_load", i64 1)
  %"$adtval_643" = bitcast i8* %"$adtval_643_salloc" to %CName_Nil_Int32*
  %"$adtgep_644" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_643", i32 0, i32 0
  store i8 1, i8* %"$adtgep_644", align 1
  %"$adtptr_645" = bitcast %CName_Nil_Int32* %"$adtval_643" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_645", %TName_List_Int32** %an, align 8, !dbg !25
  %"$gasrem_646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_647" = icmp ugt i64 1, %"$gasrem_646"
  br i1 %"$gascmp_647", label %"$out_of_gas_648", label %"$have_gas_649"

"$out_of_gas_648":                                ; preds = %"$have_gas_641"
  call void @_out_of_gas()
  br label %"$have_gas_649"

"$have_gas_649":                                  ; preds = %"$out_of_gas_648", %"$have_gas_641"
  %"$consume_650" = sub i64 %"$gasrem_646", 1
  store i64 %"$consume_650", i64* @_gasrem, align 8
  %"$an_651" = load %TName_List_Int32*, %TName_List_Int32** %an, align 8
  %"$adtval_652_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_652_salloc" = call i8* @_salloc(i8* %"$adtval_652_load", i64 13)
  %"$adtval_652" = bitcast i8* %"$adtval_652_salloc" to %CName_Cons_Int32*
  %"$adtgep_653" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_652", i32 0, i32 0
  store i8 0, i8* %"$adtgep_653", align 1
  %"$adtgep_654" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_652", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_654", align 4
  %"$adtgep_655" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_652", i32 0, i32 2
  store %TName_List_Int32* %"$an_651", %TName_List_Int32** %"$adtgep_655", align 8
  %"$adtptr_656" = bitcast %CName_Cons_Int32* %"$adtval_652" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_656", %TName_List_Int32** %"$retval_52", align 8, !dbg !26
  %"$$retval_52_657" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_52", align 8
  ret %TName_List_Int32* %"$$retval_52_657"
}

define internal { %TName_List_Int32* (i8*, %Int32)*, i8* } @"$fundef_49"(%"$$fundef_49_env_143"* %0) !dbg !27 {
entry:
  %"$retval_50" = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_624" = load i64, i64* @_gasrem, align 8
  %"$gascmp_625" = icmp ugt i64 1, %"$gasrem_624"
  br i1 %"$gascmp_625", label %"$out_of_gas_626", label %"$have_gas_627"

"$out_of_gas_626":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_627"

"$have_gas_627":                                  ; preds = %"$out_of_gas_626", %entry
  %"$consume_628" = sub i64 %"$gasrem_624", 1
  store i64 %"$consume_628", i64* @_gasrem, align 8
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_51_env_142"*, %Int32)* @"$fundef_51" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_50", align 8, !dbg !28
  %"$$retval_50_632" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %"$retval_50", align 8
  ret { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$$retval_50_632"
}

define internal %Uint32 @"$fundef_46"(%"$$fundef_46_env_144"* %0, %Int64 %1) !dbg !29 {
entry:
  %"$$fundef_46_env_one_611" = getelementptr inbounds %"$$fundef_46_env_144", %"$$fundef_46_env_144"* %0, i32 0, i32 0
  %"$one_envload_612" = load %Uint32, %Uint32* %"$$fundef_46_env_one_611", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_612", %Uint32* %one, align 4
  %"$$fundef_46_env_z_613" = getelementptr inbounds %"$$fundef_46_env_144", %"$$fundef_46_env_144"* %0, i32 0, i32 1
  %"$z_envload_614" = load %Uint32, %Uint32* %"$$fundef_46_env_z_613", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_614", %Uint32* %z, align 4
  %"$retval_47" = alloca %Uint32, align 8
  %"$gasrem_615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_616" = icmp ugt i64 4, %"$gasrem_615"
  br i1 %"$gascmp_616", label %"$out_of_gas_617", label %"$have_gas_618"

"$out_of_gas_617":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_618"

"$have_gas_618":                                  ; preds = %"$out_of_gas_617", %entry
  %"$consume_619" = sub i64 %"$gasrem_615", 4
  store i64 %"$consume_619", i64* @_gasrem, align 8
  %"$one_620" = load %Uint32, %Uint32* %one, align 4
  %"$z_621" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_622" = call %Uint32 @_add_Uint32(%Uint32 %"$one_620", %Uint32 %"$z_621"), !dbg !31
  store %Uint32 %"$add_call_622", %Uint32* %"$retval_47", align 4, !dbg !31
  %"$$retval_47_623" = load %Uint32, %Uint32* %"$retval_47", align 4
  ret %Uint32 %"$$retval_47_623"
}

define internal { %Uint32 (i8*, %Int64)*, i8* } @"$fundef_44"(%"$$fundef_44_env_145"* %0, %Uint32 %1) !dbg !32 {
entry:
  %"$$fundef_44_env_one_596" = getelementptr inbounds %"$$fundef_44_env_145", %"$$fundef_44_env_145"* %0, i32 0, i32 0
  %"$one_envload_597" = load %Uint32, %Uint32* %"$$fundef_44_env_one_596", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_597", %Uint32* %one, align 4
  %"$retval_45" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_598" = load i64, i64* @_gasrem, align 8
  %"$gascmp_599" = icmp ugt i64 1, %"$gasrem_598"
  br i1 %"$gascmp_599", label %"$out_of_gas_600", label %"$have_gas_601"

"$out_of_gas_600":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_601"

"$have_gas_601":                                  ; preds = %"$out_of_gas_600", %entry
  %"$consume_602" = sub i64 %"$gasrem_598", 1
  store i64 %"$consume_602", i64* @_gasrem, align 8
  %"$$fundef_46_envp_603_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_46_envp_603_salloc" = call i8* @_salloc(i8* %"$$fundef_46_envp_603_load", i64 8)
  %"$$fundef_46_envp_603" = bitcast i8* %"$$fundef_46_envp_603_salloc" to %"$$fundef_46_env_144"*
  %"$$fundef_46_env_voidp_605" = bitcast %"$$fundef_46_env_144"* %"$$fundef_46_envp_603" to i8*
  %"$$fundef_46_cloval_606" = insertvalue { %Uint32 (i8*, %Int64)*, i8* } { %Uint32 (i8*, %Int64)* bitcast (%Uint32 (%"$$fundef_46_env_144"*, %Int64)* @"$fundef_46" to %Uint32 (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_46_env_voidp_605", 1
  %"$$fundef_46_env_one_607" = getelementptr inbounds %"$$fundef_46_env_144", %"$$fundef_46_env_144"* %"$$fundef_46_envp_603", i32 0, i32 0
  %"$one_608" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_608", %Uint32* %"$$fundef_46_env_one_607", align 4
  %"$$fundef_46_env_z_609" = getelementptr inbounds %"$$fundef_46_env_144", %"$$fundef_46_env_144"* %"$$fundef_46_envp_603", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_46_env_z_609", align 4
  store { %Uint32 (i8*, %Int64)*, i8* } %"$$fundef_46_cloval_606", { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_45", align 8, !dbg !33
  %"$$retval_45_610" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$retval_45", align 8
  ret { %Uint32 (i8*, %Int64)*, i8* } %"$$retval_45_610"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_42"(%"$$fundef_42_env_146"* %0) !dbg !34 {
entry:
  %"$$fundef_42_env_list_foldl_518" = getelementptr inbounds %"$$fundef_42_env_146", %"$$fundef_42_env_146"* %0, i32 0, i32 0
  %"$list_foldl_envload_519" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_42_env_list_foldl_518", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_519", { i8*, i8* }** %list_foldl, align 8
  %"$retval_43" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_520" = load i64, i64* @_gasrem, align 8
  %"$gascmp_521" = icmp ugt i64 1, %"$gasrem_520"
  br i1 %"$gascmp_521", label %"$out_of_gas_522", label %"$have_gas_523"

"$out_of_gas_522":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_523"

"$have_gas_523":                                  ; preds = %"$out_of_gas_522", %entry
  %"$consume_524" = sub i64 %"$gasrem_520", 1
  store i64 %"$consume_524", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_526" = icmp ugt i64 1, %"$gasrem_525"
  br i1 %"$gascmp_526", label %"$out_of_gas_527", label %"$have_gas_528"

"$out_of_gas_527":                                ; preds = %"$have_gas_523"
  call void @_out_of_gas()
  br label %"$have_gas_528"

"$have_gas_528":                                  ; preds = %"$out_of_gas_527", %"$have_gas_523"
  %"$consume_529" = sub i64 %"$gasrem_525", 1
  store i64 %"$consume_529", i64* @_gasrem, align 8
  %"$list_foldl_530" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_531" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_530", i32 2
  %"$list_foldl_532" = bitcast { i8*, i8* }* %"$list_foldl_531" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_533" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_532", align 8
  %"$list_foldl_fptr_534" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_533", 0
  %"$list_foldl_envptr_535" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_533", 1
  %"$list_foldl_call_536" = call { i8*, i8* }* %"$list_foldl_fptr_534"(i8* %"$list_foldl_envptr_535"), !dbg !35
  %"$list_foldl_537" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_536", i32 1
  %"$list_foldl_538" = bitcast { i8*, i8* }* %"$list_foldl_537" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_539" = load { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_538", align 8
  %"$list_foldl_fptr_540" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_539", 0
  %"$list_foldl_envptr_541" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_539", 1
  %"$list_foldl_call_542" = call { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_540"(i8* %"$list_foldl_envptr_541"), !dbg !35
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_542", { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8, !dbg !36
  %"$gasrem_543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_544" = icmp ugt i64 1, %"$gasrem_543"
  br i1 %"$gascmp_544", label %"$out_of_gas_545", label %"$have_gas_546"

"$out_of_gas_545":                                ; preds = %"$have_gas_528"
  call void @_out_of_gas()
  br label %"$have_gas_546"

"$have_gas_546":                                  ; preds = %"$out_of_gas_545", %"$have_gas_528"
  %"$consume_547" = sub i64 %"$gasrem_543", 1
  store i64 %"$consume_547", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_549" = icmp ugt i64 1, %"$gasrem_548"
  br i1 %"$gascmp_549", label %"$out_of_gas_550", label %"$have_gas_551"

"$out_of_gas_550":                                ; preds = %"$have_gas_546"
  call void @_out_of_gas()
  br label %"$have_gas_551"

"$have_gas_551":                                  ; preds = %"$out_of_gas_550", %"$have_gas_546"
  %"$consume_552" = sub i64 %"$gasrem_548", 1
  store i64 %"$consume_552", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !37
  %"$gasrem_553" = load i64, i64* @_gasrem, align 8
  %"$gascmp_554" = icmp ugt i64 1, %"$gasrem_553"
  br i1 %"$gascmp_554", label %"$out_of_gas_555", label %"$have_gas_556"

"$out_of_gas_555":                                ; preds = %"$have_gas_551"
  call void @_out_of_gas()
  br label %"$have_gas_556"

"$have_gas_556":                                  ; preds = %"$out_of_gas_555", %"$have_gas_551"
  %"$consume_557" = sub i64 %"$gasrem_553", 1
  store i64 %"$consume_557", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_558" = load i64, i64* @_gasrem, align 8
  %"$gascmp_559" = icmp ugt i64 1, %"$gasrem_558"
  br i1 %"$gascmp_559", label %"$out_of_gas_560", label %"$have_gas_561"

"$out_of_gas_560":                                ; preds = %"$have_gas_556"
  call void @_out_of_gas()
  br label %"$have_gas_561"

"$have_gas_561":                                  ; preds = %"$out_of_gas_560", %"$have_gas_556"
  %"$consume_562" = sub i64 %"$gasrem_558", 1
  store i64 %"$consume_562", i64* @_gasrem, align 8
  %"$$fundef_44_envp_563_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_44_envp_563_salloc" = call i8* @_salloc(i8* %"$$fundef_44_envp_563_load", i64 4)
  %"$$fundef_44_envp_563" = bitcast i8* %"$$fundef_44_envp_563_salloc" to %"$$fundef_44_env_145"*
  %"$$fundef_44_env_voidp_565" = bitcast %"$$fundef_44_env_145"* %"$$fundef_44_envp_563" to i8*
  %"$$fundef_44_cloval_566" = insertvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int64)*, i8* } (%"$$fundef_44_env_145"*, %Uint32)* @"$fundef_44" to { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_44_env_voidp_565", 1
  %"$$fundef_44_env_one_567" = getelementptr inbounds %"$$fundef_44_env_145", %"$$fundef_44_env_145"* %"$$fundef_44_envp_563", i32 0, i32 0
  %"$one_568" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_568", %Uint32* %"$$fundef_44_env_one_567", align 4
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_44_cloval_566", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8, !dbg !38
  %"$gasrem_569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_570" = icmp ugt i64 1, %"$gasrem_569"
  br i1 %"$gascmp_570", label %"$out_of_gas_571", label %"$have_gas_572"

"$out_of_gas_571":                                ; preds = %"$have_gas_561"
  call void @_out_of_gas()
  br label %"$have_gas_572"

"$have_gas_572":                                  ; preds = %"$out_of_gas_571", %"$have_gas_561"
  %"$consume_573" = sub i64 %"$gasrem_569", 1
  store i64 %"$consume_573", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_575" = icmp ugt i64 1, %"$gasrem_574"
  br i1 %"$gascmp_575", label %"$out_of_gas_576", label %"$have_gas_577"

"$out_of_gas_576":                                ; preds = %"$have_gas_572"
  call void @_out_of_gas()
  br label %"$have_gas_577"

"$have_gas_577":                                  ; preds = %"$out_of_gas_576", %"$have_gas_572"
  %"$consume_578" = sub i64 %"$gasrem_574", 1
  store i64 %"$consume_578", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4, !dbg !39
  %"$gasrem_579" = load i64, i64* @_gasrem, align 8
  %"$gascmp_580" = icmp ugt i64 1, %"$gasrem_579"
  br i1 %"$gascmp_580", label %"$out_of_gas_581", label %"$have_gas_582"

"$out_of_gas_581":                                ; preds = %"$have_gas_577"
  call void @_out_of_gas()
  br label %"$have_gas_582"

"$have_gas_582":                                  ; preds = %"$out_of_gas_581", %"$have_gas_577"
  %"$consume_583" = sub i64 %"$gasrem_579", 1
  store i64 %"$consume_583", i64* @_gasrem, align 8
  %"$foldl_10" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_584" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_585" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_584", 0
  %"$foldl_envptr_586" = extractvalue { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_584", 1
  %"$iter_587" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_588" = call { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_585"(i8* %"$foldl_envptr_586", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_587"), !dbg !40
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_588", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8, !dbg !40
  %"$foldl_11" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$$foldl_10_589" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$$foldl_10_fptr_590" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_589", 0
  %"$$foldl_10_envptr_591" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_589", 1
  %"$init_592" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_10_call_593" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_10_fptr_590"(i8* %"$$foldl_10_envptr_591", %Uint32 %"$init_592"), !dbg !40
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_10_call_593", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_11", align 8, !dbg !40
  %"$$foldl_11_594" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$foldl_11", align 8
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$foldl_11_594", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_43", align 8, !dbg !40
  %"$$retval_43_595" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_43", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_43_595"
}

define internal %Uint32 @"$fundef_40"(%"$$fundef_40_env_147"* %0, %Int32 %1) !dbg !41 {
entry:
  %"$$fundef_40_env_one_505" = getelementptr inbounds %"$$fundef_40_env_147", %"$$fundef_40_env_147"* %0, i32 0, i32 0
  %"$one_envload_506" = load %Uint32, %Uint32* %"$$fundef_40_env_one_505", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_506", %Uint32* %one, align 4
  %"$$fundef_40_env_z_507" = getelementptr inbounds %"$$fundef_40_env_147", %"$$fundef_40_env_147"* %0, i32 0, i32 1
  %"$z_envload_508" = load %Uint32, %Uint32* %"$$fundef_40_env_z_507", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_508", %Uint32* %z, align 4
  %"$retval_41" = alloca %Uint32, align 8
  %"$gasrem_509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_510" = icmp ugt i64 4, %"$gasrem_509"
  br i1 %"$gascmp_510", label %"$out_of_gas_511", label %"$have_gas_512"

"$out_of_gas_511":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_512"

"$have_gas_512":                                  ; preds = %"$out_of_gas_511", %entry
  %"$consume_513" = sub i64 %"$gasrem_509", 4
  store i64 %"$consume_513", i64* @_gasrem, align 8
  %"$one_514" = load %Uint32, %Uint32* %one, align 4
  %"$z_515" = load %Uint32, %Uint32* %z, align 4
  %"$add_call_516" = call %Uint32 @_add_Uint32(%Uint32 %"$one_514", %Uint32 %"$z_515"), !dbg !42
  store %Uint32 %"$add_call_516", %Uint32* %"$retval_41", align 4, !dbg !42
  %"$$retval_41_517" = load %Uint32, %Uint32* %"$retval_41", align 4
  ret %Uint32 %"$$retval_41_517"
}

define internal { %Uint32 (i8*, %Int32)*, i8* } @"$fundef_38"(%"$$fundef_38_env_148"* %0, %Uint32 %1) !dbg !43 {
entry:
  %"$$fundef_38_env_one_490" = getelementptr inbounds %"$$fundef_38_env_148", %"$$fundef_38_env_148"* %0, i32 0, i32 0
  %"$one_envload_491" = load %Uint32, %Uint32* %"$$fundef_38_env_one_490", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_491", %Uint32* %one, align 4
  %"$retval_39" = alloca { %Uint32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_493" = icmp ugt i64 1, %"$gasrem_492"
  br i1 %"$gascmp_493", label %"$out_of_gas_494", label %"$have_gas_495"

"$out_of_gas_494":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_495"

"$have_gas_495":                                  ; preds = %"$out_of_gas_494", %entry
  %"$consume_496" = sub i64 %"$gasrem_492", 1
  store i64 %"$consume_496", i64* @_gasrem, align 8
  %"$$fundef_40_envp_497_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_40_envp_497_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_497_load", i64 8)
  %"$$fundef_40_envp_497" = bitcast i8* %"$$fundef_40_envp_497_salloc" to %"$$fundef_40_env_147"*
  %"$$fundef_40_env_voidp_499" = bitcast %"$$fundef_40_env_147"* %"$$fundef_40_envp_497" to i8*
  %"$$fundef_40_cloval_500" = insertvalue { %Uint32 (i8*, %Int32)*, i8* } { %Uint32 (i8*, %Int32)* bitcast (%Uint32 (%"$$fundef_40_env_147"*, %Int32)* @"$fundef_40" to %Uint32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_40_env_voidp_499", 1
  %"$$fundef_40_env_one_501" = getelementptr inbounds %"$$fundef_40_env_147", %"$$fundef_40_env_147"* %"$$fundef_40_envp_497", i32 0, i32 0
  %"$one_502" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_502", %Uint32* %"$$fundef_40_env_one_501", align 4
  %"$$fundef_40_env_z_503" = getelementptr inbounds %"$$fundef_40_env_147", %"$$fundef_40_env_147"* %"$$fundef_40_envp_497", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_40_env_z_503", align 4
  store { %Uint32 (i8*, %Int32)*, i8* } %"$$fundef_40_cloval_500", { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_39", align 8, !dbg !44
  %"$$retval_39_504" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$retval_39", align 8
  ret { %Uint32 (i8*, %Int32)*, i8* } %"$$retval_39_504"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_36"(%"$$fundef_36_env_149"* %0) !dbg !45 {
entry:
  %"$$fundef_36_env_list_foldl_412" = getelementptr inbounds %"$$fundef_36_env_149", %"$$fundef_36_env_149"* %0, i32 0, i32 0
  %"$list_foldl_envload_413" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_36_env_list_foldl_412", align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$list_foldl_envload_413", { i8*, i8* }** %list_foldl, align 8
  %"$retval_37" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 1, %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %entry
  %"$consume_418" = sub i64 %"$gasrem_414", 1
  store i64 %"$consume_418", i64* @_gasrem, align 8
  %foldl = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_417"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_417"
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %"$list_foldl_424" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  %"$list_foldl_425" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_424", i32 0
  %"$list_foldl_426" = bitcast { i8*, i8* }* %"$list_foldl_425" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$list_foldl_427" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$list_foldl_426", align 8
  %"$list_foldl_fptr_428" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_427", 0
  %"$list_foldl_envptr_429" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$list_foldl_427", 1
  %"$list_foldl_call_430" = call { i8*, i8* }* %"$list_foldl_fptr_428"(i8* %"$list_foldl_envptr_429"), !dbg !46
  %"$list_foldl_431" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_foldl_call_430", i32 1
  %"$list_foldl_432" = bitcast { i8*, i8* }* %"$list_foldl_431" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$list_foldl_433" = load { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$list_foldl_432", align 8
  %"$list_foldl_fptr_434" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_433", 0
  %"$list_foldl_envptr_435" = extractvalue { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$list_foldl_433", 1
  %"$list_foldl_call_436" = call { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_fptr_434"(i8* %"$list_foldl_envptr_435"), !dbg !46
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$list_foldl_call_436", { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8, !dbg !47
  %"$gasrem_437" = load i64, i64* @_gasrem, align 8
  %"$gascmp_438" = icmp ugt i64 1, %"$gasrem_437"
  br i1 %"$gascmp_438", label %"$out_of_gas_439", label %"$have_gas_440"

"$out_of_gas_439":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_440"

"$have_gas_440":                                  ; preds = %"$out_of_gas_439", %"$have_gas_422"
  %"$consume_441" = sub i64 %"$gasrem_437", 1
  store i64 %"$consume_441", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_442" = load i64, i64* @_gasrem, align 8
  %"$gascmp_443" = icmp ugt i64 1, %"$gasrem_442"
  br i1 %"$gascmp_443", label %"$out_of_gas_444", label %"$have_gas_445"

"$out_of_gas_444":                                ; preds = %"$have_gas_440"
  call void @_out_of_gas()
  br label %"$have_gas_445"

"$have_gas_445":                                  ; preds = %"$out_of_gas_444", %"$have_gas_440"
  %"$consume_446" = sub i64 %"$gasrem_442", 1
  store i64 %"$consume_446", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !48
  %"$gasrem_447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_448" = icmp ugt i64 1, %"$gasrem_447"
  br i1 %"$gascmp_448", label %"$out_of_gas_449", label %"$have_gas_450"

"$out_of_gas_449":                                ; preds = %"$have_gas_445"
  call void @_out_of_gas()
  br label %"$have_gas_450"

"$have_gas_450":                                  ; preds = %"$out_of_gas_449", %"$have_gas_445"
  %"$consume_451" = sub i64 %"$gasrem_447", 1
  store i64 %"$consume_451", i64* @_gasrem, align 8
  %iter = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_453" = icmp ugt i64 1, %"$gasrem_452"
  br i1 %"$gascmp_453", label %"$out_of_gas_454", label %"$have_gas_455"

"$out_of_gas_454":                                ; preds = %"$have_gas_450"
  call void @_out_of_gas()
  br label %"$have_gas_455"

"$have_gas_455":                                  ; preds = %"$out_of_gas_454", %"$have_gas_450"
  %"$consume_456" = sub i64 %"$gasrem_452", 1
  store i64 %"$consume_456", i64* @_gasrem, align 8
  %"$$fundef_38_envp_457_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_38_envp_457_salloc" = call i8* @_salloc(i8* %"$$fundef_38_envp_457_load", i64 4)
  %"$$fundef_38_envp_457" = bitcast i8* %"$$fundef_38_envp_457_salloc" to %"$$fundef_38_env_148"*
  %"$$fundef_38_env_voidp_459" = bitcast %"$$fundef_38_env_148"* %"$$fundef_38_envp_457" to i8*
  %"$$fundef_38_cloval_460" = insertvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Int32)*, i8* } (%"$$fundef_38_env_148"*, %Uint32)* @"$fundef_38" to { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_38_env_voidp_459", 1
  %"$$fundef_38_env_one_461" = getelementptr inbounds %"$$fundef_38_env_148", %"$$fundef_38_env_148"* %"$$fundef_38_envp_457", i32 0, i32 0
  %"$one_462" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_462", %Uint32* %"$$fundef_38_env_one_461", align 4
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_38_cloval_460", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8, !dbg !49
  %"$gasrem_463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_464" = icmp ugt i64 1, %"$gasrem_463"
  br i1 %"$gascmp_464", label %"$out_of_gas_465", label %"$have_gas_466"

"$out_of_gas_465":                                ; preds = %"$have_gas_455"
  call void @_out_of_gas()
  br label %"$have_gas_466"

"$have_gas_466":                                  ; preds = %"$out_of_gas_465", %"$have_gas_455"
  %"$consume_467" = sub i64 %"$gasrem_463", 1
  store i64 %"$consume_467", i64* @_gasrem, align 8
  %init = alloca %Uint32, align 8
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %"$have_gas_466"
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %"$have_gas_466"
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %init, align 4, !dbg !50
  %"$gasrem_473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_474" = icmp ugt i64 1, %"$gasrem_473"
  br i1 %"$gascmp_474", label %"$out_of_gas_475", label %"$have_gas_476"

"$out_of_gas_475":                                ; preds = %"$have_gas_471"
  call void @_out_of_gas()
  br label %"$have_gas_476"

"$have_gas_476":                                  ; preds = %"$out_of_gas_475", %"$have_gas_471"
  %"$consume_477" = sub i64 %"$gasrem_473", 1
  store i64 %"$consume_477", i64* @_gasrem, align 8
  %"$foldl_10" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$foldl_478" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %foldl, align 8
  %"$foldl_fptr_479" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_478", 0
  %"$foldl_envptr_480" = extractvalue { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$foldl_478", 1
  %"$iter_481" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %iter, align 8
  %"$foldl_call_482" = call { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_fptr_479"(i8* %"$foldl_envptr_480", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$iter_481"), !dbg !51
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$foldl_call_482", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8, !dbg !51
  %"$foldl_11" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$$foldl_10_483" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$foldl_10", align 8
  %"$$foldl_10_fptr_484" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_483", 0
  %"$$foldl_10_envptr_485" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$foldl_10_483", 1
  %"$init_486" = load %Uint32, %Uint32* %init, align 4
  %"$$foldl_10_call_487" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_10_fptr_484"(i8* %"$$foldl_10_envptr_485", %Uint32 %"$init_486"), !dbg !51
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_10_call_487", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_11", align 8, !dbg !51
  %"$$foldl_11_488" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$foldl_11", align 8
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$foldl_11_488", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_37", align 8, !dbg !51
  %"$$retval_37_489" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_37", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_37_489"
}

define internal %Uint32 @"$fundef_34"(%"$$fundef_34_env_150"* %0, %TName_List_Int64* %1) !dbg !52 {
entry:
  %"$$fundef_34_env_f_345" = getelementptr inbounds %"$$fundef_34_env_150", %"$$fundef_34_env_150"* %0, i32 0, i32 0
  %"$f_envload_346" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_f_345", align 8
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_346", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_34_env_g_347" = getelementptr inbounds %"$$fundef_34_env_150", %"$$fundef_34_env_150"* %0, i32 0, i32 1
  %"$g_envload_348" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_g_347", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_348", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_34_env_z_349" = getelementptr inbounds %"$$fundef_34_env_150", %"$$fundef_34_env_150"* %0, i32 0, i32 2
  %"$z_envload_350" = load %Uint32, %Uint32* %"$$fundef_34_env_z_349", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_350", %Uint32* %z, align 4
  %"$retval_35" = alloca %Uint32, align 8
  %"$gasrem_351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_352" = icmp ugt i64 2, %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %entry
  %"$consume_355" = sub i64 %"$gasrem_351", 2
  store i64 %"$consume_355", i64* @_gasrem, align 8
  %"$l_tag_357" = getelementptr inbounds %TName_List_Int64, %TName_List_Int64* %1, i32 0, i32 0
  %"$l_tag_358" = load i8, i8* %"$l_tag_357", align 1
  switch i8 %"$l_tag_358", label %"$empty_default_359" [
    i8 0, label %"$Cons_360"
    i8 1, label %"$Nil_403"
  ], !dbg !54

"$Cons_360":                                      ; preds = %"$have_gas_354"
  %"$l_361" = bitcast %TName_List_Int64* %1 to %CName_Cons_Int64*
  %"$h_gep_362" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_361", i32 0, i32 1
  %"$h_load_363" = load %Int64, %Int64* %"$h_gep_362", align 8
  %h = alloca %Int64, align 8
  store %Int64 %"$h_load_363", %Int64* %h, align 8
  %"$t_gep_364" = getelementptr inbounds %CName_Cons_Int64, %CName_Cons_Int64* %"$l_361", i32 0, i32 2
  %"$t_load_365" = load %TName_List_Int64*, %TName_List_Int64** %"$t_gep_364", align 8
  %t = alloca %TName_List_Int64*, align 8
  store %TName_List_Int64* %"$t_load_365", %TName_List_Int64** %t, align 8
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$Cons_360"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$Cons_360"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_372" = icmp ugt i64 1, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %"$have_gas_369"
  %"$consume_375" = sub i64 %"$gasrem_371", 1
  store i64 %"$consume_375", i64* @_gasrem, align 8
  %"$f_6" = alloca { %Uint32 (i8*, %Int64)*, i8* }, align 8
  %"$f_376" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_377" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_376", 0
  %"$f_envptr_378" = extractvalue { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_376", 1
  %"$z_379" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_380" = call { %Uint32 (i8*, %Int64)*, i8* } %"$f_fptr_377"(i8* %"$f_envptr_378", %Uint32 %"$z_379"), !dbg !55
  store { %Uint32 (i8*, %Int64)*, i8* } %"$f_call_380", { %Uint32 (i8*, %Int64)*, i8* }* %"$f_6", align 8, !dbg !55
  %"$f_7" = alloca %Uint32, align 8
  %"$$f_6_381" = load { %Uint32 (i8*, %Int64)*, i8* }, { %Uint32 (i8*, %Int64)*, i8* }* %"$f_6", align 8
  %"$$f_6_fptr_382" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_6_381", 0
  %"$$f_6_envptr_383" = extractvalue { %Uint32 (i8*, %Int64)*, i8* } %"$$f_6_381", 1
  %"$h_384" = load %Int64, %Int64* %h, align 8
  %"$$f_6_call_385" = call %Uint32 %"$$f_6_fptr_382"(i8* %"$$f_6_envptr_383", %Int64 %"$h_384"), !dbg !55
  store %Uint32 %"$$f_6_call_385", %Uint32* %"$f_7", align 4, !dbg !55
  %"$$f_7_386" = load %Uint32, %Uint32* %"$f_7", align 4
  store %Uint32 %"$$f_7_386", %Uint32* %res, align 4, !dbg !55
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 1, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_374"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_374"
  %"$consume_391" = sub i64 %"$gasrem_387", 1
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %"$g_8" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$g_392" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_393" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_392", 0
  %"$g_envptr_394" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_392", 1
  %"$res_395" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_396" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_fptr_393"(i8* %"$g_envptr_394", %Uint32 %"$res_395"), !dbg !58
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$g_call_396", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_8", align 8, !dbg !58
  %"$g_9" = alloca %Uint32, align 8
  %"$$g_8_397" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$g_8", align 8
  %"$$g_8_fptr_398" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_8_397", 0
  %"$$g_8_envptr_399" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$g_8_397", 1
  %"$t_400" = load %TName_List_Int64*, %TName_List_Int64** %t, align 8
  %"$$g_8_call_401" = call %Uint32 %"$$g_8_fptr_398"(i8* %"$$g_8_envptr_399", %TName_List_Int64* %"$t_400"), !dbg !58
  store %Uint32 %"$$g_8_call_401", %Uint32* %"$g_9", align 4, !dbg !58
  %"$$g_9_402" = load %Uint32, %Uint32* %"$g_9", align 4
  store %Uint32 %"$$g_9_402", %Uint32* %"$retval_35", align 4, !dbg !58
  br label %"$matchsucc_356"

"$Nil_403":                                       ; preds = %"$have_gas_354"
  %"$l_404" = bitcast %TName_List_Int64* %1 to %CName_Nil_Int64*
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$Nil_403"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$Nil_403"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %"$z_410" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_410", %Uint32* %"$retval_35", align 4, !dbg !59
  br label %"$matchsucc_356"

"$empty_default_359":                             ; preds = %"$have_gas_354"
  br label %"$matchsucc_356"

"$matchsucc_356":                                 ; preds = %"$have_gas_408", %"$have_gas_390", %"$empty_default_359"
  %"$$retval_35_411" = load %Uint32, %Uint32* %"$retval_35", align 4
  ret %Uint32 %"$$retval_35_411"
}

define internal { %Uint32 (i8*, %TName_List_Int64*)*, i8* } @"$fundef_32"(%"$$fundef_32_env_151"* %0, %Uint32 %1) !dbg !61 {
entry:
  %"$$fundef_32_env_f_321" = getelementptr inbounds %"$$fundef_32_env_151", %"$$fundef_32_env_151"* %0, i32 0, i32 0
  %"$f_envload_322" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_32_env_f_321", align 8
  %f = alloca { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_322", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_32_env_g_323" = getelementptr inbounds %"$$fundef_32_env_151", %"$$fundef_32_env_151"* %0, i32 0, i32 1
  %"$g_envload_324" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_32_env_g_323", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_324", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_33" = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %entry
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 1, %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$have_gas_328"
  %"$consume_334" = sub i64 %"$gasrem_330", 1
  store i64 %"$consume_334", i64* @_gasrem, align 8
  %"$$fundef_34_envp_335_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_34_envp_335_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_335_load", i64 40)
  %"$$fundef_34_envp_335" = bitcast i8* %"$$fundef_34_envp_335_salloc" to %"$$fundef_34_env_150"*
  %"$$fundef_34_env_voidp_337" = bitcast %"$$fundef_34_env_150"* %"$$fundef_34_envp_335" to i8*
  %"$$fundef_34_cloval_338" = insertvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } { %Uint32 (i8*, %TName_List_Int64*)* bitcast (%Uint32 (%"$$fundef_34_env_150"*, %TName_List_Int64*)* @"$fundef_34" to %Uint32 (i8*, %TName_List_Int64*)*), i8* undef }, i8* %"$$fundef_34_env_voidp_337", 1
  %"$$fundef_34_env_f_339" = getelementptr inbounds %"$$fundef_34_env_150", %"$$fundef_34_env_150"* %"$$fundef_34_envp_335", i32 0, i32 0
  %"$f_340" = load { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %"$f_340", { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_f_339", align 8
  %"$$fundef_34_env_g_341" = getelementptr inbounds %"$$fundef_34_env_150", %"$$fundef_34_env_150"* %"$$fundef_34_envp_335", i32 0, i32 1
  %"$g_342" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_342", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_34_env_g_341", align 8
  %"$$fundef_34_env_z_343" = getelementptr inbounds %"$$fundef_34_env_150", %"$$fundef_34_env_150"* %"$$fundef_34_envp_335", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_34_env_z_343", align 4
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$fundef_34_cloval_338", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_33", align 8, !dbg !62
  %"$$retval_33_344" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %"$retval_33", align 8
  ret { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$$retval_33_344"
}

define internal { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_30"(%"$$fundef_30_env_152"* %0, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !63 {
entry:
  %"$retval_31" = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 1, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %entry
  %"$consume_311" = sub i64 %"$gasrem_307", 1
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %"$$fundef_32_envp_312_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_32_envp_312_salloc" = call i8* @_salloc(i8* %"$$fundef_32_envp_312_load", i64 32)
  %"$$fundef_32_envp_312" = bitcast i8* %"$$fundef_32_envp_312_salloc" to %"$$fundef_32_env_151"*
  %"$$fundef_32_env_voidp_314" = bitcast %"$$fundef_32_env_151"* %"$$fundef_32_envp_312" to i8*
  %"$$fundef_32_cloval_315" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_32_env_151"*, %Uint32)* @"$fundef_32" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_32_env_voidp_314", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_32_cloval_315", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !64
  %"$$fundef_32_env_f_316" = getelementptr inbounds %"$$fundef_32_env_151", %"$$fundef_32_env_151"* %"$$fundef_32_envp_312", i32 0, i32 0
  store { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_32_env_f_316", align 8
  %"$$fundef_32_env_g_317" = getelementptr inbounds %"$$fundef_32_env_151", %"$$fundef_32_env_151"* %"$$fundef_32_envp_312", i32 0, i32 1
  %"$g_318" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_318", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_32_env_g_317", align 8
  %"$g_319" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_319", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_31", align 8, !dbg !64
  %"$$retval_31_320" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_31", align 8
  ret { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_31_320"
}

define internal { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_28"(%"$$fundef_28_env_153"* %0) !dbg !65 {
entry:
  %"$retval_29" = alloca { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 1, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %entry
  %"$consume_302" = sub i64 %"$gasrem_298", 1
  store i64 %"$consume_302", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_30_env_152"*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_30" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_29", align 8, !dbg !66
  %"$$retval_29_306" = load { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_29", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_29_306"
}

define internal { i8*, i8* }* @"$fundef_26"(%"$$fundef_26_env_154"* %0) !dbg !67 {
entry:
  %"$retval_27" = alloca { i8*, i8* }*, align 8
  %"$gasrem_286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_287" = icmp ugt i64 1, %"$gasrem_286"
  br i1 %"$gascmp_287", label %"$out_of_gas_288", label %"$have_gas_289"

"$out_of_gas_288":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_289"

"$have_gas_289":                                  ; preds = %"$out_of_gas_288", %entry
  %"$consume_290" = sub i64 %"$gasrem_286", 1
  store i64 %"$consume_290", i64* @_gasrem, align 8
  %"$dyndisp_table_294_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_294_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_294_salloc_load", i64 48)
  %"$dyndisp_table_294_salloc" = bitcast i8* %"$dyndisp_table_294_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_294" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_294_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_295" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_294", i32 1
  %"$dyndisp_pcast_296" = bitcast { i8*, i8* }* %"$dyndisp_gep_295" to { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_28_env_153"*)* @"$fundef_28" to { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int64)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_296", align 8
  store { i8*, i8* }* %"$dyndisp_table_294", { i8*, i8* }** %"$retval_27", align 8, !dbg !68
  %"$$retval_27_297" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_27", align 8
  ret { i8*, i8* }* %"$$retval_27_297"
}

define internal %Uint32 @"$fundef_24"(%"$$fundef_24_env_155"* %0, %TName_List_Int32* %1) !dbg !69 {
entry:
  %"$$fundef_24_env_f_219" = getelementptr inbounds %"$$fundef_24_env_155", %"$$fundef_24_env_155"* %0, i32 0, i32 0
  %"$f_envload_220" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_f_219", align 8
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_220", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_24_env_g_221" = getelementptr inbounds %"$$fundef_24_env_155", %"$$fundef_24_env_155"* %0, i32 0, i32 1
  %"$g_envload_222" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_g_221", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_222", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_24_env_z_223" = getelementptr inbounds %"$$fundef_24_env_155", %"$$fundef_24_env_155"* %0, i32 0, i32 2
  %"$z_envload_224" = load %Uint32, %Uint32* %"$$fundef_24_env_z_223", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_224", %Uint32* %z, align 4
  %"$retval_25" = alloca %Uint32, align 8
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 2, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %entry
  %"$consume_229" = sub i64 %"$gasrem_225", 2
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %"$l_tag_231" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %1, i32 0, i32 0
  %"$l_tag_232" = load i8, i8* %"$l_tag_231", align 1
  switch i8 %"$l_tag_232", label %"$empty_default_233" [
    i8 0, label %"$Cons_234"
    i8 1, label %"$Nil_277"
  ], !dbg !70

"$Cons_234":                                      ; preds = %"$have_gas_228"
  %"$l_235" = bitcast %TName_List_Int32* %1 to %CName_Cons_Int32*
  %"$h_gep_236" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_235", i32 0, i32 1
  %"$h_load_237" = load %Int32, %Int32* %"$h_gep_236", align 4
  %h = alloca %Int32, align 8
  store %Int32 %"$h_load_237", %Int32* %h, align 4
  %"$t_gep_238" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$l_235", i32 0, i32 2
  %"$t_load_239" = load %TName_List_Int32*, %TName_List_Int32** %"$t_gep_238", align 8
  %t = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$t_load_239", %TName_List_Int32** %t, align 8
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 1, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$Cons_234"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$Cons_234"
  %"$consume_244" = sub i64 %"$gasrem_240", 1
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 1, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$have_gas_243"
  %"$consume_249" = sub i64 %"$gasrem_245", 1
  store i64 %"$consume_249", i64* @_gasrem, align 8
  %"$f_6" = alloca { %Uint32 (i8*, %Int32)*, i8* }, align 8
  %"$f_250" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$f_fptr_251" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_250", 0
  %"$f_envptr_252" = extractvalue { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_250", 1
  %"$z_253" = load %Uint32, %Uint32* %z, align 4
  %"$f_call_254" = call { %Uint32 (i8*, %Int32)*, i8* } %"$f_fptr_251"(i8* %"$f_envptr_252", %Uint32 %"$z_253"), !dbg !71
  store { %Uint32 (i8*, %Int32)*, i8* } %"$f_call_254", { %Uint32 (i8*, %Int32)*, i8* }* %"$f_6", align 8, !dbg !71
  %"$f_7" = alloca %Uint32, align 8
  %"$$f_6_255" = load { %Uint32 (i8*, %Int32)*, i8* }, { %Uint32 (i8*, %Int32)*, i8* }* %"$f_6", align 8
  %"$$f_6_fptr_256" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_6_255", 0
  %"$$f_6_envptr_257" = extractvalue { %Uint32 (i8*, %Int32)*, i8* } %"$$f_6_255", 1
  %"$h_258" = load %Int32, %Int32* %h, align 4
  %"$$f_6_call_259" = call %Uint32 %"$$f_6_fptr_256"(i8* %"$$f_6_envptr_257", %Int32 %"$h_258"), !dbg !71
  store %Uint32 %"$$f_6_call_259", %Uint32* %"$f_7", align 4, !dbg !71
  %"$$f_7_260" = load %Uint32, %Uint32* %"$f_7", align 4
  store %Uint32 %"$$f_7_260", %Uint32* %res, align 4, !dbg !71
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_248"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_248"
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %"$g_8" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$g_266" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_267" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_266", 0
  %"$g_envptr_268" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_266", 1
  %"$res_269" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_270" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_fptr_267"(i8* %"$g_envptr_268", %Uint32 %"$res_269"), !dbg !74
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$g_call_270", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_8", align 8, !dbg !74
  %"$g_9" = alloca %Uint32, align 8
  %"$$g_8_271" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$g_8", align 8
  %"$$g_8_fptr_272" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_8_271", 0
  %"$$g_8_envptr_273" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$g_8_271", 1
  %"$t_274" = load %TName_List_Int32*, %TName_List_Int32** %t, align 8
  %"$$g_8_call_275" = call %Uint32 %"$$g_8_fptr_272"(i8* %"$$g_8_envptr_273", %TName_List_Int32* %"$t_274"), !dbg !74
  store %Uint32 %"$$g_8_call_275", %Uint32* %"$g_9", align 4, !dbg !74
  %"$$g_9_276" = load %Uint32, %Uint32* %"$g_9", align 4
  store %Uint32 %"$$g_9_276", %Uint32* %"$retval_25", align 4, !dbg !74
  br label %"$matchsucc_230"

"$Nil_277":                                       ; preds = %"$have_gas_228"
  %"$l_278" = bitcast %TName_List_Int32* %1 to %CName_Nil_Int32*
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$Nil_277"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$Nil_277"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem, align 8
  %"$z_284" = load %Uint32, %Uint32* %z, align 4
  store %Uint32 %"$z_284", %Uint32* %"$retval_25", align 4, !dbg !75
  br label %"$matchsucc_230"

"$empty_default_233":                             ; preds = %"$have_gas_228"
  br label %"$matchsucc_230"

"$matchsucc_230":                                 ; preds = %"$have_gas_282", %"$have_gas_264", %"$empty_default_233"
  %"$$retval_25_285" = load %Uint32, %Uint32* %"$retval_25", align 4
  ret %Uint32 %"$$retval_25_285"
}

define internal { %Uint32 (i8*, %TName_List_Int32*)*, i8* } @"$fundef_22"(%"$$fundef_22_env_156"* %0, %Uint32 %1) !dbg !77 {
entry:
  %"$$fundef_22_env_f_195" = getelementptr inbounds %"$$fundef_22_env_156", %"$$fundef_22_env_156"* %0, i32 0, i32 0
  %"$f_envload_196" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_22_env_f_195", align 8
  %f = alloca { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_envload_196", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$$fundef_22_env_g_197" = getelementptr inbounds %"$$fundef_22_env_156", %"$$fundef_22_env_156"* %0, i32 0, i32 1
  %"$g_envload_198" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_22_env_g_197", align 8
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_198", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_23" = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_200" = icmp ugt i64 1, %"$gasrem_199"
  br i1 %"$gascmp_200", label %"$out_of_gas_201", label %"$have_gas_202"

"$out_of_gas_201":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_202"

"$have_gas_202":                                  ; preds = %"$out_of_gas_201", %entry
  %"$consume_203" = sub i64 %"$gasrem_199", 1
  store i64 %"$consume_203", i64* @_gasrem, align 8
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 1, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$have_gas_202"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$have_gas_202"
  %"$consume_208" = sub i64 %"$gasrem_204", 1
  store i64 %"$consume_208", i64* @_gasrem, align 8
  %"$$fundef_24_envp_209_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_24_envp_209_salloc" = call i8* @_salloc(i8* %"$$fundef_24_envp_209_load", i64 40)
  %"$$fundef_24_envp_209" = bitcast i8* %"$$fundef_24_envp_209_salloc" to %"$$fundef_24_env_155"*
  %"$$fundef_24_env_voidp_211" = bitcast %"$$fundef_24_env_155"* %"$$fundef_24_envp_209" to i8*
  %"$$fundef_24_cloval_212" = insertvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } { %Uint32 (i8*, %TName_List_Int32*)* bitcast (%Uint32 (%"$$fundef_24_env_155"*, %TName_List_Int32*)* @"$fundef_24" to %Uint32 (i8*, %TName_List_Int32*)*), i8* undef }, i8* %"$$fundef_24_env_voidp_211", 1
  %"$$fundef_24_env_f_213" = getelementptr inbounds %"$$fundef_24_env_155", %"$$fundef_24_env_155"* %"$$fundef_24_envp_209", i32 0, i32 0
  %"$f_214" = load { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$f_214", { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_f_213", align 8
  %"$$fundef_24_env_g_215" = getelementptr inbounds %"$$fundef_24_env_155", %"$$fundef_24_env_155"* %"$$fundef_24_envp_209", i32 0, i32 1
  %"$g_216" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_216", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_24_env_g_215", align 8
  %"$$fundef_24_env_z_217" = getelementptr inbounds %"$$fundef_24_env_155", %"$$fundef_24_env_155"* %"$$fundef_24_envp_209", i32 0, i32 2
  store %Uint32 %1, %Uint32* %"$$fundef_24_env_z_217", align 4
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$fundef_24_cloval_212", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_23", align 8, !dbg !78
  %"$$retval_23_218" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %"$retval_23", align 8
  ret { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$$retval_23_218"
}

define internal { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_20"(%"$$fundef_20_env_157"* %0, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !79 {
entry:
  %"$retval_21" = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %entry
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %"$$fundef_22_envp_186_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_22_envp_186_salloc" = call i8* @_salloc(i8* %"$$fundef_22_envp_186_load", i64 32)
  %"$$fundef_22_envp_186" = bitcast i8* %"$$fundef_22_envp_186_salloc" to %"$$fundef_22_env_156"*
  %"$$fundef_22_env_voidp_188" = bitcast %"$$fundef_22_env_156"* %"$$fundef_22_envp_186" to i8*
  %"$$fundef_22_cloval_189" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_22_env_156"*, %Uint32)* @"$fundef_22" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_22_env_voidp_188", 1
  %g = alloca { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_22_cloval_189", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !80
  %"$$fundef_22_env_f_190" = getelementptr inbounds %"$$fundef_22_env_156", %"$$fundef_22_env_156"* %"$$fundef_22_envp_186", i32 0, i32 0
  store { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_22_env_f_190", align 8
  %"$$fundef_22_env_g_191" = getelementptr inbounds %"$$fundef_22_env_156", %"$$fundef_22_env_156"* %"$$fundef_22_envp_186", i32 0, i32 1
  %"$g_192" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_192", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_22_env_g_191", align 8
  %"$g_193" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_193", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_21", align 8, !dbg !80
  %"$$retval_21_194" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_21", align 8
  ret { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_21_194"
}

define internal { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_18"(%"$$fundef_18_env_158"* %0) !dbg !81 {
entry:
  %"$retval_19" = alloca { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_173" = icmp ugt i64 1, %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %entry
  %"$consume_176" = sub i64 %"$gasrem_172", 1
  store i64 %"$consume_176", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_20_env_157"*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_20" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_19", align 8, !dbg !82
  %"$$retval_19_180" = load { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_19", align 8
  ret { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_19_180"
}

define internal { i8*, i8* }* @"$fundef_16"(%"$$fundef_16_env_159"* %0) !dbg !83 {
entry:
  %"$retval_17" = alloca { i8*, i8* }*, align 8
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %entry
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %"$dyndisp_table_168_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_168_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_168_salloc_load", i64 48)
  %"$dyndisp_table_168_salloc" = bitcast i8* %"$dyndisp_table_168_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_168" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_168_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_169" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_168", i32 1
  %"$dyndisp_pcast_170" = bitcast { i8*, i8* }* %"$dyndisp_gep_169" to { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_18_env_158"*)* @"$fundef_18" to { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_170", align 8
  store { i8*, i8* }* %"$dyndisp_table_168", { i8*, i8* }** %"$retval_17", align 8, !dbg !84
  %"$$retval_17_171" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_17", align 8
  ret { i8*, i8* }* %"$$retval_17_171"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() !dbg !85 {
entry:
  %"$gasrem_792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_793" = icmp ugt i64 5, %"$gasrem_792"
  br i1 %"$gascmp_793", label %"$out_of_gas_794", label %"$have_gas_795"

"$out_of_gas_794":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_795"

"$have_gas_795":                                  ; preds = %"$out_of_gas_794", %entry
  %"$consume_796" = sub i64 %"$gasrem_792", 5
  store i64 %"$consume_796", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !87
  %"$gasrem_797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_798" = icmp ugt i64 8, %"$gasrem_797"
  br i1 %"$gascmp_798", label %"$out_of_gas_799", label %"$have_gas_800"

"$out_of_gas_799":                                ; preds = %"$have_gas_795"
  call void @_out_of_gas()
  br label %"$have_gas_800"

"$have_gas_800":                                  ; preds = %"$out_of_gas_799", %"$have_gas_795"
  %"$consume_801" = sub i64 %"$gasrem_797", 8
  store i64 %"$consume_801", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !87
  %"$gasrem_802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_803" = icmp ugt i64 196, %"$gasrem_802"
  br i1 %"$gascmp_803", label %"$out_of_gas_804", label %"$have_gas_805"

"$out_of_gas_804":                                ; preds = %"$have_gas_800"
  call void @_out_of_gas()
  br label %"$have_gas_805"

"$have_gas_805":                                  ; preds = %"$out_of_gas_804", %"$have_gas_800"
  %"$consume_806" = sub i64 %"$gasrem_802", 196
  store i64 %"$consume_806", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !87
  %"$gasrem_807" = load i64, i64* @_gasrem, align 8
  %"$gascmp_808" = icmp ugt i64 19, %"$gasrem_807"
  br i1 %"$gascmp_808", label %"$out_of_gas_809", label %"$have_gas_810"

"$out_of_gas_809":                                ; preds = %"$have_gas_805"
  call void @_out_of_gas()
  br label %"$have_gas_810"

"$have_gas_810":                                  ; preds = %"$out_of_gas_809", %"$have_gas_805"
  %"$consume_811" = sub i64 %"$gasrem_807", 19
  store i64 %"$consume_811", i64* @_gasrem, align 8
  store %Int32 { i32 19 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !87
  %"$gasrem_812" = load i64, i64* @_gasrem, align 8
  %"$gascmp_813" = icmp ugt i64 1, %"$gasrem_812"
  br i1 %"$gascmp_813", label %"$out_of_gas_814", label %"$have_gas_815"

"$out_of_gas_814":                                ; preds = %"$have_gas_810"
  call void @_out_of_gas()
  br label %"$have_gas_815"

"$have_gas_815":                                  ; preds = %"$out_of_gas_814", %"$have_gas_810"
  %"$consume_816" = sub i64 %"$gasrem_812", 1
  store i64 %"$consume_816", i64* @_gasrem, align 8
  %list_foldl = alloca { i8*, i8* }*, align 8
  %"$dyndisp_table_823_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_823_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_823_salloc_load", i64 48)
  %"$dyndisp_table_823_salloc" = bitcast i8* %"$dyndisp_table_823_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_823" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_823_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_824" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_823", i32 0
  %"$dyndisp_pcast_825" = bitcast { i8*, i8* }* %"$dyndisp_gep_824" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_16_env_159"*)* @"$fundef_16" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_825", align 8
  %"$dyndisp_gep_826" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_823", i32 2
  %"$dyndisp_pcast_827" = bitcast { i8*, i8* }* %"$dyndisp_gep_826" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_26_env_154"*)* @"$fundef_26" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_827", align 8
  store { i8*, i8* }* %"$dyndisp_table_823", { i8*, i8* }** %list_foldl, align 8, !dbg !88
  %"$$fundef_36_envp_828_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_36_envp_828_salloc" = call i8* @_salloc(i8* %"$$fundef_36_envp_828_load", i64 8)
  %"$$fundef_36_envp_828" = bitcast i8* %"$$fundef_36_envp_828_salloc" to %"$$fundef_36_env_149"*
  %"$$fundef_36_env_voidp_830" = bitcast %"$$fundef_36_env_149"* %"$$fundef_36_envp_828" to i8*
  %"$$fundef_36_cloval_831" = insertvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int32*)*, i8* } (%"$$fundef_36_env_149"*)* @"$fundef_36" to { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_36_env_voidp_830", 1
  %"$$fundef_36_env_list_foldl_832" = getelementptr inbounds %"$$fundef_36_env_149", %"$$fundef_36_env_149"* %"$$fundef_36_envp_828", i32 0, i32 0
  %"$list_foldl_833" = load { i8*, i8* }*, { i8*, i8* }** %list_foldl, align 8
  store { i8*, i8* }* %"$list_foldl_833", { i8*, i8* }** %"$$fundef_36_env_list_foldl_832", align 8
  %"$$fundef_42_env_voidp_835" = bitcast %"$$fundef_36_env_149"* %"$$fundef_36_envp_828" to i8*
  %"$$fundef_42_cloval_836" = insertvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_Int64*)*, i8* } (%"$$fundef_42_env_146"*)* @"$fundef_42" to { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_42_env_voidp_835", 1
  %"$dyndisp_table_837_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_837_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_837_salloc_load", i64 48)
  %"$dyndisp_table_837_salloc" = bitcast i8* %"$dyndisp_table_837_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_837" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_837_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_838" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_837", i32 0
  %"$dyndisp_pcast_839" = bitcast { i8*, i8* }* %"$dyndisp_gep_838" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$$fundef_36_cloval_831", { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_839", align 8
  %"$dyndisp_gep_840" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_837", i32 2
  %"$dyndisp_pcast_841" = bitcast { i8*, i8* }* %"$dyndisp_gep_840" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$$fundef_42_cloval_836", { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_841", align 8
  store { i8*, i8* }* %"$dyndisp_table_837", { i8*, i8* }** @ListUtils.list_length, align 8, !dbg !89
  %"$gasrem_842" = load i64, i64* @_gasrem, align 8
  %"$gascmp_843" = icmp ugt i64 12, %"$gasrem_842"
  br i1 %"$gascmp_843", label %"$out_of_gas_844", label %"$have_gas_845"

"$out_of_gas_844":                                ; preds = %"$have_gas_815"
  call void @_out_of_gas()
  br label %"$have_gas_845"

"$have_gas_845":                                  ; preds = %"$out_of_gas_844", %"$have_gas_815"
  %"$consume_846" = sub i64 %"$gasrem_842", 12
  store i64 %"$consume_846", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !87
  %"$gasrem_847" = load i64, i64* @_gasrem, align 8
  %"$gascmp_848" = icmp ugt i64 2, %"$gasrem_847"
  br i1 %"$gascmp_848", label %"$out_of_gas_849", label %"$have_gas_850"

"$out_of_gas_849":                                ; preds = %"$have_gas_845"
  call void @_out_of_gas()
  br label %"$have_gas_850"

"$have_gas_850":                                  ; preds = %"$out_of_gas_849", %"$have_gas_845"
  %"$consume_851" = sub i64 %"$gasrem_847", 2
  store i64 %"$consume_851", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !87
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !90 {
entry:
  %"$expr_48" = alloca %Uint32, align 8
  %"$gasrem_852" = load i64, i64* @_gasrem, align 8
  %"$gascmp_853" = icmp ugt i64 1, %"$gasrem_852"
  br i1 %"$gascmp_853", label %"$out_of_gas_854", label %"$have_gas_855"

"$out_of_gas_854":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_855"

"$have_gas_855":                                  ; preds = %"$out_of_gas_854", %entry
  %"$consume_856" = sub i64 %"$gasrem_852", 1
  store i64 %"$consume_856", i64* @_gasrem, align 8
  %t1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_857" = load i64, i64* @_gasrem, align 8
  %"$gascmp_858" = icmp ugt i64 1, %"$gasrem_857"
  br i1 %"$gascmp_858", label %"$out_of_gas_859", label %"$have_gas_860"

"$out_of_gas_859":                                ; preds = %"$have_gas_855"
  call void @_out_of_gas()
  br label %"$have_gas_860"

"$have_gas_860":                                  ; preds = %"$out_of_gas_859", %"$have_gas_855"
  %"$consume_861" = sub i64 %"$gasrem_857", 1
  store i64 %"$consume_861", i64* @_gasrem, align 8
  %"$dyndisp_table_868_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_868_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_868_salloc_load", i64 48)
  %"$dyndisp_table_868_salloc" = bitcast i8* %"$dyndisp_table_868_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_868" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_868_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_869" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_868", i32 0
  %"$dyndisp_pcast_870" = bitcast { i8*, i8* }* %"$dyndisp_gep_869" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_49_env_143"*)* @"$fundef_49" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_870", align 8
  %"$dyndisp_gep_871" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_868", i32 2
  %"$dyndisp_pcast_872" = bitcast { i8*, i8* }* %"$dyndisp_gep_871" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_53_env_141"*)* @"$fundef_53" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_872", align 8
  store { i8*, i8* }* %"$dyndisp_table_868", { i8*, i8* }** %t1, align 8, !dbg !91
  %"$gasrem_873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_874" = icmp ugt i64 1, %"$gasrem_873"
  br i1 %"$gascmp_874", label %"$out_of_gas_875", label %"$have_gas_876"

"$out_of_gas_875":                                ; preds = %"$have_gas_860"
  call void @_out_of_gas()
  br label %"$have_gas_876"

"$have_gas_876":                                  ; preds = %"$out_of_gas_875", %"$have_gas_860"
  %"$consume_877" = sub i64 %"$gasrem_873", 1
  store i64 %"$consume_877", i64* @_gasrem, align 8
  %t2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_878" = load i64, i64* @_gasrem, align 8
  %"$gascmp_879" = icmp ugt i64 1, %"$gasrem_878"
  br i1 %"$gascmp_879", label %"$out_of_gas_880", label %"$have_gas_881"

"$out_of_gas_880":                                ; preds = %"$have_gas_876"
  call void @_out_of_gas()
  br label %"$have_gas_881"

"$have_gas_881":                                  ; preds = %"$out_of_gas_880", %"$have_gas_876"
  %"$consume_882" = sub i64 %"$gasrem_878", 1
  store i64 %"$consume_882", i64* @_gasrem, align 8
  %"$dyndisp_table_889_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_889_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_889_salloc_load", i64 48)
  %"$dyndisp_table_889_salloc" = bitcast i8* %"$dyndisp_table_889_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_889" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_889_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_890" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_889", i32 0
  %"$dyndisp_pcast_891" = bitcast { i8*, i8* }* %"$dyndisp_gep_890" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)* bitcast ({ %TName_List_Int32* (i8*, %Int32)*, i8* } (%"$$fundef_57_env_139"*)* @"$fundef_57" to { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_891", align 8
  %"$dyndisp_gep_892" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_889", i32 2
  %"$dyndisp_pcast_893" = bitcast { i8*, i8* }* %"$dyndisp_gep_892" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  store { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)* bitcast ({ %TName_List_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_61_env_137"*)* @"$fundef_61" to { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*), i8* null }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_893", align 8
  store { i8*, i8* }* %"$dyndisp_table_889", { i8*, i8* }** %t2, align 8, !dbg !92
  %"$gasrem_894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_895" = icmp ugt i64 1, %"$gasrem_894"
  br i1 %"$gascmp_895", label %"$out_of_gas_896", label %"$have_gas_897"

"$out_of_gas_896":                                ; preds = %"$have_gas_881"
  call void @_out_of_gas()
  br label %"$have_gas_897"

"$have_gas_897":                                  ; preds = %"$out_of_gas_896", %"$have_gas_881"
  %"$consume_898" = sub i64 %"$gasrem_894", 1
  store i64 %"$consume_898", i64* @_gasrem, align 8
  %some_bool = alloca %TName_Bool*, align 8
  %"$gasrem_899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_900" = icmp ugt i64 1, %"$gasrem_899"
  br i1 %"$gascmp_900", label %"$out_of_gas_901", label %"$have_gas_902"

"$out_of_gas_901":                                ; preds = %"$have_gas_897"
  call void @_out_of_gas()
  br label %"$have_gas_902"

"$have_gas_902":                                  ; preds = %"$out_of_gas_901", %"$have_gas_897"
  %"$consume_903" = sub i64 %"$gasrem_899", 1
  store i64 %"$consume_903", i64* @_gasrem, align 8
  %"$adtval_904_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_904_salloc" = call i8* @_salloc(i8* %"$adtval_904_load", i64 1)
  %"$adtval_904" = bitcast i8* %"$adtval_904_salloc" to %CName_True*
  %"$adtgep_905" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_904", i32 0, i32 0
  store i8 0, i8* %"$adtgep_905", align 1
  %"$adtptr_906" = bitcast %CName_True* %"$adtval_904" to %TName_Bool*
  store %TName_Bool* %"$adtptr_906", %TName_Bool** %some_bool, align 8, !dbg !93
  %"$gasrem_907" = load i64, i64* @_gasrem, align 8
  %"$gascmp_908" = icmp ugt i64 1, %"$gasrem_907"
  br i1 %"$gascmp_908", label %"$out_of_gas_909", label %"$have_gas_910"

"$out_of_gas_909":                                ; preds = %"$have_gas_902"
  call void @_out_of_gas()
  br label %"$have_gas_910"

"$have_gas_910":                                  ; preds = %"$out_of_gas_909", %"$have_gas_902"
  %"$consume_911" = sub i64 %"$gasrem_907", 1
  store i64 %"$consume_911", i64* @_gasrem, align 8
  %f = alloca { i8*, i8* }*, align 8
  %"$gasrem_912" = load i64, i64* @_gasrem, align 8
  %"$gascmp_913" = icmp ugt i64 2, %"$gasrem_912"
  br i1 %"$gascmp_913", label %"$out_of_gas_914", label %"$have_gas_915"

"$out_of_gas_914":                                ; preds = %"$have_gas_910"
  call void @_out_of_gas()
  br label %"$have_gas_915"

"$have_gas_915":                                  ; preds = %"$out_of_gas_914", %"$have_gas_910"
  %"$consume_916" = sub i64 %"$gasrem_912", 2
  store i64 %"$consume_916", i64* @_gasrem, align 8
  %"$some_bool_918" = load %TName_Bool*, %TName_Bool** %some_bool, align 8
  %"$some_bool_tag_919" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool_918", i32 0, i32 0
  %"$some_bool_tag_920" = load i8, i8* %"$some_bool_tag_919", align 1
  switch i8 %"$some_bool_tag_920", label %"$empty_default_921" [
    i8 0, label %"$True_922"
    i8 1, label %"$False_930"
  ], !dbg !94

"$True_922":                                      ; preds = %"$have_gas_915"
  %"$some_bool_923" = bitcast %TName_Bool* %"$some_bool_918" to %CName_True*
  %"$gasrem_924" = load i64, i64* @_gasrem, align 8
  %"$gascmp_925" = icmp ugt i64 1, %"$gasrem_924"
  br i1 %"$gascmp_925", label %"$out_of_gas_926", label %"$have_gas_927"

"$out_of_gas_926":                                ; preds = %"$True_922"
  call void @_out_of_gas()
  br label %"$have_gas_927"

"$have_gas_927":                                  ; preds = %"$out_of_gas_926", %"$True_922"
  %"$consume_928" = sub i64 %"$gasrem_924", 1
  store i64 %"$consume_928", i64* @_gasrem, align 8
  %"$t2_929" = load { i8*, i8* }*, { i8*, i8* }** %t2, align 8
  store { i8*, i8* }* %"$t2_929", { i8*, i8* }** %f, align 8, !dbg !95
  br label %"$matchsucc_917"

"$False_930":                                     ; preds = %"$have_gas_915"
  %"$some_bool_931" = bitcast %TName_Bool* %"$some_bool_918" to %CName_False*
  %"$gasrem_932" = load i64, i64* @_gasrem, align 8
  %"$gascmp_933" = icmp ugt i64 1, %"$gasrem_932"
  br i1 %"$gascmp_933", label %"$out_of_gas_934", label %"$have_gas_935"

"$out_of_gas_934":                                ; preds = %"$False_930"
  call void @_out_of_gas()
  br label %"$have_gas_935"

"$have_gas_935":                                  ; preds = %"$out_of_gas_934", %"$False_930"
  %"$consume_936" = sub i64 %"$gasrem_932", 1
  store i64 %"$consume_936", i64* @_gasrem, align 8
  %"$t1_937" = load { i8*, i8* }*, { i8*, i8* }** %t1, align 8
  store { i8*, i8* }* %"$t1_937", { i8*, i8* }** %f, align 8, !dbg !98
  br label %"$matchsucc_917"

"$empty_default_921":                             ; preds = %"$have_gas_915"
  br label %"$matchsucc_917"

"$matchsucc_917":                                 ; preds = %"$have_gas_935", %"$have_gas_927", %"$empty_default_921"
  %"$gasrem_938" = load i64, i64* @_gasrem, align 8
  %"$gascmp_939" = icmp ugt i64 1, %"$gasrem_938"
  br i1 %"$gascmp_939", label %"$out_of_gas_940", label %"$have_gas_941"

"$out_of_gas_940":                                ; preds = %"$matchsucc_917"
  call void @_out_of_gas()
  br label %"$have_gas_941"

"$have_gas_941":                                  ; preds = %"$out_of_gas_940", %"$matchsucc_917"
  %"$consume_942" = sub i64 %"$gasrem_938", 1
  store i64 %"$consume_942", i64* @_gasrem, align 8
  %some_bool2 = alloca %TName_Bool*, align 8
  %"$gasrem_943" = load i64, i64* @_gasrem, align 8
  %"$gascmp_944" = icmp ugt i64 1, %"$gasrem_943"
  br i1 %"$gascmp_944", label %"$out_of_gas_945", label %"$have_gas_946"

"$out_of_gas_945":                                ; preds = %"$have_gas_941"
  call void @_out_of_gas()
  br label %"$have_gas_946"

"$have_gas_946":                                  ; preds = %"$out_of_gas_945", %"$have_gas_941"
  %"$consume_947" = sub i64 %"$gasrem_943", 1
  store i64 %"$consume_947", i64* @_gasrem, align 8
  %"$adtval_948_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_948_salloc" = call i8* @_salloc(i8* %"$adtval_948_load", i64 1)
  %"$adtval_948" = bitcast i8* %"$adtval_948_salloc" to %CName_False*
  %"$adtgep_949" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_948", i32 0, i32 0
  store i8 1, i8* %"$adtgep_949", align 1
  %"$adtptr_950" = bitcast %CName_False* %"$adtval_948" to %TName_Bool*
  store %TName_Bool* %"$adtptr_950", %TName_Bool** %some_bool2, align 8, !dbg !100
  %"$gasrem_951" = load i64, i64* @_gasrem, align 8
  %"$gascmp_952" = icmp ugt i64 2, %"$gasrem_951"
  br i1 %"$gascmp_952", label %"$out_of_gas_953", label %"$have_gas_954"

"$out_of_gas_953":                                ; preds = %"$have_gas_946"
  call void @_out_of_gas()
  br label %"$have_gas_954"

"$have_gas_954":                                  ; preds = %"$out_of_gas_953", %"$have_gas_946"
  %"$consume_955" = sub i64 %"$gasrem_951", 2
  store i64 %"$consume_955", i64* @_gasrem, align 8
  %"$some_bool2_957" = load %TName_Bool*, %TName_Bool** %some_bool2, align 8
  %"$some_bool2_tag_958" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$some_bool2_957", i32 0, i32 0
  %"$some_bool2_tag_959" = load i8, i8* %"$some_bool2_tag_958", align 1
  switch i8 %"$some_bool2_tag_959", label %"$empty_default_960" [
    i8 0, label %"$True_961"
    i8 1, label %"$False_1034"
  ], !dbg !101

"$True_961":                                      ; preds = %"$have_gas_954"
  %"$some_bool2_962" = bitcast %TName_Bool* %"$some_bool2_957" to %CName_True*
  %"$gasrem_963" = load i64, i64* @_gasrem, align 8
  %"$gascmp_964" = icmp ugt i64 1, %"$gasrem_963"
  br i1 %"$gascmp_964", label %"$out_of_gas_965", label %"$have_gas_966"

"$out_of_gas_965":                                ; preds = %"$True_961"
  call void @_out_of_gas()
  br label %"$have_gas_966"

"$have_gas_966":                                  ; preds = %"$out_of_gas_965", %"$True_961"
  %"$consume_967" = sub i64 %"$gasrem_963", 1
  store i64 %"$consume_967", i64* @_gasrem, align 8
  %f1 = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_968" = load i64, i64* @_gasrem, align 8
  %"$gascmp_969" = icmp ugt i64 1, %"$gasrem_968"
  br i1 %"$gascmp_969", label %"$out_of_gas_970", label %"$have_gas_971"

"$out_of_gas_970":                                ; preds = %"$have_gas_966"
  call void @_out_of_gas()
  br label %"$have_gas_971"

"$have_gas_971":                                  ; preds = %"$out_of_gas_970", %"$have_gas_966"
  %"$consume_972" = sub i64 %"$gasrem_968", 1
  store i64 %"$consume_972", i64* @_gasrem, align 8
  %"$f_973" = load { i8*, i8* }*, { i8*, i8* }** %f, align 8
  %"$f_974" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_973", i32 0
  %"$f_975" = bitcast { i8*, i8* }* %"$f_974" to { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$f_976" = load { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$f_975", align 8
  %"$f_fptr_977" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_976", 0
  %"$f_envptr_978" = extractvalue { { %TName_List_Int32* (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$f_976", 1
  %"$f_call_979" = call { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_fptr_977"(i8* %"$f_envptr_978"), !dbg !102
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_call_979", { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8, !dbg !105
  %"$gasrem_980" = load i64, i64* @_gasrem, align 8
  %"$gascmp_981" = icmp ugt i64 1, %"$gasrem_980"
  br i1 %"$gascmp_981", label %"$out_of_gas_982", label %"$have_gas_983"

"$out_of_gas_982":                                ; preds = %"$have_gas_971"
  call void @_out_of_gas()
  br label %"$have_gas_983"

"$have_gas_983":                                  ; preds = %"$out_of_gas_982", %"$have_gas_971"
  %"$consume_984" = sub i64 %"$gasrem_980", 1
  store i64 %"$consume_984", i64* @_gasrem, align 8
  %len = alloca { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, align 8
  %"$gasrem_985" = load i64, i64* @_gasrem, align 8
  %"$gascmp_986" = icmp ugt i64 1, %"$gasrem_985"
  br i1 %"$gascmp_986", label %"$out_of_gas_987", label %"$have_gas_988"

"$out_of_gas_987":                                ; preds = %"$have_gas_983"
  call void @_out_of_gas()
  br label %"$have_gas_988"

"$have_gas_988":                                  ; preds = %"$out_of_gas_987", %"$have_gas_983"
  %"$consume_989" = sub i64 %"$gasrem_985", 1
  store i64 %"$consume_989", i64* @_gasrem, align 8
  %"$ListUtils.list_length_990" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_991" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_990", i32 0
  %"$ListUtils.list_length_992" = bitcast { i8*, i8* }* %"$ListUtils.list_length_991" to { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_993" = load { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_992", align 8
  %"$ListUtils.list_length_fptr_994" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_993", 0
  %"$ListUtils.list_length_envptr_995" = extractvalue { { %Uint32 (i8*, %TName_List_Int32*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_993", 1
  %"$ListUtils.list_length_call_996" = call { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_fptr_994"(i8* %"$ListUtils.list_length_envptr_995"), !dbg !106
  store { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$ListUtils.list_length_call_996", { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8, !dbg !107
  %"$gasrem_997" = load i64, i64* @_gasrem, align 8
  %"$gascmp_998" = icmp ugt i64 1, %"$gasrem_997"
  br i1 %"$gascmp_998", label %"$out_of_gas_999", label %"$have_gas_1000"

"$out_of_gas_999":                                ; preds = %"$have_gas_988"
  call void @_out_of_gas()
  br label %"$have_gas_1000"

"$have_gas_1000":                                 ; preds = %"$out_of_gas_999", %"$have_gas_988"
  %"$consume_1001" = sub i64 %"$gasrem_997", 1
  store i64 %"$consume_1001", i64* @_gasrem, align 8
  %one = alloca %Int32, align 8
  %"$gasrem_1002" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1003" = icmp ugt i64 1, %"$gasrem_1002"
  br i1 %"$gascmp_1003", label %"$out_of_gas_1004", label %"$have_gas_1005"

"$out_of_gas_1004":                               ; preds = %"$have_gas_1000"
  call void @_out_of_gas()
  br label %"$have_gas_1005"

"$have_gas_1005":                                 ; preds = %"$out_of_gas_1004", %"$have_gas_1000"
  %"$consume_1006" = sub i64 %"$gasrem_1002", 1
  store i64 %"$consume_1006", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %one, align 4, !dbg !108
  %"$gasrem_1007" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1008" = icmp ugt i64 1, %"$gasrem_1007"
  br i1 %"$gascmp_1008", label %"$out_of_gas_1009", label %"$have_gas_1010"

"$out_of_gas_1009":                               ; preds = %"$have_gas_1005"
  call void @_out_of_gas()
  br label %"$have_gas_1010"

"$have_gas_1010":                                 ; preds = %"$out_of_gas_1009", %"$have_gas_1005"
  %"$consume_1011" = sub i64 %"$gasrem_1007", 1
  store i64 %"$consume_1011", i64* @_gasrem, align 8
  %f1l = alloca %TName_List_Int32*, align 8
  %"$gasrem_1012" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1013" = icmp ugt i64 1, %"$gasrem_1012"
  br i1 %"$gascmp_1013", label %"$out_of_gas_1014", label %"$have_gas_1015"

"$out_of_gas_1014":                               ; preds = %"$have_gas_1010"
  call void @_out_of_gas()
  br label %"$have_gas_1015"

"$have_gas_1015":                                 ; preds = %"$out_of_gas_1014", %"$have_gas_1010"
  %"$consume_1016" = sub i64 %"$gasrem_1012", 1
  store i64 %"$consume_1016", i64* @_gasrem, align 8
  %"$f1_12" = alloca %TName_List_Int32*, align 8
  %"$f1_1017" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f1, align 8
  %"$f1_fptr_1018" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_1017", 0
  %"$f1_envptr_1019" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f1_1017", 1
  %"$one_1020" = load %Int32, %Int32* %one, align 4
  %"$f1_call_1021" = call %TName_List_Int32* %"$f1_fptr_1018"(i8* %"$f1_envptr_1019", %Int32 %"$one_1020"), !dbg !109
  store %TName_List_Int32* %"$f1_call_1021", %TName_List_Int32** %"$f1_12", align 8, !dbg !109
  %"$$f1_12_1022" = load %TName_List_Int32*, %TName_List_Int32** %"$f1_12", align 8
  store %TName_List_Int32* %"$$f1_12_1022", %TName_List_Int32** %f1l, align 8, !dbg !109
  %"$gasrem_1023" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1024" = icmp ugt i64 1, %"$gasrem_1023"
  br i1 %"$gascmp_1024", label %"$out_of_gas_1025", label %"$have_gas_1026"

"$out_of_gas_1025":                               ; preds = %"$have_gas_1015"
  call void @_out_of_gas()
  br label %"$have_gas_1026"

"$have_gas_1026":                                 ; preds = %"$out_of_gas_1025", %"$have_gas_1015"
  %"$consume_1027" = sub i64 %"$gasrem_1023", 1
  store i64 %"$consume_1027", i64* @_gasrem, align 8
  %"$len_13" = alloca %Uint32, align 8
  %"$len_1028" = load { %Uint32 (i8*, %TName_List_Int32*)*, i8* }, { %Uint32 (i8*, %TName_List_Int32*)*, i8* }* %len, align 8
  %"$len_fptr_1029" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_1028", 0
  %"$len_envptr_1030" = extractvalue { %Uint32 (i8*, %TName_List_Int32*)*, i8* } %"$len_1028", 1
  %"$f1l_1031" = load %TName_List_Int32*, %TName_List_Int32** %f1l, align 8
  %"$len_call_1032" = call %Uint32 %"$len_fptr_1029"(i8* %"$len_envptr_1030", %TName_List_Int32* %"$f1l_1031"), !dbg !110
  store %Uint32 %"$len_call_1032", %Uint32* %"$len_13", align 4, !dbg !110
  %"$$len_13_1033" = load %Uint32, %Uint32* %"$len_13", align 4
  store %Uint32 %"$$len_13_1033", %Uint32* %"$expr_48", align 4, !dbg !110
  br label %"$matchsucc_956"

"$False_1034":                                    ; preds = %"$have_gas_954"
  %"$some_bool2_1035" = bitcast %TName_Bool* %"$some_bool2_957" to %CName_False*
  %"$gasrem_1036" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1037" = icmp ugt i64 1, %"$gasrem_1036"
  br i1 %"$gascmp_1037", label %"$out_of_gas_1038", label %"$have_gas_1039"

"$out_of_gas_1038":                               ; preds = %"$False_1034"
  call void @_out_of_gas()
  br label %"$have_gas_1039"

"$have_gas_1039":                                 ; preds = %"$out_of_gas_1038", %"$False_1034"
  %"$consume_1040" = sub i64 %"$gasrem_1036", 1
  store i64 %"$consume_1040", i64* @_gasrem, align 8
  %f2 = alloca { %TName_List_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_1041" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1042" = icmp ugt i64 1, %"$gasrem_1041"
  br i1 %"$gascmp_1042", label %"$out_of_gas_1043", label %"$have_gas_1044"

"$out_of_gas_1043":                               ; preds = %"$have_gas_1039"
  call void @_out_of_gas()
  br label %"$have_gas_1044"

"$have_gas_1044":                                 ; preds = %"$out_of_gas_1043", %"$have_gas_1039"
  %"$consume_1045" = sub i64 %"$gasrem_1041", 1
  store i64 %"$consume_1045", i64* @_gasrem, align 8
  %"$f_1046" = load { i8*, i8* }*, { i8*, i8* }** %f, align 8
  %"$f_1047" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_1046", i32 2
  %"$f_1048" = bitcast { i8*, i8* }* %"$f_1047" to { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }*
  %"$f_1049" = load { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }, { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* }* %"$f_1048", align 8
  %"$f_fptr_1050" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_1049", 0
  %"$f_envptr_1051" = extractvalue { { %TName_List_Int64* (i8*, %Int64)*, i8* } (i8*)*, i8* } %"$f_1049", 1
  %"$f_call_1052" = call { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_1050"(i8* %"$f_envptr_1051"), !dbg !111
  store { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f_call_1052", { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8, !dbg !113
  %"$gasrem_1053" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1054" = icmp ugt i64 1, %"$gasrem_1053"
  br i1 %"$gascmp_1054", label %"$out_of_gas_1055", label %"$have_gas_1056"

"$out_of_gas_1055":                               ; preds = %"$have_gas_1044"
  call void @_out_of_gas()
  br label %"$have_gas_1056"

"$have_gas_1056":                                 ; preds = %"$out_of_gas_1055", %"$have_gas_1044"
  %"$consume_1057" = sub i64 %"$gasrem_1053", 1
  store i64 %"$consume_1057", i64* @_gasrem, align 8
  %len1 = alloca { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, align 8
  %"$gasrem_1058" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1059" = icmp ugt i64 1, %"$gasrem_1058"
  br i1 %"$gascmp_1059", label %"$out_of_gas_1060", label %"$have_gas_1061"

"$out_of_gas_1060":                               ; preds = %"$have_gas_1056"
  call void @_out_of_gas()
  br label %"$have_gas_1061"

"$have_gas_1061":                                 ; preds = %"$out_of_gas_1060", %"$have_gas_1056"
  %"$consume_1062" = sub i64 %"$gasrem_1058", 1
  store i64 %"$consume_1062", i64* @_gasrem, align 8
  %"$ListUtils.list_length_1063" = load { i8*, i8* }*, { i8*, i8* }** @ListUtils.list_length, align 8
  %"$ListUtils.list_length_1064" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$ListUtils.list_length_1063", i32 2
  %"$ListUtils.list_length_1065" = bitcast { i8*, i8* }* %"$ListUtils.list_length_1064" to { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }*
  %"$ListUtils.list_length_1066" = load { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* }* %"$ListUtils.list_length_1065", align 8
  %"$ListUtils.list_length_fptr_1067" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1066", 0
  %"$ListUtils.list_length_envptr_1068" = extractvalue { { %Uint32 (i8*, %TName_List_Int64*)*, i8* } (i8*)*, i8* } %"$ListUtils.list_length_1066", 1
  %"$ListUtils.list_length_call_1069" = call { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_fptr_1067"(i8* %"$ListUtils.list_length_envptr_1068"), !dbg !114
  store { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$ListUtils.list_length_call_1069", { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8, !dbg !115
  %"$gasrem_1070" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1071" = icmp ugt i64 1, %"$gasrem_1070"
  br i1 %"$gascmp_1071", label %"$out_of_gas_1072", label %"$have_gas_1073"

"$out_of_gas_1072":                               ; preds = %"$have_gas_1061"
  call void @_out_of_gas()
  br label %"$have_gas_1073"

"$have_gas_1073":                                 ; preds = %"$out_of_gas_1072", %"$have_gas_1061"
  %"$consume_1074" = sub i64 %"$gasrem_1070", 1
  store i64 %"$consume_1074", i64* @_gasrem, align 8
  %one2 = alloca %Int64, align 8
  %"$gasrem_1075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1076" = icmp ugt i64 1, %"$gasrem_1075"
  br i1 %"$gascmp_1076", label %"$out_of_gas_1077", label %"$have_gas_1078"

"$out_of_gas_1077":                               ; preds = %"$have_gas_1073"
  call void @_out_of_gas()
  br label %"$have_gas_1078"

"$have_gas_1078":                                 ; preds = %"$out_of_gas_1077", %"$have_gas_1073"
  %"$consume_1079" = sub i64 %"$gasrem_1075", 1
  store i64 %"$consume_1079", i64* @_gasrem, align 8
  store %Int64 { i64 1 }, %Int64* %one2, align 8, !dbg !116
  %"$gasrem_1080" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1081" = icmp ugt i64 1, %"$gasrem_1080"
  br i1 %"$gascmp_1081", label %"$out_of_gas_1082", label %"$have_gas_1083"

"$out_of_gas_1082":                               ; preds = %"$have_gas_1078"
  call void @_out_of_gas()
  br label %"$have_gas_1083"

"$have_gas_1083":                                 ; preds = %"$out_of_gas_1082", %"$have_gas_1078"
  %"$consume_1084" = sub i64 %"$gasrem_1080", 1
  store i64 %"$consume_1084", i64* @_gasrem, align 8
  %f2l = alloca %TName_List_Int64*, align 8
  %"$gasrem_1085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1086" = icmp ugt i64 1, %"$gasrem_1085"
  br i1 %"$gascmp_1086", label %"$out_of_gas_1087", label %"$have_gas_1088"

"$out_of_gas_1087":                               ; preds = %"$have_gas_1083"
  call void @_out_of_gas()
  br label %"$have_gas_1088"

"$have_gas_1088":                                 ; preds = %"$out_of_gas_1087", %"$have_gas_1083"
  %"$consume_1089" = sub i64 %"$gasrem_1085", 1
  store i64 %"$consume_1089", i64* @_gasrem, align 8
  %"$f2_14" = alloca %TName_List_Int64*, align 8
  %"$f2_1090" = load { %TName_List_Int64* (i8*, %Int64)*, i8* }, { %TName_List_Int64* (i8*, %Int64)*, i8* }* %f2, align 8
  %"$f2_fptr_1091" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1090", 0
  %"$f2_envptr_1092" = extractvalue { %TName_List_Int64* (i8*, %Int64)*, i8* } %"$f2_1090", 1
  %"$one_1093" = load %Int64, %Int64* %one2, align 8
  %"$f2_call_1094" = call %TName_List_Int64* %"$f2_fptr_1091"(i8* %"$f2_envptr_1092", %Int64 %"$one_1093"), !dbg !117
  store %TName_List_Int64* %"$f2_call_1094", %TName_List_Int64** %"$f2_14", align 8, !dbg !117
  %"$$f2_14_1095" = load %TName_List_Int64*, %TName_List_Int64** %"$f2_14", align 8
  store %TName_List_Int64* %"$$f2_14_1095", %TName_List_Int64** %f2l, align 8, !dbg !117
  %"$gasrem_1096" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1097" = icmp ugt i64 1, %"$gasrem_1096"
  br i1 %"$gascmp_1097", label %"$out_of_gas_1098", label %"$have_gas_1099"

"$out_of_gas_1098":                               ; preds = %"$have_gas_1088"
  call void @_out_of_gas()
  br label %"$have_gas_1099"

"$have_gas_1099":                                 ; preds = %"$out_of_gas_1098", %"$have_gas_1088"
  %"$consume_1100" = sub i64 %"$gasrem_1096", 1
  store i64 %"$consume_1100", i64* @_gasrem, align 8
  %"$len_15" = alloca %Uint32, align 8
  %"$len_1101" = load { %Uint32 (i8*, %TName_List_Int64*)*, i8* }, { %Uint32 (i8*, %TName_List_Int64*)*, i8* }* %len1, align 8
  %"$len_fptr_1102" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1101", 0
  %"$len_envptr_1103" = extractvalue { %Uint32 (i8*, %TName_List_Int64*)*, i8* } %"$len_1101", 1
  %"$f2l_1104" = load %TName_List_Int64*, %TName_List_Int64** %f2l, align 8
  %"$len_call_1105" = call %Uint32 %"$len_fptr_1102"(i8* %"$len_envptr_1103", %TName_List_Int64* %"$f2l_1104"), !dbg !118
  store %Uint32 %"$len_call_1105", %Uint32* %"$len_15", align 4, !dbg !118
  %"$$len_15_1106" = load %Uint32, %Uint32* %"$len_15", align 4
  store %Uint32 %"$$len_15_1106", %Uint32* %"$expr_48", align 4, !dbg !118
  br label %"$matchsucc_956"

"$empty_default_960":                             ; preds = %"$have_gas_954"
  br label %"$matchsucc_956"

"$matchsucc_956":                                 ; preds = %"$have_gas_1099", %"$have_gas_1026", %"$empty_default_960"
  %"$$expr_48_1107" = load %Uint32, %Uint32* %"$expr_48", align 4
  ret %Uint32 %"$$expr_48_1107"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1108" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_1109" = alloca %Uint32, align 8
  %"$memvoidcast_1110" = bitcast %Uint32* %"$pval_1109" to i8*
  store %Uint32 %"$exprval_1108", %Uint32* %"$pval_1109", align 4
  %"$execptr_load_1111" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1111", %_TyDescrTy_Typ* @"$TyDescr_Uint32_69", i8* %"$memvoidcast_1110")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "multi-type-inst.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_63", linkageName: "$fundef_63", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 11, column: 14, scope: !4)
!9 = !DILocation(line: 12, column: 14, scope: !4)
!10 = !DILocation(line: 13, column: 5, scope: !4)
!11 = distinct !DISubprogram(name: "$fundef_61", linkageName: "$fundef_61", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 11, column: 5, scope: !11)
!13 = distinct !DISubprogram(name: "$fundef_59", linkageName: "$fundef_59", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = !DILocation(line: 11, column: 14, scope: !13)
!15 = !DILocation(line: 12, column: 14, scope: !13)
!16 = !DILocation(line: 13, column: 5, scope: !13)
!17 = distinct !DISubprogram(name: "$fundef_57", linkageName: "$fundef_57", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 11, column: 5, scope: !17)
!19 = distinct !DISubprogram(name: "$fundef_55", linkageName: "$fundef_55", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!20 = !DILocation(line: 4, column: 14, scope: !19)
!21 = !DILocation(line: 5, column: 5, scope: !19)
!22 = distinct !DISubprogram(name: "$fundef_53", linkageName: "$fundef_53", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!23 = !DILocation(line: 4, column: 5, scope: !22)
!24 = distinct !DISubprogram(name: "$fundef_51", linkageName: "$fundef_51", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!25 = !DILocation(line: 4, column: 14, scope: !24)
!26 = !DILocation(line: 5, column: 5, scope: !24)
!27 = distinct !DISubprogram(name: "$fundef_49", linkageName: "$fundef_49", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DILocation(line: 4, column: 5, scope: !27)
!29 = distinct !DISubprogram(name: "$fundef_46", linkageName: "$fundef_46", scope: !30, file: !30, line: 104, type: !5, scopeLine: 104, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!30 = !DIFile(filename: "ListUtils.scillib", directory: "../src/stdlib")
!31 = !DILocation(line: 104, column: 5, scope: !29)
!32 = distinct !DISubprogram(name: "$fundef_44", linkageName: "$fundef_44", scope: !30, file: !30, line: 103, type: !5, scopeLine: 103, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!33 = !DILocation(line: 104, column: 5, scope: !32)
!34 = distinct !DISubprogram(name: "$fundef_42", linkageName: "$fundef_42", scope: !30, file: !30, line: 101, type: !5, scopeLine: 101, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!35 = !DILocation(line: 101, column: 16, scope: !34)
!36 = !DILocation(line: 101, column: 15, scope: !34)
!37 = !DILocation(line: 102, column: 13, scope: !34)
!38 = !DILocation(line: 103, column: 34, scope: !34)
!39 = !DILocation(line: 105, column: 14, scope: !34)
!40 = !DILocation(line: 106, column: 3, scope: !34)
!41 = distinct !DISubprogram(name: "$fundef_40", linkageName: "$fundef_40", scope: !30, file: !30, line: 104, type: !5, scopeLine: 104, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!42 = !DILocation(line: 104, column: 5, scope: !41)
!43 = distinct !DISubprogram(name: "$fundef_38", linkageName: "$fundef_38", scope: !30, file: !30, line: 103, type: !5, scopeLine: 103, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!44 = !DILocation(line: 104, column: 5, scope: !43)
!45 = distinct !DISubprogram(name: "$fundef_36", linkageName: "$fundef_36", scope: !30, file: !30, line: 101, type: !5, scopeLine: 101, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!46 = !DILocation(line: 101, column: 16, scope: !45)
!47 = !DILocation(line: 101, column: 15, scope: !45)
!48 = !DILocation(line: 102, column: 13, scope: !45)
!49 = !DILocation(line: 103, column: 34, scope: !45)
!50 = !DILocation(line: 105, column: 14, scope: !45)
!51 = !DILocation(line: 106, column: 3, scope: !45)
!52 = distinct !DISubprogram(name: "$fundef_34", linkageName: "$fundef_34", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!53 = !DIFile(filename: "Prelude", directory: ".")
!54 = !DILocation(line: 1, column: 37, scope: !52)
!55 = !DILocation(line: 1, column: 74, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !53, line: 1, column: 52)
!57 = distinct !DILexicalBlock(scope: !52, file: !53, line: 1, column: 37)
!58 = !DILocation(line: 1, column: 83, scope: !56)
!59 = !DILocation(line: 1, column: 100, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !53, line: 1, column: 93)
!61 = distinct !DISubprogram(name: "$fundef_32", linkageName: "$fundef_32", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!62 = !DILocation(line: 1, column: 37, scope: !61)
!63 = distinct !DISubprogram(name: "$fundef_30", linkageName: "$fundef_30", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!64 = !DILocation(line: 1, column: 17, scope: !63)
!65 = distinct !DISubprogram(name: "$fundef_28", linkageName: "$fundef_28", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!66 = !DILocation(line: 1, column: 17, scope: !65)
!67 = distinct !DISubprogram(name: "$fundef_26", linkageName: "$fundef_26", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!68 = !DILocation(line: 1, column: 17, scope: !67)
!69 = distinct !DISubprogram(name: "$fundef_24", linkageName: "$fundef_24", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!70 = !DILocation(line: 1, column: 37, scope: !69)
!71 = !DILocation(line: 1, column: 74, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !53, line: 1, column: 52)
!73 = distinct !DILexicalBlock(scope: !69, file: !53, line: 1, column: 37)
!74 = !DILocation(line: 1, column: 83, scope: !72)
!75 = !DILocation(line: 1, column: 100, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !53, line: 1, column: 93)
!77 = distinct !DISubprogram(name: "$fundef_22", linkageName: "$fundef_22", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!78 = !DILocation(line: 1, column: 37, scope: !77)
!79 = distinct !DISubprogram(name: "$fundef_20", linkageName: "$fundef_20", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!80 = !DILocation(line: 1, column: 17, scope: !79)
!81 = distinct !DISubprogram(name: "$fundef_18", linkageName: "$fundef_18", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!82 = !DILocation(line: 1, column: 17, scope: !81)
!83 = distinct !DISubprogram(name: "$fundef_16", linkageName: "$fundef_16", scope: !53, file: !53, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!84 = !DILocation(line: 1, column: 17, scope: !83)
!85 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !86, file: !86, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!86 = !DIFile(filename: ".", directory: ".")
!87 = !DILocation(line: 0, scope: !85)
!88 = !DILocation(line: 1, column: 17, scope: !85)
!89 = !DILocation(line: 100, column: 3, scope: !85)
!90 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!91 = !DILocation(line: 2, column: 3, scope: !90)
!92 = !DILocation(line: 9, column: 3, scope: !90)
!93 = !DILocation(line: 16, column: 17, scope: !90)
!94 = !DILocation(line: 18, column: 3, scope: !90)
!95 = !DILocation(line: 19, column: 13, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 19, column: 5)
!97 = distinct !DILexicalBlock(scope: !90, file: !2, line: 18, column: 3)
!98 = !DILocation(line: 20, column: 14, scope: !99)
!99 = distinct !DILexicalBlock(scope: !97, file: !2, line: 20, column: 5)
!100 = !DILocation(line: 24, column: 18, scope: !90)
!101 = !DILocation(line: 25, column: 1, scope: !90)
!102 = !DILocation(line: 27, column: 13, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 26, column: 3)
!104 = distinct !DILexicalBlock(scope: !90, file: !2, line: 25, column: 1)
!105 = !DILocation(line: 27, column: 12, scope: !103)
!106 = !DILocation(line: 28, column: 14, scope: !103)
!107 = !DILocation(line: 28, column: 13, scope: !103)
!108 = !DILocation(line: 29, column: 13, scope: !103)
!109 = !DILocation(line: 30, column: 13, scope: !103)
!110 = !DILocation(line: 31, column: 3, scope: !103)
!111 = !DILocation(line: 33, column: 13, scope: !112)
!112 = distinct !DILexicalBlock(scope: !104, file: !2, line: 32, column: 3)
!113 = !DILocation(line: 33, column: 12, scope: !112)
!114 = !DILocation(line: 34, column: 14, scope: !112)
!115 = !DILocation(line: 34, column: 13, scope: !112)
!116 = !DILocation(line: 35, column: 13, scope: !112)
!117 = !DILocation(line: 36, column: 13, scope: !112)
!118 = !DILocation(line: 37, column: 3, scope: !112)
