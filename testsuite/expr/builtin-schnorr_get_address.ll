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
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_29" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_63" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_62"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_62" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_64"**, %"$TyDescrTy_ADTTyp_63"* }
%"$TyDescrTy_ADTTyp_Constr_64" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_715" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_716" = type { %ParamDescrString, i32, %"$ParamDescr_715"* }
%"$$fundef_22_env_81" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, %TName_Bool*, %TName_Bool*, %TName_Bool* }
%"$$fundef_20_env_82" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, %TName_Bool*, %TName_Bool* }
%"$$fundef_18_env_83" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, %TName_Bool* }
%"$$fundef_16_env_84" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } }
%"$$fundef_26_env_85" = type { %TName_Bool* }
%"$$fundef_24_env_86" = type {}

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
@"$TyDescr_Bystr33_Prim_60" = global %"$TyDescrTy_PrimTyp_29" { i32 8, i32 33 }
@"$TyDescr_Bystr33_61" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Bystr33_Prim_60" to i8*) }
@"$TyDescr_ADT_Bool_65" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Bool_ADTTyp_Specl_78" to i8*) }
@"$TyDescr_Bool_ADTTyp_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_80", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_62"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_62"*], [1 x %"$TyDescrTy_ADTTyp_Specl_62"*]* @"$TyDescr_Bool_ADTTyp_m_specls_79", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_70" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_71" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_71", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_70", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_73" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_74" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_75" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_74", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_73", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_76" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Bool_True_ADTTyp_Constr_72", %"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Bool_False_ADTTyp_Constr_75"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_77" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_78" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_77", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_64"*], [2 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_76", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_Bool_ADTTyp_69" }
@"$TyDescr_Bool_ADTTyp_m_specls_79" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_62"*] [%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Bool_ADTTyp_Specl_78"]
@"$TyDescr_ADT_Bool_80" = unnamed_addr constant [4 x i8] c"Bool"
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.and_4 = global { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_53", %_TyDescrTy_Typ* @"$TyDescr_Int64_35", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_65", %_TyDescrTy_Typ* @"$TyDescr_Bystr33_61", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_59", %_TyDescrTy_Typ* @"$TyDescr_Uint256_45", %_TyDescrTy_Typ* @"$TyDescr_Uint32_33", %_TyDescrTy_Typ* @"$TyDescr_Uint64_37", %_TyDescrTy_Typ* @"$TyDescr_Bnum_49", %_TyDescrTy_Typ* @"$TyDescr_Uint128_41", %_TyDescrTy_Typ* @"$TyDescr_Exception_55", %_TyDescrTy_Typ* @"$TyDescr_String_47", %_TyDescrTy_Typ* @"$TyDescr_Int256_43", %_TyDescrTy_Typ* @"$TyDescr_Int128_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr_57", %_TyDescrTy_Typ* @"$TyDescr_Message_51", %_TyDescrTy_Typ* @"$TyDescr_Int32_31"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_715"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_716"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_22"(%"$$fundef_22_env_81"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_22_env_BoolUtils.andb_185" = getelementptr inbounds %"$$fundef_22_env_81", %"$$fundef_22_env_81"* %0, i32 0, i32 0
  %"$BoolUtils.andb_envload_186" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_22_env_BoolUtils.andb_185", align 8
  %BoolUtils.andb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_envload_186", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  %"$$fundef_22_env_a_187" = getelementptr inbounds %"$$fundef_22_env_81", %"$$fundef_22_env_81"* %0, i32 0, i32 1
  %"$a_envload_188" = load %TName_Bool*, %TName_Bool** %"$$fundef_22_env_a_187", align 8
  %a = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$a_envload_188", %TName_Bool** %a, align 8
  %"$$fundef_22_env_b_189" = getelementptr inbounds %"$$fundef_22_env_81", %"$$fundef_22_env_81"* %0, i32 0, i32 2
  %"$b_envload_190" = load %TName_Bool*, %TName_Bool** %"$$fundef_22_env_b_189", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_190", %TName_Bool** %b, align 8
  %"$$fundef_22_env_c_191" = getelementptr inbounds %"$$fundef_22_env_81", %"$$fundef_22_env_81"* %0, i32 0, i32 3
  %"$c_envload_192" = load %TName_Bool*, %TName_Bool** %"$$fundef_22_env_c_191", align 8
  %c = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$c_envload_192", %TName_Bool** %c, align 8
  %"$retval_23" = alloca %TName_Bool*, align 8
  %"$gasrem_193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_194" = icmp ugt i64 1, %"$gasrem_193"
  br i1 %"$gascmp_194", label %"$out_of_gas_195", label %"$have_gas_196"

"$out_of_gas_195":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_196"

"$have_gas_196":                                  ; preds = %"$out_of_gas_195", %entry
  %"$consume_197" = sub i64 %"$gasrem_193", 1
  store i64 %"$consume_197", i64* @_gasrem, align 8
  %t1 = alloca %TName_Bool*, align 8
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 1, %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %"$have_gas_196"
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %"$have_gas_196"
  %"$consume_202" = sub i64 %"$gasrem_198", 1
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %"$BoolUtils.andb_0" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_203" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_204" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_203", 0
  %"$BoolUtils.andb_envptr_205" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_203", 1
  %"$a_206" = load %TName_Bool*, %TName_Bool** %a, align 8
  %"$BoolUtils.andb_call_207" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_204"(i8* %"$BoolUtils.andb_envptr_205", %TName_Bool* %"$a_206")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_207", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_0", align 8
  %"$BoolUtils.andb_1" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_0_208" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_0", align 8
  %"$$BoolUtils.andb_0_fptr_209" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_0_208", 0
  %"$$BoolUtils.andb_0_envptr_210" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_0_208", 1
  %"$b_211" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$$BoolUtils.andb_0_call_212" = call %TName_Bool* %"$$BoolUtils.andb_0_fptr_209"(i8* %"$$BoolUtils.andb_0_envptr_210", %TName_Bool* %"$b_211")
  store %TName_Bool* %"$$BoolUtils.andb_0_call_212", %TName_Bool** %"$BoolUtils.andb_1", align 8
  %"$$BoolUtils.andb_1_213" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_1", align 8
  store %TName_Bool* %"$$BoolUtils.andb_1_213", %TName_Bool** %t1, align 8
  %"$gasrem_214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_215" = icmp ugt i64 1, %"$gasrem_214"
  br i1 %"$gascmp_215", label %"$out_of_gas_216", label %"$have_gas_217"

"$out_of_gas_216":                                ; preds = %"$have_gas_201"
  call void @_out_of_gas()
  br label %"$have_gas_217"

"$have_gas_217":                                  ; preds = %"$out_of_gas_216", %"$have_gas_201"
  %"$consume_218" = sub i64 %"$gasrem_214", 1
  store i64 %"$consume_218", i64* @_gasrem, align 8
  %t2 = alloca %TName_Bool*, align 8
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_217"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_217"
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %"$BoolUtils.andb_2" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_224" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_225" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_224", 0
  %"$BoolUtils.andb_envptr_226" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_224", 1
  %"$t1_227" = load %TName_Bool*, %TName_Bool** %t1, align 8
  %"$BoolUtils.andb_call_228" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_225"(i8* %"$BoolUtils.andb_envptr_226", %TName_Bool* %"$t1_227")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_228", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_2", align 8
  %"$BoolUtils.andb_3" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_2_229" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_2", align 8
  %"$$BoolUtils.andb_2_fptr_230" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_2_229", 0
  %"$$BoolUtils.andb_2_envptr_231" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_2_229", 1
  %"$c_232" = load %TName_Bool*, %TName_Bool** %c, align 8
  %"$$BoolUtils.andb_2_call_233" = call %TName_Bool* %"$$BoolUtils.andb_2_fptr_230"(i8* %"$$BoolUtils.andb_2_envptr_231", %TName_Bool* %"$c_232")
  store %TName_Bool* %"$$BoolUtils.andb_2_call_233", %TName_Bool** %"$BoolUtils.andb_3", align 8
  %"$$BoolUtils.andb_3_234" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_3", align 8
  store %TName_Bool* %"$$BoolUtils.andb_3_234", %TName_Bool** %t2, align 8
  %"$gasrem_235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_236" = icmp ugt i64 1, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$have_gas_222"
  %"$consume_239" = sub i64 %"$gasrem_235", 1
  store i64 %"$consume_239", i64* @_gasrem, align 8
  %"$BoolUtils.andb_4" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_240" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_241" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_240", 0
  %"$BoolUtils.andb_envptr_242" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_240", 1
  %"$t2_243" = load %TName_Bool*, %TName_Bool** %t2, align 8
  %"$BoolUtils.andb_call_244" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_241"(i8* %"$BoolUtils.andb_envptr_242", %TName_Bool* %"$t2_243")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_244", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_4", align 8
  %"$BoolUtils.andb_5" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_4_245" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_4", align 8
  %"$$BoolUtils.andb_4_fptr_246" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_4_245", 0
  %"$$BoolUtils.andb_4_envptr_247" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_4_245", 1
  %"$$BoolUtils.andb_4_call_248" = call %TName_Bool* %"$$BoolUtils.andb_4_fptr_246"(i8* %"$$BoolUtils.andb_4_envptr_247", %TName_Bool* %1)
  store %TName_Bool* %"$$BoolUtils.andb_4_call_248", %TName_Bool** %"$BoolUtils.andb_5", align 8
  %"$$BoolUtils.andb_5_249" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_5", align 8
  store %TName_Bool* %"$$BoolUtils.andb_5_249", %TName_Bool** %"$retval_23", align 8
  %"$$retval_23_250" = load %TName_Bool*, %TName_Bool** %"$retval_23", align 8
  ret %TName_Bool* %"$$retval_23_250"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_20"(%"$$fundef_20_env_82"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_20_env_BoolUtils.andb_162" = getelementptr inbounds %"$$fundef_20_env_82", %"$$fundef_20_env_82"* %0, i32 0, i32 0
  %"$BoolUtils.andb_envload_163" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_20_env_BoolUtils.andb_162", align 8
  %BoolUtils.andb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_envload_163", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  %"$$fundef_20_env_a_164" = getelementptr inbounds %"$$fundef_20_env_82", %"$$fundef_20_env_82"* %0, i32 0, i32 1
  %"$a_envload_165" = load %TName_Bool*, %TName_Bool** %"$$fundef_20_env_a_164", align 8
  %a = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$a_envload_165", %TName_Bool** %a, align 8
  %"$$fundef_20_env_b_166" = getelementptr inbounds %"$$fundef_20_env_82", %"$$fundef_20_env_82"* %0, i32 0, i32 2
  %"$b_envload_167" = load %TName_Bool*, %TName_Bool** %"$$fundef_20_env_b_166", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_167", %TName_Bool** %b, align 8
  %"$retval_21" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %entry
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  %"$$fundef_22_envp_173_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_22_envp_173_salloc" = call i8* @_salloc(i8* %"$$fundef_22_envp_173_load", i64 40)
  %"$$fundef_22_envp_173" = bitcast i8* %"$$fundef_22_envp_173_salloc" to %"$$fundef_22_env_81"*
  %"$$fundef_22_env_voidp_175" = bitcast %"$$fundef_22_env_81"* %"$$fundef_22_envp_173" to i8*
  %"$$fundef_22_cloval_176" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_22_env_81"*, %TName_Bool*)* @"$fundef_22" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_22_env_voidp_175", 1
  %"$$fundef_22_env_BoolUtils.andb_177" = getelementptr inbounds %"$$fundef_22_env_81", %"$$fundef_22_env_81"* %"$$fundef_22_envp_173", i32 0, i32 0
  %"$BoolUtils.andb_178" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_178", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_22_env_BoolUtils.andb_177", align 8
  %"$$fundef_22_env_a_179" = getelementptr inbounds %"$$fundef_22_env_81", %"$$fundef_22_env_81"* %"$$fundef_22_envp_173", i32 0, i32 1
  %"$a_180" = load %TName_Bool*, %TName_Bool** %a, align 8
  store %TName_Bool* %"$a_180", %TName_Bool** %"$$fundef_22_env_a_179", align 8
  %"$$fundef_22_env_b_181" = getelementptr inbounds %"$$fundef_22_env_81", %"$$fundef_22_env_81"* %"$$fundef_22_envp_173", i32 0, i32 2
  %"$b_182" = load %TName_Bool*, %TName_Bool** %b, align 8
  store %TName_Bool* %"$b_182", %TName_Bool** %"$$fundef_22_env_b_181", align 8
  %"$$fundef_22_env_c_183" = getelementptr inbounds %"$$fundef_22_env_81", %"$$fundef_22_env_81"* %"$$fundef_22_envp_173", i32 0, i32 3
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_22_env_c_183", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_22_cloval_176", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_21", align 8
  %"$$retval_21_184" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_21", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_21_184"
}

define internal { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } @"$fundef_18"(%"$$fundef_18_env_83"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_18_env_BoolUtils.andb_143" = getelementptr inbounds %"$$fundef_18_env_83", %"$$fundef_18_env_83"* %0, i32 0, i32 0
  %"$BoolUtils.andb_envload_144" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_18_env_BoolUtils.andb_143", align 8
  %BoolUtils.andb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_envload_144", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  %"$$fundef_18_env_a_145" = getelementptr inbounds %"$$fundef_18_env_83", %"$$fundef_18_env_83"* %0, i32 0, i32 1
  %"$a_envload_146" = load %TName_Bool*, %TName_Bool** %"$$fundef_18_env_a_145", align 8
  %a = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$a_envload_146", %TName_Bool** %a, align 8
  %"$retval_19" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %entry
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem, align 8
  %"$$fundef_20_envp_152_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_20_envp_152_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_152_load", i64 32)
  %"$$fundef_20_envp_152" = bitcast i8* %"$$fundef_20_envp_152_salloc" to %"$$fundef_20_env_82"*
  %"$$fundef_20_env_voidp_154" = bitcast %"$$fundef_20_env_82"* %"$$fundef_20_envp_152" to i8*
  %"$$fundef_20_cloval_155" = insertvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_20_env_82"*, %TName_Bool*)* @"$fundef_20" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_20_env_voidp_154", 1
  %"$$fundef_20_env_BoolUtils.andb_156" = getelementptr inbounds %"$$fundef_20_env_82", %"$$fundef_20_env_82"* %"$$fundef_20_envp_152", i32 0, i32 0
  %"$BoolUtils.andb_157" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_157", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_20_env_BoolUtils.andb_156", align 8
  %"$$fundef_20_env_a_158" = getelementptr inbounds %"$$fundef_20_env_82", %"$$fundef_20_env_82"* %"$$fundef_20_envp_152", i32 0, i32 1
  %"$a_159" = load %TName_Bool*, %TName_Bool** %a, align 8
  store %TName_Bool* %"$a_159", %TName_Bool** %"$$fundef_20_env_a_158", align 8
  %"$$fundef_20_env_b_160" = getelementptr inbounds %"$$fundef_20_env_82", %"$$fundef_20_env_82"* %"$$fundef_20_envp_152", i32 0, i32 2
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_20_env_b_160", align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$fundef_20_cloval_155", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_19", align 8
  %"$$retval_19_161" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_19", align 8
  ret { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$retval_19_161"
}

define internal { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } @"$fundef_16"(%"$$fundef_16_env_84"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_16_env_BoolUtils.andb_128" = getelementptr inbounds %"$$fundef_16_env_84", %"$$fundef_16_env_84"* %0, i32 0, i32 0
  %"$BoolUtils.andb_envload_129" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_16_env_BoolUtils.andb_128", align 8
  %BoolUtils.andb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_envload_129", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  %"$retval_17" = alloca { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %entry
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  %"$$fundef_18_envp_135_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_18_envp_135_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_135_load", i64 24)
  %"$$fundef_18_envp_135" = bitcast i8* %"$$fundef_18_envp_135_salloc" to %"$$fundef_18_env_83"*
  %"$$fundef_18_env_voidp_137" = bitcast %"$$fundef_18_env_83"* %"$$fundef_18_envp_135" to i8*
  %"$$fundef_18_cloval_138" = insertvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (%"$$fundef_18_env_83"*, %TName_Bool*)* @"$fundef_18" to { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_18_env_voidp_137", 1
  %"$$fundef_18_env_BoolUtils.andb_139" = getelementptr inbounds %"$$fundef_18_env_83", %"$$fundef_18_env_83"* %"$$fundef_18_envp_135", i32 0, i32 0
  %"$BoolUtils.andb_140" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_140", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_18_env_BoolUtils.andb_139", align 8
  %"$$fundef_18_env_a_141" = getelementptr inbounds %"$$fundef_18_env_83", %"$$fundef_18_env_83"* %"$$fundef_18_envp_135", i32 0, i32 1
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_18_env_a_141", align 8
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$fundef_18_cloval_138", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_17", align 8
  %"$$retval_17_142" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_17", align 8
  ret { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$retval_17_142"
}

define internal %TName_Bool* @"$fundef_26"(%"$$fundef_26_env_85"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_26_env_b_98" = getelementptr inbounds %"$$fundef_26_env_85", %"$$fundef_26_env_85"* %0, i32 0, i32 0
  %"$b_envload_99" = load %TName_Bool*, %TName_Bool** %"$$fundef_26_env_b_98", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_99", %TName_Bool** %b, align 8
  %"$retval_27" = alloca %TName_Bool*, align 8
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 2, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %entry
  %"$consume_104" = sub i64 %"$gasrem_100", 2
  store i64 %"$consume_104", i64* @_gasrem, align 8
  %"$b_106" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_107" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_106", i32 0, i32 0
  %"$b_tag_108" = load i8, i8* %"$b_tag_107", align 1
  switch i8 %"$b_tag_108", label %"$empty_default_109" [
    i8 1, label %"$False_110"
    i8 0, label %"$True_120"
  ]

"$False_110":                                     ; preds = %"$have_gas_103"
  %"$b_111" = bitcast %TName_Bool* %"$b_106" to %CName_False*
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %"$False_110"
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %"$False_110"
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  %"$adtval_117_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_117_salloc" = call i8* @_salloc(i8* %"$adtval_117_load", i64 1)
  %"$adtval_117" = bitcast i8* %"$adtval_117_salloc" to %CName_False*
  %"$adtgep_118" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_117", i32 0, i32 0
  store i8 1, i8* %"$adtgep_118", align 1
  %"$adtptr_119" = bitcast %CName_False* %"$adtval_117" to %TName_Bool*
  store %TName_Bool* %"$adtptr_119", %TName_Bool** %"$retval_27", align 8
  br label %"$matchsucc_105"

"$True_120":                                      ; preds = %"$have_gas_103"
  %"$b_121" = bitcast %TName_Bool* %"$b_106" to %CName_True*
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %"$True_120"
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %"$True_120"
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_27", align 8
  br label %"$matchsucc_105"

"$empty_default_109":                             ; preds = %"$have_gas_103"
  br label %"$matchsucc_105"

"$matchsucc_105":                                 ; preds = %"$have_gas_125", %"$have_gas_115", %"$empty_default_109"
  %"$$retval_27_127" = load %TName_Bool*, %TName_Bool** %"$retval_27", align 8
  ret %TName_Bool* %"$$retval_27_127"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_24"(%"$$fundef_24_env_86"* %0, %TName_Bool* %1) {
entry:
  %"$retval_25" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_87" = load i64, i64* @_gasrem, align 8
  %"$gascmp_88" = icmp ugt i64 1, %"$gasrem_87"
  br i1 %"$gascmp_88", label %"$out_of_gas_89", label %"$have_gas_90"

"$out_of_gas_89":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_90"

"$have_gas_90":                                   ; preds = %"$out_of_gas_89", %entry
  %"$consume_91" = sub i64 %"$gasrem_87", 1
  store i64 %"$consume_91", i64* @_gasrem, align 8
  %"$$fundef_26_envp_92_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_26_envp_92_salloc" = call i8* @_salloc(i8* %"$$fundef_26_envp_92_load", i64 8)
  %"$$fundef_26_envp_92" = bitcast i8* %"$$fundef_26_envp_92_salloc" to %"$$fundef_26_env_85"*
  %"$$fundef_26_env_voidp_94" = bitcast %"$$fundef_26_env_85"* %"$$fundef_26_envp_92" to i8*
  %"$$fundef_26_cloval_95" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_26_env_85"*, %TName_Bool*)* @"$fundef_26" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_26_env_voidp_94", 1
  %"$$fundef_26_env_b_96" = getelementptr inbounds %"$$fundef_26_env_85", %"$$fundef_26_env_85"* %"$$fundef_26_envp_92", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_26_env_b_96", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_26_cloval_95", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_25", align 8
  %"$$retval_25_97" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_25", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_25_97"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 1, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %entry
  %"$consume_255" = sub i64 %"$gasrem_251", 1
  store i64 %"$consume_255", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_24_env_86"*, %TName_Bool*)* @"$fundef_24" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_254"
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %"$$fundef_16_envp_264_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_16_envp_264_salloc" = call i8* @_salloc(i8* %"$$fundef_16_envp_264_load", i64 16)
  %"$$fundef_16_envp_264" = bitcast i8* %"$$fundef_16_envp_264_salloc" to %"$$fundef_16_env_84"*
  %"$$fundef_16_env_voidp_266" = bitcast %"$$fundef_16_env_84"* %"$$fundef_16_envp_264" to i8*
  %"$$fundef_16_cloval_267" = insertvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (%"$$fundef_16_env_84"*, %TName_Bool*)* @"$fundef_16" to { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_16_env_voidp_266", 1
  %"$$fundef_16_env_BoolUtils.andb_268" = getelementptr inbounds %"$$fundef_16_env_84", %"$$fundef_16_env_84"* %"$$fundef_16_envp_264", i32 0, i32 0
  %"$BoolUtils.andb_269" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_269", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_16_env_BoolUtils.andb_268", align 8
  store { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$fundef_16_cloval_267", { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4, align 8
  %"$expr_28" = alloca %TName_Bool*, align 8
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 1, %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %"$have_gas_262"
  %"$consume_274" = sub i64 %"$gasrem_270", 1
  store i64 %"$consume_274", i64* @_gasrem, align 8
  %p1 = alloca [33 x i8], align 1
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 1, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %"$have_gas_273"
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %"$have_gas_273"
  %"$consume_279" = sub i64 %"$gasrem_275", 1
  store i64 %"$consume_279", i64* @_gasrem, align 8
  store [33 x i8] c"\03\14s\81c\B9\BBg\AD\11\AAFO\E6\9A\11G\DF&>\89p\D7\DC\FD\8F\99=\DD9\E8\1B\D9", [33 x i8]* %p1, align 1
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 1, %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %"$have_gas_278"
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %"$have_gas_278"
  %"$consume_284" = sub i64 %"$gasrem_280", 1
  store i64 %"$consume_284", i64* @_gasrem, align 8
  %a1 = alloca [20 x i8], align 1
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_283"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_283"
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem, align 8
  store [20 x i8] c"K\AF_\AD\A8\E5\DB\92\C3\D3$&\18\C5\B4q3\AE\00<", [20 x i8]* %a1, align 1
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 1, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_288"
  %"$consume_294" = sub i64 %"$gasrem_290", 1
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %a1_gen = alloca [20 x i8], align 1
  %"$execptr_load_295" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p1_296" = alloca [33 x i8], align 1
  %"$p1_297" = load [33 x i8], [33 x i8]* %p1, align 1
  store [33 x i8] %"$p1_297", [33 x i8]* %"$schnorr_get_address_p1_296", align 1
  %"$schnorr_get_address_call_298" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_295", [33 x i8]* %"$schnorr_get_address_p1_296")
  %"$schnorr_get_address_299" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_298", align 1
  store [20 x i8] %"$schnorr_get_address_299", [20 x i8]* %a1_gen, align 1
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_293"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %r1 = alloca %TName_Bool*, align 8
  %"$execptr_load_305" = load i8*, i8** @_execptr, align 8
  %"$eq_a1_306" = alloca [20 x i8], align 1
  %"$a1_307" = load [20 x i8], [20 x i8]* %a1, align 1
  store [20 x i8] %"$a1_307", [20 x i8]* %"$eq_a1_306", align 1
  %"$$eq_a1_306_308" = bitcast [20 x i8]* %"$eq_a1_306" to i8*
  %"$eq_a1_gen_309" = alloca [20 x i8], align 1
  %"$a1_gen_310" = load [20 x i8], [20 x i8]* %a1_gen, align 1
  store [20 x i8] %"$a1_gen_310", [20 x i8]* %"$eq_a1_gen_309", align 1
  %"$$eq_a1_gen_309_311" = bitcast [20 x i8]* %"$eq_a1_gen_309" to i8*
  %"$eq_call_312" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_305", i32 20, i8* %"$$eq_a1_306_308", i8* %"$$eq_a1_gen_309_311")
  store %TName_Bool* %"$eq_call_312", %TName_Bool** %r1, align 8
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 1, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %"$have_gas_303"
  %"$consume_317" = sub i64 %"$gasrem_313", 1
  store i64 %"$consume_317", i64* @_gasrem, align 8
  %p2 = alloca [33 x i8], align 1
  %"$gasrem_318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_319" = icmp ugt i64 1, %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %"$have_gas_316"
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %"$have_gas_316"
  %"$consume_322" = sub i64 %"$gasrem_318", 1
  store i64 %"$consume_322", i64* @_gasrem, align 8
  store [33 x i8] c"\03L\E2h\ACZ4\008\D8\AC\EB\BD\D766\11\A5\B1\19y\16w^2H\1F]k\10O\AFe", [33 x i8]* %p2, align 1
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 1, %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %"$have_gas_321"
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %"$have_gas_321"
  %"$consume_327" = sub i64 %"$gasrem_323", 1
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %a2 = alloca [20 x i8], align 1
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 1, %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %"$have_gas_326"
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %"$have_gas_326"
  %"$consume_332" = sub i64 %"$gasrem_328", 1
  store i64 %"$consume_332", i64* @_gasrem, align 8
  store [20 x i8] c"D\82a\91Z\80\CD\E9\BD\E7\C7\A7\91hR\00\D3\A0\BFN", [20 x i8]* %a2, align 1
  %"$gasrem_333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_334" = icmp ugt i64 1, %"$gasrem_333"
  br i1 %"$gascmp_334", label %"$out_of_gas_335", label %"$have_gas_336"

"$out_of_gas_335":                                ; preds = %"$have_gas_331"
  call void @_out_of_gas()
  br label %"$have_gas_336"

"$have_gas_336":                                  ; preds = %"$out_of_gas_335", %"$have_gas_331"
  %"$consume_337" = sub i64 %"$gasrem_333", 1
  store i64 %"$consume_337", i64* @_gasrem, align 8
  %a2_gen = alloca [20 x i8], align 1
  %"$execptr_load_338" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p2_339" = alloca [33 x i8], align 1
  %"$p2_340" = load [33 x i8], [33 x i8]* %p2, align 1
  store [33 x i8] %"$p2_340", [33 x i8]* %"$schnorr_get_address_p2_339", align 1
  %"$schnorr_get_address_call_341" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_338", [33 x i8]* %"$schnorr_get_address_p2_339")
  %"$schnorr_get_address_342" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_341", align 1
  store [20 x i8] %"$schnorr_get_address_342", [20 x i8]* %a2_gen, align 1
  %"$gasrem_343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_344" = icmp ugt i64 1, %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %"$have_gas_336"
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %"$have_gas_336"
  %"$consume_347" = sub i64 %"$gasrem_343", 1
  store i64 %"$consume_347", i64* @_gasrem, align 8
  %r2 = alloca %TName_Bool*, align 8
  %"$execptr_load_348" = load i8*, i8** @_execptr, align 8
  %"$eq_a2_349" = alloca [20 x i8], align 1
  %"$a2_350" = load [20 x i8], [20 x i8]* %a2, align 1
  store [20 x i8] %"$a2_350", [20 x i8]* %"$eq_a2_349", align 1
  %"$$eq_a2_349_351" = bitcast [20 x i8]* %"$eq_a2_349" to i8*
  %"$eq_a2_gen_352" = alloca [20 x i8], align 1
  %"$a2_gen_353" = load [20 x i8], [20 x i8]* %a2_gen, align 1
  store [20 x i8] %"$a2_gen_353", [20 x i8]* %"$eq_a2_gen_352", align 1
  %"$$eq_a2_gen_352_354" = bitcast [20 x i8]* %"$eq_a2_gen_352" to i8*
  %"$eq_call_355" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_348", i32 20, i8* %"$$eq_a2_349_351", i8* %"$$eq_a2_gen_352_354")
  store %TName_Bool* %"$eq_call_355", %TName_Bool** %r2, align 8
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_346"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_346"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %p3 = alloca [33 x i8], align 1
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_359"
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem, align 8
  store [33 x i8] c"\02\FAzP\1F2<\C5>\07\0C\0A\94Sp6\86y\E7W)`\EC$\D8\A08~\F3\B5\0A\22\85", [33 x i8]* %p3, align 1
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_364"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  %a3 = alloca [20 x i8], align 1
  %"$gasrem_371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_372" = icmp ugt i64 1, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %"$have_gas_369"
  %"$consume_375" = sub i64 %"$gasrem_371", 1
  store i64 %"$consume_375", i64* @_gasrem, align 8
  store [20 x i8] c"\DE\D0/\D9y\FC.U\C0$;\D2\F5-\F0\22\C4\0A\DA\1E", [20 x i8]* %a3, align 1
  %"$gasrem_376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_377" = icmp ugt i64 1, %"$gasrem_376"
  br i1 %"$gascmp_377", label %"$out_of_gas_378", label %"$have_gas_379"

"$out_of_gas_378":                                ; preds = %"$have_gas_374"
  call void @_out_of_gas()
  br label %"$have_gas_379"

"$have_gas_379":                                  ; preds = %"$out_of_gas_378", %"$have_gas_374"
  %"$consume_380" = sub i64 %"$gasrem_376", 1
  store i64 %"$consume_380", i64* @_gasrem, align 8
  %a3_gen = alloca [20 x i8], align 1
  %"$execptr_load_381" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p3_382" = alloca [33 x i8], align 1
  %"$p3_383" = load [33 x i8], [33 x i8]* %p3, align 1
  store [33 x i8] %"$p3_383", [33 x i8]* %"$schnorr_get_address_p3_382", align 1
  %"$schnorr_get_address_call_384" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_381", [33 x i8]* %"$schnorr_get_address_p3_382")
  %"$schnorr_get_address_385" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_384", align 1
  store [20 x i8] %"$schnorr_get_address_385", [20 x i8]* %a3_gen, align 1
  %"$gasrem_386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_387" = icmp ugt i64 1, %"$gasrem_386"
  br i1 %"$gascmp_387", label %"$out_of_gas_388", label %"$have_gas_389"

"$out_of_gas_388":                                ; preds = %"$have_gas_379"
  call void @_out_of_gas()
  br label %"$have_gas_389"

"$have_gas_389":                                  ; preds = %"$out_of_gas_388", %"$have_gas_379"
  %"$consume_390" = sub i64 %"$gasrem_386", 1
  store i64 %"$consume_390", i64* @_gasrem, align 8
  %r3 = alloca %TName_Bool*, align 8
  %"$execptr_load_391" = load i8*, i8** @_execptr, align 8
  %"$eq_a3_392" = alloca [20 x i8], align 1
  %"$a3_393" = load [20 x i8], [20 x i8]* %a3, align 1
  store [20 x i8] %"$a3_393", [20 x i8]* %"$eq_a3_392", align 1
  %"$$eq_a3_392_394" = bitcast [20 x i8]* %"$eq_a3_392" to i8*
  %"$eq_a3_gen_395" = alloca [20 x i8], align 1
  %"$a3_gen_396" = load [20 x i8], [20 x i8]* %a3_gen, align 1
  store [20 x i8] %"$a3_gen_396", [20 x i8]* %"$eq_a3_gen_395", align 1
  %"$$eq_a3_gen_395_397" = bitcast [20 x i8]* %"$eq_a3_gen_395" to i8*
  %"$eq_call_398" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_391", i32 20, i8* %"$$eq_a3_392_394", i8* %"$$eq_a3_gen_395_397")
  store %TName_Bool* %"$eq_call_398", %TName_Bool** %r3, align 8
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_389"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_389"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %p4 = alloca [33 x i8], align 1
  %"$gasrem_404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_405" = icmp ugt i64 1, %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_402"
  %"$consume_408" = sub i64 %"$gasrem_404", 1
  store i64 %"$consume_408", i64* @_gasrem, align 8
  store [33 x i8] c"\03o\86v\E4s\AF \B4\CC\E7\D3'\10=\E4PJ\9C\00\EA\E7\EA\03\D0\A3e\FBH\81z\C9\7F", [33 x i8]* %p4, align 1
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 1, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %"$have_gas_407"
  %"$consume_413" = sub i64 %"$gasrem_409", 1
  store i64 %"$consume_413", i64* @_gasrem, align 8
  %a4 = alloca [20 x i8], align 1
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 1, %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$have_gas_412"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$have_gas_412"
  %"$consume_418" = sub i64 %"$gasrem_414", 1
  store i64 %"$consume_418", i64* @_gasrem, align 8
  store [20 x i8] c"\13\F0n`){\EAj<@/od\C4\16\A6\B3\1EXn", [20 x i8]* %a4, align 1
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_417"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_417"
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %a4_gen = alloca [20 x i8], align 1
  %"$execptr_load_424" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p4_425" = alloca [33 x i8], align 1
  %"$p4_426" = load [33 x i8], [33 x i8]* %p4, align 1
  store [33 x i8] %"$p4_426", [33 x i8]* %"$schnorr_get_address_p4_425", align 1
  %"$schnorr_get_address_call_427" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_424", [33 x i8]* %"$schnorr_get_address_p4_425")
  %"$schnorr_get_address_428" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_427", align 1
  store [20 x i8] %"$schnorr_get_address_428", [20 x i8]* %a4_gen, align 1
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 1, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_422"
  %"$consume_433" = sub i64 %"$gasrem_429", 1
  store i64 %"$consume_433", i64* @_gasrem, align 8
  %r4 = alloca %TName_Bool*, align 8
  %"$execptr_load_434" = load i8*, i8** @_execptr, align 8
  %"$eq_a4_435" = alloca [20 x i8], align 1
  %"$a4_436" = load [20 x i8], [20 x i8]* %a4, align 1
  store [20 x i8] %"$a4_436", [20 x i8]* %"$eq_a4_435", align 1
  %"$$eq_a4_435_437" = bitcast [20 x i8]* %"$eq_a4_435" to i8*
  %"$eq_a4_gen_438" = alloca [20 x i8], align 1
  %"$a4_gen_439" = load [20 x i8], [20 x i8]* %a4_gen, align 1
  store [20 x i8] %"$a4_gen_439", [20 x i8]* %"$eq_a4_gen_438", align 1
  %"$$eq_a4_gen_438_440" = bitcast [20 x i8]* %"$eq_a4_gen_438" to i8*
  %"$eq_call_441" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_434", i32 20, i8* %"$$eq_a4_435_437", i8* %"$$eq_a4_gen_438_440")
  store %TName_Bool* %"$eq_call_441", %TName_Bool** %r4, align 8
  %"$gasrem_442" = load i64, i64* @_gasrem, align 8
  %"$gascmp_443" = icmp ugt i64 1, %"$gasrem_442"
  br i1 %"$gascmp_443", label %"$out_of_gas_444", label %"$have_gas_445"

"$out_of_gas_444":                                ; preds = %"$have_gas_432"
  call void @_out_of_gas()
  br label %"$have_gas_445"

"$have_gas_445":                                  ; preds = %"$out_of_gas_444", %"$have_gas_432"
  %"$consume_446" = sub i64 %"$gasrem_442", 1
  store i64 %"$consume_446", i64* @_gasrem, align 8
  %p5 = alloca [33 x i8], align 1
  %"$gasrem_447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_448" = icmp ugt i64 1, %"$gasrem_447"
  br i1 %"$gascmp_448", label %"$out_of_gas_449", label %"$have_gas_450"

"$out_of_gas_449":                                ; preds = %"$have_gas_445"
  call void @_out_of_gas()
  br label %"$have_gas_450"

"$have_gas_450":                                  ; preds = %"$out_of_gas_449", %"$have_gas_445"
  %"$consume_451" = sub i64 %"$gasrem_447", 1
  store i64 %"$consume_451", i64* @_gasrem, align 8
  store [33 x i8] c"\03L965)\C2\D4\07\8Fr\B8\C4\98\C4\CB\C5\BA^\10\D8fo\E0o\10J'\E0\E4BB\A0", [33 x i8]* %p5, align 1
  %"$gasrem_452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_453" = icmp ugt i64 1, %"$gasrem_452"
  br i1 %"$gascmp_453", label %"$out_of_gas_454", label %"$have_gas_455"

"$out_of_gas_454":                                ; preds = %"$have_gas_450"
  call void @_out_of_gas()
  br label %"$have_gas_455"

"$have_gas_455":                                  ; preds = %"$out_of_gas_454", %"$have_gas_450"
  %"$consume_456" = sub i64 %"$gasrem_452", 1
  store i64 %"$consume_456", i64* @_gasrem, align 8
  %a5 = alloca [20 x i8], align 1
  %"$gasrem_457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_458" = icmp ugt i64 1, %"$gasrem_457"
  br i1 %"$gascmp_458", label %"$out_of_gas_459", label %"$have_gas_460"

"$out_of_gas_459":                                ; preds = %"$have_gas_455"
  call void @_out_of_gas()
  br label %"$have_gas_460"

"$have_gas_460":                                  ; preds = %"$out_of_gas_459", %"$have_gas_455"
  %"$consume_461" = sub i64 %"$gasrem_457", 1
  store i64 %"$consume_461", i64* @_gasrem, align 8
  store [20 x i8] c"\1A\90\C2S\07\C3\CCq\95\8A\83\FA!:#b\D8Y\CF3", [20 x i8]* %a5, align 1
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 1, %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %"$have_gas_460"
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %"$have_gas_460"
  %"$consume_466" = sub i64 %"$gasrem_462", 1
  store i64 %"$consume_466", i64* @_gasrem, align 8
  %a5_gen = alloca [20 x i8], align 1
  %"$execptr_load_467" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p5_468" = alloca [33 x i8], align 1
  %"$p5_469" = load [33 x i8], [33 x i8]* %p5, align 1
  store [33 x i8] %"$p5_469", [33 x i8]* %"$schnorr_get_address_p5_468", align 1
  %"$schnorr_get_address_call_470" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_467", [33 x i8]* %"$schnorr_get_address_p5_468")
  %"$schnorr_get_address_471" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_470", align 1
  store [20 x i8] %"$schnorr_get_address_471", [20 x i8]* %a5_gen, align 1
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$have_gas_465"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$have_gas_465"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem, align 8
  %r5 = alloca %TName_Bool*, align 8
  %"$execptr_load_477" = load i8*, i8** @_execptr, align 8
  %"$eq_a5_478" = alloca [20 x i8], align 1
  %"$a5_479" = load [20 x i8], [20 x i8]* %a5, align 1
  store [20 x i8] %"$a5_479", [20 x i8]* %"$eq_a5_478", align 1
  %"$$eq_a5_478_480" = bitcast [20 x i8]* %"$eq_a5_478" to i8*
  %"$eq_a5_gen_481" = alloca [20 x i8], align 1
  %"$a5_gen_482" = load [20 x i8], [20 x i8]* %a5_gen, align 1
  store [20 x i8] %"$a5_gen_482", [20 x i8]* %"$eq_a5_gen_481", align 1
  %"$$eq_a5_gen_481_483" = bitcast [20 x i8]* %"$eq_a5_gen_481" to i8*
  %"$eq_call_484" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_477", i32 20, i8* %"$$eq_a5_478_480", i8* %"$$eq_a5_gen_481_483")
  store %TName_Bool* %"$eq_call_484", %TName_Bool** %r5, align 8
  %"$gasrem_485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_486" = icmp ugt i64 1, %"$gasrem_485"
  br i1 %"$gascmp_486", label %"$out_of_gas_487", label %"$have_gas_488"

"$out_of_gas_487":                                ; preds = %"$have_gas_475"
  call void @_out_of_gas()
  br label %"$have_gas_488"

"$have_gas_488":                                  ; preds = %"$out_of_gas_487", %"$have_gas_475"
  %"$consume_489" = sub i64 %"$gasrem_485", 1
  store i64 %"$consume_489", i64* @_gasrem, align 8
  %p6 = alloca [33 x i8], align 1
  %"$gasrem_490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_491" = icmp ugt i64 1, %"$gasrem_490"
  br i1 %"$gascmp_491", label %"$out_of_gas_492", label %"$have_gas_493"

"$out_of_gas_492":                                ; preds = %"$have_gas_488"
  call void @_out_of_gas()
  br label %"$have_gas_493"

"$have_gas_493":                                  ; preds = %"$out_of_gas_492", %"$have_gas_488"
  %"$consume_494" = sub i64 %"$gasrem_490", 1
  store i64 %"$consume_494", i64* @_gasrem, align 8
  store [33 x i8] c"\02m\A5\BFl:<\91\C0\8A=\D7\FB\CE\0B\EA\F5\D46\03\9C\97\B0z\0Fa\AAK\94\93\E4g\87", [33 x i8]* %p6, align 1
  %"$gasrem_495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_496" = icmp ugt i64 1, %"$gasrem_495"
  br i1 %"$gascmp_496", label %"$out_of_gas_497", label %"$have_gas_498"

"$out_of_gas_497":                                ; preds = %"$have_gas_493"
  call void @_out_of_gas()
  br label %"$have_gas_498"

"$have_gas_498":                                  ; preds = %"$out_of_gas_497", %"$have_gas_493"
  %"$consume_499" = sub i64 %"$gasrem_495", 1
  store i64 %"$consume_499", i64* @_gasrem, align 8
  %a6 = alloca [20 x i8], align 1
  %"$gasrem_500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_501" = icmp ugt i64 1, %"$gasrem_500"
  br i1 %"$gascmp_501", label %"$out_of_gas_502", label %"$have_gas_503"

"$out_of_gas_502":                                ; preds = %"$have_gas_498"
  call void @_out_of_gas()
  br label %"$have_gas_503"

"$have_gas_503":                                  ; preds = %"$out_of_gas_502", %"$have_gas_498"
  %"$consume_504" = sub i64 %"$gasrem_500", 1
  store i64 %"$consume_504", i64* @_gasrem, align 8
  store [20 x i8] c"bZ\BA\EB\D8}\AE\9A\B1(\F3\B3\AE\99h\88\13\D9\C5\DF", [20 x i8]* %a6, align 1
  %"$gasrem_505" = load i64, i64* @_gasrem, align 8
  %"$gascmp_506" = icmp ugt i64 1, %"$gasrem_505"
  br i1 %"$gascmp_506", label %"$out_of_gas_507", label %"$have_gas_508"

"$out_of_gas_507":                                ; preds = %"$have_gas_503"
  call void @_out_of_gas()
  br label %"$have_gas_508"

"$have_gas_508":                                  ; preds = %"$out_of_gas_507", %"$have_gas_503"
  %"$consume_509" = sub i64 %"$gasrem_505", 1
  store i64 %"$consume_509", i64* @_gasrem, align 8
  %a6_gen = alloca [20 x i8], align 1
  %"$execptr_load_510" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p6_511" = alloca [33 x i8], align 1
  %"$p6_512" = load [33 x i8], [33 x i8]* %p6, align 1
  store [33 x i8] %"$p6_512", [33 x i8]* %"$schnorr_get_address_p6_511", align 1
  %"$schnorr_get_address_call_513" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_510", [33 x i8]* %"$schnorr_get_address_p6_511")
  %"$schnorr_get_address_514" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_513", align 1
  store [20 x i8] %"$schnorr_get_address_514", [20 x i8]* %a6_gen, align 1
  %"$gasrem_515" = load i64, i64* @_gasrem, align 8
  %"$gascmp_516" = icmp ugt i64 1, %"$gasrem_515"
  br i1 %"$gascmp_516", label %"$out_of_gas_517", label %"$have_gas_518"

"$out_of_gas_517":                                ; preds = %"$have_gas_508"
  call void @_out_of_gas()
  br label %"$have_gas_518"

"$have_gas_518":                                  ; preds = %"$out_of_gas_517", %"$have_gas_508"
  %"$consume_519" = sub i64 %"$gasrem_515", 1
  store i64 %"$consume_519", i64* @_gasrem, align 8
  %r6 = alloca %TName_Bool*, align 8
  %"$execptr_load_520" = load i8*, i8** @_execptr, align 8
  %"$eq_a6_521" = alloca [20 x i8], align 1
  %"$a6_522" = load [20 x i8], [20 x i8]* %a6, align 1
  store [20 x i8] %"$a6_522", [20 x i8]* %"$eq_a6_521", align 1
  %"$$eq_a6_521_523" = bitcast [20 x i8]* %"$eq_a6_521" to i8*
  %"$eq_a6_gen_524" = alloca [20 x i8], align 1
  %"$a6_gen_525" = load [20 x i8], [20 x i8]* %a6_gen, align 1
  store [20 x i8] %"$a6_gen_525", [20 x i8]* %"$eq_a6_gen_524", align 1
  %"$$eq_a6_gen_524_526" = bitcast [20 x i8]* %"$eq_a6_gen_524" to i8*
  %"$eq_call_527" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_520", i32 20, i8* %"$$eq_a6_521_523", i8* %"$$eq_a6_gen_524_526")
  store %TName_Bool* %"$eq_call_527", %TName_Bool** %r6, align 8
  %"$gasrem_528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_529" = icmp ugt i64 1, %"$gasrem_528"
  br i1 %"$gascmp_529", label %"$out_of_gas_530", label %"$have_gas_531"

"$out_of_gas_530":                                ; preds = %"$have_gas_518"
  call void @_out_of_gas()
  br label %"$have_gas_531"

"$have_gas_531":                                  ; preds = %"$out_of_gas_530", %"$have_gas_518"
  %"$consume_532" = sub i64 %"$gasrem_528", 1
  store i64 %"$consume_532", i64* @_gasrem, align 8
  %p7 = alloca [33 x i8], align 1
  %"$gasrem_533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_534" = icmp ugt i64 1, %"$gasrem_533"
  br i1 %"$gascmp_534", label %"$out_of_gas_535", label %"$have_gas_536"

"$out_of_gas_535":                                ; preds = %"$have_gas_531"
  call void @_out_of_gas()
  br label %"$have_gas_536"

"$have_gas_536":                                  ; preds = %"$out_of_gas_535", %"$have_gas_531"
  %"$consume_537" = sub i64 %"$gasrem_533", 1
  store i64 %"$consume_537", i64* @_gasrem, align 8
  store [33 x i8] c"\03*f\1F\9DJ\B8\DD\98\18\CE\D2\F6/=\A1O\DD#\E6\8EX\D0\1AJ\E1\86#\1D\7F\B6\09\BB", [33 x i8]* %p7, align 1
  %"$gasrem_538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_539" = icmp ugt i64 1, %"$gasrem_538"
  br i1 %"$gascmp_539", label %"$out_of_gas_540", label %"$have_gas_541"

"$out_of_gas_540":                                ; preds = %"$have_gas_536"
  call void @_out_of_gas()
  br label %"$have_gas_541"

"$have_gas_541":                                  ; preds = %"$out_of_gas_540", %"$have_gas_536"
  %"$consume_542" = sub i64 %"$gasrem_538", 1
  store i64 %"$consume_542", i64* @_gasrem, align 8
  %a7 = alloca [20 x i8], align 1
  %"$gasrem_543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_544" = icmp ugt i64 1, %"$gasrem_543"
  br i1 %"$gascmp_544", label %"$out_of_gas_545", label %"$have_gas_546"

"$out_of_gas_545":                                ; preds = %"$have_gas_541"
  call void @_out_of_gas()
  br label %"$have_gas_546"

"$have_gas_546":                                  ; preds = %"$out_of_gas_545", %"$have_gas_541"
  %"$consume_547" = sub i64 %"$gasrem_543", 1
  store i64 %"$consume_547", i64* @_gasrem, align 8
  store [20 x i8] c"6\BA4\09\7F\86\11\91\C4\8C\83\9C\9B\1A\8BY\12\F5\83\CF", [20 x i8]* %a7, align 1
  %"$gasrem_548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_549" = icmp ugt i64 1, %"$gasrem_548"
  br i1 %"$gascmp_549", label %"$out_of_gas_550", label %"$have_gas_551"

"$out_of_gas_550":                                ; preds = %"$have_gas_546"
  call void @_out_of_gas()
  br label %"$have_gas_551"

"$have_gas_551":                                  ; preds = %"$out_of_gas_550", %"$have_gas_546"
  %"$consume_552" = sub i64 %"$gasrem_548", 1
  store i64 %"$consume_552", i64* @_gasrem, align 8
  %a7_gen = alloca [20 x i8], align 1
  %"$execptr_load_553" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p7_554" = alloca [33 x i8], align 1
  %"$p7_555" = load [33 x i8], [33 x i8]* %p7, align 1
  store [33 x i8] %"$p7_555", [33 x i8]* %"$schnorr_get_address_p7_554", align 1
  %"$schnorr_get_address_call_556" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_553", [33 x i8]* %"$schnorr_get_address_p7_554")
  %"$schnorr_get_address_557" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_556", align 1
  store [20 x i8] %"$schnorr_get_address_557", [20 x i8]* %a7_gen, align 1
  %"$gasrem_558" = load i64, i64* @_gasrem, align 8
  %"$gascmp_559" = icmp ugt i64 1, %"$gasrem_558"
  br i1 %"$gascmp_559", label %"$out_of_gas_560", label %"$have_gas_561"

"$out_of_gas_560":                                ; preds = %"$have_gas_551"
  call void @_out_of_gas()
  br label %"$have_gas_561"

"$have_gas_561":                                  ; preds = %"$out_of_gas_560", %"$have_gas_551"
  %"$consume_562" = sub i64 %"$gasrem_558", 1
  store i64 %"$consume_562", i64* @_gasrem, align 8
  %r7 = alloca %TName_Bool*, align 8
  %"$execptr_load_563" = load i8*, i8** @_execptr, align 8
  %"$eq_a7_564" = alloca [20 x i8], align 1
  %"$a7_565" = load [20 x i8], [20 x i8]* %a7, align 1
  store [20 x i8] %"$a7_565", [20 x i8]* %"$eq_a7_564", align 1
  %"$$eq_a7_564_566" = bitcast [20 x i8]* %"$eq_a7_564" to i8*
  %"$eq_a7_gen_567" = alloca [20 x i8], align 1
  %"$a7_gen_568" = load [20 x i8], [20 x i8]* %a7_gen, align 1
  store [20 x i8] %"$a7_gen_568", [20 x i8]* %"$eq_a7_gen_567", align 1
  %"$$eq_a7_gen_567_569" = bitcast [20 x i8]* %"$eq_a7_gen_567" to i8*
  %"$eq_call_570" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_563", i32 20, i8* %"$$eq_a7_564_566", i8* %"$$eq_a7_gen_567_569")
  store %TName_Bool* %"$eq_call_570", %TName_Bool** %r7, align 8
  %"$gasrem_571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_572" = icmp ugt i64 1, %"$gasrem_571"
  br i1 %"$gascmp_572", label %"$out_of_gas_573", label %"$have_gas_574"

"$out_of_gas_573":                                ; preds = %"$have_gas_561"
  call void @_out_of_gas()
  br label %"$have_gas_574"

"$have_gas_574":                                  ; preds = %"$out_of_gas_573", %"$have_gas_561"
  %"$consume_575" = sub i64 %"$gasrem_571", 1
  store i64 %"$consume_575", i64* @_gasrem, align 8
  %p8 = alloca [33 x i8], align 1
  %"$gasrem_576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_577" = icmp ugt i64 1, %"$gasrem_576"
  br i1 %"$gascmp_577", label %"$out_of_gas_578", label %"$have_gas_579"

"$out_of_gas_578":                                ; preds = %"$have_gas_574"
  call void @_out_of_gas()
  br label %"$have_gas_579"

"$have_gas_579":                                  ; preds = %"$out_of_gas_578", %"$have_gas_574"
  %"$consume_580" = sub i64 %"$gasrem_576", 1
  store i64 %"$consume_580", i64* @_gasrem, align 8
  store [33 x i8] c"\03j\94\E9%\BB \0D\CEA\A4l\90&\E0#\B2&\DD[L\B2'\CEvm`\CC\8F\AB!\81H", [33 x i8]* %p8, align 1
  %"$gasrem_581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_582" = icmp ugt i64 1, %"$gasrem_581"
  br i1 %"$gascmp_582", label %"$out_of_gas_583", label %"$have_gas_584"

"$out_of_gas_583":                                ; preds = %"$have_gas_579"
  call void @_out_of_gas()
  br label %"$have_gas_584"

"$have_gas_584":                                  ; preds = %"$out_of_gas_583", %"$have_gas_579"
  %"$consume_585" = sub i64 %"$gasrem_581", 1
  store i64 %"$consume_585", i64* @_gasrem, align 8
  %a8 = alloca [20 x i8], align 1
  %"$gasrem_586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_587" = icmp ugt i64 1, %"$gasrem_586"
  br i1 %"$gascmp_587", label %"$out_of_gas_588", label %"$have_gas_589"

"$out_of_gas_588":                                ; preds = %"$have_gas_584"
  call void @_out_of_gas()
  br label %"$have_gas_589"

"$have_gas_589":                                  ; preds = %"$out_of_gas_588", %"$have_gas_584"
  %"$consume_590" = sub i64 %"$gasrem_586", 1
  store i64 %"$consume_590", i64* @_gasrem, align 8
  store [20 x i8] c"\D2E:\E7l\9A\86\AA\E5D\FC\A6\99\DB\DC\\Wj\EF:", [20 x i8]* %a8, align 1
  %"$gasrem_591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_592" = icmp ugt i64 1, %"$gasrem_591"
  br i1 %"$gascmp_592", label %"$out_of_gas_593", label %"$have_gas_594"

"$out_of_gas_593":                                ; preds = %"$have_gas_589"
  call void @_out_of_gas()
  br label %"$have_gas_594"

"$have_gas_594":                                  ; preds = %"$out_of_gas_593", %"$have_gas_589"
  %"$consume_595" = sub i64 %"$gasrem_591", 1
  store i64 %"$consume_595", i64* @_gasrem, align 8
  %a8_gen = alloca [20 x i8], align 1
  %"$execptr_load_596" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p8_597" = alloca [33 x i8], align 1
  %"$p8_598" = load [33 x i8], [33 x i8]* %p8, align 1
  store [33 x i8] %"$p8_598", [33 x i8]* %"$schnorr_get_address_p8_597", align 1
  %"$schnorr_get_address_call_599" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_596", [33 x i8]* %"$schnorr_get_address_p8_597")
  %"$schnorr_get_address_600" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_599", align 1
  store [20 x i8] %"$schnorr_get_address_600", [20 x i8]* %a8_gen, align 1
  %"$gasrem_601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_602" = icmp ugt i64 1, %"$gasrem_601"
  br i1 %"$gascmp_602", label %"$out_of_gas_603", label %"$have_gas_604"

"$out_of_gas_603":                                ; preds = %"$have_gas_594"
  call void @_out_of_gas()
  br label %"$have_gas_604"

"$have_gas_604":                                  ; preds = %"$out_of_gas_603", %"$have_gas_594"
  %"$consume_605" = sub i64 %"$gasrem_601", 1
  store i64 %"$consume_605", i64* @_gasrem, align 8
  %r8 = alloca %TName_Bool*, align 8
  %"$execptr_load_606" = load i8*, i8** @_execptr, align 8
  %"$eq_a8_607" = alloca [20 x i8], align 1
  %"$a8_608" = load [20 x i8], [20 x i8]* %a8, align 1
  store [20 x i8] %"$a8_608", [20 x i8]* %"$eq_a8_607", align 1
  %"$$eq_a8_607_609" = bitcast [20 x i8]* %"$eq_a8_607" to i8*
  %"$eq_a8_gen_610" = alloca [20 x i8], align 1
  %"$a8_gen_611" = load [20 x i8], [20 x i8]* %a8_gen, align 1
  store [20 x i8] %"$a8_gen_611", [20 x i8]* %"$eq_a8_gen_610", align 1
  %"$$eq_a8_gen_610_612" = bitcast [20 x i8]* %"$eq_a8_gen_610" to i8*
  %"$eq_call_613" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_606", i32 20, i8* %"$$eq_a8_607_609", i8* %"$$eq_a8_gen_610_612")
  store %TName_Bool* %"$eq_call_613", %TName_Bool** %r8, align 8
  %"$gasrem_614" = load i64, i64* @_gasrem, align 8
  %"$gascmp_615" = icmp ugt i64 1, %"$gasrem_614"
  br i1 %"$gascmp_615", label %"$out_of_gas_616", label %"$have_gas_617"

"$out_of_gas_616":                                ; preds = %"$have_gas_604"
  call void @_out_of_gas()
  br label %"$have_gas_617"

"$have_gas_617":                                  ; preds = %"$out_of_gas_616", %"$have_gas_604"
  %"$consume_618" = sub i64 %"$gasrem_614", 1
  store i64 %"$consume_618", i64* @_gasrem, align 8
  %"$gasrem_619" = load i64, i64* @_gasrem, align 8
  %"$gascmp_620" = icmp ugt i64 1, %"$gasrem_619"
  br i1 %"$gascmp_620", label %"$out_of_gas_621", label %"$have_gas_622"

"$out_of_gas_621":                                ; preds = %"$have_gas_617"
  call void @_out_of_gas()
  br label %"$have_gas_622"

"$have_gas_622":                                  ; preds = %"$out_of_gas_621", %"$have_gas_617"
  %"$consume_623" = sub i64 %"$gasrem_619", 1
  store i64 %"$consume_623", i64* @_gasrem, align 8
  %"$gasrem_624" = load i64, i64* @_gasrem, align 8
  %"$gascmp_625" = icmp ugt i64 1, %"$gasrem_624"
  br i1 %"$gascmp_625", label %"$out_of_gas_626", label %"$have_gas_627"

"$out_of_gas_626":                                ; preds = %"$have_gas_622"
  call void @_out_of_gas()
  br label %"$have_gas_627"

"$have_gas_627":                                  ; preds = %"$out_of_gas_626", %"$have_gas_622"
  %"$consume_628" = sub i64 %"$gasrem_624", 1
  store i64 %"$consume_628", i64* @_gasrem, align 8
  %"$gasrem_629" = load i64, i64* @_gasrem, align 8
  %"$gascmp_630" = icmp ugt i64 1, %"$gasrem_629"
  br i1 %"$gascmp_630", label %"$out_of_gas_631", label %"$have_gas_632"

"$out_of_gas_631":                                ; preds = %"$have_gas_627"
  call void @_out_of_gas()
  br label %"$have_gas_632"

"$have_gas_632":                                  ; preds = %"$out_of_gas_631", %"$have_gas_627"
  %"$consume_633" = sub i64 %"$gasrem_629", 1
  store i64 %"$consume_633", i64* @_gasrem, align 8
  %"$gasrem_634" = load i64, i64* @_gasrem, align 8
  %"$gascmp_635" = icmp ugt i64 1, %"$gasrem_634"
  br i1 %"$gascmp_635", label %"$out_of_gas_636", label %"$have_gas_637"

"$out_of_gas_636":                                ; preds = %"$have_gas_632"
  call void @_out_of_gas()
  br label %"$have_gas_637"

"$have_gas_637":                                  ; preds = %"$out_of_gas_636", %"$have_gas_632"
  %"$consume_638" = sub i64 %"$gasrem_634", 1
  store i64 %"$consume_638", i64* @_gasrem, align 8
  %res1 = alloca %TName_Bool*, align 8
  %"$gasrem_639" = load i64, i64* @_gasrem, align 8
  %"$gascmp_640" = icmp ugt i64 1, %"$gasrem_639"
  br i1 %"$gascmp_640", label %"$out_of_gas_641", label %"$have_gas_642"

"$out_of_gas_641":                                ; preds = %"$have_gas_637"
  call void @_out_of_gas()
  br label %"$have_gas_642"

"$have_gas_642":                                  ; preds = %"$out_of_gas_641", %"$have_gas_637"
  %"$consume_643" = sub i64 %"$gasrem_639", 1
  store i64 %"$consume_643", i64* @_gasrem, align 8
  %"$BoolUtils.and_4_6" = alloca { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.and_4_644" = load { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4, align 8
  %"$BoolUtils.and_4_fptr_645" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_644", 0
  %"$BoolUtils.and_4_envptr_646" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_644", 1
  %"$r1_647" = load %TName_Bool*, %TName_Bool** %r1, align 8
  %"$BoolUtils.and_4_call_648" = call { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_fptr_645"(i8* %"$BoolUtils.and_4_envptr_646", %TName_Bool* %"$r1_647")
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_call_648", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_6", align 8
  %"$BoolUtils.and_4_7" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_6_649" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_6", align 8
  %"$$BoolUtils.and_4_6_fptr_650" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_649", 0
  %"$$BoolUtils.and_4_6_envptr_651" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_649", 1
  %"$r2_652" = load %TName_Bool*, %TName_Bool** %r2, align 8
  %"$$BoolUtils.and_4_6_call_653" = call { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_fptr_650"(i8* %"$$BoolUtils.and_4_6_envptr_651", %TName_Bool* %"$r2_652")
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_call_653", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_7", align 8
  %"$BoolUtils.and_4_8" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_7_654" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_7", align 8
  %"$$BoolUtils.and_4_7_fptr_655" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_654", 0
  %"$$BoolUtils.and_4_7_envptr_656" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_654", 1
  %"$r3_657" = load %TName_Bool*, %TName_Bool** %r3, align 8
  %"$$BoolUtils.and_4_7_call_658" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_fptr_655"(i8* %"$$BoolUtils.and_4_7_envptr_656", %TName_Bool* %"$r3_657")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_call_658", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_8", align 8
  %"$BoolUtils.and_4_9" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.and_4_8_659" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_8", align 8
  %"$$BoolUtils.and_4_8_fptr_660" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_8_659", 0
  %"$$BoolUtils.and_4_8_envptr_661" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_8_659", 1
  %"$r4_662" = load %TName_Bool*, %TName_Bool** %r4, align 8
  %"$$BoolUtils.and_4_8_call_663" = call %TName_Bool* %"$$BoolUtils.and_4_8_fptr_660"(i8* %"$$BoolUtils.and_4_8_envptr_661", %TName_Bool* %"$r4_662")
  store %TName_Bool* %"$$BoolUtils.and_4_8_call_663", %TName_Bool** %"$BoolUtils.and_4_9", align 8
  %"$$BoolUtils.and_4_9_664" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.and_4_9", align 8
  store %TName_Bool* %"$$BoolUtils.and_4_9_664", %TName_Bool** %res1, align 8
  %"$gasrem_665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_666" = icmp ugt i64 1, %"$gasrem_665"
  br i1 %"$gascmp_666", label %"$out_of_gas_667", label %"$have_gas_668"

"$out_of_gas_667":                                ; preds = %"$have_gas_642"
  call void @_out_of_gas()
  br label %"$have_gas_668"

"$have_gas_668":                                  ; preds = %"$out_of_gas_667", %"$have_gas_642"
  %"$consume_669" = sub i64 %"$gasrem_665", 1
  store i64 %"$consume_669", i64* @_gasrem, align 8
  %res2 = alloca %TName_Bool*, align 8
  %"$gasrem_670" = load i64, i64* @_gasrem, align 8
  %"$gascmp_671" = icmp ugt i64 1, %"$gasrem_670"
  br i1 %"$gascmp_671", label %"$out_of_gas_672", label %"$have_gas_673"

"$out_of_gas_672":                                ; preds = %"$have_gas_668"
  call void @_out_of_gas()
  br label %"$have_gas_673"

"$have_gas_673":                                  ; preds = %"$out_of_gas_672", %"$have_gas_668"
  %"$consume_674" = sub i64 %"$gasrem_670", 1
  store i64 %"$consume_674", i64* @_gasrem, align 8
  %"$BoolUtils.and_4_10" = alloca { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.and_4_675" = load { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4, align 8
  %"$BoolUtils.and_4_fptr_676" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_675", 0
  %"$BoolUtils.and_4_envptr_677" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_675", 1
  %"$r5_678" = load %TName_Bool*, %TName_Bool** %r5, align 8
  %"$BoolUtils.and_4_call_679" = call { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_fptr_676"(i8* %"$BoolUtils.and_4_envptr_677", %TName_Bool* %"$r5_678")
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_call_679", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_10", align 8
  %"$BoolUtils.and_4_11" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_10_680" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_10", align 8
  %"$$BoolUtils.and_4_10_fptr_681" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_680", 0
  %"$$BoolUtils.and_4_10_envptr_682" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_680", 1
  %"$r6_683" = load %TName_Bool*, %TName_Bool** %r6, align 8
  %"$$BoolUtils.and_4_10_call_684" = call { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_fptr_681"(i8* %"$$BoolUtils.and_4_10_envptr_682", %TName_Bool* %"$r6_683")
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_call_684", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_11", align 8
  %"$BoolUtils.and_4_12" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_11_685" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_11", align 8
  %"$$BoolUtils.and_4_11_fptr_686" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_685", 0
  %"$$BoolUtils.and_4_11_envptr_687" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_685", 1
  %"$r7_688" = load %TName_Bool*, %TName_Bool** %r7, align 8
  %"$$BoolUtils.and_4_11_call_689" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_fptr_686"(i8* %"$$BoolUtils.and_4_11_envptr_687", %TName_Bool* %"$r7_688")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_call_689", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_12", align 8
  %"$BoolUtils.and_4_13" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.and_4_12_690" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_12", align 8
  %"$$BoolUtils.and_4_12_fptr_691" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_12_690", 0
  %"$$BoolUtils.and_4_12_envptr_692" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_12_690", 1
  %"$r8_693" = load %TName_Bool*, %TName_Bool** %r8, align 8
  %"$$BoolUtils.and_4_12_call_694" = call %TName_Bool* %"$$BoolUtils.and_4_12_fptr_691"(i8* %"$$BoolUtils.and_4_12_envptr_692", %TName_Bool* %"$r8_693")
  store %TName_Bool* %"$$BoolUtils.and_4_12_call_694", %TName_Bool** %"$BoolUtils.and_4_13", align 8
  %"$$BoolUtils.and_4_13_695" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.and_4_13", align 8
  store %TName_Bool* %"$$BoolUtils.and_4_13_695", %TName_Bool** %res2, align 8
  %"$gasrem_696" = load i64, i64* @_gasrem, align 8
  %"$gascmp_697" = icmp ugt i64 1, %"$gasrem_696"
  br i1 %"$gascmp_697", label %"$out_of_gas_698", label %"$have_gas_699"

"$out_of_gas_698":                                ; preds = %"$have_gas_673"
  call void @_out_of_gas()
  br label %"$have_gas_699"

"$have_gas_699":                                  ; preds = %"$out_of_gas_698", %"$have_gas_673"
  %"$consume_700" = sub i64 %"$gasrem_696", 1
  store i64 %"$consume_700", i64* @_gasrem, align 8
  %"$BoolUtils.andb_14" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_701" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_702" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_701", 0
  %"$BoolUtils.andb_envptr_703" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_701", 1
  %"$res1_704" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$BoolUtils.andb_call_705" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_702"(i8* %"$BoolUtils.andb_envptr_703", %TName_Bool* %"$res1_704")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_705", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_14", align 8
  %"$BoolUtils.andb_15" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_14_706" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_14", align 8
  %"$$BoolUtils.andb_14_fptr_707" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_14_706", 0
  %"$$BoolUtils.andb_14_envptr_708" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_14_706", 1
  %"$res2_709" = load %TName_Bool*, %TName_Bool** %res2, align 8
  %"$$BoolUtils.andb_14_call_710" = call %TName_Bool* %"$$BoolUtils.andb_14_fptr_707"(i8* %"$$BoolUtils.andb_14_envptr_708", %TName_Bool* %"$res2_709")
  store %TName_Bool* %"$$BoolUtils.andb_14_call_710", %TName_Bool** %"$BoolUtils.andb_15", align 8
  %"$$BoolUtils.andb_15_711" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_15", align 8
  store %TName_Bool* %"$$BoolUtils.andb_15_711", %TName_Bool** %"$expr_28", align 8
  %"$$expr_28_712" = load %TName_Bool*, %TName_Bool** %"$expr_28", align 8
  ret %TName_Bool* %"$$expr_28_712"
}

declare [20 x i8]* @_schnorr_get_address(i8*, [33 x i8]*)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_713" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_714" = bitcast %TName_Bool* %"$exprval_713" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_65", i8* %"$memvoidcast_714")
  ret void
}
