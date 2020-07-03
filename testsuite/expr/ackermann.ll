; (* some helper functions one would hope to find in stdlib *)
; let nat_succ : Nat -> Nat =
; fun (n : Nat) => Succ n
; in
; 
; (* [nat_iter 'A f n] = f^n -- functional power operator *)
; let nat_iter : forall 'A. ('A -> 'A) -> Nat -> ('A -> 'A) =
; tfun 'A =>
; fun (f : 'A -> 'A) =>
; fun (n : Nat) =>
; fun (x0 : 'A) =>
; let folder = @nat_fold 'A in
; let step = fun (x : 'A) => fun (unused : Nat) => f x in
; folder step x0 n
; in
; 
; let ackermann : Nat -> Nat -> Nat =
; let iter_nat = @nat_iter Nat in
; let iter_nat_nat = @nat_iter (Nat -> Nat) in
; let zero = Zero in
; let one = Succ zero in
; let f = fun (ack : Nat -> Nat) =>
; let x0 = ack one in
; fun (n : Nat) => iter_nat ack n x0
; in fun (n : Nat) => iter_nat_nat f n nat_succ
; in
; 
; (* tests *)
; let uint0 = Uint32 0 in
; let uint1 = Uint32 1 in
; let uint2 = Uint32 2 in
; let uint3 = Uint32 3 in
; let uint4 = Uint32 4 in
; 
; let n0 = builtin to_nat uint0 in
; let n1 = builtin to_nat uint1 in
; let n2 = builtin to_nat uint2 in
; let n3 = builtin to_nat uint3 in
; let n4 = builtin to_nat uint4 in
; 
; let ack00 = ackermann n0 n0 in
; let ack01 = ackermann n0 n1 in
; let ack02 = ackermann n0 n2 in
; let ack03 = ackermann n0 n3 in
; let ack04 = ackermann n0 n4 in
; let ack10 = ackermann n1 n0 in
; let ack11 = ackermann n1 n1 in
; let ack12 = ackermann n1 n2 in
; let ack13 = ackermann n1 n3 in
; let ack14 = ackermann n1 n4 in
; let ack20 = ackermann n2 n0 in
; let ack21 = ackermann n2 n1 in
; let ack22 = ackermann n2 n2 in
; let ack23 = ackermann n2 n3 in
; let ack24 = ackermann n2 n4 in
; let ack30 = ackermann n3 n0 in
; let ack31 = ackermann n3 n1 in
; let ack32 = ackermann n3 n2 in
; let ack33 = ackermann n3 n3 in
; let ack34 = ackermann n3 n4 in
; let ack40 = ackermann n4 n0 in
; 
; let int01 = nat_to_int ack00 in
; let int02 = nat_to_int ack02 in
; let int03 = nat_to_int ack03 in
; let int04 = nat_to_int ack04 in
; let int10 = nat_to_int ack10 in
; let int11 = nat_to_int ack11 in
; let int12 = nat_to_int ack12 in
; let int13 = nat_to_int ack13 in
; let int14 = nat_to_int ack14 in
; let int20 = nat_to_int ack20 in
; let int21 = nat_to_int ack21 in
; let int22 = nat_to_int ack22 in
; let int23 = nat_to_int ack23 in
; let int24 = nat_to_int ack23 in
; let int30 = nat_to_int ack30 in
; let int31 = nat_to_int ack31 in
; let int32 = nat_to_int ack32 in
; let int33 = nat_to_int ack33 in
; let int34 = nat_to_int ack34 in
; let int40 = nat_to_int ack40 in
; 
; let sum = builtin add int01 int02 in
; let sum = builtin add sum int03 in
; let sum = builtin add sum int04 in
; let sum = builtin add sum int10 in
; let sum = builtin add sum int11 in
; let sum = builtin add sum int12 in
; let sum = builtin add sum int13 in
; let sum = builtin add sum int14 in
; let sum = builtin add sum int20 in
; let sum = builtin add sum int21 in
; let sum = builtin add sum int22 in
; let sum = builtin add sum int23 in
; let sum = builtin add sum int24 in
; let sum = builtin add sum int30 in
; let sum = builtin add sum int31 in
; let sum = builtin add sum int32 in
; let sum = builtin add sum int33 in
; let sum = builtin add sum int34 in
; let sum = builtin add sum int40 in
; 
; sum
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_157" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_179" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_178"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_178" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_180"**, %"$TyDescrTy_ADTTyp_179"* }
%"$TyDescrTy_ADTTyp_Constr_180" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Uint32 = type { i32 }
%Nat = type { i8, %Zero*, %Succ* }
%Zero = type <{ i8 }>
%Succ = type <{ i8, %Nat* }>
%"$$fundef_155_env_195" = type { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }, { %Nat* (i8*, %Nat*)*, i8* } }
%"$$fundef_153_env_196" = type { { %Nat* (i8*, %Nat*)*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, %Nat* }
%"$$fundef_151_env_197" = type { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, %Nat* }
%"$$fundef_149_env_198" = type { { %Nat* (i8*, %Nat*)*, i8* }, %Nat* }
%"$$fundef_147_env_199" = type { { %Nat* (i8*, %Nat*)*, i8* } }
%"$$fundef_145_env_200" = type { { %Nat* (i8*, %Nat*)*, i8* }, %Nat*, { i8*, i8* }* }
%"$$fundef_143_env_201" = type { { %Nat* (i8*, %Nat*)*, i8* }, { i8*, i8* }* }
%"$$fundef_141_env_202" = type { { i8*, i8* }* }
%"$$fundef_139_env_203" = type { { i8*, i8* }* }
%"$$fundef_137_env_204" = type { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { %Nat* (i8*, %Nat*)*, i8* } }
%"$$fundef_135_env_205" = type { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } }
%"$$fundef_133_env_206" = type { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, %Nat*, { i8*, i8* }* }
%"$$fundef_131_env_207" = type { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { i8*, i8* }* }
%"$$fundef_129_env_208" = type { { i8*, i8* }* }
%"$$fundef_127_env_209" = type { { i8*, i8* }* }
%"$$fundef_125_env_210" = type {}
%"$$fundef_122_env_211" = type { %Uint32, %Uint32 }
%"$$fundef_120_env_212" = type { %Uint32 }
%"$$fundef_118_env_213" = type { { i8*, i8* }* }
%"$$fundef_116_env_214" = type { %Nat*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } }
%"$$fundef_114_env_215" = type { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } }
%"$$fundef_112_env_216" = type {}
%"$$fundef_110_env_217" = type {}
%"$$fundef_108_env_218" = type { { %Nat* (i8*, %Nat*)*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } }
%"$$fundef_106_env_219" = type { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } }
%"$$fundef_104_env_220" = type {}
%"$$fundef_102_env_221" = type {}
%"$$fundef_100_env_222" = type { %Uint32, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_98_env_223" = type { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_96_env_224" = type {}
%"$$fundef_94_env_225" = type {}

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_158" = global %"$TyDescrTy_PrimTyp_157" zeroinitializer
@"$TyDescr_Int32_159" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_157"* @"$TyDescr_Int32_Prim_158" to i8*) }
@"$TyDescr_Uint32_Prim_160" = global %"$TyDescrTy_PrimTyp_157" { i32 1, i32 0 }
@"$TyDescr_Uint32_161" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_157"* @"$TyDescr_Uint32_Prim_160" to i8*) }
@"$TyDescr_Int64_Prim_162" = global %"$TyDescrTy_PrimTyp_157" { i32 0, i32 1 }
@"$TyDescr_Int64_163" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_157"* @"$TyDescr_Int64_Prim_162" to i8*) }
@"$TyDescr_Uint64_Prim_164" = global %"$TyDescrTy_PrimTyp_157" { i32 1, i32 1 }
@"$TyDescr_Uint64_165" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_157"* @"$TyDescr_Uint64_Prim_164" to i8*) }
@"$TyDescr_Int128_Prim_166" = global %"$TyDescrTy_PrimTyp_157" { i32 0, i32 2 }
@"$TyDescr_Int128_167" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_157"* @"$TyDescr_Int128_Prim_166" to i8*) }
@"$TyDescr_Uint128_Prim_168" = global %"$TyDescrTy_PrimTyp_157" { i32 1, i32 2 }
@"$TyDescr_Uint128_169" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_157"* @"$TyDescr_Uint128_Prim_168" to i8*) }
@"$TyDescr_Int256_Prim_170" = global %"$TyDescrTy_PrimTyp_157" { i32 0, i32 3 }
@"$TyDescr_Int256_171" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_157"* @"$TyDescr_Int256_Prim_170" to i8*) }
@"$TyDescr_Uint256_Prim_172" = global %"$TyDescrTy_PrimTyp_157" { i32 1, i32 3 }
@"$TyDescr_Uint256_173" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_157"* @"$TyDescr_Uint256_Prim_172" to i8*) }
@"$TyDescr_String_Prim_174" = global %"$TyDescrTy_PrimTyp_157" { i32 2, i32 0 }
@"$TyDescr_String_175" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_157"* @"$TyDescr_String_Prim_174" to i8*) }
@"$TyDescr_Bystr_Prim_176" = global %"$TyDescrTy_PrimTyp_157" { i32 7, i32 0 }
@"$TyDescr_Bystr_177" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_157"* @"$TyDescr_Bystr_Prim_176" to i8*) }
@"$TyDescr_ADT_Nat_181" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_178"* @"$TyDescr_Nat_ADTTyp_Specl_192" to i8*) }
@"$TyDescr_Nat_ADTTyp_183" = unnamed_addr constant %"$TyDescrTy_ADTTyp_179" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nat_194", i32 0, i32 0), i32 3 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_178"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_178"*], [1 x %"$TyDescrTy_ADTTyp_Specl_178"*]* @"$TyDescr_Nat_ADTTyp_m_specls_193", i32 0, i32 0) }
@"$TyDescr_Nat_Zero_Constr_m_args_184" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Zero_185" = unnamed_addr constant [4 x i8] c"Zero"
@"$TyDescr_Nat_Zero_ADTTyp_Constr_186" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_180" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Zero_185", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Zero_Constr_m_args_184", i32 0, i32 0) }
@"$TyDescr_Nat_Succ_Constr_m_args_187" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_181"]
@"$TyDescr_ADT_Succ_188" = unnamed_addr constant [4 x i8] c"Succ"
@"$TyDescr_Nat_Succ_ADTTyp_Constr_189" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_180" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Succ_188", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Succ_Constr_m_args_187", i32 0, i32 0) }
@"$TyDescr_Nat_ADTTyp_Specl_m_constrs_190" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_180"*] [%"$TyDescrTy_ADTTyp_Constr_180"* @"$TyDescr_Nat_Zero_ADTTyp_Constr_186", %"$TyDescrTy_ADTTyp_Constr_180"* @"$TyDescr_Nat_Succ_ADTTyp_Constr_189"]
@"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_191" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Nat_ADTTyp_Specl_192" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_178" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_191", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_180"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_180"*], [2 x %"$TyDescrTy_ADTTyp_Constr_180"*]* @"$TyDescr_Nat_ADTTyp_Specl_m_constrs_190", i32 0, i32 0), %"$TyDescrTy_ADTTyp_179"* @"$TyDescr_Nat_ADTTyp_183" }
@"$TyDescr_Nat_ADTTyp_m_specls_193" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_178"*] [%"$TyDescrTy_ADTTyp_Specl_178"* @"$TyDescr_Nat_ADTTyp_Specl_192"]
@"$TyDescr_ADT_Nat_194" = unnamed_addr constant [3 x i8] c"Nat"
@nat_fold = global { i8*, i8* }* null
@"$dyndisp_732" = global [3 x { i8*, i8* }] zeroinitializer
@nat_to_int = global { %Uint32 (i8*, %Nat*)*, i8* } zeroinitializer
@"$dyndisp_751" = global [3 x { i8*, i8* }] zeroinitializer

define internal { %Nat* (i8*, %Nat*)*, i8* } @"$fundef_155"(%"$$fundef_155_env_195"* %0, %Nat* %1) {
entry:
  %"$$fundef_155_env_f_700" = getelementptr inbounds %"$$fundef_155_env_195", %"$$fundef_155_env_195"* %0, i32 0, i32 0
  %"$f_envload_701" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_155_env_f_700"
  %f = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_envload_701", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_155_env_iter_nat_nat_702" = getelementptr inbounds %"$$fundef_155_env_195", %"$$fundef_155_env_195"* %0, i32 0, i32 1
  %"$iter_nat_nat_envload_703" = load { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_155_env_iter_nat_nat_702"
  %iter_nat_nat = alloca { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }
  store { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_envload_703", { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  %"$$fundef_155_env_nat_succ_704" = getelementptr inbounds %"$$fundef_155_env_195", %"$$fundef_155_env_195"* %0, i32 0, i32 2
  %"$nat_succ_envload_705" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_155_env_nat_succ_704"
  %nat_succ = alloca { %Nat* (i8*, %Nat*)*, i8* }
  store { %Nat* (i8*, %Nat*)*, i8* } %"$nat_succ_envload_705", { %Nat* (i8*, %Nat*)*, i8* }* %nat_succ
  %"$retval_156" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$iter_nat_nat_33" = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* }
  %"$iter_nat_nat_706" = load { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  %"$iter_nat_nat_fptr_707" = extractvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_706", 0
  %"$iter_nat_nat_envptr_708" = extractvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_706", 1
  %"$f_709" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  %"$iter_nat_nat_call_710" = call { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } %"$iter_nat_nat_fptr_707"(i8* %"$iter_nat_nat_envptr_708", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_709")
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } %"$iter_nat_nat_call_710", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* }* %"$iter_nat_nat_33"
  %"$iter_nat_nat_34" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  %"$$iter_nat_nat_33_711" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* }* %"$iter_nat_nat_33"
  %"$$iter_nat_nat_33_fptr_712" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } %"$$iter_nat_nat_33_711", 0
  %"$$iter_nat_nat_33_envptr_713" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } %"$$iter_nat_nat_33_711", 1
  %"$$iter_nat_nat_33_call_714" = call { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_33_fptr_712"(i8* %"$$iter_nat_nat_33_envptr_713", %Nat* %1)
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_33_call_714", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_34"
  %"$iter_nat_nat_35" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$$iter_nat_nat_34_715" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_34"
  %"$$iter_nat_nat_34_fptr_716" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_34_715", 0
  %"$$iter_nat_nat_34_envptr_717" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_34_715", 1
  %"$nat_succ_718" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %nat_succ
  %"$$iter_nat_nat_34_call_719" = call { %Nat* (i8*, %Nat*)*, i8* } %"$$iter_nat_nat_34_fptr_716"(i8* %"$$iter_nat_nat_34_envptr_717", { %Nat* (i8*, %Nat*)*, i8* } %"$nat_succ_718")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$iter_nat_nat_34_call_719", { %Nat* (i8*, %Nat*)*, i8* }* %"$iter_nat_nat_35"
  %"$$iter_nat_nat_35_720" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$iter_nat_nat_35"
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$iter_nat_nat_35_720", { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_156"
  %"$$retval_156_721" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_156"
  ret { %Nat* (i8*, %Nat*)*, i8* } %"$$retval_156_721"
}

define internal %Nat* @"$fundef_153"(%"$$fundef_153_env_196"* %0, %Nat* %1) {
entry:
  %"$$fundef_153_env_ack_678" = getelementptr inbounds %"$$fundef_153_env_196", %"$$fundef_153_env_196"* %0, i32 0, i32 0
  %"$ack_envload_679" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_153_env_ack_678"
  %ack = alloca { %Nat* (i8*, %Nat*)*, i8* }
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ack_envload_679", { %Nat* (i8*, %Nat*)*, i8* }* %ack
  %"$$fundef_153_env_iter_nat_680" = getelementptr inbounds %"$$fundef_153_env_196", %"$$fundef_153_env_196"* %0, i32 0, i32 1
  %"$iter_nat_envload_681" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_153_env_iter_nat_680"
  %iter_nat = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$iter_nat_envload_681", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %iter_nat
  %"$$fundef_153_env_x0_682" = getelementptr inbounds %"$$fundef_153_env_196", %"$$fundef_153_env_196"* %0, i32 0, i32 2
  %"$x0_envload_683" = load %Nat*, %Nat** %"$$fundef_153_env_x0_682"
  %x0 = alloca %Nat*
  store %Nat* %"$x0_envload_683", %Nat** %x0
  %"$retval_154" = alloca %Nat*
  %"$iter_nat_30" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$iter_nat_684" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %iter_nat
  %"$iter_nat_fptr_685" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$iter_nat_684", 0
  %"$iter_nat_envptr_686" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$iter_nat_684", 1
  %"$ack_687" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %ack
  %"$iter_nat_call_688" = call { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$iter_nat_fptr_685"(i8* %"$iter_nat_envptr_686", { %Nat* (i8*, %Nat*)*, i8* } %"$ack_687")
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$iter_nat_call_688", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$iter_nat_30"
  %"$iter_nat_31" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$$iter_nat_30_689" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$iter_nat_30"
  %"$$iter_nat_30_fptr_690" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$iter_nat_30_689", 0
  %"$$iter_nat_30_envptr_691" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$iter_nat_30_689", 1
  %"$$iter_nat_30_call_692" = call { %Nat* (i8*, %Nat*)*, i8* } %"$$iter_nat_30_fptr_690"(i8* %"$$iter_nat_30_envptr_691", %Nat* %1)
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$iter_nat_30_call_692", { %Nat* (i8*, %Nat*)*, i8* }* %"$iter_nat_31"
  %"$iter_nat_32" = alloca %Nat*
  %"$$iter_nat_31_693" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$iter_nat_31"
  %"$$iter_nat_31_fptr_694" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$iter_nat_31_693", 0
  %"$$iter_nat_31_envptr_695" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$iter_nat_31_693", 1
  %"$x0_696" = load %Nat*, %Nat** %x0
  %"$$iter_nat_31_call_697" = call %Nat* %"$$iter_nat_31_fptr_694"(i8* %"$$iter_nat_31_envptr_695", %Nat* %"$x0_696")
  store %Nat* %"$$iter_nat_31_call_697", %Nat** %"$iter_nat_32"
  %"$$iter_nat_32_698" = load %Nat*, %Nat** %"$iter_nat_32"
  store %Nat* %"$$iter_nat_32_698", %Nat** %"$retval_154"
  %"$$retval_154_699" = load %Nat*, %Nat** %"$retval_154"
  ret %Nat* %"$$retval_154_699"
}

define internal { %Nat* (i8*, %Nat*)*, i8* } @"$fundef_151"(%"$$fundef_151_env_197"* %0, { %Nat* (i8*, %Nat*)*, i8* } %1) {
entry:
  %"$$fundef_151_env_iter_nat_659" = getelementptr inbounds %"$$fundef_151_env_197", %"$$fundef_151_env_197"* %0, i32 0, i32 0
  %"$iter_nat_envload_660" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_151_env_iter_nat_659"
  %iter_nat = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$iter_nat_envload_660", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %iter_nat
  %"$$fundef_151_env_one_661" = getelementptr inbounds %"$$fundef_151_env_197", %"$$fundef_151_env_197"* %0, i32 0, i32 1
  %"$one_envload_662" = load %Nat*, %Nat** %"$$fundef_151_env_one_661"
  %one = alloca %Nat*
  store %Nat* %"$one_envload_662", %Nat** %one
  %"$retval_152" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %x0 = alloca %Nat*
  %"$ack_29" = alloca %Nat*
  %"$ack_fptr_663" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %1, 0
  %"$ack_envptr_664" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %1, 1
  %"$one_665" = load %Nat*, %Nat** %one
  %"$ack_call_666" = call %Nat* %"$ack_fptr_663"(i8* %"$ack_envptr_664", %Nat* %"$one_665")
  store %Nat* %"$ack_call_666", %Nat** %"$ack_29"
  %"$$ack_29_667" = load %Nat*, %Nat** %"$ack_29"
  store %Nat* %"$$ack_29_667", %Nat** %x0
  %"$$fundef_153_envp_668_load" = load i8*, i8** @_execptr
  %"$$fundef_153_envp_668_salloc" = call i8* @_salloc(i8* %"$$fundef_153_envp_668_load", i64 40)
  %"$$fundef_153_envp_668" = bitcast i8* %"$$fundef_153_envp_668_salloc" to %"$$fundef_153_env_196"*
  %"$$fundef_153_env_voidp_670" = bitcast %"$$fundef_153_env_196"* %"$$fundef_153_envp_668" to i8*
  %"$$fundef_153_cloval_671" = insertvalue { %Nat* (i8*, %Nat*)*, i8* } { %Nat* (i8*, %Nat*)* bitcast (%Nat* (%"$$fundef_153_env_196"*, %Nat*)* @"$fundef_153" to %Nat* (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_153_env_voidp_670", 1
  %"$$fundef_153_env_ack_672" = getelementptr inbounds %"$$fundef_153_env_196", %"$$fundef_153_env_196"* %"$$fundef_153_envp_668", i32 0, i32 0
  store { %Nat* (i8*, %Nat*)*, i8* } %1, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_153_env_ack_672"
  %"$$fundef_153_env_iter_nat_673" = getelementptr inbounds %"$$fundef_153_env_196", %"$$fundef_153_env_196"* %"$$fundef_153_envp_668", i32 0, i32 1
  %"$iter_nat_674" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %iter_nat
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$iter_nat_674", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_153_env_iter_nat_673"
  %"$$fundef_153_env_x0_675" = getelementptr inbounds %"$$fundef_153_env_196", %"$$fundef_153_env_196"* %"$$fundef_153_envp_668", i32 0, i32 2
  %"$x0_676" = load %Nat*, %Nat** %x0
  store %Nat* %"$x0_676", %Nat** %"$$fundef_153_env_x0_675"
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$fundef_153_cloval_671", { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_152"
  %"$$retval_152_677" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_152"
  ret { %Nat* (i8*, %Nat*)*, i8* } %"$$retval_152_677"
}

define internal %Nat* @"$fundef_149"(%"$$fundef_149_env_198"* %0, %Nat* %1) {
entry:
  %"$$fundef_149_env_f_648" = getelementptr inbounds %"$$fundef_149_env_198", %"$$fundef_149_env_198"* %0, i32 0, i32 0
  %"$f_envload_649" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_149_env_f_648"
  %f = alloca { %Nat* (i8*, %Nat*)*, i8* }
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f_envload_649", { %Nat* (i8*, %Nat*)*, i8* }* %f
  %"$$fundef_149_env_x_650" = getelementptr inbounds %"$$fundef_149_env_198", %"$$fundef_149_env_198"* %0, i32 0, i32 1
  %"$x_envload_651" = load %Nat*, %Nat** %"$$fundef_149_env_x_650"
  %x = alloca %Nat*
  store %Nat* %"$x_envload_651", %Nat** %x
  %"$retval_150" = alloca %Nat*
  %"$f_25" = alloca %Nat*
  %"$f_652" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %f
  %"$f_fptr_653" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$f_652", 0
  %"$f_envptr_654" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$f_652", 1
  %"$x_655" = load %Nat*, %Nat** %x
  %"$f_call_656" = call %Nat* %"$f_fptr_653"(i8* %"$f_envptr_654", %Nat* %"$x_655")
  store %Nat* %"$f_call_656", %Nat** %"$f_25"
  %"$$f_25_657" = load %Nat*, %Nat** %"$f_25"
  store %Nat* %"$$f_25_657", %Nat** %"$retval_150"
  %"$$retval_150_658" = load %Nat*, %Nat** %"$retval_150"
  ret %Nat* %"$$retval_150_658"
}

define internal { %Nat* (i8*, %Nat*)*, i8* } @"$fundef_147"(%"$$fundef_147_env_199"* %0, %Nat* %1) {
entry:
  %"$$fundef_147_env_f_638" = getelementptr inbounds %"$$fundef_147_env_199", %"$$fundef_147_env_199"* %0, i32 0, i32 0
  %"$f_envload_639" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_147_env_f_638"
  %f = alloca { %Nat* (i8*, %Nat*)*, i8* }
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f_envload_639", { %Nat* (i8*, %Nat*)*, i8* }* %f
  %"$retval_148" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$$fundef_149_envp_640_load" = load i8*, i8** @_execptr
  %"$$fundef_149_envp_640_salloc" = call i8* @_salloc(i8* %"$$fundef_149_envp_640_load", i64 24)
  %"$$fundef_149_envp_640" = bitcast i8* %"$$fundef_149_envp_640_salloc" to %"$$fundef_149_env_198"*
  %"$$fundef_149_env_voidp_642" = bitcast %"$$fundef_149_env_198"* %"$$fundef_149_envp_640" to i8*
  %"$$fundef_149_cloval_643" = insertvalue { %Nat* (i8*, %Nat*)*, i8* } { %Nat* (i8*, %Nat*)* bitcast (%Nat* (%"$$fundef_149_env_198"*, %Nat*)* @"$fundef_149" to %Nat* (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_149_env_voidp_642", 1
  %"$$fundef_149_env_f_644" = getelementptr inbounds %"$$fundef_149_env_198", %"$$fundef_149_env_198"* %"$$fundef_149_envp_640", i32 0, i32 0
  %"$f_645" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %f
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f_645", { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_149_env_f_644"
  %"$$fundef_149_env_x_646" = getelementptr inbounds %"$$fundef_149_env_198", %"$$fundef_149_env_198"* %"$$fundef_149_envp_640", i32 0, i32 1
  store %Nat* %1, %Nat** %"$$fundef_149_env_x_646"
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$fundef_149_cloval_643", { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_148"
  %"$$retval_148_647" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_148"
  ret { %Nat* (i8*, %Nat*)*, i8* } %"$$retval_148_647"
}

define internal %Nat* @"$fundef_145"(%"$$fundef_145_env_200"* %0, %Nat* %1) {
entry:
  %"$$fundef_145_env_f_603" = getelementptr inbounds %"$$fundef_145_env_200", %"$$fundef_145_env_200"* %0, i32 0, i32 0
  %"$f_envload_604" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_145_env_f_603"
  %f = alloca { %Nat* (i8*, %Nat*)*, i8* }
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f_envload_604", { %Nat* (i8*, %Nat*)*, i8* }* %f
  %"$$fundef_145_env_n_605" = getelementptr inbounds %"$$fundef_145_env_200", %"$$fundef_145_env_200"* %0, i32 0, i32 1
  %"$n_envload_606" = load %Nat*, %Nat** %"$$fundef_145_env_n_605"
  %n = alloca %Nat*
  store %Nat* %"$n_envload_606", %Nat** %n
  %"$$fundef_145_env_nat_fold_607" = getelementptr inbounds %"$$fundef_145_env_200", %"$$fundef_145_env_200"* %0, i32 0, i32 2
  %"$nat_fold_envload_608" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_145_env_nat_fold_607"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_608", { i8*, i8* }** %nat_fold
  %"$retval_146" = alloca %Nat*
  %folder = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* }
  %"$nat_fold_609" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  %"$nat_fold_610" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_609", i32 2
  %"$nat_fold_611" = bitcast { i8*, i8* }* %"$nat_fold_610" to { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_612" = load { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_611"
  %"$nat_fold_fptr_613" = extractvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_612", 0
  %"$nat_fold_envptr_614" = extractvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_612", 1
  %"$nat_fold_call_615" = call { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } %"$nat_fold_fptr_613"(i8* %"$nat_fold_envptr_614")
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } %"$nat_fold_call_615", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* }* %folder
  %step = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$$fundef_147_envp_616_load" = load i8*, i8** @_execptr
  %"$$fundef_147_envp_616_salloc" = call i8* @_salloc(i8* %"$$fundef_147_envp_616_load", i64 16)
  %"$$fundef_147_envp_616" = bitcast i8* %"$$fundef_147_envp_616_salloc" to %"$$fundef_147_env_199"*
  %"$$fundef_147_env_voidp_618" = bitcast %"$$fundef_147_env_199"* %"$$fundef_147_envp_616" to i8*
  %"$$fundef_147_cloval_619" = insertvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)* bitcast ({ %Nat* (i8*, %Nat*)*, i8* } (%"$$fundef_147_env_199"*, %Nat*)* @"$fundef_147" to { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_147_env_voidp_618", 1
  %"$$fundef_147_env_f_620" = getelementptr inbounds %"$$fundef_147_env_199", %"$$fundef_147_env_199"* %"$$fundef_147_envp_616", i32 0, i32 0
  %"$f_621" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %f
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f_621", { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_147_env_f_620"
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$fundef_147_cloval_619", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %step
  %"$folder_26" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$folder_622" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* }* %folder
  %"$folder_fptr_623" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } %"$folder_622", 0
  %"$folder_envptr_624" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } %"$folder_622", 1
  %"$step_625" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %step
  %"$folder_call_626" = call { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$folder_fptr_623"(i8* %"$folder_envptr_624", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$step_625")
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$folder_call_626", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$folder_26"
  %"$folder_27" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$$folder_26_627" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$folder_26"
  %"$$folder_26_fptr_628" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$folder_26_627", 0
  %"$$folder_26_envptr_629" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$folder_26_627", 1
  %"$$folder_26_call_630" = call { %Nat* (i8*, %Nat*)*, i8* } %"$$folder_26_fptr_628"(i8* %"$$folder_26_envptr_629", %Nat* %1)
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$folder_26_call_630", { %Nat* (i8*, %Nat*)*, i8* }* %"$folder_27"
  %"$folder_28" = alloca %Nat*
  %"$$folder_27_631" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$folder_27"
  %"$$folder_27_fptr_632" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$folder_27_631", 0
  %"$$folder_27_envptr_633" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$folder_27_631", 1
  %"$n_634" = load %Nat*, %Nat** %n
  %"$$folder_27_call_635" = call %Nat* %"$$folder_27_fptr_632"(i8* %"$$folder_27_envptr_633", %Nat* %"$n_634")
  store %Nat* %"$$folder_27_call_635", %Nat** %"$folder_28"
  %"$$folder_28_636" = load %Nat*, %Nat** %"$folder_28"
  store %Nat* %"$$folder_28_636", %Nat** %"$retval_146"
  %"$$retval_146_637" = load %Nat*, %Nat** %"$retval_146"
  ret %Nat* %"$$retval_146_637"
}

define internal { %Nat* (i8*, %Nat*)*, i8* } @"$fundef_143"(%"$$fundef_143_env_201"* %0, %Nat* %1) {
entry:
  %"$$fundef_143_env_f_589" = getelementptr inbounds %"$$fundef_143_env_201", %"$$fundef_143_env_201"* %0, i32 0, i32 0
  %"$f_envload_590" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_143_env_f_589"
  %f = alloca { %Nat* (i8*, %Nat*)*, i8* }
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f_envload_590", { %Nat* (i8*, %Nat*)*, i8* }* %f
  %"$$fundef_143_env_nat_fold_591" = getelementptr inbounds %"$$fundef_143_env_201", %"$$fundef_143_env_201"* %0, i32 0, i32 1
  %"$nat_fold_envload_592" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_143_env_nat_fold_591"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_592", { i8*, i8* }** %nat_fold
  %"$retval_144" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$$fundef_145_envp_593_load" = load i8*, i8** @_execptr
  %"$$fundef_145_envp_593_salloc" = call i8* @_salloc(i8* %"$$fundef_145_envp_593_load", i64 32)
  %"$$fundef_145_envp_593" = bitcast i8* %"$$fundef_145_envp_593_salloc" to %"$$fundef_145_env_200"*
  %"$$fundef_145_env_voidp_595" = bitcast %"$$fundef_145_env_200"* %"$$fundef_145_envp_593" to i8*
  %"$$fundef_145_cloval_596" = insertvalue { %Nat* (i8*, %Nat*)*, i8* } { %Nat* (i8*, %Nat*)* bitcast (%Nat* (%"$$fundef_145_env_200"*, %Nat*)* @"$fundef_145" to %Nat* (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_145_env_voidp_595", 1
  %"$$fundef_145_env_f_597" = getelementptr inbounds %"$$fundef_145_env_200", %"$$fundef_145_env_200"* %"$$fundef_145_envp_593", i32 0, i32 0
  %"$f_598" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %f
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f_598", { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_145_env_f_597"
  %"$$fundef_145_env_n_599" = getelementptr inbounds %"$$fundef_145_env_200", %"$$fundef_145_env_200"* %"$$fundef_145_envp_593", i32 0, i32 1
  store %Nat* %1, %Nat** %"$$fundef_145_env_n_599"
  %"$$fundef_145_env_nat_fold_600" = getelementptr inbounds %"$$fundef_145_env_200", %"$$fundef_145_env_200"* %"$$fundef_145_envp_593", i32 0, i32 2
  %"$nat_fold_601" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_601", { i8*, i8* }** %"$$fundef_145_env_nat_fold_600"
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$fundef_145_cloval_596", { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_144"
  %"$$retval_144_602" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_144"
  ret { %Nat* (i8*, %Nat*)*, i8* } %"$$retval_144_602"
}

define internal { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } @"$fundef_141"(%"$$fundef_141_env_202"* %0, { %Nat* (i8*, %Nat*)*, i8* } %1) {
entry:
  %"$$fundef_141_env_nat_fold_579" = getelementptr inbounds %"$$fundef_141_env_202", %"$$fundef_141_env_202"* %0, i32 0, i32 0
  %"$nat_fold_envload_580" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_141_env_nat_fold_579"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_580", { i8*, i8* }** %nat_fold
  %"$retval_142" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$$fundef_143_envp_581_load" = load i8*, i8** @_execptr
  %"$$fundef_143_envp_581_salloc" = call i8* @_salloc(i8* %"$$fundef_143_envp_581_load", i64 24)
  %"$$fundef_143_envp_581" = bitcast i8* %"$$fundef_143_envp_581_salloc" to %"$$fundef_143_env_201"*
  %"$$fundef_143_env_voidp_583" = bitcast %"$$fundef_143_env_201"* %"$$fundef_143_envp_581" to i8*
  %"$$fundef_143_cloval_584" = insertvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)* bitcast ({ %Nat* (i8*, %Nat*)*, i8* } (%"$$fundef_143_env_201"*, %Nat*)* @"$fundef_143" to { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_143_env_voidp_583", 1
  %"$$fundef_143_env_f_585" = getelementptr inbounds %"$$fundef_143_env_201", %"$$fundef_143_env_201"* %"$$fundef_143_envp_581", i32 0, i32 0
  store { %Nat* (i8*, %Nat*)*, i8* } %1, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_143_env_f_585"
  %"$$fundef_143_env_nat_fold_586" = getelementptr inbounds %"$$fundef_143_env_201", %"$$fundef_143_env_201"* %"$$fundef_143_envp_581", i32 0, i32 1
  %"$nat_fold_587" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_587", { i8*, i8* }** %"$$fundef_143_env_nat_fold_586"
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$fundef_143_cloval_584", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_142"
  %"$$retval_142_588" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_142"
  ret { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$retval_142_588"
}

define internal { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } @"$fundef_139"(%"$$fundef_139_env_203"* %0) {
entry:
  %"$$fundef_139_env_nat_fold_570" = getelementptr inbounds %"$$fundef_139_env_203", %"$$fundef_139_env_203"* %0, i32 0, i32 0
  %"$nat_fold_envload_571" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_139_env_nat_fold_570"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_571", { i8*, i8* }** %nat_fold
  %"$retval_140" = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  %"$$fundef_141_envp_572_load" = load i8*, i8** @_execptr
  %"$$fundef_141_envp_572_salloc" = call i8* @_salloc(i8* %"$$fundef_141_envp_572_load", i64 8)
  %"$$fundef_141_envp_572" = bitcast i8* %"$$fundef_141_envp_572_salloc" to %"$$fundef_141_env_202"*
  %"$$fundef_141_env_voidp_574" = bitcast %"$$fundef_141_env_202"* %"$$fundef_141_envp_572" to i8*
  %"$$fundef_141_cloval_575" = insertvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })* bitcast ({ { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (%"$$fundef_141_env_202"*, { %Nat* (i8*, %Nat*)*, i8* })* @"$fundef_141" to { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_141_env_voidp_574", 1
  %"$$fundef_141_env_nat_fold_576" = getelementptr inbounds %"$$fundef_141_env_202", %"$$fundef_141_env_202"* %"$$fundef_141_envp_572", i32 0, i32 0
  %"$nat_fold_577" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_577", { i8*, i8* }** %"$$fundef_141_env_nat_fold_576"
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$fundef_141_cloval_575", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$retval_140"
  %"$$retval_140_578" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$retval_140"
  ret { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$retval_140_578"
}

define internal { %Nat* (i8*, %Nat*)*, i8* } @"$fundef_137"(%"$$fundef_137_env_204"* %0, %Nat* %1) {
entry:
  %"$$fundef_137_env_f_559" = getelementptr inbounds %"$$fundef_137_env_204", %"$$fundef_137_env_204"* %0, i32 0, i32 0
  %"$f_envload_560" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_137_env_f_559"
  %f = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_envload_560", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_137_env_x_561" = getelementptr inbounds %"$$fundef_137_env_204", %"$$fundef_137_env_204"* %0, i32 0, i32 1
  %"$x_envload_562" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_137_env_x_561"
  %x = alloca { %Nat* (i8*, %Nat*)*, i8* }
  store { %Nat* (i8*, %Nat*)*, i8* } %"$x_envload_562", { %Nat* (i8*, %Nat*)*, i8* }* %x
  %"$retval_138" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$f_25" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$f_563" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  %"$f_fptr_564" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_563", 0
  %"$f_envptr_565" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_563", 1
  %"$x_566" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %x
  %"$f_call_567" = call { %Nat* (i8*, %Nat*)*, i8* } %"$f_fptr_564"(i8* %"$f_envptr_565", { %Nat* (i8*, %Nat*)*, i8* } %"$x_566")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f_call_567", { %Nat* (i8*, %Nat*)*, i8* }* %"$f_25"
  %"$$f_25_568" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$f_25"
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$f_25_568", { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_138"
  %"$$retval_138_569" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_138"
  ret { %Nat* (i8*, %Nat*)*, i8* } %"$$retval_138_569"
}

define internal { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } @"$fundef_135"(%"$$fundef_135_env_205"* %0, { %Nat* (i8*, %Nat*)*, i8* } %1) {
entry:
  %"$$fundef_135_env_f_549" = getelementptr inbounds %"$$fundef_135_env_205", %"$$fundef_135_env_205"* %0, i32 0, i32 0
  %"$f_envload_550" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_135_env_f_549"
  %f = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_envload_550", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  %"$retval_136" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$$fundef_137_envp_551_load" = load i8*, i8** @_execptr
  %"$$fundef_137_envp_551_salloc" = call i8* @_salloc(i8* %"$$fundef_137_envp_551_load", i64 32)
  %"$$fundef_137_envp_551" = bitcast i8* %"$$fundef_137_envp_551_salloc" to %"$$fundef_137_env_204"*
  %"$$fundef_137_env_voidp_553" = bitcast %"$$fundef_137_env_204"* %"$$fundef_137_envp_551" to i8*
  %"$$fundef_137_cloval_554" = insertvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)* bitcast ({ %Nat* (i8*, %Nat*)*, i8* } (%"$$fundef_137_env_204"*, %Nat*)* @"$fundef_137" to { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_137_env_voidp_553", 1
  %"$$fundef_137_env_f_555" = getelementptr inbounds %"$$fundef_137_env_204", %"$$fundef_137_env_204"* %"$$fundef_137_envp_551", i32 0, i32 0
  %"$f_556" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_556", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_137_env_f_555"
  %"$$fundef_137_env_x_557" = getelementptr inbounds %"$$fundef_137_env_204", %"$$fundef_137_env_204"* %"$$fundef_137_envp_551", i32 0, i32 1
  store { %Nat* (i8*, %Nat*)*, i8* } %1, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_137_env_x_557"
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$fundef_137_cloval_554", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_136"
  %"$$retval_136_558" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_136"
  ret { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$retval_136_558"
}

define internal { %Nat* (i8*, %Nat*)*, i8* } @"$fundef_133"(%"$$fundef_133_env_206"* %0, { %Nat* (i8*, %Nat*)*, i8* } %1) {
entry:
  %"$$fundef_133_env_f_514" = getelementptr inbounds %"$$fundef_133_env_206", %"$$fundef_133_env_206"* %0, i32 0, i32 0
  %"$f_envload_515" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_133_env_f_514"
  %f = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_envload_515", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_133_env_n_516" = getelementptr inbounds %"$$fundef_133_env_206", %"$$fundef_133_env_206"* %0, i32 0, i32 1
  %"$n_envload_517" = load %Nat*, %Nat** %"$$fundef_133_env_n_516"
  %n = alloca %Nat*
  store %Nat* %"$n_envload_517", %Nat** %n
  %"$$fundef_133_env_nat_fold_518" = getelementptr inbounds %"$$fundef_133_env_206", %"$$fundef_133_env_206"* %0, i32 0, i32 2
  %"$nat_fold_envload_519" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_133_env_nat_fold_518"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_519", { i8*, i8* }** %nat_fold
  %"$retval_134" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %folder = alloca { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }
  %"$nat_fold_520" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  %"$nat_fold_521" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_520", i32 1
  %"$nat_fold_522" = bitcast { i8*, i8* }* %"$nat_fold_521" to { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_523" = load { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_522"
  %"$nat_fold_fptr_524" = extractvalue { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_523", 0
  %"$nat_fold_envptr_525" = extractvalue { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_523", 1
  %"$nat_fold_call_526" = call { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_fptr_524"(i8* %"$nat_fold_envptr_525")
  store { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_call_526", { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %folder
  %step = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  %"$$fundef_135_envp_527_load" = load i8*, i8** @_execptr
  %"$$fundef_135_envp_527_salloc" = call i8* @_salloc(i8* %"$$fundef_135_envp_527_load", i64 16)
  %"$$fundef_135_envp_527" = bitcast i8* %"$$fundef_135_envp_527_salloc" to %"$$fundef_135_env_205"*
  %"$$fundef_135_env_voidp_529" = bitcast %"$$fundef_135_env_205"* %"$$fundef_135_envp_527" to i8*
  %"$$fundef_135_cloval_530" = insertvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })* bitcast ({ { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (%"$$fundef_135_env_205"*, { %Nat* (i8*, %Nat*)*, i8* })* @"$fundef_135" to { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_135_env_voidp_529", 1
  %"$$fundef_135_env_f_531" = getelementptr inbounds %"$$fundef_135_env_205", %"$$fundef_135_env_205"* %"$$fundef_135_envp_527", i32 0, i32 0
  %"$f_532" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_532", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_135_env_f_531"
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$fundef_135_cloval_530", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %step
  %"$folder_26" = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  %"$folder_533" = load { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %folder
  %"$folder_fptr_534" = extractvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$folder_533", 0
  %"$folder_envptr_535" = extractvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$folder_533", 1
  %"$step_536" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %step
  %"$folder_call_537" = call { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$folder_fptr_534"(i8* %"$folder_envptr_535", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$step_536")
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$folder_call_537", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$folder_26"
  %"$folder_27" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$$folder_26_538" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$folder_26"
  %"$$folder_26_fptr_539" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$folder_26_538", 0
  %"$$folder_26_envptr_540" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$folder_26_538", 1
  %"$$folder_26_call_541" = call { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$folder_26_fptr_539"(i8* %"$$folder_26_envptr_540", { %Nat* (i8*, %Nat*)*, i8* } %1)
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$folder_26_call_541", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$folder_27"
  %"$folder_28" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$$folder_27_542" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$folder_27"
  %"$$folder_27_fptr_543" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$folder_27_542", 0
  %"$$folder_27_envptr_544" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$folder_27_542", 1
  %"$n_545" = load %Nat*, %Nat** %n
  %"$$folder_27_call_546" = call { %Nat* (i8*, %Nat*)*, i8* } %"$$folder_27_fptr_543"(i8* %"$$folder_27_envptr_544", %Nat* %"$n_545")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$folder_27_call_546", { %Nat* (i8*, %Nat*)*, i8* }* %"$folder_28"
  %"$$folder_28_547" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$folder_28"
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$folder_28_547", { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_134"
  %"$$retval_134_548" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_134"
  ret { %Nat* (i8*, %Nat*)*, i8* } %"$$retval_134_548"
}

define internal { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } @"$fundef_131"(%"$$fundef_131_env_207"* %0, %Nat* %1) {
entry:
  %"$$fundef_131_env_f_500" = getelementptr inbounds %"$$fundef_131_env_207", %"$$fundef_131_env_207"* %0, i32 0, i32 0
  %"$f_envload_501" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_131_env_f_500"
  %f = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_envload_501", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_131_env_nat_fold_502" = getelementptr inbounds %"$$fundef_131_env_207", %"$$fundef_131_env_207"* %0, i32 0, i32 1
  %"$nat_fold_envload_503" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_131_env_nat_fold_502"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_503", { i8*, i8* }** %nat_fold
  %"$retval_132" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  %"$$fundef_133_envp_504_load" = load i8*, i8** @_execptr
  %"$$fundef_133_envp_504_salloc" = call i8* @_salloc(i8* %"$$fundef_133_envp_504_load", i64 32)
  %"$$fundef_133_envp_504" = bitcast i8* %"$$fundef_133_envp_504_salloc" to %"$$fundef_133_env_206"*
  %"$$fundef_133_env_voidp_506" = bitcast %"$$fundef_133_env_206"* %"$$fundef_133_envp_504" to i8*
  %"$$fundef_133_cloval_507" = insertvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })* bitcast ({ %Nat* (i8*, %Nat*)*, i8* } (%"$$fundef_133_env_206"*, { %Nat* (i8*, %Nat*)*, i8* })* @"$fundef_133" to { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_133_env_voidp_506", 1
  %"$$fundef_133_env_f_508" = getelementptr inbounds %"$$fundef_133_env_206", %"$$fundef_133_env_206"* %"$$fundef_133_envp_504", i32 0, i32 0
  %"$f_509" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_509", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_133_env_f_508"
  %"$$fundef_133_env_n_510" = getelementptr inbounds %"$$fundef_133_env_206", %"$$fundef_133_env_206"* %"$$fundef_133_envp_504", i32 0, i32 1
  store %Nat* %1, %Nat** %"$$fundef_133_env_n_510"
  %"$$fundef_133_env_nat_fold_511" = getelementptr inbounds %"$$fundef_133_env_206", %"$$fundef_133_env_206"* %"$$fundef_133_envp_504", i32 0, i32 2
  %"$nat_fold_512" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_512", { i8*, i8* }** %"$$fundef_133_env_nat_fold_511"
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$fundef_133_cloval_507", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$retval_132"
  %"$$retval_132_513" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$retval_132"
  ret { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$retval_132_513"
}

define internal { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } @"$fundef_129"(%"$$fundef_129_env_208"* %0, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %1) {
entry:
  %"$$fundef_129_env_nat_fold_490" = getelementptr inbounds %"$$fundef_129_env_208", %"$$fundef_129_env_208"* %0, i32 0, i32 0
  %"$nat_fold_envload_491" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_129_env_nat_fold_490"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_491", { i8*, i8* }** %nat_fold
  %"$retval_130" = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* }
  %"$$fundef_131_envp_492_load" = load i8*, i8** @_execptr
  %"$$fundef_131_envp_492_salloc" = call i8* @_salloc(i8* %"$$fundef_131_envp_492_load", i64 24)
  %"$$fundef_131_envp_492" = bitcast i8* %"$$fundef_131_envp_492_salloc" to %"$$fundef_131_env_207"*
  %"$$fundef_131_env_voidp_494" = bitcast %"$$fundef_131_env_207"* %"$$fundef_131_envp_492" to i8*
  %"$$fundef_131_cloval_495" = insertvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)* bitcast ({ { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (%"$$fundef_131_env_207"*, %Nat*)* @"$fundef_131" to { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_131_env_voidp_494", 1
  %"$$fundef_131_env_f_496" = getelementptr inbounds %"$$fundef_131_env_207", %"$$fundef_131_env_207"* %"$$fundef_131_envp_492", i32 0, i32 0
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %1, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_131_env_f_496"
  %"$$fundef_131_env_nat_fold_497" = getelementptr inbounds %"$$fundef_131_env_207", %"$$fundef_131_env_207"* %"$$fundef_131_envp_492", i32 0, i32 1
  %"$nat_fold_498" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_498", { i8*, i8* }** %"$$fundef_131_env_nat_fold_497"
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } %"$$fundef_131_cloval_495", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_130"
  %"$$retval_130_499" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_130"
  ret { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } %"$$retval_130_499"
}

define internal { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_127"(%"$$fundef_127_env_209"* %0) {
entry:
  %"$$fundef_127_env_nat_fold_481" = getelementptr inbounds %"$$fundef_127_env_209", %"$$fundef_127_env_209"* %0, i32 0, i32 0
  %"$nat_fold_envload_482" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_127_env_nat_fold_481"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_482", { i8*, i8* }** %nat_fold
  %"$retval_128" = alloca { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }
  %"$$fundef_129_envp_483_load" = load i8*, i8** @_execptr
  %"$$fundef_129_envp_483_salloc" = call i8* @_salloc(i8* %"$$fundef_129_envp_483_load", i64 8)
  %"$$fundef_129_envp_483" = bitcast i8* %"$$fundef_129_envp_483_salloc" to %"$$fundef_129_env_208"*
  %"$$fundef_129_env_voidp_485" = bitcast %"$$fundef_129_env_208"* %"$$fundef_129_envp_483" to i8*
  %"$$fundef_129_cloval_486" = insertvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })* bitcast ({ { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (%"$$fundef_129_env_208"*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })* @"$fundef_129" to { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_129_env_voidp_485", 1
  %"$$fundef_129_env_nat_fold_487" = getelementptr inbounds %"$$fundef_129_env_208", %"$$fundef_129_env_208"* %"$$fundef_129_envp_483", i32 0, i32 0
  %"$nat_fold_488" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_488", { i8*, i8* }** %"$$fundef_129_env_nat_fold_487"
  store { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$$fundef_129_cloval_486", { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_128"
  %"$$retval_128_489" = load { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_128"
  ret { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_128_489"
}

define internal %Nat* @"$fundef_125"(%"$$fundef_125_env_210"* %0, %Nat* %1) {
entry:
  %"$retval_126" = alloca %Nat*
  %"$adtval_476_load" = load i8*, i8** @_execptr
  %"$adtval_476_salloc" = call i8* @_salloc(i8* %"$adtval_476_load", i64 9)
  %"$adtval_476" = bitcast i8* %"$adtval_476_salloc" to %Succ*
  %"$adtgep_477" = getelementptr inbounds %Succ, %Succ* %"$adtval_476", i32 0, i32 0
  store i8 1, i8* %"$adtgep_477"
  %"$adtgep_478" = getelementptr inbounds %Succ, %Succ* %"$adtval_476", i32 0, i32 1
  store %Nat* %1, %Nat** %"$adtgep_478"
  %"$adtptr_479" = bitcast %Succ* %"$adtval_476" to %Nat*
  store %Nat* %"$adtptr_479", %Nat** %"$retval_126"
  %"$$retval_126_480" = load %Nat*, %Nat** %"$retval_126"
  ret %Nat* %"$$retval_126_480"
}

define internal %Uint32 @"$fundef_122"(%"$$fundef_122_env_211"* %0, %Nat* %1) {
entry:
  %"$$fundef_122_env_one_int_468" = getelementptr inbounds %"$$fundef_122_env_211", %"$$fundef_122_env_211"* %0, i32 0, i32 0
  %"$one_int_envload_469" = load %Uint32, %Uint32* %"$$fundef_122_env_one_int_468"
  %one_int = alloca %Uint32
  store %Uint32 %"$one_int_envload_469", %Uint32* %one_int
  %"$$fundef_122_env_z_470" = getelementptr inbounds %"$$fundef_122_env_211", %"$$fundef_122_env_211"* %0, i32 0, i32 1
  %"$z_envload_471" = load %Uint32, %Uint32* %"$$fundef_122_env_z_470"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_471", %Uint32* %z
  %"$retval_123" = alloca %Uint32
  %"$z_472" = load %Uint32, %Uint32* %z
  %"$one_int_473" = load %Uint32, %Uint32* %one_int
  %"$add_call_474" = call %Uint32 @_add_Uint32(%Uint32 %"$z_472", %Uint32 %"$one_int_473")
  store %Uint32 %"$add_call_474", %Uint32* %"$retval_123"
  %"$$retval_123_475" = load %Uint32, %Uint32* %"$retval_123"
  ret %Uint32 %"$$retval_123_475"
}

define internal { %Uint32 (i8*, %Nat*)*, i8* } @"$fundef_120"(%"$$fundef_120_env_212"* %0, %Uint32 %1) {
entry:
  %"$$fundef_120_env_one_int_458" = getelementptr inbounds %"$$fundef_120_env_212", %"$$fundef_120_env_212"* %0, i32 0, i32 0
  %"$one_int_envload_459" = load %Uint32, %Uint32* %"$$fundef_120_env_one_int_458"
  %one_int = alloca %Uint32
  store %Uint32 %"$one_int_envload_459", %Uint32* %one_int
  %"$retval_121" = alloca { %Uint32 (i8*, %Nat*)*, i8* }
  %"$$fundef_122_envp_460_load" = load i8*, i8** @_execptr
  %"$$fundef_122_envp_460_salloc" = call i8* @_salloc(i8* %"$$fundef_122_envp_460_load", i64 8)
  %"$$fundef_122_envp_460" = bitcast i8* %"$$fundef_122_envp_460_salloc" to %"$$fundef_122_env_211"*
  %"$$fundef_122_env_voidp_462" = bitcast %"$$fundef_122_env_211"* %"$$fundef_122_envp_460" to i8*
  %"$$fundef_122_cloval_463" = insertvalue { %Uint32 (i8*, %Nat*)*, i8* } { %Uint32 (i8*, %Nat*)* bitcast (%Uint32 (%"$$fundef_122_env_211"*, %Nat*)* @"$fundef_122" to %Uint32 (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_122_env_voidp_462", 1
  %"$$fundef_122_env_one_int_464" = getelementptr inbounds %"$$fundef_122_env_211", %"$$fundef_122_env_211"* %"$$fundef_122_envp_460", i32 0, i32 0
  %"$one_int_465" = load %Uint32, %Uint32* %one_int
  store %Uint32 %"$one_int_465", %Uint32* %"$$fundef_122_env_one_int_464"
  %"$$fundef_122_env_z_466" = getelementptr inbounds %"$$fundef_122_env_211", %"$$fundef_122_env_211"* %"$$fundef_122_envp_460", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_122_env_z_466"
  store { %Uint32 (i8*, %Nat*)*, i8* } %"$$fundef_122_cloval_463", { %Uint32 (i8*, %Nat*)*, i8* }* %"$retval_121"
  %"$$retval_121_467" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* %"$retval_121"
  ret { %Uint32 (i8*, %Nat*)*, i8* } %"$$retval_121_467"
}

define internal %Uint32 @"$fundef_118"(%"$$fundef_118_env_213"* %0, %Nat* %1) {
entry:
  %"$$fundef_118_env_nat_fold_427" = getelementptr inbounds %"$$fundef_118_env_213", %"$$fundef_118_env_213"* %0, i32 0, i32 0
  %"$nat_fold_envload_428" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_118_env_nat_fold_427"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_428", { i8*, i8* }** %nat_fold
  %"$retval_119" = alloca %Uint32
  %fold = alloca { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$nat_fold_429" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  %"$nat_fold_430" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_429", i32 0
  %"$nat_fold_431" = bitcast { i8*, i8* }* %"$nat_fold_430" to { { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_432" = load { { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_431"
  %"$nat_fold_fptr_433" = extractvalue { { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_432", 0
  %"$nat_fold_envptr_434" = extractvalue { { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_432", 1
  %"$nat_fold_call_435" = call { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$nat_fold_fptr_433"(i8* %"$nat_fold_envptr_434")
  store { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$nat_fold_call_435", { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold
  %one_int = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one_int
  %f = alloca { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_120_envp_436_load" = load i8*, i8** @_execptr
  %"$$fundef_120_envp_436_salloc" = call i8* @_salloc(i8* %"$$fundef_120_envp_436_load", i64 4)
  %"$$fundef_120_envp_436" = bitcast i8* %"$$fundef_120_envp_436_salloc" to %"$$fundef_120_env_212"*
  %"$$fundef_120_env_voidp_438" = bitcast %"$$fundef_120_env_212"* %"$$fundef_120_envp_436" to i8*
  %"$$fundef_120_cloval_439" = insertvalue { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Nat*)*, i8* } (%"$$fundef_120_env_212"*, %Uint32)* @"$fundef_120" to { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_120_env_voidp_438", 1
  %"$$fundef_120_env_one_int_440" = getelementptr inbounds %"$$fundef_120_env_212", %"$$fundef_120_env_212"* %"$$fundef_120_envp_436", i32 0, i32 0
  %"$one_int_441" = load %Uint32, %Uint32* %one_int
  store %Uint32 %"$one_int_441", %Uint32* %"$$fundef_120_env_one_int_440"
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_120_cloval_439", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %zero_int = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero_int
  %"$fold_22" = alloca { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$fold_442" = load { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold
  %"$fold_fptr_443" = extractvalue { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_442", 0
  %"$fold_envptr_444" = extractvalue { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_442", 1
  %"$f_445" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$fold_call_446" = call { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_fptr_443"(i8* %"$fold_envptr_444", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_445")
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_call_446", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_22"
  %"$fold_23" = alloca { %Uint32 (i8*, %Nat*)*, i8* }
  %"$$fold_22_447" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_22"
  %"$$fold_22_fptr_448" = extractvalue { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_22_447", 0
  %"$$fold_22_envptr_449" = extractvalue { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_22_447", 1
  %"$zero_int_450" = load %Uint32, %Uint32* %zero_int
  %"$$fold_22_call_451" = call { %Uint32 (i8*, %Nat*)*, i8* } %"$$fold_22_fptr_448"(i8* %"$$fold_22_envptr_449", %Uint32 %"$zero_int_450")
  store { %Uint32 (i8*, %Nat*)*, i8* } %"$$fold_22_call_451", { %Uint32 (i8*, %Nat*)*, i8* }* %"$fold_23"
  %"$fold_24" = alloca %Uint32
  %"$$fold_23_452" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* %"$fold_23"
  %"$$fold_23_fptr_453" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$$fold_23_452", 0
  %"$$fold_23_envptr_454" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$$fold_23_452", 1
  %"$$fold_23_call_455" = call %Uint32 %"$$fold_23_fptr_453"(i8* %"$$fold_23_envptr_454", %Nat* %1)
  store %Uint32 %"$$fold_23_call_455", %Uint32* %"$fold_24"
  %"$$fold_24_456" = load %Uint32, %Uint32* %"$fold_24"
  store %Uint32 %"$$fold_24_456", %Uint32* %"$retval_119"
  %"$$retval_119_457" = load %Uint32, %Uint32* %"$retval_119"
  ret %Uint32 %"$$retval_119_457"
}

define internal %Nat* @"$fundef_116"(%"$$fundef_116_env_214"* %0, %Nat* %1) {
entry:
  %"$$fundef_116_env_f0_387" = getelementptr inbounds %"$$fundef_116_env_214", %"$$fundef_116_env_214"* %0, i32 0, i32 0
  %"$f0_envload_388" = load %Nat*, %Nat** %"$$fundef_116_env_f0_387"
  %f0 = alloca %Nat*
  store %Nat* %"$f0_envload_388", %Nat** %f0
  %"$$fundef_116_env_fn_389" = getelementptr inbounds %"$$fundef_116_env_214", %"$$fundef_116_env_214"* %0, i32 0, i32 1
  %"$fn_envload_390" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$$fundef_116_env_fn_389"
  %fn = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$fn_envload_390", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %fn
  %"$$fundef_116_env_g_391" = getelementptr inbounds %"$$fundef_116_env_214", %"$$fundef_116_env_214"* %0, i32 0, i32 2
  %"$g_envload_392" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$$fundef_116_env_g_391"
  %g = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$g_envload_392", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %g
  %"$retval_117" = alloca %Nat*
  %"$n_tag_394" = getelementptr inbounds %Nat, %Nat* %1, i32 0, i32 0
  %"$n_tag_395" = load i8, i8* %"$n_tag_394"
  switch i8 %"$n_tag_395", label %"$empty_default_396" [
    i8 1, label %"$Succ_397"
    i8 0, label %"$Zero_423"
  ]

"$Succ_397":                                      ; preds = %entry
  %"$n_398" = bitcast %Nat* %1 to %Succ*
  %"$n1_gep_399" = getelementptr inbounds %Succ, %Succ* %"$n_398", i32 0, i32 1
  %"$n1_load_400" = load %Nat*, %Nat** %"$n1_gep_399"
  %n1 = alloca %Nat*
  store %Nat* %"$n1_load_400", %Nat** %n1
  %res = alloca %Nat*
  %"$fn_18" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$fn_401" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %fn
  %"$fn_fptr_402" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$fn_401", 0
  %"$fn_envptr_403" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$fn_401", 1
  %"$f0_404" = load %Nat*, %Nat** %f0
  %"$fn_call_405" = call { %Nat* (i8*, %Nat*)*, i8* } %"$fn_fptr_402"(i8* %"$fn_envptr_403", %Nat* %"$f0_404")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$fn_call_405", { %Nat* (i8*, %Nat*)*, i8* }* %"$fn_18"
  %"$fn_19" = alloca %Nat*
  %"$$fn_18_406" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$fn_18"
  %"$$fn_18_fptr_407" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$fn_18_406", 0
  %"$$fn_18_envptr_408" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$fn_18_406", 1
  %"$n1_409" = load %Nat*, %Nat** %n1
  %"$$fn_18_call_410" = call %Nat* %"$$fn_18_fptr_407"(i8* %"$$fn_18_envptr_408", %Nat* %"$n1_409")
  store %Nat* %"$$fn_18_call_410", %Nat** %"$fn_19"
  %"$$fn_19_411" = load %Nat*, %Nat** %"$fn_19"
  store %Nat* %"$$fn_19_411", %Nat** %res
  %"$g_20" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$g_412" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %g
  %"$g_fptr_413" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$g_412", 0
  %"$g_envptr_414" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$g_412", 1
  %"$res_415" = load %Nat*, %Nat** %res
  %"$g_call_416" = call { %Nat* (i8*, %Nat*)*, i8* } %"$g_fptr_413"(i8* %"$g_envptr_414", %Nat* %"$res_415")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$g_call_416", { %Nat* (i8*, %Nat*)*, i8* }* %"$g_20"
  %"$g_21" = alloca %Nat*
  %"$$g_20_417" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$g_20"
  %"$$g_20_fptr_418" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$g_20_417", 0
  %"$$g_20_envptr_419" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$g_20_417", 1
  %"$n1_420" = load %Nat*, %Nat** %n1
  %"$$g_20_call_421" = call %Nat* %"$$g_20_fptr_418"(i8* %"$$g_20_envptr_419", %Nat* %"$n1_420")
  store %Nat* %"$$g_20_call_421", %Nat** %"$g_21"
  %"$$g_21_422" = load %Nat*, %Nat** %"$g_21"
  store %Nat* %"$$g_21_422", %Nat** %"$retval_117"
  br label %"$matchsucc_393"

"$Zero_423":                                      ; preds = %entry
  %"$n_424" = bitcast %Nat* %1 to %Zero*
  %"$f0_425" = load %Nat*, %Nat** %f0
  store %Nat* %"$f0_425", %Nat** %"$retval_117"
  br label %"$matchsucc_393"

"$empty_default_396":                             ; preds = %entry
  br label %"$matchsucc_393"

"$matchsucc_393":                                 ; preds = %"$Zero_423", %"$Succ_397", %"$empty_default_396"
  %"$$retval_117_426" = load %Nat*, %Nat** %"$retval_117"
  ret %Nat* %"$$retval_117_426"
}

define internal { %Nat* (i8*, %Nat*)*, i8* } @"$fundef_114"(%"$$fundef_114_env_215"* %0, %Nat* %1) {
entry:
  %"$$fundef_114_env_fn_373" = getelementptr inbounds %"$$fundef_114_env_215", %"$$fundef_114_env_215"* %0, i32 0, i32 0
  %"$fn_envload_374" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$$fundef_114_env_fn_373"
  %fn = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$fn_envload_374", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %fn
  %"$$fundef_114_env_g_375" = getelementptr inbounds %"$$fundef_114_env_215", %"$$fundef_114_env_215"* %0, i32 0, i32 1
  %"$g_envload_376" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$$fundef_114_env_g_375"
  %g = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$g_envload_376", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %g
  %"$retval_115" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$$fundef_116_envp_377_load" = load i8*, i8** @_execptr
  %"$$fundef_116_envp_377_salloc" = call i8* @_salloc(i8* %"$$fundef_116_envp_377_load", i64 40)
  %"$$fundef_116_envp_377" = bitcast i8* %"$$fundef_116_envp_377_salloc" to %"$$fundef_116_env_214"*
  %"$$fundef_116_env_voidp_379" = bitcast %"$$fundef_116_env_214"* %"$$fundef_116_envp_377" to i8*
  %"$$fundef_116_cloval_380" = insertvalue { %Nat* (i8*, %Nat*)*, i8* } { %Nat* (i8*, %Nat*)* bitcast (%Nat* (%"$$fundef_116_env_214"*, %Nat*)* @"$fundef_116" to %Nat* (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_116_env_voidp_379", 1
  %"$$fundef_116_env_f0_381" = getelementptr inbounds %"$$fundef_116_env_214", %"$$fundef_116_env_214"* %"$$fundef_116_envp_377", i32 0, i32 0
  store %Nat* %1, %Nat** %"$$fundef_116_env_f0_381"
  %"$$fundef_116_env_fn_382" = getelementptr inbounds %"$$fundef_116_env_214", %"$$fundef_116_env_214"* %"$$fundef_116_envp_377", i32 0, i32 1
  %"$fn_383" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %fn
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$fn_383", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$$fundef_116_env_fn_382"
  %"$$fundef_116_env_g_384" = getelementptr inbounds %"$$fundef_116_env_214", %"$$fundef_116_env_214"* %"$$fundef_116_envp_377", i32 0, i32 2
  %"$g_385" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %g
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$g_385", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$$fundef_116_env_g_384"
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$fundef_116_cloval_380", { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_115"
  %"$$retval_115_386" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_115"
  ret { %Nat* (i8*, %Nat*)*, i8* } %"$$retval_115_386"
}

define internal { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } @"$fundef_112"(%"$$fundef_112_env_216"* %0, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %1) {
entry:
  %"$retval_113" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$$fundef_114_envp_364_load" = load i8*, i8** @_execptr
  %"$$fundef_114_envp_364_salloc" = call i8* @_salloc(i8* %"$$fundef_114_envp_364_load", i64 32)
  %"$$fundef_114_envp_364" = bitcast i8* %"$$fundef_114_envp_364_salloc" to %"$$fundef_114_env_215"*
  %"$$fundef_114_env_voidp_366" = bitcast %"$$fundef_114_env_215"* %"$$fundef_114_envp_364" to i8*
  %"$$fundef_114_cloval_367" = insertvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)* bitcast ({ %Nat* (i8*, %Nat*)*, i8* } (%"$$fundef_114_env_215"*, %Nat*)* @"$fundef_114" to { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_114_env_voidp_366", 1
  %g = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$fundef_114_cloval_367", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %g
  %"$$fundef_114_env_fn_368" = getelementptr inbounds %"$$fundef_114_env_215", %"$$fundef_114_env_215"* %"$$fundef_114_envp_364", i32 0, i32 0
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %1, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$$fundef_114_env_fn_368"
  %"$$fundef_114_env_g_369" = getelementptr inbounds %"$$fundef_114_env_215", %"$$fundef_114_env_215"* %"$$fundef_114_envp_364", i32 0, i32 1
  %"$g_370" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %g
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$g_370", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$$fundef_114_env_g_369"
  %"$g_371" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %g
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$g_371", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_113"
  %"$$retval_113_372" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_113"
  ret { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$retval_113_372"
}

define internal { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } @"$fundef_110"(%"$$fundef_110_env_217"* %0) {
entry:
  %"$retval_111" = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* }
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })* bitcast ({ { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (%"$$fundef_112_env_216"*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })* @"$fundef_112" to { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*), i8* null }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* }* %"$retval_111"
  %"$$retval_111_363" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* }* %"$retval_111"
  ret { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } %"$$retval_111_363"
}

define internal { %Nat* (i8*, %Nat*)*, i8* } @"$fundef_108"(%"$$fundef_108_env_218"* %0, %Nat* %1) {
entry:
  %"$$fundef_108_env_f0_320" = getelementptr inbounds %"$$fundef_108_env_218", %"$$fundef_108_env_218"* %0, i32 0, i32 0
  %"$f0_envload_321" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_108_env_f0_320"
  %f0 = alloca { %Nat* (i8*, %Nat*)*, i8* }
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f0_envload_321", { %Nat* (i8*, %Nat*)*, i8* }* %f0
  %"$$fundef_108_env_fn_322" = getelementptr inbounds %"$$fundef_108_env_218", %"$$fundef_108_env_218"* %0, i32 0, i32 1
  %"$fn_envload_323" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_fn_322"
  %fn = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$fn_envload_323", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %fn
  %"$$fundef_108_env_g_324" = getelementptr inbounds %"$$fundef_108_env_218", %"$$fundef_108_env_218"* %0, i32 0, i32 2
  %"$g_envload_325" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_g_324"
  %g = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$g_envload_325", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %g
  %"$retval_109" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$n_tag_327" = getelementptr inbounds %Nat, %Nat* %1, i32 0, i32 0
  %"$n_tag_328" = load i8, i8* %"$n_tag_327"
  switch i8 %"$n_tag_328", label %"$empty_default_329" [
    i8 1, label %"$Succ_330"
    i8 0, label %"$Zero_356"
  ]

"$Succ_330":                                      ; preds = %entry
  %"$n_331" = bitcast %Nat* %1 to %Succ*
  %"$n1_gep_332" = getelementptr inbounds %Succ, %Succ* %"$n_331", i32 0, i32 1
  %"$n1_load_333" = load %Nat*, %Nat** %"$n1_gep_332"
  %n1 = alloca %Nat*
  store %Nat* %"$n1_load_333", %Nat** %n1
  %res = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$fn_18" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$fn_334" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %fn
  %"$fn_fptr_335" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$fn_334", 0
  %"$fn_envptr_336" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$fn_334", 1
  %"$f0_337" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %f0
  %"$fn_call_338" = call { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$fn_fptr_335"(i8* %"$fn_envptr_336", { %Nat* (i8*, %Nat*)*, i8* } %"$f0_337")
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$fn_call_338", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$fn_18"
  %"$fn_19" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$$fn_18_339" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$fn_18"
  %"$$fn_18_fptr_340" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$fn_18_339", 0
  %"$$fn_18_envptr_341" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$fn_18_339", 1
  %"$n1_342" = load %Nat*, %Nat** %n1
  %"$$fn_18_call_343" = call { %Nat* (i8*, %Nat*)*, i8* } %"$$fn_18_fptr_340"(i8* %"$$fn_18_envptr_341", %Nat* %"$n1_342")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$fn_18_call_343", { %Nat* (i8*, %Nat*)*, i8* }* %"$fn_19"
  %"$$fn_19_344" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$fn_19"
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$fn_19_344", { %Nat* (i8*, %Nat*)*, i8* }* %res
  %"$g_20" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$g_345" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %g
  %"$g_fptr_346" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$g_345", 0
  %"$g_envptr_347" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$g_345", 1
  %"$res_348" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %res
  %"$g_call_349" = call { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$g_fptr_346"(i8* %"$g_envptr_347", { %Nat* (i8*, %Nat*)*, i8* } %"$res_348")
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$g_call_349", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$g_20"
  %"$g_21" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$$g_20_350" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$g_20"
  %"$$g_20_fptr_351" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$g_20_350", 0
  %"$$g_20_envptr_352" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$g_20_350", 1
  %"$n1_353" = load %Nat*, %Nat** %n1
  %"$$g_20_call_354" = call { %Nat* (i8*, %Nat*)*, i8* } %"$$g_20_fptr_351"(i8* %"$$g_20_envptr_352", %Nat* %"$n1_353")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$g_20_call_354", { %Nat* (i8*, %Nat*)*, i8* }* %"$g_21"
  %"$$g_21_355" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$g_21"
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$g_21_355", { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_109"
  br label %"$matchsucc_326"

"$Zero_356":                                      ; preds = %entry
  %"$n_357" = bitcast %Nat* %1 to %Zero*
  %"$f0_358" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %f0
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f0_358", { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_109"
  br label %"$matchsucc_326"

"$empty_default_329":                             ; preds = %entry
  br label %"$matchsucc_326"

"$matchsucc_326":                                 ; preds = %"$Zero_356", %"$Succ_330", %"$empty_default_329"
  %"$$retval_109_359" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_109"
  ret { %Nat* (i8*, %Nat*)*, i8* } %"$$retval_109_359"
}

define internal { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } @"$fundef_106"(%"$$fundef_106_env_219"* %0, { %Nat* (i8*, %Nat*)*, i8* } %1) {
entry:
  %"$$fundef_106_env_fn_306" = getelementptr inbounds %"$$fundef_106_env_219", %"$$fundef_106_env_219"* %0, i32 0, i32 0
  %"$fn_envload_307" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_fn_306"
  %fn = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$fn_envload_307", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %fn
  %"$$fundef_106_env_g_308" = getelementptr inbounds %"$$fundef_106_env_219", %"$$fundef_106_env_219"* %0, i32 0, i32 1
  %"$g_envload_309" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_g_308"
  %g = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$g_envload_309", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %g
  %"$retval_107" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$$fundef_108_envp_310_load" = load i8*, i8** @_execptr
  %"$$fundef_108_envp_310_salloc" = call i8* @_salloc(i8* %"$$fundef_108_envp_310_load", i64 48)
  %"$$fundef_108_envp_310" = bitcast i8* %"$$fundef_108_envp_310_salloc" to %"$$fundef_108_env_218"*
  %"$$fundef_108_env_voidp_312" = bitcast %"$$fundef_108_env_218"* %"$$fundef_108_envp_310" to i8*
  %"$$fundef_108_cloval_313" = insertvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)* bitcast ({ %Nat* (i8*, %Nat*)*, i8* } (%"$$fundef_108_env_218"*, %Nat*)* @"$fundef_108" to { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_108_env_voidp_312", 1
  %"$$fundef_108_env_f0_314" = getelementptr inbounds %"$$fundef_108_env_218", %"$$fundef_108_env_218"* %"$$fundef_108_envp_310", i32 0, i32 0
  store { %Nat* (i8*, %Nat*)*, i8* } %1, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_108_env_f0_314"
  %"$$fundef_108_env_fn_315" = getelementptr inbounds %"$$fundef_108_env_218", %"$$fundef_108_env_218"* %"$$fundef_108_envp_310", i32 0, i32 1
  %"$fn_316" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %fn
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$fn_316", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_fn_315"
  %"$$fundef_108_env_g_317" = getelementptr inbounds %"$$fundef_108_env_218", %"$$fundef_108_env_218"* %"$$fundef_108_envp_310", i32 0, i32 2
  %"$g_318" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %g
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$g_318", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_g_317"
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$fundef_108_cloval_313", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_107"
  %"$$retval_107_319" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_107"
  ret { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$retval_107_319"
}

define internal { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } @"$fundef_104"(%"$$fundef_104_env_220"* %0, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %1) {
entry:
  %"$retval_105" = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  %"$$fundef_106_envp_297_load" = load i8*, i8** @_execptr
  %"$$fundef_106_envp_297_salloc" = call i8* @_salloc(i8* %"$$fundef_106_envp_297_load", i64 32)
  %"$$fundef_106_envp_297" = bitcast i8* %"$$fundef_106_envp_297_salloc" to %"$$fundef_106_env_219"*
  %"$$fundef_106_env_voidp_299" = bitcast %"$$fundef_106_env_219"* %"$$fundef_106_envp_297" to i8*
  %"$$fundef_106_cloval_300" = insertvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })* bitcast ({ { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (%"$$fundef_106_env_219"*, { %Nat* (i8*, %Nat*)*, i8* })* @"$fundef_106" to { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_106_env_voidp_299", 1
  %g = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$fundef_106_cloval_300", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %g
  %"$$fundef_106_env_fn_301" = getelementptr inbounds %"$$fundef_106_env_219", %"$$fundef_106_env_219"* %"$$fundef_106_envp_297", i32 0, i32 0
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %1, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_fn_301"
  %"$$fundef_106_env_g_302" = getelementptr inbounds %"$$fundef_106_env_219", %"$$fundef_106_env_219"* %"$$fundef_106_envp_297", i32 0, i32 1
  %"$g_303" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %g
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$g_303", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_g_302"
  %"$g_304" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %g
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$g_304", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$retval_105"
  %"$$retval_105_305" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$retval_105"
  ret { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$retval_105_305"
}

define internal { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_102"(%"$$fundef_102_env_221"* %0) {
entry:
  %"$retval_103" = alloca { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }
  store { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })* bitcast ({ { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (%"$$fundef_104_env_220"*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })* @"$fundef_104" to { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*), i8* null }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_103"
  %"$$retval_103_296" = load { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_103"
  ret { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_103_296"
}

define internal %Uint32 @"$fundef_100"(%"$$fundef_100_env_222"* %0, %Nat* %1) {
entry:
  %"$$fundef_100_env_f0_253" = getelementptr inbounds %"$$fundef_100_env_222", %"$$fundef_100_env_222"* %0, i32 0, i32 0
  %"$f0_envload_254" = load %Uint32, %Uint32* %"$$fundef_100_env_f0_253"
  %f0 = alloca %Uint32
  store %Uint32 %"$f0_envload_254", %Uint32* %f0
  %"$$fundef_100_env_fn_255" = getelementptr inbounds %"$$fundef_100_env_222", %"$$fundef_100_env_222"* %0, i32 0, i32 1
  %"$fn_envload_256" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_fn_255"
  %fn = alloca { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_256", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  %"$$fundef_100_env_g_257" = getelementptr inbounds %"$$fundef_100_env_222", %"$$fundef_100_env_222"* %0, i32 0, i32 2
  %"$g_envload_258" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_g_257"
  %g = alloca { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_258", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_101" = alloca %Uint32
  %"$n_tag_260" = getelementptr inbounds %Nat, %Nat* %1, i32 0, i32 0
  %"$n_tag_261" = load i8, i8* %"$n_tag_260"
  switch i8 %"$n_tag_261", label %"$empty_default_262" [
    i8 1, label %"$Succ_263"
    i8 0, label %"$Zero_289"
  ]

"$Succ_263":                                      ; preds = %entry
  %"$n_264" = bitcast %Nat* %1 to %Succ*
  %"$n1_gep_265" = getelementptr inbounds %Succ, %Succ* %"$n_264", i32 0, i32 1
  %"$n1_load_266" = load %Nat*, %Nat** %"$n1_gep_265"
  %n1 = alloca %Nat*
  store %Nat* %"$n1_load_266", %Nat** %n1
  %res = alloca %Uint32
  %"$fn_18" = alloca { %Uint32 (i8*, %Nat*)*, i8* }
  %"$fn_267" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  %"$fn_fptr_268" = extractvalue { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_267", 0
  %"$fn_envptr_269" = extractvalue { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_267", 1
  %"$f0_270" = load %Uint32, %Uint32* %f0
  %"$fn_call_271" = call { %Uint32 (i8*, %Nat*)*, i8* } %"$fn_fptr_268"(i8* %"$fn_envptr_269", %Uint32 %"$f0_270")
  store { %Uint32 (i8*, %Nat*)*, i8* } %"$fn_call_271", { %Uint32 (i8*, %Nat*)*, i8* }* %"$fn_18"
  %"$fn_19" = alloca %Uint32
  %"$$fn_18_272" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* %"$fn_18"
  %"$$fn_18_fptr_273" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$$fn_18_272", 0
  %"$$fn_18_envptr_274" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$$fn_18_272", 1
  %"$n1_275" = load %Nat*, %Nat** %n1
  %"$$fn_18_call_276" = call %Uint32 %"$$fn_18_fptr_273"(i8* %"$$fn_18_envptr_274", %Nat* %"$n1_275")
  store %Uint32 %"$$fn_18_call_276", %Uint32* %"$fn_19"
  %"$$fn_19_277" = load %Uint32, %Uint32* %"$fn_19"
  store %Uint32 %"$$fn_19_277", %Uint32* %res
  %"$g_20" = alloca { %Uint32 (i8*, %Nat*)*, i8* }
  %"$g_278" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_279" = extractvalue { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_278", 0
  %"$g_envptr_280" = extractvalue { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_278", 1
  %"$res_281" = load %Uint32, %Uint32* %res
  %"$g_call_282" = call { %Uint32 (i8*, %Nat*)*, i8* } %"$g_fptr_279"(i8* %"$g_envptr_280", %Uint32 %"$res_281")
  store { %Uint32 (i8*, %Nat*)*, i8* } %"$g_call_282", { %Uint32 (i8*, %Nat*)*, i8* }* %"$g_20"
  %"$g_21" = alloca %Uint32
  %"$$g_20_283" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* %"$g_20"
  %"$$g_20_fptr_284" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$$g_20_283", 0
  %"$$g_20_envptr_285" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$$g_20_283", 1
  %"$n1_286" = load %Nat*, %Nat** %n1
  %"$$g_20_call_287" = call %Uint32 %"$$g_20_fptr_284"(i8* %"$$g_20_envptr_285", %Nat* %"$n1_286")
  store %Uint32 %"$$g_20_call_287", %Uint32* %"$g_21"
  %"$$g_21_288" = load %Uint32, %Uint32* %"$g_21"
  store %Uint32 %"$$g_21_288", %Uint32* %"$retval_101"
  br label %"$matchsucc_259"

"$Zero_289":                                      ; preds = %entry
  %"$n_290" = bitcast %Nat* %1 to %Zero*
  %"$f0_291" = load %Uint32, %Uint32* %f0
  store %Uint32 %"$f0_291", %Uint32* %"$retval_101"
  br label %"$matchsucc_259"

"$empty_default_262":                             ; preds = %entry
  br label %"$matchsucc_259"

"$matchsucc_259":                                 ; preds = %"$Zero_289", %"$Succ_263", %"$empty_default_262"
  %"$$retval_101_292" = load %Uint32, %Uint32* %"$retval_101"
  ret %Uint32 %"$$retval_101_292"
}

define internal { %Uint32 (i8*, %Nat*)*, i8* } @"$fundef_98"(%"$$fundef_98_env_223"* %0, %Uint32 %1) {
entry:
  %"$$fundef_98_env_fn_239" = getelementptr inbounds %"$$fundef_98_env_223", %"$$fundef_98_env_223"* %0, i32 0, i32 0
  %"$fn_envload_240" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_fn_239"
  %fn = alloca { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_240", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  %"$$fundef_98_env_g_241" = getelementptr inbounds %"$$fundef_98_env_223", %"$$fundef_98_env_223"* %0, i32 0, i32 1
  %"$g_envload_242" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_g_241"
  %g = alloca { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_242", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_99" = alloca { %Uint32 (i8*, %Nat*)*, i8* }
  %"$$fundef_100_envp_243_load" = load i8*, i8** @_execptr
  %"$$fundef_100_envp_243_salloc" = call i8* @_salloc(i8* %"$$fundef_100_envp_243_load", i64 40)
  %"$$fundef_100_envp_243" = bitcast i8* %"$$fundef_100_envp_243_salloc" to %"$$fundef_100_env_222"*
  %"$$fundef_100_env_voidp_245" = bitcast %"$$fundef_100_env_222"* %"$$fundef_100_envp_243" to i8*
  %"$$fundef_100_cloval_246" = insertvalue { %Uint32 (i8*, %Nat*)*, i8* } { %Uint32 (i8*, %Nat*)* bitcast (%Uint32 (%"$$fundef_100_env_222"*, %Nat*)* @"$fundef_100" to %Uint32 (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_100_env_voidp_245", 1
  %"$$fundef_100_env_f0_247" = getelementptr inbounds %"$$fundef_100_env_222", %"$$fundef_100_env_222"* %"$$fundef_100_envp_243", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_100_env_f0_247"
  %"$$fundef_100_env_fn_248" = getelementptr inbounds %"$$fundef_100_env_222", %"$$fundef_100_env_222"* %"$$fundef_100_envp_243", i32 0, i32 1
  %"$fn_249" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_249", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_fn_248"
  %"$$fundef_100_env_g_250" = getelementptr inbounds %"$$fundef_100_env_222", %"$$fundef_100_env_222"* %"$$fundef_100_envp_243", i32 0, i32 2
  %"$g_251" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_251", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_g_250"
  store { %Uint32 (i8*, %Nat*)*, i8* } %"$$fundef_100_cloval_246", { %Uint32 (i8*, %Nat*)*, i8* }* %"$retval_99"
  %"$$retval_99_252" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* %"$retval_99"
  ret { %Uint32 (i8*, %Nat*)*, i8* } %"$$retval_99_252"
}

define internal { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_96"(%"$$fundef_96_env_224"* %0, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_97" = alloca { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_98_envp_230_load" = load i8*, i8** @_execptr
  %"$$fundef_98_envp_230_salloc" = call i8* @_salloc(i8* %"$$fundef_98_envp_230_load", i64 32)
  %"$$fundef_98_envp_230" = bitcast i8* %"$$fundef_98_envp_230_salloc" to %"$$fundef_98_env_223"*
  %"$$fundef_98_env_voidp_232" = bitcast %"$$fundef_98_env_223"* %"$$fundef_98_envp_230" to i8*
  %"$$fundef_98_cloval_233" = insertvalue { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Nat*)*, i8* } (%"$$fundef_98_env_223"*, %Uint32)* @"$fundef_98" to { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_98_env_voidp_232", 1
  %g = alloca { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_98_cloval_233", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_98_env_fn_234" = getelementptr inbounds %"$$fundef_98_env_223", %"$$fundef_98_env_223"* %"$$fundef_98_envp_230", i32 0, i32 0
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_fn_234"
  %"$$fundef_98_env_g_235" = getelementptr inbounds %"$$fundef_98_env_223", %"$$fundef_98_env_223"* %"$$fundef_98_envp_230", i32 0, i32 1
  %"$g_236" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_236", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_g_235"
  %"$g_237" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_237", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_97"
  %"$$retval_97_238" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_97"
  ret { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_97_238"
}

define internal { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_94"(%"$$fundef_94_env_225"* %0) {
entry:
  %"$retval_95" = alloca { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_96_env_224"*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_96" to { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_95"
  %"$$retval_95_229" = load { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_95"
  ret { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_95_229"
}

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_722"(i8* %0) {
entry:
  store { { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_94_env_225"*)* @"$fundef_94" to { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* bitcast ([3 x { i8*, i8* }]* @"$dyndisp_732" to { { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*)
  store { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_102_env_221"*)* @"$fundef_102" to { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* null }, { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_732", i32 0, i32 1) to { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*)
  store { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (%"$$fundef_110_env_217"*)* @"$fundef_110" to { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_732", i32 0, i32 2) to { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_732", i32 0, i32 0), { i8*, i8* }** @nat_fold
  %"$$fundef_118_envp_733_load" = load i8*, i8** @_execptr
  %"$$fundef_118_envp_733_salloc" = call i8* @_salloc(i8* %"$$fundef_118_envp_733_load", i64 8)
  %"$$fundef_118_envp_733" = bitcast i8* %"$$fundef_118_envp_733_salloc" to %"$$fundef_118_env_213"*
  %"$$fundef_118_env_voidp_735" = bitcast %"$$fundef_118_env_213"* %"$$fundef_118_envp_733" to i8*
  %"$$fundef_118_cloval_736" = insertvalue { %Uint32 (i8*, %Nat*)*, i8* } { %Uint32 (i8*, %Nat*)* bitcast (%Uint32 (%"$$fundef_118_env_213"*, %Nat*)* @"$fundef_118" to %Uint32 (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_118_env_voidp_735", 1
  %"$$fundef_118_env_nat_fold_737" = getelementptr inbounds %"$$fundef_118_env_213", %"$$fundef_118_env_213"* %"$$fundef_118_envp_733", i32 0, i32 0
  %"$nat_fold_738" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold
  store { i8*, i8* }* %"$nat_fold_738", { i8*, i8* }** %"$$fundef_118_env_nat_fold_737"
  store { %Uint32 (i8*, %Nat*)*, i8* } %"$$fundef_118_cloval_736", { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$expr_124" = alloca %Uint32
  %nat_succ = alloca { %Nat* (i8*, %Nat*)*, i8* }
  store { %Nat* (i8*, %Nat*)*, i8* } { %Nat* (i8*, %Nat*)* bitcast (%Nat* (%"$$fundef_125_env_210"*, %Nat*)* @"$fundef_125" to %Nat* (i8*, %Nat*)*), i8* null }, { %Nat* (i8*, %Nat*)*, i8* }* %nat_succ
  %nat_iter = alloca { i8*, i8* }*
  %"$$fundef_127_envp_742_load" = load i8*, i8** @_execptr
  %"$$fundef_127_envp_742_salloc" = call i8* @_salloc(i8* %"$$fundef_127_envp_742_load", i64 8)
  %"$$fundef_127_envp_742" = bitcast i8* %"$$fundef_127_envp_742_salloc" to %"$$fundef_127_env_209"*
  %"$$fundef_127_env_voidp_744" = bitcast %"$$fundef_127_env_209"* %"$$fundef_127_envp_742" to i8*
  %"$$fundef_127_cloval_745" = insertvalue { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_127_env_209"*)* @"$fundef_127" to { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_127_env_voidp_744", 1
  %"$$fundef_127_env_nat_fold_746" = getelementptr inbounds %"$$fundef_127_env_209", %"$$fundef_127_env_209"* %"$$fundef_127_envp_742", i32 0, i32 0
  %"$nat_fold_747" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold
  store { i8*, i8* }* %"$nat_fold_747", { i8*, i8* }** %"$$fundef_127_env_nat_fold_746"
  %"$$fundef_139_env_voidp_749" = bitcast %"$$fundef_127_env_209"* %"$$fundef_127_envp_742" to i8*
  %"$$fundef_139_cloval_750" = insertvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (%"$$fundef_139_env_203"*)* @"$fundef_139" to { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_139_env_voidp_749", 1
  store { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_127_cloval_745", { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_751", i32 0, i32 1) to { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*)
  store { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_139_cloval_750", { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_751", i32 0, i32 2) to { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([3 x { i8*, i8* }], [3 x { i8*, i8* }]* @"$dyndisp_751", i32 0, i32 0), { i8*, i8* }** %nat_iter
  %ackermann = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %iter_nat = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  %"$nat_iter_752" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter
  %"$nat_iter_753" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_752", i32 2
  %"$nat_iter_754" = bitcast { i8*, i8* }* %"$nat_iter_753" to { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_755" = load { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_754"
  %"$nat_iter_fptr_756" = extractvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_755", 0
  %"$nat_iter_envptr_757" = extractvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_755", 1
  %"$nat_iter_call_758" = call { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$nat_iter_fptr_756"(i8* %"$nat_iter_envptr_757")
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$nat_iter_call_758", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %iter_nat
  %iter_nat_nat = alloca { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }
  %"$nat_iter_759" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter
  %"$nat_iter_760" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_759", i32 1
  %"$nat_iter_761" = bitcast { i8*, i8* }* %"$nat_iter_760" to { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_762" = load { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_761"
  %"$nat_iter_fptr_763" = extractvalue { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_762", 0
  %"$nat_iter_envptr_764" = extractvalue { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_762", 1
  %"$nat_iter_call_765" = call { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_fptr_763"(i8* %"$nat_iter_envptr_764")
  store { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_call_765", { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  %zero = alloca %Nat*
  %"$adtval_766_load" = load i8*, i8** @_execptr
  %"$adtval_766_salloc" = call i8* @_salloc(i8* %"$adtval_766_load", i64 1)
  %"$adtval_766" = bitcast i8* %"$adtval_766_salloc" to %Zero*
  %"$adtgep_767" = getelementptr inbounds %Zero, %Zero* %"$adtval_766", i32 0, i32 0
  store i8 0, i8* %"$adtgep_767"
  %"$adtptr_768" = bitcast %Zero* %"$adtval_766" to %Nat*
  store %Nat* %"$adtptr_768", %Nat** %zero
  %one = alloca %Nat*
  %"$zero_769" = load %Nat*, %Nat** %zero
  %"$adtval_770_load" = load i8*, i8** @_execptr
  %"$adtval_770_salloc" = call i8* @_salloc(i8* %"$adtval_770_load", i64 9)
  %"$adtval_770" = bitcast i8* %"$adtval_770_salloc" to %Succ*
  %"$adtgep_771" = getelementptr inbounds %Succ, %Succ* %"$adtval_770", i32 0, i32 0
  store i8 1, i8* %"$adtgep_771"
  %"$adtgep_772" = getelementptr inbounds %Succ, %Succ* %"$adtval_770", i32 0, i32 1
  store %Nat* %"$zero_769", %Nat** %"$adtgep_772"
  %"$adtptr_773" = bitcast %Succ* %"$adtval_770" to %Nat*
  store %Nat* %"$adtptr_773", %Nat** %one
  %f = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  %"$$fundef_151_envp_774_load" = load i8*, i8** @_execptr
  %"$$fundef_151_envp_774_salloc" = call i8* @_salloc(i8* %"$$fundef_151_envp_774_load", i64 24)
  %"$$fundef_151_envp_774" = bitcast i8* %"$$fundef_151_envp_774_salloc" to %"$$fundef_151_env_197"*
  %"$$fundef_151_env_voidp_776" = bitcast %"$$fundef_151_env_197"* %"$$fundef_151_envp_774" to i8*
  %"$$fundef_151_cloval_777" = insertvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })* bitcast ({ %Nat* (i8*, %Nat*)*, i8* } (%"$$fundef_151_env_197"*, { %Nat* (i8*, %Nat*)*, i8* })* @"$fundef_151" to { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_151_env_voidp_776", 1
  %"$$fundef_151_env_iter_nat_778" = getelementptr inbounds %"$$fundef_151_env_197", %"$$fundef_151_env_197"* %"$$fundef_151_envp_774", i32 0, i32 0
  %"$iter_nat_779" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %iter_nat
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$iter_nat_779", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_151_env_iter_nat_778"
  %"$$fundef_151_env_one_780" = getelementptr inbounds %"$$fundef_151_env_197", %"$$fundef_151_env_197"* %"$$fundef_151_envp_774", i32 0, i32 1
  %"$one_781" = load %Nat*, %Nat** %one
  store %Nat* %"$one_781", %Nat** %"$$fundef_151_env_one_780"
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$fundef_151_cloval_777", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_155_envp_782_load" = load i8*, i8** @_execptr
  %"$$fundef_155_envp_782_salloc" = call i8* @_salloc(i8* %"$$fundef_155_envp_782_load", i64 48)
  %"$$fundef_155_envp_782" = bitcast i8* %"$$fundef_155_envp_782_salloc" to %"$$fundef_155_env_195"*
  %"$$fundef_155_env_voidp_784" = bitcast %"$$fundef_155_env_195"* %"$$fundef_155_envp_782" to i8*
  %"$$fundef_155_cloval_785" = insertvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)* bitcast ({ %Nat* (i8*, %Nat*)*, i8* } (%"$$fundef_155_env_195"*, %Nat*)* @"$fundef_155" to { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_155_env_voidp_784", 1
  %"$$fundef_155_env_f_786" = getelementptr inbounds %"$$fundef_155_env_195", %"$$fundef_155_env_195"* %"$$fundef_155_envp_782", i32 0, i32 0
  %"$f_787" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_787", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_155_env_f_786"
  %"$$fundef_155_env_iter_nat_nat_788" = getelementptr inbounds %"$$fundef_155_env_195", %"$$fundef_155_env_195"* %"$$fundef_155_envp_782", i32 0, i32 1
  %"$iter_nat_nat_789" = load { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  store { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_789", { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_155_env_iter_nat_nat_788"
  %"$$fundef_155_env_nat_succ_790" = getelementptr inbounds %"$$fundef_155_env_195", %"$$fundef_155_env_195"* %"$$fundef_155_envp_782", i32 0, i32 2
  %"$nat_succ_791" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %nat_succ
  store { %Nat* (i8*, %Nat*)*, i8* } %"$nat_succ_791", { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_155_env_nat_succ_790"
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$fundef_155_cloval_785", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %uint0 = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %uint0
  %uint1 = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %uint1
  %uint2 = alloca %Uint32
  store %Uint32 { i32 2 }, %Uint32* %uint2
  %uint3 = alloca %Uint32
  store %Uint32 { i32 3 }, %Uint32* %uint3
  %uint4 = alloca %Uint32
  store %Uint32 { i32 4 }, %Uint32* %uint4
  %n0 = alloca %Nat*
  %"$to_nat_load_792" = load i8*, i8** @_execptr
  %"$uint0_793" = load %Uint32, %Uint32* %uint0
  %"$to_nat_call_794" = call %Nat* @_to_nat(i8* %"$to_nat_load_792", %Uint32 %"$uint0_793")
  store %Nat* %"$to_nat_call_794", %Nat** %n0
  %n1 = alloca %Nat*
  %"$to_nat_load_795" = load i8*, i8** @_execptr
  %"$uint1_796" = load %Uint32, %Uint32* %uint1
  %"$to_nat_call_797" = call %Nat* @_to_nat(i8* %"$to_nat_load_795", %Uint32 %"$uint1_796")
  store %Nat* %"$to_nat_call_797", %Nat** %n1
  %n2 = alloca %Nat*
  %"$to_nat_load_798" = load i8*, i8** @_execptr
  %"$uint2_799" = load %Uint32, %Uint32* %uint2
  %"$to_nat_call_800" = call %Nat* @_to_nat(i8* %"$to_nat_load_798", %Uint32 %"$uint2_799")
  store %Nat* %"$to_nat_call_800", %Nat** %n2
  %n3 = alloca %Nat*
  %"$to_nat_load_801" = load i8*, i8** @_execptr
  %"$uint3_802" = load %Uint32, %Uint32* %uint3
  %"$to_nat_call_803" = call %Nat* @_to_nat(i8* %"$to_nat_load_801", %Uint32 %"$uint3_802")
  store %Nat* %"$to_nat_call_803", %Nat** %n3
  %n4 = alloca %Nat*
  %"$to_nat_load_804" = load i8*, i8** @_execptr
  %"$uint4_805" = load %Uint32, %Uint32* %uint4
  %"$to_nat_call_806" = call %Nat* @_to_nat(i8* %"$to_nat_load_804", %Uint32 %"$uint4_805")
  store %Nat* %"$to_nat_call_806", %Nat** %n4
  %ack00 = alloca %Nat*
  %"$ackermann_36" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_807" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_808" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_807", 0
  %"$ackermann_envptr_809" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_807", 1
  %"$n0_810" = load %Nat*, %Nat** %n0
  %"$ackermann_call_811" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_808"(i8* %"$ackermann_envptr_809", %Nat* %"$n0_810")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_811", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_36"
  %"$ackermann_37" = alloca %Nat*
  %"$$ackermann_36_812" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_36"
  %"$$ackermann_36_fptr_813" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_36_812", 0
  %"$$ackermann_36_envptr_814" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_36_812", 1
  %"$n0_815" = load %Nat*, %Nat** %n0
  %"$$ackermann_36_call_816" = call %Nat* %"$$ackermann_36_fptr_813"(i8* %"$$ackermann_36_envptr_814", %Nat* %"$n0_815")
  store %Nat* %"$$ackermann_36_call_816", %Nat** %"$ackermann_37"
  %"$$ackermann_37_817" = load %Nat*, %Nat** %"$ackermann_37"
  store %Nat* %"$$ackermann_37_817", %Nat** %ack00
  %ack02 = alloca %Nat*
  %"$ackermann_38" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_818" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_819" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_818", 0
  %"$ackermann_envptr_820" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_818", 1
  %"$n0_821" = load %Nat*, %Nat** %n0
  %"$ackermann_call_822" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_819"(i8* %"$ackermann_envptr_820", %Nat* %"$n0_821")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_822", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_38"
  %"$ackermann_39" = alloca %Nat*
  %"$$ackermann_38_823" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_38"
  %"$$ackermann_38_fptr_824" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_38_823", 0
  %"$$ackermann_38_envptr_825" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_38_823", 1
  %"$n2_826" = load %Nat*, %Nat** %n2
  %"$$ackermann_38_call_827" = call %Nat* %"$$ackermann_38_fptr_824"(i8* %"$$ackermann_38_envptr_825", %Nat* %"$n2_826")
  store %Nat* %"$$ackermann_38_call_827", %Nat** %"$ackermann_39"
  %"$$ackermann_39_828" = load %Nat*, %Nat** %"$ackermann_39"
  store %Nat* %"$$ackermann_39_828", %Nat** %ack02
  %ack03 = alloca %Nat*
  %"$ackermann_40" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_829" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_830" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_829", 0
  %"$ackermann_envptr_831" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_829", 1
  %"$n0_832" = load %Nat*, %Nat** %n0
  %"$ackermann_call_833" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_830"(i8* %"$ackermann_envptr_831", %Nat* %"$n0_832")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_833", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_40"
  %"$ackermann_41" = alloca %Nat*
  %"$$ackermann_40_834" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_40"
  %"$$ackermann_40_fptr_835" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_40_834", 0
  %"$$ackermann_40_envptr_836" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_40_834", 1
  %"$n3_837" = load %Nat*, %Nat** %n3
  %"$$ackermann_40_call_838" = call %Nat* %"$$ackermann_40_fptr_835"(i8* %"$$ackermann_40_envptr_836", %Nat* %"$n3_837")
  store %Nat* %"$$ackermann_40_call_838", %Nat** %"$ackermann_41"
  %"$$ackermann_41_839" = load %Nat*, %Nat** %"$ackermann_41"
  store %Nat* %"$$ackermann_41_839", %Nat** %ack03
  %ack04 = alloca %Nat*
  %"$ackermann_42" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_840" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_841" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_840", 0
  %"$ackermann_envptr_842" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_840", 1
  %"$n0_843" = load %Nat*, %Nat** %n0
  %"$ackermann_call_844" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_841"(i8* %"$ackermann_envptr_842", %Nat* %"$n0_843")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_844", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_42"
  %"$ackermann_43" = alloca %Nat*
  %"$$ackermann_42_845" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_42"
  %"$$ackermann_42_fptr_846" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_42_845", 0
  %"$$ackermann_42_envptr_847" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_42_845", 1
  %"$n4_848" = load %Nat*, %Nat** %n4
  %"$$ackermann_42_call_849" = call %Nat* %"$$ackermann_42_fptr_846"(i8* %"$$ackermann_42_envptr_847", %Nat* %"$n4_848")
  store %Nat* %"$$ackermann_42_call_849", %Nat** %"$ackermann_43"
  %"$$ackermann_43_850" = load %Nat*, %Nat** %"$ackermann_43"
  store %Nat* %"$$ackermann_43_850", %Nat** %ack04
  %ack10 = alloca %Nat*
  %"$ackermann_44" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_851" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_852" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_851", 0
  %"$ackermann_envptr_853" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_851", 1
  %"$n1_854" = load %Nat*, %Nat** %n1
  %"$ackermann_call_855" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_852"(i8* %"$ackermann_envptr_853", %Nat* %"$n1_854")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_855", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_44"
  %"$ackermann_45" = alloca %Nat*
  %"$$ackermann_44_856" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_44"
  %"$$ackermann_44_fptr_857" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_44_856", 0
  %"$$ackermann_44_envptr_858" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_44_856", 1
  %"$n0_859" = load %Nat*, %Nat** %n0
  %"$$ackermann_44_call_860" = call %Nat* %"$$ackermann_44_fptr_857"(i8* %"$$ackermann_44_envptr_858", %Nat* %"$n0_859")
  store %Nat* %"$$ackermann_44_call_860", %Nat** %"$ackermann_45"
  %"$$ackermann_45_861" = load %Nat*, %Nat** %"$ackermann_45"
  store %Nat* %"$$ackermann_45_861", %Nat** %ack10
  %ack11 = alloca %Nat*
  %"$ackermann_46" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_862" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_863" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_862", 0
  %"$ackermann_envptr_864" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_862", 1
  %"$n1_865" = load %Nat*, %Nat** %n1
  %"$ackermann_call_866" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_863"(i8* %"$ackermann_envptr_864", %Nat* %"$n1_865")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_866", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_46"
  %"$ackermann_47" = alloca %Nat*
  %"$$ackermann_46_867" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_46"
  %"$$ackermann_46_fptr_868" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_46_867", 0
  %"$$ackermann_46_envptr_869" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_46_867", 1
  %"$n1_870" = load %Nat*, %Nat** %n1
  %"$$ackermann_46_call_871" = call %Nat* %"$$ackermann_46_fptr_868"(i8* %"$$ackermann_46_envptr_869", %Nat* %"$n1_870")
  store %Nat* %"$$ackermann_46_call_871", %Nat** %"$ackermann_47"
  %"$$ackermann_47_872" = load %Nat*, %Nat** %"$ackermann_47"
  store %Nat* %"$$ackermann_47_872", %Nat** %ack11
  %ack12 = alloca %Nat*
  %"$ackermann_48" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_873" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_874" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_873", 0
  %"$ackermann_envptr_875" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_873", 1
  %"$n1_876" = load %Nat*, %Nat** %n1
  %"$ackermann_call_877" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_874"(i8* %"$ackermann_envptr_875", %Nat* %"$n1_876")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_877", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_48"
  %"$ackermann_49" = alloca %Nat*
  %"$$ackermann_48_878" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_48"
  %"$$ackermann_48_fptr_879" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_48_878", 0
  %"$$ackermann_48_envptr_880" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_48_878", 1
  %"$n2_881" = load %Nat*, %Nat** %n2
  %"$$ackermann_48_call_882" = call %Nat* %"$$ackermann_48_fptr_879"(i8* %"$$ackermann_48_envptr_880", %Nat* %"$n2_881")
  store %Nat* %"$$ackermann_48_call_882", %Nat** %"$ackermann_49"
  %"$$ackermann_49_883" = load %Nat*, %Nat** %"$ackermann_49"
  store %Nat* %"$$ackermann_49_883", %Nat** %ack12
  %ack13 = alloca %Nat*
  %"$ackermann_50" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_884" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_885" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_884", 0
  %"$ackermann_envptr_886" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_884", 1
  %"$n1_887" = load %Nat*, %Nat** %n1
  %"$ackermann_call_888" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_885"(i8* %"$ackermann_envptr_886", %Nat* %"$n1_887")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_888", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_50"
  %"$ackermann_51" = alloca %Nat*
  %"$$ackermann_50_889" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_50"
  %"$$ackermann_50_fptr_890" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_50_889", 0
  %"$$ackermann_50_envptr_891" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_50_889", 1
  %"$n3_892" = load %Nat*, %Nat** %n3
  %"$$ackermann_50_call_893" = call %Nat* %"$$ackermann_50_fptr_890"(i8* %"$$ackermann_50_envptr_891", %Nat* %"$n3_892")
  store %Nat* %"$$ackermann_50_call_893", %Nat** %"$ackermann_51"
  %"$$ackermann_51_894" = load %Nat*, %Nat** %"$ackermann_51"
  store %Nat* %"$$ackermann_51_894", %Nat** %ack13
  %ack14 = alloca %Nat*
  %"$ackermann_52" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_895" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_896" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_895", 0
  %"$ackermann_envptr_897" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_895", 1
  %"$n1_898" = load %Nat*, %Nat** %n1
  %"$ackermann_call_899" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_896"(i8* %"$ackermann_envptr_897", %Nat* %"$n1_898")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_899", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_52"
  %"$ackermann_53" = alloca %Nat*
  %"$$ackermann_52_900" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_52"
  %"$$ackermann_52_fptr_901" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_52_900", 0
  %"$$ackermann_52_envptr_902" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_52_900", 1
  %"$n4_903" = load %Nat*, %Nat** %n4
  %"$$ackermann_52_call_904" = call %Nat* %"$$ackermann_52_fptr_901"(i8* %"$$ackermann_52_envptr_902", %Nat* %"$n4_903")
  store %Nat* %"$$ackermann_52_call_904", %Nat** %"$ackermann_53"
  %"$$ackermann_53_905" = load %Nat*, %Nat** %"$ackermann_53"
  store %Nat* %"$$ackermann_53_905", %Nat** %ack14
  %ack20 = alloca %Nat*
  %"$ackermann_54" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_906" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_907" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_906", 0
  %"$ackermann_envptr_908" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_906", 1
  %"$n2_909" = load %Nat*, %Nat** %n2
  %"$ackermann_call_910" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_907"(i8* %"$ackermann_envptr_908", %Nat* %"$n2_909")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_910", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_54"
  %"$ackermann_55" = alloca %Nat*
  %"$$ackermann_54_911" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_54"
  %"$$ackermann_54_fptr_912" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_54_911", 0
  %"$$ackermann_54_envptr_913" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_54_911", 1
  %"$n0_914" = load %Nat*, %Nat** %n0
  %"$$ackermann_54_call_915" = call %Nat* %"$$ackermann_54_fptr_912"(i8* %"$$ackermann_54_envptr_913", %Nat* %"$n0_914")
  store %Nat* %"$$ackermann_54_call_915", %Nat** %"$ackermann_55"
  %"$$ackermann_55_916" = load %Nat*, %Nat** %"$ackermann_55"
  store %Nat* %"$$ackermann_55_916", %Nat** %ack20
  %ack21 = alloca %Nat*
  %"$ackermann_56" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_917" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_918" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_917", 0
  %"$ackermann_envptr_919" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_917", 1
  %"$n2_920" = load %Nat*, %Nat** %n2
  %"$ackermann_call_921" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_918"(i8* %"$ackermann_envptr_919", %Nat* %"$n2_920")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_921", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_56"
  %"$ackermann_57" = alloca %Nat*
  %"$$ackermann_56_922" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_56"
  %"$$ackermann_56_fptr_923" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_56_922", 0
  %"$$ackermann_56_envptr_924" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_56_922", 1
  %"$n1_925" = load %Nat*, %Nat** %n1
  %"$$ackermann_56_call_926" = call %Nat* %"$$ackermann_56_fptr_923"(i8* %"$$ackermann_56_envptr_924", %Nat* %"$n1_925")
  store %Nat* %"$$ackermann_56_call_926", %Nat** %"$ackermann_57"
  %"$$ackermann_57_927" = load %Nat*, %Nat** %"$ackermann_57"
  store %Nat* %"$$ackermann_57_927", %Nat** %ack21
  %ack22 = alloca %Nat*
  %"$ackermann_58" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_928" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_929" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_928", 0
  %"$ackermann_envptr_930" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_928", 1
  %"$n2_931" = load %Nat*, %Nat** %n2
  %"$ackermann_call_932" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_929"(i8* %"$ackermann_envptr_930", %Nat* %"$n2_931")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_932", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_58"
  %"$ackermann_59" = alloca %Nat*
  %"$$ackermann_58_933" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_58"
  %"$$ackermann_58_fptr_934" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_58_933", 0
  %"$$ackermann_58_envptr_935" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_58_933", 1
  %"$n2_936" = load %Nat*, %Nat** %n2
  %"$$ackermann_58_call_937" = call %Nat* %"$$ackermann_58_fptr_934"(i8* %"$$ackermann_58_envptr_935", %Nat* %"$n2_936")
  store %Nat* %"$$ackermann_58_call_937", %Nat** %"$ackermann_59"
  %"$$ackermann_59_938" = load %Nat*, %Nat** %"$ackermann_59"
  store %Nat* %"$$ackermann_59_938", %Nat** %ack22
  %ack23 = alloca %Nat*
  %"$ackermann_60" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_939" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_940" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_939", 0
  %"$ackermann_envptr_941" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_939", 1
  %"$n2_942" = load %Nat*, %Nat** %n2
  %"$ackermann_call_943" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_940"(i8* %"$ackermann_envptr_941", %Nat* %"$n2_942")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_943", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_60"
  %"$ackermann_61" = alloca %Nat*
  %"$$ackermann_60_944" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_60"
  %"$$ackermann_60_fptr_945" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_60_944", 0
  %"$$ackermann_60_envptr_946" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_60_944", 1
  %"$n3_947" = load %Nat*, %Nat** %n3
  %"$$ackermann_60_call_948" = call %Nat* %"$$ackermann_60_fptr_945"(i8* %"$$ackermann_60_envptr_946", %Nat* %"$n3_947")
  store %Nat* %"$$ackermann_60_call_948", %Nat** %"$ackermann_61"
  %"$$ackermann_61_949" = load %Nat*, %Nat** %"$ackermann_61"
  store %Nat* %"$$ackermann_61_949", %Nat** %ack23
  %ack30 = alloca %Nat*
  %"$ackermann_62" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_950" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_951" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_950", 0
  %"$ackermann_envptr_952" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_950", 1
  %"$n3_953" = load %Nat*, %Nat** %n3
  %"$ackermann_call_954" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_951"(i8* %"$ackermann_envptr_952", %Nat* %"$n3_953")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_954", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_62"
  %"$ackermann_63" = alloca %Nat*
  %"$$ackermann_62_955" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_62"
  %"$$ackermann_62_fptr_956" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_62_955", 0
  %"$$ackermann_62_envptr_957" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_62_955", 1
  %"$n0_958" = load %Nat*, %Nat** %n0
  %"$$ackermann_62_call_959" = call %Nat* %"$$ackermann_62_fptr_956"(i8* %"$$ackermann_62_envptr_957", %Nat* %"$n0_958")
  store %Nat* %"$$ackermann_62_call_959", %Nat** %"$ackermann_63"
  %"$$ackermann_63_960" = load %Nat*, %Nat** %"$ackermann_63"
  store %Nat* %"$$ackermann_63_960", %Nat** %ack30
  %ack31 = alloca %Nat*
  %"$ackermann_64" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_961" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_962" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_961", 0
  %"$ackermann_envptr_963" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_961", 1
  %"$n3_964" = load %Nat*, %Nat** %n3
  %"$ackermann_call_965" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_962"(i8* %"$ackermann_envptr_963", %Nat* %"$n3_964")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_965", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_64"
  %"$ackermann_65" = alloca %Nat*
  %"$$ackermann_64_966" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_64"
  %"$$ackermann_64_fptr_967" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_64_966", 0
  %"$$ackermann_64_envptr_968" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_64_966", 1
  %"$n1_969" = load %Nat*, %Nat** %n1
  %"$$ackermann_64_call_970" = call %Nat* %"$$ackermann_64_fptr_967"(i8* %"$$ackermann_64_envptr_968", %Nat* %"$n1_969")
  store %Nat* %"$$ackermann_64_call_970", %Nat** %"$ackermann_65"
  %"$$ackermann_65_971" = load %Nat*, %Nat** %"$ackermann_65"
  store %Nat* %"$$ackermann_65_971", %Nat** %ack31
  %ack32 = alloca %Nat*
  %"$ackermann_66" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_972" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_973" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_972", 0
  %"$ackermann_envptr_974" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_972", 1
  %"$n3_975" = load %Nat*, %Nat** %n3
  %"$ackermann_call_976" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_973"(i8* %"$ackermann_envptr_974", %Nat* %"$n3_975")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_976", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_66"
  %"$ackermann_67" = alloca %Nat*
  %"$$ackermann_66_977" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_66"
  %"$$ackermann_66_fptr_978" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_66_977", 0
  %"$$ackermann_66_envptr_979" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_66_977", 1
  %"$n2_980" = load %Nat*, %Nat** %n2
  %"$$ackermann_66_call_981" = call %Nat* %"$$ackermann_66_fptr_978"(i8* %"$$ackermann_66_envptr_979", %Nat* %"$n2_980")
  store %Nat* %"$$ackermann_66_call_981", %Nat** %"$ackermann_67"
  %"$$ackermann_67_982" = load %Nat*, %Nat** %"$ackermann_67"
  store %Nat* %"$$ackermann_67_982", %Nat** %ack32
  %ack33 = alloca %Nat*
  %"$ackermann_68" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_983" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_984" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_983", 0
  %"$ackermann_envptr_985" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_983", 1
  %"$n3_986" = load %Nat*, %Nat** %n3
  %"$ackermann_call_987" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_984"(i8* %"$ackermann_envptr_985", %Nat* %"$n3_986")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_987", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_68"
  %"$ackermann_69" = alloca %Nat*
  %"$$ackermann_68_988" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_68"
  %"$$ackermann_68_fptr_989" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_68_988", 0
  %"$$ackermann_68_envptr_990" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_68_988", 1
  %"$n3_991" = load %Nat*, %Nat** %n3
  %"$$ackermann_68_call_992" = call %Nat* %"$$ackermann_68_fptr_989"(i8* %"$$ackermann_68_envptr_990", %Nat* %"$n3_991")
  store %Nat* %"$$ackermann_68_call_992", %Nat** %"$ackermann_69"
  %"$$ackermann_69_993" = load %Nat*, %Nat** %"$ackermann_69"
  store %Nat* %"$$ackermann_69_993", %Nat** %ack33
  %ack34 = alloca %Nat*
  %"$ackermann_70" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_994" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_995" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_994", 0
  %"$ackermann_envptr_996" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_994", 1
  %"$n3_997" = load %Nat*, %Nat** %n3
  %"$ackermann_call_998" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_995"(i8* %"$ackermann_envptr_996", %Nat* %"$n3_997")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_998", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_70"
  %"$ackermann_71" = alloca %Nat*
  %"$$ackermann_70_999" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_70"
  %"$$ackermann_70_fptr_1000" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_70_999", 0
  %"$$ackermann_70_envptr_1001" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_70_999", 1
  %"$n4_1002" = load %Nat*, %Nat** %n4
  %"$$ackermann_70_call_1003" = call %Nat* %"$$ackermann_70_fptr_1000"(i8* %"$$ackermann_70_envptr_1001", %Nat* %"$n4_1002")
  store %Nat* %"$$ackermann_70_call_1003", %Nat** %"$ackermann_71"
  %"$$ackermann_71_1004" = load %Nat*, %Nat** %"$ackermann_71"
  store %Nat* %"$$ackermann_71_1004", %Nat** %ack34
  %ack40 = alloca %Nat*
  %"$ackermann_72" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_1005" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1006" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_1005", 0
  %"$ackermann_envptr_1007" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_1005", 1
  %"$n4_1008" = load %Nat*, %Nat** %n4
  %"$ackermann_call_1009" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_1006"(i8* %"$ackermann_envptr_1007", %Nat* %"$n4_1008")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_1009", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_72"
  %"$ackermann_73" = alloca %Nat*
  %"$$ackermann_72_1010" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_72"
  %"$$ackermann_72_fptr_1011" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_72_1010", 0
  %"$$ackermann_72_envptr_1012" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_72_1010", 1
  %"$n0_1013" = load %Nat*, %Nat** %n0
  %"$$ackermann_72_call_1014" = call %Nat* %"$$ackermann_72_fptr_1011"(i8* %"$$ackermann_72_envptr_1012", %Nat* %"$n0_1013")
  store %Nat* %"$$ackermann_72_call_1014", %Nat** %"$ackermann_73"
  %"$$ackermann_73_1015" = load %Nat*, %Nat** %"$ackermann_73"
  store %Nat* %"$$ackermann_73_1015", %Nat** %ack40
  %int01 = alloca %Uint32
  %"$nat_to_int_74" = alloca %Uint32
  %"$nat_to_int_1016" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1017" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1016", 0
  %"$nat_to_int_envptr_1018" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1016", 1
  %"$ack00_1019" = load %Nat*, %Nat** %ack00
  %"$nat_to_int_call_1020" = call %Uint32 %"$nat_to_int_fptr_1017"(i8* %"$nat_to_int_envptr_1018", %Nat* %"$ack00_1019")
  store %Uint32 %"$nat_to_int_call_1020", %Uint32* %"$nat_to_int_74"
  %"$$nat_to_int_74_1021" = load %Uint32, %Uint32* %"$nat_to_int_74"
  store %Uint32 %"$$nat_to_int_74_1021", %Uint32* %int01
  %int02 = alloca %Uint32
  %"$nat_to_int_75" = alloca %Uint32
  %"$nat_to_int_1022" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1023" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1022", 0
  %"$nat_to_int_envptr_1024" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1022", 1
  %"$ack02_1025" = load %Nat*, %Nat** %ack02
  %"$nat_to_int_call_1026" = call %Uint32 %"$nat_to_int_fptr_1023"(i8* %"$nat_to_int_envptr_1024", %Nat* %"$ack02_1025")
  store %Uint32 %"$nat_to_int_call_1026", %Uint32* %"$nat_to_int_75"
  %"$$nat_to_int_75_1027" = load %Uint32, %Uint32* %"$nat_to_int_75"
  store %Uint32 %"$$nat_to_int_75_1027", %Uint32* %int02
  %int03 = alloca %Uint32
  %"$nat_to_int_76" = alloca %Uint32
  %"$nat_to_int_1028" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1029" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1028", 0
  %"$nat_to_int_envptr_1030" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1028", 1
  %"$ack03_1031" = load %Nat*, %Nat** %ack03
  %"$nat_to_int_call_1032" = call %Uint32 %"$nat_to_int_fptr_1029"(i8* %"$nat_to_int_envptr_1030", %Nat* %"$ack03_1031")
  store %Uint32 %"$nat_to_int_call_1032", %Uint32* %"$nat_to_int_76"
  %"$$nat_to_int_76_1033" = load %Uint32, %Uint32* %"$nat_to_int_76"
  store %Uint32 %"$$nat_to_int_76_1033", %Uint32* %int03
  %int04 = alloca %Uint32
  %"$nat_to_int_77" = alloca %Uint32
  %"$nat_to_int_1034" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1035" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1034", 0
  %"$nat_to_int_envptr_1036" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1034", 1
  %"$ack04_1037" = load %Nat*, %Nat** %ack04
  %"$nat_to_int_call_1038" = call %Uint32 %"$nat_to_int_fptr_1035"(i8* %"$nat_to_int_envptr_1036", %Nat* %"$ack04_1037")
  store %Uint32 %"$nat_to_int_call_1038", %Uint32* %"$nat_to_int_77"
  %"$$nat_to_int_77_1039" = load %Uint32, %Uint32* %"$nat_to_int_77"
  store %Uint32 %"$$nat_to_int_77_1039", %Uint32* %int04
  %int10 = alloca %Uint32
  %"$nat_to_int_78" = alloca %Uint32
  %"$nat_to_int_1040" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1041" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1040", 0
  %"$nat_to_int_envptr_1042" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1040", 1
  %"$ack10_1043" = load %Nat*, %Nat** %ack10
  %"$nat_to_int_call_1044" = call %Uint32 %"$nat_to_int_fptr_1041"(i8* %"$nat_to_int_envptr_1042", %Nat* %"$ack10_1043")
  store %Uint32 %"$nat_to_int_call_1044", %Uint32* %"$nat_to_int_78"
  %"$$nat_to_int_78_1045" = load %Uint32, %Uint32* %"$nat_to_int_78"
  store %Uint32 %"$$nat_to_int_78_1045", %Uint32* %int10
  %int11 = alloca %Uint32
  %"$nat_to_int_79" = alloca %Uint32
  %"$nat_to_int_1046" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1047" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1046", 0
  %"$nat_to_int_envptr_1048" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1046", 1
  %"$ack11_1049" = load %Nat*, %Nat** %ack11
  %"$nat_to_int_call_1050" = call %Uint32 %"$nat_to_int_fptr_1047"(i8* %"$nat_to_int_envptr_1048", %Nat* %"$ack11_1049")
  store %Uint32 %"$nat_to_int_call_1050", %Uint32* %"$nat_to_int_79"
  %"$$nat_to_int_79_1051" = load %Uint32, %Uint32* %"$nat_to_int_79"
  store %Uint32 %"$$nat_to_int_79_1051", %Uint32* %int11
  %int12 = alloca %Uint32
  %"$nat_to_int_80" = alloca %Uint32
  %"$nat_to_int_1052" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1053" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1052", 0
  %"$nat_to_int_envptr_1054" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1052", 1
  %"$ack12_1055" = load %Nat*, %Nat** %ack12
  %"$nat_to_int_call_1056" = call %Uint32 %"$nat_to_int_fptr_1053"(i8* %"$nat_to_int_envptr_1054", %Nat* %"$ack12_1055")
  store %Uint32 %"$nat_to_int_call_1056", %Uint32* %"$nat_to_int_80"
  %"$$nat_to_int_80_1057" = load %Uint32, %Uint32* %"$nat_to_int_80"
  store %Uint32 %"$$nat_to_int_80_1057", %Uint32* %int12
  %int13 = alloca %Uint32
  %"$nat_to_int_81" = alloca %Uint32
  %"$nat_to_int_1058" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1059" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1058", 0
  %"$nat_to_int_envptr_1060" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1058", 1
  %"$ack13_1061" = load %Nat*, %Nat** %ack13
  %"$nat_to_int_call_1062" = call %Uint32 %"$nat_to_int_fptr_1059"(i8* %"$nat_to_int_envptr_1060", %Nat* %"$ack13_1061")
  store %Uint32 %"$nat_to_int_call_1062", %Uint32* %"$nat_to_int_81"
  %"$$nat_to_int_81_1063" = load %Uint32, %Uint32* %"$nat_to_int_81"
  store %Uint32 %"$$nat_to_int_81_1063", %Uint32* %int13
  %int14 = alloca %Uint32
  %"$nat_to_int_82" = alloca %Uint32
  %"$nat_to_int_1064" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1065" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1064", 0
  %"$nat_to_int_envptr_1066" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1064", 1
  %"$ack14_1067" = load %Nat*, %Nat** %ack14
  %"$nat_to_int_call_1068" = call %Uint32 %"$nat_to_int_fptr_1065"(i8* %"$nat_to_int_envptr_1066", %Nat* %"$ack14_1067")
  store %Uint32 %"$nat_to_int_call_1068", %Uint32* %"$nat_to_int_82"
  %"$$nat_to_int_82_1069" = load %Uint32, %Uint32* %"$nat_to_int_82"
  store %Uint32 %"$$nat_to_int_82_1069", %Uint32* %int14
  %int20 = alloca %Uint32
  %"$nat_to_int_83" = alloca %Uint32
  %"$nat_to_int_1070" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1071" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1070", 0
  %"$nat_to_int_envptr_1072" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1070", 1
  %"$ack20_1073" = load %Nat*, %Nat** %ack20
  %"$nat_to_int_call_1074" = call %Uint32 %"$nat_to_int_fptr_1071"(i8* %"$nat_to_int_envptr_1072", %Nat* %"$ack20_1073")
  store %Uint32 %"$nat_to_int_call_1074", %Uint32* %"$nat_to_int_83"
  %"$$nat_to_int_83_1075" = load %Uint32, %Uint32* %"$nat_to_int_83"
  store %Uint32 %"$$nat_to_int_83_1075", %Uint32* %int20
  %int21 = alloca %Uint32
  %"$nat_to_int_84" = alloca %Uint32
  %"$nat_to_int_1076" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1077" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1076", 0
  %"$nat_to_int_envptr_1078" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1076", 1
  %"$ack21_1079" = load %Nat*, %Nat** %ack21
  %"$nat_to_int_call_1080" = call %Uint32 %"$nat_to_int_fptr_1077"(i8* %"$nat_to_int_envptr_1078", %Nat* %"$ack21_1079")
  store %Uint32 %"$nat_to_int_call_1080", %Uint32* %"$nat_to_int_84"
  %"$$nat_to_int_84_1081" = load %Uint32, %Uint32* %"$nat_to_int_84"
  store %Uint32 %"$$nat_to_int_84_1081", %Uint32* %int21
  %int22 = alloca %Uint32
  %"$nat_to_int_85" = alloca %Uint32
  %"$nat_to_int_1082" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1083" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1082", 0
  %"$nat_to_int_envptr_1084" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1082", 1
  %"$ack22_1085" = load %Nat*, %Nat** %ack22
  %"$nat_to_int_call_1086" = call %Uint32 %"$nat_to_int_fptr_1083"(i8* %"$nat_to_int_envptr_1084", %Nat* %"$ack22_1085")
  store %Uint32 %"$nat_to_int_call_1086", %Uint32* %"$nat_to_int_85"
  %"$$nat_to_int_85_1087" = load %Uint32, %Uint32* %"$nat_to_int_85"
  store %Uint32 %"$$nat_to_int_85_1087", %Uint32* %int22
  %int23 = alloca %Uint32
  %"$nat_to_int_86" = alloca %Uint32
  %"$nat_to_int_1088" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1089" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1088", 0
  %"$nat_to_int_envptr_1090" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1088", 1
  %"$ack23_1091" = load %Nat*, %Nat** %ack23
  %"$nat_to_int_call_1092" = call %Uint32 %"$nat_to_int_fptr_1089"(i8* %"$nat_to_int_envptr_1090", %Nat* %"$ack23_1091")
  store %Uint32 %"$nat_to_int_call_1092", %Uint32* %"$nat_to_int_86"
  %"$$nat_to_int_86_1093" = load %Uint32, %Uint32* %"$nat_to_int_86"
  store %Uint32 %"$$nat_to_int_86_1093", %Uint32* %int23
  %int24 = alloca %Uint32
  %"$nat_to_int_87" = alloca %Uint32
  %"$nat_to_int_1094" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1095" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1094", 0
  %"$nat_to_int_envptr_1096" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1094", 1
  %"$ack23_1097" = load %Nat*, %Nat** %ack23
  %"$nat_to_int_call_1098" = call %Uint32 %"$nat_to_int_fptr_1095"(i8* %"$nat_to_int_envptr_1096", %Nat* %"$ack23_1097")
  store %Uint32 %"$nat_to_int_call_1098", %Uint32* %"$nat_to_int_87"
  %"$$nat_to_int_87_1099" = load %Uint32, %Uint32* %"$nat_to_int_87"
  store %Uint32 %"$$nat_to_int_87_1099", %Uint32* %int24
  %int30 = alloca %Uint32
  %"$nat_to_int_88" = alloca %Uint32
  %"$nat_to_int_1100" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1101" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1100", 0
  %"$nat_to_int_envptr_1102" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1100", 1
  %"$ack30_1103" = load %Nat*, %Nat** %ack30
  %"$nat_to_int_call_1104" = call %Uint32 %"$nat_to_int_fptr_1101"(i8* %"$nat_to_int_envptr_1102", %Nat* %"$ack30_1103")
  store %Uint32 %"$nat_to_int_call_1104", %Uint32* %"$nat_to_int_88"
  %"$$nat_to_int_88_1105" = load %Uint32, %Uint32* %"$nat_to_int_88"
  store %Uint32 %"$$nat_to_int_88_1105", %Uint32* %int30
  %int31 = alloca %Uint32
  %"$nat_to_int_89" = alloca %Uint32
  %"$nat_to_int_1106" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1107" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1106", 0
  %"$nat_to_int_envptr_1108" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1106", 1
  %"$ack31_1109" = load %Nat*, %Nat** %ack31
  %"$nat_to_int_call_1110" = call %Uint32 %"$nat_to_int_fptr_1107"(i8* %"$nat_to_int_envptr_1108", %Nat* %"$ack31_1109")
  store %Uint32 %"$nat_to_int_call_1110", %Uint32* %"$nat_to_int_89"
  %"$$nat_to_int_89_1111" = load %Uint32, %Uint32* %"$nat_to_int_89"
  store %Uint32 %"$$nat_to_int_89_1111", %Uint32* %int31
  %int32 = alloca %Uint32
  %"$nat_to_int_90" = alloca %Uint32
  %"$nat_to_int_1112" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1113" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1112", 0
  %"$nat_to_int_envptr_1114" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1112", 1
  %"$ack32_1115" = load %Nat*, %Nat** %ack32
  %"$nat_to_int_call_1116" = call %Uint32 %"$nat_to_int_fptr_1113"(i8* %"$nat_to_int_envptr_1114", %Nat* %"$ack32_1115")
  store %Uint32 %"$nat_to_int_call_1116", %Uint32* %"$nat_to_int_90"
  %"$$nat_to_int_90_1117" = load %Uint32, %Uint32* %"$nat_to_int_90"
  store %Uint32 %"$$nat_to_int_90_1117", %Uint32* %int32
  %int33 = alloca %Uint32
  %"$nat_to_int_91" = alloca %Uint32
  %"$nat_to_int_1118" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1119" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1118", 0
  %"$nat_to_int_envptr_1120" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1118", 1
  %"$ack33_1121" = load %Nat*, %Nat** %ack33
  %"$nat_to_int_call_1122" = call %Uint32 %"$nat_to_int_fptr_1119"(i8* %"$nat_to_int_envptr_1120", %Nat* %"$ack33_1121")
  store %Uint32 %"$nat_to_int_call_1122", %Uint32* %"$nat_to_int_91"
  %"$$nat_to_int_91_1123" = load %Uint32, %Uint32* %"$nat_to_int_91"
  store %Uint32 %"$$nat_to_int_91_1123", %Uint32* %int33
  %int34 = alloca %Uint32
  %"$nat_to_int_92" = alloca %Uint32
  %"$nat_to_int_1124" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1125" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1124", 0
  %"$nat_to_int_envptr_1126" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1124", 1
  %"$ack34_1127" = load %Nat*, %Nat** %ack34
  %"$nat_to_int_call_1128" = call %Uint32 %"$nat_to_int_fptr_1125"(i8* %"$nat_to_int_envptr_1126", %Nat* %"$ack34_1127")
  store %Uint32 %"$nat_to_int_call_1128", %Uint32* %"$nat_to_int_92"
  %"$$nat_to_int_92_1129" = load %Uint32, %Uint32* %"$nat_to_int_92"
  store %Uint32 %"$$nat_to_int_92_1129", %Uint32* %int34
  %int40 = alloca %Uint32
  %"$nat_to_int_93" = alloca %Uint32
  %"$nat_to_int_1130" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1131" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1130", 0
  %"$nat_to_int_envptr_1132" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_1130", 1
  %"$ack40_1133" = load %Nat*, %Nat** %ack40
  %"$nat_to_int_call_1134" = call %Uint32 %"$nat_to_int_fptr_1131"(i8* %"$nat_to_int_envptr_1132", %Nat* %"$ack40_1133")
  store %Uint32 %"$nat_to_int_call_1134", %Uint32* %"$nat_to_int_93"
  %"$$nat_to_int_93_1135" = load %Uint32, %Uint32* %"$nat_to_int_93"
  store %Uint32 %"$$nat_to_int_93_1135", %Uint32* %int40
  %sum = alloca %Uint32
  %"$int01_1136" = load %Uint32, %Uint32* %int01
  %"$int02_1137" = load %Uint32, %Uint32* %int02
  %"$add_call_1138" = call %Uint32 @_add_Uint32(%Uint32 %"$int01_1136", %Uint32 %"$int02_1137")
  store %Uint32 %"$add_call_1138", %Uint32* %sum
  %"$sum_0" = alloca %Uint32
  %"$sum_1139" = load %Uint32, %Uint32* %sum
  %"$int03_1140" = load %Uint32, %Uint32* %int03
  %"$add_call_1141" = call %Uint32 @_add_Uint32(%Uint32 %"$sum_1139", %Uint32 %"$int03_1140")
  store %Uint32 %"$add_call_1141", %Uint32* %"$sum_0"
  %"$sum_1" = alloca %Uint32
  %"$$sum_0_1142" = load %Uint32, %Uint32* %"$sum_0"
  %"$int04_1143" = load %Uint32, %Uint32* %int04
  %"$add_call_1144" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_0_1142", %Uint32 %"$int04_1143")
  store %Uint32 %"$add_call_1144", %Uint32* %"$sum_1"
  %"$sum_2" = alloca %Uint32
  %"$$sum_1_1145" = load %Uint32, %Uint32* %"$sum_1"
  %"$int10_1146" = load %Uint32, %Uint32* %int10
  %"$add_call_1147" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_1_1145", %Uint32 %"$int10_1146")
  store %Uint32 %"$add_call_1147", %Uint32* %"$sum_2"
  %"$sum_3" = alloca %Uint32
  %"$$sum_2_1148" = load %Uint32, %Uint32* %"$sum_2"
  %"$int11_1149" = load %Uint32, %Uint32* %int11
  %"$add_call_1150" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_2_1148", %Uint32 %"$int11_1149")
  store %Uint32 %"$add_call_1150", %Uint32* %"$sum_3"
  %"$sum_4" = alloca %Uint32
  %"$$sum_3_1151" = load %Uint32, %Uint32* %"$sum_3"
  %"$int12_1152" = load %Uint32, %Uint32* %int12
  %"$add_call_1153" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_3_1151", %Uint32 %"$int12_1152")
  store %Uint32 %"$add_call_1153", %Uint32* %"$sum_4"
  %"$sum_5" = alloca %Uint32
  %"$$sum_4_1154" = load %Uint32, %Uint32* %"$sum_4"
  %"$int13_1155" = load %Uint32, %Uint32* %int13
  %"$add_call_1156" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_4_1154", %Uint32 %"$int13_1155")
  store %Uint32 %"$add_call_1156", %Uint32* %"$sum_5"
  %"$sum_6" = alloca %Uint32
  %"$$sum_5_1157" = load %Uint32, %Uint32* %"$sum_5"
  %"$int14_1158" = load %Uint32, %Uint32* %int14
  %"$add_call_1159" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_5_1157", %Uint32 %"$int14_1158")
  store %Uint32 %"$add_call_1159", %Uint32* %"$sum_6"
  %"$sum_7" = alloca %Uint32
  %"$$sum_6_1160" = load %Uint32, %Uint32* %"$sum_6"
  %"$int20_1161" = load %Uint32, %Uint32* %int20
  %"$add_call_1162" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_6_1160", %Uint32 %"$int20_1161")
  store %Uint32 %"$add_call_1162", %Uint32* %"$sum_7"
  %"$sum_8" = alloca %Uint32
  %"$$sum_7_1163" = load %Uint32, %Uint32* %"$sum_7"
  %"$int21_1164" = load %Uint32, %Uint32* %int21
  %"$add_call_1165" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_7_1163", %Uint32 %"$int21_1164")
  store %Uint32 %"$add_call_1165", %Uint32* %"$sum_8"
  %"$sum_9" = alloca %Uint32
  %"$$sum_8_1166" = load %Uint32, %Uint32* %"$sum_8"
  %"$int22_1167" = load %Uint32, %Uint32* %int22
  %"$add_call_1168" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_8_1166", %Uint32 %"$int22_1167")
  store %Uint32 %"$add_call_1168", %Uint32* %"$sum_9"
  %"$sum_10" = alloca %Uint32
  %"$$sum_9_1169" = load %Uint32, %Uint32* %"$sum_9"
  %"$int23_1170" = load %Uint32, %Uint32* %int23
  %"$add_call_1171" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_9_1169", %Uint32 %"$int23_1170")
  store %Uint32 %"$add_call_1171", %Uint32* %"$sum_10"
  %"$sum_11" = alloca %Uint32
  %"$$sum_10_1172" = load %Uint32, %Uint32* %"$sum_10"
  %"$int24_1173" = load %Uint32, %Uint32* %int24
  %"$add_call_1174" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_10_1172", %Uint32 %"$int24_1173")
  store %Uint32 %"$add_call_1174", %Uint32* %"$sum_11"
  %"$sum_12" = alloca %Uint32
  %"$$sum_11_1175" = load %Uint32, %Uint32* %"$sum_11"
  %"$int30_1176" = load %Uint32, %Uint32* %int30
  %"$add_call_1177" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_11_1175", %Uint32 %"$int30_1176")
  store %Uint32 %"$add_call_1177", %Uint32* %"$sum_12"
  %"$sum_13" = alloca %Uint32
  %"$$sum_12_1178" = load %Uint32, %Uint32* %"$sum_12"
  %"$int31_1179" = load %Uint32, %Uint32* %int31
  %"$add_call_1180" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_12_1178", %Uint32 %"$int31_1179")
  store %Uint32 %"$add_call_1180", %Uint32* %"$sum_13"
  %"$sum_14" = alloca %Uint32
  %"$$sum_13_1181" = load %Uint32, %Uint32* %"$sum_13"
  %"$int32_1182" = load %Uint32, %Uint32* %int32
  %"$add_call_1183" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_13_1181", %Uint32 %"$int32_1182")
  store %Uint32 %"$add_call_1183", %Uint32* %"$sum_14"
  %"$sum_15" = alloca %Uint32
  %"$$sum_14_1184" = load %Uint32, %Uint32* %"$sum_14"
  %"$int33_1185" = load %Uint32, %Uint32* %int33
  %"$add_call_1186" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_14_1184", %Uint32 %"$int33_1185")
  store %Uint32 %"$add_call_1186", %Uint32* %"$sum_15"
  %"$sum_16" = alloca %Uint32
  %"$$sum_15_1187" = load %Uint32, %Uint32* %"$sum_15"
  %"$int34_1188" = load %Uint32, %Uint32* %int34
  %"$add_call_1189" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_15_1187", %Uint32 %"$int34_1188")
  store %Uint32 %"$add_call_1189", %Uint32* %"$sum_16"
  %"$sum_17" = alloca %Uint32
  %"$$sum_16_1190" = load %Uint32, %Uint32* %"$sum_16"
  %"$int40_1191" = load %Uint32, %Uint32* %int40
  %"$add_call_1192" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_16_1190", %Uint32 %"$int40_1191")
  store %Uint32 %"$add_call_1192", %Uint32* %"$sum_17"
  %"$$sum_17_1193" = load %Uint32, %Uint32* %"$sum_17"
  store %Uint32 %"$$sum_17_1193", %Uint32* %"$expr_124"
  %"$$expr_124_1194" = load %Uint32, %Uint32* %"$expr_124"
  ret %Uint32 %"$$expr_124_1194"
}

declare %Nat* @_to_nat(i8*, %Uint32)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1195" = call %Uint32 @"$scilla_expr_722"(i8* null)
  %"$pval_1196" = alloca %Uint32
  %"$memvoidcast_1197" = bitcast %Uint32* %"$pval_1196" to i8*
  store %Uint32 %"$exprval_1195", %Uint32* %"$pval_1196"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_161", i8* %"$memvoidcast_1197")
  ret void
}
