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

define internal %TName_Bool* @"$fundef_22"(%"$$fundef_22_env_79"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$$fundef_22_env_BoolUtils.andb_183" = getelementptr inbounds %"$$fundef_22_env_79", %"$$fundef_22_env_79"* %0, i32 0, i32 0
  %"$BoolUtils.andb_envload_184" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_22_env_BoolUtils.andb_183", align 8
  %BoolUtils.andb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_envload_184", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  %"$$fundef_22_env_a_185" = getelementptr inbounds %"$$fundef_22_env_79", %"$$fundef_22_env_79"* %0, i32 0, i32 1
  %"$a_envload_186" = load %TName_Bool*, %TName_Bool** %"$$fundef_22_env_a_185", align 8
  %a = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$a_envload_186", %TName_Bool** %a, align 8
  %"$$fundef_22_env_b_187" = getelementptr inbounds %"$$fundef_22_env_79", %"$$fundef_22_env_79"* %0, i32 0, i32 2
  %"$b_envload_188" = load %TName_Bool*, %TName_Bool** %"$$fundef_22_env_b_187", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_188", %TName_Bool** %b, align 8
  %"$$fundef_22_env_c_189" = getelementptr inbounds %"$$fundef_22_env_79", %"$$fundef_22_env_79"* %0, i32 0, i32 3
  %"$c_envload_190" = load %TName_Bool*, %TName_Bool** %"$$fundef_22_env_c_189", align 8
  %c = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$c_envload_190", %TName_Bool** %c, align 8
  %"$retval_23" = alloca %TName_Bool*, align 8
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 1, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %entry
  %"$consume_195" = sub i64 %"$gasrem_191", 1
  store i64 %"$consume_195", i64* @_gasrem, align 8
  %t1 = alloca %TName_Bool*, align 8
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 1, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %"$have_gas_194"
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %"$have_gas_194"
  %"$consume_200" = sub i64 %"$gasrem_196", 1
  store i64 %"$consume_200", i64* @_gasrem, align 8
  %"$BoolUtils.andb_0" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_201" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_202" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_201", 0
  %"$BoolUtils.andb_envptr_203" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_201", 1
  %"$a_204" = load %TName_Bool*, %TName_Bool** %a, align 8
  %"$BoolUtils.andb_call_205" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_202"(i8* %"$BoolUtils.andb_envptr_203", %TName_Bool* %"$a_204"), !dbg !9
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_205", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_0", align 8, !dbg !9
  %"$BoolUtils.andb_1" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_0_206" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_0", align 8
  %"$$BoolUtils.andb_0_fptr_207" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_0_206", 0
  %"$$BoolUtils.andb_0_envptr_208" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_0_206", 1
  %"$b_209" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$$BoolUtils.andb_0_call_210" = call %TName_Bool* %"$$BoolUtils.andb_0_fptr_207"(i8* %"$$BoolUtils.andb_0_envptr_208", %TName_Bool* %"$b_209"), !dbg !9
  store %TName_Bool* %"$$BoolUtils.andb_0_call_210", %TName_Bool** %"$BoolUtils.andb_1", align 8, !dbg !9
  %"$$BoolUtils.andb_1_211" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_1", align 8
  store %TName_Bool* %"$$BoolUtils.andb_1_211", %TName_Bool** %t1, align 8, !dbg !9
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 1, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %"$have_gas_199"
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %"$have_gas_199"
  %"$consume_216" = sub i64 %"$gasrem_212", 1
  store i64 %"$consume_216", i64* @_gasrem, align 8
  %t2 = alloca %TName_Bool*, align 8
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_215"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_215"
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %"$BoolUtils.andb_2" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_222" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_223" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_222", 0
  %"$BoolUtils.andb_envptr_224" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_222", 1
  %"$t1_225" = load %TName_Bool*, %TName_Bool** %t1, align 8
  %"$BoolUtils.andb_call_226" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_223"(i8* %"$BoolUtils.andb_envptr_224", %TName_Bool* %"$t1_225"), !dbg !10
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_226", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_2", align 8, !dbg !10
  %"$BoolUtils.andb_3" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_2_227" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_2", align 8
  %"$$BoolUtils.andb_2_fptr_228" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_2_227", 0
  %"$$BoolUtils.andb_2_envptr_229" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_2_227", 1
  %"$c_230" = load %TName_Bool*, %TName_Bool** %c, align 8
  %"$$BoolUtils.andb_2_call_231" = call %TName_Bool* %"$$BoolUtils.andb_2_fptr_228"(i8* %"$$BoolUtils.andb_2_envptr_229", %TName_Bool* %"$c_230"), !dbg !10
  store %TName_Bool* %"$$BoolUtils.andb_2_call_231", %TName_Bool** %"$BoolUtils.andb_3", align 8, !dbg !10
  %"$$BoolUtils.andb_3_232" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_3", align 8
  store %TName_Bool* %"$$BoolUtils.andb_3_232", %TName_Bool** %t2, align 8, !dbg !10
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_220"
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %"$BoolUtils.andb_4" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_238" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_239" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_238", 0
  %"$BoolUtils.andb_envptr_240" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_238", 1
  %"$t2_241" = load %TName_Bool*, %TName_Bool** %t2, align 8
  %"$BoolUtils.andb_call_242" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_239"(i8* %"$BoolUtils.andb_envptr_240", %TName_Bool* %"$t2_241"), !dbg !11
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_242", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_4", align 8, !dbg !11
  %"$BoolUtils.andb_5" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_4_243" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_4", align 8
  %"$$BoolUtils.andb_4_fptr_244" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_4_243", 0
  %"$$BoolUtils.andb_4_envptr_245" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_4_243", 1
  %"$$BoolUtils.andb_4_call_246" = call %TName_Bool* %"$$BoolUtils.andb_4_fptr_244"(i8* %"$$BoolUtils.andb_4_envptr_245", %TName_Bool* %1), !dbg !11
  store %TName_Bool* %"$$BoolUtils.andb_4_call_246", %TName_Bool** %"$BoolUtils.andb_5", align 8, !dbg !11
  %"$$BoolUtils.andb_5_247" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_5", align 8
  store %TName_Bool* %"$$BoolUtils.andb_5_247", %TName_Bool** %"$retval_23", align 8, !dbg !11
  %"$$retval_23_248" = load %TName_Bool*, %TName_Bool** %"$retval_23", align 8
  ret %TName_Bool* %"$$retval_23_248"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_20"(%"$$fundef_20_env_80"* %0, %TName_Bool* %1) !dbg !12 {
entry:
  %"$$fundef_20_env_BoolUtils.andb_160" = getelementptr inbounds %"$$fundef_20_env_80", %"$$fundef_20_env_80"* %0, i32 0, i32 0
  %"$BoolUtils.andb_envload_161" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_20_env_BoolUtils.andb_160", align 8
  %BoolUtils.andb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_envload_161", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  %"$$fundef_20_env_a_162" = getelementptr inbounds %"$$fundef_20_env_80", %"$$fundef_20_env_80"* %0, i32 0, i32 1
  %"$a_envload_163" = load %TName_Bool*, %TName_Bool** %"$$fundef_20_env_a_162", align 8
  %a = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$a_envload_163", %TName_Bool** %a, align 8
  %"$$fundef_20_env_b_164" = getelementptr inbounds %"$$fundef_20_env_80", %"$$fundef_20_env_80"* %0, i32 0, i32 2
  %"$b_envload_165" = load %TName_Bool*, %TName_Bool** %"$$fundef_20_env_b_164", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_165", %TName_Bool** %b, align 8
  %"$retval_21" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %entry
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  %"$$fundef_22_envp_171_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_22_envp_171_salloc" = call i8* @_salloc(i8* %"$$fundef_22_envp_171_load", i64 40)
  %"$$fundef_22_envp_171" = bitcast i8* %"$$fundef_22_envp_171_salloc" to %"$$fundef_22_env_79"*
  %"$$fundef_22_env_voidp_173" = bitcast %"$$fundef_22_env_79"* %"$$fundef_22_envp_171" to i8*
  %"$$fundef_22_cloval_174" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_22_env_79"*, %TName_Bool*)* @"$fundef_22" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_22_env_voidp_173", 1
  %"$$fundef_22_env_BoolUtils.andb_175" = getelementptr inbounds %"$$fundef_22_env_79", %"$$fundef_22_env_79"* %"$$fundef_22_envp_171", i32 0, i32 0
  %"$BoolUtils.andb_176" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_176", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_22_env_BoolUtils.andb_175", align 8
  %"$$fundef_22_env_a_177" = getelementptr inbounds %"$$fundef_22_env_79", %"$$fundef_22_env_79"* %"$$fundef_22_envp_171", i32 0, i32 1
  %"$a_178" = load %TName_Bool*, %TName_Bool** %a, align 8
  store %TName_Bool* %"$a_178", %TName_Bool** %"$$fundef_22_env_a_177", align 8
  %"$$fundef_22_env_b_179" = getelementptr inbounds %"$$fundef_22_env_79", %"$$fundef_22_env_79"* %"$$fundef_22_envp_171", i32 0, i32 2
  %"$b_180" = load %TName_Bool*, %TName_Bool** %b, align 8
  store %TName_Bool* %"$b_180", %TName_Bool** %"$$fundef_22_env_b_179", align 8
  %"$$fundef_22_env_c_181" = getelementptr inbounds %"$$fundef_22_env_79", %"$$fundef_22_env_79"* %"$$fundef_22_envp_171", i32 0, i32 3
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_22_env_c_181", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_22_cloval_174", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_21", align 8, !dbg !13
  %"$$retval_21_182" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_21", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_21_182"
}

define internal { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } @"$fundef_18"(%"$$fundef_18_env_81"* %0, %TName_Bool* %1) !dbg !14 {
entry:
  %"$$fundef_18_env_BoolUtils.andb_141" = getelementptr inbounds %"$$fundef_18_env_81", %"$$fundef_18_env_81"* %0, i32 0, i32 0
  %"$BoolUtils.andb_envload_142" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_18_env_BoolUtils.andb_141", align 8
  %BoolUtils.andb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_envload_142", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  %"$$fundef_18_env_a_143" = getelementptr inbounds %"$$fundef_18_env_81", %"$$fundef_18_env_81"* %0, i32 0, i32 1
  %"$a_envload_144" = load %TName_Bool*, %TName_Bool** %"$$fundef_18_env_a_143", align 8
  %a = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$a_envload_144", %TName_Bool** %a, align 8
  %"$retval_19" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %entry
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$$fundef_20_envp_150_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_20_envp_150_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_150_load", i64 32)
  %"$$fundef_20_envp_150" = bitcast i8* %"$$fundef_20_envp_150_salloc" to %"$$fundef_20_env_80"*
  %"$$fundef_20_env_voidp_152" = bitcast %"$$fundef_20_env_80"* %"$$fundef_20_envp_150" to i8*
  %"$$fundef_20_cloval_153" = insertvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_20_env_80"*, %TName_Bool*)* @"$fundef_20" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_20_env_voidp_152", 1
  %"$$fundef_20_env_BoolUtils.andb_154" = getelementptr inbounds %"$$fundef_20_env_80", %"$$fundef_20_env_80"* %"$$fundef_20_envp_150", i32 0, i32 0
  %"$BoolUtils.andb_155" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_155", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_20_env_BoolUtils.andb_154", align 8
  %"$$fundef_20_env_a_156" = getelementptr inbounds %"$$fundef_20_env_80", %"$$fundef_20_env_80"* %"$$fundef_20_envp_150", i32 0, i32 1
  %"$a_157" = load %TName_Bool*, %TName_Bool** %a, align 8
  store %TName_Bool* %"$a_157", %TName_Bool** %"$$fundef_20_env_a_156", align 8
  %"$$fundef_20_env_b_158" = getelementptr inbounds %"$$fundef_20_env_80", %"$$fundef_20_env_80"* %"$$fundef_20_envp_150", i32 0, i32 2
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_20_env_b_158", align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$fundef_20_cloval_153", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_19", align 8, !dbg !15
  %"$$retval_19_159" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_19", align 8
  ret { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$retval_19_159"
}

define internal { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } @"$fundef_16"(%"$$fundef_16_env_82"* %0, %TName_Bool* %1) !dbg !16 {
entry:
  %"$$fundef_16_env_BoolUtils.andb_126" = getelementptr inbounds %"$$fundef_16_env_82", %"$$fundef_16_env_82"* %0, i32 0, i32 0
  %"$BoolUtils.andb_envload_127" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_16_env_BoolUtils.andb_126", align 8
  %BoolUtils.andb = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_envload_127", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  %"$retval_17" = alloca { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %entry
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  %"$$fundef_18_envp_133_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_18_envp_133_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_133_load", i64 24)
  %"$$fundef_18_envp_133" = bitcast i8* %"$$fundef_18_envp_133_salloc" to %"$$fundef_18_env_81"*
  %"$$fundef_18_env_voidp_135" = bitcast %"$$fundef_18_env_81"* %"$$fundef_18_envp_133" to i8*
  %"$$fundef_18_cloval_136" = insertvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (%"$$fundef_18_env_81"*, %TName_Bool*)* @"$fundef_18" to { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_18_env_voidp_135", 1
  %"$$fundef_18_env_BoolUtils.andb_137" = getelementptr inbounds %"$$fundef_18_env_81", %"$$fundef_18_env_81"* %"$$fundef_18_envp_133", i32 0, i32 0
  %"$BoolUtils.andb_138" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %BoolUtils.andb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_138", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_18_env_BoolUtils.andb_137", align 8
  %"$$fundef_18_env_a_139" = getelementptr inbounds %"$$fundef_18_env_81", %"$$fundef_18_env_81"* %"$$fundef_18_envp_133", i32 0, i32 1
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_18_env_a_139", align 8
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$fundef_18_cloval_136", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_17", align 8, !dbg !17
  %"$$retval_17_140" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$retval_17", align 8
  ret { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$retval_17_140"
}

define internal %TName_Bool* @"$fundef_26"(%"$$fundef_26_env_83"* %0, %TName_Bool* %1) !dbg !18 {
entry:
  %"$$fundef_26_env_b_96" = getelementptr inbounds %"$$fundef_26_env_83", %"$$fundef_26_env_83"* %0, i32 0, i32 0
  %"$b_envload_97" = load %TName_Bool*, %TName_Bool** %"$$fundef_26_env_b_96", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_97", %TName_Bool** %b, align 8
  %"$retval_27" = alloca %TName_Bool*, align 8
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 2, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %entry
  %"$consume_102" = sub i64 %"$gasrem_98", 2
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %"$b_104" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_105" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_104", i32 0, i32 0
  %"$b_tag_106" = load i8, i8* %"$b_tag_105", align 1
  switch i8 %"$b_tag_106", label %"$empty_default_107" [
    i8 1, label %"$False_108"
    i8 0, label %"$True_118"
  ], !dbg !19

"$False_108":                                     ; preds = %"$have_gas_101"
  %"$b_109" = bitcast %TName_Bool* %"$b_104" to %CName_False*
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$False_108"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$False_108"
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %"$adtval_115_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_115_salloc" = call i8* @_salloc(i8* %"$adtval_115_load", i64 1)
  %"$adtval_115" = bitcast i8* %"$adtval_115_salloc" to %CName_False*
  %"$adtgep_116" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_115", i32 0, i32 0
  store i8 1, i8* %"$adtgep_116", align 1
  %"$adtptr_117" = bitcast %CName_False* %"$adtval_115" to %TName_Bool*
  store %TName_Bool* %"$adtptr_117", %TName_Bool** %"$retval_27", align 8, !dbg !20
  br label %"$matchsucc_103"

"$True_118":                                      ; preds = %"$have_gas_101"
  %"$b_119" = bitcast %TName_Bool* %"$b_104" to %CName_True*
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$True_118"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$True_118"
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_27", align 8, !dbg !23
  br label %"$matchsucc_103"

"$empty_default_107":                             ; preds = %"$have_gas_101"
  br label %"$matchsucc_103"

"$matchsucc_103":                                 ; preds = %"$have_gas_123", %"$have_gas_113", %"$empty_default_107"
  %"$$retval_27_125" = load %TName_Bool*, %TName_Bool** %"$retval_27", align 8
  ret %TName_Bool* %"$$retval_27_125"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_24"(%"$$fundef_24_env_84"* %0, %TName_Bool* %1) !dbg !25 {
entry:
  %"$retval_25" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_85" = load i64, i64* @_gasrem, align 8
  %"$gascmp_86" = icmp ugt i64 1, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %entry
  %"$consume_89" = sub i64 %"$gasrem_85", 1
  store i64 %"$consume_89", i64* @_gasrem, align 8
  %"$$fundef_26_envp_90_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_26_envp_90_salloc" = call i8* @_salloc(i8* %"$$fundef_26_envp_90_load", i64 8)
  %"$$fundef_26_envp_90" = bitcast i8* %"$$fundef_26_envp_90_salloc" to %"$$fundef_26_env_83"*
  %"$$fundef_26_env_voidp_92" = bitcast %"$$fundef_26_env_83"* %"$$fundef_26_envp_90" to i8*
  %"$$fundef_26_cloval_93" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_26_env_83"*, %TName_Bool*)* @"$fundef_26" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_26_env_voidp_92", 1
  %"$$fundef_26_env_b_94" = getelementptr inbounds %"$$fundef_26_env_83", %"$$fundef_26_env_83"* %"$$fundef_26_envp_90", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_26_env_b_94", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_26_cloval_93", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_25", align 8, !dbg !26
  %"$$retval_25_95" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_25", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_25_95"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !27 {
entry:
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !29 {
entry:
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %entry
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_24_env_84"*, %TName_Bool*)* @"$fundef_24" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !30
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 1, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$have_gas_252"
  %"$consume_261" = sub i64 %"$gasrem_257", 1
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %"$$fundef_16_envp_262_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_16_envp_262_salloc" = call i8* @_salloc(i8* %"$$fundef_16_envp_262_load", i64 16)
  %"$$fundef_16_envp_262" = bitcast i8* %"$$fundef_16_envp_262_salloc" to %"$$fundef_16_env_82"*
  %"$$fundef_16_env_voidp_264" = bitcast %"$$fundef_16_env_82"* %"$$fundef_16_envp_262" to i8*
  %"$$fundef_16_cloval_265" = insertvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (%"$$fundef_16_env_82"*, %TName_Bool*)* @"$fundef_16" to { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_16_env_voidp_264", 1
  %"$$fundef_16_env_BoolUtils.andb_266" = getelementptr inbounds %"$$fundef_16_env_82", %"$$fundef_16_env_82"* %"$$fundef_16_envp_262", i32 0, i32 0
  %"$BoolUtils.andb_267" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_267", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$$fundef_16_env_BoolUtils.andb_266", align 8
  store { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$fundef_16_cloval_265", { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4, align 8, !dbg !31
  %"$expr_28" = alloca %TName_Bool*, align 8
  %"$gasrem_268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_269" = icmp ugt i64 1, %"$gasrem_268"
  br i1 %"$gascmp_269", label %"$out_of_gas_270", label %"$have_gas_271"

"$out_of_gas_270":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_271"

"$have_gas_271":                                  ; preds = %"$out_of_gas_270", %"$have_gas_260"
  %"$consume_272" = sub i64 %"$gasrem_268", 1
  store i64 %"$consume_272", i64* @_gasrem, align 8
  %p1 = alloca [33 x i8], align 1
  %"$gasrem_273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_274" = icmp ugt i64 1, %"$gasrem_273"
  br i1 %"$gascmp_274", label %"$out_of_gas_275", label %"$have_gas_276"

"$out_of_gas_275":                                ; preds = %"$have_gas_271"
  call void @_out_of_gas()
  br label %"$have_gas_276"

"$have_gas_276":                                  ; preds = %"$out_of_gas_275", %"$have_gas_271"
  %"$consume_277" = sub i64 %"$gasrem_273", 1
  store i64 %"$consume_277", i64* @_gasrem, align 8
  store [33 x i8] c"\03\14s\81c\B9\BBg\AD\11\AAFO\E6\9A\11G\DF&>\89p\D7\DC\FD\8F\99=\DD9\E8\1B\D9", [33 x i8]* %p1, align 1, !dbg !32
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 1, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$have_gas_276"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$have_gas_276"
  %"$consume_282" = sub i64 %"$gasrem_278", 1
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %a1 = alloca [20 x i8], align 1
  %"$gasrem_283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_284" = icmp ugt i64 1, %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %"$have_gas_281"
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %"$have_gas_281"
  %"$consume_287" = sub i64 %"$gasrem_283", 1
  store i64 %"$consume_287", i64* @_gasrem, align 8
  store [20 x i8] c"K\AF_\AD\A8\E5\DB\92\C3\D3$&\18\C5\B4q3\AE\00<", [20 x i8]* %a1, align 1, !dbg !33
  %"$gasrem_288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_289" = icmp ugt i64 1, %"$gasrem_288"
  br i1 %"$gascmp_289", label %"$out_of_gas_290", label %"$have_gas_291"

"$out_of_gas_290":                                ; preds = %"$have_gas_286"
  call void @_out_of_gas()
  br label %"$have_gas_291"

"$have_gas_291":                                  ; preds = %"$out_of_gas_290", %"$have_gas_286"
  %"$consume_292" = sub i64 %"$gasrem_288", 1
  store i64 %"$consume_292", i64* @_gasrem, align 8
  %a1_gen = alloca [20 x i8], align 1
  %"$execptr_load_293" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p1_294" = alloca [33 x i8], align 1
  %"$p1_295" = load [33 x i8], [33 x i8]* %p1, align 1
  store [33 x i8] %"$p1_295", [33 x i8]* %"$schnorr_get_address_p1_294", align 1
  %"$schnorr_get_address_call_296" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_293", [33 x i8]* %"$schnorr_get_address_p1_294")
  %"$schnorr_get_address_297" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_296", align 1
  store [20 x i8] %"$schnorr_get_address_297", [20 x i8]* %a1_gen, align 1, !dbg !34
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 1, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$have_gas_291"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$have_gas_291"
  %"$consume_302" = sub i64 %"$gasrem_298", 1
  store i64 %"$consume_302", i64* @_gasrem, align 8
  %r1 = alloca %TName_Bool*, align 8
  %"$execptr_load_303" = load i8*, i8** @_execptr, align 8
  %"$eq_a1_304" = alloca [20 x i8], align 1
  %"$a1_305" = load [20 x i8], [20 x i8]* %a1, align 1
  store [20 x i8] %"$a1_305", [20 x i8]* %"$eq_a1_304", align 1
  %"$$eq_a1_304_306" = bitcast [20 x i8]* %"$eq_a1_304" to i8*
  %"$eq_a1_gen_307" = alloca [20 x i8], align 1
  %"$a1_gen_308" = load [20 x i8], [20 x i8]* %a1_gen, align 1
  store [20 x i8] %"$a1_gen_308", [20 x i8]* %"$eq_a1_gen_307", align 1
  %"$$eq_a1_gen_307_309" = bitcast [20 x i8]* %"$eq_a1_gen_307" to i8*
  %"$eq_call_310" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_303", i32 20, i8* %"$$eq_a1_304_306", i8* %"$$eq_a1_gen_307_309")
  store %TName_Bool* %"$eq_call_310", %TName_Bool** %r1, align 8, !dbg !35
  %"$gasrem_311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_312" = icmp ugt i64 1, %"$gasrem_311"
  br i1 %"$gascmp_312", label %"$out_of_gas_313", label %"$have_gas_314"

"$out_of_gas_313":                                ; preds = %"$have_gas_301"
  call void @_out_of_gas()
  br label %"$have_gas_314"

"$have_gas_314":                                  ; preds = %"$out_of_gas_313", %"$have_gas_301"
  %"$consume_315" = sub i64 %"$gasrem_311", 1
  store i64 %"$consume_315", i64* @_gasrem, align 8
  %p2 = alloca [33 x i8], align 1
  %"$gasrem_316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_317" = icmp ugt i64 1, %"$gasrem_316"
  br i1 %"$gascmp_317", label %"$out_of_gas_318", label %"$have_gas_319"

"$out_of_gas_318":                                ; preds = %"$have_gas_314"
  call void @_out_of_gas()
  br label %"$have_gas_319"

"$have_gas_319":                                  ; preds = %"$out_of_gas_318", %"$have_gas_314"
  %"$consume_320" = sub i64 %"$gasrem_316", 1
  store i64 %"$consume_320", i64* @_gasrem, align 8
  store [33 x i8] c"\03L\E2h\ACZ4\008\D8\AC\EB\BD\D766\11\A5\B1\19y\16w^2H\1F]k\10O\AFe", [33 x i8]* %p2, align 1, !dbg !36
  %"$gasrem_321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_322" = icmp ugt i64 1, %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %"$have_gas_319"
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %"$have_gas_319"
  %"$consume_325" = sub i64 %"$gasrem_321", 1
  store i64 %"$consume_325", i64* @_gasrem, align 8
  %a2 = alloca [20 x i8], align 1
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 1, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %"$have_gas_324"
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %"$have_gas_324"
  %"$consume_330" = sub i64 %"$gasrem_326", 1
  store i64 %"$consume_330", i64* @_gasrem, align 8
  store [20 x i8] c"D\82a\91Z\80\CD\E9\BD\E7\C7\A7\91hR\00\D3\A0\BFN", [20 x i8]* %a2, align 1, !dbg !37
  %"$gasrem_331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_332" = icmp ugt i64 1, %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %"$have_gas_329"
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %"$have_gas_329"
  %"$consume_335" = sub i64 %"$gasrem_331", 1
  store i64 %"$consume_335", i64* @_gasrem, align 8
  %a2_gen = alloca [20 x i8], align 1
  %"$execptr_load_336" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p2_337" = alloca [33 x i8], align 1
  %"$p2_338" = load [33 x i8], [33 x i8]* %p2, align 1
  store [33 x i8] %"$p2_338", [33 x i8]* %"$schnorr_get_address_p2_337", align 1
  %"$schnorr_get_address_call_339" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_336", [33 x i8]* %"$schnorr_get_address_p2_337")
  %"$schnorr_get_address_340" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_339", align 1
  store [20 x i8] %"$schnorr_get_address_340", [20 x i8]* %a2_gen, align 1, !dbg !38
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %"$have_gas_334"
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  %r2 = alloca %TName_Bool*, align 8
  %"$execptr_load_346" = load i8*, i8** @_execptr, align 8
  %"$eq_a2_347" = alloca [20 x i8], align 1
  %"$a2_348" = load [20 x i8], [20 x i8]* %a2, align 1
  store [20 x i8] %"$a2_348", [20 x i8]* %"$eq_a2_347", align 1
  %"$$eq_a2_347_349" = bitcast [20 x i8]* %"$eq_a2_347" to i8*
  %"$eq_a2_gen_350" = alloca [20 x i8], align 1
  %"$a2_gen_351" = load [20 x i8], [20 x i8]* %a2_gen, align 1
  store [20 x i8] %"$a2_gen_351", [20 x i8]* %"$eq_a2_gen_350", align 1
  %"$$eq_a2_gen_350_352" = bitcast [20 x i8]* %"$eq_a2_gen_350" to i8*
  %"$eq_call_353" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_346", i32 20, i8* %"$$eq_a2_347_349", i8* %"$$eq_a2_gen_350_352")
  store %TName_Bool* %"$eq_call_353", %TName_Bool** %r2, align 8, !dbg !39
  %"$gasrem_354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_355" = icmp ugt i64 1, %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %"$have_gas_344"
  %"$consume_358" = sub i64 %"$gasrem_354", 1
  store i64 %"$consume_358", i64* @_gasrem, align 8
  %p3 = alloca [33 x i8], align 1
  %"$gasrem_359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_360" = icmp ugt i64 1, %"$gasrem_359"
  br i1 %"$gascmp_360", label %"$out_of_gas_361", label %"$have_gas_362"

"$out_of_gas_361":                                ; preds = %"$have_gas_357"
  call void @_out_of_gas()
  br label %"$have_gas_362"

"$have_gas_362":                                  ; preds = %"$out_of_gas_361", %"$have_gas_357"
  %"$consume_363" = sub i64 %"$gasrem_359", 1
  store i64 %"$consume_363", i64* @_gasrem, align 8
  store [33 x i8] c"\02\FAzP\1F2<\C5>\07\0C\0A\94Sp6\86y\E7W)`\EC$\D8\A08~\F3\B5\0A\22\85", [33 x i8]* %p3, align 1, !dbg !40
  %"$gasrem_364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_365" = icmp ugt i64 1, %"$gasrem_364"
  br i1 %"$gascmp_365", label %"$out_of_gas_366", label %"$have_gas_367"

"$out_of_gas_366":                                ; preds = %"$have_gas_362"
  call void @_out_of_gas()
  br label %"$have_gas_367"

"$have_gas_367":                                  ; preds = %"$out_of_gas_366", %"$have_gas_362"
  %"$consume_368" = sub i64 %"$gasrem_364", 1
  store i64 %"$consume_368", i64* @_gasrem, align 8
  %a3 = alloca [20 x i8], align 1
  %"$gasrem_369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_370" = icmp ugt i64 1, %"$gasrem_369"
  br i1 %"$gascmp_370", label %"$out_of_gas_371", label %"$have_gas_372"

"$out_of_gas_371":                                ; preds = %"$have_gas_367"
  call void @_out_of_gas()
  br label %"$have_gas_372"

"$have_gas_372":                                  ; preds = %"$out_of_gas_371", %"$have_gas_367"
  %"$consume_373" = sub i64 %"$gasrem_369", 1
  store i64 %"$consume_373", i64* @_gasrem, align 8
  store [20 x i8] c"\DE\D0/\D9y\FC.U\C0$;\D2\F5-\F0\22\C4\0A\DA\1E", [20 x i8]* %a3, align 1, !dbg !41
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_372"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_372"
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  %a3_gen = alloca [20 x i8], align 1
  %"$execptr_load_379" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p3_380" = alloca [33 x i8], align 1
  %"$p3_381" = load [33 x i8], [33 x i8]* %p3, align 1
  store [33 x i8] %"$p3_381", [33 x i8]* %"$schnorr_get_address_p3_380", align 1
  %"$schnorr_get_address_call_382" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_379", [33 x i8]* %"$schnorr_get_address_p3_380")
  %"$schnorr_get_address_383" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_382", align 1
  store [20 x i8] %"$schnorr_get_address_383", [20 x i8]* %a3_gen, align 1, !dbg !42
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 1, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_377"
  %"$consume_388" = sub i64 %"$gasrem_384", 1
  store i64 %"$consume_388", i64* @_gasrem, align 8
  %r3 = alloca %TName_Bool*, align 8
  %"$execptr_load_389" = load i8*, i8** @_execptr, align 8
  %"$eq_a3_390" = alloca [20 x i8], align 1
  %"$a3_391" = load [20 x i8], [20 x i8]* %a3, align 1
  store [20 x i8] %"$a3_391", [20 x i8]* %"$eq_a3_390", align 1
  %"$$eq_a3_390_392" = bitcast [20 x i8]* %"$eq_a3_390" to i8*
  %"$eq_a3_gen_393" = alloca [20 x i8], align 1
  %"$a3_gen_394" = load [20 x i8], [20 x i8]* %a3_gen, align 1
  store [20 x i8] %"$a3_gen_394", [20 x i8]* %"$eq_a3_gen_393", align 1
  %"$$eq_a3_gen_393_395" = bitcast [20 x i8]* %"$eq_a3_gen_393" to i8*
  %"$eq_call_396" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_389", i32 20, i8* %"$$eq_a3_390_392", i8* %"$$eq_a3_gen_393_395")
  store %TName_Bool* %"$eq_call_396", %TName_Bool** %r3, align 8, !dbg !43
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_387"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_387"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  %p4 = alloca [33 x i8], align 1
  %"$gasrem_402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_403" = icmp ugt i64 1, %"$gasrem_402"
  br i1 %"$gascmp_403", label %"$out_of_gas_404", label %"$have_gas_405"

"$out_of_gas_404":                                ; preds = %"$have_gas_400"
  call void @_out_of_gas()
  br label %"$have_gas_405"

"$have_gas_405":                                  ; preds = %"$out_of_gas_404", %"$have_gas_400"
  %"$consume_406" = sub i64 %"$gasrem_402", 1
  store i64 %"$consume_406", i64* @_gasrem, align 8
  store [33 x i8] c"\03o\86v\E4s\AF \B4\CC\E7\D3'\10=\E4PJ\9C\00\EA\E7\EA\03\D0\A3e\FBH\81z\C9\7F", [33 x i8]* %p4, align 1, !dbg !44
  %"$gasrem_407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_408" = icmp ugt i64 1, %"$gasrem_407"
  br i1 %"$gascmp_408", label %"$out_of_gas_409", label %"$have_gas_410"

"$out_of_gas_409":                                ; preds = %"$have_gas_405"
  call void @_out_of_gas()
  br label %"$have_gas_410"

"$have_gas_410":                                  ; preds = %"$out_of_gas_409", %"$have_gas_405"
  %"$consume_411" = sub i64 %"$gasrem_407", 1
  store i64 %"$consume_411", i64* @_gasrem, align 8
  %a4 = alloca [20 x i8], align 1
  %"$gasrem_412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_413" = icmp ugt i64 1, %"$gasrem_412"
  br i1 %"$gascmp_413", label %"$out_of_gas_414", label %"$have_gas_415"

"$out_of_gas_414":                                ; preds = %"$have_gas_410"
  call void @_out_of_gas()
  br label %"$have_gas_415"

"$have_gas_415":                                  ; preds = %"$out_of_gas_414", %"$have_gas_410"
  %"$consume_416" = sub i64 %"$gasrem_412", 1
  store i64 %"$consume_416", i64* @_gasrem, align 8
  store [20 x i8] c"\13\F0n`){\EAj<@/od\C4\16\A6\B3\1EXn", [20 x i8]* %a4, align 1, !dbg !45
  %"$gasrem_417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_418" = icmp ugt i64 1, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %"$have_gas_415"
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %"$have_gas_415"
  %"$consume_421" = sub i64 %"$gasrem_417", 1
  store i64 %"$consume_421", i64* @_gasrem, align 8
  %a4_gen = alloca [20 x i8], align 1
  %"$execptr_load_422" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p4_423" = alloca [33 x i8], align 1
  %"$p4_424" = load [33 x i8], [33 x i8]* %p4, align 1
  store [33 x i8] %"$p4_424", [33 x i8]* %"$schnorr_get_address_p4_423", align 1
  %"$schnorr_get_address_call_425" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_422", [33 x i8]* %"$schnorr_get_address_p4_423")
  %"$schnorr_get_address_426" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_425", align 1
  store [20 x i8] %"$schnorr_get_address_426", [20 x i8]* %a4_gen, align 1, !dbg !46
  %"$gasrem_427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_428" = icmp ugt i64 1, %"$gasrem_427"
  br i1 %"$gascmp_428", label %"$out_of_gas_429", label %"$have_gas_430"

"$out_of_gas_429":                                ; preds = %"$have_gas_420"
  call void @_out_of_gas()
  br label %"$have_gas_430"

"$have_gas_430":                                  ; preds = %"$out_of_gas_429", %"$have_gas_420"
  %"$consume_431" = sub i64 %"$gasrem_427", 1
  store i64 %"$consume_431", i64* @_gasrem, align 8
  %r4 = alloca %TName_Bool*, align 8
  %"$execptr_load_432" = load i8*, i8** @_execptr, align 8
  %"$eq_a4_433" = alloca [20 x i8], align 1
  %"$a4_434" = load [20 x i8], [20 x i8]* %a4, align 1
  store [20 x i8] %"$a4_434", [20 x i8]* %"$eq_a4_433", align 1
  %"$$eq_a4_433_435" = bitcast [20 x i8]* %"$eq_a4_433" to i8*
  %"$eq_a4_gen_436" = alloca [20 x i8], align 1
  %"$a4_gen_437" = load [20 x i8], [20 x i8]* %a4_gen, align 1
  store [20 x i8] %"$a4_gen_437", [20 x i8]* %"$eq_a4_gen_436", align 1
  %"$$eq_a4_gen_436_438" = bitcast [20 x i8]* %"$eq_a4_gen_436" to i8*
  %"$eq_call_439" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_432", i32 20, i8* %"$$eq_a4_433_435", i8* %"$$eq_a4_gen_436_438")
  store %TName_Bool* %"$eq_call_439", %TName_Bool** %r4, align 8, !dbg !47
  %"$gasrem_440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_441" = icmp ugt i64 1, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %"$have_gas_430"
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %"$have_gas_430"
  %"$consume_444" = sub i64 %"$gasrem_440", 1
  store i64 %"$consume_444", i64* @_gasrem, align 8
  %p5 = alloca [33 x i8], align 1
  %"$gasrem_445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_446" = icmp ugt i64 1, %"$gasrem_445"
  br i1 %"$gascmp_446", label %"$out_of_gas_447", label %"$have_gas_448"

"$out_of_gas_447":                                ; preds = %"$have_gas_443"
  call void @_out_of_gas()
  br label %"$have_gas_448"

"$have_gas_448":                                  ; preds = %"$out_of_gas_447", %"$have_gas_443"
  %"$consume_449" = sub i64 %"$gasrem_445", 1
  store i64 %"$consume_449", i64* @_gasrem, align 8
  store [33 x i8] c"\03L965)\C2\D4\07\8Fr\B8\C4\98\C4\CB\C5\BA^\10\D8fo\E0o\10J'\E0\E4BB\A0", [33 x i8]* %p5, align 1, !dbg !48
  %"$gasrem_450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_451" = icmp ugt i64 1, %"$gasrem_450"
  br i1 %"$gascmp_451", label %"$out_of_gas_452", label %"$have_gas_453"

"$out_of_gas_452":                                ; preds = %"$have_gas_448"
  call void @_out_of_gas()
  br label %"$have_gas_453"

"$have_gas_453":                                  ; preds = %"$out_of_gas_452", %"$have_gas_448"
  %"$consume_454" = sub i64 %"$gasrem_450", 1
  store i64 %"$consume_454", i64* @_gasrem, align 8
  %a5 = alloca [20 x i8], align 1
  %"$gasrem_455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_456" = icmp ugt i64 1, %"$gasrem_455"
  br i1 %"$gascmp_456", label %"$out_of_gas_457", label %"$have_gas_458"

"$out_of_gas_457":                                ; preds = %"$have_gas_453"
  call void @_out_of_gas()
  br label %"$have_gas_458"

"$have_gas_458":                                  ; preds = %"$out_of_gas_457", %"$have_gas_453"
  %"$consume_459" = sub i64 %"$gasrem_455", 1
  store i64 %"$consume_459", i64* @_gasrem, align 8
  store [20 x i8] c"\1A\90\C2S\07\C3\CCq\95\8A\83\FA!:#b\D8Y\CF3", [20 x i8]* %a5, align 1, !dbg !49
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 1, %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$have_gas_458"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$have_gas_458"
  %"$consume_464" = sub i64 %"$gasrem_460", 1
  store i64 %"$consume_464", i64* @_gasrem, align 8
  %a5_gen = alloca [20 x i8], align 1
  %"$execptr_load_465" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p5_466" = alloca [33 x i8], align 1
  %"$p5_467" = load [33 x i8], [33 x i8]* %p5, align 1
  store [33 x i8] %"$p5_467", [33 x i8]* %"$schnorr_get_address_p5_466", align 1
  %"$schnorr_get_address_call_468" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_465", [33 x i8]* %"$schnorr_get_address_p5_466")
  %"$schnorr_get_address_469" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_468", align 1
  store [20 x i8] %"$schnorr_get_address_469", [20 x i8]* %a5_gen, align 1, !dbg !50
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 1, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$have_gas_463"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$have_gas_463"
  %"$consume_474" = sub i64 %"$gasrem_470", 1
  store i64 %"$consume_474", i64* @_gasrem, align 8
  %r5 = alloca %TName_Bool*, align 8
  %"$execptr_load_475" = load i8*, i8** @_execptr, align 8
  %"$eq_a5_476" = alloca [20 x i8], align 1
  %"$a5_477" = load [20 x i8], [20 x i8]* %a5, align 1
  store [20 x i8] %"$a5_477", [20 x i8]* %"$eq_a5_476", align 1
  %"$$eq_a5_476_478" = bitcast [20 x i8]* %"$eq_a5_476" to i8*
  %"$eq_a5_gen_479" = alloca [20 x i8], align 1
  %"$a5_gen_480" = load [20 x i8], [20 x i8]* %a5_gen, align 1
  store [20 x i8] %"$a5_gen_480", [20 x i8]* %"$eq_a5_gen_479", align 1
  %"$$eq_a5_gen_479_481" = bitcast [20 x i8]* %"$eq_a5_gen_479" to i8*
  %"$eq_call_482" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_475", i32 20, i8* %"$$eq_a5_476_478", i8* %"$$eq_a5_gen_479_481")
  store %TName_Bool* %"$eq_call_482", %TName_Bool** %r5, align 8, !dbg !51
  %"$gasrem_483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_484" = icmp ugt i64 1, %"$gasrem_483"
  br i1 %"$gascmp_484", label %"$out_of_gas_485", label %"$have_gas_486"

"$out_of_gas_485":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_486"

"$have_gas_486":                                  ; preds = %"$out_of_gas_485", %"$have_gas_473"
  %"$consume_487" = sub i64 %"$gasrem_483", 1
  store i64 %"$consume_487", i64* @_gasrem, align 8
  %p6 = alloca [33 x i8], align 1
  %"$gasrem_488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_489" = icmp ugt i64 1, %"$gasrem_488"
  br i1 %"$gascmp_489", label %"$out_of_gas_490", label %"$have_gas_491"

"$out_of_gas_490":                                ; preds = %"$have_gas_486"
  call void @_out_of_gas()
  br label %"$have_gas_491"

"$have_gas_491":                                  ; preds = %"$out_of_gas_490", %"$have_gas_486"
  %"$consume_492" = sub i64 %"$gasrem_488", 1
  store i64 %"$consume_492", i64* @_gasrem, align 8
  store [33 x i8] c"\02m\A5\BFl:<\91\C0\8A=\D7\FB\CE\0B\EA\F5\D46\03\9C\97\B0z\0Fa\AAK\94\93\E4g\87", [33 x i8]* %p6, align 1, !dbg !52
  %"$gasrem_493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_494" = icmp ugt i64 1, %"$gasrem_493"
  br i1 %"$gascmp_494", label %"$out_of_gas_495", label %"$have_gas_496"

"$out_of_gas_495":                                ; preds = %"$have_gas_491"
  call void @_out_of_gas()
  br label %"$have_gas_496"

"$have_gas_496":                                  ; preds = %"$out_of_gas_495", %"$have_gas_491"
  %"$consume_497" = sub i64 %"$gasrem_493", 1
  store i64 %"$consume_497", i64* @_gasrem, align 8
  %a6 = alloca [20 x i8], align 1
  %"$gasrem_498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_499" = icmp ugt i64 1, %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %"$have_gas_496"
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %"$have_gas_496"
  %"$consume_502" = sub i64 %"$gasrem_498", 1
  store i64 %"$consume_502", i64* @_gasrem, align 8
  store [20 x i8] c"bZ\BA\EB\D8}\AE\9A\B1(\F3\B3\AE\99h\88\13\D9\C5\DF", [20 x i8]* %a6, align 1, !dbg !53
  %"$gasrem_503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_504" = icmp ugt i64 1, %"$gasrem_503"
  br i1 %"$gascmp_504", label %"$out_of_gas_505", label %"$have_gas_506"

"$out_of_gas_505":                                ; preds = %"$have_gas_501"
  call void @_out_of_gas()
  br label %"$have_gas_506"

"$have_gas_506":                                  ; preds = %"$out_of_gas_505", %"$have_gas_501"
  %"$consume_507" = sub i64 %"$gasrem_503", 1
  store i64 %"$consume_507", i64* @_gasrem, align 8
  %a6_gen = alloca [20 x i8], align 1
  %"$execptr_load_508" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p6_509" = alloca [33 x i8], align 1
  %"$p6_510" = load [33 x i8], [33 x i8]* %p6, align 1
  store [33 x i8] %"$p6_510", [33 x i8]* %"$schnorr_get_address_p6_509", align 1
  %"$schnorr_get_address_call_511" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_508", [33 x i8]* %"$schnorr_get_address_p6_509")
  %"$schnorr_get_address_512" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_511", align 1
  store [20 x i8] %"$schnorr_get_address_512", [20 x i8]* %a6_gen, align 1, !dbg !54
  %"$gasrem_513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_514" = icmp ugt i64 1, %"$gasrem_513"
  br i1 %"$gascmp_514", label %"$out_of_gas_515", label %"$have_gas_516"

"$out_of_gas_515":                                ; preds = %"$have_gas_506"
  call void @_out_of_gas()
  br label %"$have_gas_516"

"$have_gas_516":                                  ; preds = %"$out_of_gas_515", %"$have_gas_506"
  %"$consume_517" = sub i64 %"$gasrem_513", 1
  store i64 %"$consume_517", i64* @_gasrem, align 8
  %r6 = alloca %TName_Bool*, align 8
  %"$execptr_load_518" = load i8*, i8** @_execptr, align 8
  %"$eq_a6_519" = alloca [20 x i8], align 1
  %"$a6_520" = load [20 x i8], [20 x i8]* %a6, align 1
  store [20 x i8] %"$a6_520", [20 x i8]* %"$eq_a6_519", align 1
  %"$$eq_a6_519_521" = bitcast [20 x i8]* %"$eq_a6_519" to i8*
  %"$eq_a6_gen_522" = alloca [20 x i8], align 1
  %"$a6_gen_523" = load [20 x i8], [20 x i8]* %a6_gen, align 1
  store [20 x i8] %"$a6_gen_523", [20 x i8]* %"$eq_a6_gen_522", align 1
  %"$$eq_a6_gen_522_524" = bitcast [20 x i8]* %"$eq_a6_gen_522" to i8*
  %"$eq_call_525" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_518", i32 20, i8* %"$$eq_a6_519_521", i8* %"$$eq_a6_gen_522_524")
  store %TName_Bool* %"$eq_call_525", %TName_Bool** %r6, align 8, !dbg !55
  %"$gasrem_526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_527" = icmp ugt i64 1, %"$gasrem_526"
  br i1 %"$gascmp_527", label %"$out_of_gas_528", label %"$have_gas_529"

"$out_of_gas_528":                                ; preds = %"$have_gas_516"
  call void @_out_of_gas()
  br label %"$have_gas_529"

"$have_gas_529":                                  ; preds = %"$out_of_gas_528", %"$have_gas_516"
  %"$consume_530" = sub i64 %"$gasrem_526", 1
  store i64 %"$consume_530", i64* @_gasrem, align 8
  %p7 = alloca [33 x i8], align 1
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 1, %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$have_gas_529"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$have_gas_529"
  %"$consume_535" = sub i64 %"$gasrem_531", 1
  store i64 %"$consume_535", i64* @_gasrem, align 8
  store [33 x i8] c"\03*f\1F\9DJ\B8\DD\98\18\CE\D2\F6/=\A1O\DD#\E6\8EX\D0\1AJ\E1\86#\1D\7F\B6\09\BB", [33 x i8]* %p7, align 1, !dbg !56
  %"$gasrem_536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_537" = icmp ugt i64 1, %"$gasrem_536"
  br i1 %"$gascmp_537", label %"$out_of_gas_538", label %"$have_gas_539"

"$out_of_gas_538":                                ; preds = %"$have_gas_534"
  call void @_out_of_gas()
  br label %"$have_gas_539"

"$have_gas_539":                                  ; preds = %"$out_of_gas_538", %"$have_gas_534"
  %"$consume_540" = sub i64 %"$gasrem_536", 1
  store i64 %"$consume_540", i64* @_gasrem, align 8
  %a7 = alloca [20 x i8], align 1
  %"$gasrem_541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_542" = icmp ugt i64 1, %"$gasrem_541"
  br i1 %"$gascmp_542", label %"$out_of_gas_543", label %"$have_gas_544"

"$out_of_gas_543":                                ; preds = %"$have_gas_539"
  call void @_out_of_gas()
  br label %"$have_gas_544"

"$have_gas_544":                                  ; preds = %"$out_of_gas_543", %"$have_gas_539"
  %"$consume_545" = sub i64 %"$gasrem_541", 1
  store i64 %"$consume_545", i64* @_gasrem, align 8
  store [20 x i8] c"6\BA4\09\7F\86\11\91\C4\8C\83\9C\9B\1A\8BY\12\F5\83\CF", [20 x i8]* %a7, align 1, !dbg !57
  %"$gasrem_546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_547" = icmp ugt i64 1, %"$gasrem_546"
  br i1 %"$gascmp_547", label %"$out_of_gas_548", label %"$have_gas_549"

"$out_of_gas_548":                                ; preds = %"$have_gas_544"
  call void @_out_of_gas()
  br label %"$have_gas_549"

"$have_gas_549":                                  ; preds = %"$out_of_gas_548", %"$have_gas_544"
  %"$consume_550" = sub i64 %"$gasrem_546", 1
  store i64 %"$consume_550", i64* @_gasrem, align 8
  %a7_gen = alloca [20 x i8], align 1
  %"$execptr_load_551" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p7_552" = alloca [33 x i8], align 1
  %"$p7_553" = load [33 x i8], [33 x i8]* %p7, align 1
  store [33 x i8] %"$p7_553", [33 x i8]* %"$schnorr_get_address_p7_552", align 1
  %"$schnorr_get_address_call_554" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_551", [33 x i8]* %"$schnorr_get_address_p7_552")
  %"$schnorr_get_address_555" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_554", align 1
  store [20 x i8] %"$schnorr_get_address_555", [20 x i8]* %a7_gen, align 1, !dbg !58
  %"$gasrem_556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_557" = icmp ugt i64 1, %"$gasrem_556"
  br i1 %"$gascmp_557", label %"$out_of_gas_558", label %"$have_gas_559"

"$out_of_gas_558":                                ; preds = %"$have_gas_549"
  call void @_out_of_gas()
  br label %"$have_gas_559"

"$have_gas_559":                                  ; preds = %"$out_of_gas_558", %"$have_gas_549"
  %"$consume_560" = sub i64 %"$gasrem_556", 1
  store i64 %"$consume_560", i64* @_gasrem, align 8
  %r7 = alloca %TName_Bool*, align 8
  %"$execptr_load_561" = load i8*, i8** @_execptr, align 8
  %"$eq_a7_562" = alloca [20 x i8], align 1
  %"$a7_563" = load [20 x i8], [20 x i8]* %a7, align 1
  store [20 x i8] %"$a7_563", [20 x i8]* %"$eq_a7_562", align 1
  %"$$eq_a7_562_564" = bitcast [20 x i8]* %"$eq_a7_562" to i8*
  %"$eq_a7_gen_565" = alloca [20 x i8], align 1
  %"$a7_gen_566" = load [20 x i8], [20 x i8]* %a7_gen, align 1
  store [20 x i8] %"$a7_gen_566", [20 x i8]* %"$eq_a7_gen_565", align 1
  %"$$eq_a7_gen_565_567" = bitcast [20 x i8]* %"$eq_a7_gen_565" to i8*
  %"$eq_call_568" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_561", i32 20, i8* %"$$eq_a7_562_564", i8* %"$$eq_a7_gen_565_567")
  store %TName_Bool* %"$eq_call_568", %TName_Bool** %r7, align 8, !dbg !59
  %"$gasrem_569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_570" = icmp ugt i64 1, %"$gasrem_569"
  br i1 %"$gascmp_570", label %"$out_of_gas_571", label %"$have_gas_572"

"$out_of_gas_571":                                ; preds = %"$have_gas_559"
  call void @_out_of_gas()
  br label %"$have_gas_572"

"$have_gas_572":                                  ; preds = %"$out_of_gas_571", %"$have_gas_559"
  %"$consume_573" = sub i64 %"$gasrem_569", 1
  store i64 %"$consume_573", i64* @_gasrem, align 8
  %p8 = alloca [33 x i8], align 1
  %"$gasrem_574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_575" = icmp ugt i64 1, %"$gasrem_574"
  br i1 %"$gascmp_575", label %"$out_of_gas_576", label %"$have_gas_577"

"$out_of_gas_576":                                ; preds = %"$have_gas_572"
  call void @_out_of_gas()
  br label %"$have_gas_577"

"$have_gas_577":                                  ; preds = %"$out_of_gas_576", %"$have_gas_572"
  %"$consume_578" = sub i64 %"$gasrem_574", 1
  store i64 %"$consume_578", i64* @_gasrem, align 8
  store [33 x i8] c"\03j\94\E9%\BB \0D\CEA\A4l\90&\E0#\B2&\DD[L\B2'\CEvm`\CC\8F\AB!\81H", [33 x i8]* %p8, align 1, !dbg !60
  %"$gasrem_579" = load i64, i64* @_gasrem, align 8
  %"$gascmp_580" = icmp ugt i64 1, %"$gasrem_579"
  br i1 %"$gascmp_580", label %"$out_of_gas_581", label %"$have_gas_582"

"$out_of_gas_581":                                ; preds = %"$have_gas_577"
  call void @_out_of_gas()
  br label %"$have_gas_582"

"$have_gas_582":                                  ; preds = %"$out_of_gas_581", %"$have_gas_577"
  %"$consume_583" = sub i64 %"$gasrem_579", 1
  store i64 %"$consume_583", i64* @_gasrem, align 8
  %a8 = alloca [20 x i8], align 1
  %"$gasrem_584" = load i64, i64* @_gasrem, align 8
  %"$gascmp_585" = icmp ugt i64 1, %"$gasrem_584"
  br i1 %"$gascmp_585", label %"$out_of_gas_586", label %"$have_gas_587"

"$out_of_gas_586":                                ; preds = %"$have_gas_582"
  call void @_out_of_gas()
  br label %"$have_gas_587"

"$have_gas_587":                                  ; preds = %"$out_of_gas_586", %"$have_gas_582"
  %"$consume_588" = sub i64 %"$gasrem_584", 1
  store i64 %"$consume_588", i64* @_gasrem, align 8
  store [20 x i8] c"\D2E:\E7l\9A\86\AA\E5D\FC\A6\99\DB\DC\\Wj\EF:", [20 x i8]* %a8, align 1, !dbg !61
  %"$gasrem_589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_590" = icmp ugt i64 1, %"$gasrem_589"
  br i1 %"$gascmp_590", label %"$out_of_gas_591", label %"$have_gas_592"

"$out_of_gas_591":                                ; preds = %"$have_gas_587"
  call void @_out_of_gas()
  br label %"$have_gas_592"

"$have_gas_592":                                  ; preds = %"$out_of_gas_591", %"$have_gas_587"
  %"$consume_593" = sub i64 %"$gasrem_589", 1
  store i64 %"$consume_593", i64* @_gasrem, align 8
  %a8_gen = alloca [20 x i8], align 1
  %"$execptr_load_594" = load i8*, i8** @_execptr, align 8
  %"$schnorr_get_address_p8_595" = alloca [33 x i8], align 1
  %"$p8_596" = load [33 x i8], [33 x i8]* %p8, align 1
  store [33 x i8] %"$p8_596", [33 x i8]* %"$schnorr_get_address_p8_595", align 1
  %"$schnorr_get_address_call_597" = call [20 x i8]* @_schnorr_get_address(i8* %"$execptr_load_594", [33 x i8]* %"$schnorr_get_address_p8_595")
  %"$schnorr_get_address_598" = load [20 x i8], [20 x i8]* %"$schnorr_get_address_call_597", align 1
  store [20 x i8] %"$schnorr_get_address_598", [20 x i8]* %a8_gen, align 1, !dbg !62
  %"$gasrem_599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_600" = icmp ugt i64 1, %"$gasrem_599"
  br i1 %"$gascmp_600", label %"$out_of_gas_601", label %"$have_gas_602"

"$out_of_gas_601":                                ; preds = %"$have_gas_592"
  call void @_out_of_gas()
  br label %"$have_gas_602"

"$have_gas_602":                                  ; preds = %"$out_of_gas_601", %"$have_gas_592"
  %"$consume_603" = sub i64 %"$gasrem_599", 1
  store i64 %"$consume_603", i64* @_gasrem, align 8
  %r8 = alloca %TName_Bool*, align 8
  %"$execptr_load_604" = load i8*, i8** @_execptr, align 8
  %"$eq_a8_605" = alloca [20 x i8], align 1
  %"$a8_606" = load [20 x i8], [20 x i8]* %a8, align 1
  store [20 x i8] %"$a8_606", [20 x i8]* %"$eq_a8_605", align 1
  %"$$eq_a8_605_607" = bitcast [20 x i8]* %"$eq_a8_605" to i8*
  %"$eq_a8_gen_608" = alloca [20 x i8], align 1
  %"$a8_gen_609" = load [20 x i8], [20 x i8]* %a8_gen, align 1
  store [20 x i8] %"$a8_gen_609", [20 x i8]* %"$eq_a8_gen_608", align 1
  %"$$eq_a8_gen_608_610" = bitcast [20 x i8]* %"$eq_a8_gen_608" to i8*
  %"$eq_call_611" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_604", i32 20, i8* %"$$eq_a8_605_607", i8* %"$$eq_a8_gen_608_610")
  store %TName_Bool* %"$eq_call_611", %TName_Bool** %r8, align 8, !dbg !63
  %"$gasrem_612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_613" = icmp ugt i64 1, %"$gasrem_612"
  br i1 %"$gascmp_613", label %"$out_of_gas_614", label %"$have_gas_615"

"$out_of_gas_614":                                ; preds = %"$have_gas_602"
  call void @_out_of_gas()
  br label %"$have_gas_615"

"$have_gas_615":                                  ; preds = %"$out_of_gas_614", %"$have_gas_602"
  %"$consume_616" = sub i64 %"$gasrem_612", 1
  store i64 %"$consume_616", i64* @_gasrem, align 8
  %"$gasrem_617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_618" = icmp ugt i64 1, %"$gasrem_617"
  br i1 %"$gascmp_618", label %"$out_of_gas_619", label %"$have_gas_620"

"$out_of_gas_619":                                ; preds = %"$have_gas_615"
  call void @_out_of_gas()
  br label %"$have_gas_620"

"$have_gas_620":                                  ; preds = %"$out_of_gas_619", %"$have_gas_615"
  %"$consume_621" = sub i64 %"$gasrem_617", 1
  store i64 %"$consume_621", i64* @_gasrem, align 8
  %"$gasrem_622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_623" = icmp ugt i64 1, %"$gasrem_622"
  br i1 %"$gascmp_623", label %"$out_of_gas_624", label %"$have_gas_625"

"$out_of_gas_624":                                ; preds = %"$have_gas_620"
  call void @_out_of_gas()
  br label %"$have_gas_625"

"$have_gas_625":                                  ; preds = %"$out_of_gas_624", %"$have_gas_620"
  %"$consume_626" = sub i64 %"$gasrem_622", 1
  store i64 %"$consume_626", i64* @_gasrem, align 8
  %"$gasrem_627" = load i64, i64* @_gasrem, align 8
  %"$gascmp_628" = icmp ugt i64 1, %"$gasrem_627"
  br i1 %"$gascmp_628", label %"$out_of_gas_629", label %"$have_gas_630"

"$out_of_gas_629":                                ; preds = %"$have_gas_625"
  call void @_out_of_gas()
  br label %"$have_gas_630"

"$have_gas_630":                                  ; preds = %"$out_of_gas_629", %"$have_gas_625"
  %"$consume_631" = sub i64 %"$gasrem_627", 1
  store i64 %"$consume_631", i64* @_gasrem, align 8
  %"$gasrem_632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_633" = icmp ugt i64 1, %"$gasrem_632"
  br i1 %"$gascmp_633", label %"$out_of_gas_634", label %"$have_gas_635"

"$out_of_gas_634":                                ; preds = %"$have_gas_630"
  call void @_out_of_gas()
  br label %"$have_gas_635"

"$have_gas_635":                                  ; preds = %"$out_of_gas_634", %"$have_gas_630"
  %"$consume_636" = sub i64 %"$gasrem_632", 1
  store i64 %"$consume_636", i64* @_gasrem, align 8
  %res1 = alloca %TName_Bool*, align 8
  %"$gasrem_637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_638" = icmp ugt i64 1, %"$gasrem_637"
  br i1 %"$gascmp_638", label %"$out_of_gas_639", label %"$have_gas_640"

"$out_of_gas_639":                                ; preds = %"$have_gas_635"
  call void @_out_of_gas()
  br label %"$have_gas_640"

"$have_gas_640":                                  ; preds = %"$out_of_gas_639", %"$have_gas_635"
  %"$consume_641" = sub i64 %"$gasrem_637", 1
  store i64 %"$consume_641", i64* @_gasrem, align 8
  %"$BoolUtils.and_4_6" = alloca { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.and_4_642" = load { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4, align 8
  %"$BoolUtils.and_4_fptr_643" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_642", 0
  %"$BoolUtils.and_4_envptr_644" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_642", 1
  %"$r1_645" = load %TName_Bool*, %TName_Bool** %r1, align 8
  %"$BoolUtils.and_4_call_646" = call { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_fptr_643"(i8* %"$BoolUtils.and_4_envptr_644", %TName_Bool* %"$r1_645"), !dbg !64
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_call_646", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_6", align 8, !dbg !64
  %"$BoolUtils.and_4_7" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_6_647" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_6", align 8
  %"$$BoolUtils.and_4_6_fptr_648" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_647", 0
  %"$$BoolUtils.and_4_6_envptr_649" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_647", 1
  %"$r2_650" = load %TName_Bool*, %TName_Bool** %r2, align 8
  %"$$BoolUtils.and_4_6_call_651" = call { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_fptr_648"(i8* %"$$BoolUtils.and_4_6_envptr_649", %TName_Bool* %"$r2_650"), !dbg !64
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_6_call_651", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_7", align 8, !dbg !64
  %"$BoolUtils.and_4_8" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_7_652" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_7", align 8
  %"$$BoolUtils.and_4_7_fptr_653" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_652", 0
  %"$$BoolUtils.and_4_7_envptr_654" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_652", 1
  %"$r3_655" = load %TName_Bool*, %TName_Bool** %r3, align 8
  %"$$BoolUtils.and_4_7_call_656" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_fptr_653"(i8* %"$$BoolUtils.and_4_7_envptr_654", %TName_Bool* %"$r3_655"), !dbg !64
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_7_call_656", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_8", align 8, !dbg !64
  %"$BoolUtils.and_4_9" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.and_4_8_657" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_8", align 8
  %"$$BoolUtils.and_4_8_fptr_658" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_8_657", 0
  %"$$BoolUtils.and_4_8_envptr_659" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_8_657", 1
  %"$r4_660" = load %TName_Bool*, %TName_Bool** %r4, align 8
  %"$$BoolUtils.and_4_8_call_661" = call %TName_Bool* %"$$BoolUtils.and_4_8_fptr_658"(i8* %"$$BoolUtils.and_4_8_envptr_659", %TName_Bool* %"$r4_660"), !dbg !64
  store %TName_Bool* %"$$BoolUtils.and_4_8_call_661", %TName_Bool** %"$BoolUtils.and_4_9", align 8, !dbg !64
  %"$$BoolUtils.and_4_9_662" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.and_4_9", align 8
  store %TName_Bool* %"$$BoolUtils.and_4_9_662", %TName_Bool** %res1, align 8, !dbg !64
  %"$gasrem_663" = load i64, i64* @_gasrem, align 8
  %"$gascmp_664" = icmp ugt i64 1, %"$gasrem_663"
  br i1 %"$gascmp_664", label %"$out_of_gas_665", label %"$have_gas_666"

"$out_of_gas_665":                                ; preds = %"$have_gas_640"
  call void @_out_of_gas()
  br label %"$have_gas_666"

"$have_gas_666":                                  ; preds = %"$out_of_gas_665", %"$have_gas_640"
  %"$consume_667" = sub i64 %"$gasrem_663", 1
  store i64 %"$consume_667", i64* @_gasrem, align 8
  %res2 = alloca %TName_Bool*, align 8
  %"$gasrem_668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_669" = icmp ugt i64 1, %"$gasrem_668"
  br i1 %"$gascmp_669", label %"$out_of_gas_670", label %"$have_gas_671"

"$out_of_gas_670":                                ; preds = %"$have_gas_666"
  call void @_out_of_gas()
  br label %"$have_gas_671"

"$have_gas_671":                                  ; preds = %"$out_of_gas_670", %"$have_gas_666"
  %"$consume_672" = sub i64 %"$gasrem_668", 1
  store i64 %"$consume_672", i64* @_gasrem, align 8
  %"$BoolUtils.and_4_10" = alloca { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.and_4_673" = load { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.and_4, align 8
  %"$BoolUtils.and_4_fptr_674" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_673", 0
  %"$BoolUtils.and_4_envptr_675" = extractvalue { { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_673", 1
  %"$r5_676" = load %TName_Bool*, %TName_Bool** %r5, align 8
  %"$BoolUtils.and_4_call_677" = call { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_fptr_674"(i8* %"$BoolUtils.and_4_envptr_675", %TName_Bool* %"$r5_676"), !dbg !65
  store { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.and_4_call_677", { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_10", align 8, !dbg !65
  %"$BoolUtils.and_4_11" = alloca { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_10_678" = load { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_10", align 8
  %"$$BoolUtils.and_4_10_fptr_679" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_678", 0
  %"$$BoolUtils.and_4_10_envptr_680" = extractvalue { { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_678", 1
  %"$r6_681" = load %TName_Bool*, %TName_Bool** %r6, align 8
  %"$$BoolUtils.and_4_10_call_682" = call { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_fptr_679"(i8* %"$$BoolUtils.and_4_10_envptr_680", %TName_Bool* %"$r6_681"), !dbg !65
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_10_call_682", { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_11", align 8, !dbg !65
  %"$BoolUtils.and_4_12" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$$BoolUtils.and_4_11_683" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_11", align 8
  %"$$BoolUtils.and_4_11_fptr_684" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_683", 0
  %"$$BoolUtils.and_4_11_envptr_685" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_683", 1
  %"$r7_686" = load %TName_Bool*, %TName_Bool** %r7, align 8
  %"$$BoolUtils.and_4_11_call_687" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_fptr_684"(i8* %"$$BoolUtils.and_4_11_envptr_685", %TName_Bool* %"$r7_686"), !dbg !65
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_11_call_687", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_12", align 8, !dbg !65
  %"$BoolUtils.and_4_13" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.and_4_12_688" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.and_4_12", align 8
  %"$$BoolUtils.and_4_12_fptr_689" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_12_688", 0
  %"$$BoolUtils.and_4_12_envptr_690" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.and_4_12_688", 1
  %"$r8_691" = load %TName_Bool*, %TName_Bool** %r8, align 8
  %"$$BoolUtils.and_4_12_call_692" = call %TName_Bool* %"$$BoolUtils.and_4_12_fptr_689"(i8* %"$$BoolUtils.and_4_12_envptr_690", %TName_Bool* %"$r8_691"), !dbg !65
  store %TName_Bool* %"$$BoolUtils.and_4_12_call_692", %TName_Bool** %"$BoolUtils.and_4_13", align 8, !dbg !65
  %"$$BoolUtils.and_4_13_693" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.and_4_13", align 8
  store %TName_Bool* %"$$BoolUtils.and_4_13_693", %TName_Bool** %res2, align 8, !dbg !65
  %"$gasrem_694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_695" = icmp ugt i64 1, %"$gasrem_694"
  br i1 %"$gascmp_695", label %"$out_of_gas_696", label %"$have_gas_697"

"$out_of_gas_696":                                ; preds = %"$have_gas_671"
  call void @_out_of_gas()
  br label %"$have_gas_697"

"$have_gas_697":                                  ; preds = %"$out_of_gas_696", %"$have_gas_671"
  %"$consume_698" = sub i64 %"$gasrem_694", 1
  store i64 %"$consume_698", i64* @_gasrem, align 8
  %"$BoolUtils.andb_14" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_699" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_700" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_699", 0
  %"$BoolUtils.andb_envptr_701" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_699", 1
  %"$res1_702" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$BoolUtils.andb_call_703" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_700"(i8* %"$BoolUtils.andb_envptr_701", %TName_Bool* %"$res1_702"), !dbg !66
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_703", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_14", align 8, !dbg !66
  %"$BoolUtils.andb_15" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_14_704" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_14", align 8
  %"$$BoolUtils.andb_14_fptr_705" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_14_704", 0
  %"$$BoolUtils.andb_14_envptr_706" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_14_704", 1
  %"$res2_707" = load %TName_Bool*, %TName_Bool** %res2, align 8
  %"$$BoolUtils.andb_14_call_708" = call %TName_Bool* %"$$BoolUtils.andb_14_fptr_705"(i8* %"$$BoolUtils.andb_14_envptr_706", %TName_Bool* %"$res2_707"), !dbg !66
  store %TName_Bool* %"$$BoolUtils.andb_14_call_708", %TName_Bool** %"$BoolUtils.andb_15", align 8, !dbg !66
  %"$$BoolUtils.andb_15_709" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_15", align 8
  store %TName_Bool* %"$$BoolUtils.andb_15_709", %TName_Bool** %"$expr_28", align 8, !dbg !66
  %"$$expr_28_710" = load %TName_Bool*, %TName_Bool** %"$expr_28", align 8
  ret %TName_Bool* %"$$expr_28_710"
}

declare [20 x i8]* @_schnorr_get_address(i8*, [33 x i8]*)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_711" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_712" = bitcast %TName_Bool* %"$exprval_711" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_65", i8* %"$memvoidcast_712")
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
!29 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !5, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!30 = !DILocation(line: 7, column: 3, scope: !29)
!31 = !DILocation(line: 51, column: 21, scope: !29)
!32 = !DILocation(line: 3, column: 9, scope: !29)
!33 = !DILocation(line: 4, column: 10, scope: !29)
!34 = !DILocation(line: 5, column: 14, scope: !29)
!35 = !DILocation(line: 6, column: 10, scope: !29)
!36 = !DILocation(line: 8, column: 9, scope: !29)
!37 = !DILocation(line: 9, column: 10, scope: !29)
!38 = !DILocation(line: 10, column: 14, scope: !29)
!39 = !DILocation(line: 11, column: 10, scope: !29)
!40 = !DILocation(line: 13, column: 9, scope: !29)
!41 = !DILocation(line: 14, column: 10, scope: !29)
!42 = !DILocation(line: 15, column: 14, scope: !29)
!43 = !DILocation(line: 16, column: 10, scope: !29)
!44 = !DILocation(line: 18, column: 9, scope: !29)
!45 = !DILocation(line: 19, column: 10, scope: !29)
!46 = !DILocation(line: 20, column: 14, scope: !29)
!47 = !DILocation(line: 21, column: 10, scope: !29)
!48 = !DILocation(line: 23, column: 9, scope: !29)
!49 = !DILocation(line: 24, column: 10, scope: !29)
!50 = !DILocation(line: 25, column: 14, scope: !29)
!51 = !DILocation(line: 26, column: 10, scope: !29)
!52 = !DILocation(line: 28, column: 9, scope: !29)
!53 = !DILocation(line: 29, column: 10, scope: !29)
!54 = !DILocation(line: 30, column: 14, scope: !29)
!55 = !DILocation(line: 31, column: 10, scope: !29)
!56 = !DILocation(line: 33, column: 9, scope: !29)
!57 = !DILocation(line: 34, column: 10, scope: !29)
!58 = !DILocation(line: 35, column: 14, scope: !29)
!59 = !DILocation(line: 36, column: 10, scope: !29)
!60 = !DILocation(line: 38, column: 9, scope: !29)
!61 = !DILocation(line: 39, column: 10, scope: !29)
!62 = !DILocation(line: 40, column: 14, scope: !29)
!63 = !DILocation(line: 41, column: 10, scope: !29)
!64 = !DILocation(line: 48, column: 12, scope: !29)
!65 = !DILocation(line: 49, column: 12, scope: !29)
!66 = !DILocation(line: 51, column: 1, scope: !29)
