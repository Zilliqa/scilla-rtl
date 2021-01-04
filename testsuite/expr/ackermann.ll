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
%"$TyDescrTy_ADTTyp_187" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_186"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_186" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_188"**, %"$TyDescrTy_ADTTyp_187"* }
%"$TyDescrTy_ADTTyp_Constr_188" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Uint32 = type { i32 }
%TName_Nat = type { i8, %CName_Zero*, %CName_Succ* }
%CName_Zero = type <{ i8 }>
%CName_Succ = type <{ i8, %TName_Nat* }>
%"$$fundef_155_env_203" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_153_env_204" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat* }
%"$$fundef_151_env_205" = type { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat* }
%"$$fundef_149_env_206" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, %TName_Nat* }
%"$$fundef_147_env_207" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_145_env_208" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, %TName_Nat*, { i8*, i8* }* }
%"$$fundef_143_env_209" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { i8*, i8* }* }
%"$$fundef_141_env_210" = type { { i8*, i8* }* }
%"$$fundef_139_env_211" = type { { i8*, i8* }* }
%"$$fundef_137_env_212" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_135_env_213" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_133_env_214" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat*, { i8*, i8* }* }
%"$$fundef_131_env_215" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { i8*, i8* }* }
%"$$fundef_129_env_216" = type { { i8*, i8* }* }
%"$$fundef_127_env_217" = type { { i8*, i8* }* }
%"$$fundef_125_env_218" = type {}
%"$$fundef_122_env_219" = type { %Uint32, %Uint32 }
%"$$fundef_120_env_220" = type { %Uint32 }
%"$$fundef_118_env_221" = type { { i8*, i8* }* }
%"$$fundef_116_env_222" = type { %TName_Nat*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_114_env_223" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_112_env_224" = type {}
%"$$fundef_110_env_225" = type {}
%"$$fundef_108_env_226" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_106_env_227" = type { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_104_env_228" = type {}
%"$$fundef_102_env_229" = type {}
%"$$fundef_100_env_230" = type { %Uint32, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_98_env_231" = type { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_96_env_232" = type {}
%"$$fundef_94_env_233" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
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
@"$TyDescr_Bnum_Prim_176" = global %"$TyDescrTy_PrimTyp_157" { i32 3, i32 0 }
@"$TyDescr_Bnum_177" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_157"* @"$TyDescr_Bnum_Prim_176" to i8*) }
@"$TyDescr_Message_Prim_178" = global %"$TyDescrTy_PrimTyp_157" { i32 4, i32 0 }
@"$TyDescr_Message_179" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_157"* @"$TyDescr_Message_Prim_178" to i8*) }
@"$TyDescr_Event_Prim_180" = global %"$TyDescrTy_PrimTyp_157" { i32 5, i32 0 }
@"$TyDescr_Event_181" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_157"* @"$TyDescr_Event_Prim_180" to i8*) }
@"$TyDescr_Exception_Prim_182" = global %"$TyDescrTy_PrimTyp_157" { i32 6, i32 0 }
@"$TyDescr_Exception_183" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_157"* @"$TyDescr_Exception_Prim_182" to i8*) }
@"$TyDescr_Bystr_Prim_184" = global %"$TyDescrTy_PrimTyp_157" { i32 7, i32 0 }
@"$TyDescr_Bystr_185" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_157"* @"$TyDescr_Bystr_Prim_184" to i8*) }
@"$TyDescr_ADT_Nat_189" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_186"* @"$TyDescr_Nat_ADTTyp_Specl_200" to i8*) }
@"$TyDescr_Nat_ADTTyp_191" = unnamed_addr constant %"$TyDescrTy_ADTTyp_187" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nat_202", i32 0, i32 0), i32 3 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_186"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_186"*], [1 x %"$TyDescrTy_ADTTyp_Specl_186"*]* @"$TyDescr_Nat_ADTTyp_m_specls_201", i32 0, i32 0) }
@"$TyDescr_Nat_Zero_Constr_m_args_192" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Zero_193" = unnamed_addr constant [4 x i8] c"Zero"
@"$TyDescr_Nat_Zero_ADTTyp_Constr_194" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_188" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Zero_193", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Zero_Constr_m_args_192", i32 0, i32 0) }
@"$TyDescr_Nat_Succ_Constr_m_args_195" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_189"]
@"$TyDescr_ADT_Succ_196" = unnamed_addr constant [4 x i8] c"Succ"
@"$TyDescr_Nat_Succ_ADTTyp_Constr_197" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_188" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Succ_196", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Succ_Constr_m_args_195", i32 0, i32 0) }
@"$TyDescr_Nat_ADTTyp_Specl_m_constrs_198" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_188"*] [%"$TyDescrTy_ADTTyp_Constr_188"* @"$TyDescr_Nat_Zero_ADTTyp_Constr_194", %"$TyDescrTy_ADTTyp_Constr_188"* @"$TyDescr_Nat_Succ_ADTTyp_Constr_197"]
@"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_199" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Nat_ADTTyp_Specl_200" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_186" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_199", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_188"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_188"*], [2 x %"$TyDescrTy_ADTTyp_Constr_188"*]* @"$TyDescr_Nat_ADTTyp_Specl_m_constrs_198", i32 0, i32 0), %"$TyDescrTy_ADTTyp_187"* @"$TyDescr_Nat_ADTTyp_191" }
@"$TyDescr_Nat_ADTTyp_m_specls_201" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_186"*] [%"$TyDescrTy_ADTTyp_Specl_186"* @"$TyDescr_Nat_ADTTyp_Specl_200"]
@"$TyDescr_ADT_Nat_202" = unnamed_addr constant [3 x i8] c"Nat"
@nat_fold = global { i8*, i8* }* null
@NatUtils.nat_to_int = global { %Uint32 (i8*, %TName_Nat*)*, i8* } zeroinitializer

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_155"(%"$$fundef_155_env_203"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_155_env_f_1018" = getelementptr inbounds %"$$fundef_155_env_203", %"$$fundef_155_env_203"* %0, i32 0, i32 0
  %"$f_envload_1019" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_155_env_f_1018"
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_1019", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_155_env_iter_nat_nat_1020" = getelementptr inbounds %"$$fundef_155_env_203", %"$$fundef_155_env_203"* %0, i32 0, i32 1
  %"$iter_nat_nat_envload_1021" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_155_env_iter_nat_nat_1020"
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_envload_1021", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  %"$$fundef_155_env_nat_succ_1022" = getelementptr inbounds %"$$fundef_155_env_203", %"$$fundef_155_env_203"* %0, i32 0, i32 2
  %"$nat_succ_envload_1023" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_155_env_nat_succ_1022"
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_envload_1023", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ
  %"$retval_156" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_1024" = load i64, i64* @_gasrem
  %"$gascmp_1025" = icmp ugt i64 1, %"$gasrem_1024"
  br i1 %"$gascmp_1025", label %"$out_of_gas_1026", label %"$have_gas_1027"

"$out_of_gas_1026":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1027"

"$have_gas_1027":                                 ; preds = %"$out_of_gas_1026", %entry
  %"$consume_1028" = sub i64 %"$gasrem_1024", 1
  store i64 %"$consume_1028", i64* @_gasrem
  %"$iter_nat_nat_33" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$iter_nat_nat_1029" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  %"$iter_nat_nat_fptr_1030" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1029", 0
  %"$iter_nat_nat_envptr_1031" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1029", 1
  %"$f_1032" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$iter_nat_nat_call_1033" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_fptr_1030"(i8* %"$iter_nat_nat_envptr_1031", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1032")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_call_1033", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_33"
  %"$iter_nat_nat_34" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$$iter_nat_nat_33_1034" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_33"
  %"$$iter_nat_nat_33_fptr_1035" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_33_1034", 0
  %"$$iter_nat_nat_33_envptr_1036" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_33_1034", 1
  %"$$iter_nat_nat_33_call_1037" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_33_fptr_1035"(i8* %"$$iter_nat_nat_33_envptr_1036", %TName_Nat* %1)
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_33_call_1037", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_34"
  %"$iter_nat_nat_35" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$iter_nat_nat_34_1038" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_34"
  %"$$iter_nat_nat_34_fptr_1039" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_34_1038", 0
  %"$$iter_nat_nat_34_envptr_1040" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_34_1038", 1
  %"$nat_succ_1041" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ
  %"$$iter_nat_nat_34_call_1042" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_34_fptr_1039"(i8* %"$$iter_nat_nat_34_envptr_1040", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1041")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_34_call_1042", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_35"
  %"$$iter_nat_nat_35_1043" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_35"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_35_1043", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_156"
  %"$$retval_156_1044" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_156"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_156_1044"
}

define internal %TName_Nat* @"$fundef_153"(%"$$fundef_153_env_204"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_153_env_ack_991" = getelementptr inbounds %"$$fundef_153_env_204", %"$$fundef_153_env_204"* %0, i32 0, i32 0
  %"$ack_envload_992" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_153_env_ack_991"
  %ack = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_envload_992", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack
  %"$$fundef_153_env_iter_nat_993" = getelementptr inbounds %"$$fundef_153_env_204", %"$$fundef_153_env_204"* %0, i32 0, i32 1
  %"$iter_nat_envload_994" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_153_env_iter_nat_993"
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_994", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat
  %"$$fundef_153_env_x0_995" = getelementptr inbounds %"$$fundef_153_env_204", %"$$fundef_153_env_204"* %0, i32 0, i32 2
  %"$x0_envload_996" = load %TName_Nat*, %TName_Nat** %"$$fundef_153_env_x0_995"
  %x0 = alloca %TName_Nat*
  store %TName_Nat* %"$x0_envload_996", %TName_Nat** %x0
  %"$retval_154" = alloca %TName_Nat*
  %"$gasrem_997" = load i64, i64* @_gasrem
  %"$gascmp_998" = icmp ugt i64 1, %"$gasrem_997"
  br i1 %"$gascmp_998", label %"$out_of_gas_999", label %"$have_gas_1000"

"$out_of_gas_999":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1000"

"$have_gas_1000":                                 ; preds = %"$out_of_gas_999", %entry
  %"$consume_1001" = sub i64 %"$gasrem_997", 1
  store i64 %"$consume_1001", i64* @_gasrem
  %"$iter_nat_30" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$iter_nat_1002" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat
  %"$iter_nat_fptr_1003" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1002", 0
  %"$iter_nat_envptr_1004" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1002", 1
  %"$ack_1005" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack
  %"$iter_nat_call_1006" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_fptr_1003"(i8* %"$iter_nat_envptr_1004", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_1005")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_call_1006", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_30"
  %"$iter_nat_31" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$iter_nat_30_1007" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_30"
  %"$$iter_nat_30_fptr_1008" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_1007", 0
  %"$$iter_nat_30_envptr_1009" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_1007", 1
  %"$$iter_nat_30_call_1010" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_fptr_1008"(i8* %"$$iter_nat_30_envptr_1009", %TName_Nat* %1)
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_call_1010", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_31"
  %"$iter_nat_32" = alloca %TName_Nat*
  %"$$iter_nat_31_1011" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_31"
  %"$$iter_nat_31_fptr_1012" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_31_1011", 0
  %"$$iter_nat_31_envptr_1013" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_31_1011", 1
  %"$x0_1014" = load %TName_Nat*, %TName_Nat** %x0
  %"$$iter_nat_31_call_1015" = call %TName_Nat* %"$$iter_nat_31_fptr_1012"(i8* %"$$iter_nat_31_envptr_1013", %TName_Nat* %"$x0_1014")
  store %TName_Nat* %"$$iter_nat_31_call_1015", %TName_Nat** %"$iter_nat_32"
  %"$$iter_nat_32_1016" = load %TName_Nat*, %TName_Nat** %"$iter_nat_32"
  store %TName_Nat* %"$$iter_nat_32_1016", %TName_Nat** %"$retval_154"
  %"$$retval_154_1017" = load %TName_Nat*, %TName_Nat** %"$retval_154"
  ret %TName_Nat* %"$$retval_154_1017"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_151"(%"$$fundef_151_env_205"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_151_env_iter_nat_957" = getelementptr inbounds %"$$fundef_151_env_205", %"$$fundef_151_env_205"* %0, i32 0, i32 0
  %"$iter_nat_envload_958" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_151_env_iter_nat_957"
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_958", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat
  %"$$fundef_151_env_one_959" = getelementptr inbounds %"$$fundef_151_env_205", %"$$fundef_151_env_205"* %0, i32 0, i32 1
  %"$one_envload_960" = load %TName_Nat*, %TName_Nat** %"$$fundef_151_env_one_959"
  %one = alloca %TName_Nat*
  store %TName_Nat* %"$one_envload_960", %TName_Nat** %one
  %"$retval_152" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_961" = load i64, i64* @_gasrem
  %"$gascmp_962" = icmp ugt i64 1, %"$gasrem_961"
  br i1 %"$gascmp_962", label %"$out_of_gas_963", label %"$have_gas_964"

"$out_of_gas_963":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_964"

"$have_gas_964":                                  ; preds = %"$out_of_gas_963", %entry
  %"$consume_965" = sub i64 %"$gasrem_961", 1
  store i64 %"$consume_965", i64* @_gasrem
  %x0 = alloca %TName_Nat*
  %"$gasrem_966" = load i64, i64* @_gasrem
  %"$gascmp_967" = icmp ugt i64 1, %"$gasrem_966"
  br i1 %"$gascmp_967", label %"$out_of_gas_968", label %"$have_gas_969"

"$out_of_gas_968":                                ; preds = %"$have_gas_964"
  call void @_out_of_gas()
  br label %"$have_gas_969"

"$have_gas_969":                                  ; preds = %"$out_of_gas_968", %"$have_gas_964"
  %"$consume_970" = sub i64 %"$gasrem_966", 1
  store i64 %"$consume_970", i64* @_gasrem
  %"$ack_29" = alloca %TName_Nat*
  %"$ack_fptr_971" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 0
  %"$ack_envptr_972" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 1
  %"$one_973" = load %TName_Nat*, %TName_Nat** %one
  %"$ack_call_974" = call %TName_Nat* %"$ack_fptr_971"(i8* %"$ack_envptr_972", %TName_Nat* %"$one_973")
  store %TName_Nat* %"$ack_call_974", %TName_Nat** %"$ack_29"
  %"$$ack_29_975" = load %TName_Nat*, %TName_Nat** %"$ack_29"
  store %TName_Nat* %"$$ack_29_975", %TName_Nat** %x0
  %"$gasrem_976" = load i64, i64* @_gasrem
  %"$gascmp_977" = icmp ugt i64 1, %"$gasrem_976"
  br i1 %"$gascmp_977", label %"$out_of_gas_978", label %"$have_gas_979"

"$out_of_gas_978":                                ; preds = %"$have_gas_969"
  call void @_out_of_gas()
  br label %"$have_gas_979"

"$have_gas_979":                                  ; preds = %"$out_of_gas_978", %"$have_gas_969"
  %"$consume_980" = sub i64 %"$gasrem_976", 1
  store i64 %"$consume_980", i64* @_gasrem
  %"$$fundef_153_envp_981_load" = load i8*, i8** @_execptr
  %"$$fundef_153_envp_981_salloc" = call i8* @_salloc(i8* %"$$fundef_153_envp_981_load", i64 40)
  %"$$fundef_153_envp_981" = bitcast i8* %"$$fundef_153_envp_981_salloc" to %"$$fundef_153_env_204"*
  %"$$fundef_153_env_voidp_983" = bitcast %"$$fundef_153_env_204"* %"$$fundef_153_envp_981" to i8*
  %"$$fundef_153_cloval_984" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_153_env_204"*, %TName_Nat*)* @"$fundef_153" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_153_env_voidp_983", 1
  %"$$fundef_153_env_ack_985" = getelementptr inbounds %"$$fundef_153_env_204", %"$$fundef_153_env_204"* %"$$fundef_153_envp_981", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_153_env_ack_985"
  %"$$fundef_153_env_iter_nat_986" = getelementptr inbounds %"$$fundef_153_env_204", %"$$fundef_153_env_204"* %"$$fundef_153_envp_981", i32 0, i32 1
  %"$iter_nat_987" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_987", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_153_env_iter_nat_986"
  %"$$fundef_153_env_x0_988" = getelementptr inbounds %"$$fundef_153_env_204", %"$$fundef_153_env_204"* %"$$fundef_153_envp_981", i32 0, i32 2
  %"$x0_989" = load %TName_Nat*, %TName_Nat** %x0
  store %TName_Nat* %"$x0_989", %TName_Nat** %"$$fundef_153_env_x0_988"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_153_cloval_984", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_152"
  %"$$retval_152_990" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_152"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_152_990"
}

define internal %TName_Nat* @"$fundef_149"(%"$$fundef_149_env_206"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_149_env_f_941" = getelementptr inbounds %"$$fundef_149_env_206", %"$$fundef_149_env_206"* %0, i32 0, i32 0
  %"$f_envload_942" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_149_env_f_941"
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_942", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  %"$$fundef_149_env_x_943" = getelementptr inbounds %"$$fundef_149_env_206", %"$$fundef_149_env_206"* %0, i32 0, i32 1
  %"$x_envload_944" = load %TName_Nat*, %TName_Nat** %"$$fundef_149_env_x_943"
  %x = alloca %TName_Nat*
  store %TName_Nat* %"$x_envload_944", %TName_Nat** %x
  %"$retval_150" = alloca %TName_Nat*
  %"$gasrem_945" = load i64, i64* @_gasrem
  %"$gascmp_946" = icmp ugt i64 1, %"$gasrem_945"
  br i1 %"$gascmp_946", label %"$out_of_gas_947", label %"$have_gas_948"

"$out_of_gas_947":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_948"

"$have_gas_948":                                  ; preds = %"$out_of_gas_947", %entry
  %"$consume_949" = sub i64 %"$gasrem_945", 1
  store i64 %"$consume_949", i64* @_gasrem
  %"$f_25" = alloca %TName_Nat*
  %"$f_950" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  %"$f_fptr_951" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_950", 0
  %"$f_envptr_952" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_950", 1
  %"$x_953" = load %TName_Nat*, %TName_Nat** %x
  %"$f_call_954" = call %TName_Nat* %"$f_fptr_951"(i8* %"$f_envptr_952", %TName_Nat* %"$x_953")
  store %TName_Nat* %"$f_call_954", %TName_Nat** %"$f_25"
  %"$$f_25_955" = load %TName_Nat*, %TName_Nat** %"$f_25"
  store %TName_Nat* %"$$f_25_955", %TName_Nat** %"$retval_150"
  %"$$retval_150_956" = load %TName_Nat*, %TName_Nat** %"$retval_150"
  ret %TName_Nat* %"$$retval_150_956"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_147"(%"$$fundef_147_env_207"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_147_env_f_926" = getelementptr inbounds %"$$fundef_147_env_207", %"$$fundef_147_env_207"* %0, i32 0, i32 0
  %"$f_envload_927" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_147_env_f_926"
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_927", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  %"$retval_148" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_928" = load i64, i64* @_gasrem
  %"$gascmp_929" = icmp ugt i64 1, %"$gasrem_928"
  br i1 %"$gascmp_929", label %"$out_of_gas_930", label %"$have_gas_931"

"$out_of_gas_930":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_931"

"$have_gas_931":                                  ; preds = %"$out_of_gas_930", %entry
  %"$consume_932" = sub i64 %"$gasrem_928", 1
  store i64 %"$consume_932", i64* @_gasrem
  %"$$fundef_149_envp_933_load" = load i8*, i8** @_execptr
  %"$$fundef_149_envp_933_salloc" = call i8* @_salloc(i8* %"$$fundef_149_envp_933_load", i64 24)
  %"$$fundef_149_envp_933" = bitcast i8* %"$$fundef_149_envp_933_salloc" to %"$$fundef_149_env_206"*
  %"$$fundef_149_env_voidp_935" = bitcast %"$$fundef_149_env_206"* %"$$fundef_149_envp_933" to i8*
  %"$$fundef_149_cloval_936" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_149_env_206"*, %TName_Nat*)* @"$fundef_149" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_149_env_voidp_935", 1
  %"$$fundef_149_env_f_937" = getelementptr inbounds %"$$fundef_149_env_206", %"$$fundef_149_env_206"* %"$$fundef_149_envp_933", i32 0, i32 0
  %"$f_938" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_938", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_149_env_f_937"
  %"$$fundef_149_env_x_939" = getelementptr inbounds %"$$fundef_149_env_206", %"$$fundef_149_env_206"* %"$$fundef_149_envp_933", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_149_env_x_939"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_149_cloval_936", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_148"
  %"$$retval_148_940" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_148"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_148_940"
}

define internal %TName_Nat* @"$fundef_145"(%"$$fundef_145_env_208"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_145_env_f_866" = getelementptr inbounds %"$$fundef_145_env_208", %"$$fundef_145_env_208"* %0, i32 0, i32 0
  %"$f_envload_867" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_145_env_f_866"
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_867", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  %"$$fundef_145_env_n_868" = getelementptr inbounds %"$$fundef_145_env_208", %"$$fundef_145_env_208"* %0, i32 0, i32 1
  %"$n_envload_869" = load %TName_Nat*, %TName_Nat** %"$$fundef_145_env_n_868"
  %n = alloca %TName_Nat*
  store %TName_Nat* %"$n_envload_869", %TName_Nat** %n
  %"$$fundef_145_env_nat_fold_870" = getelementptr inbounds %"$$fundef_145_env_208", %"$$fundef_145_env_208"* %0, i32 0, i32 2
  %"$nat_fold_envload_871" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_145_env_nat_fold_870"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_871", { i8*, i8* }** %nat_fold
  %"$retval_146" = alloca %TName_Nat*
  %"$gasrem_872" = load i64, i64* @_gasrem
  %"$gascmp_873" = icmp ugt i64 1, %"$gasrem_872"
  br i1 %"$gascmp_873", label %"$out_of_gas_874", label %"$have_gas_875"

"$out_of_gas_874":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_875"

"$have_gas_875":                                  ; preds = %"$out_of_gas_874", %entry
  %"$consume_876" = sub i64 %"$gasrem_872", 1
  store i64 %"$consume_876", i64* @_gasrem
  %folder = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$gasrem_877" = load i64, i64* @_gasrem
  %"$gascmp_878" = icmp ugt i64 1, %"$gasrem_877"
  br i1 %"$gascmp_878", label %"$out_of_gas_879", label %"$have_gas_880"

"$out_of_gas_879":                                ; preds = %"$have_gas_875"
  call void @_out_of_gas()
  br label %"$have_gas_880"

"$have_gas_880":                                  ; preds = %"$out_of_gas_879", %"$have_gas_875"
  %"$consume_881" = sub i64 %"$gasrem_877", 1
  store i64 %"$consume_881", i64* @_gasrem
  %"$nat_fold_882" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  %"$nat_fold_883" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_882", i32 2
  %"$nat_fold_884" = bitcast { i8*, i8* }* %"$nat_fold_883" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_885" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_884"
  %"$nat_fold_fptr_886" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_885", 0
  %"$nat_fold_envptr_887" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_885", 1
  %"$nat_fold_call_888" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_fptr_886"(i8* %"$nat_fold_envptr_887")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_call_888", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder
  %"$gasrem_889" = load i64, i64* @_gasrem
  %"$gascmp_890" = icmp ugt i64 1, %"$gasrem_889"
  br i1 %"$gascmp_890", label %"$out_of_gas_891", label %"$have_gas_892"

"$out_of_gas_891":                                ; preds = %"$have_gas_880"
  call void @_out_of_gas()
  br label %"$have_gas_892"

"$have_gas_892":                                  ; preds = %"$out_of_gas_891", %"$have_gas_880"
  %"$consume_893" = sub i64 %"$gasrem_889", 1
  store i64 %"$consume_893", i64* @_gasrem
  %step = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_894" = load i64, i64* @_gasrem
  %"$gascmp_895" = icmp ugt i64 1, %"$gasrem_894"
  br i1 %"$gascmp_895", label %"$out_of_gas_896", label %"$have_gas_897"

"$out_of_gas_896":                                ; preds = %"$have_gas_892"
  call void @_out_of_gas()
  br label %"$have_gas_897"

"$have_gas_897":                                  ; preds = %"$out_of_gas_896", %"$have_gas_892"
  %"$consume_898" = sub i64 %"$gasrem_894", 1
  store i64 %"$consume_898", i64* @_gasrem
  %"$$fundef_147_envp_899_load" = load i8*, i8** @_execptr
  %"$$fundef_147_envp_899_salloc" = call i8* @_salloc(i8* %"$$fundef_147_envp_899_load", i64 16)
  %"$$fundef_147_envp_899" = bitcast i8* %"$$fundef_147_envp_899_salloc" to %"$$fundef_147_env_207"*
  %"$$fundef_147_env_voidp_901" = bitcast %"$$fundef_147_env_207"* %"$$fundef_147_envp_899" to i8*
  %"$$fundef_147_cloval_902" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_147_env_207"*, %TName_Nat*)* @"$fundef_147" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_147_env_voidp_901", 1
  %"$$fundef_147_env_f_903" = getelementptr inbounds %"$$fundef_147_env_207", %"$$fundef_147_env_207"* %"$$fundef_147_envp_899", i32 0, i32 0
  %"$f_904" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_904", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_147_env_f_903"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_147_cloval_902", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step
  %"$gasrem_905" = load i64, i64* @_gasrem
  %"$gascmp_906" = icmp ugt i64 1, %"$gasrem_905"
  br i1 %"$gascmp_906", label %"$out_of_gas_907", label %"$have_gas_908"

"$out_of_gas_907":                                ; preds = %"$have_gas_897"
  call void @_out_of_gas()
  br label %"$have_gas_908"

"$have_gas_908":                                  ; preds = %"$out_of_gas_907", %"$have_gas_897"
  %"$consume_909" = sub i64 %"$gasrem_905", 1
  store i64 %"$consume_909", i64* @_gasrem
  %"$folder_26" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$folder_910" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder
  %"$folder_fptr_911" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_910", 0
  %"$folder_envptr_912" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_910", 1
  %"$step_913" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step
  %"$folder_call_914" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_fptr_911"(i8* %"$folder_envptr_912", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$step_913")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_call_914", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_26"
  %"$folder_27" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$folder_26_915" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_26"
  %"$$folder_26_fptr_916" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_915", 0
  %"$$folder_26_envptr_917" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_915", 1
  %"$$folder_26_call_918" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_26_fptr_916"(i8* %"$$folder_26_envptr_917", %TName_Nat* %1)
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_26_call_918", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_27"
  %"$folder_28" = alloca %TName_Nat*
  %"$$folder_27_919" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_27"
  %"$$folder_27_fptr_920" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_919", 0
  %"$$folder_27_envptr_921" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_919", 1
  %"$n_922" = load %TName_Nat*, %TName_Nat** %n
  %"$$folder_27_call_923" = call %TName_Nat* %"$$folder_27_fptr_920"(i8* %"$$folder_27_envptr_921", %TName_Nat* %"$n_922")
  store %TName_Nat* %"$$folder_27_call_923", %TName_Nat** %"$folder_28"
  %"$$folder_28_924" = load %TName_Nat*, %TName_Nat** %"$folder_28"
  store %TName_Nat* %"$$folder_28_924", %TName_Nat** %"$retval_146"
  %"$$retval_146_925" = load %TName_Nat*, %TName_Nat** %"$retval_146"
  ret %TName_Nat* %"$$retval_146_925"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_143"(%"$$fundef_143_env_209"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_143_env_f_847" = getelementptr inbounds %"$$fundef_143_env_209", %"$$fundef_143_env_209"* %0, i32 0, i32 0
  %"$f_envload_848" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_143_env_f_847"
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_848", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  %"$$fundef_143_env_nat_fold_849" = getelementptr inbounds %"$$fundef_143_env_209", %"$$fundef_143_env_209"* %0, i32 0, i32 1
  %"$nat_fold_envload_850" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_143_env_nat_fold_849"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_850", { i8*, i8* }** %nat_fold
  %"$retval_144" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_851" = load i64, i64* @_gasrem
  %"$gascmp_852" = icmp ugt i64 1, %"$gasrem_851"
  br i1 %"$gascmp_852", label %"$out_of_gas_853", label %"$have_gas_854"

"$out_of_gas_853":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_854"

"$have_gas_854":                                  ; preds = %"$out_of_gas_853", %entry
  %"$consume_855" = sub i64 %"$gasrem_851", 1
  store i64 %"$consume_855", i64* @_gasrem
  %"$$fundef_145_envp_856_load" = load i8*, i8** @_execptr
  %"$$fundef_145_envp_856_salloc" = call i8* @_salloc(i8* %"$$fundef_145_envp_856_load", i64 32)
  %"$$fundef_145_envp_856" = bitcast i8* %"$$fundef_145_envp_856_salloc" to %"$$fundef_145_env_208"*
  %"$$fundef_145_env_voidp_858" = bitcast %"$$fundef_145_env_208"* %"$$fundef_145_envp_856" to i8*
  %"$$fundef_145_cloval_859" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_145_env_208"*, %TName_Nat*)* @"$fundef_145" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_145_env_voidp_858", 1
  %"$$fundef_145_env_f_860" = getelementptr inbounds %"$$fundef_145_env_208", %"$$fundef_145_env_208"* %"$$fundef_145_envp_856", i32 0, i32 0
  %"$f_861" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_861", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_145_env_f_860"
  %"$$fundef_145_env_n_862" = getelementptr inbounds %"$$fundef_145_env_208", %"$$fundef_145_env_208"* %"$$fundef_145_envp_856", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_145_env_n_862"
  %"$$fundef_145_env_nat_fold_863" = getelementptr inbounds %"$$fundef_145_env_208", %"$$fundef_145_env_208"* %"$$fundef_145_envp_856", i32 0, i32 2
  %"$nat_fold_864" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_864", { i8*, i8* }** %"$$fundef_145_env_nat_fold_863"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_145_cloval_859", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_144"
  %"$$retval_144_865" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_144"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_144_865"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_141"(%"$$fundef_141_env_210"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_141_env_nat_fold_832" = getelementptr inbounds %"$$fundef_141_env_210", %"$$fundef_141_env_210"* %0, i32 0, i32 0
  %"$nat_fold_envload_833" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_141_env_nat_fold_832"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_833", { i8*, i8* }** %nat_fold
  %"$retval_142" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_834" = load i64, i64* @_gasrem
  %"$gascmp_835" = icmp ugt i64 1, %"$gasrem_834"
  br i1 %"$gascmp_835", label %"$out_of_gas_836", label %"$have_gas_837"

"$out_of_gas_836":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_837"

"$have_gas_837":                                  ; preds = %"$out_of_gas_836", %entry
  %"$consume_838" = sub i64 %"$gasrem_834", 1
  store i64 %"$consume_838", i64* @_gasrem
  %"$$fundef_143_envp_839_load" = load i8*, i8** @_execptr
  %"$$fundef_143_envp_839_salloc" = call i8* @_salloc(i8* %"$$fundef_143_envp_839_load", i64 24)
  %"$$fundef_143_envp_839" = bitcast i8* %"$$fundef_143_envp_839_salloc" to %"$$fundef_143_env_209"*
  %"$$fundef_143_env_voidp_841" = bitcast %"$$fundef_143_env_209"* %"$$fundef_143_envp_839" to i8*
  %"$$fundef_143_cloval_842" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_143_env_209"*, %TName_Nat*)* @"$fundef_143" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_143_env_voidp_841", 1
  %"$$fundef_143_env_f_843" = getelementptr inbounds %"$$fundef_143_env_209", %"$$fundef_143_env_209"* %"$$fundef_143_envp_839", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_143_env_f_843"
  %"$$fundef_143_env_nat_fold_844" = getelementptr inbounds %"$$fundef_143_env_209", %"$$fundef_143_env_209"* %"$$fundef_143_envp_839", i32 0, i32 1
  %"$nat_fold_845" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_845", { i8*, i8* }** %"$$fundef_143_env_nat_fold_844"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_143_cloval_842", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_142"
  %"$$retval_142_846" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_142"
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_142_846"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_139"(%"$$fundef_139_env_211"* %0) {
entry:
  %"$$fundef_139_env_nat_fold_818" = getelementptr inbounds %"$$fundef_139_env_211", %"$$fundef_139_env_211"* %0, i32 0, i32 0
  %"$nat_fold_envload_819" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_139_env_nat_fold_818"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_819", { i8*, i8* }** %nat_fold
  %"$retval_140" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$gasrem_820" = load i64, i64* @_gasrem
  %"$gascmp_821" = icmp ugt i64 1, %"$gasrem_820"
  br i1 %"$gascmp_821", label %"$out_of_gas_822", label %"$have_gas_823"

"$out_of_gas_822":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_823"

"$have_gas_823":                                  ; preds = %"$out_of_gas_822", %entry
  %"$consume_824" = sub i64 %"$gasrem_820", 1
  store i64 %"$consume_824", i64* @_gasrem
  %"$$fundef_141_envp_825_load" = load i8*, i8** @_execptr
  %"$$fundef_141_envp_825_salloc" = call i8* @_salloc(i8* %"$$fundef_141_envp_825_load", i64 8)
  %"$$fundef_141_envp_825" = bitcast i8* %"$$fundef_141_envp_825_salloc" to %"$$fundef_141_env_210"*
  %"$$fundef_141_env_voidp_827" = bitcast %"$$fundef_141_env_210"* %"$$fundef_141_envp_825" to i8*
  %"$$fundef_141_cloval_828" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_141_env_210"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_141" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_141_env_voidp_827", 1
  %"$$fundef_141_env_nat_fold_829" = getelementptr inbounds %"$$fundef_141_env_210", %"$$fundef_141_env_210"* %"$$fundef_141_envp_825", i32 0, i32 0
  %"$nat_fold_830" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_830", { i8*, i8* }** %"$$fundef_141_env_nat_fold_829"
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_141_cloval_828", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_140"
  %"$$retval_140_831" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_140"
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_140_831"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_137"(%"$$fundef_137_env_212"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_137_env_f_802" = getelementptr inbounds %"$$fundef_137_env_212", %"$$fundef_137_env_212"* %0, i32 0, i32 0
  %"$f_envload_803" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_137_env_f_802"
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_803", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_137_env_x_804" = getelementptr inbounds %"$$fundef_137_env_212", %"$$fundef_137_env_212"* %0, i32 0, i32 1
  %"$x_envload_805" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_137_env_x_804"
  %x = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_envload_805", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x
  %"$retval_138" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_806" = load i64, i64* @_gasrem
  %"$gascmp_807" = icmp ugt i64 1, %"$gasrem_806"
  br i1 %"$gascmp_807", label %"$out_of_gas_808", label %"$have_gas_809"

"$out_of_gas_808":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_809"

"$have_gas_809":                                  ; preds = %"$out_of_gas_808", %entry
  %"$consume_810" = sub i64 %"$gasrem_806", 1
  store i64 %"$consume_810", i64* @_gasrem
  %"$f_25" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$f_811" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$f_fptr_812" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_811", 0
  %"$f_envptr_813" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_811", 1
  %"$x_814" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x
  %"$f_call_815" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_fptr_812"(i8* %"$f_envptr_813", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_814")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_call_815", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_25"
  %"$$f_25_816" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_25"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$f_25_816", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_138"
  %"$$retval_138_817" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_138"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_138_817"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_135"(%"$$fundef_135_env_213"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_135_env_f_787" = getelementptr inbounds %"$$fundef_135_env_213", %"$$fundef_135_env_213"* %0, i32 0, i32 0
  %"$f_envload_788" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_135_env_f_787"
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_788", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$retval_136" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_789" = load i64, i64* @_gasrem
  %"$gascmp_790" = icmp ugt i64 1, %"$gasrem_789"
  br i1 %"$gascmp_790", label %"$out_of_gas_791", label %"$have_gas_792"

"$out_of_gas_791":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_792"

"$have_gas_792":                                  ; preds = %"$out_of_gas_791", %entry
  %"$consume_793" = sub i64 %"$gasrem_789", 1
  store i64 %"$consume_793", i64* @_gasrem
  %"$$fundef_137_envp_794_load" = load i8*, i8** @_execptr
  %"$$fundef_137_envp_794_salloc" = call i8* @_salloc(i8* %"$$fundef_137_envp_794_load", i64 32)
  %"$$fundef_137_envp_794" = bitcast i8* %"$$fundef_137_envp_794_salloc" to %"$$fundef_137_env_212"*
  %"$$fundef_137_env_voidp_796" = bitcast %"$$fundef_137_env_212"* %"$$fundef_137_envp_794" to i8*
  %"$$fundef_137_cloval_797" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_137_env_212"*, %TName_Nat*)* @"$fundef_137" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_137_env_voidp_796", 1
  %"$$fundef_137_env_f_798" = getelementptr inbounds %"$$fundef_137_env_212", %"$$fundef_137_env_212"* %"$$fundef_137_envp_794", i32 0, i32 0
  %"$f_799" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_799", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_137_env_f_798"
  %"$$fundef_137_env_x_800" = getelementptr inbounds %"$$fundef_137_env_212", %"$$fundef_137_env_212"* %"$$fundef_137_envp_794", i32 0, i32 1
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_137_env_x_800"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_137_cloval_797", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_136"
  %"$$retval_136_801" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_136"
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_136_801"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_133"(%"$$fundef_133_env_214"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_133_env_f_727" = getelementptr inbounds %"$$fundef_133_env_214", %"$$fundef_133_env_214"* %0, i32 0, i32 0
  %"$f_envload_728" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_133_env_f_727"
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_728", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_133_env_n_729" = getelementptr inbounds %"$$fundef_133_env_214", %"$$fundef_133_env_214"* %0, i32 0, i32 1
  %"$n_envload_730" = load %TName_Nat*, %TName_Nat** %"$$fundef_133_env_n_729"
  %n = alloca %TName_Nat*
  store %TName_Nat* %"$n_envload_730", %TName_Nat** %n
  %"$$fundef_133_env_nat_fold_731" = getelementptr inbounds %"$$fundef_133_env_214", %"$$fundef_133_env_214"* %0, i32 0, i32 2
  %"$nat_fold_envload_732" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_133_env_nat_fold_731"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_732", { i8*, i8* }** %nat_fold
  %"$retval_134" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_733" = load i64, i64* @_gasrem
  %"$gascmp_734" = icmp ugt i64 1, %"$gasrem_733"
  br i1 %"$gascmp_734", label %"$out_of_gas_735", label %"$have_gas_736"

"$out_of_gas_735":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_736"

"$have_gas_736":                                  ; preds = %"$out_of_gas_735", %entry
  %"$consume_737" = sub i64 %"$gasrem_733", 1
  store i64 %"$consume_737", i64* @_gasrem
  %folder = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }
  %"$gasrem_738" = load i64, i64* @_gasrem
  %"$gascmp_739" = icmp ugt i64 1, %"$gasrem_738"
  br i1 %"$gascmp_739", label %"$out_of_gas_740", label %"$have_gas_741"

"$out_of_gas_740":                                ; preds = %"$have_gas_736"
  call void @_out_of_gas()
  br label %"$have_gas_741"

"$have_gas_741":                                  ; preds = %"$out_of_gas_740", %"$have_gas_736"
  %"$consume_742" = sub i64 %"$gasrem_738", 1
  store i64 %"$consume_742", i64* @_gasrem
  %"$nat_fold_743" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  %"$nat_fold_744" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_743", i32 1
  %"$nat_fold_745" = bitcast { i8*, i8* }* %"$nat_fold_744" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_746" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_745"
  %"$nat_fold_fptr_747" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_746", 0
  %"$nat_fold_envptr_748" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_746", 1
  %"$nat_fold_call_749" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_fptr_747"(i8* %"$nat_fold_envptr_748")
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_call_749", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder
  %"$gasrem_750" = load i64, i64* @_gasrem
  %"$gascmp_751" = icmp ugt i64 1, %"$gasrem_750"
  br i1 %"$gascmp_751", label %"$out_of_gas_752", label %"$have_gas_753"

"$out_of_gas_752":                                ; preds = %"$have_gas_741"
  call void @_out_of_gas()
  br label %"$have_gas_753"

"$have_gas_753":                                  ; preds = %"$out_of_gas_752", %"$have_gas_741"
  %"$consume_754" = sub i64 %"$gasrem_750", 1
  store i64 %"$consume_754", i64* @_gasrem
  %step = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$gasrem_755" = load i64, i64* @_gasrem
  %"$gascmp_756" = icmp ugt i64 1, %"$gasrem_755"
  br i1 %"$gascmp_756", label %"$out_of_gas_757", label %"$have_gas_758"

"$out_of_gas_757":                                ; preds = %"$have_gas_753"
  call void @_out_of_gas()
  br label %"$have_gas_758"

"$have_gas_758":                                  ; preds = %"$out_of_gas_757", %"$have_gas_753"
  %"$consume_759" = sub i64 %"$gasrem_755", 1
  store i64 %"$consume_759", i64* @_gasrem
  %"$$fundef_135_envp_760_load" = load i8*, i8** @_execptr
  %"$$fundef_135_envp_760_salloc" = call i8* @_salloc(i8* %"$$fundef_135_envp_760_load", i64 16)
  %"$$fundef_135_envp_760" = bitcast i8* %"$$fundef_135_envp_760_salloc" to %"$$fundef_135_env_213"*
  %"$$fundef_135_env_voidp_762" = bitcast %"$$fundef_135_env_213"* %"$$fundef_135_envp_760" to i8*
  %"$$fundef_135_cloval_763" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_135_env_213"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_135" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_135_env_voidp_762", 1
  %"$$fundef_135_env_f_764" = getelementptr inbounds %"$$fundef_135_env_213", %"$$fundef_135_env_213"* %"$$fundef_135_envp_760", i32 0, i32 0
  %"$f_765" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_765", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_135_env_f_764"
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_135_cloval_763", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step
  %"$gasrem_766" = load i64, i64* @_gasrem
  %"$gascmp_767" = icmp ugt i64 1, %"$gasrem_766"
  br i1 %"$gascmp_767", label %"$out_of_gas_768", label %"$have_gas_769"

"$out_of_gas_768":                                ; preds = %"$have_gas_758"
  call void @_out_of_gas()
  br label %"$have_gas_769"

"$have_gas_769":                                  ; preds = %"$out_of_gas_768", %"$have_gas_758"
  %"$consume_770" = sub i64 %"$gasrem_766", 1
  store i64 %"$consume_770", i64* @_gasrem
  %"$folder_26" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$folder_771" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder
  %"$folder_fptr_772" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_771", 0
  %"$folder_envptr_773" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_771", 1
  %"$step_774" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step
  %"$folder_call_775" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_fptr_772"(i8* %"$folder_envptr_773", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$step_774")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_call_775", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_26"
  %"$folder_27" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$$folder_26_776" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_26"
  %"$$folder_26_fptr_777" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_26_776", 0
  %"$$folder_26_envptr_778" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_26_776", 1
  %"$$folder_26_call_779" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_fptr_777"(i8* %"$$folder_26_envptr_778", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1)
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_call_779", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_27"
  %"$folder_28" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$folder_27_780" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_27"
  %"$$folder_27_fptr_781" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_27_780", 0
  %"$$folder_27_envptr_782" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_27_780", 1
  %"$n_783" = load %TName_Nat*, %TName_Nat** %n
  %"$$folder_27_call_784" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_fptr_781"(i8* %"$$folder_27_envptr_782", %TName_Nat* %"$n_783")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_call_784", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_28"
  %"$$folder_28_785" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_28"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_28_785", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_134"
  %"$$retval_134_786" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_134"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_134_786"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_131"(%"$$fundef_131_env_215"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_131_env_f_708" = getelementptr inbounds %"$$fundef_131_env_215", %"$$fundef_131_env_215"* %0, i32 0, i32 0
  %"$f_envload_709" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_131_env_f_708"
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_709", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_131_env_nat_fold_710" = getelementptr inbounds %"$$fundef_131_env_215", %"$$fundef_131_env_215"* %0, i32 0, i32 1
  %"$nat_fold_envload_711" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_131_env_nat_fold_710"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_711", { i8*, i8* }** %nat_fold
  %"$retval_132" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$gasrem_712" = load i64, i64* @_gasrem
  %"$gascmp_713" = icmp ugt i64 1, %"$gasrem_712"
  br i1 %"$gascmp_713", label %"$out_of_gas_714", label %"$have_gas_715"

"$out_of_gas_714":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_715"

"$have_gas_715":                                  ; preds = %"$out_of_gas_714", %entry
  %"$consume_716" = sub i64 %"$gasrem_712", 1
  store i64 %"$consume_716", i64* @_gasrem
  %"$$fundef_133_envp_717_load" = load i8*, i8** @_execptr
  %"$$fundef_133_envp_717_salloc" = call i8* @_salloc(i8* %"$$fundef_133_envp_717_load", i64 32)
  %"$$fundef_133_envp_717" = bitcast i8* %"$$fundef_133_envp_717_salloc" to %"$$fundef_133_env_214"*
  %"$$fundef_133_env_voidp_719" = bitcast %"$$fundef_133_env_214"* %"$$fundef_133_envp_717" to i8*
  %"$$fundef_133_cloval_720" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_133_env_214"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_133" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_133_env_voidp_719", 1
  %"$$fundef_133_env_f_721" = getelementptr inbounds %"$$fundef_133_env_214", %"$$fundef_133_env_214"* %"$$fundef_133_envp_717", i32 0, i32 0
  %"$f_722" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_722", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_133_env_f_721"
  %"$$fundef_133_env_n_723" = getelementptr inbounds %"$$fundef_133_env_214", %"$$fundef_133_env_214"* %"$$fundef_133_envp_717", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_133_env_n_723"
  %"$$fundef_133_env_nat_fold_724" = getelementptr inbounds %"$$fundef_133_env_214", %"$$fundef_133_env_214"* %"$$fundef_133_envp_717", i32 0, i32 2
  %"$nat_fold_725" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_725", { i8*, i8* }** %"$$fundef_133_env_nat_fold_724"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_133_cloval_720", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_132"
  %"$$retval_132_726" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_132"
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_132_726"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_129"(%"$$fundef_129_env_216"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) {
entry:
  %"$$fundef_129_env_nat_fold_693" = getelementptr inbounds %"$$fundef_129_env_216", %"$$fundef_129_env_216"* %0, i32 0, i32 0
  %"$nat_fold_envload_694" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_129_env_nat_fold_693"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_694", { i8*, i8* }** %nat_fold
  %"$retval_130" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_695" = load i64, i64* @_gasrem
  %"$gascmp_696" = icmp ugt i64 1, %"$gasrem_695"
  br i1 %"$gascmp_696", label %"$out_of_gas_697", label %"$have_gas_698"

"$out_of_gas_697":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_698"

"$have_gas_698":                                  ; preds = %"$out_of_gas_697", %entry
  %"$consume_699" = sub i64 %"$gasrem_695", 1
  store i64 %"$consume_699", i64* @_gasrem
  %"$$fundef_131_envp_700_load" = load i8*, i8** @_execptr
  %"$$fundef_131_envp_700_salloc" = call i8* @_salloc(i8* %"$$fundef_131_envp_700_load", i64 24)
  %"$$fundef_131_envp_700" = bitcast i8* %"$$fundef_131_envp_700_salloc" to %"$$fundef_131_env_215"*
  %"$$fundef_131_env_voidp_702" = bitcast %"$$fundef_131_env_215"* %"$$fundef_131_envp_700" to i8*
  %"$$fundef_131_cloval_703" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_131_env_215"*, %TName_Nat*)* @"$fundef_131" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_131_env_voidp_702", 1
  %"$$fundef_131_env_f_704" = getelementptr inbounds %"$$fundef_131_env_215", %"$$fundef_131_env_215"* %"$$fundef_131_envp_700", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_131_env_f_704"
  %"$$fundef_131_env_nat_fold_705" = getelementptr inbounds %"$$fundef_131_env_215", %"$$fundef_131_env_215"* %"$$fundef_131_envp_700", i32 0, i32 1
  %"$nat_fold_706" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_706", { i8*, i8* }** %"$$fundef_131_env_nat_fold_705"
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_131_cloval_703", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_130"
  %"$$retval_130_707" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_130"
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_130_707"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_127"(%"$$fundef_127_env_217"* %0) {
entry:
  %"$$fundef_127_env_nat_fold_679" = getelementptr inbounds %"$$fundef_127_env_217", %"$$fundef_127_env_217"* %0, i32 0, i32 0
  %"$nat_fold_envload_680" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_127_env_nat_fold_679"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_680", { i8*, i8* }** %nat_fold
  %"$retval_128" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }
  %"$gasrem_681" = load i64, i64* @_gasrem
  %"$gascmp_682" = icmp ugt i64 1, %"$gasrem_681"
  br i1 %"$gascmp_682", label %"$out_of_gas_683", label %"$have_gas_684"

"$out_of_gas_683":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_684"

"$have_gas_684":                                  ; preds = %"$out_of_gas_683", %entry
  %"$consume_685" = sub i64 %"$gasrem_681", 1
  store i64 %"$consume_685", i64* @_gasrem
  %"$$fundef_129_envp_686_load" = load i8*, i8** @_execptr
  %"$$fundef_129_envp_686_salloc" = call i8* @_salloc(i8* %"$$fundef_129_envp_686_load", i64 8)
  %"$$fundef_129_envp_686" = bitcast i8* %"$$fundef_129_envp_686_salloc" to %"$$fundef_129_env_216"*
  %"$$fundef_129_env_voidp_688" = bitcast %"$$fundef_129_env_216"* %"$$fundef_129_envp_686" to i8*
  %"$$fundef_129_cloval_689" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_129_env_216"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_129" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_129_env_voidp_688", 1
  %"$$fundef_129_env_nat_fold_690" = getelementptr inbounds %"$$fundef_129_env_216", %"$$fundef_129_env_216"* %"$$fundef_129_envp_686", i32 0, i32 0
  %"$nat_fold_691" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_691", { i8*, i8* }** %"$$fundef_129_env_nat_fold_690"
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$fundef_129_cloval_689", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_128"
  %"$$retval_128_692" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_128"
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_128_692"
}

define internal %TName_Nat* @"$fundef_125"(%"$$fundef_125_env_218"* %0, %TName_Nat* %1) {
entry:
  %"$retval_126" = alloca %TName_Nat*
  %"$gasrem_669" = load i64, i64* @_gasrem
  %"$gascmp_670" = icmp ugt i64 1, %"$gasrem_669"
  br i1 %"$gascmp_670", label %"$out_of_gas_671", label %"$have_gas_672"

"$out_of_gas_671":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_672"

"$have_gas_672":                                  ; preds = %"$out_of_gas_671", %entry
  %"$consume_673" = sub i64 %"$gasrem_669", 1
  store i64 %"$consume_673", i64* @_gasrem
  %"$adtval_674_load" = load i8*, i8** @_execptr
  %"$adtval_674_salloc" = call i8* @_salloc(i8* %"$adtval_674_load", i64 9)
  %"$adtval_674" = bitcast i8* %"$adtval_674_salloc" to %CName_Succ*
  %"$adtgep_675" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_674", i32 0, i32 0
  store i8 1, i8* %"$adtgep_675"
  %"$adtgep_676" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_674", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$adtgep_676"
  %"$adtptr_677" = bitcast %CName_Succ* %"$adtval_674" to %TName_Nat*
  store %TName_Nat* %"$adtptr_677", %TName_Nat** %"$retval_126"
  %"$$retval_126_678" = load %TName_Nat*, %TName_Nat** %"$retval_126"
  ret %TName_Nat* %"$$retval_126_678"
}

define internal %Uint32 @"$fundef_122"(%"$$fundef_122_env_219"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_122_env_one_int_661" = getelementptr inbounds %"$$fundef_122_env_219", %"$$fundef_122_env_219"* %0, i32 0, i32 0
  %"$one_int_envload_662" = load %Uint32, %Uint32* %"$$fundef_122_env_one_int_661"
  %one_int = alloca %Uint32
  store %Uint32 %"$one_int_envload_662", %Uint32* %one_int
  %"$$fundef_122_env_z_663" = getelementptr inbounds %"$$fundef_122_env_219", %"$$fundef_122_env_219"* %0, i32 0, i32 1
  %"$z_envload_664" = load %Uint32, %Uint32* %"$$fundef_122_env_z_663"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_664", %Uint32* %z
  %"$retval_123" = alloca %Uint32
  %"$z_665" = load %Uint32, %Uint32* %z
  %"$one_int_666" = load %Uint32, %Uint32* %one_int
  %"$add_call_667" = call %Uint32 @_add_Uint32(%Uint32 %"$z_665", %Uint32 %"$one_int_666")
  store %Uint32 %"$add_call_667", %Uint32* %"$retval_123"
  %"$$retval_123_668" = load %Uint32, %Uint32* %"$retval_123"
  ret %Uint32 %"$$retval_123_668"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_120"(%"$$fundef_120_env_220"* %0, %Uint32 %1) {
entry:
  %"$$fundef_120_env_one_int_646" = getelementptr inbounds %"$$fundef_120_env_220", %"$$fundef_120_env_220"* %0, i32 0, i32 0
  %"$one_int_envload_647" = load %Uint32, %Uint32* %"$$fundef_120_env_one_int_646"
  %one_int = alloca %Uint32
  store %Uint32 %"$one_int_envload_647", %Uint32* %one_int
  %"$retval_121" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_648" = load i64, i64* @_gasrem
  %"$gascmp_649" = icmp ugt i64 1, %"$gasrem_648"
  br i1 %"$gascmp_649", label %"$out_of_gas_650", label %"$have_gas_651"

"$out_of_gas_650":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_651"

"$have_gas_651":                                  ; preds = %"$out_of_gas_650", %entry
  %"$consume_652" = sub i64 %"$gasrem_648", 1
  store i64 %"$consume_652", i64* @_gasrem
  %"$$fundef_122_envp_653_load" = load i8*, i8** @_execptr
  %"$$fundef_122_envp_653_salloc" = call i8* @_salloc(i8* %"$$fundef_122_envp_653_load", i64 8)
  %"$$fundef_122_envp_653" = bitcast i8* %"$$fundef_122_envp_653_salloc" to %"$$fundef_122_env_219"*
  %"$$fundef_122_env_voidp_655" = bitcast %"$$fundef_122_env_219"* %"$$fundef_122_envp_653" to i8*
  %"$$fundef_122_cloval_656" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_122_env_219"*, %TName_Nat*)* @"$fundef_122" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_122_env_voidp_655", 1
  %"$$fundef_122_env_one_int_657" = getelementptr inbounds %"$$fundef_122_env_219", %"$$fundef_122_env_219"* %"$$fundef_122_envp_653", i32 0, i32 0
  %"$one_int_658" = load %Uint32, %Uint32* %one_int
  store %Uint32 %"$one_int_658", %Uint32* %"$$fundef_122_env_one_int_657"
  %"$$fundef_122_env_z_659" = getelementptr inbounds %"$$fundef_122_env_219", %"$$fundef_122_env_219"* %"$$fundef_122_envp_653", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_122_env_z_659"
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_122_cloval_656", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_121"
  %"$$retval_121_660" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_121"
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_121_660"
}

define internal %Uint32 @"$fundef_118"(%"$$fundef_118_env_221"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_118_env_nat_fold_570" = getelementptr inbounds %"$$fundef_118_env_221", %"$$fundef_118_env_221"* %0, i32 0, i32 0
  %"$nat_fold_envload_571" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_118_env_nat_fold_570"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_571", { i8*, i8* }** %nat_fold
  %"$retval_119" = alloca %Uint32
  %"$gasrem_572" = load i64, i64* @_gasrem
  %"$gascmp_573" = icmp ugt i64 1, %"$gasrem_572"
  br i1 %"$gascmp_573", label %"$out_of_gas_574", label %"$have_gas_575"

"$out_of_gas_574":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_575"

"$have_gas_575":                                  ; preds = %"$out_of_gas_574", %entry
  %"$consume_576" = sub i64 %"$gasrem_572", 1
  store i64 %"$consume_576", i64* @_gasrem
  %fold = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$gasrem_577" = load i64, i64* @_gasrem
  %"$gascmp_578" = icmp ugt i64 1, %"$gasrem_577"
  br i1 %"$gascmp_578", label %"$out_of_gas_579", label %"$have_gas_580"

"$out_of_gas_579":                                ; preds = %"$have_gas_575"
  call void @_out_of_gas()
  br label %"$have_gas_580"

"$have_gas_580":                                  ; preds = %"$out_of_gas_579", %"$have_gas_575"
  %"$consume_581" = sub i64 %"$gasrem_577", 1
  store i64 %"$consume_581", i64* @_gasrem
  %"$nat_fold_582" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  %"$nat_fold_583" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_582", i32 0
  %"$nat_fold_584" = bitcast { i8*, i8* }* %"$nat_fold_583" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_585" = load { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_584"
  %"$nat_fold_fptr_586" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_585", 0
  %"$nat_fold_envptr_587" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_585", 1
  %"$nat_fold_call_588" = call { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$nat_fold_fptr_586"(i8* %"$nat_fold_envptr_587")
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$nat_fold_call_588", { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold
  %"$gasrem_589" = load i64, i64* @_gasrem
  %"$gascmp_590" = icmp ugt i64 1, %"$gasrem_589"
  br i1 %"$gascmp_590", label %"$out_of_gas_591", label %"$have_gas_592"

"$out_of_gas_591":                                ; preds = %"$have_gas_580"
  call void @_out_of_gas()
  br label %"$have_gas_592"

"$have_gas_592":                                  ; preds = %"$out_of_gas_591", %"$have_gas_580"
  %"$consume_593" = sub i64 %"$gasrem_589", 1
  store i64 %"$consume_593", i64* @_gasrem
  %one_int = alloca %Uint32
  %"$gasrem_594" = load i64, i64* @_gasrem
  %"$gascmp_595" = icmp ugt i64 1, %"$gasrem_594"
  br i1 %"$gascmp_595", label %"$out_of_gas_596", label %"$have_gas_597"

"$out_of_gas_596":                                ; preds = %"$have_gas_592"
  call void @_out_of_gas()
  br label %"$have_gas_597"

"$have_gas_597":                                  ; preds = %"$out_of_gas_596", %"$have_gas_592"
  %"$consume_598" = sub i64 %"$gasrem_594", 1
  store i64 %"$consume_598", i64* @_gasrem
  store %Uint32 { i32 1 }, %Uint32* %one_int
  %"$gasrem_599" = load i64, i64* @_gasrem
  %"$gascmp_600" = icmp ugt i64 1, %"$gasrem_599"
  br i1 %"$gascmp_600", label %"$out_of_gas_601", label %"$have_gas_602"

"$out_of_gas_601":                                ; preds = %"$have_gas_597"
  call void @_out_of_gas()
  br label %"$have_gas_602"

"$have_gas_602":                                  ; preds = %"$out_of_gas_601", %"$have_gas_597"
  %"$consume_603" = sub i64 %"$gasrem_599", 1
  store i64 %"$consume_603", i64* @_gasrem
  %f = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$gasrem_604" = load i64, i64* @_gasrem
  %"$gascmp_605" = icmp ugt i64 1, %"$gasrem_604"
  br i1 %"$gascmp_605", label %"$out_of_gas_606", label %"$have_gas_607"

"$out_of_gas_606":                                ; preds = %"$have_gas_602"
  call void @_out_of_gas()
  br label %"$have_gas_607"

"$have_gas_607":                                  ; preds = %"$out_of_gas_606", %"$have_gas_602"
  %"$consume_608" = sub i64 %"$gasrem_604", 1
  store i64 %"$consume_608", i64* @_gasrem
  %"$$fundef_120_envp_609_load" = load i8*, i8** @_execptr
  %"$$fundef_120_envp_609_salloc" = call i8* @_salloc(i8* %"$$fundef_120_envp_609_load", i64 4)
  %"$$fundef_120_envp_609" = bitcast i8* %"$$fundef_120_envp_609_salloc" to %"$$fundef_120_env_220"*
  %"$$fundef_120_env_voidp_611" = bitcast %"$$fundef_120_env_220"* %"$$fundef_120_envp_609" to i8*
  %"$$fundef_120_cloval_612" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_120_env_220"*, %Uint32)* @"$fundef_120" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_120_env_voidp_611", 1
  %"$$fundef_120_env_one_int_613" = getelementptr inbounds %"$$fundef_120_env_220", %"$$fundef_120_env_220"* %"$$fundef_120_envp_609", i32 0, i32 0
  %"$one_int_614" = load %Uint32, %Uint32* %one_int
  store %Uint32 %"$one_int_614", %Uint32* %"$$fundef_120_env_one_int_613"
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_120_cloval_612", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$gasrem_615" = load i64, i64* @_gasrem
  %"$gascmp_616" = icmp ugt i64 1, %"$gasrem_615"
  br i1 %"$gascmp_616", label %"$out_of_gas_617", label %"$have_gas_618"

"$out_of_gas_617":                                ; preds = %"$have_gas_607"
  call void @_out_of_gas()
  br label %"$have_gas_618"

"$have_gas_618":                                  ; preds = %"$out_of_gas_617", %"$have_gas_607"
  %"$consume_619" = sub i64 %"$gasrem_615", 1
  store i64 %"$consume_619", i64* @_gasrem
  %zero_int = alloca %Uint32
  %"$gasrem_620" = load i64, i64* @_gasrem
  %"$gascmp_621" = icmp ugt i64 1, %"$gasrem_620"
  br i1 %"$gascmp_621", label %"$out_of_gas_622", label %"$have_gas_623"

"$out_of_gas_622":                                ; preds = %"$have_gas_618"
  call void @_out_of_gas()
  br label %"$have_gas_623"

"$have_gas_623":                                  ; preds = %"$out_of_gas_622", %"$have_gas_618"
  %"$consume_624" = sub i64 %"$gasrem_620", 1
  store i64 %"$consume_624", i64* @_gasrem
  store %Uint32 zeroinitializer, %Uint32* %zero_int
  %"$gasrem_625" = load i64, i64* @_gasrem
  %"$gascmp_626" = icmp ugt i64 1, %"$gasrem_625"
  br i1 %"$gascmp_626", label %"$out_of_gas_627", label %"$have_gas_628"

"$out_of_gas_627":                                ; preds = %"$have_gas_623"
  call void @_out_of_gas()
  br label %"$have_gas_628"

"$have_gas_628":                                  ; preds = %"$out_of_gas_627", %"$have_gas_623"
  %"$consume_629" = sub i64 %"$gasrem_625", 1
  store i64 %"$consume_629", i64* @_gasrem
  %"$fold_22" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$fold_630" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold
  %"$fold_fptr_631" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_630", 0
  %"$fold_envptr_632" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_630", 1
  %"$f_633" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$fold_call_634" = call { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_fptr_631"(i8* %"$fold_envptr_632", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_633")
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_call_634", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_22"
  %"$fold_23" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }
  %"$$fold_22_635" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_22"
  %"$$fold_22_fptr_636" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_22_635", 0
  %"$$fold_22_envptr_637" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_22_635", 1
  %"$zero_int_638" = load %Uint32, %Uint32* %zero_int
  %"$$fold_22_call_639" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_22_fptr_636"(i8* %"$$fold_22_envptr_637", %Uint32 %"$zero_int_638")
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_22_call_639", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_23"
  %"$fold_24" = alloca %Uint32
  %"$$fold_23_640" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_23"
  %"$$fold_23_fptr_641" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_23_640", 0
  %"$$fold_23_envptr_642" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_23_640", 1
  %"$$fold_23_call_643" = call %Uint32 %"$$fold_23_fptr_641"(i8* %"$$fold_23_envptr_642", %TName_Nat* %1)
  store %Uint32 %"$$fold_23_call_643", %Uint32* %"$fold_24"
  %"$$fold_24_644" = load %Uint32, %Uint32* %"$fold_24"
  store %Uint32 %"$$fold_24_644", %Uint32* %"$retval_119"
  %"$$retval_119_645" = load %Uint32, %Uint32* %"$retval_119"
  ret %Uint32 %"$$retval_119_645"
}

define internal %TName_Nat* @"$fundef_116"(%"$$fundef_116_env_222"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_116_env_f0_505" = getelementptr inbounds %"$$fundef_116_env_222", %"$$fundef_116_env_222"* %0, i32 0, i32 0
  %"$f0_envload_506" = load %TName_Nat*, %TName_Nat** %"$$fundef_116_env_f0_505"
  %f0 = alloca %TName_Nat*
  store %TName_Nat* %"$f0_envload_506", %TName_Nat** %f0
  %"$$fundef_116_env_fn_507" = getelementptr inbounds %"$$fundef_116_env_222", %"$$fundef_116_env_222"* %0, i32 0, i32 1
  %"$fn_envload_508" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_116_env_fn_507"
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_508", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn
  %"$$fundef_116_env_g_509" = getelementptr inbounds %"$$fundef_116_env_222", %"$$fundef_116_env_222"* %0, i32 0, i32 2
  %"$g_envload_510" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_116_env_g_509"
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_510", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  %"$retval_117" = alloca %TName_Nat*
  %"$gasrem_511" = load i64, i64* @_gasrem
  %"$gascmp_512" = icmp ugt i64 2, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %entry
  %"$consume_515" = sub i64 %"$gasrem_511", 2
  store i64 %"$consume_515", i64* @_gasrem
  %"$n_tag_517" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_518" = load i8, i8* %"$n_tag_517"
  switch i8 %"$n_tag_518", label %"$empty_default_519" [
    i8 1, label %"$Succ_520"
    i8 0, label %"$Zero_561"
  ]

"$Succ_520":                                      ; preds = %"$have_gas_514"
  %"$n_521" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_522" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_521", i32 0, i32 1
  %"$n1_load_523" = load %TName_Nat*, %TName_Nat** %"$n1_gep_522"
  %n1 = alloca %TName_Nat*
  store %TName_Nat* %"$n1_load_523", %TName_Nat** %n1
  %"$gasrem_524" = load i64, i64* @_gasrem
  %"$gascmp_525" = icmp ugt i64 1, %"$gasrem_524"
  br i1 %"$gascmp_525", label %"$out_of_gas_526", label %"$have_gas_527"

"$out_of_gas_526":                                ; preds = %"$Succ_520"
  call void @_out_of_gas()
  br label %"$have_gas_527"

"$have_gas_527":                                  ; preds = %"$out_of_gas_526", %"$Succ_520"
  %"$consume_528" = sub i64 %"$gasrem_524", 1
  store i64 %"$consume_528", i64* @_gasrem
  %res = alloca %TName_Nat*
  %"$gasrem_529" = load i64, i64* @_gasrem
  %"$gascmp_530" = icmp ugt i64 1, %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_527"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_527"
  %"$consume_533" = sub i64 %"$gasrem_529", 1
  store i64 %"$consume_533", i64* @_gasrem
  %"$fn_18" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$fn_534" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn
  %"$fn_fptr_535" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_534", 0
  %"$fn_envptr_536" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_534", 1
  %"$f0_537" = load %TName_Nat*, %TName_Nat** %f0
  %"$fn_call_538" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_535"(i8* %"$fn_envptr_536", %TName_Nat* %"$f0_537")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_call_538", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_18"
  %"$fn_19" = alloca %TName_Nat*
  %"$$fn_18_539" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_18"
  %"$$fn_18_fptr_540" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_18_539", 0
  %"$$fn_18_envptr_541" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_18_539", 1
  %"$n1_542" = load %TName_Nat*, %TName_Nat** %n1
  %"$$fn_18_call_543" = call %TName_Nat* %"$$fn_18_fptr_540"(i8* %"$$fn_18_envptr_541", %TName_Nat* %"$n1_542")
  store %TName_Nat* %"$$fn_18_call_543", %TName_Nat** %"$fn_19"
  %"$$fn_19_544" = load %TName_Nat*, %TName_Nat** %"$fn_19"
  store %TName_Nat* %"$$fn_19_544", %TName_Nat** %res
  %"$gasrem_545" = load i64, i64* @_gasrem
  %"$gascmp_546" = icmp ugt i64 1, %"$gasrem_545"
  br i1 %"$gascmp_546", label %"$out_of_gas_547", label %"$have_gas_548"

"$out_of_gas_547":                                ; preds = %"$have_gas_532"
  call void @_out_of_gas()
  br label %"$have_gas_548"

"$have_gas_548":                                  ; preds = %"$out_of_gas_547", %"$have_gas_532"
  %"$consume_549" = sub i64 %"$gasrem_545", 1
  store i64 %"$consume_549", i64* @_gasrem
  %"$g_20" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$g_550" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  %"$g_fptr_551" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_550", 0
  %"$g_envptr_552" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_550", 1
  %"$res_553" = load %TName_Nat*, %TName_Nat** %res
  %"$g_call_554" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_551"(i8* %"$g_envptr_552", %TName_Nat* %"$res_553")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_call_554", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_20"
  %"$g_21" = alloca %TName_Nat*
  %"$$g_20_555" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_20"
  %"$$g_20_fptr_556" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_20_555", 0
  %"$$g_20_envptr_557" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_20_555", 1
  %"$n1_558" = load %TName_Nat*, %TName_Nat** %n1
  %"$$g_20_call_559" = call %TName_Nat* %"$$g_20_fptr_556"(i8* %"$$g_20_envptr_557", %TName_Nat* %"$n1_558")
  store %TName_Nat* %"$$g_20_call_559", %TName_Nat** %"$g_21"
  %"$$g_21_560" = load %TName_Nat*, %TName_Nat** %"$g_21"
  store %TName_Nat* %"$$g_21_560", %TName_Nat** %"$retval_117"
  br label %"$matchsucc_516"

"$Zero_561":                                      ; preds = %"$have_gas_514"
  %"$n_562" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_563" = load i64, i64* @_gasrem
  %"$gascmp_564" = icmp ugt i64 1, %"$gasrem_563"
  br i1 %"$gascmp_564", label %"$out_of_gas_565", label %"$have_gas_566"

"$out_of_gas_565":                                ; preds = %"$Zero_561"
  call void @_out_of_gas()
  br label %"$have_gas_566"

"$have_gas_566":                                  ; preds = %"$out_of_gas_565", %"$Zero_561"
  %"$consume_567" = sub i64 %"$gasrem_563", 1
  store i64 %"$consume_567", i64* @_gasrem
  %"$f0_568" = load %TName_Nat*, %TName_Nat** %f0
  store %TName_Nat* %"$f0_568", %TName_Nat** %"$retval_117"
  br label %"$matchsucc_516"

"$empty_default_519":                             ; preds = %"$have_gas_514"
  br label %"$matchsucc_516"

"$matchsucc_516":                                 ; preds = %"$have_gas_566", %"$have_gas_548", %"$empty_default_519"
  %"$$retval_117_569" = load %TName_Nat*, %TName_Nat** %"$retval_117"
  ret %TName_Nat* %"$$retval_117_569"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_114"(%"$$fundef_114_env_223"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_114_env_fn_486" = getelementptr inbounds %"$$fundef_114_env_223", %"$$fundef_114_env_223"* %0, i32 0, i32 0
  %"$fn_envload_487" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_114_env_fn_486"
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_487", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn
  %"$$fundef_114_env_g_488" = getelementptr inbounds %"$$fundef_114_env_223", %"$$fundef_114_env_223"* %0, i32 0, i32 1
  %"$g_envload_489" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_114_env_g_488"
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_489", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  %"$retval_115" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_490" = load i64, i64* @_gasrem
  %"$gascmp_491" = icmp ugt i64 1, %"$gasrem_490"
  br i1 %"$gascmp_491", label %"$out_of_gas_492", label %"$have_gas_493"

"$out_of_gas_492":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_493"

"$have_gas_493":                                  ; preds = %"$out_of_gas_492", %entry
  %"$consume_494" = sub i64 %"$gasrem_490", 1
  store i64 %"$consume_494", i64* @_gasrem
  %"$$fundef_116_envp_495_load" = load i8*, i8** @_execptr
  %"$$fundef_116_envp_495_salloc" = call i8* @_salloc(i8* %"$$fundef_116_envp_495_load", i64 40)
  %"$$fundef_116_envp_495" = bitcast i8* %"$$fundef_116_envp_495_salloc" to %"$$fundef_116_env_222"*
  %"$$fundef_116_env_voidp_497" = bitcast %"$$fundef_116_env_222"* %"$$fundef_116_envp_495" to i8*
  %"$$fundef_116_cloval_498" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_116_env_222"*, %TName_Nat*)* @"$fundef_116" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_116_env_voidp_497", 1
  %"$$fundef_116_env_f0_499" = getelementptr inbounds %"$$fundef_116_env_222", %"$$fundef_116_env_222"* %"$$fundef_116_envp_495", i32 0, i32 0
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_116_env_f0_499"
  %"$$fundef_116_env_fn_500" = getelementptr inbounds %"$$fundef_116_env_222", %"$$fundef_116_env_222"* %"$$fundef_116_envp_495", i32 0, i32 1
  %"$fn_501" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_501", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_116_env_fn_500"
  %"$$fundef_116_env_g_502" = getelementptr inbounds %"$$fundef_116_env_222", %"$$fundef_116_env_222"* %"$$fundef_116_envp_495", i32 0, i32 2
  %"$g_503" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_503", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_116_env_g_502"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_116_cloval_498", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_115"
  %"$$retval_115_504" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_115"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_115_504"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_112"(%"$$fundef_112_env_224"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$retval_113" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_467" = load i64, i64* @_gasrem
  %"$gascmp_468" = icmp ugt i64 1, %"$gasrem_467"
  br i1 %"$gascmp_468", label %"$out_of_gas_469", label %"$have_gas_470"

"$out_of_gas_469":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_470"

"$have_gas_470":                                  ; preds = %"$out_of_gas_469", %entry
  %"$consume_471" = sub i64 %"$gasrem_467", 1
  store i64 %"$consume_471", i64* @_gasrem
  %"$gasrem_472" = load i64, i64* @_gasrem
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$have_gas_470"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$have_gas_470"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem
  %"$$fundef_114_envp_477_load" = load i8*, i8** @_execptr
  %"$$fundef_114_envp_477_salloc" = call i8* @_salloc(i8* %"$$fundef_114_envp_477_load", i64 32)
  %"$$fundef_114_envp_477" = bitcast i8* %"$$fundef_114_envp_477_salloc" to %"$$fundef_114_env_223"*
  %"$$fundef_114_env_voidp_479" = bitcast %"$$fundef_114_env_223"* %"$$fundef_114_envp_477" to i8*
  %"$$fundef_114_cloval_480" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_114_env_223"*, %TName_Nat*)* @"$fundef_114" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_114_env_voidp_479", 1
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_114_cloval_480", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  %"$$fundef_114_env_fn_481" = getelementptr inbounds %"$$fundef_114_env_223", %"$$fundef_114_env_223"* %"$$fundef_114_envp_477", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_114_env_fn_481"
  %"$$fundef_114_env_g_482" = getelementptr inbounds %"$$fundef_114_env_223", %"$$fundef_114_env_223"* %"$$fundef_114_envp_477", i32 0, i32 1
  %"$g_483" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_483", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_114_env_g_482"
  %"$g_484" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_484", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_113"
  %"$$retval_113_485" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_113"
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_113_485"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_110"(%"$$fundef_110_env_225"* %0) {
entry:
  %"$retval_111" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$gasrem_458" = load i64, i64* @_gasrem
  %"$gascmp_459" = icmp ugt i64 1, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %entry
  %"$consume_462" = sub i64 %"$gasrem_458", 1
  store i64 %"$consume_462", i64* @_gasrem
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_112_env_224"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* @"$fundef_112" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*), i8* null }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_111"
  %"$$retval_111_466" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_111"
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_111_466"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_108"(%"$$fundef_108_env_226"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_108_env_f0_393" = getelementptr inbounds %"$$fundef_108_env_226", %"$$fundef_108_env_226"* %0, i32 0, i32 0
  %"$f0_envload_394" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_108_env_f0_393"
  %f0 = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_envload_394", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0
  %"$$fundef_108_env_fn_395" = getelementptr inbounds %"$$fundef_108_env_226", %"$$fundef_108_env_226"* %0, i32 0, i32 1
  %"$fn_envload_396" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_fn_395"
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_396", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn
  %"$$fundef_108_env_g_397" = getelementptr inbounds %"$$fundef_108_env_226", %"$$fundef_108_env_226"* %0, i32 0, i32 2
  %"$g_envload_398" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_g_397"
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_398", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  %"$retval_109" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_399" = load i64, i64* @_gasrem
  %"$gascmp_400" = icmp ugt i64 2, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %entry
  %"$consume_403" = sub i64 %"$gasrem_399", 2
  store i64 %"$consume_403", i64* @_gasrem
  %"$n_tag_405" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_406" = load i8, i8* %"$n_tag_405"
  switch i8 %"$n_tag_406", label %"$empty_default_407" [
    i8 1, label %"$Succ_408"
    i8 0, label %"$Zero_449"
  ]

"$Succ_408":                                      ; preds = %"$have_gas_402"
  %"$n_409" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_410" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_409", i32 0, i32 1
  %"$n1_load_411" = load %TName_Nat*, %TName_Nat** %"$n1_gep_410"
  %n1 = alloca %TName_Nat*
  store %TName_Nat* %"$n1_load_411", %TName_Nat** %n1
  %"$gasrem_412" = load i64, i64* @_gasrem
  %"$gascmp_413" = icmp ugt i64 1, %"$gasrem_412"
  br i1 %"$gascmp_413", label %"$out_of_gas_414", label %"$have_gas_415"

"$out_of_gas_414":                                ; preds = %"$Succ_408"
  call void @_out_of_gas()
  br label %"$have_gas_415"

"$have_gas_415":                                  ; preds = %"$out_of_gas_414", %"$Succ_408"
  %"$consume_416" = sub i64 %"$gasrem_412", 1
  store i64 %"$consume_416", i64* @_gasrem
  %res = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_417" = load i64, i64* @_gasrem
  %"$gascmp_418" = icmp ugt i64 1, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %"$have_gas_415"
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %"$have_gas_415"
  %"$consume_421" = sub i64 %"$gasrem_417", 1
  store i64 %"$consume_421", i64* @_gasrem
  %"$fn_18" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$fn_422" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn
  %"$fn_fptr_423" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_422", 0
  %"$fn_envptr_424" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_422", 1
  %"$f0_425" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0
  %"$fn_call_426" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_423"(i8* %"$fn_envptr_424", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_425")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_call_426", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_18"
  %"$fn_19" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$fn_18_427" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_18"
  %"$$fn_18_fptr_428" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_18_427", 0
  %"$$fn_18_envptr_429" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_18_427", 1
  %"$n1_430" = load %TName_Nat*, %TName_Nat** %n1
  %"$$fn_18_call_431" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_18_fptr_428"(i8* %"$$fn_18_envptr_429", %TName_Nat* %"$n1_430")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_18_call_431", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_19"
  %"$$fn_19_432" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_19"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_19_432", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res
  %"$gasrem_433" = load i64, i64* @_gasrem
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_420"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_420"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem
  %"$g_20" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$g_438" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  %"$g_fptr_439" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_438", 0
  %"$g_envptr_440" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_438", 1
  %"$res_441" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res
  %"$g_call_442" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_fptr_439"(i8* %"$g_envptr_440", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$res_441")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_call_442", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_20"
  %"$g_21" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$g_20_443" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_20"
  %"$$g_20_fptr_444" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_20_443", 0
  %"$$g_20_envptr_445" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_20_443", 1
  %"$n1_446" = load %TName_Nat*, %TName_Nat** %n1
  %"$$g_20_call_447" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_20_fptr_444"(i8* %"$$g_20_envptr_445", %TName_Nat* %"$n1_446")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_20_call_447", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_21"
  %"$$g_21_448" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_21"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_21_448", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_109"
  br label %"$matchsucc_404"

"$Zero_449":                                      ; preds = %"$have_gas_402"
  %"$n_450" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_451" = load i64, i64* @_gasrem
  %"$gascmp_452" = icmp ugt i64 1, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$Zero_449"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$Zero_449"
  %"$consume_455" = sub i64 %"$gasrem_451", 1
  store i64 %"$consume_455", i64* @_gasrem
  %"$f0_456" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_456", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_109"
  br label %"$matchsucc_404"

"$empty_default_407":                             ; preds = %"$have_gas_402"
  br label %"$matchsucc_404"

"$matchsucc_404":                                 ; preds = %"$have_gas_454", %"$have_gas_436", %"$empty_default_407"
  %"$$retval_109_457" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_109"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_109_457"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_106"(%"$$fundef_106_env_227"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_106_env_fn_374" = getelementptr inbounds %"$$fundef_106_env_227", %"$$fundef_106_env_227"* %0, i32 0, i32 0
  %"$fn_envload_375" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_fn_374"
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_375", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn
  %"$$fundef_106_env_g_376" = getelementptr inbounds %"$$fundef_106_env_227", %"$$fundef_106_env_227"* %0, i32 0, i32 1
  %"$g_envload_377" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_g_376"
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_377", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  %"$retval_107" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_378" = load i64, i64* @_gasrem
  %"$gascmp_379" = icmp ugt i64 1, %"$gasrem_378"
  br i1 %"$gascmp_379", label %"$out_of_gas_380", label %"$have_gas_381"

"$out_of_gas_380":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_381"

"$have_gas_381":                                  ; preds = %"$out_of_gas_380", %entry
  %"$consume_382" = sub i64 %"$gasrem_378", 1
  store i64 %"$consume_382", i64* @_gasrem
  %"$$fundef_108_envp_383_load" = load i8*, i8** @_execptr
  %"$$fundef_108_envp_383_salloc" = call i8* @_salloc(i8* %"$$fundef_108_envp_383_load", i64 48)
  %"$$fundef_108_envp_383" = bitcast i8* %"$$fundef_108_envp_383_salloc" to %"$$fundef_108_env_226"*
  %"$$fundef_108_env_voidp_385" = bitcast %"$$fundef_108_env_226"* %"$$fundef_108_envp_383" to i8*
  %"$$fundef_108_cloval_386" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_108_env_226"*, %TName_Nat*)* @"$fundef_108" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_108_env_voidp_385", 1
  %"$$fundef_108_env_f0_387" = getelementptr inbounds %"$$fundef_108_env_226", %"$$fundef_108_env_226"* %"$$fundef_108_envp_383", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_108_env_f0_387"
  %"$$fundef_108_env_fn_388" = getelementptr inbounds %"$$fundef_108_env_226", %"$$fundef_108_env_226"* %"$$fundef_108_envp_383", i32 0, i32 1
  %"$fn_389" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_389", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_fn_388"
  %"$$fundef_108_env_g_390" = getelementptr inbounds %"$$fundef_108_env_226", %"$$fundef_108_env_226"* %"$$fundef_108_envp_383", i32 0, i32 2
  %"$g_391" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_391", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_g_390"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_108_cloval_386", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_107"
  %"$$retval_107_392" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_107"
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_107_392"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_104"(%"$$fundef_104_env_228"* %0, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) {
entry:
  %"$retval_105" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$gasrem_355" = load i64, i64* @_gasrem
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %entry
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem
  %"$gasrem_360" = load i64, i64* @_gasrem
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_358"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem
  %"$$fundef_106_envp_365_load" = load i8*, i8** @_execptr
  %"$$fundef_106_envp_365_salloc" = call i8* @_salloc(i8* %"$$fundef_106_envp_365_load", i64 32)
  %"$$fundef_106_envp_365" = bitcast i8* %"$$fundef_106_envp_365_salloc" to %"$$fundef_106_env_227"*
  %"$$fundef_106_env_voidp_367" = bitcast %"$$fundef_106_env_227"* %"$$fundef_106_envp_365" to i8*
  %"$$fundef_106_cloval_368" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_106_env_227"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_106" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_106_env_voidp_367", 1
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_106_cloval_368", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  %"$$fundef_106_env_fn_369" = getelementptr inbounds %"$$fundef_106_env_227", %"$$fundef_106_env_227"* %"$$fundef_106_envp_365", i32 0, i32 0
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_fn_369"
  %"$$fundef_106_env_g_370" = getelementptr inbounds %"$$fundef_106_env_227", %"$$fundef_106_env_227"* %"$$fundef_106_envp_365", i32 0, i32 1
  %"$g_371" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_371", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_g_370"
  %"$g_372" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_372", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_105"
  %"$$retval_105_373" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_105"
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_105_373"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_102"(%"$$fundef_102_env_229"* %0) {
entry:
  %"$retval_103" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }
  %"$gasrem_346" = load i64, i64* @_gasrem
  %"$gascmp_347" = icmp ugt i64 1, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %entry
  %"$consume_350" = sub i64 %"$gasrem_346", 1
  store i64 %"$consume_350", i64* @_gasrem
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_104_env_228"*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_104" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_103"
  %"$$retval_103_354" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_103"
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_103_354"
}

define internal %Uint32 @"$fundef_100"(%"$$fundef_100_env_230"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_100_env_f0_281" = getelementptr inbounds %"$$fundef_100_env_230", %"$$fundef_100_env_230"* %0, i32 0, i32 0
  %"$f0_envload_282" = load %Uint32, %Uint32* %"$$fundef_100_env_f0_281"
  %f0 = alloca %Uint32
  store %Uint32 %"$f0_envload_282", %Uint32* %f0
  %"$$fundef_100_env_fn_283" = getelementptr inbounds %"$$fundef_100_env_230", %"$$fundef_100_env_230"* %0, i32 0, i32 1
  %"$fn_envload_284" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_fn_283"
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_284", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  %"$$fundef_100_env_g_285" = getelementptr inbounds %"$$fundef_100_env_230", %"$$fundef_100_env_230"* %0, i32 0, i32 2
  %"$g_envload_286" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_g_285"
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_286", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_101" = alloca %Uint32
  %"$gasrem_287" = load i64, i64* @_gasrem
  %"$gascmp_288" = icmp ugt i64 2, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %entry
  %"$consume_291" = sub i64 %"$gasrem_287", 2
  store i64 %"$consume_291", i64* @_gasrem
  %"$n_tag_293" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_294" = load i8, i8* %"$n_tag_293"
  switch i8 %"$n_tag_294", label %"$empty_default_295" [
    i8 1, label %"$Succ_296"
    i8 0, label %"$Zero_337"
  ]

"$Succ_296":                                      ; preds = %"$have_gas_290"
  %"$n_297" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_298" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_297", i32 0, i32 1
  %"$n1_load_299" = load %TName_Nat*, %TName_Nat** %"$n1_gep_298"
  %n1 = alloca %TName_Nat*
  store %TName_Nat* %"$n1_load_299", %TName_Nat** %n1
  %"$gasrem_300" = load i64, i64* @_gasrem
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$Succ_296"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$Succ_296"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem
  %res = alloca %Uint32
  %"$gasrem_305" = load i64, i64* @_gasrem
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_303"
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem
  %"$fn_18" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }
  %"$fn_310" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  %"$fn_fptr_311" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_310", 0
  %"$fn_envptr_312" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_310", 1
  %"$f0_313" = load %Uint32, %Uint32* %f0
  %"$fn_call_314" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_311"(i8* %"$fn_envptr_312", %Uint32 %"$f0_313")
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_call_314", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_18"
  %"$fn_19" = alloca %Uint32
  %"$$fn_18_315" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_18"
  %"$$fn_18_fptr_316" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_18_315", 0
  %"$$fn_18_envptr_317" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_18_315", 1
  %"$n1_318" = load %TName_Nat*, %TName_Nat** %n1
  %"$$fn_18_call_319" = call %Uint32 %"$$fn_18_fptr_316"(i8* %"$$fn_18_envptr_317", %TName_Nat* %"$n1_318")
  store %Uint32 %"$$fn_18_call_319", %Uint32* %"$fn_19"
  %"$$fn_19_320" = load %Uint32, %Uint32* %"$fn_19"
  store %Uint32 %"$$fn_19_320", %Uint32* %res
  %"$gasrem_321" = load i64, i64* @_gasrem
  %"$gascmp_322" = icmp ugt i64 1, %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %"$have_gas_308"
  %"$consume_325" = sub i64 %"$gasrem_321", 1
  store i64 %"$consume_325", i64* @_gasrem
  %"$g_20" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }
  %"$g_326" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_327" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_326", 0
  %"$g_envptr_328" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_326", 1
  %"$res_329" = load %Uint32, %Uint32* %res
  %"$g_call_330" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_fptr_327"(i8* %"$g_envptr_328", %Uint32 %"$res_329")
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_call_330", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_20"
  %"$g_21" = alloca %Uint32
  %"$$g_20_331" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_20"
  %"$$g_20_fptr_332" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_20_331", 0
  %"$$g_20_envptr_333" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_20_331", 1
  %"$n1_334" = load %TName_Nat*, %TName_Nat** %n1
  %"$$g_20_call_335" = call %Uint32 %"$$g_20_fptr_332"(i8* %"$$g_20_envptr_333", %TName_Nat* %"$n1_334")
  store %Uint32 %"$$g_20_call_335", %Uint32* %"$g_21"
  %"$$g_21_336" = load %Uint32, %Uint32* %"$g_21"
  store %Uint32 %"$$g_21_336", %Uint32* %"$retval_101"
  br label %"$matchsucc_292"

"$Zero_337":                                      ; preds = %"$have_gas_290"
  %"$n_338" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_339" = load i64, i64* @_gasrem
  %"$gascmp_340" = icmp ugt i64 1, %"$gasrem_339"
  br i1 %"$gascmp_340", label %"$out_of_gas_341", label %"$have_gas_342"

"$out_of_gas_341":                                ; preds = %"$Zero_337"
  call void @_out_of_gas()
  br label %"$have_gas_342"

"$have_gas_342":                                  ; preds = %"$out_of_gas_341", %"$Zero_337"
  %"$consume_343" = sub i64 %"$gasrem_339", 1
  store i64 %"$consume_343", i64* @_gasrem
  %"$f0_344" = load %Uint32, %Uint32* %f0
  store %Uint32 %"$f0_344", %Uint32* %"$retval_101"
  br label %"$matchsucc_292"

"$empty_default_295":                             ; preds = %"$have_gas_290"
  br label %"$matchsucc_292"

"$matchsucc_292":                                 ; preds = %"$have_gas_342", %"$have_gas_324", %"$empty_default_295"
  %"$$retval_101_345" = load %Uint32, %Uint32* %"$retval_101"
  ret %Uint32 %"$$retval_101_345"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_98"(%"$$fundef_98_env_231"* %0, %Uint32 %1) {
entry:
  %"$$fundef_98_env_fn_262" = getelementptr inbounds %"$$fundef_98_env_231", %"$$fundef_98_env_231"* %0, i32 0, i32 0
  %"$fn_envload_263" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_fn_262"
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_263", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  %"$$fundef_98_env_g_264" = getelementptr inbounds %"$$fundef_98_env_231", %"$$fundef_98_env_231"* %0, i32 0, i32 1
  %"$g_envload_265" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_g_264"
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_265", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_99" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_266" = load i64, i64* @_gasrem
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %entry
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem
  %"$$fundef_100_envp_271_load" = load i8*, i8** @_execptr
  %"$$fundef_100_envp_271_salloc" = call i8* @_salloc(i8* %"$$fundef_100_envp_271_load", i64 40)
  %"$$fundef_100_envp_271" = bitcast i8* %"$$fundef_100_envp_271_salloc" to %"$$fundef_100_env_230"*
  %"$$fundef_100_env_voidp_273" = bitcast %"$$fundef_100_env_230"* %"$$fundef_100_envp_271" to i8*
  %"$$fundef_100_cloval_274" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_100_env_230"*, %TName_Nat*)* @"$fundef_100" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_100_env_voidp_273", 1
  %"$$fundef_100_env_f0_275" = getelementptr inbounds %"$$fundef_100_env_230", %"$$fundef_100_env_230"* %"$$fundef_100_envp_271", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_100_env_f0_275"
  %"$$fundef_100_env_fn_276" = getelementptr inbounds %"$$fundef_100_env_230", %"$$fundef_100_env_230"* %"$$fundef_100_envp_271", i32 0, i32 1
  %"$fn_277" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_277", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_fn_276"
  %"$$fundef_100_env_g_278" = getelementptr inbounds %"$$fundef_100_env_230", %"$$fundef_100_env_230"* %"$$fundef_100_envp_271", i32 0, i32 2
  %"$g_279" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_279", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_g_278"
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_100_cloval_274", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_99"
  %"$$retval_99_280" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_99"
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_99_280"
}

define internal { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_96"(%"$$fundef_96_env_232"* %0, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_97" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$gasrem_243" = load i64, i64* @_gasrem
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %entry
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem
  %"$gasrem_248" = load i64, i64* @_gasrem
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_246"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem
  %"$$fundef_98_envp_253_load" = load i8*, i8** @_execptr
  %"$$fundef_98_envp_253_salloc" = call i8* @_salloc(i8* %"$$fundef_98_envp_253_load", i64 32)
  %"$$fundef_98_envp_253" = bitcast i8* %"$$fundef_98_envp_253_salloc" to %"$$fundef_98_env_231"*
  %"$$fundef_98_env_voidp_255" = bitcast %"$$fundef_98_env_231"* %"$$fundef_98_envp_253" to i8*
  %"$$fundef_98_cloval_256" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_98_env_231"*, %Uint32)* @"$fundef_98" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_98_env_voidp_255", 1
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_98_cloval_256", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_98_env_fn_257" = getelementptr inbounds %"$$fundef_98_env_231", %"$$fundef_98_env_231"* %"$$fundef_98_envp_253", i32 0, i32 0
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_fn_257"
  %"$$fundef_98_env_g_258" = getelementptr inbounds %"$$fundef_98_env_231", %"$$fundef_98_env_231"* %"$$fundef_98_envp_253", i32 0, i32 1
  %"$g_259" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_259", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_g_258"
  %"$g_260" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_260", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_97"
  %"$$retval_97_261" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_97"
  ret { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_97_261"
}

define internal { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_94"(%"$$fundef_94_env_233"* %0) {
entry:
  %"$retval_95" = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$gasrem_234" = load i64, i64* @_gasrem
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %entry
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_96_env_232"*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_96" to { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_95"
  %"$$retval_95_242" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_95"
  ret { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_95_242"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_1045"(i8* %0) {
entry:
  %"$gasrem_1046" = load i64, i64* @_gasrem
  %"$gascmp_1047" = icmp ugt i64 1, %"$gasrem_1046"
  br i1 %"$gascmp_1047", label %"$out_of_gas_1048", label %"$have_gas_1049"

"$out_of_gas_1048":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1049"

"$have_gas_1049":                                 ; preds = %"$out_of_gas_1048", %entry
  %"$consume_1050" = sub i64 %"$gasrem_1046", 1
  store i64 %"$consume_1050", i64* @_gasrem
  %"$dyndisp_table_1060_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_1060_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1060_salloc_load", i64 48)
  %"$dyndisp_table_1060_salloc" = bitcast i8* %"$dyndisp_table_1060_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1060" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1060_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1061" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1060", i32 0
  %"$dyndisp_pcast_1062" = bitcast { i8*, i8* }* %"$dyndisp_gep_1061" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_94_env_233"*)* @"$fundef_94" to { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1062"
  %"$dyndisp_gep_1063" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1060", i32 1
  %"$dyndisp_pcast_1064" = bitcast { i8*, i8* }* %"$dyndisp_gep_1063" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_102_env_229"*)* @"$fundef_102" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* null }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1064"
  %"$dyndisp_gep_1065" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1060", i32 2
  %"$dyndisp_pcast_1066" = bitcast { i8*, i8* }* %"$dyndisp_gep_1065" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_110_env_225"*)* @"$fundef_110" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1066"
  store { i8*, i8* }* %"$dyndisp_table_1060", { i8*, i8* }** @nat_fold
  %"$gasrem_1067" = load i64, i64* @_gasrem
  %"$gascmp_1068" = icmp ugt i64 1, %"$gasrem_1067"
  br i1 %"$gascmp_1068", label %"$out_of_gas_1069", label %"$have_gas_1070"

"$out_of_gas_1069":                               ; preds = %"$have_gas_1049"
  call void @_out_of_gas()
  br label %"$have_gas_1070"

"$have_gas_1070":                                 ; preds = %"$out_of_gas_1069", %"$have_gas_1049"
  %"$consume_1071" = sub i64 %"$gasrem_1067", 1
  store i64 %"$consume_1071", i64* @_gasrem
  %"$$fundef_118_envp_1072_load" = load i8*, i8** @_execptr
  %"$$fundef_118_envp_1072_salloc" = call i8* @_salloc(i8* %"$$fundef_118_envp_1072_load", i64 8)
  %"$$fundef_118_envp_1072" = bitcast i8* %"$$fundef_118_envp_1072_salloc" to %"$$fundef_118_env_221"*
  %"$$fundef_118_env_voidp_1074" = bitcast %"$$fundef_118_env_221"* %"$$fundef_118_envp_1072" to i8*
  %"$$fundef_118_cloval_1075" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_118_env_221"*, %TName_Nat*)* @"$fundef_118" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_118_env_voidp_1074", 1
  %"$$fundef_118_env_nat_fold_1076" = getelementptr inbounds %"$$fundef_118_env_221", %"$$fundef_118_env_221"* %"$$fundef_118_envp_1072", i32 0, i32 0
  %"$nat_fold_1077" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold
  store { i8*, i8* }* %"$nat_fold_1077", { i8*, i8* }** %"$$fundef_118_env_nat_fold_1076"
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_118_cloval_1075", { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$expr_124" = alloca %Uint32
  %"$gasrem_1078" = load i64, i64* @_gasrem
  %"$gascmp_1079" = icmp ugt i64 1, %"$gasrem_1078"
  br i1 %"$gascmp_1079", label %"$out_of_gas_1080", label %"$have_gas_1081"

"$out_of_gas_1080":                               ; preds = %"$have_gas_1070"
  call void @_out_of_gas()
  br label %"$have_gas_1081"

"$have_gas_1081":                                 ; preds = %"$out_of_gas_1080", %"$have_gas_1070"
  %"$consume_1082" = sub i64 %"$gasrem_1078", 1
  store i64 %"$consume_1082", i64* @_gasrem
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_1083" = load i64, i64* @_gasrem
  %"$gascmp_1084" = icmp ugt i64 1, %"$gasrem_1083"
  br i1 %"$gascmp_1084", label %"$out_of_gas_1085", label %"$have_gas_1086"

"$out_of_gas_1085":                               ; preds = %"$have_gas_1081"
  call void @_out_of_gas()
  br label %"$have_gas_1086"

"$have_gas_1086":                                 ; preds = %"$out_of_gas_1085", %"$have_gas_1081"
  %"$consume_1087" = sub i64 %"$gasrem_1083", 1
  store i64 %"$consume_1087", i64* @_gasrem
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_125_env_218"*, %TName_Nat*)* @"$fundef_125" to %TName_Nat* (i8*, %TName_Nat*)*), i8* null }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ
  %"$gasrem_1091" = load i64, i64* @_gasrem
  %"$gascmp_1092" = icmp ugt i64 1, %"$gasrem_1091"
  br i1 %"$gascmp_1092", label %"$out_of_gas_1093", label %"$have_gas_1094"

"$out_of_gas_1093":                               ; preds = %"$have_gas_1086"
  call void @_out_of_gas()
  br label %"$have_gas_1094"

"$have_gas_1094":                                 ; preds = %"$out_of_gas_1093", %"$have_gas_1086"
  %"$consume_1095" = sub i64 %"$gasrem_1091", 1
  store i64 %"$consume_1095", i64* @_gasrem
  %nat_iter = alloca { i8*, i8* }*
  %"$gasrem_1096" = load i64, i64* @_gasrem
  %"$gascmp_1097" = icmp ugt i64 1, %"$gasrem_1096"
  br i1 %"$gascmp_1097", label %"$out_of_gas_1098", label %"$have_gas_1099"

"$out_of_gas_1098":                               ; preds = %"$have_gas_1094"
  call void @_out_of_gas()
  br label %"$have_gas_1099"

"$have_gas_1099":                                 ; preds = %"$out_of_gas_1098", %"$have_gas_1094"
  %"$consume_1100" = sub i64 %"$gasrem_1096", 1
  store i64 %"$consume_1100", i64* @_gasrem
  %"$$fundef_127_envp_1101_load" = load i8*, i8** @_execptr
  %"$$fundef_127_envp_1101_salloc" = call i8* @_salloc(i8* %"$$fundef_127_envp_1101_load", i64 8)
  %"$$fundef_127_envp_1101" = bitcast i8* %"$$fundef_127_envp_1101_salloc" to %"$$fundef_127_env_217"*
  %"$$fundef_127_env_voidp_1103" = bitcast %"$$fundef_127_env_217"* %"$$fundef_127_envp_1101" to i8*
  %"$$fundef_127_cloval_1104" = insertvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_127_env_217"*)* @"$fundef_127" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_127_env_voidp_1103", 1
  %"$$fundef_127_env_nat_fold_1105" = getelementptr inbounds %"$$fundef_127_env_217", %"$$fundef_127_env_217"* %"$$fundef_127_envp_1101", i32 0, i32 0
  %"$nat_fold_1106" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold
  store { i8*, i8* }* %"$nat_fold_1106", { i8*, i8* }** %"$$fundef_127_env_nat_fold_1105"
  %"$$fundef_139_env_voidp_1108" = bitcast %"$$fundef_127_env_217"* %"$$fundef_127_envp_1101" to i8*
  %"$$fundef_139_cloval_1109" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_139_env_211"*)* @"$fundef_139" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_139_env_voidp_1108", 1
  %"$dyndisp_table_1110_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_1110_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1110_salloc_load", i64 48)
  %"$dyndisp_table_1110_salloc" = bitcast i8* %"$dyndisp_table_1110_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1110" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1110_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1111" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1110", i32 1
  %"$dyndisp_pcast_1112" = bitcast { i8*, i8* }* %"$dyndisp_gep_1111" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_127_cloval_1104", { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1112"
  %"$dyndisp_gep_1113" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1110", i32 2
  %"$dyndisp_pcast_1114" = bitcast { i8*, i8* }* %"$dyndisp_gep_1113" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_139_cloval_1109", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1114"
  store { i8*, i8* }* %"$dyndisp_table_1110", { i8*, i8* }** %nat_iter
  %"$gasrem_1115" = load i64, i64* @_gasrem
  %"$gascmp_1116" = icmp ugt i64 1, %"$gasrem_1115"
  br i1 %"$gascmp_1116", label %"$out_of_gas_1117", label %"$have_gas_1118"

"$out_of_gas_1117":                               ; preds = %"$have_gas_1099"
  call void @_out_of_gas()
  br label %"$have_gas_1118"

"$have_gas_1118":                                 ; preds = %"$out_of_gas_1117", %"$have_gas_1099"
  %"$consume_1119" = sub i64 %"$gasrem_1115", 1
  store i64 %"$consume_1119", i64* @_gasrem
  %ackermann = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$gasrem_1120" = load i64, i64* @_gasrem
  %"$gascmp_1121" = icmp ugt i64 1, %"$gasrem_1120"
  br i1 %"$gascmp_1121", label %"$out_of_gas_1122", label %"$have_gas_1123"

"$out_of_gas_1122":                               ; preds = %"$have_gas_1118"
  call void @_out_of_gas()
  br label %"$have_gas_1123"

"$have_gas_1123":                                 ; preds = %"$out_of_gas_1122", %"$have_gas_1118"
  %"$consume_1124" = sub i64 %"$gasrem_1120", 1
  store i64 %"$consume_1124", i64* @_gasrem
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$gasrem_1125" = load i64, i64* @_gasrem
  %"$gascmp_1126" = icmp ugt i64 1, %"$gasrem_1125"
  br i1 %"$gascmp_1126", label %"$out_of_gas_1127", label %"$have_gas_1128"

"$out_of_gas_1127":                               ; preds = %"$have_gas_1123"
  call void @_out_of_gas()
  br label %"$have_gas_1128"

"$have_gas_1128":                                 ; preds = %"$out_of_gas_1127", %"$have_gas_1123"
  %"$consume_1129" = sub i64 %"$gasrem_1125", 1
  store i64 %"$consume_1129", i64* @_gasrem
  %"$nat_iter_1130" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter
  %"$nat_iter_1131" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1130", i32 2
  %"$nat_iter_1132" = bitcast { i8*, i8* }* %"$nat_iter_1131" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1133" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1132"
  %"$nat_iter_fptr_1134" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1133", 0
  %"$nat_iter_envptr_1135" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1133", 1
  %"$nat_iter_call_1136" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_fptr_1134"(i8* %"$nat_iter_envptr_1135")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_call_1136", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat
  %"$gasrem_1137" = load i64, i64* @_gasrem
  %"$gascmp_1138" = icmp ugt i64 1, %"$gasrem_1137"
  br i1 %"$gascmp_1138", label %"$out_of_gas_1139", label %"$have_gas_1140"

"$out_of_gas_1139":                               ; preds = %"$have_gas_1128"
  call void @_out_of_gas()
  br label %"$have_gas_1140"

"$have_gas_1140":                                 ; preds = %"$out_of_gas_1139", %"$have_gas_1128"
  %"$consume_1141" = sub i64 %"$gasrem_1137", 1
  store i64 %"$consume_1141", i64* @_gasrem
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }
  %"$gasrem_1142" = load i64, i64* @_gasrem
  %"$gascmp_1143" = icmp ugt i64 1, %"$gasrem_1142"
  br i1 %"$gascmp_1143", label %"$out_of_gas_1144", label %"$have_gas_1145"

"$out_of_gas_1144":                               ; preds = %"$have_gas_1140"
  call void @_out_of_gas()
  br label %"$have_gas_1145"

"$have_gas_1145":                                 ; preds = %"$out_of_gas_1144", %"$have_gas_1140"
  %"$consume_1146" = sub i64 %"$gasrem_1142", 1
  store i64 %"$consume_1146", i64* @_gasrem
  %"$nat_iter_1147" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter
  %"$nat_iter_1148" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1147", i32 1
  %"$nat_iter_1149" = bitcast { i8*, i8* }* %"$nat_iter_1148" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1150" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1149"
  %"$nat_iter_fptr_1151" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1150", 0
  %"$nat_iter_envptr_1152" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1150", 1
  %"$nat_iter_call_1153" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_fptr_1151"(i8* %"$nat_iter_envptr_1152")
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_call_1153", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  %"$gasrem_1154" = load i64, i64* @_gasrem
  %"$gascmp_1155" = icmp ugt i64 1, %"$gasrem_1154"
  br i1 %"$gascmp_1155", label %"$out_of_gas_1156", label %"$have_gas_1157"

"$out_of_gas_1156":                               ; preds = %"$have_gas_1145"
  call void @_out_of_gas()
  br label %"$have_gas_1157"

"$have_gas_1157":                                 ; preds = %"$out_of_gas_1156", %"$have_gas_1145"
  %"$consume_1158" = sub i64 %"$gasrem_1154", 1
  store i64 %"$consume_1158", i64* @_gasrem
  %zero = alloca %TName_Nat*
  %"$gasrem_1159" = load i64, i64* @_gasrem
  %"$gascmp_1160" = icmp ugt i64 1, %"$gasrem_1159"
  br i1 %"$gascmp_1160", label %"$out_of_gas_1161", label %"$have_gas_1162"

"$out_of_gas_1161":                               ; preds = %"$have_gas_1157"
  call void @_out_of_gas()
  br label %"$have_gas_1162"

"$have_gas_1162":                                 ; preds = %"$out_of_gas_1161", %"$have_gas_1157"
  %"$consume_1163" = sub i64 %"$gasrem_1159", 1
  store i64 %"$consume_1163", i64* @_gasrem
  %"$adtval_1164_load" = load i8*, i8** @_execptr
  %"$adtval_1164_salloc" = call i8* @_salloc(i8* %"$adtval_1164_load", i64 1)
  %"$adtval_1164" = bitcast i8* %"$adtval_1164_salloc" to %CName_Zero*
  %"$adtgep_1165" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_1164", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1165"
  %"$adtptr_1166" = bitcast %CName_Zero* %"$adtval_1164" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1166", %TName_Nat** %zero
  %"$gasrem_1167" = load i64, i64* @_gasrem
  %"$gascmp_1168" = icmp ugt i64 1, %"$gasrem_1167"
  br i1 %"$gascmp_1168", label %"$out_of_gas_1169", label %"$have_gas_1170"

"$out_of_gas_1169":                               ; preds = %"$have_gas_1162"
  call void @_out_of_gas()
  br label %"$have_gas_1170"

"$have_gas_1170":                                 ; preds = %"$out_of_gas_1169", %"$have_gas_1162"
  %"$consume_1171" = sub i64 %"$gasrem_1167", 1
  store i64 %"$consume_1171", i64* @_gasrem
  %one = alloca %TName_Nat*
  %"$gasrem_1172" = load i64, i64* @_gasrem
  %"$gascmp_1173" = icmp ugt i64 1, %"$gasrem_1172"
  br i1 %"$gascmp_1173", label %"$out_of_gas_1174", label %"$have_gas_1175"

"$out_of_gas_1174":                               ; preds = %"$have_gas_1170"
  call void @_out_of_gas()
  br label %"$have_gas_1175"

"$have_gas_1175":                                 ; preds = %"$out_of_gas_1174", %"$have_gas_1170"
  %"$consume_1176" = sub i64 %"$gasrem_1172", 1
  store i64 %"$consume_1176", i64* @_gasrem
  %"$zero_1177" = load %TName_Nat*, %TName_Nat** %zero
  %"$adtval_1178_load" = load i8*, i8** @_execptr
  %"$adtval_1178_salloc" = call i8* @_salloc(i8* %"$adtval_1178_load", i64 9)
  %"$adtval_1178" = bitcast i8* %"$adtval_1178_salloc" to %CName_Succ*
  %"$adtgep_1179" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1178", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1179"
  %"$adtgep_1180" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1178", i32 0, i32 1
  store %TName_Nat* %"$zero_1177", %TName_Nat** %"$adtgep_1180"
  %"$adtptr_1181" = bitcast %CName_Succ* %"$adtval_1178" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1181", %TName_Nat** %one
  %"$gasrem_1182" = load i64, i64* @_gasrem
  %"$gascmp_1183" = icmp ugt i64 1, %"$gasrem_1182"
  br i1 %"$gascmp_1183", label %"$out_of_gas_1184", label %"$have_gas_1185"

"$out_of_gas_1184":                               ; preds = %"$have_gas_1175"
  call void @_out_of_gas()
  br label %"$have_gas_1185"

"$have_gas_1185":                                 ; preds = %"$out_of_gas_1184", %"$have_gas_1175"
  %"$consume_1186" = sub i64 %"$gasrem_1182", 1
  store i64 %"$consume_1186", i64* @_gasrem
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$gasrem_1187" = load i64, i64* @_gasrem
  %"$gascmp_1188" = icmp ugt i64 1, %"$gasrem_1187"
  br i1 %"$gascmp_1188", label %"$out_of_gas_1189", label %"$have_gas_1190"

"$out_of_gas_1189":                               ; preds = %"$have_gas_1185"
  call void @_out_of_gas()
  br label %"$have_gas_1190"

"$have_gas_1190":                                 ; preds = %"$out_of_gas_1189", %"$have_gas_1185"
  %"$consume_1191" = sub i64 %"$gasrem_1187", 1
  store i64 %"$consume_1191", i64* @_gasrem
  %"$$fundef_151_envp_1192_load" = load i8*, i8** @_execptr
  %"$$fundef_151_envp_1192_salloc" = call i8* @_salloc(i8* %"$$fundef_151_envp_1192_load", i64 24)
  %"$$fundef_151_envp_1192" = bitcast i8* %"$$fundef_151_envp_1192_salloc" to %"$$fundef_151_env_205"*
  %"$$fundef_151_env_voidp_1194" = bitcast %"$$fundef_151_env_205"* %"$$fundef_151_envp_1192" to i8*
  %"$$fundef_151_cloval_1195" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_151_env_205"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_151" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_151_env_voidp_1194", 1
  %"$$fundef_151_env_iter_nat_1196" = getelementptr inbounds %"$$fundef_151_env_205", %"$$fundef_151_env_205"* %"$$fundef_151_envp_1192", i32 0, i32 0
  %"$iter_nat_1197" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1197", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_151_env_iter_nat_1196"
  %"$$fundef_151_env_one_1198" = getelementptr inbounds %"$$fundef_151_env_205", %"$$fundef_151_env_205"* %"$$fundef_151_envp_1192", i32 0, i32 1
  %"$one_1199" = load %TName_Nat*, %TName_Nat** %one
  store %TName_Nat* %"$one_1199", %TName_Nat** %"$$fundef_151_env_one_1198"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_151_cloval_1195", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$gasrem_1200" = load i64, i64* @_gasrem
  %"$gascmp_1201" = icmp ugt i64 1, %"$gasrem_1200"
  br i1 %"$gascmp_1201", label %"$out_of_gas_1202", label %"$have_gas_1203"

"$out_of_gas_1202":                               ; preds = %"$have_gas_1190"
  call void @_out_of_gas()
  br label %"$have_gas_1203"

"$have_gas_1203":                                 ; preds = %"$out_of_gas_1202", %"$have_gas_1190"
  %"$consume_1204" = sub i64 %"$gasrem_1200", 1
  store i64 %"$consume_1204", i64* @_gasrem
  %"$$fundef_155_envp_1205_load" = load i8*, i8** @_execptr
  %"$$fundef_155_envp_1205_salloc" = call i8* @_salloc(i8* %"$$fundef_155_envp_1205_load", i64 48)
  %"$$fundef_155_envp_1205" = bitcast i8* %"$$fundef_155_envp_1205_salloc" to %"$$fundef_155_env_203"*
  %"$$fundef_155_env_voidp_1207" = bitcast %"$$fundef_155_env_203"* %"$$fundef_155_envp_1205" to i8*
  %"$$fundef_155_cloval_1208" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_155_env_203"*, %TName_Nat*)* @"$fundef_155" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_155_env_voidp_1207", 1
  %"$$fundef_155_env_f_1209" = getelementptr inbounds %"$$fundef_155_env_203", %"$$fundef_155_env_203"* %"$$fundef_155_envp_1205", i32 0, i32 0
  %"$f_1210" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1210", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_155_env_f_1209"
  %"$$fundef_155_env_iter_nat_nat_1211" = getelementptr inbounds %"$$fundef_155_env_203", %"$$fundef_155_env_203"* %"$$fundef_155_envp_1205", i32 0, i32 1
  %"$iter_nat_nat_1212" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1212", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_155_env_iter_nat_nat_1211"
  %"$$fundef_155_env_nat_succ_1213" = getelementptr inbounds %"$$fundef_155_env_203", %"$$fundef_155_env_203"* %"$$fundef_155_envp_1205", i32 0, i32 2
  %"$nat_succ_1214" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1214", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_155_env_nat_succ_1213"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_155_cloval_1208", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$gasrem_1215" = load i64, i64* @_gasrem
  %"$gascmp_1216" = icmp ugt i64 1, %"$gasrem_1215"
  br i1 %"$gascmp_1216", label %"$out_of_gas_1217", label %"$have_gas_1218"

"$out_of_gas_1217":                               ; preds = %"$have_gas_1203"
  call void @_out_of_gas()
  br label %"$have_gas_1218"

"$have_gas_1218":                                 ; preds = %"$out_of_gas_1217", %"$have_gas_1203"
  %"$consume_1219" = sub i64 %"$gasrem_1215", 1
  store i64 %"$consume_1219", i64* @_gasrem
  %uint0 = alloca %Uint32
  %"$gasrem_1220" = load i64, i64* @_gasrem
  %"$gascmp_1221" = icmp ugt i64 1, %"$gasrem_1220"
  br i1 %"$gascmp_1221", label %"$out_of_gas_1222", label %"$have_gas_1223"

"$out_of_gas_1222":                               ; preds = %"$have_gas_1218"
  call void @_out_of_gas()
  br label %"$have_gas_1223"

"$have_gas_1223":                                 ; preds = %"$out_of_gas_1222", %"$have_gas_1218"
  %"$consume_1224" = sub i64 %"$gasrem_1220", 1
  store i64 %"$consume_1224", i64* @_gasrem
  store %Uint32 zeroinitializer, %Uint32* %uint0
  %"$gasrem_1225" = load i64, i64* @_gasrem
  %"$gascmp_1226" = icmp ugt i64 1, %"$gasrem_1225"
  br i1 %"$gascmp_1226", label %"$out_of_gas_1227", label %"$have_gas_1228"

"$out_of_gas_1227":                               ; preds = %"$have_gas_1223"
  call void @_out_of_gas()
  br label %"$have_gas_1228"

"$have_gas_1228":                                 ; preds = %"$out_of_gas_1227", %"$have_gas_1223"
  %"$consume_1229" = sub i64 %"$gasrem_1225", 1
  store i64 %"$consume_1229", i64* @_gasrem
  %uint1 = alloca %Uint32
  %"$gasrem_1230" = load i64, i64* @_gasrem
  %"$gascmp_1231" = icmp ugt i64 1, %"$gasrem_1230"
  br i1 %"$gascmp_1231", label %"$out_of_gas_1232", label %"$have_gas_1233"

"$out_of_gas_1232":                               ; preds = %"$have_gas_1228"
  call void @_out_of_gas()
  br label %"$have_gas_1233"

"$have_gas_1233":                                 ; preds = %"$out_of_gas_1232", %"$have_gas_1228"
  %"$consume_1234" = sub i64 %"$gasrem_1230", 1
  store i64 %"$consume_1234", i64* @_gasrem
  store %Uint32 { i32 1 }, %Uint32* %uint1
  %"$gasrem_1235" = load i64, i64* @_gasrem
  %"$gascmp_1236" = icmp ugt i64 1, %"$gasrem_1235"
  br i1 %"$gascmp_1236", label %"$out_of_gas_1237", label %"$have_gas_1238"

"$out_of_gas_1237":                               ; preds = %"$have_gas_1233"
  call void @_out_of_gas()
  br label %"$have_gas_1238"

"$have_gas_1238":                                 ; preds = %"$out_of_gas_1237", %"$have_gas_1233"
  %"$consume_1239" = sub i64 %"$gasrem_1235", 1
  store i64 %"$consume_1239", i64* @_gasrem
  %uint2 = alloca %Uint32
  %"$gasrem_1240" = load i64, i64* @_gasrem
  %"$gascmp_1241" = icmp ugt i64 1, %"$gasrem_1240"
  br i1 %"$gascmp_1241", label %"$out_of_gas_1242", label %"$have_gas_1243"

"$out_of_gas_1242":                               ; preds = %"$have_gas_1238"
  call void @_out_of_gas()
  br label %"$have_gas_1243"

"$have_gas_1243":                                 ; preds = %"$out_of_gas_1242", %"$have_gas_1238"
  %"$consume_1244" = sub i64 %"$gasrem_1240", 1
  store i64 %"$consume_1244", i64* @_gasrem
  store %Uint32 { i32 2 }, %Uint32* %uint2
  %"$gasrem_1245" = load i64, i64* @_gasrem
  %"$gascmp_1246" = icmp ugt i64 1, %"$gasrem_1245"
  br i1 %"$gascmp_1246", label %"$out_of_gas_1247", label %"$have_gas_1248"

"$out_of_gas_1247":                               ; preds = %"$have_gas_1243"
  call void @_out_of_gas()
  br label %"$have_gas_1248"

"$have_gas_1248":                                 ; preds = %"$out_of_gas_1247", %"$have_gas_1243"
  %"$consume_1249" = sub i64 %"$gasrem_1245", 1
  store i64 %"$consume_1249", i64* @_gasrem
  %uint3 = alloca %Uint32
  %"$gasrem_1250" = load i64, i64* @_gasrem
  %"$gascmp_1251" = icmp ugt i64 1, %"$gasrem_1250"
  br i1 %"$gascmp_1251", label %"$out_of_gas_1252", label %"$have_gas_1253"

"$out_of_gas_1252":                               ; preds = %"$have_gas_1248"
  call void @_out_of_gas()
  br label %"$have_gas_1253"

"$have_gas_1253":                                 ; preds = %"$out_of_gas_1252", %"$have_gas_1248"
  %"$consume_1254" = sub i64 %"$gasrem_1250", 1
  store i64 %"$consume_1254", i64* @_gasrem
  store %Uint32 { i32 3 }, %Uint32* %uint3
  %"$gasrem_1255" = load i64, i64* @_gasrem
  %"$gascmp_1256" = icmp ugt i64 1, %"$gasrem_1255"
  br i1 %"$gascmp_1256", label %"$out_of_gas_1257", label %"$have_gas_1258"

"$out_of_gas_1257":                               ; preds = %"$have_gas_1253"
  call void @_out_of_gas()
  br label %"$have_gas_1258"

"$have_gas_1258":                                 ; preds = %"$out_of_gas_1257", %"$have_gas_1253"
  %"$consume_1259" = sub i64 %"$gasrem_1255", 1
  store i64 %"$consume_1259", i64* @_gasrem
  %uint4 = alloca %Uint32
  %"$gasrem_1260" = load i64, i64* @_gasrem
  %"$gascmp_1261" = icmp ugt i64 1, %"$gasrem_1260"
  br i1 %"$gascmp_1261", label %"$out_of_gas_1262", label %"$have_gas_1263"

"$out_of_gas_1262":                               ; preds = %"$have_gas_1258"
  call void @_out_of_gas()
  br label %"$have_gas_1263"

"$have_gas_1263":                                 ; preds = %"$out_of_gas_1262", %"$have_gas_1258"
  %"$consume_1264" = sub i64 %"$gasrem_1260", 1
  store i64 %"$consume_1264", i64* @_gasrem
  store %Uint32 { i32 4 }, %Uint32* %uint4
  %"$gasrem_1265" = load i64, i64* @_gasrem
  %"$gascmp_1266" = icmp ugt i64 1, %"$gasrem_1265"
  br i1 %"$gascmp_1266", label %"$out_of_gas_1267", label %"$have_gas_1268"

"$out_of_gas_1267":                               ; preds = %"$have_gas_1263"
  call void @_out_of_gas()
  br label %"$have_gas_1268"

"$have_gas_1268":                                 ; preds = %"$out_of_gas_1267", %"$have_gas_1263"
  %"$consume_1269" = sub i64 %"$gasrem_1265", 1
  store i64 %"$consume_1269", i64* @_gasrem
  %n0 = alloca %TName_Nat*
  %"$execptr_load_1270" = load i8*, i8** @_execptr
  %"$uint0_1271" = load %Uint32, %Uint32* %uint0
  %"$to_nat_call_1272" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1270", %Uint32 %"$uint0_1271")
  store %TName_Nat* %"$to_nat_call_1272", %TName_Nat** %n0
  %"$gasrem_1273" = load i64, i64* @_gasrem
  %"$gascmp_1274" = icmp ugt i64 1, %"$gasrem_1273"
  br i1 %"$gascmp_1274", label %"$out_of_gas_1275", label %"$have_gas_1276"

"$out_of_gas_1275":                               ; preds = %"$have_gas_1268"
  call void @_out_of_gas()
  br label %"$have_gas_1276"

"$have_gas_1276":                                 ; preds = %"$out_of_gas_1275", %"$have_gas_1268"
  %"$consume_1277" = sub i64 %"$gasrem_1273", 1
  store i64 %"$consume_1277", i64* @_gasrem
  %n1 = alloca %TName_Nat*
  %"$execptr_load_1278" = load i8*, i8** @_execptr
  %"$uint1_1279" = load %Uint32, %Uint32* %uint1
  %"$to_nat_call_1280" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1278", %Uint32 %"$uint1_1279")
  store %TName_Nat* %"$to_nat_call_1280", %TName_Nat** %n1
  %"$gasrem_1281" = load i64, i64* @_gasrem
  %"$gascmp_1282" = icmp ugt i64 1, %"$gasrem_1281"
  br i1 %"$gascmp_1282", label %"$out_of_gas_1283", label %"$have_gas_1284"

"$out_of_gas_1283":                               ; preds = %"$have_gas_1276"
  call void @_out_of_gas()
  br label %"$have_gas_1284"

"$have_gas_1284":                                 ; preds = %"$out_of_gas_1283", %"$have_gas_1276"
  %"$consume_1285" = sub i64 %"$gasrem_1281", 1
  store i64 %"$consume_1285", i64* @_gasrem
  %n2 = alloca %TName_Nat*
  %"$execptr_load_1286" = load i8*, i8** @_execptr
  %"$uint2_1287" = load %Uint32, %Uint32* %uint2
  %"$to_nat_call_1288" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1286", %Uint32 %"$uint2_1287")
  store %TName_Nat* %"$to_nat_call_1288", %TName_Nat** %n2
  %"$gasrem_1289" = load i64, i64* @_gasrem
  %"$gascmp_1290" = icmp ugt i64 1, %"$gasrem_1289"
  br i1 %"$gascmp_1290", label %"$out_of_gas_1291", label %"$have_gas_1292"

"$out_of_gas_1291":                               ; preds = %"$have_gas_1284"
  call void @_out_of_gas()
  br label %"$have_gas_1292"

"$have_gas_1292":                                 ; preds = %"$out_of_gas_1291", %"$have_gas_1284"
  %"$consume_1293" = sub i64 %"$gasrem_1289", 1
  store i64 %"$consume_1293", i64* @_gasrem
  %n3 = alloca %TName_Nat*
  %"$execptr_load_1294" = load i8*, i8** @_execptr
  %"$uint3_1295" = load %Uint32, %Uint32* %uint3
  %"$to_nat_call_1296" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1294", %Uint32 %"$uint3_1295")
  store %TName_Nat* %"$to_nat_call_1296", %TName_Nat** %n3
  %"$gasrem_1297" = load i64, i64* @_gasrem
  %"$gascmp_1298" = icmp ugt i64 1, %"$gasrem_1297"
  br i1 %"$gascmp_1298", label %"$out_of_gas_1299", label %"$have_gas_1300"

"$out_of_gas_1299":                               ; preds = %"$have_gas_1292"
  call void @_out_of_gas()
  br label %"$have_gas_1300"

"$have_gas_1300":                                 ; preds = %"$out_of_gas_1299", %"$have_gas_1292"
  %"$consume_1301" = sub i64 %"$gasrem_1297", 1
  store i64 %"$consume_1301", i64* @_gasrem
  %n4 = alloca %TName_Nat*
  %"$execptr_load_1302" = load i8*, i8** @_execptr
  %"$uint4_1303" = load %Uint32, %Uint32* %uint4
  %"$to_nat_call_1304" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1302", %Uint32 %"$uint4_1303")
  store %TName_Nat* %"$to_nat_call_1304", %TName_Nat** %n4
  %"$gasrem_1305" = load i64, i64* @_gasrem
  %"$gascmp_1306" = icmp ugt i64 1, %"$gasrem_1305"
  br i1 %"$gascmp_1306", label %"$out_of_gas_1307", label %"$have_gas_1308"

"$out_of_gas_1307":                               ; preds = %"$have_gas_1300"
  call void @_out_of_gas()
  br label %"$have_gas_1308"

"$have_gas_1308":                                 ; preds = %"$out_of_gas_1307", %"$have_gas_1300"
  %"$consume_1309" = sub i64 %"$gasrem_1305", 1
  store i64 %"$consume_1309", i64* @_gasrem
  %ack00 = alloca %TName_Nat*
  %"$gasrem_1310" = load i64, i64* @_gasrem
  %"$gascmp_1311" = icmp ugt i64 1, %"$gasrem_1310"
  br i1 %"$gascmp_1311", label %"$out_of_gas_1312", label %"$have_gas_1313"

"$out_of_gas_1312":                               ; preds = %"$have_gas_1308"
  call void @_out_of_gas()
  br label %"$have_gas_1313"

"$have_gas_1313":                                 ; preds = %"$out_of_gas_1312", %"$have_gas_1308"
  %"$consume_1314" = sub i64 %"$gasrem_1310", 1
  store i64 %"$consume_1314", i64* @_gasrem
  %"$ackermann_36" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1315" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1316" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1315", 0
  %"$ackermann_envptr_1317" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1315", 1
  %"$n0_1318" = load %TName_Nat*, %TName_Nat** %n0
  %"$ackermann_call_1319" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1316"(i8* %"$ackermann_envptr_1317", %TName_Nat* %"$n0_1318")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1319", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_36"
  %"$ackermann_37" = alloca %TName_Nat*
  %"$$ackermann_36_1320" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_36"
  %"$$ackermann_36_fptr_1321" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_36_1320", 0
  %"$$ackermann_36_envptr_1322" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_36_1320", 1
  %"$n0_1323" = load %TName_Nat*, %TName_Nat** %n0
  %"$$ackermann_36_call_1324" = call %TName_Nat* %"$$ackermann_36_fptr_1321"(i8* %"$$ackermann_36_envptr_1322", %TName_Nat* %"$n0_1323")
  store %TName_Nat* %"$$ackermann_36_call_1324", %TName_Nat** %"$ackermann_37"
  %"$$ackermann_37_1325" = load %TName_Nat*, %TName_Nat** %"$ackermann_37"
  store %TName_Nat* %"$$ackermann_37_1325", %TName_Nat** %ack00
  %"$gasrem_1326" = load i64, i64* @_gasrem
  %"$gascmp_1327" = icmp ugt i64 1, %"$gasrem_1326"
  br i1 %"$gascmp_1327", label %"$out_of_gas_1328", label %"$have_gas_1329"

"$out_of_gas_1328":                               ; preds = %"$have_gas_1313"
  call void @_out_of_gas()
  br label %"$have_gas_1329"

"$have_gas_1329":                                 ; preds = %"$out_of_gas_1328", %"$have_gas_1313"
  %"$consume_1330" = sub i64 %"$gasrem_1326", 1
  store i64 %"$consume_1330", i64* @_gasrem
  %"$gasrem_1331" = load i64, i64* @_gasrem
  %"$gascmp_1332" = icmp ugt i64 1, %"$gasrem_1331"
  br i1 %"$gascmp_1332", label %"$out_of_gas_1333", label %"$have_gas_1334"

"$out_of_gas_1333":                               ; preds = %"$have_gas_1329"
  call void @_out_of_gas()
  br label %"$have_gas_1334"

"$have_gas_1334":                                 ; preds = %"$out_of_gas_1333", %"$have_gas_1329"
  %"$consume_1335" = sub i64 %"$gasrem_1331", 1
  store i64 %"$consume_1335", i64* @_gasrem
  %ack02 = alloca %TName_Nat*
  %"$gasrem_1336" = load i64, i64* @_gasrem
  %"$gascmp_1337" = icmp ugt i64 1, %"$gasrem_1336"
  br i1 %"$gascmp_1337", label %"$out_of_gas_1338", label %"$have_gas_1339"

"$out_of_gas_1338":                               ; preds = %"$have_gas_1334"
  call void @_out_of_gas()
  br label %"$have_gas_1339"

"$have_gas_1339":                                 ; preds = %"$out_of_gas_1338", %"$have_gas_1334"
  %"$consume_1340" = sub i64 %"$gasrem_1336", 1
  store i64 %"$consume_1340", i64* @_gasrem
  %"$ackermann_38" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1341" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1342" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1341", 0
  %"$ackermann_envptr_1343" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1341", 1
  %"$n0_1344" = load %TName_Nat*, %TName_Nat** %n0
  %"$ackermann_call_1345" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1342"(i8* %"$ackermann_envptr_1343", %TName_Nat* %"$n0_1344")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1345", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_38"
  %"$ackermann_39" = alloca %TName_Nat*
  %"$$ackermann_38_1346" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_38"
  %"$$ackermann_38_fptr_1347" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_38_1346", 0
  %"$$ackermann_38_envptr_1348" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_38_1346", 1
  %"$n2_1349" = load %TName_Nat*, %TName_Nat** %n2
  %"$$ackermann_38_call_1350" = call %TName_Nat* %"$$ackermann_38_fptr_1347"(i8* %"$$ackermann_38_envptr_1348", %TName_Nat* %"$n2_1349")
  store %TName_Nat* %"$$ackermann_38_call_1350", %TName_Nat** %"$ackermann_39"
  %"$$ackermann_39_1351" = load %TName_Nat*, %TName_Nat** %"$ackermann_39"
  store %TName_Nat* %"$$ackermann_39_1351", %TName_Nat** %ack02
  %"$gasrem_1352" = load i64, i64* @_gasrem
  %"$gascmp_1353" = icmp ugt i64 1, %"$gasrem_1352"
  br i1 %"$gascmp_1353", label %"$out_of_gas_1354", label %"$have_gas_1355"

"$out_of_gas_1354":                               ; preds = %"$have_gas_1339"
  call void @_out_of_gas()
  br label %"$have_gas_1355"

"$have_gas_1355":                                 ; preds = %"$out_of_gas_1354", %"$have_gas_1339"
  %"$consume_1356" = sub i64 %"$gasrem_1352", 1
  store i64 %"$consume_1356", i64* @_gasrem
  %ack03 = alloca %TName_Nat*
  %"$gasrem_1357" = load i64, i64* @_gasrem
  %"$gascmp_1358" = icmp ugt i64 1, %"$gasrem_1357"
  br i1 %"$gascmp_1358", label %"$out_of_gas_1359", label %"$have_gas_1360"

"$out_of_gas_1359":                               ; preds = %"$have_gas_1355"
  call void @_out_of_gas()
  br label %"$have_gas_1360"

"$have_gas_1360":                                 ; preds = %"$out_of_gas_1359", %"$have_gas_1355"
  %"$consume_1361" = sub i64 %"$gasrem_1357", 1
  store i64 %"$consume_1361", i64* @_gasrem
  %"$ackermann_40" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1362" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1363" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1362", 0
  %"$ackermann_envptr_1364" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1362", 1
  %"$n0_1365" = load %TName_Nat*, %TName_Nat** %n0
  %"$ackermann_call_1366" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1363"(i8* %"$ackermann_envptr_1364", %TName_Nat* %"$n0_1365")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1366", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_40"
  %"$ackermann_41" = alloca %TName_Nat*
  %"$$ackermann_40_1367" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_40"
  %"$$ackermann_40_fptr_1368" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_40_1367", 0
  %"$$ackermann_40_envptr_1369" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_40_1367", 1
  %"$n3_1370" = load %TName_Nat*, %TName_Nat** %n3
  %"$$ackermann_40_call_1371" = call %TName_Nat* %"$$ackermann_40_fptr_1368"(i8* %"$$ackermann_40_envptr_1369", %TName_Nat* %"$n3_1370")
  store %TName_Nat* %"$$ackermann_40_call_1371", %TName_Nat** %"$ackermann_41"
  %"$$ackermann_41_1372" = load %TName_Nat*, %TName_Nat** %"$ackermann_41"
  store %TName_Nat* %"$$ackermann_41_1372", %TName_Nat** %ack03
  %"$gasrem_1373" = load i64, i64* @_gasrem
  %"$gascmp_1374" = icmp ugt i64 1, %"$gasrem_1373"
  br i1 %"$gascmp_1374", label %"$out_of_gas_1375", label %"$have_gas_1376"

"$out_of_gas_1375":                               ; preds = %"$have_gas_1360"
  call void @_out_of_gas()
  br label %"$have_gas_1376"

"$have_gas_1376":                                 ; preds = %"$out_of_gas_1375", %"$have_gas_1360"
  %"$consume_1377" = sub i64 %"$gasrem_1373", 1
  store i64 %"$consume_1377", i64* @_gasrem
  %ack04 = alloca %TName_Nat*
  %"$gasrem_1378" = load i64, i64* @_gasrem
  %"$gascmp_1379" = icmp ugt i64 1, %"$gasrem_1378"
  br i1 %"$gascmp_1379", label %"$out_of_gas_1380", label %"$have_gas_1381"

"$out_of_gas_1380":                               ; preds = %"$have_gas_1376"
  call void @_out_of_gas()
  br label %"$have_gas_1381"

"$have_gas_1381":                                 ; preds = %"$out_of_gas_1380", %"$have_gas_1376"
  %"$consume_1382" = sub i64 %"$gasrem_1378", 1
  store i64 %"$consume_1382", i64* @_gasrem
  %"$ackermann_42" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1383" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1384" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1383", 0
  %"$ackermann_envptr_1385" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1383", 1
  %"$n0_1386" = load %TName_Nat*, %TName_Nat** %n0
  %"$ackermann_call_1387" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1384"(i8* %"$ackermann_envptr_1385", %TName_Nat* %"$n0_1386")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1387", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_42"
  %"$ackermann_43" = alloca %TName_Nat*
  %"$$ackermann_42_1388" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_42"
  %"$$ackermann_42_fptr_1389" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_42_1388", 0
  %"$$ackermann_42_envptr_1390" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_42_1388", 1
  %"$n4_1391" = load %TName_Nat*, %TName_Nat** %n4
  %"$$ackermann_42_call_1392" = call %TName_Nat* %"$$ackermann_42_fptr_1389"(i8* %"$$ackermann_42_envptr_1390", %TName_Nat* %"$n4_1391")
  store %TName_Nat* %"$$ackermann_42_call_1392", %TName_Nat** %"$ackermann_43"
  %"$$ackermann_43_1393" = load %TName_Nat*, %TName_Nat** %"$ackermann_43"
  store %TName_Nat* %"$$ackermann_43_1393", %TName_Nat** %ack04
  %"$gasrem_1394" = load i64, i64* @_gasrem
  %"$gascmp_1395" = icmp ugt i64 1, %"$gasrem_1394"
  br i1 %"$gascmp_1395", label %"$out_of_gas_1396", label %"$have_gas_1397"

"$out_of_gas_1396":                               ; preds = %"$have_gas_1381"
  call void @_out_of_gas()
  br label %"$have_gas_1397"

"$have_gas_1397":                                 ; preds = %"$out_of_gas_1396", %"$have_gas_1381"
  %"$consume_1398" = sub i64 %"$gasrem_1394", 1
  store i64 %"$consume_1398", i64* @_gasrem
  %ack10 = alloca %TName_Nat*
  %"$gasrem_1399" = load i64, i64* @_gasrem
  %"$gascmp_1400" = icmp ugt i64 1, %"$gasrem_1399"
  br i1 %"$gascmp_1400", label %"$out_of_gas_1401", label %"$have_gas_1402"

"$out_of_gas_1401":                               ; preds = %"$have_gas_1397"
  call void @_out_of_gas()
  br label %"$have_gas_1402"

"$have_gas_1402":                                 ; preds = %"$out_of_gas_1401", %"$have_gas_1397"
  %"$consume_1403" = sub i64 %"$gasrem_1399", 1
  store i64 %"$consume_1403", i64* @_gasrem
  %"$ackermann_44" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1404" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1405" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1404", 0
  %"$ackermann_envptr_1406" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1404", 1
  %"$n1_1407" = load %TName_Nat*, %TName_Nat** %n1
  %"$ackermann_call_1408" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1405"(i8* %"$ackermann_envptr_1406", %TName_Nat* %"$n1_1407")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1408", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_44"
  %"$ackermann_45" = alloca %TName_Nat*
  %"$$ackermann_44_1409" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_44"
  %"$$ackermann_44_fptr_1410" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_44_1409", 0
  %"$$ackermann_44_envptr_1411" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_44_1409", 1
  %"$n0_1412" = load %TName_Nat*, %TName_Nat** %n0
  %"$$ackermann_44_call_1413" = call %TName_Nat* %"$$ackermann_44_fptr_1410"(i8* %"$$ackermann_44_envptr_1411", %TName_Nat* %"$n0_1412")
  store %TName_Nat* %"$$ackermann_44_call_1413", %TName_Nat** %"$ackermann_45"
  %"$$ackermann_45_1414" = load %TName_Nat*, %TName_Nat** %"$ackermann_45"
  store %TName_Nat* %"$$ackermann_45_1414", %TName_Nat** %ack10
  %"$gasrem_1415" = load i64, i64* @_gasrem
  %"$gascmp_1416" = icmp ugt i64 1, %"$gasrem_1415"
  br i1 %"$gascmp_1416", label %"$out_of_gas_1417", label %"$have_gas_1418"

"$out_of_gas_1417":                               ; preds = %"$have_gas_1402"
  call void @_out_of_gas()
  br label %"$have_gas_1418"

"$have_gas_1418":                                 ; preds = %"$out_of_gas_1417", %"$have_gas_1402"
  %"$consume_1419" = sub i64 %"$gasrem_1415", 1
  store i64 %"$consume_1419", i64* @_gasrem
  %ack11 = alloca %TName_Nat*
  %"$gasrem_1420" = load i64, i64* @_gasrem
  %"$gascmp_1421" = icmp ugt i64 1, %"$gasrem_1420"
  br i1 %"$gascmp_1421", label %"$out_of_gas_1422", label %"$have_gas_1423"

"$out_of_gas_1422":                               ; preds = %"$have_gas_1418"
  call void @_out_of_gas()
  br label %"$have_gas_1423"

"$have_gas_1423":                                 ; preds = %"$out_of_gas_1422", %"$have_gas_1418"
  %"$consume_1424" = sub i64 %"$gasrem_1420", 1
  store i64 %"$consume_1424", i64* @_gasrem
  %"$ackermann_46" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1425" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1426" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1425", 0
  %"$ackermann_envptr_1427" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1425", 1
  %"$n1_1428" = load %TName_Nat*, %TName_Nat** %n1
  %"$ackermann_call_1429" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1426"(i8* %"$ackermann_envptr_1427", %TName_Nat* %"$n1_1428")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1429", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_46"
  %"$ackermann_47" = alloca %TName_Nat*
  %"$$ackermann_46_1430" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_46"
  %"$$ackermann_46_fptr_1431" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_46_1430", 0
  %"$$ackermann_46_envptr_1432" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_46_1430", 1
  %"$n1_1433" = load %TName_Nat*, %TName_Nat** %n1
  %"$$ackermann_46_call_1434" = call %TName_Nat* %"$$ackermann_46_fptr_1431"(i8* %"$$ackermann_46_envptr_1432", %TName_Nat* %"$n1_1433")
  store %TName_Nat* %"$$ackermann_46_call_1434", %TName_Nat** %"$ackermann_47"
  %"$$ackermann_47_1435" = load %TName_Nat*, %TName_Nat** %"$ackermann_47"
  store %TName_Nat* %"$$ackermann_47_1435", %TName_Nat** %ack11
  %"$gasrem_1436" = load i64, i64* @_gasrem
  %"$gascmp_1437" = icmp ugt i64 1, %"$gasrem_1436"
  br i1 %"$gascmp_1437", label %"$out_of_gas_1438", label %"$have_gas_1439"

"$out_of_gas_1438":                               ; preds = %"$have_gas_1423"
  call void @_out_of_gas()
  br label %"$have_gas_1439"

"$have_gas_1439":                                 ; preds = %"$out_of_gas_1438", %"$have_gas_1423"
  %"$consume_1440" = sub i64 %"$gasrem_1436", 1
  store i64 %"$consume_1440", i64* @_gasrem
  %ack12 = alloca %TName_Nat*
  %"$gasrem_1441" = load i64, i64* @_gasrem
  %"$gascmp_1442" = icmp ugt i64 1, %"$gasrem_1441"
  br i1 %"$gascmp_1442", label %"$out_of_gas_1443", label %"$have_gas_1444"

"$out_of_gas_1443":                               ; preds = %"$have_gas_1439"
  call void @_out_of_gas()
  br label %"$have_gas_1444"

"$have_gas_1444":                                 ; preds = %"$out_of_gas_1443", %"$have_gas_1439"
  %"$consume_1445" = sub i64 %"$gasrem_1441", 1
  store i64 %"$consume_1445", i64* @_gasrem
  %"$ackermann_48" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1446" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1447" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1446", 0
  %"$ackermann_envptr_1448" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1446", 1
  %"$n1_1449" = load %TName_Nat*, %TName_Nat** %n1
  %"$ackermann_call_1450" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1447"(i8* %"$ackermann_envptr_1448", %TName_Nat* %"$n1_1449")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1450", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_48"
  %"$ackermann_49" = alloca %TName_Nat*
  %"$$ackermann_48_1451" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_48"
  %"$$ackermann_48_fptr_1452" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_48_1451", 0
  %"$$ackermann_48_envptr_1453" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_48_1451", 1
  %"$n2_1454" = load %TName_Nat*, %TName_Nat** %n2
  %"$$ackermann_48_call_1455" = call %TName_Nat* %"$$ackermann_48_fptr_1452"(i8* %"$$ackermann_48_envptr_1453", %TName_Nat* %"$n2_1454")
  store %TName_Nat* %"$$ackermann_48_call_1455", %TName_Nat** %"$ackermann_49"
  %"$$ackermann_49_1456" = load %TName_Nat*, %TName_Nat** %"$ackermann_49"
  store %TName_Nat* %"$$ackermann_49_1456", %TName_Nat** %ack12
  %"$gasrem_1457" = load i64, i64* @_gasrem
  %"$gascmp_1458" = icmp ugt i64 1, %"$gasrem_1457"
  br i1 %"$gascmp_1458", label %"$out_of_gas_1459", label %"$have_gas_1460"

"$out_of_gas_1459":                               ; preds = %"$have_gas_1444"
  call void @_out_of_gas()
  br label %"$have_gas_1460"

"$have_gas_1460":                                 ; preds = %"$out_of_gas_1459", %"$have_gas_1444"
  %"$consume_1461" = sub i64 %"$gasrem_1457", 1
  store i64 %"$consume_1461", i64* @_gasrem
  %ack13 = alloca %TName_Nat*
  %"$gasrem_1462" = load i64, i64* @_gasrem
  %"$gascmp_1463" = icmp ugt i64 1, %"$gasrem_1462"
  br i1 %"$gascmp_1463", label %"$out_of_gas_1464", label %"$have_gas_1465"

"$out_of_gas_1464":                               ; preds = %"$have_gas_1460"
  call void @_out_of_gas()
  br label %"$have_gas_1465"

"$have_gas_1465":                                 ; preds = %"$out_of_gas_1464", %"$have_gas_1460"
  %"$consume_1466" = sub i64 %"$gasrem_1462", 1
  store i64 %"$consume_1466", i64* @_gasrem
  %"$ackermann_50" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1467" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1468" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1467", 0
  %"$ackermann_envptr_1469" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1467", 1
  %"$n1_1470" = load %TName_Nat*, %TName_Nat** %n1
  %"$ackermann_call_1471" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1468"(i8* %"$ackermann_envptr_1469", %TName_Nat* %"$n1_1470")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1471", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_50"
  %"$ackermann_51" = alloca %TName_Nat*
  %"$$ackermann_50_1472" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_50"
  %"$$ackermann_50_fptr_1473" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_50_1472", 0
  %"$$ackermann_50_envptr_1474" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_50_1472", 1
  %"$n3_1475" = load %TName_Nat*, %TName_Nat** %n3
  %"$$ackermann_50_call_1476" = call %TName_Nat* %"$$ackermann_50_fptr_1473"(i8* %"$$ackermann_50_envptr_1474", %TName_Nat* %"$n3_1475")
  store %TName_Nat* %"$$ackermann_50_call_1476", %TName_Nat** %"$ackermann_51"
  %"$$ackermann_51_1477" = load %TName_Nat*, %TName_Nat** %"$ackermann_51"
  store %TName_Nat* %"$$ackermann_51_1477", %TName_Nat** %ack13
  %"$gasrem_1478" = load i64, i64* @_gasrem
  %"$gascmp_1479" = icmp ugt i64 1, %"$gasrem_1478"
  br i1 %"$gascmp_1479", label %"$out_of_gas_1480", label %"$have_gas_1481"

"$out_of_gas_1480":                               ; preds = %"$have_gas_1465"
  call void @_out_of_gas()
  br label %"$have_gas_1481"

"$have_gas_1481":                                 ; preds = %"$out_of_gas_1480", %"$have_gas_1465"
  %"$consume_1482" = sub i64 %"$gasrem_1478", 1
  store i64 %"$consume_1482", i64* @_gasrem
  %ack14 = alloca %TName_Nat*
  %"$gasrem_1483" = load i64, i64* @_gasrem
  %"$gascmp_1484" = icmp ugt i64 1, %"$gasrem_1483"
  br i1 %"$gascmp_1484", label %"$out_of_gas_1485", label %"$have_gas_1486"

"$out_of_gas_1485":                               ; preds = %"$have_gas_1481"
  call void @_out_of_gas()
  br label %"$have_gas_1486"

"$have_gas_1486":                                 ; preds = %"$out_of_gas_1485", %"$have_gas_1481"
  %"$consume_1487" = sub i64 %"$gasrem_1483", 1
  store i64 %"$consume_1487", i64* @_gasrem
  %"$ackermann_52" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1488" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1489" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1488", 0
  %"$ackermann_envptr_1490" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1488", 1
  %"$n1_1491" = load %TName_Nat*, %TName_Nat** %n1
  %"$ackermann_call_1492" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1489"(i8* %"$ackermann_envptr_1490", %TName_Nat* %"$n1_1491")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1492", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_52"
  %"$ackermann_53" = alloca %TName_Nat*
  %"$$ackermann_52_1493" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_52"
  %"$$ackermann_52_fptr_1494" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_52_1493", 0
  %"$$ackermann_52_envptr_1495" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_52_1493", 1
  %"$n4_1496" = load %TName_Nat*, %TName_Nat** %n4
  %"$$ackermann_52_call_1497" = call %TName_Nat* %"$$ackermann_52_fptr_1494"(i8* %"$$ackermann_52_envptr_1495", %TName_Nat* %"$n4_1496")
  store %TName_Nat* %"$$ackermann_52_call_1497", %TName_Nat** %"$ackermann_53"
  %"$$ackermann_53_1498" = load %TName_Nat*, %TName_Nat** %"$ackermann_53"
  store %TName_Nat* %"$$ackermann_53_1498", %TName_Nat** %ack14
  %"$gasrem_1499" = load i64, i64* @_gasrem
  %"$gascmp_1500" = icmp ugt i64 1, %"$gasrem_1499"
  br i1 %"$gascmp_1500", label %"$out_of_gas_1501", label %"$have_gas_1502"

"$out_of_gas_1501":                               ; preds = %"$have_gas_1486"
  call void @_out_of_gas()
  br label %"$have_gas_1502"

"$have_gas_1502":                                 ; preds = %"$out_of_gas_1501", %"$have_gas_1486"
  %"$consume_1503" = sub i64 %"$gasrem_1499", 1
  store i64 %"$consume_1503", i64* @_gasrem
  %ack20 = alloca %TName_Nat*
  %"$gasrem_1504" = load i64, i64* @_gasrem
  %"$gascmp_1505" = icmp ugt i64 1, %"$gasrem_1504"
  br i1 %"$gascmp_1505", label %"$out_of_gas_1506", label %"$have_gas_1507"

"$out_of_gas_1506":                               ; preds = %"$have_gas_1502"
  call void @_out_of_gas()
  br label %"$have_gas_1507"

"$have_gas_1507":                                 ; preds = %"$out_of_gas_1506", %"$have_gas_1502"
  %"$consume_1508" = sub i64 %"$gasrem_1504", 1
  store i64 %"$consume_1508", i64* @_gasrem
  %"$ackermann_54" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1509" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1510" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1509", 0
  %"$ackermann_envptr_1511" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1509", 1
  %"$n2_1512" = load %TName_Nat*, %TName_Nat** %n2
  %"$ackermann_call_1513" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1510"(i8* %"$ackermann_envptr_1511", %TName_Nat* %"$n2_1512")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1513", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_54"
  %"$ackermann_55" = alloca %TName_Nat*
  %"$$ackermann_54_1514" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_54"
  %"$$ackermann_54_fptr_1515" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_54_1514", 0
  %"$$ackermann_54_envptr_1516" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_54_1514", 1
  %"$n0_1517" = load %TName_Nat*, %TName_Nat** %n0
  %"$$ackermann_54_call_1518" = call %TName_Nat* %"$$ackermann_54_fptr_1515"(i8* %"$$ackermann_54_envptr_1516", %TName_Nat* %"$n0_1517")
  store %TName_Nat* %"$$ackermann_54_call_1518", %TName_Nat** %"$ackermann_55"
  %"$$ackermann_55_1519" = load %TName_Nat*, %TName_Nat** %"$ackermann_55"
  store %TName_Nat* %"$$ackermann_55_1519", %TName_Nat** %ack20
  %"$gasrem_1520" = load i64, i64* @_gasrem
  %"$gascmp_1521" = icmp ugt i64 1, %"$gasrem_1520"
  br i1 %"$gascmp_1521", label %"$out_of_gas_1522", label %"$have_gas_1523"

"$out_of_gas_1522":                               ; preds = %"$have_gas_1507"
  call void @_out_of_gas()
  br label %"$have_gas_1523"

"$have_gas_1523":                                 ; preds = %"$out_of_gas_1522", %"$have_gas_1507"
  %"$consume_1524" = sub i64 %"$gasrem_1520", 1
  store i64 %"$consume_1524", i64* @_gasrem
  %ack21 = alloca %TName_Nat*
  %"$gasrem_1525" = load i64, i64* @_gasrem
  %"$gascmp_1526" = icmp ugt i64 1, %"$gasrem_1525"
  br i1 %"$gascmp_1526", label %"$out_of_gas_1527", label %"$have_gas_1528"

"$out_of_gas_1527":                               ; preds = %"$have_gas_1523"
  call void @_out_of_gas()
  br label %"$have_gas_1528"

"$have_gas_1528":                                 ; preds = %"$out_of_gas_1527", %"$have_gas_1523"
  %"$consume_1529" = sub i64 %"$gasrem_1525", 1
  store i64 %"$consume_1529", i64* @_gasrem
  %"$ackermann_56" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1530" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1531" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1530", 0
  %"$ackermann_envptr_1532" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1530", 1
  %"$n2_1533" = load %TName_Nat*, %TName_Nat** %n2
  %"$ackermann_call_1534" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1531"(i8* %"$ackermann_envptr_1532", %TName_Nat* %"$n2_1533")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1534", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_56"
  %"$ackermann_57" = alloca %TName_Nat*
  %"$$ackermann_56_1535" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_56"
  %"$$ackermann_56_fptr_1536" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_56_1535", 0
  %"$$ackermann_56_envptr_1537" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_56_1535", 1
  %"$n1_1538" = load %TName_Nat*, %TName_Nat** %n1
  %"$$ackermann_56_call_1539" = call %TName_Nat* %"$$ackermann_56_fptr_1536"(i8* %"$$ackermann_56_envptr_1537", %TName_Nat* %"$n1_1538")
  store %TName_Nat* %"$$ackermann_56_call_1539", %TName_Nat** %"$ackermann_57"
  %"$$ackermann_57_1540" = load %TName_Nat*, %TName_Nat** %"$ackermann_57"
  store %TName_Nat* %"$$ackermann_57_1540", %TName_Nat** %ack21
  %"$gasrem_1541" = load i64, i64* @_gasrem
  %"$gascmp_1542" = icmp ugt i64 1, %"$gasrem_1541"
  br i1 %"$gascmp_1542", label %"$out_of_gas_1543", label %"$have_gas_1544"

"$out_of_gas_1543":                               ; preds = %"$have_gas_1528"
  call void @_out_of_gas()
  br label %"$have_gas_1544"

"$have_gas_1544":                                 ; preds = %"$out_of_gas_1543", %"$have_gas_1528"
  %"$consume_1545" = sub i64 %"$gasrem_1541", 1
  store i64 %"$consume_1545", i64* @_gasrem
  %ack22 = alloca %TName_Nat*
  %"$gasrem_1546" = load i64, i64* @_gasrem
  %"$gascmp_1547" = icmp ugt i64 1, %"$gasrem_1546"
  br i1 %"$gascmp_1547", label %"$out_of_gas_1548", label %"$have_gas_1549"

"$out_of_gas_1548":                               ; preds = %"$have_gas_1544"
  call void @_out_of_gas()
  br label %"$have_gas_1549"

"$have_gas_1549":                                 ; preds = %"$out_of_gas_1548", %"$have_gas_1544"
  %"$consume_1550" = sub i64 %"$gasrem_1546", 1
  store i64 %"$consume_1550", i64* @_gasrem
  %"$ackermann_58" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1551" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1552" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1551", 0
  %"$ackermann_envptr_1553" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1551", 1
  %"$n2_1554" = load %TName_Nat*, %TName_Nat** %n2
  %"$ackermann_call_1555" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1552"(i8* %"$ackermann_envptr_1553", %TName_Nat* %"$n2_1554")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1555", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_58"
  %"$ackermann_59" = alloca %TName_Nat*
  %"$$ackermann_58_1556" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_58"
  %"$$ackermann_58_fptr_1557" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_58_1556", 0
  %"$$ackermann_58_envptr_1558" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_58_1556", 1
  %"$n2_1559" = load %TName_Nat*, %TName_Nat** %n2
  %"$$ackermann_58_call_1560" = call %TName_Nat* %"$$ackermann_58_fptr_1557"(i8* %"$$ackermann_58_envptr_1558", %TName_Nat* %"$n2_1559")
  store %TName_Nat* %"$$ackermann_58_call_1560", %TName_Nat** %"$ackermann_59"
  %"$$ackermann_59_1561" = load %TName_Nat*, %TName_Nat** %"$ackermann_59"
  store %TName_Nat* %"$$ackermann_59_1561", %TName_Nat** %ack22
  %"$gasrem_1562" = load i64, i64* @_gasrem
  %"$gascmp_1563" = icmp ugt i64 1, %"$gasrem_1562"
  br i1 %"$gascmp_1563", label %"$out_of_gas_1564", label %"$have_gas_1565"

"$out_of_gas_1564":                               ; preds = %"$have_gas_1549"
  call void @_out_of_gas()
  br label %"$have_gas_1565"

"$have_gas_1565":                                 ; preds = %"$out_of_gas_1564", %"$have_gas_1549"
  %"$consume_1566" = sub i64 %"$gasrem_1562", 1
  store i64 %"$consume_1566", i64* @_gasrem
  %ack23 = alloca %TName_Nat*
  %"$gasrem_1567" = load i64, i64* @_gasrem
  %"$gascmp_1568" = icmp ugt i64 1, %"$gasrem_1567"
  br i1 %"$gascmp_1568", label %"$out_of_gas_1569", label %"$have_gas_1570"

"$out_of_gas_1569":                               ; preds = %"$have_gas_1565"
  call void @_out_of_gas()
  br label %"$have_gas_1570"

"$have_gas_1570":                                 ; preds = %"$out_of_gas_1569", %"$have_gas_1565"
  %"$consume_1571" = sub i64 %"$gasrem_1567", 1
  store i64 %"$consume_1571", i64* @_gasrem
  %"$ackermann_60" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1572" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1573" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1572", 0
  %"$ackermann_envptr_1574" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1572", 1
  %"$n2_1575" = load %TName_Nat*, %TName_Nat** %n2
  %"$ackermann_call_1576" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1573"(i8* %"$ackermann_envptr_1574", %TName_Nat* %"$n2_1575")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1576", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_60"
  %"$ackermann_61" = alloca %TName_Nat*
  %"$$ackermann_60_1577" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_60"
  %"$$ackermann_60_fptr_1578" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_60_1577", 0
  %"$$ackermann_60_envptr_1579" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_60_1577", 1
  %"$n3_1580" = load %TName_Nat*, %TName_Nat** %n3
  %"$$ackermann_60_call_1581" = call %TName_Nat* %"$$ackermann_60_fptr_1578"(i8* %"$$ackermann_60_envptr_1579", %TName_Nat* %"$n3_1580")
  store %TName_Nat* %"$$ackermann_60_call_1581", %TName_Nat** %"$ackermann_61"
  %"$$ackermann_61_1582" = load %TName_Nat*, %TName_Nat** %"$ackermann_61"
  store %TName_Nat* %"$$ackermann_61_1582", %TName_Nat** %ack23
  %"$gasrem_1583" = load i64, i64* @_gasrem
  %"$gascmp_1584" = icmp ugt i64 1, %"$gasrem_1583"
  br i1 %"$gascmp_1584", label %"$out_of_gas_1585", label %"$have_gas_1586"

"$out_of_gas_1585":                               ; preds = %"$have_gas_1570"
  call void @_out_of_gas()
  br label %"$have_gas_1586"

"$have_gas_1586":                                 ; preds = %"$out_of_gas_1585", %"$have_gas_1570"
  %"$consume_1587" = sub i64 %"$gasrem_1583", 1
  store i64 %"$consume_1587", i64* @_gasrem
  %"$gasrem_1588" = load i64, i64* @_gasrem
  %"$gascmp_1589" = icmp ugt i64 1, %"$gasrem_1588"
  br i1 %"$gascmp_1589", label %"$out_of_gas_1590", label %"$have_gas_1591"

"$out_of_gas_1590":                               ; preds = %"$have_gas_1586"
  call void @_out_of_gas()
  br label %"$have_gas_1591"

"$have_gas_1591":                                 ; preds = %"$out_of_gas_1590", %"$have_gas_1586"
  %"$consume_1592" = sub i64 %"$gasrem_1588", 1
  store i64 %"$consume_1592", i64* @_gasrem
  %ack30 = alloca %TName_Nat*
  %"$gasrem_1593" = load i64, i64* @_gasrem
  %"$gascmp_1594" = icmp ugt i64 1, %"$gasrem_1593"
  br i1 %"$gascmp_1594", label %"$out_of_gas_1595", label %"$have_gas_1596"

"$out_of_gas_1595":                               ; preds = %"$have_gas_1591"
  call void @_out_of_gas()
  br label %"$have_gas_1596"

"$have_gas_1596":                                 ; preds = %"$out_of_gas_1595", %"$have_gas_1591"
  %"$consume_1597" = sub i64 %"$gasrem_1593", 1
  store i64 %"$consume_1597", i64* @_gasrem
  %"$ackermann_62" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1598" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1599" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1598", 0
  %"$ackermann_envptr_1600" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1598", 1
  %"$n3_1601" = load %TName_Nat*, %TName_Nat** %n3
  %"$ackermann_call_1602" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1599"(i8* %"$ackermann_envptr_1600", %TName_Nat* %"$n3_1601")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1602", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_62"
  %"$ackermann_63" = alloca %TName_Nat*
  %"$$ackermann_62_1603" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_62"
  %"$$ackermann_62_fptr_1604" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_62_1603", 0
  %"$$ackermann_62_envptr_1605" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_62_1603", 1
  %"$n0_1606" = load %TName_Nat*, %TName_Nat** %n0
  %"$$ackermann_62_call_1607" = call %TName_Nat* %"$$ackermann_62_fptr_1604"(i8* %"$$ackermann_62_envptr_1605", %TName_Nat* %"$n0_1606")
  store %TName_Nat* %"$$ackermann_62_call_1607", %TName_Nat** %"$ackermann_63"
  %"$$ackermann_63_1608" = load %TName_Nat*, %TName_Nat** %"$ackermann_63"
  store %TName_Nat* %"$$ackermann_63_1608", %TName_Nat** %ack30
  %"$gasrem_1609" = load i64, i64* @_gasrem
  %"$gascmp_1610" = icmp ugt i64 1, %"$gasrem_1609"
  br i1 %"$gascmp_1610", label %"$out_of_gas_1611", label %"$have_gas_1612"

"$out_of_gas_1611":                               ; preds = %"$have_gas_1596"
  call void @_out_of_gas()
  br label %"$have_gas_1612"

"$have_gas_1612":                                 ; preds = %"$out_of_gas_1611", %"$have_gas_1596"
  %"$consume_1613" = sub i64 %"$gasrem_1609", 1
  store i64 %"$consume_1613", i64* @_gasrem
  %ack31 = alloca %TName_Nat*
  %"$gasrem_1614" = load i64, i64* @_gasrem
  %"$gascmp_1615" = icmp ugt i64 1, %"$gasrem_1614"
  br i1 %"$gascmp_1615", label %"$out_of_gas_1616", label %"$have_gas_1617"

"$out_of_gas_1616":                               ; preds = %"$have_gas_1612"
  call void @_out_of_gas()
  br label %"$have_gas_1617"

"$have_gas_1617":                                 ; preds = %"$out_of_gas_1616", %"$have_gas_1612"
  %"$consume_1618" = sub i64 %"$gasrem_1614", 1
  store i64 %"$consume_1618", i64* @_gasrem
  %"$ackermann_64" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1619" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1620" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1619", 0
  %"$ackermann_envptr_1621" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1619", 1
  %"$n3_1622" = load %TName_Nat*, %TName_Nat** %n3
  %"$ackermann_call_1623" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1620"(i8* %"$ackermann_envptr_1621", %TName_Nat* %"$n3_1622")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1623", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_64"
  %"$ackermann_65" = alloca %TName_Nat*
  %"$$ackermann_64_1624" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_64"
  %"$$ackermann_64_fptr_1625" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_64_1624", 0
  %"$$ackermann_64_envptr_1626" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_64_1624", 1
  %"$n1_1627" = load %TName_Nat*, %TName_Nat** %n1
  %"$$ackermann_64_call_1628" = call %TName_Nat* %"$$ackermann_64_fptr_1625"(i8* %"$$ackermann_64_envptr_1626", %TName_Nat* %"$n1_1627")
  store %TName_Nat* %"$$ackermann_64_call_1628", %TName_Nat** %"$ackermann_65"
  %"$$ackermann_65_1629" = load %TName_Nat*, %TName_Nat** %"$ackermann_65"
  store %TName_Nat* %"$$ackermann_65_1629", %TName_Nat** %ack31
  %"$gasrem_1630" = load i64, i64* @_gasrem
  %"$gascmp_1631" = icmp ugt i64 1, %"$gasrem_1630"
  br i1 %"$gascmp_1631", label %"$out_of_gas_1632", label %"$have_gas_1633"

"$out_of_gas_1632":                               ; preds = %"$have_gas_1617"
  call void @_out_of_gas()
  br label %"$have_gas_1633"

"$have_gas_1633":                                 ; preds = %"$out_of_gas_1632", %"$have_gas_1617"
  %"$consume_1634" = sub i64 %"$gasrem_1630", 1
  store i64 %"$consume_1634", i64* @_gasrem
  %ack32 = alloca %TName_Nat*
  %"$gasrem_1635" = load i64, i64* @_gasrem
  %"$gascmp_1636" = icmp ugt i64 1, %"$gasrem_1635"
  br i1 %"$gascmp_1636", label %"$out_of_gas_1637", label %"$have_gas_1638"

"$out_of_gas_1637":                               ; preds = %"$have_gas_1633"
  call void @_out_of_gas()
  br label %"$have_gas_1638"

"$have_gas_1638":                                 ; preds = %"$out_of_gas_1637", %"$have_gas_1633"
  %"$consume_1639" = sub i64 %"$gasrem_1635", 1
  store i64 %"$consume_1639", i64* @_gasrem
  %"$ackermann_66" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1640" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1641" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1640", 0
  %"$ackermann_envptr_1642" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1640", 1
  %"$n3_1643" = load %TName_Nat*, %TName_Nat** %n3
  %"$ackermann_call_1644" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1641"(i8* %"$ackermann_envptr_1642", %TName_Nat* %"$n3_1643")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1644", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_66"
  %"$ackermann_67" = alloca %TName_Nat*
  %"$$ackermann_66_1645" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_66"
  %"$$ackermann_66_fptr_1646" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_66_1645", 0
  %"$$ackermann_66_envptr_1647" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_66_1645", 1
  %"$n2_1648" = load %TName_Nat*, %TName_Nat** %n2
  %"$$ackermann_66_call_1649" = call %TName_Nat* %"$$ackermann_66_fptr_1646"(i8* %"$$ackermann_66_envptr_1647", %TName_Nat* %"$n2_1648")
  store %TName_Nat* %"$$ackermann_66_call_1649", %TName_Nat** %"$ackermann_67"
  %"$$ackermann_67_1650" = load %TName_Nat*, %TName_Nat** %"$ackermann_67"
  store %TName_Nat* %"$$ackermann_67_1650", %TName_Nat** %ack32
  %"$gasrem_1651" = load i64, i64* @_gasrem
  %"$gascmp_1652" = icmp ugt i64 1, %"$gasrem_1651"
  br i1 %"$gascmp_1652", label %"$out_of_gas_1653", label %"$have_gas_1654"

"$out_of_gas_1653":                               ; preds = %"$have_gas_1638"
  call void @_out_of_gas()
  br label %"$have_gas_1654"

"$have_gas_1654":                                 ; preds = %"$out_of_gas_1653", %"$have_gas_1638"
  %"$consume_1655" = sub i64 %"$gasrem_1651", 1
  store i64 %"$consume_1655", i64* @_gasrem
  %ack33 = alloca %TName_Nat*
  %"$gasrem_1656" = load i64, i64* @_gasrem
  %"$gascmp_1657" = icmp ugt i64 1, %"$gasrem_1656"
  br i1 %"$gascmp_1657", label %"$out_of_gas_1658", label %"$have_gas_1659"

"$out_of_gas_1658":                               ; preds = %"$have_gas_1654"
  call void @_out_of_gas()
  br label %"$have_gas_1659"

"$have_gas_1659":                                 ; preds = %"$out_of_gas_1658", %"$have_gas_1654"
  %"$consume_1660" = sub i64 %"$gasrem_1656", 1
  store i64 %"$consume_1660", i64* @_gasrem
  %"$ackermann_68" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1661" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1662" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1661", 0
  %"$ackermann_envptr_1663" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1661", 1
  %"$n3_1664" = load %TName_Nat*, %TName_Nat** %n3
  %"$ackermann_call_1665" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1662"(i8* %"$ackermann_envptr_1663", %TName_Nat* %"$n3_1664")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1665", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_68"
  %"$ackermann_69" = alloca %TName_Nat*
  %"$$ackermann_68_1666" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_68"
  %"$$ackermann_68_fptr_1667" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_68_1666", 0
  %"$$ackermann_68_envptr_1668" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_68_1666", 1
  %"$n3_1669" = load %TName_Nat*, %TName_Nat** %n3
  %"$$ackermann_68_call_1670" = call %TName_Nat* %"$$ackermann_68_fptr_1667"(i8* %"$$ackermann_68_envptr_1668", %TName_Nat* %"$n3_1669")
  store %TName_Nat* %"$$ackermann_68_call_1670", %TName_Nat** %"$ackermann_69"
  %"$$ackermann_69_1671" = load %TName_Nat*, %TName_Nat** %"$ackermann_69"
  store %TName_Nat* %"$$ackermann_69_1671", %TName_Nat** %ack33
  %"$gasrem_1672" = load i64, i64* @_gasrem
  %"$gascmp_1673" = icmp ugt i64 1, %"$gasrem_1672"
  br i1 %"$gascmp_1673", label %"$out_of_gas_1674", label %"$have_gas_1675"

"$out_of_gas_1674":                               ; preds = %"$have_gas_1659"
  call void @_out_of_gas()
  br label %"$have_gas_1675"

"$have_gas_1675":                                 ; preds = %"$out_of_gas_1674", %"$have_gas_1659"
  %"$consume_1676" = sub i64 %"$gasrem_1672", 1
  store i64 %"$consume_1676", i64* @_gasrem
  %ack34 = alloca %TName_Nat*
  %"$gasrem_1677" = load i64, i64* @_gasrem
  %"$gascmp_1678" = icmp ugt i64 1, %"$gasrem_1677"
  br i1 %"$gascmp_1678", label %"$out_of_gas_1679", label %"$have_gas_1680"

"$out_of_gas_1679":                               ; preds = %"$have_gas_1675"
  call void @_out_of_gas()
  br label %"$have_gas_1680"

"$have_gas_1680":                                 ; preds = %"$out_of_gas_1679", %"$have_gas_1675"
  %"$consume_1681" = sub i64 %"$gasrem_1677", 1
  store i64 %"$consume_1681", i64* @_gasrem
  %"$ackermann_70" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1682" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1683" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1682", 0
  %"$ackermann_envptr_1684" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1682", 1
  %"$n3_1685" = load %TName_Nat*, %TName_Nat** %n3
  %"$ackermann_call_1686" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1683"(i8* %"$ackermann_envptr_1684", %TName_Nat* %"$n3_1685")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1686", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_70"
  %"$ackermann_71" = alloca %TName_Nat*
  %"$$ackermann_70_1687" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_70"
  %"$$ackermann_70_fptr_1688" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_70_1687", 0
  %"$$ackermann_70_envptr_1689" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_70_1687", 1
  %"$n4_1690" = load %TName_Nat*, %TName_Nat** %n4
  %"$$ackermann_70_call_1691" = call %TName_Nat* %"$$ackermann_70_fptr_1688"(i8* %"$$ackermann_70_envptr_1689", %TName_Nat* %"$n4_1690")
  store %TName_Nat* %"$$ackermann_70_call_1691", %TName_Nat** %"$ackermann_71"
  %"$$ackermann_71_1692" = load %TName_Nat*, %TName_Nat** %"$ackermann_71"
  store %TName_Nat* %"$$ackermann_71_1692", %TName_Nat** %ack34
  %"$gasrem_1693" = load i64, i64* @_gasrem
  %"$gascmp_1694" = icmp ugt i64 1, %"$gasrem_1693"
  br i1 %"$gascmp_1694", label %"$out_of_gas_1695", label %"$have_gas_1696"

"$out_of_gas_1695":                               ; preds = %"$have_gas_1680"
  call void @_out_of_gas()
  br label %"$have_gas_1696"

"$have_gas_1696":                                 ; preds = %"$out_of_gas_1695", %"$have_gas_1680"
  %"$consume_1697" = sub i64 %"$gasrem_1693", 1
  store i64 %"$consume_1697", i64* @_gasrem
  %ack40 = alloca %TName_Nat*
  %"$gasrem_1698" = load i64, i64* @_gasrem
  %"$gascmp_1699" = icmp ugt i64 1, %"$gasrem_1698"
  br i1 %"$gascmp_1699", label %"$out_of_gas_1700", label %"$have_gas_1701"

"$out_of_gas_1700":                               ; preds = %"$have_gas_1696"
  call void @_out_of_gas()
  br label %"$have_gas_1701"

"$have_gas_1701":                                 ; preds = %"$out_of_gas_1700", %"$have_gas_1696"
  %"$consume_1702" = sub i64 %"$gasrem_1698", 1
  store i64 %"$consume_1702", i64* @_gasrem
  %"$ackermann_72" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1703" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1704" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1703", 0
  %"$ackermann_envptr_1705" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1703", 1
  %"$n4_1706" = load %TName_Nat*, %TName_Nat** %n4
  %"$ackermann_call_1707" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1704"(i8* %"$ackermann_envptr_1705", %TName_Nat* %"$n4_1706")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1707", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_72"
  %"$ackermann_73" = alloca %TName_Nat*
  %"$$ackermann_72_1708" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_72"
  %"$$ackermann_72_fptr_1709" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_72_1708", 0
  %"$$ackermann_72_envptr_1710" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_72_1708", 1
  %"$n0_1711" = load %TName_Nat*, %TName_Nat** %n0
  %"$$ackermann_72_call_1712" = call %TName_Nat* %"$$ackermann_72_fptr_1709"(i8* %"$$ackermann_72_envptr_1710", %TName_Nat* %"$n0_1711")
  store %TName_Nat* %"$$ackermann_72_call_1712", %TName_Nat** %"$ackermann_73"
  %"$$ackermann_73_1713" = load %TName_Nat*, %TName_Nat** %"$ackermann_73"
  store %TName_Nat* %"$$ackermann_73_1713", %TName_Nat** %ack40
  %"$gasrem_1714" = load i64, i64* @_gasrem
  %"$gascmp_1715" = icmp ugt i64 1, %"$gasrem_1714"
  br i1 %"$gascmp_1715", label %"$out_of_gas_1716", label %"$have_gas_1717"

"$out_of_gas_1716":                               ; preds = %"$have_gas_1701"
  call void @_out_of_gas()
  br label %"$have_gas_1717"

"$have_gas_1717":                                 ; preds = %"$out_of_gas_1716", %"$have_gas_1701"
  %"$consume_1718" = sub i64 %"$gasrem_1714", 1
  store i64 %"$consume_1718", i64* @_gasrem
  %int01 = alloca %Uint32
  %"$gasrem_1719" = load i64, i64* @_gasrem
  %"$gascmp_1720" = icmp ugt i64 1, %"$gasrem_1719"
  br i1 %"$gascmp_1720", label %"$out_of_gas_1721", label %"$have_gas_1722"

"$out_of_gas_1721":                               ; preds = %"$have_gas_1717"
  call void @_out_of_gas()
  br label %"$have_gas_1722"

"$have_gas_1722":                                 ; preds = %"$out_of_gas_1721", %"$have_gas_1717"
  %"$consume_1723" = sub i64 %"$gasrem_1719", 1
  store i64 %"$consume_1723", i64* @_gasrem
  %"$NatUtils.nat_to_int_74" = alloca %Uint32
  %"$NatUtils.nat_to_int_1724" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_1725" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1724", 0
  %"$NatUtils.nat_to_int_envptr_1726" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1724", 1
  %"$ack00_1727" = load %TName_Nat*, %TName_Nat** %ack00
  %"$NatUtils.nat_to_int_call_1728" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1725"(i8* %"$NatUtils.nat_to_int_envptr_1726", %TName_Nat* %"$ack00_1727")
  store %Uint32 %"$NatUtils.nat_to_int_call_1728", %Uint32* %"$NatUtils.nat_to_int_74"
  %"$$NatUtils.nat_to_int_74_1729" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_74"
  store %Uint32 %"$$NatUtils.nat_to_int_74_1729", %Uint32* %int01
  %"$gasrem_1730" = load i64, i64* @_gasrem
  %"$gascmp_1731" = icmp ugt i64 1, %"$gasrem_1730"
  br i1 %"$gascmp_1731", label %"$out_of_gas_1732", label %"$have_gas_1733"

"$out_of_gas_1732":                               ; preds = %"$have_gas_1722"
  call void @_out_of_gas()
  br label %"$have_gas_1733"

"$have_gas_1733":                                 ; preds = %"$out_of_gas_1732", %"$have_gas_1722"
  %"$consume_1734" = sub i64 %"$gasrem_1730", 1
  store i64 %"$consume_1734", i64* @_gasrem
  %int02 = alloca %Uint32
  %"$gasrem_1735" = load i64, i64* @_gasrem
  %"$gascmp_1736" = icmp ugt i64 1, %"$gasrem_1735"
  br i1 %"$gascmp_1736", label %"$out_of_gas_1737", label %"$have_gas_1738"

"$out_of_gas_1737":                               ; preds = %"$have_gas_1733"
  call void @_out_of_gas()
  br label %"$have_gas_1738"

"$have_gas_1738":                                 ; preds = %"$out_of_gas_1737", %"$have_gas_1733"
  %"$consume_1739" = sub i64 %"$gasrem_1735", 1
  store i64 %"$consume_1739", i64* @_gasrem
  %"$NatUtils.nat_to_int_75" = alloca %Uint32
  %"$NatUtils.nat_to_int_1740" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_1741" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1740", 0
  %"$NatUtils.nat_to_int_envptr_1742" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1740", 1
  %"$ack02_1743" = load %TName_Nat*, %TName_Nat** %ack02
  %"$NatUtils.nat_to_int_call_1744" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1741"(i8* %"$NatUtils.nat_to_int_envptr_1742", %TName_Nat* %"$ack02_1743")
  store %Uint32 %"$NatUtils.nat_to_int_call_1744", %Uint32* %"$NatUtils.nat_to_int_75"
  %"$$NatUtils.nat_to_int_75_1745" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_75"
  store %Uint32 %"$$NatUtils.nat_to_int_75_1745", %Uint32* %int02
  %"$gasrem_1746" = load i64, i64* @_gasrem
  %"$gascmp_1747" = icmp ugt i64 1, %"$gasrem_1746"
  br i1 %"$gascmp_1747", label %"$out_of_gas_1748", label %"$have_gas_1749"

"$out_of_gas_1748":                               ; preds = %"$have_gas_1738"
  call void @_out_of_gas()
  br label %"$have_gas_1749"

"$have_gas_1749":                                 ; preds = %"$out_of_gas_1748", %"$have_gas_1738"
  %"$consume_1750" = sub i64 %"$gasrem_1746", 1
  store i64 %"$consume_1750", i64* @_gasrem
  %int03 = alloca %Uint32
  %"$gasrem_1751" = load i64, i64* @_gasrem
  %"$gascmp_1752" = icmp ugt i64 1, %"$gasrem_1751"
  br i1 %"$gascmp_1752", label %"$out_of_gas_1753", label %"$have_gas_1754"

"$out_of_gas_1753":                               ; preds = %"$have_gas_1749"
  call void @_out_of_gas()
  br label %"$have_gas_1754"

"$have_gas_1754":                                 ; preds = %"$out_of_gas_1753", %"$have_gas_1749"
  %"$consume_1755" = sub i64 %"$gasrem_1751", 1
  store i64 %"$consume_1755", i64* @_gasrem
  %"$NatUtils.nat_to_int_76" = alloca %Uint32
  %"$NatUtils.nat_to_int_1756" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_1757" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1756", 0
  %"$NatUtils.nat_to_int_envptr_1758" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1756", 1
  %"$ack03_1759" = load %TName_Nat*, %TName_Nat** %ack03
  %"$NatUtils.nat_to_int_call_1760" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1757"(i8* %"$NatUtils.nat_to_int_envptr_1758", %TName_Nat* %"$ack03_1759")
  store %Uint32 %"$NatUtils.nat_to_int_call_1760", %Uint32* %"$NatUtils.nat_to_int_76"
  %"$$NatUtils.nat_to_int_76_1761" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_76"
  store %Uint32 %"$$NatUtils.nat_to_int_76_1761", %Uint32* %int03
  %"$gasrem_1762" = load i64, i64* @_gasrem
  %"$gascmp_1763" = icmp ugt i64 1, %"$gasrem_1762"
  br i1 %"$gascmp_1763", label %"$out_of_gas_1764", label %"$have_gas_1765"

"$out_of_gas_1764":                               ; preds = %"$have_gas_1754"
  call void @_out_of_gas()
  br label %"$have_gas_1765"

"$have_gas_1765":                                 ; preds = %"$out_of_gas_1764", %"$have_gas_1754"
  %"$consume_1766" = sub i64 %"$gasrem_1762", 1
  store i64 %"$consume_1766", i64* @_gasrem
  %int04 = alloca %Uint32
  %"$gasrem_1767" = load i64, i64* @_gasrem
  %"$gascmp_1768" = icmp ugt i64 1, %"$gasrem_1767"
  br i1 %"$gascmp_1768", label %"$out_of_gas_1769", label %"$have_gas_1770"

"$out_of_gas_1769":                               ; preds = %"$have_gas_1765"
  call void @_out_of_gas()
  br label %"$have_gas_1770"

"$have_gas_1770":                                 ; preds = %"$out_of_gas_1769", %"$have_gas_1765"
  %"$consume_1771" = sub i64 %"$gasrem_1767", 1
  store i64 %"$consume_1771", i64* @_gasrem
  %"$NatUtils.nat_to_int_77" = alloca %Uint32
  %"$NatUtils.nat_to_int_1772" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_1773" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1772", 0
  %"$NatUtils.nat_to_int_envptr_1774" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1772", 1
  %"$ack04_1775" = load %TName_Nat*, %TName_Nat** %ack04
  %"$NatUtils.nat_to_int_call_1776" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1773"(i8* %"$NatUtils.nat_to_int_envptr_1774", %TName_Nat* %"$ack04_1775")
  store %Uint32 %"$NatUtils.nat_to_int_call_1776", %Uint32* %"$NatUtils.nat_to_int_77"
  %"$$NatUtils.nat_to_int_77_1777" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_77"
  store %Uint32 %"$$NatUtils.nat_to_int_77_1777", %Uint32* %int04
  %"$gasrem_1778" = load i64, i64* @_gasrem
  %"$gascmp_1779" = icmp ugt i64 1, %"$gasrem_1778"
  br i1 %"$gascmp_1779", label %"$out_of_gas_1780", label %"$have_gas_1781"

"$out_of_gas_1780":                               ; preds = %"$have_gas_1770"
  call void @_out_of_gas()
  br label %"$have_gas_1781"

"$have_gas_1781":                                 ; preds = %"$out_of_gas_1780", %"$have_gas_1770"
  %"$consume_1782" = sub i64 %"$gasrem_1778", 1
  store i64 %"$consume_1782", i64* @_gasrem
  %int10 = alloca %Uint32
  %"$gasrem_1783" = load i64, i64* @_gasrem
  %"$gascmp_1784" = icmp ugt i64 1, %"$gasrem_1783"
  br i1 %"$gascmp_1784", label %"$out_of_gas_1785", label %"$have_gas_1786"

"$out_of_gas_1785":                               ; preds = %"$have_gas_1781"
  call void @_out_of_gas()
  br label %"$have_gas_1786"

"$have_gas_1786":                                 ; preds = %"$out_of_gas_1785", %"$have_gas_1781"
  %"$consume_1787" = sub i64 %"$gasrem_1783", 1
  store i64 %"$consume_1787", i64* @_gasrem
  %"$NatUtils.nat_to_int_78" = alloca %Uint32
  %"$NatUtils.nat_to_int_1788" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_1789" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1788", 0
  %"$NatUtils.nat_to_int_envptr_1790" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1788", 1
  %"$ack10_1791" = load %TName_Nat*, %TName_Nat** %ack10
  %"$NatUtils.nat_to_int_call_1792" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1789"(i8* %"$NatUtils.nat_to_int_envptr_1790", %TName_Nat* %"$ack10_1791")
  store %Uint32 %"$NatUtils.nat_to_int_call_1792", %Uint32* %"$NatUtils.nat_to_int_78"
  %"$$NatUtils.nat_to_int_78_1793" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_78"
  store %Uint32 %"$$NatUtils.nat_to_int_78_1793", %Uint32* %int10
  %"$gasrem_1794" = load i64, i64* @_gasrem
  %"$gascmp_1795" = icmp ugt i64 1, %"$gasrem_1794"
  br i1 %"$gascmp_1795", label %"$out_of_gas_1796", label %"$have_gas_1797"

"$out_of_gas_1796":                               ; preds = %"$have_gas_1786"
  call void @_out_of_gas()
  br label %"$have_gas_1797"

"$have_gas_1797":                                 ; preds = %"$out_of_gas_1796", %"$have_gas_1786"
  %"$consume_1798" = sub i64 %"$gasrem_1794", 1
  store i64 %"$consume_1798", i64* @_gasrem
  %int11 = alloca %Uint32
  %"$gasrem_1799" = load i64, i64* @_gasrem
  %"$gascmp_1800" = icmp ugt i64 1, %"$gasrem_1799"
  br i1 %"$gascmp_1800", label %"$out_of_gas_1801", label %"$have_gas_1802"

"$out_of_gas_1801":                               ; preds = %"$have_gas_1797"
  call void @_out_of_gas()
  br label %"$have_gas_1802"

"$have_gas_1802":                                 ; preds = %"$out_of_gas_1801", %"$have_gas_1797"
  %"$consume_1803" = sub i64 %"$gasrem_1799", 1
  store i64 %"$consume_1803", i64* @_gasrem
  %"$NatUtils.nat_to_int_79" = alloca %Uint32
  %"$NatUtils.nat_to_int_1804" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_1805" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1804", 0
  %"$NatUtils.nat_to_int_envptr_1806" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1804", 1
  %"$ack11_1807" = load %TName_Nat*, %TName_Nat** %ack11
  %"$NatUtils.nat_to_int_call_1808" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1805"(i8* %"$NatUtils.nat_to_int_envptr_1806", %TName_Nat* %"$ack11_1807")
  store %Uint32 %"$NatUtils.nat_to_int_call_1808", %Uint32* %"$NatUtils.nat_to_int_79"
  %"$$NatUtils.nat_to_int_79_1809" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_79"
  store %Uint32 %"$$NatUtils.nat_to_int_79_1809", %Uint32* %int11
  %"$gasrem_1810" = load i64, i64* @_gasrem
  %"$gascmp_1811" = icmp ugt i64 1, %"$gasrem_1810"
  br i1 %"$gascmp_1811", label %"$out_of_gas_1812", label %"$have_gas_1813"

"$out_of_gas_1812":                               ; preds = %"$have_gas_1802"
  call void @_out_of_gas()
  br label %"$have_gas_1813"

"$have_gas_1813":                                 ; preds = %"$out_of_gas_1812", %"$have_gas_1802"
  %"$consume_1814" = sub i64 %"$gasrem_1810", 1
  store i64 %"$consume_1814", i64* @_gasrem
  %int12 = alloca %Uint32
  %"$gasrem_1815" = load i64, i64* @_gasrem
  %"$gascmp_1816" = icmp ugt i64 1, %"$gasrem_1815"
  br i1 %"$gascmp_1816", label %"$out_of_gas_1817", label %"$have_gas_1818"

"$out_of_gas_1817":                               ; preds = %"$have_gas_1813"
  call void @_out_of_gas()
  br label %"$have_gas_1818"

"$have_gas_1818":                                 ; preds = %"$out_of_gas_1817", %"$have_gas_1813"
  %"$consume_1819" = sub i64 %"$gasrem_1815", 1
  store i64 %"$consume_1819", i64* @_gasrem
  %"$NatUtils.nat_to_int_80" = alloca %Uint32
  %"$NatUtils.nat_to_int_1820" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_1821" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1820", 0
  %"$NatUtils.nat_to_int_envptr_1822" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1820", 1
  %"$ack12_1823" = load %TName_Nat*, %TName_Nat** %ack12
  %"$NatUtils.nat_to_int_call_1824" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1821"(i8* %"$NatUtils.nat_to_int_envptr_1822", %TName_Nat* %"$ack12_1823")
  store %Uint32 %"$NatUtils.nat_to_int_call_1824", %Uint32* %"$NatUtils.nat_to_int_80"
  %"$$NatUtils.nat_to_int_80_1825" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_80"
  store %Uint32 %"$$NatUtils.nat_to_int_80_1825", %Uint32* %int12
  %"$gasrem_1826" = load i64, i64* @_gasrem
  %"$gascmp_1827" = icmp ugt i64 1, %"$gasrem_1826"
  br i1 %"$gascmp_1827", label %"$out_of_gas_1828", label %"$have_gas_1829"

"$out_of_gas_1828":                               ; preds = %"$have_gas_1818"
  call void @_out_of_gas()
  br label %"$have_gas_1829"

"$have_gas_1829":                                 ; preds = %"$out_of_gas_1828", %"$have_gas_1818"
  %"$consume_1830" = sub i64 %"$gasrem_1826", 1
  store i64 %"$consume_1830", i64* @_gasrem
  %int13 = alloca %Uint32
  %"$gasrem_1831" = load i64, i64* @_gasrem
  %"$gascmp_1832" = icmp ugt i64 1, %"$gasrem_1831"
  br i1 %"$gascmp_1832", label %"$out_of_gas_1833", label %"$have_gas_1834"

"$out_of_gas_1833":                               ; preds = %"$have_gas_1829"
  call void @_out_of_gas()
  br label %"$have_gas_1834"

"$have_gas_1834":                                 ; preds = %"$out_of_gas_1833", %"$have_gas_1829"
  %"$consume_1835" = sub i64 %"$gasrem_1831", 1
  store i64 %"$consume_1835", i64* @_gasrem
  %"$NatUtils.nat_to_int_81" = alloca %Uint32
  %"$NatUtils.nat_to_int_1836" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_1837" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1836", 0
  %"$NatUtils.nat_to_int_envptr_1838" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1836", 1
  %"$ack13_1839" = load %TName_Nat*, %TName_Nat** %ack13
  %"$NatUtils.nat_to_int_call_1840" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1837"(i8* %"$NatUtils.nat_to_int_envptr_1838", %TName_Nat* %"$ack13_1839")
  store %Uint32 %"$NatUtils.nat_to_int_call_1840", %Uint32* %"$NatUtils.nat_to_int_81"
  %"$$NatUtils.nat_to_int_81_1841" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_81"
  store %Uint32 %"$$NatUtils.nat_to_int_81_1841", %Uint32* %int13
  %"$gasrem_1842" = load i64, i64* @_gasrem
  %"$gascmp_1843" = icmp ugt i64 1, %"$gasrem_1842"
  br i1 %"$gascmp_1843", label %"$out_of_gas_1844", label %"$have_gas_1845"

"$out_of_gas_1844":                               ; preds = %"$have_gas_1834"
  call void @_out_of_gas()
  br label %"$have_gas_1845"

"$have_gas_1845":                                 ; preds = %"$out_of_gas_1844", %"$have_gas_1834"
  %"$consume_1846" = sub i64 %"$gasrem_1842", 1
  store i64 %"$consume_1846", i64* @_gasrem
  %int14 = alloca %Uint32
  %"$gasrem_1847" = load i64, i64* @_gasrem
  %"$gascmp_1848" = icmp ugt i64 1, %"$gasrem_1847"
  br i1 %"$gascmp_1848", label %"$out_of_gas_1849", label %"$have_gas_1850"

"$out_of_gas_1849":                               ; preds = %"$have_gas_1845"
  call void @_out_of_gas()
  br label %"$have_gas_1850"

"$have_gas_1850":                                 ; preds = %"$out_of_gas_1849", %"$have_gas_1845"
  %"$consume_1851" = sub i64 %"$gasrem_1847", 1
  store i64 %"$consume_1851", i64* @_gasrem
  %"$NatUtils.nat_to_int_82" = alloca %Uint32
  %"$NatUtils.nat_to_int_1852" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_1853" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1852", 0
  %"$NatUtils.nat_to_int_envptr_1854" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1852", 1
  %"$ack14_1855" = load %TName_Nat*, %TName_Nat** %ack14
  %"$NatUtils.nat_to_int_call_1856" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1853"(i8* %"$NatUtils.nat_to_int_envptr_1854", %TName_Nat* %"$ack14_1855")
  store %Uint32 %"$NatUtils.nat_to_int_call_1856", %Uint32* %"$NatUtils.nat_to_int_82"
  %"$$NatUtils.nat_to_int_82_1857" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_82"
  store %Uint32 %"$$NatUtils.nat_to_int_82_1857", %Uint32* %int14
  %"$gasrem_1858" = load i64, i64* @_gasrem
  %"$gascmp_1859" = icmp ugt i64 1, %"$gasrem_1858"
  br i1 %"$gascmp_1859", label %"$out_of_gas_1860", label %"$have_gas_1861"

"$out_of_gas_1860":                               ; preds = %"$have_gas_1850"
  call void @_out_of_gas()
  br label %"$have_gas_1861"

"$have_gas_1861":                                 ; preds = %"$out_of_gas_1860", %"$have_gas_1850"
  %"$consume_1862" = sub i64 %"$gasrem_1858", 1
  store i64 %"$consume_1862", i64* @_gasrem
  %int20 = alloca %Uint32
  %"$gasrem_1863" = load i64, i64* @_gasrem
  %"$gascmp_1864" = icmp ugt i64 1, %"$gasrem_1863"
  br i1 %"$gascmp_1864", label %"$out_of_gas_1865", label %"$have_gas_1866"

"$out_of_gas_1865":                               ; preds = %"$have_gas_1861"
  call void @_out_of_gas()
  br label %"$have_gas_1866"

"$have_gas_1866":                                 ; preds = %"$out_of_gas_1865", %"$have_gas_1861"
  %"$consume_1867" = sub i64 %"$gasrem_1863", 1
  store i64 %"$consume_1867", i64* @_gasrem
  %"$NatUtils.nat_to_int_83" = alloca %Uint32
  %"$NatUtils.nat_to_int_1868" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_1869" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1868", 0
  %"$NatUtils.nat_to_int_envptr_1870" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1868", 1
  %"$ack20_1871" = load %TName_Nat*, %TName_Nat** %ack20
  %"$NatUtils.nat_to_int_call_1872" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1869"(i8* %"$NatUtils.nat_to_int_envptr_1870", %TName_Nat* %"$ack20_1871")
  store %Uint32 %"$NatUtils.nat_to_int_call_1872", %Uint32* %"$NatUtils.nat_to_int_83"
  %"$$NatUtils.nat_to_int_83_1873" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_83"
  store %Uint32 %"$$NatUtils.nat_to_int_83_1873", %Uint32* %int20
  %"$gasrem_1874" = load i64, i64* @_gasrem
  %"$gascmp_1875" = icmp ugt i64 1, %"$gasrem_1874"
  br i1 %"$gascmp_1875", label %"$out_of_gas_1876", label %"$have_gas_1877"

"$out_of_gas_1876":                               ; preds = %"$have_gas_1866"
  call void @_out_of_gas()
  br label %"$have_gas_1877"

"$have_gas_1877":                                 ; preds = %"$out_of_gas_1876", %"$have_gas_1866"
  %"$consume_1878" = sub i64 %"$gasrem_1874", 1
  store i64 %"$consume_1878", i64* @_gasrem
  %int21 = alloca %Uint32
  %"$gasrem_1879" = load i64, i64* @_gasrem
  %"$gascmp_1880" = icmp ugt i64 1, %"$gasrem_1879"
  br i1 %"$gascmp_1880", label %"$out_of_gas_1881", label %"$have_gas_1882"

"$out_of_gas_1881":                               ; preds = %"$have_gas_1877"
  call void @_out_of_gas()
  br label %"$have_gas_1882"

"$have_gas_1882":                                 ; preds = %"$out_of_gas_1881", %"$have_gas_1877"
  %"$consume_1883" = sub i64 %"$gasrem_1879", 1
  store i64 %"$consume_1883", i64* @_gasrem
  %"$NatUtils.nat_to_int_84" = alloca %Uint32
  %"$NatUtils.nat_to_int_1884" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_1885" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1884", 0
  %"$NatUtils.nat_to_int_envptr_1886" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1884", 1
  %"$ack21_1887" = load %TName_Nat*, %TName_Nat** %ack21
  %"$NatUtils.nat_to_int_call_1888" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1885"(i8* %"$NatUtils.nat_to_int_envptr_1886", %TName_Nat* %"$ack21_1887")
  store %Uint32 %"$NatUtils.nat_to_int_call_1888", %Uint32* %"$NatUtils.nat_to_int_84"
  %"$$NatUtils.nat_to_int_84_1889" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_84"
  store %Uint32 %"$$NatUtils.nat_to_int_84_1889", %Uint32* %int21
  %"$gasrem_1890" = load i64, i64* @_gasrem
  %"$gascmp_1891" = icmp ugt i64 1, %"$gasrem_1890"
  br i1 %"$gascmp_1891", label %"$out_of_gas_1892", label %"$have_gas_1893"

"$out_of_gas_1892":                               ; preds = %"$have_gas_1882"
  call void @_out_of_gas()
  br label %"$have_gas_1893"

"$have_gas_1893":                                 ; preds = %"$out_of_gas_1892", %"$have_gas_1882"
  %"$consume_1894" = sub i64 %"$gasrem_1890", 1
  store i64 %"$consume_1894", i64* @_gasrem
  %int22 = alloca %Uint32
  %"$gasrem_1895" = load i64, i64* @_gasrem
  %"$gascmp_1896" = icmp ugt i64 1, %"$gasrem_1895"
  br i1 %"$gascmp_1896", label %"$out_of_gas_1897", label %"$have_gas_1898"

"$out_of_gas_1897":                               ; preds = %"$have_gas_1893"
  call void @_out_of_gas()
  br label %"$have_gas_1898"

"$have_gas_1898":                                 ; preds = %"$out_of_gas_1897", %"$have_gas_1893"
  %"$consume_1899" = sub i64 %"$gasrem_1895", 1
  store i64 %"$consume_1899", i64* @_gasrem
  %"$NatUtils.nat_to_int_85" = alloca %Uint32
  %"$NatUtils.nat_to_int_1900" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_1901" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1900", 0
  %"$NatUtils.nat_to_int_envptr_1902" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1900", 1
  %"$ack22_1903" = load %TName_Nat*, %TName_Nat** %ack22
  %"$NatUtils.nat_to_int_call_1904" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1901"(i8* %"$NatUtils.nat_to_int_envptr_1902", %TName_Nat* %"$ack22_1903")
  store %Uint32 %"$NatUtils.nat_to_int_call_1904", %Uint32* %"$NatUtils.nat_to_int_85"
  %"$$NatUtils.nat_to_int_85_1905" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_85"
  store %Uint32 %"$$NatUtils.nat_to_int_85_1905", %Uint32* %int22
  %"$gasrem_1906" = load i64, i64* @_gasrem
  %"$gascmp_1907" = icmp ugt i64 1, %"$gasrem_1906"
  br i1 %"$gascmp_1907", label %"$out_of_gas_1908", label %"$have_gas_1909"

"$out_of_gas_1908":                               ; preds = %"$have_gas_1898"
  call void @_out_of_gas()
  br label %"$have_gas_1909"

"$have_gas_1909":                                 ; preds = %"$out_of_gas_1908", %"$have_gas_1898"
  %"$consume_1910" = sub i64 %"$gasrem_1906", 1
  store i64 %"$consume_1910", i64* @_gasrem
  %int23 = alloca %Uint32
  %"$gasrem_1911" = load i64, i64* @_gasrem
  %"$gascmp_1912" = icmp ugt i64 1, %"$gasrem_1911"
  br i1 %"$gascmp_1912", label %"$out_of_gas_1913", label %"$have_gas_1914"

"$out_of_gas_1913":                               ; preds = %"$have_gas_1909"
  call void @_out_of_gas()
  br label %"$have_gas_1914"

"$have_gas_1914":                                 ; preds = %"$out_of_gas_1913", %"$have_gas_1909"
  %"$consume_1915" = sub i64 %"$gasrem_1911", 1
  store i64 %"$consume_1915", i64* @_gasrem
  %"$NatUtils.nat_to_int_86" = alloca %Uint32
  %"$NatUtils.nat_to_int_1916" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_1917" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1916", 0
  %"$NatUtils.nat_to_int_envptr_1918" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1916", 1
  %"$ack23_1919" = load %TName_Nat*, %TName_Nat** %ack23
  %"$NatUtils.nat_to_int_call_1920" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1917"(i8* %"$NatUtils.nat_to_int_envptr_1918", %TName_Nat* %"$ack23_1919")
  store %Uint32 %"$NatUtils.nat_to_int_call_1920", %Uint32* %"$NatUtils.nat_to_int_86"
  %"$$NatUtils.nat_to_int_86_1921" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_86"
  store %Uint32 %"$$NatUtils.nat_to_int_86_1921", %Uint32* %int23
  %"$gasrem_1922" = load i64, i64* @_gasrem
  %"$gascmp_1923" = icmp ugt i64 1, %"$gasrem_1922"
  br i1 %"$gascmp_1923", label %"$out_of_gas_1924", label %"$have_gas_1925"

"$out_of_gas_1924":                               ; preds = %"$have_gas_1914"
  call void @_out_of_gas()
  br label %"$have_gas_1925"

"$have_gas_1925":                                 ; preds = %"$out_of_gas_1924", %"$have_gas_1914"
  %"$consume_1926" = sub i64 %"$gasrem_1922", 1
  store i64 %"$consume_1926", i64* @_gasrem
  %int24 = alloca %Uint32
  %"$gasrem_1927" = load i64, i64* @_gasrem
  %"$gascmp_1928" = icmp ugt i64 1, %"$gasrem_1927"
  br i1 %"$gascmp_1928", label %"$out_of_gas_1929", label %"$have_gas_1930"

"$out_of_gas_1929":                               ; preds = %"$have_gas_1925"
  call void @_out_of_gas()
  br label %"$have_gas_1930"

"$have_gas_1930":                                 ; preds = %"$out_of_gas_1929", %"$have_gas_1925"
  %"$consume_1931" = sub i64 %"$gasrem_1927", 1
  store i64 %"$consume_1931", i64* @_gasrem
  %"$NatUtils.nat_to_int_87" = alloca %Uint32
  %"$NatUtils.nat_to_int_1932" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_1933" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1932", 0
  %"$NatUtils.nat_to_int_envptr_1934" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1932", 1
  %"$ack23_1935" = load %TName_Nat*, %TName_Nat** %ack23
  %"$NatUtils.nat_to_int_call_1936" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1933"(i8* %"$NatUtils.nat_to_int_envptr_1934", %TName_Nat* %"$ack23_1935")
  store %Uint32 %"$NatUtils.nat_to_int_call_1936", %Uint32* %"$NatUtils.nat_to_int_87"
  %"$$NatUtils.nat_to_int_87_1937" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_87"
  store %Uint32 %"$$NatUtils.nat_to_int_87_1937", %Uint32* %int24
  %"$gasrem_1938" = load i64, i64* @_gasrem
  %"$gascmp_1939" = icmp ugt i64 1, %"$gasrem_1938"
  br i1 %"$gascmp_1939", label %"$out_of_gas_1940", label %"$have_gas_1941"

"$out_of_gas_1940":                               ; preds = %"$have_gas_1930"
  call void @_out_of_gas()
  br label %"$have_gas_1941"

"$have_gas_1941":                                 ; preds = %"$out_of_gas_1940", %"$have_gas_1930"
  %"$consume_1942" = sub i64 %"$gasrem_1938", 1
  store i64 %"$consume_1942", i64* @_gasrem
  %int30 = alloca %Uint32
  %"$gasrem_1943" = load i64, i64* @_gasrem
  %"$gascmp_1944" = icmp ugt i64 1, %"$gasrem_1943"
  br i1 %"$gascmp_1944", label %"$out_of_gas_1945", label %"$have_gas_1946"

"$out_of_gas_1945":                               ; preds = %"$have_gas_1941"
  call void @_out_of_gas()
  br label %"$have_gas_1946"

"$have_gas_1946":                                 ; preds = %"$out_of_gas_1945", %"$have_gas_1941"
  %"$consume_1947" = sub i64 %"$gasrem_1943", 1
  store i64 %"$consume_1947", i64* @_gasrem
  %"$NatUtils.nat_to_int_88" = alloca %Uint32
  %"$NatUtils.nat_to_int_1948" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_1949" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1948", 0
  %"$NatUtils.nat_to_int_envptr_1950" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1948", 1
  %"$ack30_1951" = load %TName_Nat*, %TName_Nat** %ack30
  %"$NatUtils.nat_to_int_call_1952" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1949"(i8* %"$NatUtils.nat_to_int_envptr_1950", %TName_Nat* %"$ack30_1951")
  store %Uint32 %"$NatUtils.nat_to_int_call_1952", %Uint32* %"$NatUtils.nat_to_int_88"
  %"$$NatUtils.nat_to_int_88_1953" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_88"
  store %Uint32 %"$$NatUtils.nat_to_int_88_1953", %Uint32* %int30
  %"$gasrem_1954" = load i64, i64* @_gasrem
  %"$gascmp_1955" = icmp ugt i64 1, %"$gasrem_1954"
  br i1 %"$gascmp_1955", label %"$out_of_gas_1956", label %"$have_gas_1957"

"$out_of_gas_1956":                               ; preds = %"$have_gas_1946"
  call void @_out_of_gas()
  br label %"$have_gas_1957"

"$have_gas_1957":                                 ; preds = %"$out_of_gas_1956", %"$have_gas_1946"
  %"$consume_1958" = sub i64 %"$gasrem_1954", 1
  store i64 %"$consume_1958", i64* @_gasrem
  %int31 = alloca %Uint32
  %"$gasrem_1959" = load i64, i64* @_gasrem
  %"$gascmp_1960" = icmp ugt i64 1, %"$gasrem_1959"
  br i1 %"$gascmp_1960", label %"$out_of_gas_1961", label %"$have_gas_1962"

"$out_of_gas_1961":                               ; preds = %"$have_gas_1957"
  call void @_out_of_gas()
  br label %"$have_gas_1962"

"$have_gas_1962":                                 ; preds = %"$out_of_gas_1961", %"$have_gas_1957"
  %"$consume_1963" = sub i64 %"$gasrem_1959", 1
  store i64 %"$consume_1963", i64* @_gasrem
  %"$NatUtils.nat_to_int_89" = alloca %Uint32
  %"$NatUtils.nat_to_int_1964" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_1965" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1964", 0
  %"$NatUtils.nat_to_int_envptr_1966" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1964", 1
  %"$ack31_1967" = load %TName_Nat*, %TName_Nat** %ack31
  %"$NatUtils.nat_to_int_call_1968" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1965"(i8* %"$NatUtils.nat_to_int_envptr_1966", %TName_Nat* %"$ack31_1967")
  store %Uint32 %"$NatUtils.nat_to_int_call_1968", %Uint32* %"$NatUtils.nat_to_int_89"
  %"$$NatUtils.nat_to_int_89_1969" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_89"
  store %Uint32 %"$$NatUtils.nat_to_int_89_1969", %Uint32* %int31
  %"$gasrem_1970" = load i64, i64* @_gasrem
  %"$gascmp_1971" = icmp ugt i64 1, %"$gasrem_1970"
  br i1 %"$gascmp_1971", label %"$out_of_gas_1972", label %"$have_gas_1973"

"$out_of_gas_1972":                               ; preds = %"$have_gas_1962"
  call void @_out_of_gas()
  br label %"$have_gas_1973"

"$have_gas_1973":                                 ; preds = %"$out_of_gas_1972", %"$have_gas_1962"
  %"$consume_1974" = sub i64 %"$gasrem_1970", 1
  store i64 %"$consume_1974", i64* @_gasrem
  %int32 = alloca %Uint32
  %"$gasrem_1975" = load i64, i64* @_gasrem
  %"$gascmp_1976" = icmp ugt i64 1, %"$gasrem_1975"
  br i1 %"$gascmp_1976", label %"$out_of_gas_1977", label %"$have_gas_1978"

"$out_of_gas_1977":                               ; preds = %"$have_gas_1973"
  call void @_out_of_gas()
  br label %"$have_gas_1978"

"$have_gas_1978":                                 ; preds = %"$out_of_gas_1977", %"$have_gas_1973"
  %"$consume_1979" = sub i64 %"$gasrem_1975", 1
  store i64 %"$consume_1979", i64* @_gasrem
  %"$NatUtils.nat_to_int_90" = alloca %Uint32
  %"$NatUtils.nat_to_int_1980" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_1981" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1980", 0
  %"$NatUtils.nat_to_int_envptr_1982" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1980", 1
  %"$ack32_1983" = load %TName_Nat*, %TName_Nat** %ack32
  %"$NatUtils.nat_to_int_call_1984" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1981"(i8* %"$NatUtils.nat_to_int_envptr_1982", %TName_Nat* %"$ack32_1983")
  store %Uint32 %"$NatUtils.nat_to_int_call_1984", %Uint32* %"$NatUtils.nat_to_int_90"
  %"$$NatUtils.nat_to_int_90_1985" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_90"
  store %Uint32 %"$$NatUtils.nat_to_int_90_1985", %Uint32* %int32
  %"$gasrem_1986" = load i64, i64* @_gasrem
  %"$gascmp_1987" = icmp ugt i64 1, %"$gasrem_1986"
  br i1 %"$gascmp_1987", label %"$out_of_gas_1988", label %"$have_gas_1989"

"$out_of_gas_1988":                               ; preds = %"$have_gas_1978"
  call void @_out_of_gas()
  br label %"$have_gas_1989"

"$have_gas_1989":                                 ; preds = %"$out_of_gas_1988", %"$have_gas_1978"
  %"$consume_1990" = sub i64 %"$gasrem_1986", 1
  store i64 %"$consume_1990", i64* @_gasrem
  %int33 = alloca %Uint32
  %"$gasrem_1991" = load i64, i64* @_gasrem
  %"$gascmp_1992" = icmp ugt i64 1, %"$gasrem_1991"
  br i1 %"$gascmp_1992", label %"$out_of_gas_1993", label %"$have_gas_1994"

"$out_of_gas_1993":                               ; preds = %"$have_gas_1989"
  call void @_out_of_gas()
  br label %"$have_gas_1994"

"$have_gas_1994":                                 ; preds = %"$out_of_gas_1993", %"$have_gas_1989"
  %"$consume_1995" = sub i64 %"$gasrem_1991", 1
  store i64 %"$consume_1995", i64* @_gasrem
  %"$NatUtils.nat_to_int_91" = alloca %Uint32
  %"$NatUtils.nat_to_int_1996" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_1997" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1996", 0
  %"$NatUtils.nat_to_int_envptr_1998" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1996", 1
  %"$ack33_1999" = load %TName_Nat*, %TName_Nat** %ack33
  %"$NatUtils.nat_to_int_call_2000" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1997"(i8* %"$NatUtils.nat_to_int_envptr_1998", %TName_Nat* %"$ack33_1999")
  store %Uint32 %"$NatUtils.nat_to_int_call_2000", %Uint32* %"$NatUtils.nat_to_int_91"
  %"$$NatUtils.nat_to_int_91_2001" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_91"
  store %Uint32 %"$$NatUtils.nat_to_int_91_2001", %Uint32* %int33
  %"$gasrem_2002" = load i64, i64* @_gasrem
  %"$gascmp_2003" = icmp ugt i64 1, %"$gasrem_2002"
  br i1 %"$gascmp_2003", label %"$out_of_gas_2004", label %"$have_gas_2005"

"$out_of_gas_2004":                               ; preds = %"$have_gas_1994"
  call void @_out_of_gas()
  br label %"$have_gas_2005"

"$have_gas_2005":                                 ; preds = %"$out_of_gas_2004", %"$have_gas_1994"
  %"$consume_2006" = sub i64 %"$gasrem_2002", 1
  store i64 %"$consume_2006", i64* @_gasrem
  %int34 = alloca %Uint32
  %"$gasrem_2007" = load i64, i64* @_gasrem
  %"$gascmp_2008" = icmp ugt i64 1, %"$gasrem_2007"
  br i1 %"$gascmp_2008", label %"$out_of_gas_2009", label %"$have_gas_2010"

"$out_of_gas_2009":                               ; preds = %"$have_gas_2005"
  call void @_out_of_gas()
  br label %"$have_gas_2010"

"$have_gas_2010":                                 ; preds = %"$out_of_gas_2009", %"$have_gas_2005"
  %"$consume_2011" = sub i64 %"$gasrem_2007", 1
  store i64 %"$consume_2011", i64* @_gasrem
  %"$NatUtils.nat_to_int_92" = alloca %Uint32
  %"$NatUtils.nat_to_int_2012" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_2013" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2012", 0
  %"$NatUtils.nat_to_int_envptr_2014" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2012", 1
  %"$ack34_2015" = load %TName_Nat*, %TName_Nat** %ack34
  %"$NatUtils.nat_to_int_call_2016" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2013"(i8* %"$NatUtils.nat_to_int_envptr_2014", %TName_Nat* %"$ack34_2015")
  store %Uint32 %"$NatUtils.nat_to_int_call_2016", %Uint32* %"$NatUtils.nat_to_int_92"
  %"$$NatUtils.nat_to_int_92_2017" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_92"
  store %Uint32 %"$$NatUtils.nat_to_int_92_2017", %Uint32* %int34
  %"$gasrem_2018" = load i64, i64* @_gasrem
  %"$gascmp_2019" = icmp ugt i64 1, %"$gasrem_2018"
  br i1 %"$gascmp_2019", label %"$out_of_gas_2020", label %"$have_gas_2021"

"$out_of_gas_2020":                               ; preds = %"$have_gas_2010"
  call void @_out_of_gas()
  br label %"$have_gas_2021"

"$have_gas_2021":                                 ; preds = %"$out_of_gas_2020", %"$have_gas_2010"
  %"$consume_2022" = sub i64 %"$gasrem_2018", 1
  store i64 %"$consume_2022", i64* @_gasrem
  %int40 = alloca %Uint32
  %"$gasrem_2023" = load i64, i64* @_gasrem
  %"$gascmp_2024" = icmp ugt i64 1, %"$gasrem_2023"
  br i1 %"$gascmp_2024", label %"$out_of_gas_2025", label %"$have_gas_2026"

"$out_of_gas_2025":                               ; preds = %"$have_gas_2021"
  call void @_out_of_gas()
  br label %"$have_gas_2026"

"$have_gas_2026":                                 ; preds = %"$out_of_gas_2025", %"$have_gas_2021"
  %"$consume_2027" = sub i64 %"$gasrem_2023", 1
  store i64 %"$consume_2027", i64* @_gasrem
  %"$NatUtils.nat_to_int_93" = alloca %Uint32
  %"$NatUtils.nat_to_int_2028" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int
  %"$NatUtils.nat_to_int_fptr_2029" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2028", 0
  %"$NatUtils.nat_to_int_envptr_2030" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_2028", 1
  %"$ack40_2031" = load %TName_Nat*, %TName_Nat** %ack40
  %"$NatUtils.nat_to_int_call_2032" = call %Uint32 %"$NatUtils.nat_to_int_fptr_2029"(i8* %"$NatUtils.nat_to_int_envptr_2030", %TName_Nat* %"$ack40_2031")
  store %Uint32 %"$NatUtils.nat_to_int_call_2032", %Uint32* %"$NatUtils.nat_to_int_93"
  %"$$NatUtils.nat_to_int_93_2033" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_93"
  store %Uint32 %"$$NatUtils.nat_to_int_93_2033", %Uint32* %int40
  %"$gasrem_2034" = load i64, i64* @_gasrem
  %"$gascmp_2035" = icmp ugt i64 1, %"$gasrem_2034"
  br i1 %"$gascmp_2035", label %"$out_of_gas_2036", label %"$have_gas_2037"

"$out_of_gas_2036":                               ; preds = %"$have_gas_2026"
  call void @_out_of_gas()
  br label %"$have_gas_2037"

"$have_gas_2037":                                 ; preds = %"$out_of_gas_2036", %"$have_gas_2026"
  %"$consume_2038" = sub i64 %"$gasrem_2034", 1
  store i64 %"$consume_2038", i64* @_gasrem
  %sum = alloca %Uint32
  %"$int01_2039" = load %Uint32, %Uint32* %int01
  %"$int02_2040" = load %Uint32, %Uint32* %int02
  %"$add_call_2041" = call %Uint32 @_add_Uint32(%Uint32 %"$int01_2039", %Uint32 %"$int02_2040")
  store %Uint32 %"$add_call_2041", %Uint32* %sum
  %"$gasrem_2042" = load i64, i64* @_gasrem
  %"$gascmp_2043" = icmp ugt i64 1, %"$gasrem_2042"
  br i1 %"$gascmp_2043", label %"$out_of_gas_2044", label %"$have_gas_2045"

"$out_of_gas_2044":                               ; preds = %"$have_gas_2037"
  call void @_out_of_gas()
  br label %"$have_gas_2045"

"$have_gas_2045":                                 ; preds = %"$out_of_gas_2044", %"$have_gas_2037"
  %"$consume_2046" = sub i64 %"$gasrem_2042", 1
  store i64 %"$consume_2046", i64* @_gasrem
  %"$sum_0" = alloca %Uint32
  %"$sum_2047" = load %Uint32, %Uint32* %sum
  %"$int03_2048" = load %Uint32, %Uint32* %int03
  %"$add_call_2049" = call %Uint32 @_add_Uint32(%Uint32 %"$sum_2047", %Uint32 %"$int03_2048")
  store %Uint32 %"$add_call_2049", %Uint32* %"$sum_0"
  %"$gasrem_2050" = load i64, i64* @_gasrem
  %"$gascmp_2051" = icmp ugt i64 1, %"$gasrem_2050"
  br i1 %"$gascmp_2051", label %"$out_of_gas_2052", label %"$have_gas_2053"

"$out_of_gas_2052":                               ; preds = %"$have_gas_2045"
  call void @_out_of_gas()
  br label %"$have_gas_2053"

"$have_gas_2053":                                 ; preds = %"$out_of_gas_2052", %"$have_gas_2045"
  %"$consume_2054" = sub i64 %"$gasrem_2050", 1
  store i64 %"$consume_2054", i64* @_gasrem
  %"$sum_1" = alloca %Uint32
  %"$$sum_0_2055" = load %Uint32, %Uint32* %"$sum_0"
  %"$int04_2056" = load %Uint32, %Uint32* %int04
  %"$add_call_2057" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_0_2055", %Uint32 %"$int04_2056")
  store %Uint32 %"$add_call_2057", %Uint32* %"$sum_1"
  %"$gasrem_2058" = load i64, i64* @_gasrem
  %"$gascmp_2059" = icmp ugt i64 1, %"$gasrem_2058"
  br i1 %"$gascmp_2059", label %"$out_of_gas_2060", label %"$have_gas_2061"

"$out_of_gas_2060":                               ; preds = %"$have_gas_2053"
  call void @_out_of_gas()
  br label %"$have_gas_2061"

"$have_gas_2061":                                 ; preds = %"$out_of_gas_2060", %"$have_gas_2053"
  %"$consume_2062" = sub i64 %"$gasrem_2058", 1
  store i64 %"$consume_2062", i64* @_gasrem
  %"$sum_2" = alloca %Uint32
  %"$$sum_1_2063" = load %Uint32, %Uint32* %"$sum_1"
  %"$int10_2064" = load %Uint32, %Uint32* %int10
  %"$add_call_2065" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_1_2063", %Uint32 %"$int10_2064")
  store %Uint32 %"$add_call_2065", %Uint32* %"$sum_2"
  %"$gasrem_2066" = load i64, i64* @_gasrem
  %"$gascmp_2067" = icmp ugt i64 1, %"$gasrem_2066"
  br i1 %"$gascmp_2067", label %"$out_of_gas_2068", label %"$have_gas_2069"

"$out_of_gas_2068":                               ; preds = %"$have_gas_2061"
  call void @_out_of_gas()
  br label %"$have_gas_2069"

"$have_gas_2069":                                 ; preds = %"$out_of_gas_2068", %"$have_gas_2061"
  %"$consume_2070" = sub i64 %"$gasrem_2066", 1
  store i64 %"$consume_2070", i64* @_gasrem
  %"$sum_3" = alloca %Uint32
  %"$$sum_2_2071" = load %Uint32, %Uint32* %"$sum_2"
  %"$int11_2072" = load %Uint32, %Uint32* %int11
  %"$add_call_2073" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_2_2071", %Uint32 %"$int11_2072")
  store %Uint32 %"$add_call_2073", %Uint32* %"$sum_3"
  %"$gasrem_2074" = load i64, i64* @_gasrem
  %"$gascmp_2075" = icmp ugt i64 1, %"$gasrem_2074"
  br i1 %"$gascmp_2075", label %"$out_of_gas_2076", label %"$have_gas_2077"

"$out_of_gas_2076":                               ; preds = %"$have_gas_2069"
  call void @_out_of_gas()
  br label %"$have_gas_2077"

"$have_gas_2077":                                 ; preds = %"$out_of_gas_2076", %"$have_gas_2069"
  %"$consume_2078" = sub i64 %"$gasrem_2074", 1
  store i64 %"$consume_2078", i64* @_gasrem
  %"$sum_4" = alloca %Uint32
  %"$$sum_3_2079" = load %Uint32, %Uint32* %"$sum_3"
  %"$int12_2080" = load %Uint32, %Uint32* %int12
  %"$add_call_2081" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_3_2079", %Uint32 %"$int12_2080")
  store %Uint32 %"$add_call_2081", %Uint32* %"$sum_4"
  %"$gasrem_2082" = load i64, i64* @_gasrem
  %"$gascmp_2083" = icmp ugt i64 1, %"$gasrem_2082"
  br i1 %"$gascmp_2083", label %"$out_of_gas_2084", label %"$have_gas_2085"

"$out_of_gas_2084":                               ; preds = %"$have_gas_2077"
  call void @_out_of_gas()
  br label %"$have_gas_2085"

"$have_gas_2085":                                 ; preds = %"$out_of_gas_2084", %"$have_gas_2077"
  %"$consume_2086" = sub i64 %"$gasrem_2082", 1
  store i64 %"$consume_2086", i64* @_gasrem
  %"$sum_5" = alloca %Uint32
  %"$$sum_4_2087" = load %Uint32, %Uint32* %"$sum_4"
  %"$int13_2088" = load %Uint32, %Uint32* %int13
  %"$add_call_2089" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_4_2087", %Uint32 %"$int13_2088")
  store %Uint32 %"$add_call_2089", %Uint32* %"$sum_5"
  %"$gasrem_2090" = load i64, i64* @_gasrem
  %"$gascmp_2091" = icmp ugt i64 1, %"$gasrem_2090"
  br i1 %"$gascmp_2091", label %"$out_of_gas_2092", label %"$have_gas_2093"

"$out_of_gas_2092":                               ; preds = %"$have_gas_2085"
  call void @_out_of_gas()
  br label %"$have_gas_2093"

"$have_gas_2093":                                 ; preds = %"$out_of_gas_2092", %"$have_gas_2085"
  %"$consume_2094" = sub i64 %"$gasrem_2090", 1
  store i64 %"$consume_2094", i64* @_gasrem
  %"$sum_6" = alloca %Uint32
  %"$$sum_5_2095" = load %Uint32, %Uint32* %"$sum_5"
  %"$int14_2096" = load %Uint32, %Uint32* %int14
  %"$add_call_2097" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_5_2095", %Uint32 %"$int14_2096")
  store %Uint32 %"$add_call_2097", %Uint32* %"$sum_6"
  %"$gasrem_2098" = load i64, i64* @_gasrem
  %"$gascmp_2099" = icmp ugt i64 1, %"$gasrem_2098"
  br i1 %"$gascmp_2099", label %"$out_of_gas_2100", label %"$have_gas_2101"

"$out_of_gas_2100":                               ; preds = %"$have_gas_2093"
  call void @_out_of_gas()
  br label %"$have_gas_2101"

"$have_gas_2101":                                 ; preds = %"$out_of_gas_2100", %"$have_gas_2093"
  %"$consume_2102" = sub i64 %"$gasrem_2098", 1
  store i64 %"$consume_2102", i64* @_gasrem
  %"$sum_7" = alloca %Uint32
  %"$$sum_6_2103" = load %Uint32, %Uint32* %"$sum_6"
  %"$int20_2104" = load %Uint32, %Uint32* %int20
  %"$add_call_2105" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_6_2103", %Uint32 %"$int20_2104")
  store %Uint32 %"$add_call_2105", %Uint32* %"$sum_7"
  %"$gasrem_2106" = load i64, i64* @_gasrem
  %"$gascmp_2107" = icmp ugt i64 1, %"$gasrem_2106"
  br i1 %"$gascmp_2107", label %"$out_of_gas_2108", label %"$have_gas_2109"

"$out_of_gas_2108":                               ; preds = %"$have_gas_2101"
  call void @_out_of_gas()
  br label %"$have_gas_2109"

"$have_gas_2109":                                 ; preds = %"$out_of_gas_2108", %"$have_gas_2101"
  %"$consume_2110" = sub i64 %"$gasrem_2106", 1
  store i64 %"$consume_2110", i64* @_gasrem
  %"$sum_8" = alloca %Uint32
  %"$$sum_7_2111" = load %Uint32, %Uint32* %"$sum_7"
  %"$int21_2112" = load %Uint32, %Uint32* %int21
  %"$add_call_2113" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_7_2111", %Uint32 %"$int21_2112")
  store %Uint32 %"$add_call_2113", %Uint32* %"$sum_8"
  %"$gasrem_2114" = load i64, i64* @_gasrem
  %"$gascmp_2115" = icmp ugt i64 1, %"$gasrem_2114"
  br i1 %"$gascmp_2115", label %"$out_of_gas_2116", label %"$have_gas_2117"

"$out_of_gas_2116":                               ; preds = %"$have_gas_2109"
  call void @_out_of_gas()
  br label %"$have_gas_2117"

"$have_gas_2117":                                 ; preds = %"$out_of_gas_2116", %"$have_gas_2109"
  %"$consume_2118" = sub i64 %"$gasrem_2114", 1
  store i64 %"$consume_2118", i64* @_gasrem
  %"$sum_9" = alloca %Uint32
  %"$$sum_8_2119" = load %Uint32, %Uint32* %"$sum_8"
  %"$int22_2120" = load %Uint32, %Uint32* %int22
  %"$add_call_2121" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_8_2119", %Uint32 %"$int22_2120")
  store %Uint32 %"$add_call_2121", %Uint32* %"$sum_9"
  %"$gasrem_2122" = load i64, i64* @_gasrem
  %"$gascmp_2123" = icmp ugt i64 1, %"$gasrem_2122"
  br i1 %"$gascmp_2123", label %"$out_of_gas_2124", label %"$have_gas_2125"

"$out_of_gas_2124":                               ; preds = %"$have_gas_2117"
  call void @_out_of_gas()
  br label %"$have_gas_2125"

"$have_gas_2125":                                 ; preds = %"$out_of_gas_2124", %"$have_gas_2117"
  %"$consume_2126" = sub i64 %"$gasrem_2122", 1
  store i64 %"$consume_2126", i64* @_gasrem
  %"$sum_10" = alloca %Uint32
  %"$$sum_9_2127" = load %Uint32, %Uint32* %"$sum_9"
  %"$int23_2128" = load %Uint32, %Uint32* %int23
  %"$add_call_2129" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_9_2127", %Uint32 %"$int23_2128")
  store %Uint32 %"$add_call_2129", %Uint32* %"$sum_10"
  %"$gasrem_2130" = load i64, i64* @_gasrem
  %"$gascmp_2131" = icmp ugt i64 1, %"$gasrem_2130"
  br i1 %"$gascmp_2131", label %"$out_of_gas_2132", label %"$have_gas_2133"

"$out_of_gas_2132":                               ; preds = %"$have_gas_2125"
  call void @_out_of_gas()
  br label %"$have_gas_2133"

"$have_gas_2133":                                 ; preds = %"$out_of_gas_2132", %"$have_gas_2125"
  %"$consume_2134" = sub i64 %"$gasrem_2130", 1
  store i64 %"$consume_2134", i64* @_gasrem
  %"$sum_11" = alloca %Uint32
  %"$$sum_10_2135" = load %Uint32, %Uint32* %"$sum_10"
  %"$int24_2136" = load %Uint32, %Uint32* %int24
  %"$add_call_2137" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_10_2135", %Uint32 %"$int24_2136")
  store %Uint32 %"$add_call_2137", %Uint32* %"$sum_11"
  %"$gasrem_2138" = load i64, i64* @_gasrem
  %"$gascmp_2139" = icmp ugt i64 1, %"$gasrem_2138"
  br i1 %"$gascmp_2139", label %"$out_of_gas_2140", label %"$have_gas_2141"

"$out_of_gas_2140":                               ; preds = %"$have_gas_2133"
  call void @_out_of_gas()
  br label %"$have_gas_2141"

"$have_gas_2141":                                 ; preds = %"$out_of_gas_2140", %"$have_gas_2133"
  %"$consume_2142" = sub i64 %"$gasrem_2138", 1
  store i64 %"$consume_2142", i64* @_gasrem
  %"$sum_12" = alloca %Uint32
  %"$$sum_11_2143" = load %Uint32, %Uint32* %"$sum_11"
  %"$int30_2144" = load %Uint32, %Uint32* %int30
  %"$add_call_2145" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_11_2143", %Uint32 %"$int30_2144")
  store %Uint32 %"$add_call_2145", %Uint32* %"$sum_12"
  %"$gasrem_2146" = load i64, i64* @_gasrem
  %"$gascmp_2147" = icmp ugt i64 1, %"$gasrem_2146"
  br i1 %"$gascmp_2147", label %"$out_of_gas_2148", label %"$have_gas_2149"

"$out_of_gas_2148":                               ; preds = %"$have_gas_2141"
  call void @_out_of_gas()
  br label %"$have_gas_2149"

"$have_gas_2149":                                 ; preds = %"$out_of_gas_2148", %"$have_gas_2141"
  %"$consume_2150" = sub i64 %"$gasrem_2146", 1
  store i64 %"$consume_2150", i64* @_gasrem
  %"$sum_13" = alloca %Uint32
  %"$$sum_12_2151" = load %Uint32, %Uint32* %"$sum_12"
  %"$int31_2152" = load %Uint32, %Uint32* %int31
  %"$add_call_2153" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_12_2151", %Uint32 %"$int31_2152")
  store %Uint32 %"$add_call_2153", %Uint32* %"$sum_13"
  %"$gasrem_2154" = load i64, i64* @_gasrem
  %"$gascmp_2155" = icmp ugt i64 1, %"$gasrem_2154"
  br i1 %"$gascmp_2155", label %"$out_of_gas_2156", label %"$have_gas_2157"

"$out_of_gas_2156":                               ; preds = %"$have_gas_2149"
  call void @_out_of_gas()
  br label %"$have_gas_2157"

"$have_gas_2157":                                 ; preds = %"$out_of_gas_2156", %"$have_gas_2149"
  %"$consume_2158" = sub i64 %"$gasrem_2154", 1
  store i64 %"$consume_2158", i64* @_gasrem
  %"$sum_14" = alloca %Uint32
  %"$$sum_13_2159" = load %Uint32, %Uint32* %"$sum_13"
  %"$int32_2160" = load %Uint32, %Uint32* %int32
  %"$add_call_2161" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_13_2159", %Uint32 %"$int32_2160")
  store %Uint32 %"$add_call_2161", %Uint32* %"$sum_14"
  %"$gasrem_2162" = load i64, i64* @_gasrem
  %"$gascmp_2163" = icmp ugt i64 1, %"$gasrem_2162"
  br i1 %"$gascmp_2163", label %"$out_of_gas_2164", label %"$have_gas_2165"

"$out_of_gas_2164":                               ; preds = %"$have_gas_2157"
  call void @_out_of_gas()
  br label %"$have_gas_2165"

"$have_gas_2165":                                 ; preds = %"$out_of_gas_2164", %"$have_gas_2157"
  %"$consume_2166" = sub i64 %"$gasrem_2162", 1
  store i64 %"$consume_2166", i64* @_gasrem
  %"$sum_15" = alloca %Uint32
  %"$$sum_14_2167" = load %Uint32, %Uint32* %"$sum_14"
  %"$int33_2168" = load %Uint32, %Uint32* %int33
  %"$add_call_2169" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_14_2167", %Uint32 %"$int33_2168")
  store %Uint32 %"$add_call_2169", %Uint32* %"$sum_15"
  %"$gasrem_2170" = load i64, i64* @_gasrem
  %"$gascmp_2171" = icmp ugt i64 1, %"$gasrem_2170"
  br i1 %"$gascmp_2171", label %"$out_of_gas_2172", label %"$have_gas_2173"

"$out_of_gas_2172":                               ; preds = %"$have_gas_2165"
  call void @_out_of_gas()
  br label %"$have_gas_2173"

"$have_gas_2173":                                 ; preds = %"$out_of_gas_2172", %"$have_gas_2165"
  %"$consume_2174" = sub i64 %"$gasrem_2170", 1
  store i64 %"$consume_2174", i64* @_gasrem
  %"$sum_16" = alloca %Uint32
  %"$$sum_15_2175" = load %Uint32, %Uint32* %"$sum_15"
  %"$int34_2176" = load %Uint32, %Uint32* %int34
  %"$add_call_2177" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_15_2175", %Uint32 %"$int34_2176")
  store %Uint32 %"$add_call_2177", %Uint32* %"$sum_16"
  %"$gasrem_2178" = load i64, i64* @_gasrem
  %"$gascmp_2179" = icmp ugt i64 1, %"$gasrem_2178"
  br i1 %"$gascmp_2179", label %"$out_of_gas_2180", label %"$have_gas_2181"

"$out_of_gas_2180":                               ; preds = %"$have_gas_2173"
  call void @_out_of_gas()
  br label %"$have_gas_2181"

"$have_gas_2181":                                 ; preds = %"$out_of_gas_2180", %"$have_gas_2173"
  %"$consume_2182" = sub i64 %"$gasrem_2178", 1
  store i64 %"$consume_2182", i64* @_gasrem
  %"$sum_17" = alloca %Uint32
  %"$$sum_16_2183" = load %Uint32, %Uint32* %"$sum_16"
  %"$int40_2184" = load %Uint32, %Uint32* %int40
  %"$add_call_2185" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_16_2183", %Uint32 %"$int40_2184")
  store %Uint32 %"$add_call_2185", %Uint32* %"$sum_17"
  %"$gasrem_2186" = load i64, i64* @_gasrem
  %"$gascmp_2187" = icmp ugt i64 1, %"$gasrem_2186"
  br i1 %"$gascmp_2187", label %"$out_of_gas_2188", label %"$have_gas_2189"

"$out_of_gas_2188":                               ; preds = %"$have_gas_2181"
  call void @_out_of_gas()
  br label %"$have_gas_2189"

"$have_gas_2189":                                 ; preds = %"$out_of_gas_2188", %"$have_gas_2181"
  %"$consume_2190" = sub i64 %"$gasrem_2186", 1
  store i64 %"$consume_2190", i64* @_gasrem
  %"$$sum_17_2191" = load %Uint32, %Uint32* %"$sum_17"
  store %Uint32 %"$$sum_17_2191", %Uint32* %"$expr_124"
  %"$$expr_124_2192" = load %Uint32, %Uint32* %"$expr_124"
  ret %Uint32 %"$$expr_124_2192"
}

declare %TName_Nat* @_to_nat(i8*, %Uint32)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_2193" = call %Uint32 @"$scilla_expr_1045"(i8* null)
  %"$pval_2194" = alloca %Uint32
  %"$memvoidcast_2195" = bitcast %Uint32* %"$pval_2194" to i8*
  store %Uint32 %"$exprval_2193", %Uint32* %"$pval_2194"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_161", i8* %"$memvoidcast_2195")
  ret void
}
