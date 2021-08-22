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
%"$ParamDescr_892" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_893" = type { %ParamDescrString, i32, %"$ParamDescr_892"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_892"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_893"] zeroinitializer
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
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_28" = alloca %TName_Bool*, align 8
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 1, %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %entry
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
  %"$_literal_cost_p1_295" = alloca [33 x i8], align 1
  %"$p1_296" = load [33 x i8], [33 x i8]* %p1, align 1
  store [33 x i8] %"$p1_296", [33 x i8]* %"$_literal_cost_p1_295", align 1
  %"$$_literal_cost_p1_295_297" = bitcast [33 x i8]* %"$_literal_cost_p1_295" to i8*
  %"$_literal_cost_call_298" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_61", i8* %"$$_literal_cost_p1_295_297")
  %"$gasadd_299" = add i64 %"$_literal_cost_call_298", 0
  %"$gasdivceil_300" = urem i64 %"$gasadd_299", 960
  %"$gasdivceil_301" = udiv i64 %"$gasadd_299", 960
  %"$gasdivceil_302" = icmp eq i64 %"$gasdivceil_300", 0
  %"$gasdivceil_303" = add i64 %"$gasdivceil_301", 1
  %"$gasdivceil_304" = select i1 %"$gasdivceil_302", i64 %"$gasdivceil_301", i64 %"$gasdivceil_303"
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 %"$gasdivceil_304", %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_293"
  %"$consume_309" = sub i64 %"$gasrem_305", %"$gasdivceil_304"
  store i64 %"$consume_309", i64* @_gasrem, align 8
  %"$execptr_load_310" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p1_311" = alloca [33 x i8], align 1
  %"$p1_312" = load [33 x i8], [33 x i8]* %p1, align 1
  store [33 x i8] %"$p1_312", [33 x i8]* %"$schnorr_get_address_p1_311", align 1
  %"$schnorr_get_address_call_313" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_310", [33 x i8]* %"$schnorr_get_address_p1_311")
  %"$schnorr_get_address_315" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_313", align 1
  store [20 x i8] %"$schnorr_get_address_315", [20 x i8]* %a1_gen, align 1
  %"$gasrem_316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_317" = icmp ugt i64 1, %"$gasrem_316"
  br i1 %"$gascmp_317", label %"$out_of_gas_318", label %"$have_gas_319"

"$out_of_gas_318":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_319"

"$have_gas_319":                                  ; preds = %"$out_of_gas_318", %"$have_gas_308"
  %"$consume_320" = sub i64 %"$gasrem_316", 1
  store i64 %"$consume_320", i64* @_gasrem, align 8
  %r1 = alloca %TName_Bool*, align 8
  %"$gasrem_321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_322" = icmp ugt i64 20, %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %"$have_gas_319"
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %"$have_gas_319"
  %"$consume_325" = sub i64 %"$gasrem_321", 20
  store i64 %"$consume_325", i64* @_gasrem, align 8
  %"$execptr_load_326" = load i8*, i8** @_execptr, align 8
  %"$eq_a1_327" = alloca [20 x i8], align 1
  %"$a1_328" = load [20 x i8], [20 x i8]* %a1, align 1
  store [20 x i8] %"$a1_328", [20 x i8]* %"$eq_a1_327", align 1
  %"$$eq_a1_327_329" = bitcast [20 x i8]* %"$eq_a1_327" to i8*
  %"$eq_a1_gen_330" = alloca [20 x i8], align 1
  %"$a1_gen_331" = load [20 x i8], [20 x i8]* %a1_gen, align 1
  store [20 x i8] %"$a1_gen_331", [20 x i8]* %"$eq_a1_gen_330", align 1
  %"$$eq_a1_gen_330_332" = bitcast [20 x i8]* %"$eq_a1_gen_330" to i8*
  %"$eq_call_333" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_326", i32 20, i8* %"$$eq_a1_327_329", i8* %"$$eq_a1_gen_330_332")
  store %TName_Bool* %"$eq_call_333", %TName_Bool** %r1, align 8
  %"$gasrem_335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_336" = icmp ugt i64 1, %"$gasrem_335"
  br i1 %"$gascmp_336", label %"$out_of_gas_337", label %"$have_gas_338"

"$out_of_gas_337":                                ; preds = %"$have_gas_324"
  call void @_out_of_gas()
  br label %"$have_gas_338"

"$have_gas_338":                                  ; preds = %"$out_of_gas_337", %"$have_gas_324"
  %"$consume_339" = sub i64 %"$gasrem_335", 1
  store i64 %"$consume_339", i64* @_gasrem, align 8
  %p2 = alloca [33 x i8], align 1
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_338"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_338"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  store [33 x i8] c"\03L\E2h\ACZ4\008\D8\AC\EB\BD\D766\11\A5\B1\19y\16w^2H\1F]k\10O\AFe", [33 x i8]* %p2, align 1
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_343"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  %a2 = alloca [20 x i8], align 1
  %"$gasrem_350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_351" = icmp ugt i64 1, %"$gasrem_350"
  br i1 %"$gascmp_351", label %"$out_of_gas_352", label %"$have_gas_353"

"$out_of_gas_352":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_353"

"$have_gas_353":                                  ; preds = %"$out_of_gas_352", %"$have_gas_348"
  %"$consume_354" = sub i64 %"$gasrem_350", 1
  store i64 %"$consume_354", i64* @_gasrem, align 8
  store [20 x i8] c"D\82a\91Z\80\CD\E9\BD\E7\C7\A7\91hR\00\D3\A0\BFN", [20 x i8]* %a2, align 1
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %"$have_gas_353"
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %"$have_gas_353"
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %a2_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p2_360" = alloca [33 x i8], align 1
  %"$p2_361" = load [33 x i8], [33 x i8]* %p2, align 1
  store [33 x i8] %"$p2_361", [33 x i8]* %"$_literal_cost_p2_360", align 1
  %"$$_literal_cost_p2_360_362" = bitcast [33 x i8]* %"$_literal_cost_p2_360" to i8*
  %"$_literal_cost_call_363" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_61", i8* %"$$_literal_cost_p2_360_362")
  %"$gasadd_364" = add i64 %"$_literal_cost_call_363", 0
  %"$gasdivceil_365" = urem i64 %"$gasadd_364", 960
  %"$gasdivceil_366" = udiv i64 %"$gasadd_364", 960
  %"$gasdivceil_367" = icmp eq i64 %"$gasdivceil_365", 0
  %"$gasdivceil_368" = add i64 %"$gasdivceil_366", 1
  %"$gasdivceil_369" = select i1 %"$gasdivceil_367", i64 %"$gasdivceil_366", i64 %"$gasdivceil_368"
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 %"$gasdivceil_369", %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$have_gas_358"
  %"$consume_374" = sub i64 %"$gasrem_370", %"$gasdivceil_369"
  store i64 %"$consume_374", i64* @_gasrem, align 8
  %"$execptr_load_375" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p2_376" = alloca [33 x i8], align 1
  %"$p2_377" = load [33 x i8], [33 x i8]* %p2, align 1
  store [33 x i8] %"$p2_377", [33 x i8]* %"$schnorr_get_address_p2_376", align 1
  %"$schnorr_get_address_call_378" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_375", [33 x i8]* %"$schnorr_get_address_p2_376")
  %"$schnorr_get_address_380" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_378", align 1
  store [20 x i8] %"$schnorr_get_address_380", [20 x i8]* %a2_gen, align 1
  %"$gasrem_381" = load i64, i64* @_gasrem, align 8
  %"$gascmp_382" = icmp ugt i64 1, %"$gasrem_381"
  br i1 %"$gascmp_382", label %"$out_of_gas_383", label %"$have_gas_384"

"$out_of_gas_383":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_384"

"$have_gas_384":                                  ; preds = %"$out_of_gas_383", %"$have_gas_373"
  %"$consume_385" = sub i64 %"$gasrem_381", 1
  store i64 %"$consume_385", i64* @_gasrem, align 8
  %r2 = alloca %TName_Bool*, align 8
  %"$gasrem_386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_387" = icmp ugt i64 20, %"$gasrem_386"
  br i1 %"$gascmp_387", label %"$out_of_gas_388", label %"$have_gas_389"

"$out_of_gas_388":                                ; preds = %"$have_gas_384"
  call void @_out_of_gas()
  br label %"$have_gas_389"

"$have_gas_389":                                  ; preds = %"$out_of_gas_388", %"$have_gas_384"
  %"$consume_390" = sub i64 %"$gasrem_386", 20
  store i64 %"$consume_390", i64* @_gasrem, align 8
  %"$execptr_load_391" = load i8*, i8** @_execptr, align 8
  %"$eq_a2_392" = alloca [20 x i8], align 1
  %"$a2_393" = load [20 x i8], [20 x i8]* %a2, align 1
  store [20 x i8] %"$a2_393", [20 x i8]* %"$eq_a2_392", align 1
  %"$$eq_a2_392_394" = bitcast [20 x i8]* %"$eq_a2_392" to i8*
  %"$eq_a2_gen_395" = alloca [20 x i8], align 1
  %"$a2_gen_396" = load [20 x i8], [20 x i8]* %a2_gen, align 1
  store [20 x i8] %"$a2_gen_396", [20 x i8]* %"$eq_a2_gen_395", align 1
  %"$$eq_a2_gen_395_397" = bitcast [20 x i8]* %"$eq_a2_gen_395" to i8*
  %"$eq_call_398" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_391", i32 20, i8* %"$$eq_a2_392_394", i8* %"$$eq_a2_gen_395_397")
  store %TName_Bool* %"$eq_call_398", %TName_Bool** %r2, align 8
  %"$gasrem_400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_401" = icmp ugt i64 1, %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %"$have_gas_389"
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %"$have_gas_389"
  %"$consume_404" = sub i64 %"$gasrem_400", 1
  store i64 %"$consume_404", i64* @_gasrem, align 8
  %p3 = alloca [33 x i8], align 1
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_403"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_403"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  store [33 x i8] c"\02\FAzP\1F2<\C5>\07\0C\0A\94Sp6\86y\E7W)`\EC$\D8\A08~\F3\B5\0A\22\85", [33 x i8]* %p3, align 1
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$have_gas_408"
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  %a3 = alloca [20 x i8], align 1
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 1, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$have_gas_413"
  %"$consume_419" = sub i64 %"$gasrem_415", 1
  store i64 %"$consume_419", i64* @_gasrem, align 8
  store [20 x i8] c"\DE\D0/\D9y\FC.U\C0$;\D2\F5-\F0\22\C4\0A\DA\1E", [20 x i8]* %a3, align 1
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_418"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_418"
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem, align 8
  %a3_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p3_425" = alloca [33 x i8], align 1
  %"$p3_426" = load [33 x i8], [33 x i8]* %p3, align 1
  store [33 x i8] %"$p3_426", [33 x i8]* %"$_literal_cost_p3_425", align 1
  %"$$_literal_cost_p3_425_427" = bitcast [33 x i8]* %"$_literal_cost_p3_425" to i8*
  %"$_literal_cost_call_428" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_61", i8* %"$$_literal_cost_p3_425_427")
  %"$gasadd_429" = add i64 %"$_literal_cost_call_428", 0
  %"$gasdivceil_430" = urem i64 %"$gasadd_429", 960
  %"$gasdivceil_431" = udiv i64 %"$gasadd_429", 960
  %"$gasdivceil_432" = icmp eq i64 %"$gasdivceil_430", 0
  %"$gasdivceil_433" = add i64 %"$gasdivceil_431", 1
  %"$gasdivceil_434" = select i1 %"$gasdivceil_432", i64 %"$gasdivceil_431", i64 %"$gasdivceil_433"
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 %"$gasdivceil_434", %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_423"
  %"$consume_439" = sub i64 %"$gasrem_435", %"$gasdivceil_434"
  store i64 %"$consume_439", i64* @_gasrem, align 8
  %"$execptr_load_440" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p3_441" = alloca [33 x i8], align 1
  %"$p3_442" = load [33 x i8], [33 x i8]* %p3, align 1
  store [33 x i8] %"$p3_442", [33 x i8]* %"$schnorr_get_address_p3_441", align 1
  %"$schnorr_get_address_call_443" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_440", [33 x i8]* %"$schnorr_get_address_p3_441")
  %"$schnorr_get_address_445" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_443", align 1
  store [20 x i8] %"$schnorr_get_address_445", [20 x i8]* %a3_gen, align 1
  %"$gasrem_446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_447" = icmp ugt i64 1, %"$gasrem_446"
  br i1 %"$gascmp_447", label %"$out_of_gas_448", label %"$have_gas_449"

"$out_of_gas_448":                                ; preds = %"$have_gas_438"
  call void @_out_of_gas()
  br label %"$have_gas_449"

"$have_gas_449":                                  ; preds = %"$out_of_gas_448", %"$have_gas_438"
  %"$consume_450" = sub i64 %"$gasrem_446", 1
  store i64 %"$consume_450", i64* @_gasrem, align 8
  %r3 = alloca %TName_Bool*, align 8
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 20, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$have_gas_449"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$have_gas_449"
  %"$consume_455" = sub i64 %"$gasrem_451", 20
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %"$execptr_load_456" = load i8*, i8** @_execptr, align 8
  %"$eq_a3_457" = alloca [20 x i8], align 1
  %"$a3_458" = load [20 x i8], [20 x i8]* %a3, align 1
  store [20 x i8] %"$a3_458", [20 x i8]* %"$eq_a3_457", align 1
  %"$$eq_a3_457_459" = bitcast [20 x i8]* %"$eq_a3_457" to i8*
  %"$eq_a3_gen_460" = alloca [20 x i8], align 1
  %"$a3_gen_461" = load [20 x i8], [20 x i8]* %a3_gen, align 1
  store [20 x i8] %"$a3_gen_461", [20 x i8]* %"$eq_a3_gen_460", align 1
  %"$$eq_a3_gen_460_462" = bitcast [20 x i8]* %"$eq_a3_gen_460" to i8*
  %"$eq_call_463" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_456", i32 20, i8* %"$$eq_a3_457_459", i8* %"$$eq_a3_gen_460_462")
  store %TName_Bool* %"$eq_call_463", %TName_Bool** %r3, align 8
  %"$gasrem_465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_466" = icmp ugt i64 1, %"$gasrem_465"
  br i1 %"$gascmp_466", label %"$out_of_gas_467", label %"$have_gas_468"

"$out_of_gas_467":                                ; preds = %"$have_gas_454"
  call void @_out_of_gas()
  br label %"$have_gas_468"

"$have_gas_468":                                  ; preds = %"$out_of_gas_467", %"$have_gas_454"
  %"$consume_469" = sub i64 %"$gasrem_465", 1
  store i64 %"$consume_469", i64* @_gasrem, align 8
  %p4 = alloca [33 x i8], align 1
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 1, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$have_gas_468"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$have_gas_468"
  %"$consume_474" = sub i64 %"$gasrem_470", 1
  store i64 %"$consume_474", i64* @_gasrem, align 8
  store [33 x i8] c"\03o\86v\E4s\AF \B4\CC\E7\D3'\10=\E4PJ\9C\00\EA\E7\EA\03\D0\A3e\FBH\81z\C9\7F", [33 x i8]* %p4, align 1
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 1, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_473"
  %"$consume_479" = sub i64 %"$gasrem_475", 1
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %a4 = alloca [20 x i8], align 1
  %"$gasrem_480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_481" = icmp ugt i64 1, %"$gasrem_480"
  br i1 %"$gascmp_481", label %"$out_of_gas_482", label %"$have_gas_483"

"$out_of_gas_482":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_483"

"$have_gas_483":                                  ; preds = %"$out_of_gas_482", %"$have_gas_478"
  %"$consume_484" = sub i64 %"$gasrem_480", 1
  store i64 %"$consume_484", i64* @_gasrem, align 8
  store [20 x i8] c"\13\F0n`){\EAj<@/od\C4\16\A6\B3\1EXn", [20 x i8]* %a4, align 1
  %"$gasrem_485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_486" = icmp ugt i64 1, %"$gasrem_485"
  br i1 %"$gascmp_486", label %"$out_of_gas_487", label %"$have_gas_488"

"$out_of_gas_487":                                ; preds = %"$have_gas_483"
  call void @_out_of_gas()
  br label %"$have_gas_488"

"$have_gas_488":                                  ; preds = %"$out_of_gas_487", %"$have_gas_483"
  %"$consume_489" = sub i64 %"$gasrem_485", 1
  store i64 %"$consume_489", i64* @_gasrem, align 8
  %a4_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p4_490" = alloca [33 x i8], align 1
  %"$p4_491" = load [33 x i8], [33 x i8]* %p4, align 1
  store [33 x i8] %"$p4_491", [33 x i8]* %"$_literal_cost_p4_490", align 1
  %"$$_literal_cost_p4_490_492" = bitcast [33 x i8]* %"$_literal_cost_p4_490" to i8*
  %"$_literal_cost_call_493" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_61", i8* %"$$_literal_cost_p4_490_492")
  %"$gasadd_494" = add i64 %"$_literal_cost_call_493", 0
  %"$gasdivceil_495" = urem i64 %"$gasadd_494", 960
  %"$gasdivceil_496" = udiv i64 %"$gasadd_494", 960
  %"$gasdivceil_497" = icmp eq i64 %"$gasdivceil_495", 0
  %"$gasdivceil_498" = add i64 %"$gasdivceil_496", 1
  %"$gasdivceil_499" = select i1 %"$gasdivceil_497", i64 %"$gasdivceil_496", i64 %"$gasdivceil_498"
  %"$gasrem_500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_501" = icmp ugt i64 %"$gasdivceil_499", %"$gasrem_500"
  br i1 %"$gascmp_501", label %"$out_of_gas_502", label %"$have_gas_503"

"$out_of_gas_502":                                ; preds = %"$have_gas_488"
  call void @_out_of_gas()
  br label %"$have_gas_503"

"$have_gas_503":                                  ; preds = %"$out_of_gas_502", %"$have_gas_488"
  %"$consume_504" = sub i64 %"$gasrem_500", %"$gasdivceil_499"
  store i64 %"$consume_504", i64* @_gasrem, align 8
  %"$execptr_load_505" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p4_506" = alloca [33 x i8], align 1
  %"$p4_507" = load [33 x i8], [33 x i8]* %p4, align 1
  store [33 x i8] %"$p4_507", [33 x i8]* %"$schnorr_get_address_p4_506", align 1
  %"$schnorr_get_address_call_508" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_505", [33 x i8]* %"$schnorr_get_address_p4_506")
  %"$schnorr_get_address_510" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_508", align 1
  store [20 x i8] %"$schnorr_get_address_510", [20 x i8]* %a4_gen, align 1
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 1, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %"$have_gas_503"
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %"$have_gas_503"
  %"$consume_515" = sub i64 %"$gasrem_511", 1
  store i64 %"$consume_515", i64* @_gasrem, align 8
  %r4 = alloca %TName_Bool*, align 8
  %"$gasrem_516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_517" = icmp ugt i64 20, %"$gasrem_516"
  br i1 %"$gascmp_517", label %"$out_of_gas_518", label %"$have_gas_519"

"$out_of_gas_518":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_519"

"$have_gas_519":                                  ; preds = %"$out_of_gas_518", %"$have_gas_514"
  %"$consume_520" = sub i64 %"$gasrem_516", 20
  store i64 %"$consume_520", i64* @_gasrem, align 8
  %"$execptr_load_521" = load i8*, i8** @_execptr, align 8
  %"$eq_a4_522" = alloca [20 x i8], align 1
  %"$a4_523" = load [20 x i8], [20 x i8]* %a4, align 1
  store [20 x i8] %"$a4_523", [20 x i8]* %"$eq_a4_522", align 1
  %"$$eq_a4_522_524" = bitcast [20 x i8]* %"$eq_a4_522" to i8*
  %"$eq_a4_gen_525" = alloca [20 x i8], align 1
  %"$a4_gen_526" = load [20 x i8], [20 x i8]* %a4_gen, align 1
  store [20 x i8] %"$a4_gen_526", [20 x i8]* %"$eq_a4_gen_525", align 1
  %"$$eq_a4_gen_525_527" = bitcast [20 x i8]* %"$eq_a4_gen_525" to i8*
  %"$eq_call_528" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_521", i32 20, i8* %"$$eq_a4_522_524", i8* %"$$eq_a4_gen_525_527")
  store %TName_Bool* %"$eq_call_528", %TName_Bool** %r4, align 8
  %"$gasrem_530" = load i64, i64* @_gasrem, align 8
  %"$gascmp_531" = icmp ugt i64 1, %"$gasrem_530"
  br i1 %"$gascmp_531", label %"$out_of_gas_532", label %"$have_gas_533"

"$out_of_gas_532":                                ; preds = %"$have_gas_519"
  call void @_out_of_gas()
  br label %"$have_gas_533"

"$have_gas_533":                                  ; preds = %"$out_of_gas_532", %"$have_gas_519"
  %"$consume_534" = sub i64 %"$gasrem_530", 1
  store i64 %"$consume_534", i64* @_gasrem, align 8
  %p5 = alloca [33 x i8], align 1
  %"$gasrem_535" = load i64, i64* @_gasrem, align 8
  %"$gascmp_536" = icmp ugt i64 1, %"$gasrem_535"
  br i1 %"$gascmp_536", label %"$out_of_gas_537", label %"$have_gas_538"

"$out_of_gas_537":                                ; preds = %"$have_gas_533"
  call void @_out_of_gas()
  br label %"$have_gas_538"

"$have_gas_538":                                  ; preds = %"$out_of_gas_537", %"$have_gas_533"
  %"$consume_539" = sub i64 %"$gasrem_535", 1
  store i64 %"$consume_539", i64* @_gasrem, align 8
  store [33 x i8] c"\03L965)\C2\D4\07\8Fr\B8\C4\98\C4\CB\C5\BA^\10\D8fo\E0o\10J'\E0\E4BB\A0", [33 x i8]* %p5, align 1
  %"$gasrem_540" = load i64, i64* @_gasrem, align 8
  %"$gascmp_541" = icmp ugt i64 1, %"$gasrem_540"
  br i1 %"$gascmp_541", label %"$out_of_gas_542", label %"$have_gas_543"

"$out_of_gas_542":                                ; preds = %"$have_gas_538"
  call void @_out_of_gas()
  br label %"$have_gas_543"

"$have_gas_543":                                  ; preds = %"$out_of_gas_542", %"$have_gas_538"
  %"$consume_544" = sub i64 %"$gasrem_540", 1
  store i64 %"$consume_544", i64* @_gasrem, align 8
  %a5 = alloca [20 x i8], align 1
  %"$gasrem_545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_546" = icmp ugt i64 1, %"$gasrem_545"
  br i1 %"$gascmp_546", label %"$out_of_gas_547", label %"$have_gas_548"

"$out_of_gas_547":                                ; preds = %"$have_gas_543"
  call void @_out_of_gas()
  br label %"$have_gas_548"

"$have_gas_548":                                  ; preds = %"$out_of_gas_547", %"$have_gas_543"
  %"$consume_549" = sub i64 %"$gasrem_545", 1
  store i64 %"$consume_549", i64* @_gasrem, align 8
  store [20 x i8] c"\1A\90\C2S\07\C3\CCq\95\8A\83\FA!:#b\D8Y\CF3", [20 x i8]* %a5, align 1
  %"$gasrem_550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_551" = icmp ugt i64 1, %"$gasrem_550"
  br i1 %"$gascmp_551", label %"$out_of_gas_552", label %"$have_gas_553"

"$out_of_gas_552":                                ; preds = %"$have_gas_548"
  call void @_out_of_gas()
  br label %"$have_gas_553"

"$have_gas_553":                                  ; preds = %"$out_of_gas_552", %"$have_gas_548"
  %"$consume_554" = sub i64 %"$gasrem_550", 1
  store i64 %"$consume_554", i64* @_gasrem, align 8
  %a5_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p5_555" = alloca [33 x i8], align 1
  %"$p5_556" = load [33 x i8], [33 x i8]* %p5, align 1
  store [33 x i8] %"$p5_556", [33 x i8]* %"$_literal_cost_p5_555", align 1
  %"$$_literal_cost_p5_555_557" = bitcast [33 x i8]* %"$_literal_cost_p5_555" to i8*
  %"$_literal_cost_call_558" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_61", i8* %"$$_literal_cost_p5_555_557")
  %"$gasadd_559" = add i64 %"$_literal_cost_call_558", 0
  %"$gasdivceil_560" = urem i64 %"$gasadd_559", 960
  %"$gasdivceil_561" = udiv i64 %"$gasadd_559", 960
  %"$gasdivceil_562" = icmp eq i64 %"$gasdivceil_560", 0
  %"$gasdivceil_563" = add i64 %"$gasdivceil_561", 1
  %"$gasdivceil_564" = select i1 %"$gasdivceil_562", i64 %"$gasdivceil_561", i64 %"$gasdivceil_563"
  %"$gasrem_565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_566" = icmp ugt i64 %"$gasdivceil_564", %"$gasrem_565"
  br i1 %"$gascmp_566", label %"$out_of_gas_567", label %"$have_gas_568"

"$out_of_gas_567":                                ; preds = %"$have_gas_553"
  call void @_out_of_gas()
  br label %"$have_gas_568"

"$have_gas_568":                                  ; preds = %"$out_of_gas_567", %"$have_gas_553"
  %"$consume_569" = sub i64 %"$gasrem_565", %"$gasdivceil_564"
  store i64 %"$consume_569", i64* @_gasrem, align 8
  %"$execptr_load_570" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p5_571" = alloca [33 x i8], align 1
  %"$p5_572" = load [33 x i8], [33 x i8]* %p5, align 1
  store [33 x i8] %"$p5_572", [33 x i8]* %"$schnorr_get_address_p5_571", align 1
  %"$schnorr_get_address_call_573" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_570", [33 x i8]* %"$schnorr_get_address_p5_571")
  %"$schnorr_get_address_575" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_573", align 1
  store [20 x i8] %"$schnorr_get_address_575", [20 x i8]* %a5_gen, align 1
  %"$gasrem_576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_577" = icmp ugt i64 1, %"$gasrem_576"
  br i1 %"$gascmp_577", label %"$out_of_gas_578", label %"$have_gas_579"

"$out_of_gas_578":                                ; preds = %"$have_gas_568"
  call void @_out_of_gas()
  br label %"$have_gas_579"

"$have_gas_579":                                  ; preds = %"$out_of_gas_578", %"$have_gas_568"
  %"$consume_580" = sub i64 %"$gasrem_576", 1
  store i64 %"$consume_580", i64* @_gasrem, align 8
  %r5 = alloca %TName_Bool*, align 8
  %"$gasrem_581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_582" = icmp ugt i64 20, %"$gasrem_581"
  br i1 %"$gascmp_582", label %"$out_of_gas_583", label %"$have_gas_584"

"$out_of_gas_583":                                ; preds = %"$have_gas_579"
  call void @_out_of_gas()
  br label %"$have_gas_584"

"$have_gas_584":                                  ; preds = %"$out_of_gas_583", %"$have_gas_579"
  %"$consume_585" = sub i64 %"$gasrem_581", 20
  store i64 %"$consume_585", i64* @_gasrem, align 8
  %"$execptr_load_586" = load i8*, i8** @_execptr, align 8
  %"$eq_a5_587" = alloca [20 x i8], align 1
  %"$a5_588" = load [20 x i8], [20 x i8]* %a5, align 1
  store [20 x i8] %"$a5_588", [20 x i8]* %"$eq_a5_587", align 1
  %"$$eq_a5_587_589" = bitcast [20 x i8]* %"$eq_a5_587" to i8*
  %"$eq_a5_gen_590" = alloca [20 x i8], align 1
  %"$a5_gen_591" = load [20 x i8], [20 x i8]* %a5_gen, align 1
  store [20 x i8] %"$a5_gen_591", [20 x i8]* %"$eq_a5_gen_590", align 1
  %"$$eq_a5_gen_590_592" = bitcast [20 x i8]* %"$eq_a5_gen_590" to i8*
  %"$eq_call_593" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_586", i32 20, i8* %"$$eq_a5_587_589", i8* %"$$eq_a5_gen_590_592")
  store %TName_Bool* %"$eq_call_593", %TName_Bool** %r5, align 8
  %"$gasrem_595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_596" = icmp ugt i64 1, %"$gasrem_595"
  br i1 %"$gascmp_596", label %"$out_of_gas_597", label %"$have_gas_598"

"$out_of_gas_597":                                ; preds = %"$have_gas_584"
  call void @_out_of_gas()
  br label %"$have_gas_598"

"$have_gas_598":                                  ; preds = %"$out_of_gas_597", %"$have_gas_584"
  %"$consume_599" = sub i64 %"$gasrem_595", 1
  store i64 %"$consume_599", i64* @_gasrem, align 8
  %p6 = alloca [33 x i8], align 1
  %"$gasrem_600" = load i64, i64* @_gasrem, align 8
  %"$gascmp_601" = icmp ugt i64 1, %"$gasrem_600"
  br i1 %"$gascmp_601", label %"$out_of_gas_602", label %"$have_gas_603"

"$out_of_gas_602":                                ; preds = %"$have_gas_598"
  call void @_out_of_gas()
  br label %"$have_gas_603"

"$have_gas_603":                                  ; preds = %"$out_of_gas_602", %"$have_gas_598"
  %"$consume_604" = sub i64 %"$gasrem_600", 1
  store i64 %"$consume_604", i64* @_gasrem, align 8
  store [33 x i8] c"\02m\A5\BFl:<\91\C0\8A=\D7\FB\CE\0B\EA\F5\D46\03\9C\97\B0z\0Fa\AAK\94\93\E4g\87", [33 x i8]* %p6, align 1
  %"$gasrem_605" = load i64, i64* @_gasrem, align 8
  %"$gascmp_606" = icmp ugt i64 1, %"$gasrem_605"
  br i1 %"$gascmp_606", label %"$out_of_gas_607", label %"$have_gas_608"

"$out_of_gas_607":                                ; preds = %"$have_gas_603"
  call void @_out_of_gas()
  br label %"$have_gas_608"

"$have_gas_608":                                  ; preds = %"$out_of_gas_607", %"$have_gas_603"
  %"$consume_609" = sub i64 %"$gasrem_605", 1
  store i64 %"$consume_609", i64* @_gasrem, align 8
  %a6 = alloca [20 x i8], align 1
  %"$gasrem_610" = load i64, i64* @_gasrem, align 8
  %"$gascmp_611" = icmp ugt i64 1, %"$gasrem_610"
  br i1 %"$gascmp_611", label %"$out_of_gas_612", label %"$have_gas_613"

"$out_of_gas_612":                                ; preds = %"$have_gas_608"
  call void @_out_of_gas()
  br label %"$have_gas_613"

"$have_gas_613":                                  ; preds = %"$out_of_gas_612", %"$have_gas_608"
  %"$consume_614" = sub i64 %"$gasrem_610", 1
  store i64 %"$consume_614", i64* @_gasrem, align 8
  store [20 x i8] c"bZ\BA\EB\D8}\AE\9A\B1(\F3\B3\AE\99h\88\13\D9\C5\DF", [20 x i8]* %a6, align 1
  %"$gasrem_615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_616" = icmp ugt i64 1, %"$gasrem_615"
  br i1 %"$gascmp_616", label %"$out_of_gas_617", label %"$have_gas_618"

"$out_of_gas_617":                                ; preds = %"$have_gas_613"
  call void @_out_of_gas()
  br label %"$have_gas_618"

"$have_gas_618":                                  ; preds = %"$out_of_gas_617", %"$have_gas_613"
  %"$consume_619" = sub i64 %"$gasrem_615", 1
  store i64 %"$consume_619", i64* @_gasrem, align 8
  %a6_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p6_620" = alloca [33 x i8], align 1
  %"$p6_621" = load [33 x i8], [33 x i8]* %p6, align 1
  store [33 x i8] %"$p6_621", [33 x i8]* %"$_literal_cost_p6_620", align 1
  %"$$_literal_cost_p6_620_622" = bitcast [33 x i8]* %"$_literal_cost_p6_620" to i8*
  %"$_literal_cost_call_623" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_61", i8* %"$$_literal_cost_p6_620_622")
  %"$gasadd_624" = add i64 %"$_literal_cost_call_623", 0
  %"$gasdivceil_625" = urem i64 %"$gasadd_624", 960
  %"$gasdivceil_626" = udiv i64 %"$gasadd_624", 960
  %"$gasdivceil_627" = icmp eq i64 %"$gasdivceil_625", 0
  %"$gasdivceil_628" = add i64 %"$gasdivceil_626", 1
  %"$gasdivceil_629" = select i1 %"$gasdivceil_627", i64 %"$gasdivceil_626", i64 %"$gasdivceil_628"
  %"$gasrem_630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_631" = icmp ugt i64 %"$gasdivceil_629", %"$gasrem_630"
  br i1 %"$gascmp_631", label %"$out_of_gas_632", label %"$have_gas_633"

"$out_of_gas_632":                                ; preds = %"$have_gas_618"
  call void @_out_of_gas()
  br label %"$have_gas_633"

"$have_gas_633":                                  ; preds = %"$out_of_gas_632", %"$have_gas_618"
  %"$consume_634" = sub i64 %"$gasrem_630", %"$gasdivceil_629"
  store i64 %"$consume_634", i64* @_gasrem, align 8
  %"$execptr_load_635" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p6_636" = alloca [33 x i8], align 1
  %"$p6_637" = load [33 x i8], [33 x i8]* %p6, align 1
  store [33 x i8] %"$p6_637", [33 x i8]* %"$schnorr_get_address_p6_636", align 1
  %"$schnorr_get_address_call_638" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_635", [33 x i8]* %"$schnorr_get_address_p6_636")
  %"$schnorr_get_address_640" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_638", align 1
  store [20 x i8] %"$schnorr_get_address_640", [20 x i8]* %a6_gen, align 1
  %"$gasrem_641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_642" = icmp ugt i64 1, %"$gasrem_641"
  br i1 %"$gascmp_642", label %"$out_of_gas_643", label %"$have_gas_644"

"$out_of_gas_643":                                ; preds = %"$have_gas_633"
  call void @_out_of_gas()
  br label %"$have_gas_644"

"$have_gas_644":                                  ; preds = %"$out_of_gas_643", %"$have_gas_633"
  %"$consume_645" = sub i64 %"$gasrem_641", 1
  store i64 %"$consume_645", i64* @_gasrem, align 8
  %r6 = alloca %TName_Bool*, align 8
  %"$gasrem_646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_647" = icmp ugt i64 20, %"$gasrem_646"
  br i1 %"$gascmp_647", label %"$out_of_gas_648", label %"$have_gas_649"

"$out_of_gas_648":                                ; preds = %"$have_gas_644"
  call void @_out_of_gas()
  br label %"$have_gas_649"

"$have_gas_649":                                  ; preds = %"$out_of_gas_648", %"$have_gas_644"
  %"$consume_650" = sub i64 %"$gasrem_646", 20
  store i64 %"$consume_650", i64* @_gasrem, align 8
  %"$execptr_load_651" = load i8*, i8** @_execptr, align 8
  %"$eq_a6_652" = alloca [20 x i8], align 1
  %"$a6_653" = load [20 x i8], [20 x i8]* %a6, align 1
  store [20 x i8] %"$a6_653", [20 x i8]* %"$eq_a6_652", align 1
  %"$$eq_a6_652_654" = bitcast [20 x i8]* %"$eq_a6_652" to i8*
  %"$eq_a6_gen_655" = alloca [20 x i8], align 1
  %"$a6_gen_656" = load [20 x i8], [20 x i8]* %a6_gen, align 1
  store [20 x i8] %"$a6_gen_656", [20 x i8]* %"$eq_a6_gen_655", align 1
  %"$$eq_a6_gen_655_657" = bitcast [20 x i8]* %"$eq_a6_gen_655" to i8*
  %"$eq_call_658" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_651", i32 20, i8* %"$$eq_a6_652_654", i8* %"$$eq_a6_gen_655_657")
  store %TName_Bool* %"$eq_call_658", %TName_Bool** %r6, align 8
  %"$gasrem_660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_661" = icmp ugt i64 1, %"$gasrem_660"
  br i1 %"$gascmp_661", label %"$out_of_gas_662", label %"$have_gas_663"

"$out_of_gas_662":                                ; preds = %"$have_gas_649"
  call void @_out_of_gas()
  br label %"$have_gas_663"

"$have_gas_663":                                  ; preds = %"$out_of_gas_662", %"$have_gas_649"
  %"$consume_664" = sub i64 %"$gasrem_660", 1
  store i64 %"$consume_664", i64* @_gasrem, align 8
  %p7 = alloca [33 x i8], align 1
  %"$gasrem_665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_666" = icmp ugt i64 1, %"$gasrem_665"
  br i1 %"$gascmp_666", label %"$out_of_gas_667", label %"$have_gas_668"

"$out_of_gas_667":                                ; preds = %"$have_gas_663"
  call void @_out_of_gas()
  br label %"$have_gas_668"

"$have_gas_668":                                  ; preds = %"$out_of_gas_667", %"$have_gas_663"
  %"$consume_669" = sub i64 %"$gasrem_665", 1
  store i64 %"$consume_669", i64* @_gasrem, align 8
  store [33 x i8] c"\03*f\1F\9DJ\B8\DD\98\18\CE\D2\F6/=\A1O\DD#\E6\8EX\D0\1AJ\E1\86#\1D\7F\B6\09\BB", [33 x i8]* %p7, align 1
  %"$gasrem_670" = load i64, i64* @_gasrem, align 8
  %"$gascmp_671" = icmp ugt i64 1, %"$gasrem_670"
  br i1 %"$gascmp_671", label %"$out_of_gas_672", label %"$have_gas_673"

"$out_of_gas_672":                                ; preds = %"$have_gas_668"
  call void @_out_of_gas()
  br label %"$have_gas_673"

"$have_gas_673":                                  ; preds = %"$out_of_gas_672", %"$have_gas_668"
  %"$consume_674" = sub i64 %"$gasrem_670", 1
  store i64 %"$consume_674", i64* @_gasrem, align 8
  %a7 = alloca [20 x i8], align 1
  %"$gasrem_675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_676" = icmp ugt i64 1, %"$gasrem_675"
  br i1 %"$gascmp_676", label %"$out_of_gas_677", label %"$have_gas_678"

"$out_of_gas_677":                                ; preds = %"$have_gas_673"
  call void @_out_of_gas()
  br label %"$have_gas_678"

"$have_gas_678":                                  ; preds = %"$out_of_gas_677", %"$have_gas_673"
  %"$consume_679" = sub i64 %"$gasrem_675", 1
  store i64 %"$consume_679", i64* @_gasrem, align 8
  store [20 x i8] c"6\BA4\09\7F\86\11\91\C4\8C\83\9C\9B\1A\8BY\12\F5\83\CF", [20 x i8]* %a7, align 1
  %"$gasrem_680" = load i64, i64* @_gasrem, align 8
  %"$gascmp_681" = icmp ugt i64 1, %"$gasrem_680"
  br i1 %"$gascmp_681", label %"$out_of_gas_682", label %"$have_gas_683"

"$out_of_gas_682":                                ; preds = %"$have_gas_678"
  call void @_out_of_gas()
  br label %"$have_gas_683"

"$have_gas_683":                                  ; preds = %"$out_of_gas_682", %"$have_gas_678"
  %"$consume_684" = sub i64 %"$gasrem_680", 1
  store i64 %"$consume_684", i64* @_gasrem, align 8
  %a7_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p7_685" = alloca [33 x i8], align 1
  %"$p7_686" = load [33 x i8], [33 x i8]* %p7, align 1
  store [33 x i8] %"$p7_686", [33 x i8]* %"$_literal_cost_p7_685", align 1
  %"$$_literal_cost_p7_685_687" = bitcast [33 x i8]* %"$_literal_cost_p7_685" to i8*
  %"$_literal_cost_call_688" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_61", i8* %"$$_literal_cost_p7_685_687")
  %"$gasadd_689" = add i64 %"$_literal_cost_call_688", 0
  %"$gasdivceil_690" = urem i64 %"$gasadd_689", 960
  %"$gasdivceil_691" = udiv i64 %"$gasadd_689", 960
  %"$gasdivceil_692" = icmp eq i64 %"$gasdivceil_690", 0
  %"$gasdivceil_693" = add i64 %"$gasdivceil_691", 1
  %"$gasdivceil_694" = select i1 %"$gasdivceil_692", i64 %"$gasdivceil_691", i64 %"$gasdivceil_693"
  %"$gasrem_695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_696" = icmp ugt i64 %"$gasdivceil_694", %"$gasrem_695"
  br i1 %"$gascmp_696", label %"$out_of_gas_697", label %"$have_gas_698"

"$out_of_gas_697":                                ; preds = %"$have_gas_683"
  call void @_out_of_gas()
  br label %"$have_gas_698"

"$have_gas_698":                                  ; preds = %"$out_of_gas_697", %"$have_gas_683"
  %"$consume_699" = sub i64 %"$gasrem_695", %"$gasdivceil_694"
  store i64 %"$consume_699", i64* @_gasrem, align 8
  %"$execptr_load_700" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p7_701" = alloca [33 x i8], align 1
  %"$p7_702" = load [33 x i8], [33 x i8]* %p7, align 1
  store [33 x i8] %"$p7_702", [33 x i8]* %"$schnorr_get_address_p7_701", align 1
  %"$schnorr_get_address_call_703" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_700", [33 x i8]* %"$schnorr_get_address_p7_701")
  %"$schnorr_get_address_705" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_703", align 1
  store [20 x i8] %"$schnorr_get_address_705", [20 x i8]* %a7_gen, align 1
  %"$gasrem_706" = load i64, i64* @_gasrem, align 8
  %"$gascmp_707" = icmp ugt i64 1, %"$gasrem_706"
  br i1 %"$gascmp_707", label %"$out_of_gas_708", label %"$have_gas_709"

"$out_of_gas_708":                                ; preds = %"$have_gas_698"
  call void @_out_of_gas()
  br label %"$have_gas_709"

"$have_gas_709":                                  ; preds = %"$out_of_gas_708", %"$have_gas_698"
  %"$consume_710" = sub i64 %"$gasrem_706", 1
  store i64 %"$consume_710", i64* @_gasrem, align 8
  %r7 = alloca %TName_Bool*, align 8
  %"$gasrem_711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_712" = icmp ugt i64 20, %"$gasrem_711"
  br i1 %"$gascmp_712", label %"$out_of_gas_713", label %"$have_gas_714"

"$out_of_gas_713":                                ; preds = %"$have_gas_709"
  call void @_out_of_gas()
  br label %"$have_gas_714"

"$have_gas_714":                                  ; preds = %"$out_of_gas_713", %"$have_gas_709"
  %"$consume_715" = sub i64 %"$gasrem_711", 20
  store i64 %"$consume_715", i64* @_gasrem, align 8
  %"$execptr_load_716" = load i8*, i8** @_execptr, align 8
  %"$eq_a7_717" = alloca [20 x i8], align 1
  %"$a7_718" = load [20 x i8], [20 x i8]* %a7, align 1
  store [20 x i8] %"$a7_718", [20 x i8]* %"$eq_a7_717", align 1
  %"$$eq_a7_717_719" = bitcast [20 x i8]* %"$eq_a7_717" to i8*
  %"$eq_a7_gen_720" = alloca [20 x i8], align 1
  %"$a7_gen_721" = load [20 x i8], [20 x i8]* %a7_gen, align 1
  store [20 x i8] %"$a7_gen_721", [20 x i8]* %"$eq_a7_gen_720", align 1
  %"$$eq_a7_gen_720_722" = bitcast [20 x i8]* %"$eq_a7_gen_720" to i8*
  %"$eq_call_723" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_716", i32 20, i8* %"$$eq_a7_717_719", i8* %"$$eq_a7_gen_720_722")
  store %TName_Bool* %"$eq_call_723", %TName_Bool** %r7, align 8
  %"$gasrem_725" = load i64, i64* @_gasrem, align 8
  %"$gascmp_726" = icmp ugt i64 1, %"$gasrem_725"
  br i1 %"$gascmp_726", label %"$out_of_gas_727", label %"$have_gas_728"

"$out_of_gas_727":                                ; preds = %"$have_gas_714"
  call void @_out_of_gas()
  br label %"$have_gas_728"

"$have_gas_728":                                  ; preds = %"$out_of_gas_727", %"$have_gas_714"
  %"$consume_729" = sub i64 %"$gasrem_725", 1
  store i64 %"$consume_729", i64* @_gasrem, align 8
  %p8 = alloca [33 x i8], align 1
  %"$gasrem_730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_731" = icmp ugt i64 1, %"$gasrem_730"
  br i1 %"$gascmp_731", label %"$out_of_gas_732", label %"$have_gas_733"

"$out_of_gas_732":                                ; preds = %"$have_gas_728"
  call void @_out_of_gas()
  br label %"$have_gas_733"

"$have_gas_733":                                  ; preds = %"$out_of_gas_732", %"$have_gas_728"
  %"$consume_734" = sub i64 %"$gasrem_730", 1
  store i64 %"$consume_734", i64* @_gasrem, align 8
  store [33 x i8] c"\03j\94\E9%\BB \0D\CEA\A4l\90&\E0#\B2&\DD[L\B2'\CEvm`\CC\8F\AB!\81H", [33 x i8]* %p8, align 1
  %"$gasrem_735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_736" = icmp ugt i64 1, %"$gasrem_735"
  br i1 %"$gascmp_736", label %"$out_of_gas_737", label %"$have_gas_738"

"$out_of_gas_737":                                ; preds = %"$have_gas_733"
  call void @_out_of_gas()
  br label %"$have_gas_738"

"$have_gas_738":                                  ; preds = %"$out_of_gas_737", %"$have_gas_733"
  %"$consume_739" = sub i64 %"$gasrem_735", 1
  store i64 %"$consume_739", i64* @_gasrem, align 8
  %a8 = alloca [20 x i8], align 1
  %"$gasrem_740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_741" = icmp ugt i64 1, %"$gasrem_740"
  br i1 %"$gascmp_741", label %"$out_of_gas_742", label %"$have_gas_743"

"$out_of_gas_742":                                ; preds = %"$have_gas_738"
  call void @_out_of_gas()
  br label %"$have_gas_743"

"$have_gas_743":                                  ; preds = %"$out_of_gas_742", %"$have_gas_738"
  %"$consume_744" = sub i64 %"$gasrem_740", 1
  store i64 %"$consume_744", i64* @_gasrem, align 8
  store [20 x i8] c"\D2E:\E7l\9A\86\AA\E5D\FC\A6\99\DB\DC\\Wj\EF:", [20 x i8]* %a8, align 1
  %"$gasrem_745" = load i64, i64* @_gasrem, align 8
  %"$gascmp_746" = icmp ugt i64 1, %"$gasrem_745"
  br i1 %"$gascmp_746", label %"$out_of_gas_747", label %"$have_gas_748"

"$out_of_gas_747":                                ; preds = %"$have_gas_743"
  call void @_out_of_gas()
  br label %"$have_gas_748"

"$have_gas_748":                                  ; preds = %"$out_of_gas_747", %"$have_gas_743"
  %"$consume_749" = sub i64 %"$gasrem_745", 1
  store i64 %"$consume_749", i64* @_gasrem, align 8
  %a8_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p8_750" = alloca [33 x i8], align 1
  %"$p8_751" = load [33 x i8], [33 x i8]* %p8, align 1
  store [33 x i8] %"$p8_751", [33 x i8]* %"$_literal_cost_p8_750", align 1
  %"$$_literal_cost_p8_750_752" = bitcast [33 x i8]* %"$_literal_cost_p8_750" to i8*
  %"$_literal_cost_call_753" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_61", i8* %"$$_literal_cost_p8_750_752")
  %"$gasadd_754" = add i64 %"$_literal_cost_call_753", 0
  %"$gasdivceil_755" = urem i64 %"$gasadd_754", 960
  %"$gasdivceil_756" = udiv i64 %"$gasadd_754", 960
  %"$gasdivceil_757" = icmp eq i64 %"$gasdivceil_755", 0
  %"$gasdivceil_758" = add i64 %"$gasdivceil_756", 1
  %"$gasdivceil_759" = select i1 %"$gasdivceil_757", i64 %"$gasdivceil_756", i64 %"$gasdivceil_758"
  %"$gasrem_760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_761" = icmp ugt i64 %"$gasdivceil_759", %"$gasrem_760"
  br i1 %"$gascmp_761", label %"$out_of_gas_762", label %"$have_gas_763"

"$out_of_gas_762":                                ; preds = %"$have_gas_748"
  call void @_out_of_gas()
  br label %"$have_gas_763"

"$have_gas_763":                                  ; preds = %"$out_of_gas_762", %"$have_gas_748"
  %"$consume_764" = sub i64 %"$gasrem_760", %"$gasdivceil_759"
  store i64 %"$consume_764", i64* @_gasrem, align 8
  %"$execptr_load_765" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p8_766" = alloca [33 x i8], align 1
  %"$p8_767" = load [33 x i8], [33 x i8]* %p8, align 1
  store [33 x i8] %"$p8_767", [33 x i8]* %"$schnorr_get_address_p8_766", align 1
  %"$schnorr_get_address_call_768" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_765", [33 x i8]* %"$schnorr_get_address_p8_766")
  %"$schnorr_get_address_770" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_768", align 1
  store [20 x i8] %"$schnorr_get_address_770", [20 x i8]* %a8_gen, align 1
  %"$gasrem_771" = load i64, i64* @_gasrem, align 8
  %"$gascmp_772" = icmp ugt i64 1, %"$gasrem_771"
  br i1 %"$gascmp_772", label %"$out_of_gas_773", label %"$have_gas_774"

"$out_of_gas_773":                                ; preds = %"$have_gas_763"
  call void @_out_of_gas()
  br label %"$have_gas_774"

"$have_gas_774":                                  ; preds = %"$out_of_gas_773", %"$have_gas_763"
  %"$consume_775" = sub i64 %"$gasrem_771", 1
  store i64 %"$consume_775", i64* @_gasrem, align 8
  %r8 = alloca %TName_Bool*, align 8
  %"$gasrem_776" = load i64, i64* @_gasrem, align 8
  %"$gascmp_777" = icmp ugt i64 20, %"$gasrem_776"
  br i1 %"$gascmp_777", label %"$out_of_gas_778", label %"$have_gas_779"

"$out_of_gas_778":                                ; preds = %"$have_gas_774"
  call void @_out_of_gas()
  br label %"$have_gas_779"

"$have_gas_779":                                  ; preds = %"$out_of_gas_778", %"$have_gas_774"
  %"$consume_780" = sub i64 %"$gasrem_776", 20
  store i64 %"$consume_780", i64* @_gasrem, align 8
  %"$execptr_load_781" = load i8*, i8** @_execptr, align 8
  %"$eq_a8_782" = alloca [20 x i8], align 1
  %"$a8_783" = load [20 x i8], [20 x i8]* %a8, align 1
  store [20 x i8] %"$a8_783", [20 x i8]* %"$eq_a8_782", align 1
  %"$$eq_a8_782_784" = bitcast [20 x i8]* %"$eq_a8_782" to i8*
  %"$eq_a8_gen_785" = alloca [20 x i8], align 1
  %"$a8_gen_786" = load [20 x i8], [20 x i8]* %a8_gen, align 1
  store [20 x i8] %"$a8_gen_786", [20 x i8]* %"$eq_a8_gen_785", align 1
  %"$$eq_a8_gen_785_787" = bitcast [20 x i8]* %"$eq_a8_gen_785" to i8*
  %"$eq_call_788" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_781", i32 20, i8* %"$$eq_a8_782_784", i8* %"$$eq_a8_gen_785_787")
  store %TName_Bool* %"$eq_call_788", %TName_Bool** %r8, align 8
  %"$gasrem_790" = load i64, i64* @_gasrem, align 8
  %"$gascmp_791" = icmp ugt i64 1, %"$gasrem_790"
  br i1 %"$gascmp_791", label %"$out_of_gas_792", label %"$have_gas_793"

"$out_of_gas_792":                                ; preds = %"$have_gas_779"
  call void @_out_of_gas()
  br label %"$have_gas_793"

"$have_gas_793":                                  ; preds = %"$out_of_gas_792", %"$have_gas_779"
  %"$consume_794" = sub i64 %"$gasrem_790", 1
  store i64 %"$consume_794", i64* @_gasrem, align 8
  %"$gasrem_795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_796" = icmp ugt i64 1, %"$gasrem_795"
  br i1 %"$gascmp_796", label %"$out_of_gas_797", label %"$have_gas_798"

"$out_of_gas_797":                                ; preds = %"$have_gas_793"
  call void @_out_of_gas()
  br label %"$have_gas_798"

"$have_gas_798":                                  ; preds = %"$out_of_gas_797", %"$have_gas_793"
  %"$consume_799" = sub i64 %"$gasrem_795", 1
  store i64 %"$consume_799", i64* @_gasrem, align 8
  %"$gasrem_800" = load i64, i64* @_gasrem, align 8
  %"$gascmp_801" = icmp ugt i64 1, %"$gasrem_800"
  br i1 %"$gascmp_801", label %"$out_of_gas_802", label %"$have_gas_803"

"$out_of_gas_802":                                ; preds = %"$have_gas_798"
  call void @_out_of_gas()
  br label %"$have_gas_803"

"$have_gas_803":                                  ; preds = %"$out_of_gas_802", %"$have_gas_798"
  %"$consume_804" = sub i64 %"$gasrem_800", 1
  store i64 %"$consume_804", i64* @_gasrem, align 8
  %"$gasrem_805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_806" = icmp ugt i64 1, %"$gasrem_805"
  br i1 %"$gascmp_806", label %"$out_of_gas_807", label %"$have_gas_808"

"$out_of_gas_807":                                ; preds = %"$have_gas_803"
  call void @_out_of_gas()
  br label %"$have_gas_808"

"$have_gas_808":                                  ; preds = %"$out_of_gas_807", %"$have_gas_803"
  %"$consume_809" = sub i64 %"$gasrem_805", 1
  store i64 %"$consume_809", i64* @_gasrem, align 8
  %"$gasrem_810" = load i64, i64* @_gasrem, align 8
  %"$gascmp_811" = icmp ugt i64 1, %"$gasrem_810"
  br i1 %"$gascmp_811", label %"$out_of_gas_812", label %"$have_gas_813"

"$out_of_gas_812":                                ; preds = %"$have_gas_808"
  call void @_out_of_gas()
  br label %"$have_gas_813"

"$have_gas_813":                                  ; preds = %"$out_of_gas_812", %"$have_gas_808"
  %"$consume_814" = sub i64 %"$gasrem_810", 1
  store i64 %"$consume_814", i64* @_gasrem, align 8
  %res1 = alloca %TName_Bool*, align 8
  %"$gasrem_815" = load i64, i64* @_gasrem, align 8
  %"$gascmp_816" = icmp ugt i64 1, %"$gasrem_815"
  br i1 %"$gascmp_816", label %"$out_of_gas_817", label %"$have_gas_818"

"$out_of_gas_817":                                ; preds = %"$have_gas_813"
  call void @_out_of_gas()
  br label %"$have_gas_818"

"$have_gas_818":                                  ; preds = %"$out_of_gas_817", %"$have_gas_813"
  %"$consume_819" = sub i64 %"$gasrem_815", 1
  store i64 %"$consume_819", i64* @_gasrem, align 8
  %"$BoolUtils.and_4_6" = alloca { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.and_4_820" = load { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4, align 8
  %"$BoolUtils.and_4_fptr_821" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_820", 0
  %"$BoolUtils.and_4_envptr_822" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_820", 1
  %"$r1_823" = load %TName_Bool*, %TName_Bool** %r1, align 8
  %"$BoolUtils.and_4_call_824" = call { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_fptr_821"(i8* %"$BoolUtils.and_4_envptr_822", %TName_Bool* %"$r1_823")
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_call_824", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_6", align 8
  %"$BoolUtils.and_4_7" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_6_825" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_6", align 8
  %"$$BoolUtils.and_4_6_fptr_826" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_825", 0
  %"$$BoolUtils.and_4_6_envptr_827" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_825", 1
  %"$r2_828" = load %TName_Bool*, %TName_Bool** %r2, align 8
  %"$$BoolUtils.and_4_6_call_829" = call { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_fptr_826"(i8* %"$$BoolUtils.and_4_6_envptr_827", %TName_Bool* %"$r2_828")
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_call_829", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_7", align 8
  %"$BoolUtils.and_4_8" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_7_830" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_7", align 8
  %"$$BoolUtils.and_4_7_fptr_831" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_830", 0
  %"$$BoolUtils.and_4_7_envptr_832" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_830", 1
  %"$r3_833" = load %TName_Bool*, %TName_Bool** %r3, align 8
  %"$$BoolUtils.and_4_7_call_834" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_fptr_831"(i8* %"$$BoolUtils.and_4_7_envptr_832", %TName_Bool* %"$r3_833")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_call_834", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_8", align 8
  %"$BoolUtils.and_4_9" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.and_4_8_835" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_8", align 8
  %"$$BoolUtils.and_4_8_fptr_836" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_8_835", 0
  %"$$BoolUtils.and_4_8_envptr_837" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_8_835", 1
  %"$r4_838" = load %TName_Bool*, %TName_Bool** %r4, align 8
  %"$$BoolUtils.and_4_8_call_839" = call %TName_Bool* %"$$BoolUtils.and_4_8_fptr_836"(i8* %"$$BoolUtils.and_4_8_envptr_837", %TName_Bool* %"$r4_838")
  store %TName_Bool* %"$$BoolUtils.and_4_8_call_839", %TName_Bool** %"$BoolUtils.and_4_9", align 8
  %"$$BoolUtils.and_4_9_840" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.and_4_9", align 8
  store %TName_Bool* %"$$BoolUtils.and_4_9_840", %TName_Bool** %res1, align 8
  %"$gasrem_841" = load i64, i64* @_gasrem, align 8
  %"$gascmp_842" = icmp ugt i64 1, %"$gasrem_841"
  br i1 %"$gascmp_842", label %"$out_of_gas_843", label %"$have_gas_844"

"$out_of_gas_843":                                ; preds = %"$have_gas_818"
  call void @_out_of_gas()
  br label %"$have_gas_844"

"$have_gas_844":                                  ; preds = %"$out_of_gas_843", %"$have_gas_818"
  %"$consume_845" = sub i64 %"$gasrem_841", 1
  store i64 %"$consume_845", i64* @_gasrem, align 8
  %res2 = alloca %TName_Bool*, align 8
  %"$gasrem_846" = load i64, i64* @_gasrem, align 8
  %"$gascmp_847" = icmp ugt i64 1, %"$gasrem_846"
  br i1 %"$gascmp_847", label %"$out_of_gas_848", label %"$have_gas_849"

"$out_of_gas_848":                                ; preds = %"$have_gas_844"
  call void @_out_of_gas()
  br label %"$have_gas_849"

"$have_gas_849":                                  ; preds = %"$out_of_gas_848", %"$have_gas_844"
  %"$consume_850" = sub i64 %"$gasrem_846", 1
  store i64 %"$consume_850", i64* @_gasrem, align 8
  %"$BoolUtils.and_4_10" = alloca { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.and_4_851" = load { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4, align 8
  %"$BoolUtils.and_4_fptr_852" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_851", 0
  %"$BoolUtils.and_4_envptr_853" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_851", 1
  %"$r5_854" = load %TName_Bool*, %TName_Bool** %r5, align 8
  %"$BoolUtils.and_4_call_855" = call { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_fptr_852"(i8* %"$BoolUtils.and_4_envptr_853", %TName_Bool* %"$r5_854")
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_call_855", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_10", align 8
  %"$BoolUtils.and_4_11" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_10_856" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_10", align 8
  %"$$BoolUtils.and_4_10_fptr_857" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_856", 0
  %"$$BoolUtils.and_4_10_envptr_858" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_856", 1
  %"$r6_859" = load %TName_Bool*, %TName_Bool** %r6, align 8
  %"$$BoolUtils.and_4_10_call_860" = call { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_fptr_857"(i8* %"$$BoolUtils.and_4_10_envptr_858", %TName_Bool* %"$r6_859")
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_call_860", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_11", align 8
  %"$BoolUtils.and_4_12" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_11_861" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_11", align 8
  %"$$BoolUtils.and_4_11_fptr_862" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_861", 0
  %"$$BoolUtils.and_4_11_envptr_863" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_861", 1
  %"$r7_864" = load %TName_Bool*, %TName_Bool** %r7, align 8
  %"$$BoolUtils.and_4_11_call_865" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_fptr_862"(i8* %"$$BoolUtils.and_4_11_envptr_863", %TName_Bool* %"$r7_864")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_call_865", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_12", align 8
  %"$BoolUtils.and_4_13" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.and_4_12_866" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_12", align 8
  %"$$BoolUtils.and_4_12_fptr_867" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_12_866", 0
  %"$$BoolUtils.and_4_12_envptr_868" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_12_866", 1
  %"$r8_869" = load %TName_Bool*, %TName_Bool** %r8, align 8
  %"$$BoolUtils.and_4_12_call_870" = call %TName_Bool* %"$$BoolUtils.and_4_12_fptr_867"(i8* %"$$BoolUtils.and_4_12_envptr_868", %TName_Bool* %"$r8_869")
  store %TName_Bool* %"$$BoolUtils.and_4_12_call_870", %TName_Bool** %"$BoolUtils.and_4_13", align 8
  %"$$BoolUtils.and_4_13_871" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.and_4_13", align 8
  store %TName_Bool* %"$$BoolUtils.and_4_13_871", %TName_Bool** %res2, align 8
  %"$gasrem_872" = load i64, i64* @_gasrem, align 8
  %"$gascmp_873" = icmp ugt i64 1, %"$gasrem_872"
  br i1 %"$gascmp_873", label %"$out_of_gas_874", label %"$have_gas_875"

"$out_of_gas_874":                                ; preds = %"$have_gas_849"
  call void @_out_of_gas()
  br label %"$have_gas_875"

"$have_gas_875":                                  ; preds = %"$out_of_gas_874", %"$have_gas_849"
  %"$consume_876" = sub i64 %"$gasrem_872", 1
  store i64 %"$consume_876", i64* @_gasrem, align 8
  %"$BoolUtils.andb_14" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_877" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_878" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_877", 0
  %"$BoolUtils.andb_envptr_879" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_877", 1
  %"$res1_880" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$BoolUtils.andb_call_881" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_878"(i8* %"$BoolUtils.andb_envptr_879", %TName_Bool* %"$res1_880")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_881", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_14", align 8
  %"$BoolUtils.andb_15" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_14_882" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_14", align 8
  %"$$BoolUtils.andb_14_fptr_883" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_14_882", 0
  %"$$BoolUtils.andb_14_envptr_884" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_14_882", 1
  %"$res2_885" = load %TName_Bool*, %TName_Bool** %res2, align 8
  %"$$BoolUtils.andb_14_call_886" = call %TName_Bool* %"$$BoolUtils.andb_14_fptr_883"(i8* %"$$BoolUtils.andb_14_envptr_884", %TName_Bool* %"$res2_885")
  store %TName_Bool* %"$$BoolUtils.andb_14_call_886", %TName_Bool** %"$BoolUtils.andb_15", align 8
  %"$$BoolUtils.andb_15_887" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_15", align 8
  store %TName_Bool* %"$$BoolUtils.andb_15_887", %TName_Bool** %"$expr_28", align 8
  %"$$expr_28_888" = load %TName_Bool*, %TName_Bool** %"$expr_28", align 8
  ret %TName_Bool* %"$$expr_28_888"
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare [20 x i8]* @_schnorr_get_address(i8*, [33 x i8]*)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_889" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_890" = bitcast %TName_Bool* %"$exprval_889" to i8*
  %"$execptr_load_891" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_891", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_65", i8* %"$memvoidcast_890")
  ret void
}
