; let tf =
; tfun 'A =>
; tfun 'B =>
; fun (a : 'A) =>
; fun (b : 'B) =>
; Pair {'A 'B} a b
; in
; 
; let tf1 =
; tfun 'A =>
; tfun 'B =>
; @tf 'A 'B
; 
; in
; 
; let t1 = @tf1 Uint32 Uint64 in
; let t2 = @tf1 String ByStr20 in
; let uint32_one = Uint32 1 in
; let uint64_two = Uint64 2 in
; let hello_string = "hello" in
; let addr_bystr20 = 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa in
; 
; let p1 = t1 uint32_one uint64_two in
; let p2 = t2 hello_string addr_bystr20 in
; Pair {(Pair (Uint32) (Uint64)) ((Pair String ByStr20))} p1 p2
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_29" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_53" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_52"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_52" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_54"**, %"$TyDescrTy_ADTTyp_53"* }
%"$TyDescrTy_ADTTyp_Constr_54" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Pair_String_ByStr20 = type { i8, %CName_Pair_String_ByStr20* }
%CName_Pair_String_ByStr20 = type <{ i8, %String, [20 x i8] }>
%String = type { i8*, i32 }
%"$$fundef_27_env_80" = type { { i8*, i8* }* }
%"$$fundef_25_env_81" = type { { i8*, i8* }* }
%TName_Pair_Uint32_Uint64 = type { i8, %CName_Pair_Uint32_Uint64* }
%CName_Pair_Uint32_Uint64 = type <{ i8, %Uint32, %Uint64 }>
%Uint64 = type { i64 }
%Uint32 = type { i32 }
%"$$fundef_23_env_82" = type { { i8*, i8* }* }
%"$$fundef_21_env_83" = type { { i8*, i8* }* }
%"$$fundef_19_env_84" = type { %String }
%"$$fundef_17_env_85" = type {}
%"$$fundef_15_env_86" = type {}
%"$$fundef_13_env_87" = type {}
%"$$fundef_11_env_88" = type { %Uint32 }
%"$$fundef_9_env_89" = type {}
%"$$fundef_7_env_90" = type {}
%"$$fundef_5_env_91" = type {}
%"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)" = type { i8, %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* }
%"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)" = type <{ i8, %TName_Pair_Uint32_Uint64*, %TName_Pair_String_ByStr20* }>

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
@"$TyDescr_Bystr20_Prim_50" = global %"$TyDescrTy_PrimTyp_29" { i32 8, i32 20 }
@"$TyDescr_Bystr20_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Bystr20_Prim_50" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_55" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_65" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr20_56" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_71" to i8*) }
@"$TyDescr_ADT_Pair_Uint32_Uint64_57" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_77" to i8*) }
@"$TyDescr_Pair_ADTTyp_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_53" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_79", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 3, %"$TyDescrTy_ADTTyp_Specl_52"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_52"*], [3 x %"$TyDescrTy_ADTTyp_Specl_52"*]* @"$TyDescr_Pair_ADTTyp_m_specls_78", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_Constr_m_args_60" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_57", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_56"]
@"$TyDescr_ADT_Pair_61" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Constr_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_61", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_Constr_m_args_60", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_constrs_63" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_54"*] [%"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Constr_62"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_TArgs_64" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_57", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_56"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_65" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_52" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_TArgs_64", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_54"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_54"*], [1 x %"$TyDescrTy_ADTTyp_Constr_54"*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_constrs_63", i32 0, i32 0), %"$TyDescrTy_ADTTyp_53"* @"$TyDescr_Pair_ADTTyp_59" }
@"$TyDescr_Pair_Pair_String_ByStr20_Constr_m_args_66" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_47", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_51"]
@"$TyDescr_ADT_Pair_67" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr20_ADTTyp_Constr_68" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_67", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr20_Constr_m_args_66", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_constrs_69" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_54"*] [%"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Pair_Pair_String_ByStr20_ADTTyp_Constr_68"]
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_TArgs_70" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_47", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_51"]
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_71" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_52" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_TArgs_70", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_54"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_54"*], [1 x %"$TyDescrTy_ADTTyp_Constr_54"*]* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_constrs_69", i32 0, i32 0), %"$TyDescrTy_ADTTyp_53"* @"$TyDescr_Pair_ADTTyp_59" }
@"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_72" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_33", %_TyDescrTy_Typ* @"$TyDescr_Uint64_37"]
@"$TyDescr_ADT_Pair_73" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_74" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_73", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_72", i32 0, i32 0) }
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_75" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_54"*] [%"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_74"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_76" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_33", %_TyDescrTy_Typ* @"$TyDescr_Uint64_37"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_52" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_76", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_54"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_54"*], [1 x %"$TyDescrTy_ADTTyp_Constr_54"*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_75", i32 0, i32 0), %"$TyDescrTy_ADTTyp_53"* @"$TyDescr_Pair_ADTTyp_59" }
@"$TyDescr_Pair_ADTTyp_m_specls_78" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_52"*] [%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_65", %"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_71", %"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_77"]
@"$TyDescr_ADT_Pair_79" = unnamed_addr constant [4 x i8] c"Pair"
@"$stringlit_252" = unnamed_addr constant [5 x i8] c"hello"

define internal { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } @"$fundef_27"(%"$$fundef_27_env_80"* %0) {
entry:
  %"$$fundef_27_env_tf_184" = getelementptr inbounds %"$$fundef_27_env_80", %"$$fundef_27_env_80"* %0, i32 0, i32 0
  %"$tf_envload_185" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_27_env_tf_184"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_185", { i8*, i8* }** %tf
  %"$retval_28" = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }
  %"$tf_186" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_187" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_186", i32 2
  %"$tf_188" = bitcast { i8*, i8* }* %"$tf_187" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_189" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_188"
  %"$tf_fptr_190" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_189", 0
  %"$tf_envptr_191" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_189", 1
  %"$tf_call_192" = call { i8*, i8* }* %"$tf_fptr_190"(i8* %"$tf_envptr_191")
  %"$tf_193" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_192", i32 3
  %"$tf_194" = bitcast { i8*, i8* }* %"$tf_193" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  %"$tf_195" = load { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$tf_194"
  %"$tf_fptr_196" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf_195", 0
  %"$tf_envptr_197" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf_195", 1
  %"$tf_call_198" = call { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf_fptr_196"(i8* %"$tf_envptr_197")
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf_call_198", { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_28"
  %"$$retval_28_199" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_28"
  ret { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$$retval_28_199"
}

define internal { i8*, i8* }* @"$fundef_25"(%"$$fundef_25_env_81"* %0) {
entry:
  %"$$fundef_25_env_tf_172" = getelementptr inbounds %"$$fundef_25_env_81", %"$$fundef_25_env_81"* %0, i32 0, i32 0
  %"$tf_envload_173" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_25_env_tf_172"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_173", { i8*, i8* }** %tf
  %"$retval_26" = alloca { i8*, i8* }*
  %"$$fundef_27_envp_174_load" = load i8*, i8** @_execptr
  %"$$fundef_27_envp_174_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_174_load", i64 8)
  %"$$fundef_27_envp_174" = bitcast i8* %"$$fundef_27_envp_174_salloc" to %"$$fundef_27_env_80"*
  %"$$fundef_27_env_voidp_176" = bitcast %"$$fundef_27_env_80"* %"$$fundef_27_envp_174" to i8*
  %"$$fundef_27_cloval_177" = insertvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)* bitcast ({ { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (%"$$fundef_27_env_80"*)* @"$fundef_27" to { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_176", 1
  %"$$fundef_27_env_tf_178" = getelementptr inbounds %"$$fundef_27_env_80", %"$$fundef_27_env_80"* %"$$fundef_27_envp_174", i32 0, i32 0
  %"$tf_179" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_179", { i8*, i8* }** %"$$fundef_27_env_tf_178"
  %"$dyndisp_table_180_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_180_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_180_salloc_load", i64 64)
  %"$dyndisp_table_180_salloc" = bitcast i8* %"$dyndisp_table_180_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_180" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_180_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_181" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_180", i32 3
  %"$dyndisp_pcast_182" = bitcast { i8*, i8* }* %"$dyndisp_gep_181" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$$fundef_27_cloval_177", { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_182"
  store { i8*, i8* }* %"$dyndisp_table_180", { i8*, i8* }** %"$retval_26"
  %"$$retval_26_183" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_26"
  ret { i8*, i8* }* %"$$retval_26_183"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_23"(%"$$fundef_23_env_82"* %0) {
entry:
  %"$$fundef_23_env_tf_156" = getelementptr inbounds %"$$fundef_23_env_82", %"$$fundef_23_env_82"* %0, i32 0, i32 0
  %"$tf_envload_157" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_23_env_tf_156"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_157", { i8*, i8* }** %tf
  %"$retval_24" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$tf_158" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_159" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_158", i32 0
  %"$tf_160" = bitcast { i8*, i8* }* %"$tf_159" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_161" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_160"
  %"$tf_fptr_162" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_161", 0
  %"$tf_envptr_163" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_161", 1
  %"$tf_call_164" = call { i8*, i8* }* %"$tf_fptr_162"(i8* %"$tf_envptr_163")
  %"$tf_165" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_164", i32 1
  %"$tf_166" = bitcast { i8*, i8* }* %"$tf_165" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_167" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_166"
  %"$tf_fptr_168" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_167", 0
  %"$tf_envptr_169" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_167", 1
  %"$tf_call_170" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_168"(i8* %"$tf_envptr_169")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_170", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_24"
  %"$$retval_24_171" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_24"
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_24_171"
}

define internal { i8*, i8* }* @"$fundef_21"(%"$$fundef_21_env_83"* %0) {
entry:
  %"$$fundef_21_env_tf_144" = getelementptr inbounds %"$$fundef_21_env_83", %"$$fundef_21_env_83"* %0, i32 0, i32 0
  %"$tf_envload_145" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_21_env_tf_144"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_145", { i8*, i8* }** %tf
  %"$retval_22" = alloca { i8*, i8* }*
  %"$$fundef_23_envp_146_load" = load i8*, i8** @_execptr
  %"$$fundef_23_envp_146_salloc" = call i8* @_salloc(i8* %"$$fundef_23_envp_146_load", i64 8)
  %"$$fundef_23_envp_146" = bitcast i8* %"$$fundef_23_envp_146_salloc" to %"$$fundef_23_env_82"*
  %"$$fundef_23_env_voidp_148" = bitcast %"$$fundef_23_env_82"* %"$$fundef_23_envp_146" to i8*
  %"$$fundef_23_cloval_149" = insertvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_23_env_82"*)* @"$fundef_23" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_23_env_voidp_148", 1
  %"$$fundef_23_env_tf_150" = getelementptr inbounds %"$$fundef_23_env_82", %"$$fundef_23_env_82"* %"$$fundef_23_envp_146", i32 0, i32 0
  %"$tf_151" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_151", { i8*, i8* }** %"$$fundef_23_env_tf_150"
  %"$dyndisp_table_152_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_152_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_152_salloc_load", i64 64)
  %"$dyndisp_table_152_salloc" = bitcast i8* %"$dyndisp_table_152_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_152" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_152_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_153" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_152", i32 1
  %"$dyndisp_pcast_154" = bitcast { i8*, i8* }* %"$dyndisp_gep_153" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_23_cloval_149", { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_154"
  store { i8*, i8* }* %"$dyndisp_table_152", { i8*, i8* }** %"$retval_22"
  %"$$retval_22_155" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_22"
  ret { i8*, i8* }* %"$$retval_22_155"
}

define internal %TName_Pair_String_ByStr20* @"$fundef_19"(%"$$fundef_19_env_84"* %0, [20 x i8]* %1) {
entry:
  %b = load [20 x i8], [20 x i8]* %1
  %"$$fundef_19_env_a_135" = getelementptr inbounds %"$$fundef_19_env_84", %"$$fundef_19_env_84"* %0, i32 0, i32 0
  %"$a_envload_136" = load %String, %String* %"$$fundef_19_env_a_135"
  %a = alloca %String
  store %String %"$a_envload_136", %String* %a
  %"$retval_20" = alloca %TName_Pair_String_ByStr20*
  %"$a_137" = load %String, %String* %a
  %"$adtval_138_load" = load i8*, i8** @_execptr
  %"$adtval_138_salloc" = call i8* @_salloc(i8* %"$adtval_138_load", i64 37)
  %"$adtval_138" = bitcast i8* %"$adtval_138_salloc" to %CName_Pair_String_ByStr20*
  %"$adtgep_139" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_138", i32 0, i32 0
  store i8 0, i8* %"$adtgep_139"
  %"$adtgep_140" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_138", i32 0, i32 1
  store %String %"$a_137", %String* %"$adtgep_140"
  %"$adtgep_141" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_138", i32 0, i32 2
  store [20 x i8] %b, [20 x i8]* %"$adtgep_141"
  %"$adtptr_142" = bitcast %CName_Pair_String_ByStr20* %"$adtval_138" to %TName_Pair_String_ByStr20*
  store %TName_Pair_String_ByStr20* %"$adtptr_142", %TName_Pair_String_ByStr20** %"$retval_20"
  %"$$retval_20_143" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %"$retval_20"
  ret %TName_Pair_String_ByStr20* %"$$retval_20_143"
}

define internal { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } @"$fundef_17"(%"$$fundef_17_env_85"* %0, %String %1) {
entry:
  %"$retval_18" = alloca { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }
  %"$$fundef_19_envp_129_load" = load i8*, i8** @_execptr
  %"$$fundef_19_envp_129_salloc" = call i8* @_salloc(i8* %"$$fundef_19_envp_129_load", i64 16)
  %"$$fundef_19_envp_129" = bitcast i8* %"$$fundef_19_envp_129_salloc" to %"$$fundef_19_env_84"*
  %"$$fundef_19_env_voidp_131" = bitcast %"$$fundef_19_env_84"* %"$$fundef_19_envp_129" to i8*
  %"$$fundef_19_cloval_132" = insertvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)* bitcast (%TName_Pair_String_ByStr20* (%"$$fundef_19_env_84"*, [20 x i8]*)* @"$fundef_19" to %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_19_env_voidp_131", 1
  %"$$fundef_19_env_a_133" = getelementptr inbounds %"$$fundef_19_env_84", %"$$fundef_19_env_84"* %"$$fundef_19_envp_129", i32 0, i32 0
  store %String %1, %String* %"$$fundef_19_env_a_133"
  store { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$fundef_19_cloval_132", { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_18"
  %"$$retval_18_134" = load { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_18"
  ret { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$retval_18_134"
}

define internal { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } @"$fundef_15"(%"$$fundef_15_env_86"* %0) {
entry:
  %"$retval_16" = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)* bitcast ({ %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_17_env_85"*, %String)* @"$fundef_17" to { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*), i8* null }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_16"
  %"$$retval_16_128" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_16"
  ret { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$$retval_16_128"
}

define internal { i8*, i8* }* @"$fundef_13"(%"$$fundef_13_env_87"* %0) {
entry:
  %"$retval_14" = alloca { i8*, i8* }*
  %"$dyndisp_table_121_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_121_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_121_salloc_load", i64 64)
  %"$dyndisp_table_121_salloc" = bitcast i8* %"$dyndisp_table_121_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_121" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_121_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_122" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_121", i32 3
  %"$dyndisp_pcast_123" = bitcast { i8*, i8* }* %"$dyndisp_gep_122" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)* bitcast ({ { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (%"$$fundef_15_env_86"*)* @"$fundef_15" to { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_123"
  store { i8*, i8* }* %"$dyndisp_table_121", { i8*, i8* }** %"$retval_14"
  %"$$retval_14_124" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_14"
  ret { i8*, i8* }* %"$$retval_14_124"
}

define internal %TName_Pair_Uint32_Uint64* @"$fundef_11"(%"$$fundef_11_env_88"* %0, %Uint64 %1) {
entry:
  %"$$fundef_11_env_a_109" = getelementptr inbounds %"$$fundef_11_env_88", %"$$fundef_11_env_88"* %0, i32 0, i32 0
  %"$a_envload_110" = load %Uint32, %Uint32* %"$$fundef_11_env_a_109"
  %a = alloca %Uint32
  store %Uint32 %"$a_envload_110", %Uint32* %a
  %"$retval_12" = alloca %TName_Pair_Uint32_Uint64*
  %"$a_111" = load %Uint32, %Uint32* %a
  %"$adtval_112_load" = load i8*, i8** @_execptr
  %"$adtval_112_salloc" = call i8* @_salloc(i8* %"$adtval_112_load", i64 13)
  %"$adtval_112" = bitcast i8* %"$adtval_112_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_113" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_112", i32 0, i32 0
  store i8 0, i8* %"$adtgep_113"
  %"$adtgep_114" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_112", i32 0, i32 1
  store %Uint32 %"$a_111", %Uint32* %"$adtgep_114"
  %"$adtgep_115" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_112", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_115"
  %"$adtptr_116" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_112" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_116", %TName_Pair_Uint32_Uint64** %"$retval_12"
  %"$$retval_12_117" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$retval_12"
  ret %TName_Pair_Uint32_Uint64* %"$$retval_12_117"
}

define internal { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_9"(%"$$fundef_9_env_89"* %0, %Uint32 %1) {
entry:
  %"$retval_10" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }
  %"$$fundef_11_envp_103_load" = load i8*, i8** @_execptr
  %"$$fundef_11_envp_103_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_103_load", i64 4)
  %"$$fundef_11_envp_103" = bitcast i8* %"$$fundef_11_envp_103_salloc" to %"$$fundef_11_env_88"*
  %"$$fundef_11_env_voidp_105" = bitcast %"$$fundef_11_env_88"* %"$$fundef_11_envp_103" to i8*
  %"$$fundef_11_cloval_106" = insertvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_Uint32_Uint64* (%"$$fundef_11_env_88"*, %Uint64)* @"$fundef_11" to %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_11_env_voidp_105", 1
  %"$$fundef_11_env_a_107" = getelementptr inbounds %"$$fundef_11_env_88", %"$$fundef_11_env_88"* %"$$fundef_11_envp_103", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_11_env_a_107"
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_11_cloval_106", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10"
  %"$$retval_10_108" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10"
  ret { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_10_108"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_7"(%"$$fundef_7_env_90"* %0) {
entry:
  %"$retval_8" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)* bitcast ({ %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_9_env_89"*, %Uint32)* @"$fundef_9" to { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*), i8* null }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8"
  %"$$retval_8_102" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8"
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_8_102"
}

define internal { i8*, i8* }* @"$fundef_5"(%"$$fundef_5_env_91"* %0) {
entry:
  %"$retval_6" = alloca { i8*, i8* }*
  %"$dyndisp_table_95_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_95_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_95_salloc_load", i64 64)
  %"$dyndisp_table_95_salloc" = bitcast i8* %"$dyndisp_table_95_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_95" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_95_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_96" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_95", i32 1
  %"$dyndisp_pcast_97" = bitcast { i8*, i8* }* %"$dyndisp_gep_96" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_7_env_90"*)* @"$fundef_7" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_97"
  store { i8*, i8* }* %"$dyndisp_table_95", { i8*, i8* }** %"$retval_6"
  %"$$retval_6_98" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_6"
  ret { i8*, i8* }* %"$$retval_6_98"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* @"$scilla_expr_200"(i8* %0) {
entry:
  %"$expr_4" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  %tf = alloca { i8*, i8* }*
  %"$dyndisp_table_207_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_207_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_207_salloc_load", i64 64)
  %"$dyndisp_table_207_salloc" = bitcast i8* %"$dyndisp_table_207_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_207" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_207_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_208" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_207", i32 0
  %"$dyndisp_pcast_209" = bitcast { i8*, i8* }* %"$dyndisp_gep_208" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_5_env_91"*)* @"$fundef_5" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_209"
  %"$dyndisp_gep_210" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_207", i32 2
  %"$dyndisp_pcast_211" = bitcast { i8*, i8* }* %"$dyndisp_gep_210" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_13_env_87"*)* @"$fundef_13" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_211"
  store { i8*, i8* }* %"$dyndisp_table_207", { i8*, i8* }** %tf
  %tf1 = alloca { i8*, i8* }*
  %"$$fundef_21_envp_212_load" = load i8*, i8** @_execptr
  %"$$fundef_21_envp_212_salloc" = call i8* @_salloc(i8* %"$$fundef_21_envp_212_load", i64 8)
  %"$$fundef_21_envp_212" = bitcast i8* %"$$fundef_21_envp_212_salloc" to %"$$fundef_21_env_83"*
  %"$$fundef_21_env_voidp_214" = bitcast %"$$fundef_21_env_83"* %"$$fundef_21_envp_212" to i8*
  %"$$fundef_21_cloval_215" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_21_env_83"*)* @"$fundef_21" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_21_env_voidp_214", 1
  %"$$fundef_21_env_tf_216" = getelementptr inbounds %"$$fundef_21_env_83", %"$$fundef_21_env_83"* %"$$fundef_21_envp_212", i32 0, i32 0
  %"$tf_217" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_217", { i8*, i8* }** %"$$fundef_21_env_tf_216"
  %"$$fundef_25_env_voidp_219" = bitcast %"$$fundef_21_env_83"* %"$$fundef_21_envp_212" to i8*
  %"$$fundef_25_cloval_220" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_25_env_81"*)* @"$fundef_25" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_25_env_voidp_219", 1
  %"$dyndisp_table_221_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_221_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_221_salloc_load", i64 64)
  %"$dyndisp_table_221_salloc" = bitcast i8* %"$dyndisp_table_221_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_221" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_221_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_222" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_221", i32 0
  %"$dyndisp_pcast_223" = bitcast { i8*, i8* }* %"$dyndisp_gep_222" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_21_cloval_215", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_223"
  %"$dyndisp_gep_224" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_221", i32 2
  %"$dyndisp_pcast_225" = bitcast { i8*, i8* }* %"$dyndisp_gep_224" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_25_cloval_220", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_225"
  store { i8*, i8* }* %"$dyndisp_table_221", { i8*, i8* }** %tf1
  %t1 = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$tf1_226" = load { i8*, i8* }*, { i8*, i8* }** %tf1
  %"$tf1_227" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_226", i32 0
  %"$tf1_228" = bitcast { i8*, i8* }* %"$tf1_227" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_229" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_228"
  %"$tf1_fptr_230" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_229", 0
  %"$tf1_envptr_231" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_229", 1
  %"$tf1_call_232" = call { i8*, i8* }* %"$tf1_fptr_230"(i8* %"$tf1_envptr_231")
  %"$tf1_233" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_232", i32 1
  %"$tf1_234" = bitcast { i8*, i8* }* %"$tf1_233" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf1_235" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf1_234"
  %"$tf1_fptr_236" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_235", 0
  %"$tf1_envptr_237" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_235", 1
  %"$tf1_call_238" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_fptr_236"(i8* %"$tf1_envptr_237")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_call_238", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1
  %t2 = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }
  %"$tf1_239" = load { i8*, i8* }*, { i8*, i8* }** %tf1
  %"$tf1_240" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_239", i32 2
  %"$tf1_241" = bitcast { i8*, i8* }* %"$tf1_240" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_242" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_241"
  %"$tf1_fptr_243" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_242", 0
  %"$tf1_envptr_244" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_242", 1
  %"$tf1_call_245" = call { i8*, i8* }* %"$tf1_fptr_243"(i8* %"$tf1_envptr_244")
  %"$tf1_246" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_245", i32 3
  %"$tf1_247" = bitcast { i8*, i8* }* %"$tf1_246" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  %"$tf1_248" = load { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$tf1_247"
  %"$tf1_fptr_249" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf1_248", 0
  %"$tf1_envptr_250" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf1_248", 1
  %"$tf1_call_251" = call { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf1_fptr_249"(i8* %"$tf1_envptr_250")
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf1_call_251", { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %t2
  %uint32_one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %uint32_one
  %uint64_two = alloca %Uint64
  store %Uint64 { i64 2 }, %Uint64* %uint64_two
  %hello_string = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_252", i32 0, i32 0), i32 5 }, %String* %hello_string
  %addr_bystr20 = alloca [20 x i8]
  store [20 x i8] c"\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA", [20 x i8]* %addr_bystr20
  %p1 = alloca %TName_Pair_Uint32_Uint64*
  %"$t1_0" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }
  %"$t1_253" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1
  %"$t1_fptr_254" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_253", 0
  %"$t1_envptr_255" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_253", 1
  %"$uint32_one_256" = load %Uint32, %Uint32* %uint32_one
  %"$t1_call_257" = call { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_fptr_254"(i8* %"$t1_envptr_255", %Uint32 %"$uint32_one_256")
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_call_257", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0"
  %"$t1_1" = alloca %TName_Pair_Uint32_Uint64*
  %"$$t1_0_258" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0"
  %"$$t1_0_fptr_259" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_258", 0
  %"$$t1_0_envptr_260" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_258", 1
  %"$uint64_two_261" = load %Uint64, %Uint64* %uint64_two
  %"$$t1_0_call_262" = call %TName_Pair_Uint32_Uint64* %"$$t1_0_fptr_259"(i8* %"$$t1_0_envptr_260", %Uint64 %"$uint64_two_261")
  store %TName_Pair_Uint32_Uint64* %"$$t1_0_call_262", %TName_Pair_Uint32_Uint64** %"$t1_1"
  %"$$t1_1_263" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$t1_1"
  store %TName_Pair_Uint32_Uint64* %"$$t1_1_263", %TName_Pair_Uint32_Uint64** %p1
  %p2 = alloca %TName_Pair_String_ByStr20*
  %"$t2_2" = alloca { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }
  %"$t2_264" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %t2
  %"$t2_fptr_265" = extractvalue { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$t2_264", 0
  %"$t2_envptr_266" = extractvalue { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$t2_264", 1
  %"$hello_string_267" = load %String, %String* %hello_string
  %"$t2_call_268" = call { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$t2_fptr_265"(i8* %"$t2_envptr_266", %String %"$hello_string_267")
  store { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$t2_call_268", { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$t2_2"
  %"$t2_3" = alloca %TName_Pair_String_ByStr20*
  %"$$t2_2_269" = load { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$t2_2"
  %"$$t2_2_fptr_270" = extractvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$t2_2_269", 0
  %"$$t2_2_envptr_271" = extractvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$t2_2_269", 1
  %"$$t2_2_addr_bystr20_272" = alloca [20 x i8]
  %"$addr_bystr20_273" = load [20 x i8], [20 x i8]* %addr_bystr20
  store [20 x i8] %"$addr_bystr20_273", [20 x i8]* %"$$t2_2_addr_bystr20_272"
  %"$$t2_2_call_274" = call %TName_Pair_String_ByStr20* %"$$t2_2_fptr_270"(i8* %"$$t2_2_envptr_271", [20 x i8]* %"$$t2_2_addr_bystr20_272")
  store %TName_Pair_String_ByStr20* %"$$t2_2_call_274", %TName_Pair_String_ByStr20** %"$t2_3"
  %"$$t2_3_275" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %"$t2_3"
  store %TName_Pair_String_ByStr20* %"$$t2_3_275", %TName_Pair_String_ByStr20** %p2
  %"$p1_276" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %p1
  %"$p2_277" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %p2
  %"$adtval_278_load" = load i8*, i8** @_execptr
  %"$adtval_278_salloc" = call i8* @_salloc(i8* %"$adtval_278_load", i64 17)
  %"$adtval_278" = bitcast i8* %"$adtval_278_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  %"$adtgep_279" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_278", i32 0, i32 0
  store i8 0, i8* %"$adtgep_279"
  %"$adtgep_280" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_278", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$p1_276", %TName_Pair_Uint32_Uint64** %"$adtgep_280"
  %"$adtgep_281" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_278", i32 0, i32 2
  store %TName_Pair_String_ByStr20* %"$p2_277", %TName_Pair_String_ByStr20** %"$adtgep_281"
  %"$adtptr_282" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_278" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtptr_282", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"** %"$expr_4"
  %"$$expr_4_283" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"** %"$expr_4"
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$$expr_4_283"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_284" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* @"$scilla_expr_200"(i8* null)
  %"$memvoidcast_285" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$exprval_284" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_55", i8* %"$memvoidcast_285")
  ret void
}
