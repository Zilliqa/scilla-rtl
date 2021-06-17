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
%"$ParamDescr_732" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_733" = type { %ParamDescrString, i32, %"$ParamDescr_732"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_732"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_733"] zeroinitializer
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
  %"$schnorr_get_address_300" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_298", align 1
  store [20 x i8] %"$schnorr_get_address_300", [20 x i8]* %a1_gen, align 1
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_293"
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %r1 = alloca %TName_Bool*, align 8
  %"$execptr_load_306" = load i8*, i8** @_execptr, align 8
  %"$eq_a1_307" = alloca [20 x i8], align 1
  %"$a1_308" = load [20 x i8], [20 x i8]* %a1, align 1
  store [20 x i8] %"$a1_308", [20 x i8]* %"$eq_a1_307", align 1
  %"$$eq_a1_307_309" = bitcast [20 x i8]* %"$eq_a1_307" to i8*
  %"$eq_a1_gen_310" = alloca [20 x i8], align 1
  %"$a1_gen_311" = load [20 x i8], [20 x i8]* %a1_gen, align 1
  store [20 x i8] %"$a1_gen_311", [20 x i8]* %"$eq_a1_gen_310", align 1
  %"$$eq_a1_gen_310_312" = bitcast [20 x i8]* %"$eq_a1_gen_310" to i8*
  %"$eq_call_313" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_306", i32 20, i8* %"$$eq_a1_307_309", i8* %"$$eq_a1_gen_310_312")
  store %TName_Bool* %"$eq_call_313", %TName_Bool** %r1, align 8
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 1, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$have_gas_304"
  %"$consume_319" = sub i64 %"$gasrem_315", 1
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %p2 = alloca [33 x i8], align 1
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 1, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_318"
  %"$consume_324" = sub i64 %"$gasrem_320", 1
  store i64 %"$consume_324", i64* @_gasrem, align 8
  store [33 x i8] c"\03L\E2h\ACZ4\008\D8\AC\EB\BD\D766\11\A5\B1\19y\16w^2H\1F]k\10O\AFe", [33 x i8]* %p2, align 1
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_323"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %a2 = alloca [20 x i8], align 1
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 1, %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$have_gas_328"
  %"$consume_334" = sub i64 %"$gasrem_330", 1
  store i64 %"$consume_334", i64* @_gasrem, align 8
  store [20 x i8] c"D\82a\91Z\80\CD\E9\BD\E7\C7\A7\91hR\00\D3\A0\BFN", [20 x i8]* %a2, align 1
  %"$gasrem_335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_336" = icmp ugt i64 1, %"$gasrem_335"
  br i1 %"$gascmp_336", label %"$out_of_gas_337", label %"$have_gas_338"

"$out_of_gas_337":                                ; preds = %"$have_gas_333"
  call void @_out_of_gas()
  br label %"$have_gas_338"

"$have_gas_338":                                  ; preds = %"$out_of_gas_337", %"$have_gas_333"
  %"$consume_339" = sub i64 %"$gasrem_335", 1
  store i64 %"$consume_339", i64* @_gasrem, align 8
  %a2_gen = alloca [20 x i8], align 1
  %"$execptr_load_340" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p2_341" = alloca [33 x i8], align 1
  %"$p2_342" = load [33 x i8], [33 x i8]* %p2, align 1
  store [33 x i8] %"$p2_342", [33 x i8]* %"$schnorr_get_address_p2_341", align 1
  %"$schnorr_get_address_call_343" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_340", [33 x i8]* %"$schnorr_get_address_p2_341")
  %"$schnorr_get_address_345" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_343", align 1
  store [20 x i8] %"$schnorr_get_address_345", [20 x i8]* %a2_gen, align 1
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 1, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %"$have_gas_338"
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %"$have_gas_338"
  %"$consume_350" = sub i64 %"$gasrem_346", 1
  store i64 %"$consume_350", i64* @_gasrem, align 8
  %r2 = alloca %TName_Bool*, align 8
  %"$execptr_load_351" = load i8*, i8** @_execptr, align 8
  %"$eq_a2_352" = alloca [20 x i8], align 1
  %"$a2_353" = load [20 x i8], [20 x i8]* %a2, align 1
  store [20 x i8] %"$a2_353", [20 x i8]* %"$eq_a2_352", align 1
  %"$$eq_a2_352_354" = bitcast [20 x i8]* %"$eq_a2_352" to i8*
  %"$eq_a2_gen_355" = alloca [20 x i8], align 1
  %"$a2_gen_356" = load [20 x i8], [20 x i8]* %a2_gen, align 1
  store [20 x i8] %"$a2_gen_356", [20 x i8]* %"$eq_a2_gen_355", align 1
  %"$$eq_a2_gen_355_357" = bitcast [20 x i8]* %"$eq_a2_gen_355" to i8*
  %"$eq_call_358" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_351", i32 20, i8* %"$$eq_a2_352_354", i8* %"$$eq_a2_gen_355_357")
  store %TName_Bool* %"$eq_call_358", %TName_Bool** %r2, align 8
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_349"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_349"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %p3 = alloca [33 x i8], align 1
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 1, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %"$have_gas_363"
  %"$consume_369" = sub i64 %"$gasrem_365", 1
  store i64 %"$consume_369", i64* @_gasrem, align 8
  store [33 x i8] c"\02\FAzP\1F2<\C5>\07\0C\0A\94Sp6\86y\E7W)`\EC$\D8\A08~\F3\B5\0A\22\85", [33 x i8]* %p3, align 1
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 1, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$have_gas_368"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$have_gas_368"
  %"$consume_374" = sub i64 %"$gasrem_370", 1
  store i64 %"$consume_374", i64* @_gasrem, align 8
  %a3 = alloca [20 x i8], align 1
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 1, %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$have_gas_373"
  %"$consume_379" = sub i64 %"$gasrem_375", 1
  store i64 %"$consume_379", i64* @_gasrem, align 8
  store [20 x i8] c"\DE\D0/\D9y\FC.U\C0$;\D2\F5-\F0\22\C4\0A\DA\1E", [20 x i8]* %a3, align 1
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 1, %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$have_gas_378"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$have_gas_378"
  %"$consume_384" = sub i64 %"$gasrem_380", 1
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %a3_gen = alloca [20 x i8], align 1
  %"$execptr_load_385" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p3_386" = alloca [33 x i8], align 1
  %"$p3_387" = load [33 x i8], [33 x i8]* %p3, align 1
  store [33 x i8] %"$p3_387", [33 x i8]* %"$schnorr_get_address_p3_386", align 1
  %"$schnorr_get_address_call_388" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_385", [33 x i8]* %"$schnorr_get_address_p3_386")
  %"$schnorr_get_address_390" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_388", align 1
  store [20 x i8] %"$schnorr_get_address_390", [20 x i8]* %a3_gen, align 1
  %"$gasrem_391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_392" = icmp ugt i64 1, %"$gasrem_391"
  br i1 %"$gascmp_392", label %"$out_of_gas_393", label %"$have_gas_394"

"$out_of_gas_393":                                ; preds = %"$have_gas_383"
  call void @_out_of_gas()
  br label %"$have_gas_394"

"$have_gas_394":                                  ; preds = %"$out_of_gas_393", %"$have_gas_383"
  %"$consume_395" = sub i64 %"$gasrem_391", 1
  store i64 %"$consume_395", i64* @_gasrem, align 8
  %r3 = alloca %TName_Bool*, align 8
  %"$execptr_load_396" = load i8*, i8** @_execptr, align 8
  %"$eq_a3_397" = alloca [20 x i8], align 1
  %"$a3_398" = load [20 x i8], [20 x i8]* %a3, align 1
  store [20 x i8] %"$a3_398", [20 x i8]* %"$eq_a3_397", align 1
  %"$$eq_a3_397_399" = bitcast [20 x i8]* %"$eq_a3_397" to i8*
  %"$eq_a3_gen_400" = alloca [20 x i8], align 1
  %"$a3_gen_401" = load [20 x i8], [20 x i8]* %a3_gen, align 1
  store [20 x i8] %"$a3_gen_401", [20 x i8]* %"$eq_a3_gen_400", align 1
  %"$$eq_a3_gen_400_402" = bitcast [20 x i8]* %"$eq_a3_gen_400" to i8*
  %"$eq_call_403" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_396", i32 20, i8* %"$$eq_a3_397_399", i8* %"$$eq_a3_gen_400_402")
  store %TName_Bool* %"$eq_call_403", %TName_Bool** %r3, align 8
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_394"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_394"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %p4 = alloca [33 x i8], align 1
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$have_gas_408"
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  store [33 x i8] c"\03o\86v\E4s\AF \B4\CC\E7\D3'\10=\E4PJ\9C\00\EA\E7\EA\03\D0\A3e\FBH\81z\C9\7F", [33 x i8]* %p4, align 1
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 1, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$have_gas_413"
  %"$consume_419" = sub i64 %"$gasrem_415", 1
  store i64 %"$consume_419", i64* @_gasrem, align 8
  %a4 = alloca [20 x i8], align 1
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_418"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_418"
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem, align 8
  store [20 x i8] c"\13\F0n`){\EAj<@/od\C4\16\A6\B3\1EXn", [20 x i8]* %a4, align 1
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 1, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_423"
  %"$consume_429" = sub i64 %"$gasrem_425", 1
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %a4_gen = alloca [20 x i8], align 1
  %"$execptr_load_430" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p4_431" = alloca [33 x i8], align 1
  %"$p4_432" = load [33 x i8], [33 x i8]* %p4, align 1
  store [33 x i8] %"$p4_432", [33 x i8]* %"$schnorr_get_address_p4_431", align 1
  %"$schnorr_get_address_call_433" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_430", [33 x i8]* %"$schnorr_get_address_p4_431")
  %"$schnorr_get_address_435" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_433", align 1
  store [20 x i8] %"$schnorr_get_address_435", [20 x i8]* %a4_gen, align 1
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_428"
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %r4 = alloca %TName_Bool*, align 8
  %"$execptr_load_441" = load i8*, i8** @_execptr, align 8
  %"$eq_a4_442" = alloca [20 x i8], align 1
  %"$a4_443" = load [20 x i8], [20 x i8]* %a4, align 1
  store [20 x i8] %"$a4_443", [20 x i8]* %"$eq_a4_442", align 1
  %"$$eq_a4_442_444" = bitcast [20 x i8]* %"$eq_a4_442" to i8*
  %"$eq_a4_gen_445" = alloca [20 x i8], align 1
  %"$a4_gen_446" = load [20 x i8], [20 x i8]* %a4_gen, align 1
  store [20 x i8] %"$a4_gen_446", [20 x i8]* %"$eq_a4_gen_445", align 1
  %"$$eq_a4_gen_445_447" = bitcast [20 x i8]* %"$eq_a4_gen_445" to i8*
  %"$eq_call_448" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_441", i32 20, i8* %"$$eq_a4_442_444", i8* %"$$eq_a4_gen_445_447")
  store %TName_Bool* %"$eq_call_448", %TName_Bool** %r4, align 8
  %"$gasrem_450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_451" = icmp ugt i64 1, %"$gasrem_450"
  br i1 %"$gascmp_451", label %"$out_of_gas_452", label %"$have_gas_453"

"$out_of_gas_452":                                ; preds = %"$have_gas_439"
  call void @_out_of_gas()
  br label %"$have_gas_453"

"$have_gas_453":                                  ; preds = %"$out_of_gas_452", %"$have_gas_439"
  %"$consume_454" = sub i64 %"$gasrem_450", 1
  store i64 %"$consume_454", i64* @_gasrem, align 8
  %p5 = alloca [33 x i8], align 1
  %"$gasrem_455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_456" = icmp ugt i64 1, %"$gasrem_455"
  br i1 %"$gascmp_456", label %"$out_of_gas_457", label %"$have_gas_458"

"$out_of_gas_457":                                ; preds = %"$have_gas_453"
  call void @_out_of_gas()
  br label %"$have_gas_458"

"$have_gas_458":                                  ; preds = %"$out_of_gas_457", %"$have_gas_453"
  %"$consume_459" = sub i64 %"$gasrem_455", 1
  store i64 %"$consume_459", i64* @_gasrem, align 8
  store [33 x i8] c"\03L965)\C2\D4\07\8Fr\B8\C4\98\C4\CB\C5\BA^\10\D8fo\E0o\10J'\E0\E4BB\A0", [33 x i8]* %p5, align 1
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 1, %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$have_gas_458"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$have_gas_458"
  %"$consume_464" = sub i64 %"$gasrem_460", 1
  store i64 %"$consume_464", i64* @_gasrem, align 8
  %a5 = alloca [20 x i8], align 1
  %"$gasrem_465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_466" = icmp ugt i64 1, %"$gasrem_465"
  br i1 %"$gascmp_466", label %"$out_of_gas_467", label %"$have_gas_468"

"$out_of_gas_467":                                ; preds = %"$have_gas_463"
  call void @_out_of_gas()
  br label %"$have_gas_468"

"$have_gas_468":                                  ; preds = %"$out_of_gas_467", %"$have_gas_463"
  %"$consume_469" = sub i64 %"$gasrem_465", 1
  store i64 %"$consume_469", i64* @_gasrem, align 8
  store [20 x i8] c"\1A\90\C2S\07\C3\CCq\95\8A\83\FA!:#b\D8Y\CF3", [20 x i8]* %a5, align 1
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 1, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$have_gas_468"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$have_gas_468"
  %"$consume_474" = sub i64 %"$gasrem_470", 1
  store i64 %"$consume_474", i64* @_gasrem, align 8
  %a5_gen = alloca [20 x i8], align 1
  %"$execptr_load_475" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p5_476" = alloca [33 x i8], align 1
  %"$p5_477" = load [33 x i8], [33 x i8]* %p5, align 1
  store [33 x i8] %"$p5_477", [33 x i8]* %"$schnorr_get_address_p5_476", align 1
  %"$schnorr_get_address_call_478" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_475", [33 x i8]* %"$schnorr_get_address_p5_476")
  %"$schnorr_get_address_480" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_478", align 1
  store [20 x i8] %"$schnorr_get_address_480", [20 x i8]* %a5_gen, align 1
  %"$gasrem_481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_482" = icmp ugt i64 1, %"$gasrem_481"
  br i1 %"$gascmp_482", label %"$out_of_gas_483", label %"$have_gas_484"

"$out_of_gas_483":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_484"

"$have_gas_484":                                  ; preds = %"$out_of_gas_483", %"$have_gas_473"
  %"$consume_485" = sub i64 %"$gasrem_481", 1
  store i64 %"$consume_485", i64* @_gasrem, align 8
  %r5 = alloca %TName_Bool*, align 8
  %"$execptr_load_486" = load i8*, i8** @_execptr, align 8
  %"$eq_a5_487" = alloca [20 x i8], align 1
  %"$a5_488" = load [20 x i8], [20 x i8]* %a5, align 1
  store [20 x i8] %"$a5_488", [20 x i8]* %"$eq_a5_487", align 1
  %"$$eq_a5_487_489" = bitcast [20 x i8]* %"$eq_a5_487" to i8*
  %"$eq_a5_gen_490" = alloca [20 x i8], align 1
  %"$a5_gen_491" = load [20 x i8], [20 x i8]* %a5_gen, align 1
  store [20 x i8] %"$a5_gen_491", [20 x i8]* %"$eq_a5_gen_490", align 1
  %"$$eq_a5_gen_490_492" = bitcast [20 x i8]* %"$eq_a5_gen_490" to i8*
  %"$eq_call_493" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_486", i32 20, i8* %"$$eq_a5_487_489", i8* %"$$eq_a5_gen_490_492")
  store %TName_Bool* %"$eq_call_493", %TName_Bool** %r5, align 8
  %"$gasrem_495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_496" = icmp ugt i64 1, %"$gasrem_495"
  br i1 %"$gascmp_496", label %"$out_of_gas_497", label %"$have_gas_498"

"$out_of_gas_497":                                ; preds = %"$have_gas_484"
  call void @_out_of_gas()
  br label %"$have_gas_498"

"$have_gas_498":                                  ; preds = %"$out_of_gas_497", %"$have_gas_484"
  %"$consume_499" = sub i64 %"$gasrem_495", 1
  store i64 %"$consume_499", i64* @_gasrem, align 8
  %p6 = alloca [33 x i8], align 1
  %"$gasrem_500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_501" = icmp ugt i64 1, %"$gasrem_500"
  br i1 %"$gascmp_501", label %"$out_of_gas_502", label %"$have_gas_503"

"$out_of_gas_502":                                ; preds = %"$have_gas_498"
  call void @_out_of_gas()
  br label %"$have_gas_503"

"$have_gas_503":                                  ; preds = %"$out_of_gas_502", %"$have_gas_498"
  %"$consume_504" = sub i64 %"$gasrem_500", 1
  store i64 %"$consume_504", i64* @_gasrem, align 8
  store [33 x i8] c"\02m\A5\BFl:<\91\C0\8A=\D7\FB\CE\0B\EA\F5\D46\03\9C\97\B0z\0Fa\AAK\94\93\E4g\87", [33 x i8]* %p6, align 1
  %"$gasrem_505" = load i64, i64* @_gasrem, align 8
  %"$gascmp_506" = icmp ugt i64 1, %"$gasrem_505"
  br i1 %"$gascmp_506", label %"$out_of_gas_507", label %"$have_gas_508"

"$out_of_gas_507":                                ; preds = %"$have_gas_503"
  call void @_out_of_gas()
  br label %"$have_gas_508"

"$have_gas_508":                                  ; preds = %"$out_of_gas_507", %"$have_gas_503"
  %"$consume_509" = sub i64 %"$gasrem_505", 1
  store i64 %"$consume_509", i64* @_gasrem, align 8
  %a6 = alloca [20 x i8], align 1
  %"$gasrem_510" = load i64, i64* @_gasrem, align 8
  %"$gascmp_511" = icmp ugt i64 1, %"$gasrem_510"
  br i1 %"$gascmp_511", label %"$out_of_gas_512", label %"$have_gas_513"

"$out_of_gas_512":                                ; preds = %"$have_gas_508"
  call void @_out_of_gas()
  br label %"$have_gas_513"

"$have_gas_513":                                  ; preds = %"$out_of_gas_512", %"$have_gas_508"
  %"$consume_514" = sub i64 %"$gasrem_510", 1
  store i64 %"$consume_514", i64* @_gasrem, align 8
  store [20 x i8] c"bZ\BA\EB\D8}\AE\9A\B1(\F3\B3\AE\99h\88\13\D9\C5\DF", [20 x i8]* %a6, align 1
  %"$gasrem_515" = load i64, i64* @_gasrem, align 8
  %"$gascmp_516" = icmp ugt i64 1, %"$gasrem_515"
  br i1 %"$gascmp_516", label %"$out_of_gas_517", label %"$have_gas_518"

"$out_of_gas_517":                                ; preds = %"$have_gas_513"
  call void @_out_of_gas()
  br label %"$have_gas_518"

"$have_gas_518":                                  ; preds = %"$out_of_gas_517", %"$have_gas_513"
  %"$consume_519" = sub i64 %"$gasrem_515", 1
  store i64 %"$consume_519", i64* @_gasrem, align 8
  %a6_gen = alloca [20 x i8], align 1
  %"$execptr_load_520" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p6_521" = alloca [33 x i8], align 1
  %"$p6_522" = load [33 x i8], [33 x i8]* %p6, align 1
  store [33 x i8] %"$p6_522", [33 x i8]* %"$schnorr_get_address_p6_521", align 1
  %"$schnorr_get_address_call_523" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_520", [33 x i8]* %"$schnorr_get_address_p6_521")
  %"$schnorr_get_address_525" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_523", align 1
  store [20 x i8] %"$schnorr_get_address_525", [20 x i8]* %a6_gen, align 1
  %"$gasrem_526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_527" = icmp ugt i64 1, %"$gasrem_526"
  br i1 %"$gascmp_527", label %"$out_of_gas_528", label %"$have_gas_529"

"$out_of_gas_528":                                ; preds = %"$have_gas_518"
  call void @_out_of_gas()
  br label %"$have_gas_529"

"$have_gas_529":                                  ; preds = %"$out_of_gas_528", %"$have_gas_518"
  %"$consume_530" = sub i64 %"$gasrem_526", 1
  store i64 %"$consume_530", i64* @_gasrem, align 8
  %r6 = alloca %TName_Bool*, align 8
  %"$execptr_load_531" = load i8*, i8** @_execptr, align 8
  %"$eq_a6_532" = alloca [20 x i8], align 1
  %"$a6_533" = load [20 x i8], [20 x i8]* %a6, align 1
  store [20 x i8] %"$a6_533", [20 x i8]* %"$eq_a6_532", align 1
  %"$$eq_a6_532_534" = bitcast [20 x i8]* %"$eq_a6_532" to i8*
  %"$eq_a6_gen_535" = alloca [20 x i8], align 1
  %"$a6_gen_536" = load [20 x i8], [20 x i8]* %a6_gen, align 1
  store [20 x i8] %"$a6_gen_536", [20 x i8]* %"$eq_a6_gen_535", align 1
  %"$$eq_a6_gen_535_537" = bitcast [20 x i8]* %"$eq_a6_gen_535" to i8*
  %"$eq_call_538" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_531", i32 20, i8* %"$$eq_a6_532_534", i8* %"$$eq_a6_gen_535_537")
  store %TName_Bool* %"$eq_call_538", %TName_Bool** %r6, align 8
  %"$gasrem_540" = load i64, i64* @_gasrem, align 8
  %"$gascmp_541" = icmp ugt i64 1, %"$gasrem_540"
  br i1 %"$gascmp_541", label %"$out_of_gas_542", label %"$have_gas_543"

"$out_of_gas_542":                                ; preds = %"$have_gas_529"
  call void @_out_of_gas()
  br label %"$have_gas_543"

"$have_gas_543":                                  ; preds = %"$out_of_gas_542", %"$have_gas_529"
  %"$consume_544" = sub i64 %"$gasrem_540", 1
  store i64 %"$consume_544", i64* @_gasrem, align 8
  %p7 = alloca [33 x i8], align 1
  %"$gasrem_545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_546" = icmp ugt i64 1, %"$gasrem_545"
  br i1 %"$gascmp_546", label %"$out_of_gas_547", label %"$have_gas_548"

"$out_of_gas_547":                                ; preds = %"$have_gas_543"
  call void @_out_of_gas()
  br label %"$have_gas_548"

"$have_gas_548":                                  ; preds = %"$out_of_gas_547", %"$have_gas_543"
  %"$consume_549" = sub i64 %"$gasrem_545", 1
  store i64 %"$consume_549", i64* @_gasrem, align 8
  store [33 x i8] c"\03*f\1F\9DJ\B8\DD\98\18\CE\D2\F6/=\A1O\DD#\E6\8EX\D0\1AJ\E1\86#\1D\7F\B6\09\BB", [33 x i8]* %p7, align 1
  %"$gasrem_550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_551" = icmp ugt i64 1, %"$gasrem_550"
  br i1 %"$gascmp_551", label %"$out_of_gas_552", label %"$have_gas_553"

"$out_of_gas_552":                                ; preds = %"$have_gas_548"
  call void @_out_of_gas()
  br label %"$have_gas_553"

"$have_gas_553":                                  ; preds = %"$out_of_gas_552", %"$have_gas_548"
  %"$consume_554" = sub i64 %"$gasrem_550", 1
  store i64 %"$consume_554", i64* @_gasrem, align 8
  %a7 = alloca [20 x i8], align 1
  %"$gasrem_555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_556" = icmp ugt i64 1, %"$gasrem_555"
  br i1 %"$gascmp_556", label %"$out_of_gas_557", label %"$have_gas_558"

"$out_of_gas_557":                                ; preds = %"$have_gas_553"
  call void @_out_of_gas()
  br label %"$have_gas_558"

"$have_gas_558":                                  ; preds = %"$out_of_gas_557", %"$have_gas_553"
  %"$consume_559" = sub i64 %"$gasrem_555", 1
  store i64 %"$consume_559", i64* @_gasrem, align 8
  store [20 x i8] c"6\BA4\09\7F\86\11\91\C4\8C\83\9C\9B\1A\8BY\12\F5\83\CF", [20 x i8]* %a7, align 1
  %"$gasrem_560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_561" = icmp ugt i64 1, %"$gasrem_560"
  br i1 %"$gascmp_561", label %"$out_of_gas_562", label %"$have_gas_563"

"$out_of_gas_562":                                ; preds = %"$have_gas_558"
  call void @_out_of_gas()
  br label %"$have_gas_563"

"$have_gas_563":                                  ; preds = %"$out_of_gas_562", %"$have_gas_558"
  %"$consume_564" = sub i64 %"$gasrem_560", 1
  store i64 %"$consume_564", i64* @_gasrem, align 8
  %a7_gen = alloca [20 x i8], align 1
  %"$execptr_load_565" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p7_566" = alloca [33 x i8], align 1
  %"$p7_567" = load [33 x i8], [33 x i8]* %p7, align 1
  store [33 x i8] %"$p7_567", [33 x i8]* %"$schnorr_get_address_p7_566", align 1
  %"$schnorr_get_address_call_568" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_565", [33 x i8]* %"$schnorr_get_address_p7_566")
  %"$schnorr_get_address_570" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_568", align 1
  store [20 x i8] %"$schnorr_get_address_570", [20 x i8]* %a7_gen, align 1
  %"$gasrem_571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_572" = icmp ugt i64 1, %"$gasrem_571"
  br i1 %"$gascmp_572", label %"$out_of_gas_573", label %"$have_gas_574"

"$out_of_gas_573":                                ; preds = %"$have_gas_563"
  call void @_out_of_gas()
  br label %"$have_gas_574"

"$have_gas_574":                                  ; preds = %"$out_of_gas_573", %"$have_gas_563"
  %"$consume_575" = sub i64 %"$gasrem_571", 1
  store i64 %"$consume_575", i64* @_gasrem, align 8
  %r7 = alloca %TName_Bool*, align 8
  %"$execptr_load_576" = load i8*, i8** @_execptr, align 8
  %"$eq_a7_577" = alloca [20 x i8], align 1
  %"$a7_578" = load [20 x i8], [20 x i8]* %a7, align 1
  store [20 x i8] %"$a7_578", [20 x i8]* %"$eq_a7_577", align 1
  %"$$eq_a7_577_579" = bitcast [20 x i8]* %"$eq_a7_577" to i8*
  %"$eq_a7_gen_580" = alloca [20 x i8], align 1
  %"$a7_gen_581" = load [20 x i8], [20 x i8]* %a7_gen, align 1
  store [20 x i8] %"$a7_gen_581", [20 x i8]* %"$eq_a7_gen_580", align 1
  %"$$eq_a7_gen_580_582" = bitcast [20 x i8]* %"$eq_a7_gen_580" to i8*
  %"$eq_call_583" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_576", i32 20, i8* %"$$eq_a7_577_579", i8* %"$$eq_a7_gen_580_582")
  store %TName_Bool* %"$eq_call_583", %TName_Bool** %r7, align 8
  %"$gasrem_585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_586" = icmp ugt i64 1, %"$gasrem_585"
  br i1 %"$gascmp_586", label %"$out_of_gas_587", label %"$have_gas_588"

"$out_of_gas_587":                                ; preds = %"$have_gas_574"
  call void @_out_of_gas()
  br label %"$have_gas_588"

"$have_gas_588":                                  ; preds = %"$out_of_gas_587", %"$have_gas_574"
  %"$consume_589" = sub i64 %"$gasrem_585", 1
  store i64 %"$consume_589", i64* @_gasrem, align 8
  %p8 = alloca [33 x i8], align 1
  %"$gasrem_590" = load i64, i64* @_gasrem, align 8
  %"$gascmp_591" = icmp ugt i64 1, %"$gasrem_590"
  br i1 %"$gascmp_591", label %"$out_of_gas_592", label %"$have_gas_593"

"$out_of_gas_592":                                ; preds = %"$have_gas_588"
  call void @_out_of_gas()
  br label %"$have_gas_593"

"$have_gas_593":                                  ; preds = %"$out_of_gas_592", %"$have_gas_588"
  %"$consume_594" = sub i64 %"$gasrem_590", 1
  store i64 %"$consume_594", i64* @_gasrem, align 8
  store [33 x i8] c"\03j\94\E9%\BB \0D\CEA\A4l\90&\E0#\B2&\DD[L\B2'\CEvm`\CC\8F\AB!\81H", [33 x i8]* %p8, align 1
  %"$gasrem_595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_596" = icmp ugt i64 1, %"$gasrem_595"
  br i1 %"$gascmp_596", label %"$out_of_gas_597", label %"$have_gas_598"

"$out_of_gas_597":                                ; preds = %"$have_gas_593"
  call void @_out_of_gas()
  br label %"$have_gas_598"

"$have_gas_598":                                  ; preds = %"$out_of_gas_597", %"$have_gas_593"
  %"$consume_599" = sub i64 %"$gasrem_595", 1
  store i64 %"$consume_599", i64* @_gasrem, align 8
  %a8 = alloca [20 x i8], align 1
  %"$gasrem_600" = load i64, i64* @_gasrem, align 8
  %"$gascmp_601" = icmp ugt i64 1, %"$gasrem_600"
  br i1 %"$gascmp_601", label %"$out_of_gas_602", label %"$have_gas_603"

"$out_of_gas_602":                                ; preds = %"$have_gas_598"
  call void @_out_of_gas()
  br label %"$have_gas_603"

"$have_gas_603":                                  ; preds = %"$out_of_gas_602", %"$have_gas_598"
  %"$consume_604" = sub i64 %"$gasrem_600", 1
  store i64 %"$consume_604", i64* @_gasrem, align 8
  store [20 x i8] c"\D2E:\E7l\9A\86\AA\E5D\FC\A6\99\DB\DC\\Wj\EF:", [20 x i8]* %a8, align 1
  %"$gasrem_605" = load i64, i64* @_gasrem, align 8
  %"$gascmp_606" = icmp ugt i64 1, %"$gasrem_605"
  br i1 %"$gascmp_606", label %"$out_of_gas_607", label %"$have_gas_608"

"$out_of_gas_607":                                ; preds = %"$have_gas_603"
  call void @_out_of_gas()
  br label %"$have_gas_608"

"$have_gas_608":                                  ; preds = %"$out_of_gas_607", %"$have_gas_603"
  %"$consume_609" = sub i64 %"$gasrem_605", 1
  store i64 %"$consume_609", i64* @_gasrem, align 8
  %a8_gen = alloca [20 x i8], align 1
  %"$execptr_load_610" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p8_611" = alloca [33 x i8], align 1
  %"$p8_612" = load [33 x i8], [33 x i8]* %p8, align 1
  store [33 x i8] %"$p8_612", [33 x i8]* %"$schnorr_get_address_p8_611", align 1
  %"$schnorr_get_address_call_613" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_610", [33 x i8]* %"$schnorr_get_address_p8_611")
  %"$schnorr_get_address_615" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_613", align 1
  store [20 x i8] %"$schnorr_get_address_615", [20 x i8]* %a8_gen, align 1
  %"$gasrem_616" = load i64, i64* @_gasrem, align 8
  %"$gascmp_617" = icmp ugt i64 1, %"$gasrem_616"
  br i1 %"$gascmp_617", label %"$out_of_gas_618", label %"$have_gas_619"

"$out_of_gas_618":                                ; preds = %"$have_gas_608"
  call void @_out_of_gas()
  br label %"$have_gas_619"

"$have_gas_619":                                  ; preds = %"$out_of_gas_618", %"$have_gas_608"
  %"$consume_620" = sub i64 %"$gasrem_616", 1
  store i64 %"$consume_620", i64* @_gasrem, align 8
  %r8 = alloca %TName_Bool*, align 8
  %"$execptr_load_621" = load i8*, i8** @_execptr, align 8
  %"$eq_a8_622" = alloca [20 x i8], align 1
  %"$a8_623" = load [20 x i8], [20 x i8]* %a8, align 1
  store [20 x i8] %"$a8_623", [20 x i8]* %"$eq_a8_622", align 1
  %"$$eq_a8_622_624" = bitcast [20 x i8]* %"$eq_a8_622" to i8*
  %"$eq_a8_gen_625" = alloca [20 x i8], align 1
  %"$a8_gen_626" = load [20 x i8], [20 x i8]* %a8_gen, align 1
  store [20 x i8] %"$a8_gen_626", [20 x i8]* %"$eq_a8_gen_625", align 1
  %"$$eq_a8_gen_625_627" = bitcast [20 x i8]* %"$eq_a8_gen_625" to i8*
  %"$eq_call_628" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_621", i32 20, i8* %"$$eq_a8_622_624", i8* %"$$eq_a8_gen_625_627")
  store %TName_Bool* %"$eq_call_628", %TName_Bool** %r8, align 8
  %"$gasrem_630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_631" = icmp ugt i64 1, %"$gasrem_630"
  br i1 %"$gascmp_631", label %"$out_of_gas_632", label %"$have_gas_633"

"$out_of_gas_632":                                ; preds = %"$have_gas_619"
  call void @_out_of_gas()
  br label %"$have_gas_633"

"$have_gas_633":                                  ; preds = %"$out_of_gas_632", %"$have_gas_619"
  %"$consume_634" = sub i64 %"$gasrem_630", 1
  store i64 %"$consume_634", i64* @_gasrem, align 8
  %"$gasrem_635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_636" = icmp ugt i64 1, %"$gasrem_635"
  br i1 %"$gascmp_636", label %"$out_of_gas_637", label %"$have_gas_638"

"$out_of_gas_637":                                ; preds = %"$have_gas_633"
  call void @_out_of_gas()
  br label %"$have_gas_638"

"$have_gas_638":                                  ; preds = %"$out_of_gas_637", %"$have_gas_633"
  %"$consume_639" = sub i64 %"$gasrem_635", 1
  store i64 %"$consume_639", i64* @_gasrem, align 8
  %"$gasrem_640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_641" = icmp ugt i64 1, %"$gasrem_640"
  br i1 %"$gascmp_641", label %"$out_of_gas_642", label %"$have_gas_643"

"$out_of_gas_642":                                ; preds = %"$have_gas_638"
  call void @_out_of_gas()
  br label %"$have_gas_643"

"$have_gas_643":                                  ; preds = %"$out_of_gas_642", %"$have_gas_638"
  %"$consume_644" = sub i64 %"$gasrem_640", 1
  store i64 %"$consume_644", i64* @_gasrem, align 8
  %"$gasrem_645" = load i64, i64* @_gasrem, align 8
  %"$gascmp_646" = icmp ugt i64 1, %"$gasrem_645"
  br i1 %"$gascmp_646", label %"$out_of_gas_647", label %"$have_gas_648"

"$out_of_gas_647":                                ; preds = %"$have_gas_643"
  call void @_out_of_gas()
  br label %"$have_gas_648"

"$have_gas_648":                                  ; preds = %"$out_of_gas_647", %"$have_gas_643"
  %"$consume_649" = sub i64 %"$gasrem_645", 1
  store i64 %"$consume_649", i64* @_gasrem, align 8
  %"$gasrem_650" = load i64, i64* @_gasrem, align 8
  %"$gascmp_651" = icmp ugt i64 1, %"$gasrem_650"
  br i1 %"$gascmp_651", label %"$out_of_gas_652", label %"$have_gas_653"

"$out_of_gas_652":                                ; preds = %"$have_gas_648"
  call void @_out_of_gas()
  br label %"$have_gas_653"

"$have_gas_653":                                  ; preds = %"$out_of_gas_652", %"$have_gas_648"
  %"$consume_654" = sub i64 %"$gasrem_650", 1
  store i64 %"$consume_654", i64* @_gasrem, align 8
  %res1 = alloca %TName_Bool*, align 8
  %"$gasrem_655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_656" = icmp ugt i64 1, %"$gasrem_655"
  br i1 %"$gascmp_656", label %"$out_of_gas_657", label %"$have_gas_658"

"$out_of_gas_657":                                ; preds = %"$have_gas_653"
  call void @_out_of_gas()
  br label %"$have_gas_658"

"$have_gas_658":                                  ; preds = %"$out_of_gas_657", %"$have_gas_653"
  %"$consume_659" = sub i64 %"$gasrem_655", 1
  store i64 %"$consume_659", i64* @_gasrem, align 8
  %"$BoolUtils.and_4_6" = alloca { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.and_4_660" = load { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4, align 8
  %"$BoolUtils.and_4_fptr_661" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_660", 0
  %"$BoolUtils.and_4_envptr_662" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_660", 1
  %"$r1_663" = load %TName_Bool*, %TName_Bool** %r1, align 8
  %"$BoolUtils.and_4_call_664" = call { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_fptr_661"(i8* %"$BoolUtils.and_4_envptr_662", %TName_Bool* %"$r1_663")
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_call_664", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_6", align 8
  %"$BoolUtils.and_4_7" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_6_665" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_6", align 8
  %"$$BoolUtils.and_4_6_fptr_666" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_665", 0
  %"$$BoolUtils.and_4_6_envptr_667" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_665", 1
  %"$r2_668" = load %TName_Bool*, %TName_Bool** %r2, align 8
  %"$$BoolUtils.and_4_6_call_669" = call { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_fptr_666"(i8* %"$$BoolUtils.and_4_6_envptr_667", %TName_Bool* %"$r2_668")
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_call_669", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_7", align 8
  %"$BoolUtils.and_4_8" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_7_670" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_7", align 8
  %"$$BoolUtils.and_4_7_fptr_671" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_670", 0
  %"$$BoolUtils.and_4_7_envptr_672" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_670", 1
  %"$r3_673" = load %TName_Bool*, %TName_Bool** %r3, align 8
  %"$$BoolUtils.and_4_7_call_674" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_fptr_671"(i8* %"$$BoolUtils.and_4_7_envptr_672", %TName_Bool* %"$r3_673")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_call_674", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_8", align 8
  %"$BoolUtils.and_4_9" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.and_4_8_675" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_8", align 8
  %"$$BoolUtils.and_4_8_fptr_676" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_8_675", 0
  %"$$BoolUtils.and_4_8_envptr_677" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_8_675", 1
  %"$r4_678" = load %TName_Bool*, %TName_Bool** %r4, align 8
  %"$$BoolUtils.and_4_8_call_679" = call %TName_Bool* %"$$BoolUtils.and_4_8_fptr_676"(i8* %"$$BoolUtils.and_4_8_envptr_677", %TName_Bool* %"$r4_678")
  store %TName_Bool* %"$$BoolUtils.and_4_8_call_679", %TName_Bool** %"$BoolUtils.and_4_9", align 8
  %"$$BoolUtils.and_4_9_680" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.and_4_9", align 8
  store %TName_Bool* %"$$BoolUtils.and_4_9_680", %TName_Bool** %res1, align 8
  %"$gasrem_681" = load i64, i64* @_gasrem, align 8
  %"$gascmp_682" = icmp ugt i64 1, %"$gasrem_681"
  br i1 %"$gascmp_682", label %"$out_of_gas_683", label %"$have_gas_684"

"$out_of_gas_683":                                ; preds = %"$have_gas_658"
  call void @_out_of_gas()
  br label %"$have_gas_684"

"$have_gas_684":                                  ; preds = %"$out_of_gas_683", %"$have_gas_658"
  %"$consume_685" = sub i64 %"$gasrem_681", 1
  store i64 %"$consume_685", i64* @_gasrem, align 8
  %res2 = alloca %TName_Bool*, align 8
  %"$gasrem_686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_687" = icmp ugt i64 1, %"$gasrem_686"
  br i1 %"$gascmp_687", label %"$out_of_gas_688", label %"$have_gas_689"

"$out_of_gas_688":                                ; preds = %"$have_gas_684"
  call void @_out_of_gas()
  br label %"$have_gas_689"

"$have_gas_689":                                  ; preds = %"$out_of_gas_688", %"$have_gas_684"
  %"$consume_690" = sub i64 %"$gasrem_686", 1
  store i64 %"$consume_690", i64* @_gasrem, align 8
  %"$BoolUtils.and_4_10" = alloca { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.and_4_691" = load { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4, align 8
  %"$BoolUtils.and_4_fptr_692" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_691", 0
  %"$BoolUtils.and_4_envptr_693" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_691", 1
  %"$r5_694" = load %TName_Bool*, %TName_Bool** %r5, align 8
  %"$BoolUtils.and_4_call_695" = call { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_fptr_692"(i8* %"$BoolUtils.and_4_envptr_693", %TName_Bool* %"$r5_694")
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_call_695", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_10", align 8
  %"$BoolUtils.and_4_11" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_10_696" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_10", align 8
  %"$$BoolUtils.and_4_10_fptr_697" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_696", 0
  %"$$BoolUtils.and_4_10_envptr_698" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_696", 1
  %"$r6_699" = load %TName_Bool*, %TName_Bool** %r6, align 8
  %"$$BoolUtils.and_4_10_call_700" = call { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_fptr_697"(i8* %"$$BoolUtils.and_4_10_envptr_698", %TName_Bool* %"$r6_699")
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_call_700", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_11", align 8
  %"$BoolUtils.and_4_12" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_11_701" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_11", align 8
  %"$$BoolUtils.and_4_11_fptr_702" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_701", 0
  %"$$BoolUtils.and_4_11_envptr_703" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_701", 1
  %"$r7_704" = load %TName_Bool*, %TName_Bool** %r7, align 8
  %"$$BoolUtils.and_4_11_call_705" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_fptr_702"(i8* %"$$BoolUtils.and_4_11_envptr_703", %TName_Bool* %"$r7_704")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_call_705", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_12", align 8
  %"$BoolUtils.and_4_13" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.and_4_12_706" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_12", align 8
  %"$$BoolUtils.and_4_12_fptr_707" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_12_706", 0
  %"$$BoolUtils.and_4_12_envptr_708" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_12_706", 1
  %"$r8_709" = load %TName_Bool*, %TName_Bool** %r8, align 8
  %"$$BoolUtils.and_4_12_call_710" = call %TName_Bool* %"$$BoolUtils.and_4_12_fptr_707"(i8* %"$$BoolUtils.and_4_12_envptr_708", %TName_Bool* %"$r8_709")
  store %TName_Bool* %"$$BoolUtils.and_4_12_call_710", %TName_Bool** %"$BoolUtils.and_4_13", align 8
  %"$$BoolUtils.and_4_13_711" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.and_4_13", align 8
  store %TName_Bool* %"$$BoolUtils.and_4_13_711", %TName_Bool** %res2, align 8
  %"$gasrem_712" = load i64, i64* @_gasrem, align 8
  %"$gascmp_713" = icmp ugt i64 1, %"$gasrem_712"
  br i1 %"$gascmp_713", label %"$out_of_gas_714", label %"$have_gas_715"

"$out_of_gas_714":                                ; preds = %"$have_gas_689"
  call void @_out_of_gas()
  br label %"$have_gas_715"

"$have_gas_715":                                  ; preds = %"$out_of_gas_714", %"$have_gas_689"
  %"$consume_716" = sub i64 %"$gasrem_712", 1
  store i64 %"$consume_716", i64* @_gasrem, align 8
  %"$BoolUtils.andb_14" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_717" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_718" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_717", 0
  %"$BoolUtils.andb_envptr_719" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_717", 1
  %"$res1_720" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$BoolUtils.andb_call_721" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_718"(i8* %"$BoolUtils.andb_envptr_719", %TName_Bool* %"$res1_720")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_721", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_14", align 8
  %"$BoolUtils.andb_15" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_14_722" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_14", align 8
  %"$$BoolUtils.andb_14_fptr_723" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_14_722", 0
  %"$$BoolUtils.andb_14_envptr_724" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_14_722", 1
  %"$res2_725" = load %TName_Bool*, %TName_Bool** %res2, align 8
  %"$$BoolUtils.andb_14_call_726" = call %TName_Bool* %"$$BoolUtils.andb_14_fptr_723"(i8* %"$$BoolUtils.andb_14_envptr_724", %TName_Bool* %"$res2_725")
  store %TName_Bool* %"$$BoolUtils.andb_14_call_726", %TName_Bool** %"$BoolUtils.andb_15", align 8
  %"$$BoolUtils.andb_15_727" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_15", align 8
  store %TName_Bool* %"$$BoolUtils.andb_15_727", %TName_Bool** %"$expr_28", align 8
  %"$$expr_28_728" = load %TName_Bool*, %TName_Bool** %"$expr_28", align 8
  ret %TName_Bool* %"$$expr_28_728"
}

declare [20 x i8]* @_schnorr_get_address(i8*, [33 x i8]*)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_729" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_730" = bitcast %TName_Bool* %"$exprval_729" to i8*
  %"$execptr_load_731" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_731", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_65", i8* %"$memvoidcast_730")
  ret void
}
