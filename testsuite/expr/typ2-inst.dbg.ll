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
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_29" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_61" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_60"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_60" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_62"**, %"$TyDescrTy_ADTTyp_61"* }
%"$TyDescrTy_ADTTyp_Constr_62" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Pair_String_ByStr20 = type { i8, %CName_Pair_String_ByStr20* }
%CName_Pair_String_ByStr20 = type <{ i8, %String, [20 x i8] }>
%String = type { i8*, i32 }
%"$$fundef_27_env_88" = type { { i8*, i8* }* }
%"$$fundef_25_env_89" = type { { i8*, i8* }* }
%TName_Pair_Uint32_Uint64 = type { i8, %CName_Pair_Uint32_Uint64* }
%CName_Pair_Uint32_Uint64 = type <{ i8, %Uint32, %Uint64 }>
%Uint64 = type { i64 }
%Uint32 = type { i32 }
%"$$fundef_23_env_90" = type { { i8*, i8* }* }
%"$$fundef_21_env_91" = type { { i8*, i8* }* }
%"$$fundef_19_env_92" = type { %String }
%"$$fundef_17_env_93" = type {}
%"$$fundef_15_env_94" = type {}
%"$$fundef_13_env_95" = type {}
%"$$fundef_11_env_96" = type { %Uint32 }
%"$$fundef_9_env_97" = type {}
%"$$fundef_7_env_98" = type {}
%"$$fundef_5_env_99" = type {}
%"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)" = type { i8, %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* }
%"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)" = type <{ i8, %TName_Pair_Uint32_Uint64*, %TName_Pair_String_ByStr20* }>

@_execptr = global i8* null
@_gasrem = global i64 0
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
@"$TyDescr_Bnum_Prim_48" = global %"$TyDescrTy_PrimTyp_29" { i32 3, i32 0 }
@"$TyDescr_Bnum_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Bnum_Prim_48" to i8*) }
@"$TyDescr_Message_Prim_50" = global %"$TyDescrTy_PrimTyp_29" { i32 4, i32 0 }
@"$TyDescr_Message_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Message_Prim_50" to i8*) }
@"$TyDescr_Event_Prim_52" = global %"$TyDescrTy_PrimTyp_29" { i32 5, i32 0 }
@"$TyDescr_Event_53" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Event_Prim_52" to i8*) }
@"$TyDescr_Exception_Prim_54" = global %"$TyDescrTy_PrimTyp_29" { i32 6, i32 0 }
@"$TyDescr_Exception_55" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Exception_Prim_54" to i8*) }
@"$TyDescr_Bystr_Prim_56" = global %"$TyDescrTy_PrimTyp_29" { i32 7, i32 0 }
@"$TyDescr_Bystr_57" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Bystr_Prim_56" to i8*) }
@"$TyDescr_Bystr20_Prim_58" = global %"$TyDescrTy_PrimTyp_29" { i32 8, i32 20 }
@"$TyDescr_Bystr20_59" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Bystr20_Prim_58" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_63" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_73" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr20_64" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_79" to i8*) }
@"$TyDescr_ADT_Pair_Uint32_Uint64_65" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_85" to i8*) }
@"$TyDescr_Pair_ADTTyp_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_61" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_87", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 3, %"$TyDescrTy_ADTTyp_Specl_60"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_60"*], [3 x %"$TyDescrTy_ADTTyp_Specl_60"*]* @"$TyDescr_Pair_ADTTyp_m_specls_86", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_Constr_m_args_68" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_65", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_64"]
@"$TyDescr_ADT_Pair_69" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Constr_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_69", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_Constr_m_args_68", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_constrs_71" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_62"*] [%"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Constr_70"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_TArgs_72" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_65", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_64"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_60" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_TArgs_72", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_62"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_62"*], [1 x %"$TyDescrTy_ADTTyp_Constr_62"*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_constrs_71", i32 0, i32 0), %"$TyDescrTy_ADTTyp_61"* @"$TyDescr_Pair_ADTTyp_67" }
@"$TyDescr_Pair_Pair_String_ByStr20_Constr_m_args_74" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_47", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_59"]
@"$TyDescr_ADT_Pair_75" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr20_ADTTyp_Constr_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_75", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr20_Constr_m_args_74", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_constrs_77" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_62"*] [%"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_Pair_Pair_String_ByStr20_ADTTyp_Constr_76"]
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_TArgs_78" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_47", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_59"]
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_60" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_TArgs_78", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_62"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_62"*], [1 x %"$TyDescrTy_ADTTyp_Constr_62"*]* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_constrs_77", i32 0, i32 0), %"$TyDescrTy_ADTTyp_61"* @"$TyDescr_Pair_ADTTyp_67" }
@"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_80" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_33", %_TyDescrTy_Typ* @"$TyDescr_Uint64_37"]
@"$TyDescr_ADT_Pair_81" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_81", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_80", i32 0, i32 0) }
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_83" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_62"*] [%"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_82"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_84" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_33", %_TyDescrTy_Typ* @"$TyDescr_Uint64_37"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_85" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_60" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_84", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_62"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_62"*], [1 x %"$TyDescrTy_ADTTyp_Constr_62"*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_83", i32 0, i32 0), %"$TyDescrTy_ADTTyp_61"* @"$TyDescr_Pair_ADTTyp_67" }
@"$TyDescr_Pair_ADTTyp_m_specls_86" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_60"*] [%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_73", %"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_79", %"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_85"]
@"$TyDescr_ADT_Pair_87" = unnamed_addr constant [4 x i8] c"Pair"
@"$stringlit_389" = unnamed_addr constant [5 x i8] c"hello"

define internal { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } @"$fundef_27"(%"$$fundef_27_env_88"* %0) !dbg !4 {
entry:
  %"$$fundef_27_env_tf_247" = getelementptr inbounds %"$$fundef_27_env_88", %"$$fundef_27_env_88"* %0, i32 0, i32 0
  %"$tf_envload_248" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_27_env_tf_247", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_248", { i8*, i8* }** %tf, align 8
  %"$retval_28" = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, align 8
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %entry
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %"$tf_254" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_255" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_254", i32 2
  %"$tf_256" = bitcast { i8*, i8* }* %"$tf_255" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_257" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_256", align 8
  %"$tf_fptr_258" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_257", 0
  %"$tf_envptr_259" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_257", 1
  %"$tf_call_260" = call { i8*, i8* }* %"$tf_fptr_258"(i8* %"$tf_envptr_259"), !dbg !8
  %"$tf_261" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_260", i32 3
  %"$tf_262" = bitcast { i8*, i8* }* %"$tf_261" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  %"$tf_263" = load { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$tf_262", align 8
  %"$tf_fptr_264" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf_263", 0
  %"$tf_envptr_265" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf_263", 1
  %"$tf_call_266" = call { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf_fptr_264"(i8* %"$tf_envptr_265"), !dbg !8
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf_call_266", { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_28", align 8, !dbg !9
  %"$$retval_28_267" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_28", align 8
  ret { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$$retval_28_267"
}

define internal { i8*, i8* }* @"$fundef_25"(%"$$fundef_25_env_89"* %0) !dbg !10 {
entry:
  %"$$fundef_25_env_tf_230" = getelementptr inbounds %"$$fundef_25_env_89", %"$$fundef_25_env_89"* %0, i32 0, i32 0
  %"$tf_envload_231" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_25_env_tf_230", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_231", { i8*, i8* }** %tf, align 8
  %"$retval_26" = alloca { i8*, i8* }*, align 8
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 1, %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %entry
  %"$consume_236" = sub i64 %"$gasrem_232", 1
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %"$$fundef_27_envp_237_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_27_envp_237_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_237_load", i64 8)
  %"$$fundef_27_envp_237" = bitcast i8* %"$$fundef_27_envp_237_salloc" to %"$$fundef_27_env_88"*
  %"$$fundef_27_env_voidp_239" = bitcast %"$$fundef_27_env_88"* %"$$fundef_27_envp_237" to i8*
  %"$$fundef_27_cloval_240" = insertvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)* bitcast ({ { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (%"$$fundef_27_env_88"*)* @"$fundef_27" to { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_239", 1
  %"$$fundef_27_env_tf_241" = getelementptr inbounds %"$$fundef_27_env_88", %"$$fundef_27_env_88"* %"$$fundef_27_envp_237", i32 0, i32 0
  %"$tf_242" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_242", { i8*, i8* }** %"$$fundef_27_env_tf_241", align 8
  %"$dyndisp_table_243_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_243_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_243_salloc_load", i64 64)
  %"$dyndisp_table_243_salloc" = bitcast i8* %"$dyndisp_table_243_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_243" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_243_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_244" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_243", i32 3
  %"$dyndisp_pcast_245" = bitcast { i8*, i8* }* %"$dyndisp_gep_244" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$$fundef_27_cloval_240", { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_245", align 8
  store { i8*, i8* }* %"$dyndisp_table_243", { i8*, i8* }** %"$retval_26", align 8, !dbg !11
  %"$$retval_26_246" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_26", align 8
  ret { i8*, i8* }* %"$$retval_26_246"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_23"(%"$$fundef_23_env_90"* %0) !dbg !12 {
entry:
  %"$$fundef_23_env_tf_209" = getelementptr inbounds %"$$fundef_23_env_90", %"$$fundef_23_env_90"* %0, i32 0, i32 0
  %"$tf_envload_210" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_23_env_tf_209", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_210", { i8*, i8* }** %tf, align 8
  %"$retval_24" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_212" = icmp ugt i64 1, %"$gasrem_211"
  br i1 %"$gascmp_212", label %"$out_of_gas_213", label %"$have_gas_214"

"$out_of_gas_213":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_214"

"$have_gas_214":                                  ; preds = %"$out_of_gas_213", %entry
  %"$consume_215" = sub i64 %"$gasrem_211", 1
  store i64 %"$consume_215", i64* @_gasrem, align 8
  %"$tf_216" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_217" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_216", i32 0
  %"$tf_218" = bitcast { i8*, i8* }* %"$tf_217" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_219" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_218", align 8
  %"$tf_fptr_220" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_219", 0
  %"$tf_envptr_221" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_219", 1
  %"$tf_call_222" = call { i8*, i8* }* %"$tf_fptr_220"(i8* %"$tf_envptr_221"), !dbg !13
  %"$tf_223" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_222", i32 1
  %"$tf_224" = bitcast { i8*, i8* }* %"$tf_223" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_225" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_224", align 8
  %"$tf_fptr_226" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_225", 0
  %"$tf_envptr_227" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_225", 1
  %"$tf_call_228" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_226"(i8* %"$tf_envptr_227"), !dbg !13
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_228", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_24", align 8, !dbg !14
  %"$$retval_24_229" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_24", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_24_229"
}

define internal { i8*, i8* }* @"$fundef_21"(%"$$fundef_21_env_91"* %0) !dbg !15 {
entry:
  %"$$fundef_21_env_tf_192" = getelementptr inbounds %"$$fundef_21_env_91", %"$$fundef_21_env_91"* %0, i32 0, i32 0
  %"$tf_envload_193" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_21_env_tf_192", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_193", { i8*, i8* }** %tf, align 8
  %"$retval_22" = alloca { i8*, i8* }*, align 8
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %entry
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %"$$fundef_23_envp_199_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_23_envp_199_salloc" = call i8* @_salloc(i8* %"$$fundef_23_envp_199_load", i64 8)
  %"$$fundef_23_envp_199" = bitcast i8* %"$$fundef_23_envp_199_salloc" to %"$$fundef_23_env_90"*
  %"$$fundef_23_env_voidp_201" = bitcast %"$$fundef_23_env_90"* %"$$fundef_23_envp_199" to i8*
  %"$$fundef_23_cloval_202" = insertvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_23_env_90"*)* @"$fundef_23" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_23_env_voidp_201", 1
  %"$$fundef_23_env_tf_203" = getelementptr inbounds %"$$fundef_23_env_90", %"$$fundef_23_env_90"* %"$$fundef_23_envp_199", i32 0, i32 0
  %"$tf_204" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_204", { i8*, i8* }** %"$$fundef_23_env_tf_203", align 8
  %"$dyndisp_table_205_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_205_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_205_salloc_load", i64 64)
  %"$dyndisp_table_205_salloc" = bitcast i8* %"$dyndisp_table_205_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_205" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_205_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_206" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_205", i32 1
  %"$dyndisp_pcast_207" = bitcast { i8*, i8* }* %"$dyndisp_gep_206" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_23_cloval_202", { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_207", align 8
  store { i8*, i8* }* %"$dyndisp_table_205", { i8*, i8* }** %"$retval_22", align 8, !dbg !16
  %"$$retval_22_208" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_22", align 8
  ret { i8*, i8* }* %"$$retval_22_208"
}

define internal %TName_Pair_String_ByStr20* @"$fundef_19"(%"$$fundef_19_env_92"* %0, [20 x i8]* %1) !dbg !17 {
entry:
  %b = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_19_env_a_178" = getelementptr inbounds %"$$fundef_19_env_92", %"$$fundef_19_env_92"* %0, i32 0, i32 0
  %"$a_envload_179" = load %String, %String* %"$$fundef_19_env_a_178", align 8
  %a = alloca %String, align 8
  store %String %"$a_envload_179", %String* %a, align 8
  %"$retval_20" = alloca %TName_Pair_String_ByStr20*, align 8
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %entry
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %"$a_185" = load %String, %String* %a, align 8
  %"$adtval_186_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_186_salloc" = call i8* @_salloc(i8* %"$adtval_186_load", i64 37)
  %"$adtval_186" = bitcast i8* %"$adtval_186_salloc" to %CName_Pair_String_ByStr20*
  %"$adtgep_187" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_186", i32 0, i32 0
  store i8 0, i8* %"$adtgep_187", align 1
  %"$adtgep_188" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_186", i32 0, i32 1
  store %String %"$a_185", %String* %"$adtgep_188", align 8
  %"$adtgep_189" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_186", i32 0, i32 2
  store [20 x i8] %b, [20 x i8]* %"$adtgep_189", align 1
  %"$adtptr_190" = bitcast %CName_Pair_String_ByStr20* %"$adtval_186" to %TName_Pair_String_ByStr20*
  store %TName_Pair_String_ByStr20* %"$adtptr_190", %TName_Pair_String_ByStr20** %"$retval_20", align 8, !dbg !18
  %"$$retval_20_191" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %"$retval_20", align 8
  ret %TName_Pair_String_ByStr20* %"$$retval_20_191"
}

define internal { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } @"$fundef_17"(%"$$fundef_17_env_93"* %0, %String %1) !dbg !19 {
entry:
  %"$retval_18" = alloca { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 1, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %entry
  %"$consume_171" = sub i64 %"$gasrem_167", 1
  store i64 %"$consume_171", i64* @_gasrem, align 8
  %"$$fundef_19_envp_172_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_19_envp_172_salloc" = call i8* @_salloc(i8* %"$$fundef_19_envp_172_load", i64 16)
  %"$$fundef_19_envp_172" = bitcast i8* %"$$fundef_19_envp_172_salloc" to %"$$fundef_19_env_92"*
  %"$$fundef_19_env_voidp_174" = bitcast %"$$fundef_19_env_92"* %"$$fundef_19_envp_172" to i8*
  %"$$fundef_19_cloval_175" = insertvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)* bitcast (%TName_Pair_String_ByStr20* (%"$$fundef_19_env_92"*, [20 x i8]*)* @"$fundef_19" to %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_19_env_voidp_174", 1
  %"$$fundef_19_env_a_176" = getelementptr inbounds %"$$fundef_19_env_92", %"$$fundef_19_env_92"* %"$$fundef_19_envp_172", i32 0, i32 0
  store %String %1, %String* %"$$fundef_19_env_a_176", align 8
  store { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$fundef_19_cloval_175", { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_18", align 8, !dbg !20
  %"$$retval_18_177" = load { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_18", align 8
  ret { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$retval_18_177"
}

define internal { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } @"$fundef_15"(%"$$fundef_15_env_94"* %0) !dbg !21 {
entry:
  %"$retval_16" = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, align 8
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 1, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %entry
  %"$consume_162" = sub i64 %"$gasrem_158", 1
  store i64 %"$consume_162", i64* @_gasrem, align 8
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)* bitcast ({ %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_17_env_93"*, %String)* @"$fundef_17" to { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*), i8* null }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_16", align 8, !dbg !22
  %"$$retval_16_166" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_16", align 8
  ret { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$$retval_16_166"
}

define internal { i8*, i8* }* @"$fundef_13"(%"$$fundef_13_env_95"* %0) !dbg !23 {
entry:
  %"$retval_14" = alloca { i8*, i8* }*, align 8
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %entry
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %"$dyndisp_table_154_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_154_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_154_salloc_load", i64 64)
  %"$dyndisp_table_154_salloc" = bitcast i8* %"$dyndisp_table_154_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_154" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_154_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_155" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_154", i32 3
  %"$dyndisp_pcast_156" = bitcast { i8*, i8* }* %"$dyndisp_gep_155" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)* bitcast ({ { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (%"$$fundef_15_env_94"*)* @"$fundef_15" to { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_156", align 8
  store { i8*, i8* }* %"$dyndisp_table_154", { i8*, i8* }** %"$retval_14", align 8, !dbg !24
  %"$$retval_14_157" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_14", align 8
  ret { i8*, i8* }* %"$$retval_14_157"
}

define internal %TName_Pair_Uint32_Uint64* @"$fundef_11"(%"$$fundef_11_env_96"* %0, %Uint64 %1) !dbg !25 {
entry:
  %"$$fundef_11_env_a_132" = getelementptr inbounds %"$$fundef_11_env_96", %"$$fundef_11_env_96"* %0, i32 0, i32 0
  %"$a_envload_133" = load %Uint32, %Uint32* %"$$fundef_11_env_a_132", align 4
  %a = alloca %Uint32, align 8
  store %Uint32 %"$a_envload_133", %Uint32* %a, align 4
  %"$retval_12" = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %entry
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  %"$a_139" = load %Uint32, %Uint32* %a, align 4
  %"$adtval_140_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_140_salloc" = call i8* @_salloc(i8* %"$adtval_140_load", i64 13)
  %"$adtval_140" = bitcast i8* %"$adtval_140_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_141" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_140", i32 0, i32 0
  store i8 0, i8* %"$adtgep_141", align 1
  %"$adtgep_142" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_140", i32 0, i32 1
  store %Uint32 %"$a_139", %Uint32* %"$adtgep_142", align 4
  %"$adtgep_143" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_140", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_143", align 8
  %"$adtptr_144" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_140" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_144", %TName_Pair_Uint32_Uint64** %"$retval_12", align 8, !dbg !26
  %"$$retval_12_145" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$retval_12", align 8
  ret %TName_Pair_Uint32_Uint64* %"$$retval_12_145"
}

define internal { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_9"(%"$$fundef_9_env_97"* %0, %Uint32 %1) !dbg !27 {
entry:
  %"$retval_10" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %entry
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  %"$$fundef_11_envp_126_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_11_envp_126_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_126_load", i64 4)
  %"$$fundef_11_envp_126" = bitcast i8* %"$$fundef_11_envp_126_salloc" to %"$$fundef_11_env_96"*
  %"$$fundef_11_env_voidp_128" = bitcast %"$$fundef_11_env_96"* %"$$fundef_11_envp_126" to i8*
  %"$$fundef_11_cloval_129" = insertvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_Uint32_Uint64* (%"$$fundef_11_env_96"*, %Uint64)* @"$fundef_11" to %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_11_env_voidp_128", 1
  %"$$fundef_11_env_a_130" = getelementptr inbounds %"$$fundef_11_env_96", %"$$fundef_11_env_96"* %"$$fundef_11_envp_126", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_11_env_a_130", align 4
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_11_cloval_129", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10", align 8, !dbg !28
  %"$$retval_10_131" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10", align 8
  ret { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_10_131"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_7"(%"$$fundef_7_env_98"* %0) !dbg !29 {
entry:
  %"$retval_8" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %entry
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)* bitcast ({ %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_9_env_97"*, %Uint32)* @"$fundef_9" to { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*), i8* null }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8", align 8, !dbg !30
  %"$$retval_8_120" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_8_120"
}

define internal { i8*, i8* }* @"$fundef_5"(%"$$fundef_5_env_99"* %0) !dbg !31 {
entry:
  %"$retval_6" = alloca { i8*, i8* }*, align 8
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 1, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %entry
  %"$consume_104" = sub i64 %"$gasrem_100", 1
  store i64 %"$consume_104", i64* @_gasrem, align 8
  %"$dyndisp_table_108_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_108_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_108_salloc_load", i64 64)
  %"$dyndisp_table_108_salloc" = bitcast i8* %"$dyndisp_table_108_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_108" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_108_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_109" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_108", i32 1
  %"$dyndisp_pcast_110" = bitcast { i8*, i8* }* %"$dyndisp_gep_109" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_7_env_98"*)* @"$fundef_7" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_110", align 8
  store { i8*, i8* }* %"$dyndisp_table_108", { i8*, i8* }** %"$retval_6", align 8, !dbg !32
  %"$$retval_6_111" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_6", align 8
  ret { i8*, i8* }* %"$$retval_6_111"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !33 {
entry:
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* @_scilla_expr_fun(i8* %0) !dbg !35 {
entry:
  %"$expr_4" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*, align 8
  %"$gasrem_268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_269" = icmp ugt i64 1, %"$gasrem_268"
  br i1 %"$gascmp_269", label %"$out_of_gas_270", label %"$have_gas_271"

"$out_of_gas_270":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_271"

"$have_gas_271":                                  ; preds = %"$out_of_gas_270", %entry
  %"$consume_272" = sub i64 %"$gasrem_268", 1
  store i64 %"$consume_272", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_274" = icmp ugt i64 1, %"$gasrem_273"
  br i1 %"$gascmp_274", label %"$out_of_gas_275", label %"$have_gas_276"

"$out_of_gas_275":                                ; preds = %"$have_gas_271"
  call void @_out_of_gas()
  br label %"$have_gas_276"

"$have_gas_276":                                  ; preds = %"$out_of_gas_275", %"$have_gas_271"
  %"$consume_277" = sub i64 %"$gasrem_273", 1
  store i64 %"$consume_277", i64* @_gasrem, align 8
  %"$dyndisp_table_284_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_284_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_284_salloc_load", i64 64)
  %"$dyndisp_table_284_salloc" = bitcast i8* %"$dyndisp_table_284_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_284" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_284_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_285" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_284", i32 0
  %"$dyndisp_pcast_286" = bitcast { i8*, i8* }* %"$dyndisp_gep_285" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_5_env_99"*)* @"$fundef_5" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_286", align 8
  %"$dyndisp_gep_287" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_284", i32 2
  %"$dyndisp_pcast_288" = bitcast { i8*, i8* }* %"$dyndisp_gep_287" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_13_env_95"*)* @"$fundef_13" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_288", align 8
  store { i8*, i8* }* %"$dyndisp_table_284", { i8*, i8* }** %tf, align 8, !dbg !36
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 1, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %"$have_gas_276"
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %"$have_gas_276"
  %"$consume_293" = sub i64 %"$gasrem_289", 1
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %tf1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_295" = icmp ugt i64 1, %"$gasrem_294"
  br i1 %"$gascmp_295", label %"$out_of_gas_296", label %"$have_gas_297"

"$out_of_gas_296":                                ; preds = %"$have_gas_292"
  call void @_out_of_gas()
  br label %"$have_gas_297"

"$have_gas_297":                                  ; preds = %"$out_of_gas_296", %"$have_gas_292"
  %"$consume_298" = sub i64 %"$gasrem_294", 1
  store i64 %"$consume_298", i64* @_gasrem, align 8
  %"$$fundef_21_envp_299_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_21_envp_299_salloc" = call i8* @_salloc(i8* %"$$fundef_21_envp_299_load", i64 8)
  %"$$fundef_21_envp_299" = bitcast i8* %"$$fundef_21_envp_299_salloc" to %"$$fundef_21_env_91"*
  %"$$fundef_21_env_voidp_301" = bitcast %"$$fundef_21_env_91"* %"$$fundef_21_envp_299" to i8*
  %"$$fundef_21_cloval_302" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_21_env_91"*)* @"$fundef_21" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_21_env_voidp_301", 1
  %"$$fundef_21_env_tf_303" = getelementptr inbounds %"$$fundef_21_env_91", %"$$fundef_21_env_91"* %"$$fundef_21_envp_299", i32 0, i32 0
  %"$tf_304" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_304", { i8*, i8* }** %"$$fundef_21_env_tf_303", align 8
  %"$$fundef_25_env_voidp_306" = bitcast %"$$fundef_21_env_91"* %"$$fundef_21_envp_299" to i8*
  %"$$fundef_25_cloval_307" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_25_env_89"*)* @"$fundef_25" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_25_env_voidp_306", 1
  %"$dyndisp_table_308_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_308_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_308_salloc_load", i64 64)
  %"$dyndisp_table_308_salloc" = bitcast i8* %"$dyndisp_table_308_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_308" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_308_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_309" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_308", i32 0
  %"$dyndisp_pcast_310" = bitcast { i8*, i8* }* %"$dyndisp_gep_309" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_21_cloval_302", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_310", align 8
  %"$dyndisp_gep_311" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_308", i32 2
  %"$dyndisp_pcast_312" = bitcast { i8*, i8* }* %"$dyndisp_gep_311" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_25_cloval_307", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_312", align 8
  store { i8*, i8* }* %"$dyndisp_table_308", { i8*, i8* }** %tf1, align 8, !dbg !37
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 1, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %"$have_gas_297"
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %"$have_gas_297"
  %"$consume_317" = sub i64 %"$gasrem_313", 1
  store i64 %"$consume_317", i64* @_gasrem, align 8
  %t1 = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_319" = icmp ugt i64 1, %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %"$have_gas_316"
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %"$have_gas_316"
  %"$consume_322" = sub i64 %"$gasrem_318", 1
  store i64 %"$consume_322", i64* @_gasrem, align 8
  %"$tf1_323" = load { i8*, i8* }*, { i8*, i8* }** %tf1, align 8
  %"$tf1_324" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_323", i32 0
  %"$tf1_325" = bitcast { i8*, i8* }* %"$tf1_324" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_326" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_325", align 8
  %"$tf1_fptr_327" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_326", 0
  %"$tf1_envptr_328" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_326", 1
  %"$tf1_call_329" = call { i8*, i8* }* %"$tf1_fptr_327"(i8* %"$tf1_envptr_328"), !dbg !38
  %"$tf1_330" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_329", i32 1
  %"$tf1_331" = bitcast { i8*, i8* }* %"$tf1_330" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf1_332" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf1_331", align 8
  %"$tf1_fptr_333" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_332", 0
  %"$tf1_envptr_334" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_332", 1
  %"$tf1_call_335" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_fptr_333"(i8* %"$tf1_envptr_334"), !dbg !38
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_call_335", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8, !dbg !39
  %"$gasrem_336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_337" = icmp ugt i64 1, %"$gasrem_336"
  br i1 %"$gascmp_337", label %"$out_of_gas_338", label %"$have_gas_339"

"$out_of_gas_338":                                ; preds = %"$have_gas_321"
  call void @_out_of_gas()
  br label %"$have_gas_339"

"$have_gas_339":                                  ; preds = %"$out_of_gas_338", %"$have_gas_321"
  %"$consume_340" = sub i64 %"$gasrem_336", 1
  store i64 %"$consume_340", i64* @_gasrem, align 8
  %t2 = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, align 8
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %"$have_gas_339"
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %"$have_gas_339"
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  %"$tf1_346" = load { i8*, i8* }*, { i8*, i8* }** %tf1, align 8
  %"$tf1_347" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_346", i32 2
  %"$tf1_348" = bitcast { i8*, i8* }* %"$tf1_347" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_349" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_348", align 8
  %"$tf1_fptr_350" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_349", 0
  %"$tf1_envptr_351" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_349", 1
  %"$tf1_call_352" = call { i8*, i8* }* %"$tf1_fptr_350"(i8* %"$tf1_envptr_351"), !dbg !40
  %"$tf1_353" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_352", i32 3
  %"$tf1_354" = bitcast { i8*, i8* }* %"$tf1_353" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  %"$tf1_355" = load { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$tf1_354", align 8
  %"$tf1_fptr_356" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf1_355", 0
  %"$tf1_envptr_357" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf1_355", 1
  %"$tf1_call_358" = call { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf1_fptr_356"(i8* %"$tf1_envptr_357"), !dbg !40
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf1_call_358", { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %t2, align 8, !dbg !41
  %"$gasrem_359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_360" = icmp ugt i64 1, %"$gasrem_359"
  br i1 %"$gascmp_360", label %"$out_of_gas_361", label %"$have_gas_362"

"$out_of_gas_361":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_362"

"$have_gas_362":                                  ; preds = %"$out_of_gas_361", %"$have_gas_344"
  %"$consume_363" = sub i64 %"$gasrem_359", 1
  store i64 %"$consume_363", i64* @_gasrem, align 8
  %uint32_one = alloca %Uint32, align 8
  %"$gasrem_364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_365" = icmp ugt i64 1, %"$gasrem_364"
  br i1 %"$gascmp_365", label %"$out_of_gas_366", label %"$have_gas_367"

"$out_of_gas_366":                                ; preds = %"$have_gas_362"
  call void @_out_of_gas()
  br label %"$have_gas_367"

"$have_gas_367":                                  ; preds = %"$out_of_gas_366", %"$have_gas_362"
  %"$consume_368" = sub i64 %"$gasrem_364", 1
  store i64 %"$consume_368", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %uint32_one, align 4, !dbg !42
  %"$gasrem_369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_370" = icmp ugt i64 1, %"$gasrem_369"
  br i1 %"$gascmp_370", label %"$out_of_gas_371", label %"$have_gas_372"

"$out_of_gas_371":                                ; preds = %"$have_gas_367"
  call void @_out_of_gas()
  br label %"$have_gas_372"

"$have_gas_372":                                  ; preds = %"$out_of_gas_371", %"$have_gas_367"
  %"$consume_373" = sub i64 %"$gasrem_369", 1
  store i64 %"$consume_373", i64* @_gasrem, align 8
  %uint64_two = alloca %Uint64, align 8
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_372"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_372"
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  store %Uint64 { i64 2 }, %Uint64* %uint64_two, align 8, !dbg !43
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_377"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %hello_string = alloca %String, align 8
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 1, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_382"
  %"$consume_388" = sub i64 %"$gasrem_384", 1
  store i64 %"$consume_388", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_389", i32 0, i32 0), i32 5 }, %String* %hello_string, align 8, !dbg !44
  %"$gasrem_390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_391" = icmp ugt i64 1, %"$gasrem_390"
  br i1 %"$gascmp_391", label %"$out_of_gas_392", label %"$have_gas_393"

"$out_of_gas_392":                                ; preds = %"$have_gas_387"
  call void @_out_of_gas()
  br label %"$have_gas_393"

"$have_gas_393":                                  ; preds = %"$out_of_gas_392", %"$have_gas_387"
  %"$consume_394" = sub i64 %"$gasrem_390", 1
  store i64 %"$consume_394", i64* @_gasrem, align 8
  %addr_bystr20 = alloca [20 x i8], align 1
  %"$gasrem_395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_396" = icmp ugt i64 1, %"$gasrem_395"
  br i1 %"$gascmp_396", label %"$out_of_gas_397", label %"$have_gas_398"

"$out_of_gas_397":                                ; preds = %"$have_gas_393"
  call void @_out_of_gas()
  br label %"$have_gas_398"

"$have_gas_398":                                  ; preds = %"$out_of_gas_397", %"$have_gas_393"
  %"$consume_399" = sub i64 %"$gasrem_395", 1
  store i64 %"$consume_399", i64* @_gasrem, align 8
  store [20 x i8] c"\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA", [20 x i8]* %addr_bystr20, align 1, !dbg !45
  %"$gasrem_400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_401" = icmp ugt i64 1, %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %"$have_gas_398"
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %"$have_gas_398"
  %"$consume_404" = sub i64 %"$gasrem_400", 1
  store i64 %"$consume_404", i64* @_gasrem, align 8
  %p1 = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_403"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_403"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %"$t1_0" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$t1_410" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8
  %"$t1_fptr_411" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_410", 0
  %"$t1_envptr_412" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_410", 1
  %"$uint32_one_413" = load %Uint32, %Uint32* %uint32_one, align 4
  %"$t1_call_414" = call { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_fptr_411"(i8* %"$t1_envptr_412", %Uint32 %"$uint32_one_413"), !dbg !46
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_call_414", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0", align 8, !dbg !46
  %"$t1_1" = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$$t1_0_415" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0", align 8
  %"$$t1_0_fptr_416" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_415", 0
  %"$$t1_0_envptr_417" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_415", 1
  %"$uint64_two_418" = load %Uint64, %Uint64* %uint64_two, align 8
  %"$$t1_0_call_419" = call %TName_Pair_Uint32_Uint64* %"$$t1_0_fptr_416"(i8* %"$$t1_0_envptr_417", %Uint64 %"$uint64_two_418"), !dbg !46
  store %TName_Pair_Uint32_Uint64* %"$$t1_0_call_419", %TName_Pair_Uint32_Uint64** %"$t1_1", align 8, !dbg !46
  %"$$t1_1_420" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$t1_1", align 8
  store %TName_Pair_Uint32_Uint64* %"$$t1_1_420", %TName_Pair_Uint32_Uint64** %p1, align 8, !dbg !46
  %"$gasrem_421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_422" = icmp ugt i64 1, %"$gasrem_421"
  br i1 %"$gascmp_422", label %"$out_of_gas_423", label %"$have_gas_424"

"$out_of_gas_423":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_424"

"$have_gas_424":                                  ; preds = %"$out_of_gas_423", %"$have_gas_408"
  %"$consume_425" = sub i64 %"$gasrem_421", 1
  store i64 %"$consume_425", i64* @_gasrem, align 8
  %p2 = alloca %TName_Pair_String_ByStr20*, align 8
  %"$gasrem_426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_427" = icmp ugt i64 1, %"$gasrem_426"
  br i1 %"$gascmp_427", label %"$out_of_gas_428", label %"$have_gas_429"

"$out_of_gas_428":                                ; preds = %"$have_gas_424"
  call void @_out_of_gas()
  br label %"$have_gas_429"

"$have_gas_429":                                  ; preds = %"$out_of_gas_428", %"$have_gas_424"
  %"$consume_430" = sub i64 %"$gasrem_426", 1
  store i64 %"$consume_430", i64* @_gasrem, align 8
  %"$t2_2" = alloca { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$t2_431" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %t2, align 8
  %"$t2_fptr_432" = extractvalue { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$t2_431", 0
  %"$t2_envptr_433" = extractvalue { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$t2_431", 1
  %"$hello_string_434" = load %String, %String* %hello_string, align 8
  %"$t2_call_435" = call { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$t2_fptr_432"(i8* %"$t2_envptr_433", %String %"$hello_string_434"), !dbg !47
  store { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$t2_call_435", { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$t2_2", align 8, !dbg !47
  %"$t2_3" = alloca %TName_Pair_String_ByStr20*, align 8
  %"$$t2_2_436" = load { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$t2_2", align 8
  %"$$t2_2_fptr_437" = extractvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$t2_2_436", 0
  %"$$t2_2_envptr_438" = extractvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$t2_2_436", 1
  %"$$t2_2_addr_bystr20_439" = alloca [20 x i8], align 1
  %"$addr_bystr20_440" = load [20 x i8], [20 x i8]* %addr_bystr20, align 1
  store [20 x i8] %"$addr_bystr20_440", [20 x i8]* %"$$t2_2_addr_bystr20_439", align 1
  %"$$t2_2_call_441" = call %TName_Pair_String_ByStr20* %"$$t2_2_fptr_437"(i8* %"$$t2_2_envptr_438", [20 x i8]* %"$$t2_2_addr_bystr20_439"), !dbg !47
  store %TName_Pair_String_ByStr20* %"$$t2_2_call_441", %TName_Pair_String_ByStr20** %"$t2_3", align 8, !dbg !47
  %"$$t2_3_442" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %"$t2_3", align 8
  store %TName_Pair_String_ByStr20* %"$$t2_3_442", %TName_Pair_String_ByStr20** %p2, align 8, !dbg !47
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$have_gas_429"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$have_gas_429"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem, align 8
  %"$p1_448" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %p1, align 8
  %"$p2_449" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %p2, align 8
  %"$adtval_450_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_450_salloc" = call i8* @_salloc(i8* %"$adtval_450_load", i64 17)
  %"$adtval_450" = bitcast i8* %"$adtval_450_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  %"$adtgep_451" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_450", i32 0, i32 0
  store i8 0, i8* %"$adtgep_451", align 1
  %"$adtgep_452" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_450", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$p1_448", %TName_Pair_Uint32_Uint64** %"$adtgep_452", align 8
  %"$adtgep_453" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_450", i32 0, i32 2
  store %TName_Pair_String_ByStr20* %"$p2_449", %TName_Pair_String_ByStr20** %"$adtgep_453", align 8
  %"$adtptr_454" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_450" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtptr_454", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"** %"$expr_4", align 8, !dbg !48
  %"$$expr_4_455" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"** %"$expr_4", align 8
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$$expr_4_455"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_456" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_457" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$exprval_456" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_63", i8* %"$memvoidcast_457")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "typ2-inst.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_27", linkageName: "$fundef_27", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 12, column: 6, scope: !4)
!9 = !DILocation(line: 12, column: 5, scope: !4)
!10 = distinct !DISubprogram(name: "$fundef_25", linkageName: "$fundef_25", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 11, column: 3, scope: !10)
!12 = distinct !DISubprogram(name: "$fundef_23", linkageName: "$fundef_23", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!13 = !DILocation(line: 12, column: 6, scope: !12)
!14 = !DILocation(line: 12, column: 5, scope: !12)
!15 = distinct !DISubprogram(name: "$fundef_21", linkageName: "$fundef_21", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 11, column: 3, scope: !15)
!17 = distinct !DISubprogram(name: "$fundef_19", linkageName: "$fundef_19", scope: !2, file: !2, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 6, column: 5, scope: !17)
!19 = distinct !DISubprogram(name: "$fundef_17", linkageName: "$fundef_17", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!20 = !DILocation(line: 6, column: 5, scope: !19)
!21 = distinct !DISubprogram(name: "$fundef_15", linkageName: "$fundef_15", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 5, column: 3, scope: !21)
!23 = distinct !DISubprogram(name: "$fundef_13", linkageName: "$fundef_13", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!24 = !DILocation(line: 3, column: 3, scope: !23)
!25 = distinct !DISubprogram(name: "$fundef_11", linkageName: "$fundef_11", scope: !2, file: !2, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!26 = !DILocation(line: 6, column: 5, scope: !25)
!27 = distinct !DISubprogram(name: "$fundef_9", linkageName: "$fundef_9", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DILocation(line: 6, column: 5, scope: !27)
!29 = distinct !DISubprogram(name: "$fundef_7", linkageName: "$fundef_7", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!30 = !DILocation(line: 5, column: 3, scope: !29)
!31 = distinct !DISubprogram(name: "$fundef_5", linkageName: "$fundef_5", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!32 = !DILocation(line: 3, column: 3, scope: !31)
!33 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !34, file: !34, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!34 = !DIFile(filename: ".", directory: ".")
!35 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!36 = !DILocation(line: 2, column: 3, scope: !35)
!37 = !DILocation(line: 10, column: 3, scope: !35)
!38 = !DILocation(line: 16, column: 11, scope: !35)
!39 = !DILocation(line: 16, column: 10, scope: !35)
!40 = !DILocation(line: 17, column: 11, scope: !35)
!41 = !DILocation(line: 17, column: 10, scope: !35)
!42 = !DILocation(line: 18, column: 18, scope: !35)
!43 = !DILocation(line: 19, column: 18, scope: !35)
!44 = !DILocation(line: 20, column: 26, scope: !35)
!45 = !DILocation(line: 21, column: 20, scope: !35)
!46 = !DILocation(line: 23, column: 10, scope: !35)
!47 = !DILocation(line: 24, column: 10, scope: !35)
!48 = !DILocation(line: 25, column: 1, scope: !35)
