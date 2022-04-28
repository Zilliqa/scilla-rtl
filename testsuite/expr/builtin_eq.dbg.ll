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
%"$ParamDescr_1090" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1091" = type { %ParamDescrString, i32, %"$ParamDescr_1090"* }
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
@"$stringlit_576" = unnamed_addr constant [5 x i8] c"Hello"
@"$stringlit_587" = unnamed_addr constant [5 x i8] c"World"
@"$stringlit_598" = unnamed_addr constant [5 x i8] c"Hello"
@"$BNumLit_971" = unnamed_addr constant [3 x i8] c"100"
@"$BNumLit_985" = unnamed_addr constant [3 x i8] c"299"
@"$BNumLit_999" = unnamed_addr constant [3 x i8] c"100"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_71", %_TyDescrTy_Typ* @"$TyDescr_Int64_53", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_85", %_TyDescrTy_Typ* @"$TyDescr_Bystr3_79", %_TyDescrTy_Typ* @"$TyDescr_Uint256_63", %_TyDescrTy_Typ* @"$TyDescr_Uint32_51", %_TyDescrTy_Typ* @"$TyDescr_Uint64_55", %_TyDescrTy_Typ* @"$TyDescr_Bnum_67", %_TyDescrTy_Typ* @"$TyDescr_Uint128_59", %_TyDescrTy_Typ* @"$TyDescr_Exception_73", %_TyDescrTy_Typ* @"$TyDescr_String_65", %_TyDescrTy_Typ* @"$TyDescr_Int256_61", %_TyDescrTy_Typ* @"$TyDescr_Int128_57", %_TyDescrTy_Typ* @"$TyDescr_Bystr_77", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_75", %_TyDescrTy_Typ* @"$TyDescr_Message_69", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_81", %_TyDescrTy_Typ* @"$TyDescr_Int32_49"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_1090"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1091"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_36"(%"$$fundef_36_env_101"* %0, %TName_Bool* %1) !dbg !3 {
entry:
  %"$b_222" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$b_222", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$b_222", metadata !9, metadata !DIExpression()), !dbg !12
  %"$retval_37" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$retval_37", metadata !13, metadata !DIExpression()), !dbg !14
  %"$gasrem_192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_193" = icmp ugt i64 2, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %entry
  %"$consume_196" = sub i64 %"$gasrem_192", 2
  store i64 %"$consume_196", i64* @_gasrem, align 8
  %"$b_tag_198" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_199" = load i8, i8* %"$b_tag_198", align 1
  switch i8 %"$b_tag_199", label %"$empty_default_200" [
    i8 0, label %"$True_201"
    i8 1, label %"$False_211"
  ], !dbg !14

"$True_201":                                      ; preds = %"$have_gas_195"
  %"$b_202" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 1, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %"$True_201"
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %"$True_201"
  %"$consume_207" = sub i64 %"$gasrem_203", 1
  store i64 %"$consume_207", i64* @_gasrem, align 8
  %"$adtval_208_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_208_salloc" = call i8* @_salloc(i8* %"$adtval_208_load", i64 1)
  %"$adtval_208" = bitcast i8* %"$adtval_208_salloc" to %CName_False*
  %"$adtgep_209" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_208", i32 0, i32 0
  store i8 1, i8* %"$adtgep_209", align 1
  %"$adtptr_210" = bitcast %CName_False* %"$adtval_208" to %TName_Bool*
  store %TName_Bool* %"$adtptr_210", %TName_Bool** %"$retval_37", align 8, !dbg !15
  br label %"$matchsucc_197"

"$False_211":                                     ; preds = %"$have_gas_195"
  %"$b_212" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %"$False_211"
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %"$False_211"
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %"$adtval_218_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_218_salloc" = call i8* @_salloc(i8* %"$adtval_218_load", i64 1)
  %"$adtval_218" = bitcast i8* %"$adtval_218_salloc" to %CName_True*
  %"$adtgep_219" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_218", i32 0, i32 0
  store i8 0, i8* %"$adtgep_219", align 1
  %"$adtptr_220" = bitcast %CName_True* %"$adtval_218" to %TName_Bool*
  store %TName_Bool* %"$adtptr_220", %TName_Bool** %"$retval_37", align 8, !dbg !18
  br label %"$matchsucc_197"

"$empty_default_200":                             ; preds = %"$have_gas_195"
  br label %"$matchsucc_197"

"$matchsucc_197":                                 ; preds = %"$have_gas_216", %"$have_gas_206", %"$empty_default_200"
  %"$$retval_37_221" = load %TName_Bool*, %TName_Bool** %"$retval_37", align 8
  ret %TName_Bool* %"$$retval_37_221"
}

define internal %TName_Bool* @"$fundef_40"(%"$$fundef_40_env_102"* %0, %TName_Bool* %1) !dbg !20 {
entry:
  %"$c_191" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$c_191", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$c_191", metadata !21, metadata !DIExpression()), !dbg !22
  %"$$fundef_40_env_b_161" = getelementptr inbounds %"$$fundef_40_env_102", %"$$fundef_40_env_102"* %0, i32 0, i32 0
  %"$b_envload_162" = load %TName_Bool*, %TName_Bool** %"$$fundef_40_env_b_161", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_162", %TName_Bool** %b, align 8
  %"$retval_41" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$retval_41", metadata !23, metadata !DIExpression()), !dbg !24
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 2, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %entry
  %"$consume_167" = sub i64 %"$gasrem_163", 2
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %"$b_169" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_170" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_169", i32 0, i32 0
  %"$b_tag_171" = load i8, i8* %"$b_tag_170", align 1
  switch i8 %"$b_tag_171", label %"$empty_default_172" [
    i8 0, label %"$True_173"
    i8 1, label %"$False_183"
  ], !dbg !24

"$True_173":                                      ; preds = %"$have_gas_166"
  %"$b_174" = bitcast %TName_Bool* %"$b_169" to %CName_True*
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %"$True_173"
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %"$True_173"
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %"$adtval_180_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_180_salloc" = call i8* @_salloc(i8* %"$adtval_180_load", i64 1)
  %"$adtval_180" = bitcast i8* %"$adtval_180_salloc" to %CName_True*
  %"$adtgep_181" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_180", i32 0, i32 0
  store i8 0, i8* %"$adtgep_181", align 1
  %"$adtptr_182" = bitcast %CName_True* %"$adtval_180" to %TName_Bool*
  store %TName_Bool* %"$adtptr_182", %TName_Bool** %"$retval_41", align 8, !dbg !25
  br label %"$matchsucc_168"

"$False_183":                                     ; preds = %"$have_gas_166"
  %"$b_184" = bitcast %TName_Bool* %"$b_169" to %CName_False*
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$False_183"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$False_183"
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_41", align 8, !dbg !28
  br label %"$matchsucc_168"

"$empty_default_172":                             ; preds = %"$have_gas_166"
  br label %"$matchsucc_168"

"$matchsucc_168":                                 ; preds = %"$have_gas_188", %"$have_gas_178", %"$empty_default_172"
  %"$$retval_41_190" = load %TName_Bool*, %TName_Bool** %"$retval_41", align 8
  ret %TName_Bool* %"$$retval_41_190"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_103"* %0, %TName_Bool* %1) !dbg !30 {
entry:
  %"$b_160" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$b_160", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$b_160", metadata !31, metadata !DIExpression()), !dbg !32
  %"$retval_39" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 1, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %entry
  %"$consume_153" = sub i64 %"$gasrem_149", 1
  store i64 %"$consume_153", i64* @_gasrem, align 8
  %"$$fundef_40_envp_154_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_40_envp_154_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_154_load", i64 8)
  %"$$fundef_40_envp_154" = bitcast i8* %"$$fundef_40_envp_154_salloc" to %"$$fundef_40_env_102"*
  %"$$fundef_40_env_voidp_156" = bitcast %"$$fundef_40_env_102"* %"$$fundef_40_envp_154" to i8*
  %"$$fundef_40_cloval_157" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_40_env_102"*, %TName_Bool*)* @"$fundef_40" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_40_env_voidp_156", 1
  %"$$fundef_40_env_b_158" = getelementptr inbounds %"$$fundef_40_env_102", %"$$fundef_40_env_102"* %"$$fundef_40_envp_154", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_40_env_b_158", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_40_cloval_157", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_39", align 8, !dbg !33
  %"$$retval_39_159" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_39", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_39_159"
}

define internal %TName_Bool* @"$fundef_44"(%"$$fundef_44_env_104"* %0, %TName_Bool* %1) !dbg !34 {
entry:
  %"$c_148" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$c_148", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$c_148", metadata !35, metadata !DIExpression()), !dbg !36
  %"$$fundef_44_env_b_118" = getelementptr inbounds %"$$fundef_44_env_104", %"$$fundef_44_env_104"* %0, i32 0, i32 0
  %"$b_envload_119" = load %TName_Bool*, %TName_Bool** %"$$fundef_44_env_b_118", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_119", %TName_Bool** %b, align 8
  %"$retval_45" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$retval_45", metadata !37, metadata !DIExpression()), !dbg !38
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 2, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %entry
  %"$consume_124" = sub i64 %"$gasrem_120", 2
  store i64 %"$consume_124", i64* @_gasrem, align 8
  %"$b_126" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_127" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_126", i32 0, i32 0
  %"$b_tag_128" = load i8, i8* %"$b_tag_127", align 1
  switch i8 %"$b_tag_128", label %"$empty_default_129" [
    i8 1, label %"$False_130"
    i8 0, label %"$True_140"
  ], !dbg !38

"$False_130":                                     ; preds = %"$have_gas_123"
  %"$b_131" = bitcast %TName_Bool* %"$b_126" to %CName_False*
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$False_130"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$False_130"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  %"$adtval_137_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_137_salloc" = call i8* @_salloc(i8* %"$adtval_137_load", i64 1)
  %"$adtval_137" = bitcast i8* %"$adtval_137_salloc" to %CName_False*
  %"$adtgep_138" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_137", i32 0, i32 0
  store i8 1, i8* %"$adtgep_138", align 1
  %"$adtptr_139" = bitcast %CName_False* %"$adtval_137" to %TName_Bool*
  store %TName_Bool* %"$adtptr_139", %TName_Bool** %"$retval_45", align 8, !dbg !39
  br label %"$matchsucc_125"

"$True_140":                                      ; preds = %"$have_gas_123"
  %"$b_141" = bitcast %TName_Bool* %"$b_126" to %CName_True*
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 1, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %"$True_140"
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %"$True_140"
  %"$consume_146" = sub i64 %"$gasrem_142", 1
  store i64 %"$consume_146", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_45", align 8, !dbg !42
  br label %"$matchsucc_125"

"$empty_default_129":                             ; preds = %"$have_gas_123"
  br label %"$matchsucc_125"

"$matchsucc_125":                                 ; preds = %"$have_gas_145", %"$have_gas_135", %"$empty_default_129"
  %"$$retval_45_147" = load %TName_Bool*, %TName_Bool** %"$retval_45", align 8
  ret %TName_Bool* %"$$retval_45_147"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_42"(%"$$fundef_42_env_105"* %0, %TName_Bool* %1) !dbg !44 {
entry:
  %"$b_117" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$b_117", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$b_117", metadata !45, metadata !DIExpression()), !dbg !46
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
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_44_cloval_114", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_43", align 8, !dbg !47
  %"$$retval_43_116" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_43", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_43_116"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !48 {
entry:
  %"$gasrem_223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_224" = icmp ugt i64 5, %"$gasrem_223"
  br i1 %"$gascmp_224", label %"$out_of_gas_225", label %"$have_gas_226"

"$out_of_gas_225":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_226"

"$have_gas_226":                                  ; preds = %"$out_of_gas_225", %entry
  %"$consume_227" = sub i64 %"$gasrem_223", 5
  store i64 %"$consume_227", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !50
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 5, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_226"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_226"
  %"$consume_232" = sub i64 %"$gasrem_228", 5
  store i64 %"$consume_232", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !50
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_231"
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_42_env_105"*, %TName_Bool*)* @"$fundef_42" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !51
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 1, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %"$have_gas_236"
  %"$consume_245" = sub i64 %"$gasrem_241", 1
  store i64 %"$consume_245", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_38_env_103"*, %TName_Bool*)* @"$fundef_38" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8, !dbg !52
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_244"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_244"
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_36_env_101"*, %TName_Bool*)* @"$fundef_36" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8, !dbg !53
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 196, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$have_gas_252"
  %"$consume_261" = sub i64 %"$gasrem_257", 196
  store i64 %"$consume_261", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !50
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 20, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$have_gas_260"
  %"$consume_266" = sub i64 %"$gasrem_262", 20
  store i64 %"$consume_266", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !50
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 12, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_265"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_265"
  %"$consume_271" = sub i64 %"$gasrem_267", 12
  store i64 %"$consume_271", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !50
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 2, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_270"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_270"
  %"$consume_276" = sub i64 %"$gasrem_272", 2
  store i64 %"$consume_276", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !50
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !54 {
entry:
  %"$expr_46" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$expr_46", metadata !55, metadata !DIExpression()), !dbg !56
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %entry
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %i32a = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %i32a, metadata !57, metadata !DIExpression()), !dbg !59
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 1, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$have_gas_280"
  %"$consume_286" = sub i64 %"$gasrem_282", 1
  store i64 %"$consume_286", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %i32a, align 4, !dbg !56
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 1, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_285"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_285"
  %"$consume_291" = sub i64 %"$gasrem_287", 1
  store i64 %"$consume_291", i64* @_gasrem, align 8
  %i32b = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %i32b, metadata !60, metadata !DIExpression()), !dbg !61
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 1, %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %"$have_gas_290"
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %"$have_gas_290"
  %"$consume_296" = sub i64 %"$gasrem_292", 1
  store i64 %"$consume_296", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %i32b, align 4, !dbg !62
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 1, %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %"$have_gas_295"
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %"$have_gas_295"
  %"$consume_301" = sub i64 %"$gasrem_297", 1
  store i64 %"$consume_301", i64* @_gasrem, align 8
  %i32aa = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %i32aa, metadata !63, metadata !DIExpression()), !dbg !64
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 1, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_300"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_300"
  %"$consume_306" = sub i64 %"$gasrem_302", 1
  store i64 %"$consume_306", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %i32aa, align 4, !dbg !65
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 1, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_305"
  %"$consume_311" = sub i64 %"$gasrem_307", 1
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %b1 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b1, metadata !66, metadata !DIExpression()), !dbg !67
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 4, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_310"
  %"$consume_316" = sub i64 %"$gasrem_312", 4
  store i64 %"$consume_316", i64* @_gasrem, align 8
  %"$execptr_load_317" = load i8*, i8** @_execptr, align 8
  %"$i32a_318" = load %Int32, %Int32* %i32a, align 4
  %"$i32aa_319" = load %Int32, %Int32* %i32aa, align 4
  %"$eq_call_320" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_317", %Int32 %"$i32a_318", %Int32 %"$i32aa_319"), !dbg !68
  store %TName_Bool* %"$eq_call_320", %TName_Bool** %b1, align 8, !dbg !68
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 1, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$have_gas_315"
  %"$consume_326" = sub i64 %"$gasrem_322", 1
  store i64 %"$consume_326", i64* @_gasrem, align 8
  %b2 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b2, metadata !69, metadata !DIExpression()), !dbg !70
  %"$gasrem_327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_328" = icmp ugt i64 4, %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %"$have_gas_325"
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %"$have_gas_325"
  %"$consume_331" = sub i64 %"$gasrem_327", 4
  store i64 %"$consume_331", i64* @_gasrem, align 8
  %"$execptr_load_332" = load i8*, i8** @_execptr, align 8
  %"$i32a_333" = load %Int32, %Int32* %i32a, align 4
  %"$i32b_334" = load %Int32, %Int32* %i32b, align 4
  %"$eq_call_335" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_332", %Int32 %"$i32a_333", %Int32 %"$i32b_334"), !dbg !71
  store %TName_Bool* %"$eq_call_335", %TName_Bool** %b2, align 8, !dbg !71
  %"$gasrem_337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_338" = icmp ugt i64 1, %"$gasrem_337"
  br i1 %"$gascmp_338", label %"$out_of_gas_339", label %"$have_gas_340"

"$out_of_gas_339":                                ; preds = %"$have_gas_330"
  call void @_out_of_gas()
  br label %"$have_gas_340"

"$have_gas_340":                                  ; preds = %"$out_of_gas_339", %"$have_gas_330"
  %"$consume_341" = sub i64 %"$gasrem_337", 1
  store i64 %"$consume_341", i64* @_gasrem, align 8
  %i128a = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %i128a, metadata !72, metadata !DIExpression()), !dbg !74
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_340"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_340"
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem, align 8
  store %Uint128 { i128 11 }, %Uint128* %i128a, align 8, !dbg !75
  %"$gasrem_347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_348" = icmp ugt i64 1, %"$gasrem_347"
  br i1 %"$gascmp_348", label %"$out_of_gas_349", label %"$have_gas_350"

"$out_of_gas_349":                                ; preds = %"$have_gas_345"
  call void @_out_of_gas()
  br label %"$have_gas_350"

"$have_gas_350":                                  ; preds = %"$out_of_gas_349", %"$have_gas_345"
  %"$consume_351" = sub i64 %"$gasrem_347", 1
  store i64 %"$consume_351", i64* @_gasrem, align 8
  %i128b = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %i128b, metadata !76, metadata !DIExpression()), !dbg !77
  %"$gasrem_352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_353" = icmp ugt i64 1, %"$gasrem_352"
  br i1 %"$gascmp_353", label %"$out_of_gas_354", label %"$have_gas_355"

"$out_of_gas_354":                                ; preds = %"$have_gas_350"
  call void @_out_of_gas()
  br label %"$have_gas_355"

"$have_gas_355":                                  ; preds = %"$out_of_gas_354", %"$have_gas_350"
  %"$consume_356" = sub i64 %"$gasrem_352", 1
  store i64 %"$consume_356", i64* @_gasrem, align 8
  store %Uint128 { i128 12 }, %Uint128* %i128b, align 8, !dbg !78
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
  %"$gasrem_367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_368" = icmp ugt i64 1, %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %"$have_gas_365"
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %"$have_gas_365"
  %"$consume_371" = sub i64 %"$gasrem_367", 1
  store i64 %"$consume_371", i64* @_gasrem, align 8
  %b3 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b3, metadata !79, metadata !DIExpression()), !dbg !80
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 8, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_370"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_370"
  %"$consume_377" = sub i64 %"$gasrem_373", 8
  store i64 %"$consume_377", i64* @_gasrem, align 8
  %"$execptr_load_378" = load i8*, i8** @_execptr, align 8
  %"$i128a_379" = load %Uint128, %Uint128* %i128a, align 8
  %"$i128b_380" = load %Uint128, %Uint128* %i128b, align 8
  %"$eq_call_381" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_378", %Uint128 %"$i128a_379", %Uint128 %"$i128b_380"), !dbg !81
  store %TName_Bool* %"$eq_call_381", %TName_Bool** %b3, align 8, !dbg !81
  %"$gasrem_383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_384" = icmp ugt i64 1, %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$have_gas_376"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$have_gas_376"
  %"$consume_387" = sub i64 %"$gasrem_383", 1
  store i64 %"$consume_387", i64* @_gasrem, align 8
  %b4 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b4, metadata !82, metadata !DIExpression()), !dbg !83
  %"$gasrem_389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_390" = icmp ugt i64 8, %"$gasrem_389"
  br i1 %"$gascmp_390", label %"$out_of_gas_391", label %"$have_gas_392"

"$out_of_gas_391":                                ; preds = %"$have_gas_386"
  call void @_out_of_gas()
  br label %"$have_gas_392"

"$have_gas_392":                                  ; preds = %"$out_of_gas_391", %"$have_gas_386"
  %"$consume_393" = sub i64 %"$gasrem_389", 8
  store i64 %"$consume_393", i64* @_gasrem, align 8
  %"$execptr_load_394" = load i8*, i8** @_execptr, align 8
  %"$i128a_395" = load %Uint128, %Uint128* %i128a, align 8
  %"$i128a_396" = load %Uint128, %Uint128* %i128a, align 8
  %"$eq_call_397" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_394", %Uint128 %"$i128a_395", %Uint128 %"$i128a_396"), !dbg !84
  store %TName_Bool* %"$eq_call_397", %TName_Bool** %b4, align 8, !dbg !84
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_392"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_392"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %b5 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b5, metadata !85, metadata !DIExpression()), !dbg !86
  %"$gasrem_404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_405" = icmp ugt i64 1, %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_402"
  %"$consume_408" = sub i64 %"$gasrem_404", 1
  store i64 %"$consume_408", i64* @_gasrem, align 8
  %"$BoolUtils.andb_7" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_409" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_410" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_409", 0
  %"$BoolUtils.andb_envptr_411" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_409", 1
  %"$b1_412" = load %TName_Bool*, %TName_Bool** %b1, align 8
  %"$BoolUtils.andb_call_413" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_410"(i8* %"$BoolUtils.andb_envptr_411", %TName_Bool* %"$b1_412"), !dbg !87
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_413", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7", align 8, !dbg !87
  %"$BoolUtils.andb_8" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_8", metadata !88, metadata !DIExpression()), !dbg !87
  %"$$BoolUtils.andb_7_414" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7", align 8
  %"$$BoolUtils.andb_7_fptr_415" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_414", 0
  %"$$BoolUtils.andb_7_envptr_416" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_414", 1
  %"$b2_417" = load %TName_Bool*, %TName_Bool** %b2, align 8
  %"$$BoolUtils.andb_7_call_418" = call %TName_Bool* %"$$BoolUtils.andb_7_fptr_415"(i8* %"$$BoolUtils.andb_7_envptr_416", %TName_Bool* %"$b2_417"), !dbg !87
  store %TName_Bool* %"$$BoolUtils.andb_7_call_418", %TName_Bool** %"$BoolUtils.andb_8", align 8, !dbg !87
  %"$$BoolUtils.andb_8_419" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_8", align 8
  store %TName_Bool* %"$$BoolUtils.andb_8_419", %TName_Bool** %b5, align 8, !dbg !87
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_407"
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem, align 8
  %b6 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b6, metadata !89, metadata !DIExpression()), !dbg !90
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 1, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_423"
  %"$consume_429" = sub i64 %"$gasrem_425", 1
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %"$BoolUtils.orb_9" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_430" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_431" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_430", 0
  %"$BoolUtils.orb_envptr_432" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_430", 1
  %"$b3_433" = load %TName_Bool*, %TName_Bool** %b3, align 8
  %"$BoolUtils.orb_call_434" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_431"(i8* %"$BoolUtils.orb_envptr_432", %TName_Bool* %"$b3_433"), !dbg !91
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_434", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_9", align 8, !dbg !91
  %"$BoolUtils.orb_10" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.orb_10", metadata !92, metadata !DIExpression()), !dbg !91
  %"$$BoolUtils.orb_9_435" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_9", align 8
  %"$$BoolUtils.orb_9_fptr_436" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_9_435", 0
  %"$$BoolUtils.orb_9_envptr_437" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_9_435", 1
  %"$b4_438" = load %TName_Bool*, %TName_Bool** %b4, align 8
  %"$$BoolUtils.orb_9_call_439" = call %TName_Bool* %"$$BoolUtils.orb_9_fptr_436"(i8* %"$$BoolUtils.orb_9_envptr_437", %TName_Bool* %"$b4_438"), !dbg !91
  store %TName_Bool* %"$$BoolUtils.orb_9_call_439", %TName_Bool** %"$BoolUtils.orb_10", align 8, !dbg !91
  %"$$BoolUtils.orb_10_440" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_10", align 8
  store %TName_Bool* %"$$BoolUtils.orb_10_440", %TName_Bool** %b6, align 8, !dbg !91
  %"$gasrem_441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_442" = icmp ugt i64 1, %"$gasrem_441"
  br i1 %"$gascmp_442", label %"$out_of_gas_443", label %"$have_gas_444"

"$out_of_gas_443":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_444"

"$have_gas_444":                                  ; preds = %"$out_of_gas_443", %"$have_gas_428"
  %"$consume_445" = sub i64 %"$gasrem_441", 1
  store i64 %"$consume_445", i64* @_gasrem, align 8
  %b7 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b7, metadata !93, metadata !DIExpression()), !dbg !94
  %"$gasrem_446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_447" = icmp ugt i64 1, %"$gasrem_446"
  br i1 %"$gascmp_447", label %"$out_of_gas_448", label %"$have_gas_449"

"$out_of_gas_448":                                ; preds = %"$have_gas_444"
  call void @_out_of_gas()
  br label %"$have_gas_449"

"$have_gas_449":                                  ; preds = %"$out_of_gas_448", %"$have_gas_444"
  %"$consume_450" = sub i64 %"$gasrem_446", 1
  store i64 %"$consume_450", i64* @_gasrem, align 8
  %"$BoolUtils.andb_11" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_451" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_452" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_451", 0
  %"$BoolUtils.andb_envptr_453" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_451", 1
  %"$b5_454" = load %TName_Bool*, %TName_Bool** %b5, align 8
  %"$BoolUtils.andb_call_455" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_452"(i8* %"$BoolUtils.andb_envptr_453", %TName_Bool* %"$b5_454"), !dbg !95
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_455", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_11", align 8, !dbg !95
  %"$BoolUtils.andb_12" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_12", metadata !96, metadata !DIExpression()), !dbg !95
  %"$$BoolUtils.andb_11_456" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_11", align 8
  %"$$BoolUtils.andb_11_fptr_457" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_11_456", 0
  %"$$BoolUtils.andb_11_envptr_458" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_11_456", 1
  %"$b6_459" = load %TName_Bool*, %TName_Bool** %b6, align 8
  %"$$BoolUtils.andb_11_call_460" = call %TName_Bool* %"$$BoolUtils.andb_11_fptr_457"(i8* %"$$BoolUtils.andb_11_envptr_458", %TName_Bool* %"$b6_459"), !dbg !95
  store %TName_Bool* %"$$BoolUtils.andb_11_call_460", %TName_Bool** %"$BoolUtils.andb_12", align 8, !dbg !95
  %"$$BoolUtils.andb_12_461" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_12", align 8
  store %TName_Bool* %"$$BoolUtils.andb_12_461", %TName_Bool** %b7, align 8, !dbg !95
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 1, %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %"$have_gas_449"
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %"$have_gas_449"
  %"$consume_466" = sub i64 %"$gasrem_462", 1
  store i64 %"$consume_466", i64* @_gasrem, align 8
  %ui256a = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %ui256a, metadata !97, metadata !DIExpression()), !dbg !98
  %"$gasrem_467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_468" = icmp ugt i64 1, %"$gasrem_467"
  br i1 %"$gascmp_468", label %"$out_of_gas_469", label %"$have_gas_470"

"$out_of_gas_469":                                ; preds = %"$have_gas_465"
  call void @_out_of_gas()
  br label %"$have_gas_470"

"$have_gas_470":                                  ; preds = %"$out_of_gas_469", %"$have_gas_465"
  %"$consume_471" = sub i64 %"$gasrem_467", 1
  store i64 %"$consume_471", i64* @_gasrem, align 8
  store %Uint128 { i128 11 }, %Uint128* %ui256a, align 8, !dbg !99
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$have_gas_470"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$have_gas_470"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem, align 8
  %ui256b = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %ui256b, metadata !100, metadata !DIExpression()), !dbg !101
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 1, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %"$have_gas_475"
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %"$have_gas_475"
  %"$consume_481" = sub i64 %"$gasrem_477", 1
  store i64 %"$consume_481", i64* @_gasrem, align 8
  store %Uint128 { i128 12 }, %Uint128* %ui256b, align 8, !dbg !102
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
  %"$gasrem_492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_493" = icmp ugt i64 1, %"$gasrem_492"
  br i1 %"$gascmp_493", label %"$out_of_gas_494", label %"$have_gas_495"

"$out_of_gas_494":                                ; preds = %"$have_gas_490"
  call void @_out_of_gas()
  br label %"$have_gas_495"

"$have_gas_495":                                  ; preds = %"$out_of_gas_494", %"$have_gas_490"
  %"$consume_496" = sub i64 %"$gasrem_492", 1
  store i64 %"$consume_496", i64* @_gasrem, align 8
  %b8 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b8, metadata !103, metadata !DIExpression()), !dbg !104
  %"$gasrem_498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_499" = icmp ugt i64 8, %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %"$have_gas_495"
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %"$have_gas_495"
  %"$consume_502" = sub i64 %"$gasrem_498", 8
  store i64 %"$consume_502", i64* @_gasrem, align 8
  %"$execptr_load_503" = load i8*, i8** @_execptr, align 8
  %"$ui256a_504" = load %Uint128, %Uint128* %ui256a, align 8
  %"$ui256b_505" = load %Uint128, %Uint128* %ui256b, align 8
  %"$eq_call_506" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_503", %Uint128 %"$ui256a_504", %Uint128 %"$ui256b_505"), !dbg !105
  store %TName_Bool* %"$eq_call_506", %TName_Bool** %b8, align 8, !dbg !105
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 1, %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %"$have_gas_501"
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %"$have_gas_501"
  %"$consume_512" = sub i64 %"$gasrem_508", 1
  store i64 %"$consume_512", i64* @_gasrem, align 8
  %b9 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b9, metadata !106, metadata !DIExpression()), !dbg !107
  %"$gasrem_514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_515" = icmp ugt i64 8, %"$gasrem_514"
  br i1 %"$gascmp_515", label %"$out_of_gas_516", label %"$have_gas_517"

"$out_of_gas_516":                                ; preds = %"$have_gas_511"
  call void @_out_of_gas()
  br label %"$have_gas_517"

"$have_gas_517":                                  ; preds = %"$out_of_gas_516", %"$have_gas_511"
  %"$consume_518" = sub i64 %"$gasrem_514", 8
  store i64 %"$consume_518", i64* @_gasrem, align 8
  %"$execptr_load_519" = load i8*, i8** @_execptr, align 8
  %"$ui256a_520" = load %Uint128, %Uint128* %ui256a, align 8
  %"$ui256a_521" = load %Uint128, %Uint128* %ui256a, align 8
  %"$eq_call_522" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_519", %Uint128 %"$ui256a_520", %Uint128 %"$ui256a_521"), !dbg !108
  store %TName_Bool* %"$eq_call_522", %TName_Bool** %b9, align 8, !dbg !108
  %"$gasrem_524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_525" = icmp ugt i64 1, %"$gasrem_524"
  br i1 %"$gascmp_525", label %"$out_of_gas_526", label %"$have_gas_527"

"$out_of_gas_526":                                ; preds = %"$have_gas_517"
  call void @_out_of_gas()
  br label %"$have_gas_527"

"$have_gas_527":                                  ; preds = %"$out_of_gas_526", %"$have_gas_517"
  %"$consume_528" = sub i64 %"$gasrem_524", 1
  store i64 %"$consume_528", i64* @_gasrem, align 8
  %b10 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b10, metadata !109, metadata !DIExpression()), !dbg !110
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 1, %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_527"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_527"
  %"$consume_533" = sub i64 %"$gasrem_529", 1
  store i64 %"$consume_533", i64* @_gasrem, align 8
  %"$BoolUtils.andb_13" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_534" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_535" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_534", 0
  %"$BoolUtils.andb_envptr_536" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_534", 1
  %"$b7_537" = load %TName_Bool*, %TName_Bool** %b7, align 8
  %"$BoolUtils.andb_call_538" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_535"(i8* %"$BoolUtils.andb_envptr_536", %TName_Bool* %"$b7_537"), !dbg !111
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_538", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8, !dbg !111
  %"$BoolUtils.andb_14" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_14", metadata !112, metadata !DIExpression()), !dbg !111
  %"$$BoolUtils.andb_13_539" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8
  %"$$BoolUtils.andb_13_fptr_540" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_539", 0
  %"$$BoolUtils.andb_13_envptr_541" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_539", 1
  %"$b8_542" = load %TName_Bool*, %TName_Bool** %b8, align 8
  %"$$BoolUtils.andb_13_call_543" = call %TName_Bool* %"$$BoolUtils.andb_13_fptr_540"(i8* %"$$BoolUtils.andb_13_envptr_541", %TName_Bool* %"$b8_542"), !dbg !111
  store %TName_Bool* %"$$BoolUtils.andb_13_call_543", %TName_Bool** %"$BoolUtils.andb_14", align 8, !dbg !111
  %"$$BoolUtils.andb_14_544" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_14", align 8
  store %TName_Bool* %"$$BoolUtils.andb_14_544", %TName_Bool** %b10, align 8, !dbg !111
  %"$gasrem_545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_546" = icmp ugt i64 1, %"$gasrem_545"
  br i1 %"$gascmp_546", label %"$out_of_gas_547", label %"$have_gas_548"

"$out_of_gas_547":                                ; preds = %"$have_gas_532"
  call void @_out_of_gas()
  br label %"$have_gas_548"

"$have_gas_548":                                  ; preds = %"$out_of_gas_547", %"$have_gas_532"
  %"$consume_549" = sub i64 %"$gasrem_545", 1
  store i64 %"$consume_549", i64* @_gasrem, align 8
  %b11 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b11, metadata !113, metadata !DIExpression()), !dbg !114
  %"$gasrem_550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_551" = icmp ugt i64 1, %"$gasrem_550"
  br i1 %"$gascmp_551", label %"$out_of_gas_552", label %"$have_gas_553"

"$out_of_gas_552":                                ; preds = %"$have_gas_548"
  call void @_out_of_gas()
  br label %"$have_gas_553"

"$have_gas_553":                                  ; preds = %"$out_of_gas_552", %"$have_gas_548"
  %"$consume_554" = sub i64 %"$gasrem_550", 1
  store i64 %"$consume_554", i64* @_gasrem, align 8
  %"$BoolUtils.orb_15" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_555" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_556" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_555", 0
  %"$BoolUtils.orb_envptr_557" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_555", 1
  %"$b10_558" = load %TName_Bool*, %TName_Bool** %b10, align 8
  %"$BoolUtils.orb_call_559" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_556"(i8* %"$BoolUtils.orb_envptr_557", %TName_Bool* %"$b10_558"), !dbg !115
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_559", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_15", align 8, !dbg !115
  %"$BoolUtils.orb_16" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.orb_16", metadata !116, metadata !DIExpression()), !dbg !115
  %"$$BoolUtils.orb_15_560" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_15", align 8
  %"$$BoolUtils.orb_15_fptr_561" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_15_560", 0
  %"$$BoolUtils.orb_15_envptr_562" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_15_560", 1
  %"$b9_563" = load %TName_Bool*, %TName_Bool** %b9, align 8
  %"$$BoolUtils.orb_15_call_564" = call %TName_Bool* %"$$BoolUtils.orb_15_fptr_561"(i8* %"$$BoolUtils.orb_15_envptr_562", %TName_Bool* %"$b9_563"), !dbg !115
  store %TName_Bool* %"$$BoolUtils.orb_15_call_564", %TName_Bool** %"$BoolUtils.orb_16", align 8, !dbg !115
  %"$$BoolUtils.orb_16_565" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_16", align 8
  store %TName_Bool* %"$$BoolUtils.orb_16_565", %TName_Bool** %b11, align 8, !dbg !115
  %"$gasrem_566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_567" = icmp ugt i64 1, %"$gasrem_566"
  br i1 %"$gascmp_567", label %"$out_of_gas_568", label %"$have_gas_569"

"$out_of_gas_568":                                ; preds = %"$have_gas_553"
  call void @_out_of_gas()
  br label %"$have_gas_569"

"$have_gas_569":                                  ; preds = %"$out_of_gas_568", %"$have_gas_553"
  %"$consume_570" = sub i64 %"$gasrem_566", 1
  store i64 %"$consume_570", i64* @_gasrem, align 8
  %s1 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %s1, metadata !117, metadata !DIExpression()), !dbg !119
  %"$gasrem_571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_572" = icmp ugt i64 1, %"$gasrem_571"
  br i1 %"$gascmp_572", label %"$out_of_gas_573", label %"$have_gas_574"

"$out_of_gas_573":                                ; preds = %"$have_gas_569"
  call void @_out_of_gas()
  br label %"$have_gas_574"

"$have_gas_574":                                  ; preds = %"$out_of_gas_573", %"$have_gas_569"
  %"$consume_575" = sub i64 %"$gasrem_571", 1
  store i64 %"$consume_575", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_576", i32 0, i32 0), i32 5 }, %String* %s1, align 8, !dbg !120
  %"$gasrem_577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_578" = icmp ugt i64 1, %"$gasrem_577"
  br i1 %"$gascmp_578", label %"$out_of_gas_579", label %"$have_gas_580"

"$out_of_gas_579":                                ; preds = %"$have_gas_574"
  call void @_out_of_gas()
  br label %"$have_gas_580"

"$have_gas_580":                                  ; preds = %"$out_of_gas_579", %"$have_gas_574"
  %"$consume_581" = sub i64 %"$gasrem_577", 1
  store i64 %"$consume_581", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %s2, metadata !121, metadata !DIExpression()), !dbg !122
  %"$gasrem_582" = load i64, i64* @_gasrem, align 8
  %"$gascmp_583" = icmp ugt i64 1, %"$gasrem_582"
  br i1 %"$gascmp_583", label %"$out_of_gas_584", label %"$have_gas_585"

"$out_of_gas_584":                                ; preds = %"$have_gas_580"
  call void @_out_of_gas()
  br label %"$have_gas_585"

"$have_gas_585":                                  ; preds = %"$out_of_gas_584", %"$have_gas_580"
  %"$consume_586" = sub i64 %"$gasrem_582", 1
  store i64 %"$consume_586", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_587", i32 0, i32 0), i32 5 }, %String* %s2, align 8, !dbg !123
  %"$gasrem_588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_589" = icmp ugt i64 1, %"$gasrem_588"
  br i1 %"$gascmp_589", label %"$out_of_gas_590", label %"$have_gas_591"

"$out_of_gas_590":                                ; preds = %"$have_gas_585"
  call void @_out_of_gas()
  br label %"$have_gas_591"

"$have_gas_591":                                  ; preds = %"$out_of_gas_590", %"$have_gas_585"
  %"$consume_592" = sub i64 %"$gasrem_588", 1
  store i64 %"$consume_592", i64* @_gasrem, align 8
  %s11 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %s11, metadata !124, metadata !DIExpression()), !dbg !125
  %"$gasrem_593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_594" = icmp ugt i64 1, %"$gasrem_593"
  br i1 %"$gascmp_594", label %"$out_of_gas_595", label %"$have_gas_596"

"$out_of_gas_595":                                ; preds = %"$have_gas_591"
  call void @_out_of_gas()
  br label %"$have_gas_596"

"$have_gas_596":                                  ; preds = %"$out_of_gas_595", %"$have_gas_591"
  %"$consume_597" = sub i64 %"$gasrem_593", 1
  store i64 %"$consume_597", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_598", i32 0, i32 0), i32 5 }, %String* %s11, align 8, !dbg !126
  %"$gasrem_599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_600" = icmp ugt i64 1, %"$gasrem_599"
  br i1 %"$gascmp_600", label %"$out_of_gas_601", label %"$have_gas_602"

"$out_of_gas_601":                                ; preds = %"$have_gas_596"
  call void @_out_of_gas()
  br label %"$have_gas_602"

"$have_gas_602":                                  ; preds = %"$out_of_gas_601", %"$have_gas_596"
  %"$consume_603" = sub i64 %"$gasrem_599", 1
  store i64 %"$consume_603", i64* @_gasrem, align 8
  %b12 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b12, metadata !127, metadata !DIExpression()), !dbg !128
  %"$_literal_cost_s1_604" = alloca %String, align 8
  %"$s1_605" = load %String, %String* %s1, align 8
  store %String %"$s1_605", %String* %"$_literal_cost_s1_604", align 8
  %"$$_literal_cost_s1_604_606" = bitcast %String* %"$_literal_cost_s1_604" to i8*
  %"$_literal_cost_call_607" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_65", i8* %"$$_literal_cost_s1_604_606")
  %"$_literal_cost_s2_608" = alloca %String, align 8
  %"$s2_609" = load %String, %String* %s2, align 8
  store %String %"$s2_609", %String* %"$_literal_cost_s2_608", align 8
  %"$$_literal_cost_s2_608_610" = bitcast %String* %"$_literal_cost_s2_608" to i8*
  %"$_literal_cost_call_611" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_65", i8* %"$$_literal_cost_s2_608_610")
  %"$gasmin_612" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_607", i64 %"$_literal_cost_call_611")
  %"$gasrem_613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_614" = icmp ugt i64 %"$gasmin_612", %"$gasrem_613"
  br i1 %"$gascmp_614", label %"$out_of_gas_615", label %"$have_gas_616"

"$out_of_gas_615":                                ; preds = %"$have_gas_602"
  call void @_out_of_gas()
  br label %"$have_gas_616"

"$have_gas_616":                                  ; preds = %"$out_of_gas_615", %"$have_gas_602"
  %"$consume_617" = sub i64 %"$gasrem_613", %"$gasmin_612"
  store i64 %"$consume_617", i64* @_gasrem, align 8
  %"$execptr_load_618" = load i8*, i8** @_execptr, align 8
  %"$s1_619" = load %String, %String* %s1, align 8
  %"$s2_620" = load %String, %String* %s2, align 8
  %"$eq_call_621" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_618", %String %"$s1_619", %String %"$s2_620"), !dbg !129
  store %TName_Bool* %"$eq_call_621", %TName_Bool** %b12, align 8, !dbg !129
  %"$gasrem_623" = load i64, i64* @_gasrem, align 8
  %"$gascmp_624" = icmp ugt i64 1, %"$gasrem_623"
  br i1 %"$gascmp_624", label %"$out_of_gas_625", label %"$have_gas_626"

"$out_of_gas_625":                                ; preds = %"$have_gas_616"
  call void @_out_of_gas()
  br label %"$have_gas_626"

"$have_gas_626":                                  ; preds = %"$out_of_gas_625", %"$have_gas_616"
  %"$consume_627" = sub i64 %"$gasrem_623", 1
  store i64 %"$consume_627", i64* @_gasrem, align 8
  %b13 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b13, metadata !130, metadata !DIExpression()), !dbg !131
  %"$_literal_cost_s1_628" = alloca %String, align 8
  %"$s1_629" = load %String, %String* %s1, align 8
  store %String %"$s1_629", %String* %"$_literal_cost_s1_628", align 8
  %"$$_literal_cost_s1_628_630" = bitcast %String* %"$_literal_cost_s1_628" to i8*
  %"$_literal_cost_call_631" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_65", i8* %"$$_literal_cost_s1_628_630")
  %"$_literal_cost_s11_632" = alloca %String, align 8
  %"$s11_633" = load %String, %String* %s11, align 8
  store %String %"$s11_633", %String* %"$_literal_cost_s11_632", align 8
  %"$$_literal_cost_s11_632_634" = bitcast %String* %"$_literal_cost_s11_632" to i8*
  %"$_literal_cost_call_635" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_65", i8* %"$$_literal_cost_s11_632_634")
  %"$gasmin_636" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_631", i64 %"$_literal_cost_call_635")
  %"$gasrem_637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_638" = icmp ugt i64 %"$gasmin_636", %"$gasrem_637"
  br i1 %"$gascmp_638", label %"$out_of_gas_639", label %"$have_gas_640"

"$out_of_gas_639":                                ; preds = %"$have_gas_626"
  call void @_out_of_gas()
  br label %"$have_gas_640"

"$have_gas_640":                                  ; preds = %"$out_of_gas_639", %"$have_gas_626"
  %"$consume_641" = sub i64 %"$gasrem_637", %"$gasmin_636"
  store i64 %"$consume_641", i64* @_gasrem, align 8
  %"$execptr_load_642" = load i8*, i8** @_execptr, align 8
  %"$s1_643" = load %String, %String* %s1, align 8
  %"$s11_644" = load %String, %String* %s11, align 8
  %"$eq_call_645" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_642", %String %"$s1_643", %String %"$s11_644"), !dbg !132
  store %TName_Bool* %"$eq_call_645", %TName_Bool** %b13, align 8, !dbg !132
  %"$gasrem_647" = load i64, i64* @_gasrem, align 8
  %"$gascmp_648" = icmp ugt i64 1, %"$gasrem_647"
  br i1 %"$gascmp_648", label %"$out_of_gas_649", label %"$have_gas_650"

"$out_of_gas_649":                                ; preds = %"$have_gas_640"
  call void @_out_of_gas()
  br label %"$have_gas_650"

"$have_gas_650":                                  ; preds = %"$out_of_gas_649", %"$have_gas_640"
  %"$consume_651" = sub i64 %"$gasrem_647", 1
  store i64 %"$consume_651", i64* @_gasrem, align 8
  %b14 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b14, metadata !133, metadata !DIExpression()), !dbg !134
  %"$gasrem_652" = load i64, i64* @_gasrem, align 8
  %"$gascmp_653" = icmp ugt i64 1, %"$gasrem_652"
  br i1 %"$gascmp_653", label %"$out_of_gas_654", label %"$have_gas_655"

"$out_of_gas_654":                                ; preds = %"$have_gas_650"
  call void @_out_of_gas()
  br label %"$have_gas_655"

"$have_gas_655":                                  ; preds = %"$out_of_gas_654", %"$have_gas_650"
  %"$consume_656" = sub i64 %"$gasrem_652", 1
  store i64 %"$consume_656", i64* @_gasrem, align 8
  %"$BoolUtils.andb_17" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_657" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_658" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_657", 0
  %"$BoolUtils.andb_envptr_659" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_657", 1
  %"$b9_660" = load %TName_Bool*, %TName_Bool** %b9, align 8
  %"$BoolUtils.andb_call_661" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_658"(i8* %"$BoolUtils.andb_envptr_659", %TName_Bool* %"$b9_660"), !dbg !135
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_661", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_17", align 8, !dbg !135
  %"$BoolUtils.andb_18" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_18", metadata !136, metadata !DIExpression()), !dbg !135
  %"$$BoolUtils.andb_17_662" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_17", align 8
  %"$$BoolUtils.andb_17_fptr_663" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_17_662", 0
  %"$$BoolUtils.andb_17_envptr_664" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_17_662", 1
  %"$b12_665" = load %TName_Bool*, %TName_Bool** %b12, align 8
  %"$$BoolUtils.andb_17_call_666" = call %TName_Bool* %"$$BoolUtils.andb_17_fptr_663"(i8* %"$$BoolUtils.andb_17_envptr_664", %TName_Bool* %"$b12_665"), !dbg !135
  store %TName_Bool* %"$$BoolUtils.andb_17_call_666", %TName_Bool** %"$BoolUtils.andb_18", align 8, !dbg !135
  %"$$BoolUtils.andb_18_667" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_18", align 8
  store %TName_Bool* %"$$BoolUtils.andb_18_667", %TName_Bool** %b14, align 8, !dbg !135
  %"$gasrem_668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_669" = icmp ugt i64 1, %"$gasrem_668"
  br i1 %"$gascmp_669", label %"$out_of_gas_670", label %"$have_gas_671"

"$out_of_gas_670":                                ; preds = %"$have_gas_655"
  call void @_out_of_gas()
  br label %"$have_gas_671"

"$have_gas_671":                                  ; preds = %"$out_of_gas_670", %"$have_gas_655"
  %"$consume_672" = sub i64 %"$gasrem_668", 1
  store i64 %"$consume_672", i64* @_gasrem, align 8
  %b15 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b15, metadata !137, metadata !DIExpression()), !dbg !138
  %"$gasrem_673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_674" = icmp ugt i64 1, %"$gasrem_673"
  br i1 %"$gascmp_674", label %"$out_of_gas_675", label %"$have_gas_676"

"$out_of_gas_675":                                ; preds = %"$have_gas_671"
  call void @_out_of_gas()
  br label %"$have_gas_676"

"$have_gas_676":                                  ; preds = %"$out_of_gas_675", %"$have_gas_671"
  %"$consume_677" = sub i64 %"$gasrem_673", 1
  store i64 %"$consume_677", i64* @_gasrem, align 8
  %"$BoolUtils.orb_19" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_678" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_679" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_678", 0
  %"$BoolUtils.orb_envptr_680" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_678", 1
  %"$b13_681" = load %TName_Bool*, %TName_Bool** %b13, align 8
  %"$BoolUtils.orb_call_682" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_679"(i8* %"$BoolUtils.orb_envptr_680", %TName_Bool* %"$b13_681"), !dbg !139
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_682", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_19", align 8, !dbg !139
  %"$BoolUtils.orb_20" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.orb_20", metadata !140, metadata !DIExpression()), !dbg !139
  %"$$BoolUtils.orb_19_683" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_19", align 8
  %"$$BoolUtils.orb_19_fptr_684" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_19_683", 0
  %"$$BoolUtils.orb_19_envptr_685" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_19_683", 1
  %"$b14_686" = load %TName_Bool*, %TName_Bool** %b14, align 8
  %"$$BoolUtils.orb_19_call_687" = call %TName_Bool* %"$$BoolUtils.orb_19_fptr_684"(i8* %"$$BoolUtils.orb_19_envptr_685", %TName_Bool* %"$b14_686"), !dbg !139
  store %TName_Bool* %"$$BoolUtils.orb_19_call_687", %TName_Bool** %"$BoolUtils.orb_20", align 8, !dbg !139
  %"$$BoolUtils.orb_20_688" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_20", align 8
  store %TName_Bool* %"$$BoolUtils.orb_20_688", %TName_Bool** %b15, align 8, !dbg !139
  %"$gasrem_689" = load i64, i64* @_gasrem, align 8
  %"$gascmp_690" = icmp ugt i64 1, %"$gasrem_689"
  br i1 %"$gascmp_690", label %"$out_of_gas_691", label %"$have_gas_692"

"$out_of_gas_691":                                ; preds = %"$have_gas_676"
  call void @_out_of_gas()
  br label %"$have_gas_692"

"$have_gas_692":                                  ; preds = %"$out_of_gas_691", %"$have_gas_676"
  %"$consume_693" = sub i64 %"$gasrem_689", 1
  store i64 %"$consume_693", i64* @_gasrem, align 8
  %bs1 = alloca [2 x i8], align 1
  call void @llvm.dbg.declare(metadata [2 x i8]* %bs1, metadata !141, metadata !DIExpression()), !dbg !143
  %"$gasrem_694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_695" = icmp ugt i64 1, %"$gasrem_694"
  br i1 %"$gascmp_695", label %"$out_of_gas_696", label %"$have_gas_697"

"$out_of_gas_696":                                ; preds = %"$have_gas_692"
  call void @_out_of_gas()
  br label %"$have_gas_697"

"$have_gas_697":                                  ; preds = %"$out_of_gas_696", %"$have_gas_692"
  %"$consume_698" = sub i64 %"$gasrem_694", 1
  store i64 %"$consume_698", i64* @_gasrem, align 8
  store [2 x i8] c"\00\FF", [2 x i8]* %bs1, align 1, !dbg !144
  %"$gasrem_699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_700" = icmp ugt i64 1, %"$gasrem_699"
  br i1 %"$gascmp_700", label %"$out_of_gas_701", label %"$have_gas_702"

"$out_of_gas_701":                                ; preds = %"$have_gas_697"
  call void @_out_of_gas()
  br label %"$have_gas_702"

"$have_gas_702":                                  ; preds = %"$out_of_gas_701", %"$have_gas_697"
  %"$consume_703" = sub i64 %"$gasrem_699", 1
  store i64 %"$consume_703", i64* @_gasrem, align 8
  %bs2 = alloca [2 x i8], align 1
  call void @llvm.dbg.declare(metadata [2 x i8]* %bs2, metadata !145, metadata !DIExpression()), !dbg !146
  %"$gasrem_704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_705" = icmp ugt i64 1, %"$gasrem_704"
  br i1 %"$gascmp_705", label %"$out_of_gas_706", label %"$have_gas_707"

"$out_of_gas_706":                                ; preds = %"$have_gas_702"
  call void @_out_of_gas()
  br label %"$have_gas_707"

"$have_gas_707":                                  ; preds = %"$out_of_gas_706", %"$have_gas_702"
  %"$consume_708" = sub i64 %"$gasrem_704", 1
  store i64 %"$consume_708", i64* @_gasrem, align 8
  store [2 x i8] c"\FF\00", [2 x i8]* %bs2, align 1, !dbg !147
  %"$gasrem_709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_710" = icmp ugt i64 1, %"$gasrem_709"
  br i1 %"$gascmp_710", label %"$out_of_gas_711", label %"$have_gas_712"

"$out_of_gas_711":                                ; preds = %"$have_gas_707"
  call void @_out_of_gas()
  br label %"$have_gas_712"

"$have_gas_712":                                  ; preds = %"$out_of_gas_711", %"$have_gas_707"
  %"$consume_713" = sub i64 %"$gasrem_709", 1
  store i64 %"$consume_713", i64* @_gasrem, align 8
  %bs11 = alloca [2 x i8], align 1
  call void @llvm.dbg.declare(metadata [2 x i8]* %bs11, metadata !148, metadata !DIExpression()), !dbg !149
  %"$gasrem_714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_715" = icmp ugt i64 1, %"$gasrem_714"
  br i1 %"$gascmp_715", label %"$out_of_gas_716", label %"$have_gas_717"

"$out_of_gas_716":                                ; preds = %"$have_gas_712"
  call void @_out_of_gas()
  br label %"$have_gas_717"

"$have_gas_717":                                  ; preds = %"$out_of_gas_716", %"$have_gas_712"
  %"$consume_718" = sub i64 %"$gasrem_714", 1
  store i64 %"$consume_718", i64* @_gasrem, align 8
  store [2 x i8] c"\00\FF", [2 x i8]* %bs11, align 1, !dbg !150
  %"$gasrem_719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_720" = icmp ugt i64 1, %"$gasrem_719"
  br i1 %"$gascmp_720", label %"$out_of_gas_721", label %"$have_gas_722"

"$out_of_gas_721":                                ; preds = %"$have_gas_717"
  call void @_out_of_gas()
  br label %"$have_gas_722"

"$have_gas_722":                                  ; preds = %"$out_of_gas_721", %"$have_gas_717"
  %"$consume_723" = sub i64 %"$gasrem_719", 1
  store i64 %"$consume_723", i64* @_gasrem, align 8
  %b16 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b16, metadata !151, metadata !DIExpression()), !dbg !152
  %"$gasrem_724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_725" = icmp ugt i64 2, %"$gasrem_724"
  br i1 %"$gascmp_725", label %"$out_of_gas_726", label %"$have_gas_727"

"$out_of_gas_726":                                ; preds = %"$have_gas_722"
  call void @_out_of_gas()
  br label %"$have_gas_727"

"$have_gas_727":                                  ; preds = %"$out_of_gas_726", %"$have_gas_722"
  %"$consume_728" = sub i64 %"$gasrem_724", 2
  store i64 %"$consume_728", i64* @_gasrem, align 8
  %"$execptr_load_729" = load i8*, i8** @_execptr, align 8
  %"$eq_bs1_730" = alloca [2 x i8], align 1
  %"$bs1_731" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_731", [2 x i8]* %"$eq_bs1_730", align 1
  %"$$eq_bs1_730_732" = bitcast [2 x i8]* %"$eq_bs1_730" to i8*
  %"$eq_bs2_733" = alloca [2 x i8], align 1
  %"$bs2_734" = load [2 x i8], [2 x i8]* %bs2, align 1
  store [2 x i8] %"$bs2_734", [2 x i8]* %"$eq_bs2_733", align 1
  %"$$eq_bs2_733_735" = bitcast [2 x i8]* %"$eq_bs2_733" to i8*
  %"$eq_call_736" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_729", i32 2, i8* %"$$eq_bs1_730_732", i8* %"$$eq_bs2_733_735"), !dbg !153
  store %TName_Bool* %"$eq_call_736", %TName_Bool** %b16, align 8, !dbg !153
  %"$gasrem_738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_739" = icmp ugt i64 1, %"$gasrem_738"
  br i1 %"$gascmp_739", label %"$out_of_gas_740", label %"$have_gas_741"

"$out_of_gas_740":                                ; preds = %"$have_gas_727"
  call void @_out_of_gas()
  br label %"$have_gas_741"

"$have_gas_741":                                  ; preds = %"$out_of_gas_740", %"$have_gas_727"
  %"$consume_742" = sub i64 %"$gasrem_738", 1
  store i64 %"$consume_742", i64* @_gasrem, align 8
  %b17 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b17, metadata !154, metadata !DIExpression()), !dbg !155
  %"$gasrem_743" = load i64, i64* @_gasrem, align 8
  %"$gascmp_744" = icmp ugt i64 2, %"$gasrem_743"
  br i1 %"$gascmp_744", label %"$out_of_gas_745", label %"$have_gas_746"

"$out_of_gas_745":                                ; preds = %"$have_gas_741"
  call void @_out_of_gas()
  br label %"$have_gas_746"

"$have_gas_746":                                  ; preds = %"$out_of_gas_745", %"$have_gas_741"
  %"$consume_747" = sub i64 %"$gasrem_743", 2
  store i64 %"$consume_747", i64* @_gasrem, align 8
  %"$execptr_load_748" = load i8*, i8** @_execptr, align 8
  %"$eq_bs1_749" = alloca [2 x i8], align 1
  %"$bs1_750" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_750", [2 x i8]* %"$eq_bs1_749", align 1
  %"$$eq_bs1_749_751" = bitcast [2 x i8]* %"$eq_bs1_749" to i8*
  %"$eq_bs11_752" = alloca [2 x i8], align 1
  %"$bs11_753" = load [2 x i8], [2 x i8]* %bs11, align 1
  store [2 x i8] %"$bs11_753", [2 x i8]* %"$eq_bs11_752", align 1
  %"$$eq_bs11_752_754" = bitcast [2 x i8]* %"$eq_bs11_752" to i8*
  %"$eq_call_755" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_748", i32 2, i8* %"$$eq_bs1_749_751", i8* %"$$eq_bs11_752_754"), !dbg !156
  store %TName_Bool* %"$eq_call_755", %TName_Bool** %b17, align 8, !dbg !156
  %"$gasrem_757" = load i64, i64* @_gasrem, align 8
  %"$gascmp_758" = icmp ugt i64 1, %"$gasrem_757"
  br i1 %"$gascmp_758", label %"$out_of_gas_759", label %"$have_gas_760"

"$out_of_gas_759":                                ; preds = %"$have_gas_746"
  call void @_out_of_gas()
  br label %"$have_gas_760"

"$have_gas_760":                                  ; preds = %"$out_of_gas_759", %"$have_gas_746"
  %"$consume_761" = sub i64 %"$gasrem_757", 1
  store i64 %"$consume_761", i64* @_gasrem, align 8
  %b18 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b18, metadata !157, metadata !DIExpression()), !dbg !158
  %"$gasrem_762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_763" = icmp ugt i64 1, %"$gasrem_762"
  br i1 %"$gascmp_763", label %"$out_of_gas_764", label %"$have_gas_765"

"$out_of_gas_764":                                ; preds = %"$have_gas_760"
  call void @_out_of_gas()
  br label %"$have_gas_765"

"$have_gas_765":                                  ; preds = %"$out_of_gas_764", %"$have_gas_760"
  %"$consume_766" = sub i64 %"$gasrem_762", 1
  store i64 %"$consume_766", i64* @_gasrem, align 8
  %"$BoolUtils.orb_21" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_767" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_768" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_767", 0
  %"$BoolUtils.orb_envptr_769" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_767", 1
  %"$b16_770" = load %TName_Bool*, %TName_Bool** %b16, align 8
  %"$BoolUtils.orb_call_771" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_768"(i8* %"$BoolUtils.orb_envptr_769", %TName_Bool* %"$b16_770"), !dbg !159
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_771", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_21", align 8, !dbg !159
  %"$BoolUtils.orb_22" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.orb_22", metadata !160, metadata !DIExpression()), !dbg !159
  %"$$BoolUtils.orb_21_772" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_21", align 8
  %"$$BoolUtils.orb_21_fptr_773" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_21_772", 0
  %"$$BoolUtils.orb_21_envptr_774" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_21_772", 1
  %"$b17_775" = load %TName_Bool*, %TName_Bool** %b17, align 8
  %"$$BoolUtils.orb_21_call_776" = call %TName_Bool* %"$$BoolUtils.orb_21_fptr_773"(i8* %"$$BoolUtils.orb_21_envptr_774", %TName_Bool* %"$b17_775"), !dbg !159
  store %TName_Bool* %"$$BoolUtils.orb_21_call_776", %TName_Bool** %"$BoolUtils.orb_22", align 8, !dbg !159
  %"$$BoolUtils.orb_22_777" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_22", align 8
  store %TName_Bool* %"$$BoolUtils.orb_22_777", %TName_Bool** %b18, align 8, !dbg !159
  %"$gasrem_778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_779" = icmp ugt i64 1, %"$gasrem_778"
  br i1 %"$gascmp_779", label %"$out_of_gas_780", label %"$have_gas_781"

"$out_of_gas_780":                                ; preds = %"$have_gas_765"
  call void @_out_of_gas()
  br label %"$have_gas_781"

"$have_gas_781":                                  ; preds = %"$out_of_gas_780", %"$have_gas_765"
  %"$consume_782" = sub i64 %"$gasrem_778", 1
  store i64 %"$consume_782", i64* @_gasrem, align 8
  %b19 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b19, metadata !161, metadata !DIExpression()), !dbg !162
  %"$gasrem_783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_784" = icmp ugt i64 1, %"$gasrem_783"
  br i1 %"$gascmp_784", label %"$out_of_gas_785", label %"$have_gas_786"

"$out_of_gas_785":                                ; preds = %"$have_gas_781"
  call void @_out_of_gas()
  br label %"$have_gas_786"

"$have_gas_786":                                  ; preds = %"$out_of_gas_785", %"$have_gas_781"
  %"$consume_787" = sub i64 %"$gasrem_783", 1
  store i64 %"$consume_787", i64* @_gasrem, align 8
  %"$BoolUtils.andb_23" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_788" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_789" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_788", 0
  %"$BoolUtils.andb_envptr_790" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_788", 1
  %"$b18_791" = load %TName_Bool*, %TName_Bool** %b18, align 8
  %"$BoolUtils.andb_call_792" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_789"(i8* %"$BoolUtils.andb_envptr_790", %TName_Bool* %"$b18_791"), !dbg !163
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_792", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_23", align 8, !dbg !163
  %"$BoolUtils.andb_24" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_24", metadata !164, metadata !DIExpression()), !dbg !163
  %"$$BoolUtils.andb_23_793" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_23", align 8
  %"$$BoolUtils.andb_23_fptr_794" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_23_793", 0
  %"$$BoolUtils.andb_23_envptr_795" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_23_793", 1
  %"$b15_796" = load %TName_Bool*, %TName_Bool** %b15, align 8
  %"$$BoolUtils.andb_23_call_797" = call %TName_Bool* %"$$BoolUtils.andb_23_fptr_794"(i8* %"$$BoolUtils.andb_23_envptr_795", %TName_Bool* %"$b15_796"), !dbg !163
  store %TName_Bool* %"$$BoolUtils.andb_23_call_797", %TName_Bool** %"$BoolUtils.andb_24", align 8, !dbg !163
  %"$$BoolUtils.andb_24_798" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_24", align 8
  store %TName_Bool* %"$$BoolUtils.andb_24_798", %TName_Bool** %b19, align 8, !dbg !163
  %"$gasrem_799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_800" = icmp ugt i64 1, %"$gasrem_799"
  br i1 %"$gascmp_800", label %"$out_of_gas_801", label %"$have_gas_802"

"$out_of_gas_801":                                ; preds = %"$have_gas_786"
  call void @_out_of_gas()
  br label %"$have_gas_802"

"$have_gas_802":                                  ; preds = %"$out_of_gas_801", %"$have_gas_786"
  %"$consume_803" = sub i64 %"$gasrem_799", 1
  store i64 %"$consume_803", i64* @_gasrem, align 8
  %bs3 = alloca [3 x i8], align 1
  call void @llvm.dbg.declare(metadata [3 x i8]* %bs3, metadata !165, metadata !DIExpression()), !dbg !167
  %"$gasrem_804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_805" = icmp ugt i64 1, %"$gasrem_804"
  br i1 %"$gascmp_805", label %"$out_of_gas_806", label %"$have_gas_807"

"$out_of_gas_806":                                ; preds = %"$have_gas_802"
  call void @_out_of_gas()
  br label %"$have_gas_807"

"$have_gas_807":                                  ; preds = %"$out_of_gas_806", %"$have_gas_802"
  %"$consume_808" = sub i64 %"$gasrem_804", 1
  store i64 %"$consume_808", i64* @_gasrem, align 8
  store [3 x i8] c"\0F\0F\0F", [3 x i8]* %bs3, align 1, !dbg !168
  %"$gasrem_809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_810" = icmp ugt i64 1, %"$gasrem_809"
  br i1 %"$gascmp_810", label %"$out_of_gas_811", label %"$have_gas_812"

"$out_of_gas_811":                                ; preds = %"$have_gas_807"
  call void @_out_of_gas()
  br label %"$have_gas_812"

"$have_gas_812":                                  ; preds = %"$out_of_gas_811", %"$have_gas_807"
  %"$consume_813" = sub i64 %"$gasrem_809", 1
  store i64 %"$consume_813", i64* @_gasrem, align 8
  %bs4 = alloca [3 x i8], align 1
  call void @llvm.dbg.declare(metadata [3 x i8]* %bs4, metadata !169, metadata !DIExpression()), !dbg !170
  %"$gasrem_814" = load i64, i64* @_gasrem, align 8
  %"$gascmp_815" = icmp ugt i64 1, %"$gasrem_814"
  br i1 %"$gascmp_815", label %"$out_of_gas_816", label %"$have_gas_817"

"$out_of_gas_816":                                ; preds = %"$have_gas_812"
  call void @_out_of_gas()
  br label %"$have_gas_817"

"$have_gas_817":                                  ; preds = %"$out_of_gas_816", %"$have_gas_812"
  %"$consume_818" = sub i64 %"$gasrem_814", 1
  store i64 %"$consume_818", i64* @_gasrem, align 8
  store [3 x i8] c"\0F\0F\0E", [3 x i8]* %bs4, align 1, !dbg !171
  %"$gasrem_819" = load i64, i64* @_gasrem, align 8
  %"$gascmp_820" = icmp ugt i64 1, %"$gasrem_819"
  br i1 %"$gascmp_820", label %"$out_of_gas_821", label %"$have_gas_822"

"$out_of_gas_821":                                ; preds = %"$have_gas_817"
  call void @_out_of_gas()
  br label %"$have_gas_822"

"$have_gas_822":                                  ; preds = %"$out_of_gas_821", %"$have_gas_817"
  %"$consume_823" = sub i64 %"$gasrem_819", 1
  store i64 %"$consume_823", i64* @_gasrem, align 8
  %b20 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b20, metadata !172, metadata !DIExpression()), !dbg !173
  %"$gasrem_824" = load i64, i64* @_gasrem, align 8
  %"$gascmp_825" = icmp ugt i64 3, %"$gasrem_824"
  br i1 %"$gascmp_825", label %"$out_of_gas_826", label %"$have_gas_827"

"$out_of_gas_826":                                ; preds = %"$have_gas_822"
  call void @_out_of_gas()
  br label %"$have_gas_827"

"$have_gas_827":                                  ; preds = %"$out_of_gas_826", %"$have_gas_822"
  %"$consume_828" = sub i64 %"$gasrem_824", 3
  store i64 %"$consume_828", i64* @_gasrem, align 8
  %"$execptr_load_829" = load i8*, i8** @_execptr, align 8
  %"$eq_bs3_830" = alloca [3 x i8], align 1
  %"$bs3_831" = load [3 x i8], [3 x i8]* %bs3, align 1
  store [3 x i8] %"$bs3_831", [3 x i8]* %"$eq_bs3_830", align 1
  %"$$eq_bs3_830_832" = bitcast [3 x i8]* %"$eq_bs3_830" to i8*
  %"$eq_bs4_833" = alloca [3 x i8], align 1
  %"$bs4_834" = load [3 x i8], [3 x i8]* %bs4, align 1
  store [3 x i8] %"$bs4_834", [3 x i8]* %"$eq_bs4_833", align 1
  %"$$eq_bs4_833_835" = bitcast [3 x i8]* %"$eq_bs4_833" to i8*
  %"$eq_call_836" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_829", i32 3, i8* %"$$eq_bs3_830_832", i8* %"$$eq_bs4_833_835"), !dbg !174
  store %TName_Bool* %"$eq_call_836", %TName_Bool** %b20, align 8, !dbg !174
  %"$gasrem_838" = load i64, i64* @_gasrem, align 8
  %"$gascmp_839" = icmp ugt i64 1, %"$gasrem_838"
  br i1 %"$gascmp_839", label %"$out_of_gas_840", label %"$have_gas_841"

"$out_of_gas_840":                                ; preds = %"$have_gas_827"
  call void @_out_of_gas()
  br label %"$have_gas_841"

"$have_gas_841":                                  ; preds = %"$out_of_gas_840", %"$have_gas_827"
  %"$consume_842" = sub i64 %"$gasrem_838", 1
  store i64 %"$consume_842", i64* @_gasrem, align 8
  %b21 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b21, metadata !175, metadata !DIExpression()), !dbg !176
  %"$gasrem_843" = load i64, i64* @_gasrem, align 8
  %"$gascmp_844" = icmp ugt i64 1, %"$gasrem_843"
  br i1 %"$gascmp_844", label %"$out_of_gas_845", label %"$have_gas_846"

"$out_of_gas_845":                                ; preds = %"$have_gas_841"
  call void @_out_of_gas()
  br label %"$have_gas_846"

"$have_gas_846":                                  ; preds = %"$out_of_gas_845", %"$have_gas_841"
  %"$consume_847" = sub i64 %"$gasrem_843", 1
  store i64 %"$consume_847", i64* @_gasrem, align 8
  %"$BoolUtils.negb_25" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.negb_25", metadata !177, metadata !DIExpression()), !dbg !178
  %"$BoolUtils.negb_848" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_849" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_848", 0
  %"$BoolUtils.negb_envptr_850" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_848", 1
  %"$b20_851" = load %TName_Bool*, %TName_Bool** %b20, align 8
  %"$BoolUtils.negb_call_852" = call %TName_Bool* %"$BoolUtils.negb_fptr_849"(i8* %"$BoolUtils.negb_envptr_850", %TName_Bool* %"$b20_851"), !dbg !178
  store %TName_Bool* %"$BoolUtils.negb_call_852", %TName_Bool** %"$BoolUtils.negb_25", align 8, !dbg !178
  %"$$BoolUtils.negb_25_853" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_25", align 8
  store %TName_Bool* %"$$BoolUtils.negb_25_853", %TName_Bool** %b21, align 8, !dbg !178
  %"$gasrem_854" = load i64, i64* @_gasrem, align 8
  %"$gascmp_855" = icmp ugt i64 1, %"$gasrem_854"
  br i1 %"$gascmp_855", label %"$out_of_gas_856", label %"$have_gas_857"

"$out_of_gas_856":                                ; preds = %"$have_gas_846"
  call void @_out_of_gas()
  br label %"$have_gas_857"

"$have_gas_857":                                  ; preds = %"$out_of_gas_856", %"$have_gas_846"
  %"$consume_858" = sub i64 %"$gasrem_854", 1
  store i64 %"$consume_858", i64* @_gasrem, align 8
  %b22 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b22, metadata !179, metadata !DIExpression()), !dbg !180
  %"$gasrem_859" = load i64, i64* @_gasrem, align 8
  %"$gascmp_860" = icmp ugt i64 1, %"$gasrem_859"
  br i1 %"$gascmp_860", label %"$out_of_gas_861", label %"$have_gas_862"

"$out_of_gas_861":                                ; preds = %"$have_gas_857"
  call void @_out_of_gas()
  br label %"$have_gas_862"

"$have_gas_862":                                  ; preds = %"$out_of_gas_861", %"$have_gas_857"
  %"$consume_863" = sub i64 %"$gasrem_859", 1
  store i64 %"$consume_863", i64* @_gasrem, align 8
  %"$BoolUtils.andb_26" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_864" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_865" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_864", 0
  %"$BoolUtils.andb_envptr_866" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_864", 1
  %"$b19_867" = load %TName_Bool*, %TName_Bool** %b19, align 8
  %"$BoolUtils.andb_call_868" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_865"(i8* %"$BoolUtils.andb_envptr_866", %TName_Bool* %"$b19_867"), !dbg !181
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_868", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_26", align 8, !dbg !181
  %"$BoolUtils.andb_27" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_27", metadata !182, metadata !DIExpression()), !dbg !181
  %"$$BoolUtils.andb_26_869" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_26", align 8
  %"$$BoolUtils.andb_26_fptr_870" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_26_869", 0
  %"$$BoolUtils.andb_26_envptr_871" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_26_869", 1
  %"$b21_872" = load %TName_Bool*, %TName_Bool** %b21, align 8
  %"$$BoolUtils.andb_26_call_873" = call %TName_Bool* %"$$BoolUtils.andb_26_fptr_870"(i8* %"$$BoolUtils.andb_26_envptr_871", %TName_Bool* %"$b21_872"), !dbg !181
  store %TName_Bool* %"$$BoolUtils.andb_26_call_873", %TName_Bool** %"$BoolUtils.andb_27", align 8, !dbg !181
  %"$$BoolUtils.andb_27_874" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_27", align 8
  store %TName_Bool* %"$$BoolUtils.andb_27_874", %TName_Bool** %b22, align 8, !dbg !181
  %"$gasrem_875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_876" = icmp ugt i64 1, %"$gasrem_875"
  br i1 %"$gascmp_876", label %"$out_of_gas_877", label %"$have_gas_878"

"$out_of_gas_877":                                ; preds = %"$have_gas_862"
  call void @_out_of_gas()
  br label %"$have_gas_878"

"$have_gas_878":                                  ; preds = %"$out_of_gas_877", %"$have_gas_862"
  %"$consume_879" = sub i64 %"$gasrem_875", 1
  store i64 %"$consume_879", i64* @_gasrem, align 8
  %"$bs11_6" = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %"$bs11_6", metadata !183, metadata !DIExpression()), !dbg !185
  %"$gasrem_880" = load i64, i64* @_gasrem, align 8
  %"$gascmp_881" = icmp ugt i64 2, %"$gasrem_880"
  br i1 %"$gascmp_881", label %"$out_of_gas_882", label %"$have_gas_883"

"$out_of_gas_882":                                ; preds = %"$have_gas_878"
  call void @_out_of_gas()
  br label %"$have_gas_883"

"$have_gas_883":                                  ; preds = %"$out_of_gas_882", %"$have_gas_878"
  %"$consume_884" = sub i64 %"$gasrem_880", 2
  store i64 %"$consume_884", i64* @_gasrem, align 8
  %"$execptr_load_885" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bs1_886" = alloca [2 x i8], align 1
  %"$bs1_887" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_887", [2 x i8]* %"$to_bystr_bs1_886", align 1
  %"$$to_bystr_bs1_886_888" = bitcast [2 x i8]* %"$to_bystr_bs1_886" to i8*
  %"$to_bystr_call_889" = call %Bystr @_to_bystr(i8* %"$execptr_load_885", i32 2, i8* %"$$to_bystr_bs1_886_888"), !dbg !186
  store %Bystr %"$to_bystr_call_889", %Bystr* %"$bs11_6", align 8, !dbg !186
  %"$gasrem_890" = load i64, i64* @_gasrem, align 8
  %"$gascmp_891" = icmp ugt i64 1, %"$gasrem_890"
  br i1 %"$gascmp_891", label %"$out_of_gas_892", label %"$have_gas_893"

"$out_of_gas_892":                                ; preds = %"$have_gas_883"
  call void @_out_of_gas()
  br label %"$have_gas_893"

"$have_gas_893":                                  ; preds = %"$out_of_gas_892", %"$have_gas_883"
  %"$consume_894" = sub i64 %"$gasrem_890", 1
  store i64 %"$consume_894", i64* @_gasrem, align 8
  %bs22 = alloca %Bystr, align 8
  call void @llvm.dbg.declare(metadata %Bystr* %bs22, metadata !187, metadata !DIExpression()), !dbg !188
  %"$gasrem_895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_896" = icmp ugt i64 2, %"$gasrem_895"
  br i1 %"$gascmp_896", label %"$out_of_gas_897", label %"$have_gas_898"

"$out_of_gas_897":                                ; preds = %"$have_gas_893"
  call void @_out_of_gas()
  br label %"$have_gas_898"

"$have_gas_898":                                  ; preds = %"$out_of_gas_897", %"$have_gas_893"
  %"$consume_899" = sub i64 %"$gasrem_895", 2
  store i64 %"$consume_899", i64* @_gasrem, align 8
  %"$execptr_load_900" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bs2_901" = alloca [2 x i8], align 1
  %"$bs2_902" = load [2 x i8], [2 x i8]* %bs2, align 1
  store [2 x i8] %"$bs2_902", [2 x i8]* %"$to_bystr_bs2_901", align 1
  %"$$to_bystr_bs2_901_903" = bitcast [2 x i8]* %"$to_bystr_bs2_901" to i8*
  %"$to_bystr_call_904" = call %Bystr @_to_bystr(i8* %"$execptr_load_900", i32 2, i8* %"$$to_bystr_bs2_901_903"), !dbg !189
  store %Bystr %"$to_bystr_call_904", %Bystr* %bs22, align 8, !dbg !189
  %"$gasrem_905" = load i64, i64* @_gasrem, align 8
  %"$gascmp_906" = icmp ugt i64 1, %"$gasrem_905"
  br i1 %"$gascmp_906", label %"$out_of_gas_907", label %"$have_gas_908"

"$out_of_gas_907":                                ; preds = %"$have_gas_898"
  call void @_out_of_gas()
  br label %"$have_gas_908"

"$have_gas_908":                                  ; preds = %"$out_of_gas_907", %"$have_gas_898"
  %"$consume_909" = sub i64 %"$gasrem_905", 1
  store i64 %"$consume_909", i64* @_gasrem, align 8
  %b23 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b23, metadata !190, metadata !DIExpression()), !dbg !191
  %"$_literal_cost_$bs11_6_910" = alloca %Bystr, align 8
  %"$$bs11_6_911" = load %Bystr, %Bystr* %"$bs11_6", align 8
  store %Bystr %"$$bs11_6_911", %Bystr* %"$_literal_cost_$bs11_6_910", align 8
  %"$$_literal_cost_$bs11_6_910_912" = bitcast %Bystr* %"$_literal_cost_$bs11_6_910" to i8*
  %"$_literal_cost_call_913" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_77", i8* %"$$_literal_cost_$bs11_6_910_912")
  %"$gasrem_914" = load i64, i64* @_gasrem, align 8
  %"$gascmp_915" = icmp ugt i64 %"$_literal_cost_call_913", %"$gasrem_914"
  br i1 %"$gascmp_915", label %"$out_of_gas_916", label %"$have_gas_917"

"$out_of_gas_916":                                ; preds = %"$have_gas_908"
  call void @_out_of_gas()
  br label %"$have_gas_917"

"$have_gas_917":                                  ; preds = %"$out_of_gas_916", %"$have_gas_908"
  %"$consume_918" = sub i64 %"$gasrem_914", %"$_literal_cost_call_913"
  store i64 %"$consume_918", i64* @_gasrem, align 8
  %"$execptr_load_919" = load i8*, i8** @_execptr, align 8
  %"$$bs11_6_920" = load %Bystr, %Bystr* %"$bs11_6", align 8
  %"$bs22_921" = load %Bystr, %Bystr* %bs22, align 8
  %"$eq_call_922" = call %TName_Bool* @_eq_ByStr(i8* %"$execptr_load_919", %Bystr %"$$bs11_6_920", %Bystr %"$bs22_921"), !dbg !192
  store %TName_Bool* %"$eq_call_922", %TName_Bool** %b23, align 8, !dbg !192
  %"$gasrem_924" = load i64, i64* @_gasrem, align 8
  %"$gascmp_925" = icmp ugt i64 1, %"$gasrem_924"
  br i1 %"$gascmp_925", label %"$out_of_gas_926", label %"$have_gas_927"

"$out_of_gas_926":                                ; preds = %"$have_gas_917"
  call void @_out_of_gas()
  br label %"$have_gas_927"

"$have_gas_927":                                  ; preds = %"$out_of_gas_926", %"$have_gas_917"
  %"$consume_928" = sub i64 %"$gasrem_924", 1
  store i64 %"$consume_928", i64* @_gasrem, align 8
  %b24 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b24, metadata !193, metadata !DIExpression()), !dbg !194
  %"$gasrem_929" = load i64, i64* @_gasrem, align 8
  %"$gascmp_930" = icmp ugt i64 1, %"$gasrem_929"
  br i1 %"$gascmp_930", label %"$out_of_gas_931", label %"$have_gas_932"

"$out_of_gas_931":                                ; preds = %"$have_gas_927"
  call void @_out_of_gas()
  br label %"$have_gas_932"

"$have_gas_932":                                  ; preds = %"$out_of_gas_931", %"$have_gas_927"
  %"$consume_933" = sub i64 %"$gasrem_929", 1
  store i64 %"$consume_933", i64* @_gasrem, align 8
  %"$BoolUtils.negb_28" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.negb_28", metadata !195, metadata !DIExpression()), !dbg !196
  %"$BoolUtils.negb_934" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_935" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_934", 0
  %"$BoolUtils.negb_envptr_936" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_934", 1
  %"$b23_937" = load %TName_Bool*, %TName_Bool** %b23, align 8
  %"$BoolUtils.negb_call_938" = call %TName_Bool* %"$BoolUtils.negb_fptr_935"(i8* %"$BoolUtils.negb_envptr_936", %TName_Bool* %"$b23_937"), !dbg !196
  store %TName_Bool* %"$BoolUtils.negb_call_938", %TName_Bool** %"$BoolUtils.negb_28", align 8, !dbg !196
  %"$$BoolUtils.negb_28_939" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_28", align 8
  store %TName_Bool* %"$$BoolUtils.negb_28_939", %TName_Bool** %b24, align 8, !dbg !196
  %"$gasrem_940" = load i64, i64* @_gasrem, align 8
  %"$gascmp_941" = icmp ugt i64 1, %"$gasrem_940"
  br i1 %"$gascmp_941", label %"$out_of_gas_942", label %"$have_gas_943"

"$out_of_gas_942":                                ; preds = %"$have_gas_932"
  call void @_out_of_gas()
  br label %"$have_gas_943"

"$have_gas_943":                                  ; preds = %"$out_of_gas_942", %"$have_gas_932"
  %"$consume_944" = sub i64 %"$gasrem_940", 1
  store i64 %"$consume_944", i64* @_gasrem, align 8
  %b25 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b25, metadata !197, metadata !DIExpression()), !dbg !198
  %"$gasrem_945" = load i64, i64* @_gasrem, align 8
  %"$gascmp_946" = icmp ugt i64 1, %"$gasrem_945"
  br i1 %"$gascmp_946", label %"$out_of_gas_947", label %"$have_gas_948"

"$out_of_gas_947":                                ; preds = %"$have_gas_943"
  call void @_out_of_gas()
  br label %"$have_gas_948"

"$have_gas_948":                                  ; preds = %"$out_of_gas_947", %"$have_gas_943"
  %"$consume_949" = sub i64 %"$gasrem_945", 1
  store i64 %"$consume_949", i64* @_gasrem, align 8
  %"$BoolUtils.andb_29" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_950" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_951" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_950", 0
  %"$BoolUtils.andb_envptr_952" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_950", 1
  %"$b22_953" = load %TName_Bool*, %TName_Bool** %b22, align 8
  %"$BoolUtils.andb_call_954" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_951"(i8* %"$BoolUtils.andb_envptr_952", %TName_Bool* %"$b22_953"), !dbg !199
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_954", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_29", align 8, !dbg !199
  %"$BoolUtils.andb_30" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_30", metadata !200, metadata !DIExpression()), !dbg !199
  %"$$BoolUtils.andb_29_955" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_29", align 8
  %"$$BoolUtils.andb_29_fptr_956" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_29_955", 0
  %"$$BoolUtils.andb_29_envptr_957" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_29_955", 1
  %"$b24_958" = load %TName_Bool*, %TName_Bool** %b24, align 8
  %"$$BoolUtils.andb_29_call_959" = call %TName_Bool* %"$$BoolUtils.andb_29_fptr_956"(i8* %"$$BoolUtils.andb_29_envptr_957", %TName_Bool* %"$b24_958"), !dbg !199
  store %TName_Bool* %"$$BoolUtils.andb_29_call_959", %TName_Bool** %"$BoolUtils.andb_30", align 8, !dbg !199
  %"$$BoolUtils.andb_30_960" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_30", align 8
  store %TName_Bool* %"$$BoolUtils.andb_30_960", %TName_Bool** %b25, align 8, !dbg !199
  %"$gasrem_961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_962" = icmp ugt i64 1, %"$gasrem_961"
  br i1 %"$gascmp_962", label %"$out_of_gas_963", label %"$have_gas_964"

"$out_of_gas_963":                                ; preds = %"$have_gas_948"
  call void @_out_of_gas()
  br label %"$have_gas_964"

"$have_gas_964":                                  ; preds = %"$out_of_gas_963", %"$have_gas_948"
  %"$consume_965" = sub i64 %"$gasrem_961", 1
  store i64 %"$consume_965", i64* @_gasrem, align 8
  %bn1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %bn1, metadata !201, metadata !DIExpression()), !dbg !204
  %"$gasrem_966" = load i64, i64* @_gasrem, align 8
  %"$gascmp_967" = icmp ugt i64 1, %"$gasrem_966"
  br i1 %"$gascmp_967", label %"$out_of_gas_968", label %"$have_gas_969"

"$out_of_gas_968":                                ; preds = %"$have_gas_964"
  call void @_out_of_gas()
  br label %"$have_gas_969"

"$have_gas_969":                                  ; preds = %"$out_of_gas_968", %"$have_gas_964"
  %"$consume_970" = sub i64 %"$gasrem_966", 1
  store i64 %"$consume_970", i64* @_gasrem, align 8
  %"$execptr_load_972" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_973" = call i8* @_new_bnum(i8* %"$execptr_load_972", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_971", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_973", i8** %bn1, align 8, !dbg !205
  %"$gasrem_975" = load i64, i64* @_gasrem, align 8
  %"$gascmp_976" = icmp ugt i64 1, %"$gasrem_975"
  br i1 %"$gascmp_976", label %"$out_of_gas_977", label %"$have_gas_978"

"$out_of_gas_977":                                ; preds = %"$have_gas_969"
  call void @_out_of_gas()
  br label %"$have_gas_978"

"$have_gas_978":                                  ; preds = %"$out_of_gas_977", %"$have_gas_969"
  %"$consume_979" = sub i64 %"$gasrem_975", 1
  store i64 %"$consume_979", i64* @_gasrem, align 8
  %bn2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %bn2, metadata !206, metadata !DIExpression()), !dbg !207
  %"$gasrem_980" = load i64, i64* @_gasrem, align 8
  %"$gascmp_981" = icmp ugt i64 1, %"$gasrem_980"
  br i1 %"$gascmp_981", label %"$out_of_gas_982", label %"$have_gas_983"

"$out_of_gas_982":                                ; preds = %"$have_gas_978"
  call void @_out_of_gas()
  br label %"$have_gas_983"

"$have_gas_983":                                  ; preds = %"$out_of_gas_982", %"$have_gas_978"
  %"$consume_984" = sub i64 %"$gasrem_980", 1
  store i64 %"$consume_984", i64* @_gasrem, align 8
  %"$execptr_load_986" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_987" = call i8* @_new_bnum(i8* %"$execptr_load_986", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_985", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_987", i8** %bn2, align 8, !dbg !208
  %"$gasrem_989" = load i64, i64* @_gasrem, align 8
  %"$gascmp_990" = icmp ugt i64 1, %"$gasrem_989"
  br i1 %"$gascmp_990", label %"$out_of_gas_991", label %"$have_gas_992"

"$out_of_gas_991":                                ; preds = %"$have_gas_983"
  call void @_out_of_gas()
  br label %"$have_gas_992"

"$have_gas_992":                                  ; preds = %"$out_of_gas_991", %"$have_gas_983"
  %"$consume_993" = sub i64 %"$gasrem_989", 1
  store i64 %"$consume_993", i64* @_gasrem, align 8
  %bn3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %bn3, metadata !209, metadata !DIExpression()), !dbg !210
  %"$gasrem_994" = load i64, i64* @_gasrem, align 8
  %"$gascmp_995" = icmp ugt i64 1, %"$gasrem_994"
  br i1 %"$gascmp_995", label %"$out_of_gas_996", label %"$have_gas_997"

"$out_of_gas_996":                                ; preds = %"$have_gas_992"
  call void @_out_of_gas()
  br label %"$have_gas_997"

"$have_gas_997":                                  ; preds = %"$out_of_gas_996", %"$have_gas_992"
  %"$consume_998" = sub i64 %"$gasrem_994", 1
  store i64 %"$consume_998", i64* @_gasrem, align 8
  %"$execptr_load_1000" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_1001" = call i8* @_new_bnum(i8* %"$execptr_load_1000", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_999", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_1001", i8** %bn3, align 8, !dbg !211
  %"$gasrem_1003" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1004" = icmp ugt i64 1, %"$gasrem_1003"
  br i1 %"$gascmp_1004", label %"$out_of_gas_1005", label %"$have_gas_1006"

"$out_of_gas_1005":                               ; preds = %"$have_gas_997"
  call void @_out_of_gas()
  br label %"$have_gas_1006"

"$have_gas_1006":                                 ; preds = %"$out_of_gas_1005", %"$have_gas_997"
  %"$consume_1007" = sub i64 %"$gasrem_1003", 1
  store i64 %"$consume_1007", i64* @_gasrem, align 8
  %b26 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b26, metadata !212, metadata !DIExpression()), !dbg !213
  %"$gasrem_1008" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1009" = icmp ugt i64 32, %"$gasrem_1008"
  br i1 %"$gascmp_1009", label %"$out_of_gas_1010", label %"$have_gas_1011"

"$out_of_gas_1010":                               ; preds = %"$have_gas_1006"
  call void @_out_of_gas()
  br label %"$have_gas_1011"

"$have_gas_1011":                                 ; preds = %"$out_of_gas_1010", %"$have_gas_1006"
  %"$consume_1012" = sub i64 %"$gasrem_1008", 32
  store i64 %"$consume_1012", i64* @_gasrem, align 8
  %"$execptr_load_1013" = load i8*, i8** @_execptr, align 8
  %"$bn1_1014" = load i8*, i8** %bn1, align 8
  %"$bn2_1015" = load i8*, i8** %bn2, align 8
  %"$eq_call_1016" = call %TName_Bool* @_eq_BNum(i8* %"$execptr_load_1013", i8* %"$bn1_1014", i8* %"$bn2_1015"), !dbg !214
  store %TName_Bool* %"$eq_call_1016", %TName_Bool** %b26, align 8, !dbg !214
  %"$gasrem_1018" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1019" = icmp ugt i64 1, %"$gasrem_1018"
  br i1 %"$gascmp_1019", label %"$out_of_gas_1020", label %"$have_gas_1021"

"$out_of_gas_1020":                               ; preds = %"$have_gas_1011"
  call void @_out_of_gas()
  br label %"$have_gas_1021"

"$have_gas_1021":                                 ; preds = %"$out_of_gas_1020", %"$have_gas_1011"
  %"$consume_1022" = sub i64 %"$gasrem_1018", 1
  store i64 %"$consume_1022", i64* @_gasrem, align 8
  %b27 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b27, metadata !215, metadata !DIExpression()), !dbg !216
  %"$gasrem_1023" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1024" = icmp ugt i64 1, %"$gasrem_1023"
  br i1 %"$gascmp_1024", label %"$out_of_gas_1025", label %"$have_gas_1026"

"$out_of_gas_1025":                               ; preds = %"$have_gas_1021"
  call void @_out_of_gas()
  br label %"$have_gas_1026"

"$have_gas_1026":                                 ; preds = %"$out_of_gas_1025", %"$have_gas_1021"
  %"$consume_1027" = sub i64 %"$gasrem_1023", 1
  store i64 %"$consume_1027", i64* @_gasrem, align 8
  %"$BoolUtils.negb_31" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.negb_31", metadata !217, metadata !DIExpression()), !dbg !218
  %"$BoolUtils.negb_1028" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_1029" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1028", 0
  %"$BoolUtils.negb_envptr_1030" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_1028", 1
  %"$b26_1031" = load %TName_Bool*, %TName_Bool** %b26, align 8
  %"$BoolUtils.negb_call_1032" = call %TName_Bool* %"$BoolUtils.negb_fptr_1029"(i8* %"$BoolUtils.negb_envptr_1030", %TName_Bool* %"$b26_1031"), !dbg !218
  store %TName_Bool* %"$BoolUtils.negb_call_1032", %TName_Bool** %"$BoolUtils.negb_31", align 8, !dbg !218
  %"$$BoolUtils.negb_31_1033" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_31", align 8
  store %TName_Bool* %"$$BoolUtils.negb_31_1033", %TName_Bool** %b27, align 8, !dbg !218
  %"$gasrem_1034" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1035" = icmp ugt i64 1, %"$gasrem_1034"
  br i1 %"$gascmp_1035", label %"$out_of_gas_1036", label %"$have_gas_1037"

"$out_of_gas_1036":                               ; preds = %"$have_gas_1026"
  call void @_out_of_gas()
  br label %"$have_gas_1037"

"$have_gas_1037":                                 ; preds = %"$out_of_gas_1036", %"$have_gas_1026"
  %"$consume_1038" = sub i64 %"$gasrem_1034", 1
  store i64 %"$consume_1038", i64* @_gasrem, align 8
  %b28 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b28, metadata !219, metadata !DIExpression()), !dbg !220
  %"$gasrem_1039" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1040" = icmp ugt i64 32, %"$gasrem_1039"
  br i1 %"$gascmp_1040", label %"$out_of_gas_1041", label %"$have_gas_1042"

"$out_of_gas_1041":                               ; preds = %"$have_gas_1037"
  call void @_out_of_gas()
  br label %"$have_gas_1042"

"$have_gas_1042":                                 ; preds = %"$out_of_gas_1041", %"$have_gas_1037"
  %"$consume_1043" = sub i64 %"$gasrem_1039", 32
  store i64 %"$consume_1043", i64* @_gasrem, align 8
  %"$execptr_load_1044" = load i8*, i8** @_execptr, align 8
  %"$bn1_1045" = load i8*, i8** %bn1, align 8
  %"$bn3_1046" = load i8*, i8** %bn3, align 8
  %"$eq_call_1047" = call %TName_Bool* @_eq_BNum(i8* %"$execptr_load_1044", i8* %"$bn1_1045", i8* %"$bn3_1046"), !dbg !221
  store %TName_Bool* %"$eq_call_1047", %TName_Bool** %b28, align 8, !dbg !221
  %"$gasrem_1049" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1050" = icmp ugt i64 1, %"$gasrem_1049"
  br i1 %"$gascmp_1050", label %"$out_of_gas_1051", label %"$have_gas_1052"

"$out_of_gas_1051":                               ; preds = %"$have_gas_1042"
  call void @_out_of_gas()
  br label %"$have_gas_1052"

"$have_gas_1052":                                 ; preds = %"$out_of_gas_1051", %"$have_gas_1042"
  %"$consume_1053" = sub i64 %"$gasrem_1049", 1
  store i64 %"$consume_1053", i64* @_gasrem, align 8
  %b29 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b29, metadata !222, metadata !DIExpression()), !dbg !223
  %"$gasrem_1054" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1055" = icmp ugt i64 1, %"$gasrem_1054"
  br i1 %"$gascmp_1055", label %"$out_of_gas_1056", label %"$have_gas_1057"

"$out_of_gas_1056":                               ; preds = %"$have_gas_1052"
  call void @_out_of_gas()
  br label %"$have_gas_1057"

"$have_gas_1057":                                 ; preds = %"$out_of_gas_1056", %"$have_gas_1052"
  %"$consume_1058" = sub i64 %"$gasrem_1054", 1
  store i64 %"$consume_1058", i64* @_gasrem, align 8
  %"$BoolUtils.andb_32" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1059" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1060" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1059", 0
  %"$BoolUtils.andb_envptr_1061" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1059", 1
  %"$b27_1062" = load %TName_Bool*, %TName_Bool** %b27, align 8
  %"$BoolUtils.andb_call_1063" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1060"(i8* %"$BoolUtils.andb_envptr_1061", %TName_Bool* %"$b27_1062"), !dbg !224
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1063", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_32", align 8, !dbg !224
  %"$BoolUtils.andb_33" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_33", metadata !225, metadata !DIExpression()), !dbg !224
  %"$$BoolUtils.andb_32_1064" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_32", align 8
  %"$$BoolUtils.andb_32_fptr_1065" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_32_1064", 0
  %"$$BoolUtils.andb_32_envptr_1066" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_32_1064", 1
  %"$b28_1067" = load %TName_Bool*, %TName_Bool** %b28, align 8
  %"$$BoolUtils.andb_32_call_1068" = call %TName_Bool* %"$$BoolUtils.andb_32_fptr_1065"(i8* %"$$BoolUtils.andb_32_envptr_1066", %TName_Bool* %"$b28_1067"), !dbg !224
  store %TName_Bool* %"$$BoolUtils.andb_32_call_1068", %TName_Bool** %"$BoolUtils.andb_33", align 8, !dbg !224
  %"$$BoolUtils.andb_33_1069" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_33", align 8
  store %TName_Bool* %"$$BoolUtils.andb_33_1069", %TName_Bool** %b29, align 8, !dbg !224
  %"$gasrem_1070" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1071" = icmp ugt i64 1, %"$gasrem_1070"
  br i1 %"$gascmp_1071", label %"$out_of_gas_1072", label %"$have_gas_1073"

"$out_of_gas_1072":                               ; preds = %"$have_gas_1057"
  call void @_out_of_gas()
  br label %"$have_gas_1073"

"$have_gas_1073":                                 ; preds = %"$out_of_gas_1072", %"$have_gas_1057"
  %"$consume_1074" = sub i64 %"$gasrem_1070", 1
  store i64 %"$consume_1074", i64* @_gasrem, align 8
  %"$BoolUtils.andb_34" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1075" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1076" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1075", 0
  %"$BoolUtils.andb_envptr_1077" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1075", 1
  %"$b25_1078" = load %TName_Bool*, %TName_Bool** %b25, align 8
  %"$BoolUtils.andb_call_1079" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1076"(i8* %"$BoolUtils.andb_envptr_1077", %TName_Bool* %"$b25_1078"), !dbg !226
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1079", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_34", align 8, !dbg !226
  %"$BoolUtils.andb_35" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_35", metadata !227, metadata !DIExpression()), !dbg !226
  %"$$BoolUtils.andb_34_1080" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_34", align 8
  %"$$BoolUtils.andb_34_fptr_1081" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_34_1080", 0
  %"$$BoolUtils.andb_34_envptr_1082" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_34_1080", 1
  %"$b29_1083" = load %TName_Bool*, %TName_Bool** %b29, align 8
  %"$$BoolUtils.andb_34_call_1084" = call %TName_Bool* %"$$BoolUtils.andb_34_fptr_1081"(i8* %"$$BoolUtils.andb_34_envptr_1082", %TName_Bool* %"$b29_1083"), !dbg !226
  store %TName_Bool* %"$$BoolUtils.andb_34_call_1084", %TName_Bool** %"$BoolUtils.andb_35", align 8, !dbg !226
  %"$$BoolUtils.andb_35_1085" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_35", align 8
  store %TName_Bool* %"$$BoolUtils.andb_35_1085", %TName_Bool** %"$expr_46", align 8, !dbg !226
  %"$$expr_46_1086" = load %TName_Bool*, %TName_Bool** %"$expr_46", align 8
  ret %TName_Bool* %"$$expr_46_1086"
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
  %"$exprval_1087" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1088" = bitcast %TName_Bool* %"$exprval_1087" to i8*
  %"$execptr_load_1089" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1089", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_85", i8* %"$memvoidcast_1088")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_eq.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_36", linkageName: "$fundef_36", scope: !4, file: !4, line: 22, type: !5, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocalVariable(name: "b", scope: !3, file: !4, line: 21, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !11, size: 8, align: 8, dwarfAddressSpace: 0)
!11 = !DIBasicType(name: "Bool", size: 8)
!12 = !DILocation(line: 21, column: 8, scope: !3)
!13 = !DILocalVariable(name: "$retval_37", scope: !3, file: !4, line: 22, type: !10)
!14 = !DILocation(line: 22, column: 5, scope: !3)
!15 = !DILocation(line: 23, column: 15, scope: !16)
!16 = distinct !DILexicalBlock(scope: !17, file: !4, line: 23, column: 7)
!17 = distinct !DILexicalBlock(scope: !3, file: !4, line: 22, column: 5)
!18 = !DILocation(line: 24, column: 16, scope: !19)
!19 = distinct !DILexicalBlock(scope: !17, file: !4, line: 24, column: 7)
!20 = distinct !DISubprogram(name: "$fundef_40", linkageName: "$fundef_40", scope: !4, file: !4, line: 15, type: !5, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!21 = !DILocalVariable(name: "c", scope: !20, file: !4, line: 14, type: !10)
!22 = !DILocation(line: 14, column: 26, scope: !20)
!23 = !DILocalVariable(name: "$retval_41", scope: !20, file: !4, line: 15, type: !10)
!24 = !DILocation(line: 15, column: 5, scope: !20)
!25 = !DILocation(line: 16, column: 16, scope: !26)
!26 = distinct !DILexicalBlock(scope: !27, file: !4, line: 16, column: 7)
!27 = distinct !DILexicalBlock(scope: !20, file: !4, line: 15, column: 5)
!28 = !DILocation(line: 17, column: 16, scope: !29)
!29 = distinct !DILexicalBlock(scope: !27, file: !4, line: 17, column: 7)
!30 = distinct !DISubprogram(name: "$fundef_38", linkageName: "$fundef_38", scope: !4, file: !4, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!31 = !DILocalVariable(name: "b", scope: !30, file: !4, line: 14, type: !10)
!32 = !DILocation(line: 14, column: 8, scope: !30)
!33 = !DILocation(line: 15, column: 5, scope: !30)
!34 = distinct !DISubprogram(name: "$fundef_44", linkageName: "$fundef_44", scope: !4, file: !4, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!35 = !DILocalVariable(name: "c", scope: !34, file: !4, line: 7, type: !10)
!36 = !DILocation(line: 7, column: 8, scope: !34)
!37 = !DILocalVariable(name: "$retval_45", scope: !34, file: !4, line: 8, type: !10)
!38 = !DILocation(line: 8, column: 5, scope: !34)
!39 = !DILocation(line: 9, column: 16, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !4, line: 9, column: 7)
!41 = distinct !DILexicalBlock(scope: !34, file: !4, line: 8, column: 5)
!42 = !DILocation(line: 10, column: 16, scope: !43)
!43 = distinct !DILexicalBlock(scope: !41, file: !4, line: 10, column: 7)
!44 = distinct !DISubprogram(name: "$fundef_42", linkageName: "$fundef_42", scope: !4, file: !4, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!45 = !DILocalVariable(name: "b", scope: !44, file: !4, line: 6, type: !10)
!46 = !DILocation(line: 6, column: 8, scope: !44)
!47 = !DILocation(line: 8, column: 5, scope: !44)
!48 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !49, file: !49, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!49 = !DIFile(filename: ".", directory: ".")
!50 = !DILocation(line: 0, scope: !48)
!51 = !DILocation(line: 7, column: 3, scope: !48)
!52 = !DILocation(line: 14, column: 21, scope: !48)
!53 = !DILocation(line: 22, column: 5, scope: !48)
!54 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !8)
!55 = !DILocalVariable(name: "$expr_46", scope: !54, file: !2, line: 1, type: !10)
!56 = !DILocation(line: 1, column: 12, scope: !54)
!57 = !DILocalVariable(name: "i32a", scope: !54, file: !2, line: 1, type: !58)
!58 = !DIBasicType(name: "Int32", size: 4)
!59 = !DILocation(line: 1, column: 5, scope: !54)
!60 = !DILocalVariable(name: "i32b", scope: !54, file: !2, line: 2, type: !58)
!61 = !DILocation(line: 2, column: 5, scope: !54)
!62 = !DILocation(line: 2, column: 12, scope: !54)
!63 = !DILocalVariable(name: "i32aa", scope: !54, file: !2, line: 3, type: !58)
!64 = !DILocation(line: 3, column: 5, scope: !54)
!65 = !DILocation(line: 3, column: 13, scope: !54)
!66 = !DILocalVariable(name: "b1", scope: !54, file: !2, line: 4, type: !10)
!67 = !DILocation(line: 4, column: 5, scope: !54)
!68 = !DILocation(line: 4, column: 10, scope: !54)
!69 = !DILocalVariable(name: "b2", scope: !54, file: !2, line: 5, type: !10)
!70 = !DILocation(line: 5, column: 5, scope: !54)
!71 = !DILocation(line: 5, column: 10, scope: !54)
!72 = !DILocalVariable(name: "i128a", scope: !54, file: !2, line: 7, type: !73)
!73 = !DIBasicType(name: "Uint128", size: 16)
!74 = !DILocation(line: 7, column: 5, scope: !54)
!75 = !DILocation(line: 7, column: 13, scope: !54)
!76 = !DILocalVariable(name: "i128b", scope: !54, file: !2, line: 8, type: !73)
!77 = !DILocation(line: 8, column: 5, scope: !54)
!78 = !DILocation(line: 8, column: 13, scope: !54)
!79 = !DILocalVariable(name: "b3", scope: !54, file: !2, line: 10, type: !10)
!80 = !DILocation(line: 10, column: 5, scope: !54)
!81 = !DILocation(line: 10, column: 10, scope: !54)
!82 = !DILocalVariable(name: "b4", scope: !54, file: !2, line: 11, type: !10)
!83 = !DILocation(line: 11, column: 5, scope: !54)
!84 = !DILocation(line: 11, column: 10, scope: !54)
!85 = !DILocalVariable(name: "b5", scope: !54, file: !2, line: 12, type: !10)
!86 = !DILocation(line: 12, column: 5, scope: !54)
!87 = !DILocation(line: 12, column: 10, scope: !54)
!88 = !DILocalVariable(name: "$BoolUtils.andb_8", scope: !54, file: !2, line: 12, type: !10)
!89 = !DILocalVariable(name: "b6", scope: !54, file: !2, line: 13, type: !10)
!90 = !DILocation(line: 13, column: 5, scope: !54)
!91 = !DILocation(line: 13, column: 10, scope: !54)
!92 = !DILocalVariable(name: "$BoolUtils.orb_10", scope: !54, file: !2, line: 13, type: !10)
!93 = !DILocalVariable(name: "b7", scope: !54, file: !2, line: 14, type: !10)
!94 = !DILocation(line: 14, column: 5, scope: !54)
!95 = !DILocation(line: 14, column: 10, scope: !54)
!96 = !DILocalVariable(name: "$BoolUtils.andb_12", scope: !54, file: !2, line: 14, type: !10)
!97 = !DILocalVariable(name: "ui256a", scope: !54, file: !2, line: 16, type: !73)
!98 = !DILocation(line: 16, column: 5, scope: !54)
!99 = !DILocation(line: 16, column: 14, scope: !54)
!100 = !DILocalVariable(name: "ui256b", scope: !54, file: !2, line: 17, type: !73)
!101 = !DILocation(line: 17, column: 5, scope: !54)
!102 = !DILocation(line: 17, column: 14, scope: !54)
!103 = !DILocalVariable(name: "b8", scope: !54, file: !2, line: 19, type: !10)
!104 = !DILocation(line: 19, column: 5, scope: !54)
!105 = !DILocation(line: 19, column: 10, scope: !54)
!106 = !DILocalVariable(name: "b9", scope: !54, file: !2, line: 20, type: !10)
!107 = !DILocation(line: 20, column: 5, scope: !54)
!108 = !DILocation(line: 20, column: 10, scope: !54)
!109 = !DILocalVariable(name: "b10", scope: !54, file: !2, line: 21, type: !10)
!110 = !DILocation(line: 21, column: 5, scope: !54)
!111 = !DILocation(line: 21, column: 11, scope: !54)
!112 = !DILocalVariable(name: "$BoolUtils.andb_14", scope: !54, file: !2, line: 21, type: !10)
!113 = !DILocalVariable(name: "b11", scope: !54, file: !2, line: 22, type: !10)
!114 = !DILocation(line: 22, column: 5, scope: !54)
!115 = !DILocation(line: 22, column: 11, scope: !54)
!116 = !DILocalVariable(name: "$BoolUtils.orb_16", scope: !54, file: !2, line: 22, type: !10)
!117 = !DILocalVariable(name: "s1", scope: !54, file: !2, line: 24, type: !118)
!118 = !DIBasicType(name: "String", size: 16)
!119 = !DILocation(line: 24, column: 5, scope: !54)
!120 = !DILocation(line: 24, column: 16, scope: !54)
!121 = !DILocalVariable(name: "s2", scope: !54, file: !2, line: 25, type: !118)
!122 = !DILocation(line: 25, column: 5, scope: !54)
!123 = !DILocation(line: 25, column: 16, scope: !54)
!124 = !DILocalVariable(name: "s11", scope: !54, file: !2, line: 26, type: !118)
!125 = !DILocation(line: 26, column: 5, scope: !54)
!126 = !DILocation(line: 26, column: 17, scope: !54)
!127 = !DILocalVariable(name: "b12", scope: !54, file: !2, line: 27, type: !10)
!128 = !DILocation(line: 27, column: 5, scope: !54)
!129 = !DILocation(line: 27, column: 11, scope: !54)
!130 = !DILocalVariable(name: "b13", scope: !54, file: !2, line: 28, type: !10)
!131 = !DILocation(line: 28, column: 5, scope: !54)
!132 = !DILocation(line: 28, column: 11, scope: !54)
!133 = !DILocalVariable(name: "b14", scope: !54, file: !2, line: 29, type: !10)
!134 = !DILocation(line: 29, column: 5, scope: !54)
!135 = !DILocation(line: 29, column: 11, scope: !54)
!136 = !DILocalVariable(name: "$BoolUtils.andb_18", scope: !54, file: !2, line: 29, type: !10)
!137 = !DILocalVariable(name: "b15", scope: !54, file: !2, line: 30, type: !10)
!138 = !DILocation(line: 30, column: 5, scope: !54)
!139 = !DILocation(line: 30, column: 11, scope: !54)
!140 = !DILocalVariable(name: "$BoolUtils.orb_20", scope: !54, file: !2, line: 30, type: !10)
!141 = !DILocalVariable(name: "bs1", scope: !54, file: !2, line: 32, type: !142)
!142 = !DIBasicType(name: "ByStr2", size: 2)
!143 = !DILocation(line: 32, column: 5, scope: !54)
!144 = !DILocation(line: 32, column: 11, scope: !54)
!145 = !DILocalVariable(name: "bs2", scope: !54, file: !2, line: 33, type: !142)
!146 = !DILocation(line: 33, column: 5, scope: !54)
!147 = !DILocation(line: 33, column: 11, scope: !54)
!148 = !DILocalVariable(name: "bs11", scope: !54, file: !2, line: 34, type: !142)
!149 = !DILocation(line: 34, column: 5, scope: !54)
!150 = !DILocation(line: 34, column: 12, scope: !54)
!151 = !DILocalVariable(name: "b16", scope: !54, file: !2, line: 35, type: !10)
!152 = !DILocation(line: 35, column: 5, scope: !54)
!153 = !DILocation(line: 35, column: 11, scope: !54)
!154 = !DILocalVariable(name: "b17", scope: !54, file: !2, line: 36, type: !10)
!155 = !DILocation(line: 36, column: 5, scope: !54)
!156 = !DILocation(line: 36, column: 11, scope: !54)
!157 = !DILocalVariable(name: "b18", scope: !54, file: !2, line: 37, type: !10)
!158 = !DILocation(line: 37, column: 5, scope: !54)
!159 = !DILocation(line: 37, column: 11, scope: !54)
!160 = !DILocalVariable(name: "$BoolUtils.orb_22", scope: !54, file: !2, line: 37, type: !10)
!161 = !DILocalVariable(name: "b19", scope: !54, file: !2, line: 38, type: !10)
!162 = !DILocation(line: 38, column: 5, scope: !54)
!163 = !DILocation(line: 38, column: 11, scope: !54)
!164 = !DILocalVariable(name: "$BoolUtils.andb_24", scope: !54, file: !2, line: 38, type: !10)
!165 = !DILocalVariable(name: "bs3", scope: !54, file: !2, line: 40, type: !166)
!166 = !DIBasicType(name: "ByStr3", size: 3)
!167 = !DILocation(line: 40, column: 5, scope: !54)
!168 = !DILocation(line: 40, column: 11, scope: !54)
!169 = !DILocalVariable(name: "bs4", scope: !54, file: !2, line: 41, type: !166)
!170 = !DILocation(line: 41, column: 5, scope: !54)
!171 = !DILocation(line: 41, column: 11, scope: !54)
!172 = !DILocalVariable(name: "b20", scope: !54, file: !2, line: 42, type: !10)
!173 = !DILocation(line: 42, column: 5, scope: !54)
!174 = !DILocation(line: 42, column: 11, scope: !54)
!175 = !DILocalVariable(name: "b21", scope: !54, file: !2, line: 43, type: !10)
!176 = !DILocation(line: 43, column: 5, scope: !54)
!177 = !DILocalVariable(name: "$BoolUtils.negb_25", scope: !54, file: !2, line: 43, type: !10)
!178 = !DILocation(line: 43, column: 11, scope: !54)
!179 = !DILocalVariable(name: "b22", scope: !54, file: !2, line: 44, type: !10)
!180 = !DILocation(line: 44, column: 5, scope: !54)
!181 = !DILocation(line: 44, column: 11, scope: !54)
!182 = !DILocalVariable(name: "$BoolUtils.andb_27", scope: !54, file: !2, line: 44, type: !10)
!183 = !DILocalVariable(name: "$bs11_6", scope: !54, file: !2, line: 46, type: !184)
!184 = !DIBasicType(name: "ByStr", size: 16)
!185 = !DILocation(line: 46, column: 5, scope: !54)
!186 = !DILocation(line: 46, column: 12, scope: !54)
!187 = !DILocalVariable(name: "bs22", scope: !54, file: !2, line: 47, type: !184)
!188 = !DILocation(line: 47, column: 5, scope: !54)
!189 = !DILocation(line: 47, column: 12, scope: !54)
!190 = !DILocalVariable(name: "b23", scope: !54, file: !2, line: 48, type: !10)
!191 = !DILocation(line: 48, column: 5, scope: !54)
!192 = !DILocation(line: 48, column: 11, scope: !54)
!193 = !DILocalVariable(name: "b24", scope: !54, file: !2, line: 49, type: !10)
!194 = !DILocation(line: 49, column: 5, scope: !54)
!195 = !DILocalVariable(name: "$BoolUtils.negb_28", scope: !54, file: !2, line: 49, type: !10)
!196 = !DILocation(line: 49, column: 11, scope: !54)
!197 = !DILocalVariable(name: "b25", scope: !54, file: !2, line: 50, type: !10)
!198 = !DILocation(line: 50, column: 5, scope: !54)
!199 = !DILocation(line: 50, column: 11, scope: !54)
!200 = !DILocalVariable(name: "$BoolUtils.andb_30", scope: !54, file: !2, line: 50, type: !10)
!201 = !DILocalVariable(name: "bn1", scope: !54, file: !2, line: 52, type: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "BNum", baseType: !203, size: 8, align: 8, dwarfAddressSpace: 0)
!203 = !DIBasicType(name: "BNum", size: 8)
!204 = !DILocation(line: 52, column: 5, scope: !54)
!205 = !DILocation(line: 52, column: 11, scope: !54)
!206 = !DILocalVariable(name: "bn2", scope: !54, file: !2, line: 53, type: !202)
!207 = !DILocation(line: 53, column: 5, scope: !54)
!208 = !DILocation(line: 53, column: 11, scope: !54)
!209 = !DILocalVariable(name: "bn3", scope: !54, file: !2, line: 54, type: !202)
!210 = !DILocation(line: 54, column: 5, scope: !54)
!211 = !DILocation(line: 54, column: 11, scope: !54)
!212 = !DILocalVariable(name: "b26", scope: !54, file: !2, line: 55, type: !10)
!213 = !DILocation(line: 55, column: 5, scope: !54)
!214 = !DILocation(line: 55, column: 11, scope: !54)
!215 = !DILocalVariable(name: "b27", scope: !54, file: !2, line: 56, type: !10)
!216 = !DILocation(line: 56, column: 5, scope: !54)
!217 = !DILocalVariable(name: "$BoolUtils.negb_31", scope: !54, file: !2, line: 56, type: !10)
!218 = !DILocation(line: 56, column: 11, scope: !54)
!219 = !DILocalVariable(name: "b28", scope: !54, file: !2, line: 57, type: !10)
!220 = !DILocation(line: 57, column: 5, scope: !54)
!221 = !DILocation(line: 57, column: 11, scope: !54)
!222 = !DILocalVariable(name: "b29", scope: !54, file: !2, line: 58, type: !10)
!223 = !DILocation(line: 58, column: 5, scope: !54)
!224 = !DILocation(line: 58, column: 11, scope: !54)
!225 = !DILocalVariable(name: "$BoolUtils.andb_33", scope: !54, file: !2, line: 58, type: !10)
!226 = !DILocation(line: 60, column: 1, scope: !54)
!227 = !DILocalVariable(name: "$BoolUtils.andb_35", scope: !54, file: !2, line: 60, type: !10)
