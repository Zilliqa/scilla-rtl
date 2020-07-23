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
@nat_to_int = global { %Uint32 (i8*, %TName_Nat*)*, i8* } zeroinitializer

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_155"(%"$$fundef_155_env_203"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_155_env_f_708" = getelementptr inbounds %"$$fundef_155_env_203", %"$$fundef_155_env_203"* %0, i32 0, i32 0
  %"$f_envload_709" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_155_env_f_708"
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_709", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_155_env_iter_nat_nat_710" = getelementptr inbounds %"$$fundef_155_env_203", %"$$fundef_155_env_203"* %0, i32 0, i32 1
  %"$iter_nat_nat_envload_711" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_155_env_iter_nat_nat_710"
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_envload_711", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  %"$$fundef_155_env_nat_succ_712" = getelementptr inbounds %"$$fundef_155_env_203", %"$$fundef_155_env_203"* %0, i32 0, i32 2
  %"$nat_succ_envload_713" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_155_env_nat_succ_712"
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_envload_713", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ
  %"$retval_156" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$iter_nat_nat_33" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$iter_nat_nat_714" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  %"$iter_nat_nat_fptr_715" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_714", 0
  %"$iter_nat_nat_envptr_716" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_714", 1
  %"$f_717" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$iter_nat_nat_call_718" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_fptr_715"(i8* %"$iter_nat_nat_envptr_716", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_717")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_call_718", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_33"
  %"$iter_nat_nat_34" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$$iter_nat_nat_33_719" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_33"
  %"$$iter_nat_nat_33_fptr_720" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_33_719", 0
  %"$$iter_nat_nat_33_envptr_721" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_33_719", 1
  %"$$iter_nat_nat_33_call_722" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_33_fptr_720"(i8* %"$$iter_nat_nat_33_envptr_721", %TName_Nat* %1)
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_33_call_722", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_34"
  %"$iter_nat_nat_35" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$iter_nat_nat_34_723" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_34"
  %"$$iter_nat_nat_34_fptr_724" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_34_723", 0
  %"$$iter_nat_nat_34_envptr_725" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_34_723", 1
  %"$nat_succ_726" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ
  %"$$iter_nat_nat_34_call_727" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_34_fptr_724"(i8* %"$$iter_nat_nat_34_envptr_725", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_726")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_34_call_727", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_35"
  %"$$iter_nat_nat_35_728" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_35"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_35_728", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_156"
  %"$$retval_156_729" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_156"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_156_729"
}

define internal %TName_Nat* @"$fundef_153"(%"$$fundef_153_env_204"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_153_env_ack_686" = getelementptr inbounds %"$$fundef_153_env_204", %"$$fundef_153_env_204"* %0, i32 0, i32 0
  %"$ack_envload_687" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_153_env_ack_686"
  %ack = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_envload_687", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack
  %"$$fundef_153_env_iter_nat_688" = getelementptr inbounds %"$$fundef_153_env_204", %"$$fundef_153_env_204"* %0, i32 0, i32 1
  %"$iter_nat_envload_689" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_153_env_iter_nat_688"
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_689", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat
  %"$$fundef_153_env_x0_690" = getelementptr inbounds %"$$fundef_153_env_204", %"$$fundef_153_env_204"* %0, i32 0, i32 2
  %"$x0_envload_691" = load %TName_Nat*, %TName_Nat** %"$$fundef_153_env_x0_690"
  %x0 = alloca %TName_Nat*
  store %TName_Nat* %"$x0_envload_691", %TName_Nat** %x0
  %"$retval_154" = alloca %TName_Nat*
  %"$iter_nat_30" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$iter_nat_692" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat
  %"$iter_nat_fptr_693" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_692", 0
  %"$iter_nat_envptr_694" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_692", 1
  %"$ack_695" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack
  %"$iter_nat_call_696" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_fptr_693"(i8* %"$iter_nat_envptr_694", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_695")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_call_696", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_30"
  %"$iter_nat_31" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$iter_nat_30_697" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_30"
  %"$$iter_nat_30_fptr_698" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_697", 0
  %"$$iter_nat_30_envptr_699" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_697", 1
  %"$$iter_nat_30_call_700" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_fptr_698"(i8* %"$$iter_nat_30_envptr_699", %TName_Nat* %1)
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_30_call_700", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_31"
  %"$iter_nat_32" = alloca %TName_Nat*
  %"$$iter_nat_31_701" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_31"
  %"$$iter_nat_31_fptr_702" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_31_701", 0
  %"$$iter_nat_31_envptr_703" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_31_701", 1
  %"$x0_704" = load %TName_Nat*, %TName_Nat** %x0
  %"$$iter_nat_31_call_705" = call %TName_Nat* %"$$iter_nat_31_fptr_702"(i8* %"$$iter_nat_31_envptr_703", %TName_Nat* %"$x0_704")
  store %TName_Nat* %"$$iter_nat_31_call_705", %TName_Nat** %"$iter_nat_32"
  %"$$iter_nat_32_706" = load %TName_Nat*, %TName_Nat** %"$iter_nat_32"
  store %TName_Nat* %"$$iter_nat_32_706", %TName_Nat** %"$retval_154"
  %"$$retval_154_707" = load %TName_Nat*, %TName_Nat** %"$retval_154"
  ret %TName_Nat* %"$$retval_154_707"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_151"(%"$$fundef_151_env_205"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_151_env_iter_nat_667" = getelementptr inbounds %"$$fundef_151_env_205", %"$$fundef_151_env_205"* %0, i32 0, i32 0
  %"$iter_nat_envload_668" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_151_env_iter_nat_667"
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_668", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat
  %"$$fundef_151_env_one_669" = getelementptr inbounds %"$$fundef_151_env_205", %"$$fundef_151_env_205"* %0, i32 0, i32 1
  %"$one_envload_670" = load %TName_Nat*, %TName_Nat** %"$$fundef_151_env_one_669"
  %one = alloca %TName_Nat*
  store %TName_Nat* %"$one_envload_670", %TName_Nat** %one
  %"$retval_152" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %x0 = alloca %TName_Nat*
  %"$ack_29" = alloca %TName_Nat*
  %"$ack_fptr_671" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 0
  %"$ack_envptr_672" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 1
  %"$one_673" = load %TName_Nat*, %TName_Nat** %one
  %"$ack_call_674" = call %TName_Nat* %"$ack_fptr_671"(i8* %"$ack_envptr_672", %TName_Nat* %"$one_673")
  store %TName_Nat* %"$ack_call_674", %TName_Nat** %"$ack_29"
  %"$$ack_29_675" = load %TName_Nat*, %TName_Nat** %"$ack_29"
  store %TName_Nat* %"$$ack_29_675", %TName_Nat** %x0
  %"$$fundef_153_envp_676_load" = load i8*, i8** @_execptr
  %"$$fundef_153_envp_676_salloc" = call i8* @_salloc(i8* %"$$fundef_153_envp_676_load", i64 40)
  %"$$fundef_153_envp_676" = bitcast i8* %"$$fundef_153_envp_676_salloc" to %"$$fundef_153_env_204"*
  %"$$fundef_153_env_voidp_678" = bitcast %"$$fundef_153_env_204"* %"$$fundef_153_envp_676" to i8*
  %"$$fundef_153_cloval_679" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_153_env_204"*, %TName_Nat*)* @"$fundef_153" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_153_env_voidp_678", 1
  %"$$fundef_153_env_ack_680" = getelementptr inbounds %"$$fundef_153_env_204", %"$$fundef_153_env_204"* %"$$fundef_153_envp_676", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_153_env_ack_680"
  %"$$fundef_153_env_iter_nat_681" = getelementptr inbounds %"$$fundef_153_env_204", %"$$fundef_153_env_204"* %"$$fundef_153_envp_676", i32 0, i32 1
  %"$iter_nat_682" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_682", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_153_env_iter_nat_681"
  %"$$fundef_153_env_x0_683" = getelementptr inbounds %"$$fundef_153_env_204", %"$$fundef_153_env_204"* %"$$fundef_153_envp_676", i32 0, i32 2
  %"$x0_684" = load %TName_Nat*, %TName_Nat** %x0
  store %TName_Nat* %"$x0_684", %TName_Nat** %"$$fundef_153_env_x0_683"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_153_cloval_679", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_152"
  %"$$retval_152_685" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_152"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_152_685"
}

define internal %TName_Nat* @"$fundef_149"(%"$$fundef_149_env_206"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_149_env_f_656" = getelementptr inbounds %"$$fundef_149_env_206", %"$$fundef_149_env_206"* %0, i32 0, i32 0
  %"$f_envload_657" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_149_env_f_656"
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_657", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  %"$$fundef_149_env_x_658" = getelementptr inbounds %"$$fundef_149_env_206", %"$$fundef_149_env_206"* %0, i32 0, i32 1
  %"$x_envload_659" = load %TName_Nat*, %TName_Nat** %"$$fundef_149_env_x_658"
  %x = alloca %TName_Nat*
  store %TName_Nat* %"$x_envload_659", %TName_Nat** %x
  %"$retval_150" = alloca %TName_Nat*
  %"$f_25" = alloca %TName_Nat*
  %"$f_660" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  %"$f_fptr_661" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_660", 0
  %"$f_envptr_662" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_660", 1
  %"$x_663" = load %TName_Nat*, %TName_Nat** %x
  %"$f_call_664" = call %TName_Nat* %"$f_fptr_661"(i8* %"$f_envptr_662", %TName_Nat* %"$x_663")
  store %TName_Nat* %"$f_call_664", %TName_Nat** %"$f_25"
  %"$$f_25_665" = load %TName_Nat*, %TName_Nat** %"$f_25"
  store %TName_Nat* %"$$f_25_665", %TName_Nat** %"$retval_150"
  %"$$retval_150_666" = load %TName_Nat*, %TName_Nat** %"$retval_150"
  ret %TName_Nat* %"$$retval_150_666"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_147"(%"$$fundef_147_env_207"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_147_env_f_646" = getelementptr inbounds %"$$fundef_147_env_207", %"$$fundef_147_env_207"* %0, i32 0, i32 0
  %"$f_envload_647" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_147_env_f_646"
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_647", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  %"$retval_148" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_149_envp_648_load" = load i8*, i8** @_execptr
  %"$$fundef_149_envp_648_salloc" = call i8* @_salloc(i8* %"$$fundef_149_envp_648_load", i64 24)
  %"$$fundef_149_envp_648" = bitcast i8* %"$$fundef_149_envp_648_salloc" to %"$$fundef_149_env_206"*
  %"$$fundef_149_env_voidp_650" = bitcast %"$$fundef_149_env_206"* %"$$fundef_149_envp_648" to i8*
  %"$$fundef_149_cloval_651" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_149_env_206"*, %TName_Nat*)* @"$fundef_149" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_149_env_voidp_650", 1
  %"$$fundef_149_env_f_652" = getelementptr inbounds %"$$fundef_149_env_206", %"$$fundef_149_env_206"* %"$$fundef_149_envp_648", i32 0, i32 0
  %"$f_653" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_653", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_149_env_f_652"
  %"$$fundef_149_env_x_654" = getelementptr inbounds %"$$fundef_149_env_206", %"$$fundef_149_env_206"* %"$$fundef_149_envp_648", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_149_env_x_654"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_149_cloval_651", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_148"
  %"$$retval_148_655" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_148"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_148_655"
}

define internal %TName_Nat* @"$fundef_145"(%"$$fundef_145_env_208"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_145_env_f_611" = getelementptr inbounds %"$$fundef_145_env_208", %"$$fundef_145_env_208"* %0, i32 0, i32 0
  %"$f_envload_612" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_145_env_f_611"
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_612", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  %"$$fundef_145_env_n_613" = getelementptr inbounds %"$$fundef_145_env_208", %"$$fundef_145_env_208"* %0, i32 0, i32 1
  %"$n_envload_614" = load %TName_Nat*, %TName_Nat** %"$$fundef_145_env_n_613"
  %n = alloca %TName_Nat*
  store %TName_Nat* %"$n_envload_614", %TName_Nat** %n
  %"$$fundef_145_env_nat_fold_615" = getelementptr inbounds %"$$fundef_145_env_208", %"$$fundef_145_env_208"* %0, i32 0, i32 2
  %"$nat_fold_envload_616" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_145_env_nat_fold_615"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_616", { i8*, i8* }** %nat_fold
  %"$retval_146" = alloca %TName_Nat*
  %folder = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$nat_fold_617" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  %"$nat_fold_618" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_617", i32 2
  %"$nat_fold_619" = bitcast { i8*, i8* }* %"$nat_fold_618" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_620" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_619"
  %"$nat_fold_fptr_621" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_620", 0
  %"$nat_fold_envptr_622" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_620", 1
  %"$nat_fold_call_623" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_fptr_621"(i8* %"$nat_fold_envptr_622")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_call_623", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder
  %step = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_147_envp_624_load" = load i8*, i8** @_execptr
  %"$$fundef_147_envp_624_salloc" = call i8* @_salloc(i8* %"$$fundef_147_envp_624_load", i64 16)
  %"$$fundef_147_envp_624" = bitcast i8* %"$$fundef_147_envp_624_salloc" to %"$$fundef_147_env_207"*
  %"$$fundef_147_env_voidp_626" = bitcast %"$$fundef_147_env_207"* %"$$fundef_147_envp_624" to i8*
  %"$$fundef_147_cloval_627" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_147_env_207"*, %TName_Nat*)* @"$fundef_147" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_147_env_voidp_626", 1
  %"$$fundef_147_env_f_628" = getelementptr inbounds %"$$fundef_147_env_207", %"$$fundef_147_env_207"* %"$$fundef_147_envp_624", i32 0, i32 0
  %"$f_629" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_629", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_147_env_f_628"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_147_cloval_627", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step
  %"$folder_26" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$folder_630" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder
  %"$folder_fptr_631" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_630", 0
  %"$folder_envptr_632" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_630", 1
  %"$step_633" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step
  %"$folder_call_634" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_fptr_631"(i8* %"$folder_envptr_632", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$step_633")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_call_634", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_26"
  %"$folder_27" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$folder_26_635" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_26"
  %"$$folder_26_fptr_636" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_635", 0
  %"$$folder_26_envptr_637" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_635", 1
  %"$$folder_26_call_638" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_26_fptr_636"(i8* %"$$folder_26_envptr_637", %TName_Nat* %1)
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_26_call_638", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_27"
  %"$folder_28" = alloca %TName_Nat*
  %"$$folder_27_639" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_27"
  %"$$folder_27_fptr_640" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_639", 0
  %"$$folder_27_envptr_641" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_639", 1
  %"$n_642" = load %TName_Nat*, %TName_Nat** %n
  %"$$folder_27_call_643" = call %TName_Nat* %"$$folder_27_fptr_640"(i8* %"$$folder_27_envptr_641", %TName_Nat* %"$n_642")
  store %TName_Nat* %"$$folder_27_call_643", %TName_Nat** %"$folder_28"
  %"$$folder_28_644" = load %TName_Nat*, %TName_Nat** %"$folder_28"
  store %TName_Nat* %"$$folder_28_644", %TName_Nat** %"$retval_146"
  %"$$retval_146_645" = load %TName_Nat*, %TName_Nat** %"$retval_146"
  ret %TName_Nat* %"$$retval_146_645"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_143"(%"$$fundef_143_env_209"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_143_env_f_597" = getelementptr inbounds %"$$fundef_143_env_209", %"$$fundef_143_env_209"* %0, i32 0, i32 0
  %"$f_envload_598" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_143_env_f_597"
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_598", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  %"$$fundef_143_env_nat_fold_599" = getelementptr inbounds %"$$fundef_143_env_209", %"$$fundef_143_env_209"* %0, i32 0, i32 1
  %"$nat_fold_envload_600" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_143_env_nat_fold_599"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_600", { i8*, i8* }** %nat_fold
  %"$retval_144" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_145_envp_601_load" = load i8*, i8** @_execptr
  %"$$fundef_145_envp_601_salloc" = call i8* @_salloc(i8* %"$$fundef_145_envp_601_load", i64 32)
  %"$$fundef_145_envp_601" = bitcast i8* %"$$fundef_145_envp_601_salloc" to %"$$fundef_145_env_208"*
  %"$$fundef_145_env_voidp_603" = bitcast %"$$fundef_145_env_208"* %"$$fundef_145_envp_601" to i8*
  %"$$fundef_145_cloval_604" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_145_env_208"*, %TName_Nat*)* @"$fundef_145" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_145_env_voidp_603", 1
  %"$$fundef_145_env_f_605" = getelementptr inbounds %"$$fundef_145_env_208", %"$$fundef_145_env_208"* %"$$fundef_145_envp_601", i32 0, i32 0
  %"$f_606" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_606", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_145_env_f_605"
  %"$$fundef_145_env_n_607" = getelementptr inbounds %"$$fundef_145_env_208", %"$$fundef_145_env_208"* %"$$fundef_145_envp_601", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_145_env_n_607"
  %"$$fundef_145_env_nat_fold_608" = getelementptr inbounds %"$$fundef_145_env_208", %"$$fundef_145_env_208"* %"$$fundef_145_envp_601", i32 0, i32 2
  %"$nat_fold_609" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_609", { i8*, i8* }** %"$$fundef_145_env_nat_fold_608"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_145_cloval_604", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_144"
  %"$$retval_144_610" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_144"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_144_610"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_141"(%"$$fundef_141_env_210"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_141_env_nat_fold_587" = getelementptr inbounds %"$$fundef_141_env_210", %"$$fundef_141_env_210"* %0, i32 0, i32 0
  %"$nat_fold_envload_588" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_141_env_nat_fold_587"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_588", { i8*, i8* }** %nat_fold
  %"$retval_142" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_143_envp_589_load" = load i8*, i8** @_execptr
  %"$$fundef_143_envp_589_salloc" = call i8* @_salloc(i8* %"$$fundef_143_envp_589_load", i64 24)
  %"$$fundef_143_envp_589" = bitcast i8* %"$$fundef_143_envp_589_salloc" to %"$$fundef_143_env_209"*
  %"$$fundef_143_env_voidp_591" = bitcast %"$$fundef_143_env_209"* %"$$fundef_143_envp_589" to i8*
  %"$$fundef_143_cloval_592" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_143_env_209"*, %TName_Nat*)* @"$fundef_143" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_143_env_voidp_591", 1
  %"$$fundef_143_env_f_593" = getelementptr inbounds %"$$fundef_143_env_209", %"$$fundef_143_env_209"* %"$$fundef_143_envp_589", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_143_env_f_593"
  %"$$fundef_143_env_nat_fold_594" = getelementptr inbounds %"$$fundef_143_env_209", %"$$fundef_143_env_209"* %"$$fundef_143_envp_589", i32 0, i32 1
  %"$nat_fold_595" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_595", { i8*, i8* }** %"$$fundef_143_env_nat_fold_594"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_143_cloval_592", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_142"
  %"$$retval_142_596" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_142"
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_142_596"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_139"(%"$$fundef_139_env_211"* %0) {
entry:
  %"$$fundef_139_env_nat_fold_578" = getelementptr inbounds %"$$fundef_139_env_211", %"$$fundef_139_env_211"* %0, i32 0, i32 0
  %"$nat_fold_envload_579" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_139_env_nat_fold_578"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_579", { i8*, i8* }** %nat_fold
  %"$retval_140" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$$fundef_141_envp_580_load" = load i8*, i8** @_execptr
  %"$$fundef_141_envp_580_salloc" = call i8* @_salloc(i8* %"$$fundef_141_envp_580_load", i64 8)
  %"$$fundef_141_envp_580" = bitcast i8* %"$$fundef_141_envp_580_salloc" to %"$$fundef_141_env_210"*
  %"$$fundef_141_env_voidp_582" = bitcast %"$$fundef_141_env_210"* %"$$fundef_141_envp_580" to i8*
  %"$$fundef_141_cloval_583" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_141_env_210"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_141" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_141_env_voidp_582", 1
  %"$$fundef_141_env_nat_fold_584" = getelementptr inbounds %"$$fundef_141_env_210", %"$$fundef_141_env_210"* %"$$fundef_141_envp_580", i32 0, i32 0
  %"$nat_fold_585" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_585", { i8*, i8* }** %"$$fundef_141_env_nat_fold_584"
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_141_cloval_583", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_140"
  %"$$retval_140_586" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_140"
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_140_586"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_137"(%"$$fundef_137_env_212"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_137_env_f_567" = getelementptr inbounds %"$$fundef_137_env_212", %"$$fundef_137_env_212"* %0, i32 0, i32 0
  %"$f_envload_568" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_137_env_f_567"
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_568", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_137_env_x_569" = getelementptr inbounds %"$$fundef_137_env_212", %"$$fundef_137_env_212"* %0, i32 0, i32 1
  %"$x_envload_570" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_137_env_x_569"
  %x = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_envload_570", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x
  %"$retval_138" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$f_25" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$f_571" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$f_fptr_572" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_571", 0
  %"$f_envptr_573" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_571", 1
  %"$x_574" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x
  %"$f_call_575" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_fptr_572"(i8* %"$f_envptr_573", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_574")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_call_575", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_25"
  %"$$f_25_576" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_25"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$f_25_576", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_138"
  %"$$retval_138_577" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_138"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_138_577"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_135"(%"$$fundef_135_env_213"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_135_env_f_557" = getelementptr inbounds %"$$fundef_135_env_213", %"$$fundef_135_env_213"* %0, i32 0, i32 0
  %"$f_envload_558" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_135_env_f_557"
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_558", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$retval_136" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_137_envp_559_load" = load i8*, i8** @_execptr
  %"$$fundef_137_envp_559_salloc" = call i8* @_salloc(i8* %"$$fundef_137_envp_559_load", i64 32)
  %"$$fundef_137_envp_559" = bitcast i8* %"$$fundef_137_envp_559_salloc" to %"$$fundef_137_env_212"*
  %"$$fundef_137_env_voidp_561" = bitcast %"$$fundef_137_env_212"* %"$$fundef_137_envp_559" to i8*
  %"$$fundef_137_cloval_562" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_137_env_212"*, %TName_Nat*)* @"$fundef_137" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_137_env_voidp_561", 1
  %"$$fundef_137_env_f_563" = getelementptr inbounds %"$$fundef_137_env_212", %"$$fundef_137_env_212"* %"$$fundef_137_envp_559", i32 0, i32 0
  %"$f_564" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_564", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_137_env_f_563"
  %"$$fundef_137_env_x_565" = getelementptr inbounds %"$$fundef_137_env_212", %"$$fundef_137_env_212"* %"$$fundef_137_envp_559", i32 0, i32 1
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_137_env_x_565"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_137_cloval_562", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_136"
  %"$$retval_136_566" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_136"
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_136_566"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_133"(%"$$fundef_133_env_214"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_133_env_f_522" = getelementptr inbounds %"$$fundef_133_env_214", %"$$fundef_133_env_214"* %0, i32 0, i32 0
  %"$f_envload_523" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_133_env_f_522"
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_523", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_133_env_n_524" = getelementptr inbounds %"$$fundef_133_env_214", %"$$fundef_133_env_214"* %0, i32 0, i32 1
  %"$n_envload_525" = load %TName_Nat*, %TName_Nat** %"$$fundef_133_env_n_524"
  %n = alloca %TName_Nat*
  store %TName_Nat* %"$n_envload_525", %TName_Nat** %n
  %"$$fundef_133_env_nat_fold_526" = getelementptr inbounds %"$$fundef_133_env_214", %"$$fundef_133_env_214"* %0, i32 0, i32 2
  %"$nat_fold_envload_527" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_133_env_nat_fold_526"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_527", { i8*, i8* }** %nat_fold
  %"$retval_134" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %folder = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }
  %"$nat_fold_528" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  %"$nat_fold_529" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_528", i32 1
  %"$nat_fold_530" = bitcast { i8*, i8* }* %"$nat_fold_529" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_531" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_530"
  %"$nat_fold_fptr_532" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_531", 0
  %"$nat_fold_envptr_533" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_531", 1
  %"$nat_fold_call_534" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_fptr_532"(i8* %"$nat_fold_envptr_533")
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_call_534", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder
  %step = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$$fundef_135_envp_535_load" = load i8*, i8** @_execptr
  %"$$fundef_135_envp_535_salloc" = call i8* @_salloc(i8* %"$$fundef_135_envp_535_load", i64 16)
  %"$$fundef_135_envp_535" = bitcast i8* %"$$fundef_135_envp_535_salloc" to %"$$fundef_135_env_213"*
  %"$$fundef_135_env_voidp_537" = bitcast %"$$fundef_135_env_213"* %"$$fundef_135_envp_535" to i8*
  %"$$fundef_135_cloval_538" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_135_env_213"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_135" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_135_env_voidp_537", 1
  %"$$fundef_135_env_f_539" = getelementptr inbounds %"$$fundef_135_env_213", %"$$fundef_135_env_213"* %"$$fundef_135_envp_535", i32 0, i32 0
  %"$f_540" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_540", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_135_env_f_539"
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_135_cloval_538", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step
  %"$folder_26" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$folder_541" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder
  %"$folder_fptr_542" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_541", 0
  %"$folder_envptr_543" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_541", 1
  %"$step_544" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step
  %"$folder_call_545" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_fptr_542"(i8* %"$folder_envptr_543", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$step_544")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_call_545", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_26"
  %"$folder_27" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$$folder_26_546" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_26"
  %"$$folder_26_fptr_547" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_26_546", 0
  %"$$folder_26_envptr_548" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_26_546", 1
  %"$$folder_26_call_549" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_fptr_547"(i8* %"$$folder_26_envptr_548", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1)
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_26_call_549", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_27"
  %"$folder_28" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$folder_27_550" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_27"
  %"$$folder_27_fptr_551" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_27_550", 0
  %"$$folder_27_envptr_552" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_27_550", 1
  %"$n_553" = load %TName_Nat*, %TName_Nat** %n
  %"$$folder_27_call_554" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_fptr_551"(i8* %"$$folder_27_envptr_552", %TName_Nat* %"$n_553")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_27_call_554", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_28"
  %"$$folder_28_555" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_28"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_28_555", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_134"
  %"$$retval_134_556" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_134"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_134_556"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_131"(%"$$fundef_131_env_215"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_131_env_f_508" = getelementptr inbounds %"$$fundef_131_env_215", %"$$fundef_131_env_215"* %0, i32 0, i32 0
  %"$f_envload_509" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_131_env_f_508"
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_509", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_131_env_nat_fold_510" = getelementptr inbounds %"$$fundef_131_env_215", %"$$fundef_131_env_215"* %0, i32 0, i32 1
  %"$nat_fold_envload_511" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_131_env_nat_fold_510"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_511", { i8*, i8* }** %nat_fold
  %"$retval_132" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$$fundef_133_envp_512_load" = load i8*, i8** @_execptr
  %"$$fundef_133_envp_512_salloc" = call i8* @_salloc(i8* %"$$fundef_133_envp_512_load", i64 32)
  %"$$fundef_133_envp_512" = bitcast i8* %"$$fundef_133_envp_512_salloc" to %"$$fundef_133_env_214"*
  %"$$fundef_133_env_voidp_514" = bitcast %"$$fundef_133_env_214"* %"$$fundef_133_envp_512" to i8*
  %"$$fundef_133_cloval_515" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_133_env_214"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_133" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_133_env_voidp_514", 1
  %"$$fundef_133_env_f_516" = getelementptr inbounds %"$$fundef_133_env_214", %"$$fundef_133_env_214"* %"$$fundef_133_envp_512", i32 0, i32 0
  %"$f_517" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_517", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_133_env_f_516"
  %"$$fundef_133_env_n_518" = getelementptr inbounds %"$$fundef_133_env_214", %"$$fundef_133_env_214"* %"$$fundef_133_envp_512", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_133_env_n_518"
  %"$$fundef_133_env_nat_fold_519" = getelementptr inbounds %"$$fundef_133_env_214", %"$$fundef_133_env_214"* %"$$fundef_133_envp_512", i32 0, i32 2
  %"$nat_fold_520" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_520", { i8*, i8* }** %"$$fundef_133_env_nat_fold_519"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_133_cloval_515", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_132"
  %"$$retval_132_521" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_132"
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_132_521"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_129"(%"$$fundef_129_env_216"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) {
entry:
  %"$$fundef_129_env_nat_fold_498" = getelementptr inbounds %"$$fundef_129_env_216", %"$$fundef_129_env_216"* %0, i32 0, i32 0
  %"$nat_fold_envload_499" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_129_env_nat_fold_498"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_499", { i8*, i8* }** %nat_fold
  %"$retval_130" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_131_envp_500_load" = load i8*, i8** @_execptr
  %"$$fundef_131_envp_500_salloc" = call i8* @_salloc(i8* %"$$fundef_131_envp_500_load", i64 24)
  %"$$fundef_131_envp_500" = bitcast i8* %"$$fundef_131_envp_500_salloc" to %"$$fundef_131_env_215"*
  %"$$fundef_131_env_voidp_502" = bitcast %"$$fundef_131_env_215"* %"$$fundef_131_envp_500" to i8*
  %"$$fundef_131_cloval_503" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_131_env_215"*, %TName_Nat*)* @"$fundef_131" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_131_env_voidp_502", 1
  %"$$fundef_131_env_f_504" = getelementptr inbounds %"$$fundef_131_env_215", %"$$fundef_131_env_215"* %"$$fundef_131_envp_500", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_131_env_f_504"
  %"$$fundef_131_env_nat_fold_505" = getelementptr inbounds %"$$fundef_131_env_215", %"$$fundef_131_env_215"* %"$$fundef_131_envp_500", i32 0, i32 1
  %"$nat_fold_506" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_506", { i8*, i8* }** %"$$fundef_131_env_nat_fold_505"
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_131_cloval_503", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_130"
  %"$$retval_130_507" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_130"
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_130_507"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_127"(%"$$fundef_127_env_217"* %0) {
entry:
  %"$$fundef_127_env_nat_fold_489" = getelementptr inbounds %"$$fundef_127_env_217", %"$$fundef_127_env_217"* %0, i32 0, i32 0
  %"$nat_fold_envload_490" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_127_env_nat_fold_489"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_490", { i8*, i8* }** %nat_fold
  %"$retval_128" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }
  %"$$fundef_129_envp_491_load" = load i8*, i8** @_execptr
  %"$$fundef_129_envp_491_salloc" = call i8* @_salloc(i8* %"$$fundef_129_envp_491_load", i64 8)
  %"$$fundef_129_envp_491" = bitcast i8* %"$$fundef_129_envp_491_salloc" to %"$$fundef_129_env_216"*
  %"$$fundef_129_env_voidp_493" = bitcast %"$$fundef_129_env_216"* %"$$fundef_129_envp_491" to i8*
  %"$$fundef_129_cloval_494" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_129_env_216"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_129" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_129_env_voidp_493", 1
  %"$$fundef_129_env_nat_fold_495" = getelementptr inbounds %"$$fundef_129_env_216", %"$$fundef_129_env_216"* %"$$fundef_129_envp_491", i32 0, i32 0
  %"$nat_fold_496" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_496", { i8*, i8* }** %"$$fundef_129_env_nat_fold_495"
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$fundef_129_cloval_494", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_128"
  %"$$retval_128_497" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_128"
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_128_497"
}

define internal %TName_Nat* @"$fundef_125"(%"$$fundef_125_env_218"* %0, %TName_Nat* %1) {
entry:
  %"$retval_126" = alloca %TName_Nat*
  %"$adtval_484_load" = load i8*, i8** @_execptr
  %"$adtval_484_salloc" = call i8* @_salloc(i8* %"$adtval_484_load", i64 9)
  %"$adtval_484" = bitcast i8* %"$adtval_484_salloc" to %CName_Succ*
  %"$adtgep_485" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_484", i32 0, i32 0
  store i8 1, i8* %"$adtgep_485"
  %"$adtgep_486" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_484", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$adtgep_486"
  %"$adtptr_487" = bitcast %CName_Succ* %"$adtval_484" to %TName_Nat*
  store %TName_Nat* %"$adtptr_487", %TName_Nat** %"$retval_126"
  %"$$retval_126_488" = load %TName_Nat*, %TName_Nat** %"$retval_126"
  ret %TName_Nat* %"$$retval_126_488"
}

define internal %Uint32 @"$fundef_122"(%"$$fundef_122_env_219"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_122_env_one_int_476" = getelementptr inbounds %"$$fundef_122_env_219", %"$$fundef_122_env_219"* %0, i32 0, i32 0
  %"$one_int_envload_477" = load %Uint32, %Uint32* %"$$fundef_122_env_one_int_476"
  %one_int = alloca %Uint32
  store %Uint32 %"$one_int_envload_477", %Uint32* %one_int
  %"$$fundef_122_env_z_478" = getelementptr inbounds %"$$fundef_122_env_219", %"$$fundef_122_env_219"* %0, i32 0, i32 1
  %"$z_envload_479" = load %Uint32, %Uint32* %"$$fundef_122_env_z_478"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_479", %Uint32* %z
  %"$retval_123" = alloca %Uint32
  %"$z_480" = load %Uint32, %Uint32* %z
  %"$one_int_481" = load %Uint32, %Uint32* %one_int
  %"$add_call_482" = call %Uint32 @_add_Uint32(%Uint32 %"$z_480", %Uint32 %"$one_int_481")
  store %Uint32 %"$add_call_482", %Uint32* %"$retval_123"
  %"$$retval_123_483" = load %Uint32, %Uint32* %"$retval_123"
  ret %Uint32 %"$$retval_123_483"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_120"(%"$$fundef_120_env_220"* %0, %Uint32 %1) {
entry:
  %"$$fundef_120_env_one_int_466" = getelementptr inbounds %"$$fundef_120_env_220", %"$$fundef_120_env_220"* %0, i32 0, i32 0
  %"$one_int_envload_467" = load %Uint32, %Uint32* %"$$fundef_120_env_one_int_466"
  %one_int = alloca %Uint32
  store %Uint32 %"$one_int_envload_467", %Uint32* %one_int
  %"$retval_121" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_122_envp_468_load" = load i8*, i8** @_execptr
  %"$$fundef_122_envp_468_salloc" = call i8* @_salloc(i8* %"$$fundef_122_envp_468_load", i64 8)
  %"$$fundef_122_envp_468" = bitcast i8* %"$$fundef_122_envp_468_salloc" to %"$$fundef_122_env_219"*
  %"$$fundef_122_env_voidp_470" = bitcast %"$$fundef_122_env_219"* %"$$fundef_122_envp_468" to i8*
  %"$$fundef_122_cloval_471" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_122_env_219"*, %TName_Nat*)* @"$fundef_122" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_122_env_voidp_470", 1
  %"$$fundef_122_env_one_int_472" = getelementptr inbounds %"$$fundef_122_env_219", %"$$fundef_122_env_219"* %"$$fundef_122_envp_468", i32 0, i32 0
  %"$one_int_473" = load %Uint32, %Uint32* %one_int
  store %Uint32 %"$one_int_473", %Uint32* %"$$fundef_122_env_one_int_472"
  %"$$fundef_122_env_z_474" = getelementptr inbounds %"$$fundef_122_env_219", %"$$fundef_122_env_219"* %"$$fundef_122_envp_468", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_122_env_z_474"
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_122_cloval_471", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_121"
  %"$$retval_121_475" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_121"
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_121_475"
}

define internal %Uint32 @"$fundef_118"(%"$$fundef_118_env_221"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_118_env_nat_fold_435" = getelementptr inbounds %"$$fundef_118_env_221", %"$$fundef_118_env_221"* %0, i32 0, i32 0
  %"$nat_fold_envload_436" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_118_env_nat_fold_435"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_436", { i8*, i8* }** %nat_fold
  %"$retval_119" = alloca %Uint32
  %fold = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$nat_fold_437" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  %"$nat_fold_438" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_437", i32 0
  %"$nat_fold_439" = bitcast { i8*, i8* }* %"$nat_fold_438" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_440" = load { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_439"
  %"$nat_fold_fptr_441" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_440", 0
  %"$nat_fold_envptr_442" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_440", 1
  %"$nat_fold_call_443" = call { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$nat_fold_fptr_441"(i8* %"$nat_fold_envptr_442")
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$nat_fold_call_443", { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold
  %one_int = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one_int
  %f = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_120_envp_444_load" = load i8*, i8** @_execptr
  %"$$fundef_120_envp_444_salloc" = call i8* @_salloc(i8* %"$$fundef_120_envp_444_load", i64 4)
  %"$$fundef_120_envp_444" = bitcast i8* %"$$fundef_120_envp_444_salloc" to %"$$fundef_120_env_220"*
  %"$$fundef_120_env_voidp_446" = bitcast %"$$fundef_120_env_220"* %"$$fundef_120_envp_444" to i8*
  %"$$fundef_120_cloval_447" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_120_env_220"*, %Uint32)* @"$fundef_120" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_120_env_voidp_446", 1
  %"$$fundef_120_env_one_int_448" = getelementptr inbounds %"$$fundef_120_env_220", %"$$fundef_120_env_220"* %"$$fundef_120_envp_444", i32 0, i32 0
  %"$one_int_449" = load %Uint32, %Uint32* %one_int
  store %Uint32 %"$one_int_449", %Uint32* %"$$fundef_120_env_one_int_448"
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_120_cloval_447", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %zero_int = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero_int
  %"$fold_22" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$fold_450" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold
  %"$fold_fptr_451" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_450", 0
  %"$fold_envptr_452" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_450", 1
  %"$f_453" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$fold_call_454" = call { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_fptr_451"(i8* %"$fold_envptr_452", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_453")
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_call_454", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_22"
  %"$fold_23" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }
  %"$$fold_22_455" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_22"
  %"$$fold_22_fptr_456" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_22_455", 0
  %"$$fold_22_envptr_457" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_22_455", 1
  %"$zero_int_458" = load %Uint32, %Uint32* %zero_int
  %"$$fold_22_call_459" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_22_fptr_456"(i8* %"$$fold_22_envptr_457", %Uint32 %"$zero_int_458")
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_22_call_459", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_23"
  %"$fold_24" = alloca %Uint32
  %"$$fold_23_460" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_23"
  %"$$fold_23_fptr_461" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_23_460", 0
  %"$$fold_23_envptr_462" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_23_460", 1
  %"$$fold_23_call_463" = call %Uint32 %"$$fold_23_fptr_461"(i8* %"$$fold_23_envptr_462", %TName_Nat* %1)
  store %Uint32 %"$$fold_23_call_463", %Uint32* %"$fold_24"
  %"$$fold_24_464" = load %Uint32, %Uint32* %"$fold_24"
  store %Uint32 %"$$fold_24_464", %Uint32* %"$retval_119"
  %"$$retval_119_465" = load %Uint32, %Uint32* %"$retval_119"
  ret %Uint32 %"$$retval_119_465"
}

define internal %TName_Nat* @"$fundef_116"(%"$$fundef_116_env_222"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_116_env_f0_395" = getelementptr inbounds %"$$fundef_116_env_222", %"$$fundef_116_env_222"* %0, i32 0, i32 0
  %"$f0_envload_396" = load %TName_Nat*, %TName_Nat** %"$$fundef_116_env_f0_395"
  %f0 = alloca %TName_Nat*
  store %TName_Nat* %"$f0_envload_396", %TName_Nat** %f0
  %"$$fundef_116_env_fn_397" = getelementptr inbounds %"$$fundef_116_env_222", %"$$fundef_116_env_222"* %0, i32 0, i32 1
  %"$fn_envload_398" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_116_env_fn_397"
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_398", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn
  %"$$fundef_116_env_g_399" = getelementptr inbounds %"$$fundef_116_env_222", %"$$fundef_116_env_222"* %0, i32 0, i32 2
  %"$g_envload_400" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_116_env_g_399"
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_400", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  %"$retval_117" = alloca %TName_Nat*
  %"$n_tag_402" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_403" = load i8, i8* %"$n_tag_402"
  switch i8 %"$n_tag_403", label %"$empty_default_404" [
    i8 1, label %"$Succ_405"
    i8 0, label %"$Zero_431"
  ]

"$Succ_405":                                      ; preds = %entry
  %"$n_406" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_407" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_406", i32 0, i32 1
  %"$n1_load_408" = load %TName_Nat*, %TName_Nat** %"$n1_gep_407"
  %n1 = alloca %TName_Nat*
  store %TName_Nat* %"$n1_load_408", %TName_Nat** %n1
  %res = alloca %TName_Nat*
  %"$fn_18" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$fn_409" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn
  %"$fn_fptr_410" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_409", 0
  %"$fn_envptr_411" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_409", 1
  %"$f0_412" = load %TName_Nat*, %TName_Nat** %f0
  %"$fn_call_413" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_410"(i8* %"$fn_envptr_411", %TName_Nat* %"$f0_412")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_call_413", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_18"
  %"$fn_19" = alloca %TName_Nat*
  %"$$fn_18_414" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_18"
  %"$$fn_18_fptr_415" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_18_414", 0
  %"$$fn_18_envptr_416" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_18_414", 1
  %"$n1_417" = load %TName_Nat*, %TName_Nat** %n1
  %"$$fn_18_call_418" = call %TName_Nat* %"$$fn_18_fptr_415"(i8* %"$$fn_18_envptr_416", %TName_Nat* %"$n1_417")
  store %TName_Nat* %"$$fn_18_call_418", %TName_Nat** %"$fn_19"
  %"$$fn_19_419" = load %TName_Nat*, %TName_Nat** %"$fn_19"
  store %TName_Nat* %"$$fn_19_419", %TName_Nat** %res
  %"$g_20" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$g_420" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  %"$g_fptr_421" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_420", 0
  %"$g_envptr_422" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_420", 1
  %"$res_423" = load %TName_Nat*, %TName_Nat** %res
  %"$g_call_424" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_421"(i8* %"$g_envptr_422", %TName_Nat* %"$res_423")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_call_424", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_20"
  %"$g_21" = alloca %TName_Nat*
  %"$$g_20_425" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_20"
  %"$$g_20_fptr_426" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_20_425", 0
  %"$$g_20_envptr_427" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_20_425", 1
  %"$n1_428" = load %TName_Nat*, %TName_Nat** %n1
  %"$$g_20_call_429" = call %TName_Nat* %"$$g_20_fptr_426"(i8* %"$$g_20_envptr_427", %TName_Nat* %"$n1_428")
  store %TName_Nat* %"$$g_20_call_429", %TName_Nat** %"$g_21"
  %"$$g_21_430" = load %TName_Nat*, %TName_Nat** %"$g_21"
  store %TName_Nat* %"$$g_21_430", %TName_Nat** %"$retval_117"
  br label %"$matchsucc_401"

"$Zero_431":                                      ; preds = %entry
  %"$n_432" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$f0_433" = load %TName_Nat*, %TName_Nat** %f0
  store %TName_Nat* %"$f0_433", %TName_Nat** %"$retval_117"
  br label %"$matchsucc_401"

"$empty_default_404":                             ; preds = %entry
  br label %"$matchsucc_401"

"$matchsucc_401":                                 ; preds = %"$Zero_431", %"$Succ_405", %"$empty_default_404"
  %"$$retval_117_434" = load %TName_Nat*, %TName_Nat** %"$retval_117"
  ret %TName_Nat* %"$$retval_117_434"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_114"(%"$$fundef_114_env_223"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_114_env_fn_381" = getelementptr inbounds %"$$fundef_114_env_223", %"$$fundef_114_env_223"* %0, i32 0, i32 0
  %"$fn_envload_382" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_114_env_fn_381"
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_382", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn
  %"$$fundef_114_env_g_383" = getelementptr inbounds %"$$fundef_114_env_223", %"$$fundef_114_env_223"* %0, i32 0, i32 1
  %"$g_envload_384" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_114_env_g_383"
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_384", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  %"$retval_115" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_116_envp_385_load" = load i8*, i8** @_execptr
  %"$$fundef_116_envp_385_salloc" = call i8* @_salloc(i8* %"$$fundef_116_envp_385_load", i64 40)
  %"$$fundef_116_envp_385" = bitcast i8* %"$$fundef_116_envp_385_salloc" to %"$$fundef_116_env_222"*
  %"$$fundef_116_env_voidp_387" = bitcast %"$$fundef_116_env_222"* %"$$fundef_116_envp_385" to i8*
  %"$$fundef_116_cloval_388" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_116_env_222"*, %TName_Nat*)* @"$fundef_116" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_116_env_voidp_387", 1
  %"$$fundef_116_env_f0_389" = getelementptr inbounds %"$$fundef_116_env_222", %"$$fundef_116_env_222"* %"$$fundef_116_envp_385", i32 0, i32 0
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_116_env_f0_389"
  %"$$fundef_116_env_fn_390" = getelementptr inbounds %"$$fundef_116_env_222", %"$$fundef_116_env_222"* %"$$fundef_116_envp_385", i32 0, i32 1
  %"$fn_391" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_391", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_116_env_fn_390"
  %"$$fundef_116_env_g_392" = getelementptr inbounds %"$$fundef_116_env_222", %"$$fundef_116_env_222"* %"$$fundef_116_envp_385", i32 0, i32 2
  %"$g_393" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_393", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_116_env_g_392"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_116_cloval_388", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_115"
  %"$$retval_115_394" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_115"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_115_394"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_112"(%"$$fundef_112_env_224"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$retval_113" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_114_envp_372_load" = load i8*, i8** @_execptr
  %"$$fundef_114_envp_372_salloc" = call i8* @_salloc(i8* %"$$fundef_114_envp_372_load", i64 32)
  %"$$fundef_114_envp_372" = bitcast i8* %"$$fundef_114_envp_372_salloc" to %"$$fundef_114_env_223"*
  %"$$fundef_114_env_voidp_374" = bitcast %"$$fundef_114_env_223"* %"$$fundef_114_envp_372" to i8*
  %"$$fundef_114_cloval_375" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_114_env_223"*, %TName_Nat*)* @"$fundef_114" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_114_env_voidp_374", 1
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_114_cloval_375", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  %"$$fundef_114_env_fn_376" = getelementptr inbounds %"$$fundef_114_env_223", %"$$fundef_114_env_223"* %"$$fundef_114_envp_372", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_114_env_fn_376"
  %"$$fundef_114_env_g_377" = getelementptr inbounds %"$$fundef_114_env_223", %"$$fundef_114_env_223"* %"$$fundef_114_envp_372", i32 0, i32 1
  %"$g_378" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_378", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_114_env_g_377"
  %"$g_379" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_379", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_113"
  %"$$retval_113_380" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_113"
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_113_380"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_110"(%"$$fundef_110_env_225"* %0) {
entry:
  %"$retval_111" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_112_env_224"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* @"$fundef_112" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*), i8* null }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_111"
  %"$$retval_111_371" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_111"
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_111_371"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_108"(%"$$fundef_108_env_226"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_108_env_f0_328" = getelementptr inbounds %"$$fundef_108_env_226", %"$$fundef_108_env_226"* %0, i32 0, i32 0
  %"$f0_envload_329" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_108_env_f0_328"
  %f0 = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_envload_329", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0
  %"$$fundef_108_env_fn_330" = getelementptr inbounds %"$$fundef_108_env_226", %"$$fundef_108_env_226"* %0, i32 0, i32 1
  %"$fn_envload_331" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_fn_330"
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_331", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn
  %"$$fundef_108_env_g_332" = getelementptr inbounds %"$$fundef_108_env_226", %"$$fundef_108_env_226"* %0, i32 0, i32 2
  %"$g_envload_333" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_g_332"
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_333", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  %"$retval_109" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$n_tag_335" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_336" = load i8, i8* %"$n_tag_335"
  switch i8 %"$n_tag_336", label %"$empty_default_337" [
    i8 1, label %"$Succ_338"
    i8 0, label %"$Zero_364"
  ]

"$Succ_338":                                      ; preds = %entry
  %"$n_339" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_340" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_339", i32 0, i32 1
  %"$n1_load_341" = load %TName_Nat*, %TName_Nat** %"$n1_gep_340"
  %n1 = alloca %TName_Nat*
  store %TName_Nat* %"$n1_load_341", %TName_Nat** %n1
  %res = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$fn_18" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$fn_342" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn
  %"$fn_fptr_343" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_342", 0
  %"$fn_envptr_344" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_342", 1
  %"$f0_345" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0
  %"$fn_call_346" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_343"(i8* %"$fn_envptr_344", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_345")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_call_346", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_18"
  %"$fn_19" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$fn_18_347" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_18"
  %"$$fn_18_fptr_348" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_18_347", 0
  %"$$fn_18_envptr_349" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_18_347", 1
  %"$n1_350" = load %TName_Nat*, %TName_Nat** %n1
  %"$$fn_18_call_351" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_18_fptr_348"(i8* %"$$fn_18_envptr_349", %TName_Nat* %"$n1_350")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_18_call_351", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_19"
  %"$$fn_19_352" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_19"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_19_352", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res
  %"$g_20" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$g_353" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  %"$g_fptr_354" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_353", 0
  %"$g_envptr_355" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_353", 1
  %"$res_356" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res
  %"$g_call_357" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_fptr_354"(i8* %"$g_envptr_355", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$res_356")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_call_357", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_20"
  %"$g_21" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$g_20_358" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_20"
  %"$$g_20_fptr_359" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_20_358", 0
  %"$$g_20_envptr_360" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_20_358", 1
  %"$n1_361" = load %TName_Nat*, %TName_Nat** %n1
  %"$$g_20_call_362" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_20_fptr_359"(i8* %"$$g_20_envptr_360", %TName_Nat* %"$n1_361")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_20_call_362", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_21"
  %"$$g_21_363" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_21"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_21_363", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_109"
  br label %"$matchsucc_334"

"$Zero_364":                                      ; preds = %entry
  %"$n_365" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$f0_366" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_366", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_109"
  br label %"$matchsucc_334"

"$empty_default_337":                             ; preds = %entry
  br label %"$matchsucc_334"

"$matchsucc_334":                                 ; preds = %"$Zero_364", %"$Succ_338", %"$empty_default_337"
  %"$$retval_109_367" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_109"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_109_367"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_106"(%"$$fundef_106_env_227"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_106_env_fn_314" = getelementptr inbounds %"$$fundef_106_env_227", %"$$fundef_106_env_227"* %0, i32 0, i32 0
  %"$fn_envload_315" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_fn_314"
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_315", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn
  %"$$fundef_106_env_g_316" = getelementptr inbounds %"$$fundef_106_env_227", %"$$fundef_106_env_227"* %0, i32 0, i32 1
  %"$g_envload_317" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_g_316"
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_317", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  %"$retval_107" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_108_envp_318_load" = load i8*, i8** @_execptr
  %"$$fundef_108_envp_318_salloc" = call i8* @_salloc(i8* %"$$fundef_108_envp_318_load", i64 48)
  %"$$fundef_108_envp_318" = bitcast i8* %"$$fundef_108_envp_318_salloc" to %"$$fundef_108_env_226"*
  %"$$fundef_108_env_voidp_320" = bitcast %"$$fundef_108_env_226"* %"$$fundef_108_envp_318" to i8*
  %"$$fundef_108_cloval_321" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_108_env_226"*, %TName_Nat*)* @"$fundef_108" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_108_env_voidp_320", 1
  %"$$fundef_108_env_f0_322" = getelementptr inbounds %"$$fundef_108_env_226", %"$$fundef_108_env_226"* %"$$fundef_108_envp_318", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_108_env_f0_322"
  %"$$fundef_108_env_fn_323" = getelementptr inbounds %"$$fundef_108_env_226", %"$$fundef_108_env_226"* %"$$fundef_108_envp_318", i32 0, i32 1
  %"$fn_324" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_324", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_fn_323"
  %"$$fundef_108_env_g_325" = getelementptr inbounds %"$$fundef_108_env_226", %"$$fundef_108_env_226"* %"$$fundef_108_envp_318", i32 0, i32 2
  %"$g_326" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_326", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_108_env_g_325"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_108_cloval_321", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_107"
  %"$$retval_107_327" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_107"
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_107_327"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_104"(%"$$fundef_104_env_228"* %0, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) {
entry:
  %"$retval_105" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$$fundef_106_envp_305_load" = load i8*, i8** @_execptr
  %"$$fundef_106_envp_305_salloc" = call i8* @_salloc(i8* %"$$fundef_106_envp_305_load", i64 32)
  %"$$fundef_106_envp_305" = bitcast i8* %"$$fundef_106_envp_305_salloc" to %"$$fundef_106_env_227"*
  %"$$fundef_106_env_voidp_307" = bitcast %"$$fundef_106_env_227"* %"$$fundef_106_envp_305" to i8*
  %"$$fundef_106_cloval_308" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_106_env_227"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_106" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_106_env_voidp_307", 1
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_106_cloval_308", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  %"$$fundef_106_env_fn_309" = getelementptr inbounds %"$$fundef_106_env_227", %"$$fundef_106_env_227"* %"$$fundef_106_envp_305", i32 0, i32 0
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_fn_309"
  %"$$fundef_106_env_g_310" = getelementptr inbounds %"$$fundef_106_env_227", %"$$fundef_106_env_227"* %"$$fundef_106_envp_305", i32 0, i32 1
  %"$g_311" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_311", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_106_env_g_310"
  %"$g_312" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_312", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_105"
  %"$$retval_105_313" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_105"
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_105_313"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_102"(%"$$fundef_102_env_229"* %0) {
entry:
  %"$retval_103" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_104_env_228"*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_104" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_103"
  %"$$retval_103_304" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_103"
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_103_304"
}

define internal %Uint32 @"$fundef_100"(%"$$fundef_100_env_230"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_100_env_f0_261" = getelementptr inbounds %"$$fundef_100_env_230", %"$$fundef_100_env_230"* %0, i32 0, i32 0
  %"$f0_envload_262" = load %Uint32, %Uint32* %"$$fundef_100_env_f0_261"
  %f0 = alloca %Uint32
  store %Uint32 %"$f0_envload_262", %Uint32* %f0
  %"$$fundef_100_env_fn_263" = getelementptr inbounds %"$$fundef_100_env_230", %"$$fundef_100_env_230"* %0, i32 0, i32 1
  %"$fn_envload_264" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_fn_263"
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_264", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  %"$$fundef_100_env_g_265" = getelementptr inbounds %"$$fundef_100_env_230", %"$$fundef_100_env_230"* %0, i32 0, i32 2
  %"$g_envload_266" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_g_265"
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_266", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_101" = alloca %Uint32
  %"$n_tag_268" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_269" = load i8, i8* %"$n_tag_268"
  switch i8 %"$n_tag_269", label %"$empty_default_270" [
    i8 1, label %"$Succ_271"
    i8 0, label %"$Zero_297"
  ]

"$Succ_271":                                      ; preds = %entry
  %"$n_272" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_273" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_272", i32 0, i32 1
  %"$n1_load_274" = load %TName_Nat*, %TName_Nat** %"$n1_gep_273"
  %n1 = alloca %TName_Nat*
  store %TName_Nat* %"$n1_load_274", %TName_Nat** %n1
  %res = alloca %Uint32
  %"$fn_18" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }
  %"$fn_275" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  %"$fn_fptr_276" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_275", 0
  %"$fn_envptr_277" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_275", 1
  %"$f0_278" = load %Uint32, %Uint32* %f0
  %"$fn_call_279" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_276"(i8* %"$fn_envptr_277", %Uint32 %"$f0_278")
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_call_279", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_18"
  %"$fn_19" = alloca %Uint32
  %"$$fn_18_280" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_18"
  %"$$fn_18_fptr_281" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_18_280", 0
  %"$$fn_18_envptr_282" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_18_280", 1
  %"$n1_283" = load %TName_Nat*, %TName_Nat** %n1
  %"$$fn_18_call_284" = call %Uint32 %"$$fn_18_fptr_281"(i8* %"$$fn_18_envptr_282", %TName_Nat* %"$n1_283")
  store %Uint32 %"$$fn_18_call_284", %Uint32* %"$fn_19"
  %"$$fn_19_285" = load %Uint32, %Uint32* %"$fn_19"
  store %Uint32 %"$$fn_19_285", %Uint32* %res
  %"$g_20" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }
  %"$g_286" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_287" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_286", 0
  %"$g_envptr_288" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_286", 1
  %"$res_289" = load %Uint32, %Uint32* %res
  %"$g_call_290" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_fptr_287"(i8* %"$g_envptr_288", %Uint32 %"$res_289")
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_call_290", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_20"
  %"$g_21" = alloca %Uint32
  %"$$g_20_291" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_20"
  %"$$g_20_fptr_292" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_20_291", 0
  %"$$g_20_envptr_293" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_20_291", 1
  %"$n1_294" = load %TName_Nat*, %TName_Nat** %n1
  %"$$g_20_call_295" = call %Uint32 %"$$g_20_fptr_292"(i8* %"$$g_20_envptr_293", %TName_Nat* %"$n1_294")
  store %Uint32 %"$$g_20_call_295", %Uint32* %"$g_21"
  %"$$g_21_296" = load %Uint32, %Uint32* %"$g_21"
  store %Uint32 %"$$g_21_296", %Uint32* %"$retval_101"
  br label %"$matchsucc_267"

"$Zero_297":                                      ; preds = %entry
  %"$n_298" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$f0_299" = load %Uint32, %Uint32* %f0
  store %Uint32 %"$f0_299", %Uint32* %"$retval_101"
  br label %"$matchsucc_267"

"$empty_default_270":                             ; preds = %entry
  br label %"$matchsucc_267"

"$matchsucc_267":                                 ; preds = %"$Zero_297", %"$Succ_271", %"$empty_default_270"
  %"$$retval_101_300" = load %Uint32, %Uint32* %"$retval_101"
  ret %Uint32 %"$$retval_101_300"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_98"(%"$$fundef_98_env_231"* %0, %Uint32 %1) {
entry:
  %"$$fundef_98_env_fn_247" = getelementptr inbounds %"$$fundef_98_env_231", %"$$fundef_98_env_231"* %0, i32 0, i32 0
  %"$fn_envload_248" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_fn_247"
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_248", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  %"$$fundef_98_env_g_249" = getelementptr inbounds %"$$fundef_98_env_231", %"$$fundef_98_env_231"* %0, i32 0, i32 1
  %"$g_envload_250" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_g_249"
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_250", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_99" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_100_envp_251_load" = load i8*, i8** @_execptr
  %"$$fundef_100_envp_251_salloc" = call i8* @_salloc(i8* %"$$fundef_100_envp_251_load", i64 40)
  %"$$fundef_100_envp_251" = bitcast i8* %"$$fundef_100_envp_251_salloc" to %"$$fundef_100_env_230"*
  %"$$fundef_100_env_voidp_253" = bitcast %"$$fundef_100_env_230"* %"$$fundef_100_envp_251" to i8*
  %"$$fundef_100_cloval_254" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_100_env_230"*, %TName_Nat*)* @"$fundef_100" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_100_env_voidp_253", 1
  %"$$fundef_100_env_f0_255" = getelementptr inbounds %"$$fundef_100_env_230", %"$$fundef_100_env_230"* %"$$fundef_100_envp_251", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_100_env_f0_255"
  %"$$fundef_100_env_fn_256" = getelementptr inbounds %"$$fundef_100_env_230", %"$$fundef_100_env_230"* %"$$fundef_100_envp_251", i32 0, i32 1
  %"$fn_257" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_257", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_fn_256"
  %"$$fundef_100_env_g_258" = getelementptr inbounds %"$$fundef_100_env_230", %"$$fundef_100_env_230"* %"$$fundef_100_envp_251", i32 0, i32 2
  %"$g_259" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_259", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_100_env_g_258"
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_100_cloval_254", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_99"
  %"$$retval_99_260" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_99"
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_99_260"
}

define internal { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_96"(%"$$fundef_96_env_232"* %0, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_97" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_98_envp_238_load" = load i8*, i8** @_execptr
  %"$$fundef_98_envp_238_salloc" = call i8* @_salloc(i8* %"$$fundef_98_envp_238_load", i64 32)
  %"$$fundef_98_envp_238" = bitcast i8* %"$$fundef_98_envp_238_salloc" to %"$$fundef_98_env_231"*
  %"$$fundef_98_env_voidp_240" = bitcast %"$$fundef_98_env_231"* %"$$fundef_98_envp_238" to i8*
  %"$$fundef_98_cloval_241" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_98_env_231"*, %Uint32)* @"$fundef_98" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_98_env_voidp_240", 1
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_98_cloval_241", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_98_env_fn_242" = getelementptr inbounds %"$$fundef_98_env_231", %"$$fundef_98_env_231"* %"$$fundef_98_envp_238", i32 0, i32 0
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_fn_242"
  %"$$fundef_98_env_g_243" = getelementptr inbounds %"$$fundef_98_env_231", %"$$fundef_98_env_231"* %"$$fundef_98_envp_238", i32 0, i32 1
  %"$g_244" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_244", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_98_env_g_243"
  %"$g_245" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_245", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_97"
  %"$$retval_97_246" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_97"
  ret { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_97_246"
}

define internal { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_94"(%"$$fundef_94_env_233"* %0) {
entry:
  %"$retval_95" = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_96_env_232"*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_96" to { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_95"
  %"$$retval_95_237" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_95"
  ret { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_95_237"
}

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_730"(i8* %0) {
entry:
  %"$dyndisp_table_740_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_740_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_740_salloc_load", i64 48)
  %"$dyndisp_table_740_salloc" = bitcast i8* %"$dyndisp_table_740_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_740" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_740_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_741" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_740", i32 0
  %"$dyndisp_pcast_742" = bitcast { i8*, i8* }* %"$dyndisp_gep_741" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_94_env_233"*)* @"$fundef_94" to { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_742"
  %"$dyndisp_gep_743" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_740", i32 1
  %"$dyndisp_pcast_744" = bitcast { i8*, i8* }* %"$dyndisp_gep_743" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_102_env_229"*)* @"$fundef_102" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* null }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_744"
  %"$dyndisp_gep_745" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_740", i32 2
  %"$dyndisp_pcast_746" = bitcast { i8*, i8* }* %"$dyndisp_gep_745" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_110_env_225"*)* @"$fundef_110" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_746"
  store { i8*, i8* }* %"$dyndisp_table_740", { i8*, i8* }** @nat_fold
  %"$$fundef_118_envp_747_load" = load i8*, i8** @_execptr
  %"$$fundef_118_envp_747_salloc" = call i8* @_salloc(i8* %"$$fundef_118_envp_747_load", i64 8)
  %"$$fundef_118_envp_747" = bitcast i8* %"$$fundef_118_envp_747_salloc" to %"$$fundef_118_env_221"*
  %"$$fundef_118_env_voidp_749" = bitcast %"$$fundef_118_env_221"* %"$$fundef_118_envp_747" to i8*
  %"$$fundef_118_cloval_750" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_118_env_221"*, %TName_Nat*)* @"$fundef_118" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_118_env_voidp_749", 1
  %"$$fundef_118_env_nat_fold_751" = getelementptr inbounds %"$$fundef_118_env_221", %"$$fundef_118_env_221"* %"$$fundef_118_envp_747", i32 0, i32 0
  %"$nat_fold_752" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold
  store { i8*, i8* }* %"$nat_fold_752", { i8*, i8* }** %"$$fundef_118_env_nat_fold_751"
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_118_cloval_750", { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$expr_124" = alloca %Uint32
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_125_env_218"*, %TName_Nat*)* @"$fundef_125" to %TName_Nat* (i8*, %TName_Nat*)*), i8* null }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ
  %nat_iter = alloca { i8*, i8* }*
  %"$$fundef_127_envp_756_load" = load i8*, i8** @_execptr
  %"$$fundef_127_envp_756_salloc" = call i8* @_salloc(i8* %"$$fundef_127_envp_756_load", i64 8)
  %"$$fundef_127_envp_756" = bitcast i8* %"$$fundef_127_envp_756_salloc" to %"$$fundef_127_env_217"*
  %"$$fundef_127_env_voidp_758" = bitcast %"$$fundef_127_env_217"* %"$$fundef_127_envp_756" to i8*
  %"$$fundef_127_cloval_759" = insertvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_127_env_217"*)* @"$fundef_127" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_127_env_voidp_758", 1
  %"$$fundef_127_env_nat_fold_760" = getelementptr inbounds %"$$fundef_127_env_217", %"$$fundef_127_env_217"* %"$$fundef_127_envp_756", i32 0, i32 0
  %"$nat_fold_761" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold
  store { i8*, i8* }* %"$nat_fold_761", { i8*, i8* }** %"$$fundef_127_env_nat_fold_760"
  %"$$fundef_139_env_voidp_763" = bitcast %"$$fundef_127_env_217"* %"$$fundef_127_envp_756" to i8*
  %"$$fundef_139_cloval_764" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_139_env_211"*)* @"$fundef_139" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_139_env_voidp_763", 1
  %"$dyndisp_table_765_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_765_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_765_salloc_load", i64 48)
  %"$dyndisp_table_765_salloc" = bitcast i8* %"$dyndisp_table_765_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_765" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_765_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_766" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_765", i32 1
  %"$dyndisp_pcast_767" = bitcast { i8*, i8* }* %"$dyndisp_gep_766" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_127_cloval_759", { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_767"
  %"$dyndisp_gep_768" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_765", i32 2
  %"$dyndisp_pcast_769" = bitcast { i8*, i8* }* %"$dyndisp_gep_768" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_139_cloval_764", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_769"
  store { i8*, i8* }* %"$dyndisp_table_765", { i8*, i8* }** %nat_iter
  %ackermann = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$nat_iter_770" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter
  %"$nat_iter_771" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_770", i32 2
  %"$nat_iter_772" = bitcast { i8*, i8* }* %"$nat_iter_771" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_773" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_772"
  %"$nat_iter_fptr_774" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_773", 0
  %"$nat_iter_envptr_775" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_773", 1
  %"$nat_iter_call_776" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_fptr_774"(i8* %"$nat_iter_envptr_775")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_call_776", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }
  %"$nat_iter_777" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter
  %"$nat_iter_778" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_777", i32 1
  %"$nat_iter_779" = bitcast { i8*, i8* }* %"$nat_iter_778" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_780" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_779"
  %"$nat_iter_fptr_781" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_780", 0
  %"$nat_iter_envptr_782" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_780", 1
  %"$nat_iter_call_783" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_fptr_781"(i8* %"$nat_iter_envptr_782")
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_call_783", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  %zero = alloca %TName_Nat*
  %"$adtval_784_load" = load i8*, i8** @_execptr
  %"$adtval_784_salloc" = call i8* @_salloc(i8* %"$adtval_784_load", i64 1)
  %"$adtval_784" = bitcast i8* %"$adtval_784_salloc" to %CName_Zero*
  %"$adtgep_785" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_784", i32 0, i32 0
  store i8 0, i8* %"$adtgep_785"
  %"$adtptr_786" = bitcast %CName_Zero* %"$adtval_784" to %TName_Nat*
  store %TName_Nat* %"$adtptr_786", %TName_Nat** %zero
  %one = alloca %TName_Nat*
  %"$zero_787" = load %TName_Nat*, %TName_Nat** %zero
  %"$adtval_788_load" = load i8*, i8** @_execptr
  %"$adtval_788_salloc" = call i8* @_salloc(i8* %"$adtval_788_load", i64 9)
  %"$adtval_788" = bitcast i8* %"$adtval_788_salloc" to %CName_Succ*
  %"$adtgep_789" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_788", i32 0, i32 0
  store i8 1, i8* %"$adtgep_789"
  %"$adtgep_790" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_788", i32 0, i32 1
  store %TName_Nat* %"$zero_787", %TName_Nat** %"$adtgep_790"
  %"$adtptr_791" = bitcast %CName_Succ* %"$adtval_788" to %TName_Nat*
  store %TName_Nat* %"$adtptr_791", %TName_Nat** %one
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$$fundef_151_envp_792_load" = load i8*, i8** @_execptr
  %"$$fundef_151_envp_792_salloc" = call i8* @_salloc(i8* %"$$fundef_151_envp_792_load", i64 24)
  %"$$fundef_151_envp_792" = bitcast i8* %"$$fundef_151_envp_792_salloc" to %"$$fundef_151_env_205"*
  %"$$fundef_151_env_voidp_794" = bitcast %"$$fundef_151_env_205"* %"$$fundef_151_envp_792" to i8*
  %"$$fundef_151_cloval_795" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_151_env_205"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_151" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_151_env_voidp_794", 1
  %"$$fundef_151_env_iter_nat_796" = getelementptr inbounds %"$$fundef_151_env_205", %"$$fundef_151_env_205"* %"$$fundef_151_envp_792", i32 0, i32 0
  %"$iter_nat_797" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_797", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_151_env_iter_nat_796"
  %"$$fundef_151_env_one_798" = getelementptr inbounds %"$$fundef_151_env_205", %"$$fundef_151_env_205"* %"$$fundef_151_envp_792", i32 0, i32 1
  %"$one_799" = load %TName_Nat*, %TName_Nat** %one
  store %TName_Nat* %"$one_799", %TName_Nat** %"$$fundef_151_env_one_798"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_151_cloval_795", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_155_envp_800_load" = load i8*, i8** @_execptr
  %"$$fundef_155_envp_800_salloc" = call i8* @_salloc(i8* %"$$fundef_155_envp_800_load", i64 48)
  %"$$fundef_155_envp_800" = bitcast i8* %"$$fundef_155_envp_800_salloc" to %"$$fundef_155_env_203"*
  %"$$fundef_155_env_voidp_802" = bitcast %"$$fundef_155_env_203"* %"$$fundef_155_envp_800" to i8*
  %"$$fundef_155_cloval_803" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_155_env_203"*, %TName_Nat*)* @"$fundef_155" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_155_env_voidp_802", 1
  %"$$fundef_155_env_f_804" = getelementptr inbounds %"$$fundef_155_env_203", %"$$fundef_155_env_203"* %"$$fundef_155_envp_800", i32 0, i32 0
  %"$f_805" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_805", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_155_env_f_804"
  %"$$fundef_155_env_iter_nat_nat_806" = getelementptr inbounds %"$$fundef_155_env_203", %"$$fundef_155_env_203"* %"$$fundef_155_envp_800", i32 0, i32 1
  %"$iter_nat_nat_807" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_807", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_155_env_iter_nat_nat_806"
  %"$$fundef_155_env_nat_succ_808" = getelementptr inbounds %"$$fundef_155_env_203", %"$$fundef_155_env_203"* %"$$fundef_155_envp_800", i32 0, i32 2
  %"$nat_succ_809" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_809", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_155_env_nat_succ_808"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_155_cloval_803", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
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
  %n0 = alloca %TName_Nat*
  %"$execptr_load_810" = load i8*, i8** @_execptr
  %"$uint0_811" = load %Uint32, %Uint32* %uint0
  %"$to_nat_call_812" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_810", %Uint32 %"$uint0_811")
  store %TName_Nat* %"$to_nat_call_812", %TName_Nat** %n0
  %n1 = alloca %TName_Nat*
  %"$execptr_load_813" = load i8*, i8** @_execptr
  %"$uint1_814" = load %Uint32, %Uint32* %uint1
  %"$to_nat_call_815" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_813", %Uint32 %"$uint1_814")
  store %TName_Nat* %"$to_nat_call_815", %TName_Nat** %n1
  %n2 = alloca %TName_Nat*
  %"$execptr_load_816" = load i8*, i8** @_execptr
  %"$uint2_817" = load %Uint32, %Uint32* %uint2
  %"$to_nat_call_818" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_816", %Uint32 %"$uint2_817")
  store %TName_Nat* %"$to_nat_call_818", %TName_Nat** %n2
  %n3 = alloca %TName_Nat*
  %"$execptr_load_819" = load i8*, i8** @_execptr
  %"$uint3_820" = load %Uint32, %Uint32* %uint3
  %"$to_nat_call_821" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_819", %Uint32 %"$uint3_820")
  store %TName_Nat* %"$to_nat_call_821", %TName_Nat** %n3
  %n4 = alloca %TName_Nat*
  %"$execptr_load_822" = load i8*, i8** @_execptr
  %"$uint4_823" = load %Uint32, %Uint32* %uint4
  %"$to_nat_call_824" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_822", %Uint32 %"$uint4_823")
  store %TName_Nat* %"$to_nat_call_824", %TName_Nat** %n4
  %ack00 = alloca %TName_Nat*
  %"$ackermann_36" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_825" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_826" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_825", 0
  %"$ackermann_envptr_827" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_825", 1
  %"$n0_828" = load %TName_Nat*, %TName_Nat** %n0
  %"$ackermann_call_829" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_826"(i8* %"$ackermann_envptr_827", %TName_Nat* %"$n0_828")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_829", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_36"
  %"$ackermann_37" = alloca %TName_Nat*
  %"$$ackermann_36_830" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_36"
  %"$$ackermann_36_fptr_831" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_36_830", 0
  %"$$ackermann_36_envptr_832" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_36_830", 1
  %"$n0_833" = load %TName_Nat*, %TName_Nat** %n0
  %"$$ackermann_36_call_834" = call %TName_Nat* %"$$ackermann_36_fptr_831"(i8* %"$$ackermann_36_envptr_832", %TName_Nat* %"$n0_833")
  store %TName_Nat* %"$$ackermann_36_call_834", %TName_Nat** %"$ackermann_37"
  %"$$ackermann_37_835" = load %TName_Nat*, %TName_Nat** %"$ackermann_37"
  store %TName_Nat* %"$$ackermann_37_835", %TName_Nat** %ack00
  %ack02 = alloca %TName_Nat*
  %"$ackermann_38" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_836" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_837" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_836", 0
  %"$ackermann_envptr_838" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_836", 1
  %"$n0_839" = load %TName_Nat*, %TName_Nat** %n0
  %"$ackermann_call_840" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_837"(i8* %"$ackermann_envptr_838", %TName_Nat* %"$n0_839")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_840", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_38"
  %"$ackermann_39" = alloca %TName_Nat*
  %"$$ackermann_38_841" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_38"
  %"$$ackermann_38_fptr_842" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_38_841", 0
  %"$$ackermann_38_envptr_843" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_38_841", 1
  %"$n2_844" = load %TName_Nat*, %TName_Nat** %n2
  %"$$ackermann_38_call_845" = call %TName_Nat* %"$$ackermann_38_fptr_842"(i8* %"$$ackermann_38_envptr_843", %TName_Nat* %"$n2_844")
  store %TName_Nat* %"$$ackermann_38_call_845", %TName_Nat** %"$ackermann_39"
  %"$$ackermann_39_846" = load %TName_Nat*, %TName_Nat** %"$ackermann_39"
  store %TName_Nat* %"$$ackermann_39_846", %TName_Nat** %ack02
  %ack03 = alloca %TName_Nat*
  %"$ackermann_40" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_847" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_848" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_847", 0
  %"$ackermann_envptr_849" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_847", 1
  %"$n0_850" = load %TName_Nat*, %TName_Nat** %n0
  %"$ackermann_call_851" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_848"(i8* %"$ackermann_envptr_849", %TName_Nat* %"$n0_850")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_851", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_40"
  %"$ackermann_41" = alloca %TName_Nat*
  %"$$ackermann_40_852" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_40"
  %"$$ackermann_40_fptr_853" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_40_852", 0
  %"$$ackermann_40_envptr_854" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_40_852", 1
  %"$n3_855" = load %TName_Nat*, %TName_Nat** %n3
  %"$$ackermann_40_call_856" = call %TName_Nat* %"$$ackermann_40_fptr_853"(i8* %"$$ackermann_40_envptr_854", %TName_Nat* %"$n3_855")
  store %TName_Nat* %"$$ackermann_40_call_856", %TName_Nat** %"$ackermann_41"
  %"$$ackermann_41_857" = load %TName_Nat*, %TName_Nat** %"$ackermann_41"
  store %TName_Nat* %"$$ackermann_41_857", %TName_Nat** %ack03
  %ack04 = alloca %TName_Nat*
  %"$ackermann_42" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_858" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_859" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_858", 0
  %"$ackermann_envptr_860" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_858", 1
  %"$n0_861" = load %TName_Nat*, %TName_Nat** %n0
  %"$ackermann_call_862" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_859"(i8* %"$ackermann_envptr_860", %TName_Nat* %"$n0_861")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_862", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_42"
  %"$ackermann_43" = alloca %TName_Nat*
  %"$$ackermann_42_863" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_42"
  %"$$ackermann_42_fptr_864" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_42_863", 0
  %"$$ackermann_42_envptr_865" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_42_863", 1
  %"$n4_866" = load %TName_Nat*, %TName_Nat** %n4
  %"$$ackermann_42_call_867" = call %TName_Nat* %"$$ackermann_42_fptr_864"(i8* %"$$ackermann_42_envptr_865", %TName_Nat* %"$n4_866")
  store %TName_Nat* %"$$ackermann_42_call_867", %TName_Nat** %"$ackermann_43"
  %"$$ackermann_43_868" = load %TName_Nat*, %TName_Nat** %"$ackermann_43"
  store %TName_Nat* %"$$ackermann_43_868", %TName_Nat** %ack04
  %ack10 = alloca %TName_Nat*
  %"$ackermann_44" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_869" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_870" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_869", 0
  %"$ackermann_envptr_871" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_869", 1
  %"$n1_872" = load %TName_Nat*, %TName_Nat** %n1
  %"$ackermann_call_873" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_870"(i8* %"$ackermann_envptr_871", %TName_Nat* %"$n1_872")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_873", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_44"
  %"$ackermann_45" = alloca %TName_Nat*
  %"$$ackermann_44_874" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_44"
  %"$$ackermann_44_fptr_875" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_44_874", 0
  %"$$ackermann_44_envptr_876" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_44_874", 1
  %"$n0_877" = load %TName_Nat*, %TName_Nat** %n0
  %"$$ackermann_44_call_878" = call %TName_Nat* %"$$ackermann_44_fptr_875"(i8* %"$$ackermann_44_envptr_876", %TName_Nat* %"$n0_877")
  store %TName_Nat* %"$$ackermann_44_call_878", %TName_Nat** %"$ackermann_45"
  %"$$ackermann_45_879" = load %TName_Nat*, %TName_Nat** %"$ackermann_45"
  store %TName_Nat* %"$$ackermann_45_879", %TName_Nat** %ack10
  %ack11 = alloca %TName_Nat*
  %"$ackermann_46" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_880" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_881" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_880", 0
  %"$ackermann_envptr_882" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_880", 1
  %"$n1_883" = load %TName_Nat*, %TName_Nat** %n1
  %"$ackermann_call_884" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_881"(i8* %"$ackermann_envptr_882", %TName_Nat* %"$n1_883")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_884", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_46"
  %"$ackermann_47" = alloca %TName_Nat*
  %"$$ackermann_46_885" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_46"
  %"$$ackermann_46_fptr_886" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_46_885", 0
  %"$$ackermann_46_envptr_887" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_46_885", 1
  %"$n1_888" = load %TName_Nat*, %TName_Nat** %n1
  %"$$ackermann_46_call_889" = call %TName_Nat* %"$$ackermann_46_fptr_886"(i8* %"$$ackermann_46_envptr_887", %TName_Nat* %"$n1_888")
  store %TName_Nat* %"$$ackermann_46_call_889", %TName_Nat** %"$ackermann_47"
  %"$$ackermann_47_890" = load %TName_Nat*, %TName_Nat** %"$ackermann_47"
  store %TName_Nat* %"$$ackermann_47_890", %TName_Nat** %ack11
  %ack12 = alloca %TName_Nat*
  %"$ackermann_48" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_891" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_892" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_891", 0
  %"$ackermann_envptr_893" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_891", 1
  %"$n1_894" = load %TName_Nat*, %TName_Nat** %n1
  %"$ackermann_call_895" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_892"(i8* %"$ackermann_envptr_893", %TName_Nat* %"$n1_894")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_895", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_48"
  %"$ackermann_49" = alloca %TName_Nat*
  %"$$ackermann_48_896" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_48"
  %"$$ackermann_48_fptr_897" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_48_896", 0
  %"$$ackermann_48_envptr_898" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_48_896", 1
  %"$n2_899" = load %TName_Nat*, %TName_Nat** %n2
  %"$$ackermann_48_call_900" = call %TName_Nat* %"$$ackermann_48_fptr_897"(i8* %"$$ackermann_48_envptr_898", %TName_Nat* %"$n2_899")
  store %TName_Nat* %"$$ackermann_48_call_900", %TName_Nat** %"$ackermann_49"
  %"$$ackermann_49_901" = load %TName_Nat*, %TName_Nat** %"$ackermann_49"
  store %TName_Nat* %"$$ackermann_49_901", %TName_Nat** %ack12
  %ack13 = alloca %TName_Nat*
  %"$ackermann_50" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_902" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_903" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_902", 0
  %"$ackermann_envptr_904" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_902", 1
  %"$n1_905" = load %TName_Nat*, %TName_Nat** %n1
  %"$ackermann_call_906" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_903"(i8* %"$ackermann_envptr_904", %TName_Nat* %"$n1_905")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_906", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_50"
  %"$ackermann_51" = alloca %TName_Nat*
  %"$$ackermann_50_907" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_50"
  %"$$ackermann_50_fptr_908" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_50_907", 0
  %"$$ackermann_50_envptr_909" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_50_907", 1
  %"$n3_910" = load %TName_Nat*, %TName_Nat** %n3
  %"$$ackermann_50_call_911" = call %TName_Nat* %"$$ackermann_50_fptr_908"(i8* %"$$ackermann_50_envptr_909", %TName_Nat* %"$n3_910")
  store %TName_Nat* %"$$ackermann_50_call_911", %TName_Nat** %"$ackermann_51"
  %"$$ackermann_51_912" = load %TName_Nat*, %TName_Nat** %"$ackermann_51"
  store %TName_Nat* %"$$ackermann_51_912", %TName_Nat** %ack13
  %ack14 = alloca %TName_Nat*
  %"$ackermann_52" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_913" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_914" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_913", 0
  %"$ackermann_envptr_915" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_913", 1
  %"$n1_916" = load %TName_Nat*, %TName_Nat** %n1
  %"$ackermann_call_917" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_914"(i8* %"$ackermann_envptr_915", %TName_Nat* %"$n1_916")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_917", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_52"
  %"$ackermann_53" = alloca %TName_Nat*
  %"$$ackermann_52_918" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_52"
  %"$$ackermann_52_fptr_919" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_52_918", 0
  %"$$ackermann_52_envptr_920" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_52_918", 1
  %"$n4_921" = load %TName_Nat*, %TName_Nat** %n4
  %"$$ackermann_52_call_922" = call %TName_Nat* %"$$ackermann_52_fptr_919"(i8* %"$$ackermann_52_envptr_920", %TName_Nat* %"$n4_921")
  store %TName_Nat* %"$$ackermann_52_call_922", %TName_Nat** %"$ackermann_53"
  %"$$ackermann_53_923" = load %TName_Nat*, %TName_Nat** %"$ackermann_53"
  store %TName_Nat* %"$$ackermann_53_923", %TName_Nat** %ack14
  %ack20 = alloca %TName_Nat*
  %"$ackermann_54" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_924" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_925" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_924", 0
  %"$ackermann_envptr_926" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_924", 1
  %"$n2_927" = load %TName_Nat*, %TName_Nat** %n2
  %"$ackermann_call_928" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_925"(i8* %"$ackermann_envptr_926", %TName_Nat* %"$n2_927")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_928", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_54"
  %"$ackermann_55" = alloca %TName_Nat*
  %"$$ackermann_54_929" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_54"
  %"$$ackermann_54_fptr_930" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_54_929", 0
  %"$$ackermann_54_envptr_931" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_54_929", 1
  %"$n0_932" = load %TName_Nat*, %TName_Nat** %n0
  %"$$ackermann_54_call_933" = call %TName_Nat* %"$$ackermann_54_fptr_930"(i8* %"$$ackermann_54_envptr_931", %TName_Nat* %"$n0_932")
  store %TName_Nat* %"$$ackermann_54_call_933", %TName_Nat** %"$ackermann_55"
  %"$$ackermann_55_934" = load %TName_Nat*, %TName_Nat** %"$ackermann_55"
  store %TName_Nat* %"$$ackermann_55_934", %TName_Nat** %ack20
  %ack21 = alloca %TName_Nat*
  %"$ackermann_56" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_935" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_936" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_935", 0
  %"$ackermann_envptr_937" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_935", 1
  %"$n2_938" = load %TName_Nat*, %TName_Nat** %n2
  %"$ackermann_call_939" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_936"(i8* %"$ackermann_envptr_937", %TName_Nat* %"$n2_938")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_939", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_56"
  %"$ackermann_57" = alloca %TName_Nat*
  %"$$ackermann_56_940" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_56"
  %"$$ackermann_56_fptr_941" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_56_940", 0
  %"$$ackermann_56_envptr_942" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_56_940", 1
  %"$n1_943" = load %TName_Nat*, %TName_Nat** %n1
  %"$$ackermann_56_call_944" = call %TName_Nat* %"$$ackermann_56_fptr_941"(i8* %"$$ackermann_56_envptr_942", %TName_Nat* %"$n1_943")
  store %TName_Nat* %"$$ackermann_56_call_944", %TName_Nat** %"$ackermann_57"
  %"$$ackermann_57_945" = load %TName_Nat*, %TName_Nat** %"$ackermann_57"
  store %TName_Nat* %"$$ackermann_57_945", %TName_Nat** %ack21
  %ack22 = alloca %TName_Nat*
  %"$ackermann_58" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_946" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_947" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_946", 0
  %"$ackermann_envptr_948" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_946", 1
  %"$n2_949" = load %TName_Nat*, %TName_Nat** %n2
  %"$ackermann_call_950" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_947"(i8* %"$ackermann_envptr_948", %TName_Nat* %"$n2_949")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_950", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_58"
  %"$ackermann_59" = alloca %TName_Nat*
  %"$$ackermann_58_951" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_58"
  %"$$ackermann_58_fptr_952" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_58_951", 0
  %"$$ackermann_58_envptr_953" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_58_951", 1
  %"$n2_954" = load %TName_Nat*, %TName_Nat** %n2
  %"$$ackermann_58_call_955" = call %TName_Nat* %"$$ackermann_58_fptr_952"(i8* %"$$ackermann_58_envptr_953", %TName_Nat* %"$n2_954")
  store %TName_Nat* %"$$ackermann_58_call_955", %TName_Nat** %"$ackermann_59"
  %"$$ackermann_59_956" = load %TName_Nat*, %TName_Nat** %"$ackermann_59"
  store %TName_Nat* %"$$ackermann_59_956", %TName_Nat** %ack22
  %ack23 = alloca %TName_Nat*
  %"$ackermann_60" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_957" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_958" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_957", 0
  %"$ackermann_envptr_959" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_957", 1
  %"$n2_960" = load %TName_Nat*, %TName_Nat** %n2
  %"$ackermann_call_961" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_958"(i8* %"$ackermann_envptr_959", %TName_Nat* %"$n2_960")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_961", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_60"
  %"$ackermann_61" = alloca %TName_Nat*
  %"$$ackermann_60_962" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_60"
  %"$$ackermann_60_fptr_963" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_60_962", 0
  %"$$ackermann_60_envptr_964" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_60_962", 1
  %"$n3_965" = load %TName_Nat*, %TName_Nat** %n3
  %"$$ackermann_60_call_966" = call %TName_Nat* %"$$ackermann_60_fptr_963"(i8* %"$$ackermann_60_envptr_964", %TName_Nat* %"$n3_965")
  store %TName_Nat* %"$$ackermann_60_call_966", %TName_Nat** %"$ackermann_61"
  %"$$ackermann_61_967" = load %TName_Nat*, %TName_Nat** %"$ackermann_61"
  store %TName_Nat* %"$$ackermann_61_967", %TName_Nat** %ack23
  %ack30 = alloca %TName_Nat*
  %"$ackermann_62" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_968" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_969" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_968", 0
  %"$ackermann_envptr_970" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_968", 1
  %"$n3_971" = load %TName_Nat*, %TName_Nat** %n3
  %"$ackermann_call_972" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_969"(i8* %"$ackermann_envptr_970", %TName_Nat* %"$n3_971")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_972", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_62"
  %"$ackermann_63" = alloca %TName_Nat*
  %"$$ackermann_62_973" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_62"
  %"$$ackermann_62_fptr_974" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_62_973", 0
  %"$$ackermann_62_envptr_975" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_62_973", 1
  %"$n0_976" = load %TName_Nat*, %TName_Nat** %n0
  %"$$ackermann_62_call_977" = call %TName_Nat* %"$$ackermann_62_fptr_974"(i8* %"$$ackermann_62_envptr_975", %TName_Nat* %"$n0_976")
  store %TName_Nat* %"$$ackermann_62_call_977", %TName_Nat** %"$ackermann_63"
  %"$$ackermann_63_978" = load %TName_Nat*, %TName_Nat** %"$ackermann_63"
  store %TName_Nat* %"$$ackermann_63_978", %TName_Nat** %ack30
  %ack31 = alloca %TName_Nat*
  %"$ackermann_64" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_979" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_980" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_979", 0
  %"$ackermann_envptr_981" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_979", 1
  %"$n3_982" = load %TName_Nat*, %TName_Nat** %n3
  %"$ackermann_call_983" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_980"(i8* %"$ackermann_envptr_981", %TName_Nat* %"$n3_982")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_983", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_64"
  %"$ackermann_65" = alloca %TName_Nat*
  %"$$ackermann_64_984" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_64"
  %"$$ackermann_64_fptr_985" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_64_984", 0
  %"$$ackermann_64_envptr_986" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_64_984", 1
  %"$n1_987" = load %TName_Nat*, %TName_Nat** %n1
  %"$$ackermann_64_call_988" = call %TName_Nat* %"$$ackermann_64_fptr_985"(i8* %"$$ackermann_64_envptr_986", %TName_Nat* %"$n1_987")
  store %TName_Nat* %"$$ackermann_64_call_988", %TName_Nat** %"$ackermann_65"
  %"$$ackermann_65_989" = load %TName_Nat*, %TName_Nat** %"$ackermann_65"
  store %TName_Nat* %"$$ackermann_65_989", %TName_Nat** %ack31
  %ack32 = alloca %TName_Nat*
  %"$ackermann_66" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_990" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_991" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_990", 0
  %"$ackermann_envptr_992" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_990", 1
  %"$n3_993" = load %TName_Nat*, %TName_Nat** %n3
  %"$ackermann_call_994" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_991"(i8* %"$ackermann_envptr_992", %TName_Nat* %"$n3_993")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_994", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_66"
  %"$ackermann_67" = alloca %TName_Nat*
  %"$$ackermann_66_995" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_66"
  %"$$ackermann_66_fptr_996" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_66_995", 0
  %"$$ackermann_66_envptr_997" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_66_995", 1
  %"$n2_998" = load %TName_Nat*, %TName_Nat** %n2
  %"$$ackermann_66_call_999" = call %TName_Nat* %"$$ackermann_66_fptr_996"(i8* %"$$ackermann_66_envptr_997", %TName_Nat* %"$n2_998")
  store %TName_Nat* %"$$ackermann_66_call_999", %TName_Nat** %"$ackermann_67"
  %"$$ackermann_67_1000" = load %TName_Nat*, %TName_Nat** %"$ackermann_67"
  store %TName_Nat* %"$$ackermann_67_1000", %TName_Nat** %ack32
  %ack33 = alloca %TName_Nat*
  %"$ackermann_68" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1001" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1002" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1001", 0
  %"$ackermann_envptr_1003" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1001", 1
  %"$n3_1004" = load %TName_Nat*, %TName_Nat** %n3
  %"$ackermann_call_1005" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1002"(i8* %"$ackermann_envptr_1003", %TName_Nat* %"$n3_1004")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1005", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_68"
  %"$ackermann_69" = alloca %TName_Nat*
  %"$$ackermann_68_1006" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_68"
  %"$$ackermann_68_fptr_1007" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_68_1006", 0
  %"$$ackermann_68_envptr_1008" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_68_1006", 1
  %"$n3_1009" = load %TName_Nat*, %TName_Nat** %n3
  %"$$ackermann_68_call_1010" = call %TName_Nat* %"$$ackermann_68_fptr_1007"(i8* %"$$ackermann_68_envptr_1008", %TName_Nat* %"$n3_1009")
  store %TName_Nat* %"$$ackermann_68_call_1010", %TName_Nat** %"$ackermann_69"
  %"$$ackermann_69_1011" = load %TName_Nat*, %TName_Nat** %"$ackermann_69"
  store %TName_Nat* %"$$ackermann_69_1011", %TName_Nat** %ack33
  %ack34 = alloca %TName_Nat*
  %"$ackermann_70" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1012" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1013" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1012", 0
  %"$ackermann_envptr_1014" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1012", 1
  %"$n3_1015" = load %TName_Nat*, %TName_Nat** %n3
  %"$ackermann_call_1016" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1013"(i8* %"$ackermann_envptr_1014", %TName_Nat* %"$n3_1015")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1016", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_70"
  %"$ackermann_71" = alloca %TName_Nat*
  %"$$ackermann_70_1017" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_70"
  %"$$ackermann_70_fptr_1018" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_70_1017", 0
  %"$$ackermann_70_envptr_1019" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_70_1017", 1
  %"$n4_1020" = load %TName_Nat*, %TName_Nat** %n4
  %"$$ackermann_70_call_1021" = call %TName_Nat* %"$$ackermann_70_fptr_1018"(i8* %"$$ackermann_70_envptr_1019", %TName_Nat* %"$n4_1020")
  store %TName_Nat* %"$$ackermann_70_call_1021", %TName_Nat** %"$ackermann_71"
  %"$$ackermann_71_1022" = load %TName_Nat*, %TName_Nat** %"$ackermann_71"
  store %TName_Nat* %"$$ackermann_71_1022", %TName_Nat** %ack34
  %ack40 = alloca %TName_Nat*
  %"$ackermann_72" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_1023" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_1024" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1023", 0
  %"$ackermann_envptr_1025" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1023", 1
  %"$n4_1026" = load %TName_Nat*, %TName_Nat** %n4
  %"$ackermann_call_1027" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1024"(i8* %"$ackermann_envptr_1025", %TName_Nat* %"$n4_1026")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1027", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_72"
  %"$ackermann_73" = alloca %TName_Nat*
  %"$$ackermann_72_1028" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_72"
  %"$$ackermann_72_fptr_1029" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_72_1028", 0
  %"$$ackermann_72_envptr_1030" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_72_1028", 1
  %"$n0_1031" = load %TName_Nat*, %TName_Nat** %n0
  %"$$ackermann_72_call_1032" = call %TName_Nat* %"$$ackermann_72_fptr_1029"(i8* %"$$ackermann_72_envptr_1030", %TName_Nat* %"$n0_1031")
  store %TName_Nat* %"$$ackermann_72_call_1032", %TName_Nat** %"$ackermann_73"
  %"$$ackermann_73_1033" = load %TName_Nat*, %TName_Nat** %"$ackermann_73"
  store %TName_Nat* %"$$ackermann_73_1033", %TName_Nat** %ack40
  %int01 = alloca %Uint32
  %"$nat_to_int_74" = alloca %Uint32
  %"$nat_to_int_1034" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1035" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1034", 0
  %"$nat_to_int_envptr_1036" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1034", 1
  %"$ack00_1037" = load %TName_Nat*, %TName_Nat** %ack00
  %"$nat_to_int_call_1038" = call %Uint32 %"$nat_to_int_fptr_1035"(i8* %"$nat_to_int_envptr_1036", %TName_Nat* %"$ack00_1037")
  store %Uint32 %"$nat_to_int_call_1038", %Uint32* %"$nat_to_int_74"
  %"$$nat_to_int_74_1039" = load %Uint32, %Uint32* %"$nat_to_int_74"
  store %Uint32 %"$$nat_to_int_74_1039", %Uint32* %int01
  %int02 = alloca %Uint32
  %"$nat_to_int_75" = alloca %Uint32
  %"$nat_to_int_1040" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1041" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1040", 0
  %"$nat_to_int_envptr_1042" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1040", 1
  %"$ack02_1043" = load %TName_Nat*, %TName_Nat** %ack02
  %"$nat_to_int_call_1044" = call %Uint32 %"$nat_to_int_fptr_1041"(i8* %"$nat_to_int_envptr_1042", %TName_Nat* %"$ack02_1043")
  store %Uint32 %"$nat_to_int_call_1044", %Uint32* %"$nat_to_int_75"
  %"$$nat_to_int_75_1045" = load %Uint32, %Uint32* %"$nat_to_int_75"
  store %Uint32 %"$$nat_to_int_75_1045", %Uint32* %int02
  %int03 = alloca %Uint32
  %"$nat_to_int_76" = alloca %Uint32
  %"$nat_to_int_1046" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1047" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1046", 0
  %"$nat_to_int_envptr_1048" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1046", 1
  %"$ack03_1049" = load %TName_Nat*, %TName_Nat** %ack03
  %"$nat_to_int_call_1050" = call %Uint32 %"$nat_to_int_fptr_1047"(i8* %"$nat_to_int_envptr_1048", %TName_Nat* %"$ack03_1049")
  store %Uint32 %"$nat_to_int_call_1050", %Uint32* %"$nat_to_int_76"
  %"$$nat_to_int_76_1051" = load %Uint32, %Uint32* %"$nat_to_int_76"
  store %Uint32 %"$$nat_to_int_76_1051", %Uint32* %int03
  %int04 = alloca %Uint32
  %"$nat_to_int_77" = alloca %Uint32
  %"$nat_to_int_1052" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1053" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1052", 0
  %"$nat_to_int_envptr_1054" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1052", 1
  %"$ack04_1055" = load %TName_Nat*, %TName_Nat** %ack04
  %"$nat_to_int_call_1056" = call %Uint32 %"$nat_to_int_fptr_1053"(i8* %"$nat_to_int_envptr_1054", %TName_Nat* %"$ack04_1055")
  store %Uint32 %"$nat_to_int_call_1056", %Uint32* %"$nat_to_int_77"
  %"$$nat_to_int_77_1057" = load %Uint32, %Uint32* %"$nat_to_int_77"
  store %Uint32 %"$$nat_to_int_77_1057", %Uint32* %int04
  %int10 = alloca %Uint32
  %"$nat_to_int_78" = alloca %Uint32
  %"$nat_to_int_1058" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1059" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1058", 0
  %"$nat_to_int_envptr_1060" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1058", 1
  %"$ack10_1061" = load %TName_Nat*, %TName_Nat** %ack10
  %"$nat_to_int_call_1062" = call %Uint32 %"$nat_to_int_fptr_1059"(i8* %"$nat_to_int_envptr_1060", %TName_Nat* %"$ack10_1061")
  store %Uint32 %"$nat_to_int_call_1062", %Uint32* %"$nat_to_int_78"
  %"$$nat_to_int_78_1063" = load %Uint32, %Uint32* %"$nat_to_int_78"
  store %Uint32 %"$$nat_to_int_78_1063", %Uint32* %int10
  %int11 = alloca %Uint32
  %"$nat_to_int_79" = alloca %Uint32
  %"$nat_to_int_1064" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1065" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1064", 0
  %"$nat_to_int_envptr_1066" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1064", 1
  %"$ack11_1067" = load %TName_Nat*, %TName_Nat** %ack11
  %"$nat_to_int_call_1068" = call %Uint32 %"$nat_to_int_fptr_1065"(i8* %"$nat_to_int_envptr_1066", %TName_Nat* %"$ack11_1067")
  store %Uint32 %"$nat_to_int_call_1068", %Uint32* %"$nat_to_int_79"
  %"$$nat_to_int_79_1069" = load %Uint32, %Uint32* %"$nat_to_int_79"
  store %Uint32 %"$$nat_to_int_79_1069", %Uint32* %int11
  %int12 = alloca %Uint32
  %"$nat_to_int_80" = alloca %Uint32
  %"$nat_to_int_1070" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1071" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1070", 0
  %"$nat_to_int_envptr_1072" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1070", 1
  %"$ack12_1073" = load %TName_Nat*, %TName_Nat** %ack12
  %"$nat_to_int_call_1074" = call %Uint32 %"$nat_to_int_fptr_1071"(i8* %"$nat_to_int_envptr_1072", %TName_Nat* %"$ack12_1073")
  store %Uint32 %"$nat_to_int_call_1074", %Uint32* %"$nat_to_int_80"
  %"$$nat_to_int_80_1075" = load %Uint32, %Uint32* %"$nat_to_int_80"
  store %Uint32 %"$$nat_to_int_80_1075", %Uint32* %int12
  %int13 = alloca %Uint32
  %"$nat_to_int_81" = alloca %Uint32
  %"$nat_to_int_1076" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1077" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1076", 0
  %"$nat_to_int_envptr_1078" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1076", 1
  %"$ack13_1079" = load %TName_Nat*, %TName_Nat** %ack13
  %"$nat_to_int_call_1080" = call %Uint32 %"$nat_to_int_fptr_1077"(i8* %"$nat_to_int_envptr_1078", %TName_Nat* %"$ack13_1079")
  store %Uint32 %"$nat_to_int_call_1080", %Uint32* %"$nat_to_int_81"
  %"$$nat_to_int_81_1081" = load %Uint32, %Uint32* %"$nat_to_int_81"
  store %Uint32 %"$$nat_to_int_81_1081", %Uint32* %int13
  %int14 = alloca %Uint32
  %"$nat_to_int_82" = alloca %Uint32
  %"$nat_to_int_1082" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1083" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1082", 0
  %"$nat_to_int_envptr_1084" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1082", 1
  %"$ack14_1085" = load %TName_Nat*, %TName_Nat** %ack14
  %"$nat_to_int_call_1086" = call %Uint32 %"$nat_to_int_fptr_1083"(i8* %"$nat_to_int_envptr_1084", %TName_Nat* %"$ack14_1085")
  store %Uint32 %"$nat_to_int_call_1086", %Uint32* %"$nat_to_int_82"
  %"$$nat_to_int_82_1087" = load %Uint32, %Uint32* %"$nat_to_int_82"
  store %Uint32 %"$$nat_to_int_82_1087", %Uint32* %int14
  %int20 = alloca %Uint32
  %"$nat_to_int_83" = alloca %Uint32
  %"$nat_to_int_1088" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1089" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1088", 0
  %"$nat_to_int_envptr_1090" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1088", 1
  %"$ack20_1091" = load %TName_Nat*, %TName_Nat** %ack20
  %"$nat_to_int_call_1092" = call %Uint32 %"$nat_to_int_fptr_1089"(i8* %"$nat_to_int_envptr_1090", %TName_Nat* %"$ack20_1091")
  store %Uint32 %"$nat_to_int_call_1092", %Uint32* %"$nat_to_int_83"
  %"$$nat_to_int_83_1093" = load %Uint32, %Uint32* %"$nat_to_int_83"
  store %Uint32 %"$$nat_to_int_83_1093", %Uint32* %int20
  %int21 = alloca %Uint32
  %"$nat_to_int_84" = alloca %Uint32
  %"$nat_to_int_1094" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1095" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1094", 0
  %"$nat_to_int_envptr_1096" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1094", 1
  %"$ack21_1097" = load %TName_Nat*, %TName_Nat** %ack21
  %"$nat_to_int_call_1098" = call %Uint32 %"$nat_to_int_fptr_1095"(i8* %"$nat_to_int_envptr_1096", %TName_Nat* %"$ack21_1097")
  store %Uint32 %"$nat_to_int_call_1098", %Uint32* %"$nat_to_int_84"
  %"$$nat_to_int_84_1099" = load %Uint32, %Uint32* %"$nat_to_int_84"
  store %Uint32 %"$$nat_to_int_84_1099", %Uint32* %int21
  %int22 = alloca %Uint32
  %"$nat_to_int_85" = alloca %Uint32
  %"$nat_to_int_1100" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1101" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1100", 0
  %"$nat_to_int_envptr_1102" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1100", 1
  %"$ack22_1103" = load %TName_Nat*, %TName_Nat** %ack22
  %"$nat_to_int_call_1104" = call %Uint32 %"$nat_to_int_fptr_1101"(i8* %"$nat_to_int_envptr_1102", %TName_Nat* %"$ack22_1103")
  store %Uint32 %"$nat_to_int_call_1104", %Uint32* %"$nat_to_int_85"
  %"$$nat_to_int_85_1105" = load %Uint32, %Uint32* %"$nat_to_int_85"
  store %Uint32 %"$$nat_to_int_85_1105", %Uint32* %int22
  %int23 = alloca %Uint32
  %"$nat_to_int_86" = alloca %Uint32
  %"$nat_to_int_1106" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1107" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1106", 0
  %"$nat_to_int_envptr_1108" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1106", 1
  %"$ack23_1109" = load %TName_Nat*, %TName_Nat** %ack23
  %"$nat_to_int_call_1110" = call %Uint32 %"$nat_to_int_fptr_1107"(i8* %"$nat_to_int_envptr_1108", %TName_Nat* %"$ack23_1109")
  store %Uint32 %"$nat_to_int_call_1110", %Uint32* %"$nat_to_int_86"
  %"$$nat_to_int_86_1111" = load %Uint32, %Uint32* %"$nat_to_int_86"
  store %Uint32 %"$$nat_to_int_86_1111", %Uint32* %int23
  %int24 = alloca %Uint32
  %"$nat_to_int_87" = alloca %Uint32
  %"$nat_to_int_1112" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1113" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1112", 0
  %"$nat_to_int_envptr_1114" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1112", 1
  %"$ack23_1115" = load %TName_Nat*, %TName_Nat** %ack23
  %"$nat_to_int_call_1116" = call %Uint32 %"$nat_to_int_fptr_1113"(i8* %"$nat_to_int_envptr_1114", %TName_Nat* %"$ack23_1115")
  store %Uint32 %"$nat_to_int_call_1116", %Uint32* %"$nat_to_int_87"
  %"$$nat_to_int_87_1117" = load %Uint32, %Uint32* %"$nat_to_int_87"
  store %Uint32 %"$$nat_to_int_87_1117", %Uint32* %int24
  %int30 = alloca %Uint32
  %"$nat_to_int_88" = alloca %Uint32
  %"$nat_to_int_1118" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1119" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1118", 0
  %"$nat_to_int_envptr_1120" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1118", 1
  %"$ack30_1121" = load %TName_Nat*, %TName_Nat** %ack30
  %"$nat_to_int_call_1122" = call %Uint32 %"$nat_to_int_fptr_1119"(i8* %"$nat_to_int_envptr_1120", %TName_Nat* %"$ack30_1121")
  store %Uint32 %"$nat_to_int_call_1122", %Uint32* %"$nat_to_int_88"
  %"$$nat_to_int_88_1123" = load %Uint32, %Uint32* %"$nat_to_int_88"
  store %Uint32 %"$$nat_to_int_88_1123", %Uint32* %int30
  %int31 = alloca %Uint32
  %"$nat_to_int_89" = alloca %Uint32
  %"$nat_to_int_1124" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1125" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1124", 0
  %"$nat_to_int_envptr_1126" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1124", 1
  %"$ack31_1127" = load %TName_Nat*, %TName_Nat** %ack31
  %"$nat_to_int_call_1128" = call %Uint32 %"$nat_to_int_fptr_1125"(i8* %"$nat_to_int_envptr_1126", %TName_Nat* %"$ack31_1127")
  store %Uint32 %"$nat_to_int_call_1128", %Uint32* %"$nat_to_int_89"
  %"$$nat_to_int_89_1129" = load %Uint32, %Uint32* %"$nat_to_int_89"
  store %Uint32 %"$$nat_to_int_89_1129", %Uint32* %int31
  %int32 = alloca %Uint32
  %"$nat_to_int_90" = alloca %Uint32
  %"$nat_to_int_1130" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1131" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1130", 0
  %"$nat_to_int_envptr_1132" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1130", 1
  %"$ack32_1133" = load %TName_Nat*, %TName_Nat** %ack32
  %"$nat_to_int_call_1134" = call %Uint32 %"$nat_to_int_fptr_1131"(i8* %"$nat_to_int_envptr_1132", %TName_Nat* %"$ack32_1133")
  store %Uint32 %"$nat_to_int_call_1134", %Uint32* %"$nat_to_int_90"
  %"$$nat_to_int_90_1135" = load %Uint32, %Uint32* %"$nat_to_int_90"
  store %Uint32 %"$$nat_to_int_90_1135", %Uint32* %int32
  %int33 = alloca %Uint32
  %"$nat_to_int_91" = alloca %Uint32
  %"$nat_to_int_1136" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1137" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1136", 0
  %"$nat_to_int_envptr_1138" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1136", 1
  %"$ack33_1139" = load %TName_Nat*, %TName_Nat** %ack33
  %"$nat_to_int_call_1140" = call %Uint32 %"$nat_to_int_fptr_1137"(i8* %"$nat_to_int_envptr_1138", %TName_Nat* %"$ack33_1139")
  store %Uint32 %"$nat_to_int_call_1140", %Uint32* %"$nat_to_int_91"
  %"$$nat_to_int_91_1141" = load %Uint32, %Uint32* %"$nat_to_int_91"
  store %Uint32 %"$$nat_to_int_91_1141", %Uint32* %int33
  %int34 = alloca %Uint32
  %"$nat_to_int_92" = alloca %Uint32
  %"$nat_to_int_1142" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1143" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1142", 0
  %"$nat_to_int_envptr_1144" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1142", 1
  %"$ack34_1145" = load %TName_Nat*, %TName_Nat** %ack34
  %"$nat_to_int_call_1146" = call %Uint32 %"$nat_to_int_fptr_1143"(i8* %"$nat_to_int_envptr_1144", %TName_Nat* %"$ack34_1145")
  store %Uint32 %"$nat_to_int_call_1146", %Uint32* %"$nat_to_int_92"
  %"$$nat_to_int_92_1147" = load %Uint32, %Uint32* %"$nat_to_int_92"
  store %Uint32 %"$$nat_to_int_92_1147", %Uint32* %int34
  %int40 = alloca %Uint32
  %"$nat_to_int_93" = alloca %Uint32
  %"$nat_to_int_1148" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_1149" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1148", 0
  %"$nat_to_int_envptr_1150" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_1148", 1
  %"$ack40_1151" = load %TName_Nat*, %TName_Nat** %ack40
  %"$nat_to_int_call_1152" = call %Uint32 %"$nat_to_int_fptr_1149"(i8* %"$nat_to_int_envptr_1150", %TName_Nat* %"$ack40_1151")
  store %Uint32 %"$nat_to_int_call_1152", %Uint32* %"$nat_to_int_93"
  %"$$nat_to_int_93_1153" = load %Uint32, %Uint32* %"$nat_to_int_93"
  store %Uint32 %"$$nat_to_int_93_1153", %Uint32* %int40
  %sum = alloca %Uint32
  %"$int01_1154" = load %Uint32, %Uint32* %int01
  %"$int02_1155" = load %Uint32, %Uint32* %int02
  %"$add_call_1156" = call %Uint32 @_add_Uint32(%Uint32 %"$int01_1154", %Uint32 %"$int02_1155")
  store %Uint32 %"$add_call_1156", %Uint32* %sum
  %"$sum_0" = alloca %Uint32
  %"$sum_1157" = load %Uint32, %Uint32* %sum
  %"$int03_1158" = load %Uint32, %Uint32* %int03
  %"$add_call_1159" = call %Uint32 @_add_Uint32(%Uint32 %"$sum_1157", %Uint32 %"$int03_1158")
  store %Uint32 %"$add_call_1159", %Uint32* %"$sum_0"
  %"$sum_1" = alloca %Uint32
  %"$$sum_0_1160" = load %Uint32, %Uint32* %"$sum_0"
  %"$int04_1161" = load %Uint32, %Uint32* %int04
  %"$add_call_1162" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_0_1160", %Uint32 %"$int04_1161")
  store %Uint32 %"$add_call_1162", %Uint32* %"$sum_1"
  %"$sum_2" = alloca %Uint32
  %"$$sum_1_1163" = load %Uint32, %Uint32* %"$sum_1"
  %"$int10_1164" = load %Uint32, %Uint32* %int10
  %"$add_call_1165" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_1_1163", %Uint32 %"$int10_1164")
  store %Uint32 %"$add_call_1165", %Uint32* %"$sum_2"
  %"$sum_3" = alloca %Uint32
  %"$$sum_2_1166" = load %Uint32, %Uint32* %"$sum_2"
  %"$int11_1167" = load %Uint32, %Uint32* %int11
  %"$add_call_1168" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_2_1166", %Uint32 %"$int11_1167")
  store %Uint32 %"$add_call_1168", %Uint32* %"$sum_3"
  %"$sum_4" = alloca %Uint32
  %"$$sum_3_1169" = load %Uint32, %Uint32* %"$sum_3"
  %"$int12_1170" = load %Uint32, %Uint32* %int12
  %"$add_call_1171" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_3_1169", %Uint32 %"$int12_1170")
  store %Uint32 %"$add_call_1171", %Uint32* %"$sum_4"
  %"$sum_5" = alloca %Uint32
  %"$$sum_4_1172" = load %Uint32, %Uint32* %"$sum_4"
  %"$int13_1173" = load %Uint32, %Uint32* %int13
  %"$add_call_1174" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_4_1172", %Uint32 %"$int13_1173")
  store %Uint32 %"$add_call_1174", %Uint32* %"$sum_5"
  %"$sum_6" = alloca %Uint32
  %"$$sum_5_1175" = load %Uint32, %Uint32* %"$sum_5"
  %"$int14_1176" = load %Uint32, %Uint32* %int14
  %"$add_call_1177" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_5_1175", %Uint32 %"$int14_1176")
  store %Uint32 %"$add_call_1177", %Uint32* %"$sum_6"
  %"$sum_7" = alloca %Uint32
  %"$$sum_6_1178" = load %Uint32, %Uint32* %"$sum_6"
  %"$int20_1179" = load %Uint32, %Uint32* %int20
  %"$add_call_1180" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_6_1178", %Uint32 %"$int20_1179")
  store %Uint32 %"$add_call_1180", %Uint32* %"$sum_7"
  %"$sum_8" = alloca %Uint32
  %"$$sum_7_1181" = load %Uint32, %Uint32* %"$sum_7"
  %"$int21_1182" = load %Uint32, %Uint32* %int21
  %"$add_call_1183" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_7_1181", %Uint32 %"$int21_1182")
  store %Uint32 %"$add_call_1183", %Uint32* %"$sum_8"
  %"$sum_9" = alloca %Uint32
  %"$$sum_8_1184" = load %Uint32, %Uint32* %"$sum_8"
  %"$int22_1185" = load %Uint32, %Uint32* %int22
  %"$add_call_1186" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_8_1184", %Uint32 %"$int22_1185")
  store %Uint32 %"$add_call_1186", %Uint32* %"$sum_9"
  %"$sum_10" = alloca %Uint32
  %"$$sum_9_1187" = load %Uint32, %Uint32* %"$sum_9"
  %"$int23_1188" = load %Uint32, %Uint32* %int23
  %"$add_call_1189" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_9_1187", %Uint32 %"$int23_1188")
  store %Uint32 %"$add_call_1189", %Uint32* %"$sum_10"
  %"$sum_11" = alloca %Uint32
  %"$$sum_10_1190" = load %Uint32, %Uint32* %"$sum_10"
  %"$int24_1191" = load %Uint32, %Uint32* %int24
  %"$add_call_1192" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_10_1190", %Uint32 %"$int24_1191")
  store %Uint32 %"$add_call_1192", %Uint32* %"$sum_11"
  %"$sum_12" = alloca %Uint32
  %"$$sum_11_1193" = load %Uint32, %Uint32* %"$sum_11"
  %"$int30_1194" = load %Uint32, %Uint32* %int30
  %"$add_call_1195" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_11_1193", %Uint32 %"$int30_1194")
  store %Uint32 %"$add_call_1195", %Uint32* %"$sum_12"
  %"$sum_13" = alloca %Uint32
  %"$$sum_12_1196" = load %Uint32, %Uint32* %"$sum_12"
  %"$int31_1197" = load %Uint32, %Uint32* %int31
  %"$add_call_1198" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_12_1196", %Uint32 %"$int31_1197")
  store %Uint32 %"$add_call_1198", %Uint32* %"$sum_13"
  %"$sum_14" = alloca %Uint32
  %"$$sum_13_1199" = load %Uint32, %Uint32* %"$sum_13"
  %"$int32_1200" = load %Uint32, %Uint32* %int32
  %"$add_call_1201" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_13_1199", %Uint32 %"$int32_1200")
  store %Uint32 %"$add_call_1201", %Uint32* %"$sum_14"
  %"$sum_15" = alloca %Uint32
  %"$$sum_14_1202" = load %Uint32, %Uint32* %"$sum_14"
  %"$int33_1203" = load %Uint32, %Uint32* %int33
  %"$add_call_1204" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_14_1202", %Uint32 %"$int33_1203")
  store %Uint32 %"$add_call_1204", %Uint32* %"$sum_15"
  %"$sum_16" = alloca %Uint32
  %"$$sum_15_1205" = load %Uint32, %Uint32* %"$sum_15"
  %"$int34_1206" = load %Uint32, %Uint32* %int34
  %"$add_call_1207" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_15_1205", %Uint32 %"$int34_1206")
  store %Uint32 %"$add_call_1207", %Uint32* %"$sum_16"
  %"$sum_17" = alloca %Uint32
  %"$$sum_16_1208" = load %Uint32, %Uint32* %"$sum_16"
  %"$int40_1209" = load %Uint32, %Uint32* %int40
  %"$add_call_1210" = call %Uint32 @_add_Uint32(%Uint32 %"$$sum_16_1208", %Uint32 %"$int40_1209")
  store %Uint32 %"$add_call_1210", %Uint32* %"$sum_17"
  %"$$sum_17_1211" = load %Uint32, %Uint32* %"$sum_17"
  store %Uint32 %"$$sum_17_1211", %Uint32* %"$expr_124"
  %"$$expr_124_1212" = load %Uint32, %Uint32* %"$expr_124"
  ret %Uint32 %"$$expr_124_1212"
}

declare %TName_Nat* @_to_nat(i8*, %Uint32)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1213" = call %Uint32 @"$scilla_expr_730"(i8* null)
  %"$pval_1214" = alloca %Uint32
  %"$memvoidcast_1215" = bitcast %Uint32* %"$pval_1214" to i8*
  store %Uint32 %"$exprval_1213", %Uint32* %"$pval_1214"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_161", i8* %"$memvoidcast_1215")
  ret void
}
