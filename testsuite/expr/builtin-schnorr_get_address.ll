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

%"$TyDescrTy_PrimTyp_29" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_63" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_62"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_62" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_64"**, %"$TyDescrTy_ADTTyp_63"* }
%"$TyDescrTy_ADTTyp_Constr_64" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$$fundef_22_env_79" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, %TName_Bool*, %TName_Bool*, %TName_Bool* }
%"$$fundef_20_env_80" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, %TName_Bool*, %TName_Bool* }
%"$$fundef_18_env_81" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, %TName_Bool* }
%"$$fundef_16_env_82" = type { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } }
%"$$fundef_26_env_83" = type { %TName_Bool* }
%"$$fundef_24_env_84" = type {}

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
@"$TyDescr_ADT_Bool_65" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Bool_ADTTyp_Specl_76" to i8*) }
@"$TyDescr_Bool_ADTTyp_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_78", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_62"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_62"*], [1 x %"$TyDescrTy_ADTTyp_Specl_62"*]* @"$TyDescr_Bool_ADTTyp_m_specls_77", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_68" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_69" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_69", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_68", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_71" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_72" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_64" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_72", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_71", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_74" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_64"*] [%"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Bool_True_ADTTyp_Constr_70", %"$TyDescrTy_ADTTyp_Constr_64"* @"$TyDescr_Bool_False_ADTTyp_Constr_73"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_75" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_62" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_75", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_64"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_64"*], [2 x %"$TyDescrTy_ADTTyp_Constr_64"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_74", i32 0, i32 0), %"$TyDescrTy_ADTTyp_63"* @"$TyDescr_Bool_ADTTyp_67" }
@"$TyDescr_Bool_ADTTyp_m_specls_77" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_62"*] [%"$TyDescrTy_ADTTyp_Specl_62"* @"$TyDescr_Bool_ADTTyp_Specl_76"]
@"$TyDescr_ADT_Bool_78" = unnamed_addr constant [4 x i8] c"Bool"
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.and_4 = global { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer

define internal %TName_Bool* @"$fundef_22"(%"$$fundef_22_env_79"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_22_env_BoolUtils.andb_183" = getelementptr inbounds %"$$fundef_22_env_79", %"$$fundef_22_env_79"* %0, i32 0, i32 0
  %"$BoolUtils.andb_envload_184" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_22_env_BoolUtils.andb_183"
  %BoolUtils.andb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_envload_184", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb
  %"$$fundef_22_env_a_185" = getelementptr inbounds %"$$fundef_22_env_79", %"$$fundef_22_env_79"* %0, i32 0, i32 1
  %"$a_envload_186" = load %TName_Bool*, %TName_Bool** %"$$fundef_22_env_a_185"
  %a = alloca %TName_Bool*
  store %TName_Bool* %"$a_envload_186", %TName_Bool** %a
  %"$$fundef_22_env_b_187" = getelementptr inbounds %"$$fundef_22_env_79", %"$$fundef_22_env_79"* %0, i32 0, i32 2
  %"$b_envload_188" = load %TName_Bool*, %TName_Bool** %"$$fundef_22_env_b_187"
  %b = alloca %TName_Bool*
  store %TName_Bool* %"$b_envload_188", %TName_Bool** %b
  %"$$fundef_22_env_c_189" = getelementptr inbounds %"$$fundef_22_env_79", %"$$fundef_22_env_79"* %0, i32 0, i32 3
  %"$c_envload_190" = load %TName_Bool*, %TName_Bool** %"$$fundef_22_env_c_189"
  %c = alloca %TName_Bool*
  store %TName_Bool* %"$c_envload_190", %TName_Bool** %c
  %"$retval_23" = alloca %TName_Bool*
  %"$gasrem_191" = load i64, i64* @_gasrem
  %"$gascmp_192" = icmp ugt i64 1, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %entry
  %"$consume_195" = sub i64 %"$gasrem_191", 1
  store i64 %"$consume_195", i64* @_gasrem
  %t1 = alloca %TName_Bool*
  %"$gasrem_196" = load i64, i64* @_gasrem
  %"$gascmp_197" = icmp ugt i64 1, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %"$have_gas_194"
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %"$have_gas_194"
  %"$consume_200" = sub i64 %"$gasrem_196", 1
  store i64 %"$consume_200", i64* @_gasrem
  %"$BoolUtils.andb_0" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.andb_201" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb
  %"$BoolUtils.andb_fptr_202" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_201", 0
  %"$BoolUtils.andb_envptr_203" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_201", 1
  %"$a_204" = load %TName_Bool*, %TName_Bool** %a
  %"$BoolUtils.andb_call_205" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_202"(i8* %"$BoolUtils.andb_envptr_203", %TName_Bool* %"$a_204")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_205", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_0"
  %"$BoolUtils.andb_1" = alloca %TName_Bool*
  %"$$BoolUtils.andb_0_206" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_0"
  %"$$BoolUtils.andb_0_fptr_207" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_0_206", 0
  %"$$BoolUtils.andb_0_envptr_208" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_0_206", 1
  %"$b_209" = load %TName_Bool*, %TName_Bool** %b
  %"$$BoolUtils.andb_0_call_210" = call %TName_Bool* %"$$BoolUtils.andb_0_fptr_207"(i8* %"$$BoolUtils.andb_0_envptr_208", %TName_Bool* %"$b_209")
  store %TName_Bool* %"$$BoolUtils.andb_0_call_210", %TName_Bool** %"$BoolUtils.andb_1"
  %"$$BoolUtils.andb_1_211" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_1"
  store %TName_Bool* %"$$BoolUtils.andb_1_211", %TName_Bool** %t1
  %"$gasrem_212" = load i64, i64* @_gasrem
  %"$gascmp_213" = icmp ugt i64 1, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %"$have_gas_199"
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %"$have_gas_199"
  %"$consume_216" = sub i64 %"$gasrem_212", 1
  store i64 %"$consume_216", i64* @_gasrem
  %t2 = alloca %TName_Bool*
  %"$gasrem_217" = load i64, i64* @_gasrem
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_215"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_215"
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem
  %"$BoolUtils.andb_2" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.andb_222" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb
  %"$BoolUtils.andb_fptr_223" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_222", 0
  %"$BoolUtils.andb_envptr_224" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_222", 1
  %"$t1_225" = load %TName_Bool*, %TName_Bool** %t1
  %"$BoolUtils.andb_call_226" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_223"(i8* %"$BoolUtils.andb_envptr_224", %TName_Bool* %"$t1_225")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_226", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_2"
  %"$BoolUtils.andb_3" = alloca %TName_Bool*
  %"$$BoolUtils.andb_2_227" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_2"
  %"$$BoolUtils.andb_2_fptr_228" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_2_227", 0
  %"$$BoolUtils.andb_2_envptr_229" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_2_227", 1
  %"$c_230" = load %TName_Bool*, %TName_Bool** %c
  %"$$BoolUtils.andb_2_call_231" = call %TName_Bool* %"$$BoolUtils.andb_2_fptr_228"(i8* %"$$BoolUtils.andb_2_envptr_229", %TName_Bool* %"$c_230")
  store %TName_Bool* %"$$BoolUtils.andb_2_call_231", %TName_Bool** %"$BoolUtils.andb_3"
  %"$$BoolUtils.andb_3_232" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_3"
  store %TName_Bool* %"$$BoolUtils.andb_3_232", %TName_Bool** %t2
  %"$gasrem_233" = load i64, i64* @_gasrem
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_220"
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem
  %"$BoolUtils.andb_4" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.andb_238" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb
  %"$BoolUtils.andb_fptr_239" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_238", 0
  %"$BoolUtils.andb_envptr_240" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_238", 1
  %"$t2_241" = load %TName_Bool*, %TName_Bool** %t2
  %"$BoolUtils.andb_call_242" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_239"(i8* %"$BoolUtils.andb_envptr_240", %TName_Bool* %"$t2_241")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_242", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_4"
  %"$BoolUtils.andb_5" = alloca %TName_Bool*
  %"$$BoolUtils.andb_4_243" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_4"
  %"$$BoolUtils.andb_4_fptr_244" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_4_243", 0
  %"$$BoolUtils.andb_4_envptr_245" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_4_243", 1
  %"$$BoolUtils.andb_4_call_246" = call %TName_Bool* %"$$BoolUtils.andb_4_fptr_244"(i8* %"$$BoolUtils.andb_4_envptr_245", %TName_Bool* %1)
  store %TName_Bool* %"$$BoolUtils.andb_4_call_246", %TName_Bool** %"$BoolUtils.andb_5"
  %"$$BoolUtils.andb_5_247" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_5"
  store %TName_Bool* %"$$BoolUtils.andb_5_247", %TName_Bool** %"$retval_23"
  %"$$retval_23_248" = load %TName_Bool*, %TName_Bool** %"$retval_23"
  ret %TName_Bool* %"$$retval_23_248"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_20"(%"$$fundef_20_env_80"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_20_env_BoolUtils.andb_160" = getelementptr inbounds %"$$fundef_20_env_80", %"$$fundef_20_env_80"* %0, i32 0, i32 0
  %"$BoolUtils.andb_envload_161" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_20_env_BoolUtils.andb_160"
  %BoolUtils.andb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_envload_161", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb
  %"$$fundef_20_env_a_162" = getelementptr inbounds %"$$fundef_20_env_80", %"$$fundef_20_env_80"* %0, i32 0, i32 1
  %"$a_envload_163" = load %TName_Bool*, %TName_Bool** %"$$fundef_20_env_a_162"
  %a = alloca %TName_Bool*
  store %TName_Bool* %"$a_envload_163", %TName_Bool** %a
  %"$$fundef_20_env_b_164" = getelementptr inbounds %"$$fundef_20_env_80", %"$$fundef_20_env_80"* %0, i32 0, i32 2
  %"$b_envload_165" = load %TName_Bool*, %TName_Bool** %"$$fundef_20_env_b_164"
  %b = alloca %TName_Bool*
  store %TName_Bool* %"$b_envload_165", %TName_Bool** %b
  %"$retval_21" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$gasrem_166" = load i64, i64* @_gasrem
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %entry
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem
  %"$$fundef_22_envp_171_load" = load i8*, i8** @_execptr
  %"$$fundef_22_envp_171_salloc" = call i8* @_salloc(i8* %"$$fundef_22_envp_171_load", i64 40)
  %"$$fundef_22_envp_171" = bitcast i8* %"$$fundef_22_envp_171_salloc" to %"$$fundef_22_env_79"*
  %"$$fundef_22_env_voidp_173" = bitcast %"$$fundef_22_env_79"* %"$$fundef_22_envp_171" to i8*
  %"$$fundef_22_cloval_174" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_22_env_79"*, %TName_Bool*)* @"$fundef_22" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_22_env_voidp_173", 1
  %"$$fundef_22_env_BoolUtils.andb_175" = getelementptr inbounds %"$$fundef_22_env_79", %"$$fundef_22_env_79"* %"$$fundef_22_envp_171", i32 0, i32 0
  %"$BoolUtils.andb_176" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_176", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_22_env_BoolUtils.andb_175"
  %"$$fundef_22_env_a_177" = getelementptr inbounds %"$$fundef_22_env_79", %"$$fundef_22_env_79"* %"$$fundef_22_envp_171", i32 0, i32 1
  %"$a_178" = load %TName_Bool*, %TName_Bool** %a
  store %TName_Bool* %"$a_178", %TName_Bool** %"$$fundef_22_env_a_177"
  %"$$fundef_22_env_b_179" = getelementptr inbounds %"$$fundef_22_env_79", %"$$fundef_22_env_79"* %"$$fundef_22_envp_171", i32 0, i32 2
  %"$b_180" = load %TName_Bool*, %TName_Bool** %b
  store %TName_Bool* %"$b_180", %TName_Bool** %"$$fundef_22_env_b_179"
  %"$$fundef_22_env_c_181" = getelementptr inbounds %"$$fundef_22_env_79", %"$$fundef_22_env_79"* %"$$fundef_22_envp_171", i32 0, i32 3
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_22_env_c_181"
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_22_cloval_174", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_21"
  %"$$retval_21_182" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_21"
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_21_182"
}

define internal { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } @"$fundef_18"(%"$$fundef_18_env_81"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_18_env_BoolUtils.andb_141" = getelementptr inbounds %"$$fundef_18_env_81", %"$$fundef_18_env_81"* %0, i32 0, i32 0
  %"$BoolUtils.andb_envload_142" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_18_env_BoolUtils.andb_141"
  %BoolUtils.andb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_envload_142", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb
  %"$$fundef_18_env_a_143" = getelementptr inbounds %"$$fundef_18_env_81", %"$$fundef_18_env_81"* %0, i32 0, i32 1
  %"$a_envload_144" = load %TName_Bool*, %TName_Bool** %"$$fundef_18_env_a_143"
  %a = alloca %TName_Bool*
  store %TName_Bool* %"$a_envload_144", %TName_Bool** %a
  %"$retval_19" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }
  %"$gasrem_145" = load i64, i64* @_gasrem
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %entry
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem
  %"$$fundef_20_envp_150_load" = load i8*, i8** @_execptr
  %"$$fundef_20_envp_150_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_150_load", i64 32)
  %"$$fundef_20_envp_150" = bitcast i8* %"$$fundef_20_envp_150_salloc" to %"$$fundef_20_env_80"*
  %"$$fundef_20_env_voidp_152" = bitcast %"$$fundef_20_env_80"* %"$$fundef_20_envp_150" to i8*
  %"$$fundef_20_cloval_153" = insertvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_20_env_80"*, %TName_Bool*)* @"$fundef_20" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_20_env_voidp_152", 1
  %"$$fundef_20_env_BoolUtils.andb_154" = getelementptr inbounds %"$$fundef_20_env_80", %"$$fundef_20_env_80"* %"$$fundef_20_envp_150", i32 0, i32 0
  %"$BoolUtils.andb_155" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_155", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_20_env_BoolUtils.andb_154"
  %"$$fundef_20_env_a_156" = getelementptr inbounds %"$$fundef_20_env_80", %"$$fundef_20_env_80"* %"$$fundef_20_envp_150", i32 0, i32 1
  %"$a_157" = load %TName_Bool*, %TName_Bool** %a
  store %TName_Bool* %"$a_157", %TName_Bool** %"$$fundef_20_env_a_156"
  %"$$fundef_20_env_b_158" = getelementptr inbounds %"$$fundef_20_env_80", %"$$fundef_20_env_80"* %"$$fundef_20_envp_150", i32 0, i32 2
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_20_env_b_158"
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$fundef_20_cloval_153", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_19"
  %"$$retval_19_159" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_19"
  ret { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$retval_19_159"
}

define internal { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } @"$fundef_16"(%"$$fundef_16_env_82"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_16_env_BoolUtils.andb_126" = getelementptr inbounds %"$$fundef_16_env_82", %"$$fundef_16_env_82"* %0, i32 0, i32 0
  %"$BoolUtils.andb_envload_127" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_16_env_BoolUtils.andb_126"
  %BoolUtils.andb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_envload_127", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb
  %"$retval_17" = alloca { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }
  %"$gasrem_128" = load i64, i64* @_gasrem
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %entry
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem
  %"$$fundef_18_envp_133_load" = load i8*, i8** @_execptr
  %"$$fundef_18_envp_133_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_133_load", i64 24)
  %"$$fundef_18_envp_133" = bitcast i8* %"$$fundef_18_envp_133_salloc" to %"$$fundef_18_env_81"*
  %"$$fundef_18_env_voidp_135" = bitcast %"$$fundef_18_env_81"* %"$$fundef_18_envp_133" to i8*
  %"$$fundef_18_cloval_136" = insertvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (%"$$fundef_18_env_81"*, %TName_Bool*)* @"$fundef_18" to { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_18_env_voidp_135", 1
  %"$$fundef_18_env_BoolUtils.andb_137" = getelementptr inbounds %"$$fundef_18_env_81", %"$$fundef_18_env_81"* %"$$fundef_18_envp_133", i32 0, i32 0
  %"$BoolUtils.andb_138" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_138", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_18_env_BoolUtils.andb_137"
  %"$$fundef_18_env_a_139" = getelementptr inbounds %"$$fundef_18_env_81", %"$$fundef_18_env_81"* %"$$fundef_18_envp_133", i32 0, i32 1
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_18_env_a_139"
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$fundef_18_cloval_136", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_17"
  %"$$retval_17_140" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_17"
  ret { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$retval_17_140"
}

define internal %TName_Bool* @"$fundef_26"(%"$$fundef_26_env_83"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_26_env_b_96" = getelementptr inbounds %"$$fundef_26_env_83", %"$$fundef_26_env_83"* %0, i32 0, i32 0
  %"$b_envload_97" = load %TName_Bool*, %TName_Bool** %"$$fundef_26_env_b_96"
  %b = alloca %TName_Bool*
  store %TName_Bool* %"$b_envload_97", %TName_Bool** %b
  %"$retval_27" = alloca %TName_Bool*
  %"$gasrem_98" = load i64, i64* @_gasrem
  %"$gascmp_99" = icmp ugt i64 2, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %entry
  %"$consume_102" = sub i64 %"$gasrem_98", 2
  store i64 %"$consume_102", i64* @_gasrem
  %"$b_104" = load %TName_Bool*, %TName_Bool** %b
  %"$b_tag_105" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_104", i32 0, i32 0
  %"$b_tag_106" = load i8, i8* %"$b_tag_105"
  switch i8 %"$b_tag_106", label %"$empty_default_107" [
    i8 1, label %"$False_108"
    i8 0, label %"$True_118"
  ]

"$False_108":                                     ; preds = %"$have_gas_101"
  %"$b_109" = bitcast %TName_Bool* %"$b_104" to %CName_False*
  %"$gasrem_110" = load i64, i64* @_gasrem
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$False_108"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$False_108"
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem
  %"$adtval_115_load" = load i8*, i8** @_execptr
  %"$adtval_115_salloc" = call i8* @_salloc(i8* %"$adtval_115_load", i64 1)
  %"$adtval_115" = bitcast i8* %"$adtval_115_salloc" to %CName_False*
  %"$adtgep_116" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_115", i32 0, i32 0
  store i8 1, i8* %"$adtgep_116"
  %"$adtptr_117" = bitcast %CName_False* %"$adtval_115" to %TName_Bool*
  store %TName_Bool* %"$adtptr_117", %TName_Bool** %"$retval_27"
  br label %"$matchsucc_103"

"$True_118":                                      ; preds = %"$have_gas_101"
  %"$b_119" = bitcast %TName_Bool* %"$b_104" to %CName_True*
  %"$gasrem_120" = load i64, i64* @_gasrem
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$True_118"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$True_118"
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem
  store %TName_Bool* %1, %TName_Bool** %"$retval_27"
  br label %"$matchsucc_103"

"$empty_default_107":                             ; preds = %"$have_gas_101"
  br label %"$matchsucc_103"

"$matchsucc_103":                                 ; preds = %"$have_gas_123", %"$have_gas_113", %"$empty_default_107"
  %"$$retval_27_125" = load %TName_Bool*, %TName_Bool** %"$retval_27"
  ret %TName_Bool* %"$$retval_27_125"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_24"(%"$$fundef_24_env_84"* %0, %TName_Bool* %1) {
entry:
  %"$retval_25" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$gasrem_85" = load i64, i64* @_gasrem
  %"$gascmp_86" = icmp ugt i64 1, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %entry
  %"$consume_89" = sub i64 %"$gasrem_85", 1
  store i64 %"$consume_89", i64* @_gasrem
  %"$$fundef_26_envp_90_load" = load i8*, i8** @_execptr
  %"$$fundef_26_envp_90_salloc" = call i8* @_salloc(i8* %"$$fundef_26_envp_90_load", i64 8)
  %"$$fundef_26_envp_90" = bitcast i8* %"$$fundef_26_envp_90_salloc" to %"$$fundef_26_env_83"*
  %"$$fundef_26_env_voidp_92" = bitcast %"$$fundef_26_env_83"* %"$$fundef_26_envp_90" to i8*
  %"$$fundef_26_cloval_93" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_26_env_83"*, %TName_Bool*)* @"$fundef_26" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_26_env_voidp_92", 1
  %"$$fundef_26_env_b_94" = getelementptr inbounds %"$$fundef_26_env_83", %"$$fundef_26_env_83"* %"$$fundef_26_envp_90", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_26_env_b_94"
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_26_cloval_93", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_25"
  %"$$retval_25_95" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_25"
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_25_95"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Bool* @"$scilla_expr_249"(i8* %0) {
entry:
  %"$gasrem_250" = load i64, i64* @_gasrem
  %"$gascmp_251" = icmp ugt i64 1, %"$gasrem_250"
  br i1 %"$gascmp_251", label %"$out_of_gas_252", label %"$have_gas_253"

"$out_of_gas_252":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_253"

"$have_gas_253":                                  ; preds = %"$out_of_gas_252", %entry
  %"$consume_254" = sub i64 %"$gasrem_250", 1
  store i64 %"$consume_254", i64* @_gasrem
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_24_env_84"*, %TName_Bool*)* @"$fundef_24" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb
  %"$gasrem_258" = load i64, i64* @_gasrem
  %"$gascmp_259" = icmp ugt i64 1, %"$gasrem_258"
  br i1 %"$gascmp_259", label %"$out_of_gas_260", label %"$have_gas_261"

"$out_of_gas_260":                                ; preds = %"$have_gas_253"
  call void @_out_of_gas()
  br label %"$have_gas_261"

"$have_gas_261":                                  ; preds = %"$out_of_gas_260", %"$have_gas_253"
  %"$consume_262" = sub i64 %"$gasrem_258", 1
  store i64 %"$consume_262", i64* @_gasrem
  %"$$fundef_16_envp_263_load" = load i8*, i8** @_execptr
  %"$$fundef_16_envp_263_salloc" = call i8* @_salloc(i8* %"$$fundef_16_envp_263_load", i64 16)
  %"$$fundef_16_envp_263" = bitcast i8* %"$$fundef_16_envp_263_salloc" to %"$$fundef_16_env_82"*
  %"$$fundef_16_env_voidp_265" = bitcast %"$$fundef_16_env_82"* %"$$fundef_16_envp_263" to i8*
  %"$$fundef_16_cloval_266" = insertvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (%"$$fundef_16_env_82"*, %TName_Bool*)* @"$fundef_16" to { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_16_env_voidp_265", 1
  %"$$fundef_16_env_BoolUtils.andb_267" = getelementptr inbounds %"$$fundef_16_env_82", %"$$fundef_16_env_82"* %"$$fundef_16_envp_263", i32 0, i32 0
  %"$BoolUtils.andb_268" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_268", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_16_env_BoolUtils.andb_267"
  store { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$fundef_16_cloval_266", { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4
  %"$expr_28" = alloca %TName_Bool*
  %"$gasrem_269" = load i64, i64* @_gasrem
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_261"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_261"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem
  %p1 = alloca [33 x i8]
  %"$gasrem_274" = load i64, i64* @_gasrem
  %"$gascmp_275" = icmp ugt i64 1, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$have_gas_272"
  %"$consume_278" = sub i64 %"$gasrem_274", 1
  store i64 %"$consume_278", i64* @_gasrem
  store [33 x i8] c"\03\14s\81c\B9\BBg\AD\11\AAFO\E6\9A\11G\DF&>\89p\D7\DC\FD\8F\99=\DD9\E8\1B\D9", [33 x i8]* %p1
  %"$gasrem_279" = load i64, i64* @_gasrem
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_277"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem
  %a1 = alloca [20 x i8]
  %"$gasrem_284" = load i64, i64* @_gasrem
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_282"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_282"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem
  store [20 x i8] c"K\AF_\AD\A8\E5\DB\92\C3\D3$&\18\C5\B4q3\AE\00<", [20 x i8]* %a1
  %"$gasrem_289" = load i64, i64* @_gasrem
  %"$gascmp_290" = icmp ugt i64 1, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %"$have_gas_287"
  %"$consume_293" = sub i64 %"$gasrem_289", 1
  store i64 %"$consume_293", i64* @_gasrem
  %a1_gen = alloca [20 x i8]
  %"$execptr_load_294" = load i8*, i8** @_execptr
  %"$schnorr_get_address_p1_295" = alloca [33 x i8]
  %"$p1_296" = load [33 x i8], [33 x i8]* %p1
  store [33 x i8] %"$p1_296", [33 x i8]* %"$schnorr_get_address_p1_295"
  %"$schnorr_get_address_call_297" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_294", [33 x i8]* %"$schnorr_get_address_p1_295")
  %"$schnorr_get_address_298" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_297"
  store [20 x i8] %"$schnorr_get_address_298", [20 x i8]* %a1_gen
  %"$gasrem_299" = load i64, i64* @_gasrem
  %"$gascmp_300" = icmp ugt i64 1, %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %"$have_gas_292"
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %"$have_gas_292"
  %"$consume_303" = sub i64 %"$gasrem_299", 1
  store i64 %"$consume_303", i64* @_gasrem
  %r1 = alloca %TName_Bool*
  %"$execptr_load_304" = load i8*, i8** @_execptr
  %"$eq_a1_305" = alloca [20 x i8]
  %"$a1_306" = load [20 x i8], [20 x i8]* %a1
  store [20 x i8] %"$a1_306", [20 x i8]* %"$eq_a1_305"
  %"$$eq_a1_305_307" = bitcast [20 x i8]* %"$eq_a1_305" to i8*
  %"$eq_a1_gen_308" = alloca [20 x i8]
  %"$a1_gen_309" = load [20 x i8], [20 x i8]* %a1_gen
  store [20 x i8] %"$a1_gen_309", [20 x i8]* %"$eq_a1_gen_308"
  %"$$eq_a1_gen_308_310" = bitcast [20 x i8]* %"$eq_a1_gen_308" to i8*
  %"$eq_call_311" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_304", i32 20, i8* %"$$eq_a1_305_307", i8* %"$$eq_a1_gen_308_310")
  store %TName_Bool* %"$eq_call_311", %TName_Bool** %r1
  %"$gasrem_312" = load i64, i64* @_gasrem
  %"$gascmp_313" = icmp ugt i64 1, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_302"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_302"
  %"$consume_316" = sub i64 %"$gasrem_312", 1
  store i64 %"$consume_316", i64* @_gasrem
  %p2 = alloca [33 x i8]
  %"$gasrem_317" = load i64, i64* @_gasrem
  %"$gascmp_318" = icmp ugt i64 1, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_315"
  %"$consume_321" = sub i64 %"$gasrem_317", 1
  store i64 %"$consume_321", i64* @_gasrem
  store [33 x i8] c"\03L\E2h\ACZ4\008\D8\AC\EB\BD\D766\11\A5\B1\19y\16w^2H\1F]k\10O\AFe", [33 x i8]* %p2
  %"$gasrem_322" = load i64, i64* @_gasrem
  %"$gascmp_323" = icmp ugt i64 1, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$have_gas_320"
  %"$consume_326" = sub i64 %"$gasrem_322", 1
  store i64 %"$consume_326", i64* @_gasrem
  %a2 = alloca [20 x i8]
  %"$gasrem_327" = load i64, i64* @_gasrem
  %"$gascmp_328" = icmp ugt i64 1, %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %"$have_gas_325"
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %"$have_gas_325"
  %"$consume_331" = sub i64 %"$gasrem_327", 1
  store i64 %"$consume_331", i64* @_gasrem
  store [20 x i8] c"D\82a\91Z\80\CD\E9\BD\E7\C7\A7\91hR\00\D3\A0\BFN", [20 x i8]* %a2
  %"$gasrem_332" = load i64, i64* @_gasrem
  %"$gascmp_333" = icmp ugt i64 1, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$have_gas_330"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$have_gas_330"
  %"$consume_336" = sub i64 %"$gasrem_332", 1
  store i64 %"$consume_336", i64* @_gasrem
  %a2_gen = alloca [20 x i8]
  %"$execptr_load_337" = load i8*, i8** @_execptr
  %"$schnorr_get_address_p2_338" = alloca [33 x i8]
  %"$p2_339" = load [33 x i8], [33 x i8]* %p2
  store [33 x i8] %"$p2_339", [33 x i8]* %"$schnorr_get_address_p2_338"
  %"$schnorr_get_address_call_340" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_337", [33 x i8]* %"$schnorr_get_address_p2_338")
  %"$schnorr_get_address_341" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_340"
  store [20 x i8] %"$schnorr_get_address_341", [20 x i8]* %a2_gen
  %"$gasrem_342" = load i64, i64* @_gasrem
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_335"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_335"
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem
  %r2 = alloca %TName_Bool*
  %"$execptr_load_347" = load i8*, i8** @_execptr
  %"$eq_a2_348" = alloca [20 x i8]
  %"$a2_349" = load [20 x i8], [20 x i8]* %a2
  store [20 x i8] %"$a2_349", [20 x i8]* %"$eq_a2_348"
  %"$$eq_a2_348_350" = bitcast [20 x i8]* %"$eq_a2_348" to i8*
  %"$eq_a2_gen_351" = alloca [20 x i8]
  %"$a2_gen_352" = load [20 x i8], [20 x i8]* %a2_gen
  store [20 x i8] %"$a2_gen_352", [20 x i8]* %"$eq_a2_gen_351"
  %"$$eq_a2_gen_351_353" = bitcast [20 x i8]* %"$eq_a2_gen_351" to i8*
  %"$eq_call_354" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_347", i32 20, i8* %"$$eq_a2_348_350", i8* %"$$eq_a2_gen_351_353")
  store %TName_Bool* %"$eq_call_354", %TName_Bool** %r2
  %"$gasrem_355" = load i64, i64* @_gasrem
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %"$have_gas_345"
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %"$have_gas_345"
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem
  %p3 = alloca [33 x i8]
  %"$gasrem_360" = load i64, i64* @_gasrem
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_358"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem
  store [33 x i8] c"\02\FAzP\1F2<\C5>\07\0C\0A\94Sp6\86y\E7W)`\EC$\D8\A08~\F3\B5\0A\22\85", [33 x i8]* %p3
  %"$gasrem_365" = load i64, i64* @_gasrem
  %"$gascmp_366" = icmp ugt i64 1, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %"$have_gas_363"
  %"$consume_369" = sub i64 %"$gasrem_365", 1
  store i64 %"$consume_369", i64* @_gasrem
  %a3 = alloca [20 x i8]
  %"$gasrem_370" = load i64, i64* @_gasrem
  %"$gascmp_371" = icmp ugt i64 1, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$have_gas_368"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$have_gas_368"
  %"$consume_374" = sub i64 %"$gasrem_370", 1
  store i64 %"$consume_374", i64* @_gasrem
  store [20 x i8] c"\DE\D0/\D9y\FC.U\C0$;\D2\F5-\F0\22\C4\0A\DA\1E", [20 x i8]* %a3
  %"$gasrem_375" = load i64, i64* @_gasrem
  %"$gascmp_376" = icmp ugt i64 1, %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$have_gas_373"
  %"$consume_379" = sub i64 %"$gasrem_375", 1
  store i64 %"$consume_379", i64* @_gasrem
  %a3_gen = alloca [20 x i8]
  %"$execptr_load_380" = load i8*, i8** @_execptr
  %"$schnorr_get_address_p3_381" = alloca [33 x i8]
  %"$p3_382" = load [33 x i8], [33 x i8]* %p3
  store [33 x i8] %"$p3_382", [33 x i8]* %"$schnorr_get_address_p3_381"
  %"$schnorr_get_address_call_383" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_380", [33 x i8]* %"$schnorr_get_address_p3_381")
  %"$schnorr_get_address_384" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_383"
  store [20 x i8] %"$schnorr_get_address_384", [20 x i8]* %a3_gen
  %"$gasrem_385" = load i64, i64* @_gasrem
  %"$gascmp_386" = icmp ugt i64 1, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$have_gas_378"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$have_gas_378"
  %"$consume_389" = sub i64 %"$gasrem_385", 1
  store i64 %"$consume_389", i64* @_gasrem
  %r3 = alloca %TName_Bool*
  %"$execptr_load_390" = load i8*, i8** @_execptr
  %"$eq_a3_391" = alloca [20 x i8]
  %"$a3_392" = load [20 x i8], [20 x i8]* %a3
  store [20 x i8] %"$a3_392", [20 x i8]* %"$eq_a3_391"
  %"$$eq_a3_391_393" = bitcast [20 x i8]* %"$eq_a3_391" to i8*
  %"$eq_a3_gen_394" = alloca [20 x i8]
  %"$a3_gen_395" = load [20 x i8], [20 x i8]* %a3_gen
  store [20 x i8] %"$a3_gen_395", [20 x i8]* %"$eq_a3_gen_394"
  %"$$eq_a3_gen_394_396" = bitcast [20 x i8]* %"$eq_a3_gen_394" to i8*
  %"$eq_call_397" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_390", i32 20, i8* %"$$eq_a3_391_393", i8* %"$$eq_a3_gen_394_396")
  store %TName_Bool* %"$eq_call_397", %TName_Bool** %r3
  %"$gasrem_398" = load i64, i64* @_gasrem
  %"$gascmp_399" = icmp ugt i64 1, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_388"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_388"
  %"$consume_402" = sub i64 %"$gasrem_398", 1
  store i64 %"$consume_402", i64* @_gasrem
  %p4 = alloca [33 x i8]
  %"$gasrem_403" = load i64, i64* @_gasrem
  %"$gascmp_404" = icmp ugt i64 1, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$have_gas_401"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$have_gas_401"
  %"$consume_407" = sub i64 %"$gasrem_403", 1
  store i64 %"$consume_407", i64* @_gasrem
  store [33 x i8] c"\03o\86v\E4s\AF \B4\CC\E7\D3'\10=\E4PJ\9C\00\EA\E7\EA\03\D0\A3e\FBH\81z\C9\7F", [33 x i8]* %p4
  %"$gasrem_408" = load i64, i64* @_gasrem
  %"$gascmp_409" = icmp ugt i64 1, %"$gasrem_408"
  br i1 %"$gascmp_409", label %"$out_of_gas_410", label %"$have_gas_411"

"$out_of_gas_410":                                ; preds = %"$have_gas_406"
  call void @_out_of_gas()
  br label %"$have_gas_411"

"$have_gas_411":                                  ; preds = %"$out_of_gas_410", %"$have_gas_406"
  %"$consume_412" = sub i64 %"$gasrem_408", 1
  store i64 %"$consume_412", i64* @_gasrem
  %a4 = alloca [20 x i8]
  %"$gasrem_413" = load i64, i64* @_gasrem
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_411"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_411"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem
  store [20 x i8] c"\13\F0n`){\EAj<@/od\C4\16\A6\B3\1EXn", [20 x i8]* %a4
  %"$gasrem_418" = load i64, i64* @_gasrem
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_416"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem
  %a4_gen = alloca [20 x i8]
  %"$execptr_load_423" = load i8*, i8** @_execptr
  %"$schnorr_get_address_p4_424" = alloca [33 x i8]
  %"$p4_425" = load [33 x i8], [33 x i8]* %p4
  store [33 x i8] %"$p4_425", [33 x i8]* %"$schnorr_get_address_p4_424"
  %"$schnorr_get_address_call_426" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_423", [33 x i8]* %"$schnorr_get_address_p4_424")
  %"$schnorr_get_address_427" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_426"
  store [20 x i8] %"$schnorr_get_address_427", [20 x i8]* %a4_gen
  %"$gasrem_428" = load i64, i64* @_gasrem
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$have_gas_421"
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem
  %r4 = alloca %TName_Bool*
  %"$execptr_load_433" = load i8*, i8** @_execptr
  %"$eq_a4_434" = alloca [20 x i8]
  %"$a4_435" = load [20 x i8], [20 x i8]* %a4
  store [20 x i8] %"$a4_435", [20 x i8]* %"$eq_a4_434"
  %"$$eq_a4_434_436" = bitcast [20 x i8]* %"$eq_a4_434" to i8*
  %"$eq_a4_gen_437" = alloca [20 x i8]
  %"$a4_gen_438" = load [20 x i8], [20 x i8]* %a4_gen
  store [20 x i8] %"$a4_gen_438", [20 x i8]* %"$eq_a4_gen_437"
  %"$$eq_a4_gen_437_439" = bitcast [20 x i8]* %"$eq_a4_gen_437" to i8*
  %"$eq_call_440" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_433", i32 20, i8* %"$$eq_a4_434_436", i8* %"$$eq_a4_gen_437_439")
  store %TName_Bool* %"$eq_call_440", %TName_Bool** %r4
  %"$gasrem_441" = load i64, i64* @_gasrem
  %"$gascmp_442" = icmp ugt i64 1, %"$gasrem_441"
  br i1 %"$gascmp_442", label %"$out_of_gas_443", label %"$have_gas_444"

"$out_of_gas_443":                                ; preds = %"$have_gas_431"
  call void @_out_of_gas()
  br label %"$have_gas_444"

"$have_gas_444":                                  ; preds = %"$out_of_gas_443", %"$have_gas_431"
  %"$consume_445" = sub i64 %"$gasrem_441", 1
  store i64 %"$consume_445", i64* @_gasrem
  %p5 = alloca [33 x i8]
  %"$gasrem_446" = load i64, i64* @_gasrem
  %"$gascmp_447" = icmp ugt i64 1, %"$gasrem_446"
  br i1 %"$gascmp_447", label %"$out_of_gas_448", label %"$have_gas_449"

"$out_of_gas_448":                                ; preds = %"$have_gas_444"
  call void @_out_of_gas()
  br label %"$have_gas_449"

"$have_gas_449":                                  ; preds = %"$out_of_gas_448", %"$have_gas_444"
  %"$consume_450" = sub i64 %"$gasrem_446", 1
  store i64 %"$consume_450", i64* @_gasrem
  store [33 x i8] c"\03L965)\C2\D4\07\8Fr\B8\C4\98\C4\CB\C5\BA^\10\D8fo\E0o\10J'\E0\E4BB\A0", [33 x i8]* %p5
  %"$gasrem_451" = load i64, i64* @_gasrem
  %"$gascmp_452" = icmp ugt i64 1, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$have_gas_449"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$have_gas_449"
  %"$consume_455" = sub i64 %"$gasrem_451", 1
  store i64 %"$consume_455", i64* @_gasrem
  %a5 = alloca [20 x i8]
  %"$gasrem_456" = load i64, i64* @_gasrem
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$have_gas_454"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$have_gas_454"
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem
  store [20 x i8] c"\1A\90\C2S\07\C3\CCq\95\8A\83\FA!:#b\D8Y\CF3", [20 x i8]* %a5
  %"$gasrem_461" = load i64, i64* @_gasrem
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %"$have_gas_459"
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %"$have_gas_459"
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem
  %a5_gen = alloca [20 x i8]
  %"$execptr_load_466" = load i8*, i8** @_execptr
  %"$schnorr_get_address_p5_467" = alloca [33 x i8]
  %"$p5_468" = load [33 x i8], [33 x i8]* %p5
  store [33 x i8] %"$p5_468", [33 x i8]* %"$schnorr_get_address_p5_467"
  %"$schnorr_get_address_call_469" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_466", [33 x i8]* %"$schnorr_get_address_p5_467")
  %"$schnorr_get_address_470" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_469"
  store [20 x i8] %"$schnorr_get_address_470", [20 x i8]* %a5_gen
  %"$gasrem_471" = load i64, i64* @_gasrem
  %"$gascmp_472" = icmp ugt i64 1, %"$gasrem_471"
  br i1 %"$gascmp_472", label %"$out_of_gas_473", label %"$have_gas_474"

"$out_of_gas_473":                                ; preds = %"$have_gas_464"
  call void @_out_of_gas()
  br label %"$have_gas_474"

"$have_gas_474":                                  ; preds = %"$out_of_gas_473", %"$have_gas_464"
  %"$consume_475" = sub i64 %"$gasrem_471", 1
  store i64 %"$consume_475", i64* @_gasrem
  %r5 = alloca %TName_Bool*
  %"$execptr_load_476" = load i8*, i8** @_execptr
  %"$eq_a5_477" = alloca [20 x i8]
  %"$a5_478" = load [20 x i8], [20 x i8]* %a5
  store [20 x i8] %"$a5_478", [20 x i8]* %"$eq_a5_477"
  %"$$eq_a5_477_479" = bitcast [20 x i8]* %"$eq_a5_477" to i8*
  %"$eq_a5_gen_480" = alloca [20 x i8]
  %"$a5_gen_481" = load [20 x i8], [20 x i8]* %a5_gen
  store [20 x i8] %"$a5_gen_481", [20 x i8]* %"$eq_a5_gen_480"
  %"$$eq_a5_gen_480_482" = bitcast [20 x i8]* %"$eq_a5_gen_480" to i8*
  %"$eq_call_483" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_476", i32 20, i8* %"$$eq_a5_477_479", i8* %"$$eq_a5_gen_480_482")
  store %TName_Bool* %"$eq_call_483", %TName_Bool** %r5
  %"$gasrem_484" = load i64, i64* @_gasrem
  %"$gascmp_485" = icmp ugt i64 1, %"$gasrem_484"
  br i1 %"$gascmp_485", label %"$out_of_gas_486", label %"$have_gas_487"

"$out_of_gas_486":                                ; preds = %"$have_gas_474"
  call void @_out_of_gas()
  br label %"$have_gas_487"

"$have_gas_487":                                  ; preds = %"$out_of_gas_486", %"$have_gas_474"
  %"$consume_488" = sub i64 %"$gasrem_484", 1
  store i64 %"$consume_488", i64* @_gasrem
  %p6 = alloca [33 x i8]
  %"$gasrem_489" = load i64, i64* @_gasrem
  %"$gascmp_490" = icmp ugt i64 1, %"$gasrem_489"
  br i1 %"$gascmp_490", label %"$out_of_gas_491", label %"$have_gas_492"

"$out_of_gas_491":                                ; preds = %"$have_gas_487"
  call void @_out_of_gas()
  br label %"$have_gas_492"

"$have_gas_492":                                  ; preds = %"$out_of_gas_491", %"$have_gas_487"
  %"$consume_493" = sub i64 %"$gasrem_489", 1
  store i64 %"$consume_493", i64* @_gasrem
  store [33 x i8] c"\02m\A5\BFl:<\91\C0\8A=\D7\FB\CE\0B\EA\F5\D46\03\9C\97\B0z\0Fa\AAK\94\93\E4g\87", [33 x i8]* %p6
  %"$gasrem_494" = load i64, i64* @_gasrem
  %"$gascmp_495" = icmp ugt i64 1, %"$gasrem_494"
  br i1 %"$gascmp_495", label %"$out_of_gas_496", label %"$have_gas_497"

"$out_of_gas_496":                                ; preds = %"$have_gas_492"
  call void @_out_of_gas()
  br label %"$have_gas_497"

"$have_gas_497":                                  ; preds = %"$out_of_gas_496", %"$have_gas_492"
  %"$consume_498" = sub i64 %"$gasrem_494", 1
  store i64 %"$consume_498", i64* @_gasrem
  %a6 = alloca [20 x i8]
  %"$gasrem_499" = load i64, i64* @_gasrem
  %"$gascmp_500" = icmp ugt i64 1, %"$gasrem_499"
  br i1 %"$gascmp_500", label %"$out_of_gas_501", label %"$have_gas_502"

"$out_of_gas_501":                                ; preds = %"$have_gas_497"
  call void @_out_of_gas()
  br label %"$have_gas_502"

"$have_gas_502":                                  ; preds = %"$out_of_gas_501", %"$have_gas_497"
  %"$consume_503" = sub i64 %"$gasrem_499", 1
  store i64 %"$consume_503", i64* @_gasrem
  store [20 x i8] c"bZ\BA\EB\D8}\AE\9A\B1(\F3\B3\AE\99h\88\13\D9\C5\DF", [20 x i8]* %a6
  %"$gasrem_504" = load i64, i64* @_gasrem
  %"$gascmp_505" = icmp ugt i64 1, %"$gasrem_504"
  br i1 %"$gascmp_505", label %"$out_of_gas_506", label %"$have_gas_507"

"$out_of_gas_506":                                ; preds = %"$have_gas_502"
  call void @_out_of_gas()
  br label %"$have_gas_507"

"$have_gas_507":                                  ; preds = %"$out_of_gas_506", %"$have_gas_502"
  %"$consume_508" = sub i64 %"$gasrem_504", 1
  store i64 %"$consume_508", i64* @_gasrem
  %a6_gen = alloca [20 x i8]
  %"$execptr_load_509" = load i8*, i8** @_execptr
  %"$schnorr_get_address_p6_510" = alloca [33 x i8]
  %"$p6_511" = load [33 x i8], [33 x i8]* %p6
  store [33 x i8] %"$p6_511", [33 x i8]* %"$schnorr_get_address_p6_510"
  %"$schnorr_get_address_call_512" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_509", [33 x i8]* %"$schnorr_get_address_p6_510")
  %"$schnorr_get_address_513" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_512"
  store [20 x i8] %"$schnorr_get_address_513", [20 x i8]* %a6_gen
  %"$gasrem_514" = load i64, i64* @_gasrem
  %"$gascmp_515" = icmp ugt i64 1, %"$gasrem_514"
  br i1 %"$gascmp_515", label %"$out_of_gas_516", label %"$have_gas_517"

"$out_of_gas_516":                                ; preds = %"$have_gas_507"
  call void @_out_of_gas()
  br label %"$have_gas_517"

"$have_gas_517":                                  ; preds = %"$out_of_gas_516", %"$have_gas_507"
  %"$consume_518" = sub i64 %"$gasrem_514", 1
  store i64 %"$consume_518", i64* @_gasrem
  %r6 = alloca %TName_Bool*
  %"$execptr_load_519" = load i8*, i8** @_execptr
  %"$eq_a6_520" = alloca [20 x i8]
  %"$a6_521" = load [20 x i8], [20 x i8]* %a6
  store [20 x i8] %"$a6_521", [20 x i8]* %"$eq_a6_520"
  %"$$eq_a6_520_522" = bitcast [20 x i8]* %"$eq_a6_520" to i8*
  %"$eq_a6_gen_523" = alloca [20 x i8]
  %"$a6_gen_524" = load [20 x i8], [20 x i8]* %a6_gen
  store [20 x i8] %"$a6_gen_524", [20 x i8]* %"$eq_a6_gen_523"
  %"$$eq_a6_gen_523_525" = bitcast [20 x i8]* %"$eq_a6_gen_523" to i8*
  %"$eq_call_526" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_519", i32 20, i8* %"$$eq_a6_520_522", i8* %"$$eq_a6_gen_523_525")
  store %TName_Bool* %"$eq_call_526", %TName_Bool** %r6
  %"$gasrem_527" = load i64, i64* @_gasrem
  %"$gascmp_528" = icmp ugt i64 1, %"$gasrem_527"
  br i1 %"$gascmp_528", label %"$out_of_gas_529", label %"$have_gas_530"

"$out_of_gas_529":                                ; preds = %"$have_gas_517"
  call void @_out_of_gas()
  br label %"$have_gas_530"

"$have_gas_530":                                  ; preds = %"$out_of_gas_529", %"$have_gas_517"
  %"$consume_531" = sub i64 %"$gasrem_527", 1
  store i64 %"$consume_531", i64* @_gasrem
  %p7 = alloca [33 x i8]
  %"$gasrem_532" = load i64, i64* @_gasrem
  %"$gascmp_533" = icmp ugt i64 1, %"$gasrem_532"
  br i1 %"$gascmp_533", label %"$out_of_gas_534", label %"$have_gas_535"

"$out_of_gas_534":                                ; preds = %"$have_gas_530"
  call void @_out_of_gas()
  br label %"$have_gas_535"

"$have_gas_535":                                  ; preds = %"$out_of_gas_534", %"$have_gas_530"
  %"$consume_536" = sub i64 %"$gasrem_532", 1
  store i64 %"$consume_536", i64* @_gasrem
  store [33 x i8] c"\03*f\1F\9DJ\B8\DD\98\18\CE\D2\F6/=\A1O\DD#\E6\8EX\D0\1AJ\E1\86#\1D\7F\B6\09\BB", [33 x i8]* %p7
  %"$gasrem_537" = load i64, i64* @_gasrem
  %"$gascmp_538" = icmp ugt i64 1, %"$gasrem_537"
  br i1 %"$gascmp_538", label %"$out_of_gas_539", label %"$have_gas_540"

"$out_of_gas_539":                                ; preds = %"$have_gas_535"
  call void @_out_of_gas()
  br label %"$have_gas_540"

"$have_gas_540":                                  ; preds = %"$out_of_gas_539", %"$have_gas_535"
  %"$consume_541" = sub i64 %"$gasrem_537", 1
  store i64 %"$consume_541", i64* @_gasrem
  %a7 = alloca [20 x i8]
  %"$gasrem_542" = load i64, i64* @_gasrem
  %"$gascmp_543" = icmp ugt i64 1, %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %"$have_gas_540"
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %"$have_gas_540"
  %"$consume_546" = sub i64 %"$gasrem_542", 1
  store i64 %"$consume_546", i64* @_gasrem
  store [20 x i8] c"6\BA4\09\7F\86\11\91\C4\8C\83\9C\9B\1A\8BY\12\F5\83\CF", [20 x i8]* %a7
  %"$gasrem_547" = load i64, i64* @_gasrem
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$have_gas_545"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$have_gas_545"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem
  %a7_gen = alloca [20 x i8]
  %"$execptr_load_552" = load i8*, i8** @_execptr
  %"$schnorr_get_address_p7_553" = alloca [33 x i8]
  %"$p7_554" = load [33 x i8], [33 x i8]* %p7
  store [33 x i8] %"$p7_554", [33 x i8]* %"$schnorr_get_address_p7_553"
  %"$schnorr_get_address_call_555" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_552", [33 x i8]* %"$schnorr_get_address_p7_553")
  %"$schnorr_get_address_556" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_555"
  store [20 x i8] %"$schnorr_get_address_556", [20 x i8]* %a7_gen
  %"$gasrem_557" = load i64, i64* @_gasrem
  %"$gascmp_558" = icmp ugt i64 1, %"$gasrem_557"
  br i1 %"$gascmp_558", label %"$out_of_gas_559", label %"$have_gas_560"

"$out_of_gas_559":                                ; preds = %"$have_gas_550"
  call void @_out_of_gas()
  br label %"$have_gas_560"

"$have_gas_560":                                  ; preds = %"$out_of_gas_559", %"$have_gas_550"
  %"$consume_561" = sub i64 %"$gasrem_557", 1
  store i64 %"$consume_561", i64* @_gasrem
  %r7 = alloca %TName_Bool*
  %"$execptr_load_562" = load i8*, i8** @_execptr
  %"$eq_a7_563" = alloca [20 x i8]
  %"$a7_564" = load [20 x i8], [20 x i8]* %a7
  store [20 x i8] %"$a7_564", [20 x i8]* %"$eq_a7_563"
  %"$$eq_a7_563_565" = bitcast [20 x i8]* %"$eq_a7_563" to i8*
  %"$eq_a7_gen_566" = alloca [20 x i8]
  %"$a7_gen_567" = load [20 x i8], [20 x i8]* %a7_gen
  store [20 x i8] %"$a7_gen_567", [20 x i8]* %"$eq_a7_gen_566"
  %"$$eq_a7_gen_566_568" = bitcast [20 x i8]* %"$eq_a7_gen_566" to i8*
  %"$eq_call_569" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_562", i32 20, i8* %"$$eq_a7_563_565", i8* %"$$eq_a7_gen_566_568")
  store %TName_Bool* %"$eq_call_569", %TName_Bool** %r7
  %"$gasrem_570" = load i64, i64* @_gasrem
  %"$gascmp_571" = icmp ugt i64 1, %"$gasrem_570"
  br i1 %"$gascmp_571", label %"$out_of_gas_572", label %"$have_gas_573"

"$out_of_gas_572":                                ; preds = %"$have_gas_560"
  call void @_out_of_gas()
  br label %"$have_gas_573"

"$have_gas_573":                                  ; preds = %"$out_of_gas_572", %"$have_gas_560"
  %"$consume_574" = sub i64 %"$gasrem_570", 1
  store i64 %"$consume_574", i64* @_gasrem
  %p8 = alloca [33 x i8]
  %"$gasrem_575" = load i64, i64* @_gasrem
  %"$gascmp_576" = icmp ugt i64 1, %"$gasrem_575"
  br i1 %"$gascmp_576", label %"$out_of_gas_577", label %"$have_gas_578"

"$out_of_gas_577":                                ; preds = %"$have_gas_573"
  call void @_out_of_gas()
  br label %"$have_gas_578"

"$have_gas_578":                                  ; preds = %"$out_of_gas_577", %"$have_gas_573"
  %"$consume_579" = sub i64 %"$gasrem_575", 1
  store i64 %"$consume_579", i64* @_gasrem
  store [33 x i8] c"\03j\94\E9%\BB \0D\CEA\A4l\90&\E0#\B2&\DD[L\B2'\CEvm`\CC\8F\AB!\81H", [33 x i8]* %p8
  %"$gasrem_580" = load i64, i64* @_gasrem
  %"$gascmp_581" = icmp ugt i64 1, %"$gasrem_580"
  br i1 %"$gascmp_581", label %"$out_of_gas_582", label %"$have_gas_583"

"$out_of_gas_582":                                ; preds = %"$have_gas_578"
  call void @_out_of_gas()
  br label %"$have_gas_583"

"$have_gas_583":                                  ; preds = %"$out_of_gas_582", %"$have_gas_578"
  %"$consume_584" = sub i64 %"$gasrem_580", 1
  store i64 %"$consume_584", i64* @_gasrem
  %a8 = alloca [20 x i8]
  %"$gasrem_585" = load i64, i64* @_gasrem
  %"$gascmp_586" = icmp ugt i64 1, %"$gasrem_585"
  br i1 %"$gascmp_586", label %"$out_of_gas_587", label %"$have_gas_588"

"$out_of_gas_587":                                ; preds = %"$have_gas_583"
  call void @_out_of_gas()
  br label %"$have_gas_588"

"$have_gas_588":                                  ; preds = %"$out_of_gas_587", %"$have_gas_583"
  %"$consume_589" = sub i64 %"$gasrem_585", 1
  store i64 %"$consume_589", i64* @_gasrem
  store [20 x i8] c"\D2E:\E7l\9A\86\AA\E5D\FC\A6\99\DB\DC\\Wj\EF:", [20 x i8]* %a8
  %"$gasrem_590" = load i64, i64* @_gasrem
  %"$gascmp_591" = icmp ugt i64 1, %"$gasrem_590"
  br i1 %"$gascmp_591", label %"$out_of_gas_592", label %"$have_gas_593"

"$out_of_gas_592":                                ; preds = %"$have_gas_588"
  call void @_out_of_gas()
  br label %"$have_gas_593"

"$have_gas_593":                                  ; preds = %"$out_of_gas_592", %"$have_gas_588"
  %"$consume_594" = sub i64 %"$gasrem_590", 1
  store i64 %"$consume_594", i64* @_gasrem
  %a8_gen = alloca [20 x i8]
  %"$execptr_load_595" = load i8*, i8** @_execptr
  %"$schnorr_get_address_p8_596" = alloca [33 x i8]
  %"$p8_597" = load [33 x i8], [33 x i8]* %p8
  store [33 x i8] %"$p8_597", [33 x i8]* %"$schnorr_get_address_p8_596"
  %"$schnorr_get_address_call_598" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_595", [33 x i8]* %"$schnorr_get_address_p8_596")
  %"$schnorr_get_address_599" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_598"
  store [20 x i8] %"$schnorr_get_address_599", [20 x i8]* %a8_gen
  %"$gasrem_600" = load i64, i64* @_gasrem
  %"$gascmp_601" = icmp ugt i64 1, %"$gasrem_600"
  br i1 %"$gascmp_601", label %"$out_of_gas_602", label %"$have_gas_603"

"$out_of_gas_602":                                ; preds = %"$have_gas_593"
  call void @_out_of_gas()
  br label %"$have_gas_603"

"$have_gas_603":                                  ; preds = %"$out_of_gas_602", %"$have_gas_593"
  %"$consume_604" = sub i64 %"$gasrem_600", 1
  store i64 %"$consume_604", i64* @_gasrem
  %r8 = alloca %TName_Bool*
  %"$execptr_load_605" = load i8*, i8** @_execptr
  %"$eq_a8_606" = alloca [20 x i8]
  %"$a8_607" = load [20 x i8], [20 x i8]* %a8
  store [20 x i8] %"$a8_607", [20 x i8]* %"$eq_a8_606"
  %"$$eq_a8_606_608" = bitcast [20 x i8]* %"$eq_a8_606" to i8*
  %"$eq_a8_gen_609" = alloca [20 x i8]
  %"$a8_gen_610" = load [20 x i8], [20 x i8]* %a8_gen
  store [20 x i8] %"$a8_gen_610", [20 x i8]* %"$eq_a8_gen_609"
  %"$$eq_a8_gen_609_611" = bitcast [20 x i8]* %"$eq_a8_gen_609" to i8*
  %"$eq_call_612" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_605", i32 20, i8* %"$$eq_a8_606_608", i8* %"$$eq_a8_gen_609_611")
  store %TName_Bool* %"$eq_call_612", %TName_Bool** %r8
  %"$gasrem_613" = load i64, i64* @_gasrem
  %"$gascmp_614" = icmp ugt i64 1, %"$gasrem_613"
  br i1 %"$gascmp_614", label %"$out_of_gas_615", label %"$have_gas_616"

"$out_of_gas_615":                                ; preds = %"$have_gas_603"
  call void @_out_of_gas()
  br label %"$have_gas_616"

"$have_gas_616":                                  ; preds = %"$out_of_gas_615", %"$have_gas_603"
  %"$consume_617" = sub i64 %"$gasrem_613", 1
  store i64 %"$consume_617", i64* @_gasrem
  %"$gasrem_618" = load i64, i64* @_gasrem
  %"$gascmp_619" = icmp ugt i64 1, %"$gasrem_618"
  br i1 %"$gascmp_619", label %"$out_of_gas_620", label %"$have_gas_621"

"$out_of_gas_620":                                ; preds = %"$have_gas_616"
  call void @_out_of_gas()
  br label %"$have_gas_621"

"$have_gas_621":                                  ; preds = %"$out_of_gas_620", %"$have_gas_616"
  %"$consume_622" = sub i64 %"$gasrem_618", 1
  store i64 %"$consume_622", i64* @_gasrem
  %"$gasrem_623" = load i64, i64* @_gasrem
  %"$gascmp_624" = icmp ugt i64 1, %"$gasrem_623"
  br i1 %"$gascmp_624", label %"$out_of_gas_625", label %"$have_gas_626"

"$out_of_gas_625":                                ; preds = %"$have_gas_621"
  call void @_out_of_gas()
  br label %"$have_gas_626"

"$have_gas_626":                                  ; preds = %"$out_of_gas_625", %"$have_gas_621"
  %"$consume_627" = sub i64 %"$gasrem_623", 1
  store i64 %"$consume_627", i64* @_gasrem
  %"$gasrem_628" = load i64, i64* @_gasrem
  %"$gascmp_629" = icmp ugt i64 1, %"$gasrem_628"
  br i1 %"$gascmp_629", label %"$out_of_gas_630", label %"$have_gas_631"

"$out_of_gas_630":                                ; preds = %"$have_gas_626"
  call void @_out_of_gas()
  br label %"$have_gas_631"

"$have_gas_631":                                  ; preds = %"$out_of_gas_630", %"$have_gas_626"
  %"$consume_632" = sub i64 %"$gasrem_628", 1
  store i64 %"$consume_632", i64* @_gasrem
  %"$gasrem_633" = load i64, i64* @_gasrem
  %"$gascmp_634" = icmp ugt i64 1, %"$gasrem_633"
  br i1 %"$gascmp_634", label %"$out_of_gas_635", label %"$have_gas_636"

"$out_of_gas_635":                                ; preds = %"$have_gas_631"
  call void @_out_of_gas()
  br label %"$have_gas_636"

"$have_gas_636":                                  ; preds = %"$out_of_gas_635", %"$have_gas_631"
  %"$consume_637" = sub i64 %"$gasrem_633", 1
  store i64 %"$consume_637", i64* @_gasrem
  %res1 = alloca %TName_Bool*
  %"$gasrem_638" = load i64, i64* @_gasrem
  %"$gascmp_639" = icmp ugt i64 1, %"$gasrem_638"
  br i1 %"$gascmp_639", label %"$out_of_gas_640", label %"$have_gas_641"

"$out_of_gas_640":                                ; preds = %"$have_gas_636"
  call void @_out_of_gas()
  br label %"$have_gas_641"

"$have_gas_641":                                  ; preds = %"$out_of_gas_640", %"$have_gas_636"
  %"$consume_642" = sub i64 %"$gasrem_638", 1
  store i64 %"$consume_642", i64* @_gasrem
  %"$BoolUtils.and_4_6" = alloca { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.and_4_643" = load { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4
  %"$BoolUtils.and_4_fptr_644" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_643", 0
  %"$BoolUtils.and_4_envptr_645" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_643", 1
  %"$r1_646" = load %TName_Bool*, %TName_Bool** %r1
  %"$BoolUtils.and_4_call_647" = call { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_fptr_644"(i8* %"$BoolUtils.and_4_envptr_645", %TName_Bool* %"$r1_646")
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_call_647", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_6"
  %"$BoolUtils.and_4_7" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }
  %"$$BoolUtils.and_4_6_648" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_6"
  %"$$BoolUtils.and_4_6_fptr_649" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_648", 0
  %"$$BoolUtils.and_4_6_envptr_650" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_648", 1
  %"$r2_651" = load %TName_Bool*, %TName_Bool** %r2
  %"$$BoolUtils.and_4_6_call_652" = call { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_fptr_649"(i8* %"$$BoolUtils.and_4_6_envptr_650", %TName_Bool* %"$r2_651")
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_call_652", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_7"
  %"$BoolUtils.and_4_8" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$$BoolUtils.and_4_7_653" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_7"
  %"$$BoolUtils.and_4_7_fptr_654" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_653", 0
  %"$$BoolUtils.and_4_7_envptr_655" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_653", 1
  %"$r3_656" = load %TName_Bool*, %TName_Bool** %r3
  %"$$BoolUtils.and_4_7_call_657" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_fptr_654"(i8* %"$$BoolUtils.and_4_7_envptr_655", %TName_Bool* %"$r3_656")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_call_657", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_8"
  %"$BoolUtils.and_4_9" = alloca %TName_Bool*
  %"$$BoolUtils.and_4_8_658" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_8"
  %"$$BoolUtils.and_4_8_fptr_659" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_8_658", 0
  %"$$BoolUtils.and_4_8_envptr_660" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_8_658", 1
  %"$r4_661" = load %TName_Bool*, %TName_Bool** %r4
  %"$$BoolUtils.and_4_8_call_662" = call %TName_Bool* %"$$BoolUtils.and_4_8_fptr_659"(i8* %"$$BoolUtils.and_4_8_envptr_660", %TName_Bool* %"$r4_661")
  store %TName_Bool* %"$$BoolUtils.and_4_8_call_662", %TName_Bool** %"$BoolUtils.and_4_9"
  %"$$BoolUtils.and_4_9_663" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.and_4_9"
  store %TName_Bool* %"$$BoolUtils.and_4_9_663", %TName_Bool** %res1
  %"$gasrem_664" = load i64, i64* @_gasrem
  %"$gascmp_665" = icmp ugt i64 1, %"$gasrem_664"
  br i1 %"$gascmp_665", label %"$out_of_gas_666", label %"$have_gas_667"

"$out_of_gas_666":                                ; preds = %"$have_gas_641"
  call void @_out_of_gas()
  br label %"$have_gas_667"

"$have_gas_667":                                  ; preds = %"$out_of_gas_666", %"$have_gas_641"
  %"$consume_668" = sub i64 %"$gasrem_664", 1
  store i64 %"$consume_668", i64* @_gasrem
  %res2 = alloca %TName_Bool*
  %"$gasrem_669" = load i64, i64* @_gasrem
  %"$gascmp_670" = icmp ugt i64 1, %"$gasrem_669"
  br i1 %"$gascmp_670", label %"$out_of_gas_671", label %"$have_gas_672"

"$out_of_gas_671":                                ; preds = %"$have_gas_667"
  call void @_out_of_gas()
  br label %"$have_gas_672"

"$have_gas_672":                                  ; preds = %"$out_of_gas_671", %"$have_gas_667"
  %"$consume_673" = sub i64 %"$gasrem_669", 1
  store i64 %"$consume_673", i64* @_gasrem
  %"$BoolUtils.and_4_10" = alloca { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.and_4_674" = load { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4
  %"$BoolUtils.and_4_fptr_675" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_674", 0
  %"$BoolUtils.and_4_envptr_676" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_674", 1
  %"$r5_677" = load %TName_Bool*, %TName_Bool** %r5
  %"$BoolUtils.and_4_call_678" = call { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_fptr_675"(i8* %"$BoolUtils.and_4_envptr_676", %TName_Bool* %"$r5_677")
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_call_678", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_10"
  %"$BoolUtils.and_4_11" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }
  %"$$BoolUtils.and_4_10_679" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_10"
  %"$$BoolUtils.and_4_10_fptr_680" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_679", 0
  %"$$BoolUtils.and_4_10_envptr_681" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_679", 1
  %"$r6_682" = load %TName_Bool*, %TName_Bool** %r6
  %"$$BoolUtils.and_4_10_call_683" = call { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_fptr_680"(i8* %"$$BoolUtils.and_4_10_envptr_681", %TName_Bool* %"$r6_682")
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_call_683", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_11"
  %"$BoolUtils.and_4_12" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$$BoolUtils.and_4_11_684" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_11"
  %"$$BoolUtils.and_4_11_fptr_685" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_684", 0
  %"$$BoolUtils.and_4_11_envptr_686" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_684", 1
  %"$r7_687" = load %TName_Bool*, %TName_Bool** %r7
  %"$$BoolUtils.and_4_11_call_688" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_fptr_685"(i8* %"$$BoolUtils.and_4_11_envptr_686", %TName_Bool* %"$r7_687")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_call_688", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_12"
  %"$BoolUtils.and_4_13" = alloca %TName_Bool*
  %"$$BoolUtils.and_4_12_689" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_12"
  %"$$BoolUtils.and_4_12_fptr_690" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_12_689", 0
  %"$$BoolUtils.and_4_12_envptr_691" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_12_689", 1
  %"$r8_692" = load %TName_Bool*, %TName_Bool** %r8
  %"$$BoolUtils.and_4_12_call_693" = call %TName_Bool* %"$$BoolUtils.and_4_12_fptr_690"(i8* %"$$BoolUtils.and_4_12_envptr_691", %TName_Bool* %"$r8_692")
  store %TName_Bool* %"$$BoolUtils.and_4_12_call_693", %TName_Bool** %"$BoolUtils.and_4_13"
  %"$$BoolUtils.and_4_13_694" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.and_4_13"
  store %TName_Bool* %"$$BoolUtils.and_4_13_694", %TName_Bool** %res2
  %"$gasrem_695" = load i64, i64* @_gasrem
  %"$gascmp_696" = icmp ugt i64 1, %"$gasrem_695"
  br i1 %"$gascmp_696", label %"$out_of_gas_697", label %"$have_gas_698"

"$out_of_gas_697":                                ; preds = %"$have_gas_672"
  call void @_out_of_gas()
  br label %"$have_gas_698"

"$have_gas_698":                                  ; preds = %"$out_of_gas_697", %"$have_gas_672"
  %"$consume_699" = sub i64 %"$gasrem_695", 1
  store i64 %"$consume_699", i64* @_gasrem
  %"$BoolUtils.andb_14" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.andb_700" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb
  %"$BoolUtils.andb_fptr_701" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_700", 0
  %"$BoolUtils.andb_envptr_702" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_700", 1
  %"$res1_703" = load %TName_Bool*, %TName_Bool** %res1
  %"$BoolUtils.andb_call_704" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_701"(i8* %"$BoolUtils.andb_envptr_702", %TName_Bool* %"$res1_703")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_704", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_14"
  %"$BoolUtils.andb_15" = alloca %TName_Bool*
  %"$$BoolUtils.andb_14_705" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_14"
  %"$$BoolUtils.andb_14_fptr_706" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_14_705", 0
  %"$$BoolUtils.andb_14_envptr_707" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_14_705", 1
  %"$res2_708" = load %TName_Bool*, %TName_Bool** %res2
  %"$$BoolUtils.andb_14_call_709" = call %TName_Bool* %"$$BoolUtils.andb_14_fptr_706"(i8* %"$$BoolUtils.andb_14_envptr_707", %TName_Bool* %"$res2_708")
  store %TName_Bool* %"$$BoolUtils.andb_14_call_709", %TName_Bool** %"$BoolUtils.andb_15"
  %"$$BoolUtils.andb_15_710" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_15"
  store %TName_Bool* %"$$BoolUtils.andb_15_710", %TName_Bool** %"$expr_28"
  %"$$expr_28_711" = load %TName_Bool*, %TName_Bool** %"$expr_28"
  ret %TName_Bool* %"$$expr_28_711"
}

declare [20 x i8]* @_schnorr_get_address(i8*, [33 x i8]*)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_712" = call %TName_Bool* @"$scilla_expr_249"(i8* null)
  %"$memvoidcast_713" = bitcast %TName_Bool* %"$exprval_712" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_65", i8* %"$memvoidcast_713")
  ret void
}
