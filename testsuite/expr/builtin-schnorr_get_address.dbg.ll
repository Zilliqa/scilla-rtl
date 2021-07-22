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
%"$ParamDescr_884" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_885" = type { %ParamDescrString, i32, %"$ParamDescr_884"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_884"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_885"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_22"(%"$$fundef_22_env_81"* %0, %TName_Bool* %1) !dbg !4 {
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
  %"$BoolUtils.andb_call_207" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_204"(i8* %"$BoolUtils.andb_envptr_205", %TName_Bool* %"$a_206"), !dbg !9
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_207", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_0", align 8, !dbg !9
  %"$BoolUtils.andb_1" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_0_208" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_0", align 8
  %"$$BoolUtils.andb_0_fptr_209" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_0_208", 0
  %"$$BoolUtils.andb_0_envptr_210" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_0_208", 1
  %"$b_211" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$$BoolUtils.andb_0_call_212" = call %TName_Bool* %"$$BoolUtils.andb_0_fptr_209"(i8* %"$$BoolUtils.andb_0_envptr_210", %TName_Bool* %"$b_211"), !dbg !9
  store %TName_Bool* %"$$BoolUtils.andb_0_call_212", %TName_Bool** %"$BoolUtils.andb_1", align 8, !dbg !9
  %"$$BoolUtils.andb_1_213" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_1", align 8
  store %TName_Bool* %"$$BoolUtils.andb_1_213", %TName_Bool** %t1, align 8, !dbg !9
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
  %"$BoolUtils.andb_call_228" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_225"(i8* %"$BoolUtils.andb_envptr_226", %TName_Bool* %"$t1_227"), !dbg !10
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_228", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_2", align 8, !dbg !10
  %"$BoolUtils.andb_3" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_2_229" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_2", align 8
  %"$$BoolUtils.andb_2_fptr_230" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_2_229", 0
  %"$$BoolUtils.andb_2_envptr_231" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_2_229", 1
  %"$c_232" = load %TName_Bool*, %TName_Bool** %c, align 8
  %"$$BoolUtils.andb_2_call_233" = call %TName_Bool* %"$$BoolUtils.andb_2_fptr_230"(i8* %"$$BoolUtils.andb_2_envptr_231", %TName_Bool* %"$c_232"), !dbg !10
  store %TName_Bool* %"$$BoolUtils.andb_2_call_233", %TName_Bool** %"$BoolUtils.andb_3", align 8, !dbg !10
  %"$$BoolUtils.andb_3_234" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_3", align 8
  store %TName_Bool* %"$$BoolUtils.andb_3_234", %TName_Bool** %t2, align 8, !dbg !10
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
  %"$BoolUtils.andb_call_244" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_241"(i8* %"$BoolUtils.andb_envptr_242", %TName_Bool* %"$t2_243"), !dbg !11
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_244", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_4", align 8, !dbg !11
  %"$BoolUtils.andb_5" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_4_245" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_4", align 8
  %"$$BoolUtils.andb_4_fptr_246" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_4_245", 0
  %"$$BoolUtils.andb_4_envptr_247" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_4_245", 1
  %"$$BoolUtils.andb_4_call_248" = call %TName_Bool* %"$$BoolUtils.andb_4_fptr_246"(i8* %"$$BoolUtils.andb_4_envptr_247", %TName_Bool* %1), !dbg !11
  store %TName_Bool* %"$$BoolUtils.andb_4_call_248", %TName_Bool** %"$BoolUtils.andb_5", align 8, !dbg !11
  %"$$BoolUtils.andb_5_249" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_5", align 8
  store %TName_Bool* %"$$BoolUtils.andb_5_249", %TName_Bool** %"$retval_23", align 8, !dbg !11
  %"$$retval_23_250" = load %TName_Bool*, %TName_Bool** %"$retval_23", align 8
  ret %TName_Bool* %"$$retval_23_250"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_20"(%"$$fundef_20_env_82"* %0, %TName_Bool* %1) !dbg !12 {
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
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_22_cloval_176", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_21", align 8, !dbg !13
  %"$$retval_21_184" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_21", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_21_184"
}

define internal { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } @"$fundef_18"(%"$$fundef_18_env_83"* %0, %TName_Bool* %1) !dbg !14 {
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
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$fundef_20_cloval_155", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_19", align 8, !dbg !15
  %"$$retval_19_161" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_19", align 8
  ret { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$retval_19_161"
}

define internal { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } @"$fundef_16"(%"$$fundef_16_env_84"* %0, %TName_Bool* %1) !dbg !16 {
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
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$fundef_18_cloval_138", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_17", align 8, !dbg !17
  %"$$retval_17_142" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_17", align 8
  ret { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$retval_17_142"
}

define internal %TName_Bool* @"$fundef_26"(%"$$fundef_26_env_85"* %0, %TName_Bool* %1) !dbg !18 {
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
  ], !dbg !19

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
  store %TName_Bool* %"$adtptr_119", %TName_Bool** %"$retval_27", align 8, !dbg !20
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
  store %TName_Bool* %1, %TName_Bool** %"$retval_27", align 8, !dbg !23
  br label %"$matchsucc_105"

"$empty_default_109":                             ; preds = %"$have_gas_103"
  br label %"$matchsucc_105"

"$matchsucc_105":                                 ; preds = %"$have_gas_125", %"$have_gas_115", %"$empty_default_109"
  %"$$retval_27_127" = load %TName_Bool*, %TName_Bool** %"$retval_27", align 8
  ret %TName_Bool* %"$$retval_27_127"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_24"(%"$$fundef_24_env_86"* %0, %TName_Bool* %1) !dbg !25 {
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
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_26_cloval_95", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_25", align 8, !dbg !26
  %"$$retval_25_97" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_25", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_25_97"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !27 {
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
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_24_env_86"*, %TName_Bool*)* @"$fundef_24" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !29
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
  store { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$fundef_16_cloval_267", { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4, align 8, !dbg !30
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !31 {
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
  store [33 x i8] c"\03\14s\81c\B9\BBg\AD\11\AAFO\E6\9A\11G\DF&>\89p\D7\DC\FD\8F\99=\DD9\E8\1B\D9", [33 x i8]* %p1, align 1, !dbg !32
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
  store [20 x i8] c"K\AF_\AD\A8\E5\DB\92\C3\D3$&\18\C5\B4q3\AE\00<", [20 x i8]* %a1, align 1, !dbg !33
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
  %"$gasdivceil_299" = urem i64 %"$_literal_cost_call_298", 960
  %"$gasdivceil_300" = udiv i64 %"$_literal_cost_call_298", 960
  %"$gasdivceil_301" = icmp eq i64 %"$gasdivceil_299", 0
  %"$gasdivceil_302" = add i64 %"$gasdivceil_300", 1
  %"$gasdivceil_303" = select i1 %"$gasdivceil_301", i64 %"$gasdivceil_300", i64 %"$gasdivceil_302"
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 %"$gasdivceil_303", %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_293"
  %"$consume_308" = sub i64 %"$gasrem_304", %"$gasdivceil_303"
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %"$execptr_load_309" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p1_310" = alloca [33 x i8], align 1
  %"$p1_311" = load [33 x i8], [33 x i8]* %p1, align 1
  store [33 x i8] %"$p1_311", [33 x i8]* %"$schnorr_get_address_p1_310", align 1
  %"$schnorr_get_address_call_312" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_309", [33 x i8]* %"$schnorr_get_address_p1_310"), !dbg !34
  %"$schnorr_get_address_314" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_312", align 1
  store [20 x i8] %"$schnorr_get_address_314", [20 x i8]* %a1_gen, align 1, !dbg !34
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 1, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$have_gas_307"
  %"$consume_319" = sub i64 %"$gasrem_315", 1
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %r1 = alloca %TName_Bool*, align 8
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 20, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_318"
  %"$consume_324" = sub i64 %"$gasrem_320", 20
  store i64 %"$consume_324", i64* @_gasrem, align 8
  %"$execptr_load_325" = load i8*, i8** @_execptr, align 8
  %"$eq_a1_326" = alloca [20 x i8], align 1
  %"$a1_327" = load [20 x i8], [20 x i8]* %a1, align 1
  store [20 x i8] %"$a1_327", [20 x i8]* %"$eq_a1_326", align 1
  %"$$eq_a1_326_328" = bitcast [20 x i8]* %"$eq_a1_326" to i8*
  %"$eq_a1_gen_329" = alloca [20 x i8], align 1
  %"$a1_gen_330" = load [20 x i8], [20 x i8]* %a1_gen, align 1
  store [20 x i8] %"$a1_gen_330", [20 x i8]* %"$eq_a1_gen_329", align 1
  %"$$eq_a1_gen_329_331" = bitcast [20 x i8]* %"$eq_a1_gen_329" to i8*
  %"$eq_call_332" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_325", i32 20, i8* %"$$eq_a1_326_328", i8* %"$$eq_a1_gen_329_331"), !dbg !35
  store %TName_Bool* %"$eq_call_332", %TName_Bool** %r1, align 8, !dbg !35
  %"$gasrem_334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_335" = icmp ugt i64 1, %"$gasrem_334"
  br i1 %"$gascmp_335", label %"$out_of_gas_336", label %"$have_gas_337"

"$out_of_gas_336":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_337"

"$have_gas_337":                                  ; preds = %"$out_of_gas_336", %"$have_gas_323"
  %"$consume_338" = sub i64 %"$gasrem_334", 1
  store i64 %"$consume_338", i64* @_gasrem, align 8
  %p2 = alloca [33 x i8], align 1
  %"$gasrem_339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_340" = icmp ugt i64 1, %"$gasrem_339"
  br i1 %"$gascmp_340", label %"$out_of_gas_341", label %"$have_gas_342"

"$out_of_gas_341":                                ; preds = %"$have_gas_337"
  call void @_out_of_gas()
  br label %"$have_gas_342"

"$have_gas_342":                                  ; preds = %"$out_of_gas_341", %"$have_gas_337"
  %"$consume_343" = sub i64 %"$gasrem_339", 1
  store i64 %"$consume_343", i64* @_gasrem, align 8
  store [33 x i8] c"\03L\E2h\ACZ4\008\D8\AC\EB\BD\D766\11\A5\B1\19y\16w^2H\1F]k\10O\AFe", [33 x i8]* %p2, align 1, !dbg !36
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 1, %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %"$have_gas_342"
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %"$have_gas_342"
  %"$consume_348" = sub i64 %"$gasrem_344", 1
  store i64 %"$consume_348", i64* @_gasrem, align 8
  %a2 = alloca [20 x i8], align 1
  %"$gasrem_349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_350" = icmp ugt i64 1, %"$gasrem_349"
  br i1 %"$gascmp_350", label %"$out_of_gas_351", label %"$have_gas_352"

"$out_of_gas_351":                                ; preds = %"$have_gas_347"
  call void @_out_of_gas()
  br label %"$have_gas_352"

"$have_gas_352":                                  ; preds = %"$out_of_gas_351", %"$have_gas_347"
  %"$consume_353" = sub i64 %"$gasrem_349", 1
  store i64 %"$consume_353", i64* @_gasrem, align 8
  store [20 x i8] c"D\82a\91Z\80\CD\E9\BD\E7\C7\A7\91hR\00\D3\A0\BFN", [20 x i8]* %a2, align 1, !dbg !37
  %"$gasrem_354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_355" = icmp ugt i64 1, %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %"$have_gas_352"
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %"$have_gas_352"
  %"$consume_358" = sub i64 %"$gasrem_354", 1
  store i64 %"$consume_358", i64* @_gasrem, align 8
  %a2_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p2_359" = alloca [33 x i8], align 1
  %"$p2_360" = load [33 x i8], [33 x i8]* %p2, align 1
  store [33 x i8] %"$p2_360", [33 x i8]* %"$_literal_cost_p2_359", align 1
  %"$$_literal_cost_p2_359_361" = bitcast [33 x i8]* %"$_literal_cost_p2_359" to i8*
  %"$_literal_cost_call_362" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_61", i8* %"$$_literal_cost_p2_359_361")
  %"$gasdivceil_363" = urem i64 %"$_literal_cost_call_362", 960
  %"$gasdivceil_364" = udiv i64 %"$_literal_cost_call_362", 960
  %"$gasdivceil_365" = icmp eq i64 %"$gasdivceil_363", 0
  %"$gasdivceil_366" = add i64 %"$gasdivceil_364", 1
  %"$gasdivceil_367" = select i1 %"$gasdivceil_365", i64 %"$gasdivceil_364", i64 %"$gasdivceil_366"
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 %"$gasdivceil_367", %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$have_gas_357"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$have_gas_357"
  %"$consume_372" = sub i64 %"$gasrem_368", %"$gasdivceil_367"
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %"$execptr_load_373" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p2_374" = alloca [33 x i8], align 1
  %"$p2_375" = load [33 x i8], [33 x i8]* %p2, align 1
  store [33 x i8] %"$p2_375", [33 x i8]* %"$schnorr_get_address_p2_374", align 1
  %"$schnorr_get_address_call_376" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_373", [33 x i8]* %"$schnorr_get_address_p2_374"), !dbg !38
  %"$schnorr_get_address_378" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_376", align 1
  store [20 x i8] %"$schnorr_get_address_378", [20 x i8]* %a2_gen, align 1, !dbg !38
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_371"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %r2 = alloca %TName_Bool*, align 8
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 20, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_382"
  %"$consume_388" = sub i64 %"$gasrem_384", 20
  store i64 %"$consume_388", i64* @_gasrem, align 8
  %"$execptr_load_389" = load i8*, i8** @_execptr, align 8
  %"$eq_a2_390" = alloca [20 x i8], align 1
  %"$a2_391" = load [20 x i8], [20 x i8]* %a2, align 1
  store [20 x i8] %"$a2_391", [20 x i8]* %"$eq_a2_390", align 1
  %"$$eq_a2_390_392" = bitcast [20 x i8]* %"$eq_a2_390" to i8*
  %"$eq_a2_gen_393" = alloca [20 x i8], align 1
  %"$a2_gen_394" = load [20 x i8], [20 x i8]* %a2_gen, align 1
  store [20 x i8] %"$a2_gen_394", [20 x i8]* %"$eq_a2_gen_393", align 1
  %"$$eq_a2_gen_393_395" = bitcast [20 x i8]* %"$eq_a2_gen_393" to i8*
  %"$eq_call_396" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_389", i32 20, i8* %"$$eq_a2_390_392", i8* %"$$eq_a2_gen_393_395"), !dbg !39
  store %TName_Bool* %"$eq_call_396", %TName_Bool** %r2, align 8, !dbg !39
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 1, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_387"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_387"
  %"$consume_402" = sub i64 %"$gasrem_398", 1
  store i64 %"$consume_402", i64* @_gasrem, align 8
  %p3 = alloca [33 x i8], align 1
  %"$gasrem_403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_404" = icmp ugt i64 1, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$have_gas_401"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$have_gas_401"
  %"$consume_407" = sub i64 %"$gasrem_403", 1
  store i64 %"$consume_407", i64* @_gasrem, align 8
  store [33 x i8] c"\02\FAzP\1F2<\C5>\07\0C\0A\94Sp6\86y\E7W)`\EC$\D8\A08~\F3\B5\0A\22\85", [33 x i8]* %p3, align 1, !dbg !40
  %"$gasrem_408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_409" = icmp ugt i64 1, %"$gasrem_408"
  br i1 %"$gascmp_409", label %"$out_of_gas_410", label %"$have_gas_411"

"$out_of_gas_410":                                ; preds = %"$have_gas_406"
  call void @_out_of_gas()
  br label %"$have_gas_411"

"$have_gas_411":                                  ; preds = %"$out_of_gas_410", %"$have_gas_406"
  %"$consume_412" = sub i64 %"$gasrem_408", 1
  store i64 %"$consume_412", i64* @_gasrem, align 8
  %a3 = alloca [20 x i8], align 1
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_411"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_411"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  store [20 x i8] c"\DE\D0/\D9y\FC.U\C0$;\D2\F5-\F0\22\C4\0A\DA\1E", [20 x i8]* %a3, align 1, !dbg !41
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_416"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %a3_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p3_423" = alloca [33 x i8], align 1
  %"$p3_424" = load [33 x i8], [33 x i8]* %p3, align 1
  store [33 x i8] %"$p3_424", [33 x i8]* %"$_literal_cost_p3_423", align 1
  %"$$_literal_cost_p3_423_425" = bitcast [33 x i8]* %"$_literal_cost_p3_423" to i8*
  %"$_literal_cost_call_426" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_61", i8* %"$$_literal_cost_p3_423_425")
  %"$gasdivceil_427" = urem i64 %"$_literal_cost_call_426", 960
  %"$gasdivceil_428" = udiv i64 %"$_literal_cost_call_426", 960
  %"$gasdivceil_429" = icmp eq i64 %"$gasdivceil_427", 0
  %"$gasdivceil_430" = add i64 %"$gasdivceil_428", 1
  %"$gasdivceil_431" = select i1 %"$gasdivceil_429", i64 %"$gasdivceil_428", i64 %"$gasdivceil_430"
  %"$gasrem_432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_433" = icmp ugt i64 %"$gasdivceil_431", %"$gasrem_432"
  br i1 %"$gascmp_433", label %"$out_of_gas_434", label %"$have_gas_435"

"$out_of_gas_434":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_435"

"$have_gas_435":                                  ; preds = %"$out_of_gas_434", %"$have_gas_421"
  %"$consume_436" = sub i64 %"$gasrem_432", %"$gasdivceil_431"
  store i64 %"$consume_436", i64* @_gasrem, align 8
  %"$execptr_load_437" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p3_438" = alloca [33 x i8], align 1
  %"$p3_439" = load [33 x i8], [33 x i8]* %p3, align 1
  store [33 x i8] %"$p3_439", [33 x i8]* %"$schnorr_get_address_p3_438", align 1
  %"$schnorr_get_address_call_440" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_437", [33 x i8]* %"$schnorr_get_address_p3_438"), !dbg !42
  %"$schnorr_get_address_442" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_440", align 1
  store [20 x i8] %"$schnorr_get_address_442", [20 x i8]* %a3_gen, align 1, !dbg !42
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$have_gas_435"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$have_gas_435"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem, align 8
  %r3 = alloca %TName_Bool*, align 8
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 20, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_446"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_446"
  %"$consume_452" = sub i64 %"$gasrem_448", 20
  store i64 %"$consume_452", i64* @_gasrem, align 8
  %"$execptr_load_453" = load i8*, i8** @_execptr, align 8
  %"$eq_a3_454" = alloca [20 x i8], align 1
  %"$a3_455" = load [20 x i8], [20 x i8]* %a3, align 1
  store [20 x i8] %"$a3_455", [20 x i8]* %"$eq_a3_454", align 1
  %"$$eq_a3_454_456" = bitcast [20 x i8]* %"$eq_a3_454" to i8*
  %"$eq_a3_gen_457" = alloca [20 x i8], align 1
  %"$a3_gen_458" = load [20 x i8], [20 x i8]* %a3_gen, align 1
  store [20 x i8] %"$a3_gen_458", [20 x i8]* %"$eq_a3_gen_457", align 1
  %"$$eq_a3_gen_457_459" = bitcast [20 x i8]* %"$eq_a3_gen_457" to i8*
  %"$eq_call_460" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_453", i32 20, i8* %"$$eq_a3_454_456", i8* %"$$eq_a3_gen_457_459"), !dbg !43
  store %TName_Bool* %"$eq_call_460", %TName_Bool** %r3, align 8, !dbg !43
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 1, %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %"$have_gas_451"
  %"$consume_466" = sub i64 %"$gasrem_462", 1
  store i64 %"$consume_466", i64* @_gasrem, align 8
  %p4 = alloca [33 x i8], align 1
  %"$gasrem_467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_468" = icmp ugt i64 1, %"$gasrem_467"
  br i1 %"$gascmp_468", label %"$out_of_gas_469", label %"$have_gas_470"

"$out_of_gas_469":                                ; preds = %"$have_gas_465"
  call void @_out_of_gas()
  br label %"$have_gas_470"

"$have_gas_470":                                  ; preds = %"$out_of_gas_469", %"$have_gas_465"
  %"$consume_471" = sub i64 %"$gasrem_467", 1
  store i64 %"$consume_471", i64* @_gasrem, align 8
  store [33 x i8] c"\03o\86v\E4s\AF \B4\CC\E7\D3'\10=\E4PJ\9C\00\EA\E7\EA\03\D0\A3e\FBH\81z\C9\7F", [33 x i8]* %p4, align 1, !dbg !44
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$have_gas_470"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$have_gas_470"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem, align 8
  %a4 = alloca [20 x i8], align 1
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 1, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %"$have_gas_475"
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %"$have_gas_475"
  %"$consume_481" = sub i64 %"$gasrem_477", 1
  store i64 %"$consume_481", i64* @_gasrem, align 8
  store [20 x i8] c"\13\F0n`){\EAj<@/od\C4\16\A6\B3\1EXn", [20 x i8]* %a4, align 1, !dbg !45
  %"$gasrem_482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_483" = icmp ugt i64 1, %"$gasrem_482"
  br i1 %"$gascmp_483", label %"$out_of_gas_484", label %"$have_gas_485"

"$out_of_gas_484":                                ; preds = %"$have_gas_480"
  call void @_out_of_gas()
  br label %"$have_gas_485"

"$have_gas_485":                                  ; preds = %"$out_of_gas_484", %"$have_gas_480"
  %"$consume_486" = sub i64 %"$gasrem_482", 1
  store i64 %"$consume_486", i64* @_gasrem, align 8
  %a4_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p4_487" = alloca [33 x i8], align 1
  %"$p4_488" = load [33 x i8], [33 x i8]* %p4, align 1
  store [33 x i8] %"$p4_488", [33 x i8]* %"$_literal_cost_p4_487", align 1
  %"$$_literal_cost_p4_487_489" = bitcast [33 x i8]* %"$_literal_cost_p4_487" to i8*
  %"$_literal_cost_call_490" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_61", i8* %"$$_literal_cost_p4_487_489")
  %"$gasdivceil_491" = urem i64 %"$_literal_cost_call_490", 960
  %"$gasdivceil_492" = udiv i64 %"$_literal_cost_call_490", 960
  %"$gasdivceil_493" = icmp eq i64 %"$gasdivceil_491", 0
  %"$gasdivceil_494" = add i64 %"$gasdivceil_492", 1
  %"$gasdivceil_495" = select i1 %"$gasdivceil_493", i64 %"$gasdivceil_492", i64 %"$gasdivceil_494"
  %"$gasrem_496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_497" = icmp ugt i64 %"$gasdivceil_495", %"$gasrem_496"
  br i1 %"$gascmp_497", label %"$out_of_gas_498", label %"$have_gas_499"

"$out_of_gas_498":                                ; preds = %"$have_gas_485"
  call void @_out_of_gas()
  br label %"$have_gas_499"

"$have_gas_499":                                  ; preds = %"$out_of_gas_498", %"$have_gas_485"
  %"$consume_500" = sub i64 %"$gasrem_496", %"$gasdivceil_495"
  store i64 %"$consume_500", i64* @_gasrem, align 8
  %"$execptr_load_501" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p4_502" = alloca [33 x i8], align 1
  %"$p4_503" = load [33 x i8], [33 x i8]* %p4, align 1
  store [33 x i8] %"$p4_503", [33 x i8]* %"$schnorr_get_address_p4_502", align 1
  %"$schnorr_get_address_call_504" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_501", [33 x i8]* %"$schnorr_get_address_p4_502"), !dbg !46
  %"$schnorr_get_address_506" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_504", align 1
  store [20 x i8] %"$schnorr_get_address_506", [20 x i8]* %a4_gen, align 1, !dbg !46
  %"$gasrem_507" = load i64, i64* @_gasrem, align 8
  %"$gascmp_508" = icmp ugt i64 1, %"$gasrem_507"
  br i1 %"$gascmp_508", label %"$out_of_gas_509", label %"$have_gas_510"

"$out_of_gas_509":                                ; preds = %"$have_gas_499"
  call void @_out_of_gas()
  br label %"$have_gas_510"

"$have_gas_510":                                  ; preds = %"$out_of_gas_509", %"$have_gas_499"
  %"$consume_511" = sub i64 %"$gasrem_507", 1
  store i64 %"$consume_511", i64* @_gasrem, align 8
  %r4 = alloca %TName_Bool*, align 8
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 20, %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %"$have_gas_510"
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %"$have_gas_510"
  %"$consume_516" = sub i64 %"$gasrem_512", 20
  store i64 %"$consume_516", i64* @_gasrem, align 8
  %"$execptr_load_517" = load i8*, i8** @_execptr, align 8
  %"$eq_a4_518" = alloca [20 x i8], align 1
  %"$a4_519" = load [20 x i8], [20 x i8]* %a4, align 1
  store [20 x i8] %"$a4_519", [20 x i8]* %"$eq_a4_518", align 1
  %"$$eq_a4_518_520" = bitcast [20 x i8]* %"$eq_a4_518" to i8*
  %"$eq_a4_gen_521" = alloca [20 x i8], align 1
  %"$a4_gen_522" = load [20 x i8], [20 x i8]* %a4_gen, align 1
  store [20 x i8] %"$a4_gen_522", [20 x i8]* %"$eq_a4_gen_521", align 1
  %"$$eq_a4_gen_521_523" = bitcast [20 x i8]* %"$eq_a4_gen_521" to i8*
  %"$eq_call_524" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_517", i32 20, i8* %"$$eq_a4_518_520", i8* %"$$eq_a4_gen_521_523"), !dbg !47
  store %TName_Bool* %"$eq_call_524", %TName_Bool** %r4, align 8, !dbg !47
  %"$gasrem_526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_527" = icmp ugt i64 1, %"$gasrem_526"
  br i1 %"$gascmp_527", label %"$out_of_gas_528", label %"$have_gas_529"

"$out_of_gas_528":                                ; preds = %"$have_gas_515"
  call void @_out_of_gas()
  br label %"$have_gas_529"

"$have_gas_529":                                  ; preds = %"$out_of_gas_528", %"$have_gas_515"
  %"$consume_530" = sub i64 %"$gasrem_526", 1
  store i64 %"$consume_530", i64* @_gasrem, align 8
  %p5 = alloca [33 x i8], align 1
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 1, %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$have_gas_529"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$have_gas_529"
  %"$consume_535" = sub i64 %"$gasrem_531", 1
  store i64 %"$consume_535", i64* @_gasrem, align 8
  store [33 x i8] c"\03L965)\C2\D4\07\8Fr\B8\C4\98\C4\CB\C5\BA^\10\D8fo\E0o\10J'\E0\E4BB\A0", [33 x i8]* %p5, align 1, !dbg !48
  %"$gasrem_536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_537" = icmp ugt i64 1, %"$gasrem_536"
  br i1 %"$gascmp_537", label %"$out_of_gas_538", label %"$have_gas_539"

"$out_of_gas_538":                                ; preds = %"$have_gas_534"
  call void @_out_of_gas()
  br label %"$have_gas_539"

"$have_gas_539":                                  ; preds = %"$out_of_gas_538", %"$have_gas_534"
  %"$consume_540" = sub i64 %"$gasrem_536", 1
  store i64 %"$consume_540", i64* @_gasrem, align 8
  %a5 = alloca [20 x i8], align 1
  %"$gasrem_541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_542" = icmp ugt i64 1, %"$gasrem_541"
  br i1 %"$gascmp_542", label %"$out_of_gas_543", label %"$have_gas_544"

"$out_of_gas_543":                                ; preds = %"$have_gas_539"
  call void @_out_of_gas()
  br label %"$have_gas_544"

"$have_gas_544":                                  ; preds = %"$out_of_gas_543", %"$have_gas_539"
  %"$consume_545" = sub i64 %"$gasrem_541", 1
  store i64 %"$consume_545", i64* @_gasrem, align 8
  store [20 x i8] c"\1A\90\C2S\07\C3\CCq\95\8A\83\FA!:#b\D8Y\CF3", [20 x i8]* %a5, align 1, !dbg !49
  %"$gasrem_546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_547" = icmp ugt i64 1, %"$gasrem_546"
  br i1 %"$gascmp_547", label %"$out_of_gas_548", label %"$have_gas_549"

"$out_of_gas_548":                                ; preds = %"$have_gas_544"
  call void @_out_of_gas()
  br label %"$have_gas_549"

"$have_gas_549":                                  ; preds = %"$out_of_gas_548", %"$have_gas_544"
  %"$consume_550" = sub i64 %"$gasrem_546", 1
  store i64 %"$consume_550", i64* @_gasrem, align 8
  %a5_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p5_551" = alloca [33 x i8], align 1
  %"$p5_552" = load [33 x i8], [33 x i8]* %p5, align 1
  store [33 x i8] %"$p5_552", [33 x i8]* %"$_literal_cost_p5_551", align 1
  %"$$_literal_cost_p5_551_553" = bitcast [33 x i8]* %"$_literal_cost_p5_551" to i8*
  %"$_literal_cost_call_554" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_61", i8* %"$$_literal_cost_p5_551_553")
  %"$gasdivceil_555" = urem i64 %"$_literal_cost_call_554", 960
  %"$gasdivceil_556" = udiv i64 %"$_literal_cost_call_554", 960
  %"$gasdivceil_557" = icmp eq i64 %"$gasdivceil_555", 0
  %"$gasdivceil_558" = add i64 %"$gasdivceil_556", 1
  %"$gasdivceil_559" = select i1 %"$gasdivceil_557", i64 %"$gasdivceil_556", i64 %"$gasdivceil_558"
  %"$gasrem_560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_561" = icmp ugt i64 %"$gasdivceil_559", %"$gasrem_560"
  br i1 %"$gascmp_561", label %"$out_of_gas_562", label %"$have_gas_563"

"$out_of_gas_562":                                ; preds = %"$have_gas_549"
  call void @_out_of_gas()
  br label %"$have_gas_563"

"$have_gas_563":                                  ; preds = %"$out_of_gas_562", %"$have_gas_549"
  %"$consume_564" = sub i64 %"$gasrem_560", %"$gasdivceil_559"
  store i64 %"$consume_564", i64* @_gasrem, align 8
  %"$execptr_load_565" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p5_566" = alloca [33 x i8], align 1
  %"$p5_567" = load [33 x i8], [33 x i8]* %p5, align 1
  store [33 x i8] %"$p5_567", [33 x i8]* %"$schnorr_get_address_p5_566", align 1
  %"$schnorr_get_address_call_568" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_565", [33 x i8]* %"$schnorr_get_address_p5_566"), !dbg !50
  %"$schnorr_get_address_570" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_568", align 1
  store [20 x i8] %"$schnorr_get_address_570", [20 x i8]* %a5_gen, align 1, !dbg !50
  %"$gasrem_571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_572" = icmp ugt i64 1, %"$gasrem_571"
  br i1 %"$gascmp_572", label %"$out_of_gas_573", label %"$have_gas_574"

"$out_of_gas_573":                                ; preds = %"$have_gas_563"
  call void @_out_of_gas()
  br label %"$have_gas_574"

"$have_gas_574":                                  ; preds = %"$out_of_gas_573", %"$have_gas_563"
  %"$consume_575" = sub i64 %"$gasrem_571", 1
  store i64 %"$consume_575", i64* @_gasrem, align 8
  %r5 = alloca %TName_Bool*, align 8
  %"$gasrem_576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_577" = icmp ugt i64 20, %"$gasrem_576"
  br i1 %"$gascmp_577", label %"$out_of_gas_578", label %"$have_gas_579"

"$out_of_gas_578":                                ; preds = %"$have_gas_574"
  call void @_out_of_gas()
  br label %"$have_gas_579"

"$have_gas_579":                                  ; preds = %"$out_of_gas_578", %"$have_gas_574"
  %"$consume_580" = sub i64 %"$gasrem_576", 20
  store i64 %"$consume_580", i64* @_gasrem, align 8
  %"$execptr_load_581" = load i8*, i8** @_execptr, align 8
  %"$eq_a5_582" = alloca [20 x i8], align 1
  %"$a5_583" = load [20 x i8], [20 x i8]* %a5, align 1
  store [20 x i8] %"$a5_583", [20 x i8]* %"$eq_a5_582", align 1
  %"$$eq_a5_582_584" = bitcast [20 x i8]* %"$eq_a5_582" to i8*
  %"$eq_a5_gen_585" = alloca [20 x i8], align 1
  %"$a5_gen_586" = load [20 x i8], [20 x i8]* %a5_gen, align 1
  store [20 x i8] %"$a5_gen_586", [20 x i8]* %"$eq_a5_gen_585", align 1
  %"$$eq_a5_gen_585_587" = bitcast [20 x i8]* %"$eq_a5_gen_585" to i8*
  %"$eq_call_588" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_581", i32 20, i8* %"$$eq_a5_582_584", i8* %"$$eq_a5_gen_585_587"), !dbg !51
  store %TName_Bool* %"$eq_call_588", %TName_Bool** %r5, align 8, !dbg !51
  %"$gasrem_590" = load i64, i64* @_gasrem, align 8
  %"$gascmp_591" = icmp ugt i64 1, %"$gasrem_590"
  br i1 %"$gascmp_591", label %"$out_of_gas_592", label %"$have_gas_593"

"$out_of_gas_592":                                ; preds = %"$have_gas_579"
  call void @_out_of_gas()
  br label %"$have_gas_593"

"$have_gas_593":                                  ; preds = %"$out_of_gas_592", %"$have_gas_579"
  %"$consume_594" = sub i64 %"$gasrem_590", 1
  store i64 %"$consume_594", i64* @_gasrem, align 8
  %p6 = alloca [33 x i8], align 1
  %"$gasrem_595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_596" = icmp ugt i64 1, %"$gasrem_595"
  br i1 %"$gascmp_596", label %"$out_of_gas_597", label %"$have_gas_598"

"$out_of_gas_597":                                ; preds = %"$have_gas_593"
  call void @_out_of_gas()
  br label %"$have_gas_598"

"$have_gas_598":                                  ; preds = %"$out_of_gas_597", %"$have_gas_593"
  %"$consume_599" = sub i64 %"$gasrem_595", 1
  store i64 %"$consume_599", i64* @_gasrem, align 8
  store [33 x i8] c"\02m\A5\BFl:<\91\C0\8A=\D7\FB\CE\0B\EA\F5\D46\03\9C\97\B0z\0Fa\AAK\94\93\E4g\87", [33 x i8]* %p6, align 1, !dbg !52
  %"$gasrem_600" = load i64, i64* @_gasrem, align 8
  %"$gascmp_601" = icmp ugt i64 1, %"$gasrem_600"
  br i1 %"$gascmp_601", label %"$out_of_gas_602", label %"$have_gas_603"

"$out_of_gas_602":                                ; preds = %"$have_gas_598"
  call void @_out_of_gas()
  br label %"$have_gas_603"

"$have_gas_603":                                  ; preds = %"$out_of_gas_602", %"$have_gas_598"
  %"$consume_604" = sub i64 %"$gasrem_600", 1
  store i64 %"$consume_604", i64* @_gasrem, align 8
  %a6 = alloca [20 x i8], align 1
  %"$gasrem_605" = load i64, i64* @_gasrem, align 8
  %"$gascmp_606" = icmp ugt i64 1, %"$gasrem_605"
  br i1 %"$gascmp_606", label %"$out_of_gas_607", label %"$have_gas_608"

"$out_of_gas_607":                                ; preds = %"$have_gas_603"
  call void @_out_of_gas()
  br label %"$have_gas_608"

"$have_gas_608":                                  ; preds = %"$out_of_gas_607", %"$have_gas_603"
  %"$consume_609" = sub i64 %"$gasrem_605", 1
  store i64 %"$consume_609", i64* @_gasrem, align 8
  store [20 x i8] c"bZ\BA\EB\D8}\AE\9A\B1(\F3\B3\AE\99h\88\13\D9\C5\DF", [20 x i8]* %a6, align 1, !dbg !53
  %"$gasrem_610" = load i64, i64* @_gasrem, align 8
  %"$gascmp_611" = icmp ugt i64 1, %"$gasrem_610"
  br i1 %"$gascmp_611", label %"$out_of_gas_612", label %"$have_gas_613"

"$out_of_gas_612":                                ; preds = %"$have_gas_608"
  call void @_out_of_gas()
  br label %"$have_gas_613"

"$have_gas_613":                                  ; preds = %"$out_of_gas_612", %"$have_gas_608"
  %"$consume_614" = sub i64 %"$gasrem_610", 1
  store i64 %"$consume_614", i64* @_gasrem, align 8
  %a6_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p6_615" = alloca [33 x i8], align 1
  %"$p6_616" = load [33 x i8], [33 x i8]* %p6, align 1
  store [33 x i8] %"$p6_616", [33 x i8]* %"$_literal_cost_p6_615", align 1
  %"$$_literal_cost_p6_615_617" = bitcast [33 x i8]* %"$_literal_cost_p6_615" to i8*
  %"$_literal_cost_call_618" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_61", i8* %"$$_literal_cost_p6_615_617")
  %"$gasdivceil_619" = urem i64 %"$_literal_cost_call_618", 960
  %"$gasdivceil_620" = udiv i64 %"$_literal_cost_call_618", 960
  %"$gasdivceil_621" = icmp eq i64 %"$gasdivceil_619", 0
  %"$gasdivceil_622" = add i64 %"$gasdivceil_620", 1
  %"$gasdivceil_623" = select i1 %"$gasdivceil_621", i64 %"$gasdivceil_620", i64 %"$gasdivceil_622"
  %"$gasrem_624" = load i64, i64* @_gasrem, align 8
  %"$gascmp_625" = icmp ugt i64 %"$gasdivceil_623", %"$gasrem_624"
  br i1 %"$gascmp_625", label %"$out_of_gas_626", label %"$have_gas_627"

"$out_of_gas_626":                                ; preds = %"$have_gas_613"
  call void @_out_of_gas()
  br label %"$have_gas_627"

"$have_gas_627":                                  ; preds = %"$out_of_gas_626", %"$have_gas_613"
  %"$consume_628" = sub i64 %"$gasrem_624", %"$gasdivceil_623"
  store i64 %"$consume_628", i64* @_gasrem, align 8
  %"$execptr_load_629" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p6_630" = alloca [33 x i8], align 1
  %"$p6_631" = load [33 x i8], [33 x i8]* %p6, align 1
  store [33 x i8] %"$p6_631", [33 x i8]* %"$schnorr_get_address_p6_630", align 1
  %"$schnorr_get_address_call_632" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_629", [33 x i8]* %"$schnorr_get_address_p6_630"), !dbg !54
  %"$schnorr_get_address_634" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_632", align 1
  store [20 x i8] %"$schnorr_get_address_634", [20 x i8]* %a6_gen, align 1, !dbg !54
  %"$gasrem_635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_636" = icmp ugt i64 1, %"$gasrem_635"
  br i1 %"$gascmp_636", label %"$out_of_gas_637", label %"$have_gas_638"

"$out_of_gas_637":                                ; preds = %"$have_gas_627"
  call void @_out_of_gas()
  br label %"$have_gas_638"

"$have_gas_638":                                  ; preds = %"$out_of_gas_637", %"$have_gas_627"
  %"$consume_639" = sub i64 %"$gasrem_635", 1
  store i64 %"$consume_639", i64* @_gasrem, align 8
  %r6 = alloca %TName_Bool*, align 8
  %"$gasrem_640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_641" = icmp ugt i64 20, %"$gasrem_640"
  br i1 %"$gascmp_641", label %"$out_of_gas_642", label %"$have_gas_643"

"$out_of_gas_642":                                ; preds = %"$have_gas_638"
  call void @_out_of_gas()
  br label %"$have_gas_643"

"$have_gas_643":                                  ; preds = %"$out_of_gas_642", %"$have_gas_638"
  %"$consume_644" = sub i64 %"$gasrem_640", 20
  store i64 %"$consume_644", i64* @_gasrem, align 8
  %"$execptr_load_645" = load i8*, i8** @_execptr, align 8
  %"$eq_a6_646" = alloca [20 x i8], align 1
  %"$a6_647" = load [20 x i8], [20 x i8]* %a6, align 1
  store [20 x i8] %"$a6_647", [20 x i8]* %"$eq_a6_646", align 1
  %"$$eq_a6_646_648" = bitcast [20 x i8]* %"$eq_a6_646" to i8*
  %"$eq_a6_gen_649" = alloca [20 x i8], align 1
  %"$a6_gen_650" = load [20 x i8], [20 x i8]* %a6_gen, align 1
  store [20 x i8] %"$a6_gen_650", [20 x i8]* %"$eq_a6_gen_649", align 1
  %"$$eq_a6_gen_649_651" = bitcast [20 x i8]* %"$eq_a6_gen_649" to i8*
  %"$eq_call_652" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_645", i32 20, i8* %"$$eq_a6_646_648", i8* %"$$eq_a6_gen_649_651"), !dbg !55
  store %TName_Bool* %"$eq_call_652", %TName_Bool** %r6, align 8, !dbg !55
  %"$gasrem_654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_655" = icmp ugt i64 1, %"$gasrem_654"
  br i1 %"$gascmp_655", label %"$out_of_gas_656", label %"$have_gas_657"

"$out_of_gas_656":                                ; preds = %"$have_gas_643"
  call void @_out_of_gas()
  br label %"$have_gas_657"

"$have_gas_657":                                  ; preds = %"$out_of_gas_656", %"$have_gas_643"
  %"$consume_658" = sub i64 %"$gasrem_654", 1
  store i64 %"$consume_658", i64* @_gasrem, align 8
  %p7 = alloca [33 x i8], align 1
  %"$gasrem_659" = load i64, i64* @_gasrem, align 8
  %"$gascmp_660" = icmp ugt i64 1, %"$gasrem_659"
  br i1 %"$gascmp_660", label %"$out_of_gas_661", label %"$have_gas_662"

"$out_of_gas_661":                                ; preds = %"$have_gas_657"
  call void @_out_of_gas()
  br label %"$have_gas_662"

"$have_gas_662":                                  ; preds = %"$out_of_gas_661", %"$have_gas_657"
  %"$consume_663" = sub i64 %"$gasrem_659", 1
  store i64 %"$consume_663", i64* @_gasrem, align 8
  store [33 x i8] c"\03*f\1F\9DJ\B8\DD\98\18\CE\D2\F6/=\A1O\DD#\E6\8EX\D0\1AJ\E1\86#\1D\7F\B6\09\BB", [33 x i8]* %p7, align 1, !dbg !56
  %"$gasrem_664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_665" = icmp ugt i64 1, %"$gasrem_664"
  br i1 %"$gascmp_665", label %"$out_of_gas_666", label %"$have_gas_667"

"$out_of_gas_666":                                ; preds = %"$have_gas_662"
  call void @_out_of_gas()
  br label %"$have_gas_667"

"$have_gas_667":                                  ; preds = %"$out_of_gas_666", %"$have_gas_662"
  %"$consume_668" = sub i64 %"$gasrem_664", 1
  store i64 %"$consume_668", i64* @_gasrem, align 8
  %a7 = alloca [20 x i8], align 1
  %"$gasrem_669" = load i64, i64* @_gasrem, align 8
  %"$gascmp_670" = icmp ugt i64 1, %"$gasrem_669"
  br i1 %"$gascmp_670", label %"$out_of_gas_671", label %"$have_gas_672"

"$out_of_gas_671":                                ; preds = %"$have_gas_667"
  call void @_out_of_gas()
  br label %"$have_gas_672"

"$have_gas_672":                                  ; preds = %"$out_of_gas_671", %"$have_gas_667"
  %"$consume_673" = sub i64 %"$gasrem_669", 1
  store i64 %"$consume_673", i64* @_gasrem, align 8
  store [20 x i8] c"6\BA4\09\7F\86\11\91\C4\8C\83\9C\9B\1A\8BY\12\F5\83\CF", [20 x i8]* %a7, align 1, !dbg !57
  %"$gasrem_674" = load i64, i64* @_gasrem, align 8
  %"$gascmp_675" = icmp ugt i64 1, %"$gasrem_674"
  br i1 %"$gascmp_675", label %"$out_of_gas_676", label %"$have_gas_677"

"$out_of_gas_676":                                ; preds = %"$have_gas_672"
  call void @_out_of_gas()
  br label %"$have_gas_677"

"$have_gas_677":                                  ; preds = %"$out_of_gas_676", %"$have_gas_672"
  %"$consume_678" = sub i64 %"$gasrem_674", 1
  store i64 %"$consume_678", i64* @_gasrem, align 8
  %a7_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p7_679" = alloca [33 x i8], align 1
  %"$p7_680" = load [33 x i8], [33 x i8]* %p7, align 1
  store [33 x i8] %"$p7_680", [33 x i8]* %"$_literal_cost_p7_679", align 1
  %"$$_literal_cost_p7_679_681" = bitcast [33 x i8]* %"$_literal_cost_p7_679" to i8*
  %"$_literal_cost_call_682" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_61", i8* %"$$_literal_cost_p7_679_681")
  %"$gasdivceil_683" = urem i64 %"$_literal_cost_call_682", 960
  %"$gasdivceil_684" = udiv i64 %"$_literal_cost_call_682", 960
  %"$gasdivceil_685" = icmp eq i64 %"$gasdivceil_683", 0
  %"$gasdivceil_686" = add i64 %"$gasdivceil_684", 1
  %"$gasdivceil_687" = select i1 %"$gasdivceil_685", i64 %"$gasdivceil_684", i64 %"$gasdivceil_686"
  %"$gasrem_688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_689" = icmp ugt i64 %"$gasdivceil_687", %"$gasrem_688"
  br i1 %"$gascmp_689", label %"$out_of_gas_690", label %"$have_gas_691"

"$out_of_gas_690":                                ; preds = %"$have_gas_677"
  call void @_out_of_gas()
  br label %"$have_gas_691"

"$have_gas_691":                                  ; preds = %"$out_of_gas_690", %"$have_gas_677"
  %"$consume_692" = sub i64 %"$gasrem_688", %"$gasdivceil_687"
  store i64 %"$consume_692", i64* @_gasrem, align 8
  %"$execptr_load_693" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p7_694" = alloca [33 x i8], align 1
  %"$p7_695" = load [33 x i8], [33 x i8]* %p7, align 1
  store [33 x i8] %"$p7_695", [33 x i8]* %"$schnorr_get_address_p7_694", align 1
  %"$schnorr_get_address_call_696" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_693", [33 x i8]* %"$schnorr_get_address_p7_694"), !dbg !58
  %"$schnorr_get_address_698" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_696", align 1
  store [20 x i8] %"$schnorr_get_address_698", [20 x i8]* %a7_gen, align 1, !dbg !58
  %"$gasrem_699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_700" = icmp ugt i64 1, %"$gasrem_699"
  br i1 %"$gascmp_700", label %"$out_of_gas_701", label %"$have_gas_702"

"$out_of_gas_701":                                ; preds = %"$have_gas_691"
  call void @_out_of_gas()
  br label %"$have_gas_702"

"$have_gas_702":                                  ; preds = %"$out_of_gas_701", %"$have_gas_691"
  %"$consume_703" = sub i64 %"$gasrem_699", 1
  store i64 %"$consume_703", i64* @_gasrem, align 8
  %r7 = alloca %TName_Bool*, align 8
  %"$gasrem_704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_705" = icmp ugt i64 20, %"$gasrem_704"
  br i1 %"$gascmp_705", label %"$out_of_gas_706", label %"$have_gas_707"

"$out_of_gas_706":                                ; preds = %"$have_gas_702"
  call void @_out_of_gas()
  br label %"$have_gas_707"

"$have_gas_707":                                  ; preds = %"$out_of_gas_706", %"$have_gas_702"
  %"$consume_708" = sub i64 %"$gasrem_704", 20
  store i64 %"$consume_708", i64* @_gasrem, align 8
  %"$execptr_load_709" = load i8*, i8** @_execptr, align 8
  %"$eq_a7_710" = alloca [20 x i8], align 1
  %"$a7_711" = load [20 x i8], [20 x i8]* %a7, align 1
  store [20 x i8] %"$a7_711", [20 x i8]* %"$eq_a7_710", align 1
  %"$$eq_a7_710_712" = bitcast [20 x i8]* %"$eq_a7_710" to i8*
  %"$eq_a7_gen_713" = alloca [20 x i8], align 1
  %"$a7_gen_714" = load [20 x i8], [20 x i8]* %a7_gen, align 1
  store [20 x i8] %"$a7_gen_714", [20 x i8]* %"$eq_a7_gen_713", align 1
  %"$$eq_a7_gen_713_715" = bitcast [20 x i8]* %"$eq_a7_gen_713" to i8*
  %"$eq_call_716" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_709", i32 20, i8* %"$$eq_a7_710_712", i8* %"$$eq_a7_gen_713_715"), !dbg !59
  store %TName_Bool* %"$eq_call_716", %TName_Bool** %r7, align 8, !dbg !59
  %"$gasrem_718" = load i64, i64* @_gasrem, align 8
  %"$gascmp_719" = icmp ugt i64 1, %"$gasrem_718"
  br i1 %"$gascmp_719", label %"$out_of_gas_720", label %"$have_gas_721"

"$out_of_gas_720":                                ; preds = %"$have_gas_707"
  call void @_out_of_gas()
  br label %"$have_gas_721"

"$have_gas_721":                                  ; preds = %"$out_of_gas_720", %"$have_gas_707"
  %"$consume_722" = sub i64 %"$gasrem_718", 1
  store i64 %"$consume_722", i64* @_gasrem, align 8
  %p8 = alloca [33 x i8], align 1
  %"$gasrem_723" = load i64, i64* @_gasrem, align 8
  %"$gascmp_724" = icmp ugt i64 1, %"$gasrem_723"
  br i1 %"$gascmp_724", label %"$out_of_gas_725", label %"$have_gas_726"

"$out_of_gas_725":                                ; preds = %"$have_gas_721"
  call void @_out_of_gas()
  br label %"$have_gas_726"

"$have_gas_726":                                  ; preds = %"$out_of_gas_725", %"$have_gas_721"
  %"$consume_727" = sub i64 %"$gasrem_723", 1
  store i64 %"$consume_727", i64* @_gasrem, align 8
  store [33 x i8] c"\03j\94\E9%\BB \0D\CEA\A4l\90&\E0#\B2&\DD[L\B2'\CEvm`\CC\8F\AB!\81H", [33 x i8]* %p8, align 1, !dbg !60
  %"$gasrem_728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_729" = icmp ugt i64 1, %"$gasrem_728"
  br i1 %"$gascmp_729", label %"$out_of_gas_730", label %"$have_gas_731"

"$out_of_gas_730":                                ; preds = %"$have_gas_726"
  call void @_out_of_gas()
  br label %"$have_gas_731"

"$have_gas_731":                                  ; preds = %"$out_of_gas_730", %"$have_gas_726"
  %"$consume_732" = sub i64 %"$gasrem_728", 1
  store i64 %"$consume_732", i64* @_gasrem, align 8
  %a8 = alloca [20 x i8], align 1
  %"$gasrem_733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_734" = icmp ugt i64 1, %"$gasrem_733"
  br i1 %"$gascmp_734", label %"$out_of_gas_735", label %"$have_gas_736"

"$out_of_gas_735":                                ; preds = %"$have_gas_731"
  call void @_out_of_gas()
  br label %"$have_gas_736"

"$have_gas_736":                                  ; preds = %"$out_of_gas_735", %"$have_gas_731"
  %"$consume_737" = sub i64 %"$gasrem_733", 1
  store i64 %"$consume_737", i64* @_gasrem, align 8
  store [20 x i8] c"\D2E:\E7l\9A\86\AA\E5D\FC\A6\99\DB\DC\\Wj\EF:", [20 x i8]* %a8, align 1, !dbg !61
  %"$gasrem_738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_739" = icmp ugt i64 1, %"$gasrem_738"
  br i1 %"$gascmp_739", label %"$out_of_gas_740", label %"$have_gas_741"

"$out_of_gas_740":                                ; preds = %"$have_gas_736"
  call void @_out_of_gas()
  br label %"$have_gas_741"

"$have_gas_741":                                  ; preds = %"$out_of_gas_740", %"$have_gas_736"
  %"$consume_742" = sub i64 %"$gasrem_738", 1
  store i64 %"$consume_742", i64* @_gasrem, align 8
  %a8_gen = alloca [20 x i8], align 1
  %"$_literal_cost_p8_743" = alloca [33 x i8], align 1
  %"$p8_744" = load [33 x i8], [33 x i8]* %p8, align 1
  store [33 x i8] %"$p8_744", [33 x i8]* %"$_literal_cost_p8_743", align 1
  %"$$_literal_cost_p8_743_745" = bitcast [33 x i8]* %"$_literal_cost_p8_743" to i8*
  %"$_literal_cost_call_746" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr33_61", i8* %"$$_literal_cost_p8_743_745")
  %"$gasdivceil_747" = urem i64 %"$_literal_cost_call_746", 960
  %"$gasdivceil_748" = udiv i64 %"$_literal_cost_call_746", 960
  %"$gasdivceil_749" = icmp eq i64 %"$gasdivceil_747", 0
  %"$gasdivceil_750" = add i64 %"$gasdivceil_748", 1
  %"$gasdivceil_751" = select i1 %"$gasdivceil_749", i64 %"$gasdivceil_748", i64 %"$gasdivceil_750"
  %"$gasrem_752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_753" = icmp ugt i64 %"$gasdivceil_751", %"$gasrem_752"
  br i1 %"$gascmp_753", label %"$out_of_gas_754", label %"$have_gas_755"

"$out_of_gas_754":                                ; preds = %"$have_gas_741"
  call void @_out_of_gas()
  br label %"$have_gas_755"

"$have_gas_755":                                  ; preds = %"$out_of_gas_754", %"$have_gas_741"
  %"$consume_756" = sub i64 %"$gasrem_752", %"$gasdivceil_751"
  store i64 %"$consume_756", i64* @_gasrem, align 8
  %"$execptr_load_757" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p8_758" = alloca [33 x i8], align 1
  %"$p8_759" = load [33 x i8], [33 x i8]* %p8, align 1
  store [33 x i8] %"$p8_759", [33 x i8]* %"$schnorr_get_address_p8_758", align 1
  %"$schnorr_get_address_call_760" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_757", [33 x i8]* %"$schnorr_get_address_p8_758"), !dbg !62
  %"$schnorr_get_address_762" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_760", align 1
  store [20 x i8] %"$schnorr_get_address_762", [20 x i8]* %a8_gen, align 1, !dbg !62
  %"$gasrem_763" = load i64, i64* @_gasrem, align 8
  %"$gascmp_764" = icmp ugt i64 1, %"$gasrem_763"
  br i1 %"$gascmp_764", label %"$out_of_gas_765", label %"$have_gas_766"

"$out_of_gas_765":                                ; preds = %"$have_gas_755"
  call void @_out_of_gas()
  br label %"$have_gas_766"

"$have_gas_766":                                  ; preds = %"$out_of_gas_765", %"$have_gas_755"
  %"$consume_767" = sub i64 %"$gasrem_763", 1
  store i64 %"$consume_767", i64* @_gasrem, align 8
  %r8 = alloca %TName_Bool*, align 8
  %"$gasrem_768" = load i64, i64* @_gasrem, align 8
  %"$gascmp_769" = icmp ugt i64 20, %"$gasrem_768"
  br i1 %"$gascmp_769", label %"$out_of_gas_770", label %"$have_gas_771"

"$out_of_gas_770":                                ; preds = %"$have_gas_766"
  call void @_out_of_gas()
  br label %"$have_gas_771"

"$have_gas_771":                                  ; preds = %"$out_of_gas_770", %"$have_gas_766"
  %"$consume_772" = sub i64 %"$gasrem_768", 20
  store i64 %"$consume_772", i64* @_gasrem, align 8
  %"$execptr_load_773" = load i8*, i8** @_execptr, align 8
  %"$eq_a8_774" = alloca [20 x i8], align 1
  %"$a8_775" = load [20 x i8], [20 x i8]* %a8, align 1
  store [20 x i8] %"$a8_775", [20 x i8]* %"$eq_a8_774", align 1
  %"$$eq_a8_774_776" = bitcast [20 x i8]* %"$eq_a8_774" to i8*
  %"$eq_a8_gen_777" = alloca [20 x i8], align 1
  %"$a8_gen_778" = load [20 x i8], [20 x i8]* %a8_gen, align 1
  store [20 x i8] %"$a8_gen_778", [20 x i8]* %"$eq_a8_gen_777", align 1
  %"$$eq_a8_gen_777_779" = bitcast [20 x i8]* %"$eq_a8_gen_777" to i8*
  %"$eq_call_780" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_773", i32 20, i8* %"$$eq_a8_774_776", i8* %"$$eq_a8_gen_777_779"), !dbg !63
  store %TName_Bool* %"$eq_call_780", %TName_Bool** %r8, align 8, !dbg !63
  %"$gasrem_782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_783" = icmp ugt i64 1, %"$gasrem_782"
  br i1 %"$gascmp_783", label %"$out_of_gas_784", label %"$have_gas_785"

"$out_of_gas_784":                                ; preds = %"$have_gas_771"
  call void @_out_of_gas()
  br label %"$have_gas_785"

"$have_gas_785":                                  ; preds = %"$out_of_gas_784", %"$have_gas_771"
  %"$consume_786" = sub i64 %"$gasrem_782", 1
  store i64 %"$consume_786", i64* @_gasrem, align 8
  %"$gasrem_787" = load i64, i64* @_gasrem, align 8
  %"$gascmp_788" = icmp ugt i64 1, %"$gasrem_787"
  br i1 %"$gascmp_788", label %"$out_of_gas_789", label %"$have_gas_790"

"$out_of_gas_789":                                ; preds = %"$have_gas_785"
  call void @_out_of_gas()
  br label %"$have_gas_790"

"$have_gas_790":                                  ; preds = %"$out_of_gas_789", %"$have_gas_785"
  %"$consume_791" = sub i64 %"$gasrem_787", 1
  store i64 %"$consume_791", i64* @_gasrem, align 8
  %"$gasrem_792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_793" = icmp ugt i64 1, %"$gasrem_792"
  br i1 %"$gascmp_793", label %"$out_of_gas_794", label %"$have_gas_795"

"$out_of_gas_794":                                ; preds = %"$have_gas_790"
  call void @_out_of_gas()
  br label %"$have_gas_795"

"$have_gas_795":                                  ; preds = %"$out_of_gas_794", %"$have_gas_790"
  %"$consume_796" = sub i64 %"$gasrem_792", 1
  store i64 %"$consume_796", i64* @_gasrem, align 8
  %"$gasrem_797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_798" = icmp ugt i64 1, %"$gasrem_797"
  br i1 %"$gascmp_798", label %"$out_of_gas_799", label %"$have_gas_800"

"$out_of_gas_799":                                ; preds = %"$have_gas_795"
  call void @_out_of_gas()
  br label %"$have_gas_800"

"$have_gas_800":                                  ; preds = %"$out_of_gas_799", %"$have_gas_795"
  %"$consume_801" = sub i64 %"$gasrem_797", 1
  store i64 %"$consume_801", i64* @_gasrem, align 8
  %"$gasrem_802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_803" = icmp ugt i64 1, %"$gasrem_802"
  br i1 %"$gascmp_803", label %"$out_of_gas_804", label %"$have_gas_805"

"$out_of_gas_804":                                ; preds = %"$have_gas_800"
  call void @_out_of_gas()
  br label %"$have_gas_805"

"$have_gas_805":                                  ; preds = %"$out_of_gas_804", %"$have_gas_800"
  %"$consume_806" = sub i64 %"$gasrem_802", 1
  store i64 %"$consume_806", i64* @_gasrem, align 8
  %res1 = alloca %TName_Bool*, align 8
  %"$gasrem_807" = load i64, i64* @_gasrem, align 8
  %"$gascmp_808" = icmp ugt i64 1, %"$gasrem_807"
  br i1 %"$gascmp_808", label %"$out_of_gas_809", label %"$have_gas_810"

"$out_of_gas_809":                                ; preds = %"$have_gas_805"
  call void @_out_of_gas()
  br label %"$have_gas_810"

"$have_gas_810":                                  ; preds = %"$out_of_gas_809", %"$have_gas_805"
  %"$consume_811" = sub i64 %"$gasrem_807", 1
  store i64 %"$consume_811", i64* @_gasrem, align 8
  %"$BoolUtils.and_4_6" = alloca { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.and_4_812" = load { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4, align 8
  %"$BoolUtils.and_4_fptr_813" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_812", 0
  %"$BoolUtils.and_4_envptr_814" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_812", 1
  %"$r1_815" = load %TName_Bool*, %TName_Bool** %r1, align 8
  %"$BoolUtils.and_4_call_816" = call { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_fptr_813"(i8* %"$BoolUtils.and_4_envptr_814", %TName_Bool* %"$r1_815"), !dbg !64
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_call_816", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_6", align 8, !dbg !64
  %"$BoolUtils.and_4_7" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_6_817" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_6", align 8
  %"$$BoolUtils.and_4_6_fptr_818" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_817", 0
  %"$$BoolUtils.and_4_6_envptr_819" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_817", 1
  %"$r2_820" = load %TName_Bool*, %TName_Bool** %r2, align 8
  %"$$BoolUtils.and_4_6_call_821" = call { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_fptr_818"(i8* %"$$BoolUtils.and_4_6_envptr_819", %TName_Bool* %"$r2_820"), !dbg !64
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_call_821", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_7", align 8, !dbg !64
  %"$BoolUtils.and_4_8" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_7_822" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_7", align 8
  %"$$BoolUtils.and_4_7_fptr_823" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_822", 0
  %"$$BoolUtils.and_4_7_envptr_824" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_822", 1
  %"$r3_825" = load %TName_Bool*, %TName_Bool** %r3, align 8
  %"$$BoolUtils.and_4_7_call_826" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_fptr_823"(i8* %"$$BoolUtils.and_4_7_envptr_824", %TName_Bool* %"$r3_825"), !dbg !64
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_call_826", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_8", align 8, !dbg !64
  %"$BoolUtils.and_4_9" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.and_4_8_827" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_8", align 8
  %"$$BoolUtils.and_4_8_fptr_828" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_8_827", 0
  %"$$BoolUtils.and_4_8_envptr_829" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_8_827", 1
  %"$r4_830" = load %TName_Bool*, %TName_Bool** %r4, align 8
  %"$$BoolUtils.and_4_8_call_831" = call %TName_Bool* %"$$BoolUtils.and_4_8_fptr_828"(i8* %"$$BoolUtils.and_4_8_envptr_829", %TName_Bool* %"$r4_830"), !dbg !64
  store %TName_Bool* %"$$BoolUtils.and_4_8_call_831", %TName_Bool** %"$BoolUtils.and_4_9", align 8, !dbg !64
  %"$$BoolUtils.and_4_9_832" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.and_4_9", align 8
  store %TName_Bool* %"$$BoolUtils.and_4_9_832", %TName_Bool** %res1, align 8, !dbg !64
  %"$gasrem_833" = load i64, i64* @_gasrem, align 8
  %"$gascmp_834" = icmp ugt i64 1, %"$gasrem_833"
  br i1 %"$gascmp_834", label %"$out_of_gas_835", label %"$have_gas_836"

"$out_of_gas_835":                                ; preds = %"$have_gas_810"
  call void @_out_of_gas()
  br label %"$have_gas_836"

"$have_gas_836":                                  ; preds = %"$out_of_gas_835", %"$have_gas_810"
  %"$consume_837" = sub i64 %"$gasrem_833", 1
  store i64 %"$consume_837", i64* @_gasrem, align 8
  %res2 = alloca %TName_Bool*, align 8
  %"$gasrem_838" = load i64, i64* @_gasrem, align 8
  %"$gascmp_839" = icmp ugt i64 1, %"$gasrem_838"
  br i1 %"$gascmp_839", label %"$out_of_gas_840", label %"$have_gas_841"

"$out_of_gas_840":                                ; preds = %"$have_gas_836"
  call void @_out_of_gas()
  br label %"$have_gas_841"

"$have_gas_841":                                  ; preds = %"$out_of_gas_840", %"$have_gas_836"
  %"$consume_842" = sub i64 %"$gasrem_838", 1
  store i64 %"$consume_842", i64* @_gasrem, align 8
  %"$BoolUtils.and_4_10" = alloca { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.and_4_843" = load { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4, align 8
  %"$BoolUtils.and_4_fptr_844" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_843", 0
  %"$BoolUtils.and_4_envptr_845" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_843", 1
  %"$r5_846" = load %TName_Bool*, %TName_Bool** %r5, align 8
  %"$BoolUtils.and_4_call_847" = call { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_fptr_844"(i8* %"$BoolUtils.and_4_envptr_845", %TName_Bool* %"$r5_846"), !dbg !65
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_call_847", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_10", align 8, !dbg !65
  %"$BoolUtils.and_4_11" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_10_848" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_10", align 8
  %"$$BoolUtils.and_4_10_fptr_849" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_848", 0
  %"$$BoolUtils.and_4_10_envptr_850" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_848", 1
  %"$r6_851" = load %TName_Bool*, %TName_Bool** %r6, align 8
  %"$$BoolUtils.and_4_10_call_852" = call { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_fptr_849"(i8* %"$$BoolUtils.and_4_10_envptr_850", %TName_Bool* %"$r6_851"), !dbg !65
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_call_852", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_11", align 8, !dbg !65
  %"$BoolUtils.and_4_12" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_11_853" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_11", align 8
  %"$$BoolUtils.and_4_11_fptr_854" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_853", 0
  %"$$BoolUtils.and_4_11_envptr_855" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_853", 1
  %"$r7_856" = load %TName_Bool*, %TName_Bool** %r7, align 8
  %"$$BoolUtils.and_4_11_call_857" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_fptr_854"(i8* %"$$BoolUtils.and_4_11_envptr_855", %TName_Bool* %"$r7_856"), !dbg !65
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_call_857", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_12", align 8, !dbg !65
  %"$BoolUtils.and_4_13" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.and_4_12_858" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_12", align 8
  %"$$BoolUtils.and_4_12_fptr_859" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_12_858", 0
  %"$$BoolUtils.and_4_12_envptr_860" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_12_858", 1
  %"$r8_861" = load %TName_Bool*, %TName_Bool** %r8, align 8
  %"$$BoolUtils.and_4_12_call_862" = call %TName_Bool* %"$$BoolUtils.and_4_12_fptr_859"(i8* %"$$BoolUtils.and_4_12_envptr_860", %TName_Bool* %"$r8_861"), !dbg !65
  store %TName_Bool* %"$$BoolUtils.and_4_12_call_862", %TName_Bool** %"$BoolUtils.and_4_13", align 8, !dbg !65
  %"$$BoolUtils.and_4_13_863" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.and_4_13", align 8
  store %TName_Bool* %"$$BoolUtils.and_4_13_863", %TName_Bool** %res2, align 8, !dbg !65
  %"$gasrem_864" = load i64, i64* @_gasrem, align 8
  %"$gascmp_865" = icmp ugt i64 1, %"$gasrem_864"
  br i1 %"$gascmp_865", label %"$out_of_gas_866", label %"$have_gas_867"

"$out_of_gas_866":                                ; preds = %"$have_gas_841"
  call void @_out_of_gas()
  br label %"$have_gas_867"

"$have_gas_867":                                  ; preds = %"$out_of_gas_866", %"$have_gas_841"
  %"$consume_868" = sub i64 %"$gasrem_864", 1
  store i64 %"$consume_868", i64* @_gasrem, align 8
  %"$BoolUtils.andb_14" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_869" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_870" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_869", 0
  %"$BoolUtils.andb_envptr_871" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_869", 1
  %"$res1_872" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$BoolUtils.andb_call_873" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_870"(i8* %"$BoolUtils.andb_envptr_871", %TName_Bool* %"$res1_872"), !dbg !66
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_873", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_14", align 8, !dbg !66
  %"$BoolUtils.andb_15" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_14_874" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_14", align 8
  %"$$BoolUtils.andb_14_fptr_875" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_14_874", 0
  %"$$BoolUtils.andb_14_envptr_876" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_14_874", 1
  %"$res2_877" = load %TName_Bool*, %TName_Bool** %res2, align 8
  %"$$BoolUtils.andb_14_call_878" = call %TName_Bool* %"$$BoolUtils.andb_14_fptr_875"(i8* %"$$BoolUtils.andb_14_envptr_876", %TName_Bool* %"$res2_877"), !dbg !66
  store %TName_Bool* %"$$BoolUtils.andb_14_call_878", %TName_Bool** %"$BoolUtils.andb_15", align 8, !dbg !66
  %"$$BoolUtils.andb_15_879" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_15", align 8
  store %TName_Bool* %"$$BoolUtils.andb_15_879", %TName_Bool** %"$expr_28", align 8, !dbg !66
  %"$$expr_28_880" = load %TName_Bool*, %TName_Bool** %"$expr_28", align 8
  ret %TName_Bool* %"$$expr_28_880"
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare [20 x i8]* @_schnorr_get_address(i8*, [33 x i8]*)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_881" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_882" = bitcast %TName_Bool* %"$exprval_881" to i8*
  %"$execptr_load_883" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_883", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_65", i8* %"$memvoidcast_882")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin-schnorr_get_address.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_22", linkageName: "$fundef_22", scope: !5, file: !5, line: 52, type: !6, scopeLine: 52, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 52, column: 14, scope: !4)
!10 = !DILocation(line: 53, column: 14, scope: !4)
!11 = !DILocation(line: 54, column: 5, scope: !4)
!12 = distinct !DISubprogram(name: "$fundef_20", linkageName: "$fundef_20", scope: !5, file: !5, line: 51, type: !6, scopeLine: 51, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!13 = !DILocation(line: 52, column: 5, scope: !12)
!14 = distinct !DISubprogram(name: "$fundef_18", linkageName: "$fundef_18", scope: !5, file: !5, line: 51, type: !6, scopeLine: 51, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 51, column: 57, scope: !14)
!16 = distinct !DISubprogram(name: "$fundef_16", linkageName: "$fundef_16", scope: !5, file: !5, line: 51, type: !6, scopeLine: 51, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!17 = !DILocation(line: 51, column: 39, scope: !16)
!18 = distinct !DISubprogram(name: "$fundef_26", linkageName: "$fundef_26", scope: !5, file: !5, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!19 = !DILocation(line: 8, column: 5, scope: !18)
!20 = !DILocation(line: 9, column: 16, scope: !21)
!21 = distinct !DILexicalBlock(scope: !22, file: !5, line: 9, column: 7)
!22 = distinct !DILexicalBlock(scope: !18, file: !5, line: 8, column: 5)
!23 = !DILocation(line: 10, column: 16, scope: !24)
!24 = distinct !DILexicalBlock(scope: !22, file: !5, line: 10, column: 7)
!25 = distinct !DISubprogram(name: "$fundef_24", linkageName: "$fundef_24", scope: !5, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!26 = !DILocation(line: 8, column: 5, scope: !25)
!27 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !28, file: !28, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DIFile(filename: ".", directory: ".")
!29 = !DILocation(line: 7, column: 3, scope: !27)
!30 = !DILocation(line: 51, column: 21, scope: !27)
!31 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 3, type: !6, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!32 = !DILocation(line: 3, column: 9, scope: !31)
!33 = !DILocation(line: 4, column: 10, scope: !31)
!34 = !DILocation(line: 5, column: 14, scope: !31)
!35 = !DILocation(line: 6, column: 10, scope: !31)
!36 = !DILocation(line: 8, column: 9, scope: !31)
!37 = !DILocation(line: 9, column: 10, scope: !31)
!38 = !DILocation(line: 10, column: 14, scope: !31)
!39 = !DILocation(line: 11, column: 10, scope: !31)
!40 = !DILocation(line: 13, column: 9, scope: !31)
!41 = !DILocation(line: 14, column: 10, scope: !31)
!42 = !DILocation(line: 15, column: 14, scope: !31)
!43 = !DILocation(line: 16, column: 10, scope: !31)
!44 = !DILocation(line: 18, column: 9, scope: !31)
!45 = !DILocation(line: 19, column: 10, scope: !31)
!46 = !DILocation(line: 20, column: 14, scope: !31)
!47 = !DILocation(line: 21, column: 10, scope: !31)
!48 = !DILocation(line: 23, column: 9, scope: !31)
!49 = !DILocation(line: 24, column: 10, scope: !31)
!50 = !DILocation(line: 25, column: 14, scope: !31)
!51 = !DILocation(line: 26, column: 10, scope: !31)
!52 = !DILocation(line: 28, column: 9, scope: !31)
!53 = !DILocation(line: 29, column: 10, scope: !31)
!54 = !DILocation(line: 30, column: 14, scope: !31)
!55 = !DILocation(line: 31, column: 10, scope: !31)
!56 = !DILocation(line: 33, column: 9, scope: !31)
!57 = !DILocation(line: 34, column: 10, scope: !31)
!58 = !DILocation(line: 35, column: 14, scope: !31)
!59 = !DILocation(line: 36, column: 10, scope: !31)
!60 = !DILocation(line: 38, column: 9, scope: !31)
!61 = !DILocation(line: 39, column: 10, scope: !31)
!62 = !DILocation(line: 40, column: 14, scope: !31)
!63 = !DILocation(line: 41, column: 10, scope: !31)
!64 = !DILocation(line: 48, column: 12, scope: !31)
!65 = !DILocation(line: 49, column: 12, scope: !31)
!66 = !DILocation(line: 51, column: 1, scope: !31)
