; (* https://github.com/Zilliqa/Zilliqa-JavaScript-Library/blob/dev/packages/zilliqa-js-crypto/test/address.fixtures.ts *)
; 
; let p1 =0x0314738163B9BB67AD11AA464FE69A1147DF263E8970D7DCFD8F993DDD39E81BD9 in
; let a1 = 0x4BAF5FADA8E5DB92C3D3242618C5B47133AE003C in
; let a1_gen = builtin schnorr_get_address p1 in
; let r1 = builtin eq a1 a1_gen in
; 
; let p2 =0x034CE268AC5A340038D8ACEBBDD7363611A5B1197916775E32481F5D6B104FAF65 in
; let a2 = 0x448261915A80CDE9BDE7C7A791685200D3A0BF4E in
; let a2_gen = builtin schnorr_get_address p2 in
; let r2 = builtin eq a2 a2_gen in
; 
; let p3 =0x02FA7A501F323CC53E070C0A945370368679E7572960EC24D8A0387EF3B50A2285 in
; let a3 = 0xDED02FD979FC2E55C0243BD2F52DF022C40ADA1E in
; let a3_gen = builtin schnorr_get_address p3 in
; let r3 = builtin eq a3 a3_gen in
; 
; let p4 =0x036F8676E473AF20B4CCE7D327103DE4504A9C00EAE7EA03D0A365FB48817AC97F in
; let a4 = 0x13F06E60297BEA6A3C402F6F64C416A6B31E586E in
; let a4_gen = builtin schnorr_get_address p4 in
; let r4 = builtin eq a4 a4_gen in
; 
; let p5 =0x034C39363529C2D4078F72B8C498C4CBC5BA5E10D8666FE06F104A27E0E44242A0 in
; let a5 = 0x1A90C25307C3CC71958A83FA213A2362D859CF33 in
; let a5_gen = builtin schnorr_get_address p5 in
; let r5 = builtin eq a5 a5_gen in
; 
; let p6 =0x026DA5BF6C3A3C91C08A3DD7FBCE0BEAF5D436039C97B07A0F61AA4B9493E46787 in
; let a6 = 0x625ABAEBD87DAE9AB128F3B3AE99688813D9C5DF in
; let a6_gen = builtin schnorr_get_address p6 in
; let r6 = builtin eq a6 a6_gen in
; 
; let p7 =0x032A661F9D4AB8DD9818CED2F62F3DA14FDD23E68E58D01A4AE186231D7FB609BB in
; let a7 = 0x36BA34097F861191C48C839C9B1A8B5912F583CF in
; let a7_gen = builtin schnorr_get_address p7 in
; let r7 = builtin eq a7 a7_gen in
; 
; let p8 =0x036A94E925BB200DCE41A46C9026E023B226DD5B4CB227CE766D60CC8FAB218148 in
; let a8 = 0xD2453AE76C9A86AAE544FCA699DBDC5C576AEF3A in
; let a8_gen = builtin schnorr_get_address p8 in
; let r8 = builtin eq a8 a8_gen in
; 
; let p9 =0x0247F13639C7597C8AE2467DD29D219C2749260F690D4069930FDEB7866B2BC1FA in
; let a9 = 0x72220E84947C36118CDBC580454DFAA3B918CD97 in
; let a9_gen = builtin schnorr_get_address p9 in
; let r9 = builtin eq a9 a9_gen in
; 
; let res1 = and_4 r1 r2 r3 r4 in
; let res2 = and_4 r5 r6 r7 r8 in
; 
; andb res1 res2
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_40" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_76" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_75"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_75" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_77"**, %"$TyDescrTy_ADTTyp_76"* }
%"$TyDescrTy_ADTTyp_Constr_77" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_1017" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1018" = type { %ParamDescrString, i32, %"$ParamDescr_1017"* }
%"$$fundef_33_env_94" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, %TName_Bool*, %TName_Bool*, %TName_Bool* }
%"$$fundef_31_env_95" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, %TName_Bool*, %TName_Bool* }
%"$$fundef_29_env_96" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, %TName_Bool* }
%"$$fundef_27_env_97" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } }
%"$$fundef_25_env_98" = type { %TName_Bool* }
%"$$fundef_23_env_99" = type {}
%"$$fundef_37_env_100" = type { %TName_Bool* }
%"$$fundef_35_env_101" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_41" = global %"$TyDescrTy_PrimTyp_40" zeroinitializer
@"$TyDescr_Int32_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_40"* @"$TyDescr_Int32_Prim_41" to i8*) }
@"$TyDescr_Uint32_Prim_43" = global %"$TyDescrTy_PrimTyp_40" { i32 1, i32 0 }
@"$TyDescr_Uint32_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_40"* @"$TyDescr_Uint32_Prim_43" to i8*) }
@"$TyDescr_Int64_Prim_45" = global %"$TyDescrTy_PrimTyp_40" { i32 0, i32 1 }
@"$TyDescr_Int64_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_40"* @"$TyDescr_Int64_Prim_45" to i8*) }
@"$TyDescr_Uint64_Prim_47" = global %"$TyDescrTy_PrimTyp_40" { i32 1, i32 1 }
@"$TyDescr_Uint64_48" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_40"* @"$TyDescr_Uint64_Prim_47" to i8*) }
@"$TyDescr_Int128_Prim_49" = global %"$TyDescrTy_PrimTyp_40" { i32 0, i32 2 }
@"$TyDescr_Int128_50" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_40"* @"$TyDescr_Int128_Prim_49" to i8*) }
@"$TyDescr_Uint128_Prim_51" = global %"$TyDescrTy_PrimTyp_40" { i32 1, i32 2 }
@"$TyDescr_Uint128_52" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_40"* @"$TyDescr_Uint128_Prim_51" to i8*) }
@"$TyDescr_Int256_Prim_53" = global %"$TyDescrTy_PrimTyp_40" { i32 0, i32 3 }
@"$TyDescr_Int256_54" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_40"* @"$TyDescr_Int256_Prim_53" to i8*) }
@"$TyDescr_Uint256_Prim_55" = global %"$TyDescrTy_PrimTyp_40" { i32 1, i32 3 }
@"$TyDescr_Uint256_56" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_40"* @"$TyDescr_Uint256_Prim_55" to i8*) }
@"$TyDescr_String_Prim_57" = global %"$TyDescrTy_PrimTyp_40" { i32 2, i32 0 }
@"$TyDescr_String_58" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_40"* @"$TyDescr_String_Prim_57" to i8*) }
@"$TyDescr_Bnum_Prim_59" = global %"$TyDescrTy_PrimTyp_40" { i32 3, i32 0 }
@"$TyDescr_Bnum_60" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_40"* @"$TyDescr_Bnum_Prim_59" to i8*) }
@"$TyDescr_Message_Prim_61" = global %"$TyDescrTy_PrimTyp_40" { i32 4, i32 0 }
@"$TyDescr_Message_62" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_40"* @"$TyDescr_Message_Prim_61" to i8*) }
@"$TyDescr_Event_Prim_63" = global %"$TyDescrTy_PrimTyp_40" { i32 5, i32 0 }
@"$TyDescr_Event_64" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_40"* @"$TyDescr_Event_Prim_63" to i8*) }
@"$TyDescr_Exception_Prim_65" = global %"$TyDescrTy_PrimTyp_40" { i32 6, i32 0 }
@"$TyDescr_Exception_66" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_40"* @"$TyDescr_Exception_Prim_65" to i8*) }
@"$TyDescr_ReplicateContr_Prim_67" = global %"$TyDescrTy_PrimTyp_40" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_68" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_40"* @"$TyDescr_ReplicateContr_Prim_67" to i8*) }
@"$TyDescr_Bystr_Prim_69" = global %"$TyDescrTy_PrimTyp_40" { i32 7, i32 0 }
@"$TyDescr_Bystr_70" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_40"* @"$TyDescr_Bystr_Prim_69" to i8*) }
@"$TyDescr_Bystr20_Prim_71" = global %"$TyDescrTy_PrimTyp_40" { i32 8, i32 20 }
@"$TyDescr_Bystr20_72" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_40"* @"$TyDescr_Bystr20_Prim_71" to i8*) }
@"$TyDescr_Bystr33_Prim_73" = global %"$TyDescrTy_PrimTyp_40" { i32 8, i32 33 }
@"$TyDescr_Bystr33_74" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_40"* @"$TyDescr_Bystr33_Prim_73" to i8*) }
@"$TyDescr_ADT_Bool_78" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_75"* @"$TyDescr_Bool_ADTTyp_Specl_91" to i8*) }
@"$TyDescr_Bool_ADTTyp_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_76" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_93", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_75"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_75"*], [1 x %"$TyDescrTy_ADTTyp_Specl_75"*]* @"$TyDescr_Bool_ADTTyp_m_specls_92", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_83" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_84" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_85" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_77" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_84", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_83", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_86" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_87" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_88" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_77" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_87", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_86", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_89" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_77"*] [%"$TyDescrTy_ADTTyp_Constr_77"* @"$TyDescr_Bool_True_ADTTyp_Constr_85", %"$TyDescrTy_ADTTyp_Constr_77"* @"$TyDescr_Bool_False_ADTTyp_Constr_88"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_90" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_91" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_75" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_90", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_77"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_77"*], [2 x %"$TyDescrTy_ADTTyp_Constr_77"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_89", i32 0, i32 0), %"$TyDescrTy_ADTTyp_76"* @"$TyDescr_Bool_ADTTyp_82" }
@"$TyDescr_Bool_ADTTyp_m_specls_92" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_75"*] [%"$TyDescrTy_ADTTyp_Specl_75"* @"$TyDescr_Bool_ADTTyp_Specl_91"]
@"$TyDescr_ADT_Bool_93" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.and_4 = global { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_64", %_TyDescrTy_Typ* @"$TyDescr_Int64_46", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78", %_TyDescrTy_Typ* @"$TyDescr_Bystr33_74", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_72", %_TyDescrTy_Typ* @"$TyDescr_Uint256_56", %_TyDescrTy_Typ* @"$TyDescr_Uint32_44", %_TyDescrTy_Typ* @"$TyDescr_Uint64_48", %_TyDescrTy_Typ* @"$TyDescr_Bnum_60", %_TyDescrTy_Typ* @"$TyDescr_Uint128_52", %_TyDescrTy_Typ* @"$TyDescr_Exception_66", %_TyDescrTy_Typ* @"$TyDescr_String_58", %_TyDescrTy_Typ* @"$TyDescr_Int256_54", %_TyDescrTy_Typ* @"$TyDescr_Int128_50", %_TyDescrTy_Typ* @"$TyDescr_Bystr_70", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_68", %_TyDescrTy_Typ* @"$TyDescr_Message_62", %_TyDescrTy_Typ* @"$TyDescr_Int32_42"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_1017"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1018"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_33"(%"$$fundef_33_env_94"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_33_env_$BoolUtils.andb_6_241" = getelementptr inbounds %"$$fundef_33_env_94", %"$$fundef_33_env_94"* %0, i32 0, i32 0
  %"$$BoolUtils.andb_6_envload_242" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_33_env_$BoolUtils.andb_6_241", align 8
  %"$BoolUtils.andb_6" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_envload_242", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_6", align 8
  %"$$fundef_33_env_a_243" = getelementptr inbounds %"$$fundef_33_env_94", %"$$fundef_33_env_94"* %0, i32 0, i32 1
  %"$a_envload_244" = load %TName_Bool*, %TName_Bool** %"$$fundef_33_env_a_243", align 8
  %a = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$a_envload_244", %TName_Bool** %a, align 8
  %"$$fundef_33_env_b_245" = getelementptr inbounds %"$$fundef_33_env_94", %"$$fundef_33_env_94"* %0, i32 0, i32 2
  %"$b_envload_246" = load %TName_Bool*, %TName_Bool** %"$$fundef_33_env_b_245", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_246", %TName_Bool** %b, align 8
  %"$$fundef_33_env_c_247" = getelementptr inbounds %"$$fundef_33_env_94", %"$$fundef_33_env_94"* %0, i32 0, i32 3
  %"$c_envload_248" = load %TName_Bool*, %TName_Bool** %"$$fundef_33_env_c_247", align 8
  %c = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$c_envload_248", %TName_Bool** %c, align 8
  %"$retval_34" = alloca %TName_Bool*, align 8
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %entry
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %t1 = alloca %TName_Bool*, align 8
  %"$gasrem_254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_255" = icmp ugt i64 1, %"$gasrem_254"
  br i1 %"$gascmp_255", label %"$out_of_gas_256", label %"$have_gas_257"

"$out_of_gas_256":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_257"

"$have_gas_257":                                  ; preds = %"$out_of_gas_256", %"$have_gas_252"
  %"$consume_258" = sub i64 %"$gasrem_254", 1
  store i64 %"$consume_258", i64* @_gasrem, align 8
  %"$$BoolUtils.andb_6_7" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.andb_6_259" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_6", align 8
  %"$$BoolUtils.andb_6_fptr_260" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_259", 0
  %"$$BoolUtils.andb_6_envptr_261" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_259", 1
  %"$a_262" = load %TName_Bool*, %TName_Bool** %a, align 8
  %"$$BoolUtils.andb_6_call_263" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_fptr_260"(i8* %"$$BoolUtils.andb_6_envptr_261", %TName_Bool* %"$a_262")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_call_263", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$BoolUtils.andb_6_7", align 8
  %"$$BoolUtils.andb_6_8" = alloca %TName_Bool*, align 8
  %"$$$BoolUtils.andb_6_7_264" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$BoolUtils.andb_6_7", align 8
  %"$$$BoolUtils.andb_6_7_fptr_265" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$$BoolUtils.andb_6_7_264", 0
  %"$$$BoolUtils.andb_6_7_envptr_266" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$$BoolUtils.andb_6_7_264", 1
  %"$b_267" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$$$BoolUtils.andb_6_7_call_268" = call %TName_Bool* %"$$$BoolUtils.andb_6_7_fptr_265"(i8* %"$$$BoolUtils.andb_6_7_envptr_266", %TName_Bool* %"$b_267")
  store %TName_Bool* %"$$$BoolUtils.andb_6_7_call_268", %TName_Bool** %"$$BoolUtils.andb_6_8", align 8
  %"$$$BoolUtils.andb_6_8_269" = load %TName_Bool*, %TName_Bool** %"$$BoolUtils.andb_6_8", align 8
  store %TName_Bool* %"$$$BoolUtils.andb_6_8_269", %TName_Bool** %t1, align 8
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 1, %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %"$have_gas_257"
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %"$have_gas_257"
  %"$consume_274" = sub i64 %"$gasrem_270", 1
  store i64 %"$consume_274", i64* @_gasrem, align 8
  %t2 = alloca %TName_Bool*, align 8
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 1, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %"$have_gas_273"
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %"$have_gas_273"
  %"$consume_279" = sub i64 %"$gasrem_275", 1
  store i64 %"$consume_279", i64* @_gasrem, align 8
  %"$$BoolUtils.andb_6_9" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.andb_6_280" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_6", align 8
  %"$$BoolUtils.andb_6_fptr_281" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_280", 0
  %"$$BoolUtils.andb_6_envptr_282" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_280", 1
  %"$t1_283" = load %TName_Bool*, %TName_Bool** %t1, align 8
  %"$$BoolUtils.andb_6_call_284" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_fptr_281"(i8* %"$$BoolUtils.andb_6_envptr_282", %TName_Bool* %"$t1_283")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_call_284", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$BoolUtils.andb_6_9", align 8
  %"$$BoolUtils.andb_6_10" = alloca %TName_Bool*, align 8
  %"$$$BoolUtils.andb_6_9_285" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$BoolUtils.andb_6_9", align 8
  %"$$$BoolUtils.andb_6_9_fptr_286" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$$BoolUtils.andb_6_9_285", 0
  %"$$$BoolUtils.andb_6_9_envptr_287" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$$BoolUtils.andb_6_9_285", 1
  %"$c_288" = load %TName_Bool*, %TName_Bool** %c, align 8
  %"$$$BoolUtils.andb_6_9_call_289" = call %TName_Bool* %"$$$BoolUtils.andb_6_9_fptr_286"(i8* %"$$$BoolUtils.andb_6_9_envptr_287", %TName_Bool* %"$c_288")
  store %TName_Bool* %"$$$BoolUtils.andb_6_9_call_289", %TName_Bool** %"$$BoolUtils.andb_6_10", align 8
  %"$$$BoolUtils.andb_6_10_290" = load %TName_Bool*, %TName_Bool** %"$$BoolUtils.andb_6_10", align 8
  store %TName_Bool* %"$$$BoolUtils.andb_6_10_290", %TName_Bool** %t2, align 8
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 1, %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %"$have_gas_278"
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %"$have_gas_278"
  %"$consume_295" = sub i64 %"$gasrem_291", 1
  store i64 %"$consume_295", i64* @_gasrem, align 8
  %"$$BoolUtils.andb_6_11" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.andb_6_296" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_6", align 8
  %"$$BoolUtils.andb_6_fptr_297" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_296", 0
  %"$$BoolUtils.andb_6_envptr_298" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_296", 1
  %"$t2_299" = load %TName_Bool*, %TName_Bool** %t2, align 8
  %"$$BoolUtils.andb_6_call_300" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_fptr_297"(i8* %"$$BoolUtils.andb_6_envptr_298", %TName_Bool* %"$t2_299")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_call_300", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$BoolUtils.andb_6_11", align 8
  %"$$BoolUtils.andb_6_12" = alloca %TName_Bool*, align 8
  %"$$$BoolUtils.andb_6_11_301" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$$BoolUtils.andb_6_11", align 8
  %"$$$BoolUtils.andb_6_11_fptr_302" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$$BoolUtils.andb_6_11_301", 0
  %"$$$BoolUtils.andb_6_11_envptr_303" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$$BoolUtils.andb_6_11_301", 1
  %"$$$BoolUtils.andb_6_11_call_304" = call %TName_Bool* %"$$$BoolUtils.andb_6_11_fptr_302"(i8* %"$$$BoolUtils.andb_6_11_envptr_303", %TName_Bool* %1)
  store %TName_Bool* %"$$$BoolUtils.andb_6_11_call_304", %TName_Bool** %"$$BoolUtils.andb_6_12", align 8
  %"$$$BoolUtils.andb_6_12_305" = load %TName_Bool*, %TName_Bool** %"$$BoolUtils.andb_6_12", align 8
  store %TName_Bool* %"$$$BoolUtils.andb_6_12_305", %TName_Bool** %"$retval_34", align 8
  %"$$retval_34_306" = load %TName_Bool*, %TName_Bool** %"$retval_34", align 8
  ret %TName_Bool* %"$$retval_34_306"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_31"(%"$$fundef_31_env_95"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_31_env_$BoolUtils.andb_6_218" = getelementptr inbounds %"$$fundef_31_env_95", %"$$fundef_31_env_95"* %0, i32 0, i32 0
  %"$$BoolUtils.andb_6_envload_219" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_31_env_$BoolUtils.andb_6_218", align 8
  %"$BoolUtils.andb_6" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_envload_219", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_6", align 8
  %"$$fundef_31_env_a_220" = getelementptr inbounds %"$$fundef_31_env_95", %"$$fundef_31_env_95"* %0, i32 0, i32 1
  %"$a_envload_221" = load %TName_Bool*, %TName_Bool** %"$$fundef_31_env_a_220", align 8
  %a = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$a_envload_221", %TName_Bool** %a, align 8
  %"$$fundef_31_env_b_222" = getelementptr inbounds %"$$fundef_31_env_95", %"$$fundef_31_env_95"* %0, i32 0, i32 2
  %"$b_envload_223" = load %TName_Bool*, %TName_Bool** %"$$fundef_31_env_b_222", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_223", %TName_Bool** %b, align 8
  %"$retval_32" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %entry
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  %"$$fundef_33_envp_229_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_33_envp_229_salloc" = call i8* @_salloc(i8* %"$$fundef_33_envp_229_load", i64 40)
  %"$$fundef_33_envp_229" = bitcast i8* %"$$fundef_33_envp_229_salloc" to %"$$fundef_33_env_94"*
  %"$$fundef_33_env_voidp_231" = bitcast %"$$fundef_33_env_94"* %"$$fundef_33_envp_229" to i8*
  %"$$fundef_33_cloval_232" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_33_env_94"*, %TName_Bool*)* @"$fundef_33" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_33_env_voidp_231", 1
  %"$$fundef_33_env_$BoolUtils.andb_6_233" = getelementptr inbounds %"$$fundef_33_env_94", %"$$fundef_33_env_94"* %"$$fundef_33_envp_229", i32 0, i32 0
  %"$$BoolUtils.andb_6_234" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_6", align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_234", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_33_env_$BoolUtils.andb_6_233", align 8
  %"$$fundef_33_env_a_235" = getelementptr inbounds %"$$fundef_33_env_94", %"$$fundef_33_env_94"* %"$$fundef_33_envp_229", i32 0, i32 1
  %"$a_236" = load %TName_Bool*, %TName_Bool** %a, align 8
  store %TName_Bool* %"$a_236", %TName_Bool** %"$$fundef_33_env_a_235", align 8
  %"$$fundef_33_env_b_237" = getelementptr inbounds %"$$fundef_33_env_94", %"$$fundef_33_env_94"* %"$$fundef_33_envp_229", i32 0, i32 2
  %"$b_238" = load %TName_Bool*, %TName_Bool** %b, align 8
  store %TName_Bool* %"$b_238", %TName_Bool** %"$$fundef_33_env_b_237", align 8
  %"$$fundef_33_env_c_239" = getelementptr inbounds %"$$fundef_33_env_94", %"$$fundef_33_env_94"* %"$$fundef_33_envp_229", i32 0, i32 3
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_33_env_c_239", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_33_cloval_232", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_32", align 8
  %"$$retval_32_240" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_32", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_32_240"
}

define internal { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } @"$fundef_29"(%"$$fundef_29_env_96"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_29_env_$BoolUtils.andb_6_199" = getelementptr inbounds %"$$fundef_29_env_96", %"$$fundef_29_env_96"* %0, i32 0, i32 0
  %"$$BoolUtils.andb_6_envload_200" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_29_env_$BoolUtils.andb_6_199", align 8
  %"$BoolUtils.andb_6" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_envload_200", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_6", align 8
  %"$$fundef_29_env_a_201" = getelementptr inbounds %"$$fundef_29_env_96", %"$$fundef_29_env_96"* %0, i32 0, i32 1
  %"$a_envload_202" = load %TName_Bool*, %TName_Bool** %"$$fundef_29_env_a_201", align 8
  %a = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$a_envload_202", %TName_Bool** %a, align 8
  %"$retval_30" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 1, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %entry
  %"$consume_207" = sub i64 %"$gasrem_203", 1
  store i64 %"$consume_207", i64* @_gasrem, align 8
  %"$$fundef_31_envp_208_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_31_envp_208_salloc" = call i8* @_salloc(i8* %"$$fundef_31_envp_208_load", i64 32)
  %"$$fundef_31_envp_208" = bitcast i8* %"$$fundef_31_envp_208_salloc" to %"$$fundef_31_env_95"*
  %"$$fundef_31_env_voidp_210" = bitcast %"$$fundef_31_env_95"* %"$$fundef_31_envp_208" to i8*
  %"$$fundef_31_cloval_211" = insertvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_31_env_95"*, %TName_Bool*)* @"$fundef_31" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_31_env_voidp_210", 1
  %"$$fundef_31_env_$BoolUtils.andb_6_212" = getelementptr inbounds %"$$fundef_31_env_95", %"$$fundef_31_env_95"* %"$$fundef_31_envp_208", i32 0, i32 0
  %"$$BoolUtils.andb_6_213" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_6", align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_213", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_31_env_$BoolUtils.andb_6_212", align 8
  %"$$fundef_31_env_a_214" = getelementptr inbounds %"$$fundef_31_env_95", %"$$fundef_31_env_95"* %"$$fundef_31_envp_208", i32 0, i32 1
  %"$a_215" = load %TName_Bool*, %TName_Bool** %a, align 8
  store %TName_Bool* %"$a_215", %TName_Bool** %"$$fundef_31_env_a_214", align 8
  %"$$fundef_31_env_b_216" = getelementptr inbounds %"$$fundef_31_env_95", %"$$fundef_31_env_95"* %"$$fundef_31_envp_208", i32 0, i32 2
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_31_env_b_216", align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$fundef_31_cloval_211", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_30", align 8
  %"$$retval_30_217" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_30", align 8
  ret { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$retval_30_217"
}

define internal { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } @"$fundef_27"(%"$$fundef_27_env_97"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_27_env_$BoolUtils.andb_6_184" = getelementptr inbounds %"$$fundef_27_env_97", %"$$fundef_27_env_97"* %0, i32 0, i32 0
  %"$$BoolUtils.andb_6_envload_185" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_27_env_$BoolUtils.andb_6_184", align 8
  %"$BoolUtils.andb_6" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_envload_185", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_6", align 8
  %"$retval_28" = alloca { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %entry
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %"$$fundef_29_envp_191_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_29_envp_191_salloc" = call i8* @_salloc(i8* %"$$fundef_29_envp_191_load", i64 24)
  %"$$fundef_29_envp_191" = bitcast i8* %"$$fundef_29_envp_191_salloc" to %"$$fundef_29_env_96"*
  %"$$fundef_29_env_voidp_193" = bitcast %"$$fundef_29_env_96"* %"$$fundef_29_envp_191" to i8*
  %"$$fundef_29_cloval_194" = insertvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (%"$$fundef_29_env_96"*, %TName_Bool*)* @"$fundef_29" to { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_29_env_voidp_193", 1
  %"$$fundef_29_env_$BoolUtils.andb_6_195" = getelementptr inbounds %"$$fundef_29_env_96", %"$$fundef_29_env_96"* %"$$fundef_29_envp_191", i32 0, i32 0
  %"$$BoolUtils.andb_6_196" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_6", align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_196", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_29_env_$BoolUtils.andb_6_195", align 8
  %"$$fundef_29_env_a_197" = getelementptr inbounds %"$$fundef_29_env_96", %"$$fundef_29_env_96"* %"$$fundef_29_envp_191", i32 0, i32 1
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_29_env_a_197", align 8
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$fundef_29_cloval_194", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_28", align 8
  %"$$retval_28_198" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_28", align 8
  ret { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$retval_28_198"
}

define internal %TName_Bool* @"$fundef_25"(%"$$fundef_25_env_98"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_25_env_b_154" = getelementptr inbounds %"$$fundef_25_env_98", %"$$fundef_25_env_98"* %0, i32 0, i32 0
  %"$b_envload_155" = load %TName_Bool*, %TName_Bool** %"$$fundef_25_env_b_154", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_155", %TName_Bool** %b, align 8
  %"$retval_26" = alloca %TName_Bool*, align 8
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 2, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %entry
  %"$consume_160" = sub i64 %"$gasrem_156", 2
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %"$b_162" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_163" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_162", i32 0, i32 0
  %"$b_tag_164" = load i8, i8* %"$b_tag_163", align 1
  switch i8 %"$b_tag_164", label %"$empty_default_165" [
    i8 1, label %"$False_166"
    i8 0, label %"$True_176"
  ]

"$False_166":                                     ; preds = %"$have_gas_159"
  %"$b_167" = bitcast %TName_Bool* %"$b_162" to %CName_False*
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %"$False_166"
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %"$False_166"
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  %"$adtval_173_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_173_salloc" = call i8* @_salloc(i8* %"$adtval_173_load", i64 1)
  %"$adtval_173" = bitcast i8* %"$adtval_173_salloc" to %CName_False*
  %"$adtgep_174" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_173", i32 0, i32 0
  store i8 1, i8* %"$adtgep_174", align 1
  %"$adtptr_175" = bitcast %CName_False* %"$adtval_173" to %TName_Bool*
  store %TName_Bool* %"$adtptr_175", %TName_Bool** %"$retval_26", align 8
  br label %"$matchsucc_161"

"$True_176":                                      ; preds = %"$have_gas_159"
  %"$b_177" = bitcast %TName_Bool* %"$b_162" to %CName_True*
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 1, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$True_176"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$True_176"
  %"$consume_182" = sub i64 %"$gasrem_178", 1
  store i64 %"$consume_182", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_26", align 8
  br label %"$matchsucc_161"

"$empty_default_165":                             ; preds = %"$have_gas_159"
  br label %"$matchsucc_161"

"$matchsucc_161":                                 ; preds = %"$have_gas_181", %"$have_gas_171", %"$empty_default_165"
  %"$$retval_26_183" = load %TName_Bool*, %TName_Bool** %"$retval_26", align 8
  ret %TName_Bool* %"$$retval_26_183"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_23"(%"$$fundef_23_env_99"* %0, %TName_Bool* %1) {
entry:
  %"$retval_24" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %entry
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %"$$fundef_25_envp_148_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_25_envp_148_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_148_load", i64 8)
  %"$$fundef_25_envp_148" = bitcast i8* %"$$fundef_25_envp_148_salloc" to %"$$fundef_25_env_98"*
  %"$$fundef_25_env_voidp_150" = bitcast %"$$fundef_25_env_98"* %"$$fundef_25_envp_148" to i8*
  %"$$fundef_25_cloval_151" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_25_env_98"*, %TName_Bool*)* @"$fundef_25" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_25_env_voidp_150", 1
  %"$$fundef_25_env_b_152" = getelementptr inbounds %"$$fundef_25_env_98", %"$$fundef_25_env_98"* %"$$fundef_25_envp_148", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_25_env_b_152", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_25_cloval_151", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_24", align 8
  %"$$retval_24_153" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_24", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_24_153"
}

define internal %TName_Bool* @"$fundef_37"(%"$$fundef_37_env_100"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_37_env_b_113" = getelementptr inbounds %"$$fundef_37_env_100", %"$$fundef_37_env_100"* %0, i32 0, i32 0
  %"$b_envload_114" = load %TName_Bool*, %TName_Bool** %"$$fundef_37_env_b_113", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_114", %TName_Bool** %b, align 8
  %"$retval_38" = alloca %TName_Bool*, align 8
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 2, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %entry
  %"$consume_119" = sub i64 %"$gasrem_115", 2
  store i64 %"$consume_119", i64* @_gasrem, align 8
  %"$b_121" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_122" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_121", i32 0, i32 0
  %"$b_tag_123" = load i8, i8* %"$b_tag_122", align 1
  switch i8 %"$b_tag_123", label %"$empty_default_124" [
    i8 1, label %"$False_125"
    i8 0, label %"$True_135"
  ]

"$False_125":                                     ; preds = %"$have_gas_118"
  %"$b_126" = bitcast %TName_Bool* %"$b_121" to %CName_False*
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$False_125"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$False_125"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem, align 8
  %"$adtval_132_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_132_salloc" = call i8* @_salloc(i8* %"$adtval_132_load", i64 1)
  %"$adtval_132" = bitcast i8* %"$adtval_132_salloc" to %CName_False*
  %"$adtgep_133" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_132", i32 0, i32 0
  store i8 1, i8* %"$adtgep_133", align 1
  %"$adtptr_134" = bitcast %CName_False* %"$adtval_132" to %TName_Bool*
  store %TName_Bool* %"$adtptr_134", %TName_Bool** %"$retval_38", align 8
  br label %"$matchsucc_120"

"$True_135":                                      ; preds = %"$have_gas_118"
  %"$b_136" = bitcast %TName_Bool* %"$b_121" to %CName_True*
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 1, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$True_135"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$True_135"
  %"$consume_141" = sub i64 %"$gasrem_137", 1
  store i64 %"$consume_141", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_38", align 8
  br label %"$matchsucc_120"

"$empty_default_124":                             ; preds = %"$have_gas_118"
  br label %"$matchsucc_120"

"$matchsucc_120":                                 ; preds = %"$have_gas_140", %"$have_gas_130", %"$empty_default_124"
  %"$$retval_38_142" = load %TName_Bool*, %TName_Bool** %"$retval_38", align 8
  ret %TName_Bool* %"$$retval_38_142"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_35"(%"$$fundef_35_env_101"* %0, %TName_Bool* %1) {
entry:
  %"$retval_36" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 1, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %entry
  %"$consume_106" = sub i64 %"$gasrem_102", 1
  store i64 %"$consume_106", i64* @_gasrem, align 8
  %"$$fundef_37_envp_107_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_37_envp_107_salloc" = call i8* @_salloc(i8* %"$$fundef_37_envp_107_load", i64 8)
  %"$$fundef_37_envp_107" = bitcast i8* %"$$fundef_37_envp_107_salloc" to %"$$fundef_37_env_100"*
  %"$$fundef_37_env_voidp_109" = bitcast %"$$fundef_37_env_100"* %"$$fundef_37_envp_107" to i8*
  %"$$fundef_37_cloval_110" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_37_env_100"*, %TName_Bool*)* @"$fundef_37" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_37_env_voidp_109", 1
  %"$$fundef_37_env_b_111" = getelementptr inbounds %"$$fundef_37_env_100", %"$$fundef_37_env_100"* %"$$fundef_37_envp_107", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_37_env_b_111", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_37_cloval_110", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_36", align 8
  %"$$retval_36_112" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_36", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_36_112"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 5, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %entry
  %"$consume_311" = sub i64 %"$gasrem_307", 5
  store i64 %"$consume_311", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 6, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_310"
  %"$consume_316" = sub i64 %"$gasrem_312", 6
  store i64 %"$consume_316", i64* @_gasrem, align 8
  store %Int32 { i32 6 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_318" = icmp ugt i64 1, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_315"
  %"$consume_321" = sub i64 %"$gasrem_317", 1
  store i64 %"$consume_321", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_35_env_101"*, %TName_Bool*)* @"$fundef_35" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_320"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %"$BoolUtils.andb_6" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_23_env_99"*, %TName_Bool*)* @"$fundef_23" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_6", align 8
  %"$$fundef_27_envp_333_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_27_envp_333_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_333_load", i64 16)
  %"$$fundef_27_envp_333" = bitcast i8* %"$$fundef_27_envp_333_salloc" to %"$$fundef_27_env_97"*
  %"$$fundef_27_env_voidp_335" = bitcast %"$$fundef_27_env_97"* %"$$fundef_27_envp_333" to i8*
  %"$$fundef_27_cloval_336" = insertvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (%"$$fundef_27_env_97"*, %TName_Bool*)* @"$fundef_27" to { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_335", 1
  %"$$fundef_27_env_$BoolUtils.andb_6_337" = getelementptr inbounds %"$$fundef_27_env_97", %"$$fundef_27_env_97"* %"$$fundef_27_envp_333", i32 0, i32 0
  %"$$BoolUtils.andb_6_338" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_6", align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_6_338", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_27_env_$BoolUtils.andb_6_337", align 8
  store { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$fundef_27_cloval_336", { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4, align 8
  %"$gasrem_339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_340" = icmp ugt i64 196, %"$gasrem_339"
  br i1 %"$gascmp_340", label %"$out_of_gas_341", label %"$have_gas_342"

"$out_of_gas_341":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_342"

"$have_gas_342":                                  ; preds = %"$out_of_gas_341", %"$have_gas_328"
  %"$consume_343" = sub i64 %"$gasrem_339", 196
  store i64 %"$consume_343", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 20, %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %"$have_gas_342"
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %"$have_gas_342"
  %"$consume_348" = sub i64 %"$gasrem_344", 20
  store i64 %"$consume_348", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_350" = icmp ugt i64 12, %"$gasrem_349"
  br i1 %"$gascmp_350", label %"$out_of_gas_351", label %"$have_gas_352"

"$out_of_gas_351":                                ; preds = %"$have_gas_347"
  call void @_out_of_gas()
  br label %"$have_gas_352"

"$have_gas_352":                                  ; preds = %"$out_of_gas_351", %"$have_gas_347"
  %"$consume_353" = sub i64 %"$gasrem_349", 12
  store i64 %"$consume_353", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_355" = icmp ugt i64 2, %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %"$have_gas_352"
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %"$have_gas_352"
  %"$consume_358" = sub i64 %"$gasrem_354", 2
  store i64 %"$consume_358", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_39" = alloca %TName_Bool*, align 8
  %"$gasrem_359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_360" = icmp ugt i64 1, %"$gasrem_359"
  br i1 %"$gascmp_360", label %"$out_of_gas_361", label %"$have_gas_362"

"$out_of_gas_361":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_362"

"$have_gas_362":                                  ; preds = %"$out_of_gas_361", %entry
  %"$consume_363" = sub i64 %"$gasrem_359", 1
  store i64 %"$consume_363", i64* @_gasrem, align 8
  %p1 = alloca [33 x i8], align 1
  %"$gasrem_364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_365" = icmp ugt i64 1, %"$gasrem_364"
  br i1 %"$gascmp_365", label %"$out_of_gas_366", label %"$have_gas_367"

"$out_of_gas_366":                                ; preds = %"$have_gas_362"
  call void @_out_of_gas()
  br label %"$have_gas_367"

"$have_gas_367":                                  ; preds = %"$out_of_gas_366", %"$have_gas_362"
  %"$consume_368" = sub i64 %"$gasrem_364", 1
  store i64 %"$consume_368", i64* @_gasrem, align 8
  store [33 x i8] c"\03\14s\81c\B9\BBg\AD\11\AAFO\E6\9A\11G\DF&>\89p\D7\DC\FD\8F\99=\DD9\E8\1B\D9", [33 x i8]* %p1, align 1
  %"$gasrem_369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_370" = icmp ugt i64 1, %"$gasrem_369"
  br i1 %"$gascmp_370", label %"$out_of_gas_371", label %"$have_gas_372"

"$out_of_gas_371":                                ; preds = %"$have_gas_367"
  call void @_out_of_gas()
  br label %"$have_gas_372"

"$have_gas_372":                                  ; preds = %"$out_of_gas_371", %"$have_gas_367"
  %"$consume_373" = sub i64 %"$gasrem_369", 1
  store i64 %"$consume_373", i64* @_gasrem, align 8
  %a1 = alloca [20 x i8], align 1
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_372"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_372"
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  store [20 x i8] c"K\AF_\AD\A8\E5\DB\92\C3\D3$&\18\C5\B4q3\AE\00<", [20 x i8]* %a1, align 1
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_377"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %a1_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p1_384" = alloca [33 x i8], align 1
  %"$p1_385" = load [33 x i8], [33 x i8]* %p1, align 1
  store [33 x i8] %"$p1_385", [33 x i8]* %"$_literal_cost_p1_384", align 1
  %"$$_literal_cost_p1_384_386" = bitcast [33 x i8]* %"$_literal_cost_p1_384" to i8*
  %"$_literal_cost_call_387" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_74", i8* %"$$_literal_cost_p1_384_386")
  %"$gasadd_388" = add i64 %"$_literal_cost_call_387", 0
  %"$gasdivceil_389" = urem i64 %"$gasadd_388", 960
  %"$gasdivceil_390" = udiv i64 %"$gasadd_388", 960
  %"$gasdivceil_391" = icmp eq i64 %"$gasdivceil_389", 0
  %"$gasdivceil_392" = add i64 %"$gasdivceil_390", 1
  %"$gasdivceil_393" = select i1 %"$gasdivceil_391", i64 %"$gasdivceil_390", i64 %"$gasdivceil_392"
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 %"$gasdivceil_393", %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %"$have_gas_382"
  %"$consume_398" = sub i64 %"$gasrem_394", %"$gasdivceil_393"
  store i64 %"$consume_398", i64* @_gasrem, align 8
  %"$execptr_load_399" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p1_400" = alloca [33 x i8], align 1
  %"$p1_401" = load [33 x i8], [33 x i8]* %p1, align 1
  store [33 x i8] %"$p1_401", [33 x i8]* %"$schnorr_get_address_p1_400", align 1
  %"$schnorr_get_address_call_402" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_399", [33 x i8]* %"$schnorr_get_address_p1_400")
  %"$schnorr_get_address_404" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_402", align 1
  store [20 x i8] %"$schnorr_get_address_404", [20 x i8]* %a1_gen, align 1
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_397"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_397"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %r1 = alloca %TName_Bool*, align 8
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 20, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$have_gas_408"
  %"$consume_414" = sub i64 %"$gasrem_410", 20
  store i64 %"$consume_414", i64* @_gasrem, align 8
  %"$execptr_load_415" = load i8*, i8** @_execptr, align 8
  %"$eq_a1_416" = alloca [20 x i8], align 1
  %"$a1_417" = load [20 x i8], [20 x i8]* %a1, align 1
  store [20 x i8] %"$a1_417", [20 x i8]* %"$eq_a1_416", align 1
  %"$$eq_a1_416_418" = bitcast [20 x i8]* %"$eq_a1_416" to i8*
  %"$eq_a1_gen_419" = alloca [20 x i8], align 1
  %"$a1_gen_420" = load [20 x i8], [20 x i8]* %a1_gen, align 1
  store [20 x i8] %"$a1_gen_420", [20 x i8]* %"$eq_a1_gen_419", align 1
  %"$$eq_a1_gen_419_421" = bitcast [20 x i8]* %"$eq_a1_gen_419" to i8*
  %"$eq_call_422" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_415", i32 20, i8* %"$$eq_a1_416_418", i8* %"$$eq_a1_gen_419_421")
  store %TName_Bool* %"$eq_call_422", %TName_Bool** %r1, align 8
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 1, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_413"
  %"$consume_428" = sub i64 %"$gasrem_424", 1
  store i64 %"$consume_428", i64* @_gasrem, align 8
  %p2 = alloca [33 x i8], align 1
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 1, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_427"
  %"$consume_433" = sub i64 %"$gasrem_429", 1
  store i64 %"$consume_433", i64* @_gasrem, align 8
  store [33 x i8] c"\03L\E2h\ACZ4\008\D8\AC\EB\BD\D766\11\A5\B1\19y\16w^2H\1F]k\10O\AFe", [33 x i8]* %p2, align 1
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_432"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_432"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %a2 = alloca [20 x i8], align 1
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_437"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  store [20 x i8] c"D\82a\91Z\80\CD\E9\BD\E7\C7\A7\91hR\00\D3\A0\BFN", [20 x i8]* %a2, align 1
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 1, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_442"
  %"$consume_448" = sub i64 %"$gasrem_444", 1
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %a2_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p2_449" = alloca [33 x i8], align 1
  %"$p2_450" = load [33 x i8], [33 x i8]* %p2, align 1
  store [33 x i8] %"$p2_450", [33 x i8]* %"$_literal_cost_p2_449", align 1
  %"$$_literal_cost_p2_449_451" = bitcast [33 x i8]* %"$_literal_cost_p2_449" to i8*
  %"$_literal_cost_call_452" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_74", i8* %"$$_literal_cost_p2_449_451")
  %"$gasadd_453" = add i64 %"$_literal_cost_call_452", 0
  %"$gasdivceil_454" = urem i64 %"$gasadd_453", 960
  %"$gasdivceil_455" = udiv i64 %"$gasadd_453", 960
  %"$gasdivceil_456" = icmp eq i64 %"$gasdivceil_454", 0
  %"$gasdivceil_457" = add i64 %"$gasdivceil_455", 1
  %"$gasdivceil_458" = select i1 %"$gasdivceil_456", i64 %"$gasdivceil_455", i64 %"$gasdivceil_457"
  %"$gasrem_459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_460" = icmp ugt i64 %"$gasdivceil_458", %"$gasrem_459"
  br i1 %"$gascmp_460", label %"$out_of_gas_461", label %"$have_gas_462"

"$out_of_gas_461":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_462"

"$have_gas_462":                                  ; preds = %"$out_of_gas_461", %"$have_gas_447"
  %"$consume_463" = sub i64 %"$gasrem_459", %"$gasdivceil_458"
  store i64 %"$consume_463", i64* @_gasrem, align 8
  %"$execptr_load_464" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p2_465" = alloca [33 x i8], align 1
  %"$p2_466" = load [33 x i8], [33 x i8]* %p2, align 1
  store [33 x i8] %"$p2_466", [33 x i8]* %"$schnorr_get_address_p2_465", align 1
  %"$schnorr_get_address_call_467" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_464", [33 x i8]* %"$schnorr_get_address_p2_465")
  %"$schnorr_get_address_469" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_467", align 1
  store [20 x i8] %"$schnorr_get_address_469", [20 x i8]* %a2_gen, align 1
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 1, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$have_gas_462"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$have_gas_462"
  %"$consume_474" = sub i64 %"$gasrem_470", 1
  store i64 %"$consume_474", i64* @_gasrem, align 8
  %r2 = alloca %TName_Bool*, align 8
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 20, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_473"
  %"$consume_479" = sub i64 %"$gasrem_475", 20
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %"$execptr_load_480" = load i8*, i8** @_execptr, align 8
  %"$eq_a2_481" = alloca [20 x i8], align 1
  %"$a2_482" = load [20 x i8], [20 x i8]* %a2, align 1
  store [20 x i8] %"$a2_482", [20 x i8]* %"$eq_a2_481", align 1
  %"$$eq_a2_481_483" = bitcast [20 x i8]* %"$eq_a2_481" to i8*
  %"$eq_a2_gen_484" = alloca [20 x i8], align 1
  %"$a2_gen_485" = load [20 x i8], [20 x i8]* %a2_gen, align 1
  store [20 x i8] %"$a2_gen_485", [20 x i8]* %"$eq_a2_gen_484", align 1
  %"$$eq_a2_gen_484_486" = bitcast [20 x i8]* %"$eq_a2_gen_484" to i8*
  %"$eq_call_487" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_480", i32 20, i8* %"$$eq_a2_481_483", i8* %"$$eq_a2_gen_484_486")
  store %TName_Bool* %"$eq_call_487", %TName_Bool** %r2, align 8
  %"$gasrem_489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_490" = icmp ugt i64 1, %"$gasrem_489"
  br i1 %"$gascmp_490", label %"$out_of_gas_491", label %"$have_gas_492"

"$out_of_gas_491":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_492"

"$have_gas_492":                                  ; preds = %"$out_of_gas_491", %"$have_gas_478"
  %"$consume_493" = sub i64 %"$gasrem_489", 1
  store i64 %"$consume_493", i64* @_gasrem, align 8
  %p3 = alloca [33 x i8], align 1
  %"$gasrem_494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_495" = icmp ugt i64 1, %"$gasrem_494"
  br i1 %"$gascmp_495", label %"$out_of_gas_496", label %"$have_gas_497"

"$out_of_gas_496":                                ; preds = %"$have_gas_492"
  call void @_out_of_gas()
  br label %"$have_gas_497"

"$have_gas_497":                                  ; preds = %"$out_of_gas_496", %"$have_gas_492"
  %"$consume_498" = sub i64 %"$gasrem_494", 1
  store i64 %"$consume_498", i64* @_gasrem, align 8
  store [33 x i8] c"\02\FAzP\1F2<\C5>\07\0C\0A\94Sp6\86y\E7W)`\EC$\D8\A08~\F3\B5\0A\22\85", [33 x i8]* %p3, align 1
  %"$gasrem_499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_500" = icmp ugt i64 1, %"$gasrem_499"
  br i1 %"$gascmp_500", label %"$out_of_gas_501", label %"$have_gas_502"

"$out_of_gas_501":                                ; preds = %"$have_gas_497"
  call void @_out_of_gas()
  br label %"$have_gas_502"

"$have_gas_502":                                  ; preds = %"$out_of_gas_501", %"$have_gas_497"
  %"$consume_503" = sub i64 %"$gasrem_499", 1
  store i64 %"$consume_503", i64* @_gasrem, align 8
  %a3 = alloca [20 x i8], align 1
  %"$gasrem_504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_505" = icmp ugt i64 1, %"$gasrem_504"
  br i1 %"$gascmp_505", label %"$out_of_gas_506", label %"$have_gas_507"

"$out_of_gas_506":                                ; preds = %"$have_gas_502"
  call void @_out_of_gas()
  br label %"$have_gas_507"

"$have_gas_507":                                  ; preds = %"$out_of_gas_506", %"$have_gas_502"
  %"$consume_508" = sub i64 %"$gasrem_504", 1
  store i64 %"$consume_508", i64* @_gasrem, align 8
  store [20 x i8] c"\DE\D0/\D9y\FC.U\C0$;\D2\F5-\F0\22\C4\0A\DA\1E", [20 x i8]* %a3, align 1
  %"$gasrem_509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_510" = icmp ugt i64 1, %"$gasrem_509"
  br i1 %"$gascmp_510", label %"$out_of_gas_511", label %"$have_gas_512"

"$out_of_gas_511":                                ; preds = %"$have_gas_507"
  call void @_out_of_gas()
  br label %"$have_gas_512"

"$have_gas_512":                                  ; preds = %"$out_of_gas_511", %"$have_gas_507"
  %"$consume_513" = sub i64 %"$gasrem_509", 1
  store i64 %"$consume_513", i64* @_gasrem, align 8
  %a3_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p3_514" = alloca [33 x i8], align 1
  %"$p3_515" = load [33 x i8], [33 x i8]* %p3, align 1
  store [33 x i8] %"$p3_515", [33 x i8]* %"$_literal_cost_p3_514", align 1
  %"$$_literal_cost_p3_514_516" = bitcast [33 x i8]* %"$_literal_cost_p3_514" to i8*
  %"$_literal_cost_call_517" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_74", i8* %"$$_literal_cost_p3_514_516")
  %"$gasadd_518" = add i64 %"$_literal_cost_call_517", 0
  %"$gasdivceil_519" = urem i64 %"$gasadd_518", 960
  %"$gasdivceil_520" = udiv i64 %"$gasadd_518", 960
  %"$gasdivceil_521" = icmp eq i64 %"$gasdivceil_519", 0
  %"$gasdivceil_522" = add i64 %"$gasdivceil_520", 1
  %"$gasdivceil_523" = select i1 %"$gasdivceil_521", i64 %"$gasdivceil_520", i64 %"$gasdivceil_522"
  %"$gasrem_524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_525" = icmp ugt i64 %"$gasdivceil_523", %"$gasrem_524"
  br i1 %"$gascmp_525", label %"$out_of_gas_526", label %"$have_gas_527"

"$out_of_gas_526":                                ; preds = %"$have_gas_512"
  call void @_out_of_gas()
  br label %"$have_gas_527"

"$have_gas_527":                                  ; preds = %"$out_of_gas_526", %"$have_gas_512"
  %"$consume_528" = sub i64 %"$gasrem_524", %"$gasdivceil_523"
  store i64 %"$consume_528", i64* @_gasrem, align 8
  %"$execptr_load_529" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p3_530" = alloca [33 x i8], align 1
  %"$p3_531" = load [33 x i8], [33 x i8]* %p3, align 1
  store [33 x i8] %"$p3_531", [33 x i8]* %"$schnorr_get_address_p3_530", align 1
  %"$schnorr_get_address_call_532" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_529", [33 x i8]* %"$schnorr_get_address_p3_530")
  %"$schnorr_get_address_534" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_532", align 1
  store [20 x i8] %"$schnorr_get_address_534", [20 x i8]* %a3_gen, align 1
  %"$gasrem_535" = load i64, i64* @_gasrem, align 8
  %"$gascmp_536" = icmp ugt i64 1, %"$gasrem_535"
  br i1 %"$gascmp_536", label %"$out_of_gas_537", label %"$have_gas_538"

"$out_of_gas_537":                                ; preds = %"$have_gas_527"
  call void @_out_of_gas()
  br label %"$have_gas_538"

"$have_gas_538":                                  ; preds = %"$out_of_gas_537", %"$have_gas_527"
  %"$consume_539" = sub i64 %"$gasrem_535", 1
  store i64 %"$consume_539", i64* @_gasrem, align 8
  %r3 = alloca %TName_Bool*, align 8
  %"$gasrem_540" = load i64, i64* @_gasrem, align 8
  %"$gascmp_541" = icmp ugt i64 20, %"$gasrem_540"
  br i1 %"$gascmp_541", label %"$out_of_gas_542", label %"$have_gas_543"

"$out_of_gas_542":                                ; preds = %"$have_gas_538"
  call void @_out_of_gas()
  br label %"$have_gas_543"

"$have_gas_543":                                  ; preds = %"$out_of_gas_542", %"$have_gas_538"
  %"$consume_544" = sub i64 %"$gasrem_540", 20
  store i64 %"$consume_544", i64* @_gasrem, align 8
  %"$execptr_load_545" = load i8*, i8** @_execptr, align 8
  %"$eq_a3_546" = alloca [20 x i8], align 1
  %"$a3_547" = load [20 x i8], [20 x i8]* %a3, align 1
  store [20 x i8] %"$a3_547", [20 x i8]* %"$eq_a3_546", align 1
  %"$$eq_a3_546_548" = bitcast [20 x i8]* %"$eq_a3_546" to i8*
  %"$eq_a3_gen_549" = alloca [20 x i8], align 1
  %"$a3_gen_550" = load [20 x i8], [20 x i8]* %a3_gen, align 1
  store [20 x i8] %"$a3_gen_550", [20 x i8]* %"$eq_a3_gen_549", align 1
  %"$$eq_a3_gen_549_551" = bitcast [20 x i8]* %"$eq_a3_gen_549" to i8*
  %"$eq_call_552" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_545", i32 20, i8* %"$$eq_a3_546_548", i8* %"$$eq_a3_gen_549_551")
  store %TName_Bool* %"$eq_call_552", %TName_Bool** %r3, align 8
  %"$gasrem_554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_555" = icmp ugt i64 1, %"$gasrem_554"
  br i1 %"$gascmp_555", label %"$out_of_gas_556", label %"$have_gas_557"

"$out_of_gas_556":                                ; preds = %"$have_gas_543"
  call void @_out_of_gas()
  br label %"$have_gas_557"

"$have_gas_557":                                  ; preds = %"$out_of_gas_556", %"$have_gas_543"
  %"$consume_558" = sub i64 %"$gasrem_554", 1
  store i64 %"$consume_558", i64* @_gasrem, align 8
  %p4 = alloca [33 x i8], align 1
  %"$gasrem_559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_560" = icmp ugt i64 1, %"$gasrem_559"
  br i1 %"$gascmp_560", label %"$out_of_gas_561", label %"$have_gas_562"

"$out_of_gas_561":                                ; preds = %"$have_gas_557"
  call void @_out_of_gas()
  br label %"$have_gas_562"

"$have_gas_562":                                  ; preds = %"$out_of_gas_561", %"$have_gas_557"
  %"$consume_563" = sub i64 %"$gasrem_559", 1
  store i64 %"$consume_563", i64* @_gasrem, align 8
  store [33 x i8] c"\03o\86v\E4s\AF \B4\CC\E7\D3'\10=\E4PJ\9C\00\EA\E7\EA\03\D0\A3e\FBH\81z\C9\7F", [33 x i8]* %p4, align 1
  %"$gasrem_564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_565" = icmp ugt i64 1, %"$gasrem_564"
  br i1 %"$gascmp_565", label %"$out_of_gas_566", label %"$have_gas_567"

"$out_of_gas_566":                                ; preds = %"$have_gas_562"
  call void @_out_of_gas()
  br label %"$have_gas_567"

"$have_gas_567":                                  ; preds = %"$out_of_gas_566", %"$have_gas_562"
  %"$consume_568" = sub i64 %"$gasrem_564", 1
  store i64 %"$consume_568", i64* @_gasrem, align 8
  %a4 = alloca [20 x i8], align 1
  %"$gasrem_569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_570" = icmp ugt i64 1, %"$gasrem_569"
  br i1 %"$gascmp_570", label %"$out_of_gas_571", label %"$have_gas_572"

"$out_of_gas_571":                                ; preds = %"$have_gas_567"
  call void @_out_of_gas()
  br label %"$have_gas_572"

"$have_gas_572":                                  ; preds = %"$out_of_gas_571", %"$have_gas_567"
  %"$consume_573" = sub i64 %"$gasrem_569", 1
  store i64 %"$consume_573", i64* @_gasrem, align 8
  store [20 x i8] c"\13\F0n`){\EAj<@/od\C4\16\A6\B3\1EXn", [20 x i8]* %a4, align 1
  %"$gasrem_574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_575" = icmp ugt i64 1, %"$gasrem_574"
  br i1 %"$gascmp_575", label %"$out_of_gas_576", label %"$have_gas_577"

"$out_of_gas_576":                                ; preds = %"$have_gas_572"
  call void @_out_of_gas()
  br label %"$have_gas_577"

"$have_gas_577":                                  ; preds = %"$out_of_gas_576", %"$have_gas_572"
  %"$consume_578" = sub i64 %"$gasrem_574", 1
  store i64 %"$consume_578", i64* @_gasrem, align 8
  %a4_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p4_579" = alloca [33 x i8], align 1
  %"$p4_580" = load [33 x i8], [33 x i8]* %p4, align 1
  store [33 x i8] %"$p4_580", [33 x i8]* %"$_literal_cost_p4_579", align 1
  %"$$_literal_cost_p4_579_581" = bitcast [33 x i8]* %"$_literal_cost_p4_579" to i8*
  %"$_literal_cost_call_582" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_74", i8* %"$$_literal_cost_p4_579_581")
  %"$gasadd_583" = add i64 %"$_literal_cost_call_582", 0
  %"$gasdivceil_584" = urem i64 %"$gasadd_583", 960
  %"$gasdivceil_585" = udiv i64 %"$gasadd_583", 960
  %"$gasdivceil_586" = icmp eq i64 %"$gasdivceil_584", 0
  %"$gasdivceil_587" = add i64 %"$gasdivceil_585", 1
  %"$gasdivceil_588" = select i1 %"$gasdivceil_586", i64 %"$gasdivceil_585", i64 %"$gasdivceil_587"
  %"$gasrem_589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_590" = icmp ugt i64 %"$gasdivceil_588", %"$gasrem_589"
  br i1 %"$gascmp_590", label %"$out_of_gas_591", label %"$have_gas_592"

"$out_of_gas_591":                                ; preds = %"$have_gas_577"
  call void @_out_of_gas()
  br label %"$have_gas_592"

"$have_gas_592":                                  ; preds = %"$out_of_gas_591", %"$have_gas_577"
  %"$consume_593" = sub i64 %"$gasrem_589", %"$gasdivceil_588"
  store i64 %"$consume_593", i64* @_gasrem, align 8
  %"$execptr_load_594" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p4_595" = alloca [33 x i8], align 1
  %"$p4_596" = load [33 x i8], [33 x i8]* %p4, align 1
  store [33 x i8] %"$p4_596", [33 x i8]* %"$schnorr_get_address_p4_595", align 1
  %"$schnorr_get_address_call_597" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_594", [33 x i8]* %"$schnorr_get_address_p4_595")
  %"$schnorr_get_address_599" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_597", align 1
  store [20 x i8] %"$schnorr_get_address_599", [20 x i8]* %a4_gen, align 1
  %"$gasrem_600" = load i64, i64* @_gasrem, align 8
  %"$gascmp_601" = icmp ugt i64 1, %"$gasrem_600"
  br i1 %"$gascmp_601", label %"$out_of_gas_602", label %"$have_gas_603"

"$out_of_gas_602":                                ; preds = %"$have_gas_592"
  call void @_out_of_gas()
  br label %"$have_gas_603"

"$have_gas_603":                                  ; preds = %"$out_of_gas_602", %"$have_gas_592"
  %"$consume_604" = sub i64 %"$gasrem_600", 1
  store i64 %"$consume_604", i64* @_gasrem, align 8
  %r4 = alloca %TName_Bool*, align 8
  %"$gasrem_605" = load i64, i64* @_gasrem, align 8
  %"$gascmp_606" = icmp ugt i64 20, %"$gasrem_605"
  br i1 %"$gascmp_606", label %"$out_of_gas_607", label %"$have_gas_608"

"$out_of_gas_607":                                ; preds = %"$have_gas_603"
  call void @_out_of_gas()
  br label %"$have_gas_608"

"$have_gas_608":                                  ; preds = %"$out_of_gas_607", %"$have_gas_603"
  %"$consume_609" = sub i64 %"$gasrem_605", 20
  store i64 %"$consume_609", i64* @_gasrem, align 8
  %"$execptr_load_610" = load i8*, i8** @_execptr, align 8
  %"$eq_a4_611" = alloca [20 x i8], align 1
  %"$a4_612" = load [20 x i8], [20 x i8]* %a4, align 1
  store [20 x i8] %"$a4_612", [20 x i8]* %"$eq_a4_611", align 1
  %"$$eq_a4_611_613" = bitcast [20 x i8]* %"$eq_a4_611" to i8*
  %"$eq_a4_gen_614" = alloca [20 x i8], align 1
  %"$a4_gen_615" = load [20 x i8], [20 x i8]* %a4_gen, align 1
  store [20 x i8] %"$a4_gen_615", [20 x i8]* %"$eq_a4_gen_614", align 1
  %"$$eq_a4_gen_614_616" = bitcast [20 x i8]* %"$eq_a4_gen_614" to i8*
  %"$eq_call_617" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_610", i32 20, i8* %"$$eq_a4_611_613", i8* %"$$eq_a4_gen_614_616")
  store %TName_Bool* %"$eq_call_617", %TName_Bool** %r4, align 8
  %"$gasrem_619" = load i64, i64* @_gasrem, align 8
  %"$gascmp_620" = icmp ugt i64 1, %"$gasrem_619"
  br i1 %"$gascmp_620", label %"$out_of_gas_621", label %"$have_gas_622"

"$out_of_gas_621":                                ; preds = %"$have_gas_608"
  call void @_out_of_gas()
  br label %"$have_gas_622"

"$have_gas_622":                                  ; preds = %"$out_of_gas_621", %"$have_gas_608"
  %"$consume_623" = sub i64 %"$gasrem_619", 1
  store i64 %"$consume_623", i64* @_gasrem, align 8
  %p5 = alloca [33 x i8], align 1
  %"$gasrem_624" = load i64, i64* @_gasrem, align 8
  %"$gascmp_625" = icmp ugt i64 1, %"$gasrem_624"
  br i1 %"$gascmp_625", label %"$out_of_gas_626", label %"$have_gas_627"

"$out_of_gas_626":                                ; preds = %"$have_gas_622"
  call void @_out_of_gas()
  br label %"$have_gas_627"

"$have_gas_627":                                  ; preds = %"$out_of_gas_626", %"$have_gas_622"
  %"$consume_628" = sub i64 %"$gasrem_624", 1
  store i64 %"$consume_628", i64* @_gasrem, align 8
  store [33 x i8] c"\03L965)\C2\D4\07\8Fr\B8\C4\98\C4\CB\C5\BA^\10\D8fo\E0o\10J'\E0\E4BB\A0", [33 x i8]* %p5, align 1
  %"$gasrem_629" = load i64, i64* @_gasrem, align 8
  %"$gascmp_630" = icmp ugt i64 1, %"$gasrem_629"
  br i1 %"$gascmp_630", label %"$out_of_gas_631", label %"$have_gas_632"

"$out_of_gas_631":                                ; preds = %"$have_gas_627"
  call void @_out_of_gas()
  br label %"$have_gas_632"

"$have_gas_632":                                  ; preds = %"$out_of_gas_631", %"$have_gas_627"
  %"$consume_633" = sub i64 %"$gasrem_629", 1
  store i64 %"$consume_633", i64* @_gasrem, align 8
  %a5 = alloca [20 x i8], align 1
  %"$gasrem_634" = load i64, i64* @_gasrem, align 8
  %"$gascmp_635" = icmp ugt i64 1, %"$gasrem_634"
  br i1 %"$gascmp_635", label %"$out_of_gas_636", label %"$have_gas_637"

"$out_of_gas_636":                                ; preds = %"$have_gas_632"
  call void @_out_of_gas()
  br label %"$have_gas_637"

"$have_gas_637":                                  ; preds = %"$out_of_gas_636", %"$have_gas_632"
  %"$consume_638" = sub i64 %"$gasrem_634", 1
  store i64 %"$consume_638", i64* @_gasrem, align 8
  store [20 x i8] c"\1A\90\C2S\07\C3\CCq\95\8A\83\FA!:#b\D8Y\CF3", [20 x i8]* %a5, align 1
  %"$gasrem_639" = load i64, i64* @_gasrem, align 8
  %"$gascmp_640" = icmp ugt i64 1, %"$gasrem_639"
  br i1 %"$gascmp_640", label %"$out_of_gas_641", label %"$have_gas_642"

"$out_of_gas_641":                                ; preds = %"$have_gas_637"
  call void @_out_of_gas()
  br label %"$have_gas_642"

"$have_gas_642":                                  ; preds = %"$out_of_gas_641", %"$have_gas_637"
  %"$consume_643" = sub i64 %"$gasrem_639", 1
  store i64 %"$consume_643", i64* @_gasrem, align 8
  %a5_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p5_644" = alloca [33 x i8], align 1
  %"$p5_645" = load [33 x i8], [33 x i8]* %p5, align 1
  store [33 x i8] %"$p5_645", [33 x i8]* %"$_literal_cost_p5_644", align 1
  %"$$_literal_cost_p5_644_646" = bitcast [33 x i8]* %"$_literal_cost_p5_644" to i8*
  %"$_literal_cost_call_647" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_74", i8* %"$$_literal_cost_p5_644_646")
  %"$gasadd_648" = add i64 %"$_literal_cost_call_647", 0
  %"$gasdivceil_649" = urem i64 %"$gasadd_648", 960
  %"$gasdivceil_650" = udiv i64 %"$gasadd_648", 960
  %"$gasdivceil_651" = icmp eq i64 %"$gasdivceil_649", 0
  %"$gasdivceil_652" = add i64 %"$gasdivceil_650", 1
  %"$gasdivceil_653" = select i1 %"$gasdivceil_651", i64 %"$gasdivceil_650", i64 %"$gasdivceil_652"
  %"$gasrem_654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_655" = icmp ugt i64 %"$gasdivceil_653", %"$gasrem_654"
  br i1 %"$gascmp_655", label %"$out_of_gas_656", label %"$have_gas_657"

"$out_of_gas_656":                                ; preds = %"$have_gas_642"
  call void @_out_of_gas()
  br label %"$have_gas_657"

"$have_gas_657":                                  ; preds = %"$out_of_gas_656", %"$have_gas_642"
  %"$consume_658" = sub i64 %"$gasrem_654", %"$gasdivceil_653"
  store i64 %"$consume_658", i64* @_gasrem, align 8
  %"$execptr_load_659" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p5_660" = alloca [33 x i8], align 1
  %"$p5_661" = load [33 x i8], [33 x i8]* %p5, align 1
  store [33 x i8] %"$p5_661", [33 x i8]* %"$schnorr_get_address_p5_660", align 1
  %"$schnorr_get_address_call_662" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_659", [33 x i8]* %"$schnorr_get_address_p5_660")
  %"$schnorr_get_address_664" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_662", align 1
  store [20 x i8] %"$schnorr_get_address_664", [20 x i8]* %a5_gen, align 1
  %"$gasrem_665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_666" = icmp ugt i64 1, %"$gasrem_665"
  br i1 %"$gascmp_666", label %"$out_of_gas_667", label %"$have_gas_668"

"$out_of_gas_667":                                ; preds = %"$have_gas_657"
  call void @_out_of_gas()
  br label %"$have_gas_668"

"$have_gas_668":                                  ; preds = %"$out_of_gas_667", %"$have_gas_657"
  %"$consume_669" = sub i64 %"$gasrem_665", 1
  store i64 %"$consume_669", i64* @_gasrem, align 8
  %r5 = alloca %TName_Bool*, align 8
  %"$gasrem_670" = load i64, i64* @_gasrem, align 8
  %"$gascmp_671" = icmp ugt i64 20, %"$gasrem_670"
  br i1 %"$gascmp_671", label %"$out_of_gas_672", label %"$have_gas_673"

"$out_of_gas_672":                                ; preds = %"$have_gas_668"
  call void @_out_of_gas()
  br label %"$have_gas_673"

"$have_gas_673":                                  ; preds = %"$out_of_gas_672", %"$have_gas_668"
  %"$consume_674" = sub i64 %"$gasrem_670", 20
  store i64 %"$consume_674", i64* @_gasrem, align 8
  %"$execptr_load_675" = load i8*, i8** @_execptr, align 8
  %"$eq_a5_676" = alloca [20 x i8], align 1
  %"$a5_677" = load [20 x i8], [20 x i8]* %a5, align 1
  store [20 x i8] %"$a5_677", [20 x i8]* %"$eq_a5_676", align 1
  %"$$eq_a5_676_678" = bitcast [20 x i8]* %"$eq_a5_676" to i8*
  %"$eq_a5_gen_679" = alloca [20 x i8], align 1
  %"$a5_gen_680" = load [20 x i8], [20 x i8]* %a5_gen, align 1
  store [20 x i8] %"$a5_gen_680", [20 x i8]* %"$eq_a5_gen_679", align 1
  %"$$eq_a5_gen_679_681" = bitcast [20 x i8]* %"$eq_a5_gen_679" to i8*
  %"$eq_call_682" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_675", i32 20, i8* %"$$eq_a5_676_678", i8* %"$$eq_a5_gen_679_681")
  store %TName_Bool* %"$eq_call_682", %TName_Bool** %r5, align 8
  %"$gasrem_684" = load i64, i64* @_gasrem, align 8
  %"$gascmp_685" = icmp ugt i64 1, %"$gasrem_684"
  br i1 %"$gascmp_685", label %"$out_of_gas_686", label %"$have_gas_687"

"$out_of_gas_686":                                ; preds = %"$have_gas_673"
  call void @_out_of_gas()
  br label %"$have_gas_687"

"$have_gas_687":                                  ; preds = %"$out_of_gas_686", %"$have_gas_673"
  %"$consume_688" = sub i64 %"$gasrem_684", 1
  store i64 %"$consume_688", i64* @_gasrem, align 8
  %p6 = alloca [33 x i8], align 1
  %"$gasrem_689" = load i64, i64* @_gasrem, align 8
  %"$gascmp_690" = icmp ugt i64 1, %"$gasrem_689"
  br i1 %"$gascmp_690", label %"$out_of_gas_691", label %"$have_gas_692"

"$out_of_gas_691":                                ; preds = %"$have_gas_687"
  call void @_out_of_gas()
  br label %"$have_gas_692"

"$have_gas_692":                                  ; preds = %"$out_of_gas_691", %"$have_gas_687"
  %"$consume_693" = sub i64 %"$gasrem_689", 1
  store i64 %"$consume_693", i64* @_gasrem, align 8
  store [33 x i8] c"\02m\A5\BFl:<\91\C0\8A=\D7\FB\CE\0B\EA\F5\D46\03\9C\97\B0z\0Fa\AAK\94\93\E4g\87", [33 x i8]* %p6, align 1
  %"$gasrem_694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_695" = icmp ugt i64 1, %"$gasrem_694"
  br i1 %"$gascmp_695", label %"$out_of_gas_696", label %"$have_gas_697"

"$out_of_gas_696":                                ; preds = %"$have_gas_692"
  call void @_out_of_gas()
  br label %"$have_gas_697"

"$have_gas_697":                                  ; preds = %"$out_of_gas_696", %"$have_gas_692"
  %"$consume_698" = sub i64 %"$gasrem_694", 1
  store i64 %"$consume_698", i64* @_gasrem, align 8
  %a6 = alloca [20 x i8], align 1
  %"$gasrem_699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_700" = icmp ugt i64 1, %"$gasrem_699"
  br i1 %"$gascmp_700", label %"$out_of_gas_701", label %"$have_gas_702"

"$out_of_gas_701":                                ; preds = %"$have_gas_697"
  call void @_out_of_gas()
  br label %"$have_gas_702"

"$have_gas_702":                                  ; preds = %"$out_of_gas_701", %"$have_gas_697"
  %"$consume_703" = sub i64 %"$gasrem_699", 1
  store i64 %"$consume_703", i64* @_gasrem, align 8
  store [20 x i8] c"bZ\BA\EB\D8}\AE\9A\B1(\F3\B3\AE\99h\88\13\D9\C5\DF", [20 x i8]* %a6, align 1
  %"$gasrem_704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_705" = icmp ugt i64 1, %"$gasrem_704"
  br i1 %"$gascmp_705", label %"$out_of_gas_706", label %"$have_gas_707"

"$out_of_gas_706":                                ; preds = %"$have_gas_702"
  call void @_out_of_gas()
  br label %"$have_gas_707"

"$have_gas_707":                                  ; preds = %"$out_of_gas_706", %"$have_gas_702"
  %"$consume_708" = sub i64 %"$gasrem_704", 1
  store i64 %"$consume_708", i64* @_gasrem, align 8
  %a6_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p6_709" = alloca [33 x i8], align 1
  %"$p6_710" = load [33 x i8], [33 x i8]* %p6, align 1
  store [33 x i8] %"$p6_710", [33 x i8]* %"$_literal_cost_p6_709", align 1
  %"$$_literal_cost_p6_709_711" = bitcast [33 x i8]* %"$_literal_cost_p6_709" to i8*
  %"$_literal_cost_call_712" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_74", i8* %"$$_literal_cost_p6_709_711")
  %"$gasadd_713" = add i64 %"$_literal_cost_call_712", 0
  %"$gasdivceil_714" = urem i64 %"$gasadd_713", 960
  %"$gasdivceil_715" = udiv i64 %"$gasadd_713", 960
  %"$gasdivceil_716" = icmp eq i64 %"$gasdivceil_714", 0
  %"$gasdivceil_717" = add i64 %"$gasdivceil_715", 1
  %"$gasdivceil_718" = select i1 %"$gasdivceil_716", i64 %"$gasdivceil_715", i64 %"$gasdivceil_717"
  %"$gasrem_719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_720" = icmp ugt i64 %"$gasdivceil_718", %"$gasrem_719"
  br i1 %"$gascmp_720", label %"$out_of_gas_721", label %"$have_gas_722"

"$out_of_gas_721":                                ; preds = %"$have_gas_707"
  call void @_out_of_gas()
  br label %"$have_gas_722"

"$have_gas_722":                                  ; preds = %"$out_of_gas_721", %"$have_gas_707"
  %"$consume_723" = sub i64 %"$gasrem_719", %"$gasdivceil_718"
  store i64 %"$consume_723", i64* @_gasrem, align 8
  %"$execptr_load_724" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p6_725" = alloca [33 x i8], align 1
  %"$p6_726" = load [33 x i8], [33 x i8]* %p6, align 1
  store [33 x i8] %"$p6_726", [33 x i8]* %"$schnorr_get_address_p6_725", align 1
  %"$schnorr_get_address_call_727" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_724", [33 x i8]* %"$schnorr_get_address_p6_725")
  %"$schnorr_get_address_729" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_727", align 1
  store [20 x i8] %"$schnorr_get_address_729", [20 x i8]* %a6_gen, align 1
  %"$gasrem_730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_731" = icmp ugt i64 1, %"$gasrem_730"
  br i1 %"$gascmp_731", label %"$out_of_gas_732", label %"$have_gas_733"

"$out_of_gas_732":                                ; preds = %"$have_gas_722"
  call void @_out_of_gas()
  br label %"$have_gas_733"

"$have_gas_733":                                  ; preds = %"$out_of_gas_732", %"$have_gas_722"
  %"$consume_734" = sub i64 %"$gasrem_730", 1
  store i64 %"$consume_734", i64* @_gasrem, align 8
  %r6 = alloca %TName_Bool*, align 8
  %"$gasrem_735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_736" = icmp ugt i64 20, %"$gasrem_735"
  br i1 %"$gascmp_736", label %"$out_of_gas_737", label %"$have_gas_738"

"$out_of_gas_737":                                ; preds = %"$have_gas_733"
  call void @_out_of_gas()
  br label %"$have_gas_738"

"$have_gas_738":                                  ; preds = %"$out_of_gas_737", %"$have_gas_733"
  %"$consume_739" = sub i64 %"$gasrem_735", 20
  store i64 %"$consume_739", i64* @_gasrem, align 8
  %"$execptr_load_740" = load i8*, i8** @_execptr, align 8
  %"$eq_a6_741" = alloca [20 x i8], align 1
  %"$a6_742" = load [20 x i8], [20 x i8]* %a6, align 1
  store [20 x i8] %"$a6_742", [20 x i8]* %"$eq_a6_741", align 1
  %"$$eq_a6_741_743" = bitcast [20 x i8]* %"$eq_a6_741" to i8*
  %"$eq_a6_gen_744" = alloca [20 x i8], align 1
  %"$a6_gen_745" = load [20 x i8], [20 x i8]* %a6_gen, align 1
  store [20 x i8] %"$a6_gen_745", [20 x i8]* %"$eq_a6_gen_744", align 1
  %"$$eq_a6_gen_744_746" = bitcast [20 x i8]* %"$eq_a6_gen_744" to i8*
  %"$eq_call_747" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_740", i32 20, i8* %"$$eq_a6_741_743", i8* %"$$eq_a6_gen_744_746")
  store %TName_Bool* %"$eq_call_747", %TName_Bool** %r6, align 8
  %"$gasrem_749" = load i64, i64* @_gasrem, align 8
  %"$gascmp_750" = icmp ugt i64 1, %"$gasrem_749"
  br i1 %"$gascmp_750", label %"$out_of_gas_751", label %"$have_gas_752"

"$out_of_gas_751":                                ; preds = %"$have_gas_738"
  call void @_out_of_gas()
  br label %"$have_gas_752"

"$have_gas_752":                                  ; preds = %"$out_of_gas_751", %"$have_gas_738"
  %"$consume_753" = sub i64 %"$gasrem_749", 1
  store i64 %"$consume_753", i64* @_gasrem, align 8
  %p7 = alloca [33 x i8], align 1
  %"$gasrem_754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_755" = icmp ugt i64 1, %"$gasrem_754"
  br i1 %"$gascmp_755", label %"$out_of_gas_756", label %"$have_gas_757"

"$out_of_gas_756":                                ; preds = %"$have_gas_752"
  call void @_out_of_gas()
  br label %"$have_gas_757"

"$have_gas_757":                                  ; preds = %"$out_of_gas_756", %"$have_gas_752"
  %"$consume_758" = sub i64 %"$gasrem_754", 1
  store i64 %"$consume_758", i64* @_gasrem, align 8
  store [33 x i8] c"\03*f\1F\9DJ\B8\DD\98\18\CE\D2\F6/=\A1O\DD#\E6\8EX\D0\1AJ\E1\86#\1D\7F\B6\09\BB", [33 x i8]* %p7, align 1
  %"$gasrem_759" = load i64, i64* @_gasrem, align 8
  %"$gascmp_760" = icmp ugt i64 1, %"$gasrem_759"
  br i1 %"$gascmp_760", label %"$out_of_gas_761", label %"$have_gas_762"

"$out_of_gas_761":                                ; preds = %"$have_gas_757"
  call void @_out_of_gas()
  br label %"$have_gas_762"

"$have_gas_762":                                  ; preds = %"$out_of_gas_761", %"$have_gas_757"
  %"$consume_763" = sub i64 %"$gasrem_759", 1
  store i64 %"$consume_763", i64* @_gasrem, align 8
  %a7 = alloca [20 x i8], align 1
  %"$gasrem_764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_765" = icmp ugt i64 1, %"$gasrem_764"
  br i1 %"$gascmp_765", label %"$out_of_gas_766", label %"$have_gas_767"

"$out_of_gas_766":                                ; preds = %"$have_gas_762"
  call void @_out_of_gas()
  br label %"$have_gas_767"

"$have_gas_767":                                  ; preds = %"$out_of_gas_766", %"$have_gas_762"
  %"$consume_768" = sub i64 %"$gasrem_764", 1
  store i64 %"$consume_768", i64* @_gasrem, align 8
  store [20 x i8] c"6\BA4\09\7F\86\11\91\C4\8C\83\9C\9B\1A\8BY\12\F5\83\CF", [20 x i8]* %a7, align 1
  %"$gasrem_769" = load i64, i64* @_gasrem, align 8
  %"$gascmp_770" = icmp ugt i64 1, %"$gasrem_769"
  br i1 %"$gascmp_770", label %"$out_of_gas_771", label %"$have_gas_772"

"$out_of_gas_771":                                ; preds = %"$have_gas_767"
  call void @_out_of_gas()
  br label %"$have_gas_772"

"$have_gas_772":                                  ; preds = %"$out_of_gas_771", %"$have_gas_767"
  %"$consume_773" = sub i64 %"$gasrem_769", 1
  store i64 %"$consume_773", i64* @_gasrem, align 8
  %a7_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p7_774" = alloca [33 x i8], align 1
  %"$p7_775" = load [33 x i8], [33 x i8]* %p7, align 1
  store [33 x i8] %"$p7_775", [33 x i8]* %"$_literal_cost_p7_774", align 1
  %"$$_literal_cost_p7_774_776" = bitcast [33 x i8]* %"$_literal_cost_p7_774" to i8*
  %"$_literal_cost_call_777" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_74", i8* %"$$_literal_cost_p7_774_776")
  %"$gasadd_778" = add i64 %"$_literal_cost_call_777", 0
  %"$gasdivceil_779" = urem i64 %"$gasadd_778", 960
  %"$gasdivceil_780" = udiv i64 %"$gasadd_778", 960
  %"$gasdivceil_781" = icmp eq i64 %"$gasdivceil_779", 0
  %"$gasdivceil_782" = add i64 %"$gasdivceil_780", 1
  %"$gasdivceil_783" = select i1 %"$gasdivceil_781", i64 %"$gasdivceil_780", i64 %"$gasdivceil_782"
  %"$gasrem_784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_785" = icmp ugt i64 %"$gasdivceil_783", %"$gasrem_784"
  br i1 %"$gascmp_785", label %"$out_of_gas_786", label %"$have_gas_787"

"$out_of_gas_786":                                ; preds = %"$have_gas_772"
  call void @_out_of_gas()
  br label %"$have_gas_787"

"$have_gas_787":                                  ; preds = %"$out_of_gas_786", %"$have_gas_772"
  %"$consume_788" = sub i64 %"$gasrem_784", %"$gasdivceil_783"
  store i64 %"$consume_788", i64* @_gasrem, align 8
  %"$execptr_load_789" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p7_790" = alloca [33 x i8], align 1
  %"$p7_791" = load [33 x i8], [33 x i8]* %p7, align 1
  store [33 x i8] %"$p7_791", [33 x i8]* %"$schnorr_get_address_p7_790", align 1
  %"$schnorr_get_address_call_792" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_789", [33 x i8]* %"$schnorr_get_address_p7_790")
  %"$schnorr_get_address_794" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_792", align 1
  store [20 x i8] %"$schnorr_get_address_794", [20 x i8]* %a7_gen, align 1
  %"$gasrem_795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_796" = icmp ugt i64 1, %"$gasrem_795"
  br i1 %"$gascmp_796", label %"$out_of_gas_797", label %"$have_gas_798"

"$out_of_gas_797":                                ; preds = %"$have_gas_787"
  call void @_out_of_gas()
  br label %"$have_gas_798"

"$have_gas_798":                                  ; preds = %"$out_of_gas_797", %"$have_gas_787"
  %"$consume_799" = sub i64 %"$gasrem_795", 1
  store i64 %"$consume_799", i64* @_gasrem, align 8
  %r7 = alloca %TName_Bool*, align 8
  %"$gasrem_800" = load i64, i64* @_gasrem, align 8
  %"$gascmp_801" = icmp ugt i64 20, %"$gasrem_800"
  br i1 %"$gascmp_801", label %"$out_of_gas_802", label %"$have_gas_803"

"$out_of_gas_802":                                ; preds = %"$have_gas_798"
  call void @_out_of_gas()
  br label %"$have_gas_803"

"$have_gas_803":                                  ; preds = %"$out_of_gas_802", %"$have_gas_798"
  %"$consume_804" = sub i64 %"$gasrem_800", 20
  store i64 %"$consume_804", i64* @_gasrem, align 8
  %"$execptr_load_805" = load i8*, i8** @_execptr, align 8
  %"$eq_a7_806" = alloca [20 x i8], align 1
  %"$a7_807" = load [20 x i8], [20 x i8]* %a7, align 1
  store [20 x i8] %"$a7_807", [20 x i8]* %"$eq_a7_806", align 1
  %"$$eq_a7_806_808" = bitcast [20 x i8]* %"$eq_a7_806" to i8*
  %"$eq_a7_gen_809" = alloca [20 x i8], align 1
  %"$a7_gen_810" = load [20 x i8], [20 x i8]* %a7_gen, align 1
  store [20 x i8] %"$a7_gen_810", [20 x i8]* %"$eq_a7_gen_809", align 1
  %"$$eq_a7_gen_809_811" = bitcast [20 x i8]* %"$eq_a7_gen_809" to i8*
  %"$eq_call_812" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_805", i32 20, i8* %"$$eq_a7_806_808", i8* %"$$eq_a7_gen_809_811")
  store %TName_Bool* %"$eq_call_812", %TName_Bool** %r7, align 8
  %"$gasrem_814" = load i64, i64* @_gasrem, align 8
  %"$gascmp_815" = icmp ugt i64 1, %"$gasrem_814"
  br i1 %"$gascmp_815", label %"$out_of_gas_816", label %"$have_gas_817"

"$out_of_gas_816":                                ; preds = %"$have_gas_803"
  call void @_out_of_gas()
  br label %"$have_gas_817"

"$have_gas_817":                                  ; preds = %"$out_of_gas_816", %"$have_gas_803"
  %"$consume_818" = sub i64 %"$gasrem_814", 1
  store i64 %"$consume_818", i64* @_gasrem, align 8
  %p8 = alloca [33 x i8], align 1
  %"$gasrem_819" = load i64, i64* @_gasrem, align 8
  %"$gascmp_820" = icmp ugt i64 1, %"$gasrem_819"
  br i1 %"$gascmp_820", label %"$out_of_gas_821", label %"$have_gas_822"

"$out_of_gas_821":                                ; preds = %"$have_gas_817"
  call void @_out_of_gas()
  br label %"$have_gas_822"

"$have_gas_822":                                  ; preds = %"$out_of_gas_821", %"$have_gas_817"
  %"$consume_823" = sub i64 %"$gasrem_819", 1
  store i64 %"$consume_823", i64* @_gasrem, align 8
  store [33 x i8] c"\03j\94\E9%\BB \0D\CEA\A4l\90&\E0#\B2&\DD[L\B2'\CEvm`\CC\8F\AB!\81H", [33 x i8]* %p8, align 1
  %"$gasrem_824" = load i64, i64* @_gasrem, align 8
  %"$gascmp_825" = icmp ugt i64 1, %"$gasrem_824"
  br i1 %"$gascmp_825", label %"$out_of_gas_826", label %"$have_gas_827"

"$out_of_gas_826":                                ; preds = %"$have_gas_822"
  call void @_out_of_gas()
  br label %"$have_gas_827"

"$have_gas_827":                                  ; preds = %"$out_of_gas_826", %"$have_gas_822"
  %"$consume_828" = sub i64 %"$gasrem_824", 1
  store i64 %"$consume_828", i64* @_gasrem, align 8
  %a8 = alloca [20 x i8], align 1
  %"$gasrem_829" = load i64, i64* @_gasrem, align 8
  %"$gascmp_830" = icmp ugt i64 1, %"$gasrem_829"
  br i1 %"$gascmp_830", label %"$out_of_gas_831", label %"$have_gas_832"

"$out_of_gas_831":                                ; preds = %"$have_gas_827"
  call void @_out_of_gas()
  br label %"$have_gas_832"

"$have_gas_832":                                  ; preds = %"$out_of_gas_831", %"$have_gas_827"
  %"$consume_833" = sub i64 %"$gasrem_829", 1
  store i64 %"$consume_833", i64* @_gasrem, align 8
  store [20 x i8] c"\D2E:\E7l\9A\86\AA\E5D\FC\A6\99\DB\DC\\Wj\EF:", [20 x i8]* %a8, align 1
  %"$gasrem_834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_835" = icmp ugt i64 1, %"$gasrem_834"
  br i1 %"$gascmp_835", label %"$out_of_gas_836", label %"$have_gas_837"

"$out_of_gas_836":                                ; preds = %"$have_gas_832"
  call void @_out_of_gas()
  br label %"$have_gas_837"

"$have_gas_837":                                  ; preds = %"$out_of_gas_836", %"$have_gas_832"
  %"$consume_838" = sub i64 %"$gasrem_834", 1
  store i64 %"$consume_838", i64* @_gasrem, align 8
  %a8_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p8_839" = alloca [33 x i8], align 1
  %"$p8_840" = load [33 x i8], [33 x i8]* %p8, align 1
  store [33 x i8] %"$p8_840", [33 x i8]* %"$_literal_cost_p8_839", align 1
  %"$$_literal_cost_p8_839_841" = bitcast [33 x i8]* %"$_literal_cost_p8_839" to i8*
  %"$_literal_cost_call_842" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_74", i8* %"$$_literal_cost_p8_839_841")
  %"$gasadd_843" = add i64 %"$_literal_cost_call_842", 0
  %"$gasdivceil_844" = urem i64 %"$gasadd_843", 960
  %"$gasdivceil_845" = udiv i64 %"$gasadd_843", 960
  %"$gasdivceil_846" = icmp eq i64 %"$gasdivceil_844", 0
  %"$gasdivceil_847" = add i64 %"$gasdivceil_845", 1
  %"$gasdivceil_848" = select i1 %"$gasdivceil_846", i64 %"$gasdivceil_845", i64 %"$gasdivceil_847"
  %"$gasrem_849" = load i64, i64* @_gasrem, align 8
  %"$gascmp_850" = icmp ugt i64 %"$gasdivceil_848", %"$gasrem_849"
  br i1 %"$gascmp_850", label %"$out_of_gas_851", label %"$have_gas_852"

"$out_of_gas_851":                                ; preds = %"$have_gas_837"
  call void @_out_of_gas()
  br label %"$have_gas_852"

"$have_gas_852":                                  ; preds = %"$out_of_gas_851", %"$have_gas_837"
  %"$consume_853" = sub i64 %"$gasrem_849", %"$gasdivceil_848"
  store i64 %"$consume_853", i64* @_gasrem, align 8
  %"$execptr_load_854" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p8_855" = alloca [33 x i8], align 1
  %"$p8_856" = load [33 x i8], [33 x i8]* %p8, align 1
  store [33 x i8] %"$p8_856", [33 x i8]* %"$schnorr_get_address_p8_855", align 1
  %"$schnorr_get_address_call_857" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_854", [33 x i8]* %"$schnorr_get_address_p8_855")
  %"$schnorr_get_address_859" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_857", align 1
  store [20 x i8] %"$schnorr_get_address_859", [20 x i8]* %a8_gen, align 1
  %"$gasrem_860" = load i64, i64* @_gasrem, align 8
  %"$gascmp_861" = icmp ugt i64 1, %"$gasrem_860"
  br i1 %"$gascmp_861", label %"$out_of_gas_862", label %"$have_gas_863"

"$out_of_gas_862":                                ; preds = %"$have_gas_852"
  call void @_out_of_gas()
  br label %"$have_gas_863"

"$have_gas_863":                                  ; preds = %"$out_of_gas_862", %"$have_gas_852"
  %"$consume_864" = sub i64 %"$gasrem_860", 1
  store i64 %"$consume_864", i64* @_gasrem, align 8
  %r8 = alloca %TName_Bool*, align 8
  %"$gasrem_865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_866" = icmp ugt i64 20, %"$gasrem_865"
  br i1 %"$gascmp_866", label %"$out_of_gas_867", label %"$have_gas_868"

"$out_of_gas_867":                                ; preds = %"$have_gas_863"
  call void @_out_of_gas()
  br label %"$have_gas_868"

"$have_gas_868":                                  ; preds = %"$out_of_gas_867", %"$have_gas_863"
  %"$consume_869" = sub i64 %"$gasrem_865", 20
  store i64 %"$consume_869", i64* @_gasrem, align 8
  %"$execptr_load_870" = load i8*, i8** @_execptr, align 8
  %"$eq_a8_871" = alloca [20 x i8], align 1
  %"$a8_872" = load [20 x i8], [20 x i8]* %a8, align 1
  store [20 x i8] %"$a8_872", [20 x i8]* %"$eq_a8_871", align 1
  %"$$eq_a8_871_873" = bitcast [20 x i8]* %"$eq_a8_871" to i8*
  %"$eq_a8_gen_874" = alloca [20 x i8], align 1
  %"$a8_gen_875" = load [20 x i8], [20 x i8]* %a8_gen, align 1
  store [20 x i8] %"$a8_gen_875", [20 x i8]* %"$eq_a8_gen_874", align 1
  %"$$eq_a8_gen_874_876" = bitcast [20 x i8]* %"$eq_a8_gen_874" to i8*
  %"$eq_call_877" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_870", i32 20, i8* %"$$eq_a8_871_873", i8* %"$$eq_a8_gen_874_876")
  store %TName_Bool* %"$eq_call_877", %TName_Bool** %r8, align 8
  %"$gasrem_879" = load i64, i64* @_gasrem, align 8
  %"$gascmp_880" = icmp ugt i64 1, %"$gasrem_879"
  br i1 %"$gascmp_880", label %"$out_of_gas_881", label %"$have_gas_882"

"$out_of_gas_881":                                ; preds = %"$have_gas_868"
  call void @_out_of_gas()
  br label %"$have_gas_882"

"$have_gas_882":                                  ; preds = %"$out_of_gas_881", %"$have_gas_868"
  %"$consume_883" = sub i64 %"$gasrem_879", 1
  store i64 %"$consume_883", i64* @_gasrem, align 8
  %p9 = alloca [33 x i8], align 1
  %"$gasrem_884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_885" = icmp ugt i64 1, %"$gasrem_884"
  br i1 %"$gascmp_885", label %"$out_of_gas_886", label %"$have_gas_887"

"$out_of_gas_886":                                ; preds = %"$have_gas_882"
  call void @_out_of_gas()
  br label %"$have_gas_887"

"$have_gas_887":                                  ; preds = %"$out_of_gas_886", %"$have_gas_882"
  %"$consume_888" = sub i64 %"$gasrem_884", 1
  store i64 %"$consume_888", i64* @_gasrem, align 8
  store [33 x i8] c"\02G\F169\C7Y|\8A\E2F}\D2\9D!\9C'I&\0Fi\0D@i\93\0F\DE\B7\86k+\C1\FA", [33 x i8]* %p9, align 1
  %"$gasrem_889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_890" = icmp ugt i64 1, %"$gasrem_889"
  br i1 %"$gascmp_890", label %"$out_of_gas_891", label %"$have_gas_892"

"$out_of_gas_891":                                ; preds = %"$have_gas_887"
  call void @_out_of_gas()
  br label %"$have_gas_892"

"$have_gas_892":                                  ; preds = %"$out_of_gas_891", %"$have_gas_887"
  %"$consume_893" = sub i64 %"$gasrem_889", 1
  store i64 %"$consume_893", i64* @_gasrem, align 8
  %"$gasrem_894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_895" = icmp ugt i64 1, %"$gasrem_894"
  br i1 %"$gascmp_895", label %"$out_of_gas_896", label %"$have_gas_897"

"$out_of_gas_896":                                ; preds = %"$have_gas_892"
  call void @_out_of_gas()
  br label %"$have_gas_897"

"$have_gas_897":                                  ; preds = %"$out_of_gas_896", %"$have_gas_892"
  %"$consume_898" = sub i64 %"$gasrem_894", 1
  store i64 %"$consume_898", i64* @_gasrem, align 8
  %"$gasrem_899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_900" = icmp ugt i64 1, %"$gasrem_899"
  br i1 %"$gascmp_900", label %"$out_of_gas_901", label %"$have_gas_902"

"$out_of_gas_901":                                ; preds = %"$have_gas_897"
  call void @_out_of_gas()
  br label %"$have_gas_902"

"$have_gas_902":                                  ; preds = %"$out_of_gas_901", %"$have_gas_897"
  %"$consume_903" = sub i64 %"$gasrem_899", 1
  store i64 %"$consume_903", i64* @_gasrem, align 8
  %a9_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p9_904" = alloca [33 x i8], align 1
  %"$p9_905" = load [33 x i8], [33 x i8]* %p9, align 1
  store [33 x i8] %"$p9_905", [33 x i8]* %"$_literal_cost_p9_904", align 1
  %"$$_literal_cost_p9_904_906" = bitcast [33 x i8]* %"$_literal_cost_p9_904" to i8*
  %"$_literal_cost_call_907" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_74", i8* %"$$_literal_cost_p9_904_906")
  %"$gasadd_908" = add i64 %"$_literal_cost_call_907", 0
  %"$gasdivceil_909" = urem i64 %"$gasadd_908", 960
  %"$gasdivceil_910" = udiv i64 %"$gasadd_908", 960
  %"$gasdivceil_911" = icmp eq i64 %"$gasdivceil_909", 0
  %"$gasdivceil_912" = add i64 %"$gasdivceil_910", 1
  %"$gasdivceil_913" = select i1 %"$gasdivceil_911", i64 %"$gasdivceil_910", i64 %"$gasdivceil_912"
  %"$gasrem_914" = load i64, i64* @_gasrem, align 8
  %"$gascmp_915" = icmp ugt i64 %"$gasdivceil_913", %"$gasrem_914"
  br i1 %"$gascmp_915", label %"$out_of_gas_916", label %"$have_gas_917"

"$out_of_gas_916":                                ; preds = %"$have_gas_902"
  call void @_out_of_gas()
  br label %"$have_gas_917"

"$have_gas_917":                                  ; preds = %"$out_of_gas_916", %"$have_gas_902"
  %"$consume_918" = sub i64 %"$gasrem_914", %"$gasdivceil_913"
  store i64 %"$consume_918", i64* @_gasrem, align 8
  %"$execptr_load_919" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p9_920" = alloca [33 x i8], align 1
  %"$p9_921" = load [33 x i8], [33 x i8]* %p9, align 1
  store [33 x i8] %"$p9_921", [33 x i8]* %"$schnorr_get_address_p9_920", align 1
  %"$schnorr_get_address_call_922" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_919", [33 x i8]* %"$schnorr_get_address_p9_920")
  %"$schnorr_get_address_924" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_922", align 1
  store [20 x i8] %"$schnorr_get_address_924", [20 x i8]* %a9_gen, align 1
  %"$gasrem_925" = load i64, i64* @_gasrem, align 8
  %"$gascmp_926" = icmp ugt i64 1, %"$gasrem_925"
  br i1 %"$gascmp_926", label %"$out_of_gas_927", label %"$have_gas_928"

"$out_of_gas_927":                                ; preds = %"$have_gas_917"
  call void @_out_of_gas()
  br label %"$have_gas_928"

"$have_gas_928":                                  ; preds = %"$out_of_gas_927", %"$have_gas_917"
  %"$consume_929" = sub i64 %"$gasrem_925", 1
  store i64 %"$consume_929", i64* @_gasrem, align 8
  %"$gasrem_930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_931" = icmp ugt i64 20, %"$gasrem_930"
  br i1 %"$gascmp_931", label %"$out_of_gas_932", label %"$have_gas_933"

"$out_of_gas_932":                                ; preds = %"$have_gas_928"
  call void @_out_of_gas()
  br label %"$have_gas_933"

"$have_gas_933":                                  ; preds = %"$out_of_gas_932", %"$have_gas_928"
  %"$consume_934" = sub i64 %"$gasrem_930", 20
  store i64 %"$consume_934", i64* @_gasrem, align 8
  %"$gasrem_935" = load i64, i64* @_gasrem, align 8
  %"$gascmp_936" = icmp ugt i64 1, %"$gasrem_935"
  br i1 %"$gascmp_936", label %"$out_of_gas_937", label %"$have_gas_938"

"$out_of_gas_937":                                ; preds = %"$have_gas_933"
  call void @_out_of_gas()
  br label %"$have_gas_938"

"$have_gas_938":                                  ; preds = %"$out_of_gas_937", %"$have_gas_933"
  %"$consume_939" = sub i64 %"$gasrem_935", 1
  store i64 %"$consume_939", i64* @_gasrem, align 8
  %res1 = alloca %TName_Bool*, align 8
  %"$gasrem_940" = load i64, i64* @_gasrem, align 8
  %"$gascmp_941" = icmp ugt i64 1, %"$gasrem_940"
  br i1 %"$gascmp_941", label %"$out_of_gas_942", label %"$have_gas_943"

"$out_of_gas_942":                                ; preds = %"$have_gas_938"
  call void @_out_of_gas()
  br label %"$have_gas_943"

"$have_gas_943":                                  ; preds = %"$out_of_gas_942", %"$have_gas_938"
  %"$consume_944" = sub i64 %"$gasrem_940", 1
  store i64 %"$consume_944", i64* @_gasrem, align 8
  %"$BoolUtils.and_4_13" = alloca { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.and_4_945" = load { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4, align 8
  %"$BoolUtils.and_4_fptr_946" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_945", 0
  %"$BoolUtils.and_4_envptr_947" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_945", 1
  %"$r1_948" = load %TName_Bool*, %TName_Bool** %r1, align 8
  %"$BoolUtils.and_4_call_949" = call { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_fptr_946"(i8* %"$BoolUtils.and_4_envptr_947", %TName_Bool* %"$r1_948")
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_call_949", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_13", align 8
  %"$BoolUtils.and_4_14" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_13_950" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_13", align 8
  %"$$BoolUtils.and_4_13_fptr_951" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_13_950", 0
  %"$$BoolUtils.and_4_13_envptr_952" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_13_950", 1
  %"$r2_953" = load %TName_Bool*, %TName_Bool** %r2, align 8
  %"$$BoolUtils.and_4_13_call_954" = call { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_13_fptr_951"(i8* %"$$BoolUtils.and_4_13_envptr_952", %TName_Bool* %"$r2_953")
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_13_call_954", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_14", align 8
  %"$BoolUtils.and_4_15" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_14_955" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_14", align 8
  %"$$BoolUtils.and_4_14_fptr_956" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_14_955", 0
  %"$$BoolUtils.and_4_14_envptr_957" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_14_955", 1
  %"$r3_958" = load %TName_Bool*, %TName_Bool** %r3, align 8
  %"$$BoolUtils.and_4_14_call_959" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_14_fptr_956"(i8* %"$$BoolUtils.and_4_14_envptr_957", %TName_Bool* %"$r3_958")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_14_call_959", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_15", align 8
  %"$BoolUtils.and_4_16" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.and_4_15_960" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_15", align 8
  %"$$BoolUtils.and_4_15_fptr_961" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_15_960", 0
  %"$$BoolUtils.and_4_15_envptr_962" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_15_960", 1
  %"$r4_963" = load %TName_Bool*, %TName_Bool** %r4, align 8
  %"$$BoolUtils.and_4_15_call_964" = call %TName_Bool* %"$$BoolUtils.and_4_15_fptr_961"(i8* %"$$BoolUtils.and_4_15_envptr_962", %TName_Bool* %"$r4_963")
  store %TName_Bool* %"$$BoolUtils.and_4_15_call_964", %TName_Bool** %"$BoolUtils.and_4_16", align 8
  %"$$BoolUtils.and_4_16_965" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.and_4_16", align 8
  store %TName_Bool* %"$$BoolUtils.and_4_16_965", %TName_Bool** %res1, align 8
  %"$gasrem_966" = load i64, i64* @_gasrem, align 8
  %"$gascmp_967" = icmp ugt i64 1, %"$gasrem_966"
  br i1 %"$gascmp_967", label %"$out_of_gas_968", label %"$have_gas_969"

"$out_of_gas_968":                                ; preds = %"$have_gas_943"
  call void @_out_of_gas()
  br label %"$have_gas_969"

"$have_gas_969":                                  ; preds = %"$out_of_gas_968", %"$have_gas_943"
  %"$consume_970" = sub i64 %"$gasrem_966", 1
  store i64 %"$consume_970", i64* @_gasrem, align 8
  %res2 = alloca %TName_Bool*, align 8
  %"$gasrem_971" = load i64, i64* @_gasrem, align 8
  %"$gascmp_972" = icmp ugt i64 1, %"$gasrem_971"
  br i1 %"$gascmp_972", label %"$out_of_gas_973", label %"$have_gas_974"

"$out_of_gas_973":                                ; preds = %"$have_gas_969"
  call void @_out_of_gas()
  br label %"$have_gas_974"

"$have_gas_974":                                  ; preds = %"$out_of_gas_973", %"$have_gas_969"
  %"$consume_975" = sub i64 %"$gasrem_971", 1
  store i64 %"$consume_975", i64* @_gasrem, align 8
  %"$BoolUtils.and_4_17" = alloca { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.and_4_976" = load { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4, align 8
  %"$BoolUtils.and_4_fptr_977" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_976", 0
  %"$BoolUtils.and_4_envptr_978" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_976", 1
  %"$r5_979" = load %TName_Bool*, %TName_Bool** %r5, align 8
  %"$BoolUtils.and_4_call_980" = call { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_fptr_977"(i8* %"$BoolUtils.and_4_envptr_978", %TName_Bool* %"$r5_979")
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_call_980", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_17", align 8
  %"$BoolUtils.and_4_18" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_17_981" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_17", align 8
  %"$$BoolUtils.and_4_17_fptr_982" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_17_981", 0
  %"$$BoolUtils.and_4_17_envptr_983" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_17_981", 1
  %"$r6_984" = load %TName_Bool*, %TName_Bool** %r6, align 8
  %"$$BoolUtils.and_4_17_call_985" = call { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_17_fptr_982"(i8* %"$$BoolUtils.and_4_17_envptr_983", %TName_Bool* %"$r6_984")
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_17_call_985", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_18", align 8
  %"$BoolUtils.and_4_19" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_18_986" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_18", align 8
  %"$$BoolUtils.and_4_18_fptr_987" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_18_986", 0
  %"$$BoolUtils.and_4_18_envptr_988" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_18_986", 1
  %"$r7_989" = load %TName_Bool*, %TName_Bool** %r7, align 8
  %"$$BoolUtils.and_4_18_call_990" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_18_fptr_987"(i8* %"$$BoolUtils.and_4_18_envptr_988", %TName_Bool* %"$r7_989")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_18_call_990", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_19", align 8
  %"$BoolUtils.and_4_20" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.and_4_19_991" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_19", align 8
  %"$$BoolUtils.and_4_19_fptr_992" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_19_991", 0
  %"$$BoolUtils.and_4_19_envptr_993" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_19_991", 1
  %"$r8_994" = load %TName_Bool*, %TName_Bool** %r8, align 8
  %"$$BoolUtils.and_4_19_call_995" = call %TName_Bool* %"$$BoolUtils.and_4_19_fptr_992"(i8* %"$$BoolUtils.and_4_19_envptr_993", %TName_Bool* %"$r8_994")
  store %TName_Bool* %"$$BoolUtils.and_4_19_call_995", %TName_Bool** %"$BoolUtils.and_4_20", align 8
  %"$$BoolUtils.and_4_20_996" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.and_4_20", align 8
  store %TName_Bool* %"$$BoolUtils.and_4_20_996", %TName_Bool** %res2, align 8
  %"$gasrem_997" = load i64, i64* @_gasrem, align 8
  %"$gascmp_998" = icmp ugt i64 1, %"$gasrem_997"
  br i1 %"$gascmp_998", label %"$out_of_gas_999", label %"$have_gas_1000"

"$out_of_gas_999":                                ; preds = %"$have_gas_974"
  call void @_out_of_gas()
  br label %"$have_gas_1000"

"$have_gas_1000":                                 ; preds = %"$out_of_gas_999", %"$have_gas_974"
  %"$consume_1001" = sub i64 %"$gasrem_997", 1
  store i64 %"$consume_1001", i64* @_gasrem, align 8
  %"$BoolUtils.andb_21" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1002" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1003" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1002", 0
  %"$BoolUtils.andb_envptr_1004" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1002", 1
  %"$res1_1005" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$BoolUtils.andb_call_1006" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1003"(i8* %"$BoolUtils.andb_envptr_1004", %TName_Bool* %"$res1_1005")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1006", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_21", align 8
  %"$BoolUtils.andb_22" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_21_1007" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_21", align 8
  %"$$BoolUtils.andb_21_fptr_1008" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_21_1007", 0
  %"$$BoolUtils.andb_21_envptr_1009" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_21_1007", 1
  %"$res2_1010" = load %TName_Bool*, %TName_Bool** %res2, align 8
  %"$$BoolUtils.andb_21_call_1011" = call %TName_Bool* %"$$BoolUtils.andb_21_fptr_1008"(i8* %"$$BoolUtils.andb_21_envptr_1009", %TName_Bool* %"$res2_1010")
  store %TName_Bool* %"$$BoolUtils.andb_21_call_1011", %TName_Bool** %"$BoolUtils.andb_22", align 8
  %"$$BoolUtils.andb_22_1012" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_22", align 8
  store %TName_Bool* %"$$BoolUtils.andb_22_1012", %TName_Bool** %"$expr_39", align 8
  %"$$expr_39_1013" = load %TName_Bool*, %TName_Bool** %"$expr_39", align 8
  ret %TName_Bool* %"$$expr_39_1013"
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare [20 x i8]* @_schnorr_get_address(i8*, [33 x i8]*)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1014" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1015" = bitcast %TName_Bool* %"$exprval_1014" to i8*
  %"$execptr_load_1016" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1016", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_78", i8* %"$memvoidcast_1015")
  ret void
}
