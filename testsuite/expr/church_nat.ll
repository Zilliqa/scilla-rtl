; (* Church-encoded natural numbers *)
; (* zero *)
; let c0 = tfun 'X => fun (s : 'X -> 'X) => fun (z : 'X) => z
; in
; (* one *)
; let c1 = tfun 'X => fun (s : 'X -> 'X) => fun (z : 'X) => s z
; in
; (* two *)
; let c2 = tfun 'X => fun (s : 'X -> 'X) => fun (z : 'X) => let sz = s z in s sz
; in
; (* addition *)
; let cadd : (forall 'X. ('X -> 'X) -> 'X -> 'X) -> (forall 'X. ('X -> 'X) -> 'X -> 'X) -> (forall 'X. ('X -> 'X) -> 'X -> 'X) =
; fun (m : forall 'X. ('X -> 'X) -> 'X -> 'X) =>
; fun (n : forall 'X. ('X -> 'X) -> 'X -> 'X) =>
; tfun 'X =>
; fun (s : 'X -> 'X) =>
; fun (z : 'X) =>
; let mX = @m 'X in
; let nX = @n 'X in
; let nXsz = nX s z in
; mX s nXsz
; in
; (* multiplication *)
; let cmul : (forall 'X. ('X -> 'X) -> 'X -> 'X) -> (forall 'X. ('X -> 'X) -> 'X -> 'X) -> (forall 'X. ('X -> 'X) -> 'X -> 'X) =
; fun (m : forall 'X. ('X -> 'X) -> 'X -> 'X) =>
; fun (n : forall 'X. ('X -> 'X) -> 'X -> 'X) =>
; let cadd_m = cadd m in
; let nI = @n (forall 'X. ('X -> 'X) -> 'X -> 'X) in
; nI cadd_m c0
; in
; (* Convert Church-encoded nats to Uint32 *)
; let church_nat_to_uint32 : (forall 'X. ('X -> 'X) -> 'X -> 'X) -> Uint32 =
; fun (c : forall 'X. ('X -> 'X) -> 'X -> 'X) =>
; let zero = Uint32 0 in
; let one = Uint32 1 in
; let add1 = fun (x : Uint32) => builtin add one x in
; let c32 = @c Uint32 in
; c32 add1 zero
; in
; (* tests *)
; let c4 = cmul c2 c2 in
; let c16 = cmul c4 c4 in
; let c32 = cadd c16 c16 in
; let c128 = cmul c4 c32 in
; let c256 = cadd c128 c128 in
; let c65536 = cmul c256 c256 in
; church_nat_to_uint32 c65536
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_73" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$$fundef_71_env_98" = type { %Uint32 }
%Uint32 = type { i32 }
%"$$fundef_69_env_99" = type {}
%"$$fundef_67_env_100" = type { { i8*, i8* }*, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { i8*, i8* }* }
%"$$fundef_65_env_101" = type { { i8*, i8* }*, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } }
%"$$fundef_63_env_102" = type { { i8*, i8* }*, { i8*, i8* }*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } }
%"$$fundef_61_env_103" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_59_env_104" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_57_env_105" = type { { i8*, i8* }*, { i8*, i8* }*, { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_55_env_106" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_53_env_107" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_51_env_108" = type { { i8*, i8* }* }
%"$$fundef_49_env_109" = type {}
%"$$fundef_47_env_110" = type { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } }
%"$$fundef_45_env_111" = type {}
%"$$fundef_43_env_112" = type {}
%"$$fundef_41_env_113" = type { { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_39_env_114" = type {}
%"$$fundef_37_env_115" = type {}
%"$$fundef_35_env_116" = type {}
%"$$fundef_33_env_117" = type {}
%"$$fundef_31_env_118" = type {}
%"$$fundef_29_env_119" = type {}
%"$$fundef_27_env_120" = type {}
%"$$fundef_25_env_121" = type {}

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_74" = global %"$TyDescrTy_PrimTyp_73" zeroinitializer
@"$TyDescr_Int32_75" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Int32_Prim_74" to i8*) }
@"$TyDescr_Uint32_Prim_76" = global %"$TyDescrTy_PrimTyp_73" { i32 1, i32 0 }
@"$TyDescr_Uint32_77" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Uint32_Prim_76" to i8*) }
@"$TyDescr_Int64_Prim_78" = global %"$TyDescrTy_PrimTyp_73" { i32 0, i32 1 }
@"$TyDescr_Int64_79" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Int64_Prim_78" to i8*) }
@"$TyDescr_Uint64_Prim_80" = global %"$TyDescrTy_PrimTyp_73" { i32 1, i32 1 }
@"$TyDescr_Uint64_81" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Uint64_Prim_80" to i8*) }
@"$TyDescr_Int128_Prim_82" = global %"$TyDescrTy_PrimTyp_73" { i32 0, i32 2 }
@"$TyDescr_Int128_83" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Int128_Prim_82" to i8*) }
@"$TyDescr_Uint128_Prim_84" = global %"$TyDescrTy_PrimTyp_73" { i32 1, i32 2 }
@"$TyDescr_Uint128_85" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Uint128_Prim_84" to i8*) }
@"$TyDescr_Int256_Prim_86" = global %"$TyDescrTy_PrimTyp_73" { i32 0, i32 3 }
@"$TyDescr_Int256_87" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Int256_Prim_86" to i8*) }
@"$TyDescr_Uint256_Prim_88" = global %"$TyDescrTy_PrimTyp_73" { i32 1, i32 3 }
@"$TyDescr_Uint256_89" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Uint256_Prim_88" to i8*) }
@"$TyDescr_String_Prim_90" = global %"$TyDescrTy_PrimTyp_73" { i32 2, i32 0 }
@"$TyDescr_String_91" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_String_Prim_90" to i8*) }
@"$TyDescr_Bystr_Prim_92" = global %"$TyDescrTy_PrimTyp_73" { i32 7, i32 0 }
@"$TyDescr_Bystr_93" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Bystr_Prim_92" to i8*) }

define internal %Uint32 @"$fundef_71"(%"$$fundef_71_env_98"* %0, %Uint32 %1) {
entry:
  %"$$fundef_71_env_one_418" = getelementptr inbounds %"$$fundef_71_env_98", %"$$fundef_71_env_98"* %0, i32 0, i32 0
  %"$one_envload_419" = load %Uint32, %Uint32* %"$$fundef_71_env_one_418"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_419", %Uint32* %one
  %"$retval_72" = alloca %Uint32
  %"$one_420" = load %Uint32, %Uint32* %one
  %"$add_call_421" = call %Uint32 @_add_Uint32(%Uint32 %"$one_420", %Uint32 %1)
  store %Uint32 %"$add_call_421", %Uint32* %"$retval_72"
  %"$$retval_72_422" = load %Uint32, %Uint32* %"$retval_72"
  ret %Uint32 %"$$retval_72_422"
}

define internal %Uint32 @"$fundef_69"(%"$$fundef_69_env_99"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_70" = alloca %Uint32
  %zero = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %add1 = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$$fundef_71_envp_394_load" = load i8*, i8** @_execptr
  %"$$fundef_71_envp_394_salloc" = call i8* @_salloc(i8* %"$$fundef_71_envp_394_load", i64 4)
  %"$$fundef_71_envp_394" = bitcast i8* %"$$fundef_71_envp_394_salloc" to %"$$fundef_71_env_98"*
  %"$$fundef_71_env_voidp_396" = bitcast %"$$fundef_71_env_98"* %"$$fundef_71_envp_394" to i8*
  %"$$fundef_71_cloval_397" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_71_env_98"*, %Uint32)* @"$fundef_71" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_71_env_voidp_396", 1
  %"$$fundef_71_env_one_398" = getelementptr inbounds %"$$fundef_71_env_98", %"$$fundef_71_env_98"* %"$$fundef_71_envp_394", i32 0, i32 0
  %"$one_399" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_399", %Uint32* %"$$fundef_71_env_one_398"
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_71_cloval_397", { %Uint32 (i8*, %Uint32)*, i8* }* %add1
  %c32 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$c_400" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$c_401" = bitcast { i8*, i8* }* %"$c_400" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$c_402" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$c_401"
  %"$c_fptr_403" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$c_402", 0
  %"$c_envptr_404" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$c_402", 1
  %"$c_call_405" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c_fptr_403"(i8* %"$c_envptr_404")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c_call_405", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32
  %"$c32_9" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$c32_406" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32
  %"$c32_fptr_407" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_406", 0
  %"$c32_envptr_408" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_406", 1
  %"$add1_409" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %add1
  %"$c32_call_410" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_fptr_407"(i8* %"$c32_envptr_408", { %Uint32 (i8*, %Uint32)*, i8* } %"$add1_409")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_call_410", { %Uint32 (i8*, %Uint32)*, i8* }* %"$c32_9"
  %"$c32_10" = alloca %Uint32
  %"$$c32_9_411" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$c32_9"
  %"$$c32_9_fptr_412" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c32_9_411", 0
  %"$$c32_9_envptr_413" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c32_9_411", 1
  %"$zero_414" = load %Uint32, %Uint32* %zero
  %"$$c32_9_call_415" = call %Uint32 %"$$c32_9_fptr_412"(i8* %"$$c32_9_envptr_413", %Uint32 %"$zero_414")
  store %Uint32 %"$$c32_9_call_415", %Uint32* %"$c32_10"
  %"$$c32_10_416" = load %Uint32, %Uint32* %"$c32_10"
  store %Uint32 %"$$c32_10_416", %Uint32* %"$retval_70"
  %"$$retval_70_417" = load %Uint32, %Uint32* %"$retval_70"
  ret %Uint32 %"$$retval_70_417"
}

define internal { i8*, i8* }* @"$fundef_67"(%"$$fundef_67_env_100"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_67_env_c0_364" = getelementptr inbounds %"$$fundef_67_env_100", %"$$fundef_67_env_100"* %0, i32 0, i32 0
  %"$c0_envload_365" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_c0_364"
  %c0 = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$c0_envload_365", { i8*, i8* }** %c0
  %"$$fundef_67_env_cadd_366" = getelementptr inbounds %"$$fundef_67_env_100", %"$$fundef_67_env_100"* %0, i32 0, i32 1
  %"$cadd_envload_367" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_67_env_cadd_366"
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_envload_367", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %"$$fundef_67_env_m_368" = getelementptr inbounds %"$$fundef_67_env_100", %"$$fundef_67_env_100"* %0, i32 0, i32 2
  %"$m_envload_369" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_m_368"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_369", { i8*, i8* }** %m
  %"$retval_68" = alloca { i8*, i8* }*
  %cadd_m = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cadd_6" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cadd_370" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %"$cadd_fptr_371" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_370", 0
  %"$cadd_envptr_372" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_370", 1
  %"$m_373" = load { i8*, i8* }*, { i8*, i8* }** %m
  %"$cadd_call_374" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_371"(i8* %"$cadd_envptr_372", { i8*, i8* }* %"$m_373")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_374", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_6"
  %"$$cadd_6_375" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_6"
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_6_375", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %cadd_m
  %nI = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }
  %"$n_376" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 1
  %"$n_377" = bitcast { i8*, i8* }* %"$n_376" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_378" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_377"
  %"$n_fptr_379" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_378", 0
  %"$n_envptr_380" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_378", 1
  %"$n_call_381" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_fptr_379"(i8* %"$n_envptr_380")
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_call_381", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nI
  %"$nI_7" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$nI_382" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nI
  %"$nI_fptr_383" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nI_382", 0
  %"$nI_envptr_384" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nI_382", 1
  %"$cadd_m_385" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %cadd_m
  %"$nI_call_386" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nI_fptr_383"(i8* %"$nI_envptr_384", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_m_385")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nI_call_386", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nI_7"
  %"$nI_8" = alloca { i8*, i8* }*
  %"$$nI_7_387" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nI_7"
  %"$$nI_7_fptr_388" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nI_7_387", 0
  %"$$nI_7_envptr_389" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nI_7_387", 1
  %"$c0_390" = load { i8*, i8* }*, { i8*, i8* }** %c0
  %"$$nI_7_call_391" = call { i8*, i8* }* %"$$nI_7_fptr_388"(i8* %"$$nI_7_envptr_389", { i8*, i8* }* %"$c0_390")
  store { i8*, i8* }* %"$$nI_7_call_391", { i8*, i8* }** %"$nI_8"
  %"$$nI_8_392" = load { i8*, i8* }*, { i8*, i8* }** %"$nI_8"
  store { i8*, i8* }* %"$$nI_8_392", { i8*, i8* }** %"$retval_68"
  %"$$retval_68_393" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_68"
  ret { i8*, i8* }* %"$$retval_68_393"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_65"(%"$$fundef_65_env_101"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_65_env_c0_350" = getelementptr inbounds %"$$fundef_65_env_101", %"$$fundef_65_env_101"* %0, i32 0, i32 0
  %"$c0_envload_351" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_65_env_c0_350"
  %c0 = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$c0_envload_351", { i8*, i8* }** %c0
  %"$$fundef_65_env_cadd_352" = getelementptr inbounds %"$$fundef_65_env_101", %"$$fundef_65_env_101"* %0, i32 0, i32 1
  %"$cadd_envload_353" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_65_env_cadd_352"
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_envload_353", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %"$retval_66" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_67_envp_354_load" = load i8*, i8** @_execptr
  %"$$fundef_67_envp_354_salloc" = call i8* @_salloc(i8* %"$$fundef_67_envp_354_load", i64 32)
  %"$$fundef_67_envp_354" = bitcast i8* %"$$fundef_67_envp_354_salloc" to %"$$fundef_67_env_100"*
  %"$$fundef_67_env_voidp_356" = bitcast %"$$fundef_67_env_100"* %"$$fundef_67_envp_354" to i8*
  %"$$fundef_67_cloval_357" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_67_env_100"*, { i8*, i8* }*)* @"$fundef_67" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_67_env_voidp_356", 1
  %"$$fundef_67_env_c0_358" = getelementptr inbounds %"$$fundef_67_env_100", %"$$fundef_67_env_100"* %"$$fundef_67_envp_354", i32 0, i32 0
  %"$c0_359" = load { i8*, i8* }*, { i8*, i8* }** %c0
  store { i8*, i8* }* %"$c0_359", { i8*, i8* }** %"$$fundef_67_env_c0_358"
  %"$$fundef_67_env_cadd_360" = getelementptr inbounds %"$$fundef_67_env_100", %"$$fundef_67_env_100"* %"$$fundef_67_envp_354", i32 0, i32 1
  %"$cadd_361" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_361", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_67_env_cadd_360"
  %"$$fundef_67_env_m_362" = getelementptr inbounds %"$$fundef_67_env_100", %"$$fundef_67_env_100"* %"$$fundef_67_envp_354", i32 0, i32 2
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_67_env_m_362"
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_67_cloval_357", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66"
  %"$$retval_66_363" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66"
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_66_363"
}

define internal { i8*, i8* }* @"$fundef_63"(%"$$fundef_63_env_102"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_63_env_m_308" = getelementptr inbounds %"$$fundef_63_env_102", %"$$fundef_63_env_102"* %0, i32 0, i32 0
  %"$m_envload_309" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_63_env_m_308"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_309", { i8*, i8* }** %m
  %"$$fundef_63_env_n_310" = getelementptr inbounds %"$$fundef_63_env_102", %"$$fundef_63_env_102"* %0, i32 0, i32 1
  %"$n_envload_311" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_63_env_n_310"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_311", { i8*, i8* }** %n
  %"$$fundef_63_env_s_312" = getelementptr inbounds %"$$fundef_63_env_102", %"$$fundef_63_env_102"* %0, i32 0, i32 2
  %"$s_envload_313" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_63_env_s_312"
  %s = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_envload_313", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s
  %"$retval_64" = alloca { i8*, i8* }*
  %mX = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }
  %"$m_314" = load { i8*, i8* }*, { i8*, i8* }** %m
  %"$m_315" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$m_314", i32 1
  %"$m_316" = bitcast { i8*, i8* }* %"$m_315" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$m_317" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$m_316"
  %"$m_fptr_318" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$m_317", 0
  %"$m_envptr_319" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$m_317", 1
  %"$m_call_320" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$m_fptr_318"(i8* %"$m_envptr_319")
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$m_call_320", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %mX
  %nX = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }
  %"$n_321" = load { i8*, i8* }*, { i8*, i8* }** %n
  %"$n_322" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_321", i32 1
  %"$n_323" = bitcast { i8*, i8* }* %"$n_322" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_324" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_323"
  %"$n_fptr_325" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_324", 0
  %"$n_envptr_326" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_324", 1
  %"$n_call_327" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_fptr_325"(i8* %"$n_envptr_326")
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_call_327", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nX
  %nXsz = alloca { i8*, i8* }*
  %"$nX_2" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$nX_328" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nX
  %"$nX_fptr_329" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nX_328", 0
  %"$nX_envptr_330" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nX_328", 1
  %"$s_331" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s
  %"$nX_call_332" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nX_fptr_329"(i8* %"$nX_envptr_330", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_331")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nX_call_332", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nX_2"
  %"$nX_3" = alloca { i8*, i8* }*
  %"$$nX_2_333" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nX_2"
  %"$$nX_2_fptr_334" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nX_2_333", 0
  %"$$nX_2_envptr_335" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nX_2_333", 1
  %"$$nX_2_call_336" = call { i8*, i8* }* %"$$nX_2_fptr_334"(i8* %"$$nX_2_envptr_335", { i8*, i8* }* %1)
  store { i8*, i8* }* %"$$nX_2_call_336", { i8*, i8* }** %"$nX_3"
  %"$$nX_3_337" = load { i8*, i8* }*, { i8*, i8* }** %"$nX_3"
  store { i8*, i8* }* %"$$nX_3_337", { i8*, i8* }** %nXsz
  %"$mX_4" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$mX_338" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %mX
  %"$mX_fptr_339" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$mX_338", 0
  %"$mX_envptr_340" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$mX_338", 1
  %"$s_341" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s
  %"$mX_call_342" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$mX_fptr_339"(i8* %"$mX_envptr_340", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_341")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$mX_call_342", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$mX_4"
  %"$mX_5" = alloca { i8*, i8* }*
  %"$$mX_4_343" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$mX_4"
  %"$$mX_4_fptr_344" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$mX_4_343", 0
  %"$$mX_4_envptr_345" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$mX_4_343", 1
  %"$nXsz_346" = load { i8*, i8* }*, { i8*, i8* }** %nXsz
  %"$$mX_4_call_347" = call { i8*, i8* }* %"$$mX_4_fptr_344"(i8* %"$$mX_4_envptr_345", { i8*, i8* }* %"$nXsz_346")
  store { i8*, i8* }* %"$$mX_4_call_347", { i8*, i8* }** %"$mX_5"
  %"$$mX_5_348" = load { i8*, i8* }*, { i8*, i8* }** %"$mX_5"
  store { i8*, i8* }* %"$$mX_5_348", { i8*, i8* }** %"$retval_64"
  %"$$retval_64_349" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_64"
  ret { i8*, i8* }* %"$$retval_64_349"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_61"(%"$$fundef_61_env_103"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) {
entry:
  %"$$fundef_61_env_m_294" = getelementptr inbounds %"$$fundef_61_env_103", %"$$fundef_61_env_103"* %0, i32 0, i32 0
  %"$m_envload_295" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_61_env_m_294"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_295", { i8*, i8* }** %m
  %"$$fundef_61_env_n_296" = getelementptr inbounds %"$$fundef_61_env_103", %"$$fundef_61_env_103"* %0, i32 0, i32 1
  %"$n_envload_297" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_61_env_n_296"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_297", { i8*, i8* }** %n
  %"$retval_62" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_63_envp_298_load" = load i8*, i8** @_execptr
  %"$$fundef_63_envp_298_salloc" = call i8* @_salloc(i8* %"$$fundef_63_envp_298_load", i64 32)
  %"$$fundef_63_envp_298" = bitcast i8* %"$$fundef_63_envp_298_salloc" to %"$$fundef_63_env_102"*
  %"$$fundef_63_env_voidp_300" = bitcast %"$$fundef_63_env_102"* %"$$fundef_63_envp_298" to i8*
  %"$$fundef_63_cloval_301" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_63_env_102"*, { i8*, i8* }*)* @"$fundef_63" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_63_env_voidp_300", 1
  %"$$fundef_63_env_m_302" = getelementptr inbounds %"$$fundef_63_env_102", %"$$fundef_63_env_102"* %"$$fundef_63_envp_298", i32 0, i32 0
  %"$m_303" = load { i8*, i8* }*, { i8*, i8* }** %m
  store { i8*, i8* }* %"$m_303", { i8*, i8* }** %"$$fundef_63_env_m_302"
  %"$$fundef_63_env_n_304" = getelementptr inbounds %"$$fundef_63_env_102", %"$$fundef_63_env_102"* %"$$fundef_63_envp_298", i32 0, i32 1
  %"$n_305" = load { i8*, i8* }*, { i8*, i8* }** %n
  store { i8*, i8* }* %"$n_305", { i8*, i8* }** %"$$fundef_63_env_n_304"
  %"$$fundef_63_env_s_306" = getelementptr inbounds %"$$fundef_63_env_102", %"$$fundef_63_env_102"* %"$$fundef_63_envp_298", i32 0, i32 2
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_63_env_s_306"
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_63_cloval_301", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62"
  %"$$retval_62_307" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62"
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_62_307"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_59"(%"$$fundef_59_env_104"* %0) {
entry:
  %"$$fundef_59_env_m_281" = getelementptr inbounds %"$$fundef_59_env_104", %"$$fundef_59_env_104"* %0, i32 0, i32 0
  %"$m_envload_282" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_59_env_m_281"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_282", { i8*, i8* }** %m
  %"$$fundef_59_env_n_283" = getelementptr inbounds %"$$fundef_59_env_104", %"$$fundef_59_env_104"* %0, i32 0, i32 1
  %"$n_envload_284" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_59_env_n_283"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_284", { i8*, i8* }** %n
  %"$retval_60" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }
  %"$$fundef_61_envp_285_load" = load i8*, i8** @_execptr
  %"$$fundef_61_envp_285_salloc" = call i8* @_salloc(i8* %"$$fundef_61_envp_285_load", i64 16)
  %"$$fundef_61_envp_285" = bitcast i8* %"$$fundef_61_envp_285_salloc" to %"$$fundef_61_env_103"*
  %"$$fundef_61_env_voidp_287" = bitcast %"$$fundef_61_env_103"* %"$$fundef_61_envp_285" to i8*
  %"$$fundef_61_cloval_288" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_61_env_103"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_61" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* undef }, i8* %"$$fundef_61_env_voidp_287", 1
  %"$$fundef_61_env_m_289" = getelementptr inbounds %"$$fundef_61_env_103", %"$$fundef_61_env_103"* %"$$fundef_61_envp_285", i32 0, i32 0
  %"$m_290" = load { i8*, i8* }*, { i8*, i8* }** %m
  store { i8*, i8* }* %"$m_290", { i8*, i8* }** %"$$fundef_61_env_m_289"
  %"$$fundef_61_env_n_291" = getelementptr inbounds %"$$fundef_61_env_103", %"$$fundef_61_env_103"* %"$$fundef_61_envp_285", i32 0, i32 1
  %"$n_292" = load { i8*, i8* }*, { i8*, i8* }** %n
  store { i8*, i8* }* %"$n_292", { i8*, i8* }** %"$$fundef_61_env_n_291"
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$fundef_61_cloval_288", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_60"
  %"$$retval_60_293" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_60"
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_60_293"
}

define internal %Uint32 @"$fundef_57"(%"$$fundef_57_env_105"* %0, %Uint32 %1) {
entry:
  %"$$fundef_57_env_m_239" = getelementptr inbounds %"$$fundef_57_env_105", %"$$fundef_57_env_105"* %0, i32 0, i32 0
  %"$m_envload_240" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_57_env_m_239"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_240", { i8*, i8* }** %m
  %"$$fundef_57_env_n_241" = getelementptr inbounds %"$$fundef_57_env_105", %"$$fundef_57_env_105"* %0, i32 0, i32 1
  %"$n_envload_242" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_57_env_n_241"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_242", { i8*, i8* }** %n
  %"$$fundef_57_env_s_243" = getelementptr inbounds %"$$fundef_57_env_105", %"$$fundef_57_env_105"* %0, i32 0, i32 2
  %"$s_envload_244" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_57_env_s_243"
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_244", { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$retval_58" = alloca %Uint32
  %mX = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$m_245" = load { i8*, i8* }*, { i8*, i8* }** %m
  %"$m_246" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$m_245", i32 0
  %"$m_247" = bitcast { i8*, i8* }* %"$m_246" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$m_248" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$m_247"
  %"$m_fptr_249" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$m_248", 0
  %"$m_envptr_250" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$m_248", 1
  %"$m_call_251" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_fptr_249"(i8* %"$m_envptr_250")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_call_251", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %mX
  %nX = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$n_252" = load { i8*, i8* }*, { i8*, i8* }** %n
  %"$n_253" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_252", i32 0
  %"$n_254" = bitcast { i8*, i8* }* %"$n_253" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_255" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_254"
  %"$n_fptr_256" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$n_255", 0
  %"$n_envptr_257" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$n_255", 1
  %"$n_call_258" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_fptr_256"(i8* %"$n_envptr_257")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_call_258", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %nX
  %nXsz = alloca %Uint32
  %"$nX_2" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$nX_259" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %nX
  %"$nX_fptr_260" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$nX_259", 0
  %"$nX_envptr_261" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$nX_259", 1
  %"$s_262" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$nX_call_263" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_fptr_260"(i8* %"$nX_envptr_261", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_262")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_call_263", { %Uint32 (i8*, %Uint32)*, i8* }* %"$nX_2"
  %"$nX_3" = alloca %Uint32
  %"$$nX_2_264" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$nX_2"
  %"$$nX_2_fptr_265" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$nX_2_264", 0
  %"$$nX_2_envptr_266" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$nX_2_264", 1
  %"$$nX_2_call_267" = call %Uint32 %"$$nX_2_fptr_265"(i8* %"$$nX_2_envptr_266", %Uint32 %1)
  store %Uint32 %"$$nX_2_call_267", %Uint32* %"$nX_3"
  %"$$nX_3_268" = load %Uint32, %Uint32* %"$nX_3"
  store %Uint32 %"$$nX_3_268", %Uint32* %nXsz
  %"$mX_4" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$mX_269" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %mX
  %"$mX_fptr_270" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$mX_269", 0
  %"$mX_envptr_271" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$mX_269", 1
  %"$s_272" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$mX_call_273" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$mX_fptr_270"(i8* %"$mX_envptr_271", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_272")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$mX_call_273", { %Uint32 (i8*, %Uint32)*, i8* }* %"$mX_4"
  %"$mX_5" = alloca %Uint32
  %"$$mX_4_274" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$mX_4"
  %"$$mX_4_fptr_275" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$mX_4_274", 0
  %"$$mX_4_envptr_276" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$mX_4_274", 1
  %"$nXsz_277" = load %Uint32, %Uint32* %nXsz
  %"$$mX_4_call_278" = call %Uint32 %"$$mX_4_fptr_275"(i8* %"$$mX_4_envptr_276", %Uint32 %"$nXsz_277")
  store %Uint32 %"$$mX_4_call_278", %Uint32* %"$mX_5"
  %"$$mX_5_279" = load %Uint32, %Uint32* %"$mX_5"
  store %Uint32 %"$$mX_5_279", %Uint32* %"$retval_58"
  %"$$retval_58_280" = load %Uint32, %Uint32* %"$retval_58"
  ret %Uint32 %"$$retval_58_280"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_55"(%"$$fundef_55_env_106"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$$fundef_55_env_m_225" = getelementptr inbounds %"$$fundef_55_env_106", %"$$fundef_55_env_106"* %0, i32 0, i32 0
  %"$m_envload_226" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_55_env_m_225"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_226", { i8*, i8* }** %m
  %"$$fundef_55_env_n_227" = getelementptr inbounds %"$$fundef_55_env_106", %"$$fundef_55_env_106"* %0, i32 0, i32 1
  %"$n_envload_228" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_55_env_n_227"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_228", { i8*, i8* }** %n
  %"$retval_56" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$$fundef_57_envp_229_load" = load i8*, i8** @_execptr
  %"$$fundef_57_envp_229_salloc" = call i8* @_salloc(i8* %"$$fundef_57_envp_229_load", i64 32)
  %"$$fundef_57_envp_229" = bitcast i8* %"$$fundef_57_envp_229_salloc" to %"$$fundef_57_env_105"*
  %"$$fundef_57_env_voidp_231" = bitcast %"$$fundef_57_env_105"* %"$$fundef_57_envp_229" to i8*
  %"$$fundef_57_cloval_232" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_57_env_105"*, %Uint32)* @"$fundef_57" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_57_env_voidp_231", 1
  %"$$fundef_57_env_m_233" = getelementptr inbounds %"$$fundef_57_env_105", %"$$fundef_57_env_105"* %"$$fundef_57_envp_229", i32 0, i32 0
  %"$m_234" = load { i8*, i8* }*, { i8*, i8* }** %m
  store { i8*, i8* }* %"$m_234", { i8*, i8* }** %"$$fundef_57_env_m_233"
  %"$$fundef_57_env_n_235" = getelementptr inbounds %"$$fundef_57_env_105", %"$$fundef_57_env_105"* %"$$fundef_57_envp_229", i32 0, i32 1
  %"$n_236" = load { i8*, i8* }*, { i8*, i8* }** %n
  store { i8*, i8* }* %"$n_236", { i8*, i8* }** %"$$fundef_57_env_n_235"
  %"$$fundef_57_env_s_237" = getelementptr inbounds %"$$fundef_57_env_105", %"$$fundef_57_env_105"* %"$$fundef_57_envp_229", i32 0, i32 2
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_57_env_s_237"
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_57_cloval_232", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_56"
  %"$$retval_56_238" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_56"
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_56_238"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_53"(%"$$fundef_53_env_107"* %0) {
entry:
  %"$$fundef_53_env_m_212" = getelementptr inbounds %"$$fundef_53_env_107", %"$$fundef_53_env_107"* %0, i32 0, i32 0
  %"$m_envload_213" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_53_env_m_212"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_213", { i8*, i8* }** %m
  %"$$fundef_53_env_n_214" = getelementptr inbounds %"$$fundef_53_env_107", %"$$fundef_53_env_107"* %0, i32 0, i32 1
  %"$n_envload_215" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_53_env_n_214"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_215", { i8*, i8* }** %n
  %"$retval_54" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$$fundef_55_envp_216_load" = load i8*, i8** @_execptr
  %"$$fundef_55_envp_216_salloc" = call i8* @_salloc(i8* %"$$fundef_55_envp_216_load", i64 16)
  %"$$fundef_55_envp_216" = bitcast i8* %"$$fundef_55_envp_216_salloc" to %"$$fundef_55_env_106"*
  %"$$fundef_55_env_voidp_218" = bitcast %"$$fundef_55_env_106"* %"$$fundef_55_envp_216" to i8*
  %"$$fundef_55_cloval_219" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_55_env_106"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_55" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* undef }, i8* %"$$fundef_55_env_voidp_218", 1
  %"$$fundef_55_env_m_220" = getelementptr inbounds %"$$fundef_55_env_106", %"$$fundef_55_env_106"* %"$$fundef_55_envp_216", i32 0, i32 0
  %"$m_221" = load { i8*, i8* }*, { i8*, i8* }** %m
  store { i8*, i8* }* %"$m_221", { i8*, i8* }** %"$$fundef_55_env_m_220"
  %"$$fundef_55_env_n_222" = getelementptr inbounds %"$$fundef_55_env_106", %"$$fundef_55_env_106"* %"$$fundef_55_envp_216", i32 0, i32 1
  %"$n_223" = load { i8*, i8* }*, { i8*, i8* }** %n
  store { i8*, i8* }* %"$n_223", { i8*, i8* }** %"$$fundef_55_env_n_222"
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$fundef_55_cloval_219", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_54"
  %"$$retval_54_224" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_54"
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_54_224"
}

define internal { i8*, i8* }* @"$fundef_51"(%"$$fundef_51_env_108"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_51_env_m_194" = getelementptr inbounds %"$$fundef_51_env_108", %"$$fundef_51_env_108"* %0, i32 0, i32 0
  %"$m_envload_195" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_51_env_m_194"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_195", { i8*, i8* }** %m
  %"$retval_52" = alloca { i8*, i8* }*
  %"$$fundef_53_envp_196_load" = load i8*, i8** @_execptr
  %"$$fundef_53_envp_196_salloc" = call i8* @_salloc(i8* %"$$fundef_53_envp_196_load", i64 16)
  %"$$fundef_53_envp_196" = bitcast i8* %"$$fundef_53_envp_196_salloc" to %"$$fundef_53_env_107"*
  %"$$fundef_53_env_voidp_198" = bitcast %"$$fundef_53_env_107"* %"$$fundef_53_envp_196" to i8*
  %"$$fundef_53_cloval_199" = insertvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_53_env_107"*)* @"$fundef_53" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_53_env_voidp_198", 1
  %"$$fundef_53_env_m_200" = getelementptr inbounds %"$$fundef_53_env_107", %"$$fundef_53_env_107"* %"$$fundef_53_envp_196", i32 0, i32 0
  %"$m_201" = load { i8*, i8* }*, { i8*, i8* }** %m
  store { i8*, i8* }* %"$m_201", { i8*, i8* }** %"$$fundef_53_env_m_200"
  %"$$fundef_53_env_n_202" = getelementptr inbounds %"$$fundef_53_env_107", %"$$fundef_53_env_107"* %"$$fundef_53_envp_196", i32 0, i32 1
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_53_env_n_202"
  %"$$fundef_59_env_voidp_204" = bitcast %"$$fundef_53_env_107"* %"$$fundef_53_envp_196" to i8*
  %"$$fundef_59_cloval_205" = insertvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_59_env_104"*)* @"$fundef_59" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_59_env_voidp_204", 1
  %"$dyndisp_table_206_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_206_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_206_salloc_load", i64 32)
  %"$dyndisp_table_206_salloc" = bitcast i8* %"$dyndisp_table_206_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_206" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_206_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_207" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_206", i32 0
  %"$dyndisp_pcast_208" = bitcast { i8*, i8* }* %"$dyndisp_gep_207" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_53_cloval_199", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_208"
  %"$dyndisp_gep_209" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_206", i32 1
  %"$dyndisp_pcast_210" = bitcast { i8*, i8* }* %"$dyndisp_gep_209" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_59_cloval_205", { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_210"
  store { i8*, i8* }* %"$dyndisp_table_206", { i8*, i8* }** %"$retval_52"
  %"$$retval_52_211" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_52"
  ret { i8*, i8* }* %"$$retval_52_211"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_49"(%"$$fundef_49_env_109"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_50" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_51_envp_188_load" = load i8*, i8** @_execptr
  %"$$fundef_51_envp_188_salloc" = call i8* @_salloc(i8* %"$$fundef_51_envp_188_load", i64 8)
  %"$$fundef_51_envp_188" = bitcast i8* %"$$fundef_51_envp_188_salloc" to %"$$fundef_51_env_108"*
  %"$$fundef_51_env_voidp_190" = bitcast %"$$fundef_51_env_108"* %"$$fundef_51_envp_188" to i8*
  %"$$fundef_51_cloval_191" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_51_env_108"*, { i8*, i8* }*)* @"$fundef_51" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_51_env_voidp_190", 1
  %"$$fundef_51_env_m_192" = getelementptr inbounds %"$$fundef_51_env_108", %"$$fundef_51_env_108"* %"$$fundef_51_envp_188", i32 0, i32 0
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_51_env_m_192"
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_51_cloval_191", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_50"
  %"$$retval_50_193" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_50"
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_50_193"
}

define internal { i8*, i8* }* @"$fundef_47"(%"$$fundef_47_env_110"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_47_env_s_174" = getelementptr inbounds %"$$fundef_47_env_110", %"$$fundef_47_env_110"* %0, i32 0, i32 0
  %"$s_envload_175" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_47_env_s_174"
  %s = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_envload_175", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s
  %"$retval_48" = alloca { i8*, i8* }*
  %sz = alloca { i8*, i8* }*
  %"$s_0" = alloca { i8*, i8* }*
  %"$s_176" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s
  %"$s_fptr_177" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_176", 0
  %"$s_envptr_178" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_176", 1
  %"$s_call_179" = call { i8*, i8* }* %"$s_fptr_177"(i8* %"$s_envptr_178", { i8*, i8* }* %1)
  store { i8*, i8* }* %"$s_call_179", { i8*, i8* }** %"$s_0"
  %"$$s_0_180" = load { i8*, i8* }*, { i8*, i8* }** %"$s_0"
  store { i8*, i8* }* %"$$s_0_180", { i8*, i8* }** %sz
  %"$s_1" = alloca { i8*, i8* }*
  %"$s_181" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s
  %"$s_fptr_182" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_181", 0
  %"$s_envptr_183" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_181", 1
  %"$sz_184" = load { i8*, i8* }*, { i8*, i8* }** %sz
  %"$s_call_185" = call { i8*, i8* }* %"$s_fptr_182"(i8* %"$s_envptr_183", { i8*, i8* }* %"$sz_184")
  store { i8*, i8* }* %"$s_call_185", { i8*, i8* }** %"$s_1"
  %"$$s_1_186" = load { i8*, i8* }*, { i8*, i8* }** %"$s_1"
  store { i8*, i8* }* %"$$s_1_186", { i8*, i8* }** %"$retval_48"
  %"$$retval_48_187" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_48"
  ret { i8*, i8* }* %"$$retval_48_187"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_45"(%"$$fundef_45_env_111"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) {
entry:
  %"$retval_46" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_47_envp_168_load" = load i8*, i8** @_execptr
  %"$$fundef_47_envp_168_salloc" = call i8* @_salloc(i8* %"$$fundef_47_envp_168_load", i64 16)
  %"$$fundef_47_envp_168" = bitcast i8* %"$$fundef_47_envp_168_salloc" to %"$$fundef_47_env_110"*
  %"$$fundef_47_env_voidp_170" = bitcast %"$$fundef_47_env_110"* %"$$fundef_47_envp_168" to i8*
  %"$$fundef_47_cloval_171" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_47_env_110"*, { i8*, i8* }*)* @"$fundef_47" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_47_env_voidp_170", 1
  %"$$fundef_47_env_s_172" = getelementptr inbounds %"$$fundef_47_env_110", %"$$fundef_47_env_110"* %"$$fundef_47_envp_168", i32 0, i32 0
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_47_env_s_172"
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_47_cloval_171", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_46"
  %"$$retval_46_173" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_46"
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_46_173"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_43"(%"$$fundef_43_env_112"* %0) {
entry:
  %"$retval_44" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_45_env_111"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_45" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_44"
  %"$$retval_44_167" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_44"
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_44_167"
}

define internal %Uint32 @"$fundef_41"(%"$$fundef_41_env_113"* %0, %Uint32 %1) {
entry:
  %"$$fundef_41_env_s_150" = getelementptr inbounds %"$$fundef_41_env_113", %"$$fundef_41_env_113"* %0, i32 0, i32 0
  %"$s_envload_151" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_41_env_s_150"
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_151", { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$retval_42" = alloca %Uint32
  %sz = alloca %Uint32
  %"$s_0" = alloca %Uint32
  %"$s_152" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$s_fptr_153" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_152", 0
  %"$s_envptr_154" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_152", 1
  %"$s_call_155" = call %Uint32 %"$s_fptr_153"(i8* %"$s_envptr_154", %Uint32 %1)
  store %Uint32 %"$s_call_155", %Uint32* %"$s_0"
  %"$$s_0_156" = load %Uint32, %Uint32* %"$s_0"
  store %Uint32 %"$$s_0_156", %Uint32* %sz
  %"$s_1" = alloca %Uint32
  %"$s_157" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$s_fptr_158" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_157", 0
  %"$s_envptr_159" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_157", 1
  %"$sz_160" = load %Uint32, %Uint32* %sz
  %"$s_call_161" = call %Uint32 %"$s_fptr_158"(i8* %"$s_envptr_159", %Uint32 %"$sz_160")
  store %Uint32 %"$s_call_161", %Uint32* %"$s_1"
  %"$$s_1_162" = load %Uint32, %Uint32* %"$s_1"
  store %Uint32 %"$$s_1_162", %Uint32* %"$retval_42"
  %"$$retval_42_163" = load %Uint32, %Uint32* %"$retval_42"
  ret %Uint32 %"$$retval_42_163"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_39"(%"$$fundef_39_env_114"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_40" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$$fundef_41_envp_144_load" = load i8*, i8** @_execptr
  %"$$fundef_41_envp_144_salloc" = call i8* @_salloc(i8* %"$$fundef_41_envp_144_load", i64 16)
  %"$$fundef_41_envp_144" = bitcast i8* %"$$fundef_41_envp_144_salloc" to %"$$fundef_41_env_113"*
  %"$$fundef_41_env_voidp_146" = bitcast %"$$fundef_41_env_113"* %"$$fundef_41_envp_144" to i8*
  %"$$fundef_41_cloval_147" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_41_env_113"*, %Uint32)* @"$fundef_41" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_41_env_voidp_146", 1
  %"$$fundef_41_env_s_148" = getelementptr inbounds %"$$fundef_41_env_113", %"$$fundef_41_env_113"* %"$$fundef_41_envp_144", i32 0, i32 0
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_41_env_s_148"
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_41_cloval_147", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_40"
  %"$$retval_40_149" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_40"
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_40_149"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_37"(%"$$fundef_37_env_115"* %0) {
entry:
  %"$retval_38" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_39_env_114"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_39" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_38"
  %"$$retval_38_143" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_38"
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_38_143"
}

define internal { i8*, i8* }* @"$fundef_35"(%"$$fundef_35_env_116"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_36" = alloca { i8*, i8* }*
  store { i8*, i8* }* %1, { i8*, i8* }** %"$retval_36"
  %"$$retval_36_139" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_36"
  ret { i8*, i8* }* %"$$retval_36_139"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_33"(%"$$fundef_33_env_117"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) {
entry:
  %"$retval_34" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_35_env_116"*, { i8*, i8* }*)* @"$fundef_35" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* null }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_34"
  %"$$retval_34_138" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_34"
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_34_138"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_31"(%"$$fundef_31_env_118"* %0) {
entry:
  %"$retval_32" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_33_env_117"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_33" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_32"
  %"$$retval_32_134" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_32"
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_32_134"
}

define internal %Uint32 @"$fundef_29"(%"$$fundef_29_env_119"* %0, %Uint32 %1) {
entry:
  %"$retval_30" = alloca %Uint32
  store %Uint32 %1, %Uint32* %"$retval_30"
  %"$$retval_30_130" = load %Uint32, %Uint32* %"$retval_30"
  ret %Uint32 %"$$retval_30_130"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_27"(%"$$fundef_27_env_120"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_28" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_29_env_119"*, %Uint32)* @"$fundef_29" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_28"
  %"$$retval_28_129" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_28"
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_28_129"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_25"(%"$$fundef_25_env_121"* %0) {
entry:
  %"$retval_26" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_27_env_120"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_27" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_26"
  %"$$retval_26_125" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_26"
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_26_125"
}

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_423"(i8* %0) {
entry:
  %"$expr_24" = alloca %Uint32
  %c0 = alloca { i8*, i8* }*
  %"$dyndisp_table_430_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_430_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_430_salloc_load", i64 32)
  %"$dyndisp_table_430_salloc" = bitcast i8* %"$dyndisp_table_430_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_430" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_430_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_431" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_430", i32 0
  %"$dyndisp_pcast_432" = bitcast { i8*, i8* }* %"$dyndisp_gep_431" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_25_env_121"*)* @"$fundef_25" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_432"
  %"$dyndisp_gep_433" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_430", i32 1
  %"$dyndisp_pcast_434" = bitcast { i8*, i8* }* %"$dyndisp_gep_433" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_31_env_118"*)* @"$fundef_31" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_434"
  store { i8*, i8* }* %"$dyndisp_table_430", { i8*, i8* }** %c0
  %c2 = alloca { i8*, i8* }*
  %"$dyndisp_table_441_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_441_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_441_salloc_load", i64 32)
  %"$dyndisp_table_441_salloc" = bitcast i8* %"$dyndisp_table_441_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_441" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_441_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_442" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_441", i32 0
  %"$dyndisp_pcast_443" = bitcast { i8*, i8* }* %"$dyndisp_gep_442" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_37_env_115"*)* @"$fundef_37" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_443"
  %"$dyndisp_gep_444" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_441", i32 1
  %"$dyndisp_pcast_445" = bitcast { i8*, i8* }* %"$dyndisp_gep_444" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_43_env_112"*)* @"$fundef_43" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_445"
  store { i8*, i8* }* %"$dyndisp_table_441", { i8*, i8* }** %c2
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_49_env_109"*, { i8*, i8* }*)* @"$fundef_49" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %cmul = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_65_envp_449_load" = load i8*, i8** @_execptr
  %"$$fundef_65_envp_449_salloc" = call i8* @_salloc(i8* %"$$fundef_65_envp_449_load", i64 24)
  %"$$fundef_65_envp_449" = bitcast i8* %"$$fundef_65_envp_449_salloc" to %"$$fundef_65_env_101"*
  %"$$fundef_65_env_voidp_451" = bitcast %"$$fundef_65_env_101"* %"$$fundef_65_envp_449" to i8*
  %"$$fundef_65_cloval_452" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_65_env_101"*, { i8*, i8* }*)* @"$fundef_65" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_65_env_voidp_451", 1
  %"$$fundef_65_env_c0_453" = getelementptr inbounds %"$$fundef_65_env_101", %"$$fundef_65_env_101"* %"$$fundef_65_envp_449", i32 0, i32 0
  %"$c0_454" = load { i8*, i8* }*, { i8*, i8* }** %c0
  store { i8*, i8* }* %"$c0_454", { i8*, i8* }** %"$$fundef_65_env_c0_453"
  %"$$fundef_65_env_cadd_455" = getelementptr inbounds %"$$fundef_65_env_101", %"$$fundef_65_env_101"* %"$$fundef_65_envp_449", i32 0, i32 1
  %"$cadd_456" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_456", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_65_env_cadd_455"
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_65_cloval_452", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul
  %church_nat_to_uint32 = alloca { %Uint32 (i8*, { i8*, i8* }*)*, i8* }
  store { %Uint32 (i8*, { i8*, i8* }*)*, i8* } { %Uint32 (i8*, { i8*, i8* }*)* bitcast (%Uint32 (%"$$fundef_69_env_99"*, { i8*, i8* }*)* @"$fundef_69" to %Uint32 (i8*, { i8*, i8* }*)*), i8* null }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %church_nat_to_uint32
  %c4 = alloca { i8*, i8* }*
  %"$cmul_11" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cmul_460" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul
  %"$cmul_fptr_461" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_460", 0
  %"$cmul_envptr_462" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_460", 1
  %"$c2_463" = load { i8*, i8* }*, { i8*, i8* }** %c2
  %"$cmul_call_464" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_461"(i8* %"$cmul_envptr_462", { i8*, i8* }* %"$c2_463")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_464", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_11"
  %"$cmul_12" = alloca { i8*, i8* }*
  %"$$cmul_11_465" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_11"
  %"$$cmul_11_fptr_466" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_11_465", 0
  %"$$cmul_11_envptr_467" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_11_465", 1
  %"$c2_468" = load { i8*, i8* }*, { i8*, i8* }** %c2
  %"$$cmul_11_call_469" = call { i8*, i8* }* %"$$cmul_11_fptr_466"(i8* %"$$cmul_11_envptr_467", { i8*, i8* }* %"$c2_468")
  store { i8*, i8* }* %"$$cmul_11_call_469", { i8*, i8* }** %"$cmul_12"
  %"$$cmul_12_470" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_12"
  store { i8*, i8* }* %"$$cmul_12_470", { i8*, i8* }** %c4
  %c16 = alloca { i8*, i8* }*
  %"$cmul_13" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cmul_471" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul
  %"$cmul_fptr_472" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_471", 0
  %"$cmul_envptr_473" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_471", 1
  %"$c4_474" = load { i8*, i8* }*, { i8*, i8* }** %c4
  %"$cmul_call_475" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_472"(i8* %"$cmul_envptr_473", { i8*, i8* }* %"$c4_474")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_475", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_13"
  %"$cmul_14" = alloca { i8*, i8* }*
  %"$$cmul_13_476" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_13"
  %"$$cmul_13_fptr_477" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_13_476", 0
  %"$$cmul_13_envptr_478" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_13_476", 1
  %"$c4_479" = load { i8*, i8* }*, { i8*, i8* }** %c4
  %"$$cmul_13_call_480" = call { i8*, i8* }* %"$$cmul_13_fptr_477"(i8* %"$$cmul_13_envptr_478", { i8*, i8* }* %"$c4_479")
  store { i8*, i8* }* %"$$cmul_13_call_480", { i8*, i8* }** %"$cmul_14"
  %"$$cmul_14_481" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_14"
  store { i8*, i8* }* %"$$cmul_14_481", { i8*, i8* }** %c16
  %c32 = alloca { i8*, i8* }*
  %"$cadd_15" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cadd_482" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %"$cadd_fptr_483" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_482", 0
  %"$cadd_envptr_484" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_482", 1
  %"$c16_485" = load { i8*, i8* }*, { i8*, i8* }** %c16
  %"$cadd_call_486" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_483"(i8* %"$cadd_envptr_484", { i8*, i8* }* %"$c16_485")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_486", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_15"
  %"$cadd_16" = alloca { i8*, i8* }*
  %"$$cadd_15_487" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_15"
  %"$$cadd_15_fptr_488" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_15_487", 0
  %"$$cadd_15_envptr_489" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_15_487", 1
  %"$c16_490" = load { i8*, i8* }*, { i8*, i8* }** %c16
  %"$$cadd_15_call_491" = call { i8*, i8* }* %"$$cadd_15_fptr_488"(i8* %"$$cadd_15_envptr_489", { i8*, i8* }* %"$c16_490")
  store { i8*, i8* }* %"$$cadd_15_call_491", { i8*, i8* }** %"$cadd_16"
  %"$$cadd_16_492" = load { i8*, i8* }*, { i8*, i8* }** %"$cadd_16"
  store { i8*, i8* }* %"$$cadd_16_492", { i8*, i8* }** %c32
  %c128 = alloca { i8*, i8* }*
  %"$cmul_17" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cmul_493" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul
  %"$cmul_fptr_494" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_493", 0
  %"$cmul_envptr_495" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_493", 1
  %"$c4_496" = load { i8*, i8* }*, { i8*, i8* }** %c4
  %"$cmul_call_497" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_494"(i8* %"$cmul_envptr_495", { i8*, i8* }* %"$c4_496")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_497", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_17"
  %"$cmul_18" = alloca { i8*, i8* }*
  %"$$cmul_17_498" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_17"
  %"$$cmul_17_fptr_499" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_17_498", 0
  %"$$cmul_17_envptr_500" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_17_498", 1
  %"$c32_501" = load { i8*, i8* }*, { i8*, i8* }** %c32
  %"$$cmul_17_call_502" = call { i8*, i8* }* %"$$cmul_17_fptr_499"(i8* %"$$cmul_17_envptr_500", { i8*, i8* }* %"$c32_501")
  store { i8*, i8* }* %"$$cmul_17_call_502", { i8*, i8* }** %"$cmul_18"
  %"$$cmul_18_503" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_18"
  store { i8*, i8* }* %"$$cmul_18_503", { i8*, i8* }** %c128
  %c256 = alloca { i8*, i8* }*
  %"$cadd_19" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cadd_504" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %"$cadd_fptr_505" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_504", 0
  %"$cadd_envptr_506" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_504", 1
  %"$c128_507" = load { i8*, i8* }*, { i8*, i8* }** %c128
  %"$cadd_call_508" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_505"(i8* %"$cadd_envptr_506", { i8*, i8* }* %"$c128_507")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_508", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_19"
  %"$cadd_20" = alloca { i8*, i8* }*
  %"$$cadd_19_509" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_19"
  %"$$cadd_19_fptr_510" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_19_509", 0
  %"$$cadd_19_envptr_511" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_19_509", 1
  %"$c128_512" = load { i8*, i8* }*, { i8*, i8* }** %c128
  %"$$cadd_19_call_513" = call { i8*, i8* }* %"$$cadd_19_fptr_510"(i8* %"$$cadd_19_envptr_511", { i8*, i8* }* %"$c128_512")
  store { i8*, i8* }* %"$$cadd_19_call_513", { i8*, i8* }** %"$cadd_20"
  %"$$cadd_20_514" = load { i8*, i8* }*, { i8*, i8* }** %"$cadd_20"
  store { i8*, i8* }* %"$$cadd_20_514", { i8*, i8* }** %c256
  %c65536 = alloca { i8*, i8* }*
  %"$cmul_21" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cmul_515" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul
  %"$cmul_fptr_516" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_515", 0
  %"$cmul_envptr_517" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_515", 1
  %"$c256_518" = load { i8*, i8* }*, { i8*, i8* }** %c256
  %"$cmul_call_519" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_516"(i8* %"$cmul_envptr_517", { i8*, i8* }* %"$c256_518")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_519", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_21"
  %"$cmul_22" = alloca { i8*, i8* }*
  %"$$cmul_21_520" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_21"
  %"$$cmul_21_fptr_521" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_21_520", 0
  %"$$cmul_21_envptr_522" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_21_520", 1
  %"$c256_523" = load { i8*, i8* }*, { i8*, i8* }** %c256
  %"$$cmul_21_call_524" = call { i8*, i8* }* %"$$cmul_21_fptr_521"(i8* %"$$cmul_21_envptr_522", { i8*, i8* }* %"$c256_523")
  store { i8*, i8* }* %"$$cmul_21_call_524", { i8*, i8* }** %"$cmul_22"
  %"$$cmul_22_525" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_22"
  store { i8*, i8* }* %"$$cmul_22_525", { i8*, i8* }** %c65536
  %"$church_nat_to_uint32_23" = alloca %Uint32
  %"$church_nat_to_uint32_526" = load { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %church_nat_to_uint32
  %"$church_nat_to_uint32_fptr_527" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$church_nat_to_uint32_526", 0
  %"$church_nat_to_uint32_envptr_528" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$church_nat_to_uint32_526", 1
  %"$c65536_529" = load { i8*, i8* }*, { i8*, i8* }** %c65536
  %"$church_nat_to_uint32_call_530" = call %Uint32 %"$church_nat_to_uint32_fptr_527"(i8* %"$church_nat_to_uint32_envptr_528", { i8*, i8* }* %"$c65536_529")
  store %Uint32 %"$church_nat_to_uint32_call_530", %Uint32* %"$church_nat_to_uint32_23"
  %"$$church_nat_to_uint32_23_531" = load %Uint32, %Uint32* %"$church_nat_to_uint32_23"
  store %Uint32 %"$$church_nat_to_uint32_23_531", %Uint32* %"$expr_24"
  %"$$expr_24_532" = load %Uint32, %Uint32* %"$expr_24"
  ret %Uint32 %"$$expr_24_532"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_533" = call %Uint32 @"$scilla_expr_423"(i8* null)
  %"$pval_534" = alloca %Uint32
  %"$memvoidcast_535" = bitcast %Uint32* %"$pval_534" to i8*
  store %Uint32 %"$exprval_533", %Uint32* %"$pval_534"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_77", i8* %"$memvoidcast_535")
  ret void
}
