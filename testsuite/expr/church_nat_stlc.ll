; (* Church-encoded natural numbers (instantiated to Uint32, so it's basically STLC) *)
; (* zero *)
; let c0 = fun (s : Uint32 -> Uint32) => fun (z : Uint32) => z
; in
; (* one *)
; let c1 = fun (s : Uint32 -> Uint32) => fun (z : Uint32) => s z
; in
; (* two *)
; let c2 = fun (s : Uint32 -> Uint32) => fun (z : Uint32) => let sz = s z in s sz
; in
; (* addition *)
; let cadd : ((Uint32 -> Uint32) -> Uint32 -> Uint32) -> ((Uint32 -> Uint32) -> Uint32 -> Uint32) -> ((Uint32 -> Uint32) -> Uint32 -> Uint32) =
; fun (m : (Uint32 -> Uint32) -> Uint32 -> Uint32) =>
; fun (n : (Uint32 -> Uint32) -> Uint32 -> Uint32) =>
; fun (s : Uint32 -> Uint32) =>
; fun (z : Uint32) =>
; let nsz = n s z in
; m s nsz
; in
; (* multiplication *)
; let cmul : ((Uint32 -> Uint32) -> Uint32 -> Uint32) -> ((Uint32 -> Uint32) -> Uint32 -> Uint32) -> ((Uint32 -> Uint32) -> Uint32 -> Uint32) =
; fun (m : (Uint32 -> Uint32) -> Uint32 -> Uint32) =>
; fun (n : (Uint32 -> Uint32) -> Uint32 -> Uint32) =>
; fun (s : Uint32 -> Uint32) =>
; let add_m = m s in
; n add_m
; in
; (* exponentiation is not definable in STLC (https://arxiv.org/abs/cs/0701022) *)
; (* Convert Church-encoded nats to Uint32 *)
; let church_nat_to_uint32 : ((Uint32 -> Uint32) -> Uint32 -> Uint32) -> Uint32 =
; fun (c : (Uint32 -> Uint32) -> Uint32 -> Uint32) =>
; let zero = Uint32 0 in
; let one = Uint32 1 in
; let add1 = fun (x : Uint32) => builtin add one x in
; c add1 zero
; in
; (* tests *)
; let c4 = cmul c2 c2 in
; let c16 = cmul c4 c4 in
; let c32 = cadd c16 c16 in
; let c128 = cmul c4 c32 in
; let c256 = cadd c128 c128 in
; let c65536 = cmul c256 c256 in
; let c131072 = cadd c65536 c65536 in
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_48" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$$fundef_46_env_73" = type { %Uint32 }
%Uint32 = type { i32 }
%"$$fundef_44_env_74" = type {}
%"$$fundef_42_env_75" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } }
%"$$fundef_40_env_76" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } }
%"$$fundef_38_env_77" = type {}
%"$$fundef_36_env_78" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_34_env_79" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } }
%"$$fundef_32_env_80" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } }
%"$$fundef_30_env_81" = type {}
%"$$fundef_28_env_82" = type { { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_26_env_83" = type {}

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_49" = global %"$TyDescrTy_PrimTyp_48" zeroinitializer
@"$TyDescr_Int32_50" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_48"* @"$TyDescr_Int32_Prim_49" to i8*) }
@"$TyDescr_Uint32_Prim_51" = global %"$TyDescrTy_PrimTyp_48" { i32 1, i32 0 }
@"$TyDescr_Uint32_52" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_48"* @"$TyDescr_Uint32_Prim_51" to i8*) }
@"$TyDescr_Int64_Prim_53" = global %"$TyDescrTy_PrimTyp_48" { i32 0, i32 1 }
@"$TyDescr_Int64_54" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_48"* @"$TyDescr_Int64_Prim_53" to i8*) }
@"$TyDescr_Uint64_Prim_55" = global %"$TyDescrTy_PrimTyp_48" { i32 1, i32 1 }
@"$TyDescr_Uint64_56" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_48"* @"$TyDescr_Uint64_Prim_55" to i8*) }
@"$TyDescr_Int128_Prim_57" = global %"$TyDescrTy_PrimTyp_48" { i32 0, i32 2 }
@"$TyDescr_Int128_58" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_48"* @"$TyDescr_Int128_Prim_57" to i8*) }
@"$TyDescr_Uint128_Prim_59" = global %"$TyDescrTy_PrimTyp_48" { i32 1, i32 2 }
@"$TyDescr_Uint128_60" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_48"* @"$TyDescr_Uint128_Prim_59" to i8*) }
@"$TyDescr_Int256_Prim_61" = global %"$TyDescrTy_PrimTyp_48" { i32 0, i32 3 }
@"$TyDescr_Int256_62" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_48"* @"$TyDescr_Int256_Prim_61" to i8*) }
@"$TyDescr_Uint256_Prim_63" = global %"$TyDescrTy_PrimTyp_48" { i32 1, i32 3 }
@"$TyDescr_Uint256_64" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_48"* @"$TyDescr_Uint256_Prim_63" to i8*) }
@"$TyDescr_String_Prim_65" = global %"$TyDescrTy_PrimTyp_48" { i32 2, i32 0 }
@"$TyDescr_String_66" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_48"* @"$TyDescr_String_Prim_65" to i8*) }
@"$TyDescr_Bystr_Prim_67" = global %"$TyDescrTy_PrimTyp_48" { i32 7, i32 0 }
@"$TyDescr_Bystr_68" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_48"* @"$TyDescr_Bystr_Prim_67" to i8*) }

define internal %Uint32 @"$fundef_46"(%"$$fundef_46_env_73"* %0, %Uint32 %1) {
entry:
  %"$$fundef_46_env_one_211" = getelementptr inbounds %"$$fundef_46_env_73", %"$$fundef_46_env_73"* %0, i32 0, i32 0
  %"$one_envload_212" = load %Uint32, %Uint32* %"$$fundef_46_env_one_211"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_212", %Uint32* %one
  %"$retval_47" = alloca %Uint32
  %"$one_213" = load %Uint32, %Uint32* %one
  %"$add_call_214" = call %Uint32 @_add_Uint32(%Uint32 %"$one_213", %Uint32 %1)
  store %Uint32 %"$add_call_214", %Uint32* %"$retval_47"
  %"$$retval_47_215" = load %Uint32, %Uint32* %"$retval_47"
  ret %Uint32 %"$$retval_47_215"
}

define internal %Uint32 @"$fundef_44"(%"$$fundef_44_env_74"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) {
entry:
  %"$retval_45" = alloca %Uint32
  %zero = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %add1 = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$$fundef_46_envp_194_load" = load i8*, i8** @_execptr
  %"$$fundef_46_envp_194_salloc" = call i8* @_salloc(i8* %"$$fundef_46_envp_194_load", i64 4)
  %"$$fundef_46_envp_194" = bitcast i8* %"$$fundef_46_envp_194_salloc" to %"$$fundef_46_env_73"*
  %"$$fundef_46_env_voidp_196" = bitcast %"$$fundef_46_env_73"* %"$$fundef_46_envp_194" to i8*
  %"$$fundef_46_cloval_197" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_46_env_73"*, %Uint32)* @"$fundef_46" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_46_env_voidp_196", 1
  %"$$fundef_46_env_one_198" = getelementptr inbounds %"$$fundef_46_env_73", %"$$fundef_46_env_73"* %"$$fundef_46_envp_194", i32 0, i32 0
  %"$one_199" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_199", %Uint32* %"$$fundef_46_env_one_198"
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_46_cloval_197", { %Uint32 (i8*, %Uint32)*, i8* }* %add1
  %"$c_8" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$c_fptr_200" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, 0
  %"$c_envptr_201" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, 1
  %"$add1_202" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %add1
  %"$c_call_203" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$c_fptr_200"(i8* %"$c_envptr_201", { %Uint32 (i8*, %Uint32)*, i8* } %"$add1_202")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$c_call_203", { %Uint32 (i8*, %Uint32)*, i8* }* %"$c_8"
  %"$c_9" = alloca %Uint32
  %"$$c_8_204" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$c_8"
  %"$$c_8_fptr_205" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c_8_204", 0
  %"$$c_8_envptr_206" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c_8_204", 1
  %"$zero_207" = load %Uint32, %Uint32* %zero
  %"$$c_8_call_208" = call %Uint32 %"$$c_8_fptr_205"(i8* %"$$c_8_envptr_206", %Uint32 %"$zero_207")
  store %Uint32 %"$$c_8_call_208", %Uint32* %"$c_9"
  %"$$c_9_209" = load %Uint32, %Uint32* %"$c_9"
  store %Uint32 %"$$c_9_209", %Uint32* %"$retval_45"
  %"$$retval_45_210" = load %Uint32, %Uint32* %"$retval_45"
  ret %Uint32 %"$$retval_45_210"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_42"(%"$$fundef_42_env_75"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$$fundef_42_env_m_178" = getelementptr inbounds %"$$fundef_42_env_75", %"$$fundef_42_env_75"* %0, i32 0, i32 0
  %"$m_envload_179" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_42_env_m_178"
  %m = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_envload_179", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m
  %"$$fundef_42_env_n_180" = getelementptr inbounds %"$$fundef_42_env_75", %"$$fundef_42_env_75"* %0, i32 0, i32 1
  %"$n_envload_181" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_42_env_n_180"
  %n = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_envload_181", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %n
  %"$retval_43" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %add_m = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$m_6" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$m_182" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m
  %"$m_fptr_183" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_182", 0
  %"$m_envptr_184" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_182", 1
  %"$m_call_185" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$m_fptr_183"(i8* %"$m_envptr_184", { %Uint32 (i8*, %Uint32)*, i8* } %1)
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$m_call_185", { %Uint32 (i8*, %Uint32)*, i8* }* %"$m_6"
  %"$$m_6_186" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$m_6"
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$m_6_186", { %Uint32 (i8*, %Uint32)*, i8* }* %add_m
  %"$n_7" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$n_187" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %n
  %"$n_fptr_188" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_187", 0
  %"$n_envptr_189" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_187", 1
  %"$add_m_190" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %add_m
  %"$n_call_191" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$n_fptr_188"(i8* %"$n_envptr_189", { %Uint32 (i8*, %Uint32)*, i8* } %"$add_m_190")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$n_call_191", { %Uint32 (i8*, %Uint32)*, i8* }* %"$n_7"
  %"$$n_7_192" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$n_7"
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$n_7_192", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_43"
  %"$$retval_43_193" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_43"
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_43_193"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_40"(%"$$fundef_40_env_76"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) {
entry:
  %"$$fundef_40_env_m_168" = getelementptr inbounds %"$$fundef_40_env_76", %"$$fundef_40_env_76"* %0, i32 0, i32 0
  %"$m_envload_169" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_40_env_m_168"
  %m = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_envload_169", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m
  %"$retval_41" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$$fundef_42_envp_170_load" = load i8*, i8** @_execptr
  %"$$fundef_42_envp_170_salloc" = call i8* @_salloc(i8* %"$$fundef_42_envp_170_load", i64 32)
  %"$$fundef_42_envp_170" = bitcast i8* %"$$fundef_42_envp_170_salloc" to %"$$fundef_42_env_75"*
  %"$$fundef_42_env_voidp_172" = bitcast %"$$fundef_42_env_75"* %"$$fundef_42_envp_170" to i8*
  %"$$fundef_42_cloval_173" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_42_env_75"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_42" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* undef }, i8* %"$$fundef_42_env_voidp_172", 1
  %"$$fundef_42_env_m_174" = getelementptr inbounds %"$$fundef_42_env_75", %"$$fundef_42_env_75"* %"$$fundef_42_envp_170", i32 0, i32 0
  %"$m_175" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_175", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_42_env_m_174"
  %"$$fundef_42_env_n_176" = getelementptr inbounds %"$$fundef_42_env_75", %"$$fundef_42_env_75"* %"$$fundef_42_envp_170", i32 0, i32 1
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_42_env_n_176"
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$fundef_42_cloval_173", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_41"
  %"$$retval_41_177" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_41"
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_41_177"
}

define internal { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } @"$fundef_38"(%"$$fundef_38_env_77"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) {
entry:
  %"$retval_39" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }
  %"$$fundef_40_envp_162_load" = load i8*, i8** @_execptr
  %"$$fundef_40_envp_162_salloc" = call i8* @_salloc(i8* %"$$fundef_40_envp_162_load", i64 16)
  %"$$fundef_40_envp_162" = bitcast i8* %"$$fundef_40_envp_162_salloc" to %"$$fundef_40_env_76"*
  %"$$fundef_40_env_voidp_164" = bitcast %"$$fundef_40_env_76"* %"$$fundef_40_envp_162" to i8*
  %"$$fundef_40_cloval_165" = insertvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_40_env_76"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_40" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_40_env_voidp_164", 1
  %"$$fundef_40_env_m_166" = getelementptr inbounds %"$$fundef_40_env_76", %"$$fundef_40_env_76"* %"$$fundef_40_envp_162", i32 0, i32 0
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_40_env_m_166"
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$fundef_40_cloval_165", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$retval_39"
  %"$$retval_39_167" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$retval_39"
  ret { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$retval_39_167"
}

define internal %Uint32 @"$fundef_36"(%"$$fundef_36_env_78"* %0, %Uint32 %1) {
entry:
  %"$$fundef_36_env_m_134" = getelementptr inbounds %"$$fundef_36_env_78", %"$$fundef_36_env_78"* %0, i32 0, i32 0
  %"$m_envload_135" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_36_env_m_134"
  %m = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_envload_135", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m
  %"$$fundef_36_env_n_136" = getelementptr inbounds %"$$fundef_36_env_78", %"$$fundef_36_env_78"* %0, i32 0, i32 1
  %"$n_envload_137" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_36_env_n_136"
  %n = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_envload_137", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %n
  %"$$fundef_36_env_s_138" = getelementptr inbounds %"$$fundef_36_env_78", %"$$fundef_36_env_78"* %0, i32 0, i32 2
  %"$s_envload_139" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_36_env_s_138"
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_139", { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$retval_37" = alloca %Uint32
  %nsz = alloca %Uint32
  %"$n_2" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$n_140" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %n
  %"$n_fptr_141" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_140", 0
  %"$n_envptr_142" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_140", 1
  %"$s_143" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$n_call_144" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$n_fptr_141"(i8* %"$n_envptr_142", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_143")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$n_call_144", { %Uint32 (i8*, %Uint32)*, i8* }* %"$n_2"
  %"$n_3" = alloca %Uint32
  %"$$n_2_145" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$n_2"
  %"$$n_2_fptr_146" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$n_2_145", 0
  %"$$n_2_envptr_147" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$n_2_145", 1
  %"$$n_2_call_148" = call %Uint32 %"$$n_2_fptr_146"(i8* %"$$n_2_envptr_147", %Uint32 %1)
  store %Uint32 %"$$n_2_call_148", %Uint32* %"$n_3"
  %"$$n_3_149" = load %Uint32, %Uint32* %"$n_3"
  store %Uint32 %"$$n_3_149", %Uint32* %nsz
  %"$m_4" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$m_150" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m
  %"$m_fptr_151" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_150", 0
  %"$m_envptr_152" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_150", 1
  %"$s_153" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$m_call_154" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$m_fptr_151"(i8* %"$m_envptr_152", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_153")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$m_call_154", { %Uint32 (i8*, %Uint32)*, i8* }* %"$m_4"
  %"$m_5" = alloca %Uint32
  %"$$m_4_155" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$m_4"
  %"$$m_4_fptr_156" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$m_4_155", 0
  %"$$m_4_envptr_157" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$m_4_155", 1
  %"$nsz_158" = load %Uint32, %Uint32* %nsz
  %"$$m_4_call_159" = call %Uint32 %"$$m_4_fptr_156"(i8* %"$$m_4_envptr_157", %Uint32 %"$nsz_158")
  store %Uint32 %"$$m_4_call_159", %Uint32* %"$m_5"
  %"$$m_5_160" = load %Uint32, %Uint32* %"$m_5"
  store %Uint32 %"$$m_5_160", %Uint32* %"$retval_37"
  %"$$retval_37_161" = load %Uint32, %Uint32* %"$retval_37"
  ret %Uint32 %"$$retval_37_161"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_34"(%"$$fundef_34_env_79"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$$fundef_34_env_m_120" = getelementptr inbounds %"$$fundef_34_env_79", %"$$fundef_34_env_79"* %0, i32 0, i32 0
  %"$m_envload_121" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_34_env_m_120"
  %m = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_envload_121", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m
  %"$$fundef_34_env_n_122" = getelementptr inbounds %"$$fundef_34_env_79", %"$$fundef_34_env_79"* %0, i32 0, i32 1
  %"$n_envload_123" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_34_env_n_122"
  %n = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_envload_123", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %n
  %"$retval_35" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$$fundef_36_envp_124_load" = load i8*, i8** @_execptr
  %"$$fundef_36_envp_124_salloc" = call i8* @_salloc(i8* %"$$fundef_36_envp_124_load", i64 48)
  %"$$fundef_36_envp_124" = bitcast i8* %"$$fundef_36_envp_124_salloc" to %"$$fundef_36_env_78"*
  %"$$fundef_36_env_voidp_126" = bitcast %"$$fundef_36_env_78"* %"$$fundef_36_envp_124" to i8*
  %"$$fundef_36_cloval_127" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_36_env_78"*, %Uint32)* @"$fundef_36" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_36_env_voidp_126", 1
  %"$$fundef_36_env_m_128" = getelementptr inbounds %"$$fundef_36_env_78", %"$$fundef_36_env_78"* %"$$fundef_36_envp_124", i32 0, i32 0
  %"$m_129" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_129", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_36_env_m_128"
  %"$$fundef_36_env_n_130" = getelementptr inbounds %"$$fundef_36_env_78", %"$$fundef_36_env_78"* %"$$fundef_36_envp_124", i32 0, i32 1
  %"$n_131" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %n
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_131", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_36_env_n_130"
  %"$$fundef_36_env_s_132" = getelementptr inbounds %"$$fundef_36_env_78", %"$$fundef_36_env_78"* %"$$fundef_36_envp_124", i32 0, i32 2
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_36_env_s_132"
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_36_cloval_127", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_35"
  %"$$retval_35_133" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_35"
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_35_133"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_32"(%"$$fundef_32_env_80"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) {
entry:
  %"$$fundef_32_env_m_110" = getelementptr inbounds %"$$fundef_32_env_80", %"$$fundef_32_env_80"* %0, i32 0, i32 0
  %"$m_envload_111" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_32_env_m_110"
  %m = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_envload_111", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m
  %"$retval_33" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$$fundef_34_envp_112_load" = load i8*, i8** @_execptr
  %"$$fundef_34_envp_112_salloc" = call i8* @_salloc(i8* %"$$fundef_34_envp_112_load", i64 32)
  %"$$fundef_34_envp_112" = bitcast i8* %"$$fundef_34_envp_112_salloc" to %"$$fundef_34_env_79"*
  %"$$fundef_34_env_voidp_114" = bitcast %"$$fundef_34_env_79"* %"$$fundef_34_envp_112" to i8*
  %"$$fundef_34_cloval_115" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_34_env_79"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_34" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* undef }, i8* %"$$fundef_34_env_voidp_114", 1
  %"$$fundef_34_env_m_116" = getelementptr inbounds %"$$fundef_34_env_79", %"$$fundef_34_env_79"* %"$$fundef_34_envp_112", i32 0, i32 0
  %"$m_117" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_117", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_34_env_m_116"
  %"$$fundef_34_env_n_118" = getelementptr inbounds %"$$fundef_34_env_79", %"$$fundef_34_env_79"* %"$$fundef_34_envp_112", i32 0, i32 1
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_34_env_n_118"
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$fundef_34_cloval_115", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_33"
  %"$$retval_33_119" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_33"
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_33_119"
}

define internal { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } @"$fundef_30"(%"$$fundef_30_env_81"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) {
entry:
  %"$retval_31" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }
  %"$$fundef_32_envp_104_load" = load i8*, i8** @_execptr
  %"$$fundef_32_envp_104_salloc" = call i8* @_salloc(i8* %"$$fundef_32_envp_104_load", i64 16)
  %"$$fundef_32_envp_104" = bitcast i8* %"$$fundef_32_envp_104_salloc" to %"$$fundef_32_env_80"*
  %"$$fundef_32_env_voidp_106" = bitcast %"$$fundef_32_env_80"* %"$$fundef_32_envp_104" to i8*
  %"$$fundef_32_cloval_107" = insertvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_32_env_80"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_32" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_32_env_voidp_106", 1
  %"$$fundef_32_env_m_108" = getelementptr inbounds %"$$fundef_32_env_80", %"$$fundef_32_env_80"* %"$$fundef_32_envp_104", i32 0, i32 0
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_32_env_m_108"
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$fundef_32_cloval_107", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$retval_31"
  %"$$retval_31_109" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$retval_31"
  ret { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$retval_31_109"
}

define internal %Uint32 @"$fundef_28"(%"$$fundef_28_env_82"* %0, %Uint32 %1) {
entry:
  %"$$fundef_28_env_s_90" = getelementptr inbounds %"$$fundef_28_env_82", %"$$fundef_28_env_82"* %0, i32 0, i32 0
  %"$s_envload_91" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_s_90"
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_91", { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$retval_29" = alloca %Uint32
  %sz = alloca %Uint32
  %"$s_0" = alloca %Uint32
  %"$s_92" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$s_fptr_93" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_92", 0
  %"$s_envptr_94" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_92", 1
  %"$s_call_95" = call %Uint32 %"$s_fptr_93"(i8* %"$s_envptr_94", %Uint32 %1)
  store %Uint32 %"$s_call_95", %Uint32* %"$s_0"
  %"$$s_0_96" = load %Uint32, %Uint32* %"$s_0"
  store %Uint32 %"$$s_0_96", %Uint32* %sz
  %"$s_1" = alloca %Uint32
  %"$s_97" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$s_fptr_98" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_97", 0
  %"$s_envptr_99" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_97", 1
  %"$sz_100" = load %Uint32, %Uint32* %sz
  %"$s_call_101" = call %Uint32 %"$s_fptr_98"(i8* %"$s_envptr_99", %Uint32 %"$sz_100")
  store %Uint32 %"$s_call_101", %Uint32* %"$s_1"
  %"$$s_1_102" = load %Uint32, %Uint32* %"$s_1"
  store %Uint32 %"$$s_1_102", %Uint32* %"$retval_29"
  %"$$retval_29_103" = load %Uint32, %Uint32* %"$retval_29"
  ret %Uint32 %"$$retval_29_103"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_26"(%"$$fundef_26_env_83"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_27" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$$fundef_28_envp_84_load" = load i8*, i8** @_execptr
  %"$$fundef_28_envp_84_salloc" = call i8* @_salloc(i8* %"$$fundef_28_envp_84_load", i64 16)
  %"$$fundef_28_envp_84" = bitcast i8* %"$$fundef_28_envp_84_salloc" to %"$$fundef_28_env_82"*
  %"$$fundef_28_env_voidp_86" = bitcast %"$$fundef_28_env_82"* %"$$fundef_28_envp_84" to i8*
  %"$$fundef_28_cloval_87" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_28_env_82"*, %Uint32)* @"$fundef_28" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_28_env_voidp_86", 1
  %"$$fundef_28_env_s_88" = getelementptr inbounds %"$$fundef_28_env_82", %"$$fundef_28_env_82"* %"$$fundef_28_envp_84", i32 0, i32 0
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_28_env_s_88"
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_28_cloval_87", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_27"
  %"$$retval_27_89" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_27"
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_27_89"
}

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_216"(i8* %0) {
entry:
  %"$expr_25" = alloca %Uint32
  %c2 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_26_env_83"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_26" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c2
  %cadd = alloca { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }
  store { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast ({ { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (%"$$fundef_30_env_81"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_30" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* null }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cadd
  %cmul = alloca { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }
  store { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast ({ { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (%"$$fundef_38_env_77"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_38" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* null }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cmul
  %church_nat_to_uint32 = alloca { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }
  store { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast (%Uint32 (%"$$fundef_44_env_74"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_44" to %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* null }, { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %church_nat_to_uint32
  %c4 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$cmul_10" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }
  %"$cmul_229" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cmul
  %"$cmul_fptr_230" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_229", 0
  %"$cmul_envptr_231" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_229", 1
  %"$c2_232" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c2
  %"$cmul_call_233" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_fptr_230"(i8* %"$cmul_envptr_231", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c2_232")
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_call_233", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_10"
  %"$cmul_11" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$$cmul_10_234" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_10"
  %"$$cmul_10_fptr_235" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_10_234", 0
  %"$$cmul_10_envptr_236" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_10_234", 1
  %"$c2_237" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c2
  %"$$cmul_10_call_238" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_10_fptr_235"(i8* %"$$cmul_10_envptr_236", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c2_237")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_10_call_238", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_11"
  %"$$cmul_11_239" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_11"
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_11_239", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c4
  %c16 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$cmul_12" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }
  %"$cmul_240" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cmul
  %"$cmul_fptr_241" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_240", 0
  %"$cmul_envptr_242" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_240", 1
  %"$c4_243" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c4
  %"$cmul_call_244" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_fptr_241"(i8* %"$cmul_envptr_242", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c4_243")
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_call_244", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_12"
  %"$cmul_13" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$$cmul_12_245" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_12"
  %"$$cmul_12_fptr_246" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_12_245", 0
  %"$$cmul_12_envptr_247" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_12_245", 1
  %"$c4_248" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c4
  %"$$cmul_12_call_249" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_12_fptr_246"(i8* %"$$cmul_12_envptr_247", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c4_248")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_12_call_249", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_13"
  %"$$cmul_13_250" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_13"
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_13_250", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c16
  %c32 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$cadd_14" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }
  %"$cadd_251" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cadd
  %"$cadd_fptr_252" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_251", 0
  %"$cadd_envptr_253" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_251", 1
  %"$c16_254" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c16
  %"$cadd_call_255" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_fptr_252"(i8* %"$cadd_envptr_253", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c16_254")
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_call_255", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_14"
  %"$cadd_15" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$$cadd_14_256" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_14"
  %"$$cadd_14_fptr_257" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_14_256", 0
  %"$$cadd_14_envptr_258" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_14_256", 1
  %"$c16_259" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c16
  %"$$cadd_14_call_260" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_14_fptr_257"(i8* %"$$cadd_14_envptr_258", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c16_259")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_14_call_260", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_15"
  %"$$cadd_15_261" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_15"
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_15_261", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32
  %c128 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$cmul_16" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }
  %"$cmul_262" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cmul
  %"$cmul_fptr_263" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_262", 0
  %"$cmul_envptr_264" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_262", 1
  %"$c4_265" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c4
  %"$cmul_call_266" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_fptr_263"(i8* %"$cmul_envptr_264", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c4_265")
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_call_266", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_16"
  %"$cmul_17" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$$cmul_16_267" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_16"
  %"$$cmul_16_fptr_268" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_16_267", 0
  %"$$cmul_16_envptr_269" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_16_267", 1
  %"$c32_270" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32
  %"$$cmul_16_call_271" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_16_fptr_268"(i8* %"$$cmul_16_envptr_269", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_270")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_16_call_271", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_17"
  %"$$cmul_17_272" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_17"
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_17_272", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c128
  %c256 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$cadd_18" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }
  %"$cadd_273" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cadd
  %"$cadd_fptr_274" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_273", 0
  %"$cadd_envptr_275" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_273", 1
  %"$c128_276" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c128
  %"$cadd_call_277" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_fptr_274"(i8* %"$cadd_envptr_275", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c128_276")
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_call_277", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_18"
  %"$cadd_19" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$$cadd_18_278" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_18"
  %"$$cadd_18_fptr_279" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_18_278", 0
  %"$$cadd_18_envptr_280" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_18_278", 1
  %"$c128_281" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c128
  %"$$cadd_18_call_282" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_18_fptr_279"(i8* %"$$cadd_18_envptr_280", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c128_281")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_18_call_282", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_19"
  %"$$cadd_19_283" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_19"
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_19_283", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c256
  %c65536 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$cmul_20" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }
  %"$cmul_284" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cmul
  %"$cmul_fptr_285" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_284", 0
  %"$cmul_envptr_286" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_284", 1
  %"$c256_287" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c256
  %"$cmul_call_288" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_fptr_285"(i8* %"$cmul_envptr_286", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c256_287")
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_call_288", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_20"
  %"$cmul_21" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$$cmul_20_289" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_20"
  %"$$cmul_20_fptr_290" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_20_289", 0
  %"$$cmul_20_envptr_291" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_20_289", 1
  %"$c256_292" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c256
  %"$$cmul_20_call_293" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_20_fptr_290"(i8* %"$$cmul_20_envptr_291", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c256_292")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_20_call_293", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_21"
  %"$$cmul_21_294" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_21"
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_21_294", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c65536
  %c131072 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$cadd_22" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }
  %"$cadd_295" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cadd
  %"$cadd_fptr_296" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_295", 0
  %"$cadd_envptr_297" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_295", 1
  %"$c65536_298" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c65536
  %"$cadd_call_299" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_fptr_296"(i8* %"$cadd_envptr_297", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c65536_298")
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_call_299", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_22"
  %"$cadd_23" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$$cadd_22_300" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_22"
  %"$$cadd_22_fptr_301" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_22_300", 0
  %"$$cadd_22_envptr_302" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_22_300", 1
  %"$c65536_303" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c65536
  %"$$cadd_22_call_304" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_22_fptr_301"(i8* %"$$cadd_22_envptr_302", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c65536_303")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_22_call_304", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_23"
  %"$$cadd_23_305" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_23"
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_23_305", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c131072
  %"$church_nat_to_uint32_24" = alloca %Uint32
  %"$church_nat_to_uint32_306" = load { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %church_nat_to_uint32
  %"$church_nat_to_uint32_fptr_307" = extractvalue { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$church_nat_to_uint32_306", 0
  %"$church_nat_to_uint32_envptr_308" = extractvalue { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$church_nat_to_uint32_306", 1
  %"$c131072_309" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c131072
  %"$church_nat_to_uint32_call_310" = call %Uint32 %"$church_nat_to_uint32_fptr_307"(i8* %"$church_nat_to_uint32_envptr_308", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c131072_309")
  store %Uint32 %"$church_nat_to_uint32_call_310", %Uint32* %"$church_nat_to_uint32_24"
  %"$$church_nat_to_uint32_24_311" = load %Uint32, %Uint32* %"$church_nat_to_uint32_24"
  store %Uint32 %"$$church_nat_to_uint32_24_311", %Uint32* %"$expr_25"
  %"$$expr_25_312" = load %Uint32, %Uint32* %"$expr_25"
  ret %Uint32 %"$$expr_25_312"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_313" = call %Uint32 @"$scilla_expr_216"(i8* null)
  %"$pval_314" = alloca %Uint32
  %"$memvoidcast_315" = bitcast %Uint32* %"$pval_314" to i8*
  store %Uint32 %"$exprval_313", %Uint32* %"$pval_314"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_52", i8* %"$memvoidcast_315")
  ret void
}
