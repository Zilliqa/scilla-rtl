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
%"$TyDescrTy_ADTTyp_81" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_80"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_80" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_82"**, %"$TyDescrTy_ADTTyp_81"* }
%"$TyDescrTy_ADTTyp_Constr_82" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_1083" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1084" = type { %ParamDescrString, i32, %"$ParamDescr_1083"* }
%"$$fundef_36_env_99" = type {}
%"$$fundef_40_env_100" = type { %TName_Bool* }
%"$$fundef_38_env_101" = type {}
%"$$fundef_44_env_102" = type { %TName_Bool* }
%"$$fundef_42_env_103" = type {}
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
@"$TyDescr_Bystr_Prim_74" = global %"$TyDescrTy_PrimTyp_47" { i32 7, i32 0 }
@"$TyDescr_Bystr_75" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_Bystr_Prim_74" to i8*) }
@"$TyDescr_Bystr3_Prim_76" = global %"$TyDescrTy_PrimTyp_47" { i32 8, i32 3 }
@"$TyDescr_Bystr3_77" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_Bystr3_Prim_76" to i8*) }
@"$TyDescr_Bystr2_Prim_78" = global %"$TyDescrTy_PrimTyp_47" { i32 8, i32 2 }
@"$TyDescr_Bystr2_79" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_47"* @"$TyDescr_Bystr2_Prim_78" to i8*) }
@"$TyDescr_ADT_Bool_83" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_80"* @"$TyDescr_Bool_ADTTyp_Specl_96" to i8*) }
@"$TyDescr_Bool_ADTTyp_87" = unnamed_addr constant %"$TyDescrTy_ADTTyp_81" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_98", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_80"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_80"*], [1 x %"$TyDescrTy_ADTTyp_Specl_80"*]* @"$TyDescr_Bool_ADTTyp_m_specls_97", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_88" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_89" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_90" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_82" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_89", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_88", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_91" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_92" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_93" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_82" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_92", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_91", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_94" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_82"*] [%"$TyDescrTy_ADTTyp_Constr_82"* @"$TyDescr_Bool_True_ADTTyp_Constr_90", %"$TyDescrTy_ADTTyp_Constr_82"* @"$TyDescr_Bool_False_ADTTyp_Constr_93"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_95" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_96" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_80" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_95", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_82"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_82"*], [2 x %"$TyDescrTy_ADTTyp_Constr_82"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_94", i32 0, i32 0), %"$TyDescrTy_ADTTyp_81"* @"$TyDescr_Bool_ADTTyp_87" }
@"$TyDescr_Bool_ADTTyp_m_specls_97" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_80"*] [%"$TyDescrTy_ADTTyp_Specl_80"* @"$TyDescr_Bool_ADTTyp_Specl_96"]
@"$TyDescr_ADT_Bool_98" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.orb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.negb = global { %TName_Bool* (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$stringlit_569" = unnamed_addr constant [5 x i8] c"Hello"
@"$stringlit_580" = unnamed_addr constant [5 x i8] c"World"
@"$stringlit_591" = unnamed_addr constant [5 x i8] c"Hello"
@"$BNumLit_964" = unnamed_addr constant [3 x i8] c"100"
@"$BNumLit_978" = unnamed_addr constant [3 x i8] c"299"
@"$BNumLit_992" = unnamed_addr constant [3 x i8] c"100"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_71", %_TyDescrTy_Typ* @"$TyDescr_Int64_53", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_83", %_TyDescrTy_Typ* @"$TyDescr_Bystr3_77", %_TyDescrTy_Typ* @"$TyDescr_Uint256_63", %_TyDescrTy_Typ* @"$TyDescr_Uint32_51", %_TyDescrTy_Typ* @"$TyDescr_Uint64_55", %_TyDescrTy_Typ* @"$TyDescr_Bnum_67", %_TyDescrTy_Typ* @"$TyDescr_Uint128_59", %_TyDescrTy_Typ* @"$TyDescr_Exception_73", %_TyDescrTy_Typ* @"$TyDescr_String_65", %_TyDescrTy_Typ* @"$TyDescr_Int256_61", %_TyDescrTy_Typ* @"$TyDescr_Int128_57", %_TyDescrTy_Typ* @"$TyDescr_Bystr_75", %_TyDescrTy_Typ* @"$TyDescr_Message_69", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_79", %_TyDescrTy_Typ* @"$TyDescr_Int32_49"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_1083"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1084"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_36"(%"$$fundef_36_env_99"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$retval_37" = alloca %TName_Bool*, align 8
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 2, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %entry
  %"$consume_190" = sub i64 %"$gasrem_186", 2
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %"$b_tag_192" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_193" = load i8, i8* %"$b_tag_192", align 1
  switch i8 %"$b_tag_193", label %"$empty_default_194" [
    i8 0, label %"$True_195"
    i8 1, label %"$False_205"
  ], !dbg !9

"$True_195":                                      ; preds = %"$have_gas_189"
  %"$b_196" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$True_195"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$True_195"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %"$adtval_202_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_202_salloc" = call i8* @_salloc(i8* %"$adtval_202_load", i64 1)
  %"$adtval_202" = bitcast i8* %"$adtval_202_salloc" to %CName_False*
  %"$adtgep_203" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_202", i32 0, i32 0
  store i8 1, i8* %"$adtgep_203", align 1
  %"$adtptr_204" = bitcast %CName_False* %"$adtval_202" to %TName_Bool*
  store %TName_Bool* %"$adtptr_204", %TName_Bool** %"$retval_37", align 8, !dbg !10
  br label %"$matchsucc_191"

"$False_205":                                     ; preds = %"$have_gas_189"
  %"$b_206" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 1, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$False_205"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$False_205"
  %"$consume_211" = sub i64 %"$gasrem_207", 1
  store i64 %"$consume_211", i64* @_gasrem, align 8
  %"$adtval_212_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_212_salloc" = call i8* @_salloc(i8* %"$adtval_212_load", i64 1)
  %"$adtval_212" = bitcast i8* %"$adtval_212_salloc" to %CName_True*
  %"$adtgep_213" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_212", i32 0, i32 0
  store i8 0, i8* %"$adtgep_213", align 1
  %"$adtptr_214" = bitcast %CName_True* %"$adtval_212" to %TName_Bool*
  store %TName_Bool* %"$adtptr_214", %TName_Bool** %"$retval_37", align 8, !dbg !13
  br label %"$matchsucc_191"

"$empty_default_194":                             ; preds = %"$have_gas_189"
  br label %"$matchsucc_191"

"$matchsucc_191":                                 ; preds = %"$have_gas_210", %"$have_gas_200", %"$empty_default_194"
  %"$$retval_37_215" = load %TName_Bool*, %TName_Bool** %"$retval_37", align 8
  ret %TName_Bool* %"$$retval_37_215"
}

define internal %TName_Bool* @"$fundef_40"(%"$$fundef_40_env_100"* %0, %TName_Bool* %1) !dbg !15 {
entry:
  %"$$fundef_40_env_b_156" = getelementptr inbounds %"$$fundef_40_env_100", %"$$fundef_40_env_100"* %0, i32 0, i32 0
  %"$b_envload_157" = load %TName_Bool*, %TName_Bool** %"$$fundef_40_env_b_156", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_157", %TName_Bool** %b, align 8
  %"$retval_41" = alloca %TName_Bool*, align 8
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 2, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %entry
  %"$consume_162" = sub i64 %"$gasrem_158", 2
  store i64 %"$consume_162", i64* @_gasrem, align 8
  %"$b_164" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_165" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_164", i32 0, i32 0
  %"$b_tag_166" = load i8, i8* %"$b_tag_165", align 1
  switch i8 %"$b_tag_166", label %"$empty_default_167" [
    i8 0, label %"$True_168"
    i8 1, label %"$False_178"
  ], !dbg !16

"$True_168":                                      ; preds = %"$have_gas_161"
  %"$b_169" = bitcast %TName_Bool* %"$b_164" to %CName_True*
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$True_168"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$True_168"
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %"$adtval_175_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_175_salloc" = call i8* @_salloc(i8* %"$adtval_175_load", i64 1)
  %"$adtval_175" = bitcast i8* %"$adtval_175_salloc" to %CName_True*
  %"$adtgep_176" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_175", i32 0, i32 0
  store i8 0, i8* %"$adtgep_176", align 1
  %"$adtptr_177" = bitcast %CName_True* %"$adtval_175" to %TName_Bool*
  store %TName_Bool* %"$adtptr_177", %TName_Bool** %"$retval_41", align 8, !dbg !17
  br label %"$matchsucc_163"

"$False_178":                                     ; preds = %"$have_gas_161"
  %"$b_179" = bitcast %TName_Bool* %"$b_164" to %CName_False*
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$False_178"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$False_178"
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_41", align 8, !dbg !20
  br label %"$matchsucc_163"

"$empty_default_167":                             ; preds = %"$have_gas_161"
  br label %"$matchsucc_163"

"$matchsucc_163":                                 ; preds = %"$have_gas_183", %"$have_gas_173", %"$empty_default_167"
  %"$$retval_41_185" = load %TName_Bool*, %TName_Bool** %"$retval_41", align 8
  ret %TName_Bool* %"$$retval_41_185"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_101"* %0, %TName_Bool* %1) !dbg !22 {
entry:
  %"$retval_39" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %entry
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$$fundef_40_envp_150_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_40_envp_150_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_150_load", i64 8)
  %"$$fundef_40_envp_150" = bitcast i8* %"$$fundef_40_envp_150_salloc" to %"$$fundef_40_env_100"*
  %"$$fundef_40_env_voidp_152" = bitcast %"$$fundef_40_env_100"* %"$$fundef_40_envp_150" to i8*
  %"$$fundef_40_cloval_153" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_40_env_100"*, %TName_Bool*)* @"$fundef_40" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_40_env_voidp_152", 1
  %"$$fundef_40_env_b_154" = getelementptr inbounds %"$$fundef_40_env_100", %"$$fundef_40_env_100"* %"$$fundef_40_envp_150", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_40_env_b_154", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_40_cloval_153", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_39", align 8, !dbg !23
  %"$$retval_39_155" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_39", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_39_155"
}

define internal %TName_Bool* @"$fundef_44"(%"$$fundef_44_env_102"* %0, %TName_Bool* %1) !dbg !24 {
entry:
  %"$$fundef_44_env_b_115" = getelementptr inbounds %"$$fundef_44_env_102", %"$$fundef_44_env_102"* %0, i32 0, i32 0
  %"$b_envload_116" = load %TName_Bool*, %TName_Bool** %"$$fundef_44_env_b_115", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_116", %TName_Bool** %b, align 8
  %"$retval_45" = alloca %TName_Bool*, align 8
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 2, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %entry
  %"$consume_121" = sub i64 %"$gasrem_117", 2
  store i64 %"$consume_121", i64* @_gasrem, align 8
  %"$b_123" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_124" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_123", i32 0, i32 0
  %"$b_tag_125" = load i8, i8* %"$b_tag_124", align 1
  switch i8 %"$b_tag_125", label %"$empty_default_126" [
    i8 1, label %"$False_127"
    i8 0, label %"$True_137"
  ], !dbg !25

"$False_127":                                     ; preds = %"$have_gas_120"
  %"$b_128" = bitcast %TName_Bool* %"$b_123" to %CName_False*
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$False_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$False_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %"$adtval_134_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_134_salloc" = call i8* @_salloc(i8* %"$adtval_134_load", i64 1)
  %"$adtval_134" = bitcast i8* %"$adtval_134_salloc" to %CName_False*
  %"$adtgep_135" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_134", i32 0, i32 0
  store i8 1, i8* %"$adtgep_135", align 1
  %"$adtptr_136" = bitcast %CName_False* %"$adtval_134" to %TName_Bool*
  store %TName_Bool* %"$adtptr_136", %TName_Bool** %"$retval_45", align 8, !dbg !26
  br label %"$matchsucc_122"

"$True_137":                                      ; preds = %"$have_gas_120"
  %"$b_138" = bitcast %TName_Bool* %"$b_123" to %CName_True*
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$True_137"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$True_137"
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_45", align 8, !dbg !29
  br label %"$matchsucc_122"

"$empty_default_126":                             ; preds = %"$have_gas_120"
  br label %"$matchsucc_122"

"$matchsucc_122":                                 ; preds = %"$have_gas_142", %"$have_gas_132", %"$empty_default_126"
  %"$$retval_45_144" = load %TName_Bool*, %TName_Bool** %"$retval_45", align 8
  ret %TName_Bool* %"$$retval_45_144"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_42"(%"$$fundef_42_env_103"* %0, %TName_Bool* %1) !dbg !31 {
entry:
  %"$retval_43" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %entry
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %"$$fundef_44_envp_109_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_44_envp_109_salloc" = call i8* @_salloc(i8* %"$$fundef_44_envp_109_load", i64 8)
  %"$$fundef_44_envp_109" = bitcast i8* %"$$fundef_44_envp_109_salloc" to %"$$fundef_44_env_102"*
  %"$$fundef_44_env_voidp_111" = bitcast %"$$fundef_44_env_102"* %"$$fundef_44_envp_109" to i8*
  %"$$fundef_44_cloval_112" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_44_env_102"*, %TName_Bool*)* @"$fundef_44" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_44_env_voidp_111", 1
  %"$$fundef_44_env_b_113" = getelementptr inbounds %"$$fundef_44_env_102", %"$$fundef_44_env_102"* %"$$fundef_44_envp_109", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_44_env_b_113", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_44_cloval_112", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_43", align 8, !dbg !32
  %"$$retval_43_114" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_43", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_43_114"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !33 {
entry:
  %"$gasrem_216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_217" = icmp ugt i64 5, %"$gasrem_216"
  br i1 %"$gascmp_217", label %"$out_of_gas_218", label %"$have_gas_219"

"$out_of_gas_218":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_219"

"$have_gas_219":                                  ; preds = %"$out_of_gas_218", %entry
  %"$consume_220" = sub i64 %"$gasrem_216", 5
  store i64 %"$consume_220", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !35
  %"$gasrem_221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_222" = icmp ugt i64 5, %"$gasrem_221"
  br i1 %"$gascmp_222", label %"$out_of_gas_223", label %"$have_gas_224"

"$out_of_gas_223":                                ; preds = %"$have_gas_219"
  call void @_out_of_gas()
  br label %"$have_gas_224"

"$have_gas_224":                                  ; preds = %"$out_of_gas_223", %"$have_gas_219"
  %"$consume_225" = sub i64 %"$gasrem_221", 5
  store i64 %"$consume_225", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !35
  %"$gasrem_226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_227" = icmp ugt i64 1, %"$gasrem_226"
  br i1 %"$gascmp_227", label %"$out_of_gas_228", label %"$have_gas_229"

"$out_of_gas_228":                                ; preds = %"$have_gas_224"
  call void @_out_of_gas()
  br label %"$have_gas_229"

"$have_gas_229":                                  ; preds = %"$out_of_gas_228", %"$have_gas_224"
  %"$consume_230" = sub i64 %"$gasrem_226", 1
  store i64 %"$consume_230", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_42_env_103"*, %TName_Bool*)* @"$fundef_42" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !36
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_229"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_229"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_38_env_101"*, %TName_Bool*)* @"$fundef_38" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8, !dbg !37
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_237"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_36_env_99"*, %TName_Bool*)* @"$fundef_36" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8, !dbg !38
  %"$gasrem_250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_251" = icmp ugt i64 196, %"$gasrem_250"
  br i1 %"$gascmp_251", label %"$out_of_gas_252", label %"$have_gas_253"

"$out_of_gas_252":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_253"

"$have_gas_253":                                  ; preds = %"$out_of_gas_252", %"$have_gas_245"
  %"$consume_254" = sub i64 %"$gasrem_250", 196
  store i64 %"$consume_254", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !35
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 20, %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$have_gas_253"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$have_gas_253"
  %"$consume_259" = sub i64 %"$gasrem_255", 20
  store i64 %"$consume_259", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !35
  %"$gasrem_260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_261" = icmp ugt i64 12, %"$gasrem_260"
  br i1 %"$gascmp_261", label %"$out_of_gas_262", label %"$have_gas_263"

"$out_of_gas_262":                                ; preds = %"$have_gas_258"
  call void @_out_of_gas()
  br label %"$have_gas_263"

"$have_gas_263":                                  ; preds = %"$out_of_gas_262", %"$have_gas_258"
  %"$consume_264" = sub i64 %"$gasrem_260", 12
  store i64 %"$consume_264", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !35
  %"$gasrem_265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_266" = icmp ugt i64 2, %"$gasrem_265"
  br i1 %"$gascmp_266", label %"$out_of_gas_267", label %"$have_gas_268"

"$out_of_gas_267":                                ; preds = %"$have_gas_263"
  call void @_out_of_gas()
  br label %"$have_gas_268"

"$have_gas_268":                                  ; preds = %"$out_of_gas_267", %"$have_gas_263"
  %"$consume_269" = sub i64 %"$gasrem_265", 2
  store i64 %"$consume_269", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !35
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !39 {
entry:
  %"$expr_46" = alloca %TName_Bool*, align 8
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 1, %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %entry
  %"$consume_274" = sub i64 %"$gasrem_270", 1
  store i64 %"$consume_274", i64* @_gasrem, align 8
  %i32a = alloca %Int32, align 8
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 1, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %"$have_gas_273"
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %"$have_gas_273"
  %"$consume_279" = sub i64 %"$gasrem_275", 1
  store i64 %"$consume_279", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %i32a, align 4, !dbg !40
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 1, %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %"$have_gas_278"
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %"$have_gas_278"
  %"$consume_284" = sub i64 %"$gasrem_280", 1
  store i64 %"$consume_284", i64* @_gasrem, align 8
  %i32b = alloca %Int32, align 8
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_283"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_283"
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %i32b, align 4, !dbg !41
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 1, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_288"
  %"$consume_294" = sub i64 %"$gasrem_290", 1
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %i32aa = alloca %Int32, align 8
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 1, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$have_gas_293"
  %"$consume_299" = sub i64 %"$gasrem_295", 1
  store i64 %"$consume_299", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %i32aa, align 4, !dbg !42
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_298"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_298"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %b1 = alloca %TName_Bool*, align 8
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 4, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_303"
  %"$consume_309" = sub i64 %"$gasrem_305", 4
  store i64 %"$consume_309", i64* @_gasrem, align 8
  %"$execptr_load_310" = load i8*, i8** @_execptr, align 8
  %"$i32a_311" = load %Int32, %Int32* %i32a, align 4
  %"$i32aa_312" = load %Int32, %Int32* %i32aa, align 4
  %"$eq_call_313" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_310", %Int32 %"$i32a_311", %Int32 %"$i32aa_312"), !dbg !43
  store %TName_Bool* %"$eq_call_313", %TName_Bool** %b1, align 8, !dbg !43
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 1, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$have_gas_308"
  %"$consume_319" = sub i64 %"$gasrem_315", 1
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %b2 = alloca %TName_Bool*, align 8
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 4, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_318"
  %"$consume_324" = sub i64 %"$gasrem_320", 4
  store i64 %"$consume_324", i64* @_gasrem, align 8
  %"$execptr_load_325" = load i8*, i8** @_execptr, align 8
  %"$i32a_326" = load %Int32, %Int32* %i32a, align 4
  %"$i32b_327" = load %Int32, %Int32* %i32b, align 4
  %"$eq_call_328" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_325", %Int32 %"$i32a_326", %Int32 %"$i32b_327"), !dbg !44
  store %TName_Bool* %"$eq_call_328", %TName_Bool** %b2, align 8, !dbg !44
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 1, %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$have_gas_323"
  %"$consume_334" = sub i64 %"$gasrem_330", 1
  store i64 %"$consume_334", i64* @_gasrem, align 8
  %i128a = alloca %Uint128, align 8
  %"$gasrem_335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_336" = icmp ugt i64 1, %"$gasrem_335"
  br i1 %"$gascmp_336", label %"$out_of_gas_337", label %"$have_gas_338"

"$out_of_gas_337":                                ; preds = %"$have_gas_333"
  call void @_out_of_gas()
  br label %"$have_gas_338"

"$have_gas_338":                                  ; preds = %"$out_of_gas_337", %"$have_gas_333"
  %"$consume_339" = sub i64 %"$gasrem_335", 1
  store i64 %"$consume_339", i64* @_gasrem, align 8
  store %Uint128 { i128 11 }, %Uint128* %i128a, align 8, !dbg !45
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_338"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_338"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %i128b = alloca %Uint128, align 8
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_343"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  store %Uint128 { i128 12 }, %Uint128* %i128b, align 8, !dbg !46
  %"$gasrem_350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_351" = icmp ugt i64 1, %"$gasrem_350"
  br i1 %"$gascmp_351", label %"$out_of_gas_352", label %"$have_gas_353"

"$out_of_gas_352":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_353"

"$have_gas_353":                                  ; preds = %"$out_of_gas_352", %"$have_gas_348"
  %"$consume_354" = sub i64 %"$gasrem_350", 1
  store i64 %"$consume_354", i64* @_gasrem, align 8
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %"$have_gas_353"
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %"$have_gas_353"
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_358"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %b3 = alloca %TName_Bool*, align 8
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 8, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_363"
  %"$consume_370" = sub i64 %"$gasrem_366", 8
  store i64 %"$consume_370", i64* @_gasrem, align 8
  %"$execptr_load_371" = load i8*, i8** @_execptr, align 8
  %"$i128a_372" = load %Uint128, %Uint128* %i128a, align 8
  %"$i128b_373" = load %Uint128, %Uint128* %i128b, align 8
  %"$eq_call_374" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_371", %Uint128 %"$i128a_372", %Uint128 %"$i128b_373"), !dbg !47
  store %TName_Bool* %"$eq_call_374", %TName_Bool** %b3, align 8, !dbg !47
  %"$gasrem_376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_377" = icmp ugt i64 1, %"$gasrem_376"
  br i1 %"$gascmp_377", label %"$out_of_gas_378", label %"$have_gas_379"

"$out_of_gas_378":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_379"

"$have_gas_379":                                  ; preds = %"$out_of_gas_378", %"$have_gas_369"
  %"$consume_380" = sub i64 %"$gasrem_376", 1
  store i64 %"$consume_380", i64* @_gasrem, align 8
  %b4 = alloca %TName_Bool*, align 8
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 8, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_379"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_379"
  %"$consume_386" = sub i64 %"$gasrem_382", 8
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %"$execptr_load_387" = load i8*, i8** @_execptr, align 8
  %"$i128a_388" = load %Uint128, %Uint128* %i128a, align 8
  %"$i128a_389" = load %Uint128, %Uint128* %i128a, align 8
  %"$eq_call_390" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_387", %Uint128 %"$i128a_388", %Uint128 %"$i128a_389"), !dbg !48
  store %TName_Bool* %"$eq_call_390", %TName_Bool** %b4, align 8, !dbg !48
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 1, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %"$have_gas_385"
  %"$consume_396" = sub i64 %"$gasrem_392", 1
  store i64 %"$consume_396", i64* @_gasrem, align 8
  %b5 = alloca %TName_Bool*, align 8
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_395"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_395"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  %"$BoolUtils.andb_7" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_402" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_403" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_402", 0
  %"$BoolUtils.andb_envptr_404" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_402", 1
  %"$b1_405" = load %TName_Bool*, %TName_Bool** %b1, align 8
  %"$BoolUtils.andb_call_406" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_403"(i8* %"$BoolUtils.andb_envptr_404", %TName_Bool* %"$b1_405"), !dbg !49
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_406", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7", align 8, !dbg !49
  %"$BoolUtils.andb_8" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_7_407" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7", align 8
  %"$$BoolUtils.andb_7_fptr_408" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_407", 0
  %"$$BoolUtils.andb_7_envptr_409" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_407", 1
  %"$b2_410" = load %TName_Bool*, %TName_Bool** %b2, align 8
  %"$$BoolUtils.andb_7_call_411" = call %TName_Bool* %"$$BoolUtils.andb_7_fptr_408"(i8* %"$$BoolUtils.andb_7_envptr_409", %TName_Bool* %"$b2_410"), !dbg !49
  store %TName_Bool* %"$$BoolUtils.andb_7_call_411", %TName_Bool** %"$BoolUtils.andb_8", align 8, !dbg !49
  %"$$BoolUtils.andb_8_412" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_8", align 8
  store %TName_Bool* %"$$BoolUtils.andb_8_412", %TName_Bool** %b5, align 8, !dbg !49
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_400"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_400"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %b6 = alloca %TName_Bool*, align 8
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_416"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %"$BoolUtils.orb_9" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_423" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_424" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_423", 0
  %"$BoolUtils.orb_envptr_425" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_423", 1
  %"$b3_426" = load %TName_Bool*, %TName_Bool** %b3, align 8
  %"$BoolUtils.orb_call_427" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_424"(i8* %"$BoolUtils.orb_envptr_425", %TName_Bool* %"$b3_426"), !dbg !50
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_427", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_9", align 8, !dbg !50
  %"$BoolUtils.orb_10" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_9_428" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_9", align 8
  %"$$BoolUtils.orb_9_fptr_429" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_9_428", 0
  %"$$BoolUtils.orb_9_envptr_430" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_9_428", 1
  %"$b4_431" = load %TName_Bool*, %TName_Bool** %b4, align 8
  %"$$BoolUtils.orb_9_call_432" = call %TName_Bool* %"$$BoolUtils.orb_9_fptr_429"(i8* %"$$BoolUtils.orb_9_envptr_430", %TName_Bool* %"$b4_431"), !dbg !50
  store %TName_Bool* %"$$BoolUtils.orb_9_call_432", %TName_Bool** %"$BoolUtils.orb_10", align 8, !dbg !50
  %"$$BoolUtils.orb_10_433" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_10", align 8
  store %TName_Bool* %"$$BoolUtils.orb_10_433", %TName_Bool** %b6, align 8, !dbg !50
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_421"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %b7 = alloca %TName_Bool*, align 8
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_437"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  %"$BoolUtils.andb_11" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_444" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_445" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_444", 0
  %"$BoolUtils.andb_envptr_446" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_444", 1
  %"$b5_447" = load %TName_Bool*, %TName_Bool** %b5, align 8
  %"$BoolUtils.andb_call_448" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_445"(i8* %"$BoolUtils.andb_envptr_446", %TName_Bool* %"$b5_447"), !dbg !51
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_448", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_11", align 8, !dbg !51
  %"$BoolUtils.andb_12" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_11_449" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_11", align 8
  %"$$BoolUtils.andb_11_fptr_450" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_11_449", 0
  %"$$BoolUtils.andb_11_envptr_451" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_11_449", 1
  %"$b6_452" = load %TName_Bool*, %TName_Bool** %b6, align 8
  %"$$BoolUtils.andb_11_call_453" = call %TName_Bool* %"$$BoolUtils.andb_11_fptr_450"(i8* %"$$BoolUtils.andb_11_envptr_451", %TName_Bool* %"$b6_452"), !dbg !51
  store %TName_Bool* %"$$BoolUtils.andb_11_call_453", %TName_Bool** %"$BoolUtils.andb_12", align 8, !dbg !51
  %"$$BoolUtils.andb_12_454" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_12", align 8
  store %TName_Bool* %"$$BoolUtils.andb_12_454", %TName_Bool** %b7, align 8, !dbg !51
  %"$gasrem_455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_456" = icmp ugt i64 1, %"$gasrem_455"
  br i1 %"$gascmp_456", label %"$out_of_gas_457", label %"$have_gas_458"

"$out_of_gas_457":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_458"

"$have_gas_458":                                  ; preds = %"$out_of_gas_457", %"$have_gas_442"
  %"$consume_459" = sub i64 %"$gasrem_455", 1
  store i64 %"$consume_459", i64* @_gasrem, align 8
  %ui256a = alloca %Uint128, align 8
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 1, %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$have_gas_458"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$have_gas_458"
  %"$consume_464" = sub i64 %"$gasrem_460", 1
  store i64 %"$consume_464", i64* @_gasrem, align 8
  store %Uint128 { i128 11 }, %Uint128* %ui256a, align 8, !dbg !52
  %"$gasrem_465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_466" = icmp ugt i64 1, %"$gasrem_465"
  br i1 %"$gascmp_466", label %"$out_of_gas_467", label %"$have_gas_468"

"$out_of_gas_467":                                ; preds = %"$have_gas_463"
  call void @_out_of_gas()
  br label %"$have_gas_468"

"$have_gas_468":                                  ; preds = %"$out_of_gas_467", %"$have_gas_463"
  %"$consume_469" = sub i64 %"$gasrem_465", 1
  store i64 %"$consume_469", i64* @_gasrem, align 8
  %ui256b = alloca %Uint128, align 8
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 1, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$have_gas_468"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$have_gas_468"
  %"$consume_474" = sub i64 %"$gasrem_470", 1
  store i64 %"$consume_474", i64* @_gasrem, align 8
  store %Uint128 { i128 12 }, %Uint128* %ui256b, align 8, !dbg !53
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 1, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_473"
  %"$consume_479" = sub i64 %"$gasrem_475", 1
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %"$gasrem_480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_481" = icmp ugt i64 1, %"$gasrem_480"
  br i1 %"$gascmp_481", label %"$out_of_gas_482", label %"$have_gas_483"

"$out_of_gas_482":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_483"

"$have_gas_483":                                  ; preds = %"$out_of_gas_482", %"$have_gas_478"
  %"$consume_484" = sub i64 %"$gasrem_480", 1
  store i64 %"$consume_484", i64* @_gasrem, align 8
  %"$gasrem_485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_486" = icmp ugt i64 1, %"$gasrem_485"
  br i1 %"$gascmp_486", label %"$out_of_gas_487", label %"$have_gas_488"

"$out_of_gas_487":                                ; preds = %"$have_gas_483"
  call void @_out_of_gas()
  br label %"$have_gas_488"

"$have_gas_488":                                  ; preds = %"$out_of_gas_487", %"$have_gas_483"
  %"$consume_489" = sub i64 %"$gasrem_485", 1
  store i64 %"$consume_489", i64* @_gasrem, align 8
  %b8 = alloca %TName_Bool*, align 8
  %"$gasrem_491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_492" = icmp ugt i64 8, %"$gasrem_491"
  br i1 %"$gascmp_492", label %"$out_of_gas_493", label %"$have_gas_494"

"$out_of_gas_493":                                ; preds = %"$have_gas_488"
  call void @_out_of_gas()
  br label %"$have_gas_494"

"$have_gas_494":                                  ; preds = %"$out_of_gas_493", %"$have_gas_488"
  %"$consume_495" = sub i64 %"$gasrem_491", 8
  store i64 %"$consume_495", i64* @_gasrem, align 8
  %"$execptr_load_496" = load i8*, i8** @_execptr, align 8
  %"$ui256a_497" = load %Uint128, %Uint128* %ui256a, align 8
  %"$ui256b_498" = load %Uint128, %Uint128* %ui256b, align 8
  %"$eq_call_499" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_496", %Uint128 %"$ui256a_497", %Uint128 %"$ui256b_498"), !dbg !54
  store %TName_Bool* %"$eq_call_499", %TName_Bool** %b8, align 8, !dbg !54
  %"$gasrem_501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_502" = icmp ugt i64 1, %"$gasrem_501"
  br i1 %"$gascmp_502", label %"$out_of_gas_503", label %"$have_gas_504"

"$out_of_gas_503":                                ; preds = %"$have_gas_494"
  call void @_out_of_gas()
  br label %"$have_gas_504"

"$have_gas_504":                                  ; preds = %"$out_of_gas_503", %"$have_gas_494"
  %"$consume_505" = sub i64 %"$gasrem_501", 1
  store i64 %"$consume_505", i64* @_gasrem, align 8
  %b9 = alloca %TName_Bool*, align 8
  %"$gasrem_507" = load i64, i64* @_gasrem, align 8
  %"$gascmp_508" = icmp ugt i64 8, %"$gasrem_507"
  br i1 %"$gascmp_508", label %"$out_of_gas_509", label %"$have_gas_510"

"$out_of_gas_509":                                ; preds = %"$have_gas_504"
  call void @_out_of_gas()
  br label %"$have_gas_510"

"$have_gas_510":                                  ; preds = %"$out_of_gas_509", %"$have_gas_504"
  %"$consume_511" = sub i64 %"$gasrem_507", 8
  store i64 %"$consume_511", i64* @_gasrem, align 8
  %"$execptr_load_512" = load i8*, i8** @_execptr, align 8
  %"$ui256a_513" = load %Uint128, %Uint128* %ui256a, align 8
  %"$ui256a_514" = load %Uint128, %Uint128* %ui256a, align 8
  %"$eq_call_515" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_512", %Uint128 %"$ui256a_513", %Uint128 %"$ui256a_514"), !dbg !55
  store %TName_Bool* %"$eq_call_515", %TName_Bool** %b9, align 8, !dbg !55
  %"$gasrem_517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_518" = icmp ugt i64 1, %"$gasrem_517"
  br i1 %"$gascmp_518", label %"$out_of_gas_519", label %"$have_gas_520"

"$out_of_gas_519":                                ; preds = %"$have_gas_510"
  call void @_out_of_gas()
  br label %"$have_gas_520"

"$have_gas_520":                                  ; preds = %"$out_of_gas_519", %"$have_gas_510"
  %"$consume_521" = sub i64 %"$gasrem_517", 1
  store i64 %"$consume_521", i64* @_gasrem, align 8
  %b10 = alloca %TName_Bool*, align 8
  %"$gasrem_522" = load i64, i64* @_gasrem, align 8
  %"$gascmp_523" = icmp ugt i64 1, %"$gasrem_522"
  br i1 %"$gascmp_523", label %"$out_of_gas_524", label %"$have_gas_525"

"$out_of_gas_524":                                ; preds = %"$have_gas_520"
  call void @_out_of_gas()
  br label %"$have_gas_525"

"$have_gas_525":                                  ; preds = %"$out_of_gas_524", %"$have_gas_520"
  %"$consume_526" = sub i64 %"$gasrem_522", 1
  store i64 %"$consume_526", i64* @_gasrem, align 8
  %"$BoolUtils.andb_13" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_527" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_528" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_527", 0
  %"$BoolUtils.andb_envptr_529" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_527", 1
  %"$b7_530" = load %TName_Bool*, %TName_Bool** %b7, align 8
  %"$BoolUtils.andb_call_531" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_528"(i8* %"$BoolUtils.andb_envptr_529", %TName_Bool* %"$b7_530"), !dbg !56
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_531", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8, !dbg !56
  %"$BoolUtils.andb_14" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_13_532" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8
  %"$$BoolUtils.andb_13_fptr_533" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_532", 0
  %"$$BoolUtils.andb_13_envptr_534" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_532", 1
  %"$b8_535" = load %TName_Bool*, %TName_Bool** %b8, align 8
  %"$$BoolUtils.andb_13_call_536" = call %TName_Bool* %"$$BoolUtils.andb_13_fptr_533"(i8* %"$$BoolUtils.andb_13_envptr_534", %TName_Bool* %"$b8_535"), !dbg !56
  store %TName_Bool* %"$$BoolUtils.andb_13_call_536", %TName_Bool** %"$BoolUtils.andb_14", align 8, !dbg !56
  %"$$BoolUtils.andb_14_537" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_14", align 8
  store %TName_Bool* %"$$BoolUtils.andb_14_537", %TName_Bool** %b10, align 8, !dbg !56
  %"$gasrem_538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_539" = icmp ugt i64 1, %"$gasrem_538"
  br i1 %"$gascmp_539", label %"$out_of_gas_540", label %"$have_gas_541"

"$out_of_gas_540":                                ; preds = %"$have_gas_525"
  call void @_out_of_gas()
  br label %"$have_gas_541"

"$have_gas_541":                                  ; preds = %"$out_of_gas_540", %"$have_gas_525"
  %"$consume_542" = sub i64 %"$gasrem_538", 1
  store i64 %"$consume_542", i64* @_gasrem, align 8
  %b11 = alloca %TName_Bool*, align 8
  %"$gasrem_543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_544" = icmp ugt i64 1, %"$gasrem_543"
  br i1 %"$gascmp_544", label %"$out_of_gas_545", label %"$have_gas_546"

"$out_of_gas_545":                                ; preds = %"$have_gas_541"
  call void @_out_of_gas()
  br label %"$have_gas_546"

"$have_gas_546":                                  ; preds = %"$out_of_gas_545", %"$have_gas_541"
  %"$consume_547" = sub i64 %"$gasrem_543", 1
  store i64 %"$consume_547", i64* @_gasrem, align 8
  %"$BoolUtils.orb_15" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_548" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_549" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_548", 0
  %"$BoolUtils.orb_envptr_550" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_548", 1
  %"$b10_551" = load %TName_Bool*, %TName_Bool** %b10, align 8
  %"$BoolUtils.orb_call_552" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_549"(i8* %"$BoolUtils.orb_envptr_550", %TName_Bool* %"$b10_551"), !dbg !57
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_552", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_15", align 8, !dbg !57
  %"$BoolUtils.orb_16" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_15_553" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_15", align 8
  %"$$BoolUtils.orb_15_fptr_554" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_15_553", 0
  %"$$BoolUtils.orb_15_envptr_555" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_15_553", 1
  %"$b9_556" = load %TName_Bool*, %TName_Bool** %b9, align 8
  %"$$BoolUtils.orb_15_call_557" = call %TName_Bool* %"$$BoolUtils.orb_15_fptr_554"(i8* %"$$BoolUtils.orb_15_envptr_555", %TName_Bool* %"$b9_556"), !dbg !57
  store %TName_Bool* %"$$BoolUtils.orb_15_call_557", %TName_Bool** %"$BoolUtils.orb_16", align 8, !dbg !57
  %"$$BoolUtils.orb_16_558" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_16", align 8
  store %TName_Bool* %"$$BoolUtils.orb_16_558", %TName_Bool** %b11, align 8, !dbg !57
  %"$gasrem_559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_560" = icmp ugt i64 1, %"$gasrem_559"
  br i1 %"$gascmp_560", label %"$out_of_gas_561", label %"$have_gas_562"

"$out_of_gas_561":                                ; preds = %"$have_gas_546"
  call void @_out_of_gas()
  br label %"$have_gas_562"

"$have_gas_562":                                  ; preds = %"$out_of_gas_561", %"$have_gas_546"
  %"$consume_563" = sub i64 %"$gasrem_559", 1
  store i64 %"$consume_563", i64* @_gasrem, align 8
  %s1 = alloca %String, align 8
  %"$gasrem_564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_565" = icmp ugt i64 1, %"$gasrem_564"
  br i1 %"$gascmp_565", label %"$out_of_gas_566", label %"$have_gas_567"

"$out_of_gas_566":                                ; preds = %"$have_gas_562"
  call void @_out_of_gas()
  br label %"$have_gas_567"

"$have_gas_567":                                  ; preds = %"$out_of_gas_566", %"$have_gas_562"
  %"$consume_568" = sub i64 %"$gasrem_564", 1
  store i64 %"$consume_568", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_569", i32 0, i32 0), i32 5 }, %String* %s1, align 8, !dbg !58
  %"$gasrem_570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_571" = icmp ugt i64 1, %"$gasrem_570"
  br i1 %"$gascmp_571", label %"$out_of_gas_572", label %"$have_gas_573"

"$out_of_gas_572":                                ; preds = %"$have_gas_567"
  call void @_out_of_gas()
  br label %"$have_gas_573"

"$have_gas_573":                                  ; preds = %"$out_of_gas_572", %"$have_gas_567"
  %"$consume_574" = sub i64 %"$gasrem_570", 1
  store i64 %"$consume_574", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  %"$gasrem_575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_576" = icmp ugt i64 1, %"$gasrem_575"
  br i1 %"$gascmp_576", label %"$out_of_gas_577", label %"$have_gas_578"

"$out_of_gas_577":                                ; preds = %"$have_gas_573"
  call void @_out_of_gas()
  br label %"$have_gas_578"

"$have_gas_578":                                  ; preds = %"$out_of_gas_577", %"$have_gas_573"
  %"$consume_579" = sub i64 %"$gasrem_575", 1
  store i64 %"$consume_579", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_580", i32 0, i32 0), i32 5 }, %String* %s2, align 8, !dbg !59
  %"$gasrem_581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_582" = icmp ugt i64 1, %"$gasrem_581"
  br i1 %"$gascmp_582", label %"$out_of_gas_583", label %"$have_gas_584"

"$out_of_gas_583":                                ; preds = %"$have_gas_578"
  call void @_out_of_gas()
  br label %"$have_gas_584"

"$have_gas_584":                                  ; preds = %"$out_of_gas_583", %"$have_gas_578"
  %"$consume_585" = sub i64 %"$gasrem_581", 1
  store i64 %"$consume_585", i64* @_gasrem, align 8
  %s11 = alloca %String, align 8
  %"$gasrem_586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_587" = icmp ugt i64 1, %"$gasrem_586"
  br i1 %"$gascmp_587", label %"$out_of_gas_588", label %"$have_gas_589"

"$out_of_gas_588":                                ; preds = %"$have_gas_584"
  call void @_out_of_gas()
  br label %"$have_gas_589"

"$have_gas_589":                                  ; preds = %"$out_of_gas_588", %"$have_gas_584"
  %"$consume_590" = sub i64 %"$gasrem_586", 1
  store i64 %"$consume_590", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_591", i32 0, i32 0), i32 5 }, %String* %s11, align 8, !dbg !60
  %"$gasrem_592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_593" = icmp ugt i64 1, %"$gasrem_592"
  br i1 %"$gascmp_593", label %"$out_of_gas_594", label %"$have_gas_595"

"$out_of_gas_594":                                ; preds = %"$have_gas_589"
  call void @_out_of_gas()
  br label %"$have_gas_595"

"$have_gas_595":                                  ; preds = %"$out_of_gas_594", %"$have_gas_589"
  %"$consume_596" = sub i64 %"$gasrem_592", 1
  store i64 %"$consume_596", i64* @_gasrem, align 8
  %b12 = alloca %TName_Bool*, align 8
  %"$_literal_cost_s1_597" = alloca %String, align 8
  %"$s1_598" = load %String, %String* %s1, align 8
  store %String %"$s1_598", %String* %"$_literal_cost_s1_597", align 8
  %"$$_literal_cost_s1_597_599" = bitcast %String* %"$_literal_cost_s1_597" to i8*
  %"$_literal_cost_call_600" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_65", i8* %"$$_literal_cost_s1_597_599")
  %"$_literal_cost_s2_601" = alloca %String, align 8
  %"$s2_602" = load %String, %String* %s2, align 8
  store %String %"$s2_602", %String* %"$_literal_cost_s2_601", align 8
  %"$$_literal_cost_s2_601_603" = bitcast %String* %"$_literal_cost_s2_601" to i8*
  %"$_literal_cost_call_604" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_65", i8* %"$$_literal_cost_s2_601_603")
  %"$gasmin_605" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_600", i64 %"$_literal_cost_call_604")
  %"$gasrem_606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_607" = icmp ugt i64 %"$gasmin_605", %"$gasrem_606"
  br i1 %"$gascmp_607", label %"$out_of_gas_608", label %"$have_gas_609"

"$out_of_gas_608":                                ; preds = %"$have_gas_595"
  call void @_out_of_gas()
  br label %"$have_gas_609"

"$have_gas_609":                                  ; preds = %"$out_of_gas_608", %"$have_gas_595"
  %"$consume_610" = sub i64 %"$gasrem_606", %"$gasmin_605"
  store i64 %"$consume_610", i64* @_gasrem, align 8
  %"$execptr_load_611" = load i8*, i8** @_execptr, align 8
  %"$s1_612" = load %String, %String* %s1, align 8
  %"$s2_613" = load %String, %String* %s2, align 8
  %"$eq_call_614" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_611", %String %"$s1_612", %String %"$s2_613"), !dbg !61
  store %TName_Bool* %"$eq_call_614", %TName_Bool** %b12, align 8, !dbg !61
  %"$gasrem_616" = load i64, i64* @_gasrem, align 8
  %"$gascmp_617" = icmp ugt i64 1, %"$gasrem_616"
  br i1 %"$gascmp_617", label %"$out_of_gas_618", label %"$have_gas_619"

"$out_of_gas_618":                                ; preds = %"$have_gas_609"
  call void @_out_of_gas()
  br label %"$have_gas_619"

"$have_gas_619":                                  ; preds = %"$out_of_gas_618", %"$have_gas_609"
  %"$consume_620" = sub i64 %"$gasrem_616", 1
  store i64 %"$consume_620", i64* @_gasrem, align 8
  %b13 = alloca %TName_Bool*, align 8
  %"$_literal_cost_s1_621" = alloca %String, align 8
  %"$s1_622" = load %String, %String* %s1, align 8
  store %String %"$s1_622", %String* %"$_literal_cost_s1_621", align 8
  %"$$_literal_cost_s1_621_623" = bitcast %String* %"$_literal_cost_s1_621" to i8*
  %"$_literal_cost_call_624" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_65", i8* %"$$_literal_cost_s1_621_623")
  %"$_literal_cost_s11_625" = alloca %String, align 8
  %"$s11_626" = load %String, %String* %s11, align 8
  store %String %"$s11_626", %String* %"$_literal_cost_s11_625", align 8
  %"$$_literal_cost_s11_625_627" = bitcast %String* %"$_literal_cost_s11_625" to i8*
  %"$_literal_cost_call_628" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_65", i8* %"$$_literal_cost_s11_625_627")
  %"$gasmin_629" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_624", i64 %"$_literal_cost_call_628")
  %"$gasrem_630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_631" = icmp ugt i64 %"$gasmin_629", %"$gasrem_630"
  br i1 %"$gascmp_631", label %"$out_of_gas_632", label %"$have_gas_633"

"$out_of_gas_632":                                ; preds = %"$have_gas_619"
  call void @_out_of_gas()
  br label %"$have_gas_633"

"$have_gas_633":                                  ; preds = %"$out_of_gas_632", %"$have_gas_619"
  %"$consume_634" = sub i64 %"$gasrem_630", %"$gasmin_629"
  store i64 %"$consume_634", i64* @_gasrem, align 8
  %"$execptr_load_635" = load i8*, i8** @_execptr, align 8
  %"$s1_636" = load %String, %String* %s1, align 8
  %"$s11_637" = load %String, %String* %s11, align 8
  %"$eq_call_638" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_635", %String %"$s1_636", %String %"$s11_637"), !dbg !62
  store %TName_Bool* %"$eq_call_638", %TName_Bool** %b13, align 8, !dbg !62
  %"$gasrem_640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_641" = icmp ugt i64 1, %"$gasrem_640"
  br i1 %"$gascmp_641", label %"$out_of_gas_642", label %"$have_gas_643"

"$out_of_gas_642":                                ; preds = %"$have_gas_633"
  call void @_out_of_gas()
  br label %"$have_gas_643"

"$have_gas_643":                                  ; preds = %"$out_of_gas_642", %"$have_gas_633"
  %"$consume_644" = sub i64 %"$gasrem_640", 1
  store i64 %"$consume_644", i64* @_gasrem, align 8
  %b14 = alloca %TName_Bool*, align 8
  %"$gasrem_645" = load i64, i64* @_gasrem, align 8
  %"$gascmp_646" = icmp ugt i64 1, %"$gasrem_645"
  br i1 %"$gascmp_646", label %"$out_of_gas_647", label %"$have_gas_648"

"$out_of_gas_647":                                ; preds = %"$have_gas_643"
  call void @_out_of_gas()
  br label %"$have_gas_648"

"$have_gas_648":                                  ; preds = %"$out_of_gas_647", %"$have_gas_643"
  %"$consume_649" = sub i64 %"$gasrem_645", 1
  store i64 %"$consume_649", i64* @_gasrem, align 8
  %"$BoolUtils.andb_17" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_650" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_651" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_650", 0
  %"$BoolUtils.andb_envptr_652" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_650", 1
  %"$b9_653" = load %TName_Bool*, %TName_Bool** %b9, align 8
  %"$BoolUtils.andb_call_654" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_651"(i8* %"$BoolUtils.andb_envptr_652", %TName_Bool* %"$b9_653"), !dbg !63
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_654", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_17", align 8, !dbg !63
  %"$BoolUtils.andb_18" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_17_655" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_17", align 8
  %"$$BoolUtils.andb_17_fptr_656" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_17_655", 0
  %"$$BoolUtils.andb_17_envptr_657" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_17_655", 1
  %"$b12_658" = load %TName_Bool*, %TName_Bool** %b12, align 8
  %"$$BoolUtils.andb_17_call_659" = call %TName_Bool* %"$$BoolUtils.andb_17_fptr_656"(i8* %"$$BoolUtils.andb_17_envptr_657", %TName_Bool* %"$b12_658"), !dbg !63
  store %TName_Bool* %"$$BoolUtils.andb_17_call_659", %TName_Bool** %"$BoolUtils.andb_18", align 8, !dbg !63
  %"$$BoolUtils.andb_18_660" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_18", align 8
  store %TName_Bool* %"$$BoolUtils.andb_18_660", %TName_Bool** %b14, align 8, !dbg !63
  %"$gasrem_661" = load i64, i64* @_gasrem, align 8
  %"$gascmp_662" = icmp ugt i64 1, %"$gasrem_661"
  br i1 %"$gascmp_662", label %"$out_of_gas_663", label %"$have_gas_664"

"$out_of_gas_663":                                ; preds = %"$have_gas_648"
  call void @_out_of_gas()
  br label %"$have_gas_664"

"$have_gas_664":                                  ; preds = %"$out_of_gas_663", %"$have_gas_648"
  %"$consume_665" = sub i64 %"$gasrem_661", 1
  store i64 %"$consume_665", i64* @_gasrem, align 8
  %b15 = alloca %TName_Bool*, align 8
  %"$gasrem_666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_667" = icmp ugt i64 1, %"$gasrem_666"
  br i1 %"$gascmp_667", label %"$out_of_gas_668", label %"$have_gas_669"

"$out_of_gas_668":                                ; preds = %"$have_gas_664"
  call void @_out_of_gas()
  br label %"$have_gas_669"

"$have_gas_669":                                  ; preds = %"$out_of_gas_668", %"$have_gas_664"
  %"$consume_670" = sub i64 %"$gasrem_666", 1
  store i64 %"$consume_670", i64* @_gasrem, align 8
  %"$BoolUtils.orb_19" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_671" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_672" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_671", 0
  %"$BoolUtils.orb_envptr_673" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_671", 1
  %"$b13_674" = load %TName_Bool*, %TName_Bool** %b13, align 8
  %"$BoolUtils.orb_call_675" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_672"(i8* %"$BoolUtils.orb_envptr_673", %TName_Bool* %"$b13_674"), !dbg !64
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_675", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_19", align 8, !dbg !64
  %"$BoolUtils.orb_20" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_19_676" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_19", align 8
  %"$$BoolUtils.orb_19_fptr_677" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_19_676", 0
  %"$$BoolUtils.orb_19_envptr_678" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_19_676", 1
  %"$b14_679" = load %TName_Bool*, %TName_Bool** %b14, align 8
  %"$$BoolUtils.orb_19_call_680" = call %TName_Bool* %"$$BoolUtils.orb_19_fptr_677"(i8* %"$$BoolUtils.orb_19_envptr_678", %TName_Bool* %"$b14_679"), !dbg !64
  store %TName_Bool* %"$$BoolUtils.orb_19_call_680", %TName_Bool** %"$BoolUtils.orb_20", align 8, !dbg !64
  %"$$BoolUtils.orb_20_681" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_20", align 8
  store %TName_Bool* %"$$BoolUtils.orb_20_681", %TName_Bool** %b15, align 8, !dbg !64
  %"$gasrem_682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_683" = icmp ugt i64 1, %"$gasrem_682"
  br i1 %"$gascmp_683", label %"$out_of_gas_684", label %"$have_gas_685"

"$out_of_gas_684":                                ; preds = %"$have_gas_669"
  call void @_out_of_gas()
  br label %"$have_gas_685"

"$have_gas_685":                                  ; preds = %"$out_of_gas_684", %"$have_gas_669"
  %"$consume_686" = sub i64 %"$gasrem_682", 1
  store i64 %"$consume_686", i64* @_gasrem, align 8
  %bs1 = alloca [2 x i8], align 1
  %"$gasrem_687" = load i64, i64* @_gasrem, align 8
  %"$gascmp_688" = icmp ugt i64 1, %"$gasrem_687"
  br i1 %"$gascmp_688", label %"$out_of_gas_689", label %"$have_gas_690"

"$out_of_gas_689":                                ; preds = %"$have_gas_685"
  call void @_out_of_gas()
  br label %"$have_gas_690"

"$have_gas_690":                                  ; preds = %"$out_of_gas_689", %"$have_gas_685"
  %"$consume_691" = sub i64 %"$gasrem_687", 1
  store i64 %"$consume_691", i64* @_gasrem, align 8
  store [2 x i8] c"\00\FF", [2 x i8]* %bs1, align 1, !dbg !65
  %"$gasrem_692" = load i64, i64* @_gasrem, align 8
  %"$gascmp_693" = icmp ugt i64 1, %"$gasrem_692"
  br i1 %"$gascmp_693", label %"$out_of_gas_694", label %"$have_gas_695"

"$out_of_gas_694":                                ; preds = %"$have_gas_690"
  call void @_out_of_gas()
  br label %"$have_gas_695"

"$have_gas_695":                                  ; preds = %"$out_of_gas_694", %"$have_gas_690"
  %"$consume_696" = sub i64 %"$gasrem_692", 1
  store i64 %"$consume_696", i64* @_gasrem, align 8
  %bs2 = alloca [2 x i8], align 1
  %"$gasrem_697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_698" = icmp ugt i64 1, %"$gasrem_697"
  br i1 %"$gascmp_698", label %"$out_of_gas_699", label %"$have_gas_700"

"$out_of_gas_699":                                ; preds = %"$have_gas_695"
  call void @_out_of_gas()
  br label %"$have_gas_700"

"$have_gas_700":                                  ; preds = %"$out_of_gas_699", %"$have_gas_695"
  %"$consume_701" = sub i64 %"$gasrem_697", 1
  store i64 %"$consume_701", i64* @_gasrem, align 8
  store [2 x i8] c"\FF\00", [2 x i8]* %bs2, align 1, !dbg !66
  %"$gasrem_702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_703" = icmp ugt i64 1, %"$gasrem_702"
  br i1 %"$gascmp_703", label %"$out_of_gas_704", label %"$have_gas_705"

"$out_of_gas_704":                                ; preds = %"$have_gas_700"
  call void @_out_of_gas()
  br label %"$have_gas_705"

"$have_gas_705":                                  ; preds = %"$out_of_gas_704", %"$have_gas_700"
  %"$consume_706" = sub i64 %"$gasrem_702", 1
  store i64 %"$consume_706", i64* @_gasrem, align 8
  %bs11 = alloca [2 x i8], align 1
  %"$gasrem_707" = load i64, i64* @_gasrem, align 8
  %"$gascmp_708" = icmp ugt i64 1, %"$gasrem_707"
  br i1 %"$gascmp_708", label %"$out_of_gas_709", label %"$have_gas_710"

"$out_of_gas_709":                                ; preds = %"$have_gas_705"
  call void @_out_of_gas()
  br label %"$have_gas_710"

"$have_gas_710":                                  ; preds = %"$out_of_gas_709", %"$have_gas_705"
  %"$consume_711" = sub i64 %"$gasrem_707", 1
  store i64 %"$consume_711", i64* @_gasrem, align 8
  store [2 x i8] c"\00\FF", [2 x i8]* %bs11, align 1, !dbg !67
  %"$gasrem_712" = load i64, i64* @_gasrem, align 8
  %"$gascmp_713" = icmp ugt i64 1, %"$gasrem_712"
  br i1 %"$gascmp_713", label %"$out_of_gas_714", label %"$have_gas_715"

"$out_of_gas_714":                                ; preds = %"$have_gas_710"
  call void @_out_of_gas()
  br label %"$have_gas_715"

"$have_gas_715":                                  ; preds = %"$out_of_gas_714", %"$have_gas_710"
  %"$consume_716" = sub i64 %"$gasrem_712", 1
  store i64 %"$consume_716", i64* @_gasrem, align 8
  %b16 = alloca %TName_Bool*, align 8
  %"$gasrem_717" = load i64, i64* @_gasrem, align 8
  %"$gascmp_718" = icmp ugt i64 2, %"$gasrem_717"
  br i1 %"$gascmp_718", label %"$out_of_gas_719", label %"$have_gas_720"

"$out_of_gas_719":                                ; preds = %"$have_gas_715"
  call void @_out_of_gas()
  br label %"$have_gas_720"

"$have_gas_720":                                  ; preds = %"$out_of_gas_719", %"$have_gas_715"
  %"$consume_721" = sub i64 %"$gasrem_717", 2
  store i64 %"$consume_721", i64* @_gasrem, align 8
  %"$execptr_load_722" = load i8*, i8** @_execptr, align 8
  %"$eq_bs1_723" = alloca [2 x i8], align 1
  %"$bs1_724" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_724", [2 x i8]* %"$eq_bs1_723", align 1
  %"$$eq_bs1_723_725" = bitcast [2 x i8]* %"$eq_bs1_723" to i8*
  %"$eq_bs2_726" = alloca [2 x i8], align 1
  %"$bs2_727" = load [2 x i8], [2 x i8]* %bs2, align 1
  store [2 x i8] %"$bs2_727", [2 x i8]* %"$eq_bs2_726", align 1
  %"$$eq_bs2_726_728" = bitcast [2 x i8]* %"$eq_bs2_726" to i8*
  %"$eq_call_729" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_722", i32 2, i8* %"$$eq_bs1_723_725", i8* %"$$eq_bs2_726_728"), !dbg !68
  store %TName_Bool* %"$eq_call_729", %TName_Bool** %b16, align 8, !dbg !68
  %"$gasrem_731" = load i64, i64* @_gasrem, align 8
  %"$gascmp_732" = icmp ugt i64 1, %"$gasrem_731"
  br i1 %"$gascmp_732", label %"$out_of_gas_733", label %"$have_gas_734"

"$out_of_gas_733":                                ; preds = %"$have_gas_720"
  call void @_out_of_gas()
  br label %"$have_gas_734"

"$have_gas_734":                                  ; preds = %"$out_of_gas_733", %"$have_gas_720"
  %"$consume_735" = sub i64 %"$gasrem_731", 1
  store i64 %"$consume_735", i64* @_gasrem, align 8
  %b17 = alloca %TName_Bool*, align 8
  %"$gasrem_736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_737" = icmp ugt i64 2, %"$gasrem_736"
  br i1 %"$gascmp_737", label %"$out_of_gas_738", label %"$have_gas_739"

"$out_of_gas_738":                                ; preds = %"$have_gas_734"
  call void @_out_of_gas()
  br label %"$have_gas_739"

"$have_gas_739":                                  ; preds = %"$out_of_gas_738", %"$have_gas_734"
  %"$consume_740" = sub i64 %"$gasrem_736", 2
  store i64 %"$consume_740", i64* @_gasrem, align 8
  %"$execptr_load_741" = load i8*, i8** @_execptr, align 8
  %"$eq_bs1_742" = alloca [2 x i8], align 1
  %"$bs1_743" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_743", [2 x i8]* %"$eq_bs1_742", align 1
  %"$$eq_bs1_742_744" = bitcast [2 x i8]* %"$eq_bs1_742" to i8*
  %"$eq_bs11_745" = alloca [2 x i8], align 1
  %"$bs11_746" = load [2 x i8], [2 x i8]* %bs11, align 1
  store [2 x i8] %"$bs11_746", [2 x i8]* %"$eq_bs11_745", align 1
  %"$$eq_bs11_745_747" = bitcast [2 x i8]* %"$eq_bs11_745" to i8*
  %"$eq_call_748" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_741", i32 2, i8* %"$$eq_bs1_742_744", i8* %"$$eq_bs11_745_747"), !dbg !69
  store %TName_Bool* %"$eq_call_748", %TName_Bool** %b17, align 8, !dbg !69
  %"$gasrem_750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_751" = icmp ugt i64 1, %"$gasrem_750"
  br i1 %"$gascmp_751", label %"$out_of_gas_752", label %"$have_gas_753"

"$out_of_gas_752":                                ; preds = %"$have_gas_739"
  call void @_out_of_gas()
  br label %"$have_gas_753"

"$have_gas_753":                                  ; preds = %"$out_of_gas_752", %"$have_gas_739"
  %"$consume_754" = sub i64 %"$gasrem_750", 1
  store i64 %"$consume_754", i64* @_gasrem, align 8
  %b18 = alloca %TName_Bool*, align 8
  %"$gasrem_755" = load i64, i64* @_gasrem, align 8
  %"$gascmp_756" = icmp ugt i64 1, %"$gasrem_755"
  br i1 %"$gascmp_756", label %"$out_of_gas_757", label %"$have_gas_758"

"$out_of_gas_757":                                ; preds = %"$have_gas_753"
  call void @_out_of_gas()
  br label %"$have_gas_758"

"$have_gas_758":                                  ; preds = %"$out_of_gas_757", %"$have_gas_753"
  %"$consume_759" = sub i64 %"$gasrem_755", 1
  store i64 %"$consume_759", i64* @_gasrem, align 8
  %"$BoolUtils.orb_21" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_760" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_761" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_760", 0
  %"$BoolUtils.orb_envptr_762" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_760", 1
  %"$b16_763" = load %TName_Bool*, %TName_Bool** %b16, align 8
  %"$BoolUtils.orb_call_764" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_761"(i8* %"$BoolUtils.orb_envptr_762", %TName_Bool* %"$b16_763"), !dbg !70
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_764", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_21", align 8, !dbg !70
  %"$BoolUtils.orb_22" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_21_765" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_21", align 8
  %"$$BoolUtils.orb_21_fptr_766" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_21_765", 0
  %"$$BoolUtils.orb_21_envptr_767" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_21_765", 1
  %"$b17_768" = load %TName_Bool*, %TName_Bool** %b17, align 8
  %"$$BoolUtils.orb_21_call_769" = call %TName_Bool* %"$$BoolUtils.orb_21_fptr_766"(i8* %"$$BoolUtils.orb_21_envptr_767", %TName_Bool* %"$b17_768"), !dbg !70
  store %TName_Bool* %"$$BoolUtils.orb_21_call_769", %TName_Bool** %"$BoolUtils.orb_22", align 8, !dbg !70
  %"$$BoolUtils.orb_22_770" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_22", align 8
  store %TName_Bool* %"$$BoolUtils.orb_22_770", %TName_Bool** %b18, align 8, !dbg !70
  %"$gasrem_771" = load i64, i64* @_gasrem, align 8
  %"$gascmp_772" = icmp ugt i64 1, %"$gasrem_771"
  br i1 %"$gascmp_772", label %"$out_of_gas_773", label %"$have_gas_774"

"$out_of_gas_773":                                ; preds = %"$have_gas_758"
  call void @_out_of_gas()
  br label %"$have_gas_774"

"$have_gas_774":                                  ; preds = %"$out_of_gas_773", %"$have_gas_758"
  %"$consume_775" = sub i64 %"$gasrem_771", 1
  store i64 %"$consume_775", i64* @_gasrem, align 8
  %b19 = alloca %TName_Bool*, align 8
  %"$gasrem_776" = load i64, i64* @_gasrem, align 8
  %"$gascmp_777" = icmp ugt i64 1, %"$gasrem_776"
  br i1 %"$gascmp_777", label %"$out_of_gas_778", label %"$have_gas_779"

"$out_of_gas_778":                                ; preds = %"$have_gas_774"
  call void @_out_of_gas()
  br label %"$have_gas_779"

"$have_gas_779":                                  ; preds = %"$out_of_gas_778", %"$have_gas_774"
  %"$consume_780" = sub i64 %"$gasrem_776", 1
  store i64 %"$consume_780", i64* @_gasrem, align 8
  %"$BoolUtils.andb_23" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_781" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_782" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_781", 0
  %"$BoolUtils.andb_envptr_783" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_781", 1
  %"$b18_784" = load %TName_Bool*, %TName_Bool** %b18, align 8
  %"$BoolUtils.andb_call_785" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_782"(i8* %"$BoolUtils.andb_envptr_783", %TName_Bool* %"$b18_784"), !dbg !71
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_785", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_23", align 8, !dbg !71
  %"$BoolUtils.andb_24" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_23_786" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_23", align 8
  %"$$BoolUtils.andb_23_fptr_787" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_23_786", 0
  %"$$BoolUtils.andb_23_envptr_788" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_23_786", 1
  %"$b15_789" = load %TName_Bool*, %TName_Bool** %b15, align 8
  %"$$BoolUtils.andb_23_call_790" = call %TName_Bool* %"$$BoolUtils.andb_23_fptr_787"(i8* %"$$BoolUtils.andb_23_envptr_788", %TName_Bool* %"$b15_789"), !dbg !71
  store %TName_Bool* %"$$BoolUtils.andb_23_call_790", %TName_Bool** %"$BoolUtils.andb_24", align 8, !dbg !71
  %"$$BoolUtils.andb_24_791" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_24", align 8
  store %TName_Bool* %"$$BoolUtils.andb_24_791", %TName_Bool** %b19, align 8, !dbg !71
  %"$gasrem_792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_793" = icmp ugt i64 1, %"$gasrem_792"
  br i1 %"$gascmp_793", label %"$out_of_gas_794", label %"$have_gas_795"

"$out_of_gas_794":                                ; preds = %"$have_gas_779"
  call void @_out_of_gas()
  br label %"$have_gas_795"

"$have_gas_795":                                  ; preds = %"$out_of_gas_794", %"$have_gas_779"
  %"$consume_796" = sub i64 %"$gasrem_792", 1
  store i64 %"$consume_796", i64* @_gasrem, align 8
  %bs3 = alloca [3 x i8], align 1
  %"$gasrem_797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_798" = icmp ugt i64 1, %"$gasrem_797"
  br i1 %"$gascmp_798", label %"$out_of_gas_799", label %"$have_gas_800"

"$out_of_gas_799":                                ; preds = %"$have_gas_795"
  call void @_out_of_gas()
  br label %"$have_gas_800"

"$have_gas_800":                                  ; preds = %"$out_of_gas_799", %"$have_gas_795"
  %"$consume_801" = sub i64 %"$gasrem_797", 1
  store i64 %"$consume_801", i64* @_gasrem, align 8
  store [3 x i8] c"\0F\0F\0F", [3 x i8]* %bs3, align 1, !dbg !72
  %"$gasrem_802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_803" = icmp ugt i64 1, %"$gasrem_802"
  br i1 %"$gascmp_803", label %"$out_of_gas_804", label %"$have_gas_805"

"$out_of_gas_804":                                ; preds = %"$have_gas_800"
  call void @_out_of_gas()
  br label %"$have_gas_805"

"$have_gas_805":                                  ; preds = %"$out_of_gas_804", %"$have_gas_800"
  %"$consume_806" = sub i64 %"$gasrem_802", 1
  store i64 %"$consume_806", i64* @_gasrem, align 8
  %bs4 = alloca [3 x i8], align 1
  %"$gasrem_807" = load i64, i64* @_gasrem, align 8
  %"$gascmp_808" = icmp ugt i64 1, %"$gasrem_807"
  br i1 %"$gascmp_808", label %"$out_of_gas_809", label %"$have_gas_810"

"$out_of_gas_809":                                ; preds = %"$have_gas_805"
  call void @_out_of_gas()
  br label %"$have_gas_810"

"$have_gas_810":                                  ; preds = %"$out_of_gas_809", %"$have_gas_805"
  %"$consume_811" = sub i64 %"$gasrem_807", 1
  store i64 %"$consume_811", i64* @_gasrem, align 8
  store [3 x i8] c"\0F\0F\0E", [3 x i8]* %bs4, align 1, !dbg !73
  %"$gasrem_812" = load i64, i64* @_gasrem, align 8
  %"$gascmp_813" = icmp ugt i64 1, %"$gasrem_812"
  br i1 %"$gascmp_813", label %"$out_of_gas_814", label %"$have_gas_815"

"$out_of_gas_814":                                ; preds = %"$have_gas_810"
  call void @_out_of_gas()
  br label %"$have_gas_815"

"$have_gas_815":                                  ; preds = %"$out_of_gas_814", %"$have_gas_810"
  %"$consume_816" = sub i64 %"$gasrem_812", 1
  store i64 %"$consume_816", i64* @_gasrem, align 8
  %b20 = alloca %TName_Bool*, align 8
  %"$gasrem_817" = load i64, i64* @_gasrem, align 8
  %"$gascmp_818" = icmp ugt i64 3, %"$gasrem_817"
  br i1 %"$gascmp_818", label %"$out_of_gas_819", label %"$have_gas_820"

"$out_of_gas_819":                                ; preds = %"$have_gas_815"
  call void @_out_of_gas()
  br label %"$have_gas_820"

"$have_gas_820":                                  ; preds = %"$out_of_gas_819", %"$have_gas_815"
  %"$consume_821" = sub i64 %"$gasrem_817", 3
  store i64 %"$consume_821", i64* @_gasrem, align 8
  %"$execptr_load_822" = load i8*, i8** @_execptr, align 8
  %"$eq_bs3_823" = alloca [3 x i8], align 1
  %"$bs3_824" = load [3 x i8], [3 x i8]* %bs3, align 1
  store [3 x i8] %"$bs3_824", [3 x i8]* %"$eq_bs3_823", align 1
  %"$$eq_bs3_823_825" = bitcast [3 x i8]* %"$eq_bs3_823" to i8*
  %"$eq_bs4_826" = alloca [3 x i8], align 1
  %"$bs4_827" = load [3 x i8], [3 x i8]* %bs4, align 1
  store [3 x i8] %"$bs4_827", [3 x i8]* %"$eq_bs4_826", align 1
  %"$$eq_bs4_826_828" = bitcast [3 x i8]* %"$eq_bs4_826" to i8*
  %"$eq_call_829" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_822", i32 3, i8* %"$$eq_bs3_823_825", i8* %"$$eq_bs4_826_828"), !dbg !74
  store %TName_Bool* %"$eq_call_829", %TName_Bool** %b20, align 8, !dbg !74
  %"$gasrem_831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_832" = icmp ugt i64 1, %"$gasrem_831"
  br i1 %"$gascmp_832", label %"$out_of_gas_833", label %"$have_gas_834"

"$out_of_gas_833":                                ; preds = %"$have_gas_820"
  call void @_out_of_gas()
  br label %"$have_gas_834"

"$have_gas_834":                                  ; preds = %"$out_of_gas_833", %"$have_gas_820"
  %"$consume_835" = sub i64 %"$gasrem_831", 1
  store i64 %"$consume_835", i64* @_gasrem, align 8
  %b21 = alloca %TName_Bool*, align 8
  %"$gasrem_836" = load i64, i64* @_gasrem, align 8
  %"$gascmp_837" = icmp ugt i64 1, %"$gasrem_836"
  br i1 %"$gascmp_837", label %"$out_of_gas_838", label %"$have_gas_839"

"$out_of_gas_838":                                ; preds = %"$have_gas_834"
  call void @_out_of_gas()
  br label %"$have_gas_839"

"$have_gas_839":                                  ; preds = %"$out_of_gas_838", %"$have_gas_834"
  %"$consume_840" = sub i64 %"$gasrem_836", 1
  store i64 %"$consume_840", i64* @_gasrem, align 8
  %"$BoolUtils.negb_25" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_841" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_842" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_841", 0
  %"$BoolUtils.negb_envptr_843" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_841", 1
  %"$b20_844" = load %TName_Bool*, %TName_Bool** %b20, align 8
  %"$BoolUtils.negb_call_845" = call %TName_Bool* %"$BoolUtils.negb_fptr_842"(i8* %"$BoolUtils.negb_envptr_843", %TName_Bool* %"$b20_844"), !dbg !75
  store %TName_Bool* %"$BoolUtils.negb_call_845", %TName_Bool** %"$BoolUtils.negb_25", align 8, !dbg !75
  %"$$BoolUtils.negb_25_846" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_25", align 8
  store %TName_Bool* %"$$BoolUtils.negb_25_846", %TName_Bool** %b21, align 8, !dbg !75
  %"$gasrem_847" = load i64, i64* @_gasrem, align 8
  %"$gascmp_848" = icmp ugt i64 1, %"$gasrem_847"
  br i1 %"$gascmp_848", label %"$out_of_gas_849", label %"$have_gas_850"

"$out_of_gas_849":                                ; preds = %"$have_gas_839"
  call void @_out_of_gas()
  br label %"$have_gas_850"

"$have_gas_850":                                  ; preds = %"$out_of_gas_849", %"$have_gas_839"
  %"$consume_851" = sub i64 %"$gasrem_847", 1
  store i64 %"$consume_851", i64* @_gasrem, align 8
  %b22 = alloca %TName_Bool*, align 8
  %"$gasrem_852" = load i64, i64* @_gasrem, align 8
  %"$gascmp_853" = icmp ugt i64 1, %"$gasrem_852"
  br i1 %"$gascmp_853", label %"$out_of_gas_854", label %"$have_gas_855"

"$out_of_gas_854":                                ; preds = %"$have_gas_850"
  call void @_out_of_gas()
  br label %"$have_gas_855"

"$have_gas_855":                                  ; preds = %"$out_of_gas_854", %"$have_gas_850"
  %"$consume_856" = sub i64 %"$gasrem_852", 1
  store i64 %"$consume_856", i64* @_gasrem, align 8
  %"$BoolUtils.andb_26" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_857" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_858" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_857", 0
  %"$BoolUtils.andb_envptr_859" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_857", 1
  %"$b19_860" = load %TName_Bool*, %TName_Bool** %b19, align 8
  %"$BoolUtils.andb_call_861" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_858"(i8* %"$BoolUtils.andb_envptr_859", %TName_Bool* %"$b19_860"), !dbg !76
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_861", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_26", align 8, !dbg !76
  %"$BoolUtils.andb_27" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_26_862" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_26", align 8
  %"$$BoolUtils.andb_26_fptr_863" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_26_862", 0
  %"$$BoolUtils.andb_26_envptr_864" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_26_862", 1
  %"$b21_865" = load %TName_Bool*, %TName_Bool** %b21, align 8
  %"$$BoolUtils.andb_26_call_866" = call %TName_Bool* %"$$BoolUtils.andb_26_fptr_863"(i8* %"$$BoolUtils.andb_26_envptr_864", %TName_Bool* %"$b21_865"), !dbg !76
  store %TName_Bool* %"$$BoolUtils.andb_26_call_866", %TName_Bool** %"$BoolUtils.andb_27", align 8, !dbg !76
  %"$$BoolUtils.andb_27_867" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_27", align 8
  store %TName_Bool* %"$$BoolUtils.andb_27_867", %TName_Bool** %b22, align 8, !dbg !76
  %"$gasrem_868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_869" = icmp ugt i64 1, %"$gasrem_868"
  br i1 %"$gascmp_869", label %"$out_of_gas_870", label %"$have_gas_871"

"$out_of_gas_870":                                ; preds = %"$have_gas_855"
  call void @_out_of_gas()
  br label %"$have_gas_871"

"$have_gas_871":                                  ; preds = %"$out_of_gas_870", %"$have_gas_855"
  %"$consume_872" = sub i64 %"$gasrem_868", 1
  store i64 %"$consume_872", i64* @_gasrem, align 8
  %"$bs11_6" = alloca %Bystr, align 8
  %"$gasrem_873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_874" = icmp ugt i64 2, %"$gasrem_873"
  br i1 %"$gascmp_874", label %"$out_of_gas_875", label %"$have_gas_876"

"$out_of_gas_875":                                ; preds = %"$have_gas_871"
  call void @_out_of_gas()
  br label %"$have_gas_876"

"$have_gas_876":                                  ; preds = %"$out_of_gas_875", %"$have_gas_871"
  %"$consume_877" = sub i64 %"$gasrem_873", 2
  store i64 %"$consume_877", i64* @_gasrem, align 8
  %"$execptr_load_878" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bs1_879" = alloca [2 x i8], align 1
  %"$bs1_880" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_880", [2 x i8]* %"$to_bystr_bs1_879", align 1
  %"$$to_bystr_bs1_879_881" = bitcast [2 x i8]* %"$to_bystr_bs1_879" to i8*
  %"$to_bystr_call_882" = call %Bystr @_to_bystr(i8* %"$execptr_load_878", i32 2, i8* %"$$to_bystr_bs1_879_881"), !dbg !77
  store %Bystr %"$to_bystr_call_882", %Bystr* %"$bs11_6", align 8, !dbg !77
  %"$gasrem_883" = load i64, i64* @_gasrem, align 8
  %"$gascmp_884" = icmp ugt i64 1, %"$gasrem_883"
  br i1 %"$gascmp_884", label %"$out_of_gas_885", label %"$have_gas_886"

"$out_of_gas_885":                                ; preds = %"$have_gas_876"
  call void @_out_of_gas()
  br label %"$have_gas_886"

"$have_gas_886":                                  ; preds = %"$out_of_gas_885", %"$have_gas_876"
  %"$consume_887" = sub i64 %"$gasrem_883", 1
  store i64 %"$consume_887", i64* @_gasrem, align 8
  %bs22 = alloca %Bystr, align 8
  %"$gasrem_888" = load i64, i64* @_gasrem, align 8
  %"$gascmp_889" = icmp ugt i64 2, %"$gasrem_888"
  br i1 %"$gascmp_889", label %"$out_of_gas_890", label %"$have_gas_891"

"$out_of_gas_890":                                ; preds = %"$have_gas_886"
  call void @_out_of_gas()
  br label %"$have_gas_891"

"$have_gas_891":                                  ; preds = %"$out_of_gas_890", %"$have_gas_886"
  %"$consume_892" = sub i64 %"$gasrem_888", 2
  store i64 %"$consume_892", i64* @_gasrem, align 8
  %"$execptr_load_893" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bs2_894" = alloca [2 x i8], align 1
  %"$bs2_895" = load [2 x i8], [2 x i8]* %bs2, align 1
  store [2 x i8] %"$bs2_895", [2 x i8]* %"$to_bystr_bs2_894", align 1
  %"$$to_bystr_bs2_894_896" = bitcast [2 x i8]* %"$to_bystr_bs2_894" to i8*
  %"$to_bystr_call_897" = call %Bystr @_to_bystr(i8* %"$execptr_load_893", i32 2, i8* %"$$to_bystr_bs2_894_896"), !dbg !78
  store %Bystr %"$to_bystr_call_897", %Bystr* %bs22, align 8, !dbg !78
  %"$gasrem_898" = load i64, i64* @_gasrem, align 8
  %"$gascmp_899" = icmp ugt i64 1, %"$gasrem_898"
  br i1 %"$gascmp_899", label %"$out_of_gas_900", label %"$have_gas_901"

"$out_of_gas_900":                                ; preds = %"$have_gas_891"
  call void @_out_of_gas()
  br label %"$have_gas_901"

"$have_gas_901":                                  ; preds = %"$out_of_gas_900", %"$have_gas_891"
  %"$consume_902" = sub i64 %"$gasrem_898", 1
  store i64 %"$consume_902", i64* @_gasrem, align 8
  %b23 = alloca %TName_Bool*, align 8
  %"$_literal_cost_$bs11_6_903" = alloca %Bystr, align 8
  %"$$bs11_6_904" = load %Bystr, %Bystr* %"$bs11_6", align 8
  store %Bystr %"$$bs11_6_904", %Bystr* %"$_literal_cost_$bs11_6_903", align 8
  %"$$_literal_cost_$bs11_6_903_905" = bitcast %Bystr* %"$_literal_cost_$bs11_6_903" to i8*
  %"$_literal_cost_call_906" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_75", i8* %"$$_literal_cost_$bs11_6_903_905")
  %"$gasrem_907" = load i64, i64* @_gasrem, align 8
  %"$gascmp_908" = icmp ugt i64 %"$_literal_cost_call_906", %"$gasrem_907"
  br i1 %"$gascmp_908", label %"$out_of_gas_909", label %"$have_gas_910"

"$out_of_gas_909":                                ; preds = %"$have_gas_901"
  call void @_out_of_gas()
  br label %"$have_gas_910"

"$have_gas_910":                                  ; preds = %"$out_of_gas_909", %"$have_gas_901"
  %"$consume_911" = sub i64 %"$gasrem_907", %"$_literal_cost_call_906"
  store i64 %"$consume_911", i64* @_gasrem, align 8
  %"$execptr_load_912" = load i8*, i8** @_execptr, align 8
  %"$$bs11_6_913" = load %Bystr, %Bystr* %"$bs11_6", align 8
  %"$bs22_914" = load %Bystr, %Bystr* %bs22, align 8
  %"$eq_call_915" = call %TName_Bool* @_eq_ByStr(i8* %"$execptr_load_912", %Bystr %"$$bs11_6_913", %Bystr %"$bs22_914"), !dbg !79
  store %TName_Bool* %"$eq_call_915", %TName_Bool** %b23, align 8, !dbg !79
  %"$gasrem_917" = load i64, i64* @_gasrem, align 8
  %"$gascmp_918" = icmp ugt i64 1, %"$gasrem_917"
  br i1 %"$gascmp_918", label %"$out_of_gas_919", label %"$have_gas_920"

"$out_of_gas_919":                                ; preds = %"$have_gas_910"
  call void @_out_of_gas()
  br label %"$have_gas_920"

"$have_gas_920":                                  ; preds = %"$out_of_gas_919", %"$have_gas_910"
  %"$consume_921" = sub i64 %"$gasrem_917", 1
  store i64 %"$consume_921", i64* @_gasrem, align 8
  %b24 = alloca %TName_Bool*, align 8
  %"$gasrem_922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_923" = icmp ugt i64 1, %"$gasrem_922"
  br i1 %"$gascmp_923", label %"$out_of_gas_924", label %"$have_gas_925"

"$out_of_gas_924":                                ; preds = %"$have_gas_920"
  call void @_out_of_gas()
  br label %"$have_gas_925"

"$have_gas_925":                                  ; preds = %"$out_of_gas_924", %"$have_gas_920"
  %"$consume_926" = sub i64 %"$gasrem_922", 1
  store i64 %"$consume_926", i64* @_gasrem, align 8
  %"$BoolUtils.negb_28" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_927" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_928" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_927", 0
  %"$BoolUtils.negb_envptr_929" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_927", 1
  %"$b23_930" = load %TName_Bool*, %TName_Bool** %b23, align 8
  %"$BoolUtils.negb_call_931" = call %TName_Bool* %"$BoolUtils.negb_fptr_928"(i8* %"$BoolUtils.negb_envptr_929", %TName_Bool* %"$b23_930"), !dbg !80
  store %TName_Bool* %"$BoolUtils.negb_call_931", %TName_Bool** %"$BoolUtils.negb_28", align 8, !dbg !80
  %"$$BoolUtils.negb_28_932" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_28", align 8
  store %TName_Bool* %"$$BoolUtils.negb_28_932", %TName_Bool** %b24, align 8, !dbg !80
  %"$gasrem_933" = load i64, i64* @_gasrem, align 8
  %"$gascmp_934" = icmp ugt i64 1, %"$gasrem_933"
  br i1 %"$gascmp_934", label %"$out_of_gas_935", label %"$have_gas_936"

"$out_of_gas_935":                                ; preds = %"$have_gas_925"
  call void @_out_of_gas()
  br label %"$have_gas_936"

"$have_gas_936":                                  ; preds = %"$out_of_gas_935", %"$have_gas_925"
  %"$consume_937" = sub i64 %"$gasrem_933", 1
  store i64 %"$consume_937", i64* @_gasrem, align 8
  %b25 = alloca %TName_Bool*, align 8
  %"$gasrem_938" = load i64, i64* @_gasrem, align 8
  %"$gascmp_939" = icmp ugt i64 1, %"$gasrem_938"
  br i1 %"$gascmp_939", label %"$out_of_gas_940", label %"$have_gas_941"

"$out_of_gas_940":                                ; preds = %"$have_gas_936"
  call void @_out_of_gas()
  br label %"$have_gas_941"

"$have_gas_941":                                  ; preds = %"$out_of_gas_940", %"$have_gas_936"
  %"$consume_942" = sub i64 %"$gasrem_938", 1
  store i64 %"$consume_942", i64* @_gasrem, align 8
  %"$BoolUtils.andb_29" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_943" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_944" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_943", 0
  %"$BoolUtils.andb_envptr_945" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_943", 1
  %"$b22_946" = load %TName_Bool*, %TName_Bool** %b22, align 8
  %"$BoolUtils.andb_call_947" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_944"(i8* %"$BoolUtils.andb_envptr_945", %TName_Bool* %"$b22_946"), !dbg !81
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_947", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_29", align 8, !dbg !81
  %"$BoolUtils.andb_30" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_29_948" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_29", align 8
  %"$$BoolUtils.andb_29_fptr_949" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_29_948", 0
  %"$$BoolUtils.andb_29_envptr_950" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_29_948", 1
  %"$b24_951" = load %TName_Bool*, %TName_Bool** %b24, align 8
  %"$$BoolUtils.andb_29_call_952" = call %TName_Bool* %"$$BoolUtils.andb_29_fptr_949"(i8* %"$$BoolUtils.andb_29_envptr_950", %TName_Bool* %"$b24_951"), !dbg !81
  store %TName_Bool* %"$$BoolUtils.andb_29_call_952", %TName_Bool** %"$BoolUtils.andb_30", align 8, !dbg !81
  %"$$BoolUtils.andb_30_953" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_30", align 8
  store %TName_Bool* %"$$BoolUtils.andb_30_953", %TName_Bool** %b25, align 8, !dbg !81
  %"$gasrem_954" = load i64, i64* @_gasrem, align 8
  %"$gascmp_955" = icmp ugt i64 1, %"$gasrem_954"
  br i1 %"$gascmp_955", label %"$out_of_gas_956", label %"$have_gas_957"

"$out_of_gas_956":                                ; preds = %"$have_gas_941"
  call void @_out_of_gas()
  br label %"$have_gas_957"

"$have_gas_957":                                  ; preds = %"$out_of_gas_956", %"$have_gas_941"
  %"$consume_958" = sub i64 %"$gasrem_954", 1
  store i64 %"$consume_958", i64* @_gasrem, align 8
  %bn1 = alloca i8*, align 8
  %"$gasrem_959" = load i64, i64* @_gasrem, align 8
  %"$gascmp_960" = icmp ugt i64 1, %"$gasrem_959"
  br i1 %"$gascmp_960", label %"$out_of_gas_961", label %"$have_gas_962"

"$out_of_gas_961":                                ; preds = %"$have_gas_957"
  call void @_out_of_gas()
  br label %"$have_gas_962"

"$have_gas_962":                                  ; preds = %"$out_of_gas_961", %"$have_gas_957"
  %"$consume_963" = sub i64 %"$gasrem_959", 1
  store i64 %"$consume_963", i64* @_gasrem, align 8
  %"$execptr_load_965" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_966" = call i8* @_new_bnum(i8* %"$execptr_load_965", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_964", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_966", i8** %bn1, align 8, !dbg !82
  %"$gasrem_968" = load i64, i64* @_gasrem, align 8
  %"$gascmp_969" = icmp ugt i64 1, %"$gasrem_968"
  br i1 %"$gascmp_969", label %"$out_of_gas_970", label %"$have_gas_971"

"$out_of_gas_970":                                ; preds = %"$have_gas_962"
  call void @_out_of_gas()
  br label %"$have_gas_971"

"$have_gas_971":                                  ; preds = %"$out_of_gas_970", %"$have_gas_962"
  %"$consume_972" = sub i64 %"$gasrem_968", 1
  store i64 %"$consume_972", i64* @_gasrem, align 8
  %bn2 = alloca i8*, align 8
  %"$gasrem_973" = load i64, i64* @_gasrem, align 8
  %"$gascmp_974" = icmp ugt i64 1, %"$gasrem_973"
  br i1 %"$gascmp_974", label %"$out_of_gas_975", label %"$have_gas_976"

"$out_of_gas_975":                                ; preds = %"$have_gas_971"
  call void @_out_of_gas()
  br label %"$have_gas_976"

"$have_gas_976":                                  ; preds = %"$out_of_gas_975", %"$have_gas_971"
  %"$consume_977" = sub i64 %"$gasrem_973", 1
  store i64 %"$consume_977", i64* @_gasrem, align 8
  %"$execptr_load_979" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_980" = call i8* @_new_bnum(i8* %"$execptr_load_979", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_978", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_980", i8** %bn2, align 8, !dbg !83
  %"$gasrem_982" = load i64, i64* @_gasrem, align 8
  %"$gascmp_983" = icmp ugt i64 1, %"$gasrem_982"
  br i1 %"$gascmp_983", label %"$out_of_gas_984", label %"$have_gas_985"

"$out_of_gas_984":                                ; preds = %"$have_gas_976"
  call void @_out_of_gas()
  br label %"$have_gas_985"

"$have_gas_985":                                  ; preds = %"$out_of_gas_984", %"$have_gas_976"
  %"$consume_986" = sub i64 %"$gasrem_982", 1
  store i64 %"$consume_986", i64* @_gasrem, align 8
  %bn3 = alloca i8*, align 8
  %"$gasrem_987" = load i64, i64* @_gasrem, align 8
  %"$gascmp_988" = icmp ugt i64 1, %"$gasrem_987"
  br i1 %"$gascmp_988", label %"$out_of_gas_989", label %"$have_gas_990"

"$out_of_gas_989":                                ; preds = %"$have_gas_985"
  call void @_out_of_gas()
  br label %"$have_gas_990"

"$have_gas_990":                                  ; preds = %"$out_of_gas_989", %"$have_gas_985"
  %"$consume_991" = sub i64 %"$gasrem_987", 1
  store i64 %"$consume_991", i64* @_gasrem, align 8
  %"$execptr_load_993" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_994" = call i8* @_new_bnum(i8* %"$execptr_load_993", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_992", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_994", i8** %bn3, align 8, !dbg !84
  %"$gasrem_996" = load i64, i64* @_gasrem, align 8
  %"$gascmp_997" = icmp ugt i64 1, %"$gasrem_996"
  br i1 %"$gascmp_997", label %"$out_of_gas_998", label %"$have_gas_999"

"$out_of_gas_998":                                ; preds = %"$have_gas_990"
  call void @_out_of_gas()
  br label %"$have_gas_999"

"$have_gas_999":                                  ; preds = %"$out_of_gas_998", %"$have_gas_990"
  %"$consume_1000" = sub i64 %"$gasrem_996", 1
  store i64 %"$consume_1000", i64* @_gasrem, align 8
  %b26 = alloca %TName_Bool*, align 8
  %"$gasrem_1001" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1002" = icmp ugt i64 32, %"$gasrem_1001"
  br i1 %"$gascmp_1002", label %"$out_of_gas_1003", label %"$have_gas_1004"

"$out_of_gas_1003":                               ; preds = %"$have_gas_999"
  call void @_out_of_gas()
  br label %"$have_gas_1004"

"$have_gas_1004":                                 ; preds = %"$out_of_gas_1003", %"$have_gas_999"
  %"$consume_1005" = sub i64 %"$gasrem_1001", 32
  store i64 %"$consume_1005", i64* @_gasrem, align 8
  %"$execptr_load_1006" = load i8*, i8** @_execptr, align 8
  %"$bn1_1007" = load i8*, i8** %bn1, align 8
  %"$bn2_1008" = load i8*, i8** %bn2, align 8
  %"$eq_call_1009" = call %TName_Bool* @_eq_BNum(i8* %"$execptr_load_1006", i8* %"$bn1_1007", i8* %"$bn2_1008"), !dbg !85
  store %TName_Bool* %"$eq_call_1009", %TName_Bool** %b26, align 8, !dbg !85
  %"$gasrem_1011" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1012" = icmp ugt i64 1, %"$gasrem_1011"
  br i1 %"$gascmp_1012", label %"$out_of_gas_1013", label %"$have_gas_1014"

"$out_of_gas_1013":                               ; preds = %"$have_gas_1004"
  call void @_out_of_gas()
  br label %"$have_gas_1014"

"$have_gas_1014":                                 ; preds = %"$out_of_gas_1013", %"$have_gas_1004"
  %"$consume_1015" = sub i64 %"$gasrem_1011", 1
  store i64 %"$consume_1015", i64* @_gasrem, align 8
  %b27 = alloca %TName_Bool*, align 8
  %"$gasrem_1016" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1017" = icmp ugt i64 1, %"$gasrem_1016"
  br i1 %"$gascmp_1017", label %"$out_of_gas_1018", label %"$have_gas_1019"

"$out_of_gas_1018":                               ; preds = %"$have_gas_1014"
  call void @_out_of_gas()
  br label %"$have_gas_1019"

"$have_gas_1019":                                 ; preds = %"$out_of_gas_1018", %"$have_gas_1014"
  %"$consume_1020" = sub i64 %"$gasrem_1016", 1
  store i64 %"$consume_1020", i64* @_gasrem, align 8
  %"$BoolUtils.negb_31" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_1021" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_1022" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1021", 0
  %"$BoolUtils.negb_envptr_1023" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1021", 1
  %"$b26_1024" = load %TName_Bool*, %TName_Bool** %b26, align 8
  %"$BoolUtils.negb_call_1025" = call %TName_Bool* %"$BoolUtils.negb_fptr_1022"(i8* %"$BoolUtils.negb_envptr_1023", %TName_Bool* %"$b26_1024"), !dbg !86
  store %TName_Bool* %"$BoolUtils.negb_call_1025", %TName_Bool** %"$BoolUtils.negb_31", align 8, !dbg !86
  %"$$BoolUtils.negb_31_1026" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_31", align 8
  store %TName_Bool* %"$$BoolUtils.negb_31_1026", %TName_Bool** %b27, align 8, !dbg !86
  %"$gasrem_1027" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1028" = icmp ugt i64 1, %"$gasrem_1027"
  br i1 %"$gascmp_1028", label %"$out_of_gas_1029", label %"$have_gas_1030"

"$out_of_gas_1029":                               ; preds = %"$have_gas_1019"
  call void @_out_of_gas()
  br label %"$have_gas_1030"

"$have_gas_1030":                                 ; preds = %"$out_of_gas_1029", %"$have_gas_1019"
  %"$consume_1031" = sub i64 %"$gasrem_1027", 1
  store i64 %"$consume_1031", i64* @_gasrem, align 8
  %b28 = alloca %TName_Bool*, align 8
  %"$gasrem_1032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1033" = icmp ugt i64 32, %"$gasrem_1032"
  br i1 %"$gascmp_1033", label %"$out_of_gas_1034", label %"$have_gas_1035"

"$out_of_gas_1034":                               ; preds = %"$have_gas_1030"
  call void @_out_of_gas()
  br label %"$have_gas_1035"

"$have_gas_1035":                                 ; preds = %"$out_of_gas_1034", %"$have_gas_1030"
  %"$consume_1036" = sub i64 %"$gasrem_1032", 32
  store i64 %"$consume_1036", i64* @_gasrem, align 8
  %"$execptr_load_1037" = load i8*, i8** @_execptr, align 8
  %"$bn1_1038" = load i8*, i8** %bn1, align 8
  %"$bn3_1039" = load i8*, i8** %bn3, align 8
  %"$eq_call_1040" = call %TName_Bool* @_eq_BNum(i8* %"$execptr_load_1037", i8* %"$bn1_1038", i8* %"$bn3_1039"), !dbg !87
  store %TName_Bool* %"$eq_call_1040", %TName_Bool** %b28, align 8, !dbg !87
  %"$gasrem_1042" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1043" = icmp ugt i64 1, %"$gasrem_1042"
  br i1 %"$gascmp_1043", label %"$out_of_gas_1044", label %"$have_gas_1045"

"$out_of_gas_1044":                               ; preds = %"$have_gas_1035"
  call void @_out_of_gas()
  br label %"$have_gas_1045"

"$have_gas_1045":                                 ; preds = %"$out_of_gas_1044", %"$have_gas_1035"
  %"$consume_1046" = sub i64 %"$gasrem_1042", 1
  store i64 %"$consume_1046", i64* @_gasrem, align 8
  %b29 = alloca %TName_Bool*, align 8
  %"$gasrem_1047" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1048" = icmp ugt i64 1, %"$gasrem_1047"
  br i1 %"$gascmp_1048", label %"$out_of_gas_1049", label %"$have_gas_1050"

"$out_of_gas_1049":                               ; preds = %"$have_gas_1045"
  call void @_out_of_gas()
  br label %"$have_gas_1050"

"$have_gas_1050":                                 ; preds = %"$out_of_gas_1049", %"$have_gas_1045"
  %"$consume_1051" = sub i64 %"$gasrem_1047", 1
  store i64 %"$consume_1051", i64* @_gasrem, align 8
  %"$BoolUtils.andb_32" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1052" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1053" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1052", 0
  %"$BoolUtils.andb_envptr_1054" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1052", 1
  %"$b27_1055" = load %TName_Bool*, %TName_Bool** %b27, align 8
  %"$BoolUtils.andb_call_1056" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1053"(i8* %"$BoolUtils.andb_envptr_1054", %TName_Bool* %"$b27_1055"), !dbg !88
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1056", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_32", align 8, !dbg !88
  %"$BoolUtils.andb_33" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_32_1057" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_32", align 8
  %"$$BoolUtils.andb_32_fptr_1058" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_32_1057", 0
  %"$$BoolUtils.andb_32_envptr_1059" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_32_1057", 1
  %"$b28_1060" = load %TName_Bool*, %TName_Bool** %b28, align 8
  %"$$BoolUtils.andb_32_call_1061" = call %TName_Bool* %"$$BoolUtils.andb_32_fptr_1058"(i8* %"$$BoolUtils.andb_32_envptr_1059", %TName_Bool* %"$b28_1060"), !dbg !88
  store %TName_Bool* %"$$BoolUtils.andb_32_call_1061", %TName_Bool** %"$BoolUtils.andb_33", align 8, !dbg !88
  %"$$BoolUtils.andb_33_1062" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_33", align 8
  store %TName_Bool* %"$$BoolUtils.andb_33_1062", %TName_Bool** %b29, align 8, !dbg !88
  %"$gasrem_1063" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1064" = icmp ugt i64 1, %"$gasrem_1063"
  br i1 %"$gascmp_1064", label %"$out_of_gas_1065", label %"$have_gas_1066"

"$out_of_gas_1065":                               ; preds = %"$have_gas_1050"
  call void @_out_of_gas()
  br label %"$have_gas_1066"

"$have_gas_1066":                                 ; preds = %"$out_of_gas_1065", %"$have_gas_1050"
  %"$consume_1067" = sub i64 %"$gasrem_1063", 1
  store i64 %"$consume_1067", i64* @_gasrem, align 8
  %"$BoolUtils.andb_34" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1068" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1069" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1068", 0
  %"$BoolUtils.andb_envptr_1070" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1068", 1
  %"$b25_1071" = load %TName_Bool*, %TName_Bool** %b25, align 8
  %"$BoolUtils.andb_call_1072" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1069"(i8* %"$BoolUtils.andb_envptr_1070", %TName_Bool* %"$b25_1071"), !dbg !89
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1072", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_34", align 8, !dbg !89
  %"$BoolUtils.andb_35" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_34_1073" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_34", align 8
  %"$$BoolUtils.andb_34_fptr_1074" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_34_1073", 0
  %"$$BoolUtils.andb_34_envptr_1075" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_34_1073", 1
  %"$b29_1076" = load %TName_Bool*, %TName_Bool** %b29, align 8
  %"$$BoolUtils.andb_34_call_1077" = call %TName_Bool* %"$$BoolUtils.andb_34_fptr_1074"(i8* %"$$BoolUtils.andb_34_envptr_1075", %TName_Bool* %"$b29_1076"), !dbg !89
  store %TName_Bool* %"$$BoolUtils.andb_34_call_1077", %TName_Bool** %"$BoolUtils.andb_35", align 8, !dbg !89
  %"$$BoolUtils.andb_35_1078" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_35", align 8
  store %TName_Bool* %"$$BoolUtils.andb_35_1078", %TName_Bool** %"$expr_46", align 8, !dbg !89
  %"$$expr_46_1079" = load %TName_Bool*, %TName_Bool** %"$expr_46", align 8
  ret %TName_Bool* %"$$expr_46_1079"
}

declare %TName_Bool* @_eq_Int32(i8*, %Int32, %Int32)

declare %TName_Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
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
  %"$exprval_1080" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1081" = bitcast %TName_Bool* %"$exprval_1080" to i8*
  %"$execptr_load_1082" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1082", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_83", i8* %"$memvoidcast_1081")
  ret void
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_eq.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_36", linkageName: "$fundef_36", scope: !5, file: !5, line: 22, type: !6, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 22, column: 5, scope: !4)
!10 = !DILocation(line: 23, column: 15, scope: !11)
!11 = distinct !DILexicalBlock(scope: !12, file: !5, line: 23, column: 7)
!12 = distinct !DILexicalBlock(scope: !4, file: !5, line: 22, column: 5)
!13 = !DILocation(line: 24, column: 16, scope: !14)
!14 = distinct !DILexicalBlock(scope: !12, file: !5, line: 24, column: 7)
!15 = distinct !DISubprogram(name: "$fundef_40", linkageName: "$fundef_40", scope: !5, file: !5, line: 15, type: !6, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 15, column: 5, scope: !15)
!17 = !DILocation(line: 16, column: 16, scope: !18)
!18 = distinct !DILexicalBlock(scope: !19, file: !5, line: 16, column: 7)
!19 = distinct !DILexicalBlock(scope: !15, file: !5, line: 15, column: 5)
!20 = !DILocation(line: 17, column: 16, scope: !21)
!21 = distinct !DILexicalBlock(scope: !19, file: !5, line: 17, column: 7)
!22 = distinct !DISubprogram(name: "$fundef_38", linkageName: "$fundef_38", scope: !5, file: !5, line: 14, type: !6, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!23 = !DILocation(line: 15, column: 5, scope: !22)
!24 = distinct !DISubprogram(name: "$fundef_44", linkageName: "$fundef_44", scope: !5, file: !5, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!25 = !DILocation(line: 8, column: 5, scope: !24)
!26 = !DILocation(line: 9, column: 16, scope: !27)
!27 = distinct !DILexicalBlock(scope: !28, file: !5, line: 9, column: 7)
!28 = distinct !DILexicalBlock(scope: !24, file: !5, line: 8, column: 5)
!29 = !DILocation(line: 10, column: 16, scope: !30)
!30 = distinct !DILexicalBlock(scope: !28, file: !5, line: 10, column: 7)
!31 = distinct !DISubprogram(name: "$fundef_42", linkageName: "$fundef_42", scope: !5, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!32 = !DILocation(line: 8, column: 5, scope: !31)
!33 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !34, file: !34, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!34 = !DIFile(filename: ".", directory: ".")
!35 = !DILocation(line: 0, scope: !33)
!36 = !DILocation(line: 7, column: 3, scope: !33)
!37 = !DILocation(line: 14, column: 21, scope: !33)
!38 = !DILocation(line: 22, column: 5, scope: !33)
!39 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!40 = !DILocation(line: 1, column: 12, scope: !39)
!41 = !DILocation(line: 2, column: 12, scope: !39)
!42 = !DILocation(line: 3, column: 13, scope: !39)
!43 = !DILocation(line: 4, column: 10, scope: !39)
!44 = !DILocation(line: 5, column: 10, scope: !39)
!45 = !DILocation(line: 7, column: 13, scope: !39)
!46 = !DILocation(line: 8, column: 13, scope: !39)
!47 = !DILocation(line: 10, column: 10, scope: !39)
!48 = !DILocation(line: 11, column: 10, scope: !39)
!49 = !DILocation(line: 12, column: 10, scope: !39)
!50 = !DILocation(line: 13, column: 10, scope: !39)
!51 = !DILocation(line: 14, column: 10, scope: !39)
!52 = !DILocation(line: 16, column: 14, scope: !39)
!53 = !DILocation(line: 17, column: 14, scope: !39)
!54 = !DILocation(line: 19, column: 10, scope: !39)
!55 = !DILocation(line: 20, column: 10, scope: !39)
!56 = !DILocation(line: 21, column: 11, scope: !39)
!57 = !DILocation(line: 22, column: 11, scope: !39)
!58 = !DILocation(line: 24, column: 16, scope: !39)
!59 = !DILocation(line: 25, column: 16, scope: !39)
!60 = !DILocation(line: 26, column: 17, scope: !39)
!61 = !DILocation(line: 27, column: 11, scope: !39)
!62 = !DILocation(line: 28, column: 11, scope: !39)
!63 = !DILocation(line: 29, column: 11, scope: !39)
!64 = !DILocation(line: 30, column: 11, scope: !39)
!65 = !DILocation(line: 32, column: 11, scope: !39)
!66 = !DILocation(line: 33, column: 11, scope: !39)
!67 = !DILocation(line: 34, column: 12, scope: !39)
!68 = !DILocation(line: 35, column: 11, scope: !39)
!69 = !DILocation(line: 36, column: 11, scope: !39)
!70 = !DILocation(line: 37, column: 11, scope: !39)
!71 = !DILocation(line: 38, column: 11, scope: !39)
!72 = !DILocation(line: 40, column: 11, scope: !39)
!73 = !DILocation(line: 41, column: 11, scope: !39)
!74 = !DILocation(line: 42, column: 11, scope: !39)
!75 = !DILocation(line: 43, column: 11, scope: !39)
!76 = !DILocation(line: 44, column: 11, scope: !39)
!77 = !DILocation(line: 46, column: 12, scope: !39)
!78 = !DILocation(line: 47, column: 12, scope: !39)
!79 = !DILocation(line: 48, column: 11, scope: !39)
!80 = !DILocation(line: 49, column: 11, scope: !39)
!81 = !DILocation(line: 50, column: 11, scope: !39)
!82 = !DILocation(line: 52, column: 11, scope: !39)
!83 = !DILocation(line: 53, column: 11, scope: !39)
!84 = !DILocation(line: 54, column: 11, scope: !39)
!85 = !DILocation(line: 55, column: 11, scope: !39)
!86 = !DILocation(line: 56, column: 11, scope: !39)
!87 = !DILocation(line: 57, column: 11, scope: !39)
!88 = !DILocation(line: 58, column: 11, scope: !39)
!89 = !DILocation(line: 60, column: 1, scope: !39)
