; let i32a = Int32 0 in
; let i32b = Int32 1 in
; let i32aa = Int32 0 in
; let b1 = builtin eq i32a i32aa in
; let b2 = builtin eq i32a i32b in
; 
; let i128a = Uint128 11 in
; let i128b = Uint128 12 in
; let i128aa = Uint128 11 in
; let b3 = builtin eq i128a i128b in
; let b4 = builtin eq i128a i128a in
; let b5 = andb b1 b2 in
; let b6 = orb b3 b4 in
; let b7 = andb b5 b6 in
; 
; let ui256a = Uint128 11 in
; let ui256b = Uint128 12 in
; let ui256aa = Uint128 11 in
; let b8 = builtin eq ui256a ui256b in
; let b9 = builtin eq ui256a ui256a in
; let b10 = andb b7 b8 in
; let b11 = orb b10 b9 in
; 
; let s1 = "Hello" in
; let s2 = "World" in
; let s11 = "Hello" in
; let b12 = builtin eq s1 s2 in
; let b13 = builtin eq s1 s11 in
; let b14 = andb b9 b12 in
; let b15 = orb b13 b14 in
; 
; let bs1 = 0x00ff in
; let bs2 = 0xff00 in
; let bs11 = 0x00ff in
; let b16 = builtin eq bs1 bs2 in
; let b17 = builtin eq bs1 bs11 in
; let b18 = orb b16 b17 in
; let b19 = andb b18 b15 in
; 
; let bs3 = 0x0f0f0f in
; let bs4 = 0x0f0f0e in
; let b20 = builtin eq bs3 bs4 in
; let b21 = negb b20 in
; let b22 = andb b19 b21 in
; 
; let bs11 = builtin to_bystr bs1 in
; let bs22 = builtin to_bystr bs2 in
; let b23 = builtin eq bs11 bs22 in
; let b24 = negb b23 in
; let b25 = andb b22 b24 in
; 
; let bn1 = BNum 100 in
; let bn2 = BNum 299 in
; let bn3 = BNum 100 in
; let b26 = builtin eq bn1 bn2 in
; let b27 = negb b26 in
; let b28 = builtin eq bn1 bn3 in
; let b29 = andb b27 b28 in
; 
; andb b25 b29
; 
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_47" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_83" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_82"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_82" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_84"**, %"$TyDescrTy_ADTTyp_83"* }
%"$TyDescrTy_ADTTyp_Constr_84" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_1085" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1086" = type { %ParamDescrString, i32, %"$ParamDescr_1085"* }
%"$$fundef_36_env_101" = type {}
%"$$fundef_40_env_102" = type { %TName_Bool* }
%"$$fundef_38_env_103" = type {}
%"$$fundef_44_env_104" = type { %TName_Bool* }
%"$$fundef_42_env_105" = type {}
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%Bystr = type { i8*, i32 }
%BNumString = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_48" = global %"$TyDescrTy_PrimTyp_47" zeroinitializer
@"$TyDescr_Int32_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_Int32_Prim_48" to i8*) }
@"$TyDescr_Uint32_Prim_50" = global %"$TyDescrTy_PrimTyp_47" { i32 1, i32 0 }
@"$TyDescr_Uint32_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_Uint32_Prim_50" to i8*) }
@"$TyDescr_Int64_Prim_52" = global %"$TyDescrTy_PrimTyp_47" { i32 0, i32 1 }
@"$TyDescr_Int64_53" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_Int64_Prim_52" to i8*) }
@"$TyDescr_Uint64_Prim_54" = global %"$TyDescrTy_PrimTyp_47" { i32 1, i32 1 }
@"$TyDescr_Uint64_55" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_Uint64_Prim_54" to i8*) }
@"$TyDescr_Int128_Prim_56" = global %"$TyDescrTy_PrimTyp_47" { i32 0, i32 2 }
@"$TyDescr_Int128_57" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_Int128_Prim_56" to i8*) }
@"$TyDescr_Uint128_Prim_58" = global %"$TyDescrTy_PrimTyp_47" { i32 1, i32 2 }
@"$TyDescr_Uint128_59" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_Uint128_Prim_58" to i8*) }
@"$TyDescr_Int256_Prim_60" = global %"$TyDescrTy_PrimTyp_47" { i32 0, i32 3 }
@"$TyDescr_Int256_61" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_Int256_Prim_60" to i8*) }
@"$TyDescr_Uint256_Prim_62" = global %"$TyDescrTy_PrimTyp_47" { i32 1, i32 3 }
@"$TyDescr_Uint256_63" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_Uint256_Prim_62" to i8*) }
@"$TyDescr_String_Prim_64" = global %"$TyDescrTy_PrimTyp_47" { i32 2, i32 0 }
@"$TyDescr_String_65" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_String_Prim_64" to i8*) }
@"$TyDescr_Bnum_Prim_66" = global %"$TyDescrTy_PrimTyp_47" { i32 3, i32 0 }
@"$TyDescr_Bnum_67" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_Bnum_Prim_66" to i8*) }
@"$TyDescr_Message_Prim_68" = global %"$TyDescrTy_PrimTyp_47" { i32 4, i32 0 }
@"$TyDescr_Message_69" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_Message_Prim_68" to i8*) }
@"$TyDescr_Event_Prim_70" = global %"$TyDescrTy_PrimTyp_47" { i32 5, i32 0 }
@"$TyDescr_Event_71" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_Event_Prim_70" to i8*) }
@"$TyDescr_Exception_Prim_72" = global %"$TyDescrTy_PrimTyp_47" { i32 6, i32 0 }
@"$TyDescr_Exception_73" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_Exception_Prim_72" to i8*) }
@"$TyDescr_ReplicateContr_Prim_74" = global %"$TyDescrTy_PrimTyp_47" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_75" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_ReplicateContr_Prim_74" to i8*) }
@"$TyDescr_Bystr_Prim_76" = global %"$TyDescrTy_PrimTyp_47" { i32 7, i32 0 }
@"$TyDescr_Bystr_77" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_Bystr_Prim_76" to i8*) }
@"$TyDescr_Bystr3_Prim_78" = global %"$TyDescrTy_PrimTyp_47" { i32 8, i32 3 }
@"$TyDescr_Bystr3_79" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_Bystr3_Prim_78" to i8*) }
@"$TyDescr_Bystr2_Prim_80" = global %"$TyDescrTy_PrimTyp_47" { i32 8, i32 2 }
@"$TyDescr_Bystr2_81" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_Bystr2_Prim_80" to i8*) }
@"$TyDescr_ADT_Bool_85" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_82"* @"$TyDescr_Bool_ADTTyp_Specl_98" to i8*) }
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
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.orb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.negb = global { %TName_Bool* (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$stringlit_571" = unnamed_addr constant [5 x i8] c"Hello"
@"$stringlit_582" = unnamed_addr constant [5 x i8] c"World"
@"$stringlit_593" = unnamed_addr constant [5 x i8] c"Hello"
@"$BNumLit_966" = unnamed_addr constant [3 x i8] c"100"
@"$BNumLit_980" = unnamed_addr constant [3 x i8] c"299"
@"$BNumLit_994" = unnamed_addr constant [3 x i8] c"100"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_71", %_TyDescrTy_Typ* @"$TyDescr_Int64_53", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_85", %_TyDescrTy_Typ* @"$TyDescr_Bystr3_79", %_TyDescrTy_Typ* @"$TyDescr_Uint256_63", %_TyDescrTy_Typ* @"$TyDescr_Uint32_51", %_TyDescrTy_Typ* @"$TyDescr_Uint64_55", %_TyDescrTy_Typ* @"$TyDescr_Bnum_67", %_TyDescrTy_Typ* @"$TyDescr_Uint128_59", %_TyDescrTy_Typ* @"$TyDescr_Exception_73", %_TyDescrTy_Typ* @"$TyDescr_String_65", %_TyDescrTy_Typ* @"$TyDescr_Int256_61", %_TyDescrTy_Typ* @"$TyDescr_Int128_57", %_TyDescrTy_Typ* @"$TyDescr_Bystr_77", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_75", %_TyDescrTy_Typ* @"$TyDescr_Message_69", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_81", %_TyDescrTy_Typ* @"$TyDescr_Int32_49"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_1085"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1086"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_36"(%"$$fundef_36_env_101"* %0, %TName_Bool* %1) {
entry:
  %"$retval_37" = alloca %TName_Bool*, align 8
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 2, %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %entry
  %"$consume_192" = sub i64 %"$gasrem_188", 2
  store i64 %"$consume_192", i64* @_gasrem, align 8
  %"$b_tag_194" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_195" = load i8, i8* %"$b_tag_194", align 1
  switch i8 %"$b_tag_195", label %"$empty_default_196" [
    i8 0, label %"$True_197"
    i8 1, label %"$False_207"
  ]

"$True_197":                                      ; preds = %"$have_gas_191"
  %"$b_198" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_200" = icmp ugt i64 1, %"$gasrem_199"
  br i1 %"$gascmp_200", label %"$out_of_gas_201", label %"$have_gas_202"

"$out_of_gas_201":                                ; preds = %"$True_197"
  call void @_out_of_gas()
  br label %"$have_gas_202"

"$have_gas_202":                                  ; preds = %"$out_of_gas_201", %"$True_197"
  %"$consume_203" = sub i64 %"$gasrem_199", 1
  store i64 %"$consume_203", i64* @_gasrem, align 8
  %"$adtval_204_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_204_salloc" = call i8* @_salloc(i8* %"$adtval_204_load", i64 1)
  %"$adtval_204" = bitcast i8* %"$adtval_204_salloc" to %CName_False*
  %"$adtgep_205" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_204", i32 0, i32 0
  store i8 1, i8* %"$adtgep_205", align 1
  %"$adtptr_206" = bitcast %CName_False* %"$adtval_204" to %TName_Bool*
  store %TName_Bool* %"$adtptr_206", %TName_Bool** %"$retval_37", align 8
  br label %"$matchsucc_193"

"$False_207":                                     ; preds = %"$have_gas_191"
  %"$b_208" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 1, %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %"$False_207"
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %"$False_207"
  %"$consume_213" = sub i64 %"$gasrem_209", 1
  store i64 %"$consume_213", i64* @_gasrem, align 8
  %"$adtval_214_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_214_salloc" = call i8* @_salloc(i8* %"$adtval_214_load", i64 1)
  %"$adtval_214" = bitcast i8* %"$adtval_214_salloc" to %CName_True*
  %"$adtgep_215" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_214", i32 0, i32 0
  store i8 0, i8* %"$adtgep_215", align 1
  %"$adtptr_216" = bitcast %CName_True* %"$adtval_214" to %TName_Bool*
  store %TName_Bool* %"$adtptr_216", %TName_Bool** %"$retval_37", align 8
  br label %"$matchsucc_193"

"$empty_default_196":                             ; preds = %"$have_gas_191"
  br label %"$matchsucc_193"

"$matchsucc_193":                                 ; preds = %"$have_gas_212", %"$have_gas_202", %"$empty_default_196"
  %"$$retval_37_217" = load %TName_Bool*, %TName_Bool** %"$retval_37", align 8
  ret %TName_Bool* %"$$retval_37_217"
}

define internal %TName_Bool* @"$fundef_40"(%"$$fundef_40_env_102"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_40_env_b_158" = getelementptr inbounds %"$$fundef_40_env_102", %"$$fundef_40_env_102"* %0, i32 0, i32 0
  %"$b_envload_159" = load %TName_Bool*, %TName_Bool** %"$$fundef_40_env_b_158", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_159", %TName_Bool** %b, align 8
  %"$retval_41" = alloca %TName_Bool*, align 8
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 2, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %entry
  %"$consume_164" = sub i64 %"$gasrem_160", 2
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %"$b_166" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_167" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_166", i32 0, i32 0
  %"$b_tag_168" = load i8, i8* %"$b_tag_167", align 1
  switch i8 %"$b_tag_168", label %"$empty_default_169" [
    i8 0, label %"$True_170"
    i8 1, label %"$False_180"
  ]

"$True_170":                                      ; preds = %"$have_gas_163"
  %"$b_171" = bitcast %TName_Bool* %"$b_166" to %CName_True*
  %"$gasrem_172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_173" = icmp ugt i64 1, %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %"$True_170"
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %"$True_170"
  %"$consume_176" = sub i64 %"$gasrem_172", 1
  store i64 %"$consume_176", i64* @_gasrem, align 8
  %"$adtval_177_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_177_salloc" = call i8* @_salloc(i8* %"$adtval_177_load", i64 1)
  %"$adtval_177" = bitcast i8* %"$adtval_177_salloc" to %CName_True*
  %"$adtgep_178" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_177", i32 0, i32 0
  store i8 0, i8* %"$adtgep_178", align 1
  %"$adtptr_179" = bitcast %CName_True* %"$adtval_177" to %TName_Bool*
  store %TName_Bool* %"$adtptr_179", %TName_Bool** %"$retval_41", align 8
  br label %"$matchsucc_165"

"$False_180":                                     ; preds = %"$have_gas_163"
  %"$b_181" = bitcast %TName_Bool* %"$b_166" to %CName_False*
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 1, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %"$False_180"
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %"$False_180"
  %"$consume_186" = sub i64 %"$gasrem_182", 1
  store i64 %"$consume_186", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_41", align 8
  br label %"$matchsucc_165"

"$empty_default_169":                             ; preds = %"$have_gas_163"
  br label %"$matchsucc_165"

"$matchsucc_165":                                 ; preds = %"$have_gas_185", %"$have_gas_175", %"$empty_default_169"
  %"$$retval_41_187" = load %TName_Bool*, %TName_Bool** %"$retval_41", align 8
  ret %TName_Bool* %"$$retval_41_187"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_103"* %0, %TName_Bool* %1) {
entry:
  %"$retval_39" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %entry
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem, align 8
  %"$$fundef_40_envp_152_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_40_envp_152_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_152_load", i64 8)
  %"$$fundef_40_envp_152" = bitcast i8* %"$$fundef_40_envp_152_salloc" to %"$$fundef_40_env_102"*
  %"$$fundef_40_env_voidp_154" = bitcast %"$$fundef_40_env_102"* %"$$fundef_40_envp_152" to i8*
  %"$$fundef_40_cloval_155" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_40_env_102"*, %TName_Bool*)* @"$fundef_40" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_40_env_voidp_154", 1
  %"$$fundef_40_env_b_156" = getelementptr inbounds %"$$fundef_40_env_102", %"$$fundef_40_env_102"* %"$$fundef_40_envp_152", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_40_env_b_156", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_40_cloval_155", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_39", align 8
  %"$$retval_39_157" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_39", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_39_157"
}

define internal %TName_Bool* @"$fundef_44"(%"$$fundef_44_env_104"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_44_env_b_117" = getelementptr inbounds %"$$fundef_44_env_104", %"$$fundef_44_env_104"* %0, i32 0, i32 0
  %"$b_envload_118" = load %TName_Bool*, %TName_Bool** %"$$fundef_44_env_b_117", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_118", %TName_Bool** %b, align 8
  %"$retval_45" = alloca %TName_Bool*, align 8
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 2, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %entry
  %"$consume_123" = sub i64 %"$gasrem_119", 2
  store i64 %"$consume_123", i64* @_gasrem, align 8
  %"$b_125" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_126" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_125", i32 0, i32 0
  %"$b_tag_127" = load i8, i8* %"$b_tag_126", align 1
  switch i8 %"$b_tag_127", label %"$empty_default_128" [
    i8 1, label %"$False_129"
    i8 0, label %"$True_139"
  ]

"$False_129":                                     ; preds = %"$have_gas_122"
  %"$b_130" = bitcast %TName_Bool* %"$b_125" to %CName_False*
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$False_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$False_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  %"$adtval_136_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_136_salloc" = call i8* @_salloc(i8* %"$adtval_136_load", i64 1)
  %"$adtval_136" = bitcast i8* %"$adtval_136_salloc" to %CName_False*
  %"$adtgep_137" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_136", i32 0, i32 0
  store i8 1, i8* %"$adtgep_137", align 1
  %"$adtptr_138" = bitcast %CName_False* %"$adtval_136" to %TName_Bool*
  store %TName_Bool* %"$adtptr_138", %TName_Bool** %"$retval_45", align 8
  br label %"$matchsucc_124"

"$True_139":                                      ; preds = %"$have_gas_122"
  %"$b_140" = bitcast %TName_Bool* %"$b_125" to %CName_True*
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$True_139"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$True_139"
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_45", align 8
  br label %"$matchsucc_124"

"$empty_default_128":                             ; preds = %"$have_gas_122"
  br label %"$matchsucc_124"

"$matchsucc_124":                                 ; preds = %"$have_gas_144", %"$have_gas_134", %"$empty_default_128"
  %"$$retval_45_146" = load %TName_Bool*, %TName_Bool** %"$retval_45", align 8
  ret %TName_Bool* %"$$retval_45_146"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_42"(%"$$fundef_42_env_105"* %0, %TName_Bool* %1) {
entry:
  %"$retval_43" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %entry
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %"$$fundef_44_envp_111_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_44_envp_111_salloc" = call i8* @_salloc(i8* %"$$fundef_44_envp_111_load", i64 8)
  %"$$fundef_44_envp_111" = bitcast i8* %"$$fundef_44_envp_111_salloc" to %"$$fundef_44_env_104"*
  %"$$fundef_44_env_voidp_113" = bitcast %"$$fundef_44_env_104"* %"$$fundef_44_envp_111" to i8*
  %"$$fundef_44_cloval_114" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_44_env_104"*, %TName_Bool*)* @"$fundef_44" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_44_env_voidp_113", 1
  %"$$fundef_44_env_b_115" = getelementptr inbounds %"$$fundef_44_env_104", %"$$fundef_44_env_104"* %"$$fundef_44_envp_111", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_44_env_b_115", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_44_cloval_114", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_43", align 8
  %"$$retval_43_116" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_43", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_43_116"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 5, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %entry
  %"$consume_222" = sub i64 %"$gasrem_218", 5
  store i64 %"$consume_222", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_224" = icmp ugt i64 5, %"$gasrem_223"
  br i1 %"$gascmp_224", label %"$out_of_gas_225", label %"$have_gas_226"

"$out_of_gas_225":                                ; preds = %"$have_gas_221"
  call void @_out_of_gas()
  br label %"$have_gas_226"

"$have_gas_226":                                  ; preds = %"$out_of_gas_225", %"$have_gas_221"
  %"$consume_227" = sub i64 %"$gasrem_223", 5
  store i64 %"$consume_227", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 1, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_226"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_226"
  %"$consume_232" = sub i64 %"$gasrem_228", 1
  store i64 %"$consume_232", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_42_env_105"*, %TName_Bool*)* @"$fundef_42" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 1, %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %"$have_gas_231"
  %"$consume_240" = sub i64 %"$gasrem_236", 1
  store i64 %"$consume_240", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_38_env_103"*, %TName_Bool*)* @"$fundef_38" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_239"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_239"
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_36_env_101"*, %TName_Bool*)* @"$fundef_36" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$gasrem_252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_253" = icmp ugt i64 196, %"$gasrem_252"
  br i1 %"$gascmp_253", label %"$out_of_gas_254", label %"$have_gas_255"

"$out_of_gas_254":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_255"

"$have_gas_255":                                  ; preds = %"$out_of_gas_254", %"$have_gas_247"
  %"$consume_256" = sub i64 %"$gasrem_252", 196
  store i64 %"$consume_256", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 20, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$have_gas_255"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$have_gas_255"
  %"$consume_261" = sub i64 %"$gasrem_257", 20
  store i64 %"$consume_261", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 12, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$have_gas_260"
  %"$consume_266" = sub i64 %"$gasrem_262", 12
  store i64 %"$consume_266", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 2, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_265"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_265"
  %"$consume_271" = sub i64 %"$gasrem_267", 2
  store i64 %"$consume_271", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_46" = alloca %TName_Bool*, align 8
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 1, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %entry
  %"$consume_276" = sub i64 %"$gasrem_272", 1
  store i64 %"$consume_276", i64* @_gasrem, align 8
  %i32a = alloca %Int32, align 8
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_275"
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %i32a, align 4
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 1, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$have_gas_280"
  %"$consume_286" = sub i64 %"$gasrem_282", 1
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %i32b = alloca %Int32, align 8
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 1, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_285"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_285"
  %"$consume_291" = sub i64 %"$gasrem_287", 1
  store i64 %"$consume_291", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %i32b, align 4
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 1, %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %"$have_gas_290"
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %"$have_gas_290"
  %"$consume_296" = sub i64 %"$gasrem_292", 1
  store i64 %"$consume_296", i64* @_gasrem, align 8
  %i32aa = alloca %Int32, align 8
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 1, %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %"$have_gas_295"
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %"$have_gas_295"
  %"$consume_301" = sub i64 %"$gasrem_297", 1
  store i64 %"$consume_301", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %i32aa, align 4
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 1, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_300"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_300"
  %"$consume_306" = sub i64 %"$gasrem_302", 1
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %b1 = alloca %TName_Bool*, align 8
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 4, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_305"
  %"$consume_311" = sub i64 %"$gasrem_307", 4
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %"$execptr_load_312" = load i8*, i8** @_execptr, align 8
  %"$i32a_313" = load %Int32, %Int32* %i32a, align 4
  %"$i32aa_314" = load %Int32, %Int32* %i32aa, align 4
  %"$eq_call_315" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_312", %Int32 %"$i32a_313", %Int32 %"$i32aa_314")
  store %TName_Bool* %"$eq_call_315", %TName_Bool** %b1, align 8
  %"$gasrem_317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_318" = icmp ugt i64 1, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_310"
  %"$consume_321" = sub i64 %"$gasrem_317", 1
  store i64 %"$consume_321", i64* @_gasrem, align 8
  %b2 = alloca %TName_Bool*, align 8
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 4, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$have_gas_320"
  %"$consume_326" = sub i64 %"$gasrem_322", 4
  store i64 %"$consume_326", i64* @_gasrem, align 8
  %"$execptr_load_327" = load i8*, i8** @_execptr, align 8
  %"$i32a_328" = load %Int32, %Int32* %i32a, align 4
  %"$i32b_329" = load %Int32, %Int32* %i32b, align 4
  %"$eq_call_330" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_327", %Int32 %"$i32a_328", %Int32 %"$i32b_329")
  store %TName_Bool* %"$eq_call_330", %TName_Bool** %b2, align 8
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 1, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$have_gas_325"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$have_gas_325"
  %"$consume_336" = sub i64 %"$gasrem_332", 1
  store i64 %"$consume_336", i64* @_gasrem, align 8
  %i128a = alloca %Uint128, align 8
  %"$gasrem_337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_338" = icmp ugt i64 1, %"$gasrem_337"
  br i1 %"$gascmp_338", label %"$out_of_gas_339", label %"$have_gas_340"

"$out_of_gas_339":                                ; preds = %"$have_gas_335"
  call void @_out_of_gas()
  br label %"$have_gas_340"

"$have_gas_340":                                  ; preds = %"$out_of_gas_339", %"$have_gas_335"
  %"$consume_341" = sub i64 %"$gasrem_337", 1
  store i64 %"$consume_341", i64* @_gasrem, align 8
  store %Uint128 { i128 11 }, %Uint128* %i128a, align 8
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_340"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_340"
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %i128b = alloca %Uint128, align 8
  %"$gasrem_347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_348" = icmp ugt i64 1, %"$gasrem_347"
  br i1 %"$gascmp_348", label %"$out_of_gas_349", label %"$have_gas_350"

"$out_of_gas_349":                                ; preds = %"$have_gas_345"
  call void @_out_of_gas()
  br label %"$have_gas_350"

"$have_gas_350":                                  ; preds = %"$out_of_gas_349", %"$have_gas_345"
  %"$consume_351" = sub i64 %"$gasrem_347", 1
  store i64 %"$consume_351", i64* @_gasrem, align 8
  store %Uint128 { i128 12 }, %Uint128* %i128b, align 8
  %"$gasrem_352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_353" = icmp ugt i64 1, %"$gasrem_352"
  br i1 %"$gascmp_353", label %"$out_of_gas_354", label %"$have_gas_355"

"$out_of_gas_354":                                ; preds = %"$have_gas_350"
  call void @_out_of_gas()
  br label %"$have_gas_355"

"$have_gas_355":                                  ; preds = %"$out_of_gas_354", %"$have_gas_350"
  %"$consume_356" = sub i64 %"$gasrem_352", 1
  store i64 %"$consume_356", i64* @_gasrem, align 8
  %"$gasrem_357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_358" = icmp ugt i64 1, %"$gasrem_357"
  br i1 %"$gascmp_358", label %"$out_of_gas_359", label %"$have_gas_360"

"$out_of_gas_359":                                ; preds = %"$have_gas_355"
  call void @_out_of_gas()
  br label %"$have_gas_360"

"$have_gas_360":                                  ; preds = %"$out_of_gas_359", %"$have_gas_355"
  %"$consume_361" = sub i64 %"$gasrem_357", 1
  store i64 %"$consume_361", i64* @_gasrem, align 8
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 1, %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_360"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_360"
  %"$consume_366" = sub i64 %"$gasrem_362", 1
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %b3 = alloca %TName_Bool*, align 8
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 8, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$have_gas_365"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$have_gas_365"
  %"$consume_372" = sub i64 %"$gasrem_368", 8
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %"$execptr_load_373" = load i8*, i8** @_execptr, align 8
  %"$i128a_374" = load %Uint128, %Uint128* %i128a, align 8
  %"$i128b_375" = load %Uint128, %Uint128* %i128b, align 8
  %"$eq_call_376" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_373", %Uint128 %"$i128a_374", %Uint128 %"$i128b_375")
  store %TName_Bool* %"$eq_call_376", %TName_Bool** %b3, align 8
  %"$gasrem_378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_379" = icmp ugt i64 1, %"$gasrem_378"
  br i1 %"$gascmp_379", label %"$out_of_gas_380", label %"$have_gas_381"

"$out_of_gas_380":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_381"

"$have_gas_381":                                  ; preds = %"$out_of_gas_380", %"$have_gas_371"
  %"$consume_382" = sub i64 %"$gasrem_378", 1
  store i64 %"$consume_382", i64* @_gasrem, align 8
  %b4 = alloca %TName_Bool*, align 8
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 8, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_381"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_381"
  %"$consume_388" = sub i64 %"$gasrem_384", 8
  store i64 %"$consume_388", i64* @_gasrem, align 8
  %"$execptr_load_389" = load i8*, i8** @_execptr, align 8
  %"$i128a_390" = load %Uint128, %Uint128* %i128a, align 8
  %"$i128a_391" = load %Uint128, %Uint128* %i128a, align 8
  %"$eq_call_392" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_389", %Uint128 %"$i128a_390", %Uint128 %"$i128a_391")
  store %TName_Bool* %"$eq_call_392", %TName_Bool** %b4, align 8
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 1, %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %"$have_gas_387"
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %"$have_gas_387"
  %"$consume_398" = sub i64 %"$gasrem_394", 1
  store i64 %"$consume_398", i64* @_gasrem, align 8
  %b5 = alloca %TName_Bool*, align 8
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_397"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_397"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %"$BoolUtils.andb_7" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_404" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_405" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_404", 0
  %"$BoolUtils.andb_envptr_406" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_404", 1
  %"$b1_407" = load %TName_Bool*, %TName_Bool** %b1, align 8
  %"$BoolUtils.andb_call_408" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_405"(i8* %"$BoolUtils.andb_envptr_406", %TName_Bool* %"$b1_407")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_408", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7", align 8
  %"$BoolUtils.andb_8" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_7_409" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7", align 8
  %"$$BoolUtils.andb_7_fptr_410" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_409", 0
  %"$$BoolUtils.andb_7_envptr_411" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_409", 1
  %"$b2_412" = load %TName_Bool*, %TName_Bool** %b2, align 8
  %"$$BoolUtils.andb_7_call_413" = call %TName_Bool* %"$$BoolUtils.andb_7_fptr_410"(i8* %"$$BoolUtils.andb_7_envptr_411", %TName_Bool* %"$b2_412")
  store %TName_Bool* %"$$BoolUtils.andb_7_call_413", %TName_Bool** %"$BoolUtils.andb_8", align 8
  %"$$BoolUtils.andb_8_414" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_8", align 8
  store %TName_Bool* %"$$BoolUtils.andb_8_414", %TName_Bool** %b5, align 8
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 1, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$have_gas_402"
  %"$consume_419" = sub i64 %"$gasrem_415", 1
  store i64 %"$consume_419", i64* @_gasrem, align 8
  %b6 = alloca %TName_Bool*, align 8
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_418"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_418"
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem, align 8
  %"$BoolUtils.orb_9" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_425" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_426" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_425", 0
  %"$BoolUtils.orb_envptr_427" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_425", 1
  %"$b3_428" = load %TName_Bool*, %TName_Bool** %b3, align 8
  %"$BoolUtils.orb_call_429" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_426"(i8* %"$BoolUtils.orb_envptr_427", %TName_Bool* %"$b3_428")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_429", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_9", align 8
  %"$BoolUtils.orb_10" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_9_430" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_9", align 8
  %"$$BoolUtils.orb_9_fptr_431" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_9_430", 0
  %"$$BoolUtils.orb_9_envptr_432" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_9_430", 1
  %"$b4_433" = load %TName_Bool*, %TName_Bool** %b4, align 8
  %"$$BoolUtils.orb_9_call_434" = call %TName_Bool* %"$$BoolUtils.orb_9_fptr_431"(i8* %"$$BoolUtils.orb_9_envptr_432", %TName_Bool* %"$b4_433")
  store %TName_Bool* %"$$BoolUtils.orb_9_call_434", %TName_Bool** %"$BoolUtils.orb_10", align 8
  %"$$BoolUtils.orb_10_435" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_10", align 8
  store %TName_Bool* %"$$BoolUtils.orb_10_435", %TName_Bool** %b6, align 8
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_423"
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %b7 = alloca %TName_Bool*, align 8
  %"$gasrem_441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_442" = icmp ugt i64 1, %"$gasrem_441"
  br i1 %"$gascmp_442", label %"$out_of_gas_443", label %"$have_gas_444"

"$out_of_gas_443":                                ; preds = %"$have_gas_439"
  call void @_out_of_gas()
  br label %"$have_gas_444"

"$have_gas_444":                                  ; preds = %"$out_of_gas_443", %"$have_gas_439"
  %"$consume_445" = sub i64 %"$gasrem_441", 1
  store i64 %"$consume_445", i64* @_gasrem, align 8
  %"$BoolUtils.andb_11" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_446" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_447" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_446", 0
  %"$BoolUtils.andb_envptr_448" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_446", 1
  %"$b5_449" = load %TName_Bool*, %TName_Bool** %b5, align 8
  %"$BoolUtils.andb_call_450" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_447"(i8* %"$BoolUtils.andb_envptr_448", %TName_Bool* %"$b5_449")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_450", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_11", align 8
  %"$BoolUtils.andb_12" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_11_451" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_11", align 8
  %"$$BoolUtils.andb_11_fptr_452" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_11_451", 0
  %"$$BoolUtils.andb_11_envptr_453" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_11_451", 1
  %"$b6_454" = load %TName_Bool*, %TName_Bool** %b6, align 8
  %"$$BoolUtils.andb_11_call_455" = call %TName_Bool* %"$$BoolUtils.andb_11_fptr_452"(i8* %"$$BoolUtils.andb_11_envptr_453", %TName_Bool* %"$b6_454")
  store %TName_Bool* %"$$BoolUtils.andb_11_call_455", %TName_Bool** %"$BoolUtils.andb_12", align 8
  %"$$BoolUtils.andb_12_456" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_12", align 8
  store %TName_Bool* %"$$BoolUtils.andb_12_456", %TName_Bool** %b7, align 8
  %"$gasrem_457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_458" = icmp ugt i64 1, %"$gasrem_457"
  br i1 %"$gascmp_458", label %"$out_of_gas_459", label %"$have_gas_460"

"$out_of_gas_459":                                ; preds = %"$have_gas_444"
  call void @_out_of_gas()
  br label %"$have_gas_460"

"$have_gas_460":                                  ; preds = %"$out_of_gas_459", %"$have_gas_444"
  %"$consume_461" = sub i64 %"$gasrem_457", 1
  store i64 %"$consume_461", i64* @_gasrem, align 8
  %ui256a = alloca %Uint128, align 8
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 1, %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %"$have_gas_460"
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %"$have_gas_460"
  %"$consume_466" = sub i64 %"$gasrem_462", 1
  store i64 %"$consume_466", i64* @_gasrem, align 8
  store %Uint128 { i128 11 }, %Uint128* %ui256a, align 8
  %"$gasrem_467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_468" = icmp ugt i64 1, %"$gasrem_467"
  br i1 %"$gascmp_468", label %"$out_of_gas_469", label %"$have_gas_470"

"$out_of_gas_469":                                ; preds = %"$have_gas_465"
  call void @_out_of_gas()
  br label %"$have_gas_470"

"$have_gas_470":                                  ; preds = %"$out_of_gas_469", %"$have_gas_465"
  %"$consume_471" = sub i64 %"$gasrem_467", 1
  store i64 %"$consume_471", i64* @_gasrem, align 8
  %ui256b = alloca %Uint128, align 8
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$have_gas_470"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$have_gas_470"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem, align 8
  store %Uint128 { i128 12 }, %Uint128* %ui256b, align 8
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 1, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %"$have_gas_475"
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %"$have_gas_475"
  %"$consume_481" = sub i64 %"$gasrem_477", 1
  store i64 %"$consume_481", i64* @_gasrem, align 8
  %"$gasrem_482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_483" = icmp ugt i64 1, %"$gasrem_482"
  br i1 %"$gascmp_483", label %"$out_of_gas_484", label %"$have_gas_485"

"$out_of_gas_484":                                ; preds = %"$have_gas_480"
  call void @_out_of_gas()
  br label %"$have_gas_485"

"$have_gas_485":                                  ; preds = %"$out_of_gas_484", %"$have_gas_480"
  %"$consume_486" = sub i64 %"$gasrem_482", 1
  store i64 %"$consume_486", i64* @_gasrem, align 8
  %"$gasrem_487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_488" = icmp ugt i64 1, %"$gasrem_487"
  br i1 %"$gascmp_488", label %"$out_of_gas_489", label %"$have_gas_490"

"$out_of_gas_489":                                ; preds = %"$have_gas_485"
  call void @_out_of_gas()
  br label %"$have_gas_490"

"$have_gas_490":                                  ; preds = %"$out_of_gas_489", %"$have_gas_485"
  %"$consume_491" = sub i64 %"$gasrem_487", 1
  store i64 %"$consume_491", i64* @_gasrem, align 8
  %b8 = alloca %TName_Bool*, align 8
  %"$gasrem_493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_494" = icmp ugt i64 8, %"$gasrem_493"
  br i1 %"$gascmp_494", label %"$out_of_gas_495", label %"$have_gas_496"

"$out_of_gas_495":                                ; preds = %"$have_gas_490"
  call void @_out_of_gas()
  br label %"$have_gas_496"

"$have_gas_496":                                  ; preds = %"$out_of_gas_495", %"$have_gas_490"
  %"$consume_497" = sub i64 %"$gasrem_493", 8
  store i64 %"$consume_497", i64* @_gasrem, align 8
  %"$execptr_load_498" = load i8*, i8** @_execptr, align 8
  %"$ui256a_499" = load %Uint128, %Uint128* %ui256a, align 8
  %"$ui256b_500" = load %Uint128, %Uint128* %ui256b, align 8
  %"$eq_call_501" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_498", %Uint128 %"$ui256a_499", %Uint128 %"$ui256b_500")
  store %TName_Bool* %"$eq_call_501", %TName_Bool** %b8, align 8
  %"$gasrem_503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_504" = icmp ugt i64 1, %"$gasrem_503"
  br i1 %"$gascmp_504", label %"$out_of_gas_505", label %"$have_gas_506"

"$out_of_gas_505":                                ; preds = %"$have_gas_496"
  call void @_out_of_gas()
  br label %"$have_gas_506"

"$have_gas_506":                                  ; preds = %"$out_of_gas_505", %"$have_gas_496"
  %"$consume_507" = sub i64 %"$gasrem_503", 1
  store i64 %"$consume_507", i64* @_gasrem, align 8
  %b9 = alloca %TName_Bool*, align 8
  %"$gasrem_509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_510" = icmp ugt i64 8, %"$gasrem_509"
  br i1 %"$gascmp_510", label %"$out_of_gas_511", label %"$have_gas_512"

"$out_of_gas_511":                                ; preds = %"$have_gas_506"
  call void @_out_of_gas()
  br label %"$have_gas_512"

"$have_gas_512":                                  ; preds = %"$out_of_gas_511", %"$have_gas_506"
  %"$consume_513" = sub i64 %"$gasrem_509", 8
  store i64 %"$consume_513", i64* @_gasrem, align 8
  %"$execptr_load_514" = load i8*, i8** @_execptr, align 8
  %"$ui256a_515" = load %Uint128, %Uint128* %ui256a, align 8
  %"$ui256a_516" = load %Uint128, %Uint128* %ui256a, align 8
  %"$eq_call_517" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_514", %Uint128 %"$ui256a_515", %Uint128 %"$ui256a_516")
  store %TName_Bool* %"$eq_call_517", %TName_Bool** %b9, align 8
  %"$gasrem_519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_520" = icmp ugt i64 1, %"$gasrem_519"
  br i1 %"$gascmp_520", label %"$out_of_gas_521", label %"$have_gas_522"

"$out_of_gas_521":                                ; preds = %"$have_gas_512"
  call void @_out_of_gas()
  br label %"$have_gas_522"

"$have_gas_522":                                  ; preds = %"$out_of_gas_521", %"$have_gas_512"
  %"$consume_523" = sub i64 %"$gasrem_519", 1
  store i64 %"$consume_523", i64* @_gasrem, align 8
  %b10 = alloca %TName_Bool*, align 8
  %"$gasrem_524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_525" = icmp ugt i64 1, %"$gasrem_524"
  br i1 %"$gascmp_525", label %"$out_of_gas_526", label %"$have_gas_527"

"$out_of_gas_526":                                ; preds = %"$have_gas_522"
  call void @_out_of_gas()
  br label %"$have_gas_527"

"$have_gas_527":                                  ; preds = %"$out_of_gas_526", %"$have_gas_522"
  %"$consume_528" = sub i64 %"$gasrem_524", 1
  store i64 %"$consume_528", i64* @_gasrem, align 8
  %"$BoolUtils.andb_13" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_529" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_530" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_529", 0
  %"$BoolUtils.andb_envptr_531" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_529", 1
  %"$b7_532" = load %TName_Bool*, %TName_Bool** %b7, align 8
  %"$BoolUtils.andb_call_533" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_530"(i8* %"$BoolUtils.andb_envptr_531", %TName_Bool* %"$b7_532")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_533", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8
  %"$BoolUtils.andb_14" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_13_534" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8
  %"$$BoolUtils.andb_13_fptr_535" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_534", 0
  %"$$BoolUtils.andb_13_envptr_536" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_534", 1
  %"$b8_537" = load %TName_Bool*, %TName_Bool** %b8, align 8
  %"$$BoolUtils.andb_13_call_538" = call %TName_Bool* %"$$BoolUtils.andb_13_fptr_535"(i8* %"$$BoolUtils.andb_13_envptr_536", %TName_Bool* %"$b8_537")
  store %TName_Bool* %"$$BoolUtils.andb_13_call_538", %TName_Bool** %"$BoolUtils.andb_14", align 8
  %"$$BoolUtils.andb_14_539" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_14", align 8
  store %TName_Bool* %"$$BoolUtils.andb_14_539", %TName_Bool** %b10, align 8
  %"$gasrem_540" = load i64, i64* @_gasrem, align 8
  %"$gascmp_541" = icmp ugt i64 1, %"$gasrem_540"
  br i1 %"$gascmp_541", label %"$out_of_gas_542", label %"$have_gas_543"

"$out_of_gas_542":                                ; preds = %"$have_gas_527"
  call void @_out_of_gas()
  br label %"$have_gas_543"

"$have_gas_543":                                  ; preds = %"$out_of_gas_542", %"$have_gas_527"
  %"$consume_544" = sub i64 %"$gasrem_540", 1
  store i64 %"$consume_544", i64* @_gasrem, align 8
  %b11 = alloca %TName_Bool*, align 8
  %"$gasrem_545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_546" = icmp ugt i64 1, %"$gasrem_545"
  br i1 %"$gascmp_546", label %"$out_of_gas_547", label %"$have_gas_548"

"$out_of_gas_547":                                ; preds = %"$have_gas_543"
  call void @_out_of_gas()
  br label %"$have_gas_548"

"$have_gas_548":                                  ; preds = %"$out_of_gas_547", %"$have_gas_543"
  %"$consume_549" = sub i64 %"$gasrem_545", 1
  store i64 %"$consume_549", i64* @_gasrem, align 8
  %"$BoolUtils.orb_15" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_550" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_551" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_550", 0
  %"$BoolUtils.orb_envptr_552" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_550", 1
  %"$b10_553" = load %TName_Bool*, %TName_Bool** %b10, align 8
  %"$BoolUtils.orb_call_554" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_551"(i8* %"$BoolUtils.orb_envptr_552", %TName_Bool* %"$b10_553")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_554", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_15", align 8
  %"$BoolUtils.orb_16" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_15_555" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_15", align 8
  %"$$BoolUtils.orb_15_fptr_556" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_15_555", 0
  %"$$BoolUtils.orb_15_envptr_557" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_15_555", 1
  %"$b9_558" = load %TName_Bool*, %TName_Bool** %b9, align 8
  %"$$BoolUtils.orb_15_call_559" = call %TName_Bool* %"$$BoolUtils.orb_15_fptr_556"(i8* %"$$BoolUtils.orb_15_envptr_557", %TName_Bool* %"$b9_558")
  store %TName_Bool* %"$$BoolUtils.orb_15_call_559", %TName_Bool** %"$BoolUtils.orb_16", align 8
  %"$$BoolUtils.orb_16_560" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_16", align 8
  store %TName_Bool* %"$$BoolUtils.orb_16_560", %TName_Bool** %b11, align 8
  %"$gasrem_561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_562" = icmp ugt i64 1, %"$gasrem_561"
  br i1 %"$gascmp_562", label %"$out_of_gas_563", label %"$have_gas_564"

"$out_of_gas_563":                                ; preds = %"$have_gas_548"
  call void @_out_of_gas()
  br label %"$have_gas_564"

"$have_gas_564":                                  ; preds = %"$out_of_gas_563", %"$have_gas_548"
  %"$consume_565" = sub i64 %"$gasrem_561", 1
  store i64 %"$consume_565", i64* @_gasrem, align 8
  %s1 = alloca %String, align 8
  %"$gasrem_566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_567" = icmp ugt i64 1, %"$gasrem_566"
  br i1 %"$gascmp_567", label %"$out_of_gas_568", label %"$have_gas_569"

"$out_of_gas_568":                                ; preds = %"$have_gas_564"
  call void @_out_of_gas()
  br label %"$have_gas_569"

"$have_gas_569":                                  ; preds = %"$out_of_gas_568", %"$have_gas_564"
  %"$consume_570" = sub i64 %"$gasrem_566", 1
  store i64 %"$consume_570", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_571", i32 0, i32 0), i32 5 }, %String* %s1, align 8
  %"$gasrem_572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_573" = icmp ugt i64 1, %"$gasrem_572"
  br i1 %"$gascmp_573", label %"$out_of_gas_574", label %"$have_gas_575"

"$out_of_gas_574":                                ; preds = %"$have_gas_569"
  call void @_out_of_gas()
  br label %"$have_gas_575"

"$have_gas_575":                                  ; preds = %"$out_of_gas_574", %"$have_gas_569"
  %"$consume_576" = sub i64 %"$gasrem_572", 1
  store i64 %"$consume_576", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  %"$gasrem_577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_578" = icmp ugt i64 1, %"$gasrem_577"
  br i1 %"$gascmp_578", label %"$out_of_gas_579", label %"$have_gas_580"

"$out_of_gas_579":                                ; preds = %"$have_gas_575"
  call void @_out_of_gas()
  br label %"$have_gas_580"

"$have_gas_580":                                  ; preds = %"$out_of_gas_579", %"$have_gas_575"
  %"$consume_581" = sub i64 %"$gasrem_577", 1
  store i64 %"$consume_581", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_582", i32 0, i32 0), i32 5 }, %String* %s2, align 8
  %"$gasrem_583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_584" = icmp ugt i64 1, %"$gasrem_583"
  br i1 %"$gascmp_584", label %"$out_of_gas_585", label %"$have_gas_586"

"$out_of_gas_585":                                ; preds = %"$have_gas_580"
  call void @_out_of_gas()
  br label %"$have_gas_586"

"$have_gas_586":                                  ; preds = %"$out_of_gas_585", %"$have_gas_580"
  %"$consume_587" = sub i64 %"$gasrem_583", 1
  store i64 %"$consume_587", i64* @_gasrem, align 8
  %s11 = alloca %String, align 8
  %"$gasrem_588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_589" = icmp ugt i64 1, %"$gasrem_588"
  br i1 %"$gascmp_589", label %"$out_of_gas_590", label %"$have_gas_591"

"$out_of_gas_590":                                ; preds = %"$have_gas_586"
  call void @_out_of_gas()
  br label %"$have_gas_591"

"$have_gas_591":                                  ; preds = %"$out_of_gas_590", %"$have_gas_586"
  %"$consume_592" = sub i64 %"$gasrem_588", 1
  store i64 %"$consume_592", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_593", i32 0, i32 0), i32 5 }, %String* %s11, align 8
  %"$gasrem_594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_595" = icmp ugt i64 1, %"$gasrem_594"
  br i1 %"$gascmp_595", label %"$out_of_gas_596", label %"$have_gas_597"

"$out_of_gas_596":                                ; preds = %"$have_gas_591"
  call void @_out_of_gas()
  br label %"$have_gas_597"

"$have_gas_597":                                  ; preds = %"$out_of_gas_596", %"$have_gas_591"
  %"$consume_598" = sub i64 %"$gasrem_594", 1
  store i64 %"$consume_598", i64* @_gasrem, align 8
  %b12 = alloca %TName_Bool*, align 8
  %"$_literal_cost_s1_599" = alloca %String, align 8
  %"$s1_600" = load %String, %String* %s1, align 8
  store %String %"$s1_600", %String* %"$_literal_cost_s1_599", align 8
  %"$$_literal_cost_s1_599_601" = bitcast %String* %"$_literal_cost_s1_599" to i8*
  %"$_literal_cost_call_602" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_65", i8* %"$$_literal_cost_s1_599_601")
  %"$_literal_cost_s2_603" = alloca %String, align 8
  %"$s2_604" = load %String, %String* %s2, align 8
  store %String %"$s2_604", %String* %"$_literal_cost_s2_603", align 8
  %"$$_literal_cost_s2_603_605" = bitcast %String* %"$_literal_cost_s2_603" to i8*
  %"$_literal_cost_call_606" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_65", i8* %"$$_literal_cost_s2_603_605")
  %"$gasmin_607" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_602", i64 %"$_literal_cost_call_606")
  %"$gasrem_608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_609" = icmp ugt i64 %"$gasmin_607", %"$gasrem_608"
  br i1 %"$gascmp_609", label %"$out_of_gas_610", label %"$have_gas_611"

"$out_of_gas_610":                                ; preds = %"$have_gas_597"
  call void @_out_of_gas()
  br label %"$have_gas_611"

"$have_gas_611":                                  ; preds = %"$out_of_gas_610", %"$have_gas_597"
  %"$consume_612" = sub i64 %"$gasrem_608", %"$gasmin_607"
  store i64 %"$consume_612", i64* @_gasrem, align 8
  %"$execptr_load_613" = load i8*, i8** @_execptr, align 8
  %"$s1_614" = load %String, %String* %s1, align 8
  %"$s2_615" = load %String, %String* %s2, align 8
  %"$eq_call_616" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_613", %String %"$s1_614", %String %"$s2_615")
  store %TName_Bool* %"$eq_call_616", %TName_Bool** %b12, align 8
  %"$gasrem_618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_619" = icmp ugt i64 1, %"$gasrem_618"
  br i1 %"$gascmp_619", label %"$out_of_gas_620", label %"$have_gas_621"

"$out_of_gas_620":                                ; preds = %"$have_gas_611"
  call void @_out_of_gas()
  br label %"$have_gas_621"

"$have_gas_621":                                  ; preds = %"$out_of_gas_620", %"$have_gas_611"
  %"$consume_622" = sub i64 %"$gasrem_618", 1
  store i64 %"$consume_622", i64* @_gasrem, align 8
  %b13 = alloca %TName_Bool*, align 8
  %"$_literal_cost_s1_623" = alloca %String, align 8
  %"$s1_624" = load %String, %String* %s1, align 8
  store %String %"$s1_624", %String* %"$_literal_cost_s1_623", align 8
  %"$$_literal_cost_s1_623_625" = bitcast %String* %"$_literal_cost_s1_623" to i8*
  %"$_literal_cost_call_626" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_65", i8* %"$$_literal_cost_s1_623_625")
  %"$_literal_cost_s11_627" = alloca %String, align 8
  %"$s11_628" = load %String, %String* %s11, align 8
  store %String %"$s11_628", %String* %"$_literal_cost_s11_627", align 8
  %"$$_literal_cost_s11_627_629" = bitcast %String* %"$_literal_cost_s11_627" to i8*
  %"$_literal_cost_call_630" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_65", i8* %"$$_literal_cost_s11_627_629")
  %"$gasmin_631" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_626", i64 %"$_literal_cost_call_630")
  %"$gasrem_632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_633" = icmp ugt i64 %"$gasmin_631", %"$gasrem_632"
  br i1 %"$gascmp_633", label %"$out_of_gas_634", label %"$have_gas_635"

"$out_of_gas_634":                                ; preds = %"$have_gas_621"
  call void @_out_of_gas()
  br label %"$have_gas_635"

"$have_gas_635":                                  ; preds = %"$out_of_gas_634", %"$have_gas_621"
  %"$consume_636" = sub i64 %"$gasrem_632", %"$gasmin_631"
  store i64 %"$consume_636", i64* @_gasrem, align 8
  %"$execptr_load_637" = load i8*, i8** @_execptr, align 8
  %"$s1_638" = load %String, %String* %s1, align 8
  %"$s11_639" = load %String, %String* %s11, align 8
  %"$eq_call_640" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_637", %String %"$s1_638", %String %"$s11_639")
  store %TName_Bool* %"$eq_call_640", %TName_Bool** %b13, align 8
  %"$gasrem_642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_643" = icmp ugt i64 1, %"$gasrem_642"
  br i1 %"$gascmp_643", label %"$out_of_gas_644", label %"$have_gas_645"

"$out_of_gas_644":                                ; preds = %"$have_gas_635"
  call void @_out_of_gas()
  br label %"$have_gas_645"

"$have_gas_645":                                  ; preds = %"$out_of_gas_644", %"$have_gas_635"
  %"$consume_646" = sub i64 %"$gasrem_642", 1
  store i64 %"$consume_646", i64* @_gasrem, align 8
  %b14 = alloca %TName_Bool*, align 8
  %"$gasrem_647" = load i64, i64* @_gasrem, align 8
  %"$gascmp_648" = icmp ugt i64 1, %"$gasrem_647"
  br i1 %"$gascmp_648", label %"$out_of_gas_649", label %"$have_gas_650"

"$out_of_gas_649":                                ; preds = %"$have_gas_645"
  call void @_out_of_gas()
  br label %"$have_gas_650"

"$have_gas_650":                                  ; preds = %"$out_of_gas_649", %"$have_gas_645"
  %"$consume_651" = sub i64 %"$gasrem_647", 1
  store i64 %"$consume_651", i64* @_gasrem, align 8
  %"$BoolUtils.andb_17" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_652" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_653" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_652", 0
  %"$BoolUtils.andb_envptr_654" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_652", 1
  %"$b9_655" = load %TName_Bool*, %TName_Bool** %b9, align 8
  %"$BoolUtils.andb_call_656" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_653"(i8* %"$BoolUtils.andb_envptr_654", %TName_Bool* %"$b9_655")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_656", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_17", align 8
  %"$BoolUtils.andb_18" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_17_657" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_17", align 8
  %"$$BoolUtils.andb_17_fptr_658" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_17_657", 0
  %"$$BoolUtils.andb_17_envptr_659" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_17_657", 1
  %"$b12_660" = load %TName_Bool*, %TName_Bool** %b12, align 8
  %"$$BoolUtils.andb_17_call_661" = call %TName_Bool* %"$$BoolUtils.andb_17_fptr_658"(i8* %"$$BoolUtils.andb_17_envptr_659", %TName_Bool* %"$b12_660")
  store %TName_Bool* %"$$BoolUtils.andb_17_call_661", %TName_Bool** %"$BoolUtils.andb_18", align 8
  %"$$BoolUtils.andb_18_662" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_18", align 8
  store %TName_Bool* %"$$BoolUtils.andb_18_662", %TName_Bool** %b14, align 8
  %"$gasrem_663" = load i64, i64* @_gasrem, align 8
  %"$gascmp_664" = icmp ugt i64 1, %"$gasrem_663"
  br i1 %"$gascmp_664", label %"$out_of_gas_665", label %"$have_gas_666"

"$out_of_gas_665":                                ; preds = %"$have_gas_650"
  call void @_out_of_gas()
  br label %"$have_gas_666"

"$have_gas_666":                                  ; preds = %"$out_of_gas_665", %"$have_gas_650"
  %"$consume_667" = sub i64 %"$gasrem_663", 1
  store i64 %"$consume_667", i64* @_gasrem, align 8
  %b15 = alloca %TName_Bool*, align 8
  %"$gasrem_668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_669" = icmp ugt i64 1, %"$gasrem_668"
  br i1 %"$gascmp_669", label %"$out_of_gas_670", label %"$have_gas_671"

"$out_of_gas_670":                                ; preds = %"$have_gas_666"
  call void @_out_of_gas()
  br label %"$have_gas_671"

"$have_gas_671":                                  ; preds = %"$out_of_gas_670", %"$have_gas_666"
  %"$consume_672" = sub i64 %"$gasrem_668", 1
  store i64 %"$consume_672", i64* @_gasrem, align 8
  %"$BoolUtils.orb_19" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_673" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_674" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_673", 0
  %"$BoolUtils.orb_envptr_675" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_673", 1
  %"$b13_676" = load %TName_Bool*, %TName_Bool** %b13, align 8
  %"$BoolUtils.orb_call_677" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_674"(i8* %"$BoolUtils.orb_envptr_675", %TName_Bool* %"$b13_676")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_677", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_19", align 8
  %"$BoolUtils.orb_20" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_19_678" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_19", align 8
  %"$$BoolUtils.orb_19_fptr_679" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_19_678", 0
  %"$$BoolUtils.orb_19_envptr_680" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_19_678", 1
  %"$b14_681" = load %TName_Bool*, %TName_Bool** %b14, align 8
  %"$$BoolUtils.orb_19_call_682" = call %TName_Bool* %"$$BoolUtils.orb_19_fptr_679"(i8* %"$$BoolUtils.orb_19_envptr_680", %TName_Bool* %"$b14_681")
  store %TName_Bool* %"$$BoolUtils.orb_19_call_682", %TName_Bool** %"$BoolUtils.orb_20", align 8
  %"$$BoolUtils.orb_20_683" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_20", align 8
  store %TName_Bool* %"$$BoolUtils.orb_20_683", %TName_Bool** %b15, align 8
  %"$gasrem_684" = load i64, i64* @_gasrem, align 8
  %"$gascmp_685" = icmp ugt i64 1, %"$gasrem_684"
  br i1 %"$gascmp_685", label %"$out_of_gas_686", label %"$have_gas_687"

"$out_of_gas_686":                                ; preds = %"$have_gas_671"
  call void @_out_of_gas()
  br label %"$have_gas_687"

"$have_gas_687":                                  ; preds = %"$out_of_gas_686", %"$have_gas_671"
  %"$consume_688" = sub i64 %"$gasrem_684", 1
  store i64 %"$consume_688", i64* @_gasrem, align 8
  %bs1 = alloca [2 x i8], align 1
  %"$gasrem_689" = load i64, i64* @_gasrem, align 8
  %"$gascmp_690" = icmp ugt i64 1, %"$gasrem_689"
  br i1 %"$gascmp_690", label %"$out_of_gas_691", label %"$have_gas_692"

"$out_of_gas_691":                                ; preds = %"$have_gas_687"
  call void @_out_of_gas()
  br label %"$have_gas_692"

"$have_gas_692":                                  ; preds = %"$out_of_gas_691", %"$have_gas_687"
  %"$consume_693" = sub i64 %"$gasrem_689", 1
  store i64 %"$consume_693", i64* @_gasrem, align 8
  store [2 x i8] c"\00\FF", [2 x i8]* %bs1, align 1
  %"$gasrem_694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_695" = icmp ugt i64 1, %"$gasrem_694"
  br i1 %"$gascmp_695", label %"$out_of_gas_696", label %"$have_gas_697"

"$out_of_gas_696":                                ; preds = %"$have_gas_692"
  call void @_out_of_gas()
  br label %"$have_gas_697"

"$have_gas_697":                                  ; preds = %"$out_of_gas_696", %"$have_gas_692"
  %"$consume_698" = sub i64 %"$gasrem_694", 1
  store i64 %"$consume_698", i64* @_gasrem, align 8
  %bs2 = alloca [2 x i8], align 1
  %"$gasrem_699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_700" = icmp ugt i64 1, %"$gasrem_699"
  br i1 %"$gascmp_700", label %"$out_of_gas_701", label %"$have_gas_702"

"$out_of_gas_701":                                ; preds = %"$have_gas_697"
  call void @_out_of_gas()
  br label %"$have_gas_702"

"$have_gas_702":                                  ; preds = %"$out_of_gas_701", %"$have_gas_697"
  %"$consume_703" = sub i64 %"$gasrem_699", 1
  store i64 %"$consume_703", i64* @_gasrem, align 8
  store [2 x i8] c"\FF\00", [2 x i8]* %bs2, align 1
  %"$gasrem_704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_705" = icmp ugt i64 1, %"$gasrem_704"
  br i1 %"$gascmp_705", label %"$out_of_gas_706", label %"$have_gas_707"

"$out_of_gas_706":                                ; preds = %"$have_gas_702"
  call void @_out_of_gas()
  br label %"$have_gas_707"

"$have_gas_707":                                  ; preds = %"$out_of_gas_706", %"$have_gas_702"
  %"$consume_708" = sub i64 %"$gasrem_704", 1
  store i64 %"$consume_708", i64* @_gasrem, align 8
  %bs11 = alloca [2 x i8], align 1
  %"$gasrem_709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_710" = icmp ugt i64 1, %"$gasrem_709"
  br i1 %"$gascmp_710", label %"$out_of_gas_711", label %"$have_gas_712"

"$out_of_gas_711":                                ; preds = %"$have_gas_707"
  call void @_out_of_gas()
  br label %"$have_gas_712"

"$have_gas_712":                                  ; preds = %"$out_of_gas_711", %"$have_gas_707"
  %"$consume_713" = sub i64 %"$gasrem_709", 1
  store i64 %"$consume_713", i64* @_gasrem, align 8
  store [2 x i8] c"\00\FF", [2 x i8]* %bs11, align 1
  %"$gasrem_714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_715" = icmp ugt i64 1, %"$gasrem_714"
  br i1 %"$gascmp_715", label %"$out_of_gas_716", label %"$have_gas_717"

"$out_of_gas_716":                                ; preds = %"$have_gas_712"
  call void @_out_of_gas()
  br label %"$have_gas_717"

"$have_gas_717":                                  ; preds = %"$out_of_gas_716", %"$have_gas_712"
  %"$consume_718" = sub i64 %"$gasrem_714", 1
  store i64 %"$consume_718", i64* @_gasrem, align 8
  %b16 = alloca %TName_Bool*, align 8
  %"$gasrem_719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_720" = icmp ugt i64 2, %"$gasrem_719"
  br i1 %"$gascmp_720", label %"$out_of_gas_721", label %"$have_gas_722"

"$out_of_gas_721":                                ; preds = %"$have_gas_717"
  call void @_out_of_gas()
  br label %"$have_gas_722"

"$have_gas_722":                                  ; preds = %"$out_of_gas_721", %"$have_gas_717"
  %"$consume_723" = sub i64 %"$gasrem_719", 2
  store i64 %"$consume_723", i64* @_gasrem, align 8
  %"$execptr_load_724" = load i8*, i8** @_execptr, align 8
  %"$eq_bs1_725" = alloca [2 x i8], align 1
  %"$bs1_726" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_726", [2 x i8]* %"$eq_bs1_725", align 1
  %"$$eq_bs1_725_727" = bitcast [2 x i8]* %"$eq_bs1_725" to i8*
  %"$eq_bs2_728" = alloca [2 x i8], align 1
  %"$bs2_729" = load [2 x i8], [2 x i8]* %bs2, align 1
  store [2 x i8] %"$bs2_729", [2 x i8]* %"$eq_bs2_728", align 1
  %"$$eq_bs2_728_730" = bitcast [2 x i8]* %"$eq_bs2_728" to i8*
  %"$eq_call_731" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_724", i32 2, i8* %"$$eq_bs1_725_727", i8* %"$$eq_bs2_728_730")
  store %TName_Bool* %"$eq_call_731", %TName_Bool** %b16, align 8
  %"$gasrem_733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_734" = icmp ugt i64 1, %"$gasrem_733"
  br i1 %"$gascmp_734", label %"$out_of_gas_735", label %"$have_gas_736"

"$out_of_gas_735":                                ; preds = %"$have_gas_722"
  call void @_out_of_gas()
  br label %"$have_gas_736"

"$have_gas_736":                                  ; preds = %"$out_of_gas_735", %"$have_gas_722"
  %"$consume_737" = sub i64 %"$gasrem_733", 1
  store i64 %"$consume_737", i64* @_gasrem, align 8
  %b17 = alloca %TName_Bool*, align 8
  %"$gasrem_738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_739" = icmp ugt i64 2, %"$gasrem_738"
  br i1 %"$gascmp_739", label %"$out_of_gas_740", label %"$have_gas_741"

"$out_of_gas_740":                                ; preds = %"$have_gas_736"
  call void @_out_of_gas()
  br label %"$have_gas_741"

"$have_gas_741":                                  ; preds = %"$out_of_gas_740", %"$have_gas_736"
  %"$consume_742" = sub i64 %"$gasrem_738", 2
  store i64 %"$consume_742", i64* @_gasrem, align 8
  %"$execptr_load_743" = load i8*, i8** @_execptr, align 8
  %"$eq_bs1_744" = alloca [2 x i8], align 1
  %"$bs1_745" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_745", [2 x i8]* %"$eq_bs1_744", align 1
  %"$$eq_bs1_744_746" = bitcast [2 x i8]* %"$eq_bs1_744" to i8*
  %"$eq_bs11_747" = alloca [2 x i8], align 1
  %"$bs11_748" = load [2 x i8], [2 x i8]* %bs11, align 1
  store [2 x i8] %"$bs11_748", [2 x i8]* %"$eq_bs11_747", align 1
  %"$$eq_bs11_747_749" = bitcast [2 x i8]* %"$eq_bs11_747" to i8*
  %"$eq_call_750" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_743", i32 2, i8* %"$$eq_bs1_744_746", i8* %"$$eq_bs11_747_749")
  store %TName_Bool* %"$eq_call_750", %TName_Bool** %b17, align 8
  %"$gasrem_752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_753" = icmp ugt i64 1, %"$gasrem_752"
  br i1 %"$gascmp_753", label %"$out_of_gas_754", label %"$have_gas_755"

"$out_of_gas_754":                                ; preds = %"$have_gas_741"
  call void @_out_of_gas()
  br label %"$have_gas_755"

"$have_gas_755":                                  ; preds = %"$out_of_gas_754", %"$have_gas_741"
  %"$consume_756" = sub i64 %"$gasrem_752", 1
  store i64 %"$consume_756", i64* @_gasrem, align 8
  %b18 = alloca %TName_Bool*, align 8
  %"$gasrem_757" = load i64, i64* @_gasrem, align 8
  %"$gascmp_758" = icmp ugt i64 1, %"$gasrem_757"
  br i1 %"$gascmp_758", label %"$out_of_gas_759", label %"$have_gas_760"

"$out_of_gas_759":                                ; preds = %"$have_gas_755"
  call void @_out_of_gas()
  br label %"$have_gas_760"

"$have_gas_760":                                  ; preds = %"$out_of_gas_759", %"$have_gas_755"
  %"$consume_761" = sub i64 %"$gasrem_757", 1
  store i64 %"$consume_761", i64* @_gasrem, align 8
  %"$BoolUtils.orb_21" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_762" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_763" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_762", 0
  %"$BoolUtils.orb_envptr_764" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_762", 1
  %"$b16_765" = load %TName_Bool*, %TName_Bool** %b16, align 8
  %"$BoolUtils.orb_call_766" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_763"(i8* %"$BoolUtils.orb_envptr_764", %TName_Bool* %"$b16_765")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_766", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_21", align 8
  %"$BoolUtils.orb_22" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_21_767" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_21", align 8
  %"$$BoolUtils.orb_21_fptr_768" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_21_767", 0
  %"$$BoolUtils.orb_21_envptr_769" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_21_767", 1
  %"$b17_770" = load %TName_Bool*, %TName_Bool** %b17, align 8
  %"$$BoolUtils.orb_21_call_771" = call %TName_Bool* %"$$BoolUtils.orb_21_fptr_768"(i8* %"$$BoolUtils.orb_21_envptr_769", %TName_Bool* %"$b17_770")
  store %TName_Bool* %"$$BoolUtils.orb_21_call_771", %TName_Bool** %"$BoolUtils.orb_22", align 8
  %"$$BoolUtils.orb_22_772" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_22", align 8
  store %TName_Bool* %"$$BoolUtils.orb_22_772", %TName_Bool** %b18, align 8
  %"$gasrem_773" = load i64, i64* @_gasrem, align 8
  %"$gascmp_774" = icmp ugt i64 1, %"$gasrem_773"
  br i1 %"$gascmp_774", label %"$out_of_gas_775", label %"$have_gas_776"

"$out_of_gas_775":                                ; preds = %"$have_gas_760"
  call void @_out_of_gas()
  br label %"$have_gas_776"

"$have_gas_776":                                  ; preds = %"$out_of_gas_775", %"$have_gas_760"
  %"$consume_777" = sub i64 %"$gasrem_773", 1
  store i64 %"$consume_777", i64* @_gasrem, align 8
  %b19 = alloca %TName_Bool*, align 8
  %"$gasrem_778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_779" = icmp ugt i64 1, %"$gasrem_778"
  br i1 %"$gascmp_779", label %"$out_of_gas_780", label %"$have_gas_781"

"$out_of_gas_780":                                ; preds = %"$have_gas_776"
  call void @_out_of_gas()
  br label %"$have_gas_781"

"$have_gas_781":                                  ; preds = %"$out_of_gas_780", %"$have_gas_776"
  %"$consume_782" = sub i64 %"$gasrem_778", 1
  store i64 %"$consume_782", i64* @_gasrem, align 8
  %"$BoolUtils.andb_23" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_783" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_784" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_783", 0
  %"$BoolUtils.andb_envptr_785" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_783", 1
  %"$b18_786" = load %TName_Bool*, %TName_Bool** %b18, align 8
  %"$BoolUtils.andb_call_787" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_784"(i8* %"$BoolUtils.andb_envptr_785", %TName_Bool* %"$b18_786")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_787", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_23", align 8
  %"$BoolUtils.andb_24" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_23_788" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_23", align 8
  %"$$BoolUtils.andb_23_fptr_789" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_23_788", 0
  %"$$BoolUtils.andb_23_envptr_790" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_23_788", 1
  %"$b15_791" = load %TName_Bool*, %TName_Bool** %b15, align 8
  %"$$BoolUtils.andb_23_call_792" = call %TName_Bool* %"$$BoolUtils.andb_23_fptr_789"(i8* %"$$BoolUtils.andb_23_envptr_790", %TName_Bool* %"$b15_791")
  store %TName_Bool* %"$$BoolUtils.andb_23_call_792", %TName_Bool** %"$BoolUtils.andb_24", align 8
  %"$$BoolUtils.andb_24_793" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_24", align 8
  store %TName_Bool* %"$$BoolUtils.andb_24_793", %TName_Bool** %b19, align 8
  %"$gasrem_794" = load i64, i64* @_gasrem, align 8
  %"$gascmp_795" = icmp ugt i64 1, %"$gasrem_794"
  br i1 %"$gascmp_795", label %"$out_of_gas_796", label %"$have_gas_797"

"$out_of_gas_796":                                ; preds = %"$have_gas_781"
  call void @_out_of_gas()
  br label %"$have_gas_797"

"$have_gas_797":                                  ; preds = %"$out_of_gas_796", %"$have_gas_781"
  %"$consume_798" = sub i64 %"$gasrem_794", 1
  store i64 %"$consume_798", i64* @_gasrem, align 8
  %bs3 = alloca [3 x i8], align 1
  %"$gasrem_799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_800" = icmp ugt i64 1, %"$gasrem_799"
  br i1 %"$gascmp_800", label %"$out_of_gas_801", label %"$have_gas_802"

"$out_of_gas_801":                                ; preds = %"$have_gas_797"
  call void @_out_of_gas()
  br label %"$have_gas_802"

"$have_gas_802":                                  ; preds = %"$out_of_gas_801", %"$have_gas_797"
  %"$consume_803" = sub i64 %"$gasrem_799", 1
  store i64 %"$consume_803", i64* @_gasrem, align 8
  store [3 x i8] c"\0F\0F\0F", [3 x i8]* %bs3, align 1
  %"$gasrem_804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_805" = icmp ugt i64 1, %"$gasrem_804"
  br i1 %"$gascmp_805", label %"$out_of_gas_806", label %"$have_gas_807"

"$out_of_gas_806":                                ; preds = %"$have_gas_802"
  call void @_out_of_gas()
  br label %"$have_gas_807"

"$have_gas_807":                                  ; preds = %"$out_of_gas_806", %"$have_gas_802"
  %"$consume_808" = sub i64 %"$gasrem_804", 1
  store i64 %"$consume_808", i64* @_gasrem, align 8
  %bs4 = alloca [3 x i8], align 1
  %"$gasrem_809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_810" = icmp ugt i64 1, %"$gasrem_809"
  br i1 %"$gascmp_810", label %"$out_of_gas_811", label %"$have_gas_812"

"$out_of_gas_811":                                ; preds = %"$have_gas_807"
  call void @_out_of_gas()
  br label %"$have_gas_812"

"$have_gas_812":                                  ; preds = %"$out_of_gas_811", %"$have_gas_807"
  %"$consume_813" = sub i64 %"$gasrem_809", 1
  store i64 %"$consume_813", i64* @_gasrem, align 8
  store [3 x i8] c"\0F\0F\0E", [3 x i8]* %bs4, align 1
  %"$gasrem_814" = load i64, i64* @_gasrem, align 8
  %"$gascmp_815" = icmp ugt i64 1, %"$gasrem_814"
  br i1 %"$gascmp_815", label %"$out_of_gas_816", label %"$have_gas_817"

"$out_of_gas_816":                                ; preds = %"$have_gas_812"
  call void @_out_of_gas()
  br label %"$have_gas_817"

"$have_gas_817":                                  ; preds = %"$out_of_gas_816", %"$have_gas_812"
  %"$consume_818" = sub i64 %"$gasrem_814", 1
  store i64 %"$consume_818", i64* @_gasrem, align 8
  %b20 = alloca %TName_Bool*, align 8
  %"$gasrem_819" = load i64, i64* @_gasrem, align 8
  %"$gascmp_820" = icmp ugt i64 3, %"$gasrem_819"
  br i1 %"$gascmp_820", label %"$out_of_gas_821", label %"$have_gas_822"

"$out_of_gas_821":                                ; preds = %"$have_gas_817"
  call void @_out_of_gas()
  br label %"$have_gas_822"

"$have_gas_822":                                  ; preds = %"$out_of_gas_821", %"$have_gas_817"
  %"$consume_823" = sub i64 %"$gasrem_819", 3
  store i64 %"$consume_823", i64* @_gasrem, align 8
  %"$execptr_load_824" = load i8*, i8** @_execptr, align 8
  %"$eq_bs3_825" = alloca [3 x i8], align 1
  %"$bs3_826" = load [3 x i8], [3 x i8]* %bs3, align 1
  store [3 x i8] %"$bs3_826", [3 x i8]* %"$eq_bs3_825", align 1
  %"$$eq_bs3_825_827" = bitcast [3 x i8]* %"$eq_bs3_825" to i8*
  %"$eq_bs4_828" = alloca [3 x i8], align 1
  %"$bs4_829" = load [3 x i8], [3 x i8]* %bs4, align 1
  store [3 x i8] %"$bs4_829", [3 x i8]* %"$eq_bs4_828", align 1
  %"$$eq_bs4_828_830" = bitcast [3 x i8]* %"$eq_bs4_828" to i8*
  %"$eq_call_831" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_824", i32 3, i8* %"$$eq_bs3_825_827", i8* %"$$eq_bs4_828_830")
  store %TName_Bool* %"$eq_call_831", %TName_Bool** %b20, align 8
  %"$gasrem_833" = load i64, i64* @_gasrem, align 8
  %"$gascmp_834" = icmp ugt i64 1, %"$gasrem_833"
  br i1 %"$gascmp_834", label %"$out_of_gas_835", label %"$have_gas_836"

"$out_of_gas_835":                                ; preds = %"$have_gas_822"
  call void @_out_of_gas()
  br label %"$have_gas_836"

"$have_gas_836":                                  ; preds = %"$out_of_gas_835", %"$have_gas_822"
  %"$consume_837" = sub i64 %"$gasrem_833", 1
  store i64 %"$consume_837", i64* @_gasrem, align 8
  %b21 = alloca %TName_Bool*, align 8
  %"$gasrem_838" = load i64, i64* @_gasrem, align 8
  %"$gascmp_839" = icmp ugt i64 1, %"$gasrem_838"
  br i1 %"$gascmp_839", label %"$out_of_gas_840", label %"$have_gas_841"

"$out_of_gas_840":                                ; preds = %"$have_gas_836"
  call void @_out_of_gas()
  br label %"$have_gas_841"

"$have_gas_841":                                  ; preds = %"$out_of_gas_840", %"$have_gas_836"
  %"$consume_842" = sub i64 %"$gasrem_838", 1
  store i64 %"$consume_842", i64* @_gasrem, align 8
  %"$BoolUtils.negb_25" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_843" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_844" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_843", 0
  %"$BoolUtils.negb_envptr_845" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_843", 1
  %"$b20_846" = load %TName_Bool*, %TName_Bool** %b20, align 8
  %"$BoolUtils.negb_call_847" = call %TName_Bool* %"$BoolUtils.negb_fptr_844"(i8* %"$BoolUtils.negb_envptr_845", %TName_Bool* %"$b20_846")
  store %TName_Bool* %"$BoolUtils.negb_call_847", %TName_Bool** %"$BoolUtils.negb_25", align 8
  %"$$BoolUtils.negb_25_848" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_25", align 8
  store %TName_Bool* %"$$BoolUtils.negb_25_848", %TName_Bool** %b21, align 8
  %"$gasrem_849" = load i64, i64* @_gasrem, align 8
  %"$gascmp_850" = icmp ugt i64 1, %"$gasrem_849"
  br i1 %"$gascmp_850", label %"$out_of_gas_851", label %"$have_gas_852"

"$out_of_gas_851":                                ; preds = %"$have_gas_841"
  call void @_out_of_gas()
  br label %"$have_gas_852"

"$have_gas_852":                                  ; preds = %"$out_of_gas_851", %"$have_gas_841"
  %"$consume_853" = sub i64 %"$gasrem_849", 1
  store i64 %"$consume_853", i64* @_gasrem, align 8
  %b22 = alloca %TName_Bool*, align 8
  %"$gasrem_854" = load i64, i64* @_gasrem, align 8
  %"$gascmp_855" = icmp ugt i64 1, %"$gasrem_854"
  br i1 %"$gascmp_855", label %"$out_of_gas_856", label %"$have_gas_857"

"$out_of_gas_856":                                ; preds = %"$have_gas_852"
  call void @_out_of_gas()
  br label %"$have_gas_857"

"$have_gas_857":                                  ; preds = %"$out_of_gas_856", %"$have_gas_852"
  %"$consume_858" = sub i64 %"$gasrem_854", 1
  store i64 %"$consume_858", i64* @_gasrem, align 8
  %"$BoolUtils.andb_26" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_859" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_860" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_859", 0
  %"$BoolUtils.andb_envptr_861" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_859", 1
  %"$b19_862" = load %TName_Bool*, %TName_Bool** %b19, align 8
  %"$BoolUtils.andb_call_863" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_860"(i8* %"$BoolUtils.andb_envptr_861", %TName_Bool* %"$b19_862")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_863", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_26", align 8
  %"$BoolUtils.andb_27" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_26_864" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_26", align 8
  %"$$BoolUtils.andb_26_fptr_865" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_26_864", 0
  %"$$BoolUtils.andb_26_envptr_866" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_26_864", 1
  %"$b21_867" = load %TName_Bool*, %TName_Bool** %b21, align 8
  %"$$BoolUtils.andb_26_call_868" = call %TName_Bool* %"$$BoolUtils.andb_26_fptr_865"(i8* %"$$BoolUtils.andb_26_envptr_866", %TName_Bool* %"$b21_867")
  store %TName_Bool* %"$$BoolUtils.andb_26_call_868", %TName_Bool** %"$BoolUtils.andb_27", align 8
  %"$$BoolUtils.andb_27_869" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_27", align 8
  store %TName_Bool* %"$$BoolUtils.andb_27_869", %TName_Bool** %b22, align 8
  %"$gasrem_870" = load i64, i64* @_gasrem, align 8
  %"$gascmp_871" = icmp ugt i64 1, %"$gasrem_870"
  br i1 %"$gascmp_871", label %"$out_of_gas_872", label %"$have_gas_873"

"$out_of_gas_872":                                ; preds = %"$have_gas_857"
  call void @_out_of_gas()
  br label %"$have_gas_873"

"$have_gas_873":                                  ; preds = %"$out_of_gas_872", %"$have_gas_857"
  %"$consume_874" = sub i64 %"$gasrem_870", 1
  store i64 %"$consume_874", i64* @_gasrem, align 8
  %"$bs11_6" = alloca %Bystr, align 8
  %"$gasrem_875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_876" = icmp ugt i64 2, %"$gasrem_875"
  br i1 %"$gascmp_876", label %"$out_of_gas_877", label %"$have_gas_878"

"$out_of_gas_877":                                ; preds = %"$have_gas_873"
  call void @_out_of_gas()
  br label %"$have_gas_878"

"$have_gas_878":                                  ; preds = %"$out_of_gas_877", %"$have_gas_873"
  %"$consume_879" = sub i64 %"$gasrem_875", 2
  store i64 %"$consume_879", i64* @_gasrem, align 8
  %"$execptr_load_880" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bs1_881" = alloca [2 x i8], align 1
  %"$bs1_882" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_882", [2 x i8]* %"$to_bystr_bs1_881", align 1
  %"$$to_bystr_bs1_881_883" = bitcast [2 x i8]* %"$to_bystr_bs1_881" to i8*
  %"$to_bystr_call_884" = call %Bystr @_to_bystr(i8* %"$execptr_load_880", i32 2, i8* %"$$to_bystr_bs1_881_883")
  store %Bystr %"$to_bystr_call_884", %Bystr* %"$bs11_6", align 8
  %"$gasrem_885" = load i64, i64* @_gasrem, align 8
  %"$gascmp_886" = icmp ugt i64 1, %"$gasrem_885"
  br i1 %"$gascmp_886", label %"$out_of_gas_887", label %"$have_gas_888"

"$out_of_gas_887":                                ; preds = %"$have_gas_878"
  call void @_out_of_gas()
  br label %"$have_gas_888"

"$have_gas_888":                                  ; preds = %"$out_of_gas_887", %"$have_gas_878"
  %"$consume_889" = sub i64 %"$gasrem_885", 1
  store i64 %"$consume_889", i64* @_gasrem, align 8
  %bs22 = alloca %Bystr, align 8
  %"$gasrem_890" = load i64, i64* @_gasrem, align 8
  %"$gascmp_891" = icmp ugt i64 2, %"$gasrem_890"
  br i1 %"$gascmp_891", label %"$out_of_gas_892", label %"$have_gas_893"

"$out_of_gas_892":                                ; preds = %"$have_gas_888"
  call void @_out_of_gas()
  br label %"$have_gas_893"

"$have_gas_893":                                  ; preds = %"$out_of_gas_892", %"$have_gas_888"
  %"$consume_894" = sub i64 %"$gasrem_890", 2
  store i64 %"$consume_894", i64* @_gasrem, align 8
  %"$execptr_load_895" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bs2_896" = alloca [2 x i8], align 1
  %"$bs2_897" = load [2 x i8], [2 x i8]* %bs2, align 1
  store [2 x i8] %"$bs2_897", [2 x i8]* %"$to_bystr_bs2_896", align 1
  %"$$to_bystr_bs2_896_898" = bitcast [2 x i8]* %"$to_bystr_bs2_896" to i8*
  %"$to_bystr_call_899" = call %Bystr @_to_bystr(i8* %"$execptr_load_895", i32 2, i8* %"$$to_bystr_bs2_896_898")
  store %Bystr %"$to_bystr_call_899", %Bystr* %bs22, align 8
  %"$gasrem_900" = load i64, i64* @_gasrem, align 8
  %"$gascmp_901" = icmp ugt i64 1, %"$gasrem_900"
  br i1 %"$gascmp_901", label %"$out_of_gas_902", label %"$have_gas_903"

"$out_of_gas_902":                                ; preds = %"$have_gas_893"
  call void @_out_of_gas()
  br label %"$have_gas_903"

"$have_gas_903":                                  ; preds = %"$out_of_gas_902", %"$have_gas_893"
  %"$consume_904" = sub i64 %"$gasrem_900", 1
  store i64 %"$consume_904", i64* @_gasrem, align 8
  %b23 = alloca %TName_Bool*, align 8
  %"$_literal_cost_$bs11_6_905" = alloca %Bystr, align 8
  %"$$bs11_6_906" = load %Bystr, %Bystr* %"$bs11_6", align 8
  store %Bystr %"$$bs11_6_906", %Bystr* %"$_literal_cost_$bs11_6_905", align 8
  %"$$_literal_cost_$bs11_6_905_907" = bitcast %Bystr* %"$_literal_cost_$bs11_6_905" to i8*
  %"$_literal_cost_call_908" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_77", i8* %"$$_literal_cost_$bs11_6_905_907")
  %"$gasrem_909" = load i64, i64* @_gasrem, align 8
  %"$gascmp_910" = icmp ugt i64 %"$_literal_cost_call_908", %"$gasrem_909"
  br i1 %"$gascmp_910", label %"$out_of_gas_911", label %"$have_gas_912"

"$out_of_gas_911":                                ; preds = %"$have_gas_903"
  call void @_out_of_gas()
  br label %"$have_gas_912"

"$have_gas_912":                                  ; preds = %"$out_of_gas_911", %"$have_gas_903"
  %"$consume_913" = sub i64 %"$gasrem_909", %"$_literal_cost_call_908"
  store i64 %"$consume_913", i64* @_gasrem, align 8
  %"$execptr_load_914" = load i8*, i8** @_execptr, align 8
  %"$$bs11_6_915" = load %Bystr, %Bystr* %"$bs11_6", align 8
  %"$bs22_916" = load %Bystr, %Bystr* %bs22, align 8
  %"$eq_call_917" = call %TName_Bool* @_eq_ByStr(i8* %"$execptr_load_914", %Bystr %"$$bs11_6_915", %Bystr %"$bs22_916")
  store %TName_Bool* %"$eq_call_917", %TName_Bool** %b23, align 8
  %"$gasrem_919" = load i64, i64* @_gasrem, align 8
  %"$gascmp_920" = icmp ugt i64 1, %"$gasrem_919"
  br i1 %"$gascmp_920", label %"$out_of_gas_921", label %"$have_gas_922"

"$out_of_gas_921":                                ; preds = %"$have_gas_912"
  call void @_out_of_gas()
  br label %"$have_gas_922"

"$have_gas_922":                                  ; preds = %"$out_of_gas_921", %"$have_gas_912"
  %"$consume_923" = sub i64 %"$gasrem_919", 1
  store i64 %"$consume_923", i64* @_gasrem, align 8
  %b24 = alloca %TName_Bool*, align 8
  %"$gasrem_924" = load i64, i64* @_gasrem, align 8
  %"$gascmp_925" = icmp ugt i64 1, %"$gasrem_924"
  br i1 %"$gascmp_925", label %"$out_of_gas_926", label %"$have_gas_927"

"$out_of_gas_926":                                ; preds = %"$have_gas_922"
  call void @_out_of_gas()
  br label %"$have_gas_927"

"$have_gas_927":                                  ; preds = %"$out_of_gas_926", %"$have_gas_922"
  %"$consume_928" = sub i64 %"$gasrem_924", 1
  store i64 %"$consume_928", i64* @_gasrem, align 8
  %"$BoolUtils.negb_28" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_929" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_930" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_929", 0
  %"$BoolUtils.negb_envptr_931" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_929", 1
  %"$b23_932" = load %TName_Bool*, %TName_Bool** %b23, align 8
  %"$BoolUtils.negb_call_933" = call %TName_Bool* %"$BoolUtils.negb_fptr_930"(i8* %"$BoolUtils.negb_envptr_931", %TName_Bool* %"$b23_932")
  store %TName_Bool* %"$BoolUtils.negb_call_933", %TName_Bool** %"$BoolUtils.negb_28", align 8
  %"$$BoolUtils.negb_28_934" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_28", align 8
  store %TName_Bool* %"$$BoolUtils.negb_28_934", %TName_Bool** %b24, align 8
  %"$gasrem_935" = load i64, i64* @_gasrem, align 8
  %"$gascmp_936" = icmp ugt i64 1, %"$gasrem_935"
  br i1 %"$gascmp_936", label %"$out_of_gas_937", label %"$have_gas_938"

"$out_of_gas_937":                                ; preds = %"$have_gas_927"
  call void @_out_of_gas()
  br label %"$have_gas_938"

"$have_gas_938":                                  ; preds = %"$out_of_gas_937", %"$have_gas_927"
  %"$consume_939" = sub i64 %"$gasrem_935", 1
  store i64 %"$consume_939", i64* @_gasrem, align 8
  %b25 = alloca %TName_Bool*, align 8
  %"$gasrem_940" = load i64, i64* @_gasrem, align 8
  %"$gascmp_941" = icmp ugt i64 1, %"$gasrem_940"
  br i1 %"$gascmp_941", label %"$out_of_gas_942", label %"$have_gas_943"

"$out_of_gas_942":                                ; preds = %"$have_gas_938"
  call void @_out_of_gas()
  br label %"$have_gas_943"

"$have_gas_943":                                  ; preds = %"$out_of_gas_942", %"$have_gas_938"
  %"$consume_944" = sub i64 %"$gasrem_940", 1
  store i64 %"$consume_944", i64* @_gasrem, align 8
  %"$BoolUtils.andb_29" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_945" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_946" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_945", 0
  %"$BoolUtils.andb_envptr_947" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_945", 1
  %"$b22_948" = load %TName_Bool*, %TName_Bool** %b22, align 8
  %"$BoolUtils.andb_call_949" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_946"(i8* %"$BoolUtils.andb_envptr_947", %TName_Bool* %"$b22_948")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_949", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_29", align 8
  %"$BoolUtils.andb_30" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_29_950" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_29", align 8
  %"$$BoolUtils.andb_29_fptr_951" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_29_950", 0
  %"$$BoolUtils.andb_29_envptr_952" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_29_950", 1
  %"$b24_953" = load %TName_Bool*, %TName_Bool** %b24, align 8
  %"$$BoolUtils.andb_29_call_954" = call %TName_Bool* %"$$BoolUtils.andb_29_fptr_951"(i8* %"$$BoolUtils.andb_29_envptr_952", %TName_Bool* %"$b24_953")
  store %TName_Bool* %"$$BoolUtils.andb_29_call_954", %TName_Bool** %"$BoolUtils.andb_30", align 8
  %"$$BoolUtils.andb_30_955" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_30", align 8
  store %TName_Bool* %"$$BoolUtils.andb_30_955", %TName_Bool** %b25, align 8
  %"$gasrem_956" = load i64, i64* @_gasrem, align 8
  %"$gascmp_957" = icmp ugt i64 1, %"$gasrem_956"
  br i1 %"$gascmp_957", label %"$out_of_gas_958", label %"$have_gas_959"

"$out_of_gas_958":                                ; preds = %"$have_gas_943"
  call void @_out_of_gas()
  br label %"$have_gas_959"

"$have_gas_959":                                  ; preds = %"$out_of_gas_958", %"$have_gas_943"
  %"$consume_960" = sub i64 %"$gasrem_956", 1
  store i64 %"$consume_960", i64* @_gasrem, align 8
  %bn1 = alloca i8*, align 8
  %"$gasrem_961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_962" = icmp ugt i64 1, %"$gasrem_961"
  br i1 %"$gascmp_962", label %"$out_of_gas_963", label %"$have_gas_964"

"$out_of_gas_963":                                ; preds = %"$have_gas_959"
  call void @_out_of_gas()
  br label %"$have_gas_964"

"$have_gas_964":                                  ; preds = %"$out_of_gas_963", %"$have_gas_959"
  %"$consume_965" = sub i64 %"$gasrem_961", 1
  store i64 %"$consume_965", i64* @_gasrem, align 8
  %"$execptr_load_967" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_968" = call i8* @_new_bnum(i8* %"$execptr_load_967", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_966", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_968", i8** %bn1, align 8
  %"$gasrem_970" = load i64, i64* @_gasrem, align 8
  %"$gascmp_971" = icmp ugt i64 1, %"$gasrem_970"
  br i1 %"$gascmp_971", label %"$out_of_gas_972", label %"$have_gas_973"

"$out_of_gas_972":                                ; preds = %"$have_gas_964"
  call void @_out_of_gas()
  br label %"$have_gas_973"

"$have_gas_973":                                  ; preds = %"$out_of_gas_972", %"$have_gas_964"
  %"$consume_974" = sub i64 %"$gasrem_970", 1
  store i64 %"$consume_974", i64* @_gasrem, align 8
  %bn2 = alloca i8*, align 8
  %"$gasrem_975" = load i64, i64* @_gasrem, align 8
  %"$gascmp_976" = icmp ugt i64 1, %"$gasrem_975"
  br i1 %"$gascmp_976", label %"$out_of_gas_977", label %"$have_gas_978"

"$out_of_gas_977":                                ; preds = %"$have_gas_973"
  call void @_out_of_gas()
  br label %"$have_gas_978"

"$have_gas_978":                                  ; preds = %"$out_of_gas_977", %"$have_gas_973"
  %"$consume_979" = sub i64 %"$gasrem_975", 1
  store i64 %"$consume_979", i64* @_gasrem, align 8
  %"$execptr_load_981" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_982" = call i8* @_new_bnum(i8* %"$execptr_load_981", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_980", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_982", i8** %bn2, align 8
  %"$gasrem_984" = load i64, i64* @_gasrem, align 8
  %"$gascmp_985" = icmp ugt i64 1, %"$gasrem_984"
  br i1 %"$gascmp_985", label %"$out_of_gas_986", label %"$have_gas_987"

"$out_of_gas_986":                                ; preds = %"$have_gas_978"
  call void @_out_of_gas()
  br label %"$have_gas_987"

"$have_gas_987":                                  ; preds = %"$out_of_gas_986", %"$have_gas_978"
  %"$consume_988" = sub i64 %"$gasrem_984", 1
  store i64 %"$consume_988", i64* @_gasrem, align 8
  %bn3 = alloca i8*, align 8
  %"$gasrem_989" = load i64, i64* @_gasrem, align 8
  %"$gascmp_990" = icmp ugt i64 1, %"$gasrem_989"
  br i1 %"$gascmp_990", label %"$out_of_gas_991", label %"$have_gas_992"

"$out_of_gas_991":                                ; preds = %"$have_gas_987"
  call void @_out_of_gas()
  br label %"$have_gas_992"

"$have_gas_992":                                  ; preds = %"$out_of_gas_991", %"$have_gas_987"
  %"$consume_993" = sub i64 %"$gasrem_989", 1
  store i64 %"$consume_993", i64* @_gasrem, align 8
  %"$execptr_load_995" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_996" = call i8* @_new_bnum(i8* %"$execptr_load_995", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_994", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_996", i8** %bn3, align 8
  %"$gasrem_998" = load i64, i64* @_gasrem, align 8
  %"$gascmp_999" = icmp ugt i64 1, %"$gasrem_998"
  br i1 %"$gascmp_999", label %"$out_of_gas_1000", label %"$have_gas_1001"

"$out_of_gas_1000":                               ; preds = %"$have_gas_992"
  call void @_out_of_gas()
  br label %"$have_gas_1001"

"$have_gas_1001":                                 ; preds = %"$out_of_gas_1000", %"$have_gas_992"
  %"$consume_1002" = sub i64 %"$gasrem_998", 1
  store i64 %"$consume_1002", i64* @_gasrem, align 8
  %b26 = alloca %TName_Bool*, align 8
  %"$gasrem_1003" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1004" = icmp ugt i64 32, %"$gasrem_1003"
  br i1 %"$gascmp_1004", label %"$out_of_gas_1005", label %"$have_gas_1006"

"$out_of_gas_1005":                               ; preds = %"$have_gas_1001"
  call void @_out_of_gas()
  br label %"$have_gas_1006"

"$have_gas_1006":                                 ; preds = %"$out_of_gas_1005", %"$have_gas_1001"
  %"$consume_1007" = sub i64 %"$gasrem_1003", 32
  store i64 %"$consume_1007", i64* @_gasrem, align 8
  %"$execptr_load_1008" = load i8*, i8** @_execptr, align 8
  %"$bn1_1009" = load i8*, i8** %bn1, align 8
  %"$bn2_1010" = load i8*, i8** %bn2, align 8
  %"$eq_call_1011" = call %TName_Bool* @_eq_BNum(i8* %"$execptr_load_1008", i8* %"$bn1_1009", i8* %"$bn2_1010")
  store %TName_Bool* %"$eq_call_1011", %TName_Bool** %b26, align 8
  %"$gasrem_1013" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1014" = icmp ugt i64 1, %"$gasrem_1013"
  br i1 %"$gascmp_1014", label %"$out_of_gas_1015", label %"$have_gas_1016"

"$out_of_gas_1015":                               ; preds = %"$have_gas_1006"
  call void @_out_of_gas()
  br label %"$have_gas_1016"

"$have_gas_1016":                                 ; preds = %"$out_of_gas_1015", %"$have_gas_1006"
  %"$consume_1017" = sub i64 %"$gasrem_1013", 1
  store i64 %"$consume_1017", i64* @_gasrem, align 8
  %b27 = alloca %TName_Bool*, align 8
  %"$gasrem_1018" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1019" = icmp ugt i64 1, %"$gasrem_1018"
  br i1 %"$gascmp_1019", label %"$out_of_gas_1020", label %"$have_gas_1021"

"$out_of_gas_1020":                               ; preds = %"$have_gas_1016"
  call void @_out_of_gas()
  br label %"$have_gas_1021"

"$have_gas_1021":                                 ; preds = %"$out_of_gas_1020", %"$have_gas_1016"
  %"$consume_1022" = sub i64 %"$gasrem_1018", 1
  store i64 %"$consume_1022", i64* @_gasrem, align 8
  %"$BoolUtils.negb_31" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_1023" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_1024" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1023", 0
  %"$BoolUtils.negb_envptr_1025" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1023", 1
  %"$b26_1026" = load %TName_Bool*, %TName_Bool** %b26, align 8
  %"$BoolUtils.negb_call_1027" = call %TName_Bool* %"$BoolUtils.negb_fptr_1024"(i8* %"$BoolUtils.negb_envptr_1025", %TName_Bool* %"$b26_1026")
  store %TName_Bool* %"$BoolUtils.negb_call_1027", %TName_Bool** %"$BoolUtils.negb_31", align 8
  %"$$BoolUtils.negb_31_1028" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_31", align 8
  store %TName_Bool* %"$$BoolUtils.negb_31_1028", %TName_Bool** %b27, align 8
  %"$gasrem_1029" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1030" = icmp ugt i64 1, %"$gasrem_1029"
  br i1 %"$gascmp_1030", label %"$out_of_gas_1031", label %"$have_gas_1032"

"$out_of_gas_1031":                               ; preds = %"$have_gas_1021"
  call void @_out_of_gas()
  br label %"$have_gas_1032"

"$have_gas_1032":                                 ; preds = %"$out_of_gas_1031", %"$have_gas_1021"
  %"$consume_1033" = sub i64 %"$gasrem_1029", 1
  store i64 %"$consume_1033", i64* @_gasrem, align 8
  %b28 = alloca %TName_Bool*, align 8
  %"$gasrem_1034" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1035" = icmp ugt i64 32, %"$gasrem_1034"
  br i1 %"$gascmp_1035", label %"$out_of_gas_1036", label %"$have_gas_1037"

"$out_of_gas_1036":                               ; preds = %"$have_gas_1032"
  call void @_out_of_gas()
  br label %"$have_gas_1037"

"$have_gas_1037":                                 ; preds = %"$out_of_gas_1036", %"$have_gas_1032"
  %"$consume_1038" = sub i64 %"$gasrem_1034", 32
  store i64 %"$consume_1038", i64* @_gasrem, align 8
  %"$execptr_load_1039" = load i8*, i8** @_execptr, align 8
  %"$bn1_1040" = load i8*, i8** %bn1, align 8
  %"$bn3_1041" = load i8*, i8** %bn3, align 8
  %"$eq_call_1042" = call %TName_Bool* @_eq_BNum(i8* %"$execptr_load_1039", i8* %"$bn1_1040", i8* %"$bn3_1041")
  store %TName_Bool* %"$eq_call_1042", %TName_Bool** %b28, align 8
  %"$gasrem_1044" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1045" = icmp ugt i64 1, %"$gasrem_1044"
  br i1 %"$gascmp_1045", label %"$out_of_gas_1046", label %"$have_gas_1047"

"$out_of_gas_1046":                               ; preds = %"$have_gas_1037"
  call void @_out_of_gas()
  br label %"$have_gas_1047"

"$have_gas_1047":                                 ; preds = %"$out_of_gas_1046", %"$have_gas_1037"
  %"$consume_1048" = sub i64 %"$gasrem_1044", 1
  store i64 %"$consume_1048", i64* @_gasrem, align 8
  %b29 = alloca %TName_Bool*, align 8
  %"$gasrem_1049" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1050" = icmp ugt i64 1, %"$gasrem_1049"
  br i1 %"$gascmp_1050", label %"$out_of_gas_1051", label %"$have_gas_1052"

"$out_of_gas_1051":                               ; preds = %"$have_gas_1047"
  call void @_out_of_gas()
  br label %"$have_gas_1052"

"$have_gas_1052":                                 ; preds = %"$out_of_gas_1051", %"$have_gas_1047"
  %"$consume_1053" = sub i64 %"$gasrem_1049", 1
  store i64 %"$consume_1053", i64* @_gasrem, align 8
  %"$BoolUtils.andb_32" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1054" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1055" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1054", 0
  %"$BoolUtils.andb_envptr_1056" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1054", 1
  %"$b27_1057" = load %TName_Bool*, %TName_Bool** %b27, align 8
  %"$BoolUtils.andb_call_1058" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1055"(i8* %"$BoolUtils.andb_envptr_1056", %TName_Bool* %"$b27_1057")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1058", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_32", align 8
  %"$BoolUtils.andb_33" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_32_1059" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_32", align 8
  %"$$BoolUtils.andb_32_fptr_1060" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_32_1059", 0
  %"$$BoolUtils.andb_32_envptr_1061" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_32_1059", 1
  %"$b28_1062" = load %TName_Bool*, %TName_Bool** %b28, align 8
  %"$$BoolUtils.andb_32_call_1063" = call %TName_Bool* %"$$BoolUtils.andb_32_fptr_1060"(i8* %"$$BoolUtils.andb_32_envptr_1061", %TName_Bool* %"$b28_1062")
  store %TName_Bool* %"$$BoolUtils.andb_32_call_1063", %TName_Bool** %"$BoolUtils.andb_33", align 8
  %"$$BoolUtils.andb_33_1064" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_33", align 8
  store %TName_Bool* %"$$BoolUtils.andb_33_1064", %TName_Bool** %b29, align 8
  %"$gasrem_1065" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1066" = icmp ugt i64 1, %"$gasrem_1065"
  br i1 %"$gascmp_1066", label %"$out_of_gas_1067", label %"$have_gas_1068"

"$out_of_gas_1067":                               ; preds = %"$have_gas_1052"
  call void @_out_of_gas()
  br label %"$have_gas_1068"

"$have_gas_1068":                                 ; preds = %"$out_of_gas_1067", %"$have_gas_1052"
  %"$consume_1069" = sub i64 %"$gasrem_1065", 1
  store i64 %"$consume_1069", i64* @_gasrem, align 8
  %"$BoolUtils.andb_34" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1070" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1071" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1070", 0
  %"$BoolUtils.andb_envptr_1072" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1070", 1
  %"$b25_1073" = load %TName_Bool*, %TName_Bool** %b25, align 8
  %"$BoolUtils.andb_call_1074" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1071"(i8* %"$BoolUtils.andb_envptr_1072", %TName_Bool* %"$b25_1073")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1074", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_34", align 8
  %"$BoolUtils.andb_35" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_34_1075" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_34", align 8
  %"$$BoolUtils.andb_34_fptr_1076" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_34_1075", 0
  %"$$BoolUtils.andb_34_envptr_1077" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_34_1075", 1
  %"$b29_1078" = load %TName_Bool*, %TName_Bool** %b29, align 8
  %"$$BoolUtils.andb_34_call_1079" = call %TName_Bool* %"$$BoolUtils.andb_34_fptr_1076"(i8* %"$$BoolUtils.andb_34_envptr_1077", %TName_Bool* %"$b29_1078")
  store %TName_Bool* %"$$BoolUtils.andb_34_call_1079", %TName_Bool** %"$BoolUtils.andb_35", align 8
  %"$$BoolUtils.andb_35_1080" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_35", align 8
  store %TName_Bool* %"$$BoolUtils.andb_35_1080", %TName_Bool** %"$expr_46", align 8
  %"$$expr_46_1081" = load %TName_Bool*, %TName_Bool** %"$expr_46", align 8
  ret %TName_Bool* %"$$expr_46_1081"
}

declare %TName_Bool* @_eq_Int32(i8*, %Int32, %Int32)

declare %TName_Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #0

declare %TName_Bool* @_eq_String(i8*, %String, %String)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %TName_Bool* @_eq_ByStr(i8*, %Bystr, %Bystr)

declare i8* @_new_bnum(i8*, %BNumString)

declare %TName_Bool* @_eq_BNum(i8*, i8*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1082" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1083" = bitcast %TName_Bool* %"$exprval_1082" to i8*
  %"$execptr_load_1084" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1084", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_85", i8* %"$memvoidcast_1083")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
