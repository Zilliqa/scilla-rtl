; let s = "hello" in
; let h1 = builtin sha256hash s in
; let h2 = builtin sha256hash h1 in
; let sh = Pair {String ByStr32} s h2 in
; let sh2 = builtin sha256hash sh in
; let bystr1 = builtin to_bystr sh2 in
; let i4 = Int32 4 in
; let p2 = Pair {ByStr Int32} bystr1 i4 in
; builtin sha256hash p2
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_33" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_32"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_32" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_34"**, %"$TyDescrTy_ADTTyp_33"* }
%"$TyDescrTy_ADTTyp_Constr_34" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%String = type { i8*, i32 }
%TName_Pair_String_ByStr32 = type { i8, %CName_Pair_String_ByStr32* }
%CName_Pair_String_ByStr32 = type <{ i8, %String, [32 x i8] }>
%Bystr = type { i8*, i32 }
%Int32 = type { i32 }
%TName_Pair_ByStr_Int32 = type { i8, %CName_Pair_ByStr_Int32* }
%CName_Pair_ByStr_Int32 = type <{ i8, %Bystr, %Int32 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_2" = global %"$TyDescrTy_PrimTyp_1" zeroinitializer
@"$TyDescr_Int32_3" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int32_Prim_2" to i8*) }
@"$TyDescr_Uint32_Prim_4" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 0 }
@"$TyDescr_Uint32_5" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint32_Prim_4" to i8*) }
@"$TyDescr_Int64_Prim_6" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 1 }
@"$TyDescr_Int64_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int64_Prim_6" to i8*) }
@"$TyDescr_Uint64_Prim_8" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 1 }
@"$TyDescr_Uint64_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint64_Prim_8" to i8*) }
@"$TyDescr_Int128_Prim_10" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 2 }
@"$TyDescr_Int128_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int128_Prim_10" to i8*) }
@"$TyDescr_Uint128_Prim_12" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 2 }
@"$TyDescr_Uint128_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint128_Prim_12" to i8*) }
@"$TyDescr_Int256_Prim_14" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 3 }
@"$TyDescr_Int256_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int256_Prim_14" to i8*) }
@"$TyDescr_Uint256_Prim_16" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 3 }
@"$TyDescr_Uint256_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint256_Prim_16" to i8*) }
@"$TyDescr_String_Prim_18" = global %"$TyDescrTy_PrimTyp_1" { i32 2, i32 0 }
@"$TyDescr_String_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_String_Prim_18" to i8*) }
@"$TyDescr_Bnum_Prim_20" = global %"$TyDescrTy_PrimTyp_1" { i32 3, i32 0 }
@"$TyDescr_Bnum_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bnum_Prim_20" to i8*) }
@"$TyDescr_Message_Prim_22" = global %"$TyDescrTy_PrimTyp_1" { i32 4, i32 0 }
@"$TyDescr_Message_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Message_Prim_22" to i8*) }
@"$TyDescr_Event_Prim_24" = global %"$TyDescrTy_PrimTyp_1" { i32 5, i32 0 }
@"$TyDescr_Event_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Event_Prim_24" to i8*) }
@"$TyDescr_Exception_Prim_26" = global %"$TyDescrTy_PrimTyp_1" { i32 6, i32 0 }
@"$TyDescr_Exception_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Exception_Prim_26" to i8*) }
@"$TyDescr_Bystr_Prim_28" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_28" to i8*) }
@"$TyDescr_Bystr32_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 32 }
@"$TyDescr_Bystr32_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr32_Prim_30" to i8*) }
@"$TyDescr_ADT_Pair_ByStr_Int32_35" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_44" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr32_36" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_50" to i8*) }
@"$TyDescr_Pair_ADTTyp_38" = unnamed_addr constant %"$TyDescrTy_ADTTyp_33" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_52", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 2, %"$TyDescrTy_ADTTyp_Specl_32"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_32"*], [2 x %"$TyDescrTy_ADTTyp_Specl_32"*]* @"$TyDescr_Pair_ADTTyp_m_specls_51", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_ByStr_Int32_Constr_m_args_39" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_ADT_Pair_40" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr_Int32_ADTTyp_Constr_41" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_40", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr_Int32_Constr_m_args_39", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_constrs_42" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_34"*] [%"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_Pair_Pair_ByStr_Int32_ADTTyp_Constr_41"]
@"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_TArgs_43" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_32" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_TArgs_43", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_34"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_34"*], [1 x %"$TyDescrTy_ADTTyp_Constr_34"*]* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_constrs_42", i32 0, i32 0), %"$TyDescrTy_ADTTyp_33"* @"$TyDescr_Pair_ADTTyp_38" }
@"$TyDescr_Pair_Pair_String_ByStr32_Constr_m_args_45" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31"]
@"$TyDescr_ADT_Pair_46" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr32_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_46", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr32_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_m_constrs_48" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_34"*] [%"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_Pair_Pair_String_ByStr32_ADTTyp_Constr_47"]
@"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_m_TArgs_49" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31"]
@"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_32" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_m_TArgs_49", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_34"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_34"*], [1 x %"$TyDescrTy_ADTTyp_Constr_34"*]* @"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_m_constrs_48", i32 0, i32 0), %"$TyDescrTy_ADTTyp_33"* @"$TyDescr_Pair_ADTTyp_38" }
@"$TyDescr_Pair_ADTTyp_m_specls_51" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_32"*] [%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_44", %"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_50"]
@"$TyDescr_ADT_Pair_52" = unnamed_addr constant [4 x i8] c"Pair"
@"$stringlit_64" = unnamed_addr constant [5 x i8] c"hello"

define void @_init_libs() {
entry:
  ret void
}

define internal void @"$scilla_expr_53"(i8* %0, [32 x i8]* %1) {
entry:
  %"$expr_0" = alloca [32 x i8]
  %"$gasrem_54" = load i64, i64* @_gasrem
  %"$gascmp_55" = icmp ugt i64 1, %"$gasrem_54"
  br i1 %"$gascmp_55", label %"$out_of_gas_56", label %"$have_gas_57"

"$out_of_gas_56":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_57"

"$have_gas_57":                                   ; preds = %"$out_of_gas_56", %entry
  %"$consume_58" = sub i64 %"$gasrem_54", 1
  store i64 %"$consume_58", i64* @_gasrem
  %s = alloca %String
  %"$gasrem_59" = load i64, i64* @_gasrem
  %"$gascmp_60" = icmp ugt i64 1, %"$gasrem_59"
  br i1 %"$gascmp_60", label %"$out_of_gas_61", label %"$have_gas_62"

"$out_of_gas_61":                                 ; preds = %"$have_gas_57"
  call void @_out_of_gas()
  br label %"$have_gas_62"

"$have_gas_62":                                   ; preds = %"$out_of_gas_61", %"$have_gas_57"
  %"$consume_63" = sub i64 %"$gasrem_59", 1
  store i64 %"$consume_63", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_64", i32 0, i32 0), i32 5 }, %String* %s
  %"$gasrem_65" = load i64, i64* @_gasrem
  %"$gascmp_66" = icmp ugt i64 1, %"$gasrem_65"
  br i1 %"$gascmp_66", label %"$out_of_gas_67", label %"$have_gas_68"

"$out_of_gas_67":                                 ; preds = %"$have_gas_62"
  call void @_out_of_gas()
  br label %"$have_gas_68"

"$have_gas_68":                                   ; preds = %"$out_of_gas_67", %"$have_gas_62"
  %"$consume_69" = sub i64 %"$gasrem_65", 1
  store i64 %"$consume_69", i64* @_gasrem
  %h1 = alloca [32 x i8]
  %"$execptr_load_70" = load i8*, i8** @_execptr
  %"$sha256hash_s_71" = alloca %String
  %"$s_72" = load %String, %String* %s
  store %String %"$s_72", %String* %"$sha256hash_s_71"
  %"$$sha256hash_s_71_73" = bitcast %String* %"$sha256hash_s_71" to i8*
  %"$sha256hash_call_74" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_70", %_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$$sha256hash_s_71_73")
  %"$sha256hash_75" = load [32 x i8], [32 x i8]* %"$sha256hash_call_74"
  store [32 x i8] %"$sha256hash_75", [32 x i8]* %h1
  %"$gasrem_76" = load i64, i64* @_gasrem
  %"$gascmp_77" = icmp ugt i64 1, %"$gasrem_76"
  br i1 %"$gascmp_77", label %"$out_of_gas_78", label %"$have_gas_79"

"$out_of_gas_78":                                 ; preds = %"$have_gas_68"
  call void @_out_of_gas()
  br label %"$have_gas_79"

"$have_gas_79":                                   ; preds = %"$out_of_gas_78", %"$have_gas_68"
  %"$consume_80" = sub i64 %"$gasrem_76", 1
  store i64 %"$consume_80", i64* @_gasrem
  %h2 = alloca [32 x i8]
  %"$execptr_load_81" = load i8*, i8** @_execptr
  %"$sha256hash_h1_82" = alloca [32 x i8]
  %"$h1_83" = load [32 x i8], [32 x i8]* %h1
  store [32 x i8] %"$h1_83", [32 x i8]* %"$sha256hash_h1_82"
  %"$$sha256hash_h1_82_84" = bitcast [32 x i8]* %"$sha256hash_h1_82" to i8*
  %"$sha256hash_call_85" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_81", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", i8* %"$$sha256hash_h1_82_84")
  %"$sha256hash_86" = load [32 x i8], [32 x i8]* %"$sha256hash_call_85"
  store [32 x i8] %"$sha256hash_86", [32 x i8]* %h2
  %"$gasrem_87" = load i64, i64* @_gasrem
  %"$gascmp_88" = icmp ugt i64 1, %"$gasrem_87"
  br i1 %"$gascmp_88", label %"$out_of_gas_89", label %"$have_gas_90"

"$out_of_gas_89":                                 ; preds = %"$have_gas_79"
  call void @_out_of_gas()
  br label %"$have_gas_90"

"$have_gas_90":                                   ; preds = %"$out_of_gas_89", %"$have_gas_79"
  %"$consume_91" = sub i64 %"$gasrem_87", 1
  store i64 %"$consume_91", i64* @_gasrem
  %sh = alloca %TName_Pair_String_ByStr32*
  %"$gasrem_92" = load i64, i64* @_gasrem
  %"$gascmp_93" = icmp ugt i64 1, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %"$have_gas_90"
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %"$have_gas_90"
  %"$consume_96" = sub i64 %"$gasrem_92", 1
  store i64 %"$consume_96", i64* @_gasrem
  %"$s_97" = load %String, %String* %s
  %"$h2_98" = load [32 x i8], [32 x i8]* %h2
  %"$adtval_99_load" = load i8*, i8** @_execptr
  %"$adtval_99_salloc" = call i8* @_salloc(i8* %"$adtval_99_load", i64 49)
  %"$adtval_99" = bitcast i8* %"$adtval_99_salloc" to %CName_Pair_String_ByStr32*
  %"$adtgep_100" = getelementptr inbounds %CName_Pair_String_ByStr32, %CName_Pair_String_ByStr32* %"$adtval_99", i32 0, i32 0
  store i8 0, i8* %"$adtgep_100"
  %"$adtgep_101" = getelementptr inbounds %CName_Pair_String_ByStr32, %CName_Pair_String_ByStr32* %"$adtval_99", i32 0, i32 1
  store %String %"$s_97", %String* %"$adtgep_101"
  %"$adtgep_102" = getelementptr inbounds %CName_Pair_String_ByStr32, %CName_Pair_String_ByStr32* %"$adtval_99", i32 0, i32 2
  store [32 x i8] %"$h2_98", [32 x i8]* %"$adtgep_102"
  %"$adtptr_103" = bitcast %CName_Pair_String_ByStr32* %"$adtval_99" to %TName_Pair_String_ByStr32*
  store %TName_Pair_String_ByStr32* %"$adtptr_103", %TName_Pair_String_ByStr32** %sh
  %"$gasrem_104" = load i64, i64* @_gasrem
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$have_gas_95"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$have_gas_95"
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem
  %sh2 = alloca [32 x i8]
  %"$execptr_load_109" = load i8*, i8** @_execptr
  %"$sh_110" = load %TName_Pair_String_ByStr32*, %TName_Pair_String_ByStr32** %sh
  %"$$sh_110_111" = bitcast %TName_Pair_String_ByStr32* %"$sh_110" to i8*
  %"$sha256hash_call_112" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_109", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr32_36", i8* %"$$sh_110_111")
  %"$sha256hash_113" = load [32 x i8], [32 x i8]* %"$sha256hash_call_112"
  store [32 x i8] %"$sha256hash_113", [32 x i8]* %sh2
  %"$gasrem_114" = load i64, i64* @_gasrem
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %"$have_gas_107"
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %"$have_gas_107"
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem
  %bystr1 = alloca %Bystr
  %"$execptr_load_119" = load i8*, i8** @_execptr
  %"$to_bystr_sh2_120" = alloca [32 x i8]
  %"$sh2_121" = load [32 x i8], [32 x i8]* %sh2
  store [32 x i8] %"$sh2_121", [32 x i8]* %"$to_bystr_sh2_120"
  %"$$to_bystr_sh2_120_122" = bitcast [32 x i8]* %"$to_bystr_sh2_120" to i8*
  %"$to_bystr_call_123" = call %Bystr @_to_bystr(i8* %"$execptr_load_119", i32 32, i8* %"$$to_bystr_sh2_120_122")
  store %Bystr %"$to_bystr_call_123", %Bystr* %bystr1
  %"$gasrem_124" = load i64, i64* @_gasrem
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$have_gas_117"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$have_gas_117"
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem
  %i4 = alloca %Int32
  %"$gasrem_129" = load i64, i64* @_gasrem
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem
  store %Int32 { i32 4 }, %Int32* %i4
  %"$gasrem_134" = load i64, i64* @_gasrem
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem
  %p2 = alloca %TName_Pair_ByStr_Int32*
  %"$gasrem_139" = load i64, i64* @_gasrem
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_137"
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem
  %"$bystr1_144" = load %Bystr, %Bystr* %bystr1
  %"$i4_145" = load %Int32, %Int32* %i4
  %"$adtval_146_load" = load i8*, i8** @_execptr
  %"$adtval_146_salloc" = call i8* @_salloc(i8* %"$adtval_146_load", i64 21)
  %"$adtval_146" = bitcast i8* %"$adtval_146_salloc" to %CName_Pair_ByStr_Int32*
  %"$adtgep_147" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_146", i32 0, i32 0
  store i8 0, i8* %"$adtgep_147"
  %"$adtgep_148" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_146", i32 0, i32 1
  store %Bystr %"$bystr1_144", %Bystr* %"$adtgep_148"
  %"$adtgep_149" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_146", i32 0, i32 2
  store %Int32 %"$i4_145", %Int32* %"$adtgep_149"
  %"$adtptr_150" = bitcast %CName_Pair_ByStr_Int32* %"$adtval_146" to %TName_Pair_ByStr_Int32*
  store %TName_Pair_ByStr_Int32* %"$adtptr_150", %TName_Pair_ByStr_Int32** %p2
  %"$execptr_load_151" = load i8*, i8** @_execptr
  %"$p2_152" = load %TName_Pair_ByStr_Int32*, %TName_Pair_ByStr_Int32** %p2
  %"$$p2_152_153" = bitcast %TName_Pair_ByStr_Int32* %"$p2_152" to i8*
  %"$sha256hash_call_154" = call [32 x i8]* @_sha256hash(i8* %"$execptr_load_151", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_Int32_35", i8* %"$$p2_152_153")
  %"$sha256hash_155" = load [32 x i8], [32 x i8]* %"$sha256hash_call_154"
  store [32 x i8] %"$sha256hash_155", [32 x i8]* %"$expr_0"
  %"$$expr_0_156" = load [32 x i8], [32 x i8]* %"$expr_0"
  store [32 x i8] %"$$expr_0_156", [32 x i8]* %1
  ret void
}

declare void @_out_of_gas()

declare [32 x i8]* @_sha256hash(i8*, %_TyDescrTy_Typ*, i8*)

declare i8* @_salloc(i8*, i64)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$mainval_157" = alloca [32 x i8]
  %"$memvoidcast_158" = bitcast [32 x i8]* %"$mainval_157" to i8*
  call void @"$scilla_expr_53"(i8* null, [32 x i8]* %"$mainval_157")
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", i8* %"$memvoidcast_158")
  ret void
}
